Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pingora-rs/original/pingora_header_serde-ef6b1e1594b0ba64.pingora_header_serde.dcb37403e926642f-cgu.1?download=true
inline.NumInlined: 183
inline.NumDeleted: 86
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@0 = private unnamed_addr constant [13 x i8] c"Accept-Ranges", align 1
@1 = private unnamed_addr constant [3 x i8] c"Age", align 1
@2 = private unnamed_addr constant [13 x i8] c"Cache-Control", align 1
@3 = private unnamed_addr constant [10 x i8] c"Connection", align 1
@4 = private unnamed_addr constant [16 x i8] c"Content-Encoding", align 1
@5 = private unnamed_addr constant [14 x i8] c"Content-Length", align 1
@6 = private unnamed_addr constant [12 x i8] c"Content-Type", align 1
@7 = private unnamed_addr constant [4 x i8] c"Date", align 1
@8 = private unnamed_addr constant [4 x i8] c"Host", align 1
@9 = private unnamed_addr constant [6 x i8] c"Server", align 1
@10 = private unnamed_addr constant [10 x i8] c"Set-Cookie", align 1
@11 = private unnamed_addr constant [17 x i8] c"Transfer-Encoding", align 1
@12 = private unnamed_addr constant [2 x i8] c": ", align 1
@13 = private unnamed_addr constant [2 x i8] c"\0D\0A", align 1
@14 = private unnamed_addr constant [42 x i8] c"'decompress header, frame_content_size: \C0\00", align 1
@15 = private unnamed_addr constant [32 x i8] c"pingora-header-serde/src/lib.rs\00", align 1
@16 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @15, [16 x i8] c"\1F\00\00\00\00\00\00\00\E0\00\00\006\00\00\00" }>, align 8
@17 = private unnamed_addr constant <{ ptr, [8 x i8], ptr, [8 x i8] }> <{ ptr inttoptr (i64 1 to ptr), [8 x i8] zeroinitializer, ptr inttoptr (i64 1 to ptr), [8 x i8] zeroinitializer }>, align 8
@18 = private unnamed_addr constant [30 x i8] c"incomplete uncompressed header", align 1
@19 = private unnamed_addr constant [58 x i8] c"+parsing failed on uncompressed header, len=\C0\0A, content=\C0\00", align 1
@20 = private unnamed_addr constant [9 x i8] c"HTTP/1.0 ", align 1
@21 = private unnamed_addr constant [9 x i8] c"HTTP/1.1 ", align 1
@22 = private unnamed_addr constant [2700 x i8] c"100101102103104105106107108109110111112113114115116117118119120121122123124125126127128129130131132133134135136137138139140141142143144145146147148149150151152153154155156157158159160161162163164165166167168169170171172173174175176177178179180181182183184185186187188189190191192193194195196197198199200201202203204205206207208209210211212213214215216217218219220221222223224225226227228229230231232233234235236237238239240241242243244245246247248249250251252253254255256257258259260261262263264265266267268269270271272273274275276277278279280281282283284285286287288289290291292293294295296297298299300301302303304305306307308309310311312313314315316317318319320321322323324325326327328329330331332333334335336337338339340341342343344345346347348349350351352353354355356357358359360361362363364365366367368369370371372373374375376377378379380381382383384385386387388389390391392393394395396397398399400401402403404405406407408409410411412413414415416417418419420421422423424425426427428429430431432433434435436437438439440441442443444445446447448449450451452453454455456457458459460461462463464465466467468469470471472473474475476477478479480481482483484485486487488489490491492493494495496497498499500501502503504505506507508509510511512513514515516517518519520521522523524525526527528529530531532533534535536537538539540541542543544545546547548549550551552553554555556557558559560561562563564565566567568569570571572573574575576577578579580581582583584585586587588589590591592593594595596597598599600601602603604605606607608609610611612613614615616617618619620621622623624625626627628629630631632633634635636637638639640641642643644645646647648649650651652653654655656657658659660661662663664665666667668669670671672673674675676677678679680681682683684685686687688689690691692693694695696697698699700701702703704705706707708709710711712713714715716717718719720721722723724725726727728729730731732733734735736737738739740741742743744745746747748749750751752753754755756757758759760761762763764765766767768769770771772773774775776777778779780781782783784785786787788789790791792793794795796797798799800801802803804805806807808809810811812813814815816817818819820821822823824825826827828829830831832833834835836837838839840841842843844845846847848849850851852853854855856857858859860861862863864865866867868869870871872873874875876877878879880881882883884885886887888889890891892893894895896897898899900901902903904905906907908909910911912913914915916917918919920921922923924925926927928929930931932933934935936937938939940941942943944945946947948949950951952953954955956957958959960961962963964965966967968969970971972973974975976977978979980981982983984985986987988989990991992993994995996997998999", align 1
@23 = private unnamed_addr constant [4 x i8] c"none", align 1
@24 = private unnamed_addr constant [7 x i8] c"invalid", align 1
@25 = private unnamed_addr constant [7 x i8] c"unknown", align 1
@26 = private unnamed_addr constant [6 x i8] c"failed", align 1
@27 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @15, [16 x i8] c"\1F\00\00\00\00\00\00\00\\\00\00\00\0E\00\00\00" }>, align 8
@28 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @15, [16 x i8] c"\1F\00\00\00\00\00\00\00Q\00\00\00\0E\00\00\00" }>, align 8
@29 = private unnamed_addr constant [98 x i8] c"/home/opt-bench/.cargo/registry/src/index.crates.io-1949cf8c6b5b557f/http-1.5.0/src/header/map.rs\00", align 1
@30 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @29, [16 x i8] c"a\00\00\00\00\00\00\00\1A\07\00\00!\00\00\00" }>, align 8
@31 = private unnamed_addr constant [6 x i8] c"accept", align 1
@32 = private unnamed_addr constant [14 x i8] c"accept-charset", align 1
@33 = private unnamed_addr constant [15 x i8] c"accept-encoding", align 1
@34 = private unnamed_addr constant [15 x i8] c"accept-language", align 1
@35 = private unnamed_addr constant [32 x i8] c"access-control-allow-credentials", align 1
@36 = private unnamed_addr constant [28 x i8] c"access-control-allow-headers", align 1
@37 = private unnamed_addr constant [28 x i8] c"access-control-allow-methods", align 1
@38 = private unnamed_addr constant [27 x i8] c"access-control-allow-origin", align 1
@39 = private unnamed_addr constant [29 x i8] c"access-control-expose-headers", align 1
@40 = private unnamed_addr constant [22 x i8] c"access-control-max-age", align 1
@41 = private unnamed_addr constant [30 x i8] c"access-control-request-headers", align 1
@42 = private unnamed_addr constant [29 x i8] c"access-control-request-method", align 1
@43 = private unnamed_addr constant [5 x i8] c"allow", align 1
@44 = private unnamed_addr constant [7 x i8] c"alt-svc", align 1
@45 = private unnamed_addr constant [13 x i8] c"authorization", align 1
@46 = private unnamed_addr constant [12 x i8] c"cache-status", align 1
@47 = private unnamed_addr constant [17 x i8] c"cdn-cache-control", align 1
@48 = private unnamed_addr constant [19 x i8] c"content-disposition", align 1
@49 = private unnamed_addr constant [16 x i8] c"content-language", align 1
@50 = private unnamed_addr constant [16 x i8] c"content-location", align 1
@51 = private unnamed_addr constant [13 x i8] c"content-range", align 1
@52 = private unnamed_addr constant [23 x i8] c"content-security-policy", align 1
@53 = private unnamed_addr constant [35 x i8] c"content-security-policy-report-only", align 1
@54 = private unnamed_addr constant [6 x i8] c"cookie", align 1
@55 = private unnamed_addr constant [3 x i8] c"dnt", align 1
@56 = private unnamed_addr constant [4 x i8] c"etag", align 1
@57 = private unnamed_addr constant [6 x i8] c"expect", align 1
@58 = private unnamed_addr constant [7 x i8] c"expires", align 1
@59 = private unnamed_addr constant [9 x i8] c"forwarded", align 1
@60 = private unnamed_addr constant [4 x i8] c"from", align 1
@61 = private unnamed_addr constant [8 x i8] c"if-match", align 1
@62 = private unnamed_addr constant [17 x i8] c"if-modified-since", align 1
@63 = private unnamed_addr constant [13 x i8] c"if-none-match", align 1
@64 = private unnamed_addr constant [8 x i8] c"if-range", align 1
@65 = private unnamed_addr constant [19 x i8] c"if-unmodified-since", align 1
@66 = private unnamed_addr constant [13 x i8] c"last-modified", align 1
@67 = private unnamed_addr constant [4 x i8] c"link", align 1
@68 = private unnamed_addr constant [8 x i8] c"location", align 1
@69 = private unnamed_addr constant [12 x i8] c"max-forwards", align 1
@70 = private unnamed_addr constant [6 x i8] c"origin", align 1
@71 = private unnamed_addr constant [6 x i8] c"pragma", align 1
@72 = private unnamed_addr constant [18 x i8] c"proxy-authenticate", align 1
@73 = private unnamed_addr constant [19 x i8] c"proxy-authorization", align 1
@74 = private unnamed_addr constant [15 x i8] c"public-key-pins", align 1
@75 = private unnamed_addr constant [27 x i8] c"public-key-pins-report-only", align 1
@76 = private unnamed_addr constant [5 x i8] c"range", align 1
@77 = private unnamed_addr constant [7 x i8] c"referer", align 1
@78 = private unnamed_addr constant [15 x i8] c"referrer-policy", align 1
@79 = private unnamed_addr constant [7 x i8] c"refresh", align 1
@80 = private unnamed_addr constant [11 x i8] c"retry-after", align 1
@81 = private unnamed_addr constant [20 x i8] c"sec-websocket-accept", align 1
@82 = private unnamed_addr constant [24 x i8] c"sec-websocket-extensions", align 1
@83 = private unnamed_addr constant [17 x i8] c"sec-websocket-key", align 1
@84 = private unnamed_addr constant [22 x i8] c"sec-websocket-protocol", align 1
@85 = private unnamed_addr constant [21 x i8] c"sec-websocket-version", align 1
@86 = private unnamed_addr constant [25 x i8] c"strict-transport-security", align 1
@87 = private unnamed_addr constant [2 x i8] c"te", align 1
@88 = private unnamed_addr constant [7 x i8] c"trailer", align 1
@89 = private unnamed_addr constant [10 x i8] c"user-agent", align 1
@90 = private unnamed_addr constant [7 x i8] c"upgrade", align 1
@91 = private unnamed_addr constant [25 x i8] c"upgrade-insecure-requests", align 1
@92 = private unnamed_addr constant [4 x i8] c"vary", align 1
@93 = private unnamed_addr constant [3 x i8] c"via", align 1
@94 = private unnamed_addr constant [7 x i8] c"warning", align 1
@95 = private unnamed_addr constant [16 x i8] c"www-authenticate", align 1
@96 = private unnamed_addr constant [22 x i8] c"x-content-type-options", align 1
@97 = private unnamed_addr constant [22 x i8] c"x-dns-prefetch-control", align 1
@98 = private unnamed_addr constant [15 x i8] c"x-frame-options", align 1
@99 = private unnamed_addr constant [16 x i8] c"x-xss-protection", align 1
@100 = private unnamed_addr constant [15 x i8] c"compress header", align 1
@101 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @29, [16 x i8] c"a\00\00\00\00\00\00\00\22\09\00\00&\00\00\00" }>, align 8
@102 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @29, [16 x i8] c"a\00\00\00\00\00\00\00*\09\00\003\00\00\00" }>, align 8
@103 = private unnamed_addr constant <{ ptr, [16 x i8], ptr }> <{ ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNvXsf_NtNtCsexYYUdYSQU6_5alloc5boxed7convertINtBL_3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1R_4SyncEL_EINtNtB4_7convert4FromNtNtBN_6string6StringE4from11StringErrorECsiWMK64dCVjf_20pingora_header_serde, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs_NvXsf_NtNtCsexYYUdYSQU6_5alloc5boxed7convertINtBc_3BoxDNtNtCskKLDkoKarTP_4core5error5ErrorNtNtB11_6marker4SendNtB1y_4SyncEL_EINtNtB11_7convert4FromNtNtBe_6string6StringE4fromNtB4_11StringErrorNtNtB11_3fmt7Display3fmt }>, align 8
@104 = private unnamed_addr constant <{ ptr, [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }> <{ ptr @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNvXsf_NtNtCsexYYUdYSQU6_5alloc5boxed7convertINtBL_3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1R_4SyncEL_EINtNtB4_7convert4FromNtNtBN_6string6StringE4from11StringErrorECsiWMK64dCVjf_20pingora_header_serde, [16 x i8] c"\18\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", ptr @_RNvXs0_NvXsf_NtNtCsexYYUdYSQU6_5alloc5boxed7convertINtBd_3BoxDNtNtCskKLDkoKarTP_4core5error5ErrorNtNtB12_6marker4SendNtB1z_4SyncEL_EINtNtB12_7convert4FromNtNtBf_6string6StringE4fromNtB5_11StringErrorNtNtB12_3fmt5Debug3fmt, ptr @_RNvXs_NvXsf_NtNtCsexYYUdYSQU6_5alloc5boxed7convertINtBc_3BoxDNtNtCskKLDkoKarTP_4core5error5ErrorNtNtB11_6marker4SendNtB1y_4SyncEL_EINtNtB11_7convert4FromNtNtBe_6string6StringE4fromNtB4_11StringErrorNtNtB11_3fmt7Display3fmt, ptr @103, ptr @_RNvYNtNvXsf_NtNtCsexYYUdYSQU6_5alloc5boxed7convertINtBc_3BoxDNtNtCskKLDkoKarTP_4core5error5ErrorNtNtB11_6marker4SendNtB1y_4SyncEL_EINtNtB11_7convert4FromNtNtBe_6string6StringE4from11StringErrorBX_6sourceCsiWMK64dCVjf_20pingora_header_serde, ptr @_RNvYNtNvXsf_NtNtCsexYYUdYSQU6_5alloc5boxed7convertINtBc_3BoxDNtNtCskKLDkoKarTP_4core5error5ErrorNtNtB11_6marker4SendNtB1y_4SyncEL_EINtNtB11_7convert4FromNtNtBe_6string6StringE4from11StringErrorBX_7type_idCsiWMK64dCVjf_20pingora_header_serde, ptr @_RNvYNtNvXsf_NtNtCsexYYUdYSQU6_5alloc5boxed7convertINtBc_3BoxDNtNtCskKLDkoKarTP_4core5error5ErrorNtNtB11_6marker4SendNtB1y_4SyncEL_EINtNtB11_7convert4FromNtNtBe_6string6StringE4from11StringErrorBX_11descriptionCsiWMK64dCVjf_20pingora_header_serde, ptr @_RNvYNtNvXsf_NtNtCsexYYUdYSQU6_5alloc5boxed7convertINtBc_3BoxDNtNtCskKLDkoKarTP_4core5error5ErrorNtNtB11_6marker4SendNtB1y_4SyncEL_EINtNtB11_7convert4FromNtNtBe_6string6StringE4from11StringErrorBX_5causeCsiWMK64dCVjf_20pingora_header_serde, ptr @_RNvYNtNvXsf_NtNtCsexYYUdYSQU6_5alloc5boxed7convertINtBc_3BoxDNtNtCskKLDkoKarTP_4core5error5ErrorNtNtB11_6marker4SendNtB1y_4SyncEL_EINtNtB11_7convert4FromNtNtBe_6string6StringE4from11StringErrorBX_7provideCsiWMK64dCVjf_20pingora_header_serde }>, align 8
@105 = private unnamed_addr constant [40 x i8] c"description() is deprecated; use Display", align 1
@106 = private unnamed_addr constant <{ ptr, ptr }> <{ ptr inttoptr (i64 -1562177306831591964 to ptr), ptr inttoptr (i64 8243298732992676743 to ptr) }>, align 8
@switch.table._RNvMCsiWMK64dCVjf_20pingora_header_serdeNtB2_11HeaderSerde9serialize = private unnamed_addr constant [81 x i8] c"\06\0E\0F\0F\0D \1C\1C\1B\1D\16\1E\1D\03\05\07\0D\0D\0C\11\0A\13\10\10\0E\10\0D\17#\0C\06\03\04\04\06\07\09\04\04\08\11\0D\08\13\0D\04\08\0C\06\06\12\13\0F\1B\05\07\0F\07\0B\14\18\11\16\15\06\0A\19\02\07\11\0A\07\19\04\03\07\10\16\16\0F\10", align 8
@switch.table._RNvMCsiWMK64dCVjf_20pingora_header_serdeNtB2_11HeaderSerde9serialize.27 = private unnamed_addr constant [81 x ptr] [ptr @31, ptr @32, ptr @33, ptr @34, ptr @0, ptr @35, ptr @36, ptr @37, ptr @38, ptr @39, ptr @40, ptr @41, ptr @42, ptr @1, ptr @43, ptr @44, ptr @45, ptr @2, ptr @46, ptr @47, ptr @3, ptr @48, ptr @4, ptr @49, ptr @5, ptr @50, ptr @51, ptr @52, ptr @53, ptr @6, ptr @54, ptr @55, ptr @7, ptr @56, ptr @57, ptr @58, ptr @59, ptr @60, ptr @8, ptr @61, ptr @62, ptr @63, ptr @64, ptr @65, ptr @66, ptr @67, ptr @68, ptr @69, ptr @70, ptr @71, ptr @72, ptr @73, ptr @74, ptr @75, ptr @76, ptr @77, ptr @78, ptr @79, ptr @80, ptr @81, ptr @82, ptr @83, ptr @84, ptr @85, ptr @9, ptr @10, ptr @86, ptr @87, ptr @88, ptr @11, ptr @89, ptr @90, ptr @91, ptr @92, ptr @93, ptr @94, ptr @95, ptr @96, ptr @97, ptr @98, ptr @99], align 8

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1S_4SyncEL_EEECsiWMK64dCVjf_20pingora_header_serde(ptr %.0.val, ptr nofree readonly captures(none) %.8.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq ptr %.0.val, null
  br i1 %i.a, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1w_4SyncEL_EECsiWMK64dCVjf_20pingora_header_serde.exit, label %bb.b

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1w_4SyncEL_EECsiWMK64dCVjf_20pingora_header_serde.exit: ; preds = %bb.e, %bb.d, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.b = load ptr, ptr %.8.val, align 8, !invariant.load !4 ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void %i.b(ptr noundef nonnull %.0.val)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.d = load i64, ptr %i.c, align 8, !range !5, !invariant.load !4 ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1w_4SyncEL_EECsiWMK64dCVjf_20pingora_header_serde.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.g = load i64, ptr %i.f, align 8, !range !6, !invariant.load !4
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, 0) %i.d, i64 noundef range(i64 1, 536870913) %i.g) #18
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1w_4SyncEL_EECsiWMK64dCVjf_20pingora_header_serde.exit

