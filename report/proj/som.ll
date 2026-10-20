Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proj/original/som?download=true
inline.NumInlined: 4
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_ZL9som_setupP8PJconsts:.preheader
  %i.qc = fadd <2 x double> %i.pz, %i.qb
  %i.qd = fdiv <2 x double> %i.qc, <double 6.000000e+01, double 3.000000e+01> ; 2 uses
  %i.qe = shufflevector <2 x double> %i.py, <2 x double> %i.qd, <2 x i32> <i32 1, i32 2>
  store <2 x double> %i.qe, ptr %i.b, align 8, !tbaa !60
  %i.qf = shufflevector <2 x double> %i.go, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.qg = insertelement <2 x double> poison, double %i.hd, i64 0
  %i.qh = shufflevector <2 x double> %i.qg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.qi = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.qf, <2 x double> <double f0x3FEF9B24942FE45C, double f0x3FEC83201D3D2C6D>, <2 x double> %i.qh)
  %i.qj = shufflevector <2 x double> %i.ib, <2 x double> poison, <2 x i32> zeroinitializer
  %i.qk = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.qj, <2 x double> <double f0x3FEC83201D3D2C6D, double f0x3FC4060B67A85377>, <2 x double> %i.qi)
  %i.ql = shufflevector <2 x double> %i.iz, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.qm = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ql, <2 x double> <double f0x3FE6A09E667F3BCD, double f0xBFE6A09E667F3BCC>, <2 x double> %i.qk)
  %i.qn = shufflevector <2 x double> %i.jx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.qo = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.qn, <2 x double> <double f0x3FDD0E2E2B44DE01, double f0xBFEF9B24942FE45C>, <2 x double> %i.qm)
  %i.qp = shufflevector <2 x double> %i.lr, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.qq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.qp, <2 x double> <double f0x3FC4060B67A85377, double f0xBFDD0E2E2B44DE03>, <2 x double> %i.qo)
  %i.qr = shufflevector <2 x double> %i.mf, <2 x double> poison, <2 x i32> zeroinitializer
  %i.qs = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.qr, <2 x double> <double f0x3FEE6F0E134454FF, double f0x3FE2CF2304755A5E>, <2 x double> %i.qq)
  %i.qt = shufflevector <2 x double> %i.nd, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.qu = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.qt, <2 x double> <double f0x3FE9E3779B97F4A8, double f0xBFD3C6EF372FE94E>, <2 x double> %i.qs)
  %i.qv = shufflevector <2 x double> %i.nx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.qw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.qv, <2 x double> <double f0x3FE2CF2304755A5E, double f0xBFEE6F0E134454FF>, <2 x double> %i.qu)
  %i.qx = shufflevector <2 x double> %i.po, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.qy = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.qx, <2 x double> <double f0x3FD3C6EF372FE950, double f0xBFE9E3779B97F4A9>, <2 x double> %i.qw)
  %i.qz = shufflevector <2 x double> %i.py, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ra = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.qz, <2 x double> <double f0x3C91A62633145C07, double f0xBCAA79394C9E8A0A>, <2 x double> %i.qy)
  %i.rb = fdiv <2 x double> %i.ra, <double 1.500000e+01, double 4.500000e+01> ; 2 uses
  %i.rc = shufflevector <2 x double> %i.qd, <2 x double> %i.rb, <2 x i32> <i32 1, i32 2>
  store <2 x double> %i.rc, ptr %i.ah, align 8, !tbaa !60
  %i.rd = shufflevector <2 x double> %i.rb, <2 x double> %i.as, <2 x i32> <i32 1, i32 2>
  store <2 x double> %i.rd, ptr %i.ag, align 8, !tbaa !60
  %i.re = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr @_ZL13som_e_inverse5PJ_XYP8PJconsts, ptr %i.re, align 8, !tbaa !66
  %i.rf = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr @_ZL13som_e_forward5PJ_LPP8PJconsts, ptr %i.rf, align 8, !tbaa !67
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @pj_misrsom(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef ptr @_Z36pj_projection_specific_setup_misrsomP8PJconsts(ptr noundef nonnull %0)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.b = tail call noundef ptr @_Z6pj_newv()      ; 7 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @.str.7, ptr %i.d, align 8, !tbaa !37
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr @_ZL11des_misrsom, ptr %i.e, align 8, !tbaa !38
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 360
  store i32 1, ptr %i.f, align 8, !tbaa !39
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 380
  store i32 4, ptr %i.g, align 4, !tbaa !40
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 384
  store i32 1, ptr %i.h, align 8, !tbaa !41
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.0 = phi ptr [ %i.a, %bb.b ], [ %i.b, %bb.d ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_Z36pj_projection_specific_setup_misrsomP8PJconsts(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(128) ptr @calloc(i64 noundef 1, i64 noundef 128) #7 ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef ptr @_Z21pj_default_destructorP8PJconstsi(ptr noundef %0, i32 noundef 4096)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.a, ptr %i.d, align 8, !tbaa !42
  %i.e = load ptr, ptr %0, align 8, !tbaa !43
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !44
  %i.h = tail call i64 @_Z8pj_paramP6pj_ctxP8ARG_listPKc(ptr noundef %i.e, ptr noundef %i.g, ptr noundef nonnull @.str.8)
  %.sroa.0.0.extract.trunc = trunc i64 %i.h to i32 ; 2 uses
  %i.i = add i32 %.sroa.0.0.extract.trunc, -234
  %or.cond = icmp ult i32 %i.i, -233
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ptr, ...) @_Z14proj_log_errorPK8PJconstsPKcz(ptr noundef nonnull %0, ptr noundef nonnull @.str.9)
  %i.j = tail call noundef ptr @_Z21pj_default_destructorP8PJconstsi(ptr noundef nonnull %0, i32 noundef 1027)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.k = uitofp nneg i32 %.sroa.0.0.extract.trunc to double
  %i.l = tail call double @llvm.fmuladd.f64(double %i.k, double f0xBF9B9D1888886F13, double f0x40020DF19833D0B2)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 440
  store double %i.l, ptr %i.m, align 8, !tbaa !45
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  store double f0x3FFB739C6655343E, ptr %i.n, align 8, !tbaa !47
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store double f0x3FB194237FA89E61, ptr %i.o, align 8, !tbaa !48
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  store double 0.000000e+00, ptr %i.p, align 8, !tbaa !49
  %i.q = tail call fastcc noundef ptr @_ZL9som_setupP8PJconsts(ptr noundef nonnull %0) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
  %.0 = phi ptr [ %i.c, %bb.b ], [ %i.j, %bb.d ], [ %0, %bb.e ]
  ret ptr %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #5

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @pj_lsat(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef ptr @_Z33pj_projection_specific_setup_lsatP8PJconsts(ptr noundef nonnull %0)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.b = tail call noundef ptr @_Z6pj_newv()      ; 7 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @.str.10, ptr %i.d, align 8, !tbaa !37
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr @_ZL8des_lsat, ptr %i.e, align 8, !tbaa !38
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 360
  store i32 1, ptr %i.f, align 8, !tbaa !39
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 380
  store i32 4, ptr %i.g, align 4, !tbaa !40
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 384
  store i32 1, ptr %i.h, align 8, !tbaa !41
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.0 = phi ptr [ %i.a, %bb.b ], [ %i.b, %bb.d ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_Z33pj_projection_specific_setup_lsatP8PJconsts(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(128) ptr @calloc(i64 noundef 1, i64 noundef 128) #7 ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef ptr @_Z21pj_default_destructorP8PJconstsi(ptr noundef %0, i32 noundef 4096)
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.a, ptr %i.d, align 8, !tbaa !42
  %i.e = load ptr, ptr %0, align 8, !tbaa !43
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !44
  %i.h = tail call i64 @_Z8pj_paramP6pj_ctxP8ARG_listPKc(ptr noundef %i.e, ptr noundef %i.g, ptr noundef nonnull @.str.11)
  %.sroa.03.0.extract.trunc = trunc i64 %i.h to i32 ; 2 uses
  %i.i = add i32 %.sroa.03.0.extract.trunc, -6
  %or.cond = icmp ult i32 %i.i, -5
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ptr, ...) @_Z14proj_log_errorPK8PJconstsPKcz(ptr noundef nonnull %0, ptr noundef nonnull @.str.12)
  %i.j = tail call noundef ptr @_Z21pj_default_destructorP8PJconstsi(ptr noundef nonnull %0, i32 noundef 1027)
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.k = load ptr, ptr %0, align 8, !tbaa !43
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !44
  %i.m = tail call i64 @_Z8pj_paramP6pj_ctxP8ARG_listPKc(ptr noundef %i.k, ptr noundef %i.l, ptr noundef nonnull @.str.8)
  %.sroa.0.0.extract.trunc = trunc i64 %i.m to i32 ; 3 uses
  %i.n = icmp samesign ult i32 %.sroa.03.0.extract.trunc, 4 ; 4 uses
  %i.o = select i1 %i.n, i32 251, i32 233         ; 2 uses
  %i.p = icmp slt i32 %.sroa.0.0.extract.trunc, 1
  %i.q = icmp slt i32 %i.o, %.sroa.0.0.extract.trunc
  %or.cond35 = or i1 %i.p, %i.q
  br i1 %or.cond35, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ptr, ...) @_Z14proj_log_errorPK8PJconstsPKcz(ptr noundef nonnull %0, ptr noundef nonnull @.str.13, i32 noundef %i.o)
  %i.r = tail call noundef ptr @_Z21pj_default_destructorP8PJconstsi(ptr noundef nonnull %0, i32 noundef 1027)
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.s = uitofp nneg i32 %.sroa.0.0.extract.trunc to double
  %1 = insertelement <2 x double> poison, double %i.s, i64 0
  %2 = shufflevector <2 x double> %1, <2 x double> poison, <2 x i32> zeroinitializer
  %3 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %2, <2 x double> <double f0xBF99A22612A153BB, double f0xBF9B9D1888886F13>, <2 x double> <double f0x4001FE5F9D39DB0D, double f0x40020DBE59F8A739>) ; 2 uses
  %4 = extractelement <2 x double> %3, i64 0
  %5 = extractelement <2 x double> %3, i64 1
  %.sink37 = select i1 %i.n, double %4, double %5
  %.sink = select i1 %i.n, double f0x3FFBABF4F6AFB043, double f0x3FFB6C3061105C70
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 440
  store double %.sink37, ptr %i.t, align 8, !tbaa !45
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  store double %.sink, ptr %i.v, align 8, !tbaa !47
  %i.w = select i1 %i.n, double f0x3FB25BCAF6E84F77, double f0x3FB1945380A2437E
  store double %i.w, ptr %i.u, align 8, !tbaa !48
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  store double f0x3FFA256A9FEC1623, ptr %i.x, align 8, !tbaa !49
  %i.y = tail call fastcc noundef ptr @_ZL9som_setupP8PJconsts(ptr noundef nonnull %0) ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.d, %bb.b
  %.1 = phi ptr [ %i.c, %bb.b ], [ %i.j, %bb.d ], [ %i.r, %bb.f ], [ %0, %bb.g ]
  ret ptr %.1
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sin(double noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @cos(double noundef) local_unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #5

; Function Attrs: mustprogress uwtable
define internal { double, double } @_ZL13som_e_inverse5PJ_XYP8PJconsts(double %0, double %1, ptr noundef %2) #0 {
bb.a:
  %3 = alloca %union.PJ_COORD, align 8            ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !42   ; 12 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load double, ptr %i.c, align 8, !tbaa !61 ; 2 uses
  %i.e = fdiv double %0, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.g = load double, ptr %i.f, align 8, !tbaa !48 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.i = load double, ptr %i.h, align 8, !tbaa !50 ; 4 uses
  %i.j = fmul double %i.g, %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.l = load double, ptr %i.k, align 8, !tbaa !57
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.n = load double, ptr %i.m, align 8, !tbaa !58
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.p = load double, ptr %i.o, align 8, !tbaa !62 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.r = load double, ptr %i.q, align 8, !tbaa !59 ; 4 uses
  %i.s = load <2 x double>, ptr %i.b, align 8, !tbaa !60
  %i.t = fneg <2 x double> %i.s                   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.v = load double, ptr %i.u, align 8, !tbaa !63 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.x = load double, ptr %i.w, align 8, !tbaa !64 ; 2 uses
  %i.y = insertelement <2 x double> poison, double %i.n, i64 0
  %i.z = insertelement <2 x double> %i.y, double %i.p, i64 1
  %i.aa = extractelement <2 x double> %i.t, i64 0
  %i.ab = extractelement <2 x double> %i.t, i64 1
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.091 = phi i32 [ 50, %bb.a ], [ %i.bj, %bb.b ]
  %.0 = phi double [ %i.e, %bb.a ], [ %i.bf, %bb.b ] ; 7 uses
  %i.ac = tail call double @sin(double noundef %.0) #8 ; 2 uses
  %i.ad = fmul double %i.ac, %i.ac                ; 2 uses
  %i.ae = tail call double @cos(double noundef %.0) #8
  %i.af = fmul double %i.j, %i.ae
  %i.ag = tail call double @llvm.fmuladd.f64(double %i.l, double %i.ad, double 1.000000e+00)
  %i.ah = insertelement <2 x double> poison, double %i.ad, i64 0
  %i.ai = shufflevector <2 x double> %i.ah, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.z, <2 x double> %i.ai, <2 x double> splat (double 1.000000e+00)) ; 2 uses
  %shift = shufflevector <2 x double> %i.aj, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x double> %i.aj, %shift
  %i.ak = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.al = fdiv double %i.ag, %i.ak
  %i.am = tail call double @sqrt(double noundef %i.al) #8
  %i.an = fmul double %i.af, %i.am                ; 4 uses
  %i.ao = fmul double %1, %i.an
  %i.ap = fdiv double %i.ao, %i.r
  %i.aq = fadd double %0, %i.ap
  %i.ar = fmul double %.0, 2.000000e+00
  %i.as = tail call double @sin(double noundef %i.ar) #8
  %i.at = tail call double @llvm.fmuladd.f64(double %i.aa, double %i.as, double %i.aq)
  %i.au = fmul double %.0, 4.000000e+00
  %i.av = tail call double @sin(double noundef %i.au) #8
  %i.aw = tail call double @llvm.fmuladd.f64(double %i.ab, double %i.av, double %i.at)
  %i.ax = tail call double @sin(double noundef %.0) #8
  %i.ay = fmul double %.0, 3.000000e+00
  %i.az = tail call double @sin(double noundef %i.ay) #8
  %i.ba = fmul double %i.x, %i.az
  %i.bb = tail call double @llvm.fmuladd.f64(double %i.v, double %i.ax, double %i.ba)
  %i.bc = fneg double %i.an
  %i.bd = fdiv double %i.bc, %i.r
  %i.be = tail call double @llvm.fmuladd.f64(double %i.bd, double %i.bb, double %i.aw)
  %i.bf = fdiv double %i.be, %i.d                 ; 7 uses
  %i.bg = fsub double %i.bf, %.0
  %i.bh = tail call double @llvm.fabs.f64(double %i.bg)
  %i.bi = fcmp ult double %i.bh, f0x3E7AD7F29ABCAF48
  %i.bj = add nsw i32 %.091, -1                   ; 2 uses
  %.not = icmp eq i32 %i.bj, 0
  %or.cond = select i1 %i.bi, i1 true, i1 %.not
  br i1 %or.cond, label %.critedge, label %bb.b, !llvm.loop !68

.critedge:                                        ; preds = %bb.b
  %i.bk = tail call double @sin(double noundef %i.bf) #8 ; 3 uses
  %i.bl = fmul double %i.an, %i.an
  %i.bm = fdiv double %i.bl, %i.r
  %i.bn = fdiv double %i.bm, %i.r
  %i.bo = fadd double %i.bn, 1.000000e+00
  %i.bp = tail call double @sqrt(double noundef %i.bo) #8
  %i.bq = fneg double %i.v
  %i.br = tail call double @llvm.fmuladd.f64(double %i.bq, double %i.bk, double %1)
  %i.bs = fmul double %i.bf, 3.000000e+00
  %i.bt = tail call double @sin(double noundef %i.bs) #8
  %i.bu = fneg double %i.x
  %i.bv = tail call double @llvm.fmuladd.f64(double %i.bu, double %i.bt, double %i.br)
  %i.bw = fmul double %i.bp, %i.bv
  %i.bx = tail call double @exp(double noundef %i.bw) #8
  %i.by = tail call double @atan(double noundef %i.bx) #8
  %i.bz = fadd double %i.by, f0xBFE921FB54442D18
  %i.ca = fmul double %i.bz, 2.000000e+00
  %i.cb = tail call double @cos(double noundef %i.bf) #8
  %i.cc = tail call double @llvm.fabs.f64(double %i.cb)
  %i.cd = fcmp olt double %i.cc, f0x3E7AD7F29ABCAF48
  %i.ce = fadd double %i.bf, f0xBE7AD7F29ABCAF48
  %.1 = select i1 %i.cd, double %i.ce, double %i.bf ; 5 uses
  %i.cf = tail call double @sin(double noundef %i.ca) #8 ; 4 uses
  %i.cg = fmul double %i.cf, %i.cf                ; 4 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.ci = load double, ptr %i.ch, align 8, !tbaa !54 ; 2 uses
  %i.cj = fadd double %i.ci, 1.000000e+00
  %i.ck = fneg double %i.cg                       ; 2 uses
  %i.cl = tail call double @llvm.fmuladd.f64(double %i.ck, double %i.cj, double 1.000000e+00) ; 2 uses
  %i.cm = fcmp oeq double %i.cl, 0.000000e+00
  br i1 %i.cm, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.critedge
  %i.cn = tail call i32 @proj_errno_set(ptr noundef nonnull %2, i32 noundef 2050) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  call void @_Z16proj_coord_errorv(ptr dead_on_unwind nonnull writable sret(%union.PJ_COORD) align 8 %3)
  %.sroa.089.0.copyload = load double, ptr %3, align 8, !tbaa !60
  %.sroa.390.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.390.0.copyload = load double, ptr %.sroa.390.0..sroa_idx, align 8, !tbaa !60
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  br label %bb.g

bb.d:                                             ; preds = %.critedge
  %i.co = fmul double %i.bk, %i.bk
  %i.cp = getelementptr inbounds nuw i8, ptr %2, i64 264
  %i.cq = load double, ptr %i.cp, align 8, !tbaa !53
  %i.cr = tail call double @tan(double noundef %.1) #8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.ct = load double, ptr %i.cs, align 8, !tbaa !51 ; 2 uses
  %i.cu = fmul double %i.i, %i.cf
  %i.cv = insertelement <2 x double> poison, double %i.ck, i64 0
  %i.cw = insertelement <2 x double> %i.cv, double %i.p, i64 1
  %i.cx = insertelement <2 x double> poison, double %i.cq, i64 0
  %i.cy = insertelement <2 x double> %i.cx, double %i.co, i64 1
  %i.cz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cw, <2 x double> %i.cy, <2 x double> splat (double 1.000000e+00)) ; 2 uses
  %i.da = extractelement <2 x double> %i.cz, i64 0
  %i.db = fmul double %i.da, %i.cr
  %i.dc = fsub double 1.000000e+00, %i.cg
  %i.dd = fneg double %i.ci
  %i.de = fmul double %i.cg, %i.dd
  %i.df = extractelement <2 x double> %i.cz, i64 1
  %i.dg = tail call double @llvm.fmuladd.f64(double %i.df, double %i.dc, double %i.de)
  %i.dh = tail call double @sqrt(double noundef %i.dg) #8
  %i.di = tail call double @cos(double noundef %.1) #8
  %i.dj = fneg double %i.dh
  %i.dk = fmul double %i.cu, %i.dj
  %i.dl = fdiv double %i.dk, %i.di
  %i.dm = tail call double @llvm.fmuladd.f64(double %i.db, double %i.ct, double %i.dl)
  %i.dn = fdiv double %i.dm, %i.cl
  %i.do = tail call double @atan(double noundef %i.dn) #8 ; 2 uses
  %i.dp = fcmp oge double %i.do, 0.000000e+00
  %i.dq = select i1 %i.dp, double 1.000000e+00, double -1.000000e+00
  %i.dr = tail call double @cos(double noundef %.1) #8
  %i.ds = fcmp oge double %i.dr, 0.000000e+00
  %i.dt = select i1 %i.ds, double -0.000000e+00, double f0xC00921FB54442D18
  %i.du = tail call double @llvm.fmuladd.f64(double %i.dt, double %i.dq, double %i.do) ; 3 uses
  %i.dv = fneg double %i.g
  %i.dw = tail call double @llvm.fmuladd.f64(double %i.dv, double %.1, double %i.du) ; 2 uses
  %i.dx = tail call double @llvm.fabs.f64(double %i.i)
  %i.dy = fcmp olt double %i.dx, f0x3E7AD7F29ABCAF48
  br i1 %i.dy, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.dz = load ptr, ptr %2, align 8, !tbaa !43
  %i.ea = getelementptr inbounds nuw i8, ptr %2, i64 256
  %i.eb = load double, ptr %i.ea, align 8, !tbaa !55 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %2, i64 216
  %i.ed = load double, ptr %i.ec, align 8, !tbaa !52
  %i.ee = fmul double %i.cg, %i.ed
  %i.ef = tail call double @llvm.fmuladd.f64(double %i.eb, double %i.eb, double %i.ee)
  %i.eg = tail call double @sqrt(double noundef %i.ef) #8
  %i.eh = fdiv double %i.cf, %i.eg
  %i.ei = tail call noundef double @_Z5aasinP6pj_ctxd(ptr noundef %i.dz, double noundef %i.eh)
  br label %bb.g

end_hunk_0
