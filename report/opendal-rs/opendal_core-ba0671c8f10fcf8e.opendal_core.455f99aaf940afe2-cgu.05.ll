Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opendal-rs/original/opendal_core-ba0671c8f10fcf8e.opendal_core.455f99aaf940afe2-cgu.05?download=true
inline.NumInlined: 664
inline.NumDeleted: 271
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
@211 = private unnamed_addr constant [11 x i8] c"Unsupported", align 1, !guid !9
@212 = private unnamed_addr constant [12 x i8] c"NonEncodable", align 1, !guid !9
@213 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @14, [16 x i8] c"\18\00\00\00\00\00\00\00\BF\02\00\00\14\00\00\00" }>, align 8, !guid !9
@214 = private unnamed_addr constant [17 x i8] c"InvalidBangMarkup", align 1, !guid !9
@215 = private unnamed_addr constant [10 x i8] c"UnclosedPI", align 1, !guid !9
@216 = private unnamed_addr constant [15 x i8] c"UnclosedXmlDecl", align 1, !guid !9
@217 = private unnamed_addr constant [15 x i8] c"UnclosedComment", align 1, !guid !9
@218 = private unnamed_addr constant [15 x i8] c"UnclosedDoctype", align 1, !guid !9
@219 = private unnamed_addr constant [13 x i8] c"UnclosedCData", align 1, !guid !9
@220 = private unnamed_addr constant [11 x i8] c"UnclosedTag", align 1, !guid !9
@221 = private unnamed_addr constant [34 x i8] c"UnclosedSingleQuotedAttributeValue", align 1, !guid !9
@222 = private unnamed_addr constant [34 x i8] c"UnclosedDoubleQuotedAttributeValue", align 1, !guid !9
@223 = private unnamed_addr constant [18 x i8] c"seek out of bounds", align 1, !guid !9
@224 = private unnamed_addr constant [35 x i8] c"invalid seek to a negative position", align 1, !guid !9
@225 = private unnamed_addr constant [9 x i8] c"EmptyHost", align 1, !guid !9
@226 = private unnamed_addr constant [9 x i8] c"IdnaError", align 1, !guid !9
@227 = private unnamed_addr constant [11 x i8] c"InvalidPort", align 1, !guid !9
@228 = private unnamed_addr constant [18 x i8] c"InvalidIpv4Address", align 1, !guid !9
@229 = private unnamed_addr constant [18 x i8] c"InvalidIpv6Address", align 1, !guid !9
@230 = private unnamed_addr constant [22 x i8] c"InvalidDomainCharacter", align 1, !guid !9
@231 = private unnamed_addr constant [22 x i8] c"RelativeUrlWithoutBase", align 1, !guid !9
@232 = private unnamed_addr constant [32 x i8] c"RelativeUrlWithCannotBeABaseBase", align 1, !guid !9
@233 = private unnamed_addr constant [25 x i8] c"SetHostOnCannotBeABaseUrl", align 1, !guid !9
@234 = private unnamed_addr constant [8 x i8] c"Overflow", align 1, !guid !9
@235 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @14, [16 x i8] c"\18\00\00\00\00\00\00\00\02\03\00\00\1E\00\00\00" }>, align 8, !guid !9
@236 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @14, [16 x i8] c"\18\00\00\00\00\00\00\00\04\03\00\00\1D\00\00\00" }>, align 8, !guid !9
@237 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @14, [16 x i8] c"\18\00\00\00\00\00\00\00'\03\00\00 \00\00\00" }>, align 8, !guid !9
@238 = private unnamed_addr constant [5 x i8] c"Empty", align 1, !guid !9
@239 = private unnamed_addr constant [12 x i8] c"InvalidDigit", align 1, !guid !9
@240 = private unnamed_addr constant [11 x i8] c"PosOverflow", align 1, !guid !9
@241 = private unnamed_addr constant [11 x i8] c"NegOverflow", align 1, !guid !9
@242 = private unnamed_addr constant [4 x i8] c"Zero", align 1, !guid !9
@243 = private unnamed_addr constant [14 x i8] c"NotAPowerOfTwo", align 1, !guid !9
@244 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsgxBkk5gSRhY_4core3fmtRINtNtB8_6option6OptionNtNtCs6i54tJFfzR_5alloc6string6StringENtB6_5Debug3fmtCs5XgW7KoffLW_12opendal_core }>, align 8, !guid !9
@245 = private unnamed_addr constant [18 x i8] c"MissingDeclVersion", align 1, !guid !9
@246 = private unnamed_addr constant [14 x i8] c"UnknownVersion", align 1, !guid !9
@247 = private unnamed_addr constant [18 x i8] c"MissingDoctypeName", align 1, !guid !9
@248 = private unnamed_addr constant [13 x i8] c"MissingEndTag", align 1, !guid !9
@249 = private unnamed_addr constant [15 x i8] c"UnmatchedEndTag", align 1, !guid !9
@250 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs5XgW7KoffLW_12opendal_core, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXsr_NtCs6i54tJFfzR_5alloc6stringNtB5_6StringNtNtCsgxBkk5gSRhY_4core3fmt5Debug3fmt }>, align 8, !guid !9
@251 = private unnamed_addr constant [16 x i8] c"MismatchedEndTag", align 1, !guid !9
@252 = private unnamed_addr constant [8 x i8] c"expected", align 1, !guid !9
@253 = private unnamed_addr constant [5 x i8] c"found", align 1, !guid !9
@254 = private unnamed_addr constant [21 x i8] c"DoubleHyphenInComment", align 1, !guid !9
@255 = private unnamed_addr constant [17 x i8] c"UnclosedReference", align 1, !guid !9
@256 = private unnamed_addr constant [10 x i8] c"ExpectedEq", align 1, !guid !9
@257 = private unnamed_addr constant [13 x i8] c"ExpectedValue", align 1, !guid !9
@258 = private unnamed_addr constant [13 x i8] c"UnquotedValue", align 1, !guid !9
@259 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsgxBkk5gSRhY_4core3fmtRhNtB6_5Debug3fmtCs5XgW7KoffLW_12opendal_core }>, align 8, !guid !9
@260 = private unnamed_addr constant [13 x i8] c"ExpectedQuote", align 1, !guid !9
@261 = private unnamed_addr constant [10 x i8] c"Duplicated", align 1, !guid !9
@262 = private unnamed_addr constant [13 x i8] c"UnknownPrefix", align 1, !guid !9
@263 = private unnamed_addr constant [20 x i8] c"InvalidXmlPrefixBind", align 1, !guid !9
@264 = private unnamed_addr constant [22 x i8] c"InvalidXmlnsPrefixBind", align 1, !guid !9
@265 = private unnamed_addr constant [19 x i8] c"InvalidPrefixForXml", align 1, !guid !9
@266 = private unnamed_addr constant [21 x i8] c"InvalidPrefixForXmlns", align 1, !guid !9
@267 = private unnamed_addr constant [19 x i8] c"TooManyDeclarations", align 1, !guid !9
@268 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsgxBkk5gSRhY_4core3fmtRNtNtCs2GTOvRHBi2K_9quick_xml6errors11SyntaxErrorNtB6_5Debug3fmtCs5XgW7KoffLW_12opendal_core }>, align 8, !guid !9
@269 = private unnamed_addr constant [6 x i8] c"Syntax", align 1, !guid !9
@270 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsgxBkk5gSRhY_4core3fmtRNtNtCs2GTOvRHBi2K_9quick_xml6errors14IllFormedErrorNtB6_5Debug3fmtCs5XgW7KoffLW_12opendal_core }>, align 8, !guid !9
@271 = private unnamed_addr constant [9 x i8] c"IllFormed", align 1, !guid !9
@272 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsgxBkk5gSRhY_4core3fmtRNtNtNtCs2GTOvRHBi2K_9quick_xml6events10attributes9AttrErrorNtB6_5Debug3fmtCs5XgW7KoffLW_12opendal_core }>, align 8, !guid !9
@273 = private unnamed_addr constant [11 x i8] c"InvalidAttr", align 1, !guid !9
@274 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsgxBkk5gSRhY_4core3fmtRNtNtCs2GTOvRHBi2K_9quick_xml8encoding13EncodingErrorNtB6_5Debug3fmtCs5XgW7KoffLW_12opendal_core }>, align 8, !guid !9
@275 = private unnamed_addr constant [8 x i8] c"Encoding", align 1, !guid !9
@276 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsgxBkk5gSRhY_4core3fmtRNtNtCs2GTOvRHBi2K_9quick_xml6escape11EscapeErrorNtB6_5Debug3fmtCs5XgW7KoffLW_12opendal_core }>, align 8, !guid !9
@277 = private unnamed_addr constant [6 x i8] c"Escape", align 1, !guid !9
@278 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsgxBkk5gSRhY_4core3fmtRNtNtCs2GTOvRHBi2K_9quick_xml4name14NamespaceErrorNtB6_5Debug3fmtCs5XgW7KoffLW_12opendal_core }>, align 8, !guid !9
@279 = private unnamed_addr constant [9 x i8] c"Namespace", align 1, !guid !9
@280 = private unnamed_addr constant <{ [24 x i8], ptr }> <{ [24 x i8] c"\00\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs1g_NtCsgxBkk5gSRhY_4core3fmtRNtNtCs76KlaVGnJsc_4http3uri9ErrorKindNtB6_5Debug3fmtCs5XgW7KoffLW_12opendal_core }>, align 8, !guid !9
@281 = private unnamed_addr constant [10 x i8] c"InvalidUri", align 1, !guid !9
@282 = private unnamed_addr constant [40 x i8] c"description() is deprecated; use Display", align 1, !guid !9
@283 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 5494511953620010354 to ptr), ptr inttoptr (i64 -4776343494102263569 to ptr) }>, align 8, !guid !9
@284 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 1063907742594280704 to ptr), ptr inttoptr (i64 7545828684848696028 to ptr) }>, align 8, !guid !9
@285 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 -3199995276098229613 to ptr), ptr inttoptr (i64 -7931708608872835592 to ptr) }>, align 8, !guid !9
@286 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 6612041147075899116 to ptr), ptr inttoptr (i64 -708161387503766613 to ptr) }>, align 8, !guid !9
@287 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 -7266947339266083124 to ptr), ptr inttoptr (i64 1754576511291843616 to ptr) }>, align 8, !guid !9
@288 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 5563929419595574345 to ptr), ptr inttoptr (i64 8478964974589150749 to ptr) }>, align 8, !guid !9
@289 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 6723075258332300085 to ptr), ptr inttoptr (i64 -853682389614199312 to ptr) }>, align 8, !guid !9
@290 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 -6325931233724359252 to ptr), ptr inttoptr (i64 -4565625303631267914 to ptr) }>, align 8, !guid !9
@291 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 6281415163887597621 to ptr), ptr inttoptr (i64 -6633219615383724753 to ptr) }>, align 8, !guid !9
@292 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 -2580202938027771381 to ptr), ptr inttoptr (i64 8091106675726490040 to ptr) }>, align 8, !guid !9
@293 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 1032393129550380648 to ptr), ptr inttoptr (i64 195381440130390999 to ptr) }>, align 8, !guid !9
@294 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 -8542294606608648382 to ptr), ptr inttoptr (i64 8436525968986732068 to ptr) }>, align 8, !guid !9
@295 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 -6765758310508234244 to ptr), ptr inttoptr (i64 -1016404336702105799 to ptr) }>, align 8, !guid !9
@296 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 -7501252997736571147 to ptr), ptr inttoptr (i64 2296799922701359133 to ptr) }>, align 8, !guid !9
@297 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 4847104010753748550 to ptr), ptr inttoptr (i64 3349208512815379076 to ptr) }>, align 8, !guid !9
@298 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 4324997103406655370 to ptr), ptr inttoptr (i64 6833478763383864152 to ptr) }>, align 8, !guid !9
@299 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 -3751932670808681989 to ptr), ptr inttoptr (i64 4455666743259683992 to ptr) }>, align 8, !guid !9
@300 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 -583232365365972250 to ptr), ptr inttoptr (i64 9067768707089221732 to ptr) }>, align 8, !guid !9
@301 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 -403654964752858238 to ptr), ptr inttoptr (i64 -5233714507862534101 to ptr) }>, align 8, !guid !9
@302 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 -9168849354755389394 to ptr), ptr inttoptr (i64 -2716178000418447667 to ptr) }>, align 8, !guid !9
@303 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 6624478150216967101 to ptr), ptr inttoptr (i64 -3305720412680789372 to ptr) }>, align 8, !guid !9
@304 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 2668888908176936248 to ptr), ptr inttoptr (i64 -3467376049077564261 to ptr) }>, align 8, !guid !9
@305 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 2988490488236129369 to ptr), ptr inttoptr (i64 -3247653222631903442 to ptr) }>, align 8, !guid !9
@306 = private unnamed_addr constant [102 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/bytes-1.12.1/src/buf/buf_impl.rs\00", align 1, !guid !9
@307 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @306, [16 x i8] c"e\00\00\00\00\00\00\00\9A\04\00\00\18\00\00\00" }>, align 8, !guid !9
@308 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 390996575351875696 to ptr), ptr inttoptr (i64 8160234768363920918 to ptr) }>, align 8, !guid !9
@switch.table._RNvXs1g_NtCsgxBkk5gSRhY_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCs5XgW7KoffLW_12opendal_core = private unnamed_addr constant [6 x i8] c"\05\0C\0B\0B\04\0E", align 8
@switch.table._RNvXs1g_NtCsgxBkk5gSRhY_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCs5XgW7KoffLW_12opendal_core.126 = private unnamed_addr constant [6 x ptr] [ptr @238, ptr @239, ptr @240, ptr @241, ptr @242, ptr @243], align 8
@switch.table._RNvXsf_NtCs2GTOvRHBi2K_9quick_xml6errorsNtB5_11SyntaxErrorNtNtCsgxBkk5gSRhY_4core3fmt5Debug3fmt = private unnamed_addr constant [9 x i8] c"\11\0A\0F\0F\0F\0D\0B\22\22", align 8
@switch.table._RNvXsf_NtCs2GTOvRHBi2K_9quick_xml6errorsNtB5_11SyntaxErrorNtNtCsgxBkk5gSRhY_4core3fmt5Debug3fmt.127 = private unnamed_addr constant [9 x ptr] [ptr @214, ptr @215, ptr @216, ptr @217, ptr @218, ptr @219, ptr @220, ptr @221, ptr @222], align 8
@switch.table._RNvXsg_NtCs8HcOsDT3sMt_3url6parserNtB5_10ParseErrorNtNtCsgxBkk5gSRhY_4core3fmt5Debug3fmt = private unnamed_addr constant [10 x i8] c"\09\09\0B\12\12\16\16 \19\08", align 8
@switch.table._RNvXsg_NtCs8HcOsDT3sMt_3url6parserNtB5_10ParseErrorNtNtCsgxBkk5gSRhY_4core3fmt5Debug3fmt.128 = private unnamed_addr constant [10 x ptr] [ptr @225, ptr @226, ptr @227, ptr @228, ptr @229, ptr @230, ptr @231, ptr @232, ptr @233, ptr @234], align 8

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noalias noundef nonnull ptr @_RINvMNtCselJpgKOOZlr_6anyhow5errorNtB5_5Error9constructNtNtCs4CtJ3uPHEZZ_4jiff5error5ErrorECs5XgW7KoffLW_12opendal_core(ptr noundef %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !40 {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %0, ptr %i.c, align 8
  tail call void @_RNvCs1njKG4L9aB3_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #27, !noalias !41
  %i.d = tail call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCs1njKG4L9aB3_7___rustc12___rust_alloc(i64 noundef range(i64 0, 105) 64, i64 noundef range(i64 1, 9) 8) #27, !noalias !41 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %_RNvMNtCs6i54tJFfzR_5alloc5boxedINtB2_3BoxINtNtCselJpgKOOZlr_6anyhow5error9ErrorImplNtNtCs4CtJ3uPHEZZ_4jiff5error5ErrorEE3newCs5XgW7KoffLW_12opendal_core.exit, !prof !10

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs6i54tJFfzR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 64) #28
          to label %.noexc unwind label %bb.c, !noalias !41

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCselJpgKOOZlr_6anyhow5error9ErrorImplNtNtCs4CtJ3uPHEZZ_4jiff5error5ErrorEECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.a) #29
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #30
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.f

