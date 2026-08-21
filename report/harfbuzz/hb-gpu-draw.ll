inline.NumInlined: 467
inline.NumDeleted: 204
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZL26hb_gpu_cubic_to_quadraticsP13hb_gpu_draw_t20hb_gpu_cu2qu_point_tS1_S1_S1_dj:bb.a
  %.tr56 = phi double [ %5, %bb.a ], [ %i.bj, %bb.f ] ; 3 uses
  %.tr57 = phi double [ %6, %bb.a ], [ %i.bi, %bb.f ] ; 2 uses
  %.tr61 = phi i32 [ %9, %bb.a ], [ %i.ci, %bb.f ] ; 2 uses
  %i.h = phi <2 x double> [ %i.d, %bb.a ], [ %i.cl, %bb.f ]
  %i.i = phi <2 x double> [ %i.b, %bb.a ], [ %i.bh, %bb.f ] ; 3 uses
  %i.j = fsub double %.tr54, %.tr52               ; 3 uses
  %i.k = fsub double %.tr55, %.tr53               ; 2 uses
  %i.l = fsub <2 x double> %i.f, %i.i             ; 4 uses
  %i.m = fneg double %i.k                         ; 2 uses
  %i.n = extractelement <2 x double> %i.l, i64 1
  %i.o = fmul double %i.j, %i.n
  %i.p = extractelement <2 x double> %i.l, i64 0  ; 2 uses
  %i.q = tail call double @llvm.fmuladd.f64(double %i.m, double %i.p, double %i.o) ; 2 uses
  %i.r = tail call double @llvm.fabs.f64(double %i.q)
  %i.s = fcmp olt double %i.r, f0x3D719799812DEA11
  br i1 %i.s, label %_ZL29hb_gpu_cubic_approx_quadratic20hb_gpu_cu2qu_point_tS_S_S_dPS_.exit.thread, label %_ZL29hb_gpu_cubic_approx_quadratic20hb_gpu_cu2qu_point_tS_S_S_dPS_.exit

_ZL29hb_gpu_cubic_approx_quadratic20hb_gpu_cu2qu_point_tS_S_S_dPS_.exit: ; preds = %tailrecurse
  %i.t = fsub double %.tr52, %.tr56
  %i.u = fsub double %.tr53, %.tr57
  %i.v = fmul double %i.j, %i.u
  %i.w = tail call double @llvm.fmuladd.f64(double %i.m, double %i.t, double %i.v)
  %i.x = fdiv double %i.w, %i.q                   ; 2 uses
  %i.y = shufflevector <2 x double> %i.l, <2 x double> <double poison, double f0x3FE5555555555555>, <2 x i32> <i32 1, i32 3>
  %i.z = insertelement <2 x double> poison, double %i.x, i64 0
  %i.aa = tail call double @llvm.fmuladd.f64(double %i.p, double %i.x, double %.tr56) ; 3 uses
  %i.ab = fsub double %i.aa, %.tr52
  %i.ac = insertelement <2 x double> %i.z, double %i.ab, i64 1
  %i.ad = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.y, <2 x double> %i.ac, <2 x double> %i.h) ; 3 uses
  %i.ae = extractelement <2 x double> %i.ad, i64 1
  %i.af = fsub double %i.ae, %.tr54
  %i.ag = extractelement <2 x double> %i.ad, i64 0 ; 2 uses
  %i.ah = insertelement <2 x double> %i.ad, double %i.aa, i64 1
  %i.ai = insertelement <2 x double> %i.g, double %.tr53, i64 0 ; 2 uses
  %i.aj = fsub <2 x double> %i.ah, %i.ai
  %i.ak = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aj, <2 x double> splat (double f0x3FE5555555555555), <2 x double> %i.ai)
  %i.al = insertelement <2 x double> poison, double %.tr55, i64 0
  %i.am = insertelement <2 x double> %i.al, double %.tr56, i64 1
  %i.an = fsub <2 x double> %i.ak, %i.am          ; 2 uses
  %i.ao = fsub double %i.ag, %8
  %i.ap = tail call double @llvm.fmuladd.f64(double %i.ao, double f0x3FE5555555555555, double %8)
  %i.aq = fsub double %i.ap, %.tr57
  %i.ar = extractelement <2 x double> %i.an, i64 0
  %i.as = extractelement <2 x double> %i.an, i64 1
  %i.at = tail call fastcc noundef zeroext i1 @_ZL32hb_gpu_cubic_farthest_fit_inside20hb_gpu_cu2qu_point_tS_S_S_dj(double 0.000000e+00, double 0.000000e+00, double %i.af, double %i.ar, double %i.as, double %i.aq, double 0.000000e+00, double 0.000000e+00, i32 noundef 0)
  br i1 %i.at, label %bb.b, label %_ZL29hb_gpu_cubic_approx_quadratic20hb_gpu_cu2qu_point_tS_S_S_dPS_.exit.thread

bb.b:                                             ; preds = %_ZL29hb_gpu_cubic_approx_quadratic20hb_gpu_cu2qu_point_tS_S_S_dPS_.exit
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.av = load i8, ptr %i.au, align 8, !tbaa !8, !range !27, !noundef !28
  %i.aw = trunc nuw i8 %i.av to i1
  br i1 %i.aw, label %bb.c, label %_ZN13hb_gpu_draw_t12acc_conic_toEdddd.exit, !prof !29

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @_ZL14acc_emit_conicP13hb_gpu_draw_tdddd(ptr noundef nonnull align 8 dereferenceable(320) %0, double noundef %i.aa, double noundef %i.ag, double noundef %7, double noundef %8)
  br label %_ZN13hb_gpu_draw_t12acc_conic_toEdddd.exit

_ZL29hb_gpu_cubic_approx_quadratic20hb_gpu_cu2qu_point_tS_S_S_dPS_.exit.thread: ; preds = %tailrecurse, %_ZL29hb_gpu_cubic_approx_quadratic20hb_gpu_cu2qu_point_tS_S_S_dPS_.exit
  %exitcond = icmp eq i32 %.tr61, 10
  br i1 %exitcond, label %bb.d, label %bb.f

bb.d:                                             ; preds = %_ZL29hb_gpu_cubic_approx_quadratic20hb_gpu_cu2qu_point_tS_S_S_dPS_.exit.thread
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ay = load i8, ptr %i.ax, align 8, !tbaa !8, !range !27, !noundef !28
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %bb.e, label %_ZN13hb_gpu_draw_t12acc_conic_toEdddd.exit, !prof !29

bb.e:                                             ; preds = %bb.d
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !31
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bd = load double, ptr %i.bc, align 8, !tbaa !32
  tail call fastcc void @_ZL14acc_emit_conicP13hb_gpu_draw_tdddd(ptr noundef nonnull align 8 dereferenceable(320) %0, double noundef %i.bb, double noundef %i.bd, double noundef %7, double noundef %8)
  br label %_ZN13hb_gpu_draw_t12acc_conic_toEdddd.exit

