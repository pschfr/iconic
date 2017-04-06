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
	)

# Open/close panel when clicking arrow
toggleSection = (event) ->
	if (event.path[3].classList.value.includes('closed'))
		event.path[3].classList.remove('closed')
		event.target.innerHTML = 'unfold_less'
	else
		event.path[3].classList.add('closed')
		event.target.innerHTML = 'unfold_more'

# if URL has ID, open that panel
if window.location.hash
	document.getElementById(window.location.hash.replace('#', '')).classList.remove('closed')
