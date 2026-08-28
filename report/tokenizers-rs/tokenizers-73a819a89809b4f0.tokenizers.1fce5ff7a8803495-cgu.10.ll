Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tokenizers-rs/original/tokenizers-73a819a89809b4f0.tokenizers.1fce5ff7a8803495-cgu.10?download=true
inline.NumInlined: 1070
inline.NumDeleted: 542
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_RINvXs0_NtCs2JiOgHzbbc7_10tokenizers6modelsNtB6_12ModelWrapperNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeQINtNtCs5PtHgSLqj5O_10serde_json2de12DeserializerNtNtB21_4read7StrReadEEB8_:bb.a
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
  %.sroa.5.0..sroa.5.0..sroa.5.0..sroa.5.8. = load i64, ptr %.sroa.5, align 8
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
  %.sroa.5.0..sroa.5.0..sroa.5.0..sroa.5.8. = load i64, ptr %.sroa.5, align 8
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
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  store ptr %i.ba, ptr %i.x, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, i64 noundef 4, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.w unwind label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.x, %bb.ac, %bb.ae, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.w:                                             ; preds = %bb.u
  %i.bd = load i64, ptr %i.h, align 8, !range !16, !noundef !4
  %i.be = trunc nuw i64 %i.bd to i1
  %i.bf = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.bg = load i64, ptr %i.bf, align 8, !range !287, !noundef !4 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  br i1 %i.be, label %bb.x, label %bb.y, !prof !18

bb.x:                                             ; preds = %bb.w
  %i.bi = load i64, ptr %i.bh, align 8
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.bg, i64 %i.bi) #25
          to label %bb.bs unwind label %bb.v

bb.y:                                             ; preds = %bb.w
  %i.bj = load ptr, ptr %i.bh, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.bk = icmp samesign ugt i64 %i.bg, 3
  call void @llvm.assume(i1 %i.bk)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  store i32 1701869940, ptr %i.bj, align 1
  store i64 %i.bg, ptr %i.t, align 8
  %.sroa.4338.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %i.bj, ptr %.sroa.4338.0..sroa_idx, align 8
  %.sroa.6339.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store i64 4, ptr %.sroa.6339.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  %i.bl = getelementptr inbounds nuw i8, ptr %i.y, i64 32 ; 2 uses
  invoke void @_RINvNtCs5PtHgSLqj5O_10serde_json5value8to_valueRNtNvXs_NtCs2JiOgHzbbc7_10tokenizers14pre_tokenizersNtBR_19PreTokenizerWrapperNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserialize8EnumTypeEBT_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.s, ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.bl)
          to label %bb.aa unwind label %bb.z

bb.z:                                             ; preds = %bb.ab, %bb.y
  %i.bm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24) %i.t) #28
          to label %.thread unwind label %bb.br

bb.aa:                                            ; preds = %bb.y
  %i.bn = load i8, ptr %i.s, align 8, !range !445, !noundef !4 ; 2 uses
  %i.bo = icmp eq i8 %i.bn, -1
  br i1 %i.bo, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.bp = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8, !nonnull !4, !align !13, !noundef !4
  %i.br = invoke noundef nonnull align 8 ptr @_RINvXs6_NtCs5PtHgSLqj5O_10serde_json5errorNtB6_5ErrorNtNtCsboAIIHEtPkY_10serde_core2de5Error6customBE_ECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 %i.bq)
          to label %bb.bo unwind label %bb.z

bb.ac:                                            ; preds = %bb.aa
  %.sroa.4341.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  %.sroa.692.0..sroa_idx93 = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.692.0..sroa_idx93, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4341.0..sroa_idx, i64 7, i1 false)
  %.sroa.5342.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.5342.0.copyload = load ptr, ptr %.sroa.5342.0..sroa_idx, align 8
  %.sroa.6343.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %.sroa.897.0..sroa_idx98 = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.897.0..sroa_idx98, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6343.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  store i8 %i.bn, ptr %i.r, align 8
  %.sroa.694.0..sroa_idx95 = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr %.sroa.5342.0.copyload, ptr %.sroa.694.0..sroa_idx95, align 8
  invoke void @_RNvMsi_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtBb_6string6StringNtNtCs5PtHgSLqj5O_10serde_json5value5ValueE6insertCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.u, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.x, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.t, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.r)
          to label %bb.ad unwind label %bb.v

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  %i.bs = load i8, ptr %i.u, align 8, !range !445, !alias.scope !650, !noundef !4
  %i.bt = icmp eq i8 %i.bs, -1
  br i1 %i.bt, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEECs2JiOgHzbbc7_10tokenizers.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json5value5ValueECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.u)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.v

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.ad, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %i.bu = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bu, ptr noundef nonnull align 8 dereferenceable(24) %i.x, i64 24, i1 false)
  store i8 5, ptr %i.q, align 8
  %i.bv = load i8, ptr %i.bl, align 8, !range !327, !noundef !4
  switch i8 %i.bv, label %default.unreachable437 [
    i8 0, label %bb.ag
    i8 1, label %.noexc394
    i8 2, label %bb.ah
    i8 3, label %bb.ai
    i8 4, label %bb.aj
    i8 5, label %bb.ak
    i8 6, label %bb.al
    i8 7, label %bb.am
    i8 8, label %bb.an
    i8 9, label %bb.ao
    i8 10, label %bb.ap
    i8 11, label %bb.aq
  ]

default.unreachable437:                           ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEECs2JiOgHzbbc7_10tokenizers.exit
  unreachable

bb.af:                                            ; preds = %bb.bu
  unreachable

bb.ag:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEECs2JiOgHzbbc7_10tokenizers.exit
  %i.bw = call noundef align 8 ptr @_RINvXs7_NtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers4bertNtB6_16BertPreTokenizerNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEBa_(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.q) ; 2 uses
  %.not388 = icmp eq ptr %i.bw, null
  br i1 %.not388, label %bb.as, label %bb.ar

.noexc394:                                        ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEECs2JiOgHzbbc7_10tokenizers.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !653
  call void @_RINvXs2_NtNtCs5PtHgSLqj5O_10serde_json5value2deNtB8_5ValueNtNtCsboAIIHEtPkY_10serde_core2de12Deserializer15deserialize_mapNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers10byte_levels2_1__NtB23_21ByteLevelDeserializerNtBW_11Deserialize11deserialize9___VisitorEB27_(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.q)
  %i.bx = load i8, ptr %i.a, align 8, !range !3, !noalias !653, !noundef !4
  %i.by = trunc nuw i8 %i.bx to i1
  br i1 %i.by, label %bb.au, label %bb.av

bb.ah:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEECs2JiOgHzbbc7_10tokenizers.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @_RINvXNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers9delimiters_1__NtB5_18CharDelimiterSplitNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEB9_(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.p, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.q)
  %i.bz = load i32, ptr %i.p, align 8, !range !259, !noundef !4
  %i.ca = trunc nuw i32 %i.bz to i1
  br i1 %i.ca, label %bb.aw, label %bb.ax

bb.ai:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEECs2JiOgHzbbc7_10tokenizers.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @_RINvXs_NtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers9metaspaceNtB5_9MetaspaceNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEB9_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.o, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.q)
  %i.cb = load i64, ptr %i.o, align 8, !range !19, !noundef !4 ; 4 uses
  %i.cc = icmp eq i64 %i.cb, -1
  %i.cd = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8            ; 2 uses
  br i1 %i.cc, label %bb.ay, label %bb.az

bb.aj:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEECs2JiOgHzbbc7_10tokenizers.exit
  %i.cf = call noundef align 8 ptr @_RINvXs7_NtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers10whitespaceNtB6_10WhitespaceNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEBa_(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.q) ; 2 uses
  %.not387 = icmp eq ptr %i.cf, null
  br i1 %.not387, label %bb.as, label %bb.ba

bb.ak:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEECs2JiOgHzbbc7_10tokenizers.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @_RINvXNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers8sequences_1__NtB5_8SequenceNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEB9_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.n, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.q)
  %i.cg = load i64, ptr %i.n, align 8, !range !19, !noundef !4 ; 4 uses
  %i.ch = icmp eq i64 %i.cg, -1
  %i.ci = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8            ; 2 uses
  br i1 %i.ch, label %bb.bb, label %bb.bc

bb.al:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEECs2JiOgHzbbc7_10tokenizers.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @_RINvXs0_NtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers5splitNtB6_5SplitNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEBa_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.m, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.q)
  %i.ck = load i64, ptr %i.m, align 8, !range !430, !noundef !4 ; 2 uses
  %i.cl = icmp eq i64 %i.ck, 2
  %i.cm = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8            ; 2 uses
  br i1 %i.cl, label %bb.bd, label %bb.be

bb.am:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEECs2JiOgHzbbc7_10tokenizers.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @_RINvXNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers11punctuations_1__NtB5_11PunctuationNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEB9_(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.l, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.q)
  %i.co = load i8, ptr %i.l, align 8, !range !3, !noundef !4
  %i.cp = trunc nuw i8 %i.co to i1
  br i1 %i.cp, label %bb.bf, label %bb.bg

bb.an:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEECs2JiOgHzbbc7_10tokenizers.exit
  %i.cq = call noundef align 8 ptr @_RINvXsg_NtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers10whitespaceNtB6_15WhitespaceSplitNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEBa_(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.q) ; 2 uses
  %.not386 = icmp eq ptr %i.cq, null
  br i1 %.not386, label %bb.as, label %bb.bh

bb.ao:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEECs2JiOgHzbbc7_10tokenizers.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @_RINvXNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers6digitss_1__NtB5_6DigitsNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEB9_(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.k, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.q)
  %i.cr = load i8, ptr %i.k, align 8, !range !3, !noundef !4
  %i.cs = trunc nuw i8 %i.cr to i1
  br i1 %i.cs, label %bb.bi, label %bb.bj

bb.ap:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEECs2JiOgHzbbc7_10tokenizers.exit
  %i.ct = call noundef align 8 ptr @_RINvXs7_NtNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers15unicode_scripts13pre_tokenizerNtB6_14UnicodeScriptsNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEBc_(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.q) ; 2 uses
  %.not = icmp eq ptr %i.ct, null
  br i1 %.not, label %bb.as, label %bb.bk

bb.aq:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEECs2JiOgHzbbc7_10tokenizers.exit
  %i.cu = call { i64, ptr } @_RINvXNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers12fixed_lengths_1__NtB5_11FixedLengthNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEB9_(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.q) ; 2 uses
  %i.cv = extractvalue { i64, ptr } %i.cu, 0
  %i.cw = extractvalue { i64, ptr } %i.cu, 1      ; 2 uses
  %i.cx = trunc nuw i64 %i.cv to i1
  br i1 %i.cx, label %bb.bl, label %bb.bm

bb.ar:                                            ; preds = %bb.ag
  %i.cy = call noundef nonnull align 8 ptr @_RINvXs6_NtCs5PtHgSLqj5O_10serde_json5errorNtB6_5ErrorNtNtCsboAIIHEtPkY_10serde_core2de5Error6customBE_ECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 %i.bw)
  br label %bb.at

bb.as:                                            ; preds = %bb.ap, %bb.an, %bb.aj, %bb.ag, %bb.bm, %bb.bj, %bb.bg, %bb.be, %bb.bc, %bb.az, %bb.ax, %bb.av
  %.sroa.42.sroa.11.0 = phi i64 [ undef, %bb.ag ], [ undef, %bb.av ], [ undef, %bb.ax ], [ undef, %bb.az ], [ undef, %bb.aj ], [ undef, %bb.bc ], [ %.sroa.5367.sroa.6.0.copyload, %bb.be ], [ undef, %bb.bg ], [ undef, %bb.an ], [ undef, %bb.bj ], [ undef, %bb.ap ], [ undef, %bb.bm ]
  %.sroa.42.sroa.0.0 = phi ptr [ undef, %bb.ag ], [ undef, %bb.av ], [ undef, %bb.ax ], [ %i.ce, %bb.az ], [ undef, %bb.aj ], [ %i.cj, %bb.bc ], [ %.sroa.5367.sroa.0.0.copyload, %bb.be ], [ undef, %bb.bg ], [ undef, %bb.an ], [ undef, %bb.bj ], [ undef, %bb.ap ], [ undef, %bb.bm ]
  %.sroa.28.sroa.0.sroa.20.sroa.0.0 = phi i24 [ undef, %bb.ag ], [ %.sroa.28.sroa.0.sroa.20.sroa.0.0.insert.ext, %bb.av ], [ %.sroa.28.sroa.0.sroa.20.0.extract.trunc, %bb.ax ], [ %.sroa.28.sroa.0.sroa.20.0.extract.trunc66, %bb.az ], [ undef, %bb.aj ], [ %.sroa.28.sroa.0.sroa.20.0.extract.trunc70, %bb.bc ], [ %.sroa.28.sroa.0.sroa.20.0.extract.trunc58, %bb.be ], [ undef, %bb.bg ], [ undef, %bb.an ], [ undef, %bb.bj ], [ undef, %bb.ap ], [ %.sroa.28.sroa.0.sroa.20.0.extract.trunc62, %bb.bm ]
  %.sroa.28.sroa.0.sroa.0.0 = phi i8 [ undef, %bb.ag ], [ %.sroa.5.1.copyload, %bb.av ], [ %.sroa.28.sroa.0.sroa.0.0.extract.trunc, %bb.ax ], [ %.sroa.28.sroa.0.sroa.0.0.extract.trunc50, %bb.az ], [ undef, %bb.aj ], [ %.sroa.28.sroa.0.sroa.0.0.extract.trunc52, %bb.bc ], [ %.sroa.28.sroa.0.sroa.0.0.extract.trunc46, %bb.be ], [ %i.dw, %bb.bg ], [ undef, %bb.an ], [ %i.ec, %bb.bj ], [ undef, %bb.ap ], [ %.sroa.28.sroa.0.sroa.0.0.extract.trunc48, %bb.bm ]
  %.sroa.28.sroa.20.0 = phi i64 [ 0, %bb.ag ], [ 0, %bb.av ], [ 0, %bb.ax ], [ %i.cb, %bb.az ], [ 0, %bb.aj ], [ %i.cg, %bb.bc ], [ %i.dr, %bb.be ], [ 0, %bb.bg ], [ 0, %bb.an ], [ 0, %bb.bj ], [ 0, %bb.ap ], [ %i.ef, %bb.bm ]
  %.sroa.09.0 = phi i64 [ 2, %bb.ag ], [ 3, %bb.av ], [ 4, %bb.ax ], [ 5, %bb.az ], [ 6, %bb.aj ], [ 7, %bb.bc ], [ %i.ck, %bb.be ], [ 9, %bb.bg ], [ 10, %bb.an ], [ 11, %bb.bj ], [ 12, %bb.ap ], [ 13, %bb.bm ]
  %i.cz = phi <2 x i64> [ undef, %bb.ag ], [ undef, %bb.av ], [ undef, %bb.ax ], [ %i.dl, %bb.az ], [ undef, %bb.aj ], [ %i.do, %bb.bc ], [ %i.dq, %bb.be ], [ undef, %bb.bg ], [ undef, %bb.an ], [ undef, %bb.bj ], [ undef, %bb.ap ], [ undef, %bb.bm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  br label %bb.bn

bb.at:                                            ; preds = %bb.bl, %bb.bk, %bb.bi, %bb.bh, %bb.bf, %bb.bd, %bb.bb, %bb.ba, %bb.ay, %bb.aw, %bb.au, %bb.ar
  %.sink = phi ptr [ %i.ee, %bb.bl ], [ %i.ed, %bb.bk ], [ %i.ea, %bb.bi ], [ %i.dx, %bb.bh ], [ %i.du, %bb.bf ], [ %i.dp, %bb.bd ], [ %i.dn, %bb.bb ], [ %i.dm, %bb.ba ], [ %i.dk, %bb.ay ], [ %i.dh, %bb.aw ], [ %i.dd, %bb.au ], [ %i.cy, %bb.ar ]
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %i.da, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5PtHgSLqj5O_10serde_json3map3MapNtNtCscdodAO9FK5_5alloc6string6StringNtNtBG_5value5ValueEECs2JiOgHzbbc7_10tokenizers.exit

bb.au:                                            ; preds = %.noexc394
  %i.db = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.dc = load ptr, ptr %i.db, align 8, !noalias !653, !nonnull !4, !align !13, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !653
  %i.dd = call noundef nonnull align 8 ptr @_RINvXs6_NtCs5PtHgSLqj5O_10serde_json5errorNtB6_5ErrorNtNtCsboAIIHEtPkY_10serde_core2de5Error6customBE_ECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 %i.dc)
  br label %bb.at

bb.av:                                            ; preds = %.noexc394
  %i.de = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %.sroa.5.1.copyload = load i8, ptr %i.de, align 1, !noalias !657
  %.sroa.7.1..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %.sroa.7.1.copyload = load i16, ptr %.sroa.7.1..sroa_idx, align 2, !noalias !657
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !653
  %.sroa.28.sroa.0.sroa.20.sroa.0.0.insert.ext = zext i16 %.sroa.7.1.copyload to i24
  br label %bb.as

bb.aw:                                            ; preds = %bb.ah
  %i.df = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.dg = load ptr, ptr %i.df, align 8, !nonnull !4, !align !13, !noundef !4
  %i.dh = call noundef nonnull align 8 ptr @_RINvXs6_NtCs5PtHgSLqj5O_10serde_json5errorNtB6_5ErrorNtNtCsboAIIHEtPkY_10serde_core2de5Error6customBE_ECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 %i.dg)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.at

bb.ax:                                            ; preds = %bb.ah
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
  %i.eo = ptrtoint ptr %i.aw to i64               ; 18 uses
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
  %.sroa.0247.0.extract.trunc = trunc i64 %i.eo to i8
  %i.et = trunc i64 %i.eo to i24
  %i.eu = lshr i24 %i.et, 8
  br label %bb.cg

bb.bw:                                            ; preds = %bb.bu
  %.sroa.3.sroa.0.0.extract.trunc = trunc i64 %i.eo to i32
  %.sroa.28.sroa.0.sroa.0.0.extract.trunc45 = trunc i64 %i.eo to i8
  %.sroa.28.sroa.0.sroa.20.0.extract.shift55 = lshr i32 %.sroa.3.sroa.0.0.extract.trunc, 8
  %.sroa.28.sroa.0.sroa.20.0.extract.trunc56 = trunc nuw i32 %.sroa.28.sroa.0.sroa.20.0.extract.shift55 to i24
  br label %bb.cg

bb.bx:                                            ; preds = %bb.bu
  %.sroa.28.sroa.0.0.extract.trunc28 = trunc i64 %i.eo to i32
  %.sroa.28.sroa.0.sroa.0.0.extract.trunc51 = trunc i64 %i.eo to i8
  %.sroa.28.sroa.0.sroa.20.0.extract.shift67 = lshr i32 %.sroa.28.sroa.0.0.extract.trunc28, 8
  %.sroa.28.sroa.0.sroa.20.0.extract.trunc68 = trunc nuw i32 %.sroa.28.sroa.0.sroa.20.0.extract.shift67 to i24
  br label %bb.cg

