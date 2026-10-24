Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/candle-rs/original/candle_core-29a639a172b36b04.candle_core.fa2bc8e788f5f12a-cgu.03?download=true
inline.NumInlined: 5426
inline.NumDeleted: 3862
loop-unroll.NumRuntimeUnrolled: 177
loop-unroll.NumUnrolled: 177
begin_hunk_0_@_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterfENCINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils9unary_mapfsNCNvXss_B1w_NtB1w_10CpuStorageNtNtB1y_7backend14BackendStorage8to_dtypes11_0E0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3L_8for_each4callsNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4Y_3VecsE14extend_trustedBN_E0E0EB1y_:bb.a

vector.memcheck:                                  ; preds = %bb.b
  %i.i = shl i64 %.sroa.5.0.copyload, 1           ; 2 uses
  %i.j = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.i
  %i.k = lshr exact i64 %i.g, 1
  %i.l = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.i
  %i.m = getelementptr i8, ptr %i.l, i64 %i.k
  %bound0 = icmp ult ptr %i.j, %i.c
  %bound1 = icmp ult ptr %i.a, %i.m
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.h, 4611686018427387900      ; 4 uses
  %i.n = add i64 %.sroa.5.0.copyload, %n.vec      ; 2 uses
  %i.o = getelementptr [2 x i8], ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index
  %wide.load = load <4 x float>, ptr %i.p, align 4, !alias.scope !4612, !noalias !4613
  %i.q = tail call <4 x i16> @llvm.fptosi.sat.v4i16.v4f32(<4 x float> %wide.load)
  %i.r = getelementptr [2 x i8], ptr %i.o, i64 %index
  store <4 x i16> %i.q, ptr %i.r, align 2, !alias.scope !4614, !noalias !4615
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.s = icmp eq i64 %index.next, %n.vec
  br i1 %i.s, label %middle.block, label %vector.body, !llvm.loop !4610

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.h, %n.vec
  br i1 %cmp.n, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRfsuNCINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils9unary_mapfsNCNvXss_B2m_NtB2m_10CpuStorageNtNtB2o_7backend14BackendStorage8to_dtypes11_0E0NCINvNvBS_8for_each4callsNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB58_3VecsE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2o_.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.b, %middle.block
  %.ph = phi i64 [ %.sroa.5.0.copyload, %vector.memcheck ], [ %.sroa.5.0.copyload, %bb.b ], [ %i.n, %middle.block ] ; 3 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.b ], [ %n.vec, %middle.block ] ; 4 uses
  %.neg = or disjoint i64 %.sroa.01.0.i.ph, 1
  %i.t = and i64 %i.g, 4
  %lcmp.mod.not = icmp eq i64 %i.t, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.sroa.01.0.i.ph
  %.val15.i.prol = load float, ptr %i.u, align 4, !noalias !4613, !noundef !4
  %i.v = tail call noundef i16 @llvm.fptosi.sat.i16.f32(float %.val15.i.prol)
  %i.w = getelementptr inbounds nuw [2 x i8], ptr %.sroa.7.0.copyload, i64 %.ph
  store i16 %i.v, ptr %i.w, align 2, !noalias !4616
  %i.x = add i64 %.ph, 1                          ; 2 uses
  %i.y = or disjoint i64 %.sroa.01.0.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.x, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.x, %scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], [ %i.y, %scalar.ph.prol ]
  %i.z = icmp eq i64 %i.h, %.neg
  br i1 %i.z, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRfsuNCINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils9unary_mapfsNCNvXss_B2m_NtB2m_10CpuStorageNtNtB2o_7backend14BackendStorage8to_dtypes11_0E0NCINvNvBS_8for_each4callsNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB58_3VecsE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2o_.exit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.aa = phi i64 [ %i.aj, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ %i.ak, %scalar.ph ], [ %.sroa.01.0.i.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.sroa.01.0.i
  %.val15.i = load float, ptr %i.ab, align 4, !noalias !4613, !noundef !4
  %i.ac = tail call noundef i16 @llvm.fptosi.sat.i16.f32(float %.val15.i)
  %i.ad = getelementptr inbounds nuw [2 x i8], ptr %.sroa.7.0.copyload, i64 %i.aa
  store i16 %i.ac, ptr %i.ad, align 2, !noalias !4616
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.sroa.01.0.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %.val15.i.1 = load float, ptr %i.af, align 4, !noalias !4613, !noundef !4
  %i.ag = tail call noundef i16 @llvm.fptosi.sat.i16.f32(float %.val15.i.1)
  %i.ah = getelementptr [2 x i8], ptr %.sroa.7.0.copyload, i64 %i.aa
  %i.ai = getelementptr i8, ptr %i.ah, i64 2
  store i16 %i.ag, ptr %i.ai, align 2, !noalias !4616
  %i.aj = add i64 %i.aa, 2                        ; 2 uses
  %i.ak = add nuw i64 %.sroa.01.0.i, 2            ; 2 uses
  %i.al = icmp eq i64 %i.ak, %i.h
  br i1 %i.al, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRfsuNCINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils9unary_mapfsNCNvXss_B2m_NtB2m_10CpuStorageNtNtB2o_7backend14BackendStorage8to_dtypes11_0E0NCINvNvBS_8for_each4callsNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB58_3VecsE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2o_.exit, label %scalar.ph, !llvm.loop !4611

_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRfsuNCINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils9unary_mapfsNCNvXss_B2m_NtB2m_10CpuStorageNtNtB2o_7backend14BackendStorage8to_dtypes11_0E0NCINvNvBS_8for_each4callsNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB58_3VecsE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2o_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.n, %middle.block ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.aj, %scalar.ph ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !4613
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterfENCINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils9unary_mapfxNCNvXss_B1w_NtB1w_10CpuStorageNtNtB1y_7backend14BackendStorage8to_dtypesy_0E0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3K_8for_each4callxNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4X_3VecxE14extend_trustedBN_E0E0EB1y_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 3 uses
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRfxuNCINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils9unary_mapfxNCNvXss_B2m_NtB2m_10CpuStorageNtNtB2o_7backend14BackendStorage8to_dtypesy_0E0NCINvNvBS_8for_each4callxNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB57_3VecxE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2o_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.a to i64
  %i.g = sub nuw i64 %i.e, %i.f                   ; 3 uses
  %i.h = lshr exact i64 %i.g, 2                   ; 2 uses
  %i.i = icmp eq i64 %i.g, 4
  br i1 %i.i, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %i.h, 4611686018427387902
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.new
  %i.j = phi i64 [ %.sroa.5.0.copyload, %.new ], [ %i.s, %bb.c ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %.new ], [ %i.t, %bb.c ] ; 3 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.c ]
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.sroa.01.0.i
  %.val15.i = load float, ptr %i.k, align 4, !noalias !4625, !noundef !4
  %i.l = tail call noundef i64 @llvm.fptosi.sat.i64.f32(float %.val15.i)
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.j
  store i64 %i.l, ptr %i.m, align 8, !noalias !4626
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.sroa.01.0.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %.val15.i.1 = load float, ptr %i.o, align 4, !noalias !4625, !noundef !4
  %i.p = tail call noundef i64 @llvm.fptosi.sat.i64.f32(float %.val15.i.1)
  %i.q = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.j
  %i.r = getelementptr i8, ptr %i.q, i64 8
  store i64 %i.p, ptr %i.r, align 8, !noalias !4626
  %i.s = add i64 %i.j, 2                          ; 3 uses
  %i.t = add nuw i64 %.sroa.01.0.i, 2             ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRfxuNCINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils9unary_mapfxNCNvXss_B2m_NtB2m_10CpuStorageNtNtB2o_7backend14BackendStorage8to_dtypesy_0E0NCINvNvBS_8for_each4callxNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB57_3VecxE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2o_.exit.loopexit.unr-lcssa, label %bb.c

