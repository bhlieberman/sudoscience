<script>
	// @ts-nocheck
	import { i18n } from '$lib/i18n';
	import { ParaglideJS } from '@inlang/paraglide-sveltekit';
	import * as Sidebar from '$lib/components/ui/sidebar/index.js';
	import AppSidebar from '$lib/components/app-sidebar.svelte';
	import '../app.css';
	let { children } = $props();

	export const prerender = true;
</script>

<ParaglideJS {i18n}>
	<Sidebar.Provider>
		<AppSidebar />
		<div class="flex items-center">
			<Sidebar.Trigger />
		</div>
		<main class="m-auto flex justify-center">
			{@render children?.()}
		</main>
	</Sidebar.Provider>
</ParaglideJS>
