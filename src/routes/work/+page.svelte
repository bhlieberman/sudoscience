<script>
	// @ts-nocheck

	import * as Carousel from '$lib/components/ui/carousel/index.js';

	import Projects from './projects.svelte';
</script>

<div class="w-1/2">
	<div class="my-5 text-center text-3xl">Projects</div>
	<Carousel.Root>
		<Carousel.Content>
			<Carousel.Item
				><Projects
					title="The New Green"
					description="A SvelteKit (v4) app for the documentary film The New Green."
				></Projects></Carousel.Item
			>
			<Carousel.Item
				><Projects
					title="New Impressions of Africa"
					description="A Reagent/re-frame app for viewing the hypertext poem New Impressions of Africa."
					content="Raymond Roussel's innovative poem New Impressions of Africa, written over the course of a 15-year period, is a mind-bending and continually surprising adventure into the mind of a singular figure in literary history."
				></Projects></Carousel.Item
			>
			<Carousel.Item>
				<Projects
					title="clj-baseball"
					description="A Clojure library for exploring baseball stats."
					content="This is a work-in-progress. You can view the source at https://github.com/bhlieberman/clj-baseball.
                The distributed library code is available for download on Clojars."
				></Projects>
			</Carousel.Item>
		</Carousel.Content>
		<Carousel.Previous />
		<Carousel.Next />
	</Carousel.Root>
	<div class="flex my-5">
		<div class="text-md text-wrap">
			I am a currently employed freelance web developer. You can hire me to work on your projects.
			Contact me via email or the form on the <a href="/contact"> Contact page. </a> Besides the projects
			above, I have worked on many smaller and less substantial things, which you can find bits and
			pieces of at my GitHub. These are the usual false starts, half-baked ideas, and sundry other misfires
			inherent to any creative process. The story they tell is whatever you please; let it however indicate
			the general truth that if there's a programming language out there you want me to write, I can
			probably do it.
		</div>
	</div>
</div>
