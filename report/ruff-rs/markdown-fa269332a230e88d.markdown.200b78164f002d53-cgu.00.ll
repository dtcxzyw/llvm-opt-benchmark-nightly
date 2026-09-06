Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/markdown-fa269332a230e88d.markdown.200b78164f002d53-cgu.00?download=true
inline.NumInlined: 430
inline.NumDeleted: 150
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
@172 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @7, [16 x i8] c"c\00\00\00\00\00\00\00\F7\04\00\00\10\00\00\00" }>, align 8
@173 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @7, [16 x i8] c"c\00\00\00\00\00\00\00\FD\04\00\00\09\00\00\00" }>, align 8
@174 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @7, [16 x i8] c"c\00\00\00\00\00\00\00O\06\00\00\0A\00\00\00" }>, align 8
@175 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @7, [16 x i8] c"c\00\00\00\00\00\00\00U\06\00\00\09\00\00\00" }>, align 8
@176 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @7, [16 x i8] c"c\00\00\00\00\00\00\00t\06\00\00\0A\00\00\00" }>, align 8
@177 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @7, [16 x i8] c"c\00\00\00\00\00\00\00|\06\00\00\09\00\00\00" }>, align 8
@178 = private unnamed_addr constant [1 x i8] c"\91", align 1
@179 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @7, [16 x i8] c"c\00\00\00\00\00\00\00t\03\00\00\0A\00\00\00" }>, align 8
@180 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @7, [16 x i8] c"c\00\00\00\00\00\00\00}\03\00\00\09\00\00\00" }>, align 8
@181 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @7, [16 x i8] c"c\00\00\00\00\00\00\00U\01\00\00\0B\00\00\00" }>, align 8
@182 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @7, [16 x i8] c"c\00\00\00\00\00\00\00\FC\00\00\00\08\00\00\00" }>, align 8
@183 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @7, [16 x i8] c"c\00\00\00\00\00\00\00\EE\00\00\006\00\00\00" }>, align 8
@184 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @7, [16 x i8] c"c\00\00\00\00\00\00\00\F1\00\00\00\16\00\00\00" }>, align 8
@185 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @7, [16 x i8] c"c\00\00\00\00\00\00\00\DD\06\00\00,\00\00\00" }>, align 8
@186 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @7, [16 x i8] c"c\00\00\00\00\00\00\00\DD\06\00\00\1E\00\00\00" }>, align 8
@187 = private unnamed_addr constant [28 x i8] c"Cannot delve into non-parent", align 1
@188 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @7, [16 x i8] c"c\00\00\00\00\00\00\00\BA\06\00\00)\00\00\00" }>, align 8
@189 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @7, [16 x i8] c"c\00\00\00\00\00\00\00\BA\06\00\00O\00\00\00" }>, align 8
@190 = private unnamed_addr constant [102 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/markdown-1.0.0/src/util/infer.rs\00", align 1
@191 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @190, [16 x i8] c"e\00\00\00\00\00\00\00x\00\00\00\14\00\00\00" }>, align 8
@192 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @190, [16 x i8] c"e\00\00\00\00\00\00\00|\00\00\00\14\00\00\00" }>, align 8
@193 = private unnamed_addr constant [17 x i8] c"AttentionSequence", align 1
@194 = private unnamed_addr constant [8 x i8] c"Autolink", align 1
@195 = private unnamed_addr constant [13 x i8] c"AutolinkEmail", align 1
@196 = private unnamed_addr constant [14 x i8] c"AutolinkMarker", align 1
@197 = private unnamed_addr constant [16 x i8] c"AutolinkProtocol", align 1
@198 = private unnamed_addr constant [15 x i8] c"BlankLineEnding", align 1
@199 = private unnamed_addr constant [10 x i8] c"BlockQuote", align 1
@200 = private unnamed_addr constant [16 x i8] c"BlockQuoteMarker", align 1
@201 = private unnamed_addr constant [16 x i8] c"BlockQuotePrefix", align 1
@202 = private unnamed_addr constant [13 x i8] c"ByteOrderMark", align 1
@203 = private unnamed_addr constant [15 x i8] c"CharacterEscape", align 1
@204 = private unnamed_addr constant [21 x i8] c"CharacterEscapeMarker", align 1
@205 = private unnamed_addr constant [20 x i8] c"CharacterEscapeValue", align 1
@206 = private unnamed_addr constant [18 x i8] c"CharacterReference", align 1
@207 = private unnamed_addr constant [24 x i8] c"CharacterReferenceMarker", align 1
@208 = private unnamed_addr constant [35 x i8] c"CharacterReferenceMarkerHexadecimal", align 1
@209 = private unnamed_addr constant [31 x i8] c"CharacterReferenceMarkerNumeric", align 1
@210 = private unnamed_addr constant [28 x i8] c"CharacterReferenceMarkerSemi", align 1
@211 = private unnamed_addr constant [23 x i8] c"CharacterReferenceValue", align 1
@212 = private unnamed_addr constant [10 x i8] c"CodeFenced", align 1
@213 = private unnamed_addr constant [15 x i8] c"CodeFencedFence", align 1
@214 = private unnamed_addr constant [19 x i8] c"CodeFencedFenceInfo", align 1
@215 = private unnamed_addr constant [19 x i8] c"CodeFencedFenceMeta", align 1
@216 = private unnamed_addr constant [23 x i8] c"CodeFencedFenceSequence", align 1
@217 = private unnamed_addr constant [13 x i8] c"CodeFlowChunk", align 1
@218 = private unnamed_addr constant [12 x i8] c"CodeIndented", align 1
@219 = private unnamed_addr constant [8 x i8] c"CodeText", align 1
@220 = private unnamed_addr constant [12 x i8] c"CodeTextData", align 1
@221 = private unnamed_addr constant [16 x i8] c"CodeTextSequence", align 1
@222 = private unnamed_addr constant [7 x i8] c"Content", align 1
@223 = private unnamed_addr constant [4 x i8] c"Data", align 1
@224 = private unnamed_addr constant [10 x i8] c"Definition", align 1
@225 = private unnamed_addr constant [21 x i8] c"DefinitionDestination", align 1
@226 = private unnamed_addr constant [28 x i8] c"DefinitionDestinationLiteral", align 1
@227 = private unnamed_addr constant [34 x i8] c"DefinitionDestinationLiteralMarker", align 1
@228 = private unnamed_addr constant [24 x i8] c"DefinitionDestinationRaw", align 1
@229 = private unnamed_addr constant [27 x i8] c"DefinitionDestinationString", align 1
@230 = private unnamed_addr constant [15 x i8] c"DefinitionLabel", align 1
@231 = private unnamed_addr constant [21 x i8] c"DefinitionLabelMarker", align 1
@232 = private unnamed_addr constant [21 x i8] c"DefinitionLabelString", align 1
@233 = private unnamed_addr constant [16 x i8] c"DefinitionMarker", align 1
@234 = private unnamed_addr constant [15 x i8] c"DefinitionTitle", align 1
@235 = private unnamed_addr constant [21 x i8] c"DefinitionTitleMarker", align 1
@236 = private unnamed_addr constant [21 x i8] c"DefinitionTitleString", align 1
@237 = private unnamed_addr constant [8 x i8] c"Emphasis", align 1
@238 = private unnamed_addr constant [16 x i8] c"EmphasisSequence", align 1
@239 = private unnamed_addr constant [12 x i8] c"EmphasisText", align 1
@240 = private unnamed_addr constant [11 x i8] c"Frontmatter", align 1
@241 = private unnamed_addr constant [16 x i8] c"FrontmatterChunk", align 1
@242 = private unnamed_addr constant [16 x i8] c"FrontmatterFence", align 1
@243 = private unnamed_addr constant [19 x i8] c"FrontmatterSequence", align 1
@244 = private unnamed_addr constant [23 x i8] c"GfmAutolinkLiteralEmail", align 1
@245 = private unnamed_addr constant [24 x i8] c"GfmAutolinkLiteralMailto", align 1
@246 = private unnamed_addr constant [26 x i8] c"GfmAutolinkLiteralProtocol", align 1
@247 = private unnamed_addr constant [21 x i8] c"GfmAutolinkLiteralWww", align 1
@248 = private unnamed_addr constant [22 x i8] c"GfmAutolinkLiteralXmpp", align 1
@249 = private unnamed_addr constant [15 x i8] c"GfmFootnoteCall", align 1
@250 = private unnamed_addr constant [20 x i8] c"GfmFootnoteCallLabel", align 1
@251 = private unnamed_addr constant [21 x i8] c"GfmFootnoteCallMarker", align 1
@252 = private unnamed_addr constant [21 x i8] c"GfmFootnoteDefinition", align 1
@253 = private unnamed_addr constant [27 x i8] c"GfmFootnoteDefinitionPrefix", align 1
@254 = private unnamed_addr constant [26 x i8] c"GfmFootnoteDefinitionLabel", align 1
@255 = private unnamed_addr constant [32 x i8] c"GfmFootnoteDefinitionLabelMarker", align 1
@256 = private unnamed_addr constant [32 x i8] c"GfmFootnoteDefinitionLabelString", align 1
@257 = private unnamed_addr constant [27 x i8] c"GfmFootnoteDefinitionMarker", align 1
@258 = private unnamed_addr constant [16 x i8] c"GfmStrikethrough", align 1
@259 = private unnamed_addr constant [24 x i8] c"GfmStrikethroughSequence", align 1
@260 = private unnamed_addr constant [20 x i8] c"GfmStrikethroughText", align 1
@261 = private unnamed_addr constant [8 x i8] c"GfmTable", align 1
@262 = private unnamed_addr constant [12 x i8] c"GfmTableBody", align 1
@263 = private unnamed_addr constant [12 x i8] c"GfmTableCell", align 1
@264 = private unnamed_addr constant [16 x i8] c"GfmTableCellText", align 1
@265 = private unnamed_addr constant [19 x i8] c"GfmTableCellDivider", align 1
@266 = private unnamed_addr constant [20 x i8] c"GfmTableDelimiterRow", align 1
@267 = private unnamed_addr constant [23 x i8] c"GfmTableDelimiterMarker", align 1
@268 = private unnamed_addr constant [21 x i8] c"GfmTableDelimiterCell", align 1
@269 = private unnamed_addr constant [26 x i8] c"GfmTableDelimiterCellValue", align 1
@270 = private unnamed_addr constant [23 x i8] c"GfmTableDelimiterFiller", align 1
@271 = private unnamed_addr constant [12 x i8] c"GfmTableHead", align 1
@272 = private unnamed_addr constant [11 x i8] c"GfmTableRow", align 1
@273 = private unnamed_addr constant [20 x i8] c"GfmTaskListItemCheck", align 1
@274 = private unnamed_addr constant [21 x i8] c"GfmTaskListItemMarker", align 1
@275 = private unnamed_addr constant [27 x i8] c"GfmTaskListItemValueChecked", align 1
@276 = private unnamed_addr constant [29 x i8] c"GfmTaskListItemValueUnchecked", align 1
@277 = private unnamed_addr constant [15 x i8] c"HardBreakEscape", align 1
@278 = private unnamed_addr constant [17 x i8] c"HardBreakTrailing", align 1
@279 = private unnamed_addr constant [10 x i8] c"HeadingAtx", align 1
@280 = private unnamed_addr constant [18 x i8] c"HeadingAtxSequence", align 1
@281 = private unnamed_addr constant [14 x i8] c"HeadingAtxText", align 1
@282 = private unnamed_addr constant [13 x i8] c"HeadingSetext", align 1
@283 = private unnamed_addr constant [17 x i8] c"HeadingSetextText", align 1
@284 = private unnamed_addr constant [22 x i8] c"HeadingSetextUnderline", align 1
@285 = private unnamed_addr constant [30 x i8] c"HeadingSetextUnderlineSequence", align 1
@286 = private unnamed_addr constant [8 x i8] c"HtmlFlow", align 1
@287 = private unnamed_addr constant [12 x i8] c"HtmlFlowData", align 1
@288 = private unnamed_addr constant [8 x i8] c"HtmlText", align 1
@289 = private unnamed_addr constant [12 x i8] c"HtmlTextData", align 1
@290 = private unnamed_addr constant [5 x i8] c"Image", align 1
@291 = private unnamed_addr constant [5 x i8] c"Label", align 1
@292 = private unnamed_addr constant [8 x i8] c"LabelEnd", align 1
@293 = private unnamed_addr constant [10 x i8] c"LabelImage", align 1
@294 = private unnamed_addr constant [16 x i8] c"LabelImageMarker", align 1
@295 = private unnamed_addr constant [9 x i8] c"LabelLink", align 1
@296 = private unnamed_addr constant [11 x i8] c"LabelMarker", align 1
@297 = private unnamed_addr constant [9 x i8] c"LabelText", align 1
@298 = private unnamed_addr constant [10 x i8] c"LineEnding", align 1
@299 = private unnamed_addr constant [4 x i8] c"Link", align 1
@300 = private unnamed_addr constant [8 x i8] c"ListItem", align 1
@301 = private unnamed_addr constant [14 x i8] c"ListItemMarker", align 1
@302 = private unnamed_addr constant [14 x i8] c"ListItemPrefix", align 1
@303 = private unnamed_addr constant [13 x i8] c"ListItemValue", align 1
@304 = private unnamed_addr constant [11 x i8] c"ListOrdered", align 1
@305 = private unnamed_addr constant [13 x i8] c"ListUnordered", align 1
@306 = private unnamed_addr constant [8 x i8] c"MathFlow", align 1
@307 = private unnamed_addr constant [13 x i8] c"MathFlowFence", align 1
@308 = private unnamed_addr constant [17 x i8] c"MathFlowFenceMeta", align 1
@309 = private unnamed_addr constant [21 x i8] c"MathFlowFenceSequence", align 1
@310 = private unnamed_addr constant [13 x i8] c"MathFlowChunk", align 1
@311 = private unnamed_addr constant [8 x i8] c"MathText", align 1
@312 = private unnamed_addr constant [12 x i8] c"MathTextData", align 1
@313 = private unnamed_addr constant [16 x i8] c"MathTextSequence", align 1
@314 = private unnamed_addr constant [6 x i8] c"MdxEsm", align 1
@315 = private unnamed_addr constant [10 x i8] c"MdxEsmData", align 1
@316 = private unnamed_addr constant [19 x i8] c"MdxExpressionMarker", align 1
@317 = private unnamed_addr constant [17 x i8] c"MdxExpressionData", align 1
@318 = private unnamed_addr constant [17 x i8] c"MdxFlowExpression", align 1
@319 = private unnamed_addr constant [17 x i8] c"MdxTextExpression", align 1
@320 = private unnamed_addr constant [13 x i8] c"MdxJsxFlowTag", align 1
@321 = private unnamed_addr constant [13 x i8] c"MdxJsxTextTag", align 1
@322 = private unnamed_addr constant [18 x i8] c"MdxJsxEsWhitespace", align 1
@323 = private unnamed_addr constant [15 x i8] c"MdxJsxTagMarker", align 1
@324 = private unnamed_addr constant [22 x i8] c"MdxJsxTagClosingMarker", align 1
@325 = private unnamed_addr constant [13 x i8] c"MdxJsxTagName", align 1
@326 = private unnamed_addr constant [20 x i8] c"MdxJsxTagNamePrimary", align 1
@327 = private unnamed_addr constant [25 x i8] c"MdxJsxTagNameMemberMarker", align 1
@328 = private unnamed_addr constant [25 x i8] c"MdxJsxTagNamePrefixMarker", align 1
@329 = private unnamed_addr constant [19 x i8] c"MdxJsxTagNameMember", align 1
@330 = private unnamed_addr constant [18 x i8] c"MdxJsxTagNameLocal", align 1
@331 = private unnamed_addr constant [18 x i8] c"MdxJsxTagAttribute", align 1
@332 = private unnamed_addr constant [28 x i8] c"MdxJsxTagAttributeExpression", align 1
@333 = private unnamed_addr constant [22 x i8] c"MdxJsxTagAttributeName", align 1
@334 = private unnamed_addr constant [29 x i8] c"MdxJsxTagAttributePrimaryName", align 1
@335 = private unnamed_addr constant [34 x i8] c"MdxJsxTagAttributeNamePrefixMarker", align 1
@336 = private unnamed_addr constant [27 x i8] c"MdxJsxTagAttributeNameLocal", align 1
@337 = private unnamed_addr constant [35 x i8] c"MdxJsxTagAttributeInitializerMarker", align 1
@338 = private unnamed_addr constant [33 x i8] c"MdxJsxTagAttributeValueExpression", align 1
@339 = private unnamed_addr constant [30 x i8] c"MdxJsxTagAttributeValueLiteral", align 1
@340 = private unnamed_addr constant [36 x i8] c"MdxJsxTagAttributeValueLiteralMarker", align 1
@341 = private unnamed_addr constant [35 x i8] c"MdxJsxTagAttributeValueLiteralValue", align 1
@342 = private unnamed_addr constant [26 x i8] c"MdxJsxTagSelfClosingMarker", align 1
@343 = private unnamed_addr constant [9 x i8] c"Paragraph", align 1
@344 = private unnamed_addr constant [9 x i8] c"Reference", align 1
@345 = private unnamed_addr constant [15 x i8] c"ReferenceMarker", align 1
@346 = private unnamed_addr constant [15 x i8] c"ReferenceString", align 1
@347 = private unnamed_addr constant [8 x i8] c"Resource", align 1
@348 = private unnamed_addr constant [19 x i8] c"ResourceDestination", align 1
@349 = private unnamed_addr constant [26 x i8] c"ResourceDestinationLiteral", align 1
@350 = private unnamed_addr constant [32 x i8] c"ResourceDestinationLiteralMarker", align 1
@351 = private unnamed_addr constant [22 x i8] c"ResourceDestinationRaw", align 1
@352 = private unnamed_addr constant [25 x i8] c"ResourceDestinationString", align 1
@353 = private unnamed_addr constant [14 x i8] c"ResourceMarker", align 1
@354 = private unnamed_addr constant [13 x i8] c"ResourceTitle", align 1
@355 = private unnamed_addr constant [19 x i8] c"ResourceTitleMarker", align 1
@356 = private unnamed_addr constant [19 x i8] c"ResourceTitleString", align 1
@357 = private unnamed_addr constant [10 x i8] c"SpaceOrTab", align 1
@358 = private unnamed_addr constant [6 x i8] c"Strong", align 1
@359 = private unnamed_addr constant [14 x i8] c"StrongSequence", align 1
@360 = private unnamed_addr constant [10 x i8] c"StrongText", align 1
@361 = private unnamed_addr constant [13 x i8] c"ThematicBreak", align 1
@362 = private unnamed_addr constant [21 x i8] c"ThematicBreakSequence", align 1
@363 = private unnamed_addr constant [10 x i8] c"LinePrefix", align 1
@364 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsZ_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_5Debug3fmt }>, align 8
@365 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRINtNtB8_6option6OptionhENtB6_5Debug3fmtCs2KzzoC5ewhj_8markdown }>, align 8
@366 = private unnamed_addr constant [9 x i8] c"Utf8Error", align 1
@367 = private unnamed_addr constant [11 x i8] c"valid_up_to", align 1
@368 = private unnamed_addr constant [9 x i8] c"error_len", align 1
@369 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCs4NRVxsYgnAr_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCs2KzzoC5ewhj_8markdown }>, align 8
@370 = private unnamed_addr constant [13 x i8] c"ParseIntError", align 1
@371 = private unnamed_addr constant [4 x i8] c"kind", align 1
@switch.table._RNvXs0_NtCs2KzzoC5ewhj_8markdown5eventNtB5_4NameNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt = private unnamed_addr constant [171 x i8] c"\11\08\0D\0E\10\0F\0A\10\10\0D\0F\15\14\12\18#\1F\1C\17\0A\0F\13\13\17\0D\0C\08\0C\10\07\04\0A\15\1C\22\18\1B\0F\15\15\10\0F\15\15\08\10\0C\0B\10\10\13\17\18\1A\15\16\0F\14\15\15\1B\1A  \1B\10\18\14\08\0C\0C\10\13\14\17\15\1A\17\0C\0B\14\15\1B\1D\0F\11\0A\12\0E\0D\11\16\1E\08\0C\08\0C\05\05\08\0A\10\09\0B\09\0A\04\08\0E\0E\0D\0B\0D\08\0D\11\15\0D\08\0C\10\06\0A\13\11\11\11\0D\0D\12\0F\16\0D\14\19\19\13\12\12\1C\16\1D\22\1B#!\1E$#\1A\09\09\0F\0F\08\13\1A \16\19\0E\0D\13\13\0A\06\0E\0A\0D\15\0A", align 8
@switch.table._RNvXs0_NtCs2KzzoC5ewhj_8markdown5eventNtB5_4NameNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt.18 = private unnamed_addr constant [171 x ptr] [ptr @193, ptr @194, ptr @195, ptr @196, ptr @197, ptr @198, ptr @199, ptr @200, ptr @201, ptr @202, ptr @203, ptr @204, ptr @205, ptr @206, ptr @207, ptr @208, ptr @209, ptr @210, ptr @211, ptr @212, ptr @213, ptr @214, ptr @215, ptr @216, ptr @217, ptr @218, ptr @219, ptr @220, ptr @221, ptr @222, ptr @223, ptr @224, ptr @225, ptr @226, ptr @227, ptr @228, ptr @229, ptr @230, ptr @231, ptr @232, ptr @233, ptr @234, ptr @235, ptr @236, ptr @237, ptr @238, ptr @239, ptr @240, ptr @241, ptr @242, ptr @243, ptr @244, ptr @245, ptr @246, ptr @247, ptr @248, ptr @249, ptr @250, ptr @251, ptr @252, ptr @253, ptr @254, ptr @255, ptr @256, ptr @257, ptr @258, ptr @259, ptr @260, ptr @261, ptr @262, ptr @263, ptr @264, ptr @265, ptr @266, ptr @267, ptr @268, ptr @269, ptr @270, ptr @271, ptr @272, ptr @273, ptr @274, ptr @275, ptr @276, ptr @277, ptr @278, ptr @279, ptr @280, ptr @281, ptr @282, ptr @283, ptr @284, ptr @285, ptr @286, ptr @287, ptr @288, ptr @289, ptr @290, ptr @291, ptr @292, ptr @293, ptr @294, ptr @295, ptr @296, ptr @297, ptr @298, ptr @299, ptr @300, ptr @301, ptr @302, ptr @303, ptr @304, ptr @305, ptr @306, ptr @307, ptr @308, ptr @309, ptr @310, ptr @311, ptr @312, ptr @313, ptr @314, ptr @315, ptr @316, ptr @317, ptr @318, ptr @319, ptr @320, ptr @321, ptr @322, ptr @323, ptr @324, ptr @325, ptr @326, ptr @327, ptr @328, ptr @329, ptr @330, ptr @331, ptr @332, ptr @333, ptr @334, ptr @335, ptr @336, ptr @337, ptr @338, ptr @339, ptr @340, ptr @341, ptr @342, ptr @343, ptr @344, ptr @345, ptr @346, ptr @347, ptr @348, ptr @349, ptr @350, ptr @351, ptr @352, ptr @353, ptr @354, ptr @355, ptr @356, ptr @357, ptr @358, ptr @359, ptr @360, ptr @361, ptr @362, ptr @363], align 8

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2KzzoC5ewhj_8markdown5mdast14AttributeValueEEB11_(ptr noalias noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !18, !noundef !3
  switch i64 %i.a, label %bb.b [
    i64 -2, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2KzzoC5ewhj_8markdown5mdast14AttributeValueEBF_.exit
    i64 -1, label %bb.i
  ]

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2KzzoC5ewhj_8markdown5mdast14AttributeValueEBF_.exit: ; preds = %bb.a, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2KzzoC5ewhj_8markdown.exit.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2KzzoC5ewhj_8markdown5mdast24AttributeValueExpressionEBF_.exit.i
  ret void

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2KzzoC5ewhj_8markdown(ptr noalias noundef nonnull align 8 dereferenceable(48) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2KzzoC5ewhj_8markdown.exit.i.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2KzzoC5ewhj_8markdown(ptr noalias noundef nonnull align 8 dereferenceable(48) %0)
          to label %.body.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2KzzoC5ewhj_8markdown.exit.i.i.i: ; preds = %bb.b
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2KzzoC5ewhj_8markdown(ptr noalias noundef nonnull align 8 dereferenceable(48) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2KzzoC5ewhj_8markdown.exit.i.i unwind label %bb.e

bb.e:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2KzzoC5ewhj_8markdown.exit.i.i.i
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.e, %bb.c
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.d, %bb.e ], [ %i.b, %bb.c ]
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTjjEEECs2KzzoC5ewhj_8markdown(ptr noalias noundef align 8 dereferenceable(24) %i.e) #17
          to label %common.resume.i unwind label %bb.h

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2KzzoC5ewhj_8markdown.exit.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2KzzoC5ewhj_8markdown.exit.i.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecTjjEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2KzzoC5ewhj_8markdown(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2KzzoC5ewhj_8markdown5mdast24AttributeValueExpressionEBF_.exit.i unwind label %bb.f

bb.f:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2KzzoC5ewhj_8markdown.exit.i.i
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTjjEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2KzzoC5ewhj_8markdown(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %common.resume.i unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #16
  unreachable

common.resume.i:                                  ; preds = %bb.j, %bb.f, %.body.i.i
  %common.resume.op.i = phi { ptr, i32 } [ %eh.lpad-body.i.i, %.body.i.i ], [ %i.g, %bb.f ], [ %i.k, %bb.j ]
  resume { ptr, i32 } %common.resume.op.i

bb.h:                                             ; preds = %.body.i.i
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2KzzoC5ewhj_8markdown5mdast24AttributeValueExpressionEBF_.exit.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2KzzoC5ewhj_8markdown.exit.i.i
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTjjEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2KzzoC5ewhj_8markdown(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2KzzoC5ewhj_8markdown5mdast14AttributeValueEBF_.exit

bb.i:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2KzzoC5ewhj_8markdown(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2KzzoC5ewhj_8markdown.exit.i unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2KzzoC5ewhj_8markdown(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %common.resume.i unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2KzzoC5ewhj_8markdown.exit.i: ; preds = %bb.i
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2KzzoC5ewhj_8markdown(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2KzzoC5ewhj_8markdown5mdast14AttributeValueEBF_.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCscdodAO9FK5_5alloc6string6StringEECs2KzzoC5ewhj_8markdown(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !4, !noundef !3
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2KzzoC5ewhj_8markdown.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2KzzoC5ewhj_8markdown(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2KzzoC5ewhj_8markdown.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2KzzoC5ewhj_8markdown(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVechEECs2KzzoC5ewhj_8markdown.exit.i.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVechEECs2KzzoC5ewhj_8markdown.exit.i.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2KzzoC5ewhj_8markdown.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2KzzoC5ewhj_8markdown(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs2KzzoC5ewhj_8markdown5mdast16AttributeContentEEB1b_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs2KzzoC5ewhj_8markdown5mdast16AttributeContentENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs2KzzoC5ewhj_8markdown5mdast16AttributeContentENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBP_(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCs2KzzoC5ewhj_8markdown5mdast16AttributeContentEEB1i_.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs2KzzoC5ewhj_8markdown5mdast16AttributeContentENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBP_(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCs2KzzoC5ewhj_8markdown5mdast16AttributeContentEEB1i_.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs2KzzoC5ewhj_8markdown5mdast4NodeEEB1b_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs2KzzoC5ewhj_8markdown5mdast4NodeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs2KzzoC5ewhj_8markdown5mdast4NodeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBP_(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCs2KzzoC5ewhj_8markdown5mdast4NodeEEB1i_.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs2KzzoC5ewhj_8markdown5mdast4NodeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBP_(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCs2KzzoC5ewhj_8markdown5mdast4NodeEEB1i_.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCs2KzzoC5ewhj_8markdown5mdast9AlignKindEEB1b_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs2KzzoC5ewhj_8markdown5mdast9AlignKindENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs2KzzoC5ewhj_8markdown5mdast9AlignKindENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBP_(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVecNtNtCs2KzzoC5ewhj_8markdown5mdast9AlignKindEEB1i_.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs2KzzoC5ewhj_8markdown5mdast9AlignKindENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBP_(ptr noalias noundef nonnull align 8 dereferenceable(16) %0)
  ret void

bb.d:                                             ; preds = %bb.b
end_hunk_0
begin_hunk_1_@_RNvNtCs2KzzoC5ewhj_8markdown8to_mdast7compile:bb.a
  %exitcond.not = icmp eq i64 %i.th, %2
  br i1 %exitcond.not, label %._crit_edge, label %bb.h
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtCs2KzzoC5ewhj_8markdown8to_mdast8trim_eol(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 captures(address) dead_on_return dereferenceable(24) %1, i1 noundef zeroext %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !3, !noundef !3 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load i64, ptr %i.f, align 8, !noundef !3 ; 10 uses
  %i.h = icmp ne i64 %i.g, 0
  %or.cond.not = and i1 %2, %i.h                  ; 3 uses
  br i1 %or.cond.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.i = load i8, ptr %i.e, align 1, !noundef !3
  switch i8 %i.i, label %.thread [
    i8 10, label %bb.g
    i8 13, label %bb.e
  ]

bb.c:                                             ; preds = %bb.p, %bb.s, %bb.q, %bb.n, %bb.m
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2KzzoC5ewhj_8markdown(ptr noalias noundef align 8 dereferenceable(24) %1) #17
          to label %common.resume unwind label %bb.y

bb.d:                                             ; preds = %bb.s, %bb.m
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.k = icmp ugt i64 %i.g, 1
  br i1 %i.k, label %bb.f, label %.thread41.thread

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.m = load i8, ptr %i.l, align 1, !noundef !3
  %i.n = icmp eq i8 %i.m, 10
  %spec.select = select i1 %i.n, i64 2, i64 1
  br label %bb.g

.thread41:                                        ; preds = %bb.i, %.thread, %bb.j, %bb.h, %bb.g
  %.sroa.0.039 = phi i64 [ %.sroa.0.0, %bb.g ], [ %.sroa.0.040, %bb.i ], [ %.sroa.0.040, %bb.h ], [ %.sroa.0.040, %bb.j ], [ %.sroa.0.040, %.thread ]
  %i.o = phi i1 [ %or.cond.not, %bb.g ], [ %i.r, %bb.i ], [ %i.r, %bb.h ], [ %i.r, %bb.j ], [ %i.r, %.thread ]
  %.sroa.012.0 = phi i64 [ %i.g, %bb.g ], [ %spec.select37, %bb.i ], [ %i.s, %bb.h ], [ %i.s, %bb.j ], [ %i.g, %.thread ] ; 2 uses
  %i.p = icmp ult i64 %.sroa.012.0, %i.g
  %or.cond2 = or i1 %i.o, %i.p
  br i1 %or.cond2, label %.thread41.thread, label %bb.k

bb.g:                                             ; preds = %bb.f, %bb.b, %bb.a
  %.sroa.0.0 = phi i64 [ 0, %bb.a ], [ 1, %bb.b ], [ %spec.select, %bb.f ] ; 3 uses
  %i.q = icmp ugt i64 %i.g, %.sroa.0.0
  br i1 %i.q, label %.thread, label %.thread41

.thread:                                          ; preds = %bb.b, %bb.g
  %.sroa.0.040 = phi i64 [ %.sroa.0.0, %bb.g ], [ 0, %bb.b ] ; 5 uses
  %i.r = phi i1 [ %or.cond.not, %bb.g ], [ false, %bb.b ] ; 4 uses
  %i.s = add i64 %i.g, -1                         ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.s
  %i.u = load i8, ptr %i.t, align 1, !noundef !3
  switch i8 %i.u, label %.thread41 [
    i8 10, label %bb.h
    i8 13, label %bb.j
  ]

bb.h:                                             ; preds = %.thread
  %i.v = icmp ugt i64 %i.s, %.sroa.0.040
  br i1 %i.v, label %bb.i, label %.thread41

bb.i:                                             ; preds = %bb.h
  %i.w = add i64 %i.g, -2                         ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !noundef !3
  %i.z = icmp eq i8 %i.y, 13
  %spec.select37 = select i1 %i.z, i64 %i.w, i64 %i.s
  br label %.thread41

bb.j:                                             ; preds = %.thread
  br label %.thread41

bb.k:                                             ; preds = %.thread41
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  br label %bb.l

bb.l:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2KzzoC5ewhj_8markdown.exit, %bb.k
  ret void

.thread41.thread:                                 ; preds = %bb.e, %.thread41
  %.sroa.012.047 = phi i64 [ %.sroa.012.0, %.thread41 ], [ 1, %bb.e ] ; 4 uses
  %.sroa.0.03946 = phi i64 [ %.sroa.0.039, %.thread41 ], [ 1, %bb.e ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.aa = icmp ult i64 %.sroa.012.047, %.sroa.0.03946
  %.not = icmp ugt i64 %.sroa.012.047, %i.g
  %or.cond = or i1 %.not, %i.aa
  br i1 %or.cond, label %bb.m, label %bb.n, !prof !7

bb.m:                                             ; preds = %.thread41.thread
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef %.sroa.0.03946, i64 noundef %.sroa.012.047, i64 noundef %i.g, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @186) #19
          to label %bb.d unwind label %bb.c

bb.n:                                             ; preds = %.thread41.thread
  %i.ab = sub nuw i64 %.sroa.012.047, %.sroa.0.03946
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 %.sroa.0.03946
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core3str8converts9from_utf8(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ac, i64 noundef %i.ab)
          to label %bb.o unwind label %bb.c

bb.o:                                             ; preds = %bb.n
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1111)
  %i.ad = load i64, ptr %i.c, align 8, !range !14, !alias.scope !1111, !noalias !1112, !noundef !3
  %i.ae = trunc nuw i64 %i.ad to i1
  br i1 %i.ae, label %bb.p, label %bb.q, !prof !6

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1113
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.af, i64 16, i1 false), !noalias !1112
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @1, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @185) #19
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.p
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !alias.scope !1111, !noalias !1112, !nonnull !3, !noundef !3
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.aj = load i64, ptr %i.ai, align 8, !alias.scope !1111, !noalias !1112, !noundef !3 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2KzzoC5ewhj_8markdown(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.aj, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.r unwind label %bb.c

bb.r:                                             ; preds = %bb.q
  %i.ak = load i64, ptr %i.b, align 8, !range !14, !noundef !3
  %i.al = trunc nuw i64 %i.ak to i1
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.an = load i64, ptr %i.am, align 8, !range !15, !noundef !3 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.al, label %bb.s, label %bb.t, !prof !6

bb.s:                                             ; preds = %bb.r
  %i.ap = load i64, ptr %i.ao, align 8
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.an, i64 %i.ap) #19
          to label %bb.d unwind label %bb.c

bb.t:                                             ; preds = %bb.r
  %i.aq = load ptr, ptr %i.ao, align 8, !nonnull !3, !noundef !3 ; 2 uses
  %i.ar = icmp ule i64 %i.aj, %i.an
  tail call void @llvm.assume(i1 %i.ar)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not36 = icmp eq i64 %i.aj, 0
  br i1 %.not36, label %bb.u, label %bb.x

bb.u:                                             ; preds = %bb.x, %bb.t
  store i64 %i.an, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aq, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.aj, ptr %.sroa.6.0..sroa_idx, align 8
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2KzzoC5ewhj_8markdown(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2KzzoC5ewhj_8markdown.exit unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.as = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2KzzoC5ewhj_8markdown(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %common.resume unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.at = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #16
  unreachable

common.resume:                                    ; preds = %bb.c, %bb.v
  %common.resume.op = phi { ptr, i32 } [ %i.as, %bb.v ], [ %i.j, %bb.c ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2KzzoC5ewhj_8markdown.exit: ; preds = %bb.u
  tail call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2KzzoC5ewhj_8markdown(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.l

bb.x:                                             ; preds = %bb.t
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aq, ptr nonnull align 1 %i.ah, i64 %i.aj, i1 false)
  br label %bb.u

bb.y:                                             ; preds = %bb.c
  %i.au = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #16
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs0_NtCs2KzzoC5ewhj_8markdown5eventNtB5_4NameNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt(ptr noalias noundef readonly captures(none) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
switch.lookup:
  %i.a = load i8, ptr %0, align 1, !range !11, !noundef !3 ; 2 uses
  %i.b = zext i8 %i.a to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs0_NtCs2KzzoC5ewhj_8markdown5eventNtB5_4NameNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext i8 %i.a to i64
  %switch.gep2 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs0_NtCs2KzzoC5ewhj_8markdown5eventNtB5_4NameNtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmt.18, i64 %i.c
  %switch.load3 = load ptr, ptr %switch.gep2, align 8
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter9write_str(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %switch.load3, i64 noundef %switch.ext)
  ret i1 %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs9_NtNtCs4NRVxsYgnAr_4core3str5errorNtB5_9Utf8ErrorNtNtB9_3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.b, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @366, i64 noundef 9, ptr noalias noundef nonnull readonly captures(address, read_provenance) @367, i64 noundef 11, ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @364, ptr noalias noundef nonnull readonly captures(address, read_provenance) @368, i64 noundef 9, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @365)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !noundef !3 ; 2 uses
  %i.c = and i32 %i.b, 33554432
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = and i32 %i.b, 67108864
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @_RNvXs6_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_8LowerHex3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.h = tail call noundef zeroext i1 @_RNvXsi_NtNtNtCs4NRVxsYgnAr_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.i = tail call noundef zeroext i1 @_RNvXs8_NtNtCs4NRVxsYgnAr_4core3fmt3numjNtB7_8UpperHex3fmt(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.h, %bb.d ], [ %i.i, %bb.e ], [ %i.g, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsd_NtNtCs4NRVxsYgnAr_4core3num5errorNtB5_13ParseIntErrorNtNtB9_3fmt5Debug3fmt(ptr noalias noundef readonly captures(address, read_provenance) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCs4NRVxsYgnAr_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @370, i64 noundef 13, ptr noalias noundef nonnull readonly captures(address, read_provenance) @371, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @369)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsq_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !3, !noundef !3
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !3
  %i.e = tail call noundef zeroext i1 @_RNvXsi_NtCs4NRVxsYgnAr_4core3fmteNtB5_7Display3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.e
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs2KzzoC5ewhj_8markdown5mdast16AttributeContentENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() unnamed_addr #4

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs2KzzoC5ewhj_8markdown5mdast4NodeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs2KzzoC5ewhj_8markdown5mdast9AlignKindENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs2KzzoC5ewhj_8markdown8to_mdast6JsxTagENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs2KzzoC5ewhj_8markdown8to_mdast9ReferenceENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecTNtNtCs2KzzoC5ewhj_8markdown5mdast4NodeIBv_jEB1h_EENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBJ_(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecTjjEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2KzzoC5ewhj_8markdown(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2KzzoC5ewhj_8markdown(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecjENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2KzzoC5ewhj_8markdown(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs2KzzoC5ewhj_8markdown5mdast16AttributeContentENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBP_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs2KzzoC5ewhj_8markdown5mdast4NodeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBP_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs2KzzoC5ewhj_8markdown5mdast9AlignKindENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBP_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs2KzzoC5ewhj_8markdown8to_mdast6JsxTagENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBP_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs2KzzoC5ewhj_8markdown8to_mdast9ReferenceENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBP_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTNtNtCs2KzzoC5ewhj_8markdown5mdast4NodeINtNtB7_3vec3VecjEB1o_EENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBQ_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTjjEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2KzzoC5ewhj_8markdown(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2KzzoC5ewhj_8markdown(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecjENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2KzzoC5ewhj_8markdown(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nonlazybind uwtable
declare void @_RNvNvNtCscdodAO9FK5_5alloc3fmt6format12format_inner(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #6

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #2

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #7

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCs2KzzoC5ewhj_8markdown(ptr noalias noundef align 8 dereferenceable(24), i64 noundef) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull, ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #3

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #8

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2KzzoC5ewhj_8markdown(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef, i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #0

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #10

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs2KzzoC5ewhj_8markdown5mdast16AttributeContentE8grow_oneBP_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #11

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs2KzzoC5ewhj_8markdown5mdast4NodeE8grow_oneBP_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #11

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs2KzzoC5ewhj_8markdown8to_mdast6JsxTagE8grow_oneBP_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #11

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs2KzzoC5ewhj_8markdown8to_mdast9ReferenceE8grow_oneBP_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #11

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTNtNtCs2KzzoC5ewhj_8markdown5mdast4NodeINtNtB7_3vec3VecjEB1o_EE8grow_oneBQ_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #11

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecjE8grow_oneCs2KzzoC5ewhj_8markdown(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #11

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core6option13expect_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #6

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCs4NRVxsYgnAr_4core5slice5index16slice_index_fail(i64 noundef, i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #6

end_hunk_1
