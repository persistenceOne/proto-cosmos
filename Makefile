.PHONY: generate format
generate:
	@mkdir -p ./codec
	@protoc \
		--go_out=paths=source_relative:./codec \
		*.proto
format:
	clang-format -i \
		'--style={
			BasedOnStyle: google,
			ColumnLimit: 130,
			IndentWidth: 2,
			SpacesBeforeTrailingComments: 1,
			PenaltyBreakComment: 10,
			AlignConsecutiveAssignments: true,
			AlignConsecutiveDeclarations: true
		}' *.proto