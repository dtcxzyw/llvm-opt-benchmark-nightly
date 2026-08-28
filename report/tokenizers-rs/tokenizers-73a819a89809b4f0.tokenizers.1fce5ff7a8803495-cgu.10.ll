Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tokenizers-rs/original/tokenizers-73a819a89809b4f0.tokenizers.1fce5ff7a8803495-cgu.10?download=true
inline.NumInlined: 1070
inline.NumDeleted: 542
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_RINvXs0_NtCs2JiOgHzbbc7_10tokenizers6modelsNtB6_12ModelWrapperNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeQINtNtCs5PtHgSLqj5O_10serde_json2de12DeserializerNtNtB21_4read7StrReadEEB8_:bb.a
bb.ax:                                            ; preds = %bb.bj, %bb.bg, %bb.bc, %bb.aw
  %.sroa.12.sroa.12.0 = phi ptr [ %i.by, %bb.aw ], [ %i.ce, %bb.bc ], [ %i.cj, %bb.bg ], [ %.sroa.5168.sroa.0.0.copyload, %bb.bj ]
  %.sroa.12.sroa.0.0 = phi i64 [ %i.bv, %bb.aw ], [ %i.cb, %bb.bc ], [ %i.cg, %bb.bg ], [ %i.cq, %bb.bj ]
  %.sroa.08.0 = phi i64 [ 2, %bb.aw ], [ 3, %bb.bc ], [ 4, %bb.bg ], [ %i.cl, %bb.bj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %bb.bk

bb.ay:                                            ; preds = %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  br label %bb.az

bb.az:                                            ; preds = %bb.bl, %bb.bh, %bb.bd, %bb.ay
  %.sink = phi ptr [ %i.cp, %bb.bl ], [ %i.ck, %bb.bh ], [ %i.cf, %bb.bd ], [ %i.bz, %bb.ay ]
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %i.ca, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %bb.bm

bb.ba:                                            ; preds = %bb.ar
  %i.cb = load i64, ptr %i.u, align 8, !range !19, !noundef !4 ; 2 uses
  %i.cc = icmp eq i64 %i.cb, -1
  %i.cd = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8            ; 2 uses
  br i1 %i.cc, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.cf = invoke noundef nonnull align 8 ptr @_RINvXs6_NtCs5PtHgSLqj5O_10serde_json5errorNtB6_5ErrorNtNtCsboAIIHEtPkY_10serde_core2de5Error6customBE_ECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 %i.ce)
          to label %bb.bd unwind label %.body

bb.bc:                                            ; preds = %bb.ba
  %.sroa.5156.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %.sroa.12.sroa.13, ptr noundef nonnull align 8 dereferenceable(168) %.sroa.5156.0..sroa_idx, i64 168, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br label %bb.ax

bb.bd:                                            ; preds = %bb.bb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br label %bb.az

bb.be:                                            ; preds = %bb.as
  %i.cg = load i64, ptr %i.t, align 8, !range !19, !noundef !4 ; 2 uses
  %i.ch = icmp eq i64 %i.cg, -1
  %i.ci = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8            ; 2 uses
  br i1 %i.ch, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.ck = invoke noundef nonnull align 8 ptr @_RINvXs6_NtCs5PtHgSLqj5O_10serde_json5errorNtB6_5ErrorNtNtCsboAIIHEtPkY_10serde_core2de5Error6customBE_ECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 %i.cj)
          to label %bb.bh unwind label %.body

bb.bg:                                            ; preds = %bb.be
  %.sroa.5162.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.12.sroa.13, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.5162.0..sroa_idx, i64 136, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %bb.ax

bb.bh:                                            ; preds = %bb.bf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %bb.az

_RINvXs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram13serializationNtNtB7_5model7UnigramNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEBb_.exit: ; preds = %bb.at
  %i.cl = load i64, ptr %i.s, align 8, !range !430, !noundef !4 ; 2 uses
  %i.cm = icmp eq i64 %i.cl, 2
  %i.cn = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.co = load ptr, ptr %i.cn, align 8            ; 2 uses
  br i1 %i.cm, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %_RINvXs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram13serializationNtNtB7_5model7UnigramNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEBb_.exit
  %i.cp = invoke noundef nonnull align 8 ptr @_RINvXs6_NtCs5PtHgSLqj5O_10serde_json5errorNtB6_5ErrorNtNtCsboAIIHEtPkY_10serde_core2de5Error6customBE_ECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 %i.co)
          to label %bb.bl unwind label %.body

bb.bj:                                            ; preds = %_RINvXs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram13serializationNtNtB7_5model7UnigramNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEBb_.exit
  %.sroa.5168.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %.sroa.5168.sroa.0.0.copyload = load ptr, ptr %.sroa.5168.0..sroa_idx, align 8
  %.sroa.5168.sroa.4.0..sroa.5168.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %.sroa.12.sroa.13, ptr noundef nonnull align 8 dereferenceable(288) %.sroa.5168.sroa.4.0..sroa.5168.0..sroa_idx.sroa_idx, i64 288, i1 false)
  %.sroa.5168.sroa.5.0..sroa.5168.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 312
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.18, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5168.sroa.5.0..sroa.5168.0..sroa_idx.sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  %i.cq = ptrtoint ptr %i.co to i64
  br label %bb.ax

bb.bk:                                            ; preds = %bb.bt, %bb.ax
  %.sroa.12.sroa.12.1 = phi ptr [ %.sroa.15.0, %bb.bt ], [ %.sroa.12.sroa.12.0, %bb.ax ]
  %.sroa.12.sroa.0.1 = phi i64 [ %.sroa.12.sroa.0.2, %bb.bt ], [ %.sroa.12.sroa.0.0, %bb.ax ]
  %.sroa.08.1 = phi i64 [ %.sroa.08.2, %bb.bt ], [ %.sroa.08.0, %bb.ax ]
  store i64 %.sroa.08.1, ptr %0, align 8
  %.sroa.12.0..sroa_idx11 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.12.sroa.0.1, ptr %.sroa.12.0..sroa_idx11, align 8
  %.sroa.12.sroa.12.0..sroa.12.0..sroa_idx11.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.12.sroa.12.1, ptr %.sroa.12.sroa.12.0..sroa.12.0..sroa_idx11.sroa_idx, align 8
  %.sroa.12.sroa.13.0..sroa.12.0..sroa_idx11.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %.sroa.12.sroa.13.0..sroa.12.0..sroa_idx11.sroa_idx, ptr noundef nonnull align 8 dereferenceable(288) %.sroa.12.sroa.13, i64 288, i1 false)
  %.sroa.18.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %0, i64 312
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.18.0..sroa_idx13, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.18, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12.sroa.13)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.18)
  br label %bb.bu

bb.bl:                                            ; preds = %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %bb.az

bb.bm:                                            ; preds = %bb.bv, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12.sroa.13)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.18)
  br label %bb.bu

bb.bn:                                            ; preds = %bb.s, %bb.am
  %.sroa.11.1.ph = phi ptr [ %i.bq, %bb.am ], [ %i.at, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !446
  %i.cr = invoke noundef nonnull align 8 ptr @_RINvXs6_NtCs5PtHgSLqj5O_10serde_json5errorNtB6_5ErrorNtNtCsboAIIHEtPkY_10serde_core2de5Error6customBE_ECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 %.sroa.11.1.ph)
          to label %bb.bv unwind label %.body

bb.bo:                                            ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !446
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %.sroa.7123.sroa.5, ptr noundef nonnull align 8 dereferenceable(288) %.sroa.16, i64 288, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7123.sroa.6, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.17, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.16)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.17)
  %i.cs = add i64 %.sroa.0203.0, -2
  %i.ct = icmp ugt i64 %.sroa.0203.0, 1
  %i.cu = select i1 %i.ct, i64 %i.cs, i64 3
  switch i64 %i.cu, label %bb.ap [
    i64 0, label %bb.bp
    i64 1, label %bb.bq
    i64 2, label %bb.br
    i64 3, label %bb.bs
  ]

bb.bp:                                            ; preds = %bb.bo
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %.sroa.12.sroa.13, ptr noundef nonnull align 8 dereferenceable(288) %.sroa.7123.sroa.5, i64 288, i1 false)
  br label %bb.bt

bb.bq:                                            ; preds = %bb.bo
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %.sroa.12.sroa.13, ptr noundef nonnull align 8 dereferenceable(168) %.sroa.7123.sroa.5, i64 168, i1 false)
  br label %bb.bt

bb.br:                                            ; preds = %bb.bo
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.12.sroa.13, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.7123.sroa.5, i64 136, i1 false)
  br label %bb.bt

bb.bs:                                            ; preds = %bb.bo
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %.sroa.12.sroa.13, ptr noundef nonnull align 8 dereferenceable(288) %.sroa.7123.sroa.5, i64 288, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.18, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7123.sroa.6, i64 16, i1 false)
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.br, %bb.bq, %bb.bp
  %.sroa.08.2 = phi i64 [ 2, %bb.bp ], [ 3, %bb.bq ], [ 4, %bb.br ], [ %.sroa.0203.0, %bb.bs ]
  %.sroa.12.sroa.0.2 = ptrtoint ptr %.sroa.11.0 to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %bb.bk

bb.bu:                                            ; preds = %bb.p, %bb.bm, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  ret void

bb.bv:                                            ; preds = %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.16)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.17)
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cr, ptr %i.cv, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %bb.bm

bb.bw:                                            ; preds = %.body
  br i1 %.not184, label %.thread237, label %common.resume

bb.bx:                                            ; preds = %.body
  br i1 %.not184, label %common.resume, label %bb.bz

.thread237:                                       ; preds = %.body.thread, %bb.bw
  %eh.lpad-body235239 = phi { ptr, i32 } [ %i.bs, %bb.bw ], [ %i.au, %.body.thread ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json5value5ValueECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.w)
          to label %common.resume unwind label %bb.by

bb.by:                                            ; preds = %.thread237, %bb.bz
  %i.cw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.bz:                                            ; preds = %bb.bx
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json5value5ValueECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(32) %i.w) #28
          to label %common.resume unwind label %bb.by
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB6_8EncodingINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12FromIteratorTmNtNtCscdodAO9FK5_5alloc6string6StringTjjEINtNtB1g_6option6OptionmEmEE9from_iterINtNtNtB1e_8adapters7flatten7FlatMapINtNtB3v_9enumerate9EnumerateINtNtNtB2d_3vec9into_iter8IntoIterNtNtB8_13pre_tokenizer5SplitEEINtNtB3v_3map3MapIB4u_NtB8_5TokenENCNCNvMs0_B53_NtB53_18PreTokenizedString13into_encodings0_00ENCB67_s0_0EEBa_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([256 x i8]) align 8 captures(none) dereferenceable(256) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(384) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 7 uses
  %.sroa.529.i.i = alloca [72 x i8], align 8      ; 5 uses
  %i.b = alloca [56 x i8], align 8                ; 9 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [56 x i8], align 8                ; 13 uses
  %i.f = alloca [384 x i8], align 8               ; 31 uses
  %i.g = alloca [256 x i8], align 8               ; 27 uses
  %.sroa.5 = alloca i64, align 8                  ; 5 uses
  %.sroa.8 = alloca i64, align 8                  ; 4 uses
  %i.h = alloca [384 x i8], align 8               ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(384) %i.h, ptr noundef nonnull readonly align 8 dereferenceable(384) %1, i64 384, i1 false), !alias.scope !451
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !455)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !458)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !460)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !463)
  %i.i = load i64, ptr %i.h, align 8, !range !19, !alias.scope !465, !noalias !466, !noundef !4
  %.not.i.i = icmp eq i64 %i.i, -1
  br i1 %.not.i.i, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer5TokenENCNCNvMs0_NtB26_13pre_tokenizerNtB2Z_18PreTokenizedString13into_encodings0_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB28_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 136
  %.val.i.i.i = load ptr, ptr %i.j, align 8, !alias.scope !467, !noalias !470, !nonnull !4, !noundef !4
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 152
  %.val4.i.i.i = load ptr, ptr %i.k, align 8, !alias.scope !467, !noalias !470, !nonnull !4, !noundef !4
  %i.l = ptrtoint ptr %.val4.i.i.i to i64
  %i.m = ptrtoint ptr %.val.i.i.i to i64
  %i.n = sub nuw i64 %i.l, %i.m
  %i.o = udiv exact i64 %i.n, 48
  br label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer5TokenENCNCNvMs0_NtB26_13pre_tokenizerNtB2Z_18PreTokenizedString13into_encodings0_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB28_.exit.i.i

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer5TokenENCNCNvMs0_NtB26_13pre_tokenizerNtB2Z_18PreTokenizedString13into_encodings0_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB28_.exit.i.i: ; preds = %bb.b, %bb.a
  %.sroa.7.0.i.i = phi i64 [ %i.o, %bb.b ], [ 0, %bb.a ]
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 160
  %i.q = load i64, ptr %i.p, align 8, !range !19, !alias.scope !465, !noalias !466, !noundef !4
  %.not55.i.i = icmp eq i64 %i.q, -1
  br i1 %.not55.i.i, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer5TokenENCNCNvMs0_NtB26_13pre_tokenizerNtB2Z_18PreTokenizedString13into_encodings0_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB28_.exit66.i.i, label %bb.c