bb.f:                                             ; preds = %_ZL29hb_gpu_cubic_approx_quadratic20hb_gpu_cu2qu_point_tS_S_S_dPS_.exit.thread
  %i.be = insertelement <2 x double> poison, double %.tr54, i64 0 ; 2 uses
  %i.bf = insertelement <2 x double> %i.be, double %.tr55, i64 1
  %i.bg = fsub <2 x double> %i.i, %i.bf           ; 2 uses
  %i.bh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.l, <2 x double> splat (double 5.000000e-01), <2 x double> %i.i) ; 6 uses
  %i.bi = extractelement <2 x double> %i.bh, i64 1
  %i.bj = extractelement <2 x double> %i.bh, i64 0
  %i.bk = insertelement <2 x double> %i.bg, double %i.j, i64 1
  %i.bl = insertelement <2 x double> %i.be, double %.tr52, i64 1
  %i.bm = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bk, <2 x double> splat (double 5.000000e-01), <2 x double> %i.bl) ; 4 uses
  %i.bn = extractelement <2 x double> %i.bm, i64 1
  %i.bo = shufflevector <2 x double> %i.bh, <2 x double> %i.bm, <2 x i32> <i32 0, i32 2>
  %i.bp = fsub <2 x double> %i.bo, %i.bm
  %i.bq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bp, <2 x double> splat (double 5.000000e-01), <2 x double> %i.bm) ; 4 uses
  %i.br = extractelement <2 x double> %i.bq, i64 0
  %i.bs = extractelement <2 x double> %i.bq, i64 1
  %i.bt = shufflevector <2 x double> %i.bg, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.bu = insertelement <2 x double> %i.bt, double %i.k, i64 1
  %i.bv = insertelement <2 x double> poison, double %.tr55, i64 0
  %i.bw = insertelement <2 x double> %i.bv, double %.tr53, i64 1
  %i.bx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bu, <2 x double> splat (double 5.000000e-01), <2 x double> %i.bw) ; 4 uses
  %i.by = extractelement <2 x double> %i.bx, i64 1
  %i.bz = shufflevector <2 x double> %i.bh, <2 x double> %i.bx, <2 x i32> <i32 1, i32 2>
  %i.ca = fsub <2 x double> %i.bz, %i.bx
  %i.cb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ca, <2 x double> splat (double 5.000000e-01), <2 x double> %i.bx) ; 4 uses
  %i.cc = extractelement <2 x double> %i.cb, i64 0
  %i.cd = extractelement <2 x double> %i.cb, i64 1
  %i.ce = shufflevector <2 x double> %i.bq, <2 x double> %i.cb, <2 x i32> <i32 0, i32 2>
  %i.cf = shufflevector <2 x double> %i.bq, <2 x double> %i.cb, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.cg = fsub <2 x double> %i.ce, %i.cf
  %i.ch = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cg, <2 x double> splat (double 5.000000e-01), <2 x double> %i.cf) ; 3 uses
  %i.ci = add nuw nsw i32 %.tr61, 1               ; 2 uses
  %i.cj = extractelement <2 x double> %i.ch, i64 0 ; 2 uses
  %i.ck = extractelement <2 x double> %i.ch, i64 1 ; 2 uses
  tail call fastcc void @_ZL26hb_gpu_cubic_to_quadraticsP13hb_gpu_draw_t20hb_gpu_cu2qu_point_tS1_S1_S1_dj(ptr noundef %0, double %.tr52, double %.tr53, double %i.bn, double %i.by, double %i.bs, double %i.cd, double %i.cj, double %i.ck, i32 noundef %i.ci)
  %i.cl = shufflevector <2 x double> %i.bh, <2 x double> %i.ch, <2 x i32> <i32 1, i32 2>
  br label %tailrecurse

_ZN13hb_gpu_draw_t12acc_conic_toEdddd.exit:       ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define ptr @hb_gpu_draw_encode(ptr noundef %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %_ZL24_hb_gpu_draw_get_extentsP13hb_gpu_draw_tP18hb_glyph_extents_t.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load i8, ptr %i.c, align 8, !tbaa !8, !range !27, !noundef !28
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.c, label %bb.e, !prof !29

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.g = load i32, ptr %i.f, align 4, !tbaa !35
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.j = load double, ptr %i.i, align 8, !tbaa !44 ; 2 uses
  %i.k = fcmp oeq double %i.j, +inf
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  br label %_ZL24_hb_gpu_draw_get_extentsP13hb_gpu_draw_tP18hb_glyph_extents_t.exit

bb.f:                                             ; preds = %bb.d
  %i.l = tail call double @llvm.floor.f64(double %i.j) ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.n = load double, ptr %i.m, align 8, !tbaa !45
  %i.o = tail call double @llvm.floor.f64(double %i.n) ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.q = load double, ptr %i.p, align 8, !tbaa !46
  %i.r = tail call double @llvm.ceil.f64(double %i.q) ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.t = load double, ptr %i.s, align 8, !tbaa !47
  %i.u = tail call double @llvm.ceil.f64(double %i.t) ; 3 uses
  %i.v = tail call double @llvm.fabs.f64(double %i.l)
  %i.w = fcmp ueq double %i.v, +inf
  %i.x = tail call double @llvm.fabs.f64(double %i.o)
  %i.y = fcmp ueq double %i.x, +inf
  %or.cond.not40.i = select i1 %i.w, i1 true, i1 %i.y, !prof !48
  %i.z = tail call double @llvm.fabs.f64(double %i.r)
  %i.aa = fcmp ueq double %i.z, +inf
  %or.cond34.not37.i = select i1 %or.cond.not40.i, i1 true, i1 %i.aa, !prof !49
  %i.ab = tail call double @llvm.fabs.f64(double %i.u)
  %i.ac = fcmp ueq double %i.ab, +inf
  %or.cond36.i = select i1 %or.cond34.not37.i, i1 true, i1 %i.ac, !prof !50
  br i1 %or.cond36.i, label %.critedge.i, label %bb.g, !prof !50

.critedge.i:                                      ; preds = %bb.f
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %1, i8 0, i64 16, i1 false)
  br label %_ZL24_hb_gpu_draw_get_extentsP13hb_gpu_draw_tP18hb_glyph_extents_t.exit

bb.g:                                             ; preds = %bb.f
  %i.ad = fsub double %i.r, %i.l
  %i.ae = fsub double %i.o, %i.u
  %i.af = insertelement <4 x double> poison, double %i.l, i64 0
  %i.ag = insertelement <4 x double> %i.af, double %i.u, i64 1
  %i.ah = insertelement <4 x double> %i.ag, double %i.ad, i64 2
  %i.ai = insertelement <4 x double> %i.ah, double %i.ae, i64 3 ; 2 uses
  %i.aj = fcmp oge <4 x double> %i.ai, splat (double f0xC1E0000000000000)
  %i.ak = select <4 x i1> %i.aj, <4 x double> %i.ai, <4 x double> splat (double f0xC1E0000000000000) ; 2 uses
  %i.al = fcmp ole <4 x double> %i.ak, splat (double f0x41DFFFFFFFC00000)
  %i.am = select <4 x i1> %i.al, <4 x double> %i.ak, <4 x double> splat (double f0x41DFFFFFFFC00000)
  %i.an = fptosi <4 x double> %i.am to <4 x i32>
  store <4 x i32> %i.an, ptr %1, align 4, !tbaa !51
  br label %_ZL24_hb_gpu_draw_get_extentsP13hb_gpu_draw_tP18hb_glyph_extents_t.exit

_ZL24_hb_gpu_draw_get_extentsP13hb_gpu_draw_tP18hb_glyph_extents_t.exit: ; preds = %bb.g, %.critedge.i, %bb.e, %bb.a
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ap = load i8, ptr %i.ao, align 8, !tbaa !8, !range !27, !noundef !28
  %i.aq = trunc nuw i8 %i.ap to i1
  br i1 %i.aq, label %bb.h, label %.critedge501, !prof !29

bb.h:                                             ; preds = %_ZL24_hb_gpu_draw_get_extentsP13hb_gpu_draw_tP18hb_glyph_extents_t.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !52 ; 9 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.au = load i32, ptr %i.at, align 4, !tbaa !53 ; 12 uses
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.aw = tail call ptr @hb_blob_get_empty() #16
  br label %.critedge501

bb.j:                                             ; preds = %bb.h
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !54 ; 2 uses
  %i.az = icmp slt i32 %i.ay, 0
  br i1 %i.az, label %_ZN11hb_vector_tI26hb_gpu_encode_curve_info_tLb0EE5resetEv.exit.i, label %_ZN11hb_vector_tI26hb_gpu_encode_curve_info_tLb0EE14reset_if_errorEv.exit, !prof !36

_ZN11hb_vector_tI26hb_gpu_encode_curve_info_tLb0EE5resetEv.exit.i: ; preds = %bb.j
  %i.ba = xor i32 %i.ay, -1
  store i32 %i.ba, ptr %i.ax, align 8, !tbaa !54
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 124
  store i32 0, ptr %i.bb, align 4, !tbaa !55
  br label %_ZN11hb_vector_tI26hb_gpu_encode_curve_info_tLb0EE14reset_if_errorEv.exit

_ZN11hb_vector_tI26hb_gpu_encode_curve_info_tLb0EE14reset_if_errorEv.exit: ; preds = %bb.j, %_ZN11hb_vector_tI26hb_gpu_encode_curve_info_tLb0EE5resetEv.exit.i
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !56 ; 2 uses
  %i.be = icmp slt i32 %i.bd, 0
  br i1 %i.be, label %_ZN11hb_vector_tIjLb0EE5resetEv.exit.i, label %_ZN11hb_vector_tIjLb0EE14reset_if_errorEv.exit, !prof !36

