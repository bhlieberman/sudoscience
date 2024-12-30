<script>
	// @ts-nocheck
	import { Button } from '$lib/components/ui/button/index.js';
	import { ScrollArea } from '$lib/components/ui/scroll-area/index.js';
	import Separator from '$lib/components/ui/separator/separator.svelte';
	import * as Sheet from '$lib/components/ui/sheet/index.js';

	const books = [
		{
			title: 'Filthy Synecdoche',
			publisher: 'Corona\\Samizdat Press',
			year: 2022,
			website: 'https://coronasamizdat.com',
			imgSrc: 'fs_cover_photo.jpg',
			description:
				"Filthy Synecdoche is a novel in the tradition of the nouveau roman and in the tradition of no novel at all. A prison guard at a provincial military brig is compelled to investigate the death of a prisoner he was charged with escorting. At every step, he is harried by the prison's commandant, Major Carruthers, a bureaucrat with his own set of problems, and a coterie of hooligans, small-town grifters, barracks-bound drunks, and of course the fuzz. The novel assembles a series of set pieces not at all resembling the life of the author, who was indeed in a military organization not unlike the one portrayed in the story; regrettably (or perhaps not), the author has passed on, and has fulfilled that theoretical challenge to the reader at no cost to them or their loved ones."
		}
	];
</script>

<div class="grid grid-rows-2 grid-cols-1 justify-items-center">
	<div class="flex items-center">
		<div class="mr-5 text-3xl">Writing</div>
			<div class="m-10 flex">
				{#each books as book}
					<div class="mx-10">
						{#if book.imgSrc}
							<Sheet.Root>
								<Sheet.Trigger><img src={book.imgSrc} class="h-[250px]" alt="" /></Sheet.Trigger>
								<Sheet.Content>
									<Sheet.Header>
										<Sheet.Title>{book.title.toLocaleUpperCase()}</Sheet.Title>
										<Sheet.Description>
											<div class="flex flex-col space-y-2">
												{book.description}
												<Button
													class="my-2"
													onclick={() => (window.location = 'https://www.coronasamizdat.com')}
													>Buy It!</Button
												>
											</div>
										</Sheet.Description>
									</Sheet.Header>
								</Sheet.Content>
							</Sheet.Root>
						{/if}
						<p>
							Title: {book.title}
						</p>
						<p>
							{#if book.website}
								Publisher: <a href={book.website}>{book.publisher}</a>
							{:else}
								Publisher: None
							{/if}
						</p>
					</div>
				{/each}
			</div>
	</div>

	<Separator />

	<div class="flex items-center w-1/2">
		<div class="mr-5 text-3xl">Visual</div>
		<div class="p-5">
			Recently I have begun learning to draw. For many years I have struggled to visualize the world
			in all its complexity. I have a marked tendency to flatten things both spatially and
			temporally, and to lack an appreciation for everyday objects as I encounter and interact with
			them. It is my hope that acquiring some skills in the visual arts will improve my ability to
			treat the world as more than a mere projection of my own consciousness. I hope to add blog
			posts and select photos of my work as I progress.
		</div>
	</div>
</div>