bb.by:                                            ; preds = %bb.bu
  br label %bb.cg

bb.bz:                                            ; preds = %bb.bu
  %.sroa.28.sroa.0.0.extract.trunc30 = trunc i64 %i.eo to i32
  %.sroa.28.sroa.0.sroa.0.0.extract.trunc53 = trunc i64 %i.eo to i8
  %.sroa.28.sroa.0.sroa.20.0.extract.shift71 = lshr i32 %.sroa.28.sroa.0.0.extract.trunc30, 8
  %.sroa.28.sroa.0.sroa.20.0.extract.trunc72 = trunc nuw i32 %.sroa.28.sroa.0.sroa.20.0.extract.shift71 to i24
  %i.ev = insertelement <2 x i64> %i.en, i64 undef, i64 1
  br label %bb.cg

bb.ca:                                            ; preds = %bb.bu
  %.sroa.28.sroa.0.0.extract.trunc24 = trunc i64 %i.eo to i32
  %.sroa.28.sroa.0.sroa.0.0.extract.trunc47 = trunc i64 %i.eo to i8
  %.sroa.28.sroa.0.sroa.20.0.extract.shift59 = lshr i32 %.sroa.28.sroa.0.0.extract.trunc24, 8
  %.sroa.28.sroa.0.sroa.20.0.extract.trunc60 = trunc nuw i32 %.sroa.28.sroa.0.sroa.20.0.extract.shift59 to i24
  br label %bb.cg

bb.cb:                                            ; preds = %bb.bu
  %.sroa.3.sroa.0.0.extract.trunc239 = trunc i64 %i.eo to i8
  br label %bb.cg

bb.cc:                                            ; preds = %bb.bu
  br label %bb.cg

bb.cd:                                            ; preds = %bb.bu
  %.sroa.3.sroa.0.0.extract.trunc241 = trunc i64 %i.eo to i8
  br label %bb.cg

bb.ce:                                            ; preds = %bb.bu
  br label %bb.cg

bb.cf:                                            ; preds = %bb.bu
  %.sroa.28.sroa.0.0.extract.trunc26 = trunc i64 %i.eo to i32
  %.sroa.28.sroa.0.sroa.0.0.extract.trunc49 = trunc i64 %i.eo to i8
  %.sroa.28.sroa.0.sroa.20.0.extract.shift63 = lshr i32 %.sroa.28.sroa.0.0.extract.trunc26, 8
  %.sroa.28.sroa.0.sroa.20.0.extract.trunc64 = trunc nuw i32 %.sroa.28.sroa.0.sroa.20.0.extract.shift63 to i24
  br label %bb.cg

bb.cg:                                            ; preds = %bb.bu, %bb.cf, %bb.ce, %bb.cd, %bb.cc, %bb.cb, %bb.ca, %bb.bz, %bb.by, %bb.bx, %bb.bw, %bb.bv
  %.sroa.42.sroa.11.2 = phi i64 [ undef, %bb.bu ], [ undef, %bb.bv ], [ undef, %bb.bw ], [ undef, %bb.bx ], [ undef, %bb.by ], [ undef, %bb.bz ], [ %.sroa.5376.sroa.6.0.copyload, %bb.ca ], [ undef, %bb.cb ], [ undef, %bb.cc ], [ undef, %bb.cd ], [ undef, %bb.ce ], [ undef, %bb.cf ]
  %.sroa.42.sroa.0.2 = phi ptr [ undef, %bb.bu ], [ undef, %bb.bv ], [ undef, %bb.bw ], [ %.sroa.5376.sroa.0.0.copyload, %bb.bx ], [ undef, %bb.by ], [ %.sroa.5376.sroa.0.0.copyload, %bb.bz ], [ %.sroa.5376.sroa.0.0.copyload, %bb.ca ], [ undef, %bb.cb ], [ undef, %bb.cc ], [ undef, %bb.cd ], [ undef, %bb.ce ], [ undef, %bb.cf ]
  %.sroa.28.sroa.0.sroa.20.sroa.0.2 = phi i24 [ undef, %bb.bu ], [ %i.eu, %bb.bv ], [ %.sroa.28.sroa.0.sroa.20.0.extract.trunc56, %bb.bw ], [ %.sroa.28.sroa.0.sroa.20.0.extract.trunc68, %bb.bx ], [ undef, %bb.by ], [ %.sroa.28.sroa.0.sroa.20.0.extract.trunc72, %bb.bz ], [ %.sroa.28.sroa.0.sroa.20.0.extract.trunc60, %bb.ca ], [ undef, %bb.cb ], [ undef, %bb.cc ], [ undef, %bb.cd ], [ undef, %bb.ce ], [ %.sroa.28.sroa.0.sroa.20.0.extract.trunc64, %bb.cf ]
  %.sroa.28.sroa.0.sroa.0.2 = phi i8 [ undef, %bb.bu ], [ %.sroa.0247.0.extract.trunc, %bb.bv ], [ %.sroa.28.sroa.0.sroa.0.0.extract.trunc45, %bb.bw ], [ %.sroa.28.sroa.0.sroa.0.0.extract.trunc51, %bb.bx ], [ undef, %bb.by ], [ %.sroa.28.sroa.0.sroa.0.0.extract.trunc53, %bb.bz ], [ %.sroa.28.sroa.0.sroa.0.0.extract.trunc47, %bb.ca ], [ %.sroa.3.sroa.0.0.extract.trunc239, %bb.cb ], [ undef, %bb.cc ], [ %.sroa.3.sroa.0.0.extract.trunc241, %bb.cd ], [ undef, %bb.ce ], [ %.sroa.28.sroa.0.sroa.0.0.extract.trunc49, %bb.cf ]
  %.sroa.28.sroa.20.2 = phi i64 [ %i.es, %bb.bu ], [ 0, %bb.bv ], [ 0, %bb.bw ], [ %i.eo, %bb.bx ], [ 0, %bb.by ], [ %i.eo, %bb.bz ], [ %i.eo, %bb.ca ], [ 0, %bb.cb ], [ 0, %bb.cc ], [ 0, %bb.cd ], [ 0, %bb.ce ], [ %i.eo, %bb.cf ]
  %.sroa.09.2 = phi i64 [ 2, %bb.bu ], [ 3, %bb.bv ], [ 4, %bb.bw ], [ 5, %bb.bx ], [ 6, %bb.by ], [ 7, %bb.bz ], [ %i.at, %bb.ca ], [ 9, %bb.cb ], [ 10, %bb.cc ], [ 11, %bb.cd ], [ 12, %bb.ce ], [ 13, %bb.cf ]
  %i.ew = phi <2 x i64> [ undef, %bb.bu ], [ undef, %bb.bv ], [ undef, %bb.bw ], [ %i.en, %bb.bx ], [ undef, %bb.by ], [ %i.ev, %bb.bz ], [ %i.en, %bb.ca ], [ undef, %bb.cb ], [ undef, %bb.cc ], [ undef, %bb.cd ], [ undef, %bb.ce ], [ undef, %bb.cf ]
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

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
end_hunk_2
begin_hunk_3_@_RINvXs_NtCs2JiOgHzbbc7_10tokenizers14pre_tokenizersNtB5_19PreTokenizerWrapperNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeQINtNtCs5PtHgSLqj5O_10serde_json2de12DeserializerNtNtB2g_4read7StrReadEEB7_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  store ptr %i.ba, ptr %i.x, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, i64 noundef 4, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.w unwind label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.x, %bb.ac, %bb.ae, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.w:                                             ; preds = %bb.u
  %i.bd = load i64, ptr %i.h, align 8, !range !16, !noundef !4
  %i.be = trunc nuw i64 %i.bd to i1
  %i.bf = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.bg = load i64, ptr %i.bf, align 8, !range !287, !noundef !4 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  br i1 %i.be, label %bb.x, label %bb.y, !prof !18

bb.x:                                             ; preds = %bb.w
  %i.bi = load i64, ptr %i.bh, align 8
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.bg, i64 %i.bi) #25
          to label %bb.bs unwind label %bb.v

bb.y:                                             ; preds = %bb.w
  %i.bj = load ptr, ptr %i.bh, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.bk = icmp samesign ugt i64 %i.bg, 3
  call void @llvm.assume(i1 %i.bk)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  store i32 1701869940, ptr %i.bj, align 1
  store i64 %i.bg, ptr %i.t, align 8
  %.sroa.4338.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %i.bj, ptr %.sroa.4338.0..sroa_idx, align 8
  %.sroa.6339.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store i64 4, ptr %.sroa.6339.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  %i.bl = getelementptr inbounds nuw i8, ptr %i.y, i64 32 ; 2 uses
  invoke void @_RINvNtCs5PtHgSLqj5O_10serde_json5value8to_valueRNtNvXs_NtCs2JiOgHzbbc7_10tokenizers14pre_tokenizersNtBR_19PreTokenizerWrapperNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserialize8EnumTypeEBT_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.s, ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %i.bl)
          to label %bb.aa unwind label %bb.z

bb.z:                                             ; preds = %bb.ab, %bb.y
  %i.bm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24) %i.t) #28
          to label %.thread unwind label %bb.br

bb.aa:                                            ; preds = %bb.y
  %i.bn = load i8, ptr %i.s, align 8, !range !445, !noundef !4 ; 2 uses
  %i.bo = icmp eq i8 %i.bn, -1
  br i1 %i.bo, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.bp = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.bq = load ptr, ptr %i.bp, align 8, !nonnull !4, !align !13, !noundef !4
  %i.br = invoke noundef nonnull align 8 ptr @_RINvXs6_NtCs5PtHgSLqj5O_10serde_json5errorNtB6_5ErrorNtNtCsboAIIHEtPkY_10serde_core2de5Error6customBE_ECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 %i.bq)
          to label %bb.bo unwind label %bb.z

bb.ac:                                            ; preds = %bb.aa
  %.sroa.4341.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  %.sroa.692.0..sroa_idx93 = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.692.0..sroa_idx93, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4341.0..sroa_idx, i64 7, i1 false)
  %.sroa.5342.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.5342.0.copyload = load ptr, ptr %.sroa.5342.0..sroa_idx, align 8
  %.sroa.6343.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %.sroa.897.0..sroa_idx98 = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.897.0..sroa_idx98, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6343.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  store i8 %i.bn, ptr %i.r, align 8
  %.sroa.694.0..sroa_idx95 = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr %.sroa.5342.0.copyload, ptr %.sroa.694.0..sroa_idx95, align 8
  invoke void @_RNvMsi_NtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB5_8BTreeMapNtNtBb_6string6StringNtNtCs5PtHgSLqj5O_10serde_json5value5ValueE6insertCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.u, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.x, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.t, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.r)
          to label %bb.ad unwind label %bb.v

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  %i.bs = load i8, ptr %i.u, align 8, !range !445, !alias.scope !664, !noundef !4
  %i.bt = icmp eq i8 %i.bs, -1
  br i1 %i.bt, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEECs2JiOgHzbbc7_10tokenizers.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs5PtHgSLqj5O_10serde_json5value5ValueECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.u)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.v

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.ad, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %i.bu = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bu, ptr noundef nonnull align 8 dereferenceable(24) %i.x, i64 24, i1 false)
  store i8 5, ptr %i.q, align 8
  %i.bv = load i8, ptr %i.bl, align 8, !range !327, !noundef !4
  switch i8 %i.bv, label %default.unreachable437 [
    i8 0, label %bb.ag
    i8 1, label %.noexc394
    i8 2, label %bb.ah
    i8 3, label %bb.ai
    i8 4, label %bb.aj
    i8 5, label %bb.ak
    i8 6, label %bb.al
    i8 7, label %bb.am
    i8 8, label %bb.an
    i8 9, label %bb.ao
    i8 10, label %bb.ap
    i8 11, label %bb.aq
  ]

default.unreachable437:                           ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEECs2JiOgHzbbc7_10tokenizers.exit
  unreachable

bb.af:                                            ; preds = %bb.bu
  unreachable

bb.ag:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEECs2JiOgHzbbc7_10tokenizers.exit
  %i.bw = call noundef align 8 ptr @_RINvXs7_NtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers4bertNtB6_16BertPreTokenizerNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEBa_(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.q) ; 2 uses
  %.not388 = icmp eq ptr %i.bw, null
  br i1 %.not388, label %bb.as, label %bb.ar

.noexc394:                                        ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEECs2JiOgHzbbc7_10tokenizers.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !667
  call void @_RINvXs2_NtNtCs5PtHgSLqj5O_10serde_json5value2deNtB8_5ValueNtNtCsboAIIHEtPkY_10serde_core2de12Deserializer15deserialize_mapNtNvXNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers10byte_levels2_1__NtB23_21ByteLevelDeserializerNtBW_11Deserialize11deserialize9___VisitorEB27_(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.q)
  %i.bx = load i8, ptr %i.a, align 8, !range !3, !noalias !667, !noundef !4
  %i.by = trunc nuw i8 %i.bx to i1
  br i1 %i.by, label %bb.au, label %bb.av

bb.ah:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEECs2JiOgHzbbc7_10tokenizers.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @_RINvXNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers9delimiters_1__NtB5_18CharDelimiterSplitNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEB9_(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.p, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.q)
  %i.bz = load i32, ptr %i.p, align 8, !range !259, !noundef !4
  %i.ca = trunc nuw i32 %i.bz to i1
  br i1 %i.ca, label %bb.aw, label %bb.ax

bb.ai:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEECs2JiOgHzbbc7_10tokenizers.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @_RINvXs_NtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers9metaspaceNtB5_9MetaspaceNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEB9_(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.o, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.q)
  %i.cb = load i64, ptr %i.o, align 8, !range !19, !noundef !4 ; 4 uses
  %i.cc = icmp eq i64 %i.cb, -1
  %i.cd = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8            ; 2 uses
  br i1 %i.cc, label %bb.ay, label %bb.az

bb.aj:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEECs2JiOgHzbbc7_10tokenizers.exit
  %i.cf = call noundef align 8 ptr @_RINvXs7_NtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers10whitespaceNtB6_10WhitespaceNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEBa_(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.q) ; 2 uses
  %.not387 = icmp eq ptr %i.cf, null
  br i1 %.not387, label %bb.as, label %bb.ba

bb.ak:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEECs2JiOgHzbbc7_10tokenizers.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @_RINvXNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers8sequences_1__NtB5_8SequenceNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEB9_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.n, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.q)
  %i.cg = load i64, ptr %i.n, align 8, !range !19, !noundef !4 ; 4 uses
  %i.ch = icmp eq i64 %i.cg, -1
  %i.ci = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8            ; 2 uses
  br i1 %i.ch, label %bb.bb, label %bb.bc

bb.al:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEECs2JiOgHzbbc7_10tokenizers.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @_RINvXs0_NtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers5splitNtB6_5SplitNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEBa_(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.m, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.q)
  %i.ck = load i64, ptr %i.m, align 8, !range !430, !noundef !4 ; 2 uses
  %i.cl = icmp eq i64 %i.ck, 2
  %i.cm = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8            ; 2 uses
  br i1 %i.cl, label %bb.bd, label %bb.be

bb.am:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEECs2JiOgHzbbc7_10tokenizers.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @_RINvXNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers11punctuations_1__NtB5_11PunctuationNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEB9_(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.l, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.q)
  %i.co = load i8, ptr %i.l, align 8, !range !3, !noundef !4
  %i.cp = trunc nuw i8 %i.co to i1
  br i1 %i.cp, label %bb.bf, label %bb.bg

bb.an:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEECs2JiOgHzbbc7_10tokenizers.exit
  %i.cq = call noundef align 8 ptr @_RINvXsg_NtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers10whitespaceNtB6_15WhitespaceSplitNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEBa_(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.q) ; 2 uses
  %.not386 = icmp eq ptr %i.cq, null
  br i1 %.not386, label %bb.as, label %bb.bh

bb.ao:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEECs2JiOgHzbbc7_10tokenizers.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @_RINvXNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers6digitss_1__NtB5_6DigitsNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEB9_(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.k, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.q)
  %i.cr = load i8, ptr %i.k, align 8, !range !3, !noundef !4
  %i.cs = trunc nuw i8 %i.cr to i1
  br i1 %i.cs, label %bb.bi, label %bb.bj

bb.ap:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEECs2JiOgHzbbc7_10tokenizers.exit
  %i.ct = call noundef align 8 ptr @_RINvXs7_NtNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers15unicode_scripts13pre_tokenizerNtB6_14UnicodeScriptsNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEBc_(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.q) ; 2 uses
  %.not = icmp eq ptr %i.ct, null
  br i1 %.not, label %bb.as, label %bb.bk

bb.aq:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEECs2JiOgHzbbc7_10tokenizers.exit
  %i.cu = call { i64, ptr } @_RINvXNvNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers12fixed_lengths_1__NtB5_11FixedLengthNtNtCsboAIIHEtPkY_10serde_core2de11Deserialize11deserializeNtNtCs5PtHgSLqj5O_10serde_json5value5ValueEB9_(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.q) ; 2 uses
  %i.cv = extractvalue { i64, ptr } %i.cu, 0
  %i.cw = extractvalue { i64, ptr } %i.cu, 1      ; 2 uses
  %i.cx = trunc nuw i64 %i.cv to i1
  br i1 %i.cx, label %bb.bl, label %bb.bm

bb.ar:                                            ; preds = %bb.ag
  %i.cy = call noundef nonnull align 8 ptr @_RINvXs6_NtCs5PtHgSLqj5O_10serde_json5errorNtB6_5ErrorNtNtCsboAIIHEtPkY_10serde_core2de5Error6customBE_ECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 %i.bw)
  br label %bb.at