_ZN11hb_vector_tIjLb0EE5resetEv.exit.i:           ; preds = %_ZN11hb_vector_tI26hb_gpu_encode_curve_info_tLb0EE14reset_if_errorEv.exit
  %i.bf = xor i32 %i.bd, -1
  store i32 %i.bf, ptr %i.bc, align 8, !tbaa !56
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 140
  store i32 0, ptr %i.bg, align 4, !tbaa !57
  br label %_ZN11hb_vector_tIjLb0EE14reset_if_errorEv.exit

_ZN11hb_vector_tIjLb0EE14reset_if_errorEv.exit:   ; preds = %_ZN11hb_vector_tI26hb_gpu_encode_curve_info_tLb0EE14reset_if_errorEv.exit, %_ZN11hb_vector_tIjLb0EE5resetEv.exit.i
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !56 ; 2 uses
  %i.bj = icmp slt i32 %i.bi, 0
  br i1 %i.bj, label %_ZN11hb_vector_tIjLb0EE5resetEv.exit.i521, label %_ZN11hb_vector_tIjLb0EE14reset_if_errorEv.exit522, !prof !36

_ZN11hb_vector_tIjLb0EE5resetEv.exit.i521:        ; preds = %_ZN11hb_vector_tIjLb0EE14reset_if_errorEv.exit
  %i.bk = xor i32 %i.bi, -1
  store i32 %i.bk, ptr %i.bh, align 8, !tbaa !56
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 156
  store i32 0, ptr %i.bl, align 4, !tbaa !57
  br label %_ZN11hb_vector_tIjLb0EE14reset_if_errorEv.exit522

_ZN11hb_vector_tIjLb0EE14reset_if_errorEv.exit522: ; preds = %_ZN11hb_vector_tIjLb0EE14reset_if_errorEv.exit, %_ZN11hb_vector_tIjLb0EE5resetEv.exit.i521
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 3 uses
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !56 ; 2 uses
  %i.bo = icmp slt i32 %i.bn, 0
  br i1 %i.bo, label %_ZN11hb_vector_tIjLb0EE5resetEv.exit.i523, label %_ZN11hb_vector_tIjLb0EE14reset_if_errorEv.exit524, !prof !36

_ZN11hb_vector_tIjLb0EE5resetEv.exit.i523:        ; preds = %_ZN11hb_vector_tIjLb0EE14reset_if_errorEv.exit522
  %i.bp = xor i32 %i.bn, -1
  store i32 %i.bp, ptr %i.bm, align 8, !tbaa !56
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 172
  store i32 0, ptr %i.bq, align 4, !tbaa !57
  br label %_ZN11hb_vector_tIjLb0EE14reset_if_errorEv.exit524

_ZN11hb_vector_tIjLb0EE14reset_if_errorEv.exit524: ; preds = %_ZN11hb_vector_tIjLb0EE14reset_if_errorEv.exit522, %_ZN11hb_vector_tIjLb0EE5resetEv.exit.i523
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 3 uses
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !56 ; 2 uses
  %i.bt = icmp slt i32 %i.bs, 0
  br i1 %i.bt, label %_ZN11hb_vector_tIjLb0EE5resetEv.exit.i525, label %_ZN11hb_vector_tIjLb0EE14reset_if_errorEv.exit526, !prof !36

_ZN11hb_vector_tIjLb0EE5resetEv.exit.i525:        ; preds = %_ZN11hb_vector_tIjLb0EE14reset_if_errorEv.exit524
  %i.bu = xor i32 %i.bs, -1
  store i32 %i.bu, ptr %i.br, align 8, !tbaa !56
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 188
  store i32 0, ptr %i.bv, align 4, !tbaa !57
  br label %_ZN11hb_vector_tIjLb0EE14reset_if_errorEv.exit526

_ZN11hb_vector_tIjLb0EE14reset_if_errorEv.exit526: ; preds = %_ZN11hb_vector_tIjLb0EE14reset_if_errorEv.exit524, %_ZN11hb_vector_tIjLb0EE5resetEv.exit.i525
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 3 uses
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !56 ; 2 uses
  %i.by = icmp slt i32 %i.bx, 0
  br i1 %i.by, label %_ZN11hb_vector_tIjLb0EE5resetEv.exit.i527, label %_ZN11hb_vector_tIjLb0EE14reset_if_errorEv.exit528, !prof !36

_ZN11hb_vector_tIjLb0EE5resetEv.exit.i527:        ; preds = %_ZN11hb_vector_tIjLb0EE14reset_if_errorEv.exit526
  %i.bz = xor i32 %i.bx, -1
  store i32 %i.bz, ptr %i.bw, align 8, !tbaa !56
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 204
  store i32 0, ptr %i.ca, align 4, !tbaa !57
  br label %_ZN11hb_vector_tIjLb0EE14reset_if_errorEv.exit528

_ZN11hb_vector_tIjLb0EE14reset_if_errorEv.exit528: ; preds = %_ZN11hb_vector_tIjLb0EE14reset_if_errorEv.exit526, %_ZN11hb_vector_tIjLb0EE5resetEv.exit.i527
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !56 ; 2 uses
  %i.cd = icmp slt i32 %i.cc, 0
  br i1 %i.cd, label %_ZN11hb_vector_tIjLb0EE5resetEv.exit.i529, label %_ZN11hb_vector_tIjLb0EE14reset_if_errorEv.exit530, !prof !36

_ZN11hb_vector_tIjLb0EE5resetEv.exit.i529:        ; preds = %_ZN11hb_vector_tIjLb0EE14reset_if_errorEv.exit528
  %i.ce = xor i32 %i.cc, -1
  store i32 %i.ce, ptr %i.cb, align 8, !tbaa !56
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 220
  store i32 0, ptr %i.cf, align 4, !tbaa !57
  br label %_ZN11hb_vector_tIjLb0EE14reset_if_errorEv.exit530

_ZN11hb_vector_tIjLb0EE14reset_if_errorEv.exit530: ; preds = %_ZN11hb_vector_tIjLb0EE14reset_if_errorEv.exit528, %_ZN11hb_vector_tIjLb0EE5resetEv.exit.i529
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 3 uses
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !56 ; 2 uses
  %i.ci = icmp slt i32 %i.ch, 0
  br i1 %i.ci, label %_ZN11hb_vector_tIjLb0EE5resetEv.exit.i531, label %_ZN11hb_vector_tIjLb0EE14reset_if_errorEv.exit532, !prof !36

_ZN11hb_vector_tIjLb0EE5resetEv.exit.i531:        ; preds = %_ZN11hb_vector_tIjLb0EE14reset_if_errorEv.exit530
  %i.cj = xor i32 %i.ch, -1
  store i32 %i.cj, ptr %i.cg, align 8, !tbaa !56
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 236
  store i32 0, ptr %i.ck, align 4, !tbaa !57
  br label %_ZN11hb_vector_tIjLb0EE14reset_if_errorEv.exit532

_ZN11hb_vector_tIjLb0EE14reset_if_errorEv.exit532: ; preds = %_ZN11hb_vector_tIjLb0EE14reset_if_errorEv.exit530, %_ZN11hb_vector_tIjLb0EE5resetEv.exit.i531
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 3 uses
  %i.cm = load i32, ptr %i.cl, align 8, !tbaa !56 ; 2 uses
  %i.cn = icmp slt i32 %i.cm, 0
  br i1 %i.cn, label %_ZN11hb_vector_tIjLb0EE5resetEv.exit.i533, label %_ZN11hb_vector_tIjLb0EE14reset_if_errorEv.exit534, !prof !36

_ZN11hb_vector_tIjLb0EE5resetEv.exit.i533:        ; preds = %_ZN11hb_vector_tIjLb0EE14reset_if_errorEv.exit532
  %i.co = xor i32 %i.cm, -1
  store i32 %i.co, ptr %i.cl, align 8, !tbaa !56
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 252
  store i32 0, ptr %i.cp, align 4, !tbaa !57
  br label %_ZN11hb_vector_tIjLb0EE14reset_if_errorEv.exit534

