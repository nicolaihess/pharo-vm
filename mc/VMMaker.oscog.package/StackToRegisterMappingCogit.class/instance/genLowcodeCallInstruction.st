inline primitive generators generated code
genLowcodeCallInstruction
	<option: #LowcodeVM>
	<inline: true>
	"Generated by the Lowcode instruction generator."
	| function |
	function := extA.

	self CallRT: function.

	extA := 0.
	^ 0

