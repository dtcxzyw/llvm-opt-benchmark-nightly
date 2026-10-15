Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/candle-rs/original/candle_core-29a639a172b36b04.candle_core.fa2bc8e788f5f12a-cgu.03?download=true
inline.NumInlined: 5426
inline.NumDeleted: 3862
loop-unroll.NumRuntimeUnrolled: 177
loop-unroll.NumUnrolled: 177
begin_hunk_0_@_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterdENCINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils9unary_mapddNCNvXss_B1w_NtB1w_10CpuStorageNtNtB1y_7backend14BackendStorage4powfs1_0E0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3G_8for_each4calldNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4T_3VecdE14extend_trustedBN_E0E0EB1y_:bb.a
  %i.v = getelementptr i8, ptr %i.u, i64 8
  store double %i.t, ptr %i.v, align 8, !noalias !4438
  %i.w = add i64 %i.l, 2                          ; 3 uses
  %i.x = add nuw i64 %.sroa.01.0.i, 2             ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRdduNCINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils9unary_mapddNCNvXss_B2m_NtB2m_10CpuStorageNtNtB2o_7backend14BackendStorage4powfs1_0E0NCINvNvBS_8for_each4calldNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB53_3VecdE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2o_.exit.loopexit.unr-lcssa, label %bb.c