bb.f:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !5, !invariant.load !4 ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core5error5ErrorNtNtBM_6marker4SendNtB1j_4SyncEL_ENtNtNtBM_3ops4drop4Drop4dropCsiWMK64dCVjf_20pingora_header_serde.exit4.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.m = load i64, ptr %i.l, align 8, !range !6, !invariant.load !4
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.0.val, i64 noundef range(i64 1, 0) %i.j, i64 noundef range(i64 1, 536870913) %i.m) #18
  br label %_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core5error5ErrorNtNtBM_6marker4SendNtB1j_4SyncEL_ENtNtNtBM_3ops4drop4Drop4dropCsiWMK64dCVjf_20pingora_header_serde.exit4.i

_RNvXs8_NtCsexYYUdYSQU6_5alloc5boxedINtB5_3BoxDNtNtCskKLDkoKarTP_4core5error5ErrorNtNtBM_6marker4SendNtB1j_4SyncEL_ENtNtNtBM_3ops4drop4Drop4dropCsiWMK64dCVjf_20pingora_header_serde.exit4.i: ; preds = %bb.g, %bb.f
  resume { ptr, i32 } %i.h
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCs84JG9zk80ZV_4http6header3map9HeaderMapNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEEECsiWMK64dCVjf_20pingora_header_serde(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !7, !noundef !4
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs84JG9zk80ZV_4http6header3map9HeaderMapNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEECsiWMK64dCVjf_20pingora_header_serde.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.val2.i = load i64, ptr %i.c, align 8, !alias.scope !21, !noundef !4 ; 2 uses
  %i.d = icmp eq i64 %.val2.i, 0
  br i1 %i.d, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSNtNtNtCs84JG9zk80ZV_4http6header3map3PosEECsiWMK64dCVjf_20pingora_header_serde.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.val.i = load ptr, ptr %i.e, align 8, !alias.scope !21, !nonnull !4, !noundef !4
  %i.f = shl nuw nsw i64 %.val2.i, 2
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, 0) %i.f, i64 noundef 2) #18, !noalias !21
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSNtNtNtCs84JG9zk80ZV_4http6header3map3PosEECsiWMK64dCVjf_20pingora_header_serde.exit.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSNtNtNtCs84JG9zk80ZV_4http6header3map3PosEECsiWMK64dCVjf_20pingora_header_serde.exit.i: ; preds = %bb.d, %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCs84JG9zk80ZV_4http6header3map6BucketNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiWMK64dCVjf_20pingora_header_serde(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSNtNtNtCs84JG9zk80ZV_4http6header3map3PosEECsiWMK64dCVjf_20pingora_header_serde.exit.i
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtCs84JG9zk80ZV_4http6header3map6BucketNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiWMK64dCVjf_20pingora_header_serde(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %.body.i unwind label %bb.g

bb.f:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSNtNtNtCs84JG9zk80ZV_4http6header3map3PosEECsiWMK64dCVjf_20pingora_header_serde.exit.i
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtCs84JG9zk80ZV_4http6header3map6BucketNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiWMK64dCVjf_20pingora_header_serde(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtNtCs84JG9zk80ZV_4http6header3map6BucketNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEEECsiWMK64dCVjf_20pingora_header_serde.exit.i unwind label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19
  unreachable

.body.i:                                          ; preds = %bb.h, %bb.e
  %.pn.i = phi { ptr, i32 } [ %i.h, %bb.e ], [ %i.k, %bb.h ]
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtNtCs84JG9zk80ZV_4http6header3map10ExtraValueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEEECsiWMK64dCVjf_20pingora_header_serde(ptr noalias nofree noundef align 8 dereferenceable(24) %i.j) #20
          to label %common.resume.i unwind label %bb.k

bb.h:                                             ; preds = %bb.f
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtNtCs84JG9zk80ZV_4http6header3map6BucketNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEEECsiWMK64dCVjf_20pingora_header_serde.exit.i: ; preds = %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCs84JG9zk80ZV_4http6header3map10ExtraValueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiWMK64dCVjf_20pingora_header_serde(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs84JG9zk80ZV_4http6header3map9HeaderMapNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEECsiWMK64dCVjf_20pingora_header_serde.exit unwind label %bb.i

bb.i:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtNtCs84JG9zk80ZV_4http6header3map6BucketNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEEECsiWMK64dCVjf_20pingora_header_serde.exit.i
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtCs84JG9zk80ZV_4http6header3map10ExtraValueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiWMK64dCVjf_20pingora_header_serde(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %common.resume.i unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19
  unreachable

common.resume.i:                                  ; preds = %bb.i, %.body.i
  %common.resume.op.i = phi { ptr, i32 } [ %i.m, %bb.i ], [ %.pn.i, %.body.i ]
  resume { ptr, i32 } %common.resume.op.i

bb.k:                                             ; preds = %.body.i
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs84JG9zk80ZV_4http6header3map9HeaderMapNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEECsiWMK64dCVjf_20pingora_header_serde.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtNtCs84JG9zk80ZV_4http6header3map6BucketNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEEECsiWMK64dCVjf_20pingora_header_serde.exit.i
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtCs84JG9zk80ZV_4http6header3map10ExtraValueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiWMK64dCVjf_20pingora_header_serde(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECsiWMK64dCVjf_20pingora_header_serde(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !8, !noundef !4
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsiWMK64dCVjf_20pingora_header_serde.exit, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiWMK64dCVjf_20pingora_header_serde(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsiWMK64dCVjf_20pingora_header_serde.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiWMK64dCVjf_20pingora_header_serde(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECsiWMK64dCVjf_20pingora_header_serde.exit.i.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVechEECsiWMK64dCVjf_20pingora_header_serde.exit.i.i: ; preds = %bb.d
  resume { ptr, i32 } %i.c

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsiWMK64dCVjf_20pingora_header_serde.exit: ; preds = %bb.c
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiWMK64dCVjf_20pingora_header_serde(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  br label %bb.b
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsfsXztIhCltD_13pingora_error9immut_str8ImmutStrEECsiWMK64dCVjf_20pingora_header_serde(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !9, !noundef !4 ; 2 uses
  %i.b = icmp eq i64 %i.a, 2
  br i1 %i.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsfsXztIhCltD_13pingora_error9immut_str8ImmutStrECsiWMK64dCVjf_20pingora_header_serde.exit, label %bb.b

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsfsXztIhCltD_13pingora_error9immut_str8ImmutStrECsiWMK64dCVjf_20pingora_header_serde.exit: ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24)
  %i.c = icmp eq i64 %i.a, 0
  br i1 %i.c, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsfsXztIhCltD_13pingora_error9immut_str8ImmutStrECsiWMK64dCVjf_20pingora_header_serde.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val1.i = load i64, ptr %i.d, align 8, !alias.scope !24, !noundef !4 ; 2 uses
  %i.e = icmp eq i64 %.val1.i, 0
  br i1 %i.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsfsXztIhCltD_13pingora_error9immut_str8ImmutStrECsiWMK64dCVjf_20pingora_header_serde.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val.i = load ptr, ptr %i.f, align 8, !alias.scope !24, !nonnull !4, !noundef !4
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, 0) %.val1.i, i64 noundef 1) #18, !noalias !24
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsfsXztIhCltD_13pingora_error9immut_str8ImmutStrECsiWMK64dCVjf_20pingora_header_serde.exit
}

end_hunk_0
begin_hunk_1_@_RNvCsiWMK64dCVjf_20pingora_header_serde22get_frame_content_size:bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @24, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 7, ptr %i.t, align 8
  store i64 0, ptr %0, align 8
  br label %bb.e

bb.h:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @25, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 7, ptr %i.v, align 8
  store i64 0, ptr %0, align 8
  br label %bb.e

bb.i:                                             ; preds = %bb.f
  %i.w = load i64, ptr %i.r, align 8
  call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.q, i64 %i.w) #22
  unreachable

bb.j:                                             ; preds = %bb.f
  %i.x = load ptr, ptr %i.r, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.y = icmp ule i64 %i.m, %i.q
  call void @llvm.assume(i1 %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not = icmp eq i64 %i.m, 0
  br i1 %.not, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.l, %bb.j
  store i64 %i.q, ptr %i.c, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.x, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %i.m, ptr %.sroa.6.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @_RNvXs1_NtCsfsXztIhCltD_13pingora_error9immut_strNtB5_8ImmutStrINtNtCskKLDkoKarTP_4core7convert4FromNtNtCsexYYUdYSQU6_5alloc6string6StringE4from(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.e

bb.l:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.x, ptr align 1 %i.l, i64 %i.m, i1 false)
  br label %bb.k
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMCsiWMK64dCVjf_20pingora_header_serdeNtB2_11HeaderSerde11deserialize(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([232 x i8]) align 8 captures(none) dereferenceable(232) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [16 x i8], align 8                ; 6 uses
  %i.e = alloca [232 x i8], align 8               ; 7 uses
  %i.f = alloca [232 x i8], align 8               ; 9 uses
  %i.g = alloca [72 x i8], align 8                ; 11 uses
  %i.h = alloca [32 x i8], align 8                ; 7 uses
  %i.i = alloca [24 x i8], align 8                ; 9 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 4 uses
  %i.m = alloca [16 x i8], align 8                ; 5 uses
  %i.n = alloca [40 x i8], align 8                ; 9 uses
  %i.o = alloca [24 x i8], align 8                ; 9 uses
  %i.p = alloca [24 x i8], align 8                ; 7 uses
  %i.q = alloca [24 x i8], align 8                ; 4 uses
  %i.r = alloca [16 x i8], align 8                ; 5 uses
  %i.s = alloca [24 x i8], align 8                ; 9 uses
  %i.t = alloca [24 x i8], align 8                ; 4 uses
  %i.u = alloca [24 x i8], align 8                ; 7 uses
  %i.v = alloca [24 x i8], align 8                ; 4 uses
  %i.w = alloca [16 x i8], align 8                ; 5 uses
  %i.x = alloca [24 x i8], align 8                ; 9 uses
  %i.y = alloca [24 x i8], align 8                ; 4 uses
  %i.z = alloca [16 x i8], align 8                ; 6 uses
  %i.aa = alloca [16 x i8], align 8               ; 6 uses
  %i.ab = tail call noundef align 8 ptr @_RINvMs3_Cse0v0U5LqnG1_12thread_localINtB6_11ThreadLocalINtNtCskKLDkoKarTP_4core4cell7RefCellINtNtCsexYYUdYSQU6_5alloc3vec3VechEEE10get_or_tryNCINvB2_6get_orNCNvMCsiWMK64dCVjf_20pingora_header_serdeNtB2z_11HeaderSerde11deserialize0E0uEB2z_(ptr noundef nonnull align 8 %1) ; 10 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ab) ]
  %i.ac = load i64, ptr %i.ab, align 8, !noundef !4
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %bb.b, label %bb.q, !prof !15

bb.b:                                             ; preds = %bb.a
  store i64 -1, ptr %i.ab, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 24 ; 2 uses
  store i64 0, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 512
  %i.ah = load ptr, ptr %i.ag, align 8, !noalias !122, !noundef !4
  %.not.i = icmp eq ptr %i.ah, null
  %.sink10.i.sroa.gep.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  %.sink10.i.sroa.gep19.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sink10.i7.sroa.gep.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %.sink10.i7.sroa.gep20.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !122
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 528
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 520
  invoke void @_RINvMs0_NtCsiWMK64dCVjf_20pingora_header_serde11thread_zstdNtB6_16CompressionInner31decompress_to_buffer_using_dictINtNtCsexYYUdYSQU6_5alloc3vec3VechEEB8_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.z, ptr noundef nonnull align 8 %i.ai, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ae, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.aj)
          to label %.noexc unwind label %bb.r

.noexc:                                           ; preds = %bb.c
  %i.ak = load ptr, ptr %i.z, align 8, !noalias !122, !noundef !4 ; 2 uses
  %.not2.i.not = icmp eq ptr %i.ak, null
  %i.al = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.am = load i64, ptr %i.al, align 8, !noalias !122, !noundef !4
  br i1 %.not2.i.not, label %.split, label %bb.k

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !122
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 520
  invoke void @_RINvMs0_NtCsiWMK64dCVjf_20pingora_header_serde11thread_zstdNtB6_16CompressionInner20decompress_to_bufferINtNtCsexYYUdYSQU6_5alloc3vec3VechEEB8_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.aa, ptr noundef nonnull align 8 %i.an, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ae)
          to label %.noexc9 unwind label %bb.r

.noexc9:                                          ; preds = %bb.d
  %i.ao = load ptr, ptr %i.aa, align 8, !noalias !122, !noundef !4 ; 2 uses
  %.not1.i.not = icmp eq ptr %i.ao, null
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.aq = load i64, ptr %i.ap, align 8, !noalias !122, !noundef !4
  br i1 %.not1.i.not, label %bb.s, label %bb.e

bb.e:                                             ; preds = %.noexc9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !122
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !123
  invoke fastcc void @_RNvCsiWMK64dCVjf_20pingora_header_serde22get_frame_content_size(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.x, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3) #21
          to label %.noexc10 unwind label %bb.r

.noexc10:                                         ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !123
  store ptr %i.x, ptr %i.w, align 8, !noalias !123
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr @_RNvXs_NtCsfsXztIhCltD_13pingora_error9immut_strNtB4_8ImmutStrNtNtCskKLDkoKarTP_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !123
  invoke void @_RNvNvNtCsexYYUdYSQU6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.y, ptr noundef nonnull @14, ptr noundef nonnull %i.w)
          to label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsiWMK64dCVjf_20pingora_header_serde.exit.i.i unwind label %bb.f, !noalias !124

bb.f:                                             ; preds = %.noexc10
  %i.ar = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.as = load i64, ptr %i.x, align 8, !range !12, !alias.scope !125, !noalias !123, !noundef !4
  %i.at = icmp eq i64 %i.as, 0
  %i.au = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %.val1.i.i.i = load i64, ptr %i.au, align 8, !noalias !123 ; 2 uses
  %i.av = icmp eq i64 %.val1.i.i.i, 0
  %or.cond.i.i = select i1 %i.at, i1 true, i1 %i.av
  br i1 %or.cond.i.i, label %bb.bj, label %common.resume.sink.split.i

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsiWMK64dCVjf_20pingora_header_serde.exit.i.i: ; preds = %.noexc10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !123
  call void @llvm.experimental.noalias.scope.decl(metadata !126)
  %i.aw = load i64, ptr %i.x, align 8, !range !12, !alias.scope !126, !noalias !123, !noundef !4
  %i.ax = icmp eq i64 %i.aw, 0
  br i1 %i.ax, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsfsXztIhCltD_13pingora_error9immut_str8ImmutStrECsiWMK64dCVjf_20pingora_header_serde.exit9.i.i, label %bb.g

bb.g:                                             ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsiWMK64dCVjf_20pingora_header_serde.exit.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %.val1.i7.i.i = load i64, ptr %i.ay, align 8, !alias.scope !126, !noalias !123, !noundef !4 ; 2 uses
  %i.az = icmp eq i64 %.val1.i7.i.i, 0
  br i1 %i.az, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsfsXztIhCltD_13pingora_error9immut_str8ImmutStrECsiWMK64dCVjf_20pingora_header_serde.exit9.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.val.i8.i.i = load ptr, ptr %.sink10.i.sroa.gep.i, align 8, !alias.scope !126, !noalias !123, !nonnull !4, !noundef !4
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i8.i.i, i64 noundef range(i64 1, 0) %.val1.i7.i.i, i64 noundef 1) #18, !noalias !127
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsfsXztIhCltD_13pingora_error9immut_str8ImmutStrECsiWMK64dCVjf_20pingora_header_serde.exit9.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsfsXztIhCltD_13pingora_error9immut_str8ImmutStrECsiWMK64dCVjf_20pingora_header_serde.exit9.i.i: ; preds = %bb.h, %bb.g, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsiWMK64dCVjf_20pingora_header_serde.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !123
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !123
  store i16 28, ptr %i.v, align 8, !noalias !123
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !128
  invoke void @_RNvXs1_NtCsfsXztIhCltD_13pingora_error9immut_strNtB5_8ImmutStrINtNtCskKLDkoKarTP_4core7convert4FromNtNtCsexYYUdYSQU6_5alloc6string6StringE4from(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.u, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.y)
          to label %.noexc11 unwind label %bb.r

.noexc11:                                         ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsfsXztIhCltD_13pingora_error9immut_str8ImmutStrECsiWMK64dCVjf_20pingora_header_serde.exit9.i.i
  %i.ba = invoke fastcc ptr @_RNvXs1_NtCskKLDkoKarTP_4core7convertReINtB5_4IntoINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB7_5error5ErrorNtNtB7_6marker4SendNtB1G_4SyncEL_EE4intoCsiWMK64dCVjf_20pingora_header_serde(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ao, i64 noundef %i.aq)
          to label %_RNCNvMs_CsiWMK64dCVjf_20pingora_header_serdeNtB6_15ZstdCompression20decompress_to_buffer0B6_.exit.i unwind label %bb.i

bb.i:                                             ; preds = %.noexc11
  %i.bb = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.bc = load i64, ptr %i.u, align 8, !range !9, !alias.scope !129, !noalias !128, !noundef !4 ; 2 uses
  %i.bd = icmp eq i64 %i.bc, 2
  br i1 %i.bd, label %bb.bj, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.be = icmp eq i64 %i.bc, 0
  %i.bf = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %.val1.i.i.i.i.i = load i64, ptr %i.bf, align 8, !noalias !123 ; 2 uses
  %i.bg = icmp eq i64 %.val1.i.i.i.i.i, 0
  %or.cond13.i.i = select i1 %i.be, i1 true, i1 %i.bg
  br i1 %or.cond13.i.i, label %bb.bj, label %common.resume.sink.split.i

common.resume.sink.split.i:                       ; preds = %bb.p, %bb.l, %bb.j, %bb.f
  %.sink10.i7.sroa.phi.sink.i = phi ptr [ %.sink10.i7.sroa.gep20.i, %bb.p ], [ %.sink10.i7.sroa.gep.i, %bb.l ], [ %.sink10.i.sroa.gep.i, %bb.f ], [ %.sink10.i.sroa.gep19.i, %bb.j ]
  %.val1.i.sink.i8.sink.i = phi i64 [ %.val1.i.i.i.i17.i, %bb.p ], [ %.val1.i.i4.i, %bb.l ], [ %.val1.i.i.i, %bb.f ], [ %.val1.i.i.i.i.i, %bb.j ]
  %common.resume.op.ph.i = phi { ptr, i32 } [ %i.bs, %bb.p ], [ %i.bi, %bb.l ], [ %i.ar, %bb.f ], [ %i.bb, %bb.j ]
  %.val.i.i10.i = load ptr, ptr %.sink10.i7.sroa.phi.sink.i, align 8, !noalias !122, !nonnull !4, !noundef !4
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i10.i, i64 noundef range(i64 1, 0) %.val1.i.sink.i8.sink.i, i64 noundef 1) #18, !noalias !4
  br label %bb.bj

_RNCNvMs_CsiWMK64dCVjf_20pingora_header_serdeNtB6_15ZstdCompression20decompress_to_buffer0B6_.exit.i: ; preds = %.noexc11
  %i.bh = invoke fastcc noalias noundef nonnull align 8 ptr @_RNvMs2_CsfsXztIhCltD_13pingora_errorNtB5_5Error6create(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.v, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.u, ptr noundef %i.ba, ptr nonnull @104)
          to label %.thread unwind label %bb.r

.thread:                                          ; preds = %_RNCNvMs_CsiWMK64dCVjf_20pingora_header_serdeNtB6_15ZstdCompression20decompress_to_buffer0B6_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !128
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !123
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !122
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !122
  br label %bb.t

bb.k:                                             ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !122
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !130
  invoke fastcc void @_RNvCsiWMK64dCVjf_20pingora_header_serde22get_frame_content_size(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.s, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3) #21
          to label %.noexc13 unwind label %bb.r

.noexc13:                                         ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !130
  store ptr %i.s, ptr %i.r, align 8, !noalias !130
  %.sroa.42.0..sroa_idx.i3.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr @_RNvXs_NtCsfsXztIhCltD_13pingora_error9immut_strNtB4_8ImmutStrNtNtCskKLDkoKarTP_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx.i3.i, align 8, !noalias !130
  invoke void @_RNvNvNtCsexYYUdYSQU6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.t, ptr noundef nonnull @14, ptr noundef nonnull %i.r)
          to label %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsiWMK64dCVjf_20pingora_header_serde.exit.i13.i unwind label %bb.l, !noalias !131