_ZN11hb_vector_tIjLb0EE14reset_if_errorEv.exit534: ; preds = %_ZN11hb_vector_tIjLb0EE14reset_if_errorEv.exit532, %_ZN11hb_vector_tIjLb0EE5resetEv.exit.i533
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 3 uses
  %i.cr = load i32, ptr %i.cq, align 8, !tbaa !56 ; 2 uses
  %i.cs = icmp slt i32 %i.cr, 0
  br i1 %i.cs, label %_ZN11hb_vector_tIjLb0EE5resetEv.exit.i535, label %_ZN11hb_vector_tIjLb0EE14reset_if_errorEv.exit536, !prof !36

_ZN11hb_vector_tIjLb0EE5resetEv.exit.i535:        ; preds = %_ZN11hb_vector_tIjLb0EE14reset_if_errorEv.exit534
  %i.ct = xor i32 %i.cr, -1
  store i32 %i.ct, ptr %i.cq, align 8, !tbaa !56
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 268
  store i32 0, ptr %i.cu, align 4, !tbaa !57
  br label %_ZN11hb_vector_tIjLb0EE14reset_if_errorEv.exit536

_ZN11hb_vector_tIjLb0EE14reset_if_errorEv.exit536: ; preds = %_ZN11hb_vector_tIjLb0EE14reset_if_errorEv.exit534, %_ZN11hb_vector_tIjLb0EE5resetEv.exit.i535
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 3 uses
  %i.cw = load i32, ptr %i.cv, align 8, !tbaa !56 ; 2 uses
  %i.cx = icmp slt i32 %i.cw, 0
  br i1 %i.cx, label %_ZN11hb_vector_tIjLb0EE5resetEv.exit.i537, label %_ZN11hb_vector_tIjLb0EE14reset_if_errorEv.exit538, !prof !36

_ZN11hb_vector_tIjLb0EE5resetEv.exit.i537:        ; preds = %_ZN11hb_vector_tIjLb0EE14reset_if_errorEv.exit536
  %i.cy = xor i32 %i.cw, -1
  store i32 %i.cy, ptr %i.cv, align 8, !tbaa !56
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 284
  store i32 0, ptr %i.cz, align 4, !tbaa !57
  br label %_ZN11hb_vector_tIjLb0EE14reset_if_errorEv.exit538

_ZN11hb_vector_tIjLb0EE14reset_if_errorEv.exit538: ; preds = %_ZN11hb_vector_tIjLb0EE14reset_if_errorEv.exit536, %_ZN11hb_vector_tIjLb0EE5resetEv.exit.i537
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 3 uses
  %i.db = load i32, ptr %i.da, align 8, !tbaa !56 ; 2 uses
  %i.dc = icmp slt i32 %i.db, 0
  br i1 %i.dc, label %_ZN11hb_vector_tIjLb0EE5resetEv.exit.i539, label %_ZN11hb_vector_tIjLb0EE14reset_if_errorEv.exit540, !prof !36

_ZN11hb_vector_tIjLb0EE5resetEv.exit.i539:        ; preds = %_ZN11hb_vector_tIjLb0EE14reset_if_errorEv.exit538
  %i.dd = xor i32 %i.db, -1
  store i32 %i.dd, ptr %i.da, align 8, !tbaa !56
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 300
  store i32 0, ptr %i.de, align 4, !tbaa !57
  br label %_ZN11hb_vector_tIjLb0EE14reset_if_errorEv.exit540

_ZN11hb_vector_tIjLb0EE14reset_if_errorEv.exit540: ; preds = %_ZN11hb_vector_tIjLb0EE14reset_if_errorEv.exit538, %_ZN11hb_vector_tIjLb0EE5resetEv.exit.i539
  %i.df = icmp slt i32 %i.au, 0
  br i1 %i.df, label %.critedge501, label %bb.k, !prof !36

bb.k:                                             ; preds = %_ZN11hb_vector_tIjLb0EE14reset_if_errorEv.exit540
  %i.dg = tail call noundef zeroext i1 @_ZN11hb_vector_tI26hb_gpu_encode_curve_info_tLb0EE5allocEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, i32 noundef %i.au, i1 noundef zeroext false)
  br i1 %i.dg, label %bb.l, label %.critedge501, !prof !58

bb.l:                                             ; preds = %bb.k
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 2 uses
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !55 ; 3 uses
  %i.dj = icmp ugt i32 %i.au, %i.di
  br i1 %i.dj, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.dk = sub nuw nsw i32 %i.au, %i.di
  %i.dl = mul i32 %i.dk, 56                       ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.dl, 0
  br i1 %.not.i.i.i.i, label %bb.o, label %bb.n, !prof !36

bb.n:                                             ; preds = %bb.m
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !59
  %i.do = zext nneg i32 %i.di to i64
  %i.dp = getelementptr inbounds nuw [56 x i8], ptr %i.dn, i64 %i.do
  %i.dq = zext i32 %i.dl to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.dp, i8 0, i64 %i.dq, i1 false)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l
  store i32 %i.au, ptr %i.dh, align 4, !tbaa !55
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ds = load double, ptr %i.dr, align 8, !tbaa !44
  %i.dt = fmul double %i.ds, 4.000000e+00
  %i.du = tail call double @llvm.floor.f64(double %i.dt) ; 3 uses
  %i.dv = fcmp oge double %i.du, -3.276800e+04
  %i.dw = fcmp ole double %i.du, 3.276700e+04
end_hunk_0
begin_hunk_1_@hb_gpu_draw_encode:bb.a
  %i.ur = getelementptr inbounds nuw [56 x i8], ptr %i.sg, i64 %i.uq
  %i.us = getelementptr inbounds nuw i8, ptr %i.ur, i64 8
  %i.ut = load double, ptr %i.us, align 8, !tbaa !98
  %i.uu = fcmp olt double %i.ut, %.pre.i.i
  br i1 %i.uu, label %bb.bv, label %.critedge.i.loopexit.i

.critedge.i.loopexit.i:                           ; preds = %bb.bv, %.lr.ph.i.i
  %.015.i.i = getelementptr inbounds nuw i8, ptr %.01520.i.i, i64 4 ; 2 uses
  %i.uv = icmp ult ptr %.015.i.i, %i.uo
  br i1 %i.uv, label %.preheader.i.i, label %"_ZN10hb_array_tIjE5qsortIZ18hb_gpu_draw_encodeE3$_1EE17hb_sorted_array_tIjET_.exit", !llvm.loop !99

bb.bv:                                            ; preds = %.lr.ph.i.i
  store i32 %.0.val.pre.i.i, ptr %i.up, align 4, !tbaa !51
  store i32 %.val16.i.i, ptr %.017.i.i, align 4, !tbaa !51
  %i.uw = icmp ugt ptr %i.up, %i.un
  br i1 %i.uw, label %.lr.ph.i.i, label %.critedge.i.loopexit.i, !llvm.loop !100

"_ZN10hb_array_tIjE5qsortIZ18hb_gpu_draw_encodeE3$_1EE17hb_sorted_array_tIjET_.exit": ; preds = %.critedge.i.loopexit.i, %.preheader, %bb.bu
  %i.ux = load ptr, ptr %i.si, align 8, !tbaa !66
  %i.uy = load i32, ptr %i.nx, align 4, !tbaa !57
  %storemerge.i.i593 = tail call i32 @llvm.usub.sat.i32(i32 %i.uy, i32 %i.ug)
  %.sroa.speculated.i.i594 = tail call i32 @llvm.umin.i32(i32 %storemerge.i.i593, i32 %i.uj) ; 3 uses
  %i.uz = getelementptr inbounds nuw [4 x i8], ptr %i.ux, i64 %i.um ; 4 uses
  %.not.i598 = icmp eq i32 %.sroa.speculated.i.i594, 0
  br i1 %.not.i598, label %"_ZN10hb_array_tIjE5qsortIZ18hb_gpu_draw_encodeE3$_2EE17hb_sorted_array_tIjET_.exit", label %bb.bw, !prof !36

