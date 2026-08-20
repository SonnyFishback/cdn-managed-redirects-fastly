# PoC vcl_error snippet: turns the synthetic 618 signal into an actual
# 301 redirect response to a hardcoded destination on GitHub Pages.

if (obj.status == 618) {
  set obj.status = 301;
  set obj.response = "Moved Permanently";
  set obj.http.Location = "https://username.github.io/new";
  synthetic {""};
  return (deliver);
}