bb.c:                                             ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer5TokenENCNCNvMs0_NtB26_13pre_tokenizerNtB2Z_18PreTokenizedString13into_encodings0_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB28_.exit.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 296
  %.val.i64.i.i = load ptr, ptr %i.r, align 8, !alias.scope !473, !noalias !476, !nonnull !4, !noundef !4
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 312
  %.val4.i65.i.i = load ptr, ptr %i.s, align 8, !alias.scope !473, !noalias !476, !nonnull !4, !noundef !4
  %i.t = ptrtoint ptr %.val4.i65.i.i to i64
  %i.u = ptrtoint ptr %.val.i64.i.i to i64
  %i.v = sub nuw i64 %i.t, %i.u
  %i.w = udiv exact i64 %i.v, 48
  br label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer5TokenENCNCNvMs0_NtB26_13pre_tokenizerNtB2Z_18PreTokenizedString13into_encodings0_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB28_.exit66.i.i

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer5TokenENCNCNvMs0_NtB26_13pre_tokenizerNtB2Z_18PreTokenizedString13into_encodings0_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB28_.exit66.i.i: ; preds = %bb.c, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer5TokenENCNCNvMs0_NtB26_13pre_tokenizerNtB2Z_18PreTokenizedString13into_encodings0_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB28_.exit.i.i
  %.sroa.8.0.i.i = phi i64 [ %i.w, %bb.c ], [ 0, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer5TokenENCNCNvMs0_NtB26_13pre_tokenizerNtB2Z_18PreTokenizedString13into_encodings0_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB28_.exit.i.i ]
  %i.x = add nuw nsw i64 %.sroa.8.0.i.i, %.sroa.7.0.i.i ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.h, i64 320
  %i.z = load ptr, ptr %i.y, align 8, !alias.scope !465, !noalias !466, !noundef !4
  %.not56.i.i = icmp eq ptr %i.z, null
  br i1 %.not56.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer5TokenENCNCNvMs0_NtB26_13pre_tokenizerNtB2Z_18PreTokenizedString13into_encodings0_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB28_.exit66.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.h, i64 328
  %.val.i.i = load ptr, ptr %i.aa, align 8, !alias.scope !465, !noalias !466, !nonnull !4, !noundef !4
  %i.ab = getelementptr inbounds nuw i8, ptr %i.h, i64 344
  %.val63.i.i = load ptr, ptr %i.ab, align 8, !alias.scope !465, !noalias !466, !nonnull !4, !noundef !4
  %i.ac = icmp eq ptr %.val63.i.i, %.val.i.i
  br i1 %i.ac, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer5TokenENCNCNvMs0_NtB26_13pre_tokenizerNtB2Z_18PreTokenizedString13into_encodings0_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB28_.exit66.i.i
  store i64 1, ptr %.sroa.5, align 8, !alias.scope !466, !noalias !465
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sink81.i.i.sroa.phi = phi ptr [ %.sroa.8, %bb.e ], [ %.sroa.5, %bb.d ]
  %.sink.i.i = phi i64 [ %i.x, %bb.e ], [ 0, %bb.d ]
  store i64 %.sink.i.i, ptr %.sink81.i.i.sroa.phi, align 8, !alias.scope !466, !noalias !465
  %.sroa.5.0..sroa.5.0..sroa.5.0..sroa.5.8. = load i64, ptr %.sroa.5, align 8, !range !16, !noundef !4
  %.sroa.8.0..sroa.8.0..sroa.8.0..sroa.8.16. = load i64, ptr %.sroa.8, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  %i.ad = trunc nuw i64 %.sroa.5.0..sroa.5.0..sroa.5.0..sroa.5.8. to i1
  %spec.select = select i1 %i.ad, i64 %.sroa.8.0..sroa.8.0..sroa.8.0..sroa.8.16., i64 %i.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  invoke void @_RNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB2_8Encoding13with_capacity(ptr noalias noundef nonnull sret([256 x i8]) align 8 captures(none) dereferenceable(256) %i.g, i64 noundef %spec.select)
          to label %bb.g unwind label %bb.as

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(384) %i.f, ptr noundef nonnull align 8 dereferenceable(384) %1, i64 384, i1 false)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.f, i64 320
  %i.af = getelementptr inbounds nuw i8, ptr %i.f, i64 344
  %i.ag = getelementptr inbounds nuw i8, ptr %i.f, i64 328 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.f, i64 352 ; 2 uses
  %.sroa.713.8..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %i.f, i64 360
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.al = getelementptr inbounds nuw i8, ptr %i.f, i64 368
  %i.am = getelementptr inbounds nuw i8, ptr %i.f, i64 376
  %i.an = getelementptr inbounds nuw i8, ptr %i.f, i64 128 ; 3 uses
  %.sroa.529.0..sroa_idx30.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %.sroa.631.0..sroa_idx32.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 80 ; 2 uses
  %.sroa.837.0..sroa_idx38.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 88 ; 2 uses
  %.sroa.940.0..sroa_idx41.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 96 ; 2 uses
  %.sroa.1043.0..sroa_idx44.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 104 ; 2 uses
  %.sroa.1146.0..sroa_idx47.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 112 ; 2 uses
  %.sroa.1249.0..sroa_idx50.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 120 ; 2 uses
  %.sroa.1558.0..sroa_idx59.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 136 ; 2 uses
  %.sroa.1661.0..sroa_idx62.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 144 ; 2 uses
  %.sroa.1764.0..sroa_idx65.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 152 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.f, i64 160
  %i.ap = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.aq = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.ar = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.as = getelementptr inbounds nuw i8, ptr %i.e, i64 52
  %i.at = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.g, i64 48 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.g, i64 64 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.ay = getelementptr inbounds nuw i8, ptr %i.g, i64 96 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.g, i64 112 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.g, i64 104
  %i.bb = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.g, i64 40 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.be = getelementptr inbounds nuw i8, ptr %i.g, i64 72 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.g, i64 88 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.g, i64 80
  %i.bh = getelementptr inbounds nuw i8, ptr %i.g, i64 120 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.g, i64 136 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.g, i64 128
  %i.bk = getelementptr inbounds nuw i8, ptr %i.g, i64 144 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.g, i64 160 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.g, i64 152
  br label %bb.h

bb.h:                                             ; preds = %bb.ao, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.experimental.noalias.scope.decl(metadata !479)
  call void @llvm.experimental.noalias.scope.decl(metadata !482)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !485
  invoke fastcc void @_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer5TokenENCNCNvMs0_NtB2b_13pre_tokenizerNtB34_18PreTokenizedString13into_encodings0_00ETmNtNtB1t_6string6StringTjjEINtNtB8_6option6OptionmEmENvYB16_NtNtNtB6_6traits8iterator8Iterator4nextEB2d_(ptr noalias noundef align 8 captures(none) dereferenceable(56) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(384) %i.f)
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.h
  %i.bn = load i64, ptr %i.b, align 8, !range !19, !noalias !485, !noundef !4
  %.not107.i.i = icmp eq i64 %i.bn, -1
  br i1 %.not107.i.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionTmNtNtCscdodAO9FK5_5alloc6string6StringTjjEIBC_mEmEEECs2JiOgHzbbc7_10tokenizers.exit.i.i, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc11, %.noexc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.e, ptr noundef nonnull align 8 dereferenceable(56) %i.b, i64 56, i1 false), !noalias !488
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !485
  br label %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_9enumerate9EnumerateINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer13pre_tokenizer5SplitEEINtNtB7_3map3MapIB1x_NtB2n_5TokenENCNCNvMs0_B2l_NtB2l_18PreTokenizedString13into_encodings0_00ENCB3Y_s0_0ENtNtNtB9_6traits8iterator8Iterator4nextB2p_.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionTmNtNtCscdodAO9FK5_5alloc6string6StringTjjEIBC_mEmEEECs2JiOgHzbbc7_10tokenizers.exit.i.i: ; preds = %.noexc, %.noexc11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !485
  call void @llvm.experimental.noalias.scope.decl(metadata !489)
  %i.bo = load ptr, ptr %i.ae, align 8, !alias.scope !492, !noalias !493, !noundef !4
  %.not.i.i.i = icmp eq ptr %i.bo, null
  br i1 %.not.i.i.i, label %bb.s, label %bb.i

bb.i:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionTmNtNtCscdodAO9FK5_5alloc6string6StringTjjEIBC_mEmEEECs2JiOgHzbbc7_10tokenizers.exit.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !495)
  call void @llvm.experimental.noalias.scope.decl(metadata !498)
  call void @llvm.experimental.noalias.scope.decl(metadata !501)
  %i.bp = load ptr, ptr %i.af, align 8, !alias.scope !504, !noalias !505, !nonnull !4, !noundef !4
  %i.bq = load ptr, ptr %i.ag, align 8, !alias.scope !504, !noalias !505, !nonnull !4, !noundef !4 ; 7 uses
  %i.br = icmp eq ptr %i.bq, %i.bp
  br i1 %i.br, label %bb.s, label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer13pre_tokenizer5SplitENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB11_.exit.i.i.i.i.i

_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer13pre_tokenizer5SplitENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB11_.exit.i.i.i.i.i: ; preds = %bb.i
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 104
  store ptr %i.bs, ptr %i.ag, align 8, !alias.scope !504, !noalias !505
  %.sroa.0.0.copyload1.i.i.i.i.i = load i64, ptr %i.bq, align 8, !noalias !509 ; 4 uses
  %.not.i.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload1.i.i.i.i.i, -1
  br i1 %.not.i.i.i.i.i, label %bb.s, label %bb.j

bb.j:                                             ; preds = %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer13pre_tokenizer5SplitENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB11_.exit.i.i.i.i.i
  %.sroa.7.0..sroa_idx2.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bq, i64 8 ; 2 uses
  %.sroa.7.sroa.4.0..sroa.7.0..sroa_idx2.i.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bq, i64 80
  %.sroa.7.sroa.4.0.copyload.i.i.i.i = load i64, ptr %.sroa.7.sroa.4.0..sroa.7.0..sroa_idx2.i.sroa_idx.i.i.i.i, align 8, !noalias !510 ; 4 uses
  %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx2.i.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bq, i64 88
  %.sroa.7.sroa.5.0.copyload.i.i.i.i = load ptr, ptr %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx2.i.sroa_idx.i.i.i.i, align 8, !noalias !510 ; 6 uses
  %.sroa.7.sroa.6.0..sroa.7.0..sroa_idx2.i.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bq, i64 96
  %.sroa.7.sroa.6.0.copyload.i.i.i.i = load i64, ptr %.sroa.7.sroa.6.0..sroa.7.0..sroa_idx2.i.sroa_idx.i.i.i.i, align 8, !noalias !510 ; 2 uses
  %i.bt = load i64, ptr %i.ah, align 8, !alias.scope !511, !noalias !512, !noundef !4 ; 3 uses
  %i.bu = add i64 %i.bt, 1
  store i64 %i.bu, ptr %i.ah, align 8, !alias.scope !511, !noalias !512
  call void @llvm.experimental.noalias.scope.decl(metadata !513)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !516
  store i64 %.sroa.0.0.copyload1.i.i.i.i.i, ptr %i.a, align 8, !noalias !519
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.713.8..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.7.0..sroa_idx2.i.i.i.i.i, i64 72, i1 false), !noalias !520
  %i.bv = load i64, ptr %i.ai, align 8, !noalias !516, !noundef !4 ; 2 uses
  %i.bw = icmp sgt i64 %i.bv, -1
  call void @llvm.assume(i1 %i.bw)
  %.not.i1.i.i.i.i = icmp eq i64 %.sroa.7.sroa.4.0.copyload.i.i.i.i, -1
  br i1 %.not.i1.i.i.i.i, label %bb.k, label %bb.o, !prof !18

bb.k:                                             ; preds = %bb.j
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @80) #25
          to label %bb.m unwind label %bb.l, !noalias !521

bb.l:                                             ; preds = %bb.k
  %i.bx = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizer16NormalizedStringEBH_(ptr noalias noundef align 8 dereferenceable(80) %i.a) #28
          to label %.body unwind label %bb.n, !noalias !521

bb.m:                                             ; preds = %bb.k
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.by = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26, !noalias !521
  unreachable

bb.o:                                             ; preds = %bb.j
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.sroa.5.0.copyload.i.i.i.i) ]
  %i.bz = load ptr, ptr %i.aj, align 8, !alias.scope !522, !noalias !523, !nonnull !4, !align !13, !noundef !4 ; 2 uses
  %i.ca = load i64, ptr %i.ak, align 8, !noalias !516, !noundef !4 ; 3 uses
  %i.cb = add i64 %i.ca, %i.bv                    ; 2 uses
  %i.cc = icmp ult i64 %.sroa.7.sroa.6.0.copyload.i.i.i.i, 192153584101141163
  call void @llvm.assume(i1 %i.cc)
  %i.cd = getelementptr inbounds nuw [48 x i8], ptr %.sroa.7.sroa.5.0.copyload.i.i.i.i, i64 %.sroa.7.sroa.6.0.copyload.i.i.i.i ; 2 uses
  %i.ce = icmp sgt i64 %.sroa.7.sroa.4.0.copyload.i.i.i.i, -1
  call void @llvm.assume(i1 %i.ce)
  %i.cf = load ptr, ptr %i.al, align 8, !alias.scope !522, !noalias !523, !nonnull !4, !align !524, !noundef !4
  %i.cg = load ptr, ptr %i.am, align 8, !alias.scope !522, !noalias !523, !nonnull !4, !align !524, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.529.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.529.i.i, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.7.0..sroa_idx2.i.i.i.i.i, i64 72, i1 false), !noalias !525
  %i.ch = load <2 x i32>, ptr %i.cf, align 4, !noalias !521 ; 2 uses
  %i.ci = load i32, ptr %i.cg, align 4, !noalias !521, !noundef !4 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !516
  %i.cj = load i64, ptr %i.f, align 8, !range !19, !alias.scope !526, !noalias !525, !noundef !4
  %i.ck = icmp eq i64 %i.cj, -1
  br i1 %i.ck, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer5TokenENCNCNvMs0_NtB2k_13pre_tokenizerNtB3d_18PreTokenizedString13into_encodings0_00EEEB2m_.exit.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  invoke void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer5TokenENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBZ_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.an)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer5TokenENCNCNvMs0_NtB1Y_13pre_tokenizerNtB2R_18PreTokenizedString13into_encodings0_00EEB20_.exit.i.i.i unwind label %bb.q, !noalias !525

bb.q:                                             ; preds = %bb.p
  %i.cl = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizer16NormalizedStringEBH_(ptr noalias noundef nonnull align 8 dereferenceable(384) %i.f)
          to label %.body.i.i unwind label %bb.r, !noalias !525

bb.r:                                             ; preds = %bb.q
  %i.cm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26, !noalias !525
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer5TokenENCNCNvMs0_NtB1Y_13pre_tokenizerNtB2R_18PreTokenizedString13into_encodings0_00EEB20_.exit.i.i.i: ; preds = %bb.p
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizer16NormalizedStringEBH_(ptr noalias noundef nonnull align 8 dereferenceable(384) %i.f)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer5TokenENCNCNvMs0_NtB2k_13pre_tokenizerNtB3d_18PreTokenizedString13into_encodings0_00EEEB2m_.exit.i.i unwind label %bb.t, !noalias !525

bb.s:                                             ; preds = %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer13pre_tokenizer5SplitENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB11_.exit.i.i.i.i.i, %bb.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionTmNtNtCscdodAO9FK5_5alloc6string6StringTjjEIBC_mEmEEECs2JiOgHzbbc7_10tokenizers.exit.i.i
  invoke fastcc void @_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer5TokenENCNCNvMs0_NtB2b_13pre_tokenizerNtB34_18PreTokenizedString13into_encodings0_00ETmNtNtB1t_6string6StringTjjEINtNtB8_6option6OptionmEmENvYB16_NtNtNtB6_6traits8iterator8Iterator4nextEB2d_(ptr noalias noundef nonnull align 8 captures(none) dereferenceable(56) %i.e, ptr noalias noundef align 8 dereferenceable(160) %i.ao)
          to label %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_9enumerate9EnumerateINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer13pre_tokenizer5SplitEEINtNtB7_3map3MapIB1x_NtB2n_5TokenENCNCNvMs0_B2l_NtB2l_18PreTokenizedString13into_encodings0_00ENCB3Y_s0_0ENtNtNtB9_6traits8iterator8Iterator4nextB2p_.exit unwind label %.loopexit.split-lp