_RNvMNtCs6i54tJFfzR_5alloc5boxedINtB2_3BoxINtNtCselJpgKOOZlr_6anyhow5error9ErrorImplNtNtCs4CtJ3uPHEZZ_4jiff5error5ErrorEE3newCs5XgW7KoffLW_12opendal_core.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.d, ptr noundef nonnull align 8 dereferenceable(64) %i.a, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.d
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noalias noundef nonnull ptr @_RINvMNtCselJpgKOOZlr_6anyhow5errorNtB5_5Error9constructNtNtCs76KlaVGnJsc_4http3uri10InvalidUriECs5XgW7KoffLW_12opendal_core(i8 noundef range(i8 0, 12) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !48 {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i8 %0, ptr %i.c, align 8
  tail call void @_RNvCs1njKG4L9aB3_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #27, !noalias !49
  %i.d = tail call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCs1njKG4L9aB3_7___rustc12___rust_alloc(i64 noundef range(i64 0, 105) 64, i64 noundef range(i64 1, 9) 8) #27, !noalias !49 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %_RNvMNtCs6i54tJFfzR_5alloc5boxedINtB2_3BoxINtNtCselJpgKOOZlr_6anyhow5error9ErrorImplNtNtCs76KlaVGnJsc_4http3uri10InvalidUriEE3newCs5XgW7KoffLW_12opendal_core.exit, !prof !10

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs6i54tJFfzR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 64) #28
          to label %.noexc unwind label %bb.c, !noalias !49

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = load i64, ptr %i.b, align 8, !range !11, !alias.scope !50, !noundef !12
  %i.h = icmp eq i64 %i.g, 2
  br i1 %i.h, label %bb.d, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCselJpgKOOZlr_6anyhow5error9ErrorImplNtNtCs76KlaVGnJsc_4http3uri10InvalidUriEECs5XgW7KoffLW_12opendal_core.exit

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  invoke void @_RNvXs0_NtNtCs9k3SxhrAWiO_3std4sync9lazy_lockINtB5_8LazyLockNtNtB9_9backtrace7CaptureNCNvNtBX_6helper12lazy_resolve0ENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.i)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCselJpgKOOZlr_6anyhow5error9ErrorImplNtNtCs76KlaVGnJsc_4http3uri10InvalidUriEECs5XgW7KoffLW_12opendal_core.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCselJpgKOOZlr_6anyhow5error9ErrorImplNtNtCs76KlaVGnJsc_4http3uri10InvalidUriEECs5XgW7KoffLW_12opendal_core.exit: ; preds = %bb.c, %bb.d
  resume { ptr, i32 } %i.f

