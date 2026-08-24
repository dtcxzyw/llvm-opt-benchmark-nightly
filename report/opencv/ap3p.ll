Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/ap3p?download=true
inline.NumInlined: 292
inline.NumDeleted: 93
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN2cv4ap3p14extract_pointsINS_7Point3_IdEENS_6Point_IfEEEEvRKNS_3MatES8_RSt6vectorIdSaIdEE:bb.a
bb.ae:                                            ; preds = %bb.ac
  %i.ey = load i32, ptr %i.ae, align 4, !tbaa !50 ; 4 uses
  %i.ez = icmp eq i32 %i.ey, 1
  br i1 %i.ez, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.fa = load i64, ptr %i.ag, align 8, !tbaa !51
  %i.fb = mul i64 %i.fa, %indvars.iv
  %i.fc = getelementptr inbounds nuw i8, ptr %i.dr, i64 %i.fb
  br label %_ZNK2cv3Mat2atINS_7Point3_IdEEEERKT_i.exit50

bb.ag:                                            ; preds = %bb.ae
  %i.fd = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %i.fe = sdiv i32 %i.fd, %i.ey                   ; 2 uses
  %i.ff = mul nsw i32 %i.fe, %i.ey                ; 0 uses
  %.recomposed76 = srem i32 %i.fd, %i.ey
  %i.fg = load i64, ptr %i.ag, align 8, !tbaa !51
  %i.fh = sext i32 %i.fe to i64
  %i.fi = mul i64 %i.fg, %i.fh
  %i.fj = getelementptr inbounds nuw i8, ptr %i.dr, i64 %i.fi
  %i.fk = sext i32 %.recomposed76 to i64
  %i.fl = getelementptr inbounds [24 x i8], ptr %i.fj, i64 %i.fk
  br label %_ZNK2cv3Mat2atINS_7Point3_IdEEEERKT_i.exit50

_ZNK2cv3Mat2atINS_7Point3_IdEEEERKT_i.exit50:     ; preds = %bb.ab, %bb.ad, %bb.af, %bb.ag
  %.0.i49 = phi ptr [ %i.em, %bb.ab ], [ %i.ex, %bb.ad ], [ %i.fc, %bb.af ], [ %i.fl, %bb.ag ]
  %i.fm = getelementptr inbounds nuw i8, ptr %.0.i49, i64 16
  %i.fn = load double, ptr %i.fm, align 8, !tbaa !70
  %i.fo = getelementptr inbounds nuw i8, ptr %i.br, i64 32
  store double %i.fn, ptr %i.fo, align 8, !tbaa !8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader56, label %bb.e, !llvm.loop !77

.preheader:                                       ; preds = %.preheader, %.preheader.lr.ph.new
  %indvar = phi i32 [ 0, %.preheader.lr.ph.new ], [ %indvar.next.3, %.preheader ] ; 5 uses
  %niter = phi i32 [ 0, %.preheader.lr.ph.new ], [ %niter.next.3, %.preheader ]
  %i.fp = add i32 %.sroa.speculated, %indvar
  %i.fq = mul i32 %i.fp, 5
  %i.fr = sext i32 %i.fq to i64
  %i.fs = shl nsw i64 %i.fr, 3
  %scevgep = getelementptr nuw i8, ptr %i.ai, i64 %i.fs
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %scevgep, i8 0, i64 40, i1 false), !tbaa !8
  %indvar.next = or disjoint i32 %indvar, 1
  %i.ft = add i32 %.sroa.speculated, %indvar.next
  %i.fu = mul i32 %i.ft, 5
  %i.fv = sext i32 %i.fu to i64
  %i.fw = shl nsw i64 %i.fv, 3
  %scevgep.1 = getelementptr nuw i8, ptr %i.ai, i64 %i.fw
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %scevgep.1, i8 0, i64 40, i1 false), !tbaa !8
  %indvar.next.1 = or disjoint i32 %indvar, 2
  %i.fx = add i32 %.sroa.speculated, %indvar.next.1
  %i.fy = mul i32 %i.fx, 5
  %i.fz = sext i32 %i.fy to i64
  %i.ga = shl nsw i64 %i.fz, 3
  %scevgep.2 = getelementptr nuw i8, ptr %i.ai, i64 %i.ga
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %scevgep.2, i8 0, i64 40, i1 false), !tbaa !8
  %indvar.next.2 = or disjoint i32 %indvar, 3
  %i.gb = add i32 %.sroa.speculated, %indvar.next.2
  %i.gc = mul i32 %i.gb, 5
  %i.gd = sext i32 %i.gc to i64
  %i.ge = shl nsw i64 %i.gd, 3
  %scevgep.3 = getelementptr nuw i8, ptr %i.ai, i64 %i.ge
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %scevgep.3, i8 0, i64 40, i1 false), !tbaa !8
  %indvar.next.3 = add nuw i32 %indvar, 4         ; 2 uses
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.preheader, !llvm.loop !78

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.preheader
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.preheader.epil.preheader

