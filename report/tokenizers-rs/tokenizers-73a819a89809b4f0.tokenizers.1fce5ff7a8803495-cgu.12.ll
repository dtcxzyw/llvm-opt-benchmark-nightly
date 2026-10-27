Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tokenizers-rs/original/tokenizers-73a819a89809b4f0.tokenizers.1fce5ff7a8803495-cgu.12?download=true
inline.NumInlined: 1265
inline.NumDeleted: 570
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_RINvXs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer13serializationINtB6_16TokenizerVisitorNtNtBa_6models12ModelWrapperNtNtBa_11normalizers17NormalizerWrapperNtNtBa_14pre_tokenizers19PreTokenizerWrapperNtNtBa_10processors20PostProcessorWrapperNtNtBa_8decoders14DecoderWrapperENtNtCsboAIIHEtPkY_10serde_core2de7Visitor9visit_mapINtNtCs5PtHgSLqj5O_10serde_json2de9MapAccessNtNtB5g_4read7StrReadEEBa_:bb.a
  store ptr %i.hy, ptr %.sroa.4113.0..sroa_idx, align 8
  %.sroa.5114.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.hz, ptr %.sroa.5114.0..sroa_idx, align 8
  %.sroa.6115.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.ib, ptr %.sroa.6115.0..sroa_idx, align 8
  %i.ic = getelementptr inbounds nuw i8, ptr %i.h, i64 512
  %i.id = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  %i.ie = getelementptr inbounds nuw i8, ptr %i.h, i64 1016 ; 2 uses
  %i.if = load i64, ptr %i.ie, align 8, !range !7, !noundef !3
  %.not190 = icmp eq i64 %i.if, -1
  %. = select i1 %.not190, ptr null, ptr %i.ie
  invoke void @_RINvMs2_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer16added_vocabularyNtB6_15AddedVocabulary10add_tokensNtNtBa_11normalizers17NormalizerWrapperINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtB6_16AddedTokenWithIdENCINvXs0_NtB8_13serializationINtB4l_16TokenizerVisitorNtNtBa_6models12ModelWrapperB1A_NtNtBa_14pre_tokenizers19PreTokenizerWrapperNtNtBa_10processors20PostProcessorWrapperNtNtBa_8decoders14DecoderWrapperENtNtCsboAIIHEtPkY_10serde_core2de7Visitor9visit_mapINtNtCs5PtHgSLqj5O_10serde_json2de9MapAccessNtNtB8o_4read7StrReadEEs_0EB54_EBa_(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(376) %i.ic, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.a, ptr noundef nonnull align 8 %i.id, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(72) %.)
          to label %bb.cr unwind label %.loopexit.split-lp

.loopexit:                                        ; preds = %bb.ci, %bb.cp
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.cj

.loopexit.split-lp:                               ; preds = %._crit_edge, %bb.cs
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.cj

bb.cj:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %.not260271 = phi i1 [ false, %.loopexit ], [ true, %.loopexit.split-lp ]
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs2JiOgHzbbc7_10tokenizers9tokenizer13TokenizerImplNtNtBG_6models12ModelWrapperNtNtBG_11normalizers17NormalizerWrapperNtNtBG_14pre_tokenizers19PreTokenizerWrapperNtNtBG_10processors20PostProcessorWrapperNtNtBG_8decoders14DecoderWrapperEEBG_(ptr noalias noundef align 8 dereferenceable(1112) %i.h) #22
          to label %bb.c unwind label %bb.ak

bb.ck:                                            ; preds = %bb.ci
  %i.ig = extractvalue { i32, i32 } %i.hw, 0
  %i.ih = trunc i32 %i.ig to i1
  br i1 %i.ih, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck
  %i.ii = extractvalue { i32, i32 } %i.hw, 1      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i32 %i.ii, ptr %i.e, align 4
  %i.ij = getelementptr inbounds nuw i8, ptr %.sroa.0102.0279, i64 32 ; 2 uses
  %i.ik = load i32, ptr %i.ij, align 8, !noundef !3
  %.not189 = icmp eq i32 %i.ii, %i.ik
  br i1 %.not189, label %bb.cn, label %bb.co

bb.cm:                                            ; preds = %bb.cn, %bb.ck
  %.not260 = icmp eq ptr %i.hr, %i.hi
  br i1 %.not260, label %._crit_edge.loopexit, label %bb.ci

bb.cn:                                            ; preds = %bb.cq, %bb.co, %bb.cl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.cm

bb.co:                                            ; preds = %bb.cl
  %i.il = load atomic i64, ptr @_RNvCsbKm4k1ctY99_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.im = icmp ult i64 %i.il, 6
  call void @llvm.assume(i1 %i.im)
  %i.in = icmp samesign ugt i64 %i.il, 1
  br i1 %i.in, label %bb.cp, label %bb.cn

bb.cp:                                            ; preds = %bb.co
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %.sroa.0102.0279, ptr %i.d, align 8
  store ptr @_RNvXsq_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt, ptr %.sroa.4167.0..sroa_idx, align 8
  store ptr %i.ij, ptr %i.hl, align 8
  store ptr @_RNvXs8_NtNtNtCs4NRVxsYgnAr_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.4171.0..sroa_idx, align 8
  store ptr %i.e, ptr %i.hm, align 8
  store ptr @_RNvXs8_NtNtNtCs4NRVxsYgnAr_4core3fmt3num3impmNtB9_7Display3fmt, ptr %.sroa.4175.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr @12, ptr %i.c, align 8
  store i64 36, ptr %i.hn, align 8
  store ptr @12, ptr %i.ho, align 8
  store i64 36, ptr %i.hp, align 8
  store ptr @11, ptr %i.hq, align 8
  invoke void @_RINvNtCsbKm4k1ctY99_3log13___private_api3loguNtB2_12GlobalLoggerECs2JiOgHzbbc7_10tokenizers(ptr noundef nonnull @9, ptr noundef nonnull %i.d, i64 noundef 2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.c)
          to label %bb.cq unwind label %.loopexit

bb.cq:                                            ; preds = %bb.cp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.cn

bb.cr:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.io = load ptr, ptr %i.b, align 8, !noundef !3 ; 2 uses
  %.not191 = icmp eq ptr %i.io, null
  br i1 %.not191, label %bb.ct, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.ip = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.iq = load ptr, ptr %i.ip, align 8, !nonnull !3, !align !18, !noundef !3
  %i.ir = invoke fastcc noundef nonnull align 8 ptr @_RNCINvXs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer13serializationINtB8_16TokenizerVisitorNtNtBc_6models12ModelWrapperNtNtBc_11normalizers17NormalizerWrapperNtNtBc_14pre_tokenizers19PreTokenizerWrapperNtNtBc_10processors20PostProcessorWrapperNtNtBc_8decoders14DecoderWrapperENtNtCsboAIIHEtPkY_10serde_core2de7Visitor9visit_mapINtNtCs5PtHgSLqj5O_10serde_json2de9MapAccessNtNtB5i_4read7StrReadEEs0_0Bc_(ptr noundef nonnull %i.io, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.iq)
          to label %.thread252 unwind label %.loopexit.split-lp

bb.ct:                                            ; preds = %bb.cr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1112) %0, ptr noundef nonnull align 8 dereferenceable(1112) %i.h, i64 1112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  br label %bb.cu

bb.cu:                                            ; preds = %bb.cv, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer16added_vocabulary16AddedTokenWithIdEEB1d_.exit233, %bb.df, %.thread252, %bb.ct
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  ret void

.thread252:                                       ; preds = %bb.cs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.is = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ir, ptr %i.is, align 8
  store i64 -1, ptr %0, align 8
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs2JiOgHzbbc7_10tokenizers9tokenizer13TokenizerImplNtNtBG_6models12ModelWrapperNtNtBG_11normalizers17NormalizerWrapperNtNtBG_14pre_tokenizers19PreTokenizerWrapperNtNtBG_10processors20PostProcessorWrapperNtNtBG_8decoders14DecoderWrapperEEBG_(ptr noalias noundef align 8 dereferenceable(1112) %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  br label %bb.cu

bb.cv:                                            ; preds = %bb.dd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  %i.it = trunc nuw i8 %.sroa.0119.7 to i1
  br i1 %i.it, label %bb.df, label %bb.cu

bb.cw:                                            ; preds = %bb.cg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.iu = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.hf, ptr %i.iu, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer16added_vocabulary16AddedTokenWithIdENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ap)
          to label %bb.cy unwind label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.iv = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer16added_vocabulary16AddedTokenWithIdENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ap)
          to label %.thread254 unwind label %bb.cz

bb.cy:                                            ; preds = %bb.cw
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer16added_vocabulary16AddedTokenWithIdENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ap)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer16added_vocabulary16AddedTokenWithIdEEB1d_.exit233 unwind label %bb.da