bb.as:                                            ; preds = %bb.ap, %bb.an, %bb.aj, %bb.ag, %bb.bm, %bb.bj, %bb.bg, %bb.be, %bb.bc, %bb.az, %bb.ax, %bb.av
  %.sroa.42.sroa.11.0 = phi i64 [ undef, %bb.ag ], [ undef, %bb.av ], [ undef, %bb.ax ], [ undef, %bb.az ], [ undef, %bb.aj ], [ undef, %bb.bc ], [ %.sroa.5367.sroa.6.0.copyload, %bb.be ], [ undef, %bb.bg ], [ undef, %bb.an ], [ undef, %bb.bj ], [ undef, %bb.ap ], [ undef, %bb.bm ]
  %.sroa.42.sroa.0.0 = phi ptr [ undef, %bb.ag ], [ undef, %bb.av ], [ undef, %bb.ax ], [ %i.ce, %bb.az ], [ undef, %bb.aj ], [ %i.cj, %bb.bc ], [ %.sroa.5367.sroa.0.0.copyload, %bb.be ], [ undef, %bb.bg ], [ undef, %bb.an ], [ undef, %bb.bj ], [ undef, %bb.ap ], [ undef, %bb.bm ]
  %.sroa.28.sroa.0.sroa.20.sroa.0.0 = phi i24 [ undef, %bb.ag ], [ %.sroa.28.sroa.0.sroa.20.sroa.0.0.insert.ext, %bb.av ], [ %.sroa.28.sroa.0.sroa.20.0.extract.trunc, %bb.ax ], [ %.sroa.28.sroa.0.sroa.20.0.extract.trunc66, %bb.az ], [ undef, %bb.aj ], [ %.sroa.28.sroa.0.sroa.20.0.extract.trunc70, %bb.bc ], [ %.sroa.28.sroa.0.sroa.20.0.extract.trunc58, %bb.be ], [ undef, %bb.bg ], [ undef, %bb.an ], [ undef, %bb.bj ], [ undef, %bb.ap ], [ %.sroa.28.sroa.0.sroa.20.0.extract.trunc62, %bb.bm ]
  %.sroa.28.sroa.0.sroa.0.0 = phi i8 [ undef, %bb.ag ], [ %.sroa.5.1.copyload, %bb.av ], [ %.sroa.28.sroa.0.sroa.0.0.extract.trunc, %bb.ax ], [ %.sroa.28.sroa.0.sroa.0.0.extract.trunc50, %bb.az ], [ undef, %bb.aj ], [ %.sroa.28.sroa.0.sroa.0.0.extract.trunc52, %bb.bc ], [ %.sroa.28.sroa.0.sroa.0.0.extract.trunc46, %bb.be ], [ %i.dw, %bb.bg ], [ undef, %bb.an ], [ %i.ec, %bb.bj ], [ undef, %bb.ap ], [ %.sroa.28.sroa.0.sroa.0.0.extract.trunc48, %bb.bm ]
  %.sroa.28.sroa.20.0 = phi i64 [ 0, %bb.ag ], [ 0, %bb.av ], [ 0, %bb.ax ], [ %i.cb, %bb.az ], [ 0, %bb.aj ], [ %i.cg, %bb.bc ], [ %i.dr, %bb.be ], [ 0, %bb.bg ], [ 0, %bb.an ], [ 0, %bb.bj ], [ 0, %bb.ap ], [ %i.ef, %bb.bm ]
  %.sroa.09.0 = phi i64 [ 2, %bb.ag ], [ 3, %bb.av ], [ 4, %bb.ax ], [ 5, %bb.az ], [ 6, %bb.aj ], [ 7, %bb.bc ], [ %i.ck, %bb.be ], [ 9, %bb.bg ], [ 10, %bb.an ], [ 11, %bb.bj ], [ 12, %bb.ap ], [ 13, %bb.bm ]
  %i.cz = phi <2 x i64> [ undef, %bb.ag ], [ undef, %bb.av ], [ undef, %bb.ax ], [ %i.dl, %bb.az ], [ undef, %bb.aj ], [ %i.do, %bb.bc ], [ %i.dq, %bb.be ], [ undef, %bb.bg ], [ undef, %bb.an ], [ undef, %bb.bj ], [ undef, %bb.ap ], [ undef, %bb.bm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  br label %bb.bn

bb.at:                                            ; preds = %bb.bl, %bb.bk, %bb.bi, %bb.bh, %bb.bf, %bb.bd, %bb.bb, %bb.ba, %bb.ay, %bb.aw, %bb.au, %bb.ar
  %.sink = phi ptr [ %i.ee, %bb.bl ], [ %i.ed, %bb.bk ], [ %i.ea, %bb.bi ], [ %i.dx, %bb.bh ], [ %i.du, %bb.bf ], [ %i.dp, %bb.bd ], [ %i.dn, %bb.bb ], [ %i.dm, %bb.ba ], [ %i.dk, %bb.ay ], [ %i.dh, %bb.aw ], [ %i.dd, %bb.au ], [ %i.cy, %bb.ar ]
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %i.da, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCs5PtHgSLqj5O_10serde_json3map3MapNtNtCscdodAO9FK5_5alloc6string6StringNtNtBG_5value5ValueEECs2JiOgHzbbc7_10tokenizers.exit

bb.au:                                            ; preds = %.noexc394
  %i.db = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.dc = load ptr, ptr %i.db, align 8, !noalias !667, !nonnull !4, !align !13, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !667
  %i.dd = call noundef nonnull align 8 ptr @_RINvXs6_NtCs5PtHgSLqj5O_10serde_json5errorNtB6_5ErrorNtNtCsboAIIHEtPkY_10serde_core2de5Error6customBE_ECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 %i.dc)
  br label %bb.at

bb.av:                                            ; preds = %.noexc394
  %i.de = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %.sroa.5.1.copyload = load i8, ptr %i.de, align 1, !noalias !671
  %.sroa.7.1..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %.sroa.7.1.copyload = load i16, ptr %.sroa.7.1..sroa_idx, align 2, !noalias !671
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !667
  %.sroa.28.sroa.0.sroa.20.sroa.0.0.insert.ext = zext i16 %.sroa.7.1.copyload to i24
  br label %bb.as

bb.aw:                                            ; preds = %bb.ah
  %i.df = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.dg = load ptr, ptr %i.df, align 8, !nonnull !4, !align !13, !noundef !4
  %i.dh = call noundef nonnull align 8 ptr @_RINvXs6_NtCs5PtHgSLqj5O_10serde_json5errorNtB6_5ErrorNtNtCsboAIIHEtPkY_10serde_core2de5Error6customBE_ECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 %i.dg)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.at

bb.ax:                                            ; preds = %bb.ah
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
  %i.eo = ptrtoint ptr %i.aw to i64               ; 18 uses
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
  %.sroa.0247.0.extract.trunc = trunc i64 %i.eo to i8
  %i.et = trunc i64 %i.eo to i24
  %i.eu = lshr i24 %i.et, 8
  br label %bb.cg

bb.bw:                                            ; preds = %bb.bu
  %.sroa.3.sroa.0.0.extract.trunc = trunc i64 %i.eo to i32
  %.sroa.28.sroa.0.sroa.0.0.extract.trunc45 = trunc i64 %i.eo to i8
  %.sroa.28.sroa.0.sroa.20.0.extract.shift55 = lshr i32 %.sroa.3.sroa.0.0.extract.trunc, 8
  %.sroa.28.sroa.0.sroa.20.0.extract.trunc56 = trunc nuw i32 %.sroa.28.sroa.0.sroa.20.0.extract.shift55 to i24
  br label %bb.cg

bb.bx:                                            ; preds = %bb.bu
  %.sroa.28.sroa.0.0.extract.trunc28 = trunc i64 %i.eo to i32
  %.sroa.28.sroa.0.sroa.0.0.extract.trunc51 = trunc i64 %i.eo to i8
  %.sroa.28.sroa.0.sroa.20.0.extract.shift67 = lshr i32 %.sroa.28.sroa.0.0.extract.trunc28, 8
  %.sroa.28.sroa.0.sroa.20.0.extract.trunc68 = trunc nuw i32 %.sroa.28.sroa.0.sroa.20.0.extract.shift67 to i24
  br label %bb.cg

bb.by:                                            ; preds = %bb.bu
  br label %bb.cg

bb.bz:                                            ; preds = %bb.bu
  %.sroa.28.sroa.0.0.extract.trunc30 = trunc i64 %i.eo to i32
  %.sroa.28.sroa.0.sroa.0.0.extract.trunc53 = trunc i64 %i.eo to i8
  %.sroa.28.sroa.0.sroa.20.0.extract.shift71 = lshr i32 %.sroa.28.sroa.0.0.extract.trunc30, 8
  %.sroa.28.sroa.0.sroa.20.0.extract.trunc72 = trunc nuw i32 %.sroa.28.sroa.0.sroa.20.0.extract.shift71 to i24
  %i.ev = insertelement <2 x i64> %i.en, i64 undef, i64 1
  br label %bb.cg

bb.ca:                                            ; preds = %bb.bu
  %.sroa.28.sroa.0.0.extract.trunc24 = trunc i64 %i.eo to i32
  %.sroa.28.sroa.0.sroa.0.0.extract.trunc47 = trunc i64 %i.eo to i8
  %.sroa.28.sroa.0.sroa.20.0.extract.shift59 = lshr i32 %.sroa.28.sroa.0.0.extract.trunc24, 8
  %.sroa.28.sroa.0.sroa.20.0.extract.trunc60 = trunc nuw i32 %.sroa.28.sroa.0.sroa.20.0.extract.shift59 to i24
  br label %bb.cg

bb.cb:                                            ; preds = %bb.bu
  %.sroa.3.sroa.0.0.extract.trunc239 = trunc i64 %i.eo to i8
  br label %bb.cg

bb.cc:                                            ; preds = %bb.bu
  br label %bb.cg

bb.cd:                                            ; preds = %bb.bu
  %.sroa.3.sroa.0.0.extract.trunc241 = trunc i64 %i.eo to i8
  br label %bb.cg

bb.ce:                                            ; preds = %bb.bu
  br label %bb.cg

bb.cf:                                            ; preds = %bb.bu
  %.sroa.28.sroa.0.0.extract.trunc26 = trunc i64 %i.eo to i32
  %.sroa.28.sroa.0.sroa.0.0.extract.trunc49 = trunc i64 %i.eo to i8
  %.sroa.28.sroa.0.sroa.20.0.extract.shift63 = lshr i32 %.sroa.28.sroa.0.0.extract.trunc26, 8
  %.sroa.28.sroa.0.sroa.20.0.extract.trunc64 = trunc nuw i32 %.sroa.28.sroa.0.sroa.20.0.extract.shift63 to i24
  br label %bb.cg

bb.cg:                                            ; preds = %bb.bu, %bb.cf, %bb.ce, %bb.cd, %bb.cc, %bb.cb, %bb.ca, %bb.bz, %bb.by, %bb.bx, %bb.bw, %bb.bv
  %.sroa.42.sroa.11.2 = phi i64 [ undef, %bb.bu ], [ undef, %bb.bv ], [ undef, %bb.bw ], [ undef, %bb.bx ], [ undef, %bb.by ], [ undef, %bb.bz ], [ %.sroa.5376.sroa.6.0.copyload, %bb.ca ], [ undef, %bb.cb ], [ undef, %bb.cc ], [ undef, %bb.cd ], [ undef, %bb.ce ], [ undef, %bb.cf ]
  %.sroa.42.sroa.0.2 = phi ptr [ undef, %bb.bu ], [ undef, %bb.bv ], [ undef, %bb.bw ], [ %.sroa.5376.sroa.0.0.copyload, %bb.bx ], [ undef, %bb.by ], [ %.sroa.5376.sroa.0.0.copyload, %bb.bz ], [ %.sroa.5376.sroa.0.0.copyload, %bb.ca ], [ undef, %bb.cb ], [ undef, %bb.cc ], [ undef, %bb.cd ], [ undef, %bb.ce ], [ undef, %bb.cf ]
  %.sroa.28.sroa.0.sroa.20.sroa.0.2 = phi i24 [ undef, %bb.bu ], [ %i.eu, %bb.bv ], [ %.sroa.28.sroa.0.sroa.20.0.extract.trunc56, %bb.bw ], [ %.sroa.28.sroa.0.sroa.20.0.extract.trunc68, %bb.bx ], [ undef, %bb.by ], [ %.sroa.28.sroa.0.sroa.20.0.extract.trunc72, %bb.bz ], [ %.sroa.28.sroa.0.sroa.20.0.extract.trunc60, %bb.ca ], [ undef, %bb.cb ], [ undef, %bb.cc ], [ undef, %bb.cd ], [ undef, %bb.ce ], [ %.sroa.28.sroa.0.sroa.20.0.extract.trunc64, %bb.cf ]
  %.sroa.28.sroa.0.sroa.0.2 = phi i8 [ undef, %bb.bu ], [ %.sroa.0247.0.extract.trunc, %bb.bv ], [ %.sroa.28.sroa.0.sroa.0.0.extract.trunc45, %bb.bw ], [ %.sroa.28.sroa.0.sroa.0.0.extract.trunc51, %bb.bx ], [ undef, %bb.by ], [ %.sroa.28.sroa.0.sroa.0.0.extract.trunc53, %bb.bz ], [ %.sroa.28.sroa.0.sroa.0.0.extract.trunc47, %bb.ca ], [ %.sroa.3.sroa.0.0.extract.trunc239, %bb.cb ], [ undef, %bb.cc ], [ %.sroa.3.sroa.0.0.extract.trunc241, %bb.cd ], [ undef, %bb.ce ], [ %.sroa.28.sroa.0.sroa.0.0.extract.trunc49, %bb.cf ]
  %.sroa.28.sroa.20.2 = phi i64 [ %i.es, %bb.bu ], [ 0, %bb.bv ], [ 0, %bb.bw ], [ %i.eo, %bb.bx ], [ 0, %bb.by ], [ %i.eo, %bb.bz ], [ %i.eo, %bb.ca ], [ 0, %bb.cb ], [ 0, %bb.cc ], [ 0, %bb.cd ], [ 0, %bb.ce ], [ %i.eo, %bb.cf ]
  %.sroa.09.2 = phi i64 [ 2, %bb.bu ], [ 3, %bb.bv ], [ 4, %bb.bw ], [ 5, %bb.bx ], [ 6, %bb.by ], [ 7, %bb.bz ], [ %i.at, %bb.ca ], [ 9, %bb.cb ], [ 10, %bb.cc ], [ 11, %bb.cd ], [ 12, %bb.ce ], [ 13, %bb.cf ]
  %i.ew = phi <2 x i64> [ undef, %bb.bu ], [ undef, %bb.bv ], [ undef, %bb.bw ], [ %i.en, %bb.bx ], [ undef, %bb.by ], [ %i.ev, %bb.bz ], [ %i.en, %bb.ca ], [ undef, %bb.cb ], [ undef, %bb.cc ], [ undef, %bb.cd ], [ undef, %bb.ce ], [ undef, %bb.cf ]
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
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc3vecINtB5_3VecmE11extend_withCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %2, i32 noundef %1)
          to label %bb.f unwind label %bb.e

end_hunk_3
begin_hunk_4_@_RNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB2_8Encoding8truncate:bb.a

bb.es:                                            ; preds = %.noexc116, %.noexc115, %.noexc114, %bb.eq
  %i.ns = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingEEB1d_(ptr noalias noundef align 8 dereferenceable(24) %i.x) #28
          to label %bb.ey unwind label %bb.ex

_RNvMs1_NtCsiTTz6JxaXqu_5ahash12random_stateNtB5_11RandomState3new.exit118: ; preds = %.noexc116
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.jg, ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) @67, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.jo, ptr noundef nonnull align 8 dereferenceable(64) %i.g, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.jh, ptr noundef nonnull align 8 dereferenceable(24) %i.ad, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ji, ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.jj, ptr noundef nonnull align 8 dereferenceable(24) %i.ab, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.jk, ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.jl, ptr noundef nonnull align 8 dereferenceable(24) %i.z, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.jm, ptr noundef nonnull align 8 dereferenceable(24) %i.y, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.jn, ptr noundef nonnull align 8 dereferenceable(24) %i.x, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  %i.nt = load i64, ptr %i.jp, align 8, !alias.scope !1005, !noalias !1008, !noundef !4 ; 3 uses
  %i.nu = load i64, ptr %i.hz, align 8, !range !93, !alias.scope !1005, !noalias !1008, !noundef !4
  %i.nv = icmp eq i64 %i.nt, %i.nu
  br i1 %i.nv, label %bb.et, label %bb.ew

bb.et:                                            ; preds = %_RNvMs1_NtCsiTTz6JxaXqu_5ahash12random_stateNtB5_11RandomState3new.exit118
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingE8grow_oneBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.hz)
          to label %bb.ew unwind label %bb.eu, !noalias !1008

bb.eu:                                            ; preds = %bb.et
  %i.nw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingEBH_(ptr noalias noundef nonnull align 8 dereferenceable(256) %i.af) #28
          to label %.body119 unwind label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  %i.nx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.ew:                                            ; preds = %bb.et, %_RNvMs1_NtCsiTTz6JxaXqu_5ahash12random_stateNtB5_11RandomState3new.exit118
  %i.ny = load ptr, ptr %i.jq, align 8, !alias.scope !1005, !noalias !1008, !nonnull !4, !noundef !4
  %i.nz = getelementptr inbounds nuw [256 x i8], ptr %i.ny, i64 %i.nt
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.nz, ptr noundef nonnull align 8 dereferenceable(256) %i.af, i64 256, i1 false)
  %i.oa = add i64 %i.nt, 1
  store i64 %i.oa, ptr %i.jp, align 8, !alias.scope !1005, !noalias !1008
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  %i.ob = load i64, ptr %i.bz, align 8, !noundef !4 ; 3 uses
  %i.oc = icmp ult i64 %i.ob, 576460752303423488
  call void @llvm.assume(i1 %i.oc)
  %i.od = add nsw i64 %i.ob, -2
  %.not68 = icmp eq i64 %.sroa.01.0413, %i.od
  br i1 %.not68, label %._crit_edge, label %bb.cc

bb.ex:                                            ; preds = %bb.dv, %bb.dk, %bb.df, %bb.cq, %bb.o, %bb.fd, %.body119, %bb.ey, %bb.es, %bb.em, %bb.ee, %bb.cb, %bb.bu, %bb.bl, %bb.bc, %bb.at, %.body83, %bb.ac
  %i.oe = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body

.body:                                            ; preds = %bb.cp, %bb.dj, %bb.du, %bb.ex, %bb.de, %bb.n
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.ey:                                            ; preds = %bb.es
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecmEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24) %i.y) #28
          to label %bb.em unwind label %bb.ex

.thread:                                          ; preds = %._crit_edge
  %i.of = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 8 dereferenceable(256) %i.w, i64 256, i1 false)
  br label %bb.m

bb.ez:                                            ; preds = %._crit_edge
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %0, ptr noundef nonnull align 8 dereferenceable(256) %i.w, i64 256, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecTjjEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ar)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTjjEEECs2JiOgHzbbc7_10tokenizers.exit123 unwind label %bb.fa

bb.fa:                                            ; preds = %bb.ez
  %i.og = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTjjEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ar)
          to label %common.resume unwind label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  %i.oh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTjjEEECs2JiOgHzbbc7_10tokenizers.exit123: ; preds = %bb.ez
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTjjEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ar)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  br label %bb.fc

bb.fc:                                            ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingE8push_mutBK_.exit, %bb.a, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTjjEEECs2JiOgHzbbc7_10tokenizers.exit123
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  ret void