bb.l:                                             ; preds = %.noexc13
  %i.bi = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bj = load i64, ptr %i.s, align 8, !range !12, !alias.scope !132, !noalias !130, !noundef !4
  %i.bk = icmp eq i64 %i.bj, 0
  %i.bl = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %.val1.i.i4.i = load i64, ptr %i.bl, align 8, !noalias !130 ; 2 uses
  %i.bm = icmp eq i64 %.val1.i.i4.i, 0
  %or.cond.i5.i = select i1 %i.bk, i1 true, i1 %i.bm
  br i1 %or.cond.i5.i, label %bb.bj, label %common.resume.sink.split.i

_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsiWMK64dCVjf_20pingora_header_serde.exit.i13.i: ; preds = %.noexc13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !130
  call void @llvm.experimental.noalias.scope.decl(metadata !133)
  %i.bn = load i64, ptr %i.s, align 8, !range !12, !alias.scope !133, !noalias !130, !noundef !4
  %i.bo = icmp eq i64 %i.bn, 0
  br i1 %i.bo, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsfsXztIhCltD_13pingora_error9immut_str8ImmutStrECsiWMK64dCVjf_20pingora_header_serde.exit9.i16.i, label %bb.m

bb.m:                                             ; preds = %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsiWMK64dCVjf_20pingora_header_serde.exit.i13.i
  %i.bp = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %.val1.i7.i14.i = load i64, ptr %i.bp, align 8, !alias.scope !133, !noalias !130, !noundef !4 ; 2 uses
  %i.bq = icmp eq i64 %.val1.i7.i14.i, 0
  br i1 %i.bq, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsfsXztIhCltD_13pingora_error9immut_str8ImmutStrECsiWMK64dCVjf_20pingora_header_serde.exit9.i16.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.val.i8.i15.i = load ptr, ptr %.sink10.i7.sroa.gep.i, align 8, !alias.scope !133, !noalias !130, !nonnull !4, !noundef !4
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i8.i15.i, i64 noundef range(i64 1, 0) %.val1.i7.i14.i, i64 noundef 1) #18, !noalias !134
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsfsXztIhCltD_13pingora_error9immut_str8ImmutStrECsiWMK64dCVjf_20pingora_header_serde.exit9.i16.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsfsXztIhCltD_13pingora_error9immut_str8ImmutStrECsiWMK64dCVjf_20pingora_header_serde.exit9.i16.i: ; preds = %bb.n, %bb.m, %_RINvMNtCskKLDkoKarTP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsexYYUdYSQU6_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsiWMK64dCVjf_20pingora_header_serde.exit.i13.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !130
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !130
  store i16 28, ptr %i.q, align 8, !noalias !130
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !135
  invoke void @_RNvXs1_NtCsfsXztIhCltD_13pingora_error9immut_strNtB5_8ImmutStrINtNtCskKLDkoKarTP_4core7convert4FromNtNtCsexYYUdYSQU6_5alloc6string6StringE4from(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.p, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.t)
          to label %.noexc14 unwind label %bb.r

.noexc14:                                         ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsfsXztIhCltD_13pingora_error9immut_str8ImmutStrECsiWMK64dCVjf_20pingora_header_serde.exit9.i16.i
  %i.br = invoke fastcc ptr @_RNvXs1_NtCskKLDkoKarTP_4core7convertReINtB5_4IntoINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB7_5error5ErrorNtNtB7_6marker4SendNtB1G_4SyncEL_EE4intoCsiWMK64dCVjf_20pingora_header_serde(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ak, i64 noundef %i.am)
          to label %_RNCNvMs_CsiWMK64dCVjf_20pingora_header_serdeNtB6_15ZstdCompression20decompress_to_buffers_0B6_.exit.i unwind label %bb.o

bb.o:                                             ; preds = %.noexc14
  %i.bs = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.bt = load i64, ptr %i.p, align 8, !range !9, !alias.scope !136, !noalias !135, !noundef !4 ; 2 uses
  %i.bu = icmp eq i64 %i.bt, 2
  br i1 %i.bu, label %bb.bj, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bv = icmp eq i64 %i.bt, 0
  %i.bw = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.val1.i.i.i.i17.i = load i64, ptr %i.bw, align 8, !noalias !130 ; 2 uses
  %i.bx = icmp eq i64 %.val1.i.i.i.i17.i, 0
  %or.cond13.i18.i = select i1 %i.bv, i1 true, i1 %i.bx
  br i1 %or.cond13.i18.i, label %bb.bj, label %common.resume.sink.split.i

_RNCNvMs_CsiWMK64dCVjf_20pingora_header_serdeNtB6_15ZstdCompression20decompress_to_buffers_0B6_.exit.i: ; preds = %.noexc14
  %i.by = invoke fastcc noalias noundef nonnull align 8 ptr @_RNvMs2_CsfsXztIhCltD_13pingora_errorNtB5_5Error6create(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.q, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.p, ptr noundef %i.br, ptr nonnull @104)
          to label %.split.thread unwind label %bb.r

.split.thread:                                    ; preds = %_RNCNvMs_CsiWMK64dCVjf_20pingora_header_serdeNtB6_15ZstdCompression20decompress_to_buffers_0B6_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !135
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !130
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !122
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !122
  br label %bb.t

.split:                                           ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !122
  br label %bb.u

bb.q:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27) #23
  unreachable

bb.r:                                             ; preds = %_RNCNvMs_CsiWMK64dCVjf_20pingora_header_serdeNtB6_15ZstdCompression20decompress_to_buffer0B6_.exit.i, %_RNCNvMs_CsiWMK64dCVjf_20pingora_header_serdeNtB6_15ZstdCompression20decompress_to_buffers_0B6_.exit.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCs1ll6eLl40nD_8httparse6HeaderEECsiWMK64dCVjf_20pingora_header_serde.exit.i, %bb.u, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsfsXztIhCltD_13pingora_error9immut_str8ImmutStrECsiWMK64dCVjf_20pingora_header_serde.exit9.i16.i, %bb.k, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsfsXztIhCltD_13pingora_error9immut_str8ImmutStrECsiWMK64dCVjf_20pingora_header_serde.exit9.i.i, %bb.e, %bb.d, %bb.c
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %bb.bj

bb.s:                                             ; preds = %.noexc9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !122
  br label %bb.u

bb.t:                                             ; preds = %.split.thread, %.thread
  %.sroa.5.1.i35.in = phi ptr [ %i.by, %.split.thread ], [ %i.bh, %.thread ]
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5.1.i35.in, ptr %i.ca, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.bi

bb.u:                                             ; preds = %.split, %bb.s
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.cc = load ptr, ptr %i.cb, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.cd = load i64, ptr %i.af, align 8, !noundef !4 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !137)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !138
  invoke void @_RINvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemNtCs1ll6eLl40nD_8httparse6HeaderNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECsiWMK64dCVjf_20pingora_header_serde(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.o, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) @17, i64 noundef 256)
          to label %.noexc18 unwind label %bb.r