bb.cz:                                            ; preds = %bb.cx
  %i.iw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer16added_vocabulary16AddedTokenWithIdEEB1d_.exit233: ; preds = %bb.cy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  br label %bb.cu

.body231:                                         ; preds = %bb.dc, %bb.da, %.thread
  %.sroa.0119.9 = phi i8 [ %.sroa.0119.1242, %.thread ], [ %.sroa.0119.7, %bb.dc ], [ %.sroa.0119.10, %bb.da ]
  %.pn205 = phi { ptr, i32 } [ %.pn203243, %.thread ], [ %i.iz, %bb.dc ], [ %i.iy, %bb.da ] ; 2 uses
  %i.ix = trunc nuw i8 %.sroa.0119.9 to i1
  br i1 %i.ix, label %bb.dg, label %.thread254

bb.da:                                            ; preds = %bb.dd, %bb.cy
  %.sroa.0119.10 = phi i8 [ %.sroa.0119.7, %bb.dd ], [ 0, %bb.cy ]
  %i.iy = landingpad { ptr, i32 }
          cleanup
  br label %.body231

bb.db:                                            ; preds = %bb.d, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit216
  %.sroa.0119.7 = phi i8 [ 1, %bb.d ], [ %.sroa.0119.6, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit216 ] ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer16added_vocabulary16AddedTokenWithIdENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ap)
          to label %bb.dd unwind label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.iz = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer16added_vocabulary16AddedTokenWithIdENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ap)
          to label %.body231 unwind label %bb.de

bb.dd:                                            ; preds = %bb.db
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer16added_vocabulary16AddedTokenWithIdENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ap)
          to label %bb.cv unwind label %bb.da

bb.de:                                            ; preds = %bb.dc
  %i.ja = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.df:                                            ; preds = %bb.cv
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs2JiOgHzbbc7_10tokenizers9tokenizer16TokenizerBuilderNtNtBG_6models12ModelWrapperNtNtBG_11normalizers17NormalizerWrapperNtNtBG_14pre_tokenizers19PreTokenizerWrapperNtNtBG_10processors20PostProcessorWrapperNtNtBG_8decoders14DecoderWrapperEEBG_(ptr noalias noundef align 8 dereferenceable(1112) %i.aq)
  br label %bb.cu