_RNvMNtCs6i54tJFfzR_5alloc5boxedINtB2_3BoxINtNtCselJpgKOOZlr_6anyhow5error9ErrorImplNtNtCs76KlaVGnJsc_4http3uri10InvalidUriEE3newCs5XgW7KoffLW_12opendal_core.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.d, ptr noundef nonnull align 8 dereferenceable(64) %i.a, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.d
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noalias noundef nonnull ptr @_RINvMNtCselJpgKOOZlr_6anyhow5errorNtB5_5Error9constructNtNtCs76KlaVGnJsc_4http5error5ErrorECs5XgW7KoffLW_12opendal_core(i8 noundef range(i8 0, 7) %0, i8 %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(48) %2) unnamed_addr #0 personality ptr @rust_eh_personality !guid !57 {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %2, i64 48, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %3 = zext nneg i8 %0 to i16
  %4 = freeze i8 %1
  %5 = zext i8 %4 to i16
  %6 = shl nuw i16 %5, 8
  %7 = or disjoint i16 %6, %3
  store i16 %7, ptr %i.c, align 8
  tail call void @_RNvCs1njKG4L9aB3_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #27, !noalias !58
  %i.d = tail call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCs1njKG4L9aB3_7___rustc12___rust_alloc(i64 noundef range(i64 0, 105) 64, i64 noundef range(i64 1, 9) 8) #27, !noalias !58 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %_RNvMNtCs6i54tJFfzR_5alloc5boxedINtB2_3BoxINtNtCselJpgKOOZlr_6anyhow5error9ErrorImplNtNtCs76KlaVGnJsc_4http5error5ErrorEE3newCs5XgW7KoffLW_12opendal_core.exit, !prof !10

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs6i54tJFfzR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 64) #28
          to label %.noexc unwind label %bb.c, !noalias !58

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = load i64, ptr %i.b, align 8, !range !11, !alias.scope !59, !noundef !12
  %i.h = icmp eq i64 %i.g, 2
  br i1 %i.h, label %bb.d, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCselJpgKOOZlr_6anyhow5error9ErrorImplNtNtCs76KlaVGnJsc_4http5error5ErrorEECs5XgW7KoffLW_12opendal_core.exit

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  invoke void @_RNvXs0_NtNtCs9k3SxhrAWiO_3std4sync9lazy_lockINtB5_8LazyLockNtNtB9_9backtrace7CaptureNCNvNtBX_6helper12lazy_resolve0ENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.i)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCselJpgKOOZlr_6anyhow5error9ErrorImplNtNtCs76KlaVGnJsc_4http5error5ErrorEECs5XgW7KoffLW_12opendal_core.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCselJpgKOOZlr_6anyhow5error9ErrorImplNtNtCs76KlaVGnJsc_4http5error5ErrorEECs5XgW7KoffLW_12opendal_core.exit: ; preds = %bb.c, %bb.d
  resume { ptr, i32 } %i.f