bb.t:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer5TokenENCNCNvMs0_NtB1Y_13pre_tokenizerNtB2R_18PreTokenizedString13into_encodings0_00EEB20_.exit.i.i.i
  %i.cn = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.t, %bb.q
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.cn, %bb.t ], [ %i.cl, %bb.q ]
  store i64 %.sroa.0.0.copyload1.i.i.i.i.i, ptr %i.f, align 8, !alias.scope !488, !noalias !525
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.529.0..sroa_idx30.i.i, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.529.i.i, i64 72, i1 false), !noalias !525
  store <2 x i32> %i.ch, ptr %.sroa.631.0..sroa_idx32.i.i, align 8, !alias.scope !488, !noalias !525
  store ptr %i.bz, ptr %.sroa.837.0..sroa_idx38.i.i, align 8, !alias.scope !488, !noalias !525
  store i64 %i.ca, ptr %.sroa.940.0..sroa_idx41.i.i, align 8, !alias.scope !488, !noalias !525
  store i64 %i.cb, ptr %.sroa.1043.0..sroa_idx44.i.i, align 8, !alias.scope !488, !noalias !525
  store i64 %i.bt, ptr %.sroa.1146.0..sroa_idx47.i.i, align 8, !alias.scope !488, !noalias !525
end_hunk_0
begin_hunk_1_@_RINvXs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB6_8EncodingINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12FromIteratorTmNtNtCscdodAO9FK5_5alloc6string6StringTjjEINtNtB1g_6option6OptionmEmEE9from_iterINtNtNtB1e_8adapters7flatten7FlatMapINtNtB3v_9enumerate9EnumerateINtNtNtB2d_3vec9into_iter8IntoIterNtNtB8_13pre_tokenizer5SplitEEINtNtB3v_3map3MapIB4u_NtB8_5TokenENCNCNvMs0_B53_NtB53_18PreTokenizedString13into_encodings0_00ENCB67_s0_0EEBa_:bb.a
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_9enumerate9EnumerateINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer13pre_tokenizer5SplitEEINtNtB7_3map3MapIB1x_NtB2n_5TokenENCNCNvMs0_B2l_NtB2l_18PreTokenizedString13into_encodings0_00ENCB3Y_s0_0ENtNtNtB9_6traits8iterator8Iterator4nextB2p_.exit: ; preds = %._crit_edge.i.i, %bb.s
  %i.cp = load i64, ptr %i.e, align 8, !range !19, !noundef !4
  %.not = icmp eq i64 %i.cp, -1
  br i1 %.not, label %bb.w, label %bb.u

bb.u:                                             ; preds = %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_9enumerate9EnumerateINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer13pre_tokenizer5SplitEEINtNtB7_3map3MapIB1x_NtB2n_5TokenENCNCNvMs0_B2l_NtB2l_18PreTokenizedString13into_encodings0_00ENCB3Y_s0_0ENtNtNtB9_6traits8iterator8Iterator4nextB2p_.exit
  %i.cq = load i32, ptr %i.ap, align 8, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  %i.cr = load <2 x i64>, ptr %i.aq, align 8
  %i.cs = load <2 x i32>, ptr %i.ar, align 8
  %i.ct = load i32, ptr %i.as, align 4, !noundef !4
  %i.cu = load i64, ptr %i.at, align 8, !alias.scope !529, !noundef !4 ; 3 uses
  %i.cv = load i64, ptr %i.g, align 8, !range !93, !alias.scope !529, !noundef !4
  %i.cw = icmp eq i64 %i.cu, %i.cv
  br i1 %i.cw, label %bb.v, label %bb.aa

bb.v:                                             ; preds = %bb.u
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecmE8grow_oneCs10FHCNY9HGS_12aho_corasick(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %bb.aa unwind label %bb.ap

bb.w:                                             ; preds = %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_7FlatMapINtNtB7_9enumerate9EnumerateINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer13pre_tokenizer5SplitEEINtNtB7_3map3MapIB1x_NtB2n_5TokenENCNCNvMs0_B2l_NtB2l_18PreTokenizedString13into_encodings0_00ENCB3Y_s0_0ENtNtNtB9_6traits8iterator8Iterator4nextB2p_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlatMapINtNtBG_9enumerate9EnumerateINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer13pre_tokenizer5SplitEEINtNtBG_3map3MapIB1K_NtB2A_5TokenENCNCNvMs0_B2y_NtB2y_18PreTokenizedString13into_encodings0_00ENCB4b_s0_0EEB2C_(ptr noalias noundef align 8 dereferenceable(384) %i.f)
          to label %bb.z unwind label %bb.y

bb.x:                                             ; preds = %bb.y, %.body
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %i.cx, %bb.y ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingEBH_(ptr noalias noundef align 8 dereferenceable(256) %i.g) #28
          to label %bb.ar unwind label %bb.aq

bb.y:                                             ; preds = %bb.w
  %i.cx = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.z:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 8 dereferenceable(256) %i.g, i64 256, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  ret void

.body13.thread30:                                 ; preds = %bb.an, %bb.al, %bb.aj, %bb.ah, %bb.af
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.aa:                                            ; preds = %bb.u, %bb.v
  %i.cy = load ptr, ptr %i.au, align 8, !alias.scope !529, !nonnull !4, !noundef !4
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %i.cu
  store i32 %i.cq, ptr %i.cz, align 4
  %i.da = add i64 %i.cu, 1
  store i64 %i.da, ptr %i.at, align 8, !alias.scope !529
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  %i.db = load i64, ptr %i.aw, align 8, !alias.scope !532, !noalias !535, !noundef !4 ; 3 uses
  %i.dc = load i64, ptr %i.av, align 8, !range !93, !alias.scope !532, !noalias !535, !noundef !4
  %i.dd = icmp eq i64 %i.db, %i.dc
  br i1 %i.dd, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %bb.aa
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringE8grow_oneCs2AWtUsOyxgP_3std(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.av)
          to label %bb.ae unwind label %bb.ac, !noalias !535

bb.ac:                                            ; preds = %bb.ab
  %i.de = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #28
          to label %.body unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.df = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.ae:                                            ; preds = %bb.ab, %bb.aa
  %i.dg = load ptr, ptr %i.ax, align 8, !alias.scope !532, !noalias !535, !nonnull !4, !noundef !4
  %i.dh = getelementptr inbounds nuw [24 x i8], ptr %i.dg, i64 %i.db
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dh, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  %i.di = add i64 %i.db, 1
  store i64 %i.di, ptr %i.aw, align 8, !alias.scope !532, !noalias !535
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.dj = load i64, ptr %i.az, align 8, !alias.scope !537, !noundef !4 ; 3 uses
  %i.dk = load i64, ptr %i.ay, align 8, !range !93, !alias.scope !537, !noundef !4
  %i.dl = icmp eq i64 %i.dj, %i.dk
  br i1 %i.dl, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTjjEE8grow_oneCsdMFwaIVqAhb_14regex_automata(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ay)
          to label %bb.ag unwind label %.body13.thread30

bb.ag:                                            ; preds = %bb.ae, %bb.af
  %i.dm = load ptr, ptr %i.ba, align 8, !alias.scope !537, !nonnull !4, !noundef !4
  %i.dn = getelementptr inbounds nuw [16 x i8], ptr %i.dm, i64 %i.dj
  store <2 x i64> %i.cr, ptr %i.dn, align 8
  %i.do = add i64 %i.dj, 1
  store i64 %i.do, ptr %i.az, align 8, !alias.scope !537
  %i.dp = load i64, ptr %i.bc, align 8, !alias.scope !540, !noundef !4 ; 3 uses
  %i.dq = load i64, ptr %i.bb, align 8, !range !93, !alias.scope !540, !noundef !4
  %i.dr = icmp eq i64 %i.dp, %i.dq
  br i1 %i.dr, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecmE8grow_oneCs10FHCNY9HGS_12aho_corasick(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bb)
          to label %bb.ai unwind label %.body13.thread30

bb.ai:                                            ; preds = %bb.ag, %bb.ah
  %i.ds = load ptr, ptr %i.bd, align 8, !alias.scope !540, !nonnull !4, !noundef !4
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.ds, i64 %i.dp
  store i32 %i.ct, ptr %i.dt, align 4
  %i.du = add i64 %i.dp, 1
  store i64 %i.du, ptr %i.bc, align 8, !alias.scope !540
  %i.dv = load i64, ptr %i.bf, align 8, !alias.scope !543, !noundef !4 ; 3 uses
  %i.dw = load i64, ptr %i.be, align 8, !range !93, !alias.scope !543, !noundef !4
  %i.dx = icmp eq i64 %i.dv, %i.dw
  br i1 %i.dx, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtCs4NRVxsYgnAr_4core6option6OptionmEE8grow_oneCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.be)
          to label %bb.ak unwind label %.body13.thread30

bb.ak:                                            ; preds = %bb.ai, %bb.aj
  %i.dy = load ptr, ptr %i.bg, align 8, !alias.scope !543, !nonnull !4, !noundef !4
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.dy, i64 %i.dv
  store <2 x i32> %i.cs, ptr %i.dz, align 4
  %i.ea = add i64 %i.dv, 1
  store i64 %i.ea, ptr %i.bf, align 8, !alias.scope !543
  %i.eb = load i64, ptr %i.bi, align 8, !alias.scope !546, !noundef !4 ; 3 uses
  %i.ec = load i64, ptr %i.bh, align 8, !range !93, !alias.scope !546, !noundef !4
  %i.ed = icmp eq i64 %i.eb, %i.ec
  br i1 %i.ed, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecmE8grow_oneCs10FHCNY9HGS_12aho_corasick(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bh)
          to label %bb.am unwind label %.body13.thread30

bb.am:                                            ; preds = %bb.ak, %bb.al
  %i.ee = load ptr, ptr %i.bj, align 8, !alias.scope !546, !nonnull !4, !noundef !4
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %i.eb
  store i32 0, ptr %i.ef, align 4
  %i.eg = add i64 %i.eb, 1
  store i64 %i.eg, ptr %i.bi, align 8, !alias.scope !546
  %i.eh = load i64, ptr %i.bl, align 8, !alias.scope !549, !noundef !4 ; 3 uses
  %i.ei = load i64, ptr %i.bk, align 8, !range !93, !alias.scope !549, !noundef !4
  %i.ej = icmp eq i64 %i.eh, %i.ei
  br i1 %i.ej, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecmE8grow_oneCs10FHCNY9HGS_12aho_corasick(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bk)
          to label %bb.ao unwind label %.body13.thread30

bb.ao:                                            ; preds = %bb.am, %bb.an
  %i.ek = load ptr, ptr %i.bm, align 8, !alias.scope !549, !nonnull !4, !noundef !4
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.ek, i64 %i.eh
  store i32 1, ptr %i.el, align 4
  %i.em = add i64 %i.eh, 1
  store i64 %i.em, ptr %i.bl, align 8, !alias.scope !549
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.h

bb.ap:                                            ; preds = %bb.v
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24) %i.d) #28
          to label %.body unwind label %bb.aq

bb.aq:                                            ; preds = %bb.as, %bb.ap, %bb.x, %.body
  %i.en = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.ar:                                            ; preds = %bb.x, %bb.as
  %.pn.pn.pn26 = phi { ptr, i32 } [ %i.eo, %bb.as ], [ %.pn.pn, %bb.x ]
  resume { ptr, i32 } %.pn.pn.pn26

bb.as:                                            ; preds = %bb.f
  %i.eo = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters7flatten7FlatMapINtNtBG_9enumerate9EnumerateINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer13pre_tokenizer5SplitEEINtNtBG_3map3MapIB1K_NtB2A_5TokenENCNCNvMs0_B2y_NtB2y_18PreTokenizedString13into_encodings0_00ENCB4b_s0_0EEB2C_(ptr noalias noundef align 8 dereferenceable(384) %i.h) #28
          to label %bb.ar unwind label %bb.aq
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB6_8EncodingINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12FromIteratorTmNtNtCscdodAO9FK5_5alloc6string6StringTjjEINtNtB1g_6option6OptionmEmEE9from_iterINtNtNtB1e_8adapters7flatten7FlatMapINtNtNtB2d_3vec9into_iter8IntoIterNtNtB8_13pre_tokenizer5SplitEINtNtB3v_3map3MapIB41_NtB8_5TokenENCNCNvMs0_B4A_NtB4A_18PreTokenizedString13into_encodings_00ENCB5D_s_0EEBa_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([256 x i8]) align 8 captures(none) dereferenceable(256) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(96) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [104 x i8], align 8               ; 13 uses
  %i.b = alloca [56 x i8], align 8                ; 9 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [56 x i8], align 8                ; 13 uses
  %i.f = alloca [96 x i8], align 8                ; 13 uses
  %i.g = alloca [256 x i8], align 8               ; 27 uses
  %.sroa.5 = alloca i64, align 8                  ; 5 uses
  %.sroa.8 = alloca i64, align 8                  ; 4 uses
  %i.h = alloca [96 x i8], align 8                ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.h, ptr noundef nonnull readonly align 8 dereferenceable(96) %1, i64 96, i1 false), !alias.scope !552
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !556)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !559)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !561)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !564)
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !566, !noalias !567, !noundef !4
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer5TokenENCNCNvMs0_NtB26_13pre_tokenizerNtB2Z_18PreTokenizedString13into_encodings_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB28_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %.val.i.i.i = load ptr, ptr %i.k, align 8, !alias.scope !568, !noalias !571, !nonnull !4, !noundef !4
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  %.val4.i.i.i = load ptr, ptr %i.l, align 8, !alias.scope !568, !noalias !571, !nonnull !4, !noundef !4
  %i.m = ptrtoint ptr %.val4.i.i.i to i64
  %i.n = ptrtoint ptr %.val.i.i.i to i64
  %i.o = sub nuw i64 %i.m, %i.n
  %i.p = udiv exact i64 %i.o, 48
  br label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer5TokenENCNCNvMs0_NtB26_13pre_tokenizerNtB2Z_18PreTokenizedString13into_encodings_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB28_.exit.i.i

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer5TokenENCNCNvMs0_NtB26_13pre_tokenizerNtB2Z_18PreTokenizedString13into_encodings_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB28_.exit.i.i: ; preds = %bb.b, %bb.a
  %.sroa.7.0.i.i = phi i64 [ %i.p, %bb.b ], [ 0, %bb.a ]
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !566, !noalias !567, !noundef !4
  %.not55.i.i = icmp eq ptr %i.r, null
  br i1 %.not55.i.i, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer5TokenENCNCNvMs0_NtB26_13pre_tokenizerNtB2Z_18PreTokenizedString13into_encodings_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB28_.exit66.i.i, label %bb.c