.thread:                                          ; preds = %.body.thread248.loopexit, %.body.thread248.loopexit.split-lp, %bb.ai, %bb.z, %.body221, %bb.c
  %.pn203243 = phi { ptr, i32 } [ %.pn, %.body221 ], [ %lpad.phi, %bb.c ], [ %i.eq, %bb.ai ], [ %i.ej, %bb.z ], [ %lpad.loopexit261, %.body.thread248.loopexit ], [ %lpad.loopexit.split-lp262, %.body.thread248.loopexit.split-lp ]
  %.sroa.0119.1242 = phi i8 [ %.sroa.0119.4, %.body221 ], [ 0, %bb.c ], [ %.sroa.0119.6, %bb.ai ], [ 1, %bb.z ], [ 1, %.body.thread248.loopexit ], [ %.sroa.0119.2.ph.ph, %.body.thread248.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer16added_vocabulary16AddedTokenWithIdEEB1d_(ptr noalias noundef align 8 dereferenceable(24) %i.ap) #22
          to label %.body231 unwind label %bb.ak

bb.dg:                                            ; preds = %.body231
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs2JiOgHzbbc7_10tokenizers9tokenizer16TokenizerBuilderNtNtBG_6models12ModelWrapperNtNtBG_11normalizers17NormalizerWrapperNtNtBG_14pre_tokenizers19PreTokenizerWrapperNtNtBG_10processors20PostProcessorWrapperNtNtBG_8decoders14DecoderWrapperEEBG_(ptr noalias noundef align 8 dereferenceable(1112) %i.aq) #22
          to label %.thread254 unwind label %bb.ak
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram13serializationNtB6_14UnigramVisitorNtNtCsboAIIHEtPkY_10serde_core2de7Visitor9visit_mapQINtNtNtNtCsctIyQp3ax5j_5serde7private2de7content18MapRefDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEEBc_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([328 x i8]) align 8 captures(none) dereferenceable(328) %0, ptr noalias noundef align 8 dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [328 x i8], align 8               ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [16 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = alloca [16 x i8], align 8                ; 7 uses
  %i.g = alloca [16 x i8], align 8                ; 6 uses
  %i.h = alloca [24 x i8], align 8                ; 13 uses
  %i.i = alloca [24 x i8], align 8                ; 7 uses
  %i.j = alloca [24 x i8], align 8                ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store i64 -1, ptr %i.j, align 8
  %.sroa.455.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.556.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %.sroa.458.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.559.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.625.0..sroa_idx26 = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 3 uses
  %.sroa.728.0..sroa_idx29 = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit, %bb.a
  %.sroa.013.0 = phi i8 [ 0, %bb.a ], [ %.sroa.013.1, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit ] ; 9 uses
  %.sroa.39.0 = phi i64 [ undef, %bb.a ], [ %.sroa.39.1, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit ] ; 9 uses
  %.sroa.08.0 = phi i64 [ 0, %bb.a ], [ %.sroa.08.1, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit ] ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  invoke void @_RINvXsJ_NtNtNtCsctIyQp3ax5j_5serde7private2de7contentINtB6_18MapRefDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess13next_key_seedINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNtCscdodAO9FK5_5alloc6string6StringEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.i, ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %_RINvXs5_NtCsboAIIHEtPkY_10serde_core2deQINtNtNtNtCsctIyQp3ax5j_5serde7private2de7content18MapRefDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtB6_9MapAccess8next_keyNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.x, %bb.o, %.loopexit.split-lp97
  %.pn78 = phi { ptr, i32 } [ %.pn, %.loopexit.split-lp97 ], [ %i.ay, %bb.o ], [ %i.bs, %bb.x ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtB12_6string6StringdEEEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24) %i.j) #22
          to label %common.resume unwind label %bb.an

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i, %bb.b, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i87
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

_RINvXs5_NtCsboAIIHEtPkY_10serde_core2deQINtNtNtNtCsctIyQp3ax5j_5serde7private2de7content18MapRefDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtB6_9MapAccess8next_keyNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.b
  %i.n = load i64, ptr %i.i, align 8, !range !24, !noundef !3 ; 3 uses
  %i.o = icmp eq i64 %i.n, -2
  %i.p = load ptr, ptr %.sroa.455.0..sroa_idx, align 8 ; 9 uses
  br i1 %i.o, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_RINvXs5_NtCsboAIIHEtPkY_10serde_core2deQINtNtNtNtCsctIyQp3ax5j_5serde7private2de7content18MapRefDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtB6_9MapAccess8next_keyNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.p, ptr %i.q, align 8
  store i64 2, ptr %0, align 8
  br label %bb.aj

bb.d:                                             ; preds = %_RINvXs5_NtCsboAIIHEtPkY_10serde_core2deQINtNtNtNtCsctIyQp3ax5j_5serde7private2de7content18MapRefDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtB6_9MapAccess8next_keyNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit
  %.sroa.556.0.copyload = load i64, ptr %.sroa.556.0..sroa_idx, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %.not = icmp eq i64 %i.n, -1
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i64 %i.n, ptr %i.h, align 8
  store ptr %i.p, ptr %.sroa.3.0..sroa_idx, align 8
  store i64 %.sroa.556.0.copyload, ptr %.sroa.4.0..sroa_idx, align 8
  switch i64 %.sroa.556.0.copyload, label %bb.n [
    i64 6, label %bb.g
    i64 13, label %bb.i
    i64 5, label %bb.k
    i64 4, label %bb.m
  ]

bb.f:                                             ; preds = %bb.d
  %.sroa.033.0.copyload = load i64, ptr %i.j, align 8 ; 2 uses
  %.not72 = icmp eq i64 %.sroa.033.0.copyload, -1
  br i1 %.not72, label %bb.ap, label %bb.ao

bb.g:                                             ; preds = %bb.e
  %i.r = load i32, ptr %i.p, align 1
  %i.s = xor i32 %i.r, 1600876149
  %i.t = getelementptr i8, ptr %i.p, i64 4
  %i.u = load i16, ptr %i.t, align 1
  %i.v = zext i16 %i.u to i32
  %i.w = xor i32 %i.v, 25705
  %i.x = or i32 %i.s, %i.w
  %i.y = icmp ne i32 %i.x, 0
  %i.z = zext i1 %i.y to i32
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %bb.h, label %bb.n

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  invoke void @_RINvXsJ_NtNtNtCsctIyQp3ax5j_5serde7private2de7contentINtB6_18MapRefDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess15next_value_seedINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataINtNtB2Z_6option6OptionjEEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.g, ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %_RINvXs5_NtCsboAIIHEtPkY_10serde_core2deQINtNtNtNtCsctIyQp3ax5j_5serde7private2de7content18MapRefDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtB6_9MapAccess10next_valueINtNtCs4NRVxsYgnAr_4core6option6OptionjEECs2JiOgHzbbc7_10tokenizers.exit unwind label %.loopexit.split-lp97.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.i:                                             ; preds = %bb.e
  %i.ab = load i64, ptr %i.p, align 1
  %i.ac = xor i64 %i.ab, 7809635788747209058
  %i.ad = getelementptr i8, ptr %i.p, i64 5
  %i.ae = load i64, ptr %i.ad, align 1
  %i.af = xor i64 %i.ae, 7738135660106375526
  %i.ag = or i64 %i.ac, %i.af
  %i.ah = icmp ne i64 %i.ag, 0
  %i.ai = zext i1 %i.ah to i32
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  invoke void @_RINvXsJ_NtNtNtCsctIyQp3ax5j_5serde7private2de7contentINtB6_18MapRefDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess15next_value_seedINtNtCs4NRVxsYgnAr_4core6marker11PhantomDatabEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %_RINvXs5_NtCsboAIIHEtPkY_10serde_core2deQINtNtNtNtCsctIyQp3ax5j_5serde7private2de7content18MapRefDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtB6_9MapAccess10next_valuebECs2JiOgHzbbc7_10tokenizers.exit unwind label %.loopexit.split-lp97.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.k:                                             ; preds = %bb.e
  %i.ak = load i32, ptr %i.p, align 1
  %i.al = xor i32 %i.ak, 1633906550
  %i.am = getelementptr i8, ptr %i.p, i64 4
  %i.an = load i8, ptr %i.am, align 1
  %i.ao = zext i8 %i.an to i32
  %i.ap = xor i32 %i.ao, 98
  %i.aq = or i32 %i.al, %i.ap
  %i.ar = icmp ne i32 %i.aq, 0
  %i.as = zext i1 %i.ar to i32
  %i.at = icmp eq i32 %i.as, 0
  br i1 %i.at, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  invoke void @_RINvXsJ_NtNtNtCsctIyQp3ax5j_5serde7private2de7contentINtB6_18MapRefDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess15next_value_seedINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtB3H_6string6StringdEEEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %_RINvXs5_NtCsboAIIHEtPkY_10serde_core2deQINtNtNtNtCsctIyQp3ax5j_5serde7private2de7content18MapRefDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtB6_9MapAccess10next_valueINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtB2V_6string6StringdEEECs2JiOgHzbbc7_10tokenizers.exit unwind label %.loopexit.split-lp97.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.m:                                             ; preds = %bb.e
  %i.au = load i32, ptr %i.p, align 1
  %i.av = icmp ne i32 %i.au, 1701869940
  %i.aw = zext i1 %i.av to i32
  %i.ax = icmp eq i32 %i.aw, 0
  br i1 %i.ax, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.k, %bb.i, %bb.t, %bb.g, %bb.e, %bb.ai, %bb.ag, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtB12_6string6StringdEEEECs2JiOgHzbbc7_10tokenizers.exit, %bb.m
  %.sroa.013.1 = phi i8 [ %.sroa.013.0, %bb.e ], [ %.sroa.013.0, %bb.ai ], [ %.sroa.013.0, %bb.i ], [ %i.cg, %bb.ag ], [ %.sroa.013.0, %bb.t ], [ %.sroa.013.0, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtB12_6string6StringdEEEECs2JiOgHzbbc7_10tokenizers.exit ], [ %.sroa.013.0, %bb.g ], [ %.sroa.013.0, %bb.m ], [ %.sroa.013.0, %bb.k ]
  %.sroa.39.1 = phi i64 [ %.sroa.39.0, %bb.e ], [ %i.ck, %bb.ai ], [ %.sroa.39.0, %bb.i ], [ %.sroa.39.0, %bb.ag ], [ %.sroa.39.0, %bb.t ], [ %.sroa.39.0, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtB12_6string6StringdEEEECs2JiOgHzbbc7_10tokenizers.exit ], [ %.sroa.39.0, %bb.g ], [ %.sroa.39.0, %bb.m ], [ %.sroa.39.0, %bb.k ]
  %.sroa.08.1 = phi i64 [ %.sroa.08.0, %bb.e ], [ %i.ch, %bb.ai ], [ %.sroa.08.0, %bb.i ], [ %.sroa.08.0, %bb.ag ], [ %.sroa.08.0, %bb.t ], [ %.sroa.08.0, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtB12_6string6StringdEEEECs2JiOgHzbbc7_10tokenizers.exit ], [ %.sroa.08.0, %bb.g ], [ %.sroa.08.0, %bb.m ], [ %.sroa.08.0, %bb.k ]
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ay = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %.body unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.az = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i: ; preds = %bb.n
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.q:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke void @_RINvXsJ_NtNtNtCsctIyQp3ax5j_5serde7private2de7contentINtB6_18MapRefDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess15next_value_seedINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataReEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %_RINvXs5_NtCsboAIIHEtPkY_10serde_core2deQINtNtNtNtCsctIyQp3ax5j_5serde7private2de7content18MapRefDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtB6_9MapAccess10next_valueReECs2JiOgHzbbc7_10tokenizers.exit unwind label %.loopexit.split-lp97.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp97:                             ; preds = %.loopexit.split-lp97.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.body91
  %.pn = phi { ptr, i32 } [ %eh.lpad-body92, %.body91 ], [ %lpad.loopexit.split-lp297, %.loopexit.split-lp97.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h) #22
          to label %.body unwind label %bb.an

.loopexit.split-lp97.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.q, %bb.l, %bb.j, %bb.h, %bb.u
  %lpad.loopexit.split-lp297 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp97

_RINvXs5_NtCsboAIIHEtPkY_10serde_core2deQINtNtNtNtCsctIyQp3ax5j_5serde7private2de7content18MapRefDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtB6_9MapAccess10next_valueReECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.q
  %i.ba = load ptr, ptr %i.d, align 8, !noundef !3 ; 4 uses
  %i.bb = icmp eq ptr %i.ba, null
  br i1 %i.bb, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_RINvXs5_NtCsboAIIHEtPkY_10serde_core2deQINtNtNtNtCsctIyQp3ax5j_5serde7private2de7content18MapRefDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtB6_9MapAccess10next_valueReECs2JiOgHzbbc7_10tokenizers.exit
  %i.bc = load ptr, ptr %i.k, align 8, !nonnull !3, !align !18, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.w

bb.s:                                             ; preds = %_RINvXs5_NtCsboAIIHEtPkY_10serde_core2deQINtNtNtNtCsctIyQp3ax5j_5serde7private2de7content18MapRefDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtB6_9MapAccess10next_valueReECs2JiOgHzbbc7_10tokenizers.exit
  %i.bd = load i64, ptr %i.k, align 8, !noundef !3 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.be = icmp eq i64 %i.bd, 7
  br i1 %i.be, label %bb.t, label %bb.u, !prof !22

bb.t:                                             ; preds = %bb.s
  %i.bf = load i32, ptr %i.ba, align 1
  %i.bg = xor i32 %i.bf, 1734962773
  %i.bh = getelementptr i8, ptr %i.ba, i64 3
  %i.bi = load i32, ptr %i.bh, align 1
  %i.bj = xor i32 %i.bi, 1835102823
  %i.bk = or i32 %i.bg, %i.bj
  %i.bl = icmp ne i32 %i.bk, 0
  %i.bm = zext i1 %i.bl to i32
  %i.bn = icmp eq i32 %i.bm, 0
  br i1 %i.bn, label %bb.n, label %bb.u, !prof !22

bb.u:                                             ; preds = %bb.s, %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.bo = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.ba, ptr %i.bo, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %i.bd, ptr %i.bp, align 8
  store i8 5, ptr %i.c, align 8
  %i.bq = invoke noundef nonnull align 8 ptr @_RNvXs6_NtCs5PtHgSLqj5O_10serde_json5errorNtB5_5ErrorNtNtCsboAIIHEtPkY_10serde_core2de5Error13invalid_value(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.c, ptr noundef nonnull @14, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @5)
          to label %bb.v unwind label %.loopexit.split-lp97.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.w

bb.w:                                             ; preds = %bb.r, %bb.v, %bb.ah, %bb.af, %bb.z
  %.sink236 = phi ptr [ %i.cj, %bb.ah ], [ %i.cf, %bb.af ], [ %i.bw, %bb.z ], [ %i.bq, %bb.v ], [ %i.bc, %bb.r ]
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink236, ptr %i.br, align 8
  store i64 2, ptr %0, align 8
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i87 unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bs = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %.body unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i87: ; preds = %bb.w
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit90 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvXs5_NtCsboAIIHEtPkY_10serde_core2deQINtNtNtNtCsctIyQp3ax5j_5serde7private2de7content18MapRefDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtB6_9MapAccess10next_valueINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtB2V_6string6StringdEEECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.l
  %i.bu = load i64, ptr %i.e, align 8, !range !4, !noundef !3 ; 3 uses
  %i.bv = icmp eq i64 %i.bu, -1
  %i.bw = load ptr, ptr %.sroa.458.0..sroa_idx, align 8 ; 3 uses
  br i1 %i.bv, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %_RINvXs5_NtCsboAIIHEtPkY_10serde_core2deQINtNtNtNtCsctIyQp3ax5j_5serde7private2de7content18MapRefDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtB6_9MapAccess10next_valueINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtB2V_6string6StringdEEECs2JiOgHzbbc7_10tokenizers.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.w

bb.aa:                                            ; preds = %_RINvXs5_NtCsboAIIHEtPkY_10serde_core2deQINtNtNtNtCsctIyQp3ax5j_5serde7private2de7content18MapRefDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtB6_9MapAccess10next_valueINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtB2V_6string6StringdEEECs2JiOgHzbbc7_10tokenizers.exit
  %.sroa.559.0.copyload = load i64, ptr %.sroa.559.0..sroa_idx, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.bx = load i64, ptr %i.j, align 8, !range !4, !alias.scope !211, !noundef !3
  %i.by = icmp eq i64 %i.bx, -1
  br i1 %i.by, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtB12_6string6StringdEEEECs2JiOgHzbbc7_10tokenizers.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecTNtNtB7_6string6StringdEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtBG_6string6StringdEEECs2JiOgHzbbc7_10tokenizers.exit.i unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bz = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTNtNtB7_6string6StringdEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %.body91 unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ca = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtBG_6string6StringdEEECs2JiOgHzbbc7_10tokenizers.exit.i: ; preds = %bb.ab
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTNtNtB7_6string6StringdEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtB12_6string6StringdEEEECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.ae

bb.ae:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtBG_6string6StringdEEECs2JiOgHzbbc7_10tokenizers.exit.i
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %.body91

.body91:                                          ; preds = %bb.ac, %bb.ae
  %eh.lpad-body92 = phi { ptr, i32 } [ %i.cb, %bb.ae ], [ %i.bz, %bb.ac ]
  store i64 %i.bu, ptr %i.j, align 8
  store ptr %i.bw, ptr %.sroa.625.0..sroa_idx26, align 8
  store i64 %.sroa.559.0.copyload, ptr %.sroa.728.0..sroa_idx29, align 8
  br label %.loopexit.split-lp97

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtB12_6string6StringdEEEECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.aa, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtBG_6string6StringdEEECs2JiOgHzbbc7_10tokenizers.exit.i
  store i64 %i.bu, ptr %i.j, align 8
  store ptr %i.bw, ptr %.sroa.625.0..sroa_idx26, align 8
  store i64 %.sroa.559.0.copyload, ptr %.sroa.728.0..sroa_idx29, align 8
  br label %bb.n

_RINvXs5_NtCsboAIIHEtPkY_10serde_core2deQINtNtNtNtCsctIyQp3ax5j_5serde7private2de7content18MapRefDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtB6_9MapAccess10next_valuebECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.j
  %i.cc = load i8, ptr %i.f, align 8, !range !30, !noundef !3
  %i.cd = trunc nuw i8 %i.cc to i1
  br i1 %i.cd, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %_RINvXs5_NtCsboAIIHEtPkY_10serde_core2deQINtNtNtNtCsctIyQp3ax5j_5serde7private2de7content18MapRefDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtB6_9MapAccess10next_valuebECs2JiOgHzbbc7_10tokenizers.exit
  %i.ce = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8, !nonnull !3, !align !18, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.w

bb.ag:                                            ; preds = %_RINvXs5_NtCsboAIIHEtPkY_10serde_core2deQINtNtNtNtCsctIyQp3ax5j_5serde7private2de7content18MapRefDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtB6_9MapAccess10next_valuebECs2JiOgHzbbc7_10tokenizers.exit
  %i.cg = load i8, ptr %i.l, align 1, !range !30, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.n

_RINvXs5_NtCsboAIIHEtPkY_10serde_core2deQINtNtNtNtCsctIyQp3ax5j_5serde7private2de7content18MapRefDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtB6_9MapAccess10next_valueINtNtCs4NRVxsYgnAr_4core6option6OptionjEECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.h
  %i.ch = load i64, ptr %i.g, align 8, !range !5, !noundef !3 ; 2 uses
  %i.ci = icmp eq i64 %i.ch, 2
  br i1 %i.ci, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %_RINvXs5_NtCsboAIIHEtPkY_10serde_core2deQINtNtNtNtCsctIyQp3ax5j_5serde7private2de7content18MapRefDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtB6_9MapAccess10next_valueINtNtCs4NRVxsYgnAr_4core6option6OptionjEECs2JiOgHzbbc7_10tokenizers.exit
  %i.cj = load ptr, ptr %i.m, align 8, !nonnull !3, !align !18, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.w

bb.ai:                                            ; preds = %_RINvXs5_NtCsboAIIHEtPkY_10serde_core2deQINtNtNtNtCsctIyQp3ax5j_5serde7private2de7content18MapRefDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtB6_9MapAccess10next_valueINtNtCs4NRVxsYgnAr_4core6option6OptionjEECs2JiOgHzbbc7_10tokenizers.exit
  %i.ck = load i64, ptr %i.m, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.n

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.b

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit90: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i87
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.aj

bb.aj:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit90, %bb.c
  %i.cl = load i64, ptr %i.j, align 8, !range !4, !alias.scope !212, !noundef !3
  %i.cm = icmp eq i64 %i.cl, -1
  br i1 %i.cm, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtB12_6string6StringdEEEECs2JiOgHzbbc7_10tokenizers.exit95, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecTNtNtB7_6string6StringdEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtBG_6string6StringdEEECs2JiOgHzbbc7_10tokenizers.exit.i94 unwind label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.cn = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTNtNtB7_6string6StringdEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %common.resume unwind label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.co = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23
  unreachable

common.resume:                                    ; preds = %.body, %bb.al
  %common.resume.op = phi { ptr, i32 } [ %i.cn, %bb.al ], [ %.pn78, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtBG_6string6StringdEEECs2JiOgHzbbc7_10tokenizers.exit.i94: ; preds = %bb.ak
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTNtNtB7_6string6StringdEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtB12_6string6StringdEEEECs2JiOgHzbbc7_10tokenizers.exit95

bb.an:                                            ; preds = %.loopexit.split-lp97, %.body
  %i.cp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.ao:                                            ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %.sroa.033.0.copyload, ptr %i.b, align 8
  %.sroa.335.0..sroa_idx36 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.335.0..sroa_idx36, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.625.0..sroa_idx26, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.cq = trunc nuw i8 %.sroa.013.0 to i1
  call void @_RNvMs2_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram5modelNtB5_7Unigram4from(ptr noalias noundef nonnull sret([328 x i8]) align 8 captures(none) dereferenceable(328) %i.a, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, i64 noundef %.sroa.08.0, i64 %.sroa.39.0, i1 noundef zeroext %i.cq)
  %i.cr = load i64, ptr %i.a, align 8, !range !5, !noundef !3 ; 2 uses
  %i.cs = icmp eq i64 %i.cr, 2
  %i.ct = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8            ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.cs, label %bb.aq, label %bb.ar

bb.ap:                                            ; preds = %bb.f
  %i.cw = call noundef nonnull align 8 ptr @_RINvXs6_NtCs5PtHgSLqj5O_10serde_json5errorNtB6_5ErrorNtNtCsboAIIHEtPkY_10serde_core2de5Error6customReECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly captures(address, read_provenance) @15, i64 noundef 13)
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cw, ptr %i.cx, align 8
  store i64 2, ptr %0, align 8
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtB12_6string6StringdEEEECs2JiOgHzbbc7_10tokenizers.exit95

bb.aq:                                            ; preds = %bb.ao
  %i.cy = load ptr, ptr %i.cv, align 8, !nonnull !3, !align !18, !noundef !3
  %i.cz = call fastcc noundef nonnull align 8 ptr @_RNCINvXs0_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram13serializationNtB8_14UnigramVisitorNtNtCsboAIIHEtPkY_10serde_core2de7Visitor9visit_mapQINtNtNtNtCsctIyQp3ax5j_5serde7private2de7content18MapRefDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEE0Be_(ptr noundef nonnull %i.cu, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.cy)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cz, ptr %i.da, align 8
  store i64 2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtB12_6string6StringdEEEECs2JiOgHzbbc7_10tokenizers.exit95

bb.ar:                                            ; preds = %bb.ao
  %.sroa.353.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(312) %.sroa.353.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(312) %i.cv, i64 312, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.cr, ptr %0, align 8
  %.sroa.252.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cu, ptr %.sroa.252.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtB12_6string6StringdEEEECs2JiOgHzbbc7_10tokenizers.exit95

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtB12_6string6StringdEEEECs2JiOgHzbbc7_10tokenizers.exit95: ; preds = %bb.ap, %bb.ar, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtBG_6string6StringdEEECs2JiOgHzbbc7_10tokenizers.exit.i94, %bb.aj, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvXs0_NvXNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers9delimiters1_1__NtBb_22CharDelimiterSplitTypeNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtB6_9___VisitorNtB1G_7Visitor10visit_enumINtNtNtNtCsctIyQp3ax5j_5serde7private2de7content19EnumRefDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEEBf_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call { i64, ptr } @_RINvXsN_NtNtNtCsctIyQp3ax5j_5serde7private2de7contentINtB6_19EnumRefDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtNtCsboAIIHEtPkY_10serde_core2de10EnumAccess12variant_seedINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers9delimiters1_1__NtB3J_22CharDelimiterSplitTypeNtB1Z_11Deserialize11deserialize7___FieldEEB3N_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) %1) ; 2 uses
  %i.b = extractvalue { i64, ptr } %i.a, 0
  %i.c = extractvalue { i64, ptr } %i.a, 1        ; 3 uses
  %i.d = trunc nuw i64 %i.b to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.c) ]
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noundef align 8 ptr @_RNvXsO_NtNtNtCsctIyQp3ax5j_5serde7private2de7contentINtB5_22VariantRefDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtNtCsboAIIHEtPkY_10serde_core2de13VariantAccess12unit_variantCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) %i.c)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.1 = phi ptr [ %i.e, %bb.c ], [ %i.c, %bb.b ]
  ret ptr %.sroa.0.1
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs1_NtNtCs5PtHgSLqj5O_10serde_json5value2deINtNtBa_3map3MapNtNtCscdodAO9FK5_5alloc6string6StringNtB8_5ValueENtNtCsboAIIHEtPkY_10serde_core2de12Deserializer15deserialize_anyINtNvXs3e_NtB1O_5implsINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map7HashMappppENtB1O_11Deserialize11deserialize10MapVisitorBZ_mNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateEECs2JiOgHzbbc7_10tokenizers(ptr dead_on_unwind noalias nofree noundef writable sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 11 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [32 x i8], align 8                ; 4 uses
  %i.f = alloca [64 x i8], align 8                ; 8 uses
  %i.g = alloca [64 x i8], align 8                ; 6 uses
  %i.h = alloca [104 x i8], align 8               ; 17 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load i64, ptr %i.i, align 8, !noundef !3 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.k = load ptr, ptr %1, align 8, !noundef !3   ; 3 uses
  %.not = icmp ne ptr %i.k, null                  ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load i64, ptr %i.l, align 8
  %.sroa.01.sroa.5.sroa.6.0 = select i1 %.not, i64 %i.m, i64 undef ; 2 uses
  %.sroa.01.sroa.0.0 = zext i1 %.not to i64       ; 2 uses
  %.sroa.5.0 = select i1 %.not, i64 %i.j, i64 0   ; 2 uses
  store i64 %.sroa.01.sroa.0.0, ptr %i.h, align 8
  %.sroa.02.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr null, ptr %.sroa.02.sroa.4.0..sroa_idx, align 8
  %.sroa.02.sroa.4.sroa.4.0..sroa.02.sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %i.k, ptr %.sroa.02.sroa.4.sroa.4.0..sroa.02.sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.02.sroa.4.sroa.5.0..sroa.02.sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store i64 %.sroa.01.sroa.5.sroa.6.0, ptr %.sroa.02.sroa.4.sroa.5.0..sroa.02.sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.02.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store i64 %.sroa.01.sroa.0.0, ptr %.sroa.02.sroa.5.0..sroa_idx, align 8
  %.sroa.02.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  store ptr null, ptr %.sroa.02.sroa.6.0..sroa_idx, align 8
  %.sroa.02.sroa.6.sroa.4.0..sroa.02.sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  store ptr %i.k, ptr %.sroa.02.sroa.6.sroa.4.0..sroa.02.sroa.6.0..sroa_idx.sroa_idx, align 8
  %.sroa.02.sroa.6.sroa.5.0..sroa.02.sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  store i64 %.sroa.01.sroa.5.sroa.6.0, ptr %.sroa.02.sroa.6.sroa.5.0..sroa.02.sroa.6.0..sroa_idx.sroa_idx, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 64 ; 2 uses
  store i64 %.sroa.5.0, ptr %.sroa.43.0..sroa_idx, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 72 ; 8 uses
  store i8 -1, ptr %i.n, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !241)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !242
  %.sroa.0.0.i.i = tail call noundef i64 @llvm.umin.i64(i64 %.sroa.5.0, i64 32768)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !242
  %i.o = invoke noundef nonnull align 8 ptr @_RINvMs1_NtNtCskk23YY1ZVZx_9once_cell4race8once_boxINtB6_7OnceBoxINtNtCscdodAO9FK5_5alloc5boxed3BoxDNtNtCsiTTz6JxaXqu_5ahash12random_state12RandomSourceNtNtCs4NRVxsYgnAr_4core6marker4SendNtB2r_4SyncEL_EE15get_or_try_initNCINvB2_11get_or_initNCNvB1B_7get_src0E0NtNvMs1_B6_IBN_pE11get_or_init4VoidECs2JiOgHzbbc7_10tokenizers(ptr noundef nonnull align 8 @_RNvNtCsiTTz6JxaXqu_5ahash12random_state11RAND_SOURCE)
          to label %.noexc unwind label %bb.o     ; 2 uses

