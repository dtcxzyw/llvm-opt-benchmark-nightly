inline.NumInlined: 7403
inline.NumDeleted: 2263
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 41
loop-unroll.NumUnrolled: 46
begin_hunk_0_@_ZN7kissfftIfN13kissfft_utils6traitsIfEEE7kf_workEiPSt7complexIfEPKS5_mm:bb.a
  %i.eg = fsub <2 x float> %i.dd, %i.dx
  %i.eh = shufflevector <2 x float> %i.eg, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ei = fmul <2 x float> %i.ch, %i.eh           ; 4 uses
  %i.ej = load <2 x float>, ptr %i.ci, align 4, !tbaa !254 ; 2 uses
  %i.ek = fadd <2 x float> %i.ej, %i.ei
  %i.el = fsub <2 x float> %i.ej, %i.ei
  %i.em = shufflevector <2 x float> %i.ek, <2 x float> %i.el, <2 x i32> <i32 0, i32 3>
  store <2 x float> %i.em, ptr %i.cj, align 4, !tbaa !96
  %i.en = load float, ptr %i.ci, align 4
  %i.eo = load float, ptr %.sroa_idx60.i, align 4
  %i.ep = extractelement <2 x float> %i.ei, i64 0
  %i.eq = fsub float %i.en, %i.ep
  %i.er = extractelement <2 x float> %i.ei, i64 1
  %i.es = fadd float %i.er, %i.eo
  store float %i.eq, ptr %i.ci, align 4
  store float %i.es, ptr %.sroa_idx60.i, align 4
  %i.et = getelementptr inbounds nuw i8, ptr %.035.i, i64 8
  %i.eu = add i64 %.036.i, -1                     ; 2 uses
  %.not.i = icmp eq i64 %i.eu, 0
  br i1 %.not.i, label %_ZN7kissfftIfN13kissfft_utils6traitsIfEEE8kf_bfly2EPSt7complexIfEmi.exit, label %bb.h, !llvm.loop !1088

bb.m:                                             ; preds = %.loopexit
  %i.ev = sext i32 %i.i to i64
  tail call void @_ZN7kissfftIfN13kissfft_utils6traitsIfEEE8kf_bfly4EPSt7complexIfEmm(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef %2, i64 noundef %4, i64 noundef %i.ev)
  br label %_ZN7kissfftIfN13kissfft_utils6traitsIfEEE8kf_bfly2EPSt7complexIfEmi.exit

bb.n:                                             ; preds = %.loopexit
  %i.ew = sext i32 %i.i to i64
  tail call void @_ZN7kissfftIfN13kissfft_utils6traitsIfEEE8kf_bfly5EPSt7complexIfEmm(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef %2, i64 noundef %4, i64 noundef %i.ew)
  br label %_ZN7kissfftIfN13kissfft_utils6traitsIfEEE8kf_bfly2EPSt7complexIfEmi.exit

bb.o:                                             ; preds = %.loopexit
  tail call void @_ZN7kissfftIfN13kissfft_utils6traitsIfEEE15kf_bfly_genericEPSt7complexIfEmii(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef %2, i64 noundef %4, i32 noundef %i.i, i32 noundef %i.e)
  br label %_ZN7kissfftIfN13kissfft_utils6traitsIfEEE8kf_bfly2EPSt7complexIfEmi.exit