bb.c:                                             ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer5TokenENCNCNvMs0_NtB26_13pre_tokenizerNtB2Z_18PreTokenizedString13into_encodings_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB28_.exit.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  %.val.i64.i.i = load ptr, ptr %i.s, align 8, !alias.scope !574, !noalias !577, !nonnull !4, !noundef !4
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 88
  %.val4.i65.i.i = load ptr, ptr %i.t, align 8, !alias.scope !574, !noalias !577, !nonnull !4, !noundef !4
  %i.u = ptrtoint ptr %.val4.i65.i.i to i64
  %i.v = ptrtoint ptr %.val.i64.i.i to i64
  %i.w = sub nuw i64 %i.u, %i.v
  %i.x = udiv exact i64 %i.w, 48
  br label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer5TokenENCNCNvMs0_NtB26_13pre_tokenizerNtB2Z_18PreTokenizedString13into_encodings_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB28_.exit66.i.i

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer5TokenENCNCNvMs0_NtB26_13pre_tokenizerNtB2Z_18PreTokenizedString13into_encodings_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB28_.exit66.i.i: ; preds = %bb.c, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer5TokenENCNCNvMs0_NtB26_13pre_tokenizerNtB2Z_18PreTokenizedString13into_encodings_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB28_.exit.i.i
  %.sroa.8.0.i.i = phi i64 [ %i.x, %bb.c ], [ 0, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer5TokenENCNCNvMs0_NtB26_13pre_tokenizerNtB2Z_18PreTokenizedString13into_encodings_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB28_.exit.i.i ]
  %i.y = add nuw nsw i64 %.sroa.8.0.i.i, %.sroa.7.0.i.i ; 2 uses
  %i.z = load ptr, ptr %i.h, align 8, !alias.scope !566, !noalias !567, !noundef !4
  %.not56.i.i = icmp eq ptr %i.z, null
  br i1 %.not56.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer5TokenENCNCNvMs0_NtB26_13pre_tokenizerNtB2Z_18PreTokenizedString13into_encodings_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB28_.exit66.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.val.i.i = load ptr, ptr %i.aa, align 8, !alias.scope !566, !noalias !567, !nonnull !4, !noundef !4
  %i.ab = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %.val63.i.i = load ptr, ptr %i.ab, align 8, !alias.scope !566, !noalias !567, !nonnull !4, !noundef !4
  %i.ac = icmp eq ptr %.val63.i.i, %.val.i.i
  br i1 %i.ac, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer5TokenENCNCNvMs0_NtB26_13pre_tokenizerNtB2Z_18PreTokenizedString13into_encodings_00EE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintEB28_.exit66.i.i
  store i64 1, ptr %.sroa.5, align 8, !alias.scope !567, !noalias !566
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sink81.i.i.sroa.phi = phi ptr [ %.sroa.8, %bb.e ], [ %.sroa.5, %bb.d ]
  %.sink.i.i = phi i64 [ %i.y, %bb.e ], [ 0, %bb.d ]
  store i64 %.sink.i.i, ptr %.sink81.i.i.sroa.phi, align 8, !alias.scope !567, !noalias !566
  %.sroa.5.0..sroa.5.0..sroa.5.0..sroa.5.8. = load i64, ptr %.sroa.5, align 8, !range !16, !noundef !4
  %.sroa.8.0..sroa.8.0..sroa.8.0..sroa.8.16. = load i64, ptr %.sroa.8, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  %i.ad = trunc nuw i64 %.sroa.5.0..sroa.5.0..sroa.5.0..sroa.5.8. to i1
  %spec.select = select i1 %i.ad, i64 %.sroa.8.0..sroa.8.0..sroa.8.0..sroa.8.16., i64 %i.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  invoke void @_RNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB2_8Encoding13with_capacity(ptr noalias noundef nonnull sret([256 x i8]) align 8 captures(none) dereferenceable(256) %i.g, i64 noundef %spec.select)
          to label %bb.g unwind label %bb.az

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.f, ptr noundef nonnull align 8 dereferenceable(96) %1, i64 96, i1 false)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 6 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.ag = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %.sroa.66.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %.sroa.55.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %.sroa.59.0..sroa_idx10.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 40 ; 2 uses
  %.sroa.612.0..sroa_idx13.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 48 ; 2 uses
  %.sroa.7.0..sroa_idx15.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 56 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %i.al = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.am = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.an = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.ao = getelementptr inbounds nuw i8, ptr %i.e, i64 52
  %i.ap = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.g, i64 48 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.g, i64 64 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.au = getelementptr inbounds nuw i8, ptr %i.g, i64 96 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.g, i64 112 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.g, i64 104
  %i.ax = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.g, i64 40 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.ba = getelementptr inbounds nuw i8, ptr %i.g, i64 72 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.g, i64 88 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.g, i64 80
  %i.bd = getelementptr inbounds nuw i8, ptr %i.g, i64 120 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.g, i64 136 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.g, i64 128
  %i.bg = getelementptr inbounds nuw i8, ptr %i.g, i64 144 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.g, i64 160 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.g, i64 152
  br label %bb.h

bb.h:                                             ; preds = %bb.av, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.experimental.noalias.scope.decl(metadata !580)
  call void @llvm.experimental.noalias.scope.decl(metadata !583)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !586
  invoke fastcc void @_RINvNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_3map3MapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer5TokenENCNCNvMs0_NtB2b_13pre_tokenizerNtB34_18PreTokenizedString13into_encodings_00ETmNtNtB1t_6string6StringTjjEINtNtB8_6option6OptionmEmENvYB16_NtNtNtB6_6traits8iterator8Iterator4nextEB2d_(ptr noalias noundef align 8 captures(none) dereferenceable(56) %i.b, ptr noalias noundef align 8 dereferenceable(32) %i.ae)
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.h
  %i.bj = load i64, ptr %i.b, align 8, !range !19, !noalias !586, !noundef !4
  %.not27.i.i = icmp eq i64 %i.bj, -1
  br i1 %.not27.i.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionTmNtNtCscdodAO9FK5_5alloc6string6StringTjjEIBC_mEmEEECs2JiOgHzbbc7_10tokenizers.exit.i.i, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc12, %.noexc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.e, ptr noundef nonnull align 8 dereferenceable(56) %i.b, i64 56, i1 false), !noalias !589
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !586
  br label %_RNvXs1_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoIterNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer13pre_tokenizer5SplitEINtNtB7_3map3MapIB15_NtB1V_5TokenENCNCNvMs0_B1T_NtB1T_18PreTokenizedString13into_encodings_00ENCB3v_s_0ENtNtNtB9_6traits8iterator8Iterator4nextB1X_.exit

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionTmNtNtCscdodAO9FK5_5alloc6string6StringTjjEIBC_mEmEEECs2JiOgHzbbc7_10tokenizers.exit.i.i: ; preds = %.noexc, %.noexc12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !586
  call void @llvm.experimental.noalias.scope.decl(metadata !590)
  %i.bk = load ptr, ptr %i.f, align 8, !alias.scope !593, !noalias !594, !noundef !4
  %.not.i.i.i = icmp eq ptr %i.bk, null
  br i1 %.not.i.i.i, label %bb.z, label %bb.i

bb.i:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionTmNtNtCscdodAO9FK5_5alloc6string6StringTjjEIBC_mEmEEECs2JiOgHzbbc7_10tokenizers.exit.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !596)
  call void @llvm.experimental.noalias.scope.decl(metadata !599)
  %i.bl = load ptr, ptr %i.af, align 8, !alias.scope !602, !noalias !603, !nonnull !4, !noundef !4
  %i.bm = load ptr, ptr %i.ag, align 8, !alias.scope !602, !noalias !603, !nonnull !4, !noundef !4 ; 4 uses
  %i.bn = icmp eq ptr %i.bm, %i.bl
  br i1 %i.bn, label %bb.z, label %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer13pre_tokenizer5SplitENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB11_.exit.i.i.i.i

_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer13pre_tokenizer5SplitENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB11_.exit.i.i.i.i: ; preds = %bb.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 104
  store ptr %i.bo, ptr %i.ag, align 8, !alias.scope !602, !noalias !603
  %.sroa.0.0.copyload1.i.i.i.i = load i64, ptr %i.bm, align 8, !noalias !606 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload1.i.i.i.i, -1
  br i1 %.not.i.i.i.i, label %bb.z, label %bb.j

bb.j:                                             ; preds = %_RNvXs4_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer13pre_tokenizer5SplitENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextB11_.exit.i.i.i.i
  %.sroa.6.0..sroa_idx2.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !607
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.4.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.6.0..sroa_idx2.i.i.i.i, i64 96, i1 false), !noalias !608
  store i64 %.sroa.0.0.copyload1.i.i.i.i, ptr %i.a, align 8, !noalias !607
  call void @llvm.experimental.noalias.scope.decl(metadata !609)
  %.sroa.04.0.copyload.i.i.i.i.i = load i64, ptr %i.ah, align 8, !alias.scope !609, !noalias !612 ; 4 uses
  %.not.i.i.i.i.i = icmp eq i64 %.sroa.04.0.copyload.i.i.i.i.i, -1
  br i1 %.not.i.i.i.i.i, label %bb.k, label %bb.o, !prof !18

bb.k:                                             ; preds = %bb.j
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @81) #25
          to label %bb.m unwind label %bb.l, !noalias !614

bb.l:                                             ; preds = %bb.k
  %i.bp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizer16NormalizedStringEBH_(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.a) #28
          to label %.body unwind label %bb.n, !noalias !615

bb.m:                                             ; preds = %bb.k
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.bq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26, !noalias !615
  unreachable

bb.o:                                             ; preds = %bb.j
  %.sroa.66.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.66.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !609, !noalias !612 ; 2 uses
  %.sroa.55.0.copyload.i.i.i.i.i = load ptr, ptr %.sroa.55.0..sroa_idx.i.i.i.i.i, align 8, !alias.scope !609, !noalias !612, !nonnull !4, !noundef !4 ; 5 uses
  %i.br = icmp ult i64 %.sroa.66.0.copyload.i.i.i.i.i, 192153584101141163
  call void @llvm.assume(i1 %i.br)
  %i.bs = getelementptr inbounds nuw [48 x i8], ptr %.sroa.55.0.copyload.i.i.i.i.i, i64 %.sroa.66.0.copyload.i.i.i.i.i ; 2 uses
  %i.bt = icmp sgt i64 %.sroa.04.0.copyload.i.i.i.i.i, -1
  call void @llvm.assume(i1 %i.bt)
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i.i unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bu = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.a)
          to label %.body.i unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i.i: ; preds = %bb.o
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit.i unwind label %bb.r

bb.r:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i.i
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.r, %bb.p
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.bw, %bb.r ], [ %i.bu, %bb.p ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24) %i.ai) #28
          to label %.body4.i unwind label %bb.x

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i.i
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ai)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i3.i unwind label %bb.s

bb.s:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit.i
  %i.bx = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ai)
          to label %.body4.i unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.by = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i3.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit.i
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ai)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit6.i unwind label %bb.u

.body4.i:                                         ; preds = %bb.u, %bb.s, %.body.i
  %.pn.i = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %i.bz, %bb.u ], [ %i.bx, %bb.s ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTjjEEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24) %i.aj) #28
          to label %.body unwind label %bb.x

bb.u:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i3.i
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %.body4.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit6.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i3.i
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecTjjEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aj)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTjjEEECs2JiOgHzbbc7_10tokenizers.exit.i unwind label %bb.v

bb.v:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit6.i
  %i.ca = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTjjEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aj)
          to label %.body unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
end_hunk_1
begin_hunk_2_@_RINvXs_NtCs2JiOgHzbbc7_10tokenizers14pre_tokenizersNtB5_19PreTokenizerWrapperNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeINtNtNtNtCsctIyQp3ax5j_5serde7private2de7content19ContentDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEEB7_:bb.a
  %i.di = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.dj = load i32, ptr %i.di, align 4, !range !429, !noundef !4 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %.sroa.28.sroa.0.sroa.0.0.extract.trunc = trunc i32 %i.dj to i8
  %.sroa.28.sroa.0.sroa.20.0.extract.shift = lshr i32 %i.dj, 8
  %.sroa.28.sroa.0.sroa.20.0.extract.trunc = trunc nuw nsw i32 %.sroa.28.sroa.0.sroa.20.0.extract.shift to i24
  br label %bb.as

bb.ay:                                            ; preds = %bb.ai
  %i.dk = call noundef nonnull align 8 ptr @_RINvXs6_NtCs5PtHgSLqj5O_10serde_json5errorNtB6_5ErrorNtNtCsboAIIHEtPkY_10serde_core2de5Error6customBE_ECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 %i.ce)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.at

bb.az:                                            ; preds = %bb.ai
  %.sroa.5354.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.dl = load <2 x i64>, ptr %.sroa.5354.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %.sroa.28.sroa.0.0.extract.trunc27 = trunc i64 %i.cb to i32
  %.sroa.28.sroa.0.sroa.0.0.extract.trunc50 = trunc i64 %i.cb to i8
  %.sroa.28.sroa.0.sroa.20.0.extract.shift65 = lshr i32 %.sroa.28.sroa.0.0.extract.trunc27, 8
  %.sroa.28.sroa.0.sroa.20.0.extract.trunc66 = trunc nuw i32 %.sroa.28.sroa.0.sroa.20.0.extract.shift65 to i24
  br label %bb.as

bb.ba:                                            ; preds = %bb.aj
  %i.dm = call noundef nonnull align 8 ptr @_RINvXs6_NtCs5PtHgSLqj5O_10serde_json5errorNtB6_5ErrorNtNtCsboAIIHEtPkY_10serde_core2de5Error6customBE_ECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 %i.cf)
  br label %bb.at

bb.bb:                                            ; preds = %bb.ak
  %i.dn = call noundef nonnull align 8 ptr @_RINvXs6_NtCs5PtHgSLqj5O_10serde_json5errorNtB6_5ErrorNtNtCsboAIIHEtPkY_10serde_core2de5Error6customBE_ECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 %i.cj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.at