.noexc:                                           ; preds = %bb.a
  %i.p = load ptr, ptr %i.o, align 8, !noalias !243, !nonnull !3, !noundef !3
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !noalias !243, !nonnull !3, !align !18, !noundef !3
  %i.s = invoke noundef nonnull align 8 ptr @_RINvMs1_NtNtCskk23YY1ZVZx_9once_cell4race8once_boxINtB6_7OnceBoxAAyj4_j2_E15get_or_try_initNCINvB2_11get_or_initNCNvNtCsiTTz6JxaXqu_5ahash12random_state15get_fixed_seeds0E0NtNvMs1_B6_IBN_pE11get_or_init4VoidECs2JiOgHzbbc7_10tokenizers(ptr noundef nonnull align 8 @_RNvNvNtCsiTTz6JxaXqu_5ahash12random_state15get_fixed_seeds5SEEDS)
          to label %.noexc39 unwind label %bb.o   ; 2 uses

.noexc39:                                         ; preds = %.noexc
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !invariant.load !3, !noalias !243, !nonnull !3
  %i.v = invoke noundef i64 %i.u(ptr noundef nonnull %i.p)
          to label %.noexc40 unwind label %bb.o, !inline_history !220

.noexc40:                                         ; preds = %.noexc39
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  invoke void @_RNvMs1_NtCsiTTz6JxaXqu_5ahash12random_stateNtB5_11RandomState9from_keys(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.s, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.w, i64 noundef %i.v)
          to label %.noexc41 unwind label %bb.o