.noexc18:                                         ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !138
  %i.ce = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8, !noalias !138, !nonnull !4, !noundef !4
  %i.cg = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.ch = load i64, ptr %i.cg, align 8, !noalias !138, !noundef !4
  %i.ci = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  store i8 0, ptr %i.ci, align 8, !noalias !138
  %i.cj = getelementptr inbounds nuw i8, ptr %i.n, i64 34 ; 2 uses
  store i16 0, ptr %i.cj, align 2, !noalias !138
  store ptr null, ptr %i.n, align 8, !noalias !138
  %i.ck = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 2 uses
  store ptr %i.cf, ptr %i.ck, align 8, !noalias !138
  %i.cl = getelementptr inbounds nuw i8, ptr %i.n, i64 24 ; 2 uses
  store i64 %i.ch, ptr %i.cl, align 8, !noalias !138
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !138
  invoke void @_RNvMs5_Cs1ll6eLl40nD_8httparseNtB5_8Response5parse(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.m, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.n, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cc, i64 noundef range(i64 0, -9223372036854775808) %i.cd)
          to label %bb.w unwind label %bb.v, !noalias !137

.body.i:                                          ; preds = %bb.be, %bb.bd, %bb.bc, %bb.bb, %bb.az, %bb.ax, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.aa, %bb.v
  %.pn.i = phi { ptr, i32 } [ %i.em, %bb.ax ], [ %i.ep, %bb.az ], [ %i.cw, %bb.aa ], [ %lpad.loopexit.split-lp43, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.cm, %bb.v ], [ %i.ev, %bb.be ], [ %i.ev, %bb.bd ], [ %i.ev, %bb.bc ], [ %i.ev, %bb.bb ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCs1ll6eLl40nD_8httparse6HeaderEECsiWMK64dCVjf_20pingora_header_serde(ptr noalias nofree noundef align 8 dereferenceable(24) %i.o) #20
          to label %bb.bj unwind label %bb.bg, !noalias !137

bb.v:                                             ; preds = %_RNvXs1_NtCskKLDkoKarTP_4core7convertNtCs1ll6eLl40nD_8httparse5ErrorINtB5_4IntoINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB7_5error5ErrorNtNtB7_6marker4SendNtB29_4SyncEL_EE4intoCsiWMK64dCVjf_20pingora_header_serde.exit.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc6borrow3CoweEECsiWMK64dCVjf_20pingora_header_serde.exit.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsiWMK64dCVjf_20pingora_header_serde.exit.i.i, %bb.ao, %bb.ae, %bb.ad, %bb.x, %.noexc18
  %i.cm = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.w:                                             ; preds = %.noexc18
  %i.cn = load i64, ptr %i.m, align 8, !range !9, !noalias !138, !noundef !4
  switch i64 %i.cn, label %bb.y [
    i64 2, label %bb.x
    i64 0, label %bb.ac
  ]

bb.x:                                             ; preds = %bb.w
  %i.co = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.cp = load i8, ptr %i.co, align 8, !range !139, !noalias !138, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !138
  store i16 28, ptr %i.l, align 8, !noalias !138
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !138
  store i64 %i.cd, ptr %i.j, align 8, !noalias !138
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !138
  invoke void @_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String15from_utf8_lossy(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cc, i64 noundef range(i64 0, -9223372036854775808) %i.cd)
          to label %bb.aw unwind label %bb.v, !noalias !137

bb.y:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !140
  %i.cq = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i16 28, ptr %i.cq, align 8, !noalias !141
  %i.cr = getelementptr inbounds nuw i8, ptr %i.g, i64 65
  store i8 3, ptr %i.cr, align 1, !noalias !140
  %i.cs = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  store i8 0, ptr %i.cs, align 8, !noalias !140
  %i.ct = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  store ptr null, ptr %i.ct, align 8, !noalias !140
  store i64 0, ptr %i.g, align 8, !noalias !142
  %.sroa.431.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @18, ptr %.sroa.431.0..sroa_idx.i, align 8, !noalias !142
  %.sroa.5.0..sroa_idx32.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 30, ptr %.sroa.5.0..sroa_idx32.i, align 8, !noalias !142
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18, !noalias !143
  %i.cu = call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef range(i64 24, 73) 72, i64 noundef 8) #18, !noalias !143 ; 3 uses
  %i.cv = icmp eq ptr %i.cu, null
  br i1 %i.cv, label %bb.z, label %bb.as, !prof !14

bb.z:                                             ; preds = %bb.y
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #22
          to label %.noexc.i.i unwind label %bb.aa, !noalias !144

.noexc.i.i:                                       ; preds = %bb.z
  unreachable

bb.aa:                                            ; preds = %bb.z
  %i.cw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsfsXztIhCltD_13pingora_error5ErrorECsiWMK64dCVjf_20pingora_header_serde(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.g) #20
          to label %.body.i unwind label %bb.ab, !noalias !144

bb.ab:                                            ; preds = %bb.aa
  %i.cx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !noalias !144
  unreachable

bb.ac:                                            ; preds = %bb.w
  call void @llvm.experimental.noalias.scope.decl(metadata !145)
  call void @llvm.experimental.noalias.scope.decl(metadata !146)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !147
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !147
  %i.cy = load i16, ptr %i.cj, align 2, !range !148, !alias.scope !146, !noalias !138, !noundef !4
  %i.cz = trunc nuw i16 %i.cy to i1
  br i1 %i.cz, label %bb.ad, label %bb.ae, !prof !15

bb.ad:                                            ; preds = %bb.ac
  %i.da = getelementptr inbounds nuw i8, ptr %i.n, i64 36
  %i.db = load i16, ptr %i.da, align 4, !alias.scope !146, !noalias !138
  %i.dc = load i64, ptr %i.cl, align 8, !alias.scope !146, !noalias !138, !noundef !4 ; 3 uses
  invoke void @_RINvMsc_CskspKcFIsYcD_12pingora_httpNtB6_14ResponseHeader5buildtECsiWMK64dCVjf_20pingora_header_serde(ptr noalias nofree noundef nonnull sret([232 x i8]) align 8 captures(none) dereferenceable(232) %i.e, i16 noundef %i.db, i64 noundef 1, i64 %i.dc)
          to label %.noexc.i unwind label %bb.v, !noalias !137

.noexc.i:                                         ; preds = %bb.ad
  %i.dd = load i64, ptr %i.e, align 8, !range !7, !noalias !147, !noundef !4 ; 2 uses
  %i.de = icmp eq i64 %i.dd, -1
  %i.df = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.dg = load ptr, ptr %i.df, align 8, !noalias !147 ; 2 uses
  br i1 %i.de, label %bb.af, label %bb.ag

bb.ae:                                            ; preds = %bb.ac
  invoke void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #23
          to label %.noexc17.i unwind label %bb.v, !noalias !137

.noexc17.i:                                       ; preds = %bb.ae
  unreachable

bb.af:                                            ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !147
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.dg, ptr %i.dh, align 8, !alias.scope !149
  store i64 -1, ptr %0, align 8, !alias.scope !149
  br label %_RNvCsiWMK64dCVjf_20pingora_header_serde16parsed_to_header.exit.i

bb.ag:                                            ; preds = %.noexc.i
  %.sroa.516.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %.sroa.5.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(216) %.sroa.516.0..sroa_idx.i.i, i64 216, i1 false), !noalias !147
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !147
  store i64 %i.dd, ptr %i.f, align 8, !noalias !147
  %.sroa.48.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.dg, ptr %.sroa.48.0..sroa_idx.i.i, align 8, !noalias !147
  %i.di = load ptr, ptr %i.ck, align 8, !alias.scope !146, !noalias !138, !nonnull !4, !align !10, !noundef !4 ; 2 uses
  %.idx.i.i = shl nuw nsw i64 %i.dc, 5
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 %.idx.i.i
  %i.dk = icmp eq i64 %i.dc, 0
  br i1 %i.dk, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.ag
  %i.dl = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.dm = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %.sroa.418.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ap, %.lr.ph.i.i
  %.sroa.09.023.i.i = phi ptr [ %i.di, %.lr.ph.i.i ], [ %i.dn, %bb.ap ] ; 5 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.sroa.09.023.i.i, i64 32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !147
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !147
  %i.do = load ptr, ptr %.sroa.09.023.i.i, align 8, !noalias !150, !nonnull !4, !noundef !4
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.09.023.i.i, i64 8
  %i.dq = load i64, ptr %i.dp, align 8, !noalias !150, !noundef !4 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !147
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsiWMK64dCVjf_20pingora_header_serde(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.dq, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.ai unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !150

._crit_edge.i.i:                                  ; preds = %bb.ap, %bb.ag
end_hunk_1
begin_hunk_2_@_RNvMCsiWMK64dCVjf_20pingora_header_serdeNtB2_11HeaderSerde3new:bb.a
  %common.resume.op = phi { ptr, i32 } [ %i.k, %bb.f ], [ %i.i, %bb.d ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsiWMK64dCVjf_20pingora_header_serde.exit: ; preds = %bb.e
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiWMK64dCVjf_20pingora_header_serde(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsiWMK64dCVjf_20pingora_header_serde.exit
  ret void

bb.i:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19
  unreachable
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMCsiWMK64dCVjf_20pingora_header_serdeNtB2_11HeaderSerde9serialize(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(232) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [2 x i8], align 2                 ; 4 uses
  %i.i = tail call noundef align 8 ptr @_RINvMs3_Cse0v0U5LqnG1_12thread_localINtB6_11ThreadLocalINtNtCskKLDkoKarTP_4core4cell7RefCellINtNtCsexYYUdYSQU6_5alloc3vec3VechEEE10get_or_tryNCINvB2_6get_orNCNvMCsiWMK64dCVjf_20pingora_header_serdeNtB2z_11HeaderSerde9serialize0E0uEB2z_(ptr noundef nonnull align 8 %1) ; 10 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.i) ]
  %i.j = load i64, ptr %i.i, align 8, !noundef !4
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %bb.b, label %bb.q, !prof !15

bb.b:                                             ; preds = %bb.a
  store i64 -1, ptr %i.i, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 11 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 24 ; 19 uses
  store i64 0, ptr %i.m, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !193)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !194)
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 106
  %i.o = load i8, ptr %i.n, align 2, !range !195, !alias.scope !193, !noundef !4
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsiWMK64dCVjf_20pingora_header_serde(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l, i64 noundef 9)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.b
  %switch.selectcmp6.i = icmp eq i8 %i.o, 1
  %switch.select7.i = select i1 %switch.selectcmp6.i, ptr @20, ptr @21
  %i.p = load i64, ptr %i.m, align 8, !alias.scope !196, !noundef !4 ; 2 uses
  %i.q = icmp sgt i64 %i.p, -1
  tail call void @llvm.assume(i1 %i.q)
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 7 uses
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !196, !nonnull !4, !noundef !4
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.p
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.t, ptr noundef nonnull readonly align 1 dereferenceable(9) %switch.select7.i, i64 9, i1 false), !noalias !193
  %.pre.i.i = load i64, ptr %i.m, align 8, !alias.scope !196
  %i.u = add i64 %.pre.i.i, 9
  store i64 %i.u, ptr %i.m, align 8, !alias.scope !196
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !197
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.w = load i16, ptr %i.v, align 8, !range !198, !alias.scope !193, !noundef !4 ; 2 uses
  store i16 %i.w, ptr %i.h, align 2, !noalias !197
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsiWMK64dCVjf_20pingora_header_serde(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l, i64 noundef 3)
          to label %.noexc4 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc4:                                          ; preds = %.noexc
  %i.x = add i16 %i.w, -100
  %i.y = zext i16 %i.x to i64
  %i.z = mul nuw nsw i64 %i.y, 3
  %i.aa = getelementptr inbounds nuw i8, ptr @22, i64 %i.z
  %i.ab = load i64, ptr %i.m, align 8, !alias.scope !199, !noundef !4 ; 2 uses
  %i.ac = icmp sgt i64 %i.ab, -1
  tail call void @llvm.assume(i1 %i.ac)
  %i.ad = load ptr, ptr %i.r, align 8, !alias.scope !199, !nonnull !4, !noundef !4
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ab
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.ae, ptr noundef nonnull readonly align 1 dereferenceable(3) %i.aa, i64 3, i1 false), !noalias !193
  %.pre.i8.i = load i64, ptr %i.m, align 8, !alias.scope !199
  %i.af = add i64 %.pre.i8.i, 3
  store i64 %i.af, ptr %i.m, align 8, !alias.scope !199
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsiWMK64dCVjf_20pingora_header_serde(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l, i64 noundef 1)
          to label %.noexc5 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc5:                                          ; preds = %.noexc4
  %i.ag = load i64, ptr %i.m, align 8, !alias.scope !200, !noundef !4 ; 2 uses
  %i.ah = icmp sgt i64 %i.ag, -1
  tail call void @llvm.assume(i1 %i.ah)
  %i.ai = load ptr, ptr %i.r, align 8, !alias.scope !200, !nonnull !4, !noundef !4
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ag
  store i8 32, ptr %i.aj, align 1, !noalias !193
  %.pre.i9.i = load i64, ptr %i.m, align 8, !alias.scope !200
  %i.ak = add i64 %.pre.i9.i, 1
  store i64 %i.ak, ptr %i.m, align 8, !alias.scope !200
  %i.al = invoke { ptr, i64 } @_RNvMNtCs84JG9zk80ZV_4http6statusNtB2_10StatusCode16canonical_reason(ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(2) %i.h)
          to label %.noexc6 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc6:                                          ; preds = %.noexc5
  %i.am = extractvalue { ptr, i64 } %i.al, 0      ; 2 uses
  %.not.i = icmp eq ptr %i.am, null
  br i1 %.not.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %.noexc6
  %i.an = extractvalue { ptr, i64 } %i.al, 1      ; 4 uses
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsiWMK64dCVjf_20pingora_header_serde(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l, i64 noundef %i.an)
          to label %.noexc7 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc7:                                          ; preds = %bb.c
  %i.ao = load i64, ptr %i.m, align 8, !alias.scope !201, !noundef !4 ; 3 uses
  %i.ap = icmp sgt i64 %i.ao, -1
  call void @llvm.assume(i1 %i.ap)
  %.not.i.i = icmp eq i64 %i.an, 0
  br i1 %.not.i.i, label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsiWMK64dCVjf_20pingora_header_serde.exit.i, label %bb.d

bb.d:                                             ; preds = %.noexc7
  %i.aq = load ptr, ptr %i.r, align 8, !alias.scope !201, !nonnull !4, !noundef !4
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.ao
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ar, ptr nonnull readonly align 1 %i.am, i64 %i.an, i1 false), !noalias !193
  %.pre.i10.i = load i64, ptr %i.m, align 8, !alias.scope !201
  br label %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsiWMK64dCVjf_20pingora_header_serde.exit.i

_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsiWMK64dCVjf_20pingora_header_serde.exit.i: ; preds = %bb.d, %.noexc7
  %i.as = phi i64 [ %.pre.i10.i, %bb.d ], [ %i.ao, %.noexc7 ]
  %i.at = add i64 %i.as, %i.an
  store i64 %i.at, ptr %i.m, align 8, !alias.scope !201
  br label %bb.e