bb.bc:                                            ; preds = %bb.ak
  %.sroa.5361.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.5361.0.copyload = load i64, ptr %.sroa.5361.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %.sroa.28.sroa.0.0.extract.trunc29 = trunc i64 %i.cg to i32
  %.sroa.28.sroa.0.sroa.0.0.extract.trunc52 = trunc i64 %i.cg to i8
  %.sroa.28.sroa.0.sroa.20.0.extract.shift69 = lshr i32 %.sroa.28.sroa.0.0.extract.trunc29, 8
  %.sroa.28.sroa.0.sroa.20.0.extract.trunc70 = trunc nuw i32 %.sroa.28.sroa.0.sroa.20.0.extract.shift69 to i24
  %i.do = insertelement <2 x i64> <i64 poison, i64 undef>, i64 %.sroa.5361.0.copyload, i64 0
  br label %bb.as

bb.bd:                                            ; preds = %bb.al
  %i.dp = call noundef nonnull align 8 ptr @_RINvXs6_NtCs5PtHgSLqj5O_10serde_json5errorNtB6_5ErrorNtNtCsboAIIHEtPkY_10serde_core2de5Error6customBE_ECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 %i.cn)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.at

bb.be:                                            ; preds = %bb.al
  %.sroa.5367.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.sroa.5367.sroa.0.0.copyload = load ptr, ptr %.sroa.5367.0..sroa_idx, align 8
  %.sroa.5367.sroa.4.0..sroa.5367.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.dq = load <2 x i64>, ptr %.sroa.5367.sroa.4.0..sroa.5367.0..sroa_idx.sroa_idx, align 8
  %.sroa.5367.sroa.6.0..sroa.5367.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %.sroa.5367.sroa.6.0.copyload = load i64, ptr %.sroa.5367.sroa.6.0..sroa.5367.0..sroa_idx.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %i.dr = ptrtoint ptr %i.cn to i64               ; 3 uses
  %.sroa.28.sroa.0.0.extract.trunc = trunc i64 %i.dr to i32
  %.sroa.28.sroa.0.sroa.0.0.extract.trunc46 = trunc i64 %i.dr to i8
  %.sroa.28.sroa.0.sroa.20.0.extract.shift57 = lshr i32 %.sroa.28.sroa.0.0.extract.trunc, 8
  %.sroa.28.sroa.0.sroa.20.0.extract.trunc58 = trunc nuw i32 %.sroa.28.sroa.0.sroa.20.0.extract.shift57 to i24
  br label %bb.as

bb.bf:                                            ; preds = %bb.am
  %i.ds = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.dt = load ptr, ptr %i.ds, align 8, !nonnull !4, !align !13, !noundef !4
  %i.du = call noundef nonnull align 8 ptr @_RINvXs6_NtCs5PtHgSLqj5O_10serde_json5errorNtB6_5ErrorNtNtCsboAIIHEtPkY_10serde_core2de5Error6customBE_ECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 %i.dt)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.at

bb.bg:                                            ; preds = %bb.am
  %i.dv = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  %i.dw = load i8, ptr %i.dv, align 1, !range !431, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.as

bb.bh:                                            ; preds = %bb.an
  %i.dx = call noundef nonnull align 8 ptr @_RINvXs6_NtCs5PtHgSLqj5O_10serde_json5errorNtB6_5ErrorNtNtCsboAIIHEtPkY_10serde_core2de5Error6customBE_ECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 %i.cq)
  br label %bb.at

bb.bi:                                            ; preds = %bb.ao
  %i.dy = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.dz = load ptr, ptr %i.dy, align 8, !nonnull !4, !align !13, !noundef !4
  %i.ea = call noundef nonnull align 8 ptr @_RINvXs6_NtCs5PtHgSLqj5O_10serde_json5errorNtB6_5ErrorNtNtCsboAIIHEtPkY_10serde_core2de5Error6customBE_ECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 %i.dz)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.at

bb.bj:                                            ; preds = %bb.ao
  %i.eb = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  %i.ec = load i8, ptr %i.eb, align 1, !range !3, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.as

bb.bk:                                            ; preds = %bb.ap
  %i.ed = call noundef nonnull align 8 ptr @_RINvXs6_NtCs5PtHgSLqj5O_10serde_json5errorNtB6_5ErrorNtNtCsboAIIHEtPkY_10serde_core2de5Error6customBE_ECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 %i.ct)
  br label %bb.at

bb.bl:                                            ; preds = %bb.aq
  %i.ee = call noundef nonnull align 8 ptr @_RINvXs6_NtCs5PtHgSLqj5O_10serde_json5errorNtB6_5ErrorNtNtCsboAIIHEtPkY_10serde_core2de5Error6customBE_ECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 %i.cw)
  br label %bb.at

bb.bm:                                            ; preds = %bb.aq
  %i.ef = ptrtoint ptr %i.cw to i64               ; 3 uses
  %.sroa.28.sroa.0.0.extract.trunc25 = trunc i64 %i.ef to i32
  %.sroa.28.sroa.0.sroa.0.0.extract.trunc48 = trunc i64 %i.ef to i8
  %.sroa.28.sroa.0.sroa.20.0.extract.shift61 = lshr i32 %.sroa.28.sroa.0.0.extract.trunc25, 8
  %.sroa.28.sroa.0.sroa.20.0.extract.trunc62 = trunc nuw i32 %.sroa.28.sroa.0.sroa.20.0.extract.shift61 to i24
  br label %bb.as

bb.bn:                                            ; preds = %bb.cg, %bb.as
  %.sroa.42.sroa.11.1 = phi i64 [ %.sroa.42.sroa.11.2, %bb.cg ], [ %.sroa.42.sroa.11.0, %bb.as ]
  %.sroa.42.sroa.0.1 = phi ptr [ %.sroa.42.sroa.0.2, %bb.cg ], [ %.sroa.42.sroa.0.0, %bb.as ]
  %.sroa.28.sroa.0.sroa.20.sroa.0.1 = phi i24 [ %.sroa.28.sroa.0.sroa.20.sroa.0.2, %bb.cg ], [ %.sroa.28.sroa.0.sroa.20.sroa.0.0, %bb.as ]
  %.sroa.28.sroa.0.sroa.0.1 = phi i8 [ %.sroa.28.sroa.0.sroa.0.2, %bb.cg ], [ %.sroa.28.sroa.0.sroa.0.0, %bb.as ]
  %.sroa.28.sroa.20.1 = phi i64 [ %.sroa.28.sroa.20.2, %bb.cg ], [ %.sroa.28.sroa.20.0, %bb.as ]
  %.sroa.09.1 = phi i64 [ %.sroa.09.2, %bb.cg ], [ %.sroa.09.0, %bb.as ]
  %i.eg = phi <2 x i64> [ %i.ew, %bb.cg ], [ %i.cz, %bb.as ]
  store i64 %.sroa.09.1, ptr %0, align 8
  %.sroa.28.0..sroa_idx12 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.28.sroa.0.sroa.20.0.insert.ext = zext i24 %.sroa.28.sroa.0.sroa.20.sroa.0.1 to i64
  %.sroa.28.sroa.0.sroa.20.0.insert.shift = shl nuw nsw i64 %.sroa.28.sroa.0.sroa.20.0.insert.ext, 8
  %.sroa.28.sroa.0.sroa.0.0.insert.ext = zext i8 %.sroa.28.sroa.0.sroa.0.1 to i64
  %.sroa.28.sroa.0.sroa.0.0.insert.insert = or disjoint i64 %.sroa.28.sroa.0.sroa.20.0.insert.shift, %.sroa.28.sroa.0.sroa.0.0.insert.ext
  %.sroa.28.sroa.20.0.insert.ext = and i64 %.sroa.28.sroa.20.1, -4294967296
  %.sroa.28.sroa.0.0.insert.insert = or disjoint i64 %.sroa.28.sroa.20.0.insert.ext, %.sroa.28.sroa.0.sroa.0.0.insert.insert
  store i64 %.sroa.28.sroa.0.0.insert.insert, ptr %.sroa.28.0..sroa_idx12, align 8
  %.sroa.42.0..sroa_idx19 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.42.sroa.0.1, ptr %.sroa.42.0..sroa_idx19, align 8
  %.sroa.42.sroa.10.0..sroa.42.0..sroa_idx19.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <2 x i64> %i.eg, ptr %.sroa.42.sroa.10.0..sroa.42.0..sroa_idx19.sroa_idx, align 8
  %.sroa.42.sroa.11.0..sroa.42.0..sroa_idx19.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.42.sroa.11.1, ptr %.sroa.42.sroa.11.0..sroa.42.0..sroa_idx19.sroa_idx, align 8
  br label %bb.ch

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5PtHgSLqj5O_10serde_json3map3MapNtNtCscdodAO9FK5_5alloc6string6StringNtNtBG_5value5ValueEECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit, %bb.t, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  br label %bb.ch

bb.bo:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.br, ptr %i.eh, align 8
  store i64 -1, ptr %0, align 8
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i unwind label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.ei = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %.thread unwind label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.ej = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i: ; preds = %bb.bo
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.v

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @_RNvXNtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtB8_6string6StringNtNtCs5PtHgSLqj5O_10serde_json5value5ValueENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.x)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5PtHgSLqj5O_10serde_json3map3MapNtNtCscdodAO9FK5_5alloc6string6StringNtNtBG_5value5ValueEECs2JiOgHzbbc7_10tokenizers.exit

bb.br:                                            ; preds = %.thread, %bb.z
  %i.ek = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.bs:                                            ; preds = %bb.x
  unreachable

.thread:                                          ; preds = %bb.bp, %bb.z, %bb.v
  %.pn414 = phi { ptr, i32 } [ %i.bm, %bb.z ], [ %lpad.thr_comm.split-lp, %bb.v ], [ %i.ei, %bb.bp ]
  invoke void @_RNvXNtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtB8_6string6StringNtNtCs5PtHgSLqj5O_10serde_json5value5ValueENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %common.resume unwind label %bb.br

bb.bt:                                            ; preds = %bb.r
  %i.el = call noundef nonnull align 8 ptr @_RINvXs6_NtCs5PtHgSLqj5O_10serde_json5errorNtB6_5ErrorNtNtCsboAIIHEtPkY_10serde_core2de5Error6customBE_ECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 %i.aw)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.el, ptr %i.em, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.ch

bb.bu:                                            ; preds = %bb.r
  %.sroa.5376.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.5376.sroa.0.0.copyload = load ptr, ptr %.sroa.5376.0..sroa_idx, align 8 ; 3 uses
  %.sroa.5376.sroa.4.0..sroa.5376.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.en = load <2 x i64>, ptr %.sroa.5376.sroa.4.0..sroa.5376.0..sroa_idx.sroa_idx, align 8 ; 3 uses
  %.sroa.5376.sroa.6.0..sroa.5376.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %.sroa.5376.sroa.6.0.copyload = load i64, ptr %.sroa.5376.sroa.6.0..sroa.5376.0..sroa_idx.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.eo = ptrtoint ptr %i.aw to i64               ; 11 uses
  %.sroa.3.sroa.0.sroa.0.0.extract.trunc = trunc i64 %i.eo to i8 ; 8 uses
  %i.ep = icmp ne i64 %i.at, 8
  call void @llvm.assume(i1 %i.ep)
  %i.eq = add nsw i64 %i.at, -2
  %i.er = icmp samesign ugt i64 %i.at, 1
  %i.es = select i1 %i.er, i64 %i.eq, i64 6       ; 2 uses
  switch i64 %i.es, label %bb.af [
    i64 0, label %bb.cg
    i64 1, label %bb.bv
    i64 2, label %bb.bw
    i64 3, label %bb.bx
    i64 4, label %bb.by
    i64 5, label %bb.bz
    i64 6, label %bb.ca
    i64 7, label %bb.cb
    i64 8, label %bb.cc
    i64 9, label %bb.cd
    i64 10, label %bb.ce
    i64 11, label %bb.cf
  ]

bb.bv:                                            ; preds = %bb.bu
  %i.et = trunc i64 %i.eo to i24
  %i.eu = lshr i24 %i.et, 8
  br label %bb.cg

bb.bw:                                            ; preds = %bb.bu
  %.sroa.3.sroa.0.0.extract.trunc = trunc i64 %i.eo to i32
  %.sroa.28.sroa.0.sroa.20.0.extract.shift55 = lshr i32 %.sroa.3.sroa.0.0.extract.trunc, 8
  %.sroa.28.sroa.0.sroa.20.0.extract.trunc56 = trunc nuw i32 %.sroa.28.sroa.0.sroa.20.0.extract.shift55 to i24
  br label %bb.cg

bb.bx:                                            ; preds = %bb.bu
  %.sroa.28.sroa.0.0.extract.trunc28 = trunc i64 %i.eo to i32
  %.sroa.28.sroa.0.sroa.20.0.extract.shift67 = lshr i32 %.sroa.28.sroa.0.0.extract.trunc28, 8
  %.sroa.28.sroa.0.sroa.20.0.extract.trunc68 = trunc nuw i32 %.sroa.28.sroa.0.sroa.20.0.extract.shift67 to i24
  br label %bb.cg

bb.by:                                            ; preds = %bb.bu
  br label %bb.cg

bb.bz:                                            ; preds = %bb.bu
  %.sroa.28.sroa.0.0.extract.trunc30 = trunc i64 %i.eo to i32
  %.sroa.28.sroa.0.sroa.20.0.extract.shift71 = lshr i32 %.sroa.28.sroa.0.0.extract.trunc30, 8
  %.sroa.28.sroa.0.sroa.20.0.extract.trunc72 = trunc nuw i32 %.sroa.28.sroa.0.sroa.20.0.extract.shift71 to i24
  %i.ev = insertelement <2 x i64> %i.en, i64 undef, i64 1
  br label %bb.cg

bb.ca:                                            ; preds = %bb.bu
  %.sroa.28.sroa.0.0.extract.trunc24 = trunc i64 %i.eo to i32
  %.sroa.28.sroa.0.sroa.20.0.extract.shift59 = lshr i32 %.sroa.28.sroa.0.0.extract.trunc24, 8
  %.sroa.28.sroa.0.sroa.20.0.extract.trunc60 = trunc nuw i32 %.sroa.28.sroa.0.sroa.20.0.extract.shift59 to i24
  br label %bb.cg

bb.cb:                                            ; preds = %bb.bu
  br label %bb.cg

bb.cc:                                            ; preds = %bb.bu
  br label %bb.cg

bb.cd:                                            ; preds = %bb.bu
  br label %bb.cg

bb.ce:                                            ; preds = %bb.bu
  br label %bb.cg