.noexc41:                                         ; preds = %.noexc40
  invoke void @_RNvMs_NtCsgQfI1edjipl_9hashbrown3mapINtB4_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringmNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE24with_capacity_and_hasherCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.f, i64 noundef %.sroa.0.0.i.i, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.e)
          to label %.noexc42 unwind label %bb.o

.noexc42:                                         ; preds = %.noexc41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !242
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %.sroa.3.0..sroa_idx2.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.3.0..sroa_idx5.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx5.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  br label %bb.b

bb.b:                                             ; preds = %bb.m, %.noexc42
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !244
  invoke void @_RINvXsa_NtNtCs5PtHgSLqj5O_10serde_json5value2deNtB6_15MapDeserializerNtNtCsboAIIHEtPkY_10serde_core2de9MapAccess13next_key_seedINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNtCscdodAO9FK5_5alloc6string6StringEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(104) %i.h)
          to label %.noexc.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !241

.noexc.i:                                         ; preds = %bb.b
  %i.z = load i64, ptr %i.c, align 8, !range !24, !noalias !245, !noundef !3 ; 2 uses
  switch i64 %i.z, label %bb.d [
    i64 -2, label %bb.c
    i64 -1, label %.thread30.i
  ]

.thread30.i:                                      ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !244
  br label %.loopexit

bb.c:                                             ; preds = %.noexc.i
  %i.aa = load ptr, ptr %i.x, align 8, !noalias !245, !nonnull !3, !align !18, !noundef !3
  br label %.thread.i