.body119:                                         ; preds = %.body119.thread.loopexit, %.body119.thread.loopexit.split-lp, %bb.cq, %bb.eu
  %.pn66133 = phi { ptr, i32 } [ %i.nw, %bb.eu ], [ %.pn64, %bb.cq ], [ %lpad.loopexit, %.body119.thread.loopexit ], [ %lpad.loopexit.split-lp, %.body119.thread.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingEBH_(ptr noalias noundef align 8 dereferenceable(256) %i.ao) #28
          to label %bb.m unwind label %bb.ex

bb.fd:                                            ; preds = %bb.cb
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecmEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24) %i.ah) #28
          to label %bb.bu unwind label %bb.ex
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs2_NtCs2JiOgHzbbc7_10tokenizers6modelsNtB5_12ModelWrapper11clear_cache(ptr noalias noundef align 8 dereferenceable(328) %0) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !1010, !noundef !4 ; 2 uses
  %i.b = add nsw i64 %i.a, -2
  %i.c = icmp samesign ugt i64 %i.a, 1
  %i.d = select i1 %i.c, i64 %i.b, i64 3
  switch i64 %i.d, label %bb.b [
    i64 0, label %bb.c
    i64 3, label %bb.d
  ]

bb.b:                                             ; preds = %bb.d, %bb.c, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RNvMs5_NtNtNtCs2JiOgHzbbc7_10tokenizers6models3bpe5modelNtB5_3BPE11clear_cache(ptr noundef nonnull align 8 %i.e)
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 208
  tail call void @_RNvMs0_NtNtCs2JiOgHzbbc7_10tokenizers5utils5cacheINtB5_5CacheNtNtCscdodAO9FK5_5alloc6string6StringINtNtB11_3vec3VecBX_EE5clearB9_(ptr noundef nonnull align 8 %i.f)
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs2_NtCs2JiOgHzbbc7_10tokenizers6modelsNtB5_12ModelWrapper12resize_cache(ptr noalias noundef align 8 dereferenceable(328) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !1010, !noundef !4 ; 2 uses
  %i.b = add nsw i64 %i.a, -2
  %i.c = icmp samesign ugt i64 %i.a, 1
  %i.d = select i1 %i.c, i64 %i.b, i64 3
  switch i64 %i.d, label %bb.b [
    i64 0, label %bb.c
    i64 3, label %bb.d
  ]

bb.b:                                             ; preds = %bb.c, %bb.e, %bb.d, %bb.a
  ret void

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !range !16, !noundef !4
  %i.g = trunc nuw i64 %i.f to i1
  br i1 %i.g, label %bb.e, label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 208
  tail call void @_RNvMs0_NtNtCs2JiOgHzbbc7_10tokenizers5utils5cacheINtB5_5CacheNtNtCscdodAO9FK5_5alloc6string6StringINtNtB11_3vec3VecBX_EE6resizeB9_(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.h, i64 noundef %1)
  br label %bb.b

bb.e:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %1, ptr %i.i, align 8
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs2_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram5modelNtB5_7Unigram11clear_cache(ptr noalias noundef align 8 dereferenceable(328) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208
  tail call void @_RNvMs0_NtNtCs2JiOgHzbbc7_10tokenizers5utils5cacheINtB5_5CacheNtNtCscdodAO9FK5_5alloc6string6StringINtNtB11_3vec3VecBX_EE5clearB9_(ptr noundef nonnull align 8 %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs2_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram5modelNtB5_7Unigram12resize_cache(ptr noalias noundef align 8 dereferenceable(328) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 208
  tail call void @_RNvMs0_NtNtCs2JiOgHzbbc7_10tokenizers5utils5cacheINtB5_5CacheNtNtCscdodAO9FK5_5alloc6string6StringINtNtB11_3vec3VecBX_EE6resizeB9_(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.a, i64 noundef %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs2_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram5modelNtB5_7Unigram14populate_nodes(ptr noundef nonnull align 8 %0, ptr noalias noundef align 8 dereferenceable(112) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.475.sroa.0.sroa.0 = alloca [16 x i8], align 8 ; 4 uses
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [40 x i8], align 8                ; 9 uses
  %.sroa.6.sroa.0 = alloca [16 x i8], align 8     ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 15 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 9 uses
  %i.f = alloca [56 x i8], align 8                ; 16 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.h = load double, ptr %i.g, align 8, !noundef !4
  %i.i = fadd double %i.h, -1.000000e+01
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.k = load i64, ptr %i.j, align 8, !noundef !4 ; 2 uses
  %.not = icmp eq i64 %i.k, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.sroa.013.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.013.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.475.sroa.5.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.6.sroa.6.0..sroa_idx408 = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.6.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  br label %bb.b

._crit_edge:                                      ; preds = %bb.y, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.y
  %.sroa.0.0154 = phi i64 [ 0, %.lr.ph ], [ %i.co, %bb.y ] ; 14 uses
  %i.ab = load ptr, ptr %i.l, align 8, !nonnull !4, !noundef !4 ; 5 uses
  %i.ac = load i64, ptr %i.m, align 8, !noundef !4 ; 9 uses
  %i.ad = icmp eq i64 %.sroa.0.0154, 0
  br i1 %i.ad, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.i37 = icmp ult i64 %.sroa.0.0154, %i.ac
  br i1 %.not.i37, label %bb.d, label %.split.i

.split.i:                                         ; preds = %bb.c
  %i.ae = icmp eq i64 %.sroa.0.0154, %i.ac
  br i1 %i.ae, label %bb.e, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.sroa.0.0154
  %i.ag = load i8, ptr %i.af, align 1, !alias.scope !1011, !noundef !4
  %i.ah = icmp sgt i8 %i.ag, -65
  br i1 %i.ah, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d, %.split.i, %bb.b
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.sroa.0.0154 ; 4 uses
  %i.aj = icmp samesign eq i64 %.sroa.0.0154, %i.ac
  br i1 %i.aj, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ak = load i8, ptr %i.ai, align 1, !noalias !1014, !noundef !4 ; 4 uses
  %i.al = icmp sgt i8 %i.ak, -1
  br i1 %i.al, label %.thread, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i: ; preds = %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 1
  %i.an = and i8 %i.ak, 31
  %i.ao = zext nneg i8 %i.an to i32               ; 3 uses
  %i.ap = add nuw nsw i64 %.sroa.0.0154, 1
  %i.aq = icmp samesign ne i64 %i.ap, %i.ac
  call void @llvm.assume(i1 %i.aq)
  %i.ar = load i8, ptr %i.am, align 1, !noalias !1014, !noundef !4
  %i.as = shl nuw nsw i32 %i.ao, 6
  %i.at = and i8 %i.ar, 63
  %i.au = zext nneg i8 %i.at to i32               ; 2 uses
  %i.av = or disjoint i32 %i.as, %i.au
  %i.aw = icmp samesign ugt i8 %i.ak, -33
  br i1 %i.aw, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i, label %bb.h

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ai, i64 2
  %i.ay = add nuw nsw i64 %.sroa.0.0154, 2
  %i.az = icmp samesign ne i64 %i.ay, %i.ac
  call void @llvm.assume(i1 %i.az)
  %i.ba = load i8, ptr %i.ax, align 1, !noalias !1014, !noundef !4
  %i.bb = shl nuw nsw i32 %i.au, 6
  %i.bc = and i8 %i.ba, 63
  %i.bd = zext nneg i8 %i.bc to i32
  %i.be = or disjoint i32 %i.bb, %i.bd            ; 2 uses
  %i.bf = shl nuw nsw i32 %i.ao, 12
  %i.bg = or disjoint i32 %i.be, %i.bf
  %i.bh = icmp samesign ugt i8 %i.ak, -17
  br i1 %i.bh, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i, label %bb.h

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ai, i64 3
  %i.bj = add nuw nsw i64 %.sroa.0.0154, 3
  %i.bk = icmp samesign ne i64 %i.bj, %i.ac
  call void @llvm.assume(i1 %i.bk)
  %i.bl = load i8, ptr %i.bi, align 1, !noalias !1014, !noundef !4
  %i.bm = shl nuw nsw i32 %i.ao, 18
  %i.bn = and i32 %i.bm, 1835008
  %i.bo = shl nuw nsw i32 %i.be, 6
  %i.bp = and i8 %i.bl, 63
  %i.bq = zext nneg i8 %i.bp to i32
  %i.br = or disjoint i32 %i.bo, %i.bq
  %i.bs = or disjoint i32 %i.br, %i.bn
  br label %bb.h

bb.g:                                             ; preds = %bb.d, %.split.i
  call void @_RNvNtCs4NRVxsYgnAr_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ab, i64 noundef %i.ac, i64 noundef %.sroa.0.0154, i64 noundef %i.ac, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @106) #25
  unreachable

bb.h:                                             ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i
  %.sroa.4.0.i.ph = phi i32 [ %i.bg, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i ], [ %i.bs, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i ], [ %i.av, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i ] ; 4 uses
  %i.bt = icmp samesign ult i32 %.sroa.4.0.i.ph, 1114112
  call void @llvm.assume(i1 %i.bt)
  %i.bu = icmp samesign ult i32 %.sroa.4.0.i.ph, 128
  br i1 %i.bu, label %.thread, label %bb.j

bb.i:                                             ; preds = %bb.e
  call void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @107) #25
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.bv = icmp samesign ult i32 %.sroa.4.0.i.ph, 2048
  br i1 %i.bv, label %.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bw = icmp samesign ult i32 %.sroa.4.0.i.ph, 65536
  %. = select i1 %i.bw, i64 3, i64 4
  br label %.thread

.thread:                                          ; preds = %bb.f, %bb.j, %bb.k, %bb.h
  %.sroa.07.0 = phi i64 [ 2, %bb.j ], [ %., %bb.k ], [ 1, %bb.h ], [ 1, %bb.f ] ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 0, ptr %i.f, align 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.013.sroa.2.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.013.sroa.3.0..sroa_idx, align 8
  store ptr %i.n, ptr %.sroa.2.0..sroa_idx, align 8
  store ptr %i.ab, ptr %.sroa.3.0..sroa_idx, align 8
  store ptr %i.bx, ptr %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx.sroa_idx, align 8
  store i64 %.sroa.0.0154, ptr %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx.sroa_idx, align 8
  br label %bb.l

bb.l:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit66, %.thread
  %.sroa.011.0 = phi i8 [ 0, %.thread ], [ %spec.store.select, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit66 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  invoke void @_RNvXs0_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram4trieINtB5_12TrieIteratorhINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters4skip4SkipNtNtNtB1p_3str4iter5BytesEENtNtNtB1n_6traits8iterator8Iterator4nextBb_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias noundef nonnull align 8 dereferenceable(56) %i.f)
          to label %bb.p unwind label %bb.o

.body:                                            ; preds = %bb.av, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i57, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i48, %bb.r, %bb.o
  %.pn = phi { ptr, i32 } [ %i.cs, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i48 ], [ %i.cf, %bb.r ], [ %lpad.phi, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i57 ], [ %i.ca, %bb.o ], [ %i.eq, %bb.av ]
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.f)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i unwind label %bb.m

bb.m:                                             ; preds = %.body
  %i.by = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.f)
          to label %.body39 unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i: ; preds = %.body
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.f)
          to label %common.resume unwind label %bb.ax

bb.o:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i62, %bb.l
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.p:                                             ; preds = %bb.l
  %i.cb = load i64, ptr %i.e, align 8, !range !19, !noundef !4
  %.not33 = icmp eq i64 %i.cb, -1
  br i1 %.not33, label %bb.u, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  %i.cc = load i64, ptr %i.o, align 8, !noundef !4 ; 4 uses
  %i.cd = icmp sgt i64 %i.cc, -1
  call void @llvm.assume(i1 %i.cd)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.sroa.0)
  call void @llvm.experimental.noalias.scope.decl(metadata !1017)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1020
  %i.ce = load ptr, ptr %i.p, align 8, !alias.scope !1017, !noalias !1022, !nonnull !4, !noundef !4
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core3str8converts9from_utf8(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ce, i64 noundef %i.cc)
          to label %bb.s unwind label %bb.r, !noalias !1020

bb.r:                                             ; preds = %bb.q
  %i.cf = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d) #28
          to label %.body unwind label %bb.t, !noalias !1022

bb.s:                                             ; preds = %bb.q
  %i.cg = load i64, ptr %i.a, align 8, !range !16, !noalias !1020, !noundef !4
  %i.ch = trunc nuw i64 %i.cg to i1
  br i1 %i.ch, label %bb.aa, label %.thread85

.thread85:                                        ; preds = %bb.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.sroa.0, ptr noundef nonnull align 8 dereferenceable(16) %i.e, i64 16, i1 false)
  %.sroa.6.sroa.6.0.copyload409 = load i64, ptr %.sroa.6.sroa.6.0..sroa_idx408, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1020
  br label %bb.ah

bb.t:                                             ; preds = %bb.r
  %i.ci = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26, !noalias !1022
  unreachable

bb.u:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.f)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram4trie12TrieIteratorhINtNtNtNtB4_4iter8adapters4skip4SkipNtNtNtB4_3str4iter5BytesEEEBK_.exit46 unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.f)
          to label %common.resume unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ck = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26
  unreachable

common.resume:                                    ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i, %bb.v
  %common.resume.op = phi { ptr, i32 } [ %i.cj, %bb.v ], [ %.pn, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram4trie12TrieIteratorhINtNtNtNtB4_4iter8adapters4skip4SkipNtNtNtB4_3str4iter5BytesEEEBK_.exit46: ; preds = %bb.u
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.cl = trunc nuw i8 %.sroa.011.0 to i1
  br i1 %i.cl, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram4trie12TrieIteratorhINtNtNtNtB4_4iter8adapters4skip4SkipNtNtNtB4_3str4iter5BytesEEEBK_.exit46
  %i.cm = load i64, ptr %0, align 8, !range !16, !noundef !4
  %i.cn = trunc nuw i64 %i.cm to i1
  br i1 %i.cn, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.z, %bb.x, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram4trie12TrieIteratorhINtNtNtNtB4_4iter8adapters4skip4SkipNtNtNtB4_3str4iter5BytesEEEBK_.exit46
  %i.co = add i64 %.sroa.07.0, %.sroa.0.0154      ; 2 uses
  %i.cp = icmp ult i64 %i.co, %i.k
  br i1 %i.cp, label %bb.b, label %._crit_edge

bb.z:                                             ; preds = %bb.x
  %i.cq = load i64, ptr %i.z, align 8, !noundef !4
  call void @_RNvMs6_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7latticeNtB5_7Lattice6insert(ptr noalias noundef nonnull align 8 dereferenceable(112) %1, i64 noundef %.sroa.0.0154, i64 noundef %.sroa.07.0, double noundef %i.i, i64 noundef %i.cq)
  br label %bb.y

bb.aa:                                            ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.475.sroa.0.sroa.0)
  %i.cr = load i64, ptr %i.q, align 8, !noalias !1020 ; 2 uses
  %.sroa.475.sroa.5.16.copyload = load i64, ptr %.sroa.475.sroa.5.16..sroa_idx, align 8, !noalias !1020
  %.sroa.075.0.copyload = load i64, ptr %i.d, align 8, !noalias !1022 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.475.sroa.0.sroa.0, ptr noundef nonnull align 8 dereferenceable(16) %i.aa, i64 16, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.sroa.0, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.475.sroa.0.sroa.0, i64 16, i1 false), !noalias !1017
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.475.sroa.0.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1020
  call void @llvm.experimental.noalias.scope.decl(metadata !1023)
  call void @llvm.experimental.noalias.scope.decl(metadata !1026)
  %.not.i = icmp eq i64 %.sroa.075.0.copyload, -1
  br i1 %.not.i, label %bb.ah, label %bb.ab, !prof !1028

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1029
  store i64 %.sroa.075.0.copyload, ptr %i.b, align 8, !noalias !1031
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.sroa.0, i64 16, i1 false), !noalias !1031
  %.sroa.6.sroa.6.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %i.cr, ptr %.sroa.6.sroa.6.0..sroa.6.0..sroa_idx.sroa_idx, align 8, !noalias !1031
  %.sroa.870.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %.sroa.475.sroa.5.16.copyload, ptr %.sroa.870.0..sroa_idx, align 8, !noalias !1031
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @85, i64 noundef 43, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @84, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @108) #25
          to label %bb.af unwind label %bb.ac, !noalias !1032

bb.ac:                                            ; preds = %bb.ab
  %i.cs = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.b)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i48 unwind label %bb.ad, !noalias !1032

bb.ad:                                            ; preds = %bb.ac
  %i.ct = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.b)
          to label %.body49 unwind label %bb.ae, !noalias !1032

bb.ae:                                            ; preds = %bb.ad
  %i.cu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26, !noalias !1032
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i48: ; preds = %bb.ac
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.b)
          to label %.body unwind label %bb.ag

bb.af:                                            ; preds = %bb.ab
  unreachable

bb.ag:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i48
  %i.cv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body49

.body49:                                          ; preds = %bb.ad, %bb.ag
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26, !noalias !1032
  unreachable

bb.ah:                                            ; preds = %bb.aa, %.thread85
  %.sroa.6.sroa.6.0 = phi i64 [ %i.cr, %bb.aa ], [ %.sroa.6.sroa.6.0.copyload409, %.thread85 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.sroa.0, i64 16, i1 false), !alias.scope !1032, !noalias !1033
  store i64 %.sroa.6.sroa.6.0, ptr %.sroa.6.sroa.6.0..sroa_idx, align 8, !alias.scope !1032, !noalias !1033
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.sroa.0)
  %i.cw = load i64, ptr %i.s, align 8, !alias.scope !1034, !noalias !1037, !noundef !4
  %i.cx = icmp eq i64 %i.cw, 0
  br i1 %i.cx, label %select.unfold, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.cy = invoke noundef i64 @_RINvYNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.t, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.c)
          to label %.noexc54 unwind label %.loopexit.split-lp.loopexit ; 2 uses

.noexc54:                                         ; preds = %bb.ai
  call void @llvm.experimental.noalias.scope.decl(metadata !1039)
  call void @llvm.experimental.noalias.scope.decl(metadata !1042)
  %i.cz = lshr i64 %i.cy, 57
  %i.da = trunc nuw nsw i64 %i.cz to i8
  %i.db = load i64, ptr %i.u, align 8, !alias.scope !1045, !noalias !1046, !noundef !4 ; 2 uses
  %i.dc = load ptr, ptr %i.r, align 8, !alias.scope !1045, !noalias !1046, !nonnull !4, !noundef !4 ; 2 uses
  %i.dd = insertelement <16 x i8> poison, i8 %i.da, i64 0
  %i.de = shufflevector <16 x i8> %i.dd, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.aj