bb.cf:                                            ; preds = %bb.bu
  %.sroa.28.sroa.0.0.extract.trunc26 = trunc i64 %i.eo to i32
  %.sroa.28.sroa.0.sroa.20.0.extract.shift63 = lshr i32 %.sroa.28.sroa.0.0.extract.trunc26, 8
  %.sroa.28.sroa.0.sroa.20.0.extract.trunc64 = trunc nuw i32 %.sroa.28.sroa.0.sroa.20.0.extract.shift63 to i24
  br label %bb.cg

bb.cg:                                            ; preds = %bb.bu, %bb.cf, %bb.ce, %bb.cd, %bb.cc, %bb.cb, %bb.ca, %bb.bz, %bb.by, %bb.bx, %bb.bw, %bb.bv
  %.sroa.42.sroa.11.2 = phi i64 [ undef, %bb.cf ], [ undef, %bb.bv ], [ undef, %bb.bw ], [ undef, %bb.bx ], [ undef, %bb.by ], [ undef, %bb.bz ], [ %.sroa.5376.sroa.6.0.copyload, %bb.ca ], [ undef, %bb.cb ], [ undef, %bb.cc ], [ undef, %bb.cd ], [ undef, %bb.ce ], [ undef, %bb.bu ]
  %.sroa.42.sroa.0.2 = phi ptr [ undef, %bb.cf ], [ undef, %bb.bv ], [ undef, %bb.bw ], [ %.sroa.5376.sroa.0.0.copyload, %bb.bx ], [ undef, %bb.by ], [ %.sroa.5376.sroa.0.0.copyload, %bb.bz ], [ %.sroa.5376.sroa.0.0.copyload, %bb.ca ], [ undef, %bb.cb ], [ undef, %bb.cc ], [ undef, %bb.cd ], [ undef, %bb.ce ], [ undef, %bb.bu ]
  %.sroa.28.sroa.0.sroa.20.sroa.0.2 = phi i24 [ %.sroa.28.sroa.0.sroa.20.0.extract.trunc64, %bb.cf ], [ %i.eu, %bb.bv ], [ %.sroa.28.sroa.0.sroa.20.0.extract.trunc56, %bb.bw ], [ %.sroa.28.sroa.0.sroa.20.0.extract.trunc68, %bb.bx ], [ undef, %bb.by ], [ %.sroa.28.sroa.0.sroa.20.0.extract.trunc72, %bb.bz ], [ %.sroa.28.sroa.0.sroa.20.0.extract.trunc60, %bb.ca ], [ undef, %bb.cb ], [ undef, %bb.cc ], [ undef, %bb.cd ], [ undef, %bb.ce ], [ undef, %bb.bu ]
  %.sroa.28.sroa.0.sroa.0.2 = phi i8 [ %.sroa.3.sroa.0.sroa.0.0.extract.trunc, %bb.cf ], [ %.sroa.3.sroa.0.sroa.0.0.extract.trunc, %bb.bv ], [ %.sroa.3.sroa.0.sroa.0.0.extract.trunc, %bb.bw ], [ %.sroa.3.sroa.0.sroa.0.0.extract.trunc, %bb.bx ], [ undef, %bb.by ], [ %.sroa.3.sroa.0.sroa.0.0.extract.trunc, %bb.bz ], [ %.sroa.3.sroa.0.sroa.0.0.extract.trunc, %bb.ca ], [ %.sroa.3.sroa.0.sroa.0.0.extract.trunc, %bb.cb ], [ undef, %bb.cc ], [ %.sroa.3.sroa.0.sroa.0.0.extract.trunc, %bb.cd ], [ undef, %bb.ce ], [ undef, %bb.bu ]
  %.sroa.28.sroa.20.2 = phi i64 [ %i.eo, %bb.cf ], [ 0, %bb.bv ], [ 0, %bb.bw ], [ %i.eo, %bb.bx ], [ 0, %bb.by ], [ %i.eo, %bb.bz ], [ %i.eo, %bb.ca ], [ 0, %bb.cb ], [ 0, %bb.cc ], [ 0, %bb.cd ], [ 0, %bb.ce ], [ %i.es, %bb.bu ]
  %.sroa.09.2 = phi i64 [ 13, %bb.cf ], [ 3, %bb.bv ], [ 4, %bb.bw ], [ 5, %bb.bx ], [ 6, %bb.by ], [ 7, %bb.bz ], [ %i.at, %bb.ca ], [ 9, %bb.cb ], [ 10, %bb.cc ], [ 11, %bb.cd ], [ 12, %bb.ce ], [ 2, %bb.bu ]
  %i.ew = phi <2 x i64> [ undef, %bb.cf ], [ undef, %bb.bv ], [ undef, %bb.bw ], [ %i.en, %bb.bx ], [ undef, %bb.by ], [ %i.ev, %bb.bz ], [ %i.en, %bb.ca ], [ undef, %bb.cb ], [ undef, %bb.cc ], [ undef, %bb.cd ], [ undef, %bb.ce ], [ undef, %bb.bu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.bn

bb.ch:                                            ; preds = %bb.p, %bb.bt, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5PtHgSLqj5O_10serde_json3map3MapNtNtCscdodAO9FK5_5alloc6string6StringNtNtBG_5value5ValueEECs2JiOgHzbbc7_10tokenizers.exit, %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtCs2JiOgHzbbc7_10tokenizers14pre_tokenizersNtB5_19PreTokenizerWrapperNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeQINtNtCs5PtHgSLqj5O_10serde_json2de12DeserializerNtNtB2g_4read7StrReadEEB7_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef align 8 dereferenceable(56) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 8 uses
  %.sroa.414.i = alloca [39 x i8], align 1        ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [40 x i8], align 8                ; 10 uses
  %i.d = alloca [40 x i8], align 8                ; 7 uses
  %i.e = alloca [40 x i8], align 8                ; 11 uses
  %i.f = alloca [32 x i8], align 8                ; 9 uses
  %i.g = alloca [32 x i8], align 8                ; 12 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %i.i = alloca [48 x i8], align 8                ; 9 uses
  %i.j = alloca [32 x i8], align 8                ; 6 uses
  %i.k = alloca [16 x i8], align 8                ; 7 uses
  %i.l = alloca [16 x i8], align 8                ; 7 uses
  %i.m = alloca [48 x i8], align 8                ; 9 uses
  %i.n = alloca [24 x i8], align 8                ; 7 uses
  %i.o = alloca [32 x i8], align 8                ; 7 uses
  %i.p = alloca [16 x i8], align 8                ; 7 uses
  %i.q = alloca [32 x i8], align 8                ; 17 uses
  %i.r = alloca [32 x i8], align 8                ; 5 uses
  %i.s = alloca [32 x i8], align 8                ; 9 uses
  %i.t = alloca [24 x i8], align 8                ; 11 uses
  %i.u = alloca [32 x i8], align 8                ; 6 uses
  %i.v = alloca [32 x i8], align 8                ; 7 uses
  %i.w = alloca [32 x i8], align 8                ; 7 uses
  %i.x = alloca [24 x i8], align 8                ; 9 uses
  %i.y = alloca [40 x i8], align 8                ; 8 uses
  %.sroa.9401 = alloca [7 x i8], align 1          ; 6 uses
  %.sroa.14 = alloca [24 x i8], align 8           ; 6 uses
  %.sroa.5 = alloca [7 x i8], align 1             ; 5 uses
  %.sroa.8 = alloca [24 x i8], align 8            ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9401)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.14)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !658
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !658
  call void @_RINvYQINtNtCs5PtHgSLqj5O_10serde_json2de12DeserializerNtNtB9_4read7StrReadENtNtCsboAIIHEtPkY_10serde_core2de12Deserializer24___deserialize_content_v1NtNtNtNtCsctIyQp3ax5j_5serde7private2de7content14ContentVisitorECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(56) %1), !noalias !662
  %i.z = load i8, ptr %i.f, align 8, !range !424, !noalias !658, !noundef !4 ; 2 uses
  %i.aa = icmp eq i8 %i.z, -1
  br i1 %i.aa, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !noalias !658, !nonnull !4, !align !13, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !658
  br label %bb.p

bb.c:                                             ; preds = %bb.a
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.410.0..sroa_idx.i, i64 7, i1 false), !noalias !658
  %.sroa.511.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.511.0.copyload.i = load ptr, ptr %.sroa.511.0..sroa_idx.i, align 8, !noalias !658
  %.sroa.612.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.68.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.68.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.612.0..sroa_idx.i, i64 16, i1 false), !noalias !658
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !658
  store i8 %i.z, ptr %i.g, align 8, !noalias !658
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %.sroa.511.0.copyload.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !658
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !658
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !658
  invoke void @_RINvXsD_NtNtNtCsctIyQp3ax5j_5serde7private2de7contentINtB6_22ContentRefDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtNtCsboAIIHEtPkY_10serde_core2de12Deserializer15deserialize_mapNtNvXNvNvXs_NtCs2JiOgHzbbc7_10tokenizers14pre_tokenizersNtB3e_19PreTokenizerWrapperNtB22_11Deserialize11deserialize1__NtB39_6TaggedB4n_11deserialize9___VisitorEB3g_(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.g)
          to label %bb.e unwind label %bb.d, !noalias !662

bb.d:                                             ; preds = %bb.m, %bb.l, %bb.i, %bb.h, %bb.c
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsboAIIHEtPkY_10serde_core7private7content7ContentECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(32) %i.g) #28
          to label %common.resume unwind label %bb.o, !noalias !662

bb.e:                                             ; preds = %bb.c
  %i.ae = load i8, ptr %i.d, align 8, !range !445, !noalias !658, !noundef !4
  %i.af = icmp eq i8 %i.ae, -1
  br i1 %i.af, label %.thread.i, label %bb.f

.thread.i:                                        ; preds = %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !noalias !658, !nonnull !4, !align !13, !noundef !4
  %i.ai = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.ah, ptr %i.ai, align 8, !noalias !658
  store i8 -2, ptr %i.e, align 8, !noalias !658
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !658
  br label %bb.h

bb.f:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.e, ptr noundef nonnull align 8 dereferenceable(40) %i.d, i64 40, i1 false), !noalias !658
  %.pr.i = load i8, ptr %i.e, align 8, !noalias !658 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !658
  %i.aj = icmp eq i8 %.pr.i, -2
  br i1 %i.aj, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.sroa.9401.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.9401, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.9401.0..sroa_idx, i64 7, i1 false), !noalias !663
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.10.0.copyload = load ptr, ptr %.sroa.10.0..sroa_idx, align 8, !noalias !663
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.14, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.14.0..sroa_idx, i64 24, i1 false), !noalias !663
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !658
  br label %bb.q

bb.h:                                             ; preds = %bb.f, %.thread.i
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNvXs_NtCs2JiOgHzbbc7_10tokenizers14pre_tokenizersNtB14_19PreTokenizerWrapperNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserialize18PreTokenizerHelperNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEEB16_(ptr noalias noundef align 8 dereferenceable(40) %i.e)
          to label %bb.i unwind label %bb.d, !noalias !662

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !658
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !658
  invoke void @_RINvXsD_NtNtNtCsctIyQp3ax5j_5serde7private2de7contentINtB6_22ContentRefDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtNtCsboAIIHEtPkY_10serde_core2de12Deserializer15deserialize_anyNtNvXNtNtB1n_5value2deNtB39_5ValueNtB22_11Deserialize11deserialize12ValueVisitorECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.g)
          to label %bb.j unwind label %bb.d, !noalias !662

bb.j:                                             ; preds = %bb.i
  %i.ak = load i8, ptr %i.b, align 8, !range !445, !noalias !658, !noundef !4
  %i.al = icmp eq i8 %i.ak, -1
  br i1 %i.al, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.414.i)
  %.sroa.414.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.414.i, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %.sroa.414.8..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false), !noalias !658
  store i8 -1, ptr %i.c, align 8, !noalias !658
  %.sroa.414.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %.sroa.414.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(39) %.sroa.414.i, i64 39, i1 false), !noalias !658
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.414.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.9401, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.414.0..sroa_idx.i, i64 7, i1 false), !noalias !663
  %.sroa.10.0..sroa_idx403 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.10.0.copyload404 = load ptr, ptr %.sroa.10.0..sroa_idx403, align 8, !noalias !663
  %.sroa.14.0..sroa_idx405 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.14, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.14.0..sroa_idx405, i64 24, i1 false), !noalias !663
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !658
  br label %bb.q

bb.l:                                             ; preds = %bb.j
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !noalias !658, !nonnull !4, !align !13, !noundef !4
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.an, ptr %i.ao, align 8, !noalias !658
  store i8 -2, ptr %i.c, align 8, !noalias !658
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultNtNvXs_NtCs2JiOgHzbbc7_10tokenizers14pre_tokenizersNtB14_19PreTokenizerWrapperNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserialize18PreTokenizerHelperNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEEB16_(ptr noalias noundef align 8 dereferenceable(40) %i.c)
          to label %bb.m unwind label %bb.d, !noalias !662

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !658
  %i.ap = invoke noundef nonnull align 8 ptr @_RINvXs6_NtCs5PtHgSLqj5O_10serde_json5errorNtB6_5ErrorNtNtCsboAIIHEtPkY_10serde_core2de5Error6customReECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly captures(address, read_provenance) @47, i64 noundef 66)
          to label %bb.n unwind label %bb.d, !noalias !662

bb.n:                                             ; preds = %bb.m
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsboAIIHEtPkY_10serde_core7private7content7ContentECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(32) %i.g), !noalias !662
  br label %bb.p

bb.o:                                             ; preds = %bb.d
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26, !noalias !662
  unreachable

common.resume:                                    ; preds = %.thread, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.ad, %bb.d ], [ %.pn414, %.thread ]
  resume { ptr, i32 } %common.resume.op

bb.p:                                             ; preds = %bb.b, %bb.n
  %.sroa.10.1.ph = phi ptr [ %i.ap, %bb.n ], [ %i.ac, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !658
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9401)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14)
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.10.1.ph, ptr %i.ar, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.ch

bb.q:                                             ; preds = %bb.k, %bb.g
  %.sroa.10.0 = phi ptr [ %.sroa.10.0.copyload404, %bb.k ], [ %.sroa.10.0.copyload, %bb.g ] ; 3 uses
  %i.as = phi i8 [ -1, %bb.k ], [ %.pr.i, %bb.g ] ; 3 uses
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsboAIIHEtPkY_10serde_core7private7content7ContentECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(32) %i.g), !noalias !662
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !658
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.9401, i64 7, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.14, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9401)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14)
  %.not427 = icmp eq i8 %i.as, -1
  br i1 %.not427, label %bb.r, label %bb.s