_RNvMNtCs6i54tJFfzR_5alloc5boxedINtB2_3BoxINtNtCselJpgKOOZlr_6anyhow5error9ErrorImplNtNtCs76KlaVGnJsc_4http5error5ErrorEE3newCs5XgW7KoffLW_12opendal_core.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.d, ptr noundef nonnull align 8 dereferenceable(64) %i.a, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.d
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noalias noundef nonnull ptr @_RINvMNtCselJpgKOOZlr_6anyhow5errorNtB5_5Error9constructNtNtCs76KlaVGnJsc_4http6status17InvalidStatusCodeECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(48) %0) unnamed_addr #0 personality ptr @rust_eh_personality !guid !66 {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @3, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %0, i64 48, i1 false)
  tail call void @_RNvCs1njKG4L9aB3_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #27, !noalias !67
  %i.c = tail call noundef align 8 dereferenceable_or_null(56) ptr @_RNvCs1njKG4L9aB3_7___rustc12___rust_alloc(i64 noundef range(i64 0, 105) 56, i64 noundef range(i64 1, 9) 8) #27, !noalias !67 ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %_RNvMNtCs6i54tJFfzR_5alloc5boxedINtB2_3BoxINtNtCselJpgKOOZlr_6anyhow5error9ErrorImplNtNtCs76KlaVGnJsc_4http6status17InvalidStatusCodeEE3newCs5XgW7KoffLW_12opendal_core.exit, !prof !10

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs6i54tJFfzR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 56) #28
          to label %.noexc unwind label %bb.c, !noalias !67

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = load i64, ptr %i.b, align 8, !range !11, !alias.scope !68, !noundef !12
  %i.g = icmp eq i64 %i.f, 2
  br i1 %i.g, label %bb.d, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCselJpgKOOZlr_6anyhow5error9ErrorImplNtNtCs76KlaVGnJsc_4http6status17InvalidStatusCodeEECs5XgW7KoffLW_12opendal_core.exit

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  invoke void @_RNvXs0_NtNtCs9k3SxhrAWiO_3std4sync9lazy_lockINtB5_8LazyLockNtNtB9_9backtrace7CaptureNCNvNtBX_6helper12lazy_resolve0ENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.h)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCselJpgKOOZlr_6anyhow5error9ErrorImplNtNtCs76KlaVGnJsc_4http6status17InvalidStatusCodeEECs5XgW7KoffLW_12opendal_core.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCselJpgKOOZlr_6anyhow5error9ErrorImplNtNtCs76KlaVGnJsc_4http6status17InvalidStatusCodeEECs5XgW7KoffLW_12opendal_core.exit: ; preds = %bb.c, %bb.d
  resume { ptr, i32 } %i.e

_RNvMNtCs6i54tJFfzR_5alloc5boxedINtB2_3BoxINtNtCselJpgKOOZlr_6anyhow5error9ErrorImplNtNtCs76KlaVGnJsc_4http6status17InvalidStatusCodeEE3newCs5XgW7KoffLW_12opendal_core.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.c, ptr noundef nonnull align 8 dereferenceable(56) %i.a, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.c
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noalias noundef nonnull ptr @_RINvMNtCselJpgKOOZlr_6anyhow5errorNtB5_5Error9constructNtNtCs8HcOsDT3sMt_3url6parser10ParseErrorECs5XgW7KoffLW_12opendal_core(i8 noundef range(i8 0, 10) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !75 {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @4, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i8 %0, ptr %i.c, align 8
  tail call void @_RNvCs1njKG4L9aB3_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #27, !noalias !76
  %i.d = tail call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCs1njKG4L9aB3_7___rustc12___rust_alloc(i64 noundef range(i64 0, 105) 64, i64 noundef range(i64 1, 9) 8) #27, !noalias !76 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %_RNvMNtCs6i54tJFfzR_5alloc5boxedINtB2_3BoxINtNtCselJpgKOOZlr_6anyhow5error9ErrorImplNtNtCs8HcOsDT3sMt_3url6parser10ParseErrorEE3newCs5XgW7KoffLW_12opendal_core.exit, !prof !10

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs6i54tJFfzR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 64) #28
          to label %.noexc unwind label %bb.c, !noalias !76

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = load i64, ptr %i.b, align 8, !range !11, !alias.scope !77, !noundef !12
  %i.h = icmp eq i64 %i.g, 2
  br i1 %i.h, label %bb.d, label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCselJpgKOOZlr_6anyhow5error9ErrorImplNtNtCs8HcOsDT3sMt_3url6parser10ParseErrorEECs5XgW7KoffLW_12opendal_core.exit

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  invoke void @_RNvXs0_NtNtCs9k3SxhrAWiO_3std4sync9lazy_lockINtB5_8LazyLockNtNtB9_9backtrace7CaptureNCNvNtBX_6helper12lazy_resolve0ENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.i)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCselJpgKOOZlr_6anyhow5error9ErrorImplNtNtCs8HcOsDT3sMt_3url6parser10ParseErrorEECs5XgW7KoffLW_12opendal_core.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCselJpgKOOZlr_6anyhow5error9ErrorImplNtNtCs8HcOsDT3sMt_3url6parser10ParseErrorEECs5XgW7KoffLW_12opendal_core.exit: ; preds = %bb.c, %bb.d
  resume { ptr, i32 } %i.f