bb.e:                                             ; preds = %_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE15append_elementsCsiWMK64dCVjf_20pingora_header_serde.exit.i, %.noexc6
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsiWMK64dCVjf_20pingora_header_serde(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l, i64 noundef 2)
          to label %.noexc8 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc8:                                          ; preds = %bb.e
  %i.au = load i64, ptr %i.m, align 8, !alias.scope !202, !noundef !4 ; 2 uses
  %i.av = icmp sgt i64 %i.au, -1
  call void @llvm.assume(i1 %i.av)
  %i.aw = load ptr, ptr %i.r, align 8, !alias.scope !202, !nonnull !4, !noundef !4
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.au
  store i16 2573, ptr %i.ax, align 1, !noalias !193
  %.pre.i11.i = load i64, ptr %i.m, align 8, !alias.scope !202
  %i.ay = add i64 %.pre.i11.i, 2
  store i64 %i.ay, ptr %i.m, align 8, !alias.scope !202
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
  %i.ba = load i64, ptr %i.az, align 8, !range !7, !alias.scope !193, !noundef !4
  %.not5.i = icmp eq i64 %i.ba, -1
  call void @llvm.experimental.noalias.scope.decl(metadata !203)
  br i1 %.not5.i, label %select.unfold.preheader.i.i, label %_RINvMsg_NtNtNtCskKLDkoKarTP_4core4iter8adapters7flattenINtB6_13FlattenCompatINtNtB8_3map3MapINtNtBc_6option8IntoIterRINtNtNtCs84JG9zk80ZV_4http6header3map9HeaderMapNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEENCNvB2G_16case_header_iter0EIB1d_INtNtB8_3zip3ZipINtB1U_4IterB2C_EIB4w_NtNtB1W_5value11HeaderValueEENCNCB3K_00EE9iter_folduNCINvNvXsi_B6_IBS_ppENtNtNtBa_6traits8iterator8Iterator4fold7flattenB4a_uNCINvNvB62_8for_each4callTRB2C_RB4R_ENCINvB2G_17header_to_h1_wireINtNtCsexYYUdYSQU6_5alloc3vec3VechEE0E0E0ECsiWMK64dCVjf_20pingora_header_serde.exit.i.i

_RINvMsg_NtNtNtCskKLDkoKarTP_4core4iter8adapters7flattenINtB6_13FlattenCompatINtNtB8_3map3MapINtNtBc_6option8IntoIterRINtNtNtCs84JG9zk80ZV_4http6header3map9HeaderMapNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEENCNvB2G_16case_header_iter0EIB1d_INtNtB8_3zip3ZipINtB1U_4IterB2C_EIB4w_NtNtB1W_5value11HeaderValueEENCNCB3K_00EE9iter_folduNCINvNvXsi_B6_IBS_ppENtNtNtBa_6traits8iterator8Iterator4fold7flattenB4a_uNCINvNvB62_8for_each4callTRB2C_RB4R_ENCINvB2G_17header_to_h1_wireINtNtCsexYYUdYSQU6_5alloc3vec3VechEE0E0E0ECsiWMK64dCVjf_20pingora_header_serde.exit.i.i: ; preds = %.noexc8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !204
  store ptr %i.l, ptr %i.g, align 8, !noalias !205
  invoke void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtBc_6option8IntoIterRINtNtNtCs84JG9zk80ZV_4http6header3map9HeaderMapNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEENCNvB2b_16case_header_iter0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvMsg_NtB8_7flattenINtB4u_13FlattenCompatppE9iter_fold7flattenIBO_INtNtB8_3zip3ZipINtB1p_4IterB27_EIB5J_NtNtB1r_5value11HeaderValueEENCNCB3f_00EuNCINvNvXsi_B4u_B4H_B3F_4fold7flattenB5o_uNCINvNvB3F_8for_each4callTRB27_RB64_ENCINvB2b_17header_to_h1_wireINtNtCsexYYUdYSQU6_5alloc3vec3VechEE0E0E0E0ECsiWMK64dCVjf_20pingora_header_serde(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(232) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable_or_null(96) %i.az, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %.noexc9 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc9:                                          ; preds = %_RINvMsg_NtNtNtCskKLDkoKarTP_4core4iter8adapters7flattenINtB6_13FlattenCompatINtNtB8_3map3MapINtNtBc_6option8IntoIterRINtNtNtCs84JG9zk80ZV_4http6header3map9HeaderMapNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEENCNvB2G_16case_header_iter0EIB1d_INtNtB8_3zip3ZipINtB1U_4IterB2C_EIB4w_NtNtB1W_5value11HeaderValueEENCNCB3K_00EE9iter_folduNCINvNvXsi_B6_IBS_ppENtNtNtBa_6traits8iterator8Iterator4fold7flattenB4a_uNCINvNvB62_8for_each4callTRB2C_RB4R_ENCINvB2G_17header_to_h1_wireINtNtCsexYYUdYSQU6_5alloc3vec3VechEE0E0E0ECsiWMK64dCVjf_20pingora_header_serde.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !204
  br label %_RINvCskspKcFIsYcD_12pingora_http17header_to_h1_wireINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsiWMK64dCVjf_20pingora_header_serde.exit.i

select.unfold.preheader.i.i:                      ; preds = %.noexc8
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.bc = load i64, ptr %i.bb, align 8, !alias.scope !206, !noundef !4 ; 5 uses
  %.not21.i.i = icmp eq i64 %i.bc, 0
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.be = load ptr, ptr %i.bd, align 8, !alias.scope !206, !nonnull !4 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.bg = load i64, ptr %i.bf, align 8, !alias.scope !206 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.bi = load ptr, ptr %i.bh, align 8, !alias.scope !206, !nonnull !4
  %i.bj = icmp ult i64 %i.bc, 88686269585142076
  %spec.select = select i1 %.not21.i.i, i64 2, i64 0
  br label %select.unfold.i.i

select.unfold.i.i:                                ; preds = %select.unfold.preheader.i.i, %.noexc14
  %.sroa.13.0.i.i = phi i64 [ %.sroa.13.13338.i.i, %.noexc14 ], [ 0, %select.unfold.preheader.i.i ] ; 6 uses
  %.sroa.7.0.i.i = phi i64 [ %.sroa.7.2.i.i, %.noexc14 ], [ undef, %select.unfold.preheader.i.i ] ; 4 uses
  %.sroa.0.0.i.i = phi i64 [ %.sroa.0.1.i.i, %.noexc14 ], [ %spec.select, %select.unfold.preheader.i.i ] ; 2 uses
  %.not.i27.i.i = icmp eq i64 %.sroa.0.0.i.i, 2
  br i1 %.not.i27.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %select.unfold.i.i
  %i.bk = icmp ult i64 %.sroa.13.0.i.i, %i.bc
  br i1 %i.bk, label %bb.h, label %.invoke

.thread35.i.i:                                    ; preds = %bb.g
  %i.bl = getelementptr inbounds nuw [104 x i8], ptr %i.be, i64 %i.bm
  br label %bb.j

bb.g:                                             ; preds = %select.unfold.i.i
  %i.bm = add i64 %.sroa.13.0.i.i, 1              ; 3 uses
  call void @llvm.assume(i1 %i.bj)
  %.not17.i.i.i = icmp ult i64 %i.bm, %i.bc
  br i1 %.not17.i.i.i, label %.thread35.i.i, label %_RINvCskspKcFIsYcD_12pingora_http17header_to_h1_wireINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsiWMK64dCVjf_20pingora_header_serde.exit.i

bb.h:                                             ; preds = %bb.f
  %i.bn = icmp eq i64 %.sroa.0.0.i.i, 0
  %i.bo = getelementptr inbounds nuw [104 x i8], ptr %i.be, i64 %.sroa.13.0.i.i ; 2 uses
  br i1 %i.bn, label %bb.j, label %bb.i, !prof !207

.invoke:                                          ; preds = %bb.i, %bb.f
  %i.bp = phi i64 [ %.sroa.13.0.i.i, %bb.f ], [ %.sroa.7.0.i.i, %bb.i ]
  %i.bq = phi i64 [ %i.bc, %bb.f ], [ %i.bg, %bb.i ]
  %i.br = phi ptr [ @101, %bb.f ], [ @102, %bb.i ]
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.bp, i64 noundef %i.bq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.br) #23
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.bs = icmp ult i64 %.sroa.7.0.i.i, %i.bg
  br i1 %i.bs, label %bb.m, label %.invoke

bb.j:                                             ; preds = %bb.h, %.thread35.i.i
  %i.bt = phi ptr [ %i.bl, %.thread35.i.i ], [ %i.bo, %bb.h ] ; 4 uses
  %.sroa.13.13339.i.i = phi i64 [ %i.bm, %.thread35.i.i ], [ %.sroa.13.0.i.i, %bb.h ]
  %.sroa.09.0.copyload.i.i.i = load i64, ptr %i.bt, align 8, !noalias !208
  %i.bu = trunc nuw i64 %.sroa.09.0.copyload.i.i.i to i1
  br i1 %i.bu, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %.sroa.410.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %.sroa.410.0.copyload.i.i.i = load i64, ptr %.sroa.410.0..sroa_idx.i.i.i, align 8, !noalias !208
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.sroa.58.0.i.i.i = phi i64 [ %.sroa.410.0.copyload.i.i.i, %bb.k ], [ undef, %bb.j ]
  %.sroa.07.0.i.i.i = phi i64 [ 1, %bb.k ], [ 2, %bb.j ]
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  br label %bb.p

bb.m:                                             ; preds = %bb.i
  %i.bw = getelementptr inbounds nuw [72 x i8], ptr %i.bi, i64 %.sroa.7.0.i.i ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.by = load i64, ptr %i.bx, align 8, !range !12, !noalias !208, !noundef !4
  %i.bz = trunc nuw i64 %i.by to i1
  br i1 %i.bz, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %i.cb = load i64, ptr %i.ca, align 8, !noalias !208, !noundef !4
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.sroa.7.1.i.i = phi i64 [ %i.cb, %bb.n ], [ %.sroa.7.0.i.i, %bb.m ]
  %.sink.i.i.i = phi i64 [ 1, %bb.n ], [ 2, %bb.m ]
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bw, i64 32
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.l
  %i.cd = phi ptr [ %i.bt, %bb.l ], [ %i.bo, %bb.o ] ; 3 uses
  %.sroa.13.13338.i.i = phi i64 [ %.sroa.13.13339.i.i, %bb.l ], [ %.sroa.13.0.i.i, %bb.o ]
  %.sroa.7.2.i.i = phi i64 [ %.sroa.58.0.i.i.i, %bb.l ], [ %.sroa.7.1.i.i, %bb.o ]
  %.sroa.0.1.i.i = phi i64 [ %.sroa.07.0.i.i.i, %bb.l ], [ %.sink.i.i.i, %bb.o ]
  %.sroa.4.0.i.i.i = phi ptr [ %i.bv, %bb.l ], [ %i.cc, %bb.o ] ; 2 uses
  %.sroa.0.0.i.i.i = getelementptr inbounds nuw i8, ptr %i.cd, i64 64
  %i.ce = load ptr, ptr %.sroa.0.0.i.i.i, align 8, !noalias !209, !noundef !4
  %.not23.i.i = icmp eq ptr %i.ce, null
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 72 ; 2 uses
  br i1 %.not23.i.i, label %switch.lookup, label %4

switch.lookup:                                    ; preds = %bb.p
  %3 = load i8, ptr %i.cf, align 8, !range !11, !noalias !209, !noundef !4 ; 2 uses
  %i.cg = zext nneg i8 %3 to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvMCsiWMK64dCVjf_20pingora_header_serdeNtB2_11HeaderSerde9serialize, i64 %i.cg
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.ch = zext nneg i8 %3 to i64
  %switch.gep54 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvMCsiWMK64dCVjf_20pingora_header_serdeNtB2_11HeaderSerde9serialize.27, i64 %i.ch
  br label %_RNvMsP_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_14StandardHeader6as_str.exit.i.i

4:                                                ; preds = %bb.p
  %5 = getelementptr inbounds nuw i8, ptr %i.cd, i64 80
  %6 = load i64, ptr %5, align 8, !noalias !209, !noundef !4
  br label %_RNvMsP_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_14StandardHeader6as_str.exit.i.i

_RNvMsP_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_14StandardHeader6as_str.exit.i.i: ; preds = %switch.lookup, %4
  %7 = phi i64 [ %6, %4 ], [ %switch.ext, %switch.lookup ]
  %.in = phi ptr [ %i.cf, %4 ], [ %switch.gep54, %switch.lookup ]
  %8 = load ptr, ptr %.in, align 8
  invoke void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsiWMK64dCVjf_20pingora_header_serde(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %8, i64 noundef range(i64 0, -9223372036854775808) %7)
          to label %.noexc12 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc12:                                         ; preds = %_RNvMsP_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_14StandardHeader6as_str.exit.i.i
  invoke void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsiWMK64dCVjf_20pingora_header_serde(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @12, i64 noundef 2)
          to label %.noexc13 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc13:                                         ; preds = %.noexc12
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.i.i, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8, !noalias !209, !noundef !4
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.4.0.i.i.i, i64 16
  %i.cl = load i64, ptr %i.ck, align 8, !noalias !209, !noundef !4
  invoke void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsiWMK64dCVjf_20pingora_header_serde(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cj, i64 noundef range(i64 0, -9223372036854775808) %i.cl)
          to label %.noexc14 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc14:                                         ; preds = %.noexc13
  invoke void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsiWMK64dCVjf_20pingora_header_serde(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 2)
          to label %select.unfold.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvCskspKcFIsYcD_12pingora_http17header_to_h1_wireINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsiWMK64dCVjf_20pingora_header_serde.exit.i: ; preds = %bb.g, %.noexc9
  invoke void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsiWMK64dCVjf_20pingora_header_serde(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.l, i64 noundef 2)
          to label %bb.r unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.q:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #23
  unreachable

bb.r:                                             ; preds = %_RINvCskspKcFIsYcD_12pingora_http17header_to_h1_wireINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsiWMK64dCVjf_20pingora_header_serde.exit.i
  %i.cm = load i64, ptr %i.m, align 8, !alias.scope !210, !noundef !4 ; 2 uses
  %i.cn = icmp sgt i64 %i.cm, -1
  call void @llvm.assume(i1 %i.cn)
  %i.co = load ptr, ptr %i.r, align 8, !alias.scope !210, !nonnull !4, !noundef !4
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.cm
  store i16 2573, ptr %i.cp, align 1
  %.pre.i13.i = load i64, ptr %i.m, align 8, !alias.scope !210
  %i.cq = add nsw i64 %.pre.i13.i, 2              ; 3 uses
  store i64 %i.cq, ptr %i.m, align 8, !alias.scope !210
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !197
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 512 ; 2 uses
  %i.cs = load ptr, ptr %i.r, align 8, !nonnull !4, !noundef !4 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !211)
  %i.ct = load ptr, ptr %i.cr, align 8, !noalias !212, !noundef !4
  %.not.i17 = icmp eq ptr %i.ct, null
  br i1 %.not.i17, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !212
  invoke void @_RNvMs_NtCsiWMK64dCVjf_20pingora_header_serde11thread_zstdNtB4_19CompressionWithDict8compress(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noundef nonnull align 8 %i.cr, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cs, i64 noundef range(i64 0, -9223372036854775808) %i.cq)
          to label %.noexc18 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc18:                                         ; preds = %bb.s
  %i.cu = load i64, ptr %i.e, align 8, !range !8, !noalias !212, !noundef !4
  %i.cv = icmp eq i64 %i.cu, -1
  br i1 %i.cv, label %bb.x, label %bb.y

bb.t:                                             ; preds = %bb.r
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 520
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !212
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 1544
  %i.cy = load i32, ptr %i.cx, align 8, !noalias !212, !noundef !4
  invoke void @_RNvMNtCsiWMK64dCVjf_20pingora_header_serde11thread_zstdNtB2_11Compression8compress(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noundef nonnull align 8 %i.cw, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cs, i64 noundef range(i64 0, -9223372036854775808) %i.cq, i32 noundef %i.cy)
          to label %.noexc19 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc19:                                         ; preds = %bb.t
  %i.cz = load i64, ptr %i.f, align 8, !range !8, !noalias !212, !noundef !4
  %i.da = icmp eq i64 %i.cz, -1
  br i1 %i.da, label %bb.u, label %bb.v