_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRdduNCINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils9unary_mapddNCNvXss_B2m_NtB2m_10CpuStorageNtNtB2o_7backend14BackendStorage4powfs1_0E0NCINvNvBS_8for_each4calldNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB53_3VecdE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2o_.exit.loopexit.unr-lcssa: ; preds = %bb.c
  %i.y = and i64 %i.i, 8
  %lcmp.mod.not = icmp eq i64 %i.y, 0
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRdduNCINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils9unary_mapddNCNvXss_B2m_NtB2m_10CpuStorageNtNtB2o_7backend14BackendStorage4powfs1_0E0NCINvNvBS_8for_each4calldNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB53_3VecdE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2o_.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRdduNCINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils9unary_mapddNCNvXss_B2m_NtB2m_10CpuStorageNtNtB2o_7backend14BackendStorage4powfs1_0E0NCINvNvBS_8for_each4calldNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB53_3VecdE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2o_.exit.loopexit.unr-lcssa, %bb.b
  %.epil.init = phi i64 [ %.sroa.5.0.copyload, %bb.b ], [ %i.w, %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRdduNCINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils9unary_mapddNCNvXss_B2m_NtB2m_10CpuStorageNtNtB2o_7backend14BackendStorage4powfs1_0E0NCINvNvBS_8for_each4calldNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB53_3VecdE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2o_.exit.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.01.0.i.epil.init = phi i64 [ 0, %bb.b ], [ %i.x, %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRdduNCINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils9unary_mapddNCNvXss_B2m_NtB2m_10CpuStorageNtNtB2o_7backend14BackendStorage4powfs1_0E0NCINvNvBS_8for_each4calldNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB53_3VecdE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2o_.exit.loopexit.unr-lcssa ]
  %lcmp.mod3 = trunc i64 %i.j to i1
  tail call void @llvm.assume(i1 %lcmp.mod3)
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.sroa.01.0.i.epil.init
  %.val15.i.epil = load double, ptr %i.z, align 8, !noalias !4436, !noundef !4
  %.val.i.i.i.epil = load ptr, ptr %i.e, align 8, !noalias !4437, !nonnull !4, !align !7, !noundef !4
  %i.aa = load double, ptr %.val.i.i.i.epil, align 8, !noalias !4437, !noundef !4
  %i.ab = tail call noundef double @llvm.pow.f64(double %.val15.i.epil, double %i.aa)
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %.epil.init
  store double %i.ab, ptr %i.ac, align 8, !noalias !4438
  %i.ad = add i64 %.epil.init, 1
  br label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRdduNCINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils9unary_mapddNCNvXss_B2m_NtB2m_10CpuStorageNtNtB2o_7backend14BackendStorage4powfs1_0E0NCINvNvBS_8for_each4calldNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB53_3VecdE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2o_.exit

_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRdduNCINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils9unary_mapddNCNvXss_B2m_NtB2m_10CpuStorageNtNtB2o_7backend14BackendStorage4powfs1_0E0NCINvNvBS_8for_each4calldNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB53_3VecdE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2o_.exit: ; preds = %.epil.preheader, %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRdduNCINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils9unary_mapddNCNvXss_B2m_NtB2m_10CpuStorageNtNtB2o_7backend14BackendStorage4powfs1_0E0NCINvNvBS_8for_each4calldNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB53_3VecdE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2o_.exit.loopexit.unr-lcssa, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.w, %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRdduNCINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils9unary_mapddNCNvXss_B2m_NtB2m_10CpuStorageNtNtB2o_7backend14BackendStorage4powfs1_0E0NCINvNvBS_8for_each4calldNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB53_3VecdE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2o_.exit.loopexit.unr-lcssa ], [ %i.ad, %.epil.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !4436
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterdENCINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils9unary_mapddNCNvXss_B1w_NtB1w_10CpuStorageNtNtB1y_7backend14BackendStorage8to_dtypesG_0E0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3K_8for_each4calldNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4X_3VecdE14extend_trustedBN_E0E0EB1y_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 6 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 7 uses
  %.sroa.7.0.copyload3 = ptrtoaddr ptr %.sroa.7.0.copyload to i64
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRdduNCINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils9unary_mapddNCNvXss_B2m_NtB2m_10CpuStorageNtNtB2o_7backend14BackendStorage8to_dtypesG_0E0NCINvNvBS_8for_each4calldNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB57_3VecdE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2o_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.g = sub nuw i64 %i.e, %i.f                   ; 2 uses
  %i.h = lshr i64 %i.g, 3                         ; 5 uses
  %min.iters.check = icmp ult i64 %i.g, 80
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.b
  %i.i = shl i64 %.sroa.5.0.copyload, 3
  %i.j = add i64 %i.i, %.sroa.7.0.copyload3
  %i.k = sub i64 %i.f, %i.j
  %diff.check = icmp ugt i64 %i.k, -32
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.h, 2305843009213693948      ; 4 uses
  %i.l = add i64 %.sroa.5.0.copyload, %n.vec      ; 2 uses
  %i.m = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %index ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %wide.load = load <2 x double>, ptr %i.n, align 8, !noalias !4450
  %wide.load4 = load <2 x double>, ptr %i.o, align 8, !noalias !4450
  %i.p = getelementptr [8 x i8], ptr %i.m, i64 %index ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store <2 x double> %wide.load, ptr %i.p, align 8, !noalias !4451
  store <2 x double> %wide.load4, ptr %i.q, align 8, !noalias !4451
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.r = icmp eq i64 %index.next, %n.vec
  br i1 %i.r, label %middle.block, label %vector.body, !llvm.loop !4447

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.h, %n.vec
  br i1 %cmp.n, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRdduNCINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils9unary_mapddNCNvXss_B2m_NtB2m_10CpuStorageNtNtB2o_7backend14BackendStorage8to_dtypesG_0E0NCINvNvBS_8for_each4calldNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB57_3VecdE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2o_.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.b, %middle.block
  %.ph = phi i64 [ %.sroa.5.0.copyload, %vector.memcheck ], [ %.sroa.5.0.copyload, %bb.b ], [ %i.l, %middle.block ] ; 2 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.b ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.h, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %i.s = phi i64 [ %i.v, %scalar.ph.prol ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.01.0.i.prol = phi i64 [ %i.w, %scalar.ph.prol ], [ %.sroa.01.0.i.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.sroa.01.0.i.prol
  %.val15.i.prol = load double, ptr %i.t, align 8, !noalias !4450, !noundef !4
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.s
  store double %.val15.i.prol, ptr %i.u, align 8, !noalias !4451
  %i.v = add i64 %i.s, 1                          ; 3 uses
  %i.w = add nuw i64 %.sroa.01.0.i.prol, 1        ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !4448

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.v, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.v, %scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], [ %i.w, %scalar.ph.prol ]
  %i.x = sub nsw i64 %.sroa.01.0.i.ph, %i.h
  %i.y = icmp ugt i64 %i.x, -4
  br i1 %i.y, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRdduNCINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils9unary_mapddNCNvXss_B2m_NtB2m_10CpuStorageNtNtB2o_7backend14BackendStorage8to_dtypesG_0E0NCINvNvBS_8for_each4calldNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB57_3VecdE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2o_.exit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.z = phi i64 [ %i.ao, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %.sroa.01.0.i = phi i64 [ %i.ap, %scalar.ph ], [ %.sroa.01.0.i.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.sroa.01.0.i
  %.val15.i = load double, ptr %i.aa, align 8, !noalias !4450, !noundef !4
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.z
  store double %.val15.i, ptr %i.ab, align 8, !noalias !4451
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.sroa.01.0.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %.val15.i.1 = load double, ptr %i.ad, align 8, !noalias !4450, !noundef !4
  %i.ae = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.z
  %i.af = getelementptr i8, ptr %i.ae, i64 8
  store double %.val15.i.1, ptr %i.af, align 8, !noalias !4451
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.sroa.01.0.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %.val15.i.2 = load double, ptr %i.ah, align 8, !noalias !4450, !noundef !4
  %i.ai = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.z
  %i.aj = getelementptr i8, ptr %i.ai, i64 16
  store double %.val15.i.2, ptr %i.aj, align 8, !noalias !4451
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.sroa.01.0.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %.val15.i.3 = load double, ptr %i.al, align 8, !noalias !4450, !noundef !4
  %i.am = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.z
  %i.an = getelementptr i8, ptr %i.am, i64 24
  store double %.val15.i.3, ptr %i.an, align 8, !noalias !4451
  %i.ao = add i64 %i.z, 4                         ; 2 uses
  %i.ap = add nuw i64 %.sroa.01.0.i, 4            ; 2 uses
  %i.aq = icmp eq i64 %i.ap, %i.h
  br i1 %i.aq, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRdduNCINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils9unary_mapddNCNvXss_B2m_NtB2m_10CpuStorageNtNtB2o_7backend14BackendStorage8to_dtypesG_0E0NCINvNvBS_8for_each4calldNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB57_3VecdE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2o_.exit, label %scalar.ph, !llvm.loop !4449

_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRdduNCINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils9unary_mapddNCNvXss_B2m_NtB2m_10CpuStorageNtNtB2o_7backend14BackendStorage8to_dtypesG_0E0NCINvNvBS_8for_each4calldNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB57_3VecdE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2o_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.l, %middle.block ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.ao, %scalar.ph ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !4450
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterdENCINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils9unary_mapdfNCNvXss_B1w_NtB1w_10CpuStorageNtNtB1y_7backend14BackendStorage8to_dtypese_0E0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3K_8for_each4callfNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4X_3VecfE14extend_trustedBN_E0E0EB1y_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 6 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 8 uses
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRdfuNCINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils9unary_mapdfNCNvXss_B2m_NtB2m_10CpuStorageNtNtB2o_7backend14BackendStorage8to_dtypese_0E0NCINvNvBS_8for_each4callfNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB57_3VecfE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2o_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.a to i64
  %i.g = sub nuw i64 %i.e, %i.f                   ; 3 uses
  %i.h = lshr i64 %i.g, 3                         ; 5 uses
  %min.iters.check = icmp ult i64 %i.g, 96
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.b
  %i.i = shl i64 %.sroa.5.0.copyload, 2           ; 2 uses
  %i.j = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.i
  %i.k = lshr exact i64 %i.g, 1
  %i.l = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.i
  %i.m = getelementptr i8, ptr %i.l, i64 %i.k
  %bound0 = icmp ult ptr %i.j, %i.c
  %bound1 = icmp ult ptr %i.a, %i.m
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.h, 2305843009213693948      ; 4 uses
  %i.n = add i64 %.sroa.5.0.copyload, %n.vec      ; 2 uses
  %i.o = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %index ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %wide.load = load <2 x double>, ptr %i.p, align 8, !alias.scope !4466, !noalias !4467
  %wide.load4 = load <2 x double>, ptr %i.q, align 8, !alias.scope !4466, !noalias !4467
  %i.r = getelementptr [4 x i8], ptr %i.o, i64 %index
  %2 = shufflevector <2 x double> %wide.load, <2 x double> %wide.load4, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %3 = fptrunc <4 x double> %2 to <4 x float>
  store <4 x float> %3, ptr %i.r, align 4, !alias.scope !4468, !noalias !4469
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.s = icmp eq i64 %index.next, %n.vec
  br i1 %i.s, label %middle.block, label %vector.body, !llvm.loop !4463

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.h, %n.vec
  br i1 %cmp.n, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRdfuNCINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils9unary_mapdfNCNvXss_B2m_NtB2m_10CpuStorageNtNtB2o_7backend14BackendStorage8to_dtypese_0E0NCINvNvBS_8for_each4callfNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB57_3VecfE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2o_.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.b, %middle.block
  %.ph = phi i64 [ %.sroa.5.0.copyload, %vector.memcheck ], [ %.sroa.5.0.copyload, %bb.b ], [ %i.n, %middle.block ] ; 2 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.b ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.h, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %i.t = phi i64 [ %i.x, %scalar.ph.prol ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.01.0.i.prol = phi i64 [ %i.y, %scalar.ph.prol ], [ %.sroa.01.0.i.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.sroa.01.0.i.prol
  %.val15.i.prol = load double, ptr %i.u, align 8, !noalias !4467, !noundef !4
  %i.v = fptrunc double %.val15.i.prol to float
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.t
  store float %i.v, ptr %i.w, align 4, !noalias !4470
  %i.x = add i64 %i.t, 1                          ; 3 uses
  %i.y = add nuw i64 %.sroa.01.0.i.prol, 1        ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !4464

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.x, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.x, %scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], [ %i.y, %scalar.ph.prol ]
  %i.z = sub nsw i64 %.sroa.01.0.i.ph, %i.h
  %i.aa = icmp ugt i64 %i.z, -4
  br i1 %i.aa, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRdfuNCINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils9unary_mapdfNCNvXss_B2m_NtB2m_10CpuStorageNtNtB2o_7backend14BackendStorage8to_dtypese_0E0NCINvNvBS_8for_each4callfNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB57_3VecfE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2o_.exit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.ab = phi i64 [ %i.au, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %.sroa.01.0.i = phi i64 [ %i.av, %scalar.ph ], [ %.sroa.01.0.i.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.sroa.01.0.i
  %.val15.i = load double, ptr %i.ac, align 8, !noalias !4467, !noundef !4
  %i.ad = fptrunc double %.val15.i to float
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.ab
  store float %i.ad, ptr %i.ae, align 4, !noalias !4470
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.sroa.01.0.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %.val15.i.1 = load double, ptr %i.ag, align 8, !noalias !4467, !noundef !4
  %i.ah = fptrunc double %.val15.i.1 to float
  %i.ai = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.ab
  %i.aj = getelementptr i8, ptr %i.ai, i64 4
  store float %i.ah, ptr %i.aj, align 4, !noalias !4470
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.sroa.01.0.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %.val15.i.2 = load double, ptr %i.al, align 8, !noalias !4467, !noundef !4
  %i.am = fptrunc double %.val15.i.2 to float
  %i.an = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.ab
  %i.ao = getelementptr i8, ptr %i.an, i64 8
  store float %i.am, ptr %i.ao, align 4, !noalias !4470
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.sroa.01.0.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %.val15.i.3 = load double, ptr %i.aq, align 8, !noalias !4467, !noundef !4
  %i.ar = fptrunc double %.val15.i.3 to float
  %i.as = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.ab
  %i.at = getelementptr i8, ptr %i.as, i64 12
  store float %i.ar, ptr %i.at, align 4, !noalias !4470
  %i.au = add i64 %i.ab, 4                        ; 2 uses
  %i.av = add nuw i64 %.sroa.01.0.i, 4            ; 2 uses
  %i.aw = icmp eq i64 %i.av, %i.h
  br i1 %i.aw, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRdfuNCINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils9unary_mapdfNCNvXss_B2m_NtB2m_10CpuStorageNtNtB2o_7backend14BackendStorage8to_dtypese_0E0NCINvNvBS_8for_each4callfNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB57_3VecfE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2o_.exit, label %scalar.ph, !llvm.loop !4465

_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRdfuNCINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils9unary_mapdfNCNvXss_B2m_NtB2m_10CpuStorageNtNtB2o_7backend14BackendStorage8to_dtypese_0E0NCINvNvBS_8for_each4callfNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB57_3VecfE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2o_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.n, %middle.block ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.au, %scalar.ph ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !4467
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterdENCINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils9unary_mapdhNCNvXss_B1w_NtB1w_10CpuStorageNtNtB1y_7backend14BackendStorage8to_dtypesj_0E0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3K_8for_each4callhNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4X_3VechE14extend_trustedBN_E0E0EB1y_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
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
  br i1 %i.d, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRdhuNCINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils9unary_mapdhNCNvXss_B2m_NtB2m_10CpuStorageNtNtB2o_7backend14BackendStorage8to_dtypesj_0E0NCINvNvBS_8for_each4callhNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB57_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2o_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.a to i64
  %i.g = sub nuw i64 %i.e, %i.f                   ; 3 uses
  %i.h = lshr exact i64 %i.g, 3                   ; 2 uses
  %i.i = icmp eq i64 %i.g, 8
  br i1 %i.i, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %i.h, 2305843009213693950
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.new
  %i.j = phi i64 [ %.sroa.5.0.copyload, %.new ], [ %i.s, %bb.c ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %.new ], [ %i.t, %bb.c ] ; 3 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.c ]
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.sroa.01.0.i
  %.val15.i = load double, ptr %i.k, align 8, !noalias !4479, !noundef !4
  %i.l = tail call noundef i8 @llvm.fptoui.sat.i8.f64(double %.val15.i)
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 %i.j
  store i8 %i.l, ptr %i.m, align 1, !noalias !4480
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.sroa.01.0.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.val15.i.1 = load double, ptr %i.o, align 8, !noalias !4479, !noundef !4
  %i.p = tail call noundef i8 @llvm.fptoui.sat.i8.f64(double %.val15.i.1)
  %i.q = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.j
  %i.r = getelementptr i8, ptr %i.q, i64 1
  store i8 %i.p, ptr %i.r, align 1, !noalias !4480
  %i.s = add i64 %i.j, 2                          ; 3 uses
  %i.t = add nuw i64 %.sroa.01.0.i, 2             ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRdhuNCINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils9unary_mapdhNCNvXss_B2m_NtB2m_10CpuStorageNtNtB2o_7backend14BackendStorage8to_dtypesj_0E0NCINvNvBS_8for_each4callhNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB57_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2o_.exit.loopexit.unr-lcssa, label %bb.c

_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRdhuNCINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils9unary_mapdhNCNvXss_B2m_NtB2m_10CpuStorageNtNtB2o_7backend14BackendStorage8to_dtypesj_0E0NCINvNvBS_8for_each4callhNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB57_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2o_.exit.loopexit.unr-lcssa: ; preds = %bb.c
  %i.u = and i64 %i.g, 8
  %lcmp.mod.not = icmp eq i64 %i.u, 0
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRdhuNCINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils9unary_mapdhNCNvXss_B2m_NtB2m_10CpuStorageNtNtB2o_7backend14BackendStorage8to_dtypesj_0E0NCINvNvBS_8for_each4callhNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB57_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2o_.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRdhuNCINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils9unary_mapdhNCNvXss_B2m_NtB2m_10CpuStorageNtNtB2o_7backend14BackendStorage8to_dtypesj_0E0NCINvNvBS_8for_each4callhNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB57_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2o_.exit.loopexit.unr-lcssa, %bb.b
  %.epil.init = phi i64 [ %.sroa.5.0.copyload, %bb.b ], [ %i.s, %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRdhuNCINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils9unary_mapdhNCNvXss_B2m_NtB2m_10CpuStorageNtNtB2o_7backend14BackendStorage8to_dtypesj_0E0NCINvNvBS_8for_each4callhNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB57_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2o_.exit.loopexit.unr-lcssa ] ; 2 uses
  %.sroa.01.0.i.epil.init = phi i64 [ 0, %bb.b ], [ %i.t, %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRdhuNCINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils9unary_mapdhNCNvXss_B2m_NtB2m_10CpuStorageNtNtB2o_7backend14BackendStorage8to_dtypesj_0E0NCINvNvBS_8for_each4callhNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB57_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2o_.exit.loopexit.unr-lcssa ]
  %lcmp.mod3 = trunc i64 %i.h to i1
  tail call void @llvm.assume(i1 %lcmp.mod3)
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.sroa.01.0.i.epil.init
  %.val15.i.epil = load double, ptr %i.v, align 8, !noalias !4479, !noundef !4
  %i.w = tail call noundef i8 @llvm.fptoui.sat.i8.f64(double %.val15.i.epil)
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 %.epil.init
  store i8 %i.w, ptr %i.x, align 1, !noalias !4480
  %i.y = add i64 %.epil.init, 1
  br label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRdhuNCINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils9unary_mapdhNCNvXss_B2m_NtB2m_10CpuStorageNtNtB2o_7backend14BackendStorage8to_dtypesj_0E0NCINvNvBS_8for_each4callhNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB57_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2o_.exit

_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRdhuNCINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils9unary_mapdhNCNvXss_B2m_NtB2m_10CpuStorageNtNtB2o_7backend14BackendStorage8to_dtypesj_0E0NCINvNvBS_8for_each4callhNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB57_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2o_.exit: ; preds = %.epil.preheader, %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRdhuNCINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils9unary_mapdhNCNvXss_B2m_NtB2m_10CpuStorageNtNtB2o_7backend14BackendStorage8to_dtypesj_0E0NCINvNvBS_8for_each4callhNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB57_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2o_.exit.loopexit.unr-lcssa, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.s, %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRdhuNCINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils9unary_mapdhNCNvXss_B2m_NtB2m_10CpuStorageNtNtB2o_7backend14BackendStorage8to_dtypesj_0E0NCINvNvBS_8for_each4callhNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB57_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2o_.exit.loopexit.unr-lcssa ], [ %i.y, %.epil.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !4479
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterdENCINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils9unary_mapdlNCNvXss_B1w_NtB1w_10CpuStorageNtNtB1y_7backend14BackendStorage8to_dtypes1c_0E0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3L_8for_each4calllNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4Y_3VeclE14extend_trustedBN_E0E0EB1y_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
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
  br i1 %i.d, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRdluNCINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils9unary_mapdlNCNvXss_B2m_NtB2m_10CpuStorageNtNtB2o_7backend14BackendStorage8to_dtypes1c_0E0NCINvNvBS_8for_each4calllNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB58_3VeclE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2o_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.a to i64
  %i.g = sub nuw i64 %i.e, %i.f                   ; 3 uses
  %i.h = lshr exact i64 %i.g, 3                   ; 2 uses
  %i.i = icmp eq i64 %i.g, 8
  br i1 %i.i, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %i.h, 2305843009213693950
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.new
  %i.j = phi i64 [ %.sroa.5.0.copyload, %.new ], [ %i.s, %bb.c ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %.new ], [ %i.t, %bb.c ] ; 3 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.c ]
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.sroa.01.0.i
  %.val15.i = load double, ptr %i.k, align 8, !noalias !4489, !noundef !4
  %i.l = tail call noundef i32 @llvm.fptosi.sat.i32.f64(double %.val15.i)
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.j
  store i32 %i.l, ptr %i.m, align 4, !noalias !4490
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.sroa.01.0.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.val15.i.1 = load double, ptr %i.o, align 8, !noalias !4489, !noundef !4
  %i.p = tail call noundef i32 @llvm.fptosi.sat.i32.f64(double %.val15.i.1)
  %i.q = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.j
  %i.r = getelementptr i8, ptr %i.q, i64 4
  store i32 %i.p, ptr %i.r, align 4, !noalias !4490
  %i.s = add i64 %i.j, 2                          ; 3 uses
  %i.t = add nuw i64 %.sroa.01.0.i, 2             ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterdENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRdluNCINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils9unary_mapdlNCNvXss_B2m_NtB2m_10CpuStorageNtNtB2o_7backend14BackendStorage8to_dtypes1c_0E0NCINvNvBS_8for_each4calllNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB58_3VeclE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2o_.exit.loopexit.unr-lcssa, label %bb.c

end_hunk_0
begin_hunk_1_@_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterxENCINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils9unary_mapxNtNtCsdsILkMb8ZHY_4half8binary163f16NCNvXss_B1w_NtB1w_10CpuStorageNtNtB1y_7backend14BackendStorage8to_dtypes5_0E0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4j_8for_each4callB2t_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB5z_3VecB2t_E14extend_trustedBN_E0E0EB1y_:bb.a

bb.o:                                             ; preds = %_RNvNtNtCsiLyULlPRkU8_10std_detect6detect5cache4test.exit.i.i.i.i, %.noexc.i
  %i.bk = tail call fastcc noundef i16 @_RNvNtNtNtCsdsILkMb8ZHY_4half8binary164arch3x8619f32_to_f16_x86_f16c(float noundef %i.k) #33
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.l, %bb.i, %bb.h, %bb.e
  %.sroa.0.0.i.i.i.i = phi i16 [ %i.bk, %bb.o ], [ %i.ab, %bb.e ], [ %i.ah, %bb.h ], [ %i.bc, %bb.l ], [ %i.bj, %bb.n ], [ %spec.select7.i.i.i.i.i, %bb.i ]
  %i.bl = getelementptr inbounds nuw [2 x i8], ptr %.sroa.8.0.copyload, i64 %.val10.i
  store i16 %.sroa.0.0.i.i.i.i, ptr %i.bl, align 2, !noalias !6019
  %i.bm = add i64 %.val10.i, 1                    ; 2 uses
  %i.bn = add nuw i64 %.sroa.01.0.i, 1            ; 2 uses
  %i.bo = icmp eq i64 %i.bn, %i.h
  br i1 %i.bo, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterxENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRxNtNtCsdsILkMb8ZHY_4half8binary163f16uNCINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils9unary_mapxB2d_NCNvXss_B2V_NtB2V_10CpuStorageNtNtB2X_7backend14BackendStorage8to_dtypes5_0E0NCINvNvBS_8for_each4callB2d_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB5M_3VecB2d_E14extend_trustedINtB1I_3MapBF_B2O_EE0E0E0EB2X_.exit, label %bb.c

bb.q:                                             ; preds = %.split.i.i.i.i
  %i.bp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val10.i, ptr %.sroa.0.0.copyload, align 8, !noalias !6018
  resume { ptr, i32 } %i.bp

_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterxENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRxNtNtCsdsILkMb8ZHY_4half8binary163f16uNCINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils9unary_mapxB2d_NCNvXss_B2V_NtB2V_10CpuStorageNtNtB2X_7backend14BackendStorage8to_dtypes5_0E0NCINvNvBS_8for_each4callB2d_NCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB5M_3VecB2d_E14extend_trustedINtB1I_3MapBF_B2O_EE0E0E0EB2X_.exit: ; preds = %bb.p, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.bm, %bb.p ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !6018
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterxENCINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils9unary_mapxdNCNvXss_B1w_NtB1w_10CpuStorageNtNtB1y_7backend14BackendStorage8to_dtypesC_0E0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3K_8for_each4calldNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4X_3VecdE14extend_trustedBN_E0E0EB1y_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 6 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 7 uses
  %.sroa.7.0.copyload3 = ptrtoaddr ptr %.sroa.7.0.copyload to i64
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterxENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRxduNCINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils9unary_mapxdNCNvXss_B2m_NtB2m_10CpuStorageNtNtB2o_7backend14BackendStorage8to_dtypesC_0E0NCINvNvBS_8for_each4calldNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB57_3VecdE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2o_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.a to i64                 ; 2 uses
  %i.g = sub nuw i64 %i.e, %i.f                   ; 2 uses
  %i.h = lshr i64 %i.g, 3                         ; 5 uses
  %min.iters.check = icmp ult i64 %i.g, 64
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.b
  %i.i = shl i64 %.sroa.5.0.copyload, 3
  %i.j = add i64 %i.i, %.sroa.7.0.copyload3
  %i.k = sub i64 %i.f, %i.j
  %diff.check = icmp ugt i64 %i.k, -32
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.h, 2305843009213693948      ; 4 uses
  %i.l = add i64 %.sroa.5.0.copyload, %n.vec      ; 2 uses
  %i.m = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %index ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %wide.load = load <2 x i64>, ptr %i.n, align 8, !noalias !6031
  %wide.load4 = load <2 x i64>, ptr %i.o, align 8, !noalias !6031
  %i.p = sitofp <2 x i64> %wide.load to <2 x double>
  %i.q = sitofp <2 x i64> %wide.load4 to <2 x double>
  %i.r = getelementptr [8 x i8], ptr %i.m, i64 %index ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  store <2 x double> %i.p, ptr %i.r, align 8, !noalias !6032
  store <2 x double> %i.q, ptr %i.s, align 8, !noalias !6032
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.t = icmp eq i64 %index.next, %n.vec
  br i1 %i.t, label %middle.block, label %vector.body, !llvm.loop !6028

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.h, %n.vec
  br i1 %cmp.n, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterxENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRxduNCINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils9unary_mapxdNCNvXss_B2m_NtB2m_10CpuStorageNtNtB2o_7backend14BackendStorage8to_dtypesC_0E0NCINvNvBS_8for_each4calldNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB57_3VecdE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2o_.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.b, %middle.block
  %.ph = phi i64 [ %.sroa.5.0.copyload, %vector.memcheck ], [ %.sroa.5.0.copyload, %bb.b ], [ %i.l, %middle.block ] ; 2 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.b ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.h, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %i.u = phi i64 [ %i.y, %scalar.ph.prol ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.01.0.i.prol = phi i64 [ %i.z, %scalar.ph.prol ], [ %.sroa.01.0.i.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.sroa.01.0.i.prol
  %.val15.i.prol = load i64, ptr %i.v, align 8, !noalias !6031, !noundef !4
  %i.w = sitofp i64 %.val15.i.prol to double
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.u
  store double %i.w, ptr %i.x, align 8, !noalias !6032
  %i.y = add i64 %i.u, 1                          ; 3 uses
  %i.z = add nuw i64 %.sroa.01.0.i.prol, 1        ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !6029

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.y, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.y, %scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], [ %i.z, %scalar.ph.prol ]
  %i.aa = sub nsw i64 %.sroa.01.0.i.ph, %i.h
  %i.ab = icmp ugt i64 %i.aa, -4
  br i1 %i.ab, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterxENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRxduNCINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils9unary_mapxdNCNvXss_B2m_NtB2m_10CpuStorageNtNtB2o_7backend14BackendStorage8to_dtypesC_0E0NCINvNvBS_8for_each4calldNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB57_3VecdE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2o_.exit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.ac = phi i64 [ %i.av, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %.sroa.01.0.i = phi i64 [ %i.aw, %scalar.ph ], [ %.sroa.01.0.i.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.sroa.01.0.i
  %.val15.i = load i64, ptr %i.ad, align 8, !noalias !6031, !noundef !4
  %i.ae = sitofp i64 %.val15.i to double
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.ac
  store double %i.ae, ptr %i.af, align 8, !noalias !6032
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.sroa.01.0.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %.val15.i.1 = load i64, ptr %i.ah, align 8, !noalias !6031, !noundef !4
  %i.ai = sitofp i64 %.val15.i.1 to double
  %i.aj = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.ac
  %i.ak = getelementptr i8, ptr %i.aj, i64 8
  store double %i.ai, ptr %i.ak, align 8, !noalias !6032
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.sroa.01.0.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %.val15.i.2 = load i64, ptr %i.am, align 8, !noalias !6031, !noundef !4
  %i.an = sitofp i64 %.val15.i.2 to double
  %i.ao = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.ac
  %i.ap = getelementptr i8, ptr %i.ao, i64 16
  store double %i.an, ptr %i.ap, align 8, !noalias !6032
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.sroa.01.0.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %.val15.i.3 = load i64, ptr %i.ar, align 8, !noalias !6031, !noundef !4
  %i.as = sitofp i64 %.val15.i.3 to double
  %i.at = getelementptr [8 x i8], ptr %.sroa.7.0.copyload, i64 %i.ac
  %i.au = getelementptr i8, ptr %i.at, i64 24
  store double %i.as, ptr %i.au, align 8, !noalias !6032
  %i.av = add i64 %i.ac, 4                        ; 2 uses
  %i.aw = add nuw i64 %.sroa.01.0.i, 4            ; 2 uses
  %i.ax = icmp eq i64 %i.aw, %i.h
  br i1 %i.ax, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterxENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRxduNCINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils9unary_mapxdNCNvXss_B2m_NtB2m_10CpuStorageNtNtB2o_7backend14BackendStorage8to_dtypesC_0E0NCINvNvBS_8for_each4calldNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB57_3VecdE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2o_.exit, label %scalar.ph, !llvm.loop !6030

_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterxENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRxduNCINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils9unary_mapxdNCNvXss_B2m_NtB2m_10CpuStorageNtNtB2o_7backend14BackendStorage8to_dtypesC_0E0NCINvNvBS_8for_each4calldNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB57_3VecdE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2o_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.l, %middle.block ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.av, %scalar.ph ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !6031
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterxENCINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils9unary_mapxfNCNvXss_B1w_NtB1w_10CpuStorageNtNtB1y_7backend14BackendStorage8to_dtypesa_0E0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3K_8for_each4callfNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4X_3VecfE14extend_trustedBN_E0E0EB1y_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 6 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 8 uses
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterxENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRxfuNCINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils9unary_mapxfNCNvXss_B2m_NtB2m_10CpuStorageNtNtB2o_7backend14BackendStorage8to_dtypesa_0E0NCINvNvBS_8for_each4callfNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB57_3VecfE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2o_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.a to i64
  %i.g = sub nuw i64 %i.e, %i.f                   ; 3 uses
  %i.h = lshr i64 %i.g, 3                         ; 5 uses
  %min.iters.check = icmp ult i64 %i.g, 80
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.b
  %i.i = shl i64 %.sroa.5.0.copyload, 2           ; 2 uses
  %i.j = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.i
  %i.k = lshr exact i64 %i.g, 1
  %i.l = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.i
  %i.m = getelementptr i8, ptr %i.l, i64 %i.k
  %bound0 = icmp ult ptr %i.j, %i.c
  %bound1 = icmp ult ptr %i.a, %i.m
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.h, 2305843009213693948      ; 4 uses
  %i.n = add i64 %.sroa.5.0.copyload, %n.vec      ; 2 uses
  %i.o = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %.sroa.5.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %index ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %wide.load = load <2 x i64>, ptr %i.p, align 8, !alias.scope !6047, !noalias !6048
  %wide.load4 = load <2 x i64>, ptr %i.q, align 8, !alias.scope !6047, !noalias !6048
  %i.r = getelementptr [4 x i8], ptr %i.o, i64 %index
  %2 = shufflevector <2 x i64> %wide.load, <2 x i64> %wide.load4, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %3 = sitofp <4 x i64> %2 to <4 x float>
  store <4 x float> %3, ptr %i.r, align 4, !alias.scope !6049, !noalias !6050
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.s = icmp eq i64 %index.next, %n.vec
  br i1 %i.s, label %middle.block, label %vector.body, !llvm.loop !6044

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.h, %n.vec
  br i1 %cmp.n, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterxENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRxfuNCINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils9unary_mapxfNCNvXss_B2m_NtB2m_10CpuStorageNtNtB2o_7backend14BackendStorage8to_dtypesa_0E0NCINvNvBS_8for_each4callfNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB57_3VecfE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2o_.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.b, %middle.block
  %.ph = phi i64 [ %.sroa.5.0.copyload, %vector.memcheck ], [ %.sroa.5.0.copyload, %bb.b ], [ %i.n, %middle.block ] ; 2 uses
  %.sroa.01.0.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.b ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.h, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %i.t = phi i64 [ %i.x, %scalar.ph.prol ], [ %.ph, %scalar.ph.preheader ] ; 2 uses
  %.sroa.01.0.i.prol = phi i64 [ %i.y, %scalar.ph.prol ], [ %.sroa.01.0.i.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.sroa.01.0.i.prol
  %.val15.i.prol = load i64, ptr %i.u, align 8, !noalias !6048, !noundef !4
  %i.v = sitofp i64 %.val15.i.prol to float
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.t
  store float %i.v, ptr %i.w, align 4, !noalias !6051
  %i.x = add i64 %i.t, 1                          ; 3 uses
  %i.y = add nuw i64 %.sroa.01.0.i.prol, 1        ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !6045

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.x, %scalar.ph.prol ]
  %.unr = phi i64 [ %.ph, %scalar.ph.preheader ], [ %i.x, %scalar.ph.prol ]
  %.sroa.01.0.i.unr = phi i64 [ %.sroa.01.0.i.ph, %scalar.ph.preheader ], [ %i.y, %scalar.ph.prol ]
  %i.z = sub nsw i64 %.sroa.01.0.i.ph, %i.h
  %i.aa = icmp ugt i64 %i.z, -4
  br i1 %i.aa, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterxENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRxfuNCINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils9unary_mapxfNCNvXss_B2m_NtB2m_10CpuStorageNtNtB2o_7backend14BackendStorage8to_dtypesa_0E0NCINvNvBS_8for_each4callfNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB57_3VecfE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2o_.exit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %i.ab = phi i64 [ %i.au, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %.sroa.01.0.i = phi i64 [ %i.av, %scalar.ph ], [ %.sroa.01.0.i.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.sroa.01.0.i
  %.val15.i = load i64, ptr %i.ac, align 8, !noalias !6048, !noundef !4
  %i.ad = sitofp i64 %.val15.i to float
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.ab
  store float %i.ad, ptr %i.ae, align 4, !noalias !6051
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.sroa.01.0.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %.val15.i.1 = load i64, ptr %i.ag, align 8, !noalias !6048, !noundef !4
  %i.ah = sitofp i64 %.val15.i.1 to float
  %i.ai = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.ab
  %i.aj = getelementptr i8, ptr %i.ai, i64 4
  store float %i.ah, ptr %i.aj, align 4, !noalias !6051
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.sroa.01.0.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %.val15.i.2 = load i64, ptr %i.al, align 8, !noalias !6048, !noundef !4
  %i.am = sitofp i64 %.val15.i.2 to float
  %i.an = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.ab
  %i.ao = getelementptr i8, ptr %i.an, i64 8
  store float %i.am, ptr %i.ao, align 4, !noalias !6051
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.sroa.01.0.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %.val15.i.3 = load i64, ptr %i.aq, align 8, !noalias !6048, !noundef !4
  %i.ar = sitofp i64 %.val15.i.3 to float
  %i.as = getelementptr [4 x i8], ptr %.sroa.7.0.copyload, i64 %i.ab
  %i.at = getelementptr i8, ptr %i.as, i64 12
  store float %i.ar, ptr %i.at, align 4, !noalias !6051
  %i.au = add i64 %i.ab, 4                        ; 2 uses
  %i.av = add nuw i64 %.sroa.01.0.i, 4            ; 2 uses
  %i.aw = icmp eq i64 %i.av, %i.h
  br i1 %i.aw, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterxENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRxfuNCINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils9unary_mapxfNCNvXss_B2m_NtB2m_10CpuStorageNtNtB2o_7backend14BackendStorage8to_dtypesa_0E0NCINvNvBS_8for_each4callfNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB57_3VecfE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2o_.exit, label %scalar.ph, !llvm.loop !6046

_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterxENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRxfuNCINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils9unary_mapxfNCNvXss_B2m_NtB2m_10CpuStorageNtNtB2o_7backend14BackendStorage8to_dtypesa_0E0NCINvNvBS_8for_each4callfNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB57_3VecfE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2o_.exit: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.n, %middle.block ], [ %.lcssa.unr, %scalar.ph.prol.loopexit ], [ %i.au, %scalar.ph ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !6048
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterxENCINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils9unary_mapxhNCNvXss_B1w_NtB1w_10CpuStorageNtNtB1y_7backend14BackendStorage8to_dtypesl_0E0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3K_8for_each4callhNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4X_3VechE14extend_trustedBN_E0E0EB1y_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 5 uses
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterxENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRxhuNCINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils9unary_mapxhNCNvXss_B2m_NtB2m_10CpuStorageNtNtB2o_7backend14BackendStorage8to_dtypesl_0E0NCINvNvBS_8for_each4callhNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB57_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2o_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.a to i64
  %i.g = sub nuw i64 %i.e, %i.f                   ; 2 uses
  %i.h = lshr exact i64 %i.g, 3                   ; 2 uses
  %xtraiter = and i64 %i.h, 3                     ; 3 uses
  %i.i = icmp ult i64 %i.g, 32
  br i1 %i.i, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.b
  %unroll_iter = and i64 %i.h, 2305843009213693948
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.new
  %i.j = phi i64 [ %.sroa.5.0.copyload, %.new ], [ %i.ac, %bb.c ] ; 5 uses
  %.sroa.01.0.i = phi i64 [ 0, %.new ], [ %i.ad, %bb.c ] ; 5 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %bb.c ]
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.sroa.01.0.i
  %.val15.i = load i64, ptr %i.k, align 8, !noalias !6061, !noundef !4
  %i.l = trunc i64 %.val15.i to i8
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 %i.j
  store i8 %i.l, ptr %i.m, align 1, !noalias !6062
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.sroa.01.0.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.val15.i.1 = load i64, ptr %i.o, align 8, !noalias !6061, !noundef !4
  %i.p = trunc i64 %.val15.i.1 to i8
  %i.q = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.j
  %i.r = getelementptr i8, ptr %i.q, i64 1
  store i8 %i.p, ptr %i.r, align 1, !noalias !6062
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.sroa.01.0.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %.val15.i.2 = load i64, ptr %i.t, align 8, !noalias !6061, !noundef !4
  %i.u = trunc i64 %.val15.i.2 to i8
  %i.v = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.j
  %i.w = getelementptr i8, ptr %i.v, i64 2
  store i8 %i.u, ptr %i.w, align 1, !noalias !6062
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.sroa.01.0.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %.val15.i.3 = load i64, ptr %i.y, align 8, !noalias !6061, !noundef !4
  %i.z = trunc i64 %.val15.i.3 to i8
  %i.aa = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.j
  %i.ab = getelementptr i8, ptr %i.aa, i64 3
  store i8 %i.z, ptr %i.ab, align 1, !noalias !6062
  %i.ac = add i64 %i.j, 4                         ; 3 uses
  %i.ad = add nuw i64 %.sroa.01.0.i, 4            ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterxENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRxhuNCINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils9unary_mapxhNCNvXss_B2m_NtB2m_10CpuStorageNtNtB2o_7backend14BackendStorage8to_dtypesl_0E0NCINvNvBS_8for_each4callhNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB57_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2o_.exit.loopexit.unr-lcssa, label %bb.c

_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterxENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRxhuNCINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils9unary_mapxhNCNvXss_B2m_NtB2m_10CpuStorageNtNtB2o_7backend14BackendStorage8to_dtypesl_0E0NCINvNvBS_8for_each4callhNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB57_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2o_.exit.loopexit.unr-lcssa: ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterxENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRxhuNCINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils9unary_mapxhNCNvXss_B2m_NtB2m_10CpuStorageNtNtB2o_7backend14BackendStorage8to_dtypesl_0E0NCINvNvBS_8for_each4callhNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB57_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2o_.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterxENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRxhuNCINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils9unary_mapxhNCNvXss_B2m_NtB2m_10CpuStorageNtNtB2o_7backend14BackendStorage8to_dtypesl_0E0NCINvNvBS_8for_each4callhNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB57_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2o_.exit.loopexit.unr-lcssa, %bb.b
  %.epil.init = phi i64 [ %.sroa.5.0.copyload, %bb.b ], [ %i.ac, %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterxENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRxhuNCINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils9unary_mapxhNCNvXss_B2m_NtB2m_10CpuStorageNtNtB2o_7backend14BackendStorage8to_dtypesl_0E0NCINvNvBS_8for_each4callhNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB57_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2o_.exit.loopexit.unr-lcssa ]
  %.sroa.01.0.i.epil.init = phi i64 [ 0, %bb.b ], [ %i.ad, %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterxENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRxhuNCINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils9unary_mapxhNCNvXss_B2m_NtB2m_10CpuStorageNtNtB2o_7backend14BackendStorage8to_dtypesl_0E0NCINvNvBS_8for_each4callhNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB57_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2o_.exit.loopexit.unr-lcssa ]
  %lcmp.mod3 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod3)
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.epil.preheader
  %i.ae = phi i64 [ %.epil.init, %.epil.preheader ], [ %i.ai, %bb.d ] ; 2 uses
  %.sroa.01.0.i.epil = phi i64 [ %.sroa.01.0.i.epil.init, %.epil.preheader ], [ %i.aj, %bb.d ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.d ]
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.sroa.01.0.i.epil
  %.val15.i.epil = load i64, ptr %i.af, align 8, !noalias !6061, !noundef !4
  %i.ag = trunc i64 %.val15.i.epil to i8
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.7.0.copyload, i64 %i.ae
  store i8 %i.ag, ptr %i.ah, align 1, !noalias !6062
  %i.ai = add i64 %i.ae, 1                        ; 2 uses
  %i.aj = add nuw i64 %.sroa.01.0.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterxENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRxhuNCINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils9unary_mapxhNCNvXss_B2m_NtB2m_10CpuStorageNtNtB2o_7backend14BackendStorage8to_dtypesl_0E0NCINvNvBS_8for_each4callhNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB57_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2o_.exit, label %bb.d, !llvm.loop !6060

_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterxENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRxhuNCINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils9unary_mapxhNCNvXss_B2m_NtB2m_10CpuStorageNtNtB2o_7backend14BackendStorage8to_dtypesl_0E0NCINvNvBS_8for_each4callhNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB57_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2o_.exit: ; preds = %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterxENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRxhuNCINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils9unary_mapxhNCNvXss_B2m_NtB2m_10CpuStorageNtNtB2o_7backend14BackendStorage8to_dtypesl_0E0NCINvNvBS_8for_each4callhNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB57_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2o_.exit.loopexit.unr-lcssa, %bb.d, %bb.a
  %storemerge = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.ac, %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterxENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRxhuNCINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils9unary_mapxhNCNvXss_B2m_NtB2m_10CpuStorageNtNtB2o_7backend14BackendStorage8to_dtypesl_0E0NCINvNvBS_8for_each4callhNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB57_3VechE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2o_.exit.loopexit.unr-lcssa ], [ %i.ai, %bb.d ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !6061
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterxENCINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils9unary_mapxlNCNvXss_B1w_NtB1w_10CpuStorageNtNtB1y_7backend14BackendStorage8to_dtypes18_0E0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3L_8for_each4calllNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB4Y_3VeclE14extend_trustedBN_E0E0EB1y_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 6 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 8 uses
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterxENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtBY_8adapters3map8map_foldRxluNCINvNtNtCsltEA4u8Pgfu_11candle_core11cpu_backend5utils9unary_mapxlNCNvXss_B2m_NtB2m_10CpuStorageNtNtB2o_7backend14BackendStorage8to_dtypes18_0E0NCINvNvBS_8for_each4calllNCINvMsk_NtCsgCecv3eZDcN_5alloc3vecINtB58_3VeclE14extend_trustedINtB1I_3MapBF_B2f_EE0E0E0EB2o_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.a to i64
  %i.g = sub nuw i64 %i.e, %i.f                   ; 3 uses
  %i.h = lshr i64 %i.g, 3                         ; 5 uses
  %min.iters.check = icmp ult i64 %i.g, 112
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.b
  %i.i = shl i64 %.sroa.5.0.copyload, 2           ; 2 uses
  %i.j = getelementptr i8, ptr %.sroa.7.0.copyload, i64 %i.i
end_hunk_1
