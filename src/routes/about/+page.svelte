<script>
	// @ts-nocheck
	import * as AlertDialog from '$lib/components/ui/alert-dialog/index.js';
</script>

{#snippet showAlert(trigger)}
	<AlertDialog.Root>
		<AlertDialog.Trigger>{trigger}</AlertDialog.Trigger>
		<AlertDialog.Content>
			<AlertDialog.Header>
				<AlertDialog.Title>Gone So Soon?</AlertDialog.Title>
				<AlertDialog.Description>
					Networks are unreliable. If you leave, you may not be able to find your way back. Choose
					wisely.
				</AlertDialog.Description>
			</AlertDialog.Header>
			<AlertDialog.Footer>
				<AlertDialog.Cancel>Close</AlertDialog.Cancel>
				<AlertDialog.Action onclick={() => (window.location = 'https://bartleby.me')}
					>¡Adíos!</AlertDialog.Action
				>
			</AlertDialog.Footer>
		</AlertDialog.Content>
	</AlertDialog.Root>
{/snippet}

<div class="flex items-center">
	<div class="flex flex-col">
		<div class="self-center text-3xl">About</div>
		<article class="w-1/2 self-center">
			This website is an expression of the pataphysical spirit. In accordance with those guiding
			principles, it is unserious in its execution. Questionable design choices abound. UX is
			minimal. For a more self-conscious display of my presence in the ether, consider visiting my
			"professional" site at <b>
				{@render showAlert('bartleby.me')}.
			</b>
		</article>
	</div>
</div>