_RNvMNtCs6i54tJFfzR_5alloc5boxedINtB2_3BoxINtNtCselJpgKOOZlr_6anyhow5error9ErrorImplNtNtCs8HcOsDT3sMt_3url6parser10ParseErrorEE3newCs5XgW7KoffLW_12opendal_core.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.d, ptr noundef nonnull align 8 dereferenceable(64) %i.a, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.d
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noalias noundef nonnull ptr @_RINvMNtCselJpgKOOZlr_6anyhow5errorNtB5_5Error9constructNtNtCsdMEyVxnODSb_10serde_json5error5ErrorECs5XgW7KoffLW_12opendal_core(ptr noalias noundef nonnull align 8 %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !80 {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @5, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %0, ptr %i.c, align 8
  tail call void @_RNvCs1njKG4L9aB3_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #27, !noalias !81
  %i.d = tail call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCs1njKG4L9aB3_7___rustc12___rust_alloc(i64 noundef range(i64 0, 105) 64, i64 noundef range(i64 1, 9) 8) #27, !noalias !81 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %_RNvMNtCs6i54tJFfzR_5alloc5boxedINtB2_3BoxINtNtCselJpgKOOZlr_6anyhow5error9ErrorImplNtNtCsdMEyVxnODSb_10serde_json5error5ErrorEE3newCs5XgW7KoffLW_12opendal_core.exit, !prof !10

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs6i54tJFfzR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 64) #28
          to label %.noexc unwind label %bb.c, !noalias !81

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCselJpgKOOZlr_6anyhow5error9ErrorImplNtNtCsdMEyVxnODSb_10serde_json5error5ErrorEECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.a) #29
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #30
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.f

_RNvMNtCs6i54tJFfzR_5alloc5boxedINtB2_3BoxINtNtCselJpgKOOZlr_6anyhow5error9ErrorImplNtNtCsdMEyVxnODSb_10serde_json5error5ErrorEE3newCs5XgW7KoffLW_12opendal_core.exit: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.d, ptr noundef nonnull align 8 dereferenceable(64) %i.a, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.d
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc noalias noundef nonnull ptr @_RINvMNtCselJpgKOOZlr_6anyhow5errorNtB5_5Error9constructNtNtNtCs2GTOvRHBi2K_9quick_xml6errors9serialize7DeErrorECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(48) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !84 {
bb.a:
  %i.a = alloca [104 x i8], align 8               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @6, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef nonnull align 8 dereferenceable(48) %0, i64 48, i1 false)
  tail call void @_RNvCs1njKG4L9aB3_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #27, !noalias !85
  %i.d = tail call noundef align 8 dereferenceable_or_null(104) ptr @_RNvCs1njKG4L9aB3_7___rustc12___rust_alloc(i64 noundef range(i64 0, 105) 104, i64 noundef range(i64 1, 9) 8) #27, !noalias !85 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.b, label %_RNvMNtCs6i54tJFfzR_5alloc5boxedINtB2_3BoxINtNtCselJpgKOOZlr_6anyhow5error9ErrorImplNtNtNtCs2GTOvRHBi2K_9quick_xml6errors9serialize7DeErrorEE3newCs5XgW7KoffLW_12opendal_core.exit, !prof !10

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs6i54tJFfzR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 104) #28
          to label %.noexc unwind label %bb.c, !noalias !85

.noexc:                                           ; preds = %bb.b
  unreachable

end_hunk_0
begin_hunk_1_@_RINvXs2_NtNtCs5XgW7KoffLW_12opendal_core3raw10serde_utilNtB6_4PairNtNtCskkYVyhWgx5W_10serde_core2de12Deserializer15deserialize_anyNtNtB14_11ignored_any10IgnoredAnyEBa_:bb.a
bb.g:                                             ; preds = %.body
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #30
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs2_NtNtCs5XgW7KoffLW_12opendal_core3raw10serde_utilNtB6_4PairNtNtCskkYVyhWgx5W_10serde_core2de12Deserializer15deserialize_anyNtNtB14_5impls13StringVisitorEBa_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(48) %1) unnamed_addr #1 personality ptr @rust_eh_personality !guid !991 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  invoke void @_RNvXso_NtCs6i54tJFfzR_5alloc3vecINtB5_3VechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs5XgW7KoffLW_12opendal_core.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
          to label %_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc7raw_vec6RawVechEECs5XgW7KoffLW_12opendal_core.exit.i.i unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc7raw_vec6RawVechEECs5XgW7KoffLW_12opendal_core.exit.i.i: ; preds = %bb.b
  resume { ptr, i32 } %i.b

_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtCs6i54tJFfzR_5alloc6string6StringECs5XgW7KoffLW_12opendal_core.exit: ; preds = %bb.a
  tail call void @_RNvXs1_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsgxBkk5gSRhY_4core3ops4drop4Drop4dropCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs2_NtNtCs5XgW7KoffLW_12opendal_core3raw10serde_utilNtB6_4PairNtNtCskkYVyhWgx5W_10serde_core2de12Deserializer18deserialize_optionINtNtB14_5impls13OptionVisitorNtNtCs6i54tJFfzR_5alloc6string6StringEEBa_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 8)) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(48) %1) unnamed_addr #1 personality ptr @rust_eh_personality !guid !997 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [48 x i8], align 8                ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.d = load i64, ptr %i.c, align 8, !noundef !12 ; 2 uses
  %i.e = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.e)
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %bb.d, label %.noexc

.noexc:                                           ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !998)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !999
  call void @_RINvXs6_NtNtCskkYVyhWgx5W_10serde_core2de5implsNtNtCs6i54tJFfzR_5alloc6string6StringNtB8_11Deserialize11deserializeNtNtNtCs5XgW7KoffLW_12opendal_core3raw10serde_util4PairEB1V_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.b), !noalias !998
  %i.g = load i64, ptr %i.a, align 8, !range !21, !noalias !999, !noundef !12
  %i.h = icmp eq i64 %i.g, -1
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.noexc
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !noalias !999, !nonnull !12, !noundef !12
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.l = load i64, ptr %i.k, align 8, !noalias !999, !noundef !12
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.j, ptr %i.m, align 8, !alias.scope !998
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.l, ptr %i.n, align 8, !alias.scope !998
  store i64 -2, ptr %0, align 8, !alias.scope !998
  br label %bb.f

bb.c:                                             ; preds = %.noexc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !1000
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  store i64 -1, ptr %0, align 8, !alias.scope !1001
  tail call fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core3raw10serde_util4PairEBH_(ptr noalias nofree noundef align 8 dereferenceable(48) %1)
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d
  ret void

