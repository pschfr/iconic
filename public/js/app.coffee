# Loop through code elements
for icon in document.getElementsByTagName('code')
	# add click event listeners
	icon.addEventListener('click', (event) ->
		# create temp element
		tmp = document.createElement('input')
		# set it's value to what we want copied
		tmp.setAttribute('value', event.target.dataset.copy)
		# append to DOM
		document.body.appendChild(tmp)
		# select the text
		tmp.select()
		# finally, copy!
		document.execCommand('copy')
		# remove temp element from DOM
		document.body.removeChild(tmp)
		# Log that it was copied
		console.log(event.target.innerHTML + ' copied')
	)