bb.bw:                                            ; preds = %"_ZN10hb_array_tIjE5qsortIZ18hb_gpu_draw_encodeE3$_1EE17hb_sorted_array_tIjET_.exit"
  %.sroa.3.8.insert.ext.i.i595 = zext i32 %.sroa.speculated.i.i594 to i64 ; 2 uses
  tail call fastcc void @"_ZL13hb_qsort_loopIjZ18hb_gpu_draw_encodeE3$_2EvPT_mT0_"(ptr noundef %i.uz, i64 noundef range(i64 1, 4294967296) %.sroa.3.8.insert.ext.i.i595, ptr %i.sg)
  %.idx.i.i599 = shl nuw nsw i64 %.sroa.3.8.insert.ext.i.i595, 2
  %i.va = getelementptr inbounds nuw i8, ptr %i.uz, i64 %.idx.i.i599
  %.not2.i600 = icmp eq i32 %.sroa.speculated.i.i594, 1
  br i1 %.not2.i600, label %"_ZN10hb_array_tIjE5qsortIZ18hb_gpu_draw_encodeE3$_2EE17hb_sorted_array_tIjET_.exit", label %.preheader.preheader.i.i601

.preheader.preheader.i.i601:                      ; preds = %bb.bw
  %.01519.i.i602 = getelementptr inbounds nuw i8, ptr %i.uz, i64 4
  br label %.preheader.i.i603

.preheader.i.i603:                                ; preds = %.critedge.i.loopexit.i612, %.preheader.preheader.i.i601
  %.01520.i.i604 = phi ptr [ %.015.i.i613, %.critedge.i.loopexit.i612 ], [ %.01519.i.i602, %.preheader.preheader.i.i601 ] ; 3 uses
  %.0.val.pre.i.i605 = load i32, ptr %.01520.i.i604, align 4, !tbaa !51 ; 2 uses
  %.phi.trans.insert.i.i606 = zext i32 %.0.val.pre.i.i605 to i64
  %.phi.trans.insert22.i.i607 = getelementptr inbounds nuw [56 x i8], ptr %i.sg, i64 %.phi.trans.insert.i.i606
  %.pre.i.i608 = load double, ptr %.phi.trans.insert22.i.i607, align 8, !tbaa !101
  br label %.lr.ph.i.i609

.lr.ph.i.i609:                                    ; preds = %bb.bx, %.preheader.i.i603
  %.017.i.i610 = phi ptr [ %i.vb, %bb.bx ], [ %.01520.i.i604, %.preheader.i.i603 ] ; 2 uses
  %i.vb = getelementptr inbounds i8, ptr %.017.i.i610, i64 -4 ; 4 uses
  %.val16.i.i611 = load i32, ptr %i.vb, align 4, !tbaa !51 ; 2 uses
  %i.vc = zext i32 %.val16.i.i611 to i64
  %i.vd = getelementptr inbounds nuw [56 x i8], ptr %i.sg, i64 %i.vc
  %i.ve = load double, ptr %i.vd, align 8, !tbaa !101
  %i.vf = fcmp ogt double %i.ve, %.pre.i.i608
  br i1 %i.vf, label %bb.bx, label %.critedge.i.loopexit.i612

.critedge.i.loopexit.i612:                        ; preds = %bb.bx, %.lr.ph.i.i609
  %.015.i.i613 = getelementptr inbounds nuw i8, ptr %.01520.i.i604, i64 4 ; 2 uses
  %i.vg = icmp ult ptr %.015.i.i613, %i.va
  br i1 %i.vg, label %.preheader.i.i603, label %"_ZN10hb_array_tIjE5qsortIZ18hb_gpu_draw_encodeE3$_2EE17hb_sorted_array_tIjET_.exit", !llvm.loop !102

bb.bx:                                            ; preds = %.lr.ph.i.i609
  store i32 %.0.val.pre.i.i605, ptr %i.vb, align 4, !tbaa !51
  store i32 %.val16.i.i611, ptr %.017.i.i610, align 4, !tbaa !51
  %i.vh = icmp ugt ptr %i.vb, %i.uz
  br i1 %i.vh, label %.lr.ph.i.i609, label %.critedge.i.loopexit.i612, !llvm.loop !103

"_ZN10hb_array_tIjE5qsortIZ18hb_gpu_draw_encodeE3$_2EE17hb_sorted_array_tIjET_.exit": ; preds = %.critedge.i.loopexit.i612, %"_ZN10hb_array_tIjE5qsortIZ18hb_gpu_draw_encodeE3$_1EE17hb_sorted_array_tIjET_.exit", %bb.bw
  %indvars.iv.next1020 = add nuw nsw i64 %indvars.iv1019, 1 ; 2 uses
  %exitcond1023.not = icmp eq i64 %indvars.iv.next1020, %i.ie
  br i1 %exitcond1023.not, label %.preheader856, label %.preheader, !llvm.loop !104

.preheader856:                                    ; preds = %"_ZN10hb_array_tIjE5qsortIZ18hb_gpu_draw_encodeE3$_2EE17hb_sorted_array_tIjET_.exit", %"_ZN10hb_array_tIjE5qsortIZ18hb_gpu_draw_encodeE3$_4EE17hb_sorted_array_tIjET_.exit"
  %indvars.iv1024 = phi i64 [ %indvars.iv.next1025, %"_ZN10hb_array_tIjE5qsortIZ18hb_gpu_draw_encodeE3$_4EE17hb_sorted_array_tIjET_.exit" ], [ 0, %"_ZN10hb_array_tIjE5qsortIZ18hb_gpu_draw_encodeE3$_2EE17hb_sorted_array_tIjET_.exit" ] ; 3 uses
  %i.vi = load ptr, ptr %i.mc, align 8, !tbaa !80
  %i.vj = getelementptr inbounds nuw [4 x i8], ptr %i.vi, i64 %indvars.iv1024
  %i.vk = load i32, ptr %i.vj, align 4, !tbaa !51 ; 3 uses
  %i.vl = load ptr, ptr %i.ig, align 8, !tbaa !68
  %i.vm = getelementptr inbounds nuw [4 x i8], ptr %i.vl, i64 %indvars.iv1024
  %i.vn = load i32, ptr %i.vm, align 4, !tbaa !51 ; 2 uses
  %i.vo = load ptr, ptr %i.sj, align 8, !tbaa !66
  %i.vp = load i32, ptr %i.oj, align 4, !tbaa !57
  %storemerge.i.i621 = tail call i32 @llvm.usub.sat.i32(i32 %i.vp, i32 %i.vk)
  %.sroa.speculated.i.i622 = tail call i32 @llvm.umin.i32(i32 %storemerge.i.i621, i32 %i.vn) ; 3 uses
  %i.vq = zext i32 %i.vk to i64                   ; 2 uses
  %i.vr = getelementptr inbounds nuw [4 x i8], ptr %i.vo, i64 %i.vq ; 4 uses
  %.not.i626 = icmp eq i32 %.sroa.speculated.i.i622, 0
  br i1 %.not.i626, label %"_ZN10hb_array_tIjE5qsortIZ18hb_gpu_draw_encodeE3$_3EE17hb_sorted_array_tIjET_.exit", label %bb.by, !prof !36

bb.by:                                            ; preds = %.preheader856
  %.sroa.3.8.insert.ext.i.i623 = zext i32 %.sroa.speculated.i.i622 to i64 ; 2 uses
  tail call fastcc void @"_ZL13hb_qsort_loopIjZ18hb_gpu_draw_encodeE3$_3EvPT_mT0_"(ptr noundef %i.vr, i64 noundef range(i64 1, 4294967296) %.sroa.3.8.insert.ext.i.i623, ptr %i.sg)
  %.idx.i.i627 = shl nuw nsw i64 %.sroa.3.8.insert.ext.i.i623, 2
  %i.vs = getelementptr inbounds nuw i8, ptr %i.vr, i64 %.idx.i.i627
  %.not2.i628 = icmp eq i32 %.sroa.speculated.i.i622, 1
  br i1 %.not2.i628, label %"_ZN10hb_array_tIjE5qsortIZ18hb_gpu_draw_encodeE3$_3EE17hb_sorted_array_tIjET_.exit", label %.preheader.preheader.i.i629

.preheader.preheader.i.i629:                      ; preds = %bb.by
  %.01519.i.i630 = getelementptr inbounds nuw i8, ptr %i.vr, i64 4
  br label %.preheader.i.i631