bb.f:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !999
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.e
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RINvXs6_NtCsdMEyVxnODSb_10serde_json6numberNtB6_6NumberNtNtCskkYVyhWgx5W_10serde_core2de12Deserializer15deserialize_anyNtNvXs1a_NtBT_5implsjNtBT_11Deserialize11deserialize16PrimitiveVisitorECs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(16) %0) unnamed_addr #1 !guid !1002 {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = load i64, ptr %0, align 8, !range !20, !noundef !12
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  switch i64 %i.c, label %default.unreachable1 [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.f
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.e = load i64, ptr %i.d, align 8, !noundef !12
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = insertvalue { i64, ptr } { i64 0, ptr poison }, ptr %i.f, 1
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.h = load i64, ptr %i.d, align 8, !noundef !12 ; 3 uses
  %i.i = icmp sgt i64 %i.h, -1
  br i1 %i.i, label %bb.e, label %bb.d, !prof !22

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.h, ptr %i.j, align 8
  store i8 2, ptr %i.b, align 8
  %i.k = call noundef nonnull align 8 ptr @_RNvXs6_NtCsdMEyVxnODSb_10serde_json5errorNtB5_5ErrorNtNtCskkYVyhWgx5W_10serde_core2de5Error13invalid_value(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @90)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvXNvXs1a_NtNtCskkYVyhWgx5W_10serde_core2de5implsjNtBc_11Deserialize11deserializeNtB3_16PrimitiveVisitorNtBc_7Visitor9visit_i64NtNtCsdMEyVxnODSb_10serde_json5error5ErrorECs5XgW7KoffLW_12opendal_core.exit

bb.e:                                             ; preds = %bb.c
  %i.l = inttoptr i64 %i.h to ptr
  br label %_RINvXNvXs1a_NtNtCskkYVyhWgx5W_10serde_core2de5implsjNtBc_11Deserialize11deserializeNtB3_16PrimitiveVisitorNtBc_7Visitor9visit_i64NtNtCsdMEyVxnODSb_10serde_json5error5ErrorECs5XgW7KoffLW_12opendal_core.exit

_RINvXNvXs1a_NtNtCskkYVyhWgx5W_10serde_core2de5implsjNtBc_11Deserialize11deserializeNtB3_16PrimitiveVisitorNtBc_7Visitor9visit_i64NtNtCsdMEyVxnODSb_10serde_json5error5ErrorECs5XgW7KoffLW_12opendal_core.exit: ; preds = %bb.d, %bb.e
  %.sroa.3.0.i = phi ptr [ %i.l, %bb.e ], [ %i.k, %bb.d ]
  %.sroa.0.0.i = phi i64 [ 0, %bb.e ], [ 1, %bb.d ]
  %i.m = insertvalue { i64, ptr } poison, i64 %.sroa.0.0.i, 0
  %i.n = insertvalue { i64, ptr } %i.m, ptr %.sroa.3.0.i, 1
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  %i.o = load double, ptr %i.d, align 8, !noundef !12
  %i.p = tail call { i64, ptr } @_RINvYNtNvXs1a_NtNtCskkYVyhWgx5W_10serde_core2de5implsjNtBe_11Deserialize11deserialize16PrimitiveVisitorNtBe_7Visitor9visit_f64NtNtCsdMEyVxnODSb_10serde_json5error5ErrorECs5XgW7KoffLW_12opendal_core(double noundef %i.o)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvXNvXs1a_NtNtCskkYVyhWgx5W_10serde_core2de5implsjNtBc_11Deserialize11deserializeNtB3_16PrimitiveVisitorNtBc_7Visitor9visit_i64NtNtCsdMEyVxnODSb_10serde_json5error5ErrorECs5XgW7KoffLW_12opendal_core.exit, %bb.b
  %.merged = phi { i64, ptr } [ %i.g, %bb.b ], [ %i.n, %_RINvXNvXs1a_NtNtCskkYVyhWgx5W_10serde_core2de5implsjNtBc_11Deserialize11deserializeNtB3_16PrimitiveVisitorNtBc_7Visitor9visit_i64NtNtCsdMEyVxnODSb_10serde_json5error5ErrorECs5XgW7KoffLW_12opendal_core.exit ], [ %i.p, %bb.f ]
  ret { i64, ptr } %.merged
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs8_NtCsfBDUjroi3FF_9hashbrown3setINtB6_7HashSetNtNtCs6i54tJFfzR_5alloc6string6StringNtNtNtCs9k3SxhrAWiO_3std4hash6random11RandomStateEINtNtNtNtCsgxBkk5gSRhY_4core4iter6traits7collect6ExtendBO_E6extendINtNtNtB2k_8adapters6cloned6ClonedINtNtNtNtB1v_11collections4hash3map4KeysBO_FG_RL0_NtNtNtNtCs5XgW7KoffLW_12opendal_core5types8operator3uri11OperatorUriEINtNtB2m_6result6ResultNtNtB4H_8operator8OperatorNtNtB4J_5error5ErrorEEEEB4L_(ptr noalias nofree noundef align 8 dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %1) unnamed_addr #1 !guid !1006 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(40) %1, i64 40, i1 false), !alias.scope !1007
  call void @_RINvXs1i_NtCsfBDUjroi3FF_9hashbrown3mapINtB7_7HashMapNtNtCs6i54tJFfzR_5alloc6string6StringuNtNtNtCs9k3SxhrAWiO_3std4hash6random11RandomStateEINtNtNtNtCsgxBkk5gSRhY_4core4iter6traits7collect6ExtendTBP_uEE6extendINtNtNtB2m_8adapters3map3MapINtNtB3r_6cloned6ClonedINtNtNtNtB1x_11collections4hash3map4KeysBP_FG_RL0_NtNtNtNtCs5XgW7KoffLW_12opendal_core5types8operator3uri11OperatorUriEINtNtB2o_6result6ResultNtNtB53_8operator8OperatorNtNtB55_5error5ErrorEEENCINvXs8_NtB9_3setINtB7p_7HashSetBP_B1r_EIB2g_BP_E6extendB3O_E0EEB57_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCNvXs3_NtNtNtNtCs5XgW7KoffLW_12opendal_core3raw3oio4read3apiNtNtNtBf_5types6buffer6BufferNtB7_10ReadStream4read0Bf_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([88 x i8]) align 8 captures(none) dereferenceable(88) %0, ptr nofree noundef nonnull align 8 captures(none) %1, ptr noalias nofree readnone align 8 captures(none) %2) unnamed_addr #5 personality ptr @rust_eh_personality !guid !1010 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !range !32, !noundef !12
  switch i8 %i.b, label %default.unreachable2 [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
  ]

default.unreachable2:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %1, align 8, !nonnull !12, !align !14, !noundef !12 ; 5 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.2.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %i.c, i64 40, i1 false)
  store ptr null, ptr %i.c, align 8, !alias.scope !1011
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @19, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !1011
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !1011
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx.i, i8 0, i64 16, i1 false), !alias.scope !1011
  store i64 -1, ptr %0, align 8
  store i8 1, ptr %i.a, align 8
  ret void

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @92) #32
  unreachable

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @92) #32
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNCNvYNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferNtNtNtNtNtBa_3raw3oio4read3api10ReadStream8read_all0Ba_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([88 x i8]) align 8 captures(none) dereferenceable(88) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree readnone align 8 captures(none) %2) unnamed_addr #5 personality ptr @rust_eh_personality !guid !1045 {
bb.a:
  %i.a = alloca [136 x i8], align 8               ; 10 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [40 x i8], align 8                ; 10 uses
  %i.d = alloca [40 x i8], align 8                ; 9 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 49
  %i.f = load i8, ptr %i.e, align 1, !range !25, !noundef !12
  switch i8 %i.f, label %default.unreachable77 [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
  ]