bb.d:                                             ; preds = %.noexc.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !245
  store i64 %i.z, ptr %i.b, align 8, !noalias !245
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3.0..sroa_idx2.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.x, i64 16, i1 false), !noalias !245
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !245
  invoke void @_RINvXsa_NtNtCs5PtHgSLqj5O_10serde_json5value2deNtB6_15MapDeserializerNtNtCsboAIIHEtPkY_10serde_core2de9MapAccess15next_value_seedINtNtCs4NRVxsYgnAr_4core6marker11PhantomDatamEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(104) %i.h)
          to label %bb.f unwind label %bb.e, !noalias !246

bb.e:                                             ; preds = %bb.d
  %i.ab = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b) #22
          to label %.body.i unwind label %bb.j, !noalias !246

bb.f:                                             ; preds = %bb.d
  %i.ac = load i32, ptr %i.a, align 8, !range !20, !noalias !245, !noundef !3
  %i.ad = trunc nuw i32 %i.ac to i1
  br i1 %i.ad, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !noalias !245, !nonnull !3, !align !18, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !245
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit.i.i.i.i unwind label %bb.h, !noalias !246

bb.h:                                             ; preds = %bb.g
  %i.ag = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.body.i unwind label %bb.i, !noalias !246

bb.i:                                             ; preds = %bb.h
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23, !noalias !246
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit.i.i.i.i: ; preds = %bb.g
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.noexc12.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !241

.noexc12.i:                                       ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !245
  br label %.thread.i

bb.j:                                             ; preds = %bb.e
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23, !noalias !246
  unreachable

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.l, %bb.b, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit.i.i.i.i
  %lpad.loopexit.split-lp55 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.h, %bb.e
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.ab, %bb.e ], [ %i.ag, %bb.h ], [ %lpad.loopexit.split-lp55, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringmEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.f)
          to label %.body unwind label %bb.n, !noalias !241

.thread.i:                                        ; preds = %.noexc12.i, %bb.c
  %.sroa.9.0.ph.i = phi ptr [ %i.aa, %bb.c ], [ %i.af, %.noexc12.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !244
  br label %.loopexit36.i

bb.k:                                             ; preds = %bb.f
  %i.aj = load i32, ptr %i.y, align 4, !noalias !245, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !245
  %.sroa.014.0.copyload.i = load i64, ptr %i.b, align 8, !noalias !247 ; 2 uses
  %.sroa.9.0.copyload.i = load ptr, ptr %.sroa.3.0..sroa_idx2.i.i.i.i, align 8, !noalias !247 ; 2 uses
  %.sroa.13.0.copyload.i = load i64, ptr %.sroa.13.0..sroa_idx.i, align 8, !noalias !247
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !245
end_hunk_0
begin_hunk_1_@_RINvXs1_NtNtCs5PtHgSLqj5O_10serde_json5value2deINtNtBa_3map3MapNtNtCscdodAO9FK5_5alloc6string6StringNtB8_5ValueENtNtCsboAIIHEtPkY_10serde_core2de12Deserializer15deserialize_anyNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram13serialization14UnigramVisitorEB2W_:bb.a
bb.w:                                             ; preds = %bb.ah, %bb.af, %bb.z, %bb.v, %bb.r
  %.sink236.i = phi ptr [ %i.cr, %bb.ah ], [ %i.cn, %bb.af ], [ %i.ce, %bb.z ], [ %i.by, %bb.v ], [ %i.bk, %bb.r ]
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink236.i, ptr %i.bz, align 8, !alias.scope !288
  store i64 2, ptr %0, align 8, !alias.scope !288
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i87.i unwind label %bb.x, !noalias !288

bb.x:                                             ; preds = %bb.w
  %i.ca = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %.body.i unwind label %bb.y, !noalias !288

bb.y:                                             ; preds = %bb.x
  %i.cb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23, !noalias !288
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i87.i: ; preds = %bb.w
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit90.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !288

_RINvXs5_NtCsboAIIHEtPkY_10serde_core2deQNtNtNtCs5PtHgSLqj5O_10serde_json5value2de15MapDeserializerNtB6_9MapAccess10next_valueINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtB24_6string6StringdEEECs2JiOgHzbbc7_10tokenizers.exit.i: ; preds = %bb.l
  %i.cc = load i64, ptr %i.e, align 8, !range !4, !noalias !289, !noundef !3 ; 3 uses
  %i.cd = icmp eq i64 %i.cc, -1
  %i.ce = load ptr, ptr %.sroa.458.0..sroa_idx.i, align 8, !noalias !289 ; 3 uses
  br i1 %i.cd, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %_RINvXs5_NtCsboAIIHEtPkY_10serde_core2deQNtNtNtCs5PtHgSLqj5O_10serde_json5value2de15MapDeserializerNtB6_9MapAccess10next_valueINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtB24_6string6StringdEEECs2JiOgHzbbc7_10tokenizers.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !289
  br label %bb.w

bb.aa:                                            ; preds = %_RINvXs5_NtCsboAIIHEtPkY_10serde_core2deQNtNtNtCs5PtHgSLqj5O_10serde_json5value2de15MapDeserializerNtB6_9MapAccess10next_valueINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtB24_6string6StringdEEECs2JiOgHzbbc7_10tokenizers.exit.i
  %.sroa.559.0.copyload.i = load i64, ptr %.sroa.559.0..sroa_idx.i, align 8, !noalias !289 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !289
  %i.cf = load i64, ptr %i.j, align 8, !range !4, !alias.scope !290, !noalias !289, !noundef !3
  %i.cg = icmp eq i64 %i.cf, -1
  br i1 %i.cg, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtB12_6string6StringdEEEECs2JiOgHzbbc7_10tokenizers.exit.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecTNtNtB7_6string6StringdEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtBG_6string6StringdEEECs2JiOgHzbbc7_10tokenizers.exit.i.i unwind label %bb.ac, !noalias !288

bb.ac:                                            ; preds = %bb.ab
  %i.ch = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTNtNtB7_6string6StringdEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %.body91.i unwind label %bb.ad, !noalias !288

bb.ad:                                            ; preds = %bb.ac
  %i.ci = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23, !noalias !288
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtBG_6string6StringdEEECs2JiOgHzbbc7_10tokenizers.exit.i.i: ; preds = %bb.ab
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTNtNtB7_6string6StringdEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtB12_6string6StringdEEEECs2JiOgHzbbc7_10tokenizers.exit.i unwind label %bb.ae, !noalias !288

bb.ae:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtBG_6string6StringdEEECs2JiOgHzbbc7_10tokenizers.exit.i.i
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %.body91.i

.body91.i:                                        ; preds = %bb.ae, %bb.ac
  %eh.lpad-body92.i = phi { ptr, i32 } [ %i.cj, %bb.ae ], [ %i.ch, %bb.ac ]
  store i64 %i.cc, ptr %i.j, align 8, !noalias !289
  store ptr %i.ce, ptr %.sroa.625.0..sroa_idx26.i, align 8, !noalias !289
  store i64 %.sroa.559.0.copyload.i, ptr %.sroa.728.0..sroa_idx29.i, align 8, !noalias !289
  br label %.loopexit.split-lp97.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtB12_6string6StringdEEEECs2JiOgHzbbc7_10tokenizers.exit.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtBG_6string6StringdEEECs2JiOgHzbbc7_10tokenizers.exit.i.i, %bb.aa
  store i64 %i.cc, ptr %i.j, align 8, !noalias !289
  store ptr %i.ce, ptr %.sroa.625.0..sroa_idx26.i, align 8, !noalias !289
  store i64 %.sroa.559.0.copyload.i, ptr %.sroa.728.0..sroa_idx29.i, align 8, !noalias !289
  br label %bb.n

_RINvXs5_NtCsboAIIHEtPkY_10serde_core2deQNtNtNtCs5PtHgSLqj5O_10serde_json5value2de15MapDeserializerNtB6_9MapAccess10next_valuebECs2JiOgHzbbc7_10tokenizers.exit.i: ; preds = %bb.j
  %i.ck = load i8, ptr %i.f, align 8, !range !30, !noalias !289, !noundef !3
  %i.cl = trunc nuw i8 %i.ck to i1
  br i1 %i.cl, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %_RINvXs5_NtCsboAIIHEtPkY_10serde_core2deQNtNtNtCs5PtHgSLqj5O_10serde_json5value2de15MapDeserializerNtB6_9MapAccess10next_valuebECs2JiOgHzbbc7_10tokenizers.exit.i
  %i.cm = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8, !noalias !289, !nonnull !3, !align !18, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !289
  br label %bb.w

bb.ag:                                            ; preds = %_RINvXs5_NtCsboAIIHEtPkY_10serde_core2deQNtNtNtCs5PtHgSLqj5O_10serde_json5value2de15MapDeserializerNtB6_9MapAccess10next_valuebECs2JiOgHzbbc7_10tokenizers.exit.i
  %i.co = load i8, ptr %i.t, align 1, !range !30, !noalias !289, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !289
  br label %bb.n

_RINvXs5_NtCsboAIIHEtPkY_10serde_core2deQNtNtNtCs5PtHgSLqj5O_10serde_json5value2de15MapDeserializerNtB6_9MapAccess10next_valueINtNtCs4NRVxsYgnAr_4core6option6OptionjEECs2JiOgHzbbc7_10tokenizers.exit.i: ; preds = %bb.h
  %i.cp = load i64, ptr %i.g, align 8, !range !5, !noalias !289, !noundef !3 ; 2 uses
  %i.cq = icmp eq i64 %i.cp, 2
  br i1 %i.cq, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %_RINvXs5_NtCsboAIIHEtPkY_10serde_core2deQNtNtNtCs5PtHgSLqj5O_10serde_json5value2de15MapDeserializerNtB6_9MapAccess10next_valueINtNtCs4NRVxsYgnAr_4core6option6OptionjEECs2JiOgHzbbc7_10tokenizers.exit.i
  %i.cr = load ptr, ptr %i.u, align 8, !noalias !289, !nonnull !3, !align !18, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !289
  br label %bb.w

bb.ai:                                            ; preds = %_RINvXs5_NtCsboAIIHEtPkY_10serde_core2deQNtNtNtCs5PtHgSLqj5O_10serde_json5value2de15MapDeserializerNtB6_9MapAccess10next_valueINtNtCs4NRVxsYgnAr_4core6option6OptionjEECs2JiOgHzbbc7_10tokenizers.exit.i
  %i.cs = load i64, ptr %i.u, align 8, !noalias !289
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !289
  br label %bb.n

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !289
  br label %bb.b

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit90.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i87.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !289
  br label %bb.aj

bb.aj:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit90.i, %bb.c
  %i.ct = load i64, ptr %i.j, align 8, !range !4, !alias.scope !291, !noalias !289, !noundef !3
  %i.cu = icmp eq i64 %i.ct, -1
  br i1 %i.cu, label %.thread, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecTNtNtB7_6string6StringdEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtBG_6string6StringdEEECs2JiOgHzbbc7_10tokenizers.exit.i94.i unwind label %bb.al, !noalias !288

bb.al:                                            ; preds = %bb.ak
  %i.cv = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTNtNtB7_6string6StringdEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %.body unwind label %bb.am, !noalias !288

bb.am:                                            ; preds = %bb.al
  %i.cw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23, !noalias !288
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtBG_6string6StringdEEECs2JiOgHzbbc7_10tokenizers.exit.i94.i: ; preds = %bb.ak
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTNtNtB7_6string6StringdEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %.thread unwind label %bb.ar

bb.an:                                            ; preds = %.loopexit.split-lp97.i, %.body.i
  %i.cx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23, !noalias !288
  unreachable

bb.ao:                                            ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !289
  store i64 %.sroa.033.0.copyload.i, ptr %i.b, align 8, !noalias !289
  %.sroa.335.0..sroa_idx36.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.335.0..sroa_idx36.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.625.0..sroa_idx26.i, i64 16, i1 false), !noalias !289
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !289
  %i.cy = trunc nuw i8 %.sroa.013.0.i to i1
  invoke void @_RNvMs2_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram5modelNtB5_7Unigram4from(ptr noalias noundef nonnull sret([328 x i8]) align 8 captures(none) dereferenceable(328) %i.a, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, i64 noundef %.sroa.08.0.i, i64 %.sroa.39.0.i, i1 noundef zeroext %i.cy)
          to label %.noexc39 unwind label %bb.ar