.preheader.i.i631:                                ; preds = %.critedge.i.loopexit.i641, %.preheader.preheader.i.i629
  %.01520.i.i632 = phi ptr [ %.015.i.i642, %.critedge.i.loopexit.i641 ], [ %.01519.i.i630, %.preheader.preheader.i.i629 ] ; 3 uses
  %.0.val.pre.i.i633 = load i32, ptr %.01520.i.i632, align 4, !tbaa !51 ; 2 uses
  %.phi.trans.insert.i.i634 = zext i32 %.0.val.pre.i.i633 to i64
  %.phi.trans.insert22.i.i635 = getelementptr inbounds nuw [56 x i8], ptr %i.sg, i64 %.phi.trans.insert.i.i634
  %.phi.trans.insert23.i.i636 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert22.i.i635, i64 24
  %.pre.i.i637 = load double, ptr %.phi.trans.insert23.i.i636, align 8, !tbaa !105
  br label %.lr.ph.i.i638

.lr.ph.i.i638:                                    ; preds = %bb.bz, %.preheader.i.i631
  %.017.i.i639 = phi ptr [ %i.vt, %bb.bz ], [ %.01520.i.i632, %.preheader.i.i631 ] ; 2 uses
  %i.vt = getelementptr inbounds i8, ptr %.017.i.i639, i64 -4 ; 4 uses
  %.val16.i.i640 = load i32, ptr %i.vt, align 4, !tbaa !51 ; 2 uses
  %i.vu = zext i32 %.val16.i.i640 to i64
  %i.vv = getelementptr inbounds nuw [56 x i8], ptr %i.sg, i64 %i.vu
  %i.vw = getelementptr inbounds nuw i8, ptr %i.vv, i64 24
  %i.vx = load double, ptr %i.vw, align 8, !tbaa !105
  %i.vy = fcmp olt double %i.vx, %.pre.i.i637
  br i1 %i.vy, label %bb.bz, label %.critedge.i.loopexit.i641

.critedge.i.loopexit.i641:                        ; preds = %bb.bz, %.lr.ph.i.i638
  %.015.i.i642 = getelementptr inbounds nuw i8, ptr %.01520.i.i632, i64 4 ; 2 uses
  %i.vz = icmp ult ptr %.015.i.i642, %i.vs
  br i1 %i.vz, label %.preheader.i.i631, label %"_ZN10hb_array_tIjE5qsortIZ18hb_gpu_draw_encodeE3$_3EE17hb_sorted_array_tIjET_.exit", !llvm.loop !106

bb.bz:                                            ; preds = %.lr.ph.i.i638
  store i32 %.0.val.pre.i.i633, ptr %i.vt, align 4, !tbaa !51
  store i32 %.val16.i.i640, ptr %.017.i.i639, align 4, !tbaa !51
  %i.wa = icmp ugt ptr %i.vt, %i.vr
  br i1 %i.wa, label %.lr.ph.i.i638, label %.critedge.i.loopexit.i641, !llvm.loop !107

"_ZN10hb_array_tIjE5qsortIZ18hb_gpu_draw_encodeE3$_3EE17hb_sorted_array_tIjET_.exit": ; preds = %.critedge.i.loopexit.i641, %.preheader856, %bb.by
  %i.wb = load ptr, ptr %i.sk, align 8, !tbaa !66
  %i.wc = load i32, ptr %i.ou, align 4, !tbaa !57
  %storemerge.i.i650 = tail call i32 @llvm.usub.sat.i32(i32 %i.wc, i32 %i.vk)
  %.sroa.speculated.i.i651 = tail call i32 @llvm.umin.i32(i32 %storemerge.i.i650, i32 %i.vn) ; 3 uses
  %i.wd = getelementptr inbounds nuw [4 x i8], ptr %i.wb, i64 %i.vq ; 4 uses
  %.not.i655 = icmp eq i32 %.sroa.speculated.i.i651, 0
  br i1 %.not.i655, label %"_ZN10hb_array_tIjE5qsortIZ18hb_gpu_draw_encodeE3$_4EE17hb_sorted_array_tIjET_.exit", label %bb.ca, !prof !36

bb.ca:                                            ; preds = %"_ZN10hb_array_tIjE5qsortIZ18hb_gpu_draw_encodeE3$_3EE17hb_sorted_array_tIjET_.exit"
  %.sroa.3.8.insert.ext.i.i652 = zext i32 %.sroa.speculated.i.i651 to i64 ; 2 uses
  tail call fastcc void @"_ZL13hb_qsort_loopIjZ18hb_gpu_draw_encodeE3$_4EvPT_mT0_"(ptr noundef %i.wd, i64 noundef range(i64 1, 4294967296) %.sroa.3.8.insert.ext.i.i652, ptr %i.sg)
  %.idx.i.i656 = shl nuw nsw i64 %.sroa.3.8.insert.ext.i.i652, 2
  %i.we = getelementptr inbounds nuw i8, ptr %i.wd, i64 %.idx.i.i656
  %.not2.i657 = icmp eq i32 %.sroa.speculated.i.i651, 1
  br i1 %.not2.i657, label %"_ZN10hb_array_tIjE5qsortIZ18hb_gpu_draw_encodeE3$_4EE17hb_sorted_array_tIjET_.exit", label %.preheader.preheader.i.i658

.preheader.preheader.i.i658:                      ; preds = %bb.ca
  %.01519.i.i659 = getelementptr inbounds nuw i8, ptr %i.wd, i64 4
  br label %.preheader.i.i660

.preheader.i.i660:                                ; preds = %.critedge.i.loopexit.i670, %.preheader.preheader.i.i658
  %.01520.i.i661 = phi ptr [ %.015.i.i671, %.critedge.i.loopexit.i670 ], [ %.01519.i.i659, %.preheader.preheader.i.i658 ] ; 3 uses
  %.0.val.pre.i.i662 = load i32, ptr %.01520.i.i661, align 4, !tbaa !51 ; 2 uses
  %.phi.trans.insert.i.i663 = zext i32 %.0.val.pre.i.i662 to i64
  %.phi.trans.insert22.i.i664 = getelementptr inbounds nuw [56 x i8], ptr %i.sg, i64 %.phi.trans.insert.i.i663
  %.phi.trans.insert23.i.i665 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert22.i.i664, i64 16
  %.pre.i.i666 = load double, ptr %.phi.trans.insert23.i.i665, align 8, !tbaa !108
  br label %.lr.ph.i.i667

.lr.ph.i.i667:                                    ; preds = %bb.cb, %.preheader.i.i660
  %.017.i.i668 = phi ptr [ %i.wf, %bb.cb ], [ %.01520.i.i661, %.preheader.i.i660 ] ; 2 uses
  %i.wf = getelementptr inbounds i8, ptr %.017.i.i668, i64 -4 ; 4 uses
  %.val16.i.i669 = load i32, ptr %i.wf, align 4, !tbaa !51 ; 2 uses
  %i.wg = zext i32 %.val16.i.i669 to i64
  %i.wh = getelementptr inbounds nuw [56 x i8], ptr %i.sg, i64 %i.wg
  %i.wi = getelementptr inbounds nuw i8, ptr %i.wh, i64 16
  %i.wj = load double, ptr %i.wi, align 8, !tbaa !108
  %i.wk = fcmp ogt double %i.wj, %.pre.i.i666
  br i1 %i.wk, label %bb.cb, label %.critedge.i.loopexit.i670

.critedge.i.loopexit.i670:                        ; preds = %bb.cb, %.lr.ph.i.i667
  %.015.i.i671 = getelementptr inbounds nuw i8, ptr %.01520.i.i661, i64 4 ; 2 uses
  %i.wl = icmp ult ptr %.015.i.i671, %i.we
  br i1 %i.wl, label %.preheader.i.i660, label %"_ZN10hb_array_tIjE5qsortIZ18hb_gpu_draw_encodeE3$_4EE17hb_sorted_array_tIjET_.exit", !llvm.loop !109

bb.cb:                                            ; preds = %.lr.ph.i.i667
  store i32 %.0.val.pre.i.i662, ptr %i.wf, align 4, !tbaa !51
  store i32 %.val16.i.i669, ptr %.017.i.i668, align 4, !tbaa !51
  %i.wm = icmp ugt ptr %i.wf, %i.wd
  br i1 %i.wm, label %.lr.ph.i.i667, label %.critedge.i.loopexit.i670, !llvm.loop !110