.preheader.epil.preheader:                        ; preds = %._crit_edge.loopexit.unr-lcssa, %.preheader.lr.ph
  %indvar.epil.init = phi i32 [ 0, %.preheader.lr.ph ], [ %indvar.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod72 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod72)
  br label %.preheader.epil

.preheader.epil:                                  ; preds = %.preheader.epil, %.preheader.epil.preheader
  %indvar.epil = phi i32 [ %indvar.epil.init, %.preheader.epil.preheader ], [ %indvar.next.epil, %.preheader.epil ] ; 2 uses
  %epil.iter = phi i32 [ 0, %.preheader.epil.preheader ], [ %epil.iter.next, %.preheader.epil ]
  %i.gf = add i32 %.sroa.speculated, %indvar.epil
  %i.gg = mul i32 %i.gf, 5
  %i.gh = sext i32 %i.gg to i64
  %i.gi = shl nsw i64 %i.gh, 3
  %scevgep.epil = getelementptr nuw i8, ptr %i.ai, i64 %i.gi
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %scevgep.epil, i8 0, i64 40, i1 false), !tbaa !8
  %indvar.next.epil = add nuw i32 %indvar.epil, 1
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.preheader.epil, !llvm.loop !79

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.preheader.epil, %.preheader56
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN2cv4ap3p5solveEPA3_dPddddddddddddddddddddd(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, double noundef %3, double noundef %4, double noundef %5, double noundef %6, double noundef %7, double noundef %8, double noundef %9, double noundef %10, double noundef %11, double noundef %12, double noundef %13, double noundef %14, double noundef %15, double noundef %16, double noundef %17, double noundef %18, double noundef %19, double noundef %20, double noundef %21, double noundef %22) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = alloca [3 x [4 x double]], align 16      ; 12 uses
  %i.b = alloca [3 x [4 x double]], align 16      ; 15 uses
  %i.c = alloca [4 x [3 x [3 x double]]], align 16 ; 7 uses
  %i.d = alloca [4 x [3 x double]], align 16      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(288) %i.c, i8 0, i64 288, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.d, i8 0, i64 96, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.g = load <2 x double>, ptr %i.e, align 8, !tbaa !8 ; 5 uses
  %i.h = load <2 x double>, ptr %i.f, align 8, !tbaa !8
  %i.i = fneg <2 x double> %i.h                   ; 5 uses
  %i.j = insertelement <2 x double> poison, double %13, i64 0
  %i.k = insertelement <2 x double> %i.j, double %14, i64 1
  %i.l = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.g, <2 x double> %i.k, <2 x double> %i.i) ; 2 uses
  %i.m = extractelement <2 x double> %i.l, i64 1  ; 3 uses
  %i.n = fmul double %i.m, %i.m
  %i.o = extractelement <2 x double> %i.l, i64 0  ; 3 uses
  %i.p = tail call double @llvm.fmuladd.f64(double %i.o, double %i.o, double %i.n)
  %i.q = fadd double %i.p, 1.000000e+00
  %sqrt.i = tail call double @llvm.sqrt.f64(double %i.q)
  %i.r = fdiv double 1.000000e+00, %sqrt.i        ; 3 uses
  %i.s = fmul double %i.o, %i.r
  %i.t = fmul double %i.m, %i.r
  %i.u = extractelement <2 x double> %i.g, i64 0
  %i.v = extractelement <2 x double> %i.i, i64 0
  %i.w = tail call double @llvm.fmuladd.f64(double %i.u, double %18, double %i.v)
  %i.x = extractelement <2 x double> %i.g, i64 1
  %i.y = extractelement <2 x double> %i.i, i64 1
  %i.z = tail call double @llvm.fmuladd.f64(double %i.x, double %19, double %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.aa = shufflevector <2 x double> %i.g, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ab = insertelement <2 x double> poison, double %3, i64 0
  %i.ac = insertelement <2 x double> %i.ab, double %8, i64 1
  %i.ad = shufflevector <2 x double> %i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ae = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aa, <2 x double> %i.ac, <2 x double> %i.ad) ; 3 uses
  %i.af = shufflevector <2 x double> %i.g, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ag = insertelement <2 x double> poison, double %4, i64 0
  %i.ah = insertelement <2 x double> %i.ag, double %9, i64 1
  %i.ai = shufflevector <2 x double> %i.i, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.aj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.af, <2 x double> %i.ah, <2 x double> %i.ai) ; 3 uses
  %i.ak = fmul <2 x double> %i.aj, %i.aj
  %i.al = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ae, <2 x double> %i.ae, <2 x double> %i.ak)
  %i.am = fadd <2 x double> %i.al, splat (double 1.000000e+00)
  %i.an = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.am)
  %i.ao = fdiv <2 x double> splat (double 1.000000e+00), %i.an ; 3 uses
  %i.ap = fmul <2 x double> %i.ae, %i.ao
  store <2 x double> %i.ap, ptr %i.a, align 16, !tbaa !8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store double %i.s, ptr %i.aq, align 16, !tbaa !8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store double %i.w, ptr %i.ar, align 8, !tbaa !8
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.at = fmul <2 x double> %i.aj, %i.ao
  store <2 x double> %i.at, ptr %i.as, align 16, !tbaa !8
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store double %i.t, ptr %i.au, align 16, !tbaa !8
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store double %i.z, ptr %i.av, align 8, !tbaa !8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store <2 x double> %i.ao, ptr %i.aw, align 16, !tbaa !8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store double %i.r, ptr %i.ax, align 16, !tbaa !8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store double 1.000000e+00, ptr %i.ay, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  store double %5, ptr %i.b, align 16, !tbaa !8
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store double %10, ptr %i.az, align 8, !tbaa !8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store double %15, ptr %i.ba, align 16, !tbaa !8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store double %20, ptr %i.bb, align 8, !tbaa !8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store double %6, ptr %i.bc, align 16, !tbaa !8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store double %11, ptr %i.bd, align 8, !tbaa !8
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store double %16, ptr %i.be, align 16, !tbaa !8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store double %21, ptr %i.bf, align 8, !tbaa !8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store double %7, ptr %i.bg, align 16, !tbaa !8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store double %12, ptr %i.bh, align 8, !tbaa !8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store double %17, ptr %i.bi, align 16, !tbaa !8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  store double %22, ptr %i.bj, align 8, !tbaa !8
  %i.bk = call noundef i32 @_ZN2cv4ap3p12computePosesEPA4_KdS3_PA3_A3_dPS4_b(ptr nonnull readonly align 8 poison, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, i1 noundef zeroext true)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %i.bl = icmp ne i32 %i.bk, 0                    ; 2 uses
  br i1 %i.bl, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 16 dereferenceable(24) %i.c, i64 24, i1 false), !tbaa !8
  %i.bm = load double, ptr %i.d, align 16, !tbaa !8
  store double %i.bm, ptr %2, align 8, !tbaa !8
  %i.bn = getelementptr nuw i8, ptr %1, i64 24
  %i.bo = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bn, ptr noundef nonnull align 8 dereferenceable(24) %i.bo, i64 24, i1 false), !tbaa !8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !8
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 8
  store double %i.bq, ptr %i.br, align 8, !tbaa !8
  %i.bs = getelementptr nuw i8, ptr %1, i64 48
  %i.bt = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bs, ptr noundef nonnull align 16 dereferenceable(24) %i.bt, i64 24, i1 false), !tbaa !8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.bv = load double, ptr %i.bu, align 16, !tbaa !8
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 16
  store double %i.bv, ptr %i.bw, align 8, !tbaa !8
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader.preheader, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  ret i1 %i.bl
}