default.unreachable77:                            ; preds = %bb.e, %bb.a
  unreachable

.body:                                            ; preds = %bb.v, %.thread
  store i16 512, ptr %i.as, align 8
  resume { ptr, i32 } %.pn15.pn

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 0, ptr %i.h, align 8, !alias.scope !1046
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr inttoptr (i64 8 to ptr), ptr %i.i, align 8, !alias.scope !1046
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i64 0, ptr %i.j, align 8, !alias.scope !1046
  store i8 1, ptr %i.g, align 8
  br label %.thread78

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @93) #32
  unreachable

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @93) #32
  unreachable

bb.e:                                             ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !range !32, !noalias !1047
  switch i8 %.pre, label %default.unreachable77 [
    i8 0, label %bb.h
    i8 1, label %bb.f
    i8 2, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @92) #32
          to label %.noexc unwind label %bb.t, !noalias !1047

.noexc:                                           ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.e
  invoke void @_RNvNtNtCsgxBkk5gSRhY_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @92) #32
          to label %.noexc20 unwind label %bb.t, !noalias !1047

.noexc20:                                         ; preds = %bb.g
  unreachable

common.ret:                                       ; preds = %bb.s
  %i.k = extractvalue { ptr, i64 } %i.aq, 0
  %i.l = extractvalue { ptr, i64 } %i.aq, 1
  %i.m = load i64, ptr %i.b, align 8, !noalias !1048, !noundef !12
  %.sroa.3.sroa.5.0..sroa.3.0..sroa_idx4.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3.sroa.5.0..sroa.3.0..sroa_idx4.sroa_idx, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1048
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1048
  store i64 -1, ptr %0, align 8
  %.sroa.3.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %.sroa.3.0..sroa_idx4, align 8
  %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx4.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.l, ptr %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx4.sroa_idx, align 8
  %.sroa.3.sroa.4.0..sroa.3.0..sroa_idx4.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.m, ptr %.sroa.3.sroa.4.0..sroa.3.0..sroa_idx4.sroa_idx, align 8
  store i16 256, ptr %i.al, align 8
  ret void

bb.h:                                             ; preds = %.thread78, %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load ptr, ptr %1, align 8, !noalias !1047, !nonnull !12, !align !14, !noundef !12 ; 6 uses
  %.sroa.7.sroa.0.0.copyload = load ptr, ptr %i.o, align 8 ; 4 uses
  %.sroa.7.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %.sroa.7.sroa.5.0.copyload = load i64, ptr %.sroa.7.sroa.5.0..sroa_idx, align 8 ; 3 uses
  %.sroa.7.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  %.sroa.7.sroa.6.0.copyload = load i64, ptr %.sroa.7.sroa.6.0..sroa_idx, align 8 ; 4 uses
  %.sroa.7.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 24 ; 2 uses
  %.sroa.7.sroa.7.0.copyload = load i64, ptr %.sroa.7.sroa.7.0..sroa_idx, align 8 ; 4 uses
  %.sroa.7.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %.sroa.7.sroa.8.0.copyload = load i64, ptr %.sroa.7.sroa.8.0..sroa_idx, align 8 ; 3 uses
  store ptr null, ptr %i.o, align 8, !alias.scope !1049, !noalias !1047
  store ptr @19, ptr %.sroa.7.sroa.5.0..sroa_idx, align 8, !alias.scope !1049, !noalias !1047
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.7.sroa.6.0..sroa_idx, align 8, !alias.scope !1049, !noalias !1047
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.sroa.7.0..sroa_idx, i8 0, i64 16, i1 false), !alias.scope !1049, !noalias !1047
  store i8 1, ptr %i.n, align 8, !noalias !1047
  %.not.i = icmp eq ptr %.sroa.7.sroa.0.0.copyload, null ; 2 uses
  %.sroa.0.0.i.sroa.speculated = select i1 %.not.i, i64 %.sroa.7.sroa.7.0.copyload, i64 %.sroa.7.sroa.6.0.copyload
  %i.p = icmp eq i64 %.sroa.0.0.i.sroa.speculated, 0
  br i1 %i.p, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %.sroa.7.sroa.0.0.copyload, ptr %i.c, align 8
  %.sroa.10.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %.sroa.7.sroa.5.0.copyload, ptr %.sroa.10.8..sroa_idx, align 8
  %.sroa.1064.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %.sroa.7.sroa.6.0.copyload, ptr %.sroa.1064.8..sroa_idx, align 8
  %.sroa.11.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 %.sroa.7.sroa.7.0.copyload, ptr %.sroa.11.8..sroa_idx, align 8
  %.sroa.12.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i64 %.sroa.7.sroa.8.0.copyload, ptr %.sroa.12.8..sroa_idx, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !1050, !noundef !12 ; 3 uses
  %i.t = load i64, ptr %i.q, align 8, !range !18, !alias.scope !1050, !noundef !12
  %i.u = icmp eq i64 %i.s, %i.t
  br i1 %i.u, label %bb.j, label %bb.q

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvMs4_NtCs6i54tJFfzR_5alloc7raw_vecINtB5_6RawVecNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferE8grow_oneBR_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %bb.q unwind label %bb.k, !noalias !1051

bb.k:                                             ; preds = %bb.j
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.c) #29
          to label %.body22 unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #30
  unreachable

bb.m:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %.sroa.7.sroa.0.0.copyload, ptr %i.d, align 8
  %.sroa.10.8..sroa_idx62 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %.sroa.7.sroa.5.0.copyload, ptr %.sroa.10.8..sroa_idx62, align 8
  %.sroa.1064.8..sroa_idx66 = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %.sroa.7.sroa.6.0.copyload, ptr %.sroa.1064.8..sroa_idx66, align 8
  %.sroa.11.8..sroa_idx69 = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 %.sroa.7.sroa.7.0.copyload, ptr %.sroa.11.8..sroa_idx69, align 8
  %.sroa.12.8..sroa_idx71 = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i64 %.sroa.7.sroa.8.0.copyload, ptr %.sroa.12.8..sroa_idx71, align 8
  br i1 %.not.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.x = inttoptr i64 %.sroa.7.sroa.6.0.copyload to ptr
  %i.y = inttoptr i64 %.sroa.7.sroa.5.0.copyload to ptr
  %i.z = inttoptr i64 %.sroa.7.sroa.8.0.copyload to ptr
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !noalias !1052, !nonnull !12, !noundef !12
  invoke void %i.ab(ptr noundef %i.z, ptr noundef %i.x, i64 noundef %.sroa.7.sroa.7.0.copyload)
          to label %bb.s unwind label %bb.r, !noalias !1052, !inline_history !2

