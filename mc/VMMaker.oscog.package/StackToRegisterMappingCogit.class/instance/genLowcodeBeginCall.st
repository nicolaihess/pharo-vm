inline primitive generators generated code
genLowcodeBeginCall
	<option: #LowcodeVM>
	<inline: true>
	"Generated by the Lowcode instruction generator."
	| alignment |
	alignment := extA.

	self beginHighLevelCall: alignment.

	extA := 0.
	^ 0

