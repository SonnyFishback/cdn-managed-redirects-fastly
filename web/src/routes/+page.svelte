<script lang="ts">
	import { base } from '$app/paths';
</script>

<h1>Redirect Management Demo</h1>
<p>This site is the origin backend for a Fastly VCL-managed redirect PoC.</p>
<p>Try visiting <code>/old</code> through the Fastly domain to be redirected to <a href="{base}/new">/new</a>.</p>