bb.u:                                             ; preds = %.noexc19
  %i.db = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.dc = load ptr, ptr %i.db, align 8, !noalias !212, !nonnull !4, !noundef !4
  %i.dd = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.de = load i64, ptr %i.dd, align 8, !noalias !212, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !212
  store i16 28, ptr %i.d, align 8, !noalias !212
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !213
  store i64 0, ptr %i.b, align 8, !noalias !213
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @100, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !213
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 15, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !213
  %i.df = invoke fastcc ptr @_RNvXs1_NtCskKLDkoKarTP_4core7convertReINtB5_4IntoINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB7_5error5ErrorNtNtB7_6marker4SendNtB1G_4SyncEL_EE4intoCsiWMK64dCVjf_20pingora_header_serde(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.dc, i64 noundef %i.de)
          to label %.noexc20 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc20:                                         ; preds = %bb.u
  %i.dg = invoke fastcc noalias noundef nonnull align 8 ptr @_RNvMs2_CsfsXztIhCltD_13pingora_errorNtB5_5Error6create(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.d, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.b, ptr noundef %i.df, ptr nonnull @104)
          to label %.noexc21 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc21:                                         ; preds = %.noexc20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !213
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !212
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.dg, ptr %i.dh, align 8, !alias.scope !211
  store i64 -1, ptr %0, align 8, !alias.scope !211
  br label %bb.w

bb.v:                                             ; preds = %.noexc19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !214
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %.noexc21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !212
  br label %_RNvMs_CsiWMK64dCVjf_20pingora_header_serdeNtB4_15ZstdCompression8compress.exit

bb.x:                                             ; preds = %.noexc18
  %i.di = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.dj = load ptr, ptr %i.di, align 8, !noalias !212, !nonnull !4, !noundef !4
  %i.dk = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.dl = load i64, ptr %i.dk, align 8, !noalias !212, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !212
  store i16 28, ptr %i.c, align 8, !noalias !212
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !215
  store i64 0, ptr %i.a, align 8, !noalias !215
  %.sroa.4.0..sroa_idx.i1.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @100, ptr %.sroa.4.0..sroa_idx.i1.i, align 8, !noalias !215
  %.sroa.5.0..sroa_idx.i2.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 15, ptr %.sroa.5.0..sroa_idx.i2.i, align 8, !noalias !215
  %i.dm = invoke fastcc ptr @_RNvXs1_NtCskKLDkoKarTP_4core7convertReINtB5_4IntoINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB7_5error5ErrorNtNtB7_6marker4SendNtB1G_4SyncEL_EE4intoCsiWMK64dCVjf_20pingora_header_serde(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.dj, i64 noundef %i.dl)
          to label %.noexc22 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc22:                                         ; preds = %bb.x
  %i.dn = invoke fastcc noalias noundef nonnull align 8 ptr @_RNvMs2_CsfsXztIhCltD_13pingora_errorNtB5_5Error6create(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.a, ptr noundef %i.dm, ptr nonnull @104)
          to label %.noexc23 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc23:                                         ; preds = %.noexc22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !215
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !212
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.dn, ptr %i.do, align 8, !alias.scope !211
  store i64 -1, ptr %0, align 8, !alias.scope !211
  br label %bb.z

bb.y:                                             ; preds = %.noexc18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !214
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %.noexc23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !212
  br label %_RNvMs_CsiWMK64dCVjf_20pingora_header_serdeNtB4_15ZstdCompression8compress.exit

_RNvMs_CsiWMK64dCVjf_20pingora_header_serdeNtB4_15ZstdCompression8compress.exit: ; preds = %bb.z, %bb.w
  %i.dp = load i64, ptr %i.i, align 8, !noundef !4
  %i.dq = add i64 %i.dp, 1
  store i64 %i.dq, ptr %i.i, align 8
  ret void

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RNvMsP_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_14StandardHeader6as_str.exit.i.i, %.noexc12, %.noexc13, %.noexc14, %bb.u, %bb.x, %.noexc20, %.noexc22, %.invoke, %bb.b, %.noexc, %.noexc4, %.noexc5, %bb.c, %bb.e, %_RINvMsg_NtNtNtCskKLDkoKarTP_4core4iter8adapters7flattenINtB6_13FlattenCompatINtNtB8_3map3MapINtNtBc_6option8IntoIterRINtNtNtCs84JG9zk80ZV_4http6header3map9HeaderMapNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEENCNvB2G_16case_header_iter0EIB1d_INtNtB8_3zip3ZipINtB1U_4IterB2C_EIB4w_NtNtB1W_5value11HeaderValueEENCNCB3K_00EE9iter_folduNCINvNvXsi_B6_IBS_ppENtNtNtBa_6traits8iterator8Iterator4fold7flattenB4a_uNCINvNvB62_8for_each4callTRB2C_RB4R_ENCINvB2G_17header_to_h1_wireINtNtCsexYYUdYSQU6_5alloc3vec3VechEE0E0E0ECsiWMK64dCVjf_20pingora_header_serde.exit.i.i, %_RINvCskspKcFIsYcD_12pingora_http17header_to_h1_wireINtNtCsexYYUdYSQU6_5alloc3vec3VechEECsiWMK64dCVjf_20pingora_header_serde.exit.i, %bb.s, %bb.t
  %lpad.loopexit.split-lp56 = landingpad { ptr, i32 }
          cleanup
  %i.dr = load i64, ptr %i.i, align 8, !noundef !4
  %i.ds = add i64 %i.dr, 1
  store i64 %i.ds, ptr %i.i, align 8
  resume { ptr, i32 } %lpad.loopexit.split-lp56
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMs0_NtNtCs84JG9zk80ZV_4http6header3mapINtB5_9HeaderMapNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameE15try_reserve_oneCsiWMK64dCVjf_20pingora_header_serde(ptr noalias nofree noundef align 8 dereferenceable(96) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.g = load i64, ptr %i.f, align 8, !noundef !4 ; 4 uses
  %i.h = icmp ult i64 %i.g, 96076792050570582
  tail call void @llvm.assume(i1 %i.h)
  %i.i = load i64, ptr %0, align 8, !range !9, !noundef !4
  %i.j = icmp eq i64 %i.i, 1
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 5 uses
  %i.l = load i64, ptr %i.k, align 8, !noundef !4 ; 5 uses
  br i1 %i.j, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.n = lshr i64 %i.l, 2
  %i.o = sub nuw i64 %i.l, %i.n
  %i.p = icmp eq i64 %i.g, %i.o
  br i1 %i.p, label %bb.d, label %_RNvMs0_NtNtCs84JG9zk80ZV_4http6header3mapINtB5_9HeaderMapNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameE7rebuildCsiWMK64dCVjf_20pingora_header_serde.exit

bb.c:                                             ; preds = %bb.a
  %i.q = mul nuw nsw i64 %i.g, 5
  %.not = icmp ult i64 %i.q, %i.l
  br i1 %.not, label %bb.q, label %bb.r

bb.d:                                             ; preds = %bb.b
  %i.r = icmp eq i64 %i.g, 0
  br i1 %i.r, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i16 7, ptr %i.s, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !222
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !222
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsiWMK64dCVjf_20pingora_header_serde(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, -9223372036854775808) 8, i1 noundef zeroext false, i64 noundef 2, i64 noundef 4), !noalias !222
  %i.t = load i64, ptr %i.a, align 8, !range !12, !noalias !222, !noundef !4
  %i.u = trunc nuw i64 %i.t to i1
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.w = load i64, ptr %i.v, align 8, !range !13, !noalias !222, !noundef !4 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.u, label %bb.f, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsiWMK64dCVjf_20pingora_header_serde.exit.i, !prof !14

bb.f:                                             ; preds = %bb.e
  %i.y = load i64, ptr %i.x, align 8, !noalias !222
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.w, i64 %i.y) #22, !noalias !222
  unreachable

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsiWMK64dCVjf_20pingora_header_serde.exit.i: ; preds = %bb.e
  %i.z = load ptr, ptr %i.x, align 8, !noalias !222, !nonnull !4, !noundef !4
  %i.aa = icmp samesign ugt i64 %i.w, 7
  tail call void @llvm.assume(i1 %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !222
  store i64 %i.w, ptr %i.b, align 8, !noalias !222
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.z, ptr %i.ab, align 8, !noalias !222
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 0, ptr %i.ac, align 8, !noalias !222
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs84JG9zk80ZV_4http6header3map3PosE11extend_withCsiWMK64dCVjf_20pingora_header_serde(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef 8, i16 noundef -1, i16 noundef 0)
          to label %_RINvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemNtNtNtCs84JG9zk80ZV_4http6header3map3PosNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECsiWMK64dCVjf_20pingora_header_serde.exit unwind label %bb.g, !noalias !222

bb.g:                                             ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsiWMK64dCVjf_20pingora_header_serde.exit.i
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs84JG9zk80ZV_4http6header3map3PosEECsiWMK64dCVjf_20pingora_header_serde(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #20
          to label %common.resume unwind label %bb.h, !noalias !222

bb.h:                                             ; preds = %bb.g
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !noalias !222
  unreachable

common.resume:                                    ; preds = %bb.g, %.body
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.ad, %bb.g ]
  resume { ptr, i32 } %common.resume.op

_RINvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemNtNtNtCs84JG9zk80ZV_4http6header3map3PosNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECsiWMK64dCVjf_20pingora_header_serde.exit: ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsiWMK64dCVjf_20pingora_header_serde.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !222
  %i.af = call { ptr, i64 } @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtCs84JG9zk80ZV_4http6header3map3PosE16into_boxed_sliceCsiWMK64dCVjf_20pingora_header_serde(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d) ; 2 uses
  %i.ag = extractvalue { ptr, i64 } %i.af, 0
  %i.ah = extractvalue { ptr, i64 } %i.af, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.val14 = load i64, ptr %i.k, align 8, !noundef !4 ; 2 uses
  %i.ai = icmp eq i64 %.val14, 0
  br i1 %i.ai, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSNtNtNtCs84JG9zk80ZV_4http6header3map3PosEECsiWMK64dCVjf_20pingora_header_serde.exit, label %bb.i

bb.i:                                             ; preds = %_RINvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemNtNtNtCs84JG9zk80ZV_4http6header3map3PosNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECsiWMK64dCVjf_20pingora_header_serde.exit
  %.val = load ptr, ptr %i.m, align 8, !nonnull !4, !noundef !4
  %i.aj = shl nuw nsw i64 %.val14, 2
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef range(i64 1, 0) %i.aj, i64 noundef 2) #18
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSNtNtNtCs84JG9zk80ZV_4http6header3map3PosEECsiWMK64dCVjf_20pingora_header_serde.exit

bb.j:                                             ; preds = %bb.d
  %i.ak = shl i64 %i.l, 1
  %i.al = tail call fastcc noundef zeroext i1 @_RNvMs0_NtNtCs84JG9zk80ZV_4http6header3mapINtB5_9HeaderMapNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameE8try_growCsiWMK64dCVjf_20pingora_header_serde(ptr noalias nofree noundef align 8 dereferenceable(96) %0, i64 noundef %i.ak) #21
  br i1 %i.al, label %bb.z, label %_RNvMs0_NtNtCs84JG9zk80ZV_4http6header3mapINtB5_9HeaderMapNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameE7rebuildCsiWMK64dCVjf_20pingora_header_serde.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSNtNtNtCs84JG9zk80ZV_4http6header3map3PosEECsiWMK64dCVjf_20pingora_header_serde.exit: ; preds = %bb.i, %_RINvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemNtNtNtCs84JG9zk80ZV_4http6header3map3PosNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECsiWMK64dCVjf_20pingora_header_serde.exit
  store ptr %i.ag, ptr %i.m, align 8
  store i64 %i.ah, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsiWMK64dCVjf_20pingora_header_serde(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef 6, i1 noundef zeroext false, i64 noundef 8, i64 noundef 96)
  %i.am = load i64, ptr %i.c, align 8, !range !12, !noundef !4
  %i.an = trunc nuw i64 %i.am to i1
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ap = load i64, ptr %i.ao, align 8, !range !13, !noundef !4 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.an, label %bb.k, label %bb.l, !prof !14

bb.k:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSNtNtNtCs84JG9zk80ZV_4http6header3map3PosEECsiWMK64dCVjf_20pingora_header_serde.exit
  %i.ar = load i64, ptr %i.aq, align 8
  call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.ap, i64 %i.ar) #22
  unreachable