"_ZN10hb_array_tIjE5qsortIZ18hb_gpu_draw_encodeE3$_4EE17hb_sorted_array_tIjET_.exit": ; preds = %.critedge.i.loopexit.i670, %"_ZN10hb_array_tIjE5qsortIZ18hb_gpu_draw_encodeE3$_3EE17hb_sorted_array_tIjET_.exit", %bb.ca
  %indvars.iv.next1025 = add nuw nsw i64 %indvars.iv1024, 1 ; 2 uses
  %exitcond1028.not = icmp eq i64 %indvars.iv.next1025, %i.ii
  br i1 %exitcond1028.not, label %bb.cc, label %.preheader856, !llvm.loop !111

bb.cc:                                            ; preds = %"_ZN10hb_array_tIjE5qsortIZ18hb_gpu_draw_encodeE3$_4EE17hb_sorted_array_tIjET_.exit"
  %i.wn = add nuw i32 %.lcssa1206, %.lcssa1208    ; 2 uses
  %i.wo = shl nuw i32 %i.wn, 1
  %i.wp = icmp slt i32 %i.wn, 0
  br i1 %i.wp, label %.critedge501, label %.preheader855, !prof !36

.preheader855:                                    ; preds = %bb.cc
  %.not950 = icmp eq i32 %i.au, 1
  br i1 %.not950, label %._crit_edge893, label %.lr.ph892.preheader

.lr.ph892.preheader:                              ; preds = %.preheader855
  %umax1032 = tail call i32 @llvm.umax.i32(i32 %i.au, i32 2) ; 2 uses
  %wide.trip.count1033 = zext nneg i32 %umax1032 to i64
  %i.wq = add nsw i64 %wide.trip.count1033, -1    ; 2 uses
  %xtraiter1223 = and i64 %i.wq, 3                ; 3 uses
  %2 = add nsw i32 %umax1032, -2
  %i.wr = icmp ult i32 %2, 3
  br i1 %i.wr, label %.lr.ph892.epil.preheader, label %.lr.ph892.preheader.new

.lr.ph892.preheader.new:                          ; preds = %.lr.ph892.preheader
  %unroll_iter1227 = and i64 %i.wq, -4
  br label %.lr.ph892

._crit_edge893.loopexit.unr-lcssa:                ; preds = %.lr.ph892
  %lcmp.mod1224.not = icmp eq i64 %xtraiter1223, 0
  br i1 %lcmp.mod1224.not, label %._crit_edge893, label %.lr.ph892.epil.preheader

.lr.ph892.epil.preheader:                         ; preds = %._crit_edge893.loopexit.unr-lcssa, %.lr.ph892.preheader
  %indvars.iv1029.epil.init = phi i64 [ 1, %.lr.ph892.preheader ], [ %indvars.iv.next1030.3, %._crit_edge893.loopexit.unr-lcssa ]
  %.0464891.epil.init = phi i32 [ 0, %.lr.ph892.preheader ], [ %spec.select.3, %._crit_edge893.loopexit.unr-lcssa ]
  %lcmp.mod1226 = icmp ne i64 %xtraiter1223, 0
  tail call void @llvm.assume(i1 %lcmp.mod1226)
  br label %.lr.ph892.epil

.lr.ph892.epil:                                   ; preds = %.lr.ph892.epil, %.lr.ph892.epil.preheader
  %indvars.iv1029.epil = phi i64 [ %indvars.iv1029.epil.init, %.lr.ph892.epil.preheader ], [ %indvars.iv.next1030.epil, %.lr.ph892.epil ] ; 2 uses
  %.0464891.epil = phi i32 [ %.0464891.epil.init, %.lr.ph892.epil.preheader ], [ %spec.select.epil, %.lr.ph892.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph892.epil.preheader ], [ %epil.iter.next, %.lr.ph892.epil ]
  %i.ws = getelementptr inbounds nuw [56 x i8], ptr %i.as, i64 %indvars.iv1029.epil
  %i.wt = getelementptr inbounds nuw i8, ptr %i.ws, i64 48
  %i.wu = load i8, ptr %i.wt, align 8, !tbaa !112, !range !27, !noundef !28
  %i.wv = zext nneg i8 %i.wu to i32
  %spec.select.epil = add i32 %.0464891.epil, %i.wv ; 2 uses
  %indvars.iv.next1030.epil = add nuw nsw i64 %indvars.iv1029.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter1223
  br i1 %epil.iter.cmp.not, label %._crit_edge893, label %.lr.ph892.epil, !llvm.loop !114

._crit_edge893:                                   ; preds = %._crit_edge893.loopexit.unr-lcssa, %.lr.ph892.epil, %.preheader855
  %.0464.lcssa = phi i32 [ 0, %.preheader855 ], [ %spec.select.3, %._crit_edge893.loopexit.unr-lcssa ], [ %spec.select.epil, %.lr.ph892.epil ]
  %i.ww = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %i.au, i32 %.0464.lcssa) ; 2 uses
  %i.wx = extractvalue { i32, i1 } %i.ww, 1
  br i1 %i.wx, label %.critedge501, label %bb.cd, !prof !36

.lr.ph892:                                        ; preds = %.lr.ph892, %.lr.ph892.preheader.new
  %indvars.iv1029 = phi i64 [ 1, %.lr.ph892.preheader.new ], [ %indvars.iv.next1030.3, %.lr.ph892 ] ; 5 uses
  %.0464891 = phi i32 [ 0, %.lr.ph892.preheader.new ], [ %spec.select.3, %.lr.ph892 ]
  %niter1228 = phi i64 [ 0, %.lr.ph892.preheader.new ], [ %niter1228.next.3, %.lr.ph892 ]
  %i.wy = getelementptr inbounds nuw [56 x i8], ptr %i.as, i64 %indvars.iv1029
  %i.wz = getelementptr inbounds nuw i8, ptr %i.wy, i64 48
  %i.xa = load i8, ptr %i.wz, align 8, !tbaa !112, !range !27, !noundef !28
  %i.xb = zext nneg i8 %i.xa to i32
  %spec.select = add i32 %.0464891, %i.xb
  %i.xc = getelementptr inbounds nuw [56 x i8], ptr %i.as, i64 %indvars.iv1029
  %i.xd = getelementptr inbounds nuw i8, ptr %i.xc, i64 104
  %i.xe = load i8, ptr %i.xd, align 8, !tbaa !112, !range !27, !noundef !28
  %i.xf = zext nneg i8 %i.xe to i32
  %spec.select.1 = add i32 %spec.select, %i.xf
  %i.xg = getelementptr inbounds nuw [56 x i8], ptr %i.as, i64 %indvars.iv1029
  %i.xh = getelementptr inbounds nuw i8, ptr %i.xg, i64 160
  %i.xi = load i8, ptr %i.xh, align 8, !tbaa !112, !range !27, !noundef !28
  %i.xj = zext nneg i8 %i.xi to i32
  %spec.select.2 = add i32 %spec.select.1, %i.xj
  %i.xk = getelementptr inbounds nuw [56 x i8], ptr %i.as, i64 %indvars.iv1029
  %i.xl = getelementptr inbounds nuw i8, ptr %i.xk, i64 216
  %i.xm = load i8, ptr %i.xl, align 8, !tbaa !112, !range !27, !noundef !28
  %i.xn = zext nneg i8 %i.xm to i32
  %spec.select.3 = add i32 %spec.select.2, %i.xn  ; 3 uses
  %indvars.iv.next1030.3 = add nuw nsw i64 %indvars.iv1029, 4 ; 2 uses
  %niter1228.next.3 = add nuw i64 %niter1228, 4   ; 2 uses
  %niter1228.ncmp.3 = icmp eq i64 %niter1228.next.3, %unroll_iter1227
  br i1 %niter1228.ncmp.3, label %._crit_edge893.loopexit.unr-lcssa, label %.lr.ph892, !llvm.loop !115

bb.cd:                                            ; preds = %._crit_edge893
  %i.xo = extractvalue { i32, i1 } %i.ww, 0
  %i.xp = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %i.xo, i32 1) ; 2 uses
  %i.xq = extractvalue { i32, i1 } %i.xp, 1
  %i.xr = extractvalue { i32, i1 } %i.xp, 0
  br i1 %i.xq, label %.critedge501, label %bb.ce, !prof !36