end_hunk_2
begin_hunk_3_@_RINvXs_NtCs2JiOgHzbbc7_10tokenizers14pre_tokenizersNtB5_19PreTokenizerWrapperNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeQINtNtCs5PtHgSLqj5O_10serde_json2de12DeserializerNtNtB2g_4read7StrReadEEB7_:bb.a
  %i.di = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.dj = load i32, ptr %i.di, align 4, !range !429, !noundef !4 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  %.sroa.28.sroa.0.sroa.0.0.extract.trunc = trunc i32 %i.dj to i8
  %.sroa.28.sroa.0.sroa.20.0.extract.shift = lshr i32 %i.dj, 8
  %.sroa.28.sroa.0.sroa.20.0.extract.trunc = trunc nuw nsw i32 %.sroa.28.sroa.0.sroa.20.0.extract.shift to i24
  br label %bb.as

bb.ay:                                            ; preds = %bb.ai
  %i.dk = call noundef nonnull align 8 ptr @_RINvXs6_NtCs5PtHgSLqj5O_10serde_json5errorNtB6_5ErrorNtNtCsboAIIHEtPkY_10serde_core2de5Error6customBE_ECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 %i.ce)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.at

bb.az:                                            ; preds = %bb.ai
  %.sroa.5354.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.dl = load <2 x i64>, ptr %.sroa.5354.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %.sroa.28.sroa.0.0.extract.trunc27 = trunc i64 %i.cb to i32
  %.sroa.28.sroa.0.sroa.0.0.extract.trunc50 = trunc i64 %i.cb to i8
  %.sroa.28.sroa.0.sroa.20.0.extract.shift65 = lshr i32 %.sroa.28.sroa.0.0.extract.trunc27, 8
  %.sroa.28.sroa.0.sroa.20.0.extract.trunc66 = trunc nuw i32 %.sroa.28.sroa.0.sroa.20.0.extract.shift65 to i24
  br label %bb.as

bb.ba:                                            ; preds = %bb.aj
  %i.dm = call noundef nonnull align 8 ptr @_RINvXs6_NtCs5PtHgSLqj5O_10serde_json5errorNtB6_5ErrorNtNtCsboAIIHEtPkY_10serde_core2de5Error6customBE_ECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 %i.cf)
  br label %bb.at

bb.bb:                                            ; preds = %bb.ak
  %i.dn = call noundef nonnull align 8 ptr @_RINvXs6_NtCs5PtHgSLqj5O_10serde_json5errorNtB6_5ErrorNtNtCsboAIIHEtPkY_10serde_core2de5Error6customBE_ECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 %i.cj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.at

bb.bc:                                            ; preds = %bb.ak
  %.sroa.5361.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.5361.0.copyload = load i64, ptr %.sroa.5361.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  %.sroa.28.sroa.0.0.extract.trunc29 = trunc i64 %i.cg to i32
  %.sroa.28.sroa.0.sroa.0.0.extract.trunc52 = trunc i64 %i.cg to i8
  %.sroa.28.sroa.0.sroa.20.0.extract.shift69 = lshr i32 %.sroa.28.sroa.0.0.extract.trunc29, 8
  %.sroa.28.sroa.0.sroa.20.0.extract.trunc70 = trunc nuw i32 %.sroa.28.sroa.0.sroa.20.0.extract.shift69 to i24
  %i.do = insertelement <2 x i64> <i64 poison, i64 undef>, i64 %.sroa.5361.0.copyload, i64 0
  br label %bb.as

bb.bd:                                            ; preds = %bb.al
  %i.dp = call noundef nonnull align 8 ptr @_RINvXs6_NtCs5PtHgSLqj5O_10serde_json5errorNtB6_5ErrorNtNtCsboAIIHEtPkY_10serde_core2de5Error6customBE_ECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 %i.cn)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.at

bb.be:                                            ; preds = %bb.al
  %.sroa.5367.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.sroa.5367.sroa.0.0.copyload = load ptr, ptr %.sroa.5367.0..sroa_idx, align 8
  %.sroa.5367.sroa.4.0..sroa.5367.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.dq = load <2 x i64>, ptr %.sroa.5367.sroa.4.0..sroa.5367.0..sroa_idx.sroa_idx, align 8
  %.sroa.5367.sroa.6.0..sroa.5367.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %.sroa.5367.sroa.6.0.copyload = load i64, ptr %.sroa.5367.sroa.6.0..sroa.5367.0..sroa_idx.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %i.dr = ptrtoint ptr %i.cn to i64               ; 3 uses
  %.sroa.28.sroa.0.0.extract.trunc = trunc i64 %i.dr to i32
  %.sroa.28.sroa.0.sroa.0.0.extract.trunc46 = trunc i64 %i.dr to i8
  %.sroa.28.sroa.0.sroa.20.0.extract.shift57 = lshr i32 %.sroa.28.sroa.0.0.extract.trunc, 8
  %.sroa.28.sroa.0.sroa.20.0.extract.trunc58 = trunc nuw i32 %.sroa.28.sroa.0.sroa.20.0.extract.shift57 to i24
  br label %bb.as

bb.bf:                                            ; preds = %bb.am
  %i.ds = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.dt = load ptr, ptr %i.ds, align 8, !nonnull !4, !align !13, !noundef !4
  %i.du = call noundef nonnull align 8 ptr @_RINvXs6_NtCs5PtHgSLqj5O_10serde_json5errorNtB6_5ErrorNtNtCsboAIIHEtPkY_10serde_core2de5Error6customBE_ECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 %i.dt)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.at

bb.bg:                                            ; preds = %bb.am
  %i.dv = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  %i.dw = load i8, ptr %i.dv, align 1, !range !431, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.as

bb.bh:                                            ; preds = %bb.an
  %i.dx = call noundef nonnull align 8 ptr @_RINvXs6_NtCs5PtHgSLqj5O_10serde_json5errorNtB6_5ErrorNtNtCsboAIIHEtPkY_10serde_core2de5Error6customBE_ECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 %i.cq)
  br label %bb.at

bb.bi:                                            ; preds = %bb.ao
  %i.dy = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.dz = load ptr, ptr %i.dy, align 8, !nonnull !4, !align !13, !noundef !4
  %i.ea = call noundef nonnull align 8 ptr @_RINvXs6_NtCs5PtHgSLqj5O_10serde_json5errorNtB6_5ErrorNtNtCsboAIIHEtPkY_10serde_core2de5Error6customBE_ECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 %i.dz)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.at

bb.bj:                                            ; preds = %bb.ao
  %i.eb = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  %i.ec = load i8, ptr %i.eb, align 1, !range !3, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.as

bb.bk:                                            ; preds = %bb.ap
  %i.ed = call noundef nonnull align 8 ptr @_RINvXs6_NtCs5PtHgSLqj5O_10serde_json5errorNtB6_5ErrorNtNtCsboAIIHEtPkY_10serde_core2de5Error6customBE_ECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 %i.ct)
  br label %bb.at

bb.bl:                                            ; preds = %bb.aq
  %i.ee = call noundef nonnull align 8 ptr @_RINvXs6_NtCs5PtHgSLqj5O_10serde_json5errorNtB6_5ErrorNtNtCsboAIIHEtPkY_10serde_core2de5Error6customBE_ECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 %i.cw)
  br label %bb.at

bb.bm:                                            ; preds = %bb.aq
  %i.ef = ptrtoint ptr %i.cw to i64               ; 3 uses
  %.sroa.28.sroa.0.0.extract.trunc25 = trunc i64 %i.ef to i32
  %.sroa.28.sroa.0.sroa.0.0.extract.trunc48 = trunc i64 %i.ef to i8
  %.sroa.28.sroa.0.sroa.20.0.extract.shift61 = lshr i32 %.sroa.28.sroa.0.0.extract.trunc25, 8
  %.sroa.28.sroa.0.sroa.20.0.extract.trunc62 = trunc nuw i32 %.sroa.28.sroa.0.sroa.20.0.extract.shift61 to i24
  br label %bb.as

bb.bn:                                            ; preds = %bb.cg, %bb.as
  %.sroa.42.sroa.11.1 = phi i64 [ %.sroa.42.sroa.11.2, %bb.cg ], [ %.sroa.42.sroa.11.0, %bb.as ]
  %.sroa.42.sroa.0.1 = phi ptr [ %.sroa.42.sroa.0.2, %bb.cg ], [ %.sroa.42.sroa.0.0, %bb.as ]
  %.sroa.28.sroa.0.sroa.20.sroa.0.1 = phi i24 [ %.sroa.28.sroa.0.sroa.20.sroa.0.2, %bb.cg ], [ %.sroa.28.sroa.0.sroa.20.sroa.0.0, %bb.as ]
  %.sroa.28.sroa.0.sroa.0.1 = phi i8 [ %.sroa.28.sroa.0.sroa.0.2, %bb.cg ], [ %.sroa.28.sroa.0.sroa.0.0, %bb.as ]
  %.sroa.28.sroa.20.1 = phi i64 [ %.sroa.28.sroa.20.2, %bb.cg ], [ %.sroa.28.sroa.20.0, %bb.as ]
  %.sroa.09.1 = phi i64 [ %.sroa.09.2, %bb.cg ], [ %.sroa.09.0, %bb.as ]
  %i.eg = phi <2 x i64> [ %i.ew, %bb.cg ], [ %i.cz, %bb.as ]
  store i64 %.sroa.09.1, ptr %0, align 8
  %.sroa.28.0..sroa_idx12 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.28.sroa.0.sroa.20.0.insert.ext = zext i24 %.sroa.28.sroa.0.sroa.20.sroa.0.1 to i64
  %.sroa.28.sroa.0.sroa.20.0.insert.shift = shl nuw nsw i64 %.sroa.28.sroa.0.sroa.20.0.insert.ext, 8
  %.sroa.28.sroa.0.sroa.0.0.insert.ext = zext i8 %.sroa.28.sroa.0.sroa.0.1 to i64
  %.sroa.28.sroa.0.sroa.0.0.insert.insert = or disjoint i64 %.sroa.28.sroa.0.sroa.20.0.insert.shift, %.sroa.28.sroa.0.sroa.0.0.insert.ext
  %.sroa.28.sroa.20.0.insert.ext = and i64 %.sroa.28.sroa.20.1, -4294967296
  %.sroa.28.sroa.0.0.insert.insert = or disjoint i64 %.sroa.28.sroa.20.0.insert.ext, %.sroa.28.sroa.0.sroa.0.0.insert.insert
  store i64 %.sroa.28.sroa.0.0.insert.insert, ptr %.sroa.28.0..sroa_idx12, align 8
  %.sroa.42.0..sroa_idx19 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.42.sroa.0.1, ptr %.sroa.42.0..sroa_idx19, align 8
  %.sroa.42.sroa.10.0..sroa.42.0..sroa_idx19.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <2 x i64> %i.eg, ptr %.sroa.42.sroa.10.0..sroa.42.0..sroa_idx19.sroa_idx, align 8
  %.sroa.42.sroa.11.0..sroa.42.0..sroa_idx19.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.42.sroa.11.1, ptr %.sroa.42.sroa.11.0..sroa.42.0..sroa_idx19.sroa_idx, align 8
  br label %bb.ch

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5PtHgSLqj5O_10serde_json3map3MapNtNtCscdodAO9FK5_5alloc6string6StringNtNtBG_5value5ValueEECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit, %bb.t, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  br label %bb.ch

bb.bo:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.br, ptr %i.eh, align 8
  store i64 -1, ptr %0, align 8
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i unwind label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.ei = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %.thread unwind label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.ej = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i: ; preds = %bb.bo
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.v

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @_RNvXNtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtB8_6string6StringNtNtCs5PtHgSLqj5O_10serde_json5value5ValueENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.x)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5PtHgSLqj5O_10serde_json3map3MapNtNtCscdodAO9FK5_5alloc6string6StringNtNtBG_5value5ValueEECs2JiOgHzbbc7_10tokenizers.exit

bb.br:                                            ; preds = %.thread, %bb.z
  %i.ek = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.bs:                                            ; preds = %bb.x
  unreachable

.thread:                                          ; preds = %bb.bp, %bb.z, %bb.v
  %.pn414 = phi { ptr, i32 } [ %i.bm, %bb.z ], [ %lpad.thr_comm.split-lp, %bb.v ], [ %i.ei, %bb.bp ]
  invoke void @_RNvXNtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtB8_6string6StringNtNtCs5PtHgSLqj5O_10serde_json5value5ValueENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.x)
          to label %common.resume unwind label %bb.br

bb.bt:                                            ; preds = %bb.r
  %i.el = call noundef nonnull align 8 ptr @_RINvXs6_NtCs5PtHgSLqj5O_10serde_json5errorNtB6_5ErrorNtNtCsboAIIHEtPkY_10serde_core2de5Error6customBE_ECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 %i.aw)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.el, ptr %i.em, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.ch

bb.bu:                                            ; preds = %bb.r
  %.sroa.5376.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.5376.sroa.0.0.copyload = load ptr, ptr %.sroa.5376.0..sroa_idx, align 8 ; 3 uses
  %.sroa.5376.sroa.4.0..sroa.5376.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.en = load <2 x i64>, ptr %.sroa.5376.sroa.4.0..sroa.5376.0..sroa_idx.sroa_idx, align 8 ; 3 uses
  %.sroa.5376.sroa.6.0..sroa.5376.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %.sroa.5376.sroa.6.0.copyload = load i64, ptr %.sroa.5376.sroa.6.0..sroa.5376.0..sroa_idx.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.eo = ptrtoint ptr %i.aw to i64               ; 11 uses
  %.sroa.3.sroa.0.sroa.0.0.extract.trunc = trunc i64 %i.eo to i8 ; 8 uses
  %i.ep = icmp ne i64 %i.at, 8
  call void @llvm.assume(i1 %i.ep)
  %i.eq = add nsw i64 %i.at, -2
  %i.er = icmp samesign ugt i64 %i.at, 1
  %i.es = select i1 %i.er, i64 %i.eq, i64 6       ; 2 uses
  switch i64 %i.es, label %bb.af [
    i64 0, label %bb.cg
    i64 1, label %bb.bv
    i64 2, label %bb.bw
    i64 3, label %bb.bx
    i64 4, label %bb.by
    i64 5, label %bb.bz
    i64 6, label %bb.ca
    i64 7, label %bb.cb
    i64 8, label %bb.cc
    i64 9, label %bb.cd
    i64 10, label %bb.ce
    i64 11, label %bb.cf
  ]

bb.bv:                                            ; preds = %bb.bu
  %i.et = trunc i64 %i.eo to i24
  %i.eu = lshr i24 %i.et, 8
  br label %bb.cg