declare void @_ZN2cv3MatC1EiiiPvm(ptr noundef nonnull align 8 dereferenceable(208), i32 noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef) unnamed_addr #6

declare void @_ZNK2cv3Mat6copyToERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208)) unnamed_addr #9

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv5utils5trace7details6RegionD2Ev(ptr noundef nonnull align 8 dead_on_return(12) dereferenceable(12) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !46
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN2cv5utils5trace7details6Region7destroyEv(ptr noundef nonnull align 8 dereferenceable(12) %0)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void

bb.d:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #19
  unreachable
}

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_ZN2cv4ap3p5solveERSt6vectorINS_3MatESaIS2_EES5_RKS2_S7_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(208) %3, ptr noundef nonnull align 8 dereferenceable(208) %4) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [3 x [4 x double]], align 16      ; 12 uses
  %i.b = alloca [3 x [4 x double]], align 16      ; 15 uses
  %5 = alloca %"class.cv::utils::trace::details::Region", align 8 ; 7 uses
  %i.c = alloca [4 x [3 x [3 x double]]], align 16 ; 6 uses
  %i.d = alloca [4 x [3 x double]], align 16      ; 6 uses
  %6 = alloca %"class.std::vector", align 8       ; 13 uses
  %7 = alloca %"class.cv::Mat", align 8           ; 9 uses
  %8 = alloca %"class.cv::Mat", align 8           ; 9 uses
  %9 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %10 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %11 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %12 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  call void @_ZN2cv5utils5trace7details6RegionC1ERKNS3_21LocationStaticStorageE(ptr noundef nonnull align 8 dereferenceable(12) %5, ptr noundef nonnull align 8 dereferenceable(32) @_ZZN2cv4ap3p5solveERSt6vectorINS_3MatESaIS2_EES5_RKS2_S7_E25__cv_trace_location_fn301)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(288) %i.c, i8 0, i64 288, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.d, i8 0, i64 96, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.e = load i32, ptr %3, align 8, !tbaa !10
  %i.f = and i32 %i.e, 31                         ; 2 uses
  %i.g = load i32, ptr %4, align 8, !tbaa !10
  %i.h = and i32 %i.g, 31
  %i.i = icmp eq i32 %i.f, %i.h
  %i.j = icmp eq i32 %i.f, 5                      ; 2 uses
  br i1 %i.i, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  br i1 %i.j, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN2cv4ap3p14extract_pointsINS_7Point3_IfEENS_6Point_IfEEEEvRKNS_3MatES8_RSt6vectorIdSaIdEE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(208) %3, ptr noundef nonnull align 8 dereferenceable(208) %4, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %bb.i unwind label %bb.d