bb.aj:                                            ; preds = %bb.al, %.noexc54
  %.sroa.9.0.i.i.i = phi i64 [ 0, %.noexc54 ], [ %i.dv, %bb.al ]
  %.pn.i.i.i = phi i64 [ %i.cy, %.noexc54 ], [ %i.dw, %bb.al ]
  %.sroa.01.0.i.i.i = and i64 %.pn.i.i.i, %i.db   ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.dc, i64 %.sroa.01.0.i.i.i
  %.sroa.0.0.copyload.i26.i.i = load <16 x i8>, ptr %i.df, align 1, !noalias !1049 ; 2 uses
  %i.dg = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i, %i.de
  %i.dh = bitcast <16 x i1> %i.dg to i16          ; 2 uses
  %.not.i.not32.i.i = icmp eq i16 %i.dh, 0
  br i1 %.not.i.not32.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.aj, %bb.ak
  %.sroa.06.0.i33.i.i = phi i16 [ %i.du, %bb.ak ], [ %i.dh, %bb.aj ] ; 3 uses
  %i.di = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i33.i.i, i1 true)
  %i.dj = zext nneg i16 %i.di to i64
  %i.dk = add i64 %.sroa.01.0.i.i.i, %i.dj
  %i.dl = and i64 %i.dk, %i.db
  %i.dm = sub nsw i64 0, %i.dl
  %i.dn = getelementptr inbounds [32 x i8], ptr %i.dc, i64 %i.dm ; 2 uses
  %i.do = getelementptr inbounds i8, ptr %i.dn, i64 -32
  %i.dp = invoke noundef zeroext i1 @_RNvXCsgQfI1edjipl_9hashbrownNtNtCscdodAO9FK5_5alloc6string6StringINtB2_10EquivalentBq_E10equivalentCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.do)
          to label %.noexc55 unwind label %.loopexit

.noexc55:                                         ; preds = %.lr.ph.i.i
  br i1 %i.dp, label %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringmNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE3getBO_ECs2JiOgHzbbc7_10tokenizers.exit, label %bb.ak, !prof !432

._crit_edge.i.i:                                  ; preds = %bb.ak, %bb.aj
  %i.dq = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i, splat (i8 -1)
  %i.dr = bitcast <16 x i1> %i.dq to i16
  %i.ds = icmp eq i16 %i.dr, 0
  br i1 %i.ds, label %bb.al, label %select.unfold, !prof !18

bb.ak:                                            ; preds = %.noexc55
  %i.dt = add i16 %.sroa.06.0.i33.i.i, -1
  %i.du = and i16 %i.dt, %.sroa.06.0.i33.i.i      ; 2 uses
  %.not.i.not.i.i = icmp eq i16 %i.du, 0
  br i1 %.not.i.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.al:                                            ; preds = %._crit_edge.i.i
  %i.dv = add i64 %.sroa.9.0.i.i.i, 16            ; 2 uses
  %i.dw = add i64 %.sroa.01.0.i.i.i, %i.dv
  br label %bb.aj

.loopexit:                                        ; preds = %.lr.ph.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %bb.ai, %bb.at
  %lpad.loopexit93 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.as, %bb.aq, %select.unfold
  %lpad.loopexit.split-lp94 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit93, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp94, %.loopexit.split-lp.loopexit.split-lp ]
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i57 unwind label %bb.am

bb.am:                                            ; preds = %.loopexit.split-lp
  %i.dx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.body39 unwind label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.dy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i57: ; preds = %.loopexit.split-lp
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.body unwind label %bb.ax

_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringmNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE3getBO_ECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %.noexc55
  %i.dz = getelementptr inbounds i8, ptr %i.dn, i64 -8
  %i.ea = load i32, ptr %i.dz, align 4, !noundef !4
  %i.eb = zext i32 %i.ea to i64                   ; 4 uses
  %i.ec = load i64, ptr %i.v, align 8, !noundef !4 ; 2 uses
  %i.ed = icmp ugt i64 %i.ec, %i.eb
  br i1 %i.ed, label %bb.ap, label %bb.aq

select.unfold:                                    ; preds = %bb.ah, %._crit_edge.i.i
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @109) #25
          to label %bb.ao unwind label %.loopexit.split-lp.loopexit.split-lp

bb.ao:                                            ; preds = %bb.as, %bb.aq, %select.unfold
  unreachable

bb.ap:                                            ; preds = %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringmNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE3getBO_ECs2JiOgHzbbc7_10tokenizers.exit
  %i.ee = load ptr, ptr %i.w, align 8, !nonnull !4, !noundef !4
  %i.ef = getelementptr inbounds nuw [32 x i8], ptr %i.ee, i64 %i.eb ; 4 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  %i.eh = load i64, ptr %i.eg, align 8, !noundef !4 ; 2 uses
  %i.ei = load i64, ptr %i.x, align 8, !noundef !4
  %i.ej = icmp eq i64 %i.eh, %i.ei
  br i1 %i.ej, label %bb.ar, label %bb.as, !prof !432

bb.aq:                                            ; preds = %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringmNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE3getBO_ECs2JiOgHzbbc7_10tokenizers.exit
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.eb, i64 noundef %i.ec, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @110) #25
          to label %bb.ao unwind label %.loopexit.split-lp.loopexit.split-lp

bb.ar:                                            ; preds = %bb.ap
  %i.ek = load ptr, ptr %i.y, align 8, !nonnull !4, !noundef !4
  %i.el = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %i.em = load ptr, ptr %i.el, align 8, !nonnull !4, !noundef !4
  %bcmp = call i32 @bcmp(ptr nonnull %i.em, ptr nonnull %i.ek, i64 %i.eh)
  %i.en = icmp eq i32 %bcmp, 0
  br i1 %i.en, label %bb.at, label %bb.as, !prof !432

bb.as:                                            ; preds = %bb.ap, %bb.ar
  invoke void @_RINvNtCs4NRVxsYgnAr_4core9panicking13assert_failedNtNtCscdodAO9FK5_5alloc6string6StringBM_ECs2JiOgHzbbc7_10tokenizers(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ef, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.c, ptr noundef null, ptr undef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @111) #25
          to label %bb.ao unwind label %.loopexit.split-lp.loopexit.split-lp

bb.at:                                            ; preds = %bb.ar
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ef, i64 24
  %i.ep = load double, ptr %i.eo, align 8, !noundef !4
  invoke void @_RNvMs6_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram7latticeNtB5_7Lattice6insert(ptr noalias noundef nonnull align 8 dereferenceable(112) %1, i64 noundef %.sroa.0.0154, i64 noundef %i.cc, double noundef %i.ep, i64 noundef %i.eb)
          to label %bb.au unwind label %.loopexit.split-lp.loopexit

bb.au:                                            ; preds = %bb.at
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i62 unwind label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.eq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.body unwind label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.er = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i62: ; preds = %bb.au
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit66 unwind label %bb.o

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit66: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i62
  %i.es = icmp ne i64 %i.cc, %.sroa.07.0
  %i.et = trunc nuw i8 %.sroa.011.0 to i1
  %or.cond.not = or i1 %i.es, %i.et
  %spec.store.select = select i1 %or.cond.not, i8 %.sroa.011.0, i8 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.l

bb.ax:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i57, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i
  %i.eu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body39

.body39:                                          ; preds = %bb.ax, %bb.am, %bb.m
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs2_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram5modelNtB5_7Unigram18encode_unoptimized(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 1, 0) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 14 uses
  %i.g = alloca [24 x i8], align 8                ; 17 uses
  %i.h = alloca [24 x i8], align 8                ; 18 uses
  %i.i = alloca [24 x i8], align 8                ; 15 uses
  %i.j = alloca [112 x i8], align 8               ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 304
end_hunk_4
begin_hunk_5_@_RNvMs2_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram5modelNtB5_7Unigram4from:bb.a

bb.l:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringmEECs2JiOgHzbbc7_10tokenizers.exit
  %i.bm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTNtNtB7_6string6StringdEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %common.resume unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26
  unreachable

common.resume:                                    ; preds = %bb.ac, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringmEECs2JiOgHzbbc7_10tokenizers.exit53, %bb.l
  %common.resume.op = phi { ptr, i32 } [ %i.bm, %bb.l ], [ %.pn35.ph, %bb.ac ], [ %i.bv, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringmEECs2JiOgHzbbc7_10tokenizers.exit53 ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtBG_6string6StringdEEECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringmEECs2JiOgHzbbc7_10tokenizers.exit
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTNtNtB7_6string6StringdEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.n

bb.n:                                             ; preds = %bb.q, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtBG_6string6StringdEEECs2JiOgHzbbc7_10tokenizers.exit
  ret void

bb.o:                                             ; preds = %.lr.ph, %bb.y
  %.sroa.04.081 = phi double [ +inf, %.lr.ph ], [ %.sroa.04.1, %bb.y ] ; 2 uses
  %.sroa.0.080 = phi ptr [ %i.aw, %.lr.ph ], [ %i.bo, %bb.y ] ; 4 uses
  %.sroa.7.079 = phi i32 [ 0, %.lr.ph ], [ %i.bp, %bb.y ] ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.0.080, i64 32 ; 2 uses
  %i.bp = add i32 %.sroa.7.079, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.0.080, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.0.080, i64 16
  %i.bt = load i64, ptr %i.bs, align 8, !noundef !4 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.bt, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.s unwind label %.loopexit

._crit_edge:                                      ; preds = %bb.y, %bb.e
  %.sroa.04.0.lcssa = phi double [ +inf, %bb.e ], [ %.sroa.04.1, %bb.y ]
  %i.bu = phi <2 x i64> [ %i.aq, %bb.e ], [ %i.ax, %bb.y ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.g, ptr noundef nonnull align 8 dereferenceable(72) %i.k, i64 72, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.h, ptr noundef nonnull align 8 dereferenceable(64) %i.l, i64 64, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  invoke void @_RNvMs0_NtNtCs2JiOgHzbbc7_10tokenizers5utils5cacheINtB5_5CacheNtNtCscdodAO9FK5_5alloc6string6StringINtNtB11_3vec3VecBX_EE3newB9_(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.f, i64 noundef 10000)
          to label %bb.q unwind label %bb.p

bb.p:                                             ; preds = %._crit_edge
  %i.bv = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableThINtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram4trie4NodehEEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBZ_(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.g)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram4trie4TriehEEBK_.exit unwind label %bb.r

bb.q:                                             ; preds = %._crit_edge
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.11.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %i.h, i64 64, i1 false)
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 208
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.12.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(88) %i.f, i64 88, i1 false)
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.10.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(72) %i.g, i64 72, i1 false)
  %i.bw = zext i1 %4 to i8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  store i64 %2, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %3, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 296
  store double %.sroa.04.0.lcssa, ptr %.sroa.13.0..sroa_idx, align 8
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 304
  store <2 x i64> %i.bu, ptr %.sroa.14.0..sroa_idx, align 8
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 320
  store i8 1, ptr %.sroa.16.0..sroa_idx, align 8
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 321
  store i8 1, ptr %.sroa.17.0..sroa_idx, align 1
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 322
  store i8 %i.bw, ptr %.sroa.18.0..sroa_idx, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.n

bb.r:                                             ; preds = %bb.ab, %bb.aa, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram4trie4TriehEEBK_.exit, %bb.p, %bb.ac, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringmEECs2JiOgHzbbc7_10tokenizers.exit53
  %i.bx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram4trie4TriehEEBK_.exit: ; preds = %bb.p
  invoke void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringmEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.h)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringmEECs2JiOgHzbbc7_10tokenizers.exit53 unwind label %bb.r

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsiTTz6JxaXqu_5ahash8hash_map8AHashMapNtNtCscdodAO9FK5_5alloc6string6StringmEECs2JiOgHzbbc7_10tokenizers.exit53: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram4trie4TriehEEBK_.exit
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtBG_6string6StringdEEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24) %i.i) #28
          to label %common.resume unwind label %bb.r

bb.s:                                             ; preds = %bb.o
  %i.by = load i64, ptr %i.a, align 8, !range !16, !noundef !4
  %i.bz = trunc nuw i64 %i.by to i1
  %i.ca = load i64, ptr %i.ay, align 8, !range !287, !noundef !4 ; 3 uses
  br i1 %i.bz, label %bb.t, label %bb.u, !prof !18

bb.t:                                             ; preds = %bb.s
  %i.cb = load i64, ptr %i.az, align 8
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.ca, i64 %i.cb) #25
          to label %bb.z unwind label %.loopexit.split-lp

bb.u:                                             ; preds = %bb.s
  %i.cc = load ptr, ptr %i.az, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.cd = icmp ule i64 %i.bt, %i.ca
  call void @llvm.assume(i1 %i.cd)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not31 = icmp eq i64 %i.bt, 0
  br i1 %.not31, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.w, %bb.u
  store i64 %i.ca, ptr %i.j, align 8
  store ptr %i.cc, ptr %.sroa.423.0..sroa_idx, align 8
  store i64 %i.bt, ptr %.sroa.624.0..sroa_idx, align 8
  %i.ce = invoke { i32, i32 } @_RNvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB5_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringmNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE6insertCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.l, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.j, i32 noundef %.sroa.7.079)
          to label %bb.x unwind label %.loopexit  ; 0 uses

bb.w:                                             ; preds = %bb.u
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cc, ptr nonnull align 1 %i.br, i64 %i.bt, i1 false)
  br label %bb.v

bb.x:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  invoke void @_RNvMs_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram4trieINtB4_4TriehE4pushBa_(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.k, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.br, i64 noundef %i.bt)
          to label %bb.y unwind label %.loopexit

bb.y:                                             ; preds = %bb.x
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.0.080, i64 24
  %i.cg = load double, ptr %i.cf, align 8, !noundef !4 ; 2 uses
  %i.ch = fcmp olt double %i.cg, %.sroa.04.081
  %.sroa.04.1 = select i1 %i.ch, double %i.cg, double %.sroa.04.081 ; 2 uses
  %i.ci = icmp eq ptr %i.bo, %i.av
  br i1 %i.ci, label %._crit_edge, label %bb.o

bb.z:                                             ; preds = %bb.t
  unreachable

.loopexit:                                        ; preds = %bb.o, %bb.v, %bb.x
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

.loopexit.split-lp:                               ; preds = %.invoke, %bb.t
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.aa

bb.aa:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableThINtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram4trie4NodehEEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBZ_(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.k)
          to label %bb.ab unwind label %bb.r

bb.ab:                                            ; preds = %bb.c, %bb.aa
  %.pn33.ph = phi { ptr, i32 } [ %i.aj, %bb.c ], [ %lpad.phi, %bb.aa ]
  invoke void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringmEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.l)
          to label %bb.ac unwind label %bb.r

bb.ac:                                            ; preds = %bb.b, %bb.ab
  %.pn35.ph = phi { ptr, i32 } [ %i.y, %bb.b ], [ %.pn33.ph, %bb.ab ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtBG_6string6StringdEEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24) %1) #28
          to label %common.resume unwind label %bb.r
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs2_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram5modelNtB5_7Unigram6encode(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [32 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %i.e = alloca [40 x i8], align 8                ; 8 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 6 uses
  %i.j = alloca [24 x i8], align 8                ; 5 uses
  %i.k = alloca [24 x i8], align 8                ; 7 uses
  %i.l = alloca [24 x i8], align 8                ; 5 uses
  %i.m = alloca [24 x i8], align 8                ; 7 uses
  %i.n = alloca [24 x i8], align 8                ; 16 uses
  %i.o = alloca [24 x i8], align 8                ; 13 uses
  %.sroa.6.sroa.0.i = alloca [16 x i8], align 8   ; 5 uses
  %i.p = alloca [24 x i8], align 8                ; 12 uses
  %i.q = alloca [24 x i8], align 8                ; 7 uses
  %i.r = alloca [24 x i8], align 8                ; 9 uses
  %i.s = alloca [56 x i8], align 8                ; 16 uses
  %i.t = alloca [24 x i8], align 8                ; 15 uses
  %i.u = alloca [24 x i8], align 8                ; 6 uses
  %i.v = alloca [24 x i8], align 8                ; 4 uses
  %i.w = alloca [24 x i8], align 8                ; 7 uses
  %i.x = alloca [48 x i8], align 8                ; 3 uses
  %i.y = alloca [24 x i8], align 8                ; 6 uses
  %i.z = alloca [24 x i8], align 8                ; 6 uses
  %i.aa = alloca [24 x i8], align 8               ; 4 uses
  %i.ab = alloca [24 x i8], align 8               ; 7 uses
  %i.ac = alloca [24 x i8], align 8               ; 6 uses
  %i.ad = alloca [24 x i8], align 8               ; 9 uses
  %i.ae = alloca [24 x i8], align 8               ; 9 uses
  %i.af = alloca [24 x i8], align 8               ; 6 uses
  %i.ag = icmp eq i64 %3, 0
  br i1 %i.ag, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ai = load i64, ptr %i.ah, align 8, !range !16, !noundef !4
  %.not = icmp eq i64 %i.ai, 0
  br i1 %.not, label %bb.e, label %bb.f

bb.d:                                             ; preds = %bb.h, %bb.ev, %bb.i, %bb.t, %bb.b
  ret void

bb.e:                                             ; preds = %bb.f, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af)
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 208 ; 2 uses
  call void @_RINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers5utils5cacheINtB6_5CacheNtNtCscdodAO9FK5_5alloc6string6StringINtNtB12_3vec3VecBY_EE3geteEBa_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.af, ptr noundef nonnull align 8 %i.aj, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3)
  %i.ak = load i64, ptr %i.af, align 8, !range !19, !noundef !4
  %.not45 = icmp eq i64 %i.ak, -1
  br i1 %.not45, label %bb.p, label %bb.j

bb.f:                                             ; preds = %bb.c
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.am = load double, ptr %i.al, align 8, !noundef !4
  %i.an = fcmp oeq double %i.am, 0.000000e+00
  br i1 %i.an, label %bb.e, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  call fastcc void @_RNvMs2_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram5modelNtB5_7Unigram18encode_unoptimized(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.z, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3)
  %i.ao = load i64, ptr %i.z, align 8, !range !19, !noundef !4 ; 2 uses
  %i.ap = icmp eq i64 %i.ao, -1
  %i.aq = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8            ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.at = load ptr, ptr %i.as, align 8            ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  br i1 %i.ap, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ar, ptr %i.au, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.at, ptr %i.av, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.d

bb.i:                                             ; preds = %bb.g
  store i64 %i.ao, ptr %0, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ar, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.at, ptr %.sroa.3.0..sroa_idx, align 8
  br label %bb.d

bb.j:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, ptr noundef nonnull align 8 dereferenceable(24) %i.af, i64 24, i1 false)
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.az = load i64, ptr %i.ay, align 8, !noundef !4 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !1082
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !1082
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.u, i64 noundef range(i64 0, 384307168202282326) %i.az, i1 noundef zeroext false, i64 noundef 8, i64 noundef 24)
          to label %.noexc unwind label %bb.q

.noexc:                                           ; preds = %bb.j
  %i.ba = load i64, ptr %i.u, align 8, !range !16, !noalias !1082, !noundef !4
  %i.bb = trunc nuw i64 %i.ba to i1
  %i.bc = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.bd = load i64, ptr %i.bc, align 8, !range !287, !noalias !1082, !noundef !4 ; 5 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  br i1 %i.bb, label %bb.k, label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2JiOgHzbbc7_10tokenizers.exit.i, !prof !18

bb.k:                                             ; preds = %.noexc
  %i.bf = load i64, ptr %i.be, align 8, !noalias !1082
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.bd, i64 %i.bf) #25
          to label %.noexc49 unwind label %bb.q

.noexc49:                                         ; preds = %bb.k
  unreachable

