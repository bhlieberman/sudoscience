<script>
	// @ts-nocheck
	import * as Card from '$lib/components/ui/card/index.js';
	let { title, description, content } = $props();
</script>

<Card.Root>
	<Card.Header>
		<Card.Title>{title}</Card.Title>
		<Card.Description>{description}</Card.Description>
	</Card.Header>
	<Card.Content>
		{content}
	</Card.Content>
</Card.Root>