bb.l:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSNtNtNtCs84JG9zk80ZV_4http6header3map3PosEECsiWMK64dCVjf_20pingora_header_serde.exit
  %i.as = load ptr, ptr %i.aq, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.at = icmp samesign ugt i64 %i.ap, 5
  call void @llvm.assume(i1 %i.at)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCs84JG9zk80ZV_4http6header3map6BucketNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiWMK64dCVjf_20pingora_header_serde(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %bb.n unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.au = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtCs84JG9zk80ZV_4http6header3map6BucketNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiWMK64dCVjf_20pingora_header_serde(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %.body unwind label %bb.o

bb.n:                                             ; preds = %bb.l
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtCs84JG9zk80ZV_4http6header3map6BucketNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiWMK64dCVjf_20pingora_header_serde(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtNtCs84JG9zk80ZV_4http6header3map6BucketNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEEECsiWMK64dCVjf_20pingora_header_serde.exit unwind label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.m, %bb.p
  %eh.lpad-body = phi { ptr, i32 } [ %i.aw, %bb.p ], [ %i.au, %bb.m ]
  store i64 %i.ap, ptr %i.e, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.as, ptr %.sroa.5.0..sroa_idx, align 8
  store i64 0, ptr %i.f, align 8
  br label %common.resume

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtNtCs84JG9zk80ZV_4http6header3map6BucketNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEEECsiWMK64dCVjf_20pingora_header_serde.exit: ; preds = %bb.n
  store i64 %i.ap, ptr %i.e, align 8
  %.sroa.5.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.as, ptr %.sroa.5.0..sroa_idx5, align 8
  store i64 0, ptr %i.f, align 8
  br label %_RNvMs0_NtNtCs84JG9zk80ZV_4http6header3mapINtB5_9HeaderMapNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameE7rebuildCsiWMK64dCVjf_20pingora_header_serde.exit

_RNvMs0_NtNtCs84JG9zk80ZV_4http6header3mapINtB5_9HeaderMapNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameE7rebuildCsiWMK64dCVjf_20pingora_header_serde.exit: ; preds = %.backedge.i, %._crit_edge, %bb.r, %bb.j, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtNtCs84JG9zk80ZV_4http6header3map6BucketNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEEECsiWMK64dCVjf_20pingora_header_serde.exit, %bb.b
  br label %bb.z
end_hunk_2
begin_hunk_3_@_RNvXs2_NtNtCsG258MDvU3F_3std4hash6randomNtB5_13DefaultHasherNtNtCskKLDkoKarTP_4core4hash6Hasher5write:bb.a
  br i1 %i.ae, label %bb.j, label %bb.i

bb.h:                                             ; preds = %bb.i, %bb.a
  %.sroa.0.0.i = phi i64 [ 0, %bb.a ], [ %i.g, %bb.i ] ; 4 uses
  %i.af = sub nsw i64 %2, %.sroa.0.0.i            ; 2 uses
  %i.ag = and i64 %i.af, 7                        ; 4 uses
  %i.ah = and i64 %i.af, -8                       ; 2 uses
  %i.ai = icmp ult i64 %.sroa.0.0.i, %i.ah
  br i1 %i.ai, label %.lr.ph.i, label %bb.k

.lr.ph.i:                                         ; preds = %bb.h
  %.promoted.i = load i64, ptr %0, align 8, !alias.scope !276
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted19.i = load i64, ptr %i.aj, align 8, !alias.scope !276
  %.promoted20.i = load i64, ptr %i.ak, align 8, !alias.scope !279
  %.promoted22.i = load i64, ptr %i.al, align 8, !alias.scope !279
  br label %bb.q

bb.i:                                             ; preds = %_RNvNtNtCskKLDkoKarTP_4core4hash3sip9u8to64_le.exit.i
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !alias.scope !276, !noundef !4
  %i.ao = xor i64 %i.an, %i.ad                    ; 3 uses
  %i.ap = load i64, ptr %0, align 8, !alias.scope !280, !noundef !4
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !alias.scope !280, !noundef !4 ; 3 uses
  %i.as = add i64 %i.ar, %i.ap                    ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !alias.scope !280, !noundef !4
  %i.av = add i64 %i.au, %i.ao                    ; 2 uses
  %i.aw = tail call noundef i64 @llvm.fshl.i64(i64 %i.ar, i64 %i.ar, i64 13)
  %i.ax = xor i64 %i.aw, %i.as                    ; 3 uses
  %i.ay = tail call noundef i64 @llvm.fshl.i64(i64 %i.ao, i64 %i.ao, i64 16)
  %i.az = xor i64 %i.av, %i.ay                    ; 3 uses
  %i.ba = tail call noundef i64 @llvm.fshl.i64(i64 %i.as, i64 %i.as, i64 32)
  %i.bb = add i64 %i.av, %i.ax                    ; 3 uses
  %i.bc = add i64 %i.az, %i.ba                    ; 2 uses
  %i.bd = tail call noundef i64 @llvm.fshl.i64(i64 %i.ax, i64 %i.ax, i64 17)
  %i.be = xor i64 %i.bb, %i.bd
  store i64 %i.be, ptr %i.aq, align 8, !alias.scope !280
  %i.bf = tail call noundef i64 @llvm.fshl.i64(i64 %i.az, i64 %i.az, i64 21)
  %i.bg = xor i64 %i.bf, %i.bc
  store i64 %i.bg, ptr %i.am, align 8, !alias.scope !280
  %i.bh = tail call noundef i64 @llvm.fshl.i64(i64 %i.bb, i64 %i.bb, i64 32)
  store i64 %i.bh, ptr %i.at, align 8, !alias.scope !280
  %i.bi = xor i64 %i.bc, %i.ad
  store i64 %i.bi, ptr %0, align 8, !alias.scope !276
  br label %bb.h

bb.j:                                             ; preds = %_RNvNtNtCskKLDkoKarTP_4core4hash3sip9u8to64_le.exit.i
  %i.bj = add i64 %i.e, %2
  br label %_RNvXs3_NtNtCskKLDkoKarTP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsiWMK64dCVjf_20pingora_header_serde.exit

._crit_edge.i:                                    ; preds = %bb.q
  store i64 %i.cy, ptr %i.aj, align 8, !alias.scope !276
  store i64 %i.cw, ptr %i.ak, align 8, !alias.scope !279
  store i64 %i.cz, ptr %i.al, align 8, !alias.scope !279
  store i64 %i.da, ptr %0, align 8, !alias.scope !276
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge.i, %bb.h
  %.sroa.0.1.lcssa.i = phi i64 [ %i.db, %._crit_edge.i ], [ %.sroa.0.0.i, %bb.h ] ; 3 uses
  %i.bk = icmp samesign ugt i64 %i.ag, 3
  br i1 %i.bk, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.1.lcssa.i
  %.sroa.014.0.copyload.i16.i = load i32, ptr %i.bl, align 1, !alias.scope !281
  %i.bm = zext i32 %.sroa.014.0.copyload.i16.i to i64
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.sroa.03.0.i10.i = phi i64 [ 4, %bb.l ], [ 0, %bb.k ] ; 5 uses
  %.sroa.0.0.i11.i = phi i64 [ %i.bm, %bb.l ], [ 0, %bb.k ] ; 2 uses
  %i.bn = or disjoint i64 %.sroa.03.0.i10.i, 1
  %i.bo = icmp samesign ult i64 %i.bn, %i.ag
  br i1 %i.bo, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bp = getelementptr i8, ptr %1, i64 %.sroa.0.1.lcssa.i
  %i.bq = getelementptr i8, ptr %i.bp, i64 %.sroa.03.0.i10.i
  %.sroa.015.0.copyload.i15.i = load i16, ptr %i.bq, align 1, !alias.scope !281
  %i.br = zext i16 %.sroa.015.0.copyload.i15.i to i64
  %i.bs = shl nuw nsw i64 %.sroa.03.0.i10.i, 3
  %i.bt = shl nuw nsw i64 %i.br, %i.bs
  %i.bu = or i64 %i.bt, %.sroa.0.0.i11.i
  %i.bv = or disjoint i64 %.sroa.03.0.i10.i, 2
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.sroa.03.1.i12.i = phi i64 [ %i.bv, %bb.n ], [ %.sroa.03.0.i10.i, %bb.m ] ; 3 uses
  %.sroa.0.1.i13.i = phi i64 [ %i.bu, %bb.n ], [ %.sroa.0.0.i11.i, %bb.m ] ; 2 uses
  %i.bw = icmp samesign ult i64 %.sroa.03.1.i12.i, %i.ag
  br i1 %i.bw, label %bb.p, label %_RNvNtNtCskKLDkoKarTP_4core4hash3sip9u8to64_le.exit17.i

bb.p:                                             ; preds = %bb.o
  %i.bx = add i64 %.sroa.03.1.i12.i, %.sroa.0.1.lcssa.i ; 2 uses
  %i.by = icmp ult i64 %i.bx, %2
  tail call void @llvm.assume(i1 %i.by)
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 %i.bx
  %i.ca = load i8, ptr %i.bz, align 1, !alias.scope !281, !noundef !4
  %i.cb = zext i8 %i.ca to i64
  %i.cc = shl nuw nsw i64 %.sroa.03.1.i12.i, 3
  %i.cd = shl nuw nsw i64 %i.cb, %i.cc
  %i.ce = or i64 %i.cd, %.sroa.0.1.i13.i
  br label %_RNvNtNtCskKLDkoKarTP_4core4hash3sip9u8to64_le.exit17.i

_RNvNtNtCskKLDkoKarTP_4core4hash3sip9u8to64_le.exit17.i: ; preds = %bb.p, %bb.o
  %.sroa.0.2.i14.i = phi i64 [ %i.ce, %bb.p ], [ %.sroa.0.1.i13.i, %bb.o ]
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %.sroa.0.2.i14.i, ptr %i.cf, align 8, !alias.scope !276
  br label %_RNvXs3_NtNtCskKLDkoKarTP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsiWMK64dCVjf_20pingora_header_serde.exit

bb.q:                                             ; preds = %bb.q, %.lr.ph.i
  %i.cg = phi i64 [ %.promoted22.i, %.lr.ph.i ], [ %i.cz, %bb.q ]
  %i.ch = phi i64 [ %.promoted20.i, %.lr.ph.i ], [ %i.cw, %bb.q ] ; 3 uses
  %i.ci = phi i64 [ %.promoted19.i, %.lr.ph.i ], [ %i.cy, %bb.q ]
  %.sroa.0.118.i = phi i64 [ %.sroa.0.0.i, %.lr.ph.i ], [ %i.db, %bb.q ] ; 2 uses
  %i.cj = phi i64 [ %.promoted.i, %.lr.ph.i ], [ %i.da, %bb.q ]
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.0.118.i
  %.sroa.07.0.copyload.i = load i64, ptr %i.ck, align 1, !alias.scope !277 ; 2 uses
  %i.cl = xor i64 %.sroa.07.0.copyload.i, %i.ci   ; 3 uses
  %i.cm = add i64 %i.cj, %i.ch                    ; 3 uses
  %i.cn = add i64 %i.cl, %i.cg                    ; 2 uses
  %i.co = tail call noundef i64 @llvm.fshl.i64(i64 %i.ch, i64 %i.ch, i64 13)
  %i.cp = xor i64 %i.cm, %i.co                    ; 3 uses
  %i.cq = tail call noundef i64 @llvm.fshl.i64(i64 %i.cl, i64 %i.cl, i64 16)
  %i.cr = xor i64 %i.cn, %i.cq                    ; 3 uses
  %i.cs = tail call noundef i64 @llvm.fshl.i64(i64 %i.cm, i64 %i.cm, i64 32)
  %i.ct = add i64 %i.cn, %i.cp                    ; 3 uses
  %i.cu = add i64 %i.cr, %i.cs                    ; 2 uses
  %i.cv = tail call noundef i64 @llvm.fshl.i64(i64 %i.cp, i64 %i.cp, i64 17)
  %i.cw = xor i64 %i.ct, %i.cv                    ; 2 uses
  %i.cx = tail call noundef i64 @llvm.fshl.i64(i64 %i.cr, i64 %i.cr, i64 21)
  %i.cy = xor i64 %i.cx, %i.cu                    ; 2 uses
  %i.cz = tail call noundef i64 @llvm.fshl.i64(i64 %i.ct, i64 %i.ct, i64 32) ; 2 uses
  %i.da = xor i64 %i.cu, %.sroa.07.0.copyload.i   ; 2 uses
  %i.db = add nuw i64 %.sroa.0.118.i, 8           ; 3 uses
  %i.dc = icmp ult i64 %i.db, %i.ah
  br i1 %i.dc, label %bb.q, label %._crit_edge.i

_RNvXs3_NtNtCskKLDkoKarTP_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCsiWMK64dCVjf_20pingora_header_serde.exit: ; preds = %bb.j, %_RNvNtNtCskKLDkoKarTP_4core4hash3sip9u8to64_le.exit17.i
  %storemerge.i = phi i64 [ %i.bj, %bb.j ], [ %i.ag, %_RNvNtNtCskKLDkoKarTP_4core4hash3sip9u8to64_le.exit17.i ]
  store i64 %storemerge.i, ptr %i.d, align 8, !alias.scope !276
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvXsc_NtNtCs84JG9zk80ZV_4http6header3mapINtB5_4IterNtNtB7_5value11HeaderValueENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsiWMK64dCVjf_20pingora_header_serde(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !9, !noundef !4 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.not = icmp eq i64 %i.a, 2
  br i1 %.not, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre = load ptr, ptr %.phi.trans.insert, align 8 ; 2 uses
  %.phi.trans.insert19 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.pre20 = load i64, ptr %.phi.trans.insert19, align 8
  %.phi.trans.insert21 = getelementptr inbounds nuw i8, ptr %.pre, i64 40
  %.pre22 = load i64, ptr %.phi.trans.insert21, align 8
  %i.c = icmp eq i64 %i.a, 0
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %bb.d
  %cond = phi i1 [ %i.c, %._crit_edge ], [ true, %bb.d ]
  %i.d = phi i64 [ %.pre22, %._crit_edge ], [ %i.n, %bb.d ] ; 2 uses
  %i.e = phi i64 [ %.pre20, %._crit_edge ], [ %i.j, %bb.d ] ; 3 uses
  %i.f = phi ptr [ %.pre, %._crit_edge ], [ %i.l, %bb.d ] ; 3 uses
  %i.g = icmp ult i64 %i.e, %i.d
  br i1 %i.g, label %bb.e, label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !noundef !4
  %i.j = add i64 %i.i, 1                          ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !4, !align !10, !noundef !4 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.n = load i64, ptr %i.m, align 8, !noundef !4 ; 3 uses
  %i.o = icmp ult i64 %i.n, 88686269585142076
  tail call void @llvm.assume(i1 %i.o)
  %.not17 = icmp ult i64 %i.j, %i.n
  br i1 %.not17, label %bb.d, label %bb.p

bb.d:                                             ; preds = %bb.c
  store i64 %i.j, ptr %i.h, align 8
  store i64 0, ptr %0, align 8
  br label %bb.b

bb.e:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !4, !noundef !4
  %i.r = getelementptr inbounds nuw [104 x i8], ptr %i.q, i64 %i.e ; 4 uses
  %i.s = load i64, ptr %i.b, align 8              ; 3 uses
  br i1 %cond, label %bb.h, label %bb.g, !prof !18

bb.f:                                             ; preds = %bb.b
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.e, i64 noundef %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @101) #23
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %i.u = load i64, ptr %i.t, align 8, !noundef !4 ; 2 uses
  %i.v = icmp ult i64 %i.s, %i.u
  br i1 %i.v, label %bb.l, label %bb.m

bb.h:                                             ; preds = %bb.e
  %.sroa.09.0.copyload = load i64, ptr %i.r, align 8
  %i.w = trunc nuw i64 %.sroa.09.0.copyload to i1
  br i1 %i.w, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.410.0.copyload = load i64, ptr %.sroa.410.0..sroa_idx, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %.sroa.58.0 = phi i64 [ %.sroa.410.0.copyload, %bb.i ], [ undef, %bb.h ]
  %.sroa.07.0 = phi i64 [ 1, %bb.i ], [ 2, %bb.h ]
  store i64 %.sroa.07.0, ptr %0, align 8
  store i64 %.sroa.58.0, ptr %i.b, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  br label %bb.k

bb.k:                                             ; preds = %bb.o, %bb.j
  %.sroa.4.0 = phi ptr [ %i.ag, %bb.o ], [ %i.x, %bb.j ]
  %.sroa.0.0 = getelementptr inbounds nuw i8, ptr %i.r, i64 64
  br label %bb.p

bb.l:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %i.z = load ptr, ptr %i.y, align 8, !nonnull !4, !noundef !4
  %i.aa = getelementptr inbounds nuw [72 x i8], ptr %i.z, i64 %i.s ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !range !12, !noundef !4
  %i.ad = trunc nuw i64 %i.ac to i1
  br i1 %i.ad, label %bb.n, label %bb.o

bb.m:                                             ; preds = %bb.g
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.s, i64 noundef %i.u, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @102) #23
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.af = load i64, ptr %i.ae, align 8, !noundef !4
  store i64 %i.af, ptr %i.b, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.l, %bb.n
  %.sink = phi i64 [ 1, %bb.n ], [ 2, %bb.l ]
  store i64 %.sink, ptr %0, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  br label %bb.k

bb.p:                                             ; preds = %bb.c, %bb.k
  %.sroa.4.1 = phi ptr [ %.sroa.4.0, %bb.k ], [ undef, %bb.c ]
  %.sroa.0.1 = phi ptr [ %.sroa.0.0, %bb.k ], [ null, %bb.c ]
  %i.ah = insertvalue { ptr, ptr } poison, ptr %.sroa.0.1, 0
  %i.ai = insertvalue { ptr, ptr } %i.ah, ptr %.sroa.4.1, 1
  ret { ptr, ptr } %i.ai
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvXsc_NtNtCs84JG9zk80ZV_4http6header3mapINtB5_4IterNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameENtNtNtNtCskKLDkoKarTP_4core4iter6traits8iterator8Iterator4nextCsiWMK64dCVjf_20pingora_header_serde(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !9, !noundef !4 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.not = icmp eq i64 %i.a, 2
  br i1 %.not, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre = load ptr, ptr %.phi.trans.insert, align 8 ; 2 uses
  %.phi.trans.insert19 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.pre20 = load i64, ptr %.phi.trans.insert19, align 8
  %.phi.trans.insert21 = getelementptr inbounds nuw i8, ptr %.pre, i64 40
  %.pre22 = load i64, ptr %.phi.trans.insert21, align 8
  %i.c = icmp eq i64 %i.a, 0
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %bb.d
  %cond = phi i1 [ %i.c, %._crit_edge ], [ true, %bb.d ]
  %i.d = phi i64 [ %.pre22, %._crit_edge ], [ %i.n, %bb.d ] ; 2 uses
  %i.e = phi i64 [ %.pre20, %._crit_edge ], [ %i.j, %bb.d ] ; 3 uses
  %i.f = phi ptr [ %.pre, %._crit_edge ], [ %i.l, %bb.d ] ; 3 uses
  %i.g = icmp ult i64 %i.e, %i.d
  br i1 %i.g, label %bb.e, label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !noundef !4
  %i.j = add i64 %i.i, 1                          ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !4, !align !10, !noundef !4 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.n = load i64, ptr %i.m, align 8, !noundef !4 ; 3 uses
  %i.o = icmp ult i64 %i.n, 96076792050570582
  tail call void @llvm.assume(i1 %i.o)
  %.not17 = icmp ult i64 %i.j, %i.n
  br i1 %.not17, label %bb.d, label %bb.p

bb.d:                                             ; preds = %bb.c
  store i64 %i.j, ptr %i.h, align 8
  store i64 0, ptr %0, align 8
  br label %bb.b

bb.e:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !4, !noundef !4
  %i.r = getelementptr inbounds nuw [96 x i8], ptr %i.q, i64 %i.e ; 4 uses
  %i.s = load i64, ptr %i.b, align 8              ; 3 uses
  br i1 %cond, label %bb.h, label %bb.g, !prof !18

bb.f:                                             ; preds = %bb.b
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.e, i64 noundef %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @101) #23
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %i.u = load i64, ptr %i.t, align 8, !noundef !4 ; 2 uses
  %i.v = icmp ult i64 %i.s, %i.u
  br i1 %i.v, label %bb.l, label %bb.m

bb.h:                                             ; preds = %bb.e
  %.sroa.09.0.copyload = load i64, ptr %i.r, align 8
  %i.w = trunc nuw i64 %.sroa.09.0.copyload to i1
  br i1 %i.w, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.410.0.copyload = load i64, ptr %.sroa.410.0..sroa_idx, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %.sroa.58.0 = phi i64 [ %.sroa.410.0.copyload, %bb.i ], [ undef, %bb.h ]
  %.sroa.07.0 = phi i64 [ 1, %bb.i ], [ 2, %bb.h ]
  store i64 %.sroa.07.0, ptr %0, align 8
  store i64 %.sroa.58.0, ptr %i.b, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  br label %bb.k

bb.k:                                             ; preds = %bb.o, %bb.j
  %.sroa.4.0 = phi ptr [ %i.ag, %bb.o ], [ %i.x, %bb.j ]
  %.sroa.0.0 = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  br label %bb.p

bb.l:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %i.z = load ptr, ptr %i.y, align 8, !nonnull !4, !noundef !4
  %i.aa = getelementptr inbounds nuw [64 x i8], ptr %i.z, i64 %i.s ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !range !12, !noundef !4
  %i.ad = trunc nuw i64 %i.ac to i1
  br i1 %i.ad, label %bb.n, label %bb.o

bb.m:                                             ; preds = %bb.g
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.s, i64 noundef %i.u, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @102) #23
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.af = load i64, ptr %i.ae, align 8, !noundef !4
  store i64 %i.af, ptr %i.b, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.l, %bb.n
  %.sink = phi i64 [ 1, %bb.n ], [ 2, %bb.l ]
  store i64 %.sink, ptr %0, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  br label %bb.k

bb.p:                                             ; preds = %bb.c, %bb.k
  %.sroa.4.1 = phi ptr [ %.sroa.4.0, %bb.k ], [ undef, %bb.c ]
  %.sroa.0.1 = phi ptr [ %.sroa.0.0, %bb.k ], [ null, %bb.c ]
  %i.ah = insertvalue { ptr, ptr } poison, ptr %.sroa.0.1, 0
  %i.ai = insertvalue { ptr, ptr } %i.ah, ptr %.sroa.4.1, 1
  ret { ptr, ptr } %i.ai
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNvXsf_NtNtCsexYYUdYSQU6_5alloc5boxed7convertINtBc_3BoxDNtNtCskKLDkoKarTP_4core5error5ErrorNtNtB11_6marker4SendNtB1y_4SyncEL_EINtNtB11_7convert4FromNtNtBe_6string6StringE4from11StringErrorBX_11descriptionCsiWMK64dCVjf_20pingora_header_serde(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  ret { ptr, i64 } { ptr @105, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNvXsf_NtNtCsexYYUdYSQU6_5alloc5boxed7convertINtBc_3BoxDNtNtCskKLDkoKarTP_4core5error5ErrorNtNtB11_6marker4SendNtB1y_4SyncEL_EINtNtB11_7convert4FromNtNtBe_6string6StringE4from11StringErrorBX_6sourceCsiWMK64dCVjf_20pingora_header_serde(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #5 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNvXsf_NtNtCsexYYUdYSQU6_5alloc5boxed7convertINtBc_3BoxDNtNtCskKLDkoKarTP_4core5error5ErrorNtNtB11_6marker4SendNtB1y_4SyncEL_EINtNtB11_7convert4FromNtNtBe_6string6StringE4from11StringErrorBX_7provideCsiWMK64dCVjf_20pingora_header_serde(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #5 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNvXsf_NtNtCsexYYUdYSQU6_5alloc5boxed7convertINtBc_3BoxDNtNtCskKLDkoKarTP_4core5error5ErrorNtNtB11_6marker4SendNtB1y_4SyncEL_EINtNtB11_7convert4FromNtNtBe_6string6StringE4from11StringErrorBX_7type_idCsiWMK64dCVjf_20pingora_header_serde(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #6 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @106, i64 16, i1 false)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #8

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() unnamed_addr #9

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs0_NtNtNtCskKLDkoKarTP_4core4iter8adapters3mapINtB6_3MapINtNtBc_6option8IntoIterRINtNtNtCs84JG9zk80ZV_4http6header3map9HeaderMapNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEENCNvB2b_16case_header_iter0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvMsg_NtB8_7flattenINtB4u_13FlattenCompatppE9iter_fold7flattenIBO_INtNtB8_3zip3ZipINtB1p_4IterB27_EIB5J_NtNtB1r_5value11HeaderValueEENCNCB3f_00EuNCINvNvXsi_B4u_B4H_B3F_4fold7flattenB5o_uNCINvNvB3F_8for_each4callTRB27_RB64_ENCINvB2b_17header_to_h1_wireINtNtCsexYYUdYSQU6_5alloc3vec3VechEE0E0E0E0ECsiWMK64dCVjf_20pingora_header_serde(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(96), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(96), ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #10

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCs84JG9zk80ZV_4http6header3map10ExtraValueNtNtBK_5value11HeaderValueEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiWMK64dCVjf_20pingora_header_serde(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCs84JG9zk80ZV_4http6header3map10ExtraValueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiWMK64dCVjf_20pingora_header_serde(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCs84JG9zk80ZV_4http6header3map6BucketNtNtBK_5value11HeaderValueEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiWMK64dCVjf_20pingora_header_serde(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCs84JG9zk80ZV_4http6header3map6BucketNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiWMK64dCVjf_20pingora_header_serde(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtCs1ll6eLl40nD_8httparse6HeaderENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiWMK64dCVjf_20pingora_header_serde(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs84JG9zk80ZV_4http6header3map3PosENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiWMK64dCVjf_20pingora_header_serde(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiWMK64dCVjf_20pingora_header_serde(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtCs84JG9zk80ZV_4http6header3map10ExtraValueNtNtBR_5value11HeaderValueEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiWMK64dCVjf_20pingora_header_serde(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtCs84JG9zk80ZV_4http6header3map10ExtraValueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiWMK64dCVjf_20pingora_header_serde(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtCs84JG9zk80ZV_4http6header3map6BucketNtNtBR_5value11HeaderValueEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiWMK64dCVjf_20pingora_header_serde(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtCs84JG9zk80ZV_4http6header3map6BucketNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiWMK64dCVjf_20pingora_header_serde(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtCs1ll6eLl40nD_8httparse6HeaderENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiWMK64dCVjf_20pingora_header_serde(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecNtNtNtCs84JG9zk80ZV_4http6header3map3PosENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiWMK64dCVjf_20pingora_header_serde(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiWMK64dCVjf_20pingora_header_serde(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCskKLDkoKarTP_4core3any6TypeIdINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCs84JG9zk80ZV_4http10extensions8AnyCloneNtNtBT_6marker4SendNtB2H_4SyncEL_EEENtNtNtBT_3ops4drop4Drop4dropCsiWMK64dCVjf_20pingora_header_serde(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs4_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs84JG9zk80ZV_4http6header3map3PosE11extend_withCsiWMK64dCVjf_20pingora_header_serde(ptr noalias nofree noundef align 8 dereferenceable(24), i64 noundef, i16 noundef, i16 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs_NtCsfsXztIhCltD_13pingora_error9immut_strNtB4_8ImmutStrNtNtCskKLDkoKarTP_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNvNtCsexYYUdYSQU6_5alloc3fmt6format12format_inner(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #11

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMsc_CskspKcFIsYcD_12pingora_httpNtB6_14ResponseHeader5buildtECsiWMK64dCVjf_20pingora_header_serde(ptr dead_on_unwind noalias nofree noundef writable sret([232 x i8]) align 8 captures(none) dereferenceable(232), i16 noundef, i64 noundef range(i64 0, 2), i64) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsiWMK64dCVjf_20pingora_header_serde(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef, i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMsc_CskspKcFIsYcD_12pingora_httpNtB6_14ResponseHeader13append_headerNtNtCsexYYUdYSQU6_5alloc6string6StringRShECsiWMK64dCVjf_20pingora_header_serde(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(232), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #12

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemNtCs1ll6eLl40nD_8httparse6HeaderNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECsiWMK64dCVjf_20pingora_header_serde(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs5_Cs1ll6eLl40nD_8httparseNtB5_8Response5parse(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(40), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtCsexYYUdYSQU6_5alloc6stringNtB2_6String15from_utf8_lossy(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtNtNtCskKLDkoKarTP_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXsa_NtCsexYYUdYSQU6_5alloc6borrowINtB5_3CoweENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtCsiWMK64dCVjf_20pingora_header_serde(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_RNvMNtCs84JG9zk80ZV_4http6statusNtB2_10StatusCode16canonical_reason(ptr noalias nofree noundef readonly align 2 captures(address, read_provenance) dereferenceable(2)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvCs13pZzHa6nno_9zstd_safe22get_frame_content_size(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { ptr, i64 } @_RNvMsf_NtNtNtCskKLDkoKarTP_4core3fmt3num3impy4__fmt(i64 noundef, ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs1_NtCsfsXztIhCltD_13pingora_error9immut_strNtB5_8ImmutStrINtNtCskKLDkoKarTP_4core7convert4FromNtNtCsexYYUdYSQU6_5alloc6string6StringE4from(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RINvMs3_Cse0v0U5LqnG1_12thread_localINtB6_11ThreadLocalINtNtCskKLDkoKarTP_4core4cell7RefCellINtNtCsexYYUdYSQU6_5alloc3vec3VechEEE10get_or_tryNCINvB2_6get_orNCNvMCsiWMK64dCVjf_20pingora_header_serdeNtB2z_11HeaderSerde11deserialize0E0uEB2z_(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCskKLDkoKarTP_4core4cell22panic_already_borrowed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #11

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs_NtCsiWMK64dCVjf_20pingora_header_serde11thread_zstdNtB4_19CompressionWithDict3new(ptr dead_on_unwind noalias nofree noundef writable sret([1040 x i8]) align 8 captures(none) dereferenceable(1040), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef align 8 ptr @_RINvMs3_Cse0v0U5LqnG1_12thread_localINtB6_11ThreadLocalINtNtCskKLDkoKarTP_4core4cell7RefCellINtNtCsexYYUdYSQU6_5alloc3vec3VechEEE10get_or_tryNCINvB2_6get_orNCNvMCsiWMK64dCVjf_20pingora_header_serdeNtB2z_11HeaderSerde9serialize0E0uEB2z_(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #1

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #13

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtCs84JG9zk80ZV_4http6header3map3PosE16into_boxed_sliceCsiWMK64dCVjf_20pingora_header_serde(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs12_NtNtCs84JG9zk80ZV_4http6header3mapNtB6_6Danger7set_red(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #14

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner13reserve_exactCsiWMK64dCVjf_20pingora_header_serde(ptr noalias nofree noundef align 8 dereferenceable(16), i64 noundef, i64 noundef, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef, i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #11

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs0_NtCsiWMK64dCVjf_20pingora_header_serde11thread_zstdNtB6_16CompressionInner20decompress_to_bufferINtNtCsexYYUdYSQU6_5alloc3vec3VechEEB8_(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), ptr noundef nonnull align 8, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs0_NtCsiWMK64dCVjf_20pingora_header_serde11thread_zstdNtB6_16CompressionInner31decompress_to_buffer_using_dictINtNtCsexYYUdYSQU6_5alloc3vec3VechEEB8_(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(none) dereferenceable(16), ptr noundef nonnull align 8, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtCsiWMK64dCVjf_20pingora_header_serde11thread_zstdNtB2_11Compression8compress(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull align 8, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), i32 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs_NtCsiWMK64dCVjf_20pingora_header_serde11thread_zstdNtB4_19CompressionWithDict8compress(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull align 8, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VechE7reserveCsiWMK64dCVjf_20pingora_header_serde(ptr noalias nofree noundef align 8 dereferenceable(24), i64 noundef) unnamed_addr #0

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #12

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #15

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvXse_NtNtCsexYYUdYSQU6_5alloc5boxed7convertINtB7_3BoxDNtNtCskKLDkoKarTP_4core5error5ErrorNtNtBW_6marker4SendNtB1t_4SyncEL_EINtNtBW_7convert4FromNtCs1ll6eLl40nD_8httparse5ErrorE4fromCsiWMK64dCVjf_20pingora_header_serde(i8 noundef range(i8 0, 7)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs1_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechE17extend_from_sliceCsiWMK64dCVjf_20pingora_header_serde(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs0_NvXsf_NtNtCsexYYUdYSQU6_5alloc5boxed7convertINtBd_3BoxDNtNtCskKLDkoKarTP_4core5error5ErrorNtNtB12_6marker4SendNtB1z_4SyncEL_EINtNtB12_7convert4FromNtNtBf_6string6StringE4fromNtB5_11StringErrorNtNtB12_3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs_NvXsf_NtNtCsexYYUdYSQU6_5alloc5boxed7convertINtBc_3BoxDNtNtCskKLDkoKarTP_4core5error5ErrorNtNtB11_6marker4SendNtB1y_4SyncEL_EINtNtB11_7convert4FromNtNtBe_6string6StringE4fromNtB4_11StringErrorNtNtB11_3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvYNtNvXsf_NtNtCsexYYUdYSQU6_5alloc5boxed7convertINtBc_3BoxDNtNtCskKLDkoKarTP_4core5error5ErrorNtNtB11_6marker4SendNtB1y_4SyncEL_EINtNtB11_7convert4FromNtNtBe_6string6StringE4from11StringErrorBX_5causeCsiWMK64dCVjf_20pingora_header_serde(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #10
end_hunk_3