_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2JiOgHzbbc7_10tokenizers.exit.i: ; preds = %.noexc
  %i.bg = load ptr, ptr %i.be, align 8, !noalias !1082, !nonnull !4, !noundef !4 ; 2 uses
  %i.bh = icmp ule i64 %i.az, %i.bd
  tail call void @llvm.assume(i1 %i.bh)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !1082
  store i64 %i.bd, ptr %i.w, align 8, !noalias !1082
  %i.bi = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr %i.bg, ptr %i.bi, align 8, !noalias !1082
  %i.bj = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 2 uses
  %i.bk = getelementptr inbounds nuw [24 x i8], ptr %i.ax, i64 %i.az
  %i.bl = icmp eq i64 %i.bd, 0
  br i1 %i.bl, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2JiOgHzbbc7_10tokenizers.exit.i, %bb.m
  %.sroa.012.023.i = phi ptr [ %i.bp, %bb.m ], [ %i.ax, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2JiOgHzbbc7_10tokenizers.exit.i ] ; 3 uses
  %.sroa.7.022.i = phi i64 [ %i.bo, %bb.m ], [ 0, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2JiOgHzbbc7_10tokenizers.exit.i ] ; 3 uses
  %.sroa.10.021.i = phi i64 [ %i.bm, %bb.m ], [ %i.bd, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2JiOgHzbbc7_10tokenizers.exit.i ]
  %i.bm = add i64 %.sroa.10.021.i, -1             ; 2 uses
  %i.bn = icmp eq ptr %.sroa.012.023.i, %i.bk
  br i1 %i.bn, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !1082
  invoke void @_RNvXs4_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.v, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.012.023.i)
          to label %bb.m unwind label %bb.o, !noalias !1086

bb.m:                                             ; preds = %bb.l
  %i.bo = add nuw nsw i64 %.sroa.7.022.i, 1
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.012.023.i, i64 24
  %i.bq = getelementptr inbounds nuw [24 x i8], ptr %i.bg, i64 %.sroa.7.022.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bq, ptr noundef nonnull align 8 dereferenceable(24) %i.v, i64 24, i1 false), !noalias !1086
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !1082
  %i.br = icmp eq i64 %i.bm, 0
  br i1 %i.br, label %.loopexit, label %.lr.ph.i

bb.n:                                             ; preds = %bb.o
  %i.bs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26, !noalias !1086
  unreachable

bb.o:                                             ; preds = %bb.l
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.022.i, ptr %i.bj, align 8, !noalias !1082
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_6string6StringEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24) %i.w) #28
          to label %.body unwind label %bb.n, !noalias !1086

bb.p:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 321
  %i.bu = load i8, ptr %i.bt, align 1, !range !3, !noundef !4
  %i.bv = trunc nuw i8 %i.bu to i1
  br i1 %i.bv, label %bb.w, label %bb.v

bb.q:                                             ; preds = %bb.k, %bb.j
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.o, %bb.q
  %eh.lpad-body = phi { ptr, i32 } [ %i.bw, %bb.q ], [ %lpad.loopexit.i, %bb.o ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_6string6StringEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24) %i.ae) #28
          to label %common.resume unwind label %bb.u

.loopexit:                                        ; preds = %bb.m, %.lr.ph.i, %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2JiOgHzbbc7_10tokenizers.exit.i
  store i64 %i.az, ptr %i.bj, align 8, !noalias !1082
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.w, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !1082
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ae)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_6string6StringEECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.r

bb.r:                                             ; preds = %.loopexit
  %i.bx = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ae)
          to label %common.resume unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.by = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26
  unreachable

common.resume:                                    ; preds = %bb.y, %bb.ap, %bb.cs, %bb.dw, %.body, %bb.ez, %bb.r
  %common.resume.op = phi { ptr, i32 } [ %.pn, %bb.ez ], [ %i.bx, %bb.r ], [ %eh.lpad-body, %.body ], [ %i.ml, %bb.dw ], [ %i.cu, %bb.y ], [ %i.fl, %bb.ap ], [ %.pn105.pn.i, %bb.cs ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_6string6StringEECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %.loopexit
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ae)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  br label %bb.t

bb.t:                                             ; preds = %bb.ex, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_6string6StringEECs2JiOgHzbbc7_10tokenizers.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af)
  br label %bb.d

bb.u:                                             ; preds = %bb.fh, %bb.ez, %.body
  %i.bz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.v:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  call fastcc void @_RNvMs2_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram5modelNtB5_7Unigram18encode_unoptimized(ptr noalias noundef align 8 captures(none) dereferenceable(24) %i.ac, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3)
  %i.ca = load i64, ptr %i.ac, align 8, !range !19, !noundef !4 ; 2 uses
  %i.cb = icmp eq i64 %i.ca, -1
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8            ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.cf = load ptr, ptr %i.ce, align 8            ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac)
  br i1 %i.cb, label %bb.ev, label %bb.eu

bb.w:                                             ; preds = %bb.p
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1087)
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 296
  %i.ch = load double, ptr %i.cg, align 8, !noalias !1090, !noundef !4
  %i.ci = fadd double %i.ch, -1.000000e+01
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !1090
  %i.cj = add i64 %3, 1                           ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1092
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1092
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef range(i64 2, 1) %i.cj, i1 noundef zeroext false, i64 noundef 8, i64 noundef 32), !noalias !1092
  %i.ck = load i64, ptr %i.b, align 8, !range !16, !noalias !1092, !noundef !4
  %i.cl = trunc nuw i64 %i.ck to i1
  %i.cm = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.cn = load i64, ptr %i.cm, align 8, !range !287, !noalias !1092, !noundef !4 ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.cl, label %bb.x, label %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2JiOgHzbbc7_10tokenizers.exit.i.i, !prof !18

bb.x:                                             ; preds = %bb.w
  %i.cp = load i64, ptr %i.co, align 8, !noalias !1092
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.cn, i64 %i.cp) #25, !noalias !1096
  unreachable

_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2JiOgHzbbc7_10tokenizers.exit.i.i: ; preds = %bb.w
  %i.cq = load ptr, ptr %i.co, align 8, !noalias !1092, !nonnull !4, !noundef !4
  %i.cr = icmp ule i64 %i.cj, %i.cn
  tail call void @llvm.assume(i1 %i.cr)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1092
  store i64 %i.cn, ptr %i.d, align 8, !noalias !1092
  %i.cs = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.cq, ptr %i.cs, align 8, !noalias !1092
  %i.ct = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 0, ptr %i.ct, align 8, !noalias !1092
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1092
  store i64 0, ptr %i.c, align 8, !noalias !1097
  %.sroa.4199.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4199.0..sroa_idx.i, i8 0, i64 16, i1 false), !noalias !1090
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNvMs2_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram5modelNtBM_7Unigram16encode_optimized12BestPathNodeE11extend_withBS_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef range(i64 2, 1) %i.cj, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.c)
          to label %_RINvXNtNtCscdodAO9FK5_5alloc3vec14spec_from_elemNtNvMs2_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram5modelNtBS_7Unigram16encode_optimized12BestPathNodeNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalEBY_.exit.i unwind label %bb.y, !noalias !1096

bb.y:                                             ; preds = %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2JiOgHzbbc7_10tokenizers.exit.i.i
  %i.cu = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNvMs2_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram5modelNtB1f_7Unigram16encode_optimized12BestPathNodeEEB1l_(ptr noalias noundef align 8 dereferenceable(24) %i.d) #28
          to label %common.resume unwind label %bb.z, !noalias !1096

bb.z:                                             ; preds = %bb.y
  %i.cv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26, !noalias !1096
  unreachable

_RINvXNtNtCscdodAO9FK5_5alloc3vec14spec_from_elemNtNvMs2_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram5modelNtBS_7Unigram16encode_optimized12BestPathNodeNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalEBY_.exit.i: ; preds = %_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs2JiOgHzbbc7_10tokenizers.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1092
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !1098
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1092
  %i.cw = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 4 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 4 uses
  %invariant.op.i = add i64 %3, -1
  %i.cy = getelementptr inbounds nuw i8, ptr %2, i64 %3
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 72
  %.sroa.027.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.027.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  %i.da = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.db = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.dc = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  %.sroa.6.i.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %.sroa.6.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  br label %bb.ab

bb.aa:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram4trie12TrieIteratorhINtNtNtNtB4_4iter8adapters4skip4SkipNtNtNtB4_3str4iter5BytesEEEBK_.exit176._crit_edge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !1090
  store i64 0, ptr %i.o, align 8, !noalias !1090
  %i.dl = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 6 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.dl, align 8, !noalias !1090
  %i.dm = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 9 uses
  store i64 0, ptr %i.dm, align 8, !noalias !1090
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !1090
  store i64 0, ptr %i.n, align 8, !noalias !1090
  %i.dn = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 8 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.dn, align 8, !noalias !1090
  %i.do = getelementptr inbounds nuw i8, ptr %i.n, i64 16 ; 9 uses
  store i64 0, ptr %i.do, align 8, !noalias !1090
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 320
  %i.dq = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.dr = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %.sroa.475.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.676.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.ds = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.dt = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %.sroa.468.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.669.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  br label %bb.ad

bb.ab:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram4trie12TrieIteratorhINtNtNtNtB4_4iter8adapters4skip4SkipNtNtNtB4_3str4iter5BytesEEEBK_.exit176._crit_edge.i, %_RINvXNtNtCscdodAO9FK5_5alloc3vec14spec_from_elemNtNvMs2_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram5modelNtBS_7Unigram16encode_optimized12BestPathNodeNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalEBY_.exit.i
  %.sroa.011.0355.i = phi i64 [ 0, %_RINvXNtNtCscdodAO9FK5_5alloc3vec14spec_from_elemNtNvMs2_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram5modelNtBS_7Unigram16encode_optimized12BestPathNodeNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalEBY_.exit.i ], [ %.pre470.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram4trie12TrieIteratorhINtNtNtNtB4_4iter8adapters4skip4SkipNtNtNtB4_3str4iter5BytesEEEBK_.exit176._crit_edge.i ] ; 15 uses
  %i.du = load i64, ptr %i.cx, align 8, !noalias !1090, !noundef !4 ; 2 uses
  %i.dv = icmp ult i64 %.sroa.011.0355.i, %i.du
  br i1 %i.dv, label %bb.cv, label %.invoke598.i

bb.ac:                                            ; preds = %bb.cf
  %i.dw = load i64, ptr %i.do, align 8, !noalias !1090, !noundef !4 ; 5 uses
  %i.dx = icmp ult i64 %i.dw, 384307168202282326
  call void @llvm.assume(i1 %i.dx)
  %i.dy = icmp eq i64 %i.dw, 0
  br i1 %i.dy, label %._crit_edge468.i, label %bb.ae

._crit_edge468.i:                                 ; preds = %bb.ac
  %.pre469.i = load i64, ptr %i.dm, align 8, !noalias !1090
  br label %bb.af

bb.ad:                                            ; preds = %bb.cf, %bb.aa
  %.sroa.0.0357.i = phi i64 [ %3, %bb.aa ], [ %i.fr, %bb.cf ] ; 16 uses
  %i.dz = load i64, ptr %i.cx, align 8, !noalias !1090, !noundef !4 ; 2 uses
  %i.ea = icmp ult i64 %.sroa.0.0357.i, %i.dz
  br i1 %i.ea, label %bb.ar, label %bb.as

bb.ae:                                            ; preds = %bb.ac
  %i.eb = load ptr, ptr %i.dn, align 8, !noalias !1090, !nonnull !4, !noundef !4 ; 3 uses
  %i.ec = lshr i64 %i.dw, 1                       ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1099)
  call void @llvm.experimental.noalias.scope.decl(metadata !1102)
  %.not.i108.i = icmp eq i64 %i.ec, 0
  br i1 %.not.i108.i, label %_RINvNvMNtCs4NRVxsYgnAr_4core5sliceSp7reverse7revswapNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit11.preheader.i.i

_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit11.preheader.i.i: ; preds = %bb.ae
  %i.ed = getelementptr inbounds nuw [24 x i8], ptr %i.eb, i64 %i.dw
  br label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit11.i.i

_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit11.i.i: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit11.i.i, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit11.preheader.i.i
  %.sroa.0.016.i.i = phi i64 [ %i.el, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit11.i.i ], [ 0, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit11.preheader.i.i ] ; 3 uses
  %i.ee = xor i64 %.sroa.0.016.i.i, -1
  %i.ef = getelementptr inbounds nuw [24 x i8], ptr %i.eb, i64 %.sroa.0.016.i.i ; 3 uses
  %i.eg = getelementptr [24 x i8], ptr %i.ed, i64 %i.ee ; 3 uses
  %i.eh = load <2 x i64>, ptr %i.ef, align 1, !alias.scope !1104, !noalias !1108
  %i.ei = load <2 x i64>, ptr %i.eg, align 1, !alias.scope !1109, !noalias !1112
  store <2 x i64> %i.ei, ptr %i.ef, align 1, !alias.scope !1104, !noalias !1108
  store <2 x i64> %i.eh, ptr %i.eg, align 1, !alias.scope !1109, !noalias !1112
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ef, i64 16 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eg, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1113)
  call void @llvm.experimental.noalias.scope.decl(metadata !1115)
  %.sroa.0.0.copyload.i.i.2.i.i.i.i.i = load i64, ptr %i.ej, align 1, !alias.scope !1117, !noalias !1118
  %.sroa.02.0.copyload.i.i.2.i.i.i.i.i = load i64, ptr %i.ek, align 1, !alias.scope !1119, !noalias !1120
  store i64 %.sroa.02.0.copyload.i.i.2.i.i.i.i.i, ptr %i.ej, align 1, !alias.scope !1117, !noalias !1118
  store i64 %.sroa.0.0.copyload.i.i.2.i.i.i.i.i, ptr %i.ek, align 1, !alias.scope !1119, !noalias !1120
  %i.el = add nuw nsw i64 %.sroa.0.016.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.el, %i.ec
  br i1 %exitcond.not.i.i, label %_RINvNvMNtCs4NRVxsYgnAr_4core5sliceSp7reverse7revswapNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit.loopexit.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit11.i.i

bb.af:                                            ; preds = %bb.ak, %._crit_edge468.i
  %i.em = phi i64 [ %.pre469.i, %._crit_edge468.i ], [ %i.fh, %bb.ak ] ; 3 uses
  %.sroa.9.0.copyload219 = inttoptr i64 %i.em to ptr
  %i.en = load ptr, ptr %i.dl, align 8, !noalias !1090, !nonnull !4, !noundef !4 ; 3 uses
  %i.eo = lshr i64 %i.em, 1                       ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1121)
  call void @llvm.experimental.noalias.scope.decl(metadata !1124)
  %.not.i109.i = icmp eq i64 %i.eo, 0
  br i1 %.not.i109.i, label %_RINvNvMNtCs4NRVxsYgnAr_4core5sliceSp7reverse7revswapNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit120.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit11.preheader.i110.i

_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit11.preheader.i110.i: ; preds = %bb.af
  %i.ep = getelementptr inbounds nuw [24 x i8], ptr %i.en, i64 %i.em
  br label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit11.i111.i

_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit11.i111.i: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit11.i111.i, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit11.preheader.i110.i
  %.sroa.0.016.i112.i = phi i64 [ %i.ex, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit11.i111.i ], [ 0, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit11.preheader.i110.i ] ; 3 uses
  %i.eq = xor i64 %.sroa.0.016.i112.i, -1
  %i.er = getelementptr inbounds nuw [24 x i8], ptr %i.en, i64 %.sroa.0.016.i112.i ; 3 uses
  %i.es = getelementptr [24 x i8], ptr %i.ep, i64 %i.eq ; 3 uses
  %i.et = load <2 x i64>, ptr %i.er, align 1, !alias.scope !1126, !noalias !1130
  %i.eu = load <2 x i64>, ptr %i.es, align 1, !alias.scope !1131, !noalias !1134
  store <2 x i64> %i.eu, ptr %i.er, align 1, !alias.scope !1126, !noalias !1130
  store <2 x i64> %i.et, ptr %i.es, align 1, !alias.scope !1131, !noalias !1134
  %i.ev = getelementptr inbounds nuw i8, ptr %i.er, i64 16 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.es, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1135)
  call void @llvm.experimental.noalias.scope.decl(metadata !1137)
  %.sroa.0.0.copyload.i.i.2.i.i.i.i117.i = load i64, ptr %i.ev, align 1, !alias.scope !1139, !noalias !1140
  %.sroa.02.0.copyload.i.i.2.i.i.i.i118.i = load i64, ptr %i.ew, align 1, !alias.scope !1141, !noalias !1142
  store i64 %.sroa.02.0.copyload.i.i.2.i.i.i.i118.i, ptr %i.ev, align 1, !alias.scope !1139, !noalias !1140
  store i64 %.sroa.0.0.copyload.i.i.2.i.i.i.i117.i, ptr %i.ew, align 1, !alias.scope !1141, !noalias !1142
  %i.ex = add nuw nsw i64 %.sroa.0.016.i112.i, 1  ; 2 uses
  %exitcond.not.i119.i = icmp eq i64 %i.ex, %i.eo
  br i1 %exitcond.not.i119.i, label %_RINvNvMNtCs4NRVxsYgnAr_4core5sliceSp7reverse7revswapNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit120.i.loopexit, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit11.i111.i

.body121.i:                                       ; preds = %bb.cm, %bb.cb, %.body150.i, %bb.bo, %bb.ai, %.loopexit.split-lp.i, %.loopexit.i
  %.pn.i = phi { ptr, i32 } [ %eh.lpad-body151.i, %.body150.i ], [ %i.ii, %bb.cb ], [ %i.fd, %bb.ai ], [ %i.hm, %bb.bo ], [ %i.iy, %bb.cm ], [ %lpad.loopexit.i50, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_6string6StringEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24) %i.n) #28
          to label %bb.cu unwind label %bb.cq, !noalias !1143

.loopexit.i:                                      ; preds = %bb.cg, %bb.bv, %_RINvNvMNtCs4NRVxsYgnAr_4core5sliceSp7reverse7revswapNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit137.i
  %lpad.loopexit.i50 = landingpad { ptr, i32 }
          cleanup
  br label %.body121.i

.loopexit.split-lp.i:                             ; preds = %.invoke596.i, %.invoke.i, %bb.av, %bb.as, %_RINvNvMNtCs4NRVxsYgnAr_4core5sliceSp7reverse7revswapNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.body121.i

_RINvNvMNtCs4NRVxsYgnAr_4core5sliceSp7reverse7revswapNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit.loopexit.i: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit11.i.i
  %.pre466.i = load ptr, ptr %i.dn, align 8, !noalias !1090
  %.pre467.i = load i64, ptr %i.do, align 8, !noalias !1090
  br label %_RINvNvMNtCs4NRVxsYgnAr_4core5sliceSp7reverse7revswapNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit.i

