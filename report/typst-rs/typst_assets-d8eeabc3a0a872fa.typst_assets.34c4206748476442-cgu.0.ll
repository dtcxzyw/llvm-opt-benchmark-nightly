Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_assets-d8eeabc3a0a872fa.typst_assets.34c4206748476442-cgu.0?download=true
inline.NumInlined: 197
inline.NumDeleted: 128
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 12
begin_hunk_0
@356 = private unnamed_addr constant <{ [1 x i8], [23 x i8], [1 x i8], [23 x i8], [1 x i8], [7 x i8], [16 x i8] }> <{ [1 x i8] c"\01", [23 x i8] undef, [1 x i8] c"\04", [23 x i8] undef, [1 x i8] c"\16", [7 x i8] undef, [16 x i8] c"\8B\00\00\00\00\00\00\00\8C\00\00\00\00\00\00\00" }>, align 8
@357 = private unnamed_addr constant [7 x i8] c"preload", align 1
@358 = private unnamed_addr constant [61 x i8] c"Hints how much buffering the media resource will likely need.", align 1
@359 = private unnamed_addr constant [8 x i8] c"readonly", align 1
@360 = private unnamed_addr constant [52 x i8] c"Whether to allow the value to be edited by the user.", align 1
@361 = private unnamed_addr constant [75 x i8] c"Affects willValidate, plus any behavior added by the custom element author.", align 1
@362 = private unnamed_addr constant <{ [1 x i8], [7 x i8], [17 x i8], [23 x i8] }> <{ [1 x i8] c"\16", [7 x i8] undef, [17 x i8] c"\92\00\00\00\00\00\00\00\9A\00\00\00\00\00\00\00\02", [23 x i8] undef }>, align 8
@363 = private unnamed_addr constant [14 x i8] c"referrerpolicy", align 1
@364 = private unnamed_addr constant [53 x i8] c"Referrer policy for fetches initiated by the element.", align 1
@365 = private unnamed_addr constant <{ [1 x i8], [7 x i8], [16 x i8] }> <{ [1 x i8] c"\16", [7 x i8] undef, [16 x i8] c"\9A\00\00\00\00\00\00\00\B5\00\00\00\00\00\00\00" }>, align 8
@366 = private unnamed_addr constant [3 x i8] c"rel", align 1
@367 = private unnamed_addr constant [104 x i8] c"Relationship between the location in the document containing the hyperlink and the destination resource.", align 1
@368 = private unnamed_addr constant [88 x i8] c"Relationship between the document containing the hyperlink and the destination resource.", align 1
@369 = private unnamed_addr constant [80 x i8] c"Relationship between the document containing the form and its action destination", align 1
@370 = private unnamed_addr constant [8 x i8] c"required", align 1
@371 = private unnamed_addr constant [52 x i8] c"Whether the control is required for form submission.", align 1
@372 = private unnamed_addr constant [8 x i8] c"reversed", align 1
@373 = private unnamed_addr constant [26 x i8] c"Number the list backwards.", align 1
@374 = private unnamed_addr constant [4 x i8] c"rows", align 1
@375 = private unnamed_addr constant [24 x i8] c"Number of lines to show.", align 1
@376 = private unnamed_addr constant [7 x i8] c"rowspan", align 1
@377 = private unnamed_addr constant [40 x i8] c"Number of rows that the cell is to span.", align 1
@378 = private unnamed_addr constant <{ [1 x i8], [7 x i8], [16 x i8] }> <{ [1 x i8] c"\16", [7 x i8] undef, [16 x i8] c"\B5\00\00\00\00\00\00\00\C2\00\00\00\00\00\00\00" }>, align 8
@379 = private unnamed_addr constant [7 x i8] c"sandbox", align 1
@380 = private unnamed_addr constant [34 x i8] c"Security rules for nested content.", align 1
@381 = private unnamed_addr constant [5 x i8] c"scope", align 1
@382 = private unnamed_addr constant [49 x i8] c"Specifies which cells the header cell applies to.", align 1
@383 = private unnamed_addr constant [8 x i8] c"selected", align 1
@384 = private unnamed_addr constant [42 x i8] c"Whether the option is selected by default.", align 1
@385 = private unnamed_addr constant [18 x i8] c"shadowrootclonable", align 1
@386 = private unnamed_addr constant [43 x i8] c"Sets clonable on a declarative shadow root.", align 1
@387 = private unnamed_addr constant [31 x i8] c"shadowrootcustomelementregistry", align 1
@388 = private unnamed_addr constant [85 x i8] c"Enables declarative shadow roots to indicate they will use a custom element registry.", align 1
@389 = private unnamed_addr constant [24 x i8] c"shadowrootdelegatesfocus", align 1
@390 = private unnamed_addr constant [50 x i8] c"Sets delegates focus on a declarative shadow root.", align 1
@391 = private unnamed_addr constant [14 x i8] c"shadowrootmode", align 1
@392 = private unnamed_addr constant [43 x i8] c"Enables streaming declarative shadow roots.", align 1
@393 = private unnamed_addr constant [22 x i8] c"shadowrootserializable", align 1
@394 = private unnamed_addr constant [47 x i8] c"Sets serializable on a declarative shadow root.", align 1
@395 = private unnamed_addr constant [5 x i8] c"shape", align 1
@396 = private unnamed_addr constant [48 x i8] c"The kind of shape to be created in an image map.", align 1
@397 = private unnamed_addr constant [4 x i8] c"size", align 1
@398 = private unnamed_addr constant [20 x i8] c"Size of the control.", align 1
@399 = private unnamed_addr constant <{ [1 x i8], [23 x i8] }> <{ [1 x i8] c"\13", [23 x i8] undef }>, align 8
@400 = private unnamed_addr constant [5 x i8] c"sizes", align 1
@401 = private unnamed_addr constant [134 x i8] c"Sizes of the icons (for rel=\22icon\22). Expects an array of sizes. Each size is specified as an array of two integers (width and height).", align 1
@402 = private unnamed_addr constant [128 x i8] c"Image sizes for different page layouts. Expects an array of dictionaries with the keys `condition` (string) and `size` (length).", align 1
@403 = private unnamed_addr constant [4 x i8] c"span", align 1
@404 = private unnamed_addr constant [41 x i8] c"Number of columns spanned by the element.", align 1
@405 = private unnamed_addr constant [3 x i8] c"src", align 1
@406 = private unnamed_addr constant [6 x i8] c"srcdoc", align 1
@407 = private unnamed_addr constant [35 x i8] c"A document to render in the iframe.", align 1
@408 = private unnamed_addr constant [7 x i8] c"srclang", align 1
@409 = private unnamed_addr constant [27 x i8] c"Language of the text track.", align 1
@410 = private unnamed_addr constant [6 x i8] c"srcset", align 1
@411 = private unnamed_addr constant [197 x i8] c"Images to use in different situations, e.g., high-resolution displays, small monitors, etc. Expects an array of dictionaries with the keys `src` (string) and `width` (integer) or `density` (float).", align 1
@412 = private unnamed_addr constant [5 x i8] c"start", align 1
@413 = private unnamed_addr constant [27 x i8] c"Starting value of the list.", align 1
@414 = private unnamed_addr constant <{ [1 x i8], [23 x i8], [1 x i8], [7 x i8], [16 x i8] }> <{ [1 x i8] c"\0F", [23 x i8] undef, [1 x i8] c"\16", [7 x i8] undef, [16 x i8] c"X\00\00\00\00\00\00\00Y\00\00\00\00\00\00\00" }>, align 8
@415 = private unnamed_addr constant [4 x i8] c"step", align 1
@416 = private unnamed_addr constant [54 x i8] c"Granularity to be matched by the form control's value.", align 1
@417 = private unnamed_addr constant [6 x i8] c"target", align 1
@418 = private unnamed_addr constant [35 x i8] c"Navigable for hyperlink navigation.", align 1
@419 = private unnamed_addr constant [63 x i8] c"Default navigable for hyperlink navigation and form submission.", align 1
@420 = private unnamed_addr constant [39 x i8] c"Full term or expansion of abbreviation.", align 1
@421 = private unnamed_addr constant [58 x i8] c"Description of pattern (when used with pattern attribute).", align 1
@422 = private unnamed_addr constant [18 x i8] c"Title of the link.", align 1
@423 = private unnamed_addr constant [25 x i8] c"CSS style sheet set name.", align 1
@424 = private unnamed_addr constant [4 x i8] c"type", align 1
@425 = private unnamed_addr constant [45 x i8] c"Hint for the type of the referenced resource.", align 1
@426 = private unnamed_addr constant [15 x i8] c"Type of button.", align 1
@427 = private unnamed_addr constant [26 x i8] c"Type of embedded resource.", align 1
@428 = private unnamed_addr constant [21 x i8] c"Type of form control.", align 1
@429 = private unnamed_addr constant [20 x i8] c"Kind of list marker.", align 1
@430 = private unnamed_addr constant <{ [1 x i8], [7 x i8], [17 x i8], [23 x i8] }> <{ [1 x i8] c"\16", [7 x i8] undef, [17 x i8] c"\EA\00\00\00\00\00\00\00\EB\00\00\00\00\00\00\00\09", [23 x i8] undef }>, align 8
@431 = private unnamed_addr constant [15 x i8] c"Type of script.", align 1
@432 = private unnamed_addr constant [6 x i8] c"usemap", align 1
@433 = private unnamed_addr constant [25 x i8] c"Name of image map to use.", align 1
@434 = private unnamed_addr constant [5 x i8] c"value", align 1
@435 = private unnamed_addr constant [37 x i8] c"Value to be used for form submission.", align 1
@436 = private unnamed_addr constant <{ [1 x i8], [23 x i8], [1 x i8], [23 x i8], [1 x i8], [23 x i8], [1 x i8], [23 x i8], [2 x i8], [2 x i8], [4 x i8], ptr, [8 x i8] }> <{ [1 x i8] c"\09", [23 x i8] undef, [1 x i8] c"\0E", [23 x i8] undef, [1 x i8] c"\10", [23 x i8] undef, [1 x i8] c"\12", [23 x i8] undef, [2 x i8] c"\18\00", [2 x i8] undef, [4 x i8] c",\00\00\00", ptr @24, [8 x i8] undef }>, align 8
@437 = private unnamed_addr constant [26 x i8] c"Value of the form control.", align 1
@438 = private unnamed_addr constant [31 x i8] c"Ordinal value of the list item.", align 1
@439 = private unnamed_addr constant [29 x i8] c"Current value of the element.", align 1
@440 = private unnamed_addr constant [5 x i8] c"width", align 1
@441 = private unnamed_addr constant [21 x i8] c"Horizontal dimension.", align 1
@442 = private unnamed_addr constant [4 x i8] c"wrap", align 1
@443 = private unnamed_addr constant [71 x i8] c"How the value of the form control is to be wrapped for form submission.", align 1
@444 = private unnamed_addr constant <{ [2 x i8], [2 x i8], [4 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [9 x i8], [23 x i8], ptr, [8 x i8], ptr, [9 x i8], [23 x i8], ptr, [8 x i8], ptr, [9 x i8], [7 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [9 x i8], [23 x i8], ptr, [8 x i8], ptr, [9 x i8], [7 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [9 x i8], [23 x i8], ptr, [8 x i8], ptr, [9 x i8], [23 x i8], ptr, [8 x i8], ptr, [9 x i8], [23 x i8], ptr, [8 x i8], ptr, [10 x i8], [2 x i8], [4 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [9 x i8], [7 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [10 x i8], [2 x i8], [4 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [9 x i8], [23 x i8], ptr, [8 x i8], ptr, [9 x i8], [23 x i8], ptr, [8 x i8], ptr, [9 x i8], [23 x i8], ptr, [8 x i8], ptr, [9 x i8], [7 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [10 x i8], [2 x i8], [4 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [9 x i8], [7 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [9 x i8], [7 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [9 x i8], [7 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [9 x i8], [23 x i8], ptr, [8 x i8], ptr, [9 x i8], [23 x i8], ptr, [8 x i8], ptr, [10 x i8], [2 x i8], [4 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [9 x i8], [23 x i8], ptr, [8 x i8], ptr, [9 x i8], [7 x i8], [16 x i8], ptr, [8 x i8], ptr, [9 x i8], [23 x i8], ptr, [8 x i8], ptr, [9 x i8], [23 x i8], ptr, [8 x i8], ptr, [9 x i8], [23 x i8], ptr, [8 x i8], ptr, [9 x i8], [7 x i8], [16 x i8], ptr, [8 x i8], ptr, [10 x i8], [2 x i8], [4 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [9 x i8], [23 x i8], ptr, [8 x i8], ptr, [9 x i8], [23 x i8], ptr, [8 x i8], ptr, [9 x i8], [7 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [9 x i8], [23 x i8], ptr, [8 x i8], ptr, [10 x i8], [2 x i8], [4 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [9 x i8], [23 x i8], ptr, [8 x i8], ptr, [9 x i8], [23 x i8], ptr, [8 x i8], ptr, [9 x i8], [23 x i8], ptr, [8 x i8], ptr, [9 x i8], [23 x i8], ptr, [8 x i8], ptr, [9 x i8], [23 x i8], ptr, [8 x i8], ptr, [9 x i8], [7 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [9 x i8], [23 x i8], ptr, [8 x i8], ptr, [9 x i8], [7 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [9 x i8], [23 x i8], ptr, [8 x i8], ptr, [9 x i8], [23 x i8], ptr, [8 x i8], ptr, [9 x i8], [23 x i8], ptr, [8 x i8], ptr, [9 x i8], [23 x i8], ptr, [8 x i8], ptr, [9 x i8], [7 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [9 x i8], [23 x i8], ptr, [8 x i8], ptr, [9 x i8], [23 x i8], ptr, [8 x i8], ptr, [10 x i8], [2 x i8], [4 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [9 x i8], [7 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [9 x i8], [7 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [9 x i8], [23 x i8], ptr, [8 x i8], ptr, [9 x i8], [7 x i8], [16 x i8], ptr, [8 x i8], ptr, [9 x i8], [7 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [9 x i8], [23 x i8], ptr, [8 x i8], ptr, [9 x i8], [23 x i8], ptr, [8 x i8], ptr, [9 x i8], [7 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [9 x i8], [23 x i8], ptr, [8 x i8], ptr, [9 x i8], [23 x i8], ptr, [8 x i8], ptr, [10 x i8], [2 x i8], [4 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [10 x i8], [2 x i8], [4 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [9 x i8], [23 x i8], ptr, [8 x i8], ptr, [10 x i8], [2 x i8], [4 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [9 x i8], [7 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [9 x i8], [23 x i8], ptr, [8 x i8], ptr, [9 x i8], [7 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [9 x i8], [7 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [9 x i8], [23 x i8], ptr, [8 x i8], ptr, [9 x i8], [23 x i8], ptr, [8 x i8], ptr, [9 x i8], [23 x i8], ptr, [8 x i8], ptr, [9 x i8], [23 x i8], ptr, [8 x i8], ptr, [9 x i8], [23 x i8], ptr, [8 x i8], ptr, [9 x i8], [23 x i8], ptr, [8 x i8], ptr, [9 x i8], [23 x i8], ptr, [8 x i8], ptr, [9 x i8], [23 x i8], ptr, [8 x i8], ptr, [10 x i8], [2 x i8], [4 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [9 x i8], [7 x i8], [16 x i8], ptr, [8 x i8], ptr, [9 x i8], [23 x i8], ptr, [8 x i8], ptr, [9 x i8], [23 x i8], ptr, [8 x i8], ptr, [9 x i8], [23 x i8], ptr, [8 x i8], ptr, [9 x i8], [23 x i8], ptr, [8 x i8], ptr, [9 x i8], [23 x i8], ptr, [8 x i8], ptr, [9 x i8], [7 x i8], [16 x i8], ptr, [8 x i8], ptr, [9 x i8], [23 x i8], ptr, [8 x i8], ptr, [9 x i8], [23 x i8], ptr, [8 x i8], ptr, [10 x i8], [2 x i8], [4 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [9 x i8], [23 x i8], ptr, [8 x i8], ptr, [10 x i8], [2 x i8], [4 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [9 x i8], [7 x i8], [16 x i8], ptr, [8 x i8], ptr, [9 x i8], [23 x i8], ptr, [8 x i8], ptr, [9 x i8], [23 x i8], ptr, [8 x i8], ptr, [9 x i8], [7 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [9 x i8], [23 x i8], ptr, [8 x i8], ptr, [9 x i8], [7 x i8], [16 x i8], ptr, [8 x i8], ptr, [9 x i8], [23 x i8], ptr, [8 x i8], ptr, [9 x i8], [23 x i8], ptr, [8 x i8], ptr, [9 x i8], [7 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [9 x i8], [23 x i8], ptr, [8 x i8], ptr, [9 x i8], [23 x i8], ptr, [8 x i8], ptr, [9 x i8], [23 x i8], ptr, [8 x i8], ptr, [10 x i8], [2 x i8], [4 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [9 x i8], [7 x i8], [16 x i8], ptr, [8 x i8], ptr, [9 x i8], [23 x i8], ptr, [8 x i8], ptr, [9 x i8], [23 x i8], ptr, [8 x i8], ptr, [9 x i8], [7 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [9 x i8], [7 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [9 x i8], [23 x i8], ptr, [8 x i8], ptr, [9 x i8], [23 x i8], ptr, [8 x i8], ptr, [9 x i8], [23 x i8], ptr, [8 x i8], ptr, [9 x i8], [23 x i8], ptr, [8 x i8], ptr, [9 x i8], [23 x i8], ptr, [8 x i8], ptr, [9 x i8], [23 x i8], ptr, [8 x i8], ptr, [9 x i8], [23 x i8], ptr, [8 x i8], ptr, [9 x i8], [23 x i8], ptr, [8 x i8], ptr, [9 x i8], [7 x i8], [16 x i8], ptr, [8 x i8], ptr, [9 x i8], [7 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [9 x i8], [23 x i8], ptr, [8 x i8], ptr, [10 x i8], [2 x i8], [4 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [9 x i8], [23 x i8], ptr, [8 x i8], ptr, [9 x i8], [23 x i8], ptr, [8 x i8], ptr, [9 x i8], [7 x i8], [16 x i8], ptr, [8 x i8], ptr, [9 x i8], [7 x i8], [16 x i8], ptr, [8 x i8], ptr, [9 x i8], [23 x i8], ptr, [8 x i8], ptr, [9 x i8], [7 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [10 x i8], [2 x i8], [4 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [9 x i8], [23 x i8], ptr, [8 x i8], ptr, [9 x i8], [23 x i8], ptr, [8 x i8], ptr, [9 x i8], [23 x i8], ptr, [8 x i8], ptr, [9 x i8], [23 x i8], ptr, [8 x i8], ptr, [9 x i8], [23 x i8], ptr, [8 x i8], ptr, [9 x i8], [23 x i8], ptr, [8 x i8], ptr, [9 x i8], [7 x i8], [16 x i8], ptr, [8 x i8], ptr, [10 x i8], [2 x i8], [4 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [10 x i8], [2 x i8], [4 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [9 x i8], [23 x i8], ptr, [8 x i8], ptr, [9 x i8], [23 x i8], ptr, [8 x i8], ptr, [9 x i8], [7 x i8], [16 x i8], ptr, [8 x i8], ptr, [9 x i8], [23 x i8], ptr, [8 x i8], ptr, [9 x i8], [23 x i8], ptr, [8 x i8], ptr, [9 x i8], [7 x i8], [16 x i8], ptr, [8 x i8], ptr, [9 x i8], [23 x i8], ptr, [8 x i8], ptr, [9 x i8], [23 x i8], ptr, [8 x i8], ptr, [9 x i8], [7 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [9 x i8], [23 x i8], ptr, [8 x i8], ptr, [9 x i8], [23 x i8], ptr, [8 x i8], ptr, [9 x i8], [23 x i8], ptr, [8 x i8], ptr, [9 x i8], [7 x i8], [16 x i8], ptr, [8 x i8], ptr, [9 x i8], [7 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [9 x i8], [23 x i8], ptr, [8 x i8], ptr, [9 x i8], [23 x i8], ptr, [8 x i8], ptr, [9 x i8], [23 x i8], ptr, [8 x i8], ptr, [9 x i8], [23 x i8], ptr, [8 x i8], ptr, [9 x i8], [23 x i8], ptr, [8 x i8], ptr, [9 x i8], [23 x i8], ptr, [8 x i8], ptr, [9 x i8], [23 x i8], ptr, [8 x i8], ptr, [9 x i8], [7 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [9 x i8], [23 x i8], ptr, [8 x i8], ptr, [9 x i8], [23 x i8], ptr, [8 x i8], ptr, [9 x i8], [23 x i8], ptr, [8 x i8], ptr, [9 x i8], [23 x i8], ptr, [8 x i8], ptr, [9 x i8], [23 x i8], ptr, [8 x i8], ptr, [9 x i8], [23 x i8], ptr, [8 x i8], ptr, [9 x i8], [23 x i8], ptr, [8 x i8], ptr, [9 x i8], [23 x i8], ptr, [8 x i8], ptr, [9 x i8], [23 x i8], ptr, [8 x i8], ptr, [10 x i8], [2 x i8], [4 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [9 x i8], [23 x i8], ptr, [8 x i8], ptr, [9 x i8], [23 x i8], ptr, [8 x i8], ptr, [9 x i8], [23 x i8], ptr, [8 x i8], ptr, [9 x i8], [7 x i8], [16 x i8], ptr, [8 x i8], ptr, [9 x i8], [23 x i8], ptr, [8 x i8], ptr, [9 x i8], [7 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [9 x i8], [23 x i8], ptr, [8 x i8], ptr, [9 x i8], [23 x i8], ptr, [8 x i8], ptr, [9 x i8], [7 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [10 x i8], [2 x i8], [4 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [10 x i8], [2 x i8], [4 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [10 x i8], [2 x i8], [4 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [9 x i8], [23 x i8], ptr, [8 x i8], ptr, [9 x i8], [23 x i8], ptr, [8 x i8], ptr, [9 x i8], [23 x i8], ptr, [8 x i8], ptr, [9 x i8], [23 x i8], ptr, [8 x i8], ptr, [10 x i8], [2 x i8], [4 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [9 x i8], [7 x i8], [16 x i8], ptr, [8 x i8], ptr, [9 x i8], [23 x i8], ptr, [8 x i8], ptr, [9 x i8], [23 x i8], ptr, [8 x i8], ptr, [9 x i8], [23 x i8], ptr, [8 x i8], ptr, [9 x i8], [23 x i8], ptr, [8 x i8], ptr, [9 x i8], [7 x i8], [16 x i8], ptr, [8 x i8], ptr, [9 x i8], [23 x i8], ptr, [8 x i8], ptr, [9 x i8], [7 x i8], [16 x i8], ptr, [8 x i8], ptr, [9 x i8], [23 x i8], ptr, [8 x i8], ptr, [10 x i8], [2 x i8], [4 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [10 x i8], [2 x i8], [4 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [9 x i8], [23 x i8], ptr, [8 x i8], ptr, [9 x i8], [23 x i8], ptr, [8 x i8], ptr, [9 x i8], [23 x i8], ptr, [8 x i8], ptr, [9 x i8], [23 x i8], ptr, [8 x i8], ptr, [10 x i8], [2 x i8], [4 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [9 x i8], [23 x i8], ptr, [8 x i8], ptr, [9 x i8], [7 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [9 x i8], [7 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [9 x i8], [7 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [9 x i8], [7 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [9 x i8], [23 x i8], ptr, [8 x i8], ptr, [9 x i8], [23 x i8], ptr, [8 x i8], ptr, [9 x i8], [23 x i8], ptr, [8 x i8], ptr, [9 x i8], [23 x i8], ptr, [8 x i8], ptr, [9 x i8], [23 x i8], ptr, [8 x i8], ptr, [9 x i8], [7 x i8], [16 x i8], ptr, [8 x i8], ptr, [9 x i8], [23 x i8], ptr, [8 x i8], ptr, [9 x i8], [7 x i8], [16 x i8], ptr, [8 x i8], ptr, [9 x i8], [7 x i8], [16 x i8], ptr, [8 x i8], ptr, [9 x i8], [7 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [9 x i8], [23 x i8], ptr, [8 x i8], ptr, [9 x i8], [23 x i8], ptr, [8 x i8], ptr, [9 x i8], [23 x i8], ptr, [8 x i8], ptr, [9 x i8], [7 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [9 x i8], [23 x i8], ptr, [8 x i8], ptr, [9 x i8], [23 x i8], ptr, [8 x i8], ptr, [9 x i8], [23 x i8], ptr, [8 x i8], ptr, [9 x i8], [7 x i8], [16 x i8], ptr, [8 x i8], ptr, [8 x i8] }> <{ [2 x i8] c"\18\01", [2 x i8] undef, [4 x i8] c" \00\00\00", ptr @3, [8 x i8] undef, ptr @4, [8 x i8] c"\09\00\00\00\00\00\00\00", ptr @5, [9 x i8] c"f\00\00\00\00\00\00\00\09", [23 x i8] undef, ptr @6, [8 x i8] c"\15\00\00\00\00\00\00\00", ptr @7, [9 x i8] c"p\00\00\00\00\00\00\00\05", [23 x i8] undef, ptr @8, [8 x i8] c"\0B\00\00\00\00\00\00\00", ptr @9, [9 x i8] c"\A9\00\00\00\00\00\00\00\17", [7 x i8] undef, ptr @10, [8 x i8] c"\02\00\00\00\00\00\00\00", ptr @11, [8 x i8] c"\11\00\00\00\00\00\00\00", ptr @12, [9 x i8] c"\BE\00\00\00\00\00\00\00\05", [23 x i8] undef, ptr @13, [8 x i8] c"\09\00\00\00\00\00\00\00", ptr @14, [9 x i8] c"\9E\00\00\00\00\00\00\00\17", [7 x i8] undef, ptr @15, [8 x i8] c"\02\00\00\00\00\00\00\00", ptr @16, [8 x i8] c"\0C\00\00\00\00\00\00\00", ptr @17, [9 x i8] c"\82\00\00\00\00\00\00\00\0B", [23 x i8] undef, ptr @18, [8 x i8] c"\0D\00\00\00\00\00\00\00", ptr @19, [9 x i8] c"]\00\00\00\00\00\00\00\0B", [23 x i8] undef, ptr @20, [8 x i8] c"\0D\00\00\00\00\00\00\00", ptr @21, [9 x i8] c"\A8\00\00\00\00\00\00\00\0B", [23 x i8] undef, ptr @22, [8 x i8] c"\0C\00\00\00\00\00\00\00", ptr @23, [10 x i8] c"\8A\00\00\00\00\00\00\00\18\01", [2 x i8] undef, [4 x i8] c" \00\00\00", ptr @24, [8 x i8] undef, ptr @25, [8 x i8] c"\0D\00\00\00\00\00\00\00", ptr @26, [9 x i8] c"}\00\00\00\00\00\00\00\17", [7 x i8] undef, ptr @27, [8 x i8] c"\02\00\00\00\00\00\00\00", ptr @28, [8 x i8] c"\0C\00\00\00\00\00\00\00", ptr @29, [10 x i8] c"e\00\00\00\00\00\00\00\18\01", [2 x i8] undef, [4 x i8] c" \00\00\00", ptr @24, [8 x i8] undef, ptr @30, [8 x i8] c"\10\00\00\00\00\00\00\00", ptr @31, [9 x i8] c"\\\00\00\00\00\00\00\00\09", [23 x i8] undef, ptr @32, [8 x i8] c"\0C\00\00\00\00\00\00\00", ptr @33, [9 x i8] c"s\00\00\00\00\00\00\00\05", [23 x i8] undef, ptr @34, [8 x i8] c"\0D\00\00\00\00\00\00\00", ptr @35, [9 x i8] c"\8F\00\00\00\00\00\00\00\09", [23 x i8] undef, ptr @36, [8 x i8] c"\11\00\00\00\00\00\00\00", ptr @37, [9 x i8] c"t\00\00\00\00\00\00\00\17", [7 x i8] undef, ptr @38, [8 x i8] c"\02\00\00\00\00\00\00\00", ptr @39, [8 x i8] c"\0D\00\00\00\00\00\00\00", ptr @40, [10 x i8] c"k\00\00\00\00\00\00\00\18\01", [2 x i8] undef, [4 x i8] c" \00\00\00", ptr @24, [8 x i8] undef, ptr @41, [8 x i8] c"\0B\00\00\00\00\00\00\00", ptr @42, [9 x i8] c"\D4\00\00\00\00\00\00\00\17", [7 x i8] undef, ptr @43, [8 x i8] c"\02\00\00\00\00\00\00\00", ptr @44, [8 x i8] c"\0D\00\00\00\00\00\00\00", ptr @45, [9 x i8] c"~\00\00\00\00\00\00\00\17", [7 x i8] undef, ptr @38, [8 x i8] c"\02\00\00\00\00\00\00\00", ptr @46, [8 x i8] c"\0B\00\00\00\00\00\00\00", ptr @47, [9 x i8] c"\\\00\00\00\00\00\00\00\17", [7 x i8] undef, ptr @48, [8 x i8] c"\02\00\00\00\00\00\00\00", ptr @49, [8 x i8] c"\0C\00\00\00\00\00\00\00", ptr @50, [9 x i8] c"v\00\00\00\00\00\00\00\09", [23 x i8] undef, ptr @51, [8 x i8] c"\11\00\00\00\00\00\00\00", ptr @52, [9 x i8] c"d\00\00\00\00\00\00\00\09", [23 x i8] undef, ptr @53, [8 x i8] c"\0A\00\00\00\00\00\00\00", ptr @54, [10 x i8] c"T\00\00\00\00\00\00\00\18\01", [2 x i8] undef, [4 x i8] c" \00\00\00", ptr @24, [8 x i8] undef, ptr @55, [8 x i8] c"\0F\00\00\00\00\00\00\00", ptr @56, [9 x i8] c"c\00\00\00\00\00\00\00\0B", [23 x i8] undef, ptr @57, [8 x i8] c"\0A\00\00\00\00\00\00\00", ptr @58, [9 x i8] c"@\00\00\00\00\00\00\00\16", [7 x i8] undef, [16 x i8] c"M\01\00\00\00\00\00\00P\01\00\00\00\00\00\00", ptr @59, [8 x i8] c"\09\00\00\00\00\00\00\00", ptr @60, [9 x i8] c"\A0\00\00\00\00\00\00\00\05", [23 x i8] undef, ptr @61, [8 x i8] c"\0A\00\00\00\00\00\00\00", ptr @62, [9 x i8] c"5\00\00\00\00\00\00\00\05", [23 x i8] undef, ptr @63, [8 x i8] c"\0E\00\00\00\00\00\00\00", ptr @64, [9 x i8] c"S\00\00\00\00\00\00\00\05", [23 x i8] undef, ptr @65, [8 x i8] c"\14\00\00\00\00\00\00\00", ptr @66, [9 x i8] c"^\00\00\00\00\00\00\00\16", [7 x i8] undef, [16 x i8] c"P\01\00\00\00\00\00\00S\01\00\00\00\00\00\00", ptr @67, [8 x i8] c"\10\00\00\00\00\00\00\00", ptr @68, [10 x i8] c"Z\00\00\00\00\00\00\00\18\01", [2 x i8] undef, [4 x i8] c" \00\00\00", ptr @24, [8 x i8] undef, ptr @69, [8 x i8] c"\09\00\00\00\00\00\00\00", ptr @70, [9 x i8] c"\EA\00\00\00\00\00\00\00\09", [23 x i8] undef, ptr @71, [8 x i8] c"\10\00\00\00\00\00\00\00", ptr @72, [9 x i8] c"\C3\00\00\00\00\00\00\00\0B", [23 x i8] undef, ptr @73, [8 x i8] c"\0D\00\00\00\00\00\00\00", ptr @74, [9 x i8] c"\AF\00\00\00\00\00\00\00\17", [7 x i8] undef, ptr @15, [8 x i8] c"\02\00\00\00\00\00\00\00", ptr @75, [8 x i8] c"\0C\00\00\00\00\00\00\00", ptr @76, [9 x i8] c"d\00\00\00\00\00\00\00\05", [23 x i8] undef, ptr @77, [8 x i8] c"\0D\00\00\00\00\00\00\00", ptr @78, [10 x i8] c"a\00\00\00\00\00\00\00\18\01", [2 x i8] undef, [4 x i8] c" \00\00\00", ptr @79, [8 x i8] undef, ptr @80, [8 x i8] c"\0D\00\00\00\00\00\00\00", ptr @81, [9 x i8] c"\8F\00\00\00\00\00\00\00\05", [23 x i8] undef, ptr @82, [8 x i8] c"\0D\00\00\00\00\00\00\00", ptr @83, [9 x i8] c"T\00\00\00\00\00\00\00\09", [23 x i8] undef, ptr @84, [8 x i8] c"\14\00\00\00\00\00\00\00", ptr @85, [9 x i8] c"R\00\00\00\00\00\00\00\0B", [23 x i8] undef, ptr @86, [8 x i8] c"\0D\00\00\00\00\00\00\00", ptr @87, [9 x i8] c"Z\00\00\00\00\00\00\00\0B", [23 x i8] undef, ptr @88, [8 x i8] c"\0D\00\00\00\00\00\00\00", ptr @89, [9 x i8] c"\A2\00\00\00\00\00\00\00\0B", [23 x i8] undef, ptr @90, [8 x i8] c"\0C\00\00\00\00\00\00\00", ptr @91, [9 x i8] c"\87\00\00\00\00\00\00\00\17", [7 x i8] undef, ptr @38, [8 x i8] c"\02\00\00\00\00\00\00\00", ptr @92, [8 x i8] c"\0D\00\00\00\00\00\00\00", ptr @93, [9 x i8] c"e\00\00\00\00\00\00\00\0B", [23 x i8] undef, ptr @94, [8 x i8] c"\0C\00\00\00\00\00\00\00", ptr @95, [9 x i8] c"\A4\00\00\00\00\00\00\00\17", [7 x i8] undef, ptr @96, [8 x i8] c"\02\00\00\00\00\00\00\00", ptr @97, [8 x i8] c"\09\00\00\00\00\00\00\00", ptr @98, [9 x i8] c"R\00\00\00\00\00\00\00\0E", [23 x i8] undef, ptr @99, [8 x i8] c"\0D\00\00\00\00\00\00\00", ptr @100, [9 x i8] c"5\00\00\00\00\00\00\00\0E", [23 x i8] undef, ptr @101, [8 x i8] c"\0D\00\00\00\00\00\00\00", ptr @102, [9 x i8] c"5\00\00\00\00\00\00\00\0E", [23 x i8] undef, ptr @103, [8 x i8] c"\0D\00\00\00\00\00\00\00", ptr @104, [9 x i8] c"I\00\00\00\00\00\00\00\09", [23 x i8] undef, ptr @105, [8 x i8] c"\0E\00\00\00\00\00\00\00", ptr @106, [9 x i8] c"P\00\00\00\00\00\00\00\17", [7 x i8] undef, ptr @107, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr @108, [8 x i8] c"\0E\00\00\00\00\00\00\00", ptr @109, [9 x i8] c"F\00\00\00\00\00\00\00\07", [23 x i8] undef, ptr @110, [8 x i8] c"\0B\00\00\00\00\00\00\00", ptr @111, [9 x i8] c"B\00\00\00\00\00\00\00\00", [23 x i8] undef, ptr @112, [8 x i8] c"\09\00\00\00\00\00\00\00", ptr @113, [10 x i8] c"8\00\00\00\00\00\00\00\18\01", [2 x i8] undef, [4 x i8] c" \00\00\00", ptr @24, [8 x i8] undef, ptr @114, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr @115, [9 x i8] c"%\00\00\00\00\00\00\00\17", [7 x i8] undef, ptr @116, [8 x i8] c"\02\00\00\00\00\00\00\00", ptr @117, [8 x i8] c"\0F\00\00\00\00\00\00\00", ptr @118, [9 x i8] c" \00\00\00\00\00\00\00\17", [7 x i8] undef, ptr @119, [8 x i8] c"\02\00\00\00\00\00\00\00", ptr @120, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr @121, [9 x i8] c"'\00\00\00\00\00\00\00\05", [23 x i8] undef, ptr @122, [8 x i8] c"\09\00\00\00\00\00\00\00", ptr @123, [9 x i8] c"!\00\00\00\00\00\00\00\16", [7 x i8] undef, [16 x i8] c"j\00\00\00\00\00\00\00q\00\00\00\00\00\00\00", ptr @124, [8 x i8] c"\0C\00\00\00\00\00\00\00", ptr @125, [9 x i8] c"'\00\00\00\00\00\00\00\17", [7 x i8] undef, ptr @126, [8 x i8] c"\02\00\00\00\00\00\00\00", ptr @127, [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @128, [9 x i8] c" \00\00\00\00\00\00\00\09", [23 x i8] undef, ptr @129, [8 x i8] c"\02\00\00\00\00\00\00\00", ptr @130, [9 x i8] c"\11\00\00\00\00\00\00\00\00", [23 x i8] undef, ptr @131, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr @132, [9 x i8] c"\1D\00\00\00\00\00\00\00\17", [7 x i8] undef, ptr @133, [8 x i8] c"\02\00\00\00\00\00\00\00", ptr @134, [8 x i8] c"\09\00\00\00\00\00\00\00", ptr @135, [9 x i8] c"%\00\00\00\00\00\00\00\09", [23 x i8] undef, ptr @136, [8 x i8] c"\02\00\00\00\00\00\00\00", ptr @137, [9 x i8] c"&\00\00\00\00\00\00\00\09", [23 x i8] undef, ptr @138, [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @139, [10 x i8] c"'\00\00\00\00\00\00\00\18\01", [2 x i8] undef, [4 x i8] c" \00\00\00", ptr @24, [8 x i8] undef, ptr @140, [8 x i8] c"\08\00\00\00\00\00\00\00", ptr @141, [10 x i8] c"#\00\00\00\00\00\00\00\18\01", [2 x i8] undef, [4 x i8] c" \00\00\00", ptr @24, [8 x i8] undef, ptr @142, [8 x i8] c"\07\00\00\00\00\00\00\00", ptr @143, [9 x i8] c"\14\00\00\00\00\00\00\00\00", [23 x i8] undef, ptr @144, [8 x i8] c"\09\00\00\00\00\00\00\00", ptr @145, [10 x i8] c"\1C\00\00\00\00\00\00\00\18\01", [2 x i8] undef, [4 x i8] c" \00\00\00", ptr @24, [8 x i8] undef, ptr @146, [8 x i8] c"\08\00\00\00\00\00\00\00", ptr @147, [9 x i8] c"\1F\00\00\00\00\00\00\00\17", [7 x i8] undef, ptr @148, [8 x i8] c"\02\00\00\00\00\00\00\00", ptr @149, [8 x i8] c"\04\00\00\00\00\00\00\00", ptr @150, [9 x i8] c"\18\00\00\00\00\00\00\00\09", [23 x i8] undef, ptr @151, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr @152, [9 x i8] c";\00\00\00\00\00\00\00\17", [7 x i8] undef, ptr @153, [8 x i8] c"\02\00\00\00\00\00\00\00", ptr @154, [8 x i8] c"\07\00\00\00\00\00\00\00", ptr @155, [9 x i8] c"$\00\00\00\00\00\00\00\17", [7 x i8] undef, ptr @156, [8 x i8] c"\02\00\00\00\00\00\00\00", ptr @157, [8 x i8] c"\04\00\00\00\00\00\00\00", ptr @158, [9 x i8] c"\0D\00\00\00\00\00\00\00\09", [23 x i8] undef, ptr @159, [8 x i8] c"\04\00\00\00\00\00\00\00", ptr @160, [9 x i8] c"\1B\00\00\00\00\00\00\00\05", [23 x i8] undef, ptr @161, [8 x i8] c"\0A\00\00\00\00\00\00\00", ptr @162, [9 x i8] c"@\00\00\00\00\00\00\00\09", [23 x i8] undef, ptr @163, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr @164, [9 x i8] c"+\00\00\00\00\00\00\00\0B", [23 x i8] undef, ptr @165, [8 x i8] c"\08\00\00\00\00\00\00\00", ptr @166, [9 x i8] c"\93\00\00\00\00\00\00\00\09", [23 x i8] undef, ptr @167, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr @168, [9 x i8] c"%\00\00\00\00\00\00\00\06", [23 x i8] undef, ptr @169, [8 x i8] c"\09\00\00\00\00\00\00\00", ptr @170, [9 x i8] c"C\00\00\00\00\00\00\00\05", [23 x i8] undef, ptr @171, [8 x i8] c"\12\00\00\00\00\00\00\00", ptr @172, [9 x i8] c"9\00\00\00\00\00\00\00\09", [23 x i8] undef, ptr @173, [8 x i8] c"\04\00\00\00\00\00\00\00", ptr @174, [10 x i8] c"Y\00\00\00\00\00\00\00\18\01", [2 x i8] undef, [4 x i8] c",\00\00\00", ptr @24, [8 x i8] undef, ptr @175, [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @176, [9 x i8] c"4\00\00\00\00\00\00\00\16", [7 x i8] undef, [16 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @177, [8 x i8] c"\0E\00\00\00\00\00\00\00", ptr @178, [9 x i8] c"/\00\00\00\00\00\00\00\09", [23 x i8] undef, ptr @179, [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @180, [9 x i8] c"\1F\00\00\00\00\00\00\00\09", [23 x i8] undef, ptr @181, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr @182, [9 x i8] c":\00\00\00\00\00\00\00\00", [23 x i8] undef, ptr @183, [8 x i8] c"\0F\00\00\00\00\00\00\00", ptr @184, [9 x i8] c"B\00\00\00\00\00\00\00\00", [23 x i8] undef, ptr @185, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr @186, [9 x i8] c",\00\00\00\00\00\00\00\09", [23 x i8] undef, ptr @187, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr @188, [9 x i8] c"7\00\00\00\00\00\00\00\16", [7 x i8] undef, [16 x i8] c"\01\00\00\00\00\00\00\00\17\00\00\00\00\00\00\00", ptr @189, [8 x i8] c"\02\00\00\00\00\00\00\00", ptr @190, [9 x i8] c"X\00\00\00\00\00\00\00\00", [23 x i8] undef, ptr @191, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr @192, [9 x i8] c"?\00\00\00\00\00\00\00\07", [23 x i8] undef, ptr @193, [8 x i8] c"\0C\00\00\00\00\00\00\00", ptr @194, [10 x i8] c">\00\00\00\00\00\00\00\18\01", [2 x i8] undef, [4 x i8] c" \00\00\00", ptr @195, [8 x i8] undef, ptr @193, [8 x i8] c"\0C\00\00\00\00\00\00\00", ptr @196, [9 x i8] c"\1F\00\00\00\00\00\00\00\00", [23 x i8] undef, ptr @197, [8 x i8] c"\08\00\00\00\00\00\00\00", ptr @198, [10 x i8] c"R\00\00\00\00\00\00\00\18\01", [2 x i8] undef, [4 x i8] c" \00\00\00", ptr @199, [8 x i8] undef, ptr @200, [8 x i8] c"\08\00\00\00\00\00\00\00", ptr @201, [9 x i8] c"3\00\00\00\00\00\00\00\16", [7 x i8] undef, [16 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @202, [8 x i8] c"\07\00\00\00\00\00\00\00", ptr @203, [9 x i8] c"\1F\00\00\00\00\00\00\00\00", [23 x i8] undef, ptr @204, [8 x i8] c"\07\00\00\00\00\00\00\00", ptr @205, [9 x i8] c"\1F\00\00\00\00\00\00\00\09", [23 x i8] undef, ptr @206, [8 x i8] c"\04\00\00\00\00\00\00\00", ptr @207, [9 x i8] c"G\00\00\00\00\00\00\00\17", [7 x i8] undef, ptr @208, [8 x i8] c"\02\00\00\00\00\00\00\00", ptr @209, [8 x i8] c"\08\00\00\00\00\00\00\00", ptr @210, [9 x i8] c")\00\00\00\00\00\00\00\12", [23 x i8] undef, ptr @211, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr @212, [9 x i8] c"B\00\00\00\00\00\00\00\16", [7 x i8] undef, [16 x i8] c"Z\00\00\00\00\00\00\00\\\00\00\00\00\00\00\00", ptr @213, [8 x i8] c"\0A\00\00\00\00\00\00\00", ptr @214, [9 x i8] c"(\00\00\00\00\00\00\00\0D", [23 x i8] undef, ptr @215, [8 x i8] c"\04\00\00\00\00\00\00\00", ptr @216, [9 x i8] c"&\00\00\00\00\00\00\00\0D", [23 x i8] undef, ptr @217, [8 x i8] c"\07\00\00\00\00\00\00\00", ptr @218, [9 x i8] c"+\00\00\00\00\00\00\00\17", [7 x i8] undef, ptr @219, [8 x i8] c"\02\00\00\00\00\00\00\00", ptr @220, [8 x i8] c"\07\00\00\00\00\00\00\00", ptr @221, [9 x i8] c"7\00\00\00\00\00\00\00\09", [23 x i8] undef, ptr @222, [8 x i8] c"\0A\00\00\00\00\00\00\00", ptr @223, [9 x i8] c"&\00\00\00\00\00\00\00\09", [23 x i8] undef, ptr @224, [8 x i8] c"\07\00\00\00\00\00\00\00", ptr @225, [9 x i8] c"\15\00\00\00\00\00\00\00\00", [23 x i8] undef, ptr @226, [8 x i8] c"\08\00\00\00\00\00\00\00", ptr @227, [10 x i8] c"\19\00\00\00\00\00\00\00\18\00", [2 x i8] undef, [4 x i8] c",\00\00\00", ptr @228, [8 x i8] undef, ptr @229, [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @230, [9 x i8] c"d\00\00\00\00\00\00\00\16", [7 x i8] undef, [16 x i8] c"c\00\00\00\00\00\00\00e\00\00\00\00\00\00\00", ptr @231, [8 x i8] c"\0B\00\00\00\00\00\00\00", ptr @232, [9 x i8] c"-\00\00\00\00\00\00\00\09", [23 x i8] undef, ptr @233, [8 x i8] c"\04\00\00\00\00\00\00\00", ptr @234, [9 x i8] c"\18\00\00\00\00\00\00\00\10", [23 x i8] undef, ptr @235, [8 x i8] c"\08\00\00\00\00\00\00\00", ptr @236, [9 x i8] c")\00\00\00\00\00\00\00\17", [7 x i8] undef, ptr @237, [8 x i8] c"\02\00\00\00\00\00\00\00", ptr @235, [8 x i8] c"\08\00\00\00\00\00\00\00", ptr @238, [9 x i8] c"\17\00\00\00\00\00\00\00\17", [7 x i8] undef, ptr @239, [8 x i8] c"\02\00\00\00\00\00\00\00", ptr @240, [8 x i8] c"\08\00\00\00\00\00\00\00", ptr @241, [9 x i8] c"A\00\00\00\00\00\00\00\00", [23 x i8] undef, ptr @242, [8 x i8] c"\07\00\00\00\00\00\00\00", ptr @243, [9 x i8] c"9\00\00\00\00\00\00\00\00", [23 x i8] undef, ptr @244, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr @245, [9 x i8] c"\17\00\00\00\00\00\00\00\08", [23 x i8] undef, ptr @120, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr @121, [9 x i8] c"'\00\00\00\00\00\00\00\09", [23 x i8] undef, ptr @246, [8 x i8] c"\07\00\00\00\00\00\00\00", ptr @247, [9 x i8] c"X\00\00\00\00\00\00\00\00", [23 x i8] undef, ptr @248, [8 x i8] c"\08\00\00\00\00\00\00\00", ptr @249, [9 x i8] c"%\00\00\00\00\00\00\00\00", [23 x i8] undef, ptr @248, [8 x i8] c"\08\00\00\00\00\00\00\00", ptr @250, [9 x i8] c"M\00\00\00\00\00\00\00\00", [23 x i8] undef, ptr @248, [8 x i8] c"\08\00\00\00\00\00\00\00", ptr @251, [9 x i8] c"\1D\00\00\00\00\00\00\00\09", [23 x i8] undef, ptr @252, [8 x i8] c"\08\00\00\00\00\00\00\00", ptr @253, [9 x i8] c"U\00\00\00\00\00\00\00\16", [7 x i8] undef, [16 x i8] c"g\00\00\00\00\00\00\00j\00\00\00\00\00\00\00", ptr @254, [8 x i8] c"\07\00\00\00\00\00\00\00", ptr @255, [9 x i8] c"4\00\00\00\00\00\00\00\17", [7 x i8] undef, ptr @256, [8 x i8] c"\02\00\00\00\00\00\00\00", ptr @257, [8 x i8] c"\0D\00\00\00\00\00\00\00", ptr @258, [9 x i8] c"7\00\00\00\00\00\00\00\09", [23 x i8] undef, ptr @259, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr @260, [10 x i8] c"&\00\00\00\00\00\00\00\18\01", [2 x i8] undef, [4 x i8] c" \00\00\00", ptr @24, [8 x i8] undef, ptr @259, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr @261, [9 x i8] c"8\00\00\00\00\00\00\00\09", [23 x i8] undef, ptr @262, [8 x i8] c"\04\00\00\00\00\00\00\00", ptr @263, [9 x i8] c"+\00\00\00\00\00\00\00\09", [23 x i8] undef, ptr @264, [8 x i8] c"\0A\00\00\00\00\00\00\00", ptr @180, [9 x i8] c"\1F\00\00\00\00\00\00\00\16", [7 x i8] undef, [16 x i8] c"g\00\00\00\00\00\00\00j\00\00\00\00\00\00\00", ptr @265, [8 x i8] c"\0B\00\00\00\00\00\00\00", ptr @255, [9 x i8] c"4\00\00\00\00\00\00\00\16", [7 x i8] undef, [16 x i8] c"s\00\00\00\00\00\00\00v\00\00\00\00\00\00\00", ptr @266, [8 x i8] c"\0A\00\00\00\00\00\00\00", ptr @267, [9 x i8] c"#\00\00\00\00\00\00\00\00", [23 x i8] undef, ptr @268, [8 x i8] c"\0E\00\00\00\00\00\00\00", ptr @269, [9 x i8] c"3\00\00\00\00\00\00\00\17", [7 x i8] undef, ptr @270, [8 x i8] c"\02\00\00\00\00\00\00\00", ptr @271, [8 x i8] c"\0A\00\00\00\00\00\00\00", ptr @272, [10 x i8] c"\1E\00\00\00\00\00\00\00\18\01", [2 x i8] undef, [4 x i8] c" \00\00\00", ptr @24, [8 x i8] undef, ptr @273, [8 x i8] c"\07\00\00\00\00\00\00\00", ptr @274, [9 x i8] c"\1F\00\00\00\00\00\00\00\0C", [23 x i8] undef, ptr @275, [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @276, [9 x i8] c"\13\00\00\00\00\00\00\00\0E", [23 x i8] undef, ptr @277, [8 x i8] c"\04\00\00\00\00\00\00\00", ptr @278, [9 x i8] c"\18\00\00\00\00\00\00\00\09", [23 x i8] undef, ptr @279, [8 x i8] c"\04\00\00\00\00\00\00\00", ptr @280, [9 x i8] c"\19\00\00\00\00\00\00\00\09", [23 x i8] undef, ptr @279, [8 x i8] c"\04\00\00\00\00\00\00\00", ptr @280, [9 x i8] c"\19\00\00\00\00\00\00\00\09", [23 x i8] undef, ptr @279, [8 x i8] c"\04\00\00\00\00\00\00\00", ptr @281, [9 x i8] c"\12\00\00\00\00\00\00\00\09", [23 x i8] undef, ptr @282, [8 x i8] c"\08\00\00\00\00\00\00\00", ptr @283, [9 x i8] c" \00\00\00\00\00\00\00\16", [7 x i8] undef, [16 x i8] c"{\00\00\00\00\00\00\00\80\00\00\00\00\00\00\00", ptr @284, [8 x i8] c"\0A\00\00\00\00\00\00\00", ptr @285, [10 x i8] c"\11\00\00\00\00\00\00\00\18\00", [2 x i8] undef, [4 x i8] c",\00\00\00", ptr @286, [8 x i8] undef, ptr @287, [8 x i8] c"\0A\00\00\00\00\00\00\00", ptr @288, [10 x i8] c"\94\00\00\00\00\00\00\00\18\00", [2 x i8] undef, [4 x i8] c",\00\00\00", ptr @289, [8 x i8] undef, ptr @290, [8 x i8] c"\0B\00\00\00\00\00\00\00", ptr @291, [9 x i8] c"\DA\00\00\00\00\00\00\00\09", [23 x i8] undef, ptr @292, [8 x i8] c"\09\00\00\00\00\00\00\00", ptr @293, [9 x i8] c"8\00\00\00\00\00\00\00\00", [23 x i8] undef, ptr @294, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr @295, [9 x i8] c"-\00\00\00\00\00\00\00\16", [7 x i8] undef, [16 x i8] c"\87\00\00\00\00\00\00\00\8C\00\00\00\00\00\00\00", ptr @296, [8 x i8] c"\04\00\00\00\00\00\00\00", ptr @297, [9 x i8] c"\17\00\00\00\00\00\00\00\09", [23 x i8] undef, ptr @298, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr @299, [9 x i8] c"\13\00\00\00\00\00\00\00\09", [23 x i8] undef, ptr @300, [8 x i8] c"\04\00\00\00\00\00\00\00", ptr @301, [9 x i8] c"\1D\00\00\00\00\00\00\00\16", [7 x i8] undef, [16 x i8] c"\8C\00\00\00\00\00\00\00\8E\00\00\00\00\00\00\00", ptr @302, [8 x i8] c"\07\00\00\00\00\00\00\00", ptr @303, [9 x i8] c"'\00\00\00\00\00\00\00\00", [23 x i8] undef, ptr @304, [8 x i8] c"\04\00\00\00\00\00\00\00", ptr @305, [9 x i8] c"#\00\00\00\00\00\00\00\0E", [23 x i8] undef, ptr @306, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr @307, [9 x i8] c"\18\00\00\00\00\00\00\00\17", [7 x i8] undef, ptr @308, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr @309, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr @310, [9 x i8] c"\0E\00\00\00\00\00\00\00\0E", [23 x i8] undef, ptr @309, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr @311, [9 x i8] c"\15\00\00\00\00\00\00\00\0C", [23 x i8] undef, ptr @312, [8 x i8] c"\09\00\00\00\00\00\00\00", ptr @313, [9 x i8] c"\18\00\00\00\00\00\00\00\09", [23 x i8] undef, ptr @314, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr @315, [9 x i8] c"\11\00\00\00\00\00\00\00\16", [7 x i8] undef, [16 x i8] c"s\00\00\00\00\00\00\00v\00\00\00\00\00\00\00", ptr @316, [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @267, [9 x i8] c"#\00\00\00\00\00\00\00\17", [7 x i8] undef, ptr @308, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr @317, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr @318, [9 x i8] c"\0E\00\00\00\00\00\00\00\0E", [23 x i8] undef, ptr @317, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr @319, [9 x i8] c"\15\00\00\00\00\00\00\00\0C", [23 x i8] undef, ptr @320, [8 x i8] c"\09\00\00\00\00\00\00\00", ptr @321, [9 x i8] c"\18\00\00\00\00\00\00\00\00", [23 x i8] undef, ptr @322, [8 x i8] c"\08\00\00\00\00\00\00\00", ptr @323, [9 x i8] c"!\00\00\00\00\00\00\00\00", [23 x i8] undef, ptr @324, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr @325, [9 x i8] c".\00\00\00\00\00\00\00\09", [23 x i8] undef, ptr @326, [8 x i8] c"\04\00\00\00\00\00\00\00", ptr @327, [9 x i8] c"L\00\00\00\00\00\00\00\09", [23 x i8] undef, ptr @326, [8 x i8] c"\04\00\00\00\00\00\00\00", ptr @328, [9 x i8] c"5\00\00\00\00\00\00\00\09", [23 x i8] undef, ptr @326, [8 x i8] c"\04\00\00\00\00\00\00\00", ptr @329, [9 x i8] c".\00\00\00\00\00\00\00\17", [7 x i8] undef, ptr @270, [8 x i8] c"\02\00\00\00\00\00\00\00", ptr @326, [8 x i8] c"\04\00\00\00\00\00\00\00", ptr @330, [9 x i8] c"\1A\00\00\00\00\00\00\00\09", [23 x i8] undef, ptr @326, [8 x i8] c"\04\00\00\00\00\00\00\00", ptr @331, [9 x i8] c"9\00\00\00\00\00\00\00\09", [23 x i8] undef, ptr @326, [8 x i8] c"\04\00\00\00\00\00\00\00", ptr @332, [9 x i8] c"\0E\00\00\00\00\00\00\00\09", [23 x i8] undef, ptr @326, [8 x i8] c"\04\00\00\00\00\00\00\00", ptr @333, [9 x i8] c"\19\00\00\00\00\00\00\00\00", [23 x i8] undef, ptr @334, [8 x i8] c"\08\00\00\00\00\00\00\00", ptr @335, [9 x i8] c">\00\00\00\00\00\00\00\00", [23 x i8] undef, ptr @336, [8 x i8] c"\0A\00\00\00\00\00\00\00", ptr @269, [9 x i8] c"3\00\00\00\00\00\00\00\00", [23 x i8] undef, ptr @337, [8 x i8] c"\04\00\00\00\00\00\00\00", ptr @338, [9 x i8] c" \00\00\00\00\00\00\00\00", [23 x i8] undef, ptr @337, [8 x i8] c"\04\00\00\00\00\00\00\00", ptr @339, [9 x i8] c"\22\00\00\00\00\00\00\00\0E", [23 x i8] undef, ptr @340, [8 x i8] c"\07\00\00\00\00\00\00\00", ptr @341, [9 x i8] c"\17\00\00\00\00\00\00\00\09", [23 x i8] undef, ptr @342, [8 x i8] c"\07\00\00\00\00\00\00\00", ptr @343, [10 x i8] c"2\00\00\00\00\00\00\00\18\01", [2 x i8] undef, [4 x i8] c" \00\00\00", ptr @24, [8 x i8] undef, ptr @344, [8 x i8] c"\04\00\00\00\00\00\00\00", ptr @345, [9 x i8] c"\0D\00\00\00\00\00\00\00\09", [23 x i8] undef, ptr @346, [8 x i8] c"\0B\00\00\00\00\00\00\00", ptr @347, [9 x i8] c"8\00\00\00\00\00\00\00\00", [23 x i8] undef, ptr @348, [8 x i8] c"\0B\00\00\00\00\00\00\00", ptr @349, [9 x i8] c"U\00\00\00\00\00\00\00\09", [23 x i8] undef, ptr @350, [8 x i8] c"\0D\00\00\00\00\00\00\00", ptr @351, [9 x i8] c"3\00\00\00\00\00\00\00\16", [7 x i8] undef, [16 x i8] c"\8F\00\00\00\00\00\00\00\92\00\00\00\00\00\00\00", ptr @352, [8 x i8] c"\13\00\00\00\00\00\00\00", ptr @353, [9 x i8] c"P\00\00\00\00\00\00\00\09", [23 x i8] undef, ptr @354, [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @355, [9 x i8] c"-\00\00\00\00\00\00\00\17", [7 x i8] undef, ptr @356, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr @357, [8 x i8] c"\07\00\00\00\00\00\00\00", ptr @358, [9 x i8] c"=\00\00\00\00\00\00\00\00", [23 x i8] undef, ptr @359, [8 x i8] c"\08\00\00\00\00\00\00\00", ptr @360, [9 x i8] c"4\00\00\00\00\00\00\00\00", [23 x i8] undef, ptr @359, [8 x i8] c"\08\00\00\00\00\00\00\00", ptr @361, [9 x i8] c"K\00\00\00\00\00\00\00\17", [7 x i8] undef, ptr @362, [8 x i8] c"\02\00\00\00\00\00\00\00", ptr @363, [8 x i8] c"\0E\00\00\00\00\00\00\00", ptr @364, [10 x i8] c"5\00\00\00\00\00\00\00\18\01", [2 x i8] undef, [4 x i8] c" \00\00\00", ptr @365, [8 x i8] undef, ptr @366, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr @367, [10 x i8] c"h\00\00\00\00\00\00\00\18\01", [2 x i8] undef, [4 x i8] c" \00\00\00", ptr @365, [8 x i8] undef, ptr @366, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr @368, [10 x i8] c"X\00\00\00\00\00\00\00\18\01", [2 x i8] undef, [4 x i8] c" \00\00\00", ptr @365, [8 x i8] undef, ptr @366, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr @369, [9 x i8] c"P\00\00\00\00\00\00\00\00", [23 x i8] undef, ptr @370, [8 x i8] c"\08\00\00\00\00\00\00\00", ptr @371, [9 x i8] c"4\00\00\00\00\00\00\00\00", [23 x i8] undef, ptr @372, [8 x i8] c"\08\00\00\00\00\00\00\00", ptr @373, [9 x i8] c"\1A\00\00\00\00\00\00\00\0D", [23 x i8] undef, ptr @374, [8 x i8] c"\04\00\00\00\00\00\00\00", ptr @375, [9 x i8] c"\18\00\00\00\00\00\00\00\0C", [23 x i8] undef, ptr @376, [8 x i8] c"\07\00\00\00\00\00\00\00", ptr @377, [10 x i8] c"(\00\00\00\00\00\00\00\18\01", [2 x i8] undef, [4 x i8] c" \00\00\00", ptr @378, [8 x i8] undef, ptr @379, [8 x i8] c"\07\00\00\00\00\00\00\00", ptr @380, [9 x i8] c"\22\00\00\00\00\00\00\00\16", [7 x i8] undef, [16 x i8] c"\C2\00\00\00\00\00\00\00\C6\00\00\00\00\00\00\00", ptr @381, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr @382, [9 x i8] c"1\00\00\00\00\00\00\00\00", [23 x i8] undef, ptr @383, [8 x i8] c"\08\00\00\00\00\00\00\00", ptr @384, [9 x i8] c"*\00\00\00\00\00\00\00\00", [23 x i8] undef, ptr @385, [8 x i8] c"\12\00\00\00\00\00\00\00", ptr @386, [9 x i8] c"+\00\00\00\00\00\00\00\00", [23 x i8] undef, ptr @387, [8 x i8] c"\1F\00\00\00\00\00\00\00", ptr @388, [9 x i8] c"U\00\00\00\00\00\00\00\00", [23 x i8] undef, ptr @389, [8 x i8] c"\18\00\00\00\00\00\00\00", ptr @390, [9 x i8] c"2\00\00\00\00\00\00\00\16", [7 x i8] undef, [16 x i8] c"\C6\00\00\00\00\00\00\00\C8\00\00\00\00\00\00\00", ptr @391, [8 x i8] c"\0E\00\00\00\00\00\00\00", ptr @392, [9 x i8] c"+\00\00\00\00\00\00\00\00", [23 x i8] undef, ptr @393, [8 x i8] c"\16\00\00\00\00\00\00\00", ptr @394, [9 x i8] c"/\00\00\00\00\00\00\00\16", [7 x i8] undef, [16 x i8] c"\C8\00\00\00\00\00\00\00\CC\00\00\00\00\00\00\00", ptr @395, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr @396, [9 x i8] c"0\00\00\00\00\00\00\00\0D", [23 x i8] undef, ptr @397, [8 x i8] c"\04\00\00\00\00\00\00\00", ptr @398, [10 x i8] c"\14\00\00\00\00\00\00\00\18\00", [2 x i8] undef, [4 x i8] c" \00\00\00", ptr @399, [8 x i8] undef, ptr @400, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr @401, [10 x i8] c"\86\00\00\00\00\00\00\00\18\00", [2 x i8] undef, [4 x i8] c",\00\00\00", ptr @286, [8 x i8] undef, ptr @400, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr @402, [9 x i8] c"\80\00\00\00\00\00\00\00\0D", [23 x i8] undef, ptr @403, [8 x i8] c"\04\00\00\00\00\00\00\00", ptr @404, [9 x i8] c")\00\00\00\00\00\00\00\09", [23 x i8] undef, ptr @405, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr @234, [9 x i8] c"\18\00\00\00\00\00\00\00\09", [23 x i8] undef, ptr @406, [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @407, [9 x i8] c"#\00\00\00\00\00\00\00\09", [23 x i8] undef, ptr @408, [8 x i8] c"\07\00\00\00\00\00\00\00", ptr @409, [10 x i8] c"\1B\00\00\00\00\00\00\00\18\00", [2 x i8] undef, [4 x i8] c",\00\00\00", ptr @289, [8 x i8] undef, ptr @410, [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @411, [9 x i8] c"\C5\00\00\00\00\00\00\00\0B", [23 x i8] undef, ptr @412, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr @413, [9 x i8] c"\1B\00\00\00\00\00\00\00\17", [7 x i8] undef, ptr @414, [8 x i8] c"\02\00\00\00\00\00\00\00", ptr @415, [8 x i8] c"\04\00\00\00\00\00\00\00", ptr @416, [9 x i8] c"6\00\00\00\00\00\00\00\17", [7 x i8] undef, ptr @270, [8 x i8] c"\02\00\00\00\00\00\00\00", ptr @417, [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @418, [9 x i8] c"#\00\00\00\00\00\00\00\17", [7 x i8] undef, ptr @270, [8 x i8] c"\02\00\00\00\00\00\00\00", ptr @417, [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @419, [9 x i8] c"?\00\00\00\00\00\00\00\17", [7 x i8] undef, ptr @270, [8 x i8] c"\02\00\00\00\00\00\00\00", ptr @417, [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @272, [9 x i8] c"\1E\00\00\00\00\00\00\00\09", [23 x i8] undef, ptr @167, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr @420, [9 x i8] c"'\00\00\00\00\00\00\00\09", [23 x i8] undef, ptr @167, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr @421, [9 x i8] c":\00\00\00\00\00\00\00\09", [23 x i8] undef, ptr @167, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr @422, [9 x i8] c"\12\00\00\00\00\00\00\00\09", [23 x i8] undef, ptr @167, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr @423, [9 x i8] c"\19\00\00\00\00\00\00\00\09", [23 x i8] undef, ptr @424, [8 x i8] c"\04\00\00\00\00\00\00\00", ptr @425, [9 x i8] c"-\00\00\00\00\00\00\00\16", [7 x i8] undef, [16 x i8] c"\CC\00\00\00\00\00\00\00\CF\00\00\00\00\00\00\00", ptr @424, [8 x i8] c"\04\00\00\00\00\00\00\00", ptr @426, [9 x i8] c"\0F\00\00\00\00\00\00\00\09", [23 x i8] undef, ptr @424, [8 x i8] c"\04\00\00\00\00\00\00\00", ptr @427, [9 x i8] c"\1A\00\00\00\00\00\00\00\16", [7 x i8] undef, [16 x i8] c"\CF\00\00\00\00\00\00\00\E5\00\00\00\00\00\00\00", ptr @424, [8 x i8] c"\04\00\00\00\00\00\00\00", ptr @428, [9 x i8] c"\15\00\00\00\00\00\00\00\16", [7 x i8] undef, [16 x i8] c"\E5\00\00\00\00\00\00\00\EA\00\00\00\00\00\00\00", ptr @424, [8 x i8] c"\04\00\00\00\00\00\00\00", ptr @429, [9 x i8] c"\14\00\00\00\00\00\00\00\17", [7 x i8] undef, ptr @430, [8 x i8] c"\02\00\00\00\00\00\00\00", ptr @424, [8 x i8] c"\04\00\00\00\00\00\00\00", ptr @431, [9 x i8] c"\0F\00\00\00\00\00\00\00\09", [23 x i8] undef, ptr @432, [8 x i8] c"\06\00\00\00\00\00\00\00", ptr @433, [9 x i8] c"\19\00\00\00\00\00\00\00\09", [23 x i8] undef, ptr @434, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr @435, [9 x i8] c"%\00\00\00\00\00\00\00\09", [23 x i8] undef, ptr @434, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr @238, [9 x i8] c"\17\00\00\00\00\00\00\00\17", [7 x i8] undef, ptr @436, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr @434, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr @437, [9 x i8] c"\1A\00\00\00\00\00\00\00\0B", [23 x i8] undef, ptr @434, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr @438, [9 x i8] c"\1F\00\00\00\00\00\00\00\0E", [23 x i8] undef, ptr @434, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr @439, [9 x i8] c"\1D\00\00\00\00\00\00\00\0C", [23 x i8] undef, ptr @440, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr @441, [9 x i8] c"\15\00\00\00\00\00\00\00\16", [7 x i8] undef, [16 x i8] c"\EB\00\00\00\00\00\00\00\ED\00\00\00\00\00\00\00", ptr @442, [8 x i8] c"\04\00\00\00\00\00\00\00", ptr @443, [8 x i8] c"G\00\00\00\00\00\00\00" }>, align 8
@445 = private unnamed_addr constant [101 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/typst-assets-0.15.1/src/html.rs\00", align 1
@446 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @445, [16 x i8] c"d\00\00\00\00\00\00\00-\00\00\00/\00\00\00" }>, align 8
@447 = private unnamed_addr constant [944 x i8] c"%\00\80\00*\00\80\00+\00@\00-\00@\00.\00\80\00/\00\C0\00?\00\81\00\\\00\C0\00^\00\80\00_\00\C0\00\B1\00@\00\B7\00\80\00\D7\00\80\00\F7\00@\00\22\03@\00#\03\80\00.\03\80\00\22\04\80\00C\04\80\00D\04@\00a\04\C3\00\90\05\05\00\9A\05\0F\00\AA\05\04\00\B0\05\05\00\B9\05\00\00\BC\05\0F\00\CC\05\09\00\DA\05\0F\00\EA\05\06\00\F3\05\0C\00\06\06\C0\00\12\06D\00\17\06\82\00'\06C\006\06@\008\06@\00@\06\80\00\8C\06B\00\93\06C\00\97\06\80\00\98\06@\00\99\06\82\00\9D\06B\00\A0\06\81\00\BA\06\80\00\BB\06B\00\C4\06\83\00\C9\06\83\00\CE\06A\00\D2\06A\00\05\07\81\00\94\0B\00\00\95\0BB\00\99\0B\00\00\9B\0B\06\00\A5\0B\01\00\A8\0B\07\00\B1\0B\00\00\B3\0B\00\00\B5\0B\00\00\B8\0B\00\00\BA\0B\04\00\CB\0B\80\00\CD\0B\80\00\F0\0B\01\00\F4\0B\0B\00\00\0D\0F\00\10\0D\0F\00 \0D\00\004\0D\03\00B\0D\0F\00R\0D\0F\00b\0D\0F\00r\0D\03\00|\0D\03\00\B8\0D@\00\BC\0D@\00\C4\0DA\00\C6\0D\82\00\D4\0D\83\00\E2\0D\80\00\F5\0DF\00\1D\0E\81\00\1F\0EO\00/\0E\88\008\0EB\00;\0E\82\00>\0E@\00?\0E\80\00@\0EO\00P\0E\80\00Q\0EO\00a\0EB\00d\0E\81\00\DB\0E@\00\DC\0E\81\00\F6\0E@\00\FB\0E@\00\FD\0E@\00\FE\0E\80\00\04\0F\03\00\0C\0F\05\000\0F\0E\00@\0F\0C\00`\0F\05\00j\0F\03\00p\0F\03\00z\0F\03\00\80\0F\07\00\95\0F\00\00\A0\0F\0F\00\B8\0F\00\00!\10\10\00(\10P\00+\10\10\00-\10\10\00[\10P\00{\10Q\00\AC\10\10\00\B1\10\10\001\13\10\00\16\14P\00\18\14\10\00\1C\14\10\00\00\16\11\00\03\16\11\00\07\16\10\00\0F\16\D2\00\12\16\11\00\1F\16\13\00+\16\98\004\16\11\00<\16\10\00\BE\16\11\00\C0\16\D3\00\08\17P\00\0A\17P\00\10\17\10\00\19\17\10\00)\17P\00r\1BP\00\95\1B\11\00\C0\1B\10\00\E6\1BP\00\E8\1BP\00\EA\1BP\00\EC\1BP\00\EE\1BP\00\80\1DP\00\83\1DP\00\85\1DP\00\87\1DP\00\89\1DP\00\8B\1DP\00\8D\1DP\00\8F\1DP\00\91\1DP\00\93\1DP\00\95\1DP\00\97\1DP\00\99\1DP\00\9B\1D\1F\00\AB\1D\14\00\D8\1DP\00\DA\1DP\00\FC\1DP\00\00\1E\DA\00\0B\1E\9F\00\1B\1E\91\00\1D\1E\D1\00\EC\1E\11\00\FC\1E\D0\00\FF\1E\D0\00! !\00% \22\00) `\00] `\00^ \A1\00`  \00| a\00~ \A0\00\A8  \00\AF \A0\00\B0  \00\B2 \22\00\B8 !\00\C6\22\A1\00\C9\22\A0\00\CA\22!\00\CD\22\A0\00\D8\22\22\00\DC\22\A0\00\DD\22 \00\F7\22\A0\00\02#\A0\00\11# \00 # \00%# \00'# \001# \00\16$`\00\19$\22\00\1D$\22\002$%\00>$\A0\00W$ \00\DB$!\00\09'`\00\0B'`\00\22'\A1\00*'`\00\B4'\A1\00\CD' \00\DC'\A5\00s+`\00\E7+`\00\E9+`\00\EB+`\00\ED+`\00\EF+`\00\80-`\00\84-`\00\86-`\00\88-`\00\8A-`\00\8C-`\00\8E-`\00\90-`\00\92-`\00\94-`\00\96-`\00\98-a\00\D9-`\00\DB-`\00\FD-`\00", align 2
@448 = private unnamed_addr constant [103 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/typst-assets-0.15.1/src/mathml.rs\00", align 1
@449 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @448, [16 x i8] c"f\00\00\00\00\00\00\00\B0\00\00\00\1F\00\00\00" }>, align 8
@450 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", ptr @_RNvXsb_NtNtCs3oUPovFnLWP_4core4char7convertNtB5_14ParseCharErrorNtNtB9_3fmt5Debug3fmt }>, align 8
@451 = private unnamed_addr constant [43 x i8] c"called `Result::unwrap()` on an `Err` value", align 1
@452 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @445, [16 x i8] c"d\00\00\00\00\00\00\00.\00\00\00\22\00\00\00" }>, align 8
@453 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @448, [16 x i8] c"f\00\00\00\00\00\00\00R\00\00\001\00\00\00" }>, align 8
@454 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @448, [16 x i8] c"f\00\00\00\00\00\00\00j\00\00\00P\00\00\00" }>, align 8
@455 = private unnamed_addr constant [8 x i8] c"STRETCHY", align 1
@456 = private unnamed_addr constant [9 x i8] c"SYMMETRIC", align 1
@457 = private unnamed_addr constant [7 x i8] c"LARGEOP", align 1
@458 = private unnamed_addr constant [13 x i8] c"MOVABLELIMITS", align 1
@459 = private unnamed_addr constant <{ ptr, [9 x i8], [7 x i8], ptr, [9 x i8], [7 x i8], ptr, [9 x i8], [7 x i8], ptr, [9 x i8], [7 x i8] }> <{ ptr @455, [9 x i8] c"\08\00\00\00\00\00\00\00\01", [7 x i8] undef, ptr @456, [9 x i8] c"\09\00\00\00\00\00\00\00\02", [7 x i8] undef, ptr @457, [9 x i8] c"\07\00\00\00\00\00\00\00\04", [7 x i8] undef, ptr @458, [9 x i8] c"\0D\00\00\00\00\00\00\00\08", [7 x i8] undef }>, align 8
@460 = private unnamed_addr constant [488 x i8] c"=\00^\00_\00~\00\AF\00\C6\02\C7\02\C9\02\CD\02\DC\02\F7\02\02\032\03> \D0 \D1 \D6 \D7 \E1 \90!\92!\94!\98!\99!\9A!\9B!\9C!\9D!\9E!\A0!\A2!\A3!\A4!\A6!\A9!\AA!\AB!\AC!\AD!\AE!\B4!\B9!\BC!\BD!\C0!\C1!\C4!\C6!\C7!\C9!\CB!\CC!\CD!\CE!\CF!\D0!\D2!\D4!\DA!\DB!\DC!\DD!\E0!\E2!\E4!\E5!\E6!\E8!\F0!\F4!\F6!\F7!\F8!\F9!\FA!\FB!\FC!\FD!\FE!\FF!\22###\B4#\B5#\DC#\DD#\DE#\DF#\E0#\E1#\00%\94'\99'\9B'\9C'\9D'\9E'\9F'\A0'\A1'\A5'\A6'\A8'\A9'\AA'\AB'\AC'\AD'\AE'\AF'\B1'\B3'\B5'\B8'\BA'\BB'\BC'\BD'\BE'\F4'\F5'\F6'\F7'\F8'\F9'\FA'\FB'\FC'\FD'\FE'\FF'\00)\01)\02)\03)\04)\05)\06)\07)\0C)\0D)\0E)\0F)\10)\11)\14)\15)\16)\17)\18)\19)\1A)\1B)\1C)\1D)\1E)\1F) )B)C)D)E)F)G)H)J)K)N)P)R)S)V)W)Z)[)^)_)b)d)f)g)h)i)j)k)l)m)p)q)r)s)t)u)|)})\04+\05+\0C+0+1+2+3+4+5+6+7+8+9+:+;+<+=+>+@+A+B+C+D+E+F+G+H+I+J+K+L+`+b+d+j+l+p+r+z+|+\80+\82+\84+\86+\95+5\FE6\FE7\FE8\FE", align 2
@461 = private unnamed_addr constant [128 x i8] c"(\00\00\00\02\00\00\00[\00\00\00\01\00\00\00]\00\00\00\01\00\00\00{\00\00\00\03\00\00\001\03\00\00\01\00\00\00\16 \00\00\01\00\00\00\18 \00\00\02\00\00\00\1C \00\00\02\00\00\00\08#\00\00\04\00\00\00)#\00\00\02\00\00\00r'\00\00\02\00\00\00\E6'\00\00\0A\00\00\00\80)\00\00\01\00\00\00\83)\00\00\17\00\00\00\D8)\00\00\04\00\00\00\FC)\00\00\02\00\00\00", align 4
@_RNvNtNtCs4wS76oGtFbW_12typst_assets6mathml4data10CATEGORY_A = internal constant <{ [18 x i8], [6 x i8] }> <{ [18 x i8] c"r\1C\C7q\1C\C7\D1?r\1C\C7q\1C\C7\D1?\01\00", [6 x i8] undef }>, align 8
@_RNvNtNtCs4wS76oGtFbW_12typst_assets6mathml4data10CATEGORY_B = internal constant <{ [18 x i8], [6 x i8] }> <{ [18 x i8] c"\1C\C7q\1C\C7q\CC?\1C\C7q\1C\C7q\CC?\00\00", [6 x i8] undef }>, align 8
@_RNvNtNtCs4wS76oGtFbW_12typst_assets6mathml4data10CATEGORY_C = internal constant <{ [18 x i8], [6 x i8] }> <{ [18 x i8] c"UUUUUU\C5?UUUUUU\C5?\00\00", [6 x i8] undef }>, align 8
@_RNvNtNtCs4wS76oGtFbW_12typst_assets6mathml4data10CATEGORY_D = internal constant <{ [18 x i8], [6 x i8] }> <{ [18 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01", [6 x i8] undef }>, align 8
@_RNvNtNtCs4wS76oGtFbW_12typst_assets6mathml4data10CATEGORY_E = internal constant <{ [18 x i8], [6 x i8] }> <{ [18 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02", [6 x i8] undef }>, align 8
@_RNvNtNtCs4wS76oGtFbW_12typst_assets6mathml4data10CATEGORY_F = internal constant <{ [18 x i8], [6 x i8] }> <{ [18 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\03\01", [6 x i8] undef }>, align 8
@_RNvNtNtCs4wS76oGtFbW_12typst_assets6mathml4data10CATEGORY_G = internal constant <{ [18 x i8], [6 x i8] }> <{ [18 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\03\02", [6 x i8] undef }>, align 8
@_RNvNtNtCs4wS76oGtFbW_12typst_assets6mathml4data10CATEGORY_H = internal constant <{ [18 x i8], [6 x i8] }> <{ [18 x i8] c"UUUUUU\C5?UUUUUU\C5?\06\01", [6 x i8] undef }>, align 8
@_RNvNtNtCs4wS76oGtFbW_12typst_assets6mathml4data10CATEGORY_I = internal constant <{ [18 x i8], [6 x i8] }> <{ [18 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\02", [6 x i8] undef }>, align 8
@_RNvNtNtCs4wS76oGtFbW_12typst_assets6mathml4data10CATEGORY_J = internal constant <{ [18 x i8], [6 x i8] }> <{ [18 x i8] c"UUUUUU\C5?UUUUUU\C5?\0E\01", [6 x i8] undef }>, align 8
@_RNvNtNtCs4wS76oGtFbW_12typst_assets6mathml4data10CATEGORY_K = internal constant <{ [18 x i8], [6 x i8] }> <{ [18 x i8] zeroinitializer, [6 x i8] undef }>, align 8
@_RNvNtNtCs4wS76oGtFbW_12typst_assets6mathml4data10CATEGORY_L = internal constant <{ [18 x i8], [6 x i8] }> <{ [18 x i8] c"UUUUUU\C5?\00\00\00\00\00\00\00\00\00\01", [6 x i8] undef }>, align 8
@_RNvNtNtCs4wS76oGtFbW_12typst_assets6mathml4data10CATEGORY_M = internal constant <{ [18 x i8], [6 x i8] }> <{ [18 x i8] c"\00\00\00\00\00\00\00\00UUUUUU\C5?\00\00", [6 x i8] undef }>, align 8
@462 = private unnamed_addr constant [40 x i8] c"internal error: entered unreachable code", align 1
@463 = private unnamed_addr constant [117 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/typst-assets-0.15.1/src/../files/mathml/data.rs\00", align 1
@464 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @463, [16 x i8] c"t\00\00\00\00\00\00\00\95\00\00\00\0E\00\00\00" }>, align 8
@_RNvNtNtCs4wS76oGtFbW_12typst_assets6mathml4data16CATEGORY_DEFAULT = internal constant <{ [18 x i8], [6 x i8] }> <{ [18 x i8] c"r\1C\C7q\1C\C7\D1?r\1C\C7q\1C\C7\D1?\00\FF", [6 x i8] undef }>, align 8
@_RNvNtNtCs4wS76oGtFbW_12typst_assets6mathml4data21CATEGORY_FORCEDEFAULT = internal constant <{ [18 x i8], [6 x i8] }> <{ [18 x i8] c"r\1C\C7q\1C\C7\D1?r\1C\C7q\1C\C7\D1?\00\FF", [6 x i8] undef }>, align 8
@_RNvNtNtNtCs3oUPovFnLWP_4core7unicode12unicode_data11white_space14WHITESPACE_MAP = external local_unnamed_addr global [256 x i8]
@465 = private unnamed_addr constant [32 x i8] c"DefaultForceDefaultABCDEFGHIJKLM", align 1
@_RNvNvXNtNtCs4wS76oGtFbW_12typst_assets6mathml4dataNtB4_8CategoryNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt7___NAMES = local_unnamed_addr constant <{ ptr, [8 x i8] }> <{ ptr @465, [8 x i8] c" \00\00\00\00\00\00\00" }>, align 8
@_RNvNvXNtNtCs4wS76oGtFbW_12typst_assets6mathml4dataNtB4_8CategoryNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt8___OFFSET = local_unnamed_addr constant [128 x i8] c"\00\00\00\00\00\00\00\00\07\00\00\00\00\00\00\00\13\00\00\00\00\00\00\00\14\00\00\00\00\00\00\00\15\00\00\00\00\00\00\00\16\00\00\00\00\00\00\00\17\00\00\00\00\00\00\00\18\00\00\00\00\00\00\00\19\00\00\00\00\00\00\00\1A\00\00\00\00\00\00\00\1B\00\00\00\00\00\00\00\1C\00\00\00\00\00\00\00\1D\00\00\00\00\00\00\00\1E\00\00\00\00\00\00\00\1F\00\00\00\00\00\00\00 \00\00\00\00\00\00\00", align 8
@466 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@467 = private unnamed_addr constant [6 x i8] c"\C1 \00\80`\00", align 1
@468 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtNtB8_4char7convert13CharErrorKindNtB6_5Debug3fmtCs4wS76oGtFbW_12typst_assets }>, align 8
@469 = private unnamed_addr constant [14 x i8] c"ParseCharError", align 1
@470 = private unnamed_addr constant [11 x i8] c"EmptyString", align 1
@471 = private unnamed_addr constant [12 x i8] c"TooManyChars", align 1
@switch.table._RNvMNtCs4wS76oGtFbW_12typst_assets6mathmlNtB2_12OperatorInfo21get_operator_category = private unnamed_addr constant [14 x i8] [i8 2, i8 5, i8 6, i8 poison, i8 3, i8 7, i8 8, i8 poison, i8 4, i8 9, i8 10, i8 poison, i8 12, i8 11], align 1
@switch.table._RNvMNtCs4wS76oGtFbW_12typst_assets6mathmlNtB2_12OperatorInfo2of = private unnamed_addr constant [15 x ptr] [ptr @_RNvNtNtCs4wS76oGtFbW_12typst_assets6mathml4data16CATEGORY_DEFAULT, ptr @_RNvNtNtCs4wS76oGtFbW_12typst_assets6mathml4data21CATEGORY_FORCEDEFAULT, ptr @_RNvNtNtCs4wS76oGtFbW_12typst_assets6mathml4data10CATEGORY_A, ptr @_RNvNtNtCs4wS76oGtFbW_12typst_assets6mathml4data10CATEGORY_B, ptr @_RNvNtNtCs4wS76oGtFbW_12typst_assets6mathml4data10CATEGORY_C, ptr @_RNvNtNtCs4wS76oGtFbW_12typst_assets6mathml4data10CATEGORY_D, ptr @_RNvNtNtCs4wS76oGtFbW_12typst_assets6mathml4data10CATEGORY_E, ptr @_RNvNtNtCs4wS76oGtFbW_12typst_assets6mathml4data10CATEGORY_F, ptr @_RNvNtNtCs4wS76oGtFbW_12typst_assets6mathml4data10CATEGORY_G, ptr @_RNvNtNtCs4wS76oGtFbW_12typst_assets6mathml4data10CATEGORY_H, ptr @_RNvNtNtCs4wS76oGtFbW_12typst_assets6mathml4data10CATEGORY_I, ptr @_RNvNtNtCs4wS76oGtFbW_12typst_assets6mathml4data10CATEGORY_J, ptr @_RNvNtNtCs4wS76oGtFbW_12typst_assets6mathml4data10CATEGORY_K, ptr @_RNvNtNtCs4wS76oGtFbW_12typst_assets6mathml4data10CATEGORY_L, ptr @_RNvNtNtCs4wS76oGtFbW_12typst_assets6mathml4data10CATEGORY_M], align 8

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: write, target_mem: none) uwtable
define internal fastcc { ptr, i64 } @_RINvMNtCs3oUPovFnLWP_4core3stre12trim_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECs4wS76oGtFbW_12typst_assets(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 6 uses
  %i.b = icmp samesign eq i64 %1, 0
  br i1 %i.b, label %_RNvXso_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs4wS76oGtFbW_12typst_assets.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_RNvXs8_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs4wS76oGtFbW_12typst_assets.exit.i.i
  %i.c = phi i64 [ %i.ar, %_RNvXs8_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs4wS76oGtFbW_12typst_assets.exit.i.i ], [ 0, %bb.a ] ; 4 uses
  %i.d = phi ptr [ %i.an, %_RNvXs8_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs4wS76oGtFbW_12typst_assets.exit.i.i ], [ %0, %bb.a ] ; 6 uses
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 1 ; 3 uses
  %i.g = load i8, ptr %i.d, align 1, !noalias !4, !noundef !18 ; 5 uses
  %i.h = icmp sgt i8 %i.g, -1
  br i1 %i.h, label %bb.b, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit12.i.i.i.i.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit12.i.i.i.i.i: ; preds = %.lr.ph.i.i
  %i.i = and i8 %i.g, 31
  %i.j = zext nneg i8 %i.i to i32                 ; 3 uses
  %i.k = icmp ne ptr %i.f, %i.a
  tail call void @llvm.assume(i1 %i.k)
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 2 ; 3 uses
  %i.m = load i8, ptr %i.f, align 1, !noalias !4, !noundef !18
  %i.n = shl nuw nsw i32 %i.j, 6
  %i.o = and i8 %i.m, 63
  %i.p = zext nneg i8 %i.o to i32                 ; 2 uses
  %i.q = or disjoint i32 %i.n, %i.p
  %i.r = icmp samesign ugt i8 %i.g, -33
  br i1 %i.r, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit14.i.i.i.i.i, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.s = zext nneg i8 %i.g to i32
  br label %bb.c

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit14.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit12.i.i.i.i.i
  %i.t = icmp ne ptr %i.l, %i.a
  tail call void @llvm.assume(i1 %i.t)
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 3 ; 3 uses
  %i.v = load i8, ptr %i.l, align 1, !noalias !4, !noundef !18
  %i.w = shl nuw nsw i32 %i.p, 6
  %i.x = and i8 %i.v, 63
  %i.y = zext nneg i8 %i.x to i32
  %i.z = or disjoint i32 %i.w, %i.y               ; 2 uses
  %i.aa = shl nuw nsw i32 %i.j, 12
  %i.ab = or disjoint i32 %i.z, %i.aa
  %i.ac = icmp samesign ugt i8 %i.g, -17
  br i1 %i.ac, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit16.i.i.i.i.i, label %bb.c

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit16.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit14.i.i.i.i.i
  %i.ad = icmp ne ptr %i.u, %i.a
  tail call void @llvm.assume(i1 %i.ad)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.af = load i8, ptr %i.u, align 1, !noalias !4, !noundef !18
  %i.ag = shl nuw nsw i32 %i.j, 18
  %i.ah = and i32 %i.ag, 1835008
  %i.ai = shl nuw nsw i32 %i.z, 6
  %i.aj = and i8 %i.af, 63
  %i.ak = zext nneg i8 %i.aj to i32
  %i.al = or disjoint i32 %i.ai, %i.ak
  %i.am = or disjoint i32 %i.al, %i.ah
  br label %bb.c

bb.c:                                             ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit16.i.i.i.i.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit14.i.i.i.i.i, %bb.b, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit12.i.i.i.i.i
  %i.an = phi ptr [ %i.f, %bb.b ], [ %i.ae, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit16.i.i.i.i.i ], [ %i.u, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit14.i.i.i.i.i ], [ %i.l, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit12.i.i.i.i.i ] ; 6 uses
  %.sroa.4.0.i.ph.i.i.i.i = phi i32 [ %i.s, %bb.b ], [ %i.am, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit16.i.i.i.i.i ], [ %i.ab, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit14.i.i.i.i.i ], [ %i.q, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit12.i.i.i.i.i ] ; 8 uses
  %i.ao = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i, 1114112
  tail call void @llvm.assume(i1 %i.ao)
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = sub i64 %i.ap, %i.e
  %i.ar = add i64 %i.aq, %i.c                     ; 4 uses
  switch i32 %.sroa.4.0.i.ph.i.i.i.i, label %bb.d [
    i32 32, label %_RNvXs8_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs4wS76oGtFbW_12typst_assets.exit.i.i
    i32 13, label %_RNvXs8_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs4wS76oGtFbW_12typst_assets.exit.i.i
    i32 12, label %_RNvXs8_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs4wS76oGtFbW_12typst_assets.exit.i.i
    i32 11, label %_RNvXs8_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs4wS76oGtFbW_12typst_assets.exit.i.i
    i32 10, label %_RNvXs8_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs4wS76oGtFbW_12typst_assets.exit.i.i
    i32 9, label %_RNvXs8_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs4wS76oGtFbW_12typst_assets.exit.i.i
  ]

bb.d:                                             ; preds = %bb.c
  %i.as = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i, 133
  br i1 %i.as, label %_RNvXso_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs4wS76oGtFbW_12typst_assets.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.at = lshr i32 %.sroa.4.0.i.ph.i.i.i.i, 8
  switch i32 %i.at, label %_RNvXso_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs4wS76oGtFbW_12typst_assets.exit [
    i32 0, label %bb.h
    i32 22, label %bb.f
    i32 32, label %bb.i
    i32 48, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  %i.au = icmp eq i32 %.sroa.4.0.i.ph.i.i.i.i, 5760
  %i.av = zext i1 %i.au to i8
  br label %_RNvXs3_NtNtCs3oUPovFnLWP_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs4wS76oGtFbW_12typst_assets.exit.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.aw = icmp eq i32 %.sroa.4.0.i.ph.i.i.i.i, 12288
  %i.ax = zext i1 %i.aw to i8
  br label %_RNvXs3_NtNtCs3oUPovFnLWP_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs4wS76oGtFbW_12typst_assets.exit.i.i.i

bb.h:                                             ; preds = %bb.e
  %i.ay = and i32 %.sroa.4.0.i.ph.i.i.i.i, 255
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCs3oUPovFnLWP_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.az
  %i.bb = load i8, ptr %i.ba, align 1, !noalias !19, !noundef !18
  br label %_RNvXs3_NtNtCs3oUPovFnLWP_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs4wS76oGtFbW_12typst_assets.exit.i.i.i

bb.i:                                             ; preds = %bb.e
  %i.bc = and i32 %.sroa.4.0.i.ph.i.i.i.i, 255
  %i.bd = zext nneg i32 %i.bc to i64
  %i.be = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCs3oUPovFnLWP_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !noalias !19, !noundef !18
  %i.bg = lshr i8 %i.bf, 1
  br label %_RNvXs3_NtNtCs3oUPovFnLWP_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs4wS76oGtFbW_12typst_assets.exit.i.i.i

_RNvXs3_NtNtCs3oUPovFnLWP_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs4wS76oGtFbW_12typst_assets.exit.i.i.i: ; preds = %bb.i, %bb.h, %bb.g, %bb.f
  %.sroa.0.0.i.i.i.i.i.i.i = phi i8 [ %i.ax, %bb.g ], [ %i.bb, %bb.h ], [ %i.av, %bb.f ], [ %i.bg, %bb.i ]
  %i.bh = trunc i8 %.sroa.0.0.i.i.i.i.i.i.i to i1
  br i1 %i.bh, label %_RNvXs8_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs4wS76oGtFbW_12typst_assets.exit.i.i, label %_RNvXso_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs4wS76oGtFbW_12typst_assets.exit

_RNvXs8_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs4wS76oGtFbW_12typst_assets.exit.i.i: ; preds = %_RNvXs3_NtNtCs3oUPovFnLWP_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs4wS76oGtFbW_12typst_assets.exit.i.i.i, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c
  %i.bi = icmp eq ptr %i.an, %i.a
  br i1 %i.bi, label %.loopexit, label %.lr.ph.i.i

_RNvXso_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs4wS76oGtFbW_12typst_assets.exit: ; preds = %bb.e, %_RNvXs3_NtNtCs3oUPovFnLWP_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs4wS76oGtFbW_12typst_assets.exit.i.i.i, %bb.d, %bb.a
  %.sroa.4.020 = phi ptr [ %0, %bb.a ], [ %i.an, %bb.d ], [ %i.an, %_RNvXs3_NtNtCs3oUPovFnLWP_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs4wS76oGtFbW_12typst_assets.exit.i.i.i ], [ %i.an, %bb.e ] ; 6 uses
  %.sroa.14.018 = phi i64 [ 0, %bb.a ], [ %i.ar, %bb.d ], [ %i.ar, %_RNvXs3_NtNtCs3oUPovFnLWP_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs4wS76oGtFbW_12typst_assets.exit.i.i.i ], [ %i.ar, %bb.e ] ; 3 uses
  %.sroa.0.0 = phi i64 [ 0, %bb.a ], [ %i.c, %bb.d ], [ %i.c, %_RNvXs3_NtNtCs3oUPovFnLWP_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs4wS76oGtFbW_12typst_assets.exit.i.i.i ], [ %i.c, %bb.e ] ; 3 uses
  %i.bj = icmp eq ptr %.sroa.4.020, %i.a
  br i1 %i.bj, label %.loopexit, label %.lr.ph.i.i4

.lr.ph.i.i4:                                      ; preds = %_RNvXso_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs4wS76oGtFbW_12typst_assets.exit, %bb.t
  %i.bk = phi ptr [ %i.cu, %bb.t ], [ %i.a, %_RNvXso_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs4wS76oGtFbW_12typst_assets.exit ] ; 5 uses
  %i.bl = getelementptr inbounds i8, ptr %i.bk, i64 -1 ; 3 uses
  %i.bm = load i8, ptr %i.bl, align 1, !noalias !20, !noundef !18 ; 3 uses
  %i.bn = icmp sgt i8 %i.bm, -1
  br i1 %i.bn, label %bb.j, label %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs4wS76oGtFbW_12typst_assets.exit17.i.i.i.i.i

_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs4wS76oGtFbW_12typst_assets.exit17.i.i.i.i.i: ; preds = %.lr.ph.i.i4
  %i.bo = icmp ne ptr %.sroa.4.020, %i.bl
  tail call void @llvm.assume(i1 %i.bo)
  %i.bp = getelementptr inbounds i8, ptr %i.bk, i64 -2 ; 3 uses
  %i.bq = load i8, ptr %i.bp, align 1, !noalias !20, !noundef !18 ; 3 uses
  %i.br = and i8 %i.bq, 31
  %i.bs = zext nneg i8 %i.br to i32
  %i.bt = icmp slt i8 %i.bq, -64
  br i1 %i.bt, label %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs4wS76oGtFbW_12typst_assets.exit19.i.i.i.i.i, label %bb.k

bb.j:                                             ; preds = %.lr.ph.i.i4
  %i.bu = zext nneg i8 %i.bm to i32
  br label %bb.m

_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs4wS76oGtFbW_12typst_assets.exit19.i.i.i.i.i: ; preds = %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs4wS76oGtFbW_12typst_assets.exit17.i.i.i.i.i
  %i.bv = icmp ne ptr %.sroa.4.020, %i.bp
  tail call void @llvm.assume(i1 %i.bv)
  %i.bw = getelementptr inbounds i8, ptr %i.bk, i64 -3 ; 3 uses
  %i.bx = load i8, ptr %i.bw, align 1, !noalias !20, !noundef !18 ; 3 uses
  %i.by = and i8 %i.bx, 15
  %i.bz = zext nneg i8 %i.by to i32
  %i.ca = icmp slt i8 %i.bx, -64
  br i1 %i.ca, label %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs4wS76oGtFbW_12typst_assets.exit21.i.i.i.i.i, label %bb.l

bb.k:                                             ; preds = %bb.l, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs4wS76oGtFbW_12typst_assets.exit17.i.i.i.i.i
  %i.cb = phi ptr [ %i.cp, %bb.l ], [ %i.bp, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs4wS76oGtFbW_12typst_assets.exit17.i.i.i.i.i ]
  %.sroa.010.0.i.i.i.i.i = phi i32 [ %i.ct, %bb.l ], [ %i.bs, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs4wS76oGtFbW_12typst_assets.exit17.i.i.i.i.i ]
  %i.cc = shl nuw nsw i32 %.sroa.010.0.i.i.i.i.i, 6
  %i.cd = and i8 %i.bm, 63
  %i.ce = zext nneg i8 %i.cd to i32
  %i.cf = or disjoint i32 %i.cc, %i.ce
  br label %bb.m

_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs4wS76oGtFbW_12typst_assets.exit21.i.i.i.i.i: ; preds = %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs4wS76oGtFbW_12typst_assets.exit19.i.i.i.i.i
  %i.cg = icmp ne ptr %.sroa.4.020, %i.bw
  tail call void @llvm.assume(i1 %i.cg)
  %i.ch = getelementptr inbounds i8, ptr %i.bk, i64 -4 ; 2 uses
  %i.ci = load i8, ptr %i.ch, align 1, !noalias !20, !noundef !18
  %i.cj = and i8 %i.ci, 7
  %i.ck = zext nneg i8 %i.cj to i32
  %i.cl = shl nuw nsw i32 %i.ck, 6
  %i.cm = and i8 %i.bx, 63
  %i.cn = zext nneg i8 %i.cm to i32
  %i.co = or disjoint i32 %i.cl, %i.cn
  br label %bb.l

bb.l:                                             ; preds = %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs4wS76oGtFbW_12typst_assets.exit21.i.i.i.i.i, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs4wS76oGtFbW_12typst_assets.exit19.i.i.i.i.i
  %i.cp = phi ptr [ %i.ch, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs4wS76oGtFbW_12typst_assets.exit21.i.i.i.i.i ], [ %i.bw, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs4wS76oGtFbW_12typst_assets.exit19.i.i.i.i.i ]
  %.sroa.010.1.i.i.i.i.i = phi i32 [ %i.co, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs4wS76oGtFbW_12typst_assets.exit21.i.i.i.i.i ], [ %i.bz, %_RNvXs2K_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9next_backCs4wS76oGtFbW_12typst_assets.exit19.i.i.i.i.i ]
  %i.cq = shl nuw nsw i32 %.sroa.010.1.i.i.i.i.i, 6
  %i.cr = and i8 %i.bq, 63
  %i.cs = zext nneg i8 %i.cr to i32
  %i.ct = or disjoint i32 %i.cq, %i.cs
  br label %bb.k

bb.m:                                             ; preds = %bb.k, %bb.j
  %i.cu = phi ptr [ %i.bl, %bb.j ], [ %i.cb, %bb.k ] ; 2 uses
  %.sroa.4.1.i.ph.i.i.i.i = phi i32 [ %i.bu, %bb.j ], [ %i.cf, %bb.k ] ; 8 uses
  %i.cv = icmp samesign ult i32 %.sroa.4.1.i.ph.i.i.i.i, 1114112
  tail call void @llvm.assume(i1 %i.cv)
  switch i32 %.sroa.4.1.i.ph.i.i.i.i, label %bb.n [
    i32 32, label %bb.t
    i32 13, label %bb.t
    i32 12, label %bb.t
    i32 11, label %bb.t
    i32 10, label %bb.t
    i32 9, label %bb.t
  ]

bb.n:                                             ; preds = %bb.m
  %i.cw = icmp samesign ult i32 %.sroa.4.1.i.ph.i.i.i.i, 133
  br i1 %i.cw, label %bb.u, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cx = lshr i32 %.sroa.4.1.i.ph.i.i.i.i, 8
  switch i32 %i.cx, label %bb.u [
    i32 0, label %bb.r
    i32 22, label %bb.p
    i32 32, label %bb.s
    i32 48, label %bb.q
  ]

bb.p:                                             ; preds = %bb.o
  %i.cy = icmp eq i32 %.sroa.4.1.i.ph.i.i.i.i, 5760
  %i.cz = zext i1 %i.cy to i8
  br label %_RNvXs3_NtNtCs3oUPovFnLWP_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs4wS76oGtFbW_12typst_assets.exit.i.i.i6

bb.q:                                             ; preds = %bb.o
  %i.da = icmp eq i32 %.sroa.4.1.i.ph.i.i.i.i, 12288
  %i.db = zext i1 %i.da to i8
  br label %_RNvXs3_NtNtCs3oUPovFnLWP_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs4wS76oGtFbW_12typst_assets.exit.i.i.i6

bb.r:                                             ; preds = %bb.o
  %i.dc = and i32 %.sroa.4.1.i.ph.i.i.i.i, 255
  %i.dd = zext nneg i32 %i.dc to i64
  %i.de = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCs3oUPovFnLWP_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.dd
  %i.df = load i8, ptr %i.de, align 1, !noalias !34, !noundef !18
  br label %_RNvXs3_NtNtCs3oUPovFnLWP_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs4wS76oGtFbW_12typst_assets.exit.i.i.i6

bb.s:                                             ; preds = %bb.o
  %i.dg = and i32 %.sroa.4.1.i.ph.i.i.i.i, 255
  %i.dh = zext nneg i32 %i.dg to i64
  %i.di = getelementptr inbounds nuw i8, ptr @_RNvNtNtNtCs3oUPovFnLWP_4core7unicode12unicode_data11white_space14WHITESPACE_MAP, i64 %i.dh
  %i.dj = load i8, ptr %i.di, align 1, !noalias !34, !noundef !18
  %i.dk = lshr i8 %i.dj, 1
  br label %_RNvXs3_NtNtCs3oUPovFnLWP_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs4wS76oGtFbW_12typst_assets.exit.i.i.i6

_RNvXs3_NtNtCs3oUPovFnLWP_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs4wS76oGtFbW_12typst_assets.exit.i.i.i6: ; preds = %bb.s, %bb.r, %bb.q, %bb.p
  %.sroa.0.0.i.i.i.i.i.i.i7 = phi i8 [ %i.db, %bb.q ], [ %i.df, %bb.r ], [ %i.cz, %bb.p ], [ %i.dk, %bb.s ]
  %i.dl = trunc i8 %.sroa.0.0.i.i.i.i.i.i.i7 to i1
  br i1 %i.dl, label %bb.t, label %bb.u

bb.t:                                             ; preds = %_RNvXs3_NtNtCs3oUPovFnLWP_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs4wS76oGtFbW_12typst_assets.exit.i.i.i6, %bb.m, %bb.m, %bb.m, %bb.m, %bb.m, %bb.m
  %i.dm = icmp eq ptr %.sroa.4.020, %i.cu
  br i1 %i.dm, label %.loopexit, label %.lr.ph.i.i4

bb.u:                                             ; preds = %_RNvXs3_NtNtCs3oUPovFnLWP_4core3str7patternNvMNtNtB9_4char7methodsc13is_whitespaceNtB5_11MultiCharEq7matchesCs4wS76oGtFbW_12typst_assets.exit.i.i.i6, %bb.o, %bb.n
  %i.dn = ptrtoint ptr %i.bk to i64
  %i.do = ptrtoint ptr %.sroa.4.020 to i64
  %i.dp = sub i64 %.sroa.14.018, %i.do
  %i.dq = add i64 %i.dp, %i.dn
  br label %.loopexit

.loopexit:                                        ; preds = %_RNvXs8_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs4wS76oGtFbW_12typst_assets.exit.i.i, %bb.t, %_RNvXso_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs4wS76oGtFbW_12typst_assets.exit, %bb.u
  %.sroa.0.045 = phi i64 [ %.sroa.0.0, %bb.u ], [ %.sroa.0.0, %_RNvXso_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_21CharPredicateSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher11next_rejectCs4wS76oGtFbW_12typst_assets.exit ], [ %.sroa.0.0, %bb.t ], [ 0, %_RNvXs8_NtNtCs3oUPovFnLWP_4core3str7patternINtB5_19MultiCharEqSearcherNvMNtNtB9_4char7methodsc13is_whitespaceENtB5_8Searcher4nextCs4wS76oGtFbW_12typst_assets.exit.i.i ] ; 2 uses
end_hunk_0
begin_hunk_1_@_RNvNtCs4wS76oGtFbW_12typst_assets6mathml8is_fence:bb.a
bb.e:                                             ; preds = %_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs4wS76oGtFbW_12typst_assets.exit.i.i.i
  %i.al = load i8, ptr %.sroa.0.021.i.i.i, align 1, !alias.scope !130, !noalias !140, !noundef !18 ; 3 uses
  %i.am = icmp sgt i8 %i.al, -1
  br i1 %i.am, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptioncE7or_elseNCNvNtCs4wS76oGtFbW_12typst_assets6mathml8is_fence0EBY_.exit.thread, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit12.i13.i.i.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit12.i13.i.i.i: ; preds = %bb.e
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.0.021.i.i.i, i64 1
  %i.ao = icmp ne ptr %i.an, %i.b
  tail call void @llvm.assume(i1 %i.ao)
  %i.ap = icmp samesign ugt i8 %i.al, -33
  br i1 %i.ap, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit14.i16.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptioncE7or_elseNCNvNtCs4wS76oGtFbW_12typst_assets6mathml8is_fence0EBY_.exit.thread

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit14.i16.i.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit12.i13.i.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.0.021.i.i.i, i64 2
  %i.ar = icmp ne ptr %i.aq, %i.b
  tail call void @llvm.assume(i1 %i.ar)
  %i.as = icmp samesign ugt i8 %i.al, -17
  br i1 %i.as, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit16.i17.i.i.i, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptioncE7or_elseNCNvNtCs4wS76oGtFbW_12typst_assets6mathml8is_fence0EBY_.exit.thread

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit16.i17.i.i.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit14.i16.i.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.0.021.i.i.i, i64 3
  %i.au = icmp ne ptr %i.at, %i.b
  tail call void @llvm.assume(i1 %i.au)
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptioncE7or_elseNCNvNtCs4wS76oGtFbW_12typst_assets6mathml8is_fence0EBY_.exit.thread

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptioncE7or_elseNCNvNtCs4wS76oGtFbW_12typst_assets6mathml8is_fence0EBY_.exit: ; preds = %_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs4wS76oGtFbW_12typst_assets.exit.i.i.i, %bb.a
  %.sroa.0.0.i = phi i32 [ %i.a, %bb.a ], [ %spec.select.i.i.i, %_RINvNtNtCs3oUPovFnLWP_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs4wS76oGtFbW_12typst_assets.exit.i.i.i ] ; 6 uses
  %i.av = icmp samesign ult i32 %.sroa.0.0.i, 8968
  %i.aw = select i1 %i.av, i64 0, i64 8, !unpredictable !18 ; 2 uses
  %i.ax = or disjoint i64 %i.aw, 4                ; 2 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr @461, i64 %i.ax
  %.val12.1.i = load i32, ptr %i.ay, align 4, !range !143, !noalias !144, !noundef !18
  %i.az = icmp samesign ult i32 %.sroa.0.0.i, %.val12.1.i
  %i.ba = select i1 %i.az, i64 %i.aw, i64 %i.ax, !unpredictable !18 ; 2 uses
  %i.bb = or disjoint i64 %i.ba, 2                ; 2 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr @461, i64 %i.bb
  %.val12.2.i = load i32, ptr %i.bc, align 4, !range !143, !noalias !144, !noundef !18
  %i.bd = icmp samesign ult i32 %.sroa.0.0.i, %.val12.2.i
  %i.be = select i1 %i.bd, i64 %i.ba, i64 %i.bb, !unpredictable !18 ; 2 uses
  %i.bf = or disjoint i64 %i.be, 1                ; 2 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr @461, i64 %i.bf
  %.val12.3.i = load i32, ptr %i.bg, align 4, !range !143, !noalias !144, !noundef !18
  %i.bh = icmp samesign ult i32 %.sroa.0.0.i, %.val12.3.i
  %i.bi = select i1 %i.bh, i64 %i.be, i64 %i.bf, !unpredictable !18
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr @461, i64 %i.bi ; 2 uses
  %.val15.i = load i32, ptr %i.bj, align 4, !range !143, !noalias !144, !noundef !18 ; 2 uses
  %i.bk = getelementptr i8, ptr %i.bj, i64 4
  %.val16.i = load i8, ptr %i.bk, align 4, !noalias !144
  %.not = icmp samesign uge i32 %.sroa.0.0.i, %.val15.i
  %i.bl = zext i8 %.val16.i to i32
  %i.bm = add nuw nsw i32 %.val15.i, %i.bl
  %.not.i.i = icmp samesign ult i32 %.sroa.0.0.i, %i.bm
  %not..i.not = select i1 %.not, i1 %.not.i.i, i1 false
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptioncE7or_elseNCNvNtCs4wS76oGtFbW_12typst_assets6mathml8is_fence0EBY_.exit.thread

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptioncE7or_elseNCNvNtCs4wS76oGtFbW_12typst_assets6mathml8is_fence0EBY_.exit.thread: ; preds = %bb.e, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit12.i13.i.i.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit14.i16.i.i.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit16.i17.i.i.i, %bb.b, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptioncE7or_elseNCNvNtCs4wS76oGtFbW_12typst_assets6mathml8is_fence0EBY_.exit
  %.sroa.0.0 = phi i1 [ %not..i.not, %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptioncE7or_elseNCNvNtCs4wS76oGtFbW_12typst_assets6mathml8is_fence0EBY_.exit ], [ false, %bb.b ], [ false, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit16.i17.i.i.i ], [ false, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit14.i16.i.i.i ], [ false, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs4wS76oGtFbW_12typst_assets.exit12.i13.i.i.i ], [ false, %bb.e ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRNtNtNtB8_4char7convert13CharErrorKindNtB6_5Debug3fmtCs4wS76oGtFbW_12typst_assets(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !18, !noundef !18
  %.val = load i8, ptr %i.a, align 1, !range !147, !noundef !18
  %i.b = trunc nuw i8 %.val to i1                 ; 2 uses
  %..i = select i1 %i.b, i64 12, i64 11
  %.1.i = select i1 %i.b, ptr @471, ptr @470
  %i.c = tail call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.1.i, i64 noundef %..i)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1o_NtCs3oUPovFnLWP_4core3fmtRhNtB6_8LowerHex3fmtCs4wS76oGtFbW_12typst_assets(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !18, !noundef !18
  %i.b = tail call noundef zeroext i1 @_RNvXse_NtNtCs3oUPovFnLWP_4core3fmt3numhNtB7_8LowerHex3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs9_NvNtCs4wS76oGtFbW_12typst_assets6mathml1__NtB5_16InternalBitFlagsNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = load i8, ptr %0, align 1, !noundef !18
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_RNvXsa_NvNtCs4wS76oGtFbW_12typst_assets6mathml1__NtB5_16InternalBitFlagsNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @466, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXse_NtNtCs3oUPovFnLWP_4core3fmt3numhNtB7_8LowerHex3fmt, ptr %.sroa.43.0..sroa_idx, align 8
  %i.e = load ptr, ptr %1, align 8, !nonnull !18, !noundef !18
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !18, !align !148, !noundef !18
  %i.h = call noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.g, ptr noundef nonnull @467, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.h, %bb.c ], [ %i.d, %bb.b ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXsA_NvNtCs4wS76oGtFbW_12typst_assets6mathml1__NtB7_10PropertiesNtNtCs3oUPovFnLWP_4core3fmt6Binary3fmt(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %i.b = load i8, ptr %0, align 1, !noundef !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !149
  store i8 %i.b, ptr %i.a, align 1, !noalias !149
  %i.c = call noundef zeroext i1 @_RNvXsa_NtNtCs3oUPovFnLWP_4core3fmt3numhNtB7_6Binary3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !noalias !153
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !149
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXsB_NvNtCs4wS76oGtFbW_12typst_assets6mathml1__NtB7_10PropertiesNtNtCs3oUPovFnLWP_4core3fmt5Octal3fmt(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %i.b = load i8, ptr %0, align 1, !noundef !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !154
  store i8 %i.b, ptr %i.a, align 1, !noalias !154
  %i.c = call noundef zeroext i1 @_RNvXsc_NtNtCs3oUPovFnLWP_4core3fmt3numhNtB7_5Octal3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !noalias !158
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !154
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXsC_NvNtCs4wS76oGtFbW_12typst_assets6mathml1__NtB7_10PropertiesNtNtCs3oUPovFnLWP_4core3fmt8LowerHex3fmt(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %i.b = load i8, ptr %0, align 1, !noundef !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !159
  store i8 %i.b, ptr %i.a, align 1, !noalias !159
  %i.c = call noundef zeroext i1 @_RNvXse_NtNtCs3oUPovFnLWP_4core3fmt3numhNtB7_8LowerHex3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !noalias !163
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !159
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXsD_NvNtCs4wS76oGtFbW_12typst_assets6mathml1__NtB7_10PropertiesNtNtCs3oUPovFnLWP_4core3fmt8UpperHex3fmt(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 4 uses
  %i.b = load i8, ptr %0, align 1, !noundef !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !164
  store i8 %i.b, ptr %i.a, align 1, !noalias !164
  %i.c = call noundef zeroext i1 @_RNvXsg_NtNtCs3oUPovFnLWP_4core3fmt3numhNtB7_8UpperHex3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !noalias !168
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !164
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXsa_NvNtCs4wS76oGtFbW_12typst_assets6mathml1__NtB5_16InternalBitFlagsNtNtCs3oUPovFnLWP_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
.peel.begin:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [1 x i8], align 1                 ; 5 uses
  %i.d = load i8, ptr %0, align 1, !noundef !18   ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !169)
  %i.e = icmp eq i8 %i.d, 0
  br i1 %i.e, label %.thread.i, label %.lr.ph.split.i.i.peel

.lr.ph.split.i.i.peel:                            ; preds = %.peel.begin
  %i.f = and i8 %i.d, 1
  %or.cond.i.i.peel.not = icmp eq i8 %i.f, 0
  br i1 %or.cond.i.i.peel.not, label %.lr.ph.split.i.i.1.peel, label %bb.a

.lr.ph.split.i.i.1.peel:                          ; preds = %.lr.ph.split.i.i.peel
  %i.g = and i8 %i.d, 2
  %or.cond.i.i.1.peel.not = icmp eq i8 %i.g, 0
  br i1 %or.cond.i.i.1.peel.not, label %.lr.ph.split.i.i.2.peel, label %bb.a

.lr.ph.split.i.i.2.peel:                          ; preds = %.lr.ph.split.i.i.1.peel
  %i.h = and i8 %i.d, 4
  %or.cond.i.i.2.peel.not = icmp eq i8 %i.h, 0
  br i1 %or.cond.i.i.2.peel.not, label %.lr.ph.split.i.i.3.peel, label %bb.a

.lr.ph.split.i.i.3.peel:                          ; preds = %.lr.ph.split.i.i.2.peel
  %i.i = and i8 %i.d, 8
  %or.cond.i.i.3.peel.not = icmp eq i8 %i.i, 0
  br i1 %or.cond.i.i.3.peel.not, label %.loopexit.i, label %bb.a

bb.a:                                             ; preds = %.lr.ph.split.i.i.3.peel, %.lr.ph.split.i.i.2.peel, %.lr.ph.split.i.i.1.peel, %.lr.ph.split.i.i.peel
  %.lcssa56.peel = phi ptr [ @459, %.lr.ph.split.i.i.peel ], [ getelementptr inbounds nuw (i8, ptr @459, i64 24), %.lr.ph.split.i.i.1.peel ], [ getelementptr inbounds nuw (i8, ptr @459, i64 48), %.lr.ph.split.i.i.2.peel ], [ getelementptr inbounds nuw (i8, ptr @459, i64 72), %.lr.ph.split.i.i.3.peel ] ; 2 uses
  %.lcssa.peel = phi i64 [ 1, %.lr.ph.split.i.i.peel ], [ 2, %.lr.ph.split.i.i.1.peel ], [ 3, %.lr.ph.split.i.i.2.peel ], [ 4, %.lr.ph.split.i.i.3.peel ]
  %i.j = phi i8 [ -2, %.lr.ph.split.i.i.peel ], [ -3, %.lr.ph.split.i.i.1.peel ], [ -5, %.lr.ph.split.i.i.2.peel ], [ -9, %.lr.ph.split.i.i.3.peel ]
  %i.k = getelementptr inbounds nuw i8, ptr %.lcssa56.peel, i64 8
  %i.l = load i64, ptr %i.k, align 8, !noalias !172, !noundef !18
  %i.m = and i8 %i.d, %i.j
  %i.n = load ptr, ptr %.lcssa56.peel, align 8, !noalias !172, !nonnull !18, !noundef !18
  %i.o = tail call noundef zeroext i1 @_RNvXsb_NtCs3oUPovFnLWP_4core3fmtNtB5_9FormatterNtB5_5Write9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.n, i64 noundef %i.l)
  br i1 %i.o, label %_RINvNtCs6fhnmY1I3Kb_8bitflags6parser9to_writerNtNtCs4wS76oGtFbW_12typst_assets6mathml10PropertiesQNtNtCs3oUPovFnLWP_4core3fmt9FormatterEBM_.exit, label %.peel.newph

.peel.newph:                                      ; preds = %bb.a, %bb.g
  %.sroa.14.0.i = phi i8 [ %i.aw, %bb.g ], [ %i.m, %bb.a ] ; 11 uses
  %.sroa.8.0.i = phi i64 [ %.lcssa, %bb.g ], [ %.lcssa.peel, %bb.a ] ; 6 uses
  %i.p = icmp ult i64 %.sroa.8.0.i, 4
  br i1 %i.p, label %.lr.ph.i.i, label %.loopexit.i

.lr.ph.i.i:                                       ; preds = %.peel.newph
  %i.q = icmp eq i8 %.sroa.14.0.i, 0
  br i1 %i.q, label %.thread.i, label %.lr.ph.split.i.i

.thread.i:                                        ; preds = %.lr.ph.i.i, %.peel.begin
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !169
  br label %.loopexit13.sink.split.i

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i
  %i.r = getelementptr inbounds nuw [24 x i8], ptr @459, i64 %.sroa.8.0.i ; 2 uses
  %i.s = add nuw nsw i64 %.sroa.8.0.i, 1          ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %.val.i.i = load i8, ptr %i.t, align 8, !noalias !172, !noundef !18 ; 4 uses
  %i.u = and i8 %.val.i.i, %i.d
  %i.v = icmp eq i8 %i.u, %.val.i.i
  %i.w = and i8 %.val.i.i, %.sroa.14.0.i
  %i.x = icmp ne i8 %i.w, 0
  %or.cond.i.i = and i1 %i.x, %i.v
  br i1 %or.cond.i.i, label %bb.b, label %.backedge.i.i

.backedge.i.i:                                    ; preds = %.lr.ph.split.i.i
  %exitcond.not.i.i = icmp eq i64 %i.s, 4
  br i1 %exitcond.not.i.i, label %.loopexit.i, label %.lr.ph.split.i.i.1

.lr.ph.split.i.i.1:                               ; preds = %.backedge.i.i
  %i.y = getelementptr inbounds nuw [24 x i8], ptr @459, i64 %i.s ; 2 uses
  %i.z = add nuw nsw i64 %.sroa.8.0.i, 2          ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %.val.i.i.1 = load i8, ptr %i.aa, align 8, !noalias !172, !noundef !18 ; 4 uses
  %i.ab = and i8 %.val.i.i.1, %i.d
  %i.ac = icmp eq i8 %i.ab, %.val.i.i.1
  %i.ad = and i8 %.val.i.i.1, %.sroa.14.0.i
  %i.ae = icmp ne i8 %i.ad, 0
  %or.cond.i.i.1 = and i1 %i.ae, %i.ac
  br i1 %or.cond.i.i.1, label %bb.b, label %.backedge.i.i.1

.backedge.i.i.1:                                  ; preds = %.lr.ph.split.i.i.1
  %exitcond.not.i.i.1 = icmp eq i64 %i.z, 4
  br i1 %exitcond.not.i.i.1, label %.loopexit.i, label %.lr.ph.split.i.i.2

.lr.ph.split.i.i.2:                               ; preds = %.backedge.i.i.1
  %i.af = getelementptr inbounds nuw [24 x i8], ptr @459, i64 %i.z ; 2 uses
  %i.ag = add nuw nsw i64 %.sroa.8.0.i, 3         ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %.val.i.i.2 = load i8, ptr %i.ah, align 8, !noalias !172, !noundef !18 ; 4 uses
  %i.ai = and i8 %.val.i.i.2, %i.d
  %i.aj = icmp eq i8 %i.ai, %.val.i.i.2
  %i.ak = and i8 %.val.i.i.2, %.sroa.14.0.i
  %i.al = icmp ne i8 %i.ak, 0
  %or.cond.i.i.2 = and i1 %i.al, %i.aj
  br i1 %or.cond.i.i.2, label %bb.b, label %.backedge.i.i.2

.backedge.i.i.2:                                  ; preds = %.lr.ph.split.i.i.2
  %exitcond.not.i.i.2 = icmp eq i64 %i.ag, 4
  br i1 %exitcond.not.i.i.2, label %.loopexit.i, label %.lr.ph.split.i.i.3

.lr.ph.split.i.i.3:                               ; preds = %.backedge.i.i.2
  %i.am = getelementptr inbounds nuw [24 x i8], ptr @459, i64 %i.ag ; 2 uses
  %i.an = or disjoint i64 %.sroa.8.0.i, 4
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %.val.i.i.3 = load i8, ptr %i.ao, align 8, !noalias !172, !noundef !18 ; 4 uses
  %i.ap = and i8 %.val.i.i.3, %i.d
  %i.aq = icmp eq i8 %i.ap, %.val.i.i.3
  %i.ar = and i8 %.val.i.i.3, %.sroa.14.0.i
  %i.as = icmp ne i8 %i.ar, 0
  %or.cond.i.i.3 = and i1 %i.as, %i.aq
  br i1 %or.cond.i.i.3, label %bb.b, label %.loopexit.i

bb.b:                                             ; preds = %.lr.ph.split.i.i.3, %.lr.ph.split.i.i.2, %.lr.ph.split.i.i.1, %.lr.ph.split.i.i
  %.lcssa56 = phi ptr [ %i.r, %.lr.ph.split.i.i ], [ %i.y, %.lr.ph.split.i.i.1 ], [ %i.af, %.lr.ph.split.i.i.2 ], [ %i.am, %.lr.ph.split.i.i.3 ] ; 2 uses
  %.lcssa = phi i64 [ %i.s, %.lr.ph.split.i.i ], [ %i.z, %.lr.ph.split.i.i.1 ], [ %i.ag, %.lr.ph.split.i.i.2 ], [ %i.an, %.lr.ph.split.i.i.3 ]
  %.val.i.i.lcssa = phi i8 [ %.val.i.i, %.lr.ph.split.i.i ], [ %.val.i.i.1, %.lr.ph.split.i.i.1 ], [ %.val.i.i.2, %.lr.ph.split.i.i.2 ], [ %.val.i.i.3, %.lr.ph.split.i.i.3 ]
  %i.at = getelementptr inbounds nuw i8, ptr %.lcssa56, i64 8
  %i.au = load i64, ptr %i.at, align 8, !noalias !172, !noundef !18
  %i.av = xor i8 %.val.i.i.lcssa, -1
  %i.aw = and i8 %.sroa.14.0.i, %i.av
  %i.ax = load ptr, ptr %.lcssa56, align 8, !noalias !172, !nonnull !18, !noundef !18
  %i.ay = tail call noundef zeroext i1 @_RNvXsb_NtCs3oUPovFnLWP_4core3fmtNtB5_9FormatterNtB5_5Write9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1, i64 noundef 3)
  br i1 %i.ay, label %_RINvNtCs6fhnmY1I3Kb_8bitflags6parser9to_writerNtNtCs4wS76oGtFbW_12typst_assets6mathml10PropertiesQNtNtCs3oUPovFnLWP_4core3fmt9FormatterEBM_.exit, label %bb.g

.loopexit.i:                                      ; preds = %.peel.newph, %.lr.ph.split.i.i.3, %.lr.ph.split.i.i.3.peel, %.backedge.i.i, %.backedge.i.i.1, %.backedge.i.i.2
  %.sroa.14.0.i65 = phi i8 [ %.sroa.14.0.i, %.backedge.i.i.2 ], [ %.sroa.14.0.i, %.lr.ph.split.i.i.3 ], [ %i.d, %.lr.ph.split.i.i.3.peel ], [ %.sroa.14.0.i, %.backedge.i.i ], [ %.sroa.14.0.i, %.backedge.i.i.1 ], [ %.sroa.14.0.i, %.peel.newph ] ; 2 uses
  %.sroa.01.0.i61 = phi i1 [ false, %.backedge.i.i.2 ], [ false, %.lr.ph.split.i.i.3 ], [ true, %.lr.ph.split.i.i.3.peel ], [ false, %.backedge.i.i ], [ false, %.backedge.i.i.1 ], [ false, %.peel.newph ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !169
  store i8 %.sroa.14.0.i65, ptr %i.c, align 1, !noalias !169
  %.not.i = icmp eq i8 %.sroa.14.0.i65, 0
  br i1 %.not.i, label %.loopexit13.sink.split.i, label %bb.c

bb.c:                                             ; preds = %.loopexit.i
  br i1 %.sroa.01.0.i61, label %bb.e, label %bb.d

.loopexit13.sink.split.i:                         ; preds = %bb.f, %bb.e, %bb.d, %.loopexit.i, %.thread.i
  %.sroa.0.0.ph.i = phi i1 [ true, %bb.d ], [ %i.bc, %bb.f ], [ true, %bb.e ], [ false, %.thread.i ], [ false, %.loopexit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !169
  br label %_RINvNtCs6fhnmY1I3Kb_8bitflags6parser9to_writerNtNtCs4wS76oGtFbW_12typst_assets6mathml10PropertiesQNtNtCs3oUPovFnLWP_4core3fmt9FormatterEBM_.exit

bb.d:                                             ; preds = %bb.c
  %i.az = tail call noundef zeroext i1 @_RNvXsb_NtCs3oUPovFnLWP_4core3fmtNtB5_9FormatterNtB5_5Write9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1, i64 noundef 3)
  br i1 %i.az, label %.loopexit13.sink.split.i, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ba = tail call noundef zeroext i1 @_RNvXsb_NtCs3oUPovFnLWP_4core3fmtNtB5_9FormatterNtB5_5Write9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 2)
  br i1 %i.ba, label %.loopexit13.sink.split.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !176)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !169
  store ptr %i.c, ptr %i.b, align 8, !noalias !179
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !179
  store ptr %i.b, ptr %i.a, align 8, !noalias !179
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1o_NtCs3oUPovFnLWP_4core3fmtRhNtB6_8LowerHex3fmtCs4wS76oGtFbW_12typst_assets, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !179
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1.i.i.i = load ptr, ptr %i.bb, align 8, !alias.scope !181, !noalias !182, !nonnull !18, !noundef !18
  %.val.i.i.i = load ptr, ptr %1, align 8, !alias.scope !181, !noalias !182, !nonnull !18, !noundef !18
  %i.bc = call noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull %.val.i.i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val1.i.i.i, ptr noundef nonnull @2, ptr noundef nonnull %i.a), !noalias !176
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !179
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !169
  br label %.loopexit13.sink.split.i

bb.g:                                             ; preds = %bb.b
  %i.bd = tail call noundef zeroext i1 @_RNvXsb_NtCs3oUPovFnLWP_4core3fmtNtB5_9FormatterNtB5_5Write9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ax, i64 noundef %i.au)
  br i1 %i.bd, label %_RINvNtCs6fhnmY1I3Kb_8bitflags6parser9to_writerNtNtCs4wS76oGtFbW_12typst_assets6mathml10PropertiesQNtNtCs3oUPovFnLWP_4core3fmt9FormatterEBM_.exit, label %.peel.newph, !llvm.loop !183

_RINvNtCs6fhnmY1I3Kb_8bitflags6parser9to_writerNtNtCs4wS76oGtFbW_12typst_assets6mathml10PropertiesQNtNtCs3oUPovFnLWP_4core3fmt9FormatterEBM_.exit: ; preds = %bb.a, %bb.b, %bb.g, %.loopexit13.sink.split.i
  %.sroa.0.0.i = phi i1 [ %.sroa.0.0.ph.i, %.loopexit13.sink.split.i ], [ true, %bb.g ], [ true, %bb.b ], [ true, %bb.a ]
  ret i1 %.sroa.0.0.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsb_NtNtCs3oUPovFnLWP_4core4char7convertNtB5_14ParseCharErrorNtNtB9_3fmt5Debug3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #7 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @469, i64 noundef 14, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @296, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @468)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsb_NvNtCs4wS76oGtFbW_12typst_assets6mathml1__NtB5_16InternalBitFlagsNtNtNtCs3oUPovFnLWP_4core3str6traits7FromStr8from_str(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !185)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = tail call fastcc { ptr, i64 } @_RINvMNtCs3oUPovFnLWP_4core3stre12trim_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECs4wS76oGtFbW_12typst_assets(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2), !noalias !188
  %i.c = extractvalue { ptr, i64 } %i.b, 1
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %.loopexit19, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.n, %.lr.ph.i
  %.lcssa108120.i = phi i64 [ 0, %.lr.ph.i ], [ %.lcssa108118.i, %bb.n ] ; 3 uses
  %.sroa.0.0115.i = phi i8 [ 0, %.lr.ph.i ], [ %i.bs, %bb.n ]
  %.lcssa92111114.i = phi i64 [ 0, %.lr.ph.i ], [ %.lcssa92110.i, %bb.n ] ; 7 uses
  %i.f = icmp ult i64 %2, %.lcssa108120.i
  br i1 %i.f, label %_RNvXs_NtNtCs3oUPovFnLWP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i, label %.lr.ph.split.i.i.i

.lr.ph.split.i.i.i:                               ; preds = %bb.b, %bb.e
  %i.g = phi i64 [ %i.u, %bb.e ], [ %.lcssa108120.i, %bb.b ] ; 5 uses
  %i.h = sub nuw i64 %2, %i.g                     ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 %i.g ; 2 uses
  %i.j = icmp samesign ult i64 %i.h, 16
  br i1 %i.j, label %.preheader.i.i.i.i, label %bb.c

.preheader.i.i.i.i:                               ; preds = %.lr.ph.split.i.i.i
  %.not.i.i.i.i = icmp eq i64 %2, %i.g
  br i1 %.not.i.i.i.i, label %_RNvXs_NtNtCs3oUPovFnLWP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i, label %.lr.ph.i.i.i.i

bb.c:                                             ; preds = %.lr.ph.split.i.i.i
  %i.k = tail call { i64, i64 } @_RNvNtNtCs3oUPovFnLWP_4core5slice6memchr14memchr_aligned(i8 noundef 124, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.i, i64 noundef range(i64 0, -9223372036854775808) %i.h), !noalias !190 ; 2 uses
  %i.l = extractvalue { i64, i64 } %i.k, 0
  %i.m = extractvalue { i64, i64 } %i.k, 1
  %i.n = trunc nuw i64 %i.l to i1
  br i1 %i.n, label %.loopexit.i.i.i, label %_RNvXs_NtNtCs3oUPovFnLWP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.preheader.i.i.i.i, %bb.d
  %.sroa.04.011.i.i.i.i = phi i64 [ %i.r, %bb.d ], [ 0, %.preheader.i.i.i.i ] ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 %.sroa.04.011.i.i.i.i
  %i.p = load i8, ptr %i.o, align 1, !alias.scope !196, !noalias !190, !noundef !18
  %i.q = icmp eq i8 %i.p, 124
  br i1 %i.q, label %.loopexit.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.r = add nuw nsw i64 %.sroa.04.011.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.r, %i.h
  br i1 %exitcond.not.i.i.i.i, label %_RNvXs_NtNtCs3oUPovFnLWP_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i, label %.lr.ph.i.i.i.i

.loopexit.i.i.i:                                  ; preds = %.lr.ph.i.i.i.i, %bb.c
  %.sroa.5.0.i.i.i.i = phi i64 [ %i.m, %bb.c ], [ %.sroa.04.011.i.i.i.i, %.lr.ph.i.i.i.i ] ; 3 uses
  %i.s = icmp ult i64 %.sroa.5.0.i.i.i.i, %i.h
  tail call void @llvm.assume(i1 %i.s)
  %i.t = add i64 %i.g, 1
end_hunk_1