_ZN7kissfftIfN13kissfft_utils6traitsIfEEE8kf_bfly2EPSt7complexIfEmi.exit: ; preds = %_ZN7kissfftIfN13kissfft_utils6traitsIfEEE5C_MULERSt7complexIfERKS5_S8_.exit46.i, %_ZStmlIfESt7complexIT_ERKS2_S4_.exit.i, %bb.c, %bb.o, %bb.n, %bb.m
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7kissfftIfN13kissfft_utils6traitsIfEEE8kf_bfly4EPSt7complexIfEmm(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #27 align 2 {
bb.a:
  %.not = icmp eq i64 %3, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i8, ptr %i.a, align 4, !tbaa !1065, !range !216, !noundef !217
  %i.c = zext nneg i8 %i.b to i32
  %i.d = mul nuw nsw i32 %i.c, -2
  %i.e = or disjoint i32 %i.d, 1
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %.idx47 = shl i64 %3, 4
  %.idx48 = mul i64 %3, 24
  %i.g = sitofp i32 %i.e to float
  %i.h = insertelement <2 x float> poison, float %i.g, i64 0
  %i.i = shufflevector <2 x float> %i.h, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.b

._crit_edge:                                      ; preds = %_ZStmlIfESt7complexIT_ERKS2_S4_.exit64, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZStmlIfESt7complexIT_ERKS2_S4_.exit64
  %.095 = phi i64 [ 0, %.lr.ph ], [ %i.ce, %_ZStmlIfESt7complexIT_ERKS2_S4_.exit64 ] ; 3 uses
  %i.j = getelementptr [8 x i8], ptr %1, i64 %.095 ; 7 uses
  %i.k = getelementptr [8 x i8], ptr %i.j, i64 %3 ; 2 uses
  %i.l = mul i64 %.095, %2                        ; 3 uses
  %i.m = trunc i64 %i.l to i32
  %sext = shl i64 %i.l, 32
  %i.n = load ptr, ptr %i.f, align 8, !tbaa !1041 ; 3 uses
  %i.o = ashr exact i64 %sext, 29
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.o
  %.sroa.0.0.copyload.i = load <2 x float>, ptr %i.p, align 4, !tbaa !96 ; 4 uses
  %i.q = load <2 x float>, ptr %i.k, align 4, !tbaa !96 ; 4 uses
  %.sroa.092.0.vec.extract = extractelement <2 x float> %.sroa.0.0.copyload.i, i64 0
  %.sroa.092.4.vec.extract = extractelement <2 x float> %.sroa.0.0.copyload.i, i64 1
  %.sroa.0.0.vec.extract.i = extractelement <2 x float> %i.q, i64 0
  %.sroa.0.4.vec.extract.i = extractelement <2 x float> %i.q, i64 1
  %i.r = shufflevector <2 x float> %.sroa.0.0.copyload.i, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.s = shufflevector <2 x float> %i.q, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.t = fmul <2 x float> %i.r, %i.s              ; 2 uses
  %i.u = shufflevector <2 x float> %.sroa.0.0.copyload.i, <2 x float> poison, <2 x i32> zeroinitializer
  %i.v = fmul <2 x float> %i.u, %i.q              ; 2 uses
  %i.w = fsub <2 x float> %i.v, %i.t              ; 2 uses
  %i.x = fadd <2 x float> %i.v, %i.t              ; 2 uses
  %i.y = shufflevector <2 x float> %i.w, <2 x float> %i.x, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.z = extractelement <2 x float> %i.w, i64 0
  %i.aa = fcmp uno float %i.z, 0.000000e+00
  br i1 %i.aa, label %bb.c, label %_ZStmlIfESt7complexIT_ERKS2_S4_.exit, !prof !1086

bb.c:                                             ; preds = %bb.b
  %i.ab = extractelement <2 x float> %i.x, i64 1
  %i.ac = fcmp uno float %i.ab, 0.000000e+00
  br i1 %i.ac, label %bb.d, label %_ZStmlIfESt7complexIT_ERKS2_S4_.exit, !prof !1086

bb.d:                                             ; preds = %bb.c
  %i.ad = tail call noundef <2 x float> @__mulsc3(float noundef %.sroa.0.0.vec.extract.i, float noundef %.sroa.0.4.vec.extract.i, float noundef %.sroa.092.0.vec.extract, float noundef %.sroa.092.4.vec.extract) #32
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !1041
  br label %_ZStmlIfESt7complexIT_ERKS2_S4_.exit

_ZStmlIfESt7complexIT_ERKS2_S4_.exit:             ; preds = %bb.b, %bb.c, %bb.d
  %i.ae = phi ptr [ %i.n, %bb.b ], [ %i.n, %bb.c ], [ %.pre, %bb.d ] ; 3 uses
  %i.af = phi <2 x float> [ %i.y, %bb.b ], [ %i.y, %bb.c ], [ %i.ad, %bb.d ] ; 3 uses
  %i.ag = getelementptr i8, ptr %i.j, i64 %.idx47 ; 2 uses
  %i.ah = shl i32 %i.m, 1
  %i.ai = sext i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.ai
  %.sroa.0.0.copyload.i49 = load <2 x float>, ptr %i.aj, align 4, !tbaa !96 ; 4 uses
  %i.ak = load <2 x float>, ptr %i.ag, align 4, !tbaa !96 ; 4 uses
  %.sroa.091.0.vec.extract = extractelement <2 x float> %.sroa.0.0.copyload.i49, i64 0
  %.sroa.091.4.vec.extract = extractelement <2 x float> %.sroa.0.0.copyload.i49, i64 1
  %.sroa.0.0.vec.extract.i50 = extractelement <2 x float> %i.ak, i64 0
  %.sroa.0.4.vec.extract.i51 = extractelement <2 x float> %i.ak, i64 1
  %i.al = shufflevector <2 x float> %.sroa.0.0.copyload.i49, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.am = shufflevector <2 x float> %i.ak, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.an = fmul <2 x float> %i.al, %i.am           ; 2 uses
  %i.ao = shufflevector <2 x float> %.sroa.0.0.copyload.i49, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ap = fmul <2 x float> %i.ao, %i.ak           ; 2 uses
  %i.aq = fsub <2 x float> %i.ap, %i.an           ; 2 uses
  %i.ar = fadd <2 x float> %i.ap, %i.an           ; 2 uses
  %i.as = shufflevector <2 x float> %i.aq, <2 x float> %i.ar, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.at = extractelement <2 x float> %i.aq, i64 0
  %i.au = fcmp uno float %i.at, 0.000000e+00
  br i1 %i.au, label %bb.e, label %_ZStmlIfESt7complexIT_ERKS2_S4_.exit56, !prof !1086

bb.e:                                             ; preds = %_ZStmlIfESt7complexIT_ERKS2_S4_.exit
  %i.av = extractelement <2 x float> %i.ar, i64 1
  %i.aw = fcmp uno float %i.av, 0.000000e+00
  br i1 %i.aw, label %bb.f, label %_ZStmlIfESt7complexIT_ERKS2_S4_.exit56, !prof !1086

bb.f:                                             ; preds = %bb.e
  %i.ax = tail call noundef <2 x float> @__mulsc3(float noundef %.sroa.0.0.vec.extract.i50, float noundef %.sroa.0.4.vec.extract.i51, float noundef %.sroa.091.0.vec.extract, float noundef %.sroa.091.4.vec.extract) #32
  %.pre107 = load ptr, ptr %i.f, align 8, !tbaa !1041
  br label %_ZStmlIfESt7complexIT_ERKS2_S4_.exit56

_ZStmlIfESt7complexIT_ERKS2_S4_.exit56:           ; preds = %_ZStmlIfESt7complexIT_ERKS2_S4_.exit, %bb.e, %bb.f
  %i.ay = phi ptr [ %i.ae, %_ZStmlIfESt7complexIT_ERKS2_S4_.exit ], [ %i.ae, %bb.e ], [ %.pre107, %bb.f ]
  %i.az = phi <2 x float> [ %i.as, %_ZStmlIfESt7complexIT_ERKS2_S4_.exit ], [ %i.as, %bb.e ], [ %i.ax, %bb.f ] ; 2 uses
  %i.ba = getelementptr i8, ptr %i.j, i64 %.idx48 ; 2 uses
  %sext93 = mul i64 %i.l, 12884901888
  %i.bb = ashr exact i64 %sext93, 29
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.bb
  %.sroa.0.0.copyload.i57 = load <2 x float>, ptr %i.bc, align 4, !tbaa !96 ; 4 uses
  %i.bd = load <2 x float>, ptr %i.ba, align 4, !tbaa !96 ; 4 uses
  %.sroa.090.0.vec.extract = extractelement <2 x float> %.sroa.0.0.copyload.i57, i64 0
  %.sroa.090.4.vec.extract = extractelement <2 x float> %.sroa.0.0.copyload.i57, i64 1
  %.sroa.0.0.vec.extract.i58 = extractelement <2 x float> %i.bd, i64 0
  %.sroa.0.4.vec.extract.i59 = extractelement <2 x float> %i.bd, i64 1
  %i.be = shufflevector <2 x float> %.sroa.0.0.copyload.i57, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bf = shufflevector <2 x float> %i.bd, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.bg = fmul <2 x float> %i.be, %i.bf           ; 2 uses
  %i.bh = shufflevector <2 x float> %.sroa.0.0.copyload.i57, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bi = fmul <2 x float> %i.bh, %i.bd           ; 2 uses
  %i.bj = fsub <2 x float> %i.bi, %i.bg           ; 2 uses
  %i.bk = fadd <2 x float> %i.bi, %i.bg           ; 2 uses
  %i.bl = shufflevector <2 x float> %i.bj, <2 x float> %i.bk, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.bm = extractelement <2 x float> %i.bj, i64 0
  %i.bn = fcmp uno float %i.bm, 0.000000e+00
  br i1 %i.bn, label %bb.g, label %_ZStmlIfESt7complexIT_ERKS2_S4_.exit64, !prof !1086

bb.g:                                             ; preds = %_ZStmlIfESt7complexIT_ERKS2_S4_.exit56
  %i.bo = extractelement <2 x float> %i.bk, i64 1
  %i.bp = fcmp uno float %i.bo, 0.000000e+00
  br i1 %i.bp, label %bb.h, label %_ZStmlIfESt7complexIT_ERKS2_S4_.exit64, !prof !1086

bb.h:                                             ; preds = %bb.g
  %i.bq = tail call noundef <2 x float> @__mulsc3(float noundef %.sroa.0.0.vec.extract.i58, float noundef %.sroa.0.4.vec.extract.i59, float noundef %.sroa.090.0.vec.extract, float noundef %.sroa.090.4.vec.extract) #32
  br label %_ZStmlIfESt7complexIT_ERKS2_S4_.exit64

_ZStmlIfESt7complexIT_ERKS2_S4_.exit64:           ; preds = %_ZStmlIfESt7complexIT_ERKS2_S4_.exit56, %bb.g, %bb.h
  %i.br = phi <2 x float> [ %i.bl, %_ZStmlIfESt7complexIT_ERKS2_S4_.exit56 ], [ %i.bl, %bb.g ], [ %i.bq, %bb.h ] ; 3 uses
  %i.bs = load <2 x float>, ptr %i.j, align 4     ; 2 uses
  %i.bt = fadd <2 x float> %i.az, %i.bs           ; 2 uses
  store <2 x float> %i.bt, ptr %i.j, align 4
  %i.bu = fadd <2 x float> %i.af, %i.br           ; 2 uses
  %foldExtExtBinop = fsub <2 x float> %i.af, %i.br
  %foldExtExtBinop121 = fsub <2 x float> %i.af, %i.br
  %i.bv = fsub <2 x float> %i.bt, %i.bu
  store <2 x float> %i.bv, ptr %i.ag, align 4, !tbaa !96
  %i.bw = load <2 x float>, ptr %i.j, align 4
  %i.bx = fadd <2 x float> %i.bu, %i.bw
  store <2 x float> %i.bx, ptr %i.j, align 4
  %i.by = fsub <2 x float> %i.bs, %i.az           ; 2 uses
  %i.bz = fneg <2 x float> %foldExtExtBinop
  %i.ca = shufflevector <2 x float> %foldExtExtBinop121, <2 x float> %i.bz, <2 x i32> <i32 1, i32 2>
  %i.cb = fmul <2 x float> %i.ca, %i.i            ; 2 uses
  %i.cc = fadd <2 x float> %i.by, %i.cb
  store <2 x float> %i.cc, ptr %i.k, align 4, !tbaa !96
  %i.cd = fsub <2 x float> %i.by, %i.cb
  store <2 x float> %i.cd, ptr %i.ba, align 4, !tbaa !96
  %i.ce = add nuw i64 %.095, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.ce, %3
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !1089
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7kissfftIfN13kissfft_utils6traitsIfEEE8kf_bfly5EPSt7complexIfEmm(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #27 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1041 ; 6 uses
  %i.c = shl i64 %2, 1                            ; 2 uses
  %.not = icmp eq i64 %3, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %4 = mul i64 %i.c, %3
  %5 = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %4 ; 2 uses
  %.sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 4
  %6 = load float, ptr %.sroa_idx, align 4        ; 2 uses
  %7 = load float, ptr %5, align 4
  %8 = mul i64 %3, %2
  %9 = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %8 ; 2 uses
  %.sroa_idx166 = getelementptr inbounds nuw i8, ptr %9, i64 4
  %10 = load float, ptr %.sroa_idx166, align 4    ; 3 uses
  %11 = load float, ptr %9, align 4
  %.idx61 = shl i64 %3, 5
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %.idx61
  %.idx60 = mul i64 %3, 24
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 %.idx60
  %.idx59 = shl i64 %3, 4
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 %.idx59
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %3
  %i.h = mul i64 %2, 3
  %i.i = shl i64 %2, 2
  %i.j = fneg float %10
  %12 = insertelement <2 x float> poison, float %11, i64 0
  %13 = shufflevector <2 x float> %12, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %14 = insertelement <2 x float> poison, float %7, i64 0
  %15 = shufflevector <2 x float> %14, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %16 = insertelement <2 x float> poison, float %i.j, i64 0
  %17 = insertelement <2 x float> %16, float %10, i64 1
  %18 = insertelement <2 x float> poison, float %6, i64 0
  %19 = shufflevector <2 x float> %18, <2 x float> poison, <2 x i32> zeroinitializer
  %20 = insertelement <2 x float> poison, float %10, i64 0
  %21 = insertelement <2 x float> %20, float %6, i64 1 ; 2 uses
  %22 = shufflevector <2 x float> %21, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN7kissfftIfN13kissfft_utils6traitsIfEEE5C_MULERSt7complexIfERKS5_S8_.exit82
  %.0181 = phi ptr [ %1, %.lr.ph ], [ %i.as, %_ZN7kissfftIfN13kissfft_utils6traitsIfEEE5C_MULERSt7complexIfERKS5_S8_.exit82 ] ; 5 uses
  %.053180 = phi ptr [ %i.g, %.lr.ph ], [ %i.at, %_ZN7kissfftIfN13kissfft_utils6traitsIfEEE5C_MULERSt7complexIfERKS5_S8_.exit82 ] ; 3 uses
  %.054179 = phi ptr [ %i.f, %.lr.ph ], [ %i.au, %_ZN7kissfftIfN13kissfft_utils6traitsIfEEE5C_MULERSt7complexIfERKS5_S8_.exit82 ] ; 3 uses
  %.055178 = phi ptr [ %i.e, %.lr.ph ], [ %i.av, %_ZN7kissfftIfN13kissfft_utils6traitsIfEEE5C_MULERSt7complexIfERKS5_S8_.exit82 ] ; 3 uses
  %.056177 = phi i64 [ 0, %.lr.ph ], [ %i.ax, %_ZN7kissfftIfN13kissfft_utils6traitsIfEEE5C_MULERSt7complexIfERKS5_S8_.exit82 ] ; 5 uses
  %.057176 = phi ptr [ %i.d, %.lr.ph ], [ %i.aw, %_ZN7kissfftIfN13kissfft_utils6traitsIfEEE5C_MULERSt7complexIfERKS5_S8_.exit82 ] ; 3 uses
  %i.k = load <2 x float>, ptr %.0181, align 4, !tbaa !96 ; 2 uses
  %i.l = mul i64 %.056177, %2
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.l ; 2 uses
  %i.n = load <2 x float>, ptr %.053180, align 4, !tbaa !96 ; 4 uses
  %i.o = load float, ptr %i.m, align 4            ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.q = load float, ptr %i.p, align 4            ; 2 uses
  %.sroa.0.0.vec.extract.i.i = extractelement <2 x float> %i.n, i64 0
  %.sroa.0.4.vec.extract.i.i = extractelement <2 x float> %i.n, i64 1
  %23 = insertelement <2 x float> poison, float %i.q, i64 0
  %24 = shufflevector <2 x float> %i.n, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %25 = shufflevector <2 x float> %23, <2 x float> poison, <2 x i32> zeroinitializer
  %26 = fmul <2 x float> %24, %25                 ; 2 uses
  %27 = insertelement <2 x float> poison, float %i.o, i64 0
  %28 = shufflevector <2 x float> %27, <2 x float> poison, <2 x i32> zeroinitializer
  %29 = fmul <2 x float> %28, %i.n                ; 2 uses
  %30 = fsub <2 x float> %29, %26                 ; 2 uses
  %31 = fadd <2 x float> %29, %26                 ; 2 uses
  %32 = shufflevector <2 x float> %30, <2 x float> %31, <2 x i32> <i32 0, i32 3> ; 2 uses
  %33 = extractelement <2 x float> %30, i64 0
  %i.r = fcmp uno float %33, 0.000000e+00
  br i1 %i.r, label %bb.c, label %_ZN7kissfftIfN13kissfft_utils6traitsIfEEE5C_MULERSt7complexIfERKS5_S8_.exit, !prof !1086

bb.c:                                             ; preds = %bb.b
  %34 = extractelement <2 x float> %31, i64 1
  %i.s = fcmp uno float %34, 0.000000e+00
  br i1 %i.s, label %bb.d, label %_ZN7kissfftIfN13kissfft_utils6traitsIfEEE5C_MULERSt7complexIfERKS5_S8_.exit, !prof !1086

bb.d:                                             ; preds = %bb.c
  %i.t = tail call noundef <2 x float> @__mulsc3(float noundef %.sroa.0.0.vec.extract.i.i, float noundef %.sroa.0.4.vec.extract.i.i, float noundef %i.o, float noundef %i.q) #32
  br label %_ZN7kissfftIfN13kissfft_utils6traitsIfEEE5C_MULERSt7complexIfERKS5_S8_.exit

_ZN7kissfftIfN13kissfft_utils6traitsIfEEE5C_MULERSt7complexIfERKS5_S8_.exit: ; preds = %bb.b, %bb.c, %bb.d
  %35 = phi <2 x float> [ %32, %bb.b ], [ %32, %bb.c ], [ %i.t, %bb.d ] ; 2 uses
  %i.u = mul i64 %i.c, %.056177
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.u ; 2 uses
  %i.w = load <2 x float>, ptr %.054179, align 4, !tbaa !96 ; 4 uses
  %i.x = load float, ptr %i.v, align 4            ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.z = load float, ptr %i.y, align 4            ; 2 uses
  %.sroa.0.0.vec.extract.i.i62 = extractelement <2 x float> %i.w, i64 0
  %.sroa.0.4.vec.extract.i.i63 = extractelement <2 x float> %i.w, i64 1
  %36 = insertelement <2 x float> poison, float %i.z, i64 0
  %37 = shufflevector <2 x float> %i.w, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %38 = shufflevector <2 x float> %36, <2 x float> poison, <2 x i32> zeroinitializer
  %39 = fmul <2 x float> %37, %38                 ; 2 uses
  %40 = insertelement <2 x float> poison, float %i.x, i64 0
  %41 = shufflevector <2 x float> %40, <2 x float> poison, <2 x i32> zeroinitializer
  %42 = fmul <2 x float> %41, %i.w                ; 2 uses
  %43 = fsub <2 x float> %42, %39                 ; 2 uses
  %44 = fadd <2 x float> %42, %39                 ; 2 uses
  %45 = shufflevector <2 x float> %43, <2 x float> %44, <2 x i32> <i32 0, i32 3> ; 2 uses
  %46 = extractelement <2 x float> %43, i64 0
  %i.aa = fcmp uno float %46, 0.000000e+00
  br i1 %i.aa, label %bb.e, label %_ZN7kissfftIfN13kissfft_utils6traitsIfEEE5C_MULERSt7complexIfERKS5_S8_.exit68, !prof !1086

bb.e:                                             ; preds = %_ZN7kissfftIfN13kissfft_utils6traitsIfEEE5C_MULERSt7complexIfERKS5_S8_.exit
  %47 = extractelement <2 x float> %44, i64 1
  %i.ab = fcmp uno float %47, 0.000000e+00
  br i1 %i.ab, label %bb.f, label %_ZN7kissfftIfN13kissfft_utils6traitsIfEEE5C_MULERSt7complexIfERKS5_S8_.exit68, !prof !1086

bb.f:                                             ; preds = %bb.e
  %i.ac = tail call noundef <2 x float> @__mulsc3(float noundef %.sroa.0.0.vec.extract.i.i62, float noundef %.sroa.0.4.vec.extract.i.i63, float noundef %i.x, float noundef %i.z) #32
  br label %_ZN7kissfftIfN13kissfft_utils6traitsIfEEE5C_MULERSt7complexIfERKS5_S8_.exit68

_ZN7kissfftIfN13kissfft_utils6traitsIfEEE5C_MULERSt7complexIfERKS5_S8_.exit68: ; preds = %_ZN7kissfftIfN13kissfft_utils6traitsIfEEE5C_MULERSt7complexIfERKS5_S8_.exit, %bb.e, %bb.f
  %48 = phi <2 x float> [ %45, %_ZN7kissfftIfN13kissfft_utils6traitsIfEEE5C_MULERSt7complexIfERKS5_S8_.exit ], [ %45, %bb.e ], [ %i.ac, %bb.f ] ; 2 uses
  %i.ad = mul i64 %i.h, %.056177
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ad ; 2 uses
  %i.af = load <2 x float>, ptr %.055178, align 4, !tbaa !96 ; 4 uses
  %i.ag = load float, ptr %i.ae, align 4          ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.ai = load float, ptr %i.ah, align 4          ; 2 uses
  %.sroa.0.0.vec.extract.i.i69 = extractelement <2 x float> %i.af, i64 0
  %.sroa.0.4.vec.extract.i.i70 = extractelement <2 x float> %i.af, i64 1
  %49 = insertelement <2 x float> poison, float %i.ai, i64 0
  %50 = shufflevector <2 x float> %i.af, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %51 = shufflevector <2 x float> %49, <2 x float> poison, <2 x i32> zeroinitializer
  %52 = fmul <2 x float> %50, %51                 ; 2 uses
  %53 = insertelement <2 x float> poison, float %i.ag, i64 0
  %54 = shufflevector <2 x float> %53, <2 x float> poison, <2 x i32> zeroinitializer
  %55 = fmul <2 x float> %54, %i.af               ; 2 uses
  %56 = fsub <2 x float> %55, %52                 ; 2 uses
  %57 = fadd <2 x float> %55, %52                 ; 2 uses
  %58 = shufflevector <2 x float> %56, <2 x float> %57, <2 x i32> <i32 0, i32 3> ; 2 uses
  %59 = extractelement <2 x float> %56, i64 0
  %i.aj = fcmp uno float %59, 0.000000e+00
  br i1 %i.aj, label %bb.g, label %_ZN7kissfftIfN13kissfft_utils6traitsIfEEE5C_MULERSt7complexIfERKS5_S8_.exit75, !prof !1086

bb.g:                                             ; preds = %_ZN7kissfftIfN13kissfft_utils6traitsIfEEE5C_MULERSt7complexIfERKS5_S8_.exit68
  %60 = extractelement <2 x float> %57, i64 1
  %i.ak = fcmp uno float %60, 0.000000e+00
  br i1 %i.ak, label %bb.h, label %_ZN7kissfftIfN13kissfft_utils6traitsIfEEE5C_MULERSt7complexIfERKS5_S8_.exit75, !prof !1086

bb.h:                                             ; preds = %bb.g
  %i.al = tail call noundef <2 x float> @__mulsc3(float noundef %.sroa.0.0.vec.extract.i.i69, float noundef %.sroa.0.4.vec.extract.i.i70, float noundef %i.ag, float noundef %i.ai) #32
  br label %_ZN7kissfftIfN13kissfft_utils6traitsIfEEE5C_MULERSt7complexIfERKS5_S8_.exit75

_ZN7kissfftIfN13kissfft_utils6traitsIfEEE5C_MULERSt7complexIfERKS5_S8_.exit75: ; preds = %_ZN7kissfftIfN13kissfft_utils6traitsIfEEE5C_MULERSt7complexIfERKS5_S8_.exit68, %bb.g, %bb.h
  %61 = phi <2 x float> [ %58, %_ZN7kissfftIfN13kissfft_utils6traitsIfEEE5C_MULERSt7complexIfERKS5_S8_.exit68 ], [ %58, %bb.g ], [ %i.al, %bb.h ] ; 2 uses
  %i.am = mul i64 %i.i, %.056177
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.am
  %i.ao = load <2 x float>, ptr %.057176, align 4, !tbaa !96 ; 4 uses
  %62 = shufflevector <2 x float> %i.ao, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %.sroa.0.0.vec.extract.i.i76 = extractelement <2 x float> %i.ao, i64 0
  %63 = load <2 x float>, ptr %i.an, align 4      ; 4 uses
  %64 = fmul <2 x float> %63, %i.ao               ; 2 uses
  %65 = fmul <2 x float> %62, %63                 ; 2 uses
  %66 = shufflevector <2 x float> %64, <2 x float> %65, <2 x i32> <i32 0, i32 2> ; 2 uses
  %67 = shufflevector <2 x float> %64, <2 x float> %65, <2 x i32> <i32 1, i32 3> ; 2 uses
  %68 = fsub <2 x float> %66, %67                 ; 2 uses
  %69 = fadd <2 x float> %66, %67                 ; 2 uses
  %70 = shufflevector <2 x float> %68, <2 x float> %69, <2 x i32> <i32 0, i32 3> ; 2 uses
  %71 = extractelement <2 x float> %68, i64 0
  %i.ap = fcmp uno float %71, 0.000000e+00
  br i1 %i.ap, label %bb.i, label %_ZN7kissfftIfN13kissfft_utils6traitsIfEEE5C_MULERSt7complexIfERKS5_S8_.exit82, !prof !1086

bb.i:                                             ; preds = %_ZN7kissfftIfN13kissfft_utils6traitsIfEEE5C_MULERSt7complexIfERKS5_S8_.exit75
  %72 = extractelement <2 x float> %69, i64 1
  %i.aq = fcmp uno float %72, 0.000000e+00
  br i1 %i.aq, label %bb.j, label %_ZN7kissfftIfN13kissfft_utils6traitsIfEEE5C_MULERSt7complexIfERKS5_S8_.exit82, !prof !1086

bb.j:                                             ; preds = %bb.i
  %73 = extractelement <2 x float> %63, i64 0
  %.sroa.0.0.vec.extract.i.i.i80 = extractelement <2 x float> %63, i64 1
  %.sroa.0.4.vec.extract.i.i.i81 = extractelement <2 x float> %i.ao, i64 1
  %74 = tail call noundef <2 x float> @__mulsc3(float noundef %.sroa.0.0.vec.extract.i.i76, float noundef %.sroa.0.4.vec.extract.i.i.i81, float noundef %73, float noundef %.sroa.0.0.vec.extract.i.i.i80) #32
  br label %_ZN7kissfftIfN13kissfft_utils6traitsIfEEE5C_MULERSt7complexIfERKS5_S8_.exit82

_ZN7kissfftIfN13kissfft_utils6traitsIfEEE5C_MULERSt7complexIfERKS5_S8_.exit82: ; preds = %_ZN7kissfftIfN13kissfft_utils6traitsIfEEE5C_MULERSt7complexIfERKS5_S8_.exit75, %bb.i, %bb.j
  %75 = phi <2 x float> [ %70, %_ZN7kissfftIfN13kissfft_utils6traitsIfEEE5C_MULERSt7complexIfERKS5_S8_.exit75 ], [ %70, %bb.i ], [ %74, %bb.j ] ; 2 uses
  %76 = fadd <2 x float> %35, %75                 ; 3 uses
  %77 = fsub <2 x float> %35, %75                 ; 3 uses
  %78 = fadd <2 x float> %48, %61                 ; 3 uses
  %79 = fsub <2 x float> %48, %61                 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.0181, i64 4
  %80 = load <2 x float>, ptr %.0181, align 4
  %81 = fadd <2 x float> %76, %80
  %82 = fadd <2 x float> %81, %78                 ; 2 uses
  %83 = extractelement <2 x float> %82, i64 0
  store float %83, ptr %.0181, align 4
  %.sroa.0.4.vec.extract.i = extractelement <2 x float> %82, i64 1
  store float %.sroa.0.4.vec.extract.i, ptr %i.ar, align 4
  %84 = fmul <2 x float> %13, %76
  %85 = fmul <2 x float> %15, %78
  %86 = fadd <2 x float> %84, %85
  %87 = fadd <2 x float> %86, %i.k                ; 2 uses
  %88 = fmul <2 x float> %17, %77                 ; 2 uses
  %89 = fmul <2 x float> %19, %79                 ; 2 uses
  %90 = fadd <2 x float> %88, %89
  %91 = fsub <2 x float> %88, %89
  %92 = shufflevector <2 x float> %90, <2 x float> %91, <2 x i32> <i32 1, i32 2> ; 2 uses
  %93 = fsub <2 x float> %87, %92
  store <2 x float> %93, ptr %.053180, align 4, !tbaa !96
  %94 = fadd <2 x float> %87, %92
  store <2 x float> %94, ptr %.057176, align 4, !tbaa !96
  %95 = fmul <2 x float> %15, %76
  %96 = fmul <2 x float> %13, %78
  %97 = fadd <2 x float> %95, %96
  %98 = fadd <2 x float> %97, %i.k                ; 2 uses
  %99 = shufflevector <2 x float> %79, <2 x float> %77, <2 x i32> <i32 1, i32 2>
  %100 = fmul <2 x float> %21, %99
  %101 = shufflevector <2 x float> %79, <2 x float> %77, <2 x i32> <i32 3, i32 0>
  %102 = fmul <2 x float> %22, %101
  %103 = fsub <2 x float> %100, %102              ; 2 uses
  %104 = fadd <2 x float> %98, %103
  store <2 x float> %104, ptr %.054179, align 4, !tbaa !96
  %105 = fsub <2 x float> %98, %103
  store <2 x float> %105, ptr %.055178, align 4, !tbaa !96
  %i.as = getelementptr inbounds nuw i8, ptr %.0181, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %.053180, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %.054179, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %.055178, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %.057176, i64 8
  %i.ax = add nuw i64 %.056177, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.ax, %3
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !1090

._crit_edge:                                      ; preds = %_ZN7kissfftIfN13kissfft_utils6traitsIfEEE5C_MULERSt7complexIfERKS5_S8_.exit82, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7kissfftIfN13kissfft_utils6traitsIfEEE15kf_bfly_genericEPSt7complexIfEmii(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #27 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1041
  %i.c = load i32, ptr %0, align 8, !tbaa !1056   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 14 uses
  %i.e = sext i32 %4 to i64
  tail call void @_ZNSt6vectorISt7complexIfESaIS1_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %i.e)
  %i.f = icmp sgt i32 %3, 0
  br i1 %i.f, label %.preheader52.lr.ph, label %._crit_edge

.preheader52.lr.ph:                               ; preds = %bb.a
  %i.g = icmp sgt i32 %4, 0
  %i.h = trunc i64 %2 to i32
  br i1 %i.g, label %.preheader52.lr.ph.split.us, label %._crit_edge

.preheader52.lr.ph.split.us:                      ; preds = %.preheader52.lr.ph
  %.not = icmp eq i32 %4, 1
  %i.i = zext nneg i32 %3 to i64                  ; 9 uses
  br i1 %.not, label %._crit_edge61.split.us66.us.preheader, label %.preheader52.us.us.preheader

._crit_edge61.split.us66.us.preheader:            ; preds = %.preheader52.lr.ph.split.us
  %xtraiter132 = and i64 %i.i, 1
  %i.j = icmp eq i32 %3, 1
  br i1 %i.j, label %._crit_edge61.split.us66.us.epil.preheader, label %._crit_edge61.split.us66.us.preheader.new

._crit_edge61.split.us66.us.preheader.new:        ; preds = %._crit_edge61.split.us66.us.preheader
  %unroll_iter136 = and i64 %i.i, 2147483646
  br label %._crit_edge61.split.us66.us

.preheader52.us.us.preheader:                     ; preds = %.preheader52.lr.ph.split.us
  %wide.trip.count109 = zext nneg i32 %4 to i64   ; 2 uses
  %wide.trip.count114 = zext nneg i32 %4 to i64
  %xtraiter = and i64 %wide.trip.count109, 3      ; 3 uses
  %i.k = icmp ult i32 %4, 4
  %unroll_iter = and i64 %wide.trip.count109, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod131 = icmp ne i64 %xtraiter, 0
  br label %.lr.ph.us.us.preheader

.lr.ph.us.us.preheader:                           ; preds = %._crit_edge61.split.us.us.us, %.preheader52.us.us.preheader
  %indvars.iv100 = phi i64 [ 0, %.preheader52.us.us.preheader ], [ %indvars.iv.next101, %._crit_edge61.split.us.us.us ] ; 4 uses
  br i1 %i.k, label %.lr.ph.us.us.epil.preheader, label %.lr.ph.us.us

.lr.ph.us.us:                                     ; preds = %.lr.ph.us.us.preheader, %.lr.ph.us.us
  %indvars.iv104 = phi i64 [ %indvars.iv.next105.3, %.lr.ph.us.us ], [ 0, %.lr.ph.us.us.preheader ] ; 5 uses
  %indvars.iv102 = phi i64 [ %indvars.iv.next103.3, %.lr.ph.us.us ], [ %indvars.iv100, %.lr.ph.us.us.preheader ] ; 2 uses
  %niter = phi i64 [ %niter.next.3, %.lr.ph.us.us ], [ 0, %.lr.ph.us.us.preheader ]
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv102
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !1041
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv104
  %i.o = load i64, ptr %i.l, align 4, !tbaa !96
  store i64 %i.o, ptr %i.n, align 4, !tbaa !96
  %indvars.iv.next103 = add nuw nsw i64 %indvars.iv102, %i.i ; 2 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next103
  %i.q = load ptr, ptr %i.d, align 8, !tbaa !1041
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv104
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load i64, ptr %i.p, align 4, !tbaa !96
  store i64 %i.t, ptr %i.s, align 4, !tbaa !96
  %indvars.iv.next103.1 = add nuw nsw i64 %indvars.iv.next103, %i.i ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next103.1
  %i.v = load ptr, ptr %i.d, align 8, !tbaa !1041
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv104
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load i64, ptr %i.u, align 4, !tbaa !96
  store i64 %i.y, ptr %i.x, align 4, !tbaa !96
  %indvars.iv.next103.2 = add nuw nsw i64 %indvars.iv.next103.1, %i.i ; 2 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next103.2
  %i.aa = load ptr, ptr %i.d, align 8, !tbaa !1041
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv104
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ad = load i64, ptr %i.z, align 4, !tbaa !96
  store i64 %i.ad, ptr %i.ac, align 4, !tbaa !96
  %indvars.iv.next103.3 = add nuw nsw i64 %indvars.iv.next103.2, %i.i ; 2 uses
  %indvars.iv.next105.3 = add nuw nsw i64 %indvars.iv104, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.lr.ph57.us.us.us.preheader.unr-lcssa, label %.lr.ph.us.us, !llvm.loop !1091

.lr.ph57.us.us.us.preheader.unr-lcssa:            ; preds = %.lr.ph.us.us
  br i1 %lcmp.mod.not, label %.lr.ph57.us.us.us.preheader, label %.lr.ph.us.us.epil.preheader

.lr.ph.us.us.epil.preheader:                      ; preds = %.lr.ph57.us.us.us.preheader.unr-lcssa, %.lr.ph.us.us.preheader
  %indvars.iv104.epil.init = phi i64 [ 0, %.lr.ph.us.us.preheader ], [ %indvars.iv.next105.3, %.lr.ph57.us.us.us.preheader.unr-lcssa ]
  %indvars.iv102.epil.init = phi i64 [ %indvars.iv100, %.lr.ph.us.us.preheader ], [ %indvars.iv.next103.3, %.lr.ph57.us.us.us.preheader.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod131)
  br label %.lr.ph.us.us.epil

.lr.ph.us.us.epil:                                ; preds = %.lr.ph.us.us.epil, %.lr.ph.us.us.epil.preheader
  %indvars.iv104.epil = phi i64 [ %indvars.iv104.epil.init, %.lr.ph.us.us.epil.preheader ], [ %indvars.iv.next105.epil, %.lr.ph.us.us.epil ] ; 2 uses
  %indvars.iv102.epil = phi i64 [ %indvars.iv102.epil.init, %.lr.ph.us.us.epil.preheader ], [ %indvars.iv.next103.epil, %.lr.ph.us.us.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.us.us.epil.preheader ], [ %epil.iter.next, %.lr.ph.us.us.epil ]
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv102.epil
  %i.af = load ptr, ptr %i.d, align 8, !tbaa !1041
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv104.epil
  %i.ah = load i64, ptr %i.ae, align 4, !tbaa !96
  store i64 %i.ah, ptr %i.ag, align 4, !tbaa !96
  %indvars.iv.next103.epil = add nuw nsw i64 %indvars.iv102.epil, %i.i
  %indvars.iv.next105.epil = add nuw nsw i64 %indvars.iv104.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.lr.ph57.us.us.us.preheader, label %.lr.ph.us.us.epil, !llvm.loop !1092

.lr.ph57.us.us.us.preheader:                      ; preds = %.lr.ph.us.us.epil, %.lr.ph57.us.us.us.preheader.unr-lcssa
  br label %.lr.ph57.us.us.us

.lr.ph57.us.us.us:                                ; preds = %.lr.ph57.us.us.us.preheader, %._crit_edge.us.us.us
  %indvars.iv116 = phi i64 [ %indvars.iv.next117, %._crit_edge.us.us.us ], [ %indvars.iv100, %.lr.ph57.us.us.us.preheader ] ; 3 uses
  %.14358.us.us.us = phi i32 [ %i.bw, %._crit_edge.us.us.us ], [ 0, %.lr.ph57.us.us.us.preheader ]
  %i.ai = load ptr, ptr %i.d, align 8, !tbaa !1041
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv116 ; 3 uses
  %i.ak = load i64, ptr %i.ai, align 4, !tbaa !96 ; 3 uses
  store i64 %i.ak, ptr %i.aj, align 4, !tbaa !96
  %i.al = trunc nuw i64 %indvars.iv116 to i32
  %i.am = mul i32 %i.al, %i.h
  %i.an = lshr i64 %i.ak, 32
  %i.ao = insertelement <2 x i64> poison, i64 %i.ak, i64 0
  %i.ap = insertelement <2 x i64> %i.ao, i64 %i.an, i64 1
  %i.aq = trunc <2 x i64> %i.ap to <2 x i32>
  %i.ar = bitcast <2 x i32> %i.aq to <2 x float>
  br label %bb.b

bb.b:                                             ; preds = %_ZN7kissfftIfN13kissfft_utils6traitsIfEEE5C_MULERSt7complexIfERKS5_S8_.exit.us.us.us, %.lr.ph57.us.us.us
  %indvars.iv111 = phi i64 [ %indvars.iv.next112, %_ZN7kissfftIfN13kissfft_utils6traitsIfEEE5C_MULERSt7complexIfERKS5_S8_.exit.us.us.us ], [ 1, %.lr.ph57.us.us.us ] ; 2 uses
  %.056.us.us.us = phi i32 [ %spec.select.us.us.us, %_ZN7kissfftIfN13kissfft_utils6traitsIfEEE5C_MULERSt7complexIfERKS5_S8_.exit.us.us.us ], [ 0, %.lr.ph57.us.us.us ]
  %i.as = phi <2 x float> [ %i.bv, %_ZN7kissfftIfN13kissfft_utils6traitsIfEEE5C_MULERSt7complexIfERKS5_S8_.exit.us.us.us ], [ %i.ar, %.lr.ph57.us.us.us ] ; 2 uses
  %i.at = add i32 %.056.us.us.us, %i.am           ; 2 uses
  %.not.us.us.us = icmp slt i32 %i.at, %i.c
  %i.au = select i1 %.not.us.us.us, i32 0, i32 %i.c
  %spec.select.us.us.us = sub nsw i32 %i.at, %i.au ; 2 uses
  %i.av = load ptr, ptr %i.d, align 8, !tbaa !1041
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv111
  %i.ax = sext i32 %spec.select.us.us.us to i64
  %i.ay = getelementptr inbounds [8 x i8], ptr %i.b, i64 %i.ax ; 2 uses
  %i.az = load <2 x float>, ptr %i.aw, align 4, !tbaa !96 ; 4 uses
  %i.ba = load float, ptr %i.ay, align 4          ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  %i.bc = load float, ptr %i.bb, align 4          ; 2 uses
  %.sroa.0.0.vec.extract.i.i.us.us.us = extractelement <2 x float> %i.az, i64 0
  %.sroa.0.4.vec.extract.i.i.us.us.us = extractelement <2 x float> %i.az, i64 1
  %i.bd = insertelement <2 x float> poison, float %i.bc, i64 0
  %i.be = shufflevector <2 x float> %i.az, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.bf = shufflevector <2 x float> %i.bd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bg = fmul <2 x float> %i.be, %i.bf           ; 2 uses
  %i.bh = insertelement <2 x float> poison, float %i.ba, i64 0
  %i.bi = shufflevector <2 x float> %i.bh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bj = fmul <2 x float> %i.bi, %i.az           ; 2 uses
  %i.bk = fsub <2 x float> %i.bj, %i.bg           ; 2 uses
  %i.bl = fadd <2 x float> %i.bj, %i.bg           ; 2 uses
  %i.bm = shufflevector <2 x float> %i.bk, <2 x float> %i.bl, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.bn = extractelement <2 x float> %i.bk, i64 0
  %i.bo = fcmp uno float %i.bn, 0.000000e+00
  br i1 %i.bo, label %bb.c, label %_ZN7kissfftIfN13kissfft_utils6traitsIfEEE5C_MULERSt7complexIfERKS5_S8_.exit.us.us.us, !prof !1086

bb.c:                                             ; preds = %bb.b
  %i.bp = extractelement <2 x float> %i.bl, i64 1
  %i.bq = fcmp uno float %i.bp, 0.000000e+00
  br i1 %i.bq, label %bb.d, label %_ZN7kissfftIfN13kissfft_utils6traitsIfEEE5C_MULERSt7complexIfERKS5_S8_.exit.us.us.us, !prof !1086

bb.d:                                             ; preds = %bb.c
  %i.br = tail call noundef <2 x float> @__mulsc3(float noundef %.sroa.0.0.vec.extract.i.i.us.us.us, float noundef %.sroa.0.4.vec.extract.i.i.us.us.us, float noundef %i.ba, float noundef %i.bc) #32
  %i.bs = load <2 x float>, ptr %i.aj, align 4
  br label %_ZN7kissfftIfN13kissfft_utils6traitsIfEEE5C_MULERSt7complexIfERKS5_S8_.exit.us.us.us

_ZN7kissfftIfN13kissfft_utils6traitsIfEEE5C_MULERSt7complexIfERKS5_S8_.exit.us.us.us: ; preds = %bb.d, %bb.c, %bb.b
  %i.bt = phi <2 x float> [ %i.bm, %bb.b ], [ %i.bm, %bb.c ], [ %i.br, %bb.d ]
  %i.bu = phi <2 x float> [ %i.as, %bb.b ], [ %i.as, %bb.c ], [ %i.bs, %bb.d ]
  %i.bv = fadd <2 x float> %i.bt, %i.bu           ; 2 uses
  store <2 x float> %i.bv, ptr %i.aj, align 4
  %indvars.iv.next112 = add nuw nsw i64 %indvars.iv111, 1 ; 2 uses
  %exitcond115.not = icmp eq i64 %indvars.iv.next112, %wide.trip.count114
  br i1 %exitcond115.not, label %._crit_edge.us.us.us, label %bb.b, !llvm.loop !1093

._crit_edge.us.us.us:                             ; preds = %_ZN7kissfftIfN13kissfft_utils6traitsIfEEE5C_MULERSt7complexIfERKS5_S8_.exit.us.us.us
  %indvars.iv.next117 = add nuw nsw i64 %indvars.iv116, %i.i
  %i.bw = add nuw nsw i32 %.14358.us.us.us, 1     ; 2 uses
  %exitcond119.not = icmp eq i32 %i.bw, %4
  br i1 %exitcond119.not, label %._crit_edge61.split.us.us.us, label %.lr.ph57.us.us.us, !llvm.loop !1094

._crit_edge61.split.us.us.us:                     ; preds = %._crit_edge.us.us.us
  %indvars.iv.next101 = add nuw nsw i64 %indvars.iv100, 1 ; 2 uses
  %exitcond122.not = icmp eq i64 %indvars.iv.next101, %i.i
  br i1 %exitcond122.not, label %._crit_edge, label %.lr.ph.us.us.preheader, !llvm.loop !1095

._crit_edge61.split.us66.us:                      ; preds = %._crit_edge61.split.us66.us, %._crit_edge61.split.us66.us.preheader.new
end_hunk_0