.noexc39:                                         ; preds = %bb.ao
  %i.cz = load i64, ptr %i.a, align 8, !range !5, !noalias !289, !noundef !3 ; 2 uses
  %i.da = icmp eq i64 %i.cz, 2
  %i.db = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.dc = load ptr, ptr %i.db, align 8, !noalias !289 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.da, label %bb.aq, label %bb.av

bb.ap:                                            ; preds = %bb.f
  %i.de = invoke noundef nonnull align 8 ptr @_RINvXs6_NtCs5PtHgSLqj5O_10serde_json5errorNtB6_5ErrorNtNtCsboAIIHEtPkY_10serde_core2de5Error6customReECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly captures(address, read_provenance) @15, i64 noundef 13)
          to label %.noexc40 unwind label %bb.ar

.noexc40:                                         ; preds = %bb.ap
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.de, ptr %i.df, align 8, !alias.scope !288
  store i64 2, ptr %0, align 8, !alias.scope !288
  br label %.thread

bb.aq:                                            ; preds = %.noexc39
  %i.dg = load ptr, ptr %i.dd, align 8, !noalias !289, !nonnull !3, !align !18, !noundef !3
  %i.dh = invoke fastcc noundef nonnull align 8 ptr @_RNCINvXs0_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram13serializationNtB8_14UnigramVisitorNtNtCsboAIIHEtPkY_10serde_core2de7Visitor9visit_mapQNtNtNtCs5PtHgSLqj5O_10serde_json5value2de15MapDeserializerE0Be_(ptr noundef nonnull %i.dc, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.dg)
          to label %.noexc41 unwind label %bb.ar

.noexc41:                                         ; preds = %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !289
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.dh, ptr %i.di, align 8, !alias.scope !288
  store i64 2, ptr %0, align 8, !alias.scope !288
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !289
  br label %.thread

.body:                                            ; preds = %bb.ar, %bb.al, %.body.i, %bb.bb
  %.pn = phi { ptr, i32 } [ %i.dz, %bb.bb ], [ %i.dj, %bb.ar ], [ %i.cv, %bb.al ], [ %.pn78.i, %.body.i ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs5PtHgSLqj5O_10serde_json5value2de15MapDeserializerECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(104) %i.l) #22
          to label %common.resume unwind label %bb.bd

bb.ar:                                            ; preds = %bb.aq, %bb.ap, %bb.ao, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtBG_6string6StringdEEECs2JiOgHzbbc7_10tokenizers.exit.i94.i, %bb.bc
  %i.dj = landingpad { ptr, i32 }
          cleanup
  br label %.body

.thread:                                          ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtBG_6string6StringdEEECs2JiOgHzbbc7_10tokenizers.exit.i94.i, %bb.aj, %.noexc40, %.noexc41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !289
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  invoke void @_RNvXsy_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_8IntoIterNtNtBb_6string6StringNtNtCs5PtHgSLqj5O_10serde_json5value5ValueENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.l)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json3map8IntoIterECs2JiOgHzbbc7_10tokenizers.exit.i unwind label %bb.as

bb.as:                                            ; preds = %.thread
  %i.dk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dl = load i8, ptr %i.r, align 8, !range !17, !alias.scope !292, !noundef !3
  %i.dm = icmp eq i8 %i.dl, -1
  br i1 %i.dm, label %common.resume, label %bb.at

bb.at:                                            ; preds = %bb.as
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json5value5ValueECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.r)
          to label %common.resume unwind label %bb.au

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json3map8IntoIterECs2JiOgHzbbc7_10tokenizers.exit.i: ; preds = %.thread
  %i.dn = load i8, ptr %i.r, align 8, !range !17, !alias.scope !293, !noundef !3
  %i.do = icmp eq i8 %i.dn, -1
  br i1 %i.do, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs5PtHgSLqj5O_10serde_json5value2de15MapDeserializerECs2JiOgHzbbc7_10tokenizers.exit, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs5PtHgSLqj5O_10serde_json5value2de15MapDeserializerECs2JiOgHzbbc7_10tokenizers.exit.sink.split

bb.au:                                            ; preds = %bb.at
  %i.dp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23
  unreachable

common.resume:                                    ; preds = %.body, %bb.ay, %bb.az, %bb.as, %bb.at
  %common.resume.op = phi { ptr, i32 } [ %i.dt, %bb.ay ], [ %i.dk, %bb.as ], [ %i.dk, %bb.at ], [ %i.dt, %bb.az ], [ %.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

bb.av:                                            ; preds = %.noexc39
  %.sroa.353.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(312) %.sroa.353.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(312) %i.dd, i64 312, i1 false), !noalias !294
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !289
  store i64 %i.cz, ptr %0, align 8, !alias.scope !288
  %.sroa.252.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.dc, ptr %.sroa.252.0..sroa_idx.i, align 8, !alias.scope !288
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !289
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !289
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %i.k, ptr noundef nonnull align 8 dereferenceable(328) %0, i64 328, i1 false)
  %i.dq = load i64, ptr %.sroa.43.0..sroa_idx, align 8, !noundef !3
  %i.dr = icmp eq i64 %i.dq, 0
  br i1 %i.dr, label %bb.ax, label %bb.aw, !prof !22