bb.ce:                                            ; preds = %bb.cd
  %i.xs = add nuw nsw i32 %i.fl, %i.hq
  %i.xt = add nuw nsw i32 %i.xs, 2                ; 2 uses
  %i.xu = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %i.xt, i32 %i.wo) ; 2 uses
  %i.xv = extractvalue { i32, i1 } %i.xu, 1
  %i.xw = extractvalue { i32, i1 } %i.xu, 0       ; 2 uses
  br i1 %i.xv, label %.critedge501, label %bb.cf, !prof !36

bb.cf:                                            ; preds = %bb.ce
  %i.xx = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %i.xw, i32 %i.xr) ; 2 uses
  %i.xy = extractvalue { i32, i1 } %i.xx, 1
  %i.xz = extractvalue { i32, i1 } %i.xx, 0       ; 2 uses
  %i.ya = icmp ugt i32 %i.xz, 65536
  %or.cond = or i1 %i.xy, %i.ya
  br i1 %or.cond, label %.critedge501, label %bb.cg, !prof !43

bb.cg:                                            ; preds = %bb.cf
  %i.yb = shl nuw nsw i32 %i.xz, 3                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store i32 0, ptr %i.a, align 4, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  store ptr null, ptr %i.b, align 8, !tbaa !116
  %i.yc = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 4 uses
  %i.yd = load ptr, ptr %i.yc, align 8, !tbaa !118
  %i.ye = call noundef ptr @_ZN9hb_blob_t15recycle_acquireEPS_jPjPPc(ptr noundef %i.yd, i32 noundef %i.yb, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) ; 23 uses
  %.not493 = icmp eq ptr %i.ye, null
  br i1 %.not493, label %_ZN9hb_blob_t13recycle_abortEPcPS_.exit684, label %.cont701, !prof !36

.cont701:                                         ; preds = %bb.cg
  store <4 x i16> %i.ez, ptr %i.ye, align 2, !tbaa !119
  %i.yf = getelementptr inbounds nuw i8, ptr %i.ye, i64 8
  %i.yg = shufflevector <2 x i32> %i.fk, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  %i.yh = trunc nuw nsw <2 x i32> %i.yg to <2 x i16>
  store <2 x i16> %i.yh, ptr %i.yf, align 2, !tbaa !119
  %i.yi = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.yj = getelementptr inbounds nuw i8, ptr %i.ye, i64 12
  %i.yk = load <2 x i32>, ptr %i.yi, align 8, !tbaa !51
  %i.yl = call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.yk, <2 x i32> splat (i32 -32768))
  %i.ym = call <2 x i32> @llvm.smin.v2i32(<2 x i32> %i.yl, <2 x i32> splat (i32 32767))
  %i.yn = trunc nsw <2 x i32> %i.ym to <2 x i16>
  store <2 x i16> %i.yn, ptr %i.yj, align 2, !tbaa !119
  %i.yo = call noundef zeroext i1 @_ZN11hb_vector_tIjLb0EE6resizeEi(ptr noundef nonnull align 8 dereferenceable(16) %i.da, i32 noundef %i.au)
  br i1 %i.yo, label %.preheader854, label %bb.ch, !prof !29

.preheader854:                                    ; preds = %.cont701
  %i.yp = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  br label %bb.cm

bb.ch:                                            ; preds = %.cont701
  %i.yq = load ptr, ptr %i.yc, align 8, !tbaa !118 ; 3 uses
  %.not9.i682 = icmp eq ptr %i.yq, null
  br i1 %.not9.i682, label %bb.ck, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.yr = getelementptr inbounds nuw i8, ptr %i.yq, i64 40
  %i.ys = load ptr, ptr %i.yr, align 8, !tbaa !121
  %i.yt = icmp eq ptr %i.ys, @_ZN9hb_blob_t20recycle_data_destroyEPv
  br i1 %i.yt, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  %i.yu = getelementptr inbounds nuw i8, ptr %i.yq, i64 32
  %i.yv = load ptr, ptr %i.yu, align 8, !tbaa !124
  %i.yw = load ptr, ptr %i.yv, align 8, !tbaa !125
  %.not10.i683 = icmp eq ptr %i.ye, %i.yw
  br i1 %.not10.i683, label %_ZN9hb_blob_t13recycle_abortEPcPS_.exit684, label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ci, %bb.ch
  call void @hb_free(ptr noundef nonnull %i.ye) #16
  br label %_ZN9hb_blob_t13recycle_abortEPcPS_.exit684

bb.cl:                                            ; preds = %bb.ct
  %i.yx = load ptr, ptr %i.ls, align 8, !tbaa !79
  %i.yy = load ptr, ptr %i.ic, align 8, !tbaa !67
  %foldExtExtBinop = fadd nnan <2 x double> %i.fc, %i.ff
  %i.yz = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.za = fmul nnan double %i.yz, 5.000000e-01    ; 2 uses
  %i.zb = fmul nnan double %i.za, 4.000000e+00
  %i.zc = call double @llvm.round.f64(double %i.zb)
  br label %bb.cu

bb.cm:                                            ; preds = %.preheader854, %bb.ct
  %indvars.iv1035 = phi i64 [ 0, %.preheader854 ], [ %indvars.iv.next1036, %bb.ct ] ; 4 uses
  %.0461894 = phi i32 [ %i.xw, %.preheader854 ], [ %i.aaq, %bb.ct ] ; 5 uses
  %i.zd = getelementptr inbounds nuw [56 x i8], ptr %i.as, i64 %indvars.iv1035 ; 3 uses
  %i.ze = getelementptr inbounds nuw i8, ptr %i.zd, i64 48
  %i.zf = load i8, ptr %i.ze, align 8, !tbaa !112, !range !27, !noundef !28
  %i.zg = trunc nuw i8 %i.zf to i1
  br i1 %i.zg, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %bb.cm
  %i.zh = load ptr, ptr %i.yp, align 8, !tbaa !127 ; 2 uses
  %i.zi = getelementptr inbounds nuw [4 x i8], ptr %i.zh, i64 %indvars.iv1035
  store i32 %.0461894, ptr %i.zi, align 4, !tbaa !51
  %i.zj = zext i32 %.0461894 to i64
  %i.zk = getelementptr inbounds nuw [8 x i8], ptr %i.ye, i64 %i.zj
  %i.zl = load <4 x double>, ptr %i.zd, align 8, !tbaa !40
  %i.zm = fmul <4 x double> %i.zl, splat (double 4.000000e+00)
  %i.zn = call <4 x double> @llvm.round.v4f64(<4 x double> %i.zm)
  %i.zo = fptosi <4 x double> %i.zn to <4 x i16>
  store <4 x i16> %i.zo, ptr %i.zk, align 2, !tbaa !119
  %i.zp = add i32 %.0461894, 1
  br label %bb.cp

bb.co:                                            ; preds = %bb.cm
  %i.zq = add i32 %.0461894, -1
  %i.zr = load ptr, ptr %i.yp, align 8, !tbaa !127 ; 2 uses
  %i.zs = getelementptr inbounds nuw [4 x i8], ptr %i.zr, i64 %indvars.iv1035
  store i32 %i.zq, ptr %i.zs, align 4, !tbaa !51
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cn
  %i.zt = phi ptr [ %i.zh, %bb.cn ], [ %i.zr, %bb.co ] ; 12 uses
  %.1462 = phi i32 [ %i.zp, %bb.cn ], [ %.0461894, %bb.co ] ; 2 uses
  %indvars.iv.next1036 = add nuw nsw i64 %indvars.iv1035, 1 ; 5 uses
  %i.zu = icmp samesign ult i64 %indvars.iv.next1036, %wide.trip.count
  br i1 %i.zu, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %bb.cp
  %i.zv = getelementptr inbounds nuw [56 x i8], ptr %i.as, i64 %indvars.iv.next1036
  %i.zw = getelementptr inbounds nuw i8, ptr %i.zv, i64 48
  %i.zx = load i8, ptr %i.zw, align 8, !tbaa !112, !range !27, !noundef !28
  %i.zy = trunc nuw i8 %i.zx to i1
  %i.zz = xor i1 %i.zy, true
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %bb.cp
  %i.aaa = phi i1 [ false, %bb.cp ], [ %i.zz, %bb.cq ]
end_hunk_1
