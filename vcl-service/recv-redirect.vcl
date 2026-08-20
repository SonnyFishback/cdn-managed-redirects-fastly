# PoC vcl_recv snippet: proves that a VCL service can set a custom header
# and perform a hardcoded redirect before falling through to the backend.

# Mark that this request passed through our custom VCL logic.
set req.http.x-custom-vcl-ran = "true";

# Hardcoded redirect rule (stand-in for future dictionary-driven redirects).
if (req.url == "/old") {
  error 618 "redirect";
}