bb.aw:                                            ; preds = %bb.av
  %i.ds = invoke noundef nonnull align 8 ptr @_RNvYNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorNtNtCsboAIIHEtPkY_10serde_core2de5Error14invalid_lengthCs2JiOgHzbbc7_10tokenizers(i64 noundef %i.n, ptr noundef nonnull @59, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @5)
          to label %bb.bc unwind label %bb.bb

bb.ax:                                            ; preds = %bb.av, %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  invoke void @_RNvXsy_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_8IntoIterNtNtBb_6string6StringNtNtCs5PtHgSLqj5O_10serde_json5value5ValueENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.l)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json3map8IntoIterECs2JiOgHzbbc7_10tokenizers.exit.i43 unwind label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.dt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.du = load i8, ptr %i.r, align 8, !range !17, !alias.scope !295, !noundef !3
  %i.dv = icmp eq i8 %i.du, -1
  br i1 %i.dv, label %common.resume, label %bb.az

bb.az:                                            ; preds = %bb.ay
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json5value5ValueECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.r)
          to label %common.resume unwind label %bb.ba

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json3map8IntoIterECs2JiOgHzbbc7_10tokenizers.exit.i43: ; preds = %bb.ax
  %i.dw = load i8, ptr %i.r, align 8, !range !17, !alias.scope !296, !noundef !3
  %i.dx = icmp eq i8 %i.dw, -1
  br i1 %i.dx, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs5PtHgSLqj5O_10serde_json5value2de15MapDeserializerECs2JiOgHzbbc7_10tokenizers.exit, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs5PtHgSLqj5O_10serde_json5value2de15MapDeserializerECs2JiOgHzbbc7_10tokenizers.exit.sink.split

bb.ba:                                            ; preds = %bb.az
  %i.dy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.bb:                                            ; preds = %bb.aw
  %i.dz = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram5model7UnigramEBJ_(ptr noalias noundef align 8 dereferenceable(328) %i.k) #22
          to label %.body unwind label %bb.bd

bb.bc:                                            ; preds = %bb.aw
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ds, ptr %i.ea, align 8
  store i64 2, ptr %0, align 8
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram5model7UnigramEBJ_(ptr noalias noundef align 8 dereferenceable(328) %i.k)
          to label %bb.ax unwind label %bb.ar

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs5PtHgSLqj5O_10serde_json5value2de15MapDeserializerECs2JiOgHzbbc7_10tokenizers.exit.sink.split: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json3map8IntoIterECs2JiOgHzbbc7_10tokenizers.exit.i43, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json3map8IntoIterECs2JiOgHzbbc7_10tokenizers.exit.i
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json5value5ValueECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.r)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs5PtHgSLqj5O_10serde_json5value2de15MapDeserializerECs2JiOgHzbbc7_10tokenizers.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs5PtHgSLqj5O_10serde_json5value2de15MapDeserializerECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs5PtHgSLqj5O_10serde_json5value2de15MapDeserializerECs2JiOgHzbbc7_10tokenizers.exit.sink.split, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json3map8IntoIterECs2JiOgHzbbc7_10tokenizers.exit.i43, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json3map8IntoIterECs2JiOgHzbbc7_10tokenizers.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  ret void

bb.bd:                                            ; preds = %bb.bb, %.body
  %i.eb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs1_NtNtCs5PtHgSLqj5O_10serde_json5value2deINtNtBa_3map3MapNtNtCscdodAO9FK5_5alloc6string6StringNtB8_5ValueENtNtCsboAIIHEtPkY_10serde_core2de12Deserializer15deserialize_anyNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel13serialization16WordLevelVisitorEB2W_(ptr dead_on_unwind noalias noundef writable sret([152 x i8]) align 8 captures(none) dereferenceable(152) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [152 x i8], align 8               ; 6 uses
  %i.b = alloca [104 x i8], align 8               ; 16 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !3 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.e = load ptr, ptr %1, align 8, !noundef !3   ; 3 uses
  %.not = icmp ne ptr %i.e, null                  ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8
  %.sroa.01.sroa.5.sroa.6.0 = select i1 %.not, i64 %i.g, i64 undef ; 2 uses
  %.sroa.01.sroa.0.0 = zext i1 %.not to i64       ; 2 uses
  %.sroa.5.0 = select i1 %.not, i64 %i.d, i64 0
  store i64 %.sroa.01.sroa.0.0, ptr %i.b, align 8
  %.sroa.02.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr null, ptr %.sroa.02.sroa.4.0..sroa_idx, align 8
  %.sroa.02.sroa.4.sroa.4.0..sroa.02.sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.e, ptr %.sroa.02.sroa.4.sroa.4.0..sroa.02.sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.02.sroa.4.sroa.5.0..sroa.02.sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %.sroa.01.sroa.5.sroa.6.0, ptr %.sroa.02.sroa.4.sroa.5.0..sroa.02.sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.02.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %.sroa.01.sroa.0.0, ptr %.sroa.02.sroa.5.0..sroa_idx, align 8
  %.sroa.02.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr null, ptr %.sroa.02.sroa.6.0..sroa_idx, align 8
  %.sroa.02.sroa.6.sroa.4.0..sroa.02.sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store ptr %i.e, ptr %.sroa.02.sroa.6.sroa.4.0..sroa.02.sroa.6.0..sroa_idx.sroa_idx, align 8
  %.sroa.02.sroa.6.sroa.5.0..sroa.02.sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i64 %.sroa.01.sroa.5.sroa.6.0, ptr %.sroa.02.sroa.6.sroa.5.0..sroa.02.sroa.6.0..sroa_idx.sroa_idx, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 2 uses
  store i64 %.sroa.5.0, ptr %.sroa.43.0..sroa_idx, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 8 uses
  store i8 -1, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RINvXs0_NtNtNtCs2JiOgHzbbc7_10tokenizers6models9wordlevel13serializationNtB6_16WordLevelVisitorNtNtCsboAIIHEtPkY_10serde_core2de7Visitor9visit_mapQNtNtNtCs5PtHgSLqj5O_10serde_json5value2de15MapDeserializerEBc_(ptr noalias noundef nonnull sret([152 x i8]) align 8 captures(none) dereferenceable(152) %0, ptr noalias noundef nonnull align 8 dereferenceable(104) %i.b)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.o, %bb.c
  %.pn = phi { ptr, i32 } [ %i.i, %bb.c ], [ %i.aa, %bb.o ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs5PtHgSLqj5O_10serde_json5value2de15MapDeserializerECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(104) %i.b) #22
          to label %common.resume unwind label %bb.q

bb.c:                                             ; preds = %bb.p, %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.j = load i64, ptr %0, align 8, !range !4, !noundef !3
  %i.k = icmp eq i64 %i.j, -1
  br i1 %i.k, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  invoke void @_RNvXsy_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_8IntoIterNtNtBb_6string6StringNtNtCs5PtHgSLqj5O_10serde_json5value5ValueENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.b)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json3map8IntoIterECs2JiOgHzbbc7_10tokenizers.exit.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.m = load i8, ptr %i.h, align 8, !range !17, !alias.scope !309, !noundef !3
  %i.n = icmp eq i8 %i.m, -1
  br i1 %i.n, label %common.resume, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json5value5ValueECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.h)
          to label %common.resume unwind label %bb.h

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json3map8IntoIterECs2JiOgHzbbc7_10tokenizers.exit.i: ; preds = %bb.e
  %i.o = load i8, ptr %i.h, align 8, !range !17, !alias.scope !310, !noundef !3
  %i.p = icmp eq i8 %i.o, -1
  br i1 %i.p, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs5PtHgSLqj5O_10serde_json5value2de15MapDeserializerECs2JiOgHzbbc7_10tokenizers.exit, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs5PtHgSLqj5O_10serde_json5value2de15MapDeserializerECs2JiOgHzbbc7_10tokenizers.exit.sink.split

bb.h:                                             ; preds = %bb.g
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23
  unreachable

common.resume:                                    ; preds = %bb.b, %bb.l, %bb.m, %bb.f, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.u, %bb.l ], [ %i.l, %bb.f ], [ %i.l, %bb.g ], [ %i.u, %bb.m ], [ %.pn, %bb.b ]
  resume { ptr, i32 } %common.resume.op

bb.i:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.a, ptr noundef nonnull align 8 dereferenceable(152) %0, i64 152, i1 false)
  %i.r = load i64, ptr %.sroa.43.0..sroa_idx, align 8, !noundef !3
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %bb.k, label %bb.j, !prof !22

bb.j:                                             ; preds = %bb.i
  %i.t = invoke noundef nonnull align 8 ptr @_RNvYNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorNtNtCsboAIIHEtPkY_10serde_core2de5Error14invalid_lengthCs2JiOgHzbbc7_10tokenizers(i64 noundef %i.d, ptr noundef nonnull @59, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @5)
          to label %bb.p unwind label %bb.o

bb.k:                                             ; preds = %bb.i, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
end_hunk_1