bb.d:                                             ; preds = %bb.h, %bb.g, %bb.e, %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.e:                                             ; preds = %bb.b
  invoke void @_ZN2cv4ap3p14extract_pointsINS_7Point3_IdEENS_6Point_IdEEEEvRKNS_3MatES8_RSt6vectorIdSaIdEE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(208) %3, ptr noundef nonnull align 8 dereferenceable(208) %4, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %bb.i unwind label %bb.d

bb.f:                                             ; preds = %bb.a
  br i1 %i.j, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN2cv4ap3p14extract_pointsINS_7Point3_IfEENS_6Point_IdEEEEvRKNS_3MatES8_RSt6vectorIdSaIdEE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(208) %3, ptr noundef nonnull align 8 dereferenceable(208) %4, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %bb.i unwind label %bb.d

bb.h:                                             ; preds = %bb.f
  invoke void @_ZN2cv4ap3p14extract_pointsINS_7Point3_IdEENS_6Point_IfEEEEvRKNS_3MatES8_RSt6vectorIdSaIdEE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(208) %3, ptr noundef nonnull align 8 dereferenceable(208) %4, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %bb.i unwind label %bb.d

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.c, %bb.e
  %i.l = invoke noundef i32 @_ZNK2cv3Mat11checkVectorEiib(ptr noundef nonnull align 8 dereferenceable(208) %3, i32 noundef 3, i32 noundef 5, i1 noundef zeroext true)
          to label %bb.j unwind label %bb.o

bb.j:                                             ; preds = %bb.i
  %i.m = invoke noundef i32 @_ZNK2cv3Mat11checkVectorEiib(ptr noundef nonnull align 8 dereferenceable(208) %3, i32 noundef 3, i32 noundef 6, i1 noundef zeroext true)
          to label %bb.k unwind label %bb.p