_RINvNvMNtCs4NRVxsYgnAr_4core5sliceSp7reverse7revswapNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit.i: ; preds = %_RINvNvMNtCs4NRVxsYgnAr_4core5sliceSp7reverse7revswapNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit.loopexit.i, %bb.ae
  %i.ey = phi i64 [ %.pre467.i, %_RINvNvMNtCs4NRVxsYgnAr_4core5sliceSp7reverse7revswapNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit.loopexit.i ], [ %i.dw, %bb.ae ]
  %i.ez = phi ptr [ %.pre466.i, %_RINvNvMNtCs4NRVxsYgnAr_4core5sliceSp7reverse7revswapNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit.loopexit.i ], [ %i.eb, %bb.ae ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !1090
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1090
  invoke void @_RINvNtCscdodAO9FK5_5alloc3str17join_generic_copyehNtNtB4_6string6StringECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.ez, i64 noundef %i.ey, ptr noalias noundef nonnull readonly captures(address, read_provenance) inttoptr (i64 1 to ptr), i64 noundef 0)
          to label %bb.ag unwind label %.loopexit.split-lp.i, !noalias !1143

bb.ag:                                            ; preds = %_RINvNvMNtCs4NRVxsYgnAr_4core5sliceSp7reverse7revswapNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !1090
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1090
  %i.fa = load i64, ptr %i.dm, align 8, !alias.scope !1144, !noalias !1147, !noundef !4 ; 3 uses
  %i.fb = load i64, ptr %i.o, align 8, !range !93, !alias.scope !1144, !noalias !1147, !noundef !4
  %i.fc = icmp eq i64 %i.fa, %i.fb
  br i1 %i.fc, label %bb.ah, label %bb.ak

bb.ah:                                            ; preds = %bb.ag
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringE8grow_oneCs2AWtUsOyxgP_3std(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %bb.ak unwind label %bb.ai, !noalias !1149

bb.ai:                                            ; preds = %bb.ah
  %i.fd = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j) #28
          to label %.body121.i unwind label %bb.aj, !noalias !1143

bb.aj:                                            ; preds = %bb.ai
  %i.fe = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26, !noalias !1143
  unreachable

bb.ak:                                            ; preds = %bb.ah, %bb.ag
  %i.ff = load ptr, ptr %i.dl, align 8, !alias.scope !1144, !noalias !1147, !nonnull !4, !noundef !4
  %i.fg = getelementptr inbounds nuw [24 x i8], ptr %i.ff, i64 %i.fa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fg, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false), !noalias !1143
  %i.fh = add i64 %i.fa, 1                        ; 2 uses
  store i64 %i.fh, ptr %i.dm, align 8, !alias.scope !1144, !noalias !1147
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1090
  br label %bb.af

_RINvNvMNtCs4NRVxsYgnAr_4core5sliceSp7reverse7revswapNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit120.i.loopexit: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtCscdodAO9FK5_5alloc6string6String12split_at_mutCs2JiOgHzbbc7_10tokenizers.exit11.i111.i
  %.sroa.6.0.copyload.pre = load ptr, ptr %i.dl, align 8, !noalias !1087
  %.sroa.9.0.copyload.pre = load ptr, ptr %i.dm, align 8, !noalias !1087
  br label %_RINvNvMNtCs4NRVxsYgnAr_4core5sliceSp7reverse7revswapNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit120.i

_RINvNvMNtCs4NRVxsYgnAr_4core5sliceSp7reverse7revswapNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit120.i: ; preds = %_RINvNvMNtCs4NRVxsYgnAr_4core5sliceSp7reverse7revswapNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit120.i.loopexit, %bb.af
  %.sroa.9.0.copyload = phi ptr [ %.sroa.9.0.copyload.pre, %_RINvNvMNtCs4NRVxsYgnAr_4core5sliceSp7reverse7revswapNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit120.i.loopexit ], [ %.sroa.9.0.copyload219, %bb.af ] ; 2 uses
  %.sroa.6.0.copyload = phi ptr [ %.sroa.6.0.copyload.pre, %_RINvNvMNtCs4NRVxsYgnAr_4core5sliceSp7reverse7revswapNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit120.i.loopexit ], [ %i.en, %bb.af ] ; 2 uses
  %.sroa.0.0.copyload = load i64, ptr %i.o, align 8, !noalias !1087 ; 2 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %bb.am unwind label %bb.al, !noalias !1143

bb.al:                                            ; preds = %_RINvNvMNtCs4NRVxsYgnAr_4core5sliceSp7reverse7revswapNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit120.i
  %i.fi = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %.body174.i unwind label %bb.an, !noalias !1143

bb.am:                                            ; preds = %_RINvNvMNtCs4NRVxsYgnAr_4core5sliceSp7reverse7revswapNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit120.i
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_6string6StringEECs2JiOgHzbbc7_10tokenizers.exit.i unwind label %bb.ao, !noalias !1143
end_hunk_5
begin_hunk_6_@_RNvMs2_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram5modelNtB5_7Unigram6encode:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.jb, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false), !noalias !1143
  %i.jc = add i64 %i.iv, 1
  store i64 %i.jc, ptr %i.do, align 8, !alias.scope !1190, !noalias !1193
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !1090
  br label %bb.cf

bb.cq:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i189.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i.i, %bb.cu, %bb.cs, %.body121.i
  %i.jd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body160.i

.body160.i:                                       ; preds = %bb.em, %bb.dd, %bb.cr, %bb.cq
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26, !noalias !1143
  unreachable

.body174.i:                                       ; preds = %bb.dm, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i.i, %.loopexit.split-lp250.i, %.loopexit249.i, %bb.cu, %bb.ao, %bb.al
  %.pn105.pn.i = phi { ptr, i32 } [ %.pn105.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i.i ], [ %i.fi, %bb.al ], [ %.pn.i, %bb.cu ], [ %i.fk, %bb.ao ], [ %i.lq, %bb.dm ], [ %lpad.loopexit251.i, %.loopexit249.i ], [ %lpad.loopexit.split-lp252.i, %.loopexit.split-lp250.i ]
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNvMs2_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram5modelNtBM_7Unigram16encode_optimized12BestPathNodeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBS_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %bb.cs unwind label %bb.cr, !noalias !1143

bb.cr:                                            ; preds = %.body174.i
  %i.je = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNvMs2_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram5modelNtBT_7Unigram16encode_optimized12BestPathNodeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBZ_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %.body160.i unwind label %bb.ct, !noalias !1143

bb.cs:                                            ; preds = %.body174.i
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNvMs2_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram5modelNtBT_7Unigram16encode_optimized12BestPathNodeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBZ_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %common.resume unwind label %bb.cq, !noalias !1143

bb.ct:                                            ; preds = %bb.cr
  %i.jf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26, !noalias !1143
  unreachable

bb.cu:                                            ; preds = %.body121.i
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_6string6StringEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24) %i.o) #28
          to label %.body174.i unwind label %bb.cq, !noalias !1143

bb.cv:                                            ; preds = %bb.ab
  %i.jg = load ptr, ptr %i.cw, align 8, !noalias !1090, !nonnull !4, !noundef !4
  %i.jh = getelementptr inbounds nuw [32 x i8], ptr %i.jg, i64 %.sroa.011.0355.i
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 24
  %i.jj = load double, ptr %i.ji, align 8, !noalias !1143, !noundef !4 ; 2 uses
  %i.jk = icmp eq i64 %.sroa.011.0355.i, 0
  br i1 %i.jk, label %._crit_edge.i, label %bb.cw

._crit_edge.i:                                    ; preds = %bb.cv
  %.pre.i = load i8, ptr %2, align 1, !alias.scope !1087, !noalias !1196
  br label %bb.cx

bb.cw:                                            ; preds = %bb.cv
  %i.jl = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.011.0355.i
  %i.jm = load i8, ptr %i.jl, align 1, !alias.scope !1199, !noalias !1143, !noundef !4 ; 2 uses
  %i.jn = icmp sgt i8 %i.jm, -65
  br i1 %i.jn, label %bb.cx, label %bb.cy

.invoke598.i:                                     ; preds = %bb.do, %bb.ab
  %i.jo = phi i64 [ %.pre470.i, %bb.do ], [ %.sroa.011.0355.i, %bb.ab ]
  %i.jp = phi i64 [ %i.lt, %bb.do ], [ %i.du, %bb.ab ]
  %i.jq = phi ptr [ @118, %bb.do ], [ @116, %bb.ab ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.jo, i64 noundef %i.jp, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.jq) #25
          to label %.cont599.i unwind label %.loopexit.split-lp250.i, !noalias !1143

.cont599.i:                                       ; preds = %.invoke598.i
  unreachable

.loopexit249.i:                                   ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i173.i
  %lpad.loopexit251.i = landingpad { ptr, i32 }
          cleanup
  br label %.body174.i

.loopexit.split-lp250.i:                          ; preds = %bb.du, %bb.cy, %.invoke598.i
  %lpad.loopexit.split-lp252.i = landingpad { ptr, i32 }
          cleanup
  br label %.body174.i

bb.cx:                                            ; preds = %bb.cw, %._crit_edge.i
  %i.jr = phi i8 [ %.pre.i, %._crit_edge.i ], [ %i.jm, %bb.cw ] ; 4 uses
  %i.js = getelementptr inbounds nuw i8, ptr %2, i64 %.sroa.011.0355.i ; 3 uses
  %i.jt = icmp sgt i8 %i.jr, -1
  br i1 %i.jt, label %.thread231.i, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i: ; preds = %bb.cx
  %i.ju = getelementptr inbounds nuw i8, ptr %i.js, i64 1
  %i.jv = and i8 %i.jr, 31
  %i.jw = zext nneg i8 %i.jv to i32               ; 3 uses
  %i.jx = icmp ne i64 %.sroa.011.0355.i, %invariant.op.i
  call void @llvm.assume(i1 %i.jx)
  %i.jy = load i8, ptr %i.ju, align 1, !alias.scope !1087, !noalias !1196, !noundef !4
  %i.jz = shl nuw nsw i32 %i.jw, 6
  %i.ka = and i8 %i.jy, 63
  %i.kb = zext nneg i8 %i.ka to i32               ; 2 uses
  %i.kc = or disjoint i32 %i.jz, %i.kb
  %i.kd = icmp samesign ugt i8 %i.jr, -33
  br i1 %i.kd, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i, label %bb.cz

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i
  %i.ke = getelementptr inbounds nuw i8, ptr %i.js, i64 2
  %i.kf = add nuw nsw i64 %.sroa.011.0355.i, 2
  %i.kg = icmp samesign ne i64 %i.kf, %3
  call void @llvm.assume(i1 %i.kg)
  %i.kh = load i8, ptr %i.ke, align 1, !alias.scope !1087, !noalias !1196, !noundef !4
  %i.ki = shl nuw nsw i32 %i.kb, 6
  %i.kj = and i8 %i.kh, 63
  %i.kk = zext nneg i8 %i.kj to i32
  %i.kl = or disjoint i32 %i.ki, %i.kk            ; 2 uses
  %i.km = shl nuw nsw i32 %i.jw, 12
  %i.kn = or disjoint i32 %i.kl, %i.km
  %i.ko = icmp samesign ugt i8 %i.jr, -17
  br i1 %i.ko, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i, label %bb.cz

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i
  %i.kp = getelementptr inbounds nuw i8, ptr %i.js, i64 3
  %i.kq = add nuw nsw i64 %.sroa.011.0355.i, 3
  %i.kr = icmp samesign ne i64 %i.kq, %3
  call void @llvm.assume(i1 %i.kr)
  %i.ks = load i8, ptr %i.kp, align 1, !alias.scope !1087, !noalias !1196, !noundef !4
  %i.kt = shl nuw nsw i32 %i.jw, 18
  %i.ku = and i32 %i.kt, 1835008
  %i.kv = shl nuw nsw i32 %i.kl, 6
  %i.kw = and i8 %i.ks, 63
  %i.kx = zext nneg i8 %i.kw to i32
  %i.ky = or disjoint i32 %i.kv, %i.kx
  %i.kz = or disjoint i32 %i.ky, %i.ku
  br label %bb.cz

bb.cy:                                            ; preds = %bb.cw
  invoke void @_RNvNtCs4NRVxsYgnAr_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 1, 0) %3, i64 noundef %.sroa.011.0355.i, i64 noundef range(i64 1, 0) %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @117) #25
          to label %bb.at unwind label %.loopexit.split-lp250.i, !noalias !1143

bb.cz:                                            ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i
  %.sroa.4.0.i.ph.i = phi i32 [ %i.kn, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i.i ], [ %i.kz, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i.i ], [ %i.kc, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i.i ] ; 4 uses
  %i.la = icmp samesign ult i32 %.sroa.4.0.i.ph.i, 1114112
  call void @llvm.assume(i1 %i.la)
  %i.lb = icmp samesign ult i32 %.sroa.4.0.i.ph.i, 128
  br i1 %i.lb, label %.thread231.i, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.lc = icmp samesign ult i32 %.sroa.4.0.i.ph.i, 2048
  br i1 %i.lc, label %.thread231.i, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.ld = icmp samesign ult i32 %.sroa.4.0.i.ph.i, 65536
  %..i = select i1 %i.ld, i64 3, i64 4
  br label %.thread231.i

.thread231.i:                                     ; preds = %bb.db, %bb.da, %bb.cz, %bb.cx
  %.sroa.023.0.i = phi i64 [ 2, %bb.da ], [ %..i, %bb.db ], [ 1, %bb.cz ], [ 1, %bb.cx ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !1090
  store i64 0, ptr %i.s, align 8, !noalias !1090
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.027.sroa.2.0..sroa_idx.i, align 8, !noalias !1090
  store i64 0, ptr %.sroa.027.sroa.3.0..sroa_idx.i, align 8, !noalias !1090
  store ptr %i.cz, ptr %.sroa.2.0..sroa_idx.i, align 8, !noalias !1090
  store ptr %2, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !1090
  store ptr %i.cy, ptr %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx.sroa_idx.i, align 8, !noalias !1090
  store i64 %.sroa.011.0355.i, ptr %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx.sroa_idx.i, align 8, !noalias !1090
  br label %bb.dc

bb.dc:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit198.i, %.thread231.i
  %.sroa.021.0.i = phi i8 [ 0, %.thread231.i ], [ %spec.store.select.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit198.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !1090
  invoke void @_RNvXs0_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram4trieINtB5_12TrieIteratorhINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters4skip4SkipNtNtNtB1p_3str4iter5BytesEENtNtNtB1n_6traits8iterator8Iterator4nextBb_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.r, ptr noalias noundef nonnull align 8 dereferenceable(56) %i.s)
          to label %bb.dg unwind label %bb.df, !noalias !1143

.body.i:                                          ; preds = %bb.es, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i189.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i180.i, %bb.di, %bb.df
  %.pn105.i = phi { ptr, i32 } [ %i.mp, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i180.i ], [ %i.lm, %bb.di ], [ %lpad.phi244.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i189.i ], [ %i.lg, %bb.df ], [ %i.os, %bb.es ]
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.s)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i.i unwind label %bb.dd, !noalias !1143

bb.dd:                                            ; preds = %.body.i
  %i.le = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.s)
          to label %.body160.i unwind label %bb.de, !noalias !1143

bb.de:                                            ; preds = %bb.dd
  %i.lf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26, !noalias !1143
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i.i: ; preds = %.body.i
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.s)
          to label %.body174.i unwind label %bb.cq, !noalias !1143

bb.df:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i194.i, %bb.dc
  %i.lg = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.dg:                                            ; preds = %bb.dc
  %i.lh = load i64, ptr %i.r, align 8, !range !19, !noalias !1090, !noundef !4
  %.not100.i = icmp eq i64 %i.lh, -1
  br i1 %.not100.i, label %bb.dl, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !1090
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 24, i1 false), !noalias !1090
  %i.li = load i64, ptr %i.da, align 8, !noalias !1090, !noundef !4 ; 4 uses
  %i.lj = icmp sgt i64 %i.li, -1
  call void @llvm.assume(i1 %i.lj)
  %i.lk = add i64 %i.li, %.sroa.011.0355.i        ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !1090
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.sroa.0.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !1202)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1205
  %i.ll = load ptr, ptr %i.db, align 8, !alias.scope !1202, !noalias !1207, !nonnull !4, !noundef !4
  invoke void @_RNvNtNtCs4NRVxsYgnAr_4core3str8converts9from_utf8(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ll, i64 noundef %i.li)
          to label %bb.dj unwind label %bb.di, !noalias !1208

bb.di:                                            ; preds = %bb.dh
  %i.lm = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q) #28
          to label %.body.i unwind label %bb.dk, !noalias !1209

bb.dj:                                            ; preds = %bb.dh
  %i.ln = load i64, ptr %i.a, align 8, !range !16, !noalias !1205, !noundef !4
  %i.lo = trunc nuw i64 %i.ln to i1
  br i1 %i.lo, label %bb.dy, label %.thread233.i

.thread233.i:                                     ; preds = %bb.dj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.sroa.0.i, ptr noundef nonnull align 8 dereferenceable(16) %i.r, i64 16, i1 false), !noalias !1090
  %.sroa.6.i.sroa.6.0.copyload = load i64, ptr %.sroa.6.i.sroa.6.0..sroa_idx, align 8, !noalias !1090
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1205
  br label %bb.ef

bb.dk:                                            ; preds = %bb.di
  %i.lp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26, !noalias !1209
  unreachable

bb.dl:                                            ; preds = %bb.dg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !1090
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.s)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i173.i unwind label %bb.dm, !noalias !1143

bb.dm:                                            ; preds = %bb.dl
  %i.lq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.s)
          to label %.body174.i unwind label %bb.dn, !noalias !1143

bb.dn:                                            ; preds = %bb.dm
  %i.lr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26, !noalias !1143
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i173.i: ; preds = %bb.dl
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.s)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram4trie12TrieIteratorhINtNtNtNtB4_4iter8adapters4skip4SkipNtNtNtB4_3str4iter5BytesEEEBK_.exit176.i unwind label %.loopexit249.i, !noalias !1143

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram4trie12TrieIteratorhINtNtNtNtB4_4iter8adapters4skip4SkipNtNtNtB4_3str4iter5BytesEEEBK_.exit176.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i173.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !1090
  %i.ls = trunc nuw i8 %.sroa.021.0.i to i1
  %.pre470.i = add i64 %.sroa.023.0.i, %.sroa.011.0355.i ; 5 uses
  br i1 %i.ls, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram4trie12TrieIteratorhINtNtNtNtB4_4iter8adapters4skip4SkipNtNtNtB4_3str4iter5BytesEEEBK_.exit176._crit_edge.i, label %bb.do