_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRfxuNCINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils9unary_mapfxNCNvXss_B2m_NtB2m_10CpuStorageNtNtB2o_7backend14BackendStorage8to_dtypesy_0E0NCINvNvBS_8for_each4callxNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB57_3VecxE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2o_.exit.loopexit.unr-lcssa: ; preds = %bb.c
  %i.u = and i64 %i.g, 4
  %lcmp.mod.not = icmp eq i64 %i.u, 0
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRfxuNCINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils9unary_mapfxNCNvXss_B2m_NtB2m_10CpuStorageNtNtB2o_7backend14BackendStorage8to_dtypesy_0E0NCINvNvBS_8for_each4callxNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB57_3VecxE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2o_.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRfxuNCINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils9unary_mapfxNCNvXss_B2m_NtB2m_10CpuStorageNtNtB2o_7backend14BackendStorage8to_dtypesy_0E0NCINvNvBS_8for_each4callxNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB57_3VecxE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2o_.exit.loopexit.unr-lcssa, %bb.b
  %.epil.init = phi i64 [ %.sroa.5.0.copyload, %bb.b ], [ %i.s, %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRfxuNCINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils9unary_mapfxNCNvXss_B2m_NtB2m_10CpuStorageNtNtB2o_7backend14BackendStorage8to_dtypesy_0E0NCINvNvBS_8for_each4callxNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB57_3VecxE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2o_.exit.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.01.0.i.epil.init = phi i64 [ 0, %bb.b ], [ %i.t, %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRfxuNCINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils9unary_mapfxNCNvXss_B2m_NtB2m_10CpuStorageNtNtB2o_7backend14BackendStorage8to_dtypesy_0E0NCINvNvBS_8for_each4callxNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB57_3VecxE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2o_.exit.loopexit.unr-lcssa ]
  %lcmp.mod3 = trunc i64 %i.h to i1
  tail call void @llvm.assume(i1 %lcmp.mod3)
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.sroa.01.0.i.epil.init
  %.val15.i.epil = load float, ptr %i.v, align 4, !noalias !4625, !noundef !4
  %i.w = tail call noundef i64 @llvm.fptosi.sat.i64.f32(float %.val15.i.epil)
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %.epil.init
  store i64 %i.w, ptr %i.x, align 8, !noalias !4626
  %i.y = add i64 %.epil.init, 1
  br label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRfxuNCINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils9unary_mapfxNCNvXss_B2m_NtB2m_10CpuStorageNtNtB2o_7backend14BackendStorage8to_dtypesy_0E0NCINvNvBS_8for_each4callxNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB57_3VecxE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2o_.exit

_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRfxuNCINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils9unary_mapfxNCNvXss_B2m_NtB2m_10CpuStorageNtNtB2o_7backend14BackendStorage8to_dtypesy_0E0NCINvNvBS_8for_each4callxNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB57_3VecxE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2o_.exit: ; preds = %.epil.preheader, %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRfxuNCINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils9unary_mapfxNCNvXss_B2m_NtB2m_10CpuStorageNtNtB2o_7backend14BackendStorage8to_dtypesy_0E0NCINvNvBS_8for_each4callxNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB57_3VecxE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2o_.exit.loopexit.unr-lcssa, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.s, %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRfxuNCINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils9unary_mapfxNCNvXss_B2m_NtB2m_10CpuStorageNtNtB2o_7backend14BackendStorage8to_dtypesy_0E0NCINvNvBS_8for_each4callxNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB57_3VecxE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2o_.exit.loopexit.unr-lcssa ], [ %i.y, %.epil.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !4625
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterfENCNCNCNvNtCsltEA4u8Pgfu_11candle_core10test_utils13to_vec3_round000ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2v_8for_each4callfNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB3I_3VecfE14extend_trustedBN_E0E0EB1z_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !4, !align !18, !noundef !4 ; 6 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 6 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 6 uses
  %i.f = icmp eq ptr %i.a, %i.c
  br i1 %i.f, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRffuNCNCNCNvNtCsltEA4u8Pgfu_11candle_core10test_utils13to_vec3_round000NCINvNvBS_8for_each4callfNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB3S_3VecfE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2p_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = ptrtoint ptr %i.a to i64
  %i.i = sub nuw i64 %i.g, %i.h                   ; 4 uses
  %i.j = lshr i64 %i.i, 2                         ; 4 uses
  %min.iters.check = icmp ult i64 %i.i, 16
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.b
  %i.k = shl i64 %.sroa.5.0.copyload, 2           ; 2 uses
  %i.l = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.k ; 2 uses
  %i.m = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.k
  %i.n = getelementptr i8, ptr %i.m, i64 %i.i     ; 2 uses
  %i.o = getelementptr i8, ptr %i.e, i64 4
  %bound0 = icmp ult ptr %i.l, %i.c
  %bound1 = icmp ult ptr %i.a, %i.n
  %found.conflict = and i1 %bound0, %bound1
  %bound08 = icmp ult ptr %i.l, %i.o
  %bound19 = icmp ult ptr %i.e, %i.n
  %found.conflict10 = and i1 %bound08, %bound19
  %conflict.rdx = or i1 %found.conflict, %found.conflict10
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.j, 4611686018427387900      ; 4 uses
  %i.p = add i64 %.sroa.5.0.copyload, %n.vec      ; 2 uses
  %i.q = load float, ptr %i.e, align 4, !alias.scope !4641, !noalias !4642, !noundef !4
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.q, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.r = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index
  %wide.load = load <4 x float>, ptr %i.s, align 4, !alias.scope !4643, !noalias !4644
  %i.t = fmul <4 x float> %wide.load, %broadcast.splat
  %i.u = tail call <4 x float> @llvm.round.v4f32(<4 x float> %i.t)
  %i.v = fdiv <4 x float> %i.u, %broadcast.splat
  %i.w = getelementptr [4 x i8], ptr %i.r, i64 %index
  store <4 x float> %i.v, ptr %i.w, align 4, !alias.scope !4645, !noalias !4646
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !4639

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.j, %n.vec
  br i1 %cmp.n, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRffuNCNCNCNvNtCsltEA4u8Pgfu_11candle_core10test_utils13to_vec3_round000NCINvNvBS_8for_each4callfNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB3S_3VecfE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2p_.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.b, %middle.block
  %.ph = phi i64 [ %.sroa.5.0.copyload, %vector.memcheck ], [ %.sroa.5.0.copyload, %bb.b ], [ %i.p, %middle.block ] ; 3 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.b ], [ %n.vec, %middle.block ] ; 4 uses
  %.neg = or disjoint i64 %.sroa.01.0.i.ph, 1
  %i.y = and i64 %i.i, 4
  %lcmp.mod.not = icmp eq i64 %i.y, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.sroa.01.0.i.ph
  %.val15.i.prol = load float, ptr %i.z, align 4, !noalias !4644, !noundef !4
  %i.aa = load float, ptr %i.e, align 4, !noalias !4642, !noundef !4 ; 2 uses
  %i.ab = fmul float %.val15.i.prol, %i.aa
  %i.ac = tail call float @llvm.round.f32(float %i.ab)
  %i.ad = fdiv float %i.ac, %i.aa
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %.ph
  store float %i.ad, ptr %i.ae, align 4, !noalias !4647
  %i.af = add i64 %.ph, 1                         ; 2 uses
  %i.ag = or disjoint i64 %.sroa.01.0.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.af, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.af, %scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], [ %i.ag, %scalar.ph.prol ]
  %i.ah = icmp eq i64 %i.j, %.neg
  br i1 %i.ah, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRffuNCNCNCNvNtCsltEA4u8Pgfu_11candle_core10test_utils13to_vec3_round000NCINvNvBS_8for_each4callfNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB3S_3VecfE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2p_.exit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.ai = phi i64 [ %i.ax, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ %i.ay, %scalar.ph ], [ %.sroa.01.0.i.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.sroa.01.0.i
  %.val15.i = load float, ptr %i.aj, align 4, !noalias !4644, !noundef !4
  %i.ak = load float, ptr %i.e, align 4, !noalias !4642, !noundef !4 ; 2 uses
  %i.al = fmul float %.val15.i, %i.ak
  %i.am = tail call float @llvm.round.f32(float %i.al)
  %i.an = fdiv float %i.am, %i.ak
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.ai
  store float %i.an, ptr %i.ao, align 4, !noalias !4647
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.sroa.01.0.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  %.val15.i.1 = load float, ptr %i.aq, align 4, !noalias !4644, !noundef !4
  %i.ar = load float, ptr %i.e, align 4, !noalias !4642, !noundef !4 ; 2 uses
  %i.as = fmul float %.val15.i.1, %i.ar
  %i.at = tail call float @llvm.round.f32(float %i.as)
  %i.au = fdiv float %i.at, %i.ar
  %i.av = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.ai
  %i.aw = getelementptr i8, ptr %i.av, i64 4
  store float %i.au, ptr %i.aw, align 4, !noalias !4647
  %i.ax = add i64 %i.ai, 2                        ; 2 uses
  %i.ay = add nuw i64 %.sroa.01.0.i, 2            ; 2 uses
  %i.az = icmp eq i64 %i.ay, %i.j
  br i1 %i.az, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRffuNCNCNCNvNtCsltEA4u8Pgfu_11candle_core10test_utils13to_vec3_round000NCINvNvBS_8for_each4callfNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB3S_3VecfE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2p_.exit, label %scalar.ph, !llvm.loop !4640

_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRffuNCNCNCNvNtCsltEA4u8Pgfu_11candle_core10test_utils13to_vec3_round000NCINvNvBS_8for_each4callfNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB3S_3VecfE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2p_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.p, %middle.block ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.ax, %scalar.ph ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !4644
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterfENCNCNvNtCsltEA4u8Pgfu_11candle_core10test_utils13to_vec2_round00ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2s_8for_each4callfNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB3F_3VecfE14extend_trustedBN_E0E0EB1x_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !4, !align !18, !noundef !4 ; 6 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 6 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 6 uses
  %i.f = icmp eq ptr %i.a, %i.c
  br i1 %i.f, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRffuNCNCNvNtCsltEA4u8Pgfu_11candle_core10test_utils13to_vec2_round00NCINvNvBS_8for_each4callfNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB3P_3VecfE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2n_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = ptrtoint ptr %i.a to i64
  %i.i = sub nuw i64 %i.g, %i.h                   ; 4 uses
  %i.j = lshr i64 %i.i, 2                         ; 4 uses
  %min.iters.check = icmp ult i64 %i.i, 16
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.b
  %i.k = shl i64 %.sroa.5.0.copyload, 2           ; 2 uses
  %i.l = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.k ; 2 uses
  %i.m = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.k
  %i.n = getelementptr i8, ptr %i.m, i64 %i.i     ; 2 uses
  %i.o = getelementptr i8, ptr %i.e, i64 4
  %bound0 = icmp ult ptr %i.l, %i.c
  %bound1 = icmp ult ptr %i.a, %i.n
  %found.conflict = and i1 %bound0, %bound1
  %bound08 = icmp ult ptr %i.l, %i.o
  %bound19 = icmp ult ptr %i.e, %i.n
  %found.conflict10 = and i1 %bound08, %bound19
  %conflict.rdx = or i1 %found.conflict, %found.conflict10
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.j, 4611686018427387900      ; 4 uses
  %i.p = add i64 %.sroa.5.0.copyload, %n.vec      ; 2 uses
  %i.q = load float, ptr %i.e, align 4, !alias.scope !4662, !noalias !4663, !noundef !4
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.q, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.r = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index
  %wide.load = load <4 x float>, ptr %i.s, align 4, !alias.scope !4664, !noalias !4665
  %i.t = fmul <4 x float> %wide.load, %broadcast.splat
  %i.u = tail call <4 x float> @llvm.round.v4f32(<4 x float> %i.t)
  %i.v = fdiv <4 x float> %i.u, %broadcast.splat
  %i.w = getelementptr [4 x i8], ptr %i.r, i64 %index
  store <4 x float> %i.v, ptr %i.w, align 4, !alias.scope !4666, !noalias !4667
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !4660

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.j, %n.vec
  br i1 %cmp.n, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRffuNCNCNvNtCsltEA4u8Pgfu_11candle_core10test_utils13to_vec2_round00NCINvNvBS_8for_each4callfNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB3P_3VecfE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2n_.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.b, %middle.block
  %.ph = phi i64 [ %.sroa.5.0.copyload, %vector.memcheck ], [ %.sroa.5.0.copyload, %bb.b ], [ %i.p, %middle.block ] ; 3 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.b ], [ %n.vec, %middle.block ] ; 4 uses
  %.neg = or disjoint i64 %.sroa.01.0.i.ph, 1
  %i.y = and i64 %i.i, 4
  %lcmp.mod.not = icmp eq i64 %i.y, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.sroa.01.0.i.ph
  %.val15.i.prol = load float, ptr %i.z, align 4, !noalias !4665, !noundef !4
  %i.aa = load float, ptr %i.e, align 4, !noalias !4663, !noundef !4 ; 2 uses
  %i.ab = fmul float %.val15.i.prol, %i.aa
  %i.ac = tail call float @llvm.round.f32(float %i.ab)
  %i.ad = fdiv float %i.ac, %i.aa
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %.ph
  store float %i.ad, ptr %i.ae, align 4, !noalias !4668
  %i.af = add i64 %.ph, 1                         ; 2 uses
  %i.ag = or disjoint i64 %.sroa.01.0.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.af, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.af, %scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], [ %i.ag, %scalar.ph.prol ]
  %i.ah = icmp eq i64 %i.j, %.neg
  br i1 %i.ah, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRffuNCNCNvNtCsltEA4u8Pgfu_11candle_core10test_utils13to_vec2_round00NCINvNvBS_8for_each4callfNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB3P_3VecfE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2n_.exit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.ai = phi i64 [ %i.ax, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ %i.ay, %scalar.ph ], [ %.sroa.01.0.i.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.sroa.01.0.i
  %.val15.i = load float, ptr %i.aj, align 4, !noalias !4665, !noundef !4
  %i.ak = load float, ptr %i.e, align 4, !noalias !4663, !noundef !4 ; 2 uses
  %i.al = fmul float %.val15.i, %i.ak
  %i.am = tail call float @llvm.round.f32(float %i.al)
  %i.an = fdiv float %i.am, %i.ak
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.ai
  store float %i.an, ptr %i.ao, align 4, !noalias !4668
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.sroa.01.0.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  %.val15.i.1 = load float, ptr %i.aq, align 4, !noalias !4665, !noundef !4
  %i.ar = load float, ptr %i.e, align 4, !noalias !4663, !noundef !4 ; 2 uses
  %i.as = fmul float %.val15.i.1, %i.ar
  %i.at = tail call float @llvm.round.f32(float %i.as)
  %i.au = fdiv float %i.at, %i.ar
  %i.av = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.ai
  %i.aw = getelementptr i8, ptr %i.av, i64 4
  store float %i.au, ptr %i.aw, align 4, !noalias !4668
  %i.ax = add i64 %i.ai, 2                        ; 2 uses
  %i.ay = add nuw i64 %.sroa.01.0.i, 2            ; 2 uses
  %i.az = icmp eq i64 %i.ay, %i.j
  br i1 %i.az, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRffuNCNCNvNtCsltEA4u8Pgfu_11candle_core10test_utils13to_vec2_round00NCINvNvBS_8for_each4callfNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB3P_3VecfE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2n_.exit, label %scalar.ph, !llvm.loop !4661

_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRffuNCNCNvNtCsltEA4u8Pgfu_11candle_core10test_utils13to_vec2_round00NCINvNvBS_8for_each4callfNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB3P_3VecfE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2n_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.p, %middle.block ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.ax, %scalar.ph ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !4665
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterfENCNvNtCsltEA4u8Pgfu_11candle_core10test_utils13to_vec1_round0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2p_8for_each4callfNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB3C_3VecfE14extend_trustedBN_E0E0EB1v_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !4, !align !18, !noundef !4 ; 6 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 6 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 6 uses
  %i.f = icmp eq ptr %i.a, %i.c
  br i1 %i.f, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRffuNCNvNtCsltEA4u8Pgfu_11candle_core10test_utils13to_vec1_round0NCINvNvBS_8for_each4callfNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB3M_3VecfE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2l_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = ptrtoint ptr %i.a to i64
  %i.i = sub nuw i64 %i.g, %i.h                   ; 4 uses
  %i.j = lshr i64 %i.i, 2                         ; 4 uses
  %min.iters.check = icmp ult i64 %i.i, 16
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.b
  %i.k = shl i64 %.sroa.5.0.copyload, 2           ; 2 uses
  %i.l = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.k ; 2 uses
  %i.m = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.k
  %i.n = getelementptr i8, ptr %i.m, i64 %i.i     ; 2 uses
  %i.o = getelementptr i8, ptr %i.e, i64 4
  %bound0 = icmp ult ptr %i.l, %i.c
  %bound1 = icmp ult ptr %i.a, %i.n
  %found.conflict = and i1 %bound0, %bound1
  %bound08 = icmp ult ptr %i.l, %i.o
  %bound19 = icmp ult ptr %i.e, %i.n
  %found.conflict10 = and i1 %bound08, %bound19
  %conflict.rdx = or i1 %found.conflict, %found.conflict10
  br i1 %conflict.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.j, 4611686018427387900      ; 4 uses
  %i.p = add i64 %.sroa.5.0.copyload, %n.vec      ; 2 uses
  %i.q = load float, ptr %i.e, align 4, !alias.scope !4683, !noalias !4684, !noundef !4
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.q, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.r = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index
  %wide.load = load <4 x float>, ptr %i.s, align 4, !alias.scope !4685, !noalias !4686
  %i.t = fmul <4 x float> %wide.load, %broadcast.splat
  %i.u = tail call <4 x float> @llvm.round.v4f32(<4 x float> %i.t)
  %i.v = fdiv <4 x float> %i.u, %broadcast.splat
  %i.w = getelementptr [4 x i8], ptr %i.r, i64 %index
  store <4 x float> %i.v, ptr %i.w, align 4, !alias.scope !4687, !noalias !4688
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.x = icmp eq i64 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !4681

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.j, %n.vec
  br i1 %cmp.n, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRffuNCNvNtCsltEA4u8Pgfu_11candle_core10test_utils13to_vec1_round0NCINvNvBS_8for_each4callfNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB3M_3VecfE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2l_.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.b, %middle.block
  %.ph = phi i64 [ %.sroa.5.0.copyload, %vector.memcheck ], [ %.sroa.5.0.copyload, %bb.b ], [ %i.p, %middle.block ] ; 3 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.b ], [ %n.vec, %middle.block ] ; 4 uses
  %.neg = or disjoint i64 %.sroa.01.0.i.ph, 1
  %i.y = and i64 %i.i, 4
  %lcmp.mod.not = icmp eq i64 %i.y, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.sroa.01.0.i.ph
  %.val15.i.prol = load float, ptr %i.z, align 4, !noalias !4686, !noundef !4
  %i.aa = load float, ptr %i.e, align 4, !noalias !4684, !noundef !4 ; 2 uses
  %i.ab = fmul float %.val15.i.prol, %i.aa
  %i.ac = tail call float @llvm.round.f32(float %i.ab)
  %i.ad = fdiv float %i.ac, %i.aa
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %.ph
  store float %i.ad, ptr %i.ae, align 4, !noalias !4689
  %i.af = add i64 %.ph, 1                         ; 2 uses
  %i.ag = or disjoint i64 %.sroa.01.0.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.af, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.af, %scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], [ %i.ag, %scalar.ph.prol ]
  %i.ah = icmp eq i64 %i.j, %.neg
  br i1 %i.ah, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRffuNCNvNtCsltEA4u8Pgfu_11candle_core10test_utils13to_vec1_round0NCINvNvBS_8for_each4callfNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB3M_3VecfE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2l_.exit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.ai = phi i64 [ %i.ax, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ %i.ay, %scalar.ph ], [ %.sroa.01.0.i.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.sroa.01.0.i
  %.val15.i = load float, ptr %i.aj, align 4, !noalias !4686, !noundef !4
  %i.ak = load float, ptr %i.e, align 4, !noalias !4684, !noundef !4 ; 2 uses
  %i.al = fmul float %.val15.i, %i.ak
  %i.am = tail call float @llvm.round.f32(float %i.al)
  %i.an = fdiv float %i.am, %i.ak
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.ai
  store float %i.an, ptr %i.ao, align 4, !noalias !4689
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.sroa.01.0.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  %.val15.i.1 = load float, ptr %i.aq, align 4, !noalias !4686, !noundef !4
  %i.ar = load float, ptr %i.e, align 4, !noalias !4684, !noundef !4 ; 2 uses
  %i.as = fmul float %.val15.i.1, %i.ar
  %i.at = tail call float @llvm.round.f32(float %i.as)
  %i.au = fdiv float %i.at, %i.ar
  %i.av = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.ai
  %i.aw = getelementptr i8, ptr %i.av, i64 4
  store float %i.au, ptr %i.aw, align 4, !noalias !4689
  %i.ax = add i64 %i.ai, 2                        ; 2 uses
  %i.ay = add nuw i64 %.sroa.01.0.i, 2            ; 2 uses
  %i.az = icmp eq i64 %i.ay, %i.j
  br i1 %i.az, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRffuNCNvNtCsltEA4u8Pgfu_11candle_core10test_utils13to_vec1_round0NCINvNvBS_8for_each4callfNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB3M_3VecfE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2l_.exit, label %scalar.ph, !llvm.loop !4682

_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterfENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRffuNCNvNtCsltEA4u8Pgfu_11candle_core10test_utils13to_vec1_round0NCINvNvBS_8for_each4callfNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB3M_3VecfE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2l_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.p, %middle.block ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.ax, %scalar.ph ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !4686
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterhENCINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils9unary_maphNtCshigRrDowciq_6float86F8E4M3NCNvXss_B1w_NtB1w_10CpuStorageNtNtB1y_7backend14BackendStorage8to_dtypesH_0E0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4d_8for_each4callB2t_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB5t_3VecB2t_E14extend_trustedBN_E0E0EB1y_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhNtCshigRrDowciq_6float86F8E4M3uNCINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils9unary_maphB2d_NCNvXss_B2P_NtB2P_10CpuStorageNtNtB2R_7backend14BackendStorage8to_dtypesH_0E0NCINvNvBS_8for_each4callB2d_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB5G_3VecB2d_E14extend_trustedINtB1I_3MapBF_B2I_EE0E0E0EB2R_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.a to i64
  %i.g = sub nuw i64 %i.e, %i.f
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.val10.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.l, %bb.d ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.m, %bb.d ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.01.0.i
  %.val15.i = load i8, ptr %i.h, align 1, !noalias !4698, !noundef !4
  %i.i = uitofp i8 %.val15.i to float
  %i.j = invoke noundef i8 @_RNvMCshigRrDowciq_6float8NtB2_6F8E4M38from_f32(float noundef %i.i)
          to label %bb.d unwind label %bb.e, !noalias !4698

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.8.0.copyload, i64 %.val10.i
  store i8 %i.j, ptr %i.k, align 1, !noalias !4699
  %i.l = add i64 %.val10.i, 1                     ; 2 uses
  %i.m = add nuw i64 %.sroa.01.0.i, 1             ; 2 uses
  %i.n = icmp eq i64 %i.m, %i.g
  br i1 %i.n, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhNtCshigRrDowciq_6float86F8E4M3uNCINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils9unary_maphB2d_NCNvXss_B2P_NtB2P_10CpuStorageNtNtB2R_7backend14BackendStorage8to_dtypesH_0E0NCINvNvBS_8for_each4callB2d_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB5G_3VecB2d_E14extend_trustedINtB1I_3MapBF_B2I_EE0E0E0EB2R_.exit, label %bb.c

bb.e:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val10.i, ptr %.sroa.0.0.copyload, align 8, !noalias !4698
  resume { ptr, i32 } %i.o

_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhNtCshigRrDowciq_6float86F8E4M3uNCINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils9unary_maphB2d_NCNvXss_B2P_NtB2P_10CpuStorageNtNtB2R_7backend14BackendStorage8to_dtypesH_0E0NCINvNvBS_8for_each4callB2d_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB5G_3VecB2d_E14extend_trustedINtB1I_3MapBF_B2I_EE0E0E0EB2R_.exit: ; preds = %bb.d, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.l, %bb.d ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !4698
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterhENCINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils9unary_maphNtNtCsdsILkMb8ZHY_4half6bfloat4bf16NCNvXss_B1w_NtB1w_10CpuStorageNtNtB1y_7backend14BackendStorage8to_dtype0E0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4f_8for_each4callB2t_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB5v_3VecB2t_E14extend_trustedBN_E0E0EB1y_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 7 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 4 uses
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhNtNtCsdsILkMb8ZHY_4half6bfloat4bf16uNCINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils9unary_maphB2d_NCNvXss_B2U_NtB2U_10CpuStorageNtNtB2W_7backend14BackendStorage8to_dtype0E0NCINvNvBS_8for_each4callB2d_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB5I_3VecB2d_E14extend_trustedINtB1I_3MapBF_B2N_EE0E0E0EB2W_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f                       ; 4 uses
  %min.iters.check = icmp ult i64 %i.g, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.b
  %i.h = shl i64 %.sroa.5.0.copyload, 1
  %i.i = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.h
  %i.j = add i64 %.sroa.5.0.copyload, %i.e
  %i.k = sub i64 %i.j, %i.f
  %i.l = shl i64 %i.k, 1
  %i.m = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.l
  %bound0 = icmp ult ptr %i.i, %i.c
  %bound1 = icmp ult ptr %i.a, %i.m
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.g, -8                       ; 4 uses
  %i.n = add i64 %.sroa.5.0.copyload, %n.vec      ; 2 uses
  %i.o = getelementptr [2 x i8], ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  %wide.load = load <8 x i8>, ptr %i.p, align 1, !alias.scope !4713, !noalias !4714
  %i.q = uitofp <8 x i8> %wide.load to <8 x float>
  %i.r = bitcast <8 x float> %i.q to <8 x i32>    ; 4 uses
  %i.s = icmp samesign ugt <8 x i32> %i.r, splat (i32 2139095040)
  %i.t = and <8 x i32> %i.r, splat (i32 32768)
  %i.u = icmp ne <8 x i32> %i.t, zeroinitializer
  %i.v = and <8 x i32> %i.r, splat (i32 98303)
  %i.w = icmp ne <8 x i32> %i.v, zeroinitializer
  %i.x = and <8 x i1> %i.u, %i.w
  %i.y = lshr <8 x i32> %i.r, splat (i32 16)
  %i.z = trunc nuw nsw <8 x i32> %i.y to <8 x i16> ; 2 uses
  %i.aa = zext <8 x i1> %i.x to <8 x i16>
  %i.ab = add nuw nsw <8 x i16> %i.aa, %i.z
  %i.ac = or <8 x i16> %i.z, splat (i16 64)
  %predphi = select <8 x i1> %i.s, <8 x i16> %i.ac, <8 x i16> %i.ab
  %i.ad = getelementptr [2 x i8], ptr %i.o, i64 %index
  store <8 x i16> %predphi, ptr %i.ad, align 2, !alias.scope !4715, !noalias !4716
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ae = icmp eq i64 %index.next, %n.vec
  br i1 %i.ae, label %middle.block, label %vector.body, !llvm.loop !4711

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.g, %n.vec
  br i1 %cmp.n, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRhNtNtCsdsILkMb8ZHY_4half6bfloat4bf16uNCINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils9unary_maphB2d_NCNvXss_B2U_NtB2U_10CpuStorageNtNtB2W_7backend14BackendStorage8to_dtype0E0NCINvNvBS_8for_each4callB2d_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB5I_3VecB2d_E14extend_trustedINtB1I_3MapBF_B2N_EE0E0E0EB2W_.exit, label %scalar.ph.preheader
end_hunk_0