bb.k:                                             ; preds = %bb.j
  %.sroa.speculated = call i32 @llvm.smax.i32(i32 %i.l, i32 %i.m)
  %i.n = icmp eq i32 %.sroa.speculated, 4
  %i.o = load ptr, ptr %6, align 8, !tbaa !38     ; 17 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load double, ptr %i.p, align 8, !tbaa !8
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.s = load double, ptr %i.r, align 8, !tbaa !8
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.u = load double, ptr %i.t, align 8, !tbaa !8
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  %i.x = load double, ptr %i.w, align 8, !tbaa !8
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 64
  %i.z = load double, ptr %i.y, align 8, !tbaa !8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.o, i64 72
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.o, i64 80
  %i.ad = getelementptr inbounds nuw i8, ptr %i.o, i64 96
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !8
  %i.af = getelementptr inbounds nuw i8, ptr %i.o, i64 104
  %i.ag = load double, ptr %i.af, align 8, !tbaa !8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.o, i64 112
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.o, i64 120
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !8
  %i.al = getelementptr inbounds nuw i8, ptr %i.o, i64 128
  %i.am = load double, ptr %i.al, align 8, !tbaa !8
  %i.an = getelementptr inbounds nuw i8, ptr %i.o, i64 136
  %i.ao = load double, ptr %i.an, align 8, !tbaa !8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.o, i64 144
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.o, i64 152
  %i.as = load double, ptr %i.ar, align 8, !tbaa !8
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.av = load <2 x double>, ptr %i.ac, align 8, !tbaa !8
  %i.aw = load <2 x double>, ptr %i.at, align 8, !tbaa !8 ; 5 uses
  %i.ax = load <2 x double>, ptr %i.au, align 8, !tbaa !8
  %i.ay = fneg <2 x double> %i.ax                 ; 5 uses
  %i.az = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aw, <2 x double> %i.av, <2 x double> %i.ay) ; 2 uses
  %i.ba = extractelement <2 x double> %i.az, i64 1 ; 3 uses
  %i.bb = fmul double %i.ba, %i.ba
  %i.bc = extractelement <2 x double> %i.az, i64 0 ; 3 uses
  %i.bd = call double @llvm.fmuladd.f64(double %i.bc, double %i.bc, double %i.bb)
  %i.be = fadd double %i.bd, 1.000000e+00
  %sqrt.i = call double @llvm.sqrt.f64(double %i.be)
  %i.bf = fdiv double 1.000000e+00, %sqrt.i       ; 3 uses
  %i.bg = fmul double %i.bc, %i.bf
  %i.bh = fmul double %i.ba, %i.bf
  %i.bi = extractelement <2 x double> %i.aw, i64 0
  %i.bj = extractelement <2 x double> %i.ay, i64 0
  %i.bk = call double @llvm.fmuladd.f64(double %i.bi, double %i.ak, double %i.bj)
  %i.bl = extractelement <2 x double> %i.aw, i64 1
  %i.bm = extractelement <2 x double> %i.ay, i64 1
  %i.bn = call double @llvm.fmuladd.f64(double %i.bl, double %i.am, double %i.bm)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.bo = load <2 x double>, ptr %i.o, align 8, !tbaa !8 ; 2 uses
  %i.bp = load <2 x double>, ptr %i.v, align 8, !tbaa !8 ; 2 uses
  %i.bq = shufflevector <2 x double> %i.aw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.br = shufflevector <2 x double> %i.bo, <2 x double> %i.bp, <2 x i32> <i32 0, i32 2>
  %i.bs = shufflevector <2 x double> %i.ay, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bt = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bq, <2 x double> %i.br, <2 x double> %i.bs) ; 3 uses
  %i.bu = shufflevector <2 x double> %i.aw, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.bv = shufflevector <2 x double> %i.bo, <2 x double> %i.bp, <2 x i32> <i32 1, i32 3>
  %i.bw = shufflevector <2 x double> %i.ay, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.bx = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bu, <2 x double> %i.bv, <2 x double> %i.bw) ; 3 uses
  %i.by = fmul <2 x double> %i.bx, %i.bx
  %i.bz = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bt, <2 x double> %i.bt, <2 x double> %i.by)
  %i.ca = fadd <2 x double> %i.bz, splat (double 1.000000e+00)
  %i.cb = call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.ca)
  %i.cc = fdiv <2 x double> splat (double 1.000000e+00), %i.cb ; 3 uses
  %i.cd = fmul <2 x double> %i.bt, %i.cc
  store <2 x double> %i.cd, ptr %i.a, align 16, !tbaa !8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store double %i.bg, ptr %i.ce, align 16, !tbaa !8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store double %i.bk, ptr %i.cf, align 8, !tbaa !8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.ch = fmul <2 x double> %i.bx, %i.cc
  store <2 x double> %i.ch, ptr %i.cg, align 16, !tbaa !8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store double %i.bh, ptr %i.ci, align 16, !tbaa !8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store double %i.bn, ptr %i.cj, align 8, !tbaa !8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store <2 x double> %i.cc, ptr %i.ck, align 16, !tbaa !8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store double %i.bf, ptr %i.cl, align 16, !tbaa !8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store double 1.000000e+00, ptr %i.cm, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
end_hunk_0