bb.do:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram4trie12TrieIteratorhINtNtNtNtB4_4iter8adapters4skip4SkipNtNtNtB4_3str4iter5BytesEEEBK_.exit176.i
  %i.lt = load i64, ptr %i.cx, align 8, !noalias !1090, !noundef !4 ; 2 uses
  %i.lu = icmp ult i64 %.pre470.i, %i.lt
  br i1 %i.lu, label %bb.dp, label %.invoke598.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram4trie12TrieIteratorhINtNtNtNtB4_4iter8adapters4skip4SkipNtNtNtB4_3str4iter5BytesEEEBK_.exit176._crit_edge.i: ; preds = %bb.ds, %bb.dq, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram4trie12TrieIteratorhINtNtNtNtB4_4iter8adapters4skip4SkipNtNtNtB4_3str4iter5BytesEEEBK_.exit176.i
  %i.lv = icmp ult i64 %.pre470.i, %3
  br i1 %i.lv, label %bb.ab, label %bb.aa

bb.dp:                                            ; preds = %bb.do
  %i.lw = load ptr, ptr %i.cw, align 8, !noalias !1090, !nonnull !4, !noundef !4
  %i.lx = getelementptr inbounds nuw [32 x i8], ptr %i.lw, i64 %.pre470.i ; 6 uses
  %i.ly = fadd double %i.ci, %i.jj                ; 2 uses
  %i.lz = load i64, ptr %i.lx, align 8, !range !16, !noalias !1143, !noundef !4
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lx, i64 8
  %.not101.i = icmp eq i64 %i.lz, 0
  br i1 %.not101.i, label %bb.dr, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.mb = getelementptr inbounds nuw i8, ptr %i.lx, i64 24
  %i.mc = load double, ptr %i.mb, align 8, !noalias !1143, !noundef !4
  %i.md = fcmp ogt double %i.ly, %i.mc
  br i1 %i.md, label %bb.dr, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram4trie12TrieIteratorhINtNtNtNtB4_4iter8adapters4skip4SkipNtNtNtB4_3str4iter5BytesEEEBK_.exit176._crit_edge.i

bb.dr:                                            ; preds = %bb.dq, %bb.dp
  %i.me = getelementptr inbounds nuw i8, ptr %i.lx, i64 24
  store double %i.ly, ptr %i.me, align 8, !noalias !1143
  store i64 1, ptr %i.lx, align 8, !noalias !1143
  store i64 %.sroa.011.0355.i, ptr %i.ma, align 8, !noalias !1143
  %i.mf = load i64, ptr %1, align 8, !range !16, !noalias !1090, !noundef !4
  %i.mg = trunc nuw i64 %i.mf to i1
  br i1 %i.mg, label %bb.ds, label %bb.dt

bb.ds:                                            ; preds = %bb.dr
  %i.mh = load i64, ptr %i.dj, align 8, !noalias !1090
  %i.mi = getelementptr inbounds nuw i8, ptr %i.lx, i64 16
  store i64 %i.mh, ptr %i.mi, align 8, !noalias !1143
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram4trie12TrieIteratorhINtNtNtNtB4_4iter8adapters4skip4SkipNtNtNtB4_3str4iter5BytesEEEBK_.exit176._crit_edge.i

bb.dt:                                            ; preds = %bb.dr
  call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #27, !noalias !1143
  %i.mj = call noundef dereferenceable_or_null(1) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef range(i64 1, 33) 1, i64 noundef range(i64 1, 9) 1) #27, !noalias !1143 ; 3 uses
  %i.mk = icmp eq ptr %i.mj, null
  br i1 %i.mk, label %bb.du, label %bb.dv, !prof !18

bb.du:                                            ; preds = %bb.dt
  invoke void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 1, i64 noundef 1) #25
          to label %.noexc.i unwind label %.loopexit.split-lp250.i, !noalias !1143

.noexc.i:                                         ; preds = %bb.du
  unreachable

bb.dv:                                            ; preds = %bb.dt
  store i8 2, ptr %i.mj, align 1, !noalias !1143
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNvMs2_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram5modelNtBM_7Unigram16encode_optimized12BestPathNodeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBS_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %_RNvMs2_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram5modelNtB5_7Unigram16encode_optimized.exit.thread unwind label %bb.dw, !noalias !1143

_RNvMs2_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram5modelNtB5_7Unigram16encode_optimized.exit.thread: ; preds = %bb.dv
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNvMs2_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram5modelNtBT_7Unigram16encode_optimized12BestPathNodeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBZ_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t), !noalias !1143
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !1090
  br label %bb.ew

bb.dw:                                            ; preds = %bb.dv
  %i.ml = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNvMs2_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram5modelNtBT_7Unigram16encode_optimized12BestPathNodeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBZ_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t)
          to label %common.resume unwind label %bb.dx, !noalias !1143

bb.dx:                                            ; preds = %bb.dw
  %i.mm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26, !noalias !1143
  unreachable

bb.dy:                                            ; preds = %bb.dj
  %i.mn = load <2 x i64>, ptr %i.dc, align 8, !noalias !1205
  %i.mo = load i64, ptr %i.dc, align 8, !noalias !1205
  %.sroa.0207.0.copyload.i = load i64, ptr %i.q, align 8, !noalias !1207 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.sroa.0.i, ptr noundef nonnull align 8 dereferenceable(16) %i.dk, i64 16, i1 false), !noalias !1090
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1205
  call void @llvm.experimental.noalias.scope.decl(metadata !1210)
  call void @llvm.experimental.noalias.scope.decl(metadata !1213)
  %.not.i.i = icmp eq i64 %.sroa.0207.0.copyload.i, -1
  br i1 %.not.i.i, label %bb.ef, label %bb.dz, !prof !1028

bb.dz:                                            ; preds = %bb.dy
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1215
  store i64 %.sroa.0207.0.copyload.i, ptr %i.e, align 8, !noalias !1217
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %i.dk, i64 16, i1 false)
  %.sroa.6.sroa.6.0..sroa.6.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store <2 x i64> %i.mn, ptr %.sroa.6.sroa.6.0..sroa.6.0..sroa_idx.sroa_idx.i, align 8, !noalias !1217
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @85, i64 noundef 43, ptr noundef nonnull %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @84, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @121) #25
          to label %bb.ed unwind label %bb.ea, !noalias !1218

bb.ea:                                            ; preds = %bb.dz
  %i.mp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.e)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i180.i unwind label %bb.eb, !noalias !1218

bb.eb:                                            ; preds = %bb.ea
  %i.mq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.e)
          to label %.body181.i unwind label %bb.ec, !noalias !1218

bb.ec:                                            ; preds = %bb.eb
  %i.mr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26, !noalias !1218
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i180.i: ; preds = %bb.ea
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.e)
          to label %.body.i unwind label %bb.ee, !noalias !1143

bb.ed:                                            ; preds = %bb.dz
  unreachable

bb.ee:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i180.i
  %i.ms = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body181.i

.body181.i:                                       ; preds = %bb.ee, %bb.eb
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26, !noalias !1218
  unreachable

bb.ef:                                            ; preds = %bb.dy, %.thread233.i
  %.sroa.6.sroa.6.0.i = phi i64 [ %i.mo, %bb.dy ], [ %.sroa.6.i.sroa.6.0.copyload, %.thread233.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.sroa.0.i, i64 16, i1 false), !alias.scope !1219, !noalias !1220
  store i64 %.sroa.6.sroa.6.0.i, ptr %.sroa.6.sroa.6.0..sroa_idx.i, align 8, !alias.scope !1219, !noalias !1220
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.sroa.0.i)
  %i.mt = load i64, ptr %i.cx, align 8, !noalias !1090, !noundef !4 ; 2 uses
  %i.mu = icmp ult i64 %i.lk, %i.mt
  br i1 %i.mu, label %bb.eg, label %bb.el

bb.eg:                                            ; preds = %bb.ef
  %i.mv = load ptr, ptr %i.cw, align 8, !noalias !1090, !nonnull !4, !noundef !4
  %i.mw = getelementptr inbounds nuw [32 x i8], ptr %i.mv, i64 %i.lk ; 6 uses
  %i.mx = load i64, ptr %i.de, align 8, !alias.scope !1221, !noalias !1224, !noundef !4
  %i.my = icmp eq i64 %i.mx, 0
  br i1 %i.my, label %.invoke600.i, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.mz = invoke noundef i64 @_RINvYNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.df, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.p)
          to label %.noexc186.i unwind label %.loopexit.split-lp241.loopexit.i, !noalias !1143 ; 2 uses

.noexc186.i:                                      ; preds = %bb.eh
  call void @llvm.experimental.noalias.scope.decl(metadata !1226)
  call void @llvm.experimental.noalias.scope.decl(metadata !1229)
  %i.na = lshr i64 %i.mz, 57
  %i.nb = trunc nuw nsw i64 %i.na to i8
  %i.nc = load i64, ptr %i.dg, align 8, !alias.scope !1232, !noalias !1233, !noundef !4 ; 2 uses
  %i.nd = load ptr, ptr %i.dd, align 8, !alias.scope !1232, !noalias !1233, !nonnull !4, !noundef !4 ; 2 uses
  %i.ne = insertelement <16 x i8> poison, i8 %i.nb, i64 0
  %i.nf = shufflevector <16 x i8> %i.ne, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.ei

bb.ei:                                            ; preds = %bb.ek, %.noexc186.i
  %.sroa.9.0.i.i.i.i = phi i64 [ 0, %.noexc186.i ], [ %i.nw, %bb.ek ]
  %.pn.i.i.i.i = phi i64 [ %i.mz, %.noexc186.i ], [ %i.nx, %bb.ek ]
  %.sroa.01.0.i.i.i.i = and i64 %.pn.i.i.i.i, %i.nc ; 3 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nd, i64 %.sroa.01.0.i.i.i.i
  %.sroa.0.0.copyload.i26.i.i.i = load <16 x i8>, ptr %i.ng, align 1, !noalias !1236 ; 2 uses
  %i.nh = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i, %i.nf
  %i.ni = bitcast <16 x i1> %i.nh to i16          ; 2 uses
  %.not.i.not32.i.i.i = icmp eq i16 %i.ni, 0
  br i1 %.not.i.not32.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.ei, %bb.ej
  %.sroa.06.0.i33.i.i.i = phi i16 [ %i.nv, %bb.ej ], [ %i.ni, %bb.ei ] ; 3 uses
  %i.nj = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i33.i.i.i, i1 true)
  %i.nk = zext nneg i16 %i.nj to i64
  %i.nl = add i64 %.sroa.01.0.i.i.i.i, %i.nk
  %i.nm = and i64 %i.nl, %i.nc
  %i.nn = sub nsw i64 0, %i.nm
  %i.no = getelementptr inbounds [32 x i8], ptr %i.nd, i64 %i.nn ; 2 uses
  %i.np = getelementptr inbounds i8, ptr %i.no, i64 -32
  %i.nq = invoke noundef zeroext i1 @_RNvXCsgQfI1edjipl_9hashbrownNtNtCscdodAO9FK5_5alloc6string6StringINtB2_10EquivalentBq_E10equivalentCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.p, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.np)
          to label %.noexc187.i unwind label %.loopexit240.i, !noalias !1143

.noexc187.i:                                      ; preds = %.lr.ph.i.i.i
  br i1 %i.nq, label %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringmNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE3getBO_ECs2JiOgHzbbc7_10tokenizers.exit.i, label %bb.ej, !prof !432

._crit_edge.i.i.i:                                ; preds = %bb.ej, %bb.ei
  %i.nr = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i, splat (i8 -1)
  %i.ns = bitcast <16 x i1> %i.nr to i16
  %i.nt = icmp eq i16 %i.ns, 0
  br i1 %i.nt, label %bb.ek, label %.invoke600.i, !prof !18

bb.ej:                                            ; preds = %.noexc187.i
  %i.nu = add i16 %.sroa.06.0.i33.i.i.i, -1
  %i.nv = and i16 %i.nu, %.sroa.06.0.i33.i.i.i    ; 2 uses
  %.not.i.not.i.i.i = icmp eq i16 %i.nv, 0
  br i1 %.not.i.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

bb.ek:                                            ; preds = %._crit_edge.i.i.i
  %i.nw = add i64 %.sroa.9.0.i.i.i.i, 16          ; 2 uses
  %i.nx = add i64 %.sroa.01.0.i.i.i.i, %i.nw
  br label %bb.ei

bb.el:                                            ; preds = %bb.ef
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.lk, i64 noundef %i.mt, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @122) #25
          to label %bb.at unwind label %.loopexit.split-lp241.loopexit.split-lp.i, !noalias !1143

.loopexit240.i:                                   ; preds = %.lr.ph.i.i.i
  %lpad.loopexit242.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp241.i

.loopexit.split-lp241.loopexit.i:                 ; preds = %bb.eh
  %lpad.loopexit246.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp241.i

.loopexit.split-lp241.loopexit.split-lp.i:        ; preds = %.invoke600.i, %bb.el
  %lpad.loopexit.split-lp247.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp241.i

.loopexit.split-lp241.i:                          ; preds = %.loopexit.split-lp241.loopexit.split-lp.i, %.loopexit.split-lp241.loopexit.i, %.loopexit240.i
  %lpad.phi244.i = phi { ptr, i32 } [ %lpad.loopexit242.i, %.loopexit240.i ], [ %lpad.loopexit246.i, %.loopexit.split-lp241.loopexit.i ], [ %lpad.loopexit.split-lp247.i, %.loopexit.split-lp241.loopexit.split-lp.i ]
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i189.i unwind label %bb.em, !noalias !1143

bb.em:                                            ; preds = %.loopexit.split-lp241.i
  %i.ny = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %.body160.i unwind label %bb.en, !noalias !1143

bb.en:                                            ; preds = %bb.em
  %i.nz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26, !noalias !1143
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i189.i: ; preds = %.loopexit.split-lp241.i
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %.body.i unwind label %bb.cq, !noalias !1143

_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringmNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE3getBO_ECs2JiOgHzbbc7_10tokenizers.exit.i: ; preds = %.noexc187.i
  %i.oa = getelementptr inbounds i8, ptr %i.no, i64 -8
  %i.ob = load i64, ptr %i.dh, align 8, !noalias !1090, !noundef !4
  %i.oc = load i32, ptr %i.oa, align 4, !noalias !1143, !noundef !4
  %i.od = zext i32 %i.oc to i64                   ; 3 uses
  %i.oe = icmp ugt i64 %i.ob, %i.od
  br i1 %i.oe, label %bb.eo, label %.invoke600.i, !prof !432

.invoke600.i:                                     ; preds = %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringmNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE3getBO_ECs2JiOgHzbbc7_10tokenizers.exit.i, %bb.eg, %._crit_edge.i.i.i
  %i.of = phi ptr [ @123, %._crit_edge.i.i.i ], [ @123, %bb.eg ], [ @124, %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringmNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE3getBO_ECs2JiOgHzbbc7_10tokenizers.exit.i ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6option13unwrap_failed(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.of) #25
          to label %.cont601.i unwind label %.loopexit.split-lp241.loopexit.split-lp.i, !noalias !1143

.cont601.i:                                       ; preds = %.invoke600.i
  unreachable

bb.eo:                                            ; preds = %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapNtNtCscdodAO9FK5_5alloc6string6StringmNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE3getBO_ECs2JiOgHzbbc7_10tokenizers.exit.i
  %i.og = load ptr, ptr %i.di, align 8, !noalias !1090, !nonnull !4, !noundef !4
  %i.oh = getelementptr inbounds nuw [32 x i8], ptr %i.og, i64 %i.od
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oh, i64 24
  %i.oj = load double, ptr %i.oi, align 8, !noalias !1143, !noundef !4
  %i.ok = fadd double %i.jj, %i.oj                ; 2 uses
  %i.ol = load i64, ptr %i.mw, align 8, !range !16, !noalias !1143, !noundef !4
  %i.om = getelementptr inbounds nuw i8, ptr %i.mw, i64 8
  %.not103.i = icmp eq i64 %i.ol, 0
  br i1 %.not103.i, label %bb.eq, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.on = getelementptr inbounds nuw i8, ptr %i.mw, i64 24
  %i.oo = load double, ptr %i.on, align 8, !noalias !1143, !noundef !4
  %i.op = fcmp ogt double %i.ok, %i.oo
  br i1 %i.op, label %bb.eq, label %bb.er

bb.eq:                                            ; preds = %bb.ep, %bb.eo
  %i.oq = getelementptr inbounds nuw i8, ptr %i.mw, i64 24
  store double %i.ok, ptr %i.oq, align 8, !noalias !1143
  store i64 1, ptr %i.mw, align 8, !noalias !1143
  store i64 %.sroa.011.0355.i, ptr %i.om, align 8, !noalias !1143
  %i.or = getelementptr inbounds nuw i8, ptr %i.mw, i64 16
  store i64 %i.od, ptr %i.or, align 8, !noalias !1143
  br label %bb.er

bb.er:                                            ; preds = %bb.eq, %bb.ep
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i194.i unwind label %bb.es, !noalias !1143

bb.es:                                            ; preds = %bb.er
  %i.os = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %.body.i unwind label %bb.et, !noalias !1143

bb.et:                                            ; preds = %bb.es
  %i.ot = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26, !noalias !1143
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i194.i: ; preds = %bb.er
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit198.i unwind label %bb.df, !noalias !1143

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit198.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i194.i
  %i.ou = icmp ne i64 %i.li, %.sroa.023.0.i
  %i.ov = trunc nuw i8 %.sroa.021.0.i to i1
  %or.cond.not.i = or i1 %i.ou, %i.ov
  %spec.store.select.i = select i1 %or.cond.not.i, i8 %.sroa.021.0.i, i8 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !1090
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !1090
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !1090
  br label %bb.dc

_RNvMs2_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram5modelNtB5_7Unigram16encode_optimized.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtBG_6string6StringEECs2JiOgHzbbc7_10tokenizers.exit.i
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNvMs2_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram5modelNtBT_7Unigram16encode_optimized12BestPathNodeENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBZ_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t), !noalias !1143
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !1090
  %i.ow = icmp eq i64 %.sroa.0.0.copyload, -1
  br i1 %i.ow, label %bb.ew, label %bb.eu

bb.eu:                                            ; preds = %bb.v, %_RNvMs2_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram5modelNtB5_7Unigram16encode_optimized.exit
  %.sroa.0.0.copyload.sink = phi i64 [ %.sroa.0.0.copyload, %_RNvMs2_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram5modelNtB5_7Unigram16encode_optimized.exit ], [ %i.ca, %bb.v ]
  %.sroa.6.0.copyload.sink = phi ptr [ %.sroa.6.0.copyload, %_RNvMs2_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram5modelNtB5_7Unigram16encode_optimized.exit ], [ %i.cd, %bb.v ]
  %.sroa.9.0.copyload.sink = phi ptr [ %.sroa.9.0.copyload, %_RNvMs2_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram5modelNtB5_7Unigram16encode_optimized.exit ], [ %i.cf, %bb.v ]
  store i64 %.sroa.0.0.copyload.sink, ptr %i.ad, align 8
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr %.sroa.6.0.copyload.sink, ptr %.sroa.48.0..sroa_idx, align 8
  %.sroa.59.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store ptr %.sroa.9.0.copyload.sink, ptr %.sroa.59.0..sroa_idx, align 8
  %i.ox = icmp ult i64 %3, 256
end_hunk_6