bb.bw:                                            ; preds = %bb.bu
  %.sroa.3.sroa.0.0.extract.trunc = trunc i64 %i.eo to i32
  %.sroa.28.sroa.0.sroa.20.0.extract.shift55 = lshr i32 %.sroa.3.sroa.0.0.extract.trunc, 8
  %.sroa.28.sroa.0.sroa.20.0.extract.trunc56 = trunc nuw i32 %.sroa.28.sroa.0.sroa.20.0.extract.shift55 to i24
  br label %bb.cg

bb.bx:                                            ; preds = %bb.bu
  %.sroa.28.sroa.0.0.extract.trunc28 = trunc i64 %i.eo to i32
  %.sroa.28.sroa.0.sroa.20.0.extract.shift67 = lshr i32 %.sroa.28.sroa.0.0.extract.trunc28, 8
  %.sroa.28.sroa.0.sroa.20.0.extract.trunc68 = trunc nuw i32 %.sroa.28.sroa.0.sroa.20.0.extract.shift67 to i24
  br label %bb.cg

bb.by:                                            ; preds = %bb.bu
  br label %bb.cg

bb.bz:                                            ; preds = %bb.bu
  %.sroa.28.sroa.0.0.extract.trunc30 = trunc i64 %i.eo to i32
  %.sroa.28.sroa.0.sroa.20.0.extract.shift71 = lshr i32 %.sroa.28.sroa.0.0.extract.trunc30, 8
  %.sroa.28.sroa.0.sroa.20.0.extract.trunc72 = trunc nuw i32 %.sroa.28.sroa.0.sroa.20.0.extract.shift71 to i24
  %i.ev = insertelement <2 x i64> %i.en, i64 undef, i64 1
  br label %bb.cg

bb.ca:                                            ; preds = %bb.bu
  %.sroa.28.sroa.0.0.extract.trunc24 = trunc i64 %i.eo to i32
  %.sroa.28.sroa.0.sroa.20.0.extract.shift59 = lshr i32 %.sroa.28.sroa.0.0.extract.trunc24, 8
  %.sroa.28.sroa.0.sroa.20.0.extract.trunc60 = trunc nuw i32 %.sroa.28.sroa.0.sroa.20.0.extract.shift59 to i24
  br label %bb.cg

bb.cb:                                            ; preds = %bb.bu
  br label %bb.cg

bb.cc:                                            ; preds = %bb.bu
  br label %bb.cg

bb.cd:                                            ; preds = %bb.bu
  br label %bb.cg

bb.ce:                                            ; preds = %bb.bu
  br label %bb.cg

bb.cf:                                            ; preds = %bb.bu
  %.sroa.28.sroa.0.0.extract.trunc26 = trunc i64 %i.eo to i32
  %.sroa.28.sroa.0.sroa.20.0.extract.shift63 = lshr i32 %.sroa.28.sroa.0.0.extract.trunc26, 8
  %.sroa.28.sroa.0.sroa.20.0.extract.trunc64 = trunc nuw i32 %.sroa.28.sroa.0.sroa.20.0.extract.shift63 to i24
  br label %bb.cg

bb.cg:                                            ; preds = %bb.bu, %bb.cf, %bb.ce, %bb.cd, %bb.cc, %bb.cb, %bb.ca, %bb.bz, %bb.by, %bb.bx, %bb.bw, %bb.bv
  %.sroa.42.sroa.11.2 = phi i64 [ undef, %bb.cf ], [ undef, %bb.bv ], [ undef, %bb.bw ], [ undef, %bb.bx ], [ undef, %bb.by ], [ undef, %bb.bz ], [ %.sroa.5376.sroa.6.0.copyload, %bb.ca ], [ undef, %bb.cb ], [ undef, %bb.cc ], [ undef, %bb.cd ], [ undef, %bb.ce ], [ undef, %bb.bu ]
  %.sroa.42.sroa.0.2 = phi ptr [ undef, %bb.cf ], [ undef, %bb.bv ], [ undef, %bb.bw ], [ %.sroa.5376.sroa.0.0.copyload, %bb.bx ], [ undef, %bb.by ], [ %.sroa.5376.sroa.0.0.copyload, %bb.bz ], [ %.sroa.5376.sroa.0.0.copyload, %bb.ca ], [ undef, %bb.cb ], [ undef, %bb.cc ], [ undef, %bb.cd ], [ undef, %bb.ce ], [ undef, %bb.bu ]
  %.sroa.28.sroa.0.sroa.20.sroa.0.2 = phi i24 [ %.sroa.28.sroa.0.sroa.20.0.extract.trunc64, %bb.cf ], [ %i.eu, %bb.bv ], [ %.sroa.28.sroa.0.sroa.20.0.extract.trunc56, %bb.bw ], [ %.sroa.28.sroa.0.sroa.20.0.extract.trunc68, %bb.bx ], [ undef, %bb.by ], [ %.sroa.28.sroa.0.sroa.20.0.extract.trunc72, %bb.bz ], [ %.sroa.28.sroa.0.sroa.20.0.extract.trunc60, %bb.ca ], [ undef, %bb.cb ], [ undef, %bb.cc ], [ undef, %bb.cd ], [ undef, %bb.ce ], [ undef, %bb.bu ]
  %.sroa.28.sroa.0.sroa.0.2 = phi i8 [ %.sroa.3.sroa.0.sroa.0.0.extract.trunc, %bb.cf ], [ %.sroa.3.sroa.0.sroa.0.0.extract.trunc, %bb.bv ], [ %.sroa.3.sroa.0.sroa.0.0.extract.trunc, %bb.bw ], [ %.sroa.3.sroa.0.sroa.0.0.extract.trunc, %bb.bx ], [ undef, %bb.by ], [ %.sroa.3.sroa.0.sroa.0.0.extract.trunc, %bb.bz ], [ %.sroa.3.sroa.0.sroa.0.0.extract.trunc, %bb.ca ], [ %.sroa.3.sroa.0.sroa.0.0.extract.trunc, %bb.cb ], [ undef, %bb.cc ], [ %.sroa.3.sroa.0.sroa.0.0.extract.trunc, %bb.cd ], [ undef, %bb.ce ], [ undef, %bb.bu ]
  %.sroa.28.sroa.20.2 = phi i64 [ %i.eo, %bb.cf ], [ 0, %bb.bv ], [ 0, %bb.bw ], [ %i.eo, %bb.bx ], [ 0, %bb.by ], [ %i.eo, %bb.bz ], [ %i.eo, %bb.ca ], [ 0, %bb.cb ], [ 0, %bb.cc ], [ 0, %bb.cd ], [ 0, %bb.ce ], [ %i.es, %bb.bu ]
  %.sroa.09.2 = phi i64 [ 13, %bb.cf ], [ 3, %bb.bv ], [ 4, %bb.bw ], [ 5, %bb.bx ], [ 6, %bb.by ], [ 7, %bb.bz ], [ %i.at, %bb.ca ], [ 9, %bb.cb ], [ 10, %bb.cc ], [ 11, %bb.cd ], [ 12, %bb.ce ], [ 2, %bb.bu ]
  %i.ew = phi <2 x i64> [ undef, %bb.cf ], [ undef, %bb.bv ], [ undef, %bb.bw ], [ %i.en, %bb.bx ], [ undef, %bb.by ], [ %i.ev, %bb.bz ], [ %i.en, %bb.ca ], [ undef, %bb.cb ], [ undef, %bb.cc ], [ undef, %bb.cd ], [ undef, %bb.ce ], [ undef, %bb.bu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.bn

bb.ch:                                            ; preds = %bb.p, %bb.bt, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5PtHgSLqj5O_10serde_json3map3MapNtNtCscdodAO9FK5_5alloc6string6StringNtNtBG_5value5ValueEECs2JiOgHzbbc7_10tokenizers.exit, %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvXs_NtCs2JiOgHzbbc7_10tokenizers6modelsNtB5_16OrderedVocabIterNtNtCsboAIIHEtPkY_10serde_core3ser9Serialize9serializeQINtNtCs5PtHgSLqj5O_10serde_json3ser10SerializerQINtNtCscdodAO9FK5_5alloc3vec3VechEEEB7_(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [40 x i8], align 8                ; 4 uses
  %i.c = alloca [40 x i8], align 8                ; 4 uses
  %i.d = alloca [40 x i8], align 8                ; 8 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [40 x i8], align 8                ; 6 uses
  %i.h = alloca [24 x i8], align 8                ; 11 uses
  %i.i = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %0, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i64 0, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  store i64 0, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.l = load ptr, ptr %0, align 8, !nonnull !4, !align !13, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std11collections4hash3mapINtB5_7HashMapmNtNtCscdodAO9FK5_5alloc6string6StringNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE4iterCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.l)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.m, %bb.c
  %.pn = phi { ptr, i32 } [ %i.ac, %bb.m ], [ %i.m, %bb.c ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecmEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24) %i.h) #28
          to label %common.resume unwind label %bb.q

bb.c:                                             ; preds = %bb.e, %bb.d, %bb.g, %bb.f, %bb.a
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, ptr noundef nonnull align 8 dereferenceable(40) %i.c, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.n = invoke { ptr, ptr } @_RNvXsG_NtCsgQfI1edjipl_9hashbrown3mapINtB5_4ItermNtNtCscdodAO9FK5_5alloc6string6StringENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.g)
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.d
  %i.o = extractvalue { ptr, ptr } %i.n, 0        ; 2 uses
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !672
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %i.g, i64 40, i1 false)
  %i.p = invoke noundef nonnull align 4 ptr @_RINvXsG_NtCsgQfI1edjipl_9hashbrown3mapINtB6_4ItermNtNtCscdodAO9FK5_5alloc6string6StringENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4foldRmNCINvXsJ_NtNtNtCs2AWtUsOyxgP_3std11collections4hash3mapINtB2z_4KeysmBM_EB1o_4foldB2o_NCINvNvB1o_6max_by4foldB2o_NvYB2o_NtNtB1w_3cmp3Ord3cmpE0E0ECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.b, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.o, ptr noalias noundef nonnull %i.a)
          to label %bb.f unwind label %bb.c

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !672
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.q = load i32, ptr %i.p, align 4, !noundef !4
  %i.r = add i32 %i.q, 1
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i32 0, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 20
  store i32 %i.r, ptr %i.t, align 4
  store ptr %i.i, ptr %i.f, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.h, ptr %i.u, align 8
  %i.v = invoke noundef align 8 ptr @_RINvYQINtNtCs5PtHgSLqj5O_10serde_json3ser10SerializerQINtNtCscdodAO9FK5_5alloc3vec3VechEENtNtCsboAIIHEtPkY_10serde_core3ser10Serializer11collect_mapRNtNtBV_6string6StringmINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map9FilterMapINtNtNtB2S_3ops5range5RangemENCINvXs_NtCs2JiOgHzbbc7_10tokenizers6modelsNtB4m_16OrderedVocabIterNtB1r_9Serialize9serializeB3_E0EEB4o_(ptr noalias noundef nonnull align 8 dereferenceable(8) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.f)
          to label %bb.h unwind label %bb.c

bb.g:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.w = invoke noundef align 8 ptr @_RINvYQINtNtCs5PtHgSLqj5O_10serde_json3ser10SerializerQINtNtCscdodAO9FK5_5alloc3vec3VechEENtNtCsboAIIHEtPkY_10serde_core3ser10Serializer11collect_mapRemINtNtNtNtCs4NRVxsYgnAr_4core4iter7sources5empty5EmptyTB2m_mEEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(8) %1)
          to label %bb.i unwind label %bb.c

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %.sroa.0.0 = phi ptr [ %i.v, %bb.h ], [ %i.w, %bb.g ] ; 2 uses
  %i.x = load i64, ptr %i.k, align 8, !noundef !4 ; 2 uses
  %i.y = icmp ult i64 %i.x, 2305843009213693952
  call void @llvm.assume(i1 %i.y)
  %i.z = icmp eq i64 %i.x, 0
  br i1 %i.z, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.p, %bb.n, %bb.i
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecmENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecmEECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %common.resume unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26
  unreachable

common.resume:                                    ; preds = %bb.b, %bb.k
  %common.resume.op = phi { ptr, i32 } [ %i.aa, %bb.k ], [ %.pn, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecmEECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.j
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  ret ptr %.sroa.0.0

bb.m:                                             ; preds = %bb.o
  %i.ac = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEECs2JiOgHzbbc7_10tokenizers(ptr %.sroa.0.0) #28
          to label %bb.b unwind label %bb.q

bb.n:                                             ; preds = %bb.i
  %i.ad = load atomic i64, ptr @_RNvCsbKm4k1ctY99_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8 ; 2 uses
  %i.ae = icmp ult i64 %i.ad, 6
  call void @llvm.assume(i1 %i.ae)
  %i.af = icmp samesign ugt i64 %i.ad, 1
  br i1 %i.af, label %bb.o, label %bb.j

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.h, ptr %i.e, align 8
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXsq_NtCscdodAO9FK5_5alloc3vecINtB5_3VecmENtNtCs4NRVxsYgnAr_4core3fmt5Debug3fmtCs2JiOgHzbbc7_10tokenizers, ptr %.sroa.45.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr @62, ptr %i.d, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 18, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr @62, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 18, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr @61, ptr %i.aj, align 8
  invoke void @_RINvNtCsbKm4k1ctY99_3log13___private_api3loguNtB2_12GlobalLoggerECs2JiOgHzbbc7_10tokenizers(ptr noundef nonnull @59, ptr noundef nonnull %i.e, i64 noundef 2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.d)
          to label %bb.p unwind label %bb.m

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.j

bb.q:                                             ; preds = %bb.m, %bb.b
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RINvXs_NtNtCscdodAO9FK5_5alloc3vec14spec_from_elemmNtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2JiOgHzbbc7_10tokenizers(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, i32 noundef %1, i64 noundef range(i64 0, 192153584101141163) %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = icmp eq i32 %1, 0
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %2, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4)
  %i.e = load i64, ptr %i.a, align 8, !range !16, !noundef !4
  %i.f = trunc nuw i64 %i.e to i1
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.h = load i64, ptr %i.g, align 8, !range !287, !noundef !4 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.f, label %bb.c, label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2JiOgHzbbc7_10tokenizers.exit, !prof !18

bb.c:                                             ; preds = %bb.b
  %i.j = load i64, ptr %i.i, align 8
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.h, i64 %i.j) #25
  unreachable

_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.b
  %i.k = load ptr, ptr %i.i, align 8, !nonnull !4, !noundef !4
  %i.l = icmp ule i64 %2, %i.h
  tail call void @llvm.assume(i1 %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.h, ptr %i.c, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.k, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %i.n, align 8
end_hunk_3