bb.o:                                             ; preds = %bb.m
  %i.ac = atomicrmw add ptr %.sroa.7.sroa.0.0.copyload, i64 -1 release, align 8, !noalias !1053
  %i.ad = icmp eq i64 %i.ac, 1
  br i1 %i.ad, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  fence acquire
  invoke void @_RNvMsn_NtCs6i54tJFfzR_5alloc4syncINtB5_3ArcSNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesE9drop_slowCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.d) #31
          to label %bb.s unwind label %bb.r

.body22:                                          ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %.thread

bb.q:                                             ; preds = %bb.j, %bb.i
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.af = load ptr, ptr %i.ae, align 8, !alias.scope !1050, !nonnull !12, !noundef !12
  %i.ag = getelementptr inbounds nuw [40 x i8], ptr %i.af, i64 %i.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ag, ptr noundef nonnull align 8 dereferenceable(40) %i.c, i64 40, i1 false)
  %i.ah = add i64 %i.s, 1
  store i64 %i.ah, ptr %i.r, align 8, !alias.scope !1050
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %.thread78

.thread78:                                        ; preds = %bb.b, %bb.q
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.aj = load ptr, ptr %i.ai, align 8, !nonnull !12, !align !14, !noundef !12
  store ptr %i.aj, ptr %1, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i8 0, ptr %.sroa.9.0..sroa_idx, align 8
  br label %bb.h

bb.r:                                             ; preds = %bb.p, %bb.n
  %i.ak = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %.thread

bb.s:                                             ; preds = %bb.o, %bb.n, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  store i8 0, ptr %i.al, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.049.0.copyload = load i64, ptr %i.am, align 8
  %.sroa.550.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.550.0.copyload = load ptr, ptr %.sroa.550.0..sroa_idx, align 8, !nonnull !12, !noundef !12 ; 3 uses
  %.sroa.651.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.651.0.copyload = load i64, ptr %.sroa.651.0..sroa_idx, align 8 ; 2 uses
  %i.an = icmp ult i64 %.sroa.651.0.copyload, 230584300921369396
  call void @llvm.assume(i1 %i.an)
  %i.ao = getelementptr inbounds nuw [40 x i8], ptr %.sroa.550.0.copyload, i64 %.sroa.651.0.copyload
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1048
  store i64 0, ptr %i.b, align 8, !noalias !1048
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1048
  call void @llvm.experimental.noalias.scope.decl(metadata !1054)
  store i64 0, ptr %i.a, align 8, !alias.scope !1055, !noalias !1056
  %.sroa.543.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i64 0, ptr %.sroa.543.0..sroa_idx, align 8, !alias.scope !1055, !noalias !1056
  %.sroa.644.sroa.4.0..sroa.644.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  store ptr %.sroa.550.0.copyload, ptr %.sroa.644.sroa.4.0..sroa.644.0..sroa_idx.sroa_idx, align 8, !alias.scope !1055, !noalias !1056
  %.sroa.644.sroa.5.0..sroa.644.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  store ptr %.sroa.550.0.copyload, ptr %.sroa.644.sroa.5.0..sroa.644.0..sroa_idx.sroa_idx, align 8, !alias.scope !1055, !noalias !1056
  %.sroa.644.sroa.6.0..sroa.644.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  store i64 %.sroa.049.0.copyload, ptr %.sroa.644.sroa.6.0..sroa.644.0..sroa_idx.sroa_idx, align 8, !alias.scope !1055, !noalias !1056
  %.sroa.644.sroa.7.0..sroa.644.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  store ptr %i.ao, ptr %.sroa.644.sroa.7.0..sroa.644.0..sroa_idx.sroa_idx, align 8, !alias.scope !1055, !noalias !1056
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  store ptr %i.b, ptr %i.ap, align 8, !alias.scope !1057, !noalias !1048
  %i.aq = invoke { ptr, i64 } @_RNvXs1h_NtCs6i54tJFfzR_5alloc4syncINtNtNtNtCsgxBkk5gSRhY_4core4iter8adapters7inspect7InspectINtNtBB_7flatten7FlattenINtNtNtB8_3vec9into_iter8IntoIterNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEENCINvXsa_B2p_B2n_INtNtNtBD_6traits7collect12FromIteratorNtNtCsk2Y6yuwWMc1_5bytes5bytes5BytesE9from_iterB1s_E0EINtB6_10ToArcSliceB4b_E12to_arc_sliceB2t_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(136) %i.a)
          to label %common.ret unwind label %bb.t, !noalias !1048 ; 2 uses

bb.t:                                             ; preds = %bb.f, %bb.g, %bb.s
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %.thread

.thread:                                          ; preds = %bb.r, %.body22, %bb.t
  %.pn15.pn = phi { ptr, i32 } [ %i.ar, %bb.t ], [ %i.ak, %bb.r ], [ %i.v, %.body22 ]
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.at = load i8, ptr %i.as, align 8, !range !23, !noundef !12
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %bb.v, label %.body

bb.u:                                             ; preds = %bb.v
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsgxBkk5gSRhY_4core9panicking16panic_in_cleanup() #30
  unreachable

bb.v:                                             ; preds = %.thread
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 16
  invoke fastcc void @_RINvNtCsgxBkk5gSRhY_4core3ptr9drop_glueINtNtCs6i54tJFfzR_5alloc3vec3VecNtNtNtCs5XgW7KoffLW_12opendal_core5types6buffer6BufferEEB1d_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.aw) #29
          to label %.body unwind label %bb.u
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtCs5XgW7KoffLW_12opendal_core3raw10serde_utilNtB2_18ConfigDeserializer3new(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([120 x i8]) align 8 captures(none) dereferenceable(120) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #1 !guid !1058 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @_RNvXsE_NtCsfBDUjroi3FF_9hashbrown3mapINtB5_7HashMapNtNtCs6i54tJFfzR_5alloc6string6StringBN_NtNtNtCs9k3SxhrAWiO_3std4hash6random11RandomStateENtNtNtNtCsgxBkk5gSRhY_4core4iter6traits7collect12IntoIterator9into_iterCs5XgW7KoffLW_12opendal_core(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %.sroa.0.sroa.5.0..sroa_idx, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 -1, ptr %0, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef ptr @_RNvMNtNtNtCs9k1U6oT1TZJ_5tokio7runtime4task4listINtB2_10OwnedTasksINtNtCs6i54tJFfzR_5alloc4sync3ArcNtNtNtB6_9scheduler14current_thread6HandleEE10bind_innerCs5XgW7KoffLW_12opendal_core(ptr noundef nonnull align 8 %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #1 personality ptr @rust_eh_personality !guid !1067 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [40 x i8], align 8                ; 8 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
end_hunk_1
