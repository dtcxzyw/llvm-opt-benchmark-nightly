Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proj/original/healpix?download=true
inline.NumInlined: 36
inline.NumDeleted: 12
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_Z37pj_projection_specific_setup_rhealpixP8PJconsts:bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !51
  %i.af = icmp eq ptr %i.ad, null
  br i1 %i.af, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.ag = load ptr, ptr %i.d, align 8, !tbaa !42  ; 2 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %_ZL26pj_healpix_data_destructorP8PJconstsi.exit47, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !51
  tail call void @free(ptr noundef %i.aj) #10
  br label %_ZL26pj_healpix_data_destructorP8PJconstsi.exit47

_ZL26pj_healpix_data_destructorP8PJconstsi.exit47: ; preds = %bb.k, %bb.l
  %i.ak = tail call noundef ptr @_Z21pj_default_destructorP8PJconstsi(ptr noundef nonnull %0, i32 noundef 4096)
  br label %bb.o

bb.m:                                             ; preds = %bb.j
  %i.al = tail call noundef double @_Z17pj_authalic_lat_qdPK8PJconsts(double noundef 1.000000e+00, ptr noundef nonnull %0) ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store double %i.al, ptr %i.am, align 8, !tbaa !52
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.ao = load double, ptr %i.an, align 8, !tbaa !53
  %i.ap = fmul double %i.al, 5.000000e-01
  %i.aq = tail call double @sqrt(double noundef %i.ap) #10
  %i.ar = fmul double %i.ao, %i.aq                ; 2 uses
  store double %i.ar, ptr %i.an, align 8, !tbaa !53
  %i.as = fdiv double 1.000000e+00, %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 184
  store double %i.as, ptr %i.at, align 8, !tbaa !58
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr @_ZL18e_rhealpix_forward5PJ_LPP8PJconsts, ptr %i.au, align 8, !tbaa !54
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr @_ZL18e_rhealpix_inverse5PJ_XYP8PJconsts, ptr %i.av, align 8, !tbaa !55
  br label %bb.o

bb.n:                                             ; preds = %bb.i
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr @_ZL18s_rhealpix_forward5PJ_LPP8PJconsts, ptr %i.aw, align 8, !tbaa !54
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr @_ZL18s_rhealpix_inverse5PJ_XYP8PJconsts, ptr %i.ax, align 8, !tbaa !55
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n, %_ZL26pj_healpix_data_destructorP8PJconstsi.exit47, %_ZL26pj_healpix_data_destructorP8PJconstsi.exit44, %_ZL26pj_healpix_data_destructorP8PJconstsi.exit, %bb.b
  %.0 = phi ptr [ %i.c, %bb.b ], [ %i.s, %_ZL26pj_healpix_data_destructorP8PJconstsi.exit ], [ %i.x, %_ZL26pj_healpix_data_destructorP8PJconstsi.exit44 ], [ %i.ak, %_ZL26pj_healpix_data_destructorP8PJconstsi.exit47 ], [ %0, %bb.n ], [ %0, %bb.m ]
  ret ptr %.0
}

declare void @_Z14proj_log_errorPK8PJconstsPKcz(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define internal { double, double } @_ZL18e_rhealpix_forward5PJ_LPP8PJconsts(double %0, double %1, ptr noundef %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !42   ; 4 uses
  %i.c = tail call double @sin(double noundef %1) #10
  %i.d = tail call double @cos(double noundef %1) #10
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !51
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.h = load double, ptr %i.g, align 8, !tbaa !52
  %i.i = tail call noundef double @_Z15pj_authalic_latdddPKdPK8PJconstsd(double noundef %1, double noundef %i.c, double noundef %i.d, ptr noundef %i.f, ptr noundef nonnull %2, double noundef %i.h) ; 4 uses
  %i.j = tail call double @llvm.fabs.f64(double %i.i)
  %i.k = fcmp ugt double %i.j, f0x3FE759EDD04F68DE
  %i.l = tail call double @sin(double noundef %i.i) #10 ; 2 uses
  br i1 %i.k, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = fmul double %i.l, f0x3FF2D97C7F3321D2
  br label %_ZL14healpix_sphere5PJ_LP.exit

bb.c:                                             ; preds = %bb.a
  %i.n = tail call double @llvm.fabs.f64(double %i.l)
  %i.o = fsub double 1.000000e+00, %i.n
  %i.p = fmul double %i.o, 3.000000e+00
  %i.q = tail call double @sqrt(double noundef %i.p) #10 ; 2 uses
  %i.r = fmul double %0, 2.000000e+00
  %i.s = fdiv double %i.r, f0x400921FB54442D18
  %i.t = fadd double %i.s, 2.000000e+00
  %i.u = tail call double @llvm.floor.f64(double %i.t) ; 2 uses
  %i.v = fcmp oge double %i.u, 4.000000e+00
  %i.w = tail call double @llvm.fmuladd.f64(double %i.u, double f0x3FF921FB54442D18, double f0xC002D97C7F3321D2)
  %i.x = select i1 %i.v, double f0x4002D97C7F3321D2, double %i.w ; 2 uses
  %i.y = fsub double %0, %i.x
  %i.z = fcmp ogt double %i.i, 0.000000e+00
  %i.aa = fcmp olt double %i.i, 0.000000e+00
  %i.ab = sitofp i1 %i.aa to double
  %i.ac = fmul nnan double %i.ab, f0x3FE921FB54442D18
  %i.ad = select i1 %i.z, double f0x3FE921FB54442D18, double %i.ac
  %i.ae = fsub double 2.000000e+00, %i.q
  %i.af = tail call double @llvm.fmuladd.f64(double %i.y, double %i.q, double %i.x)
  %i.ag = fmul double %i.ad, %i.ae
  br label %_ZL14healpix_sphere5PJ_LP.exit

_ZL14healpix_sphere5PJ_LP.exit:                   ; preds = %bb.b, %bb.c
  %.sroa.014.0.i = phi double [ %0, %bb.b ], [ %i.af, %bb.c ] ; 7 uses
  %.sroa.3.0.i = phi double [ %i.m, %bb.b ], [ %i.ag, %bb.c ] ; 4 uses
  %i.ah = load i32, ptr %i.b, align 8, !tbaa !56  ; 8 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !57 ; 8 uses
  %i.ak = fcmp ogt double %.sroa.3.0.i, f0x3FE921FB54442D18 ; 2 uses
  br i1 %i.ak, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZL14healpix_sphere5PJ_LP.exit
  %i.al = fcmp olt double %.sroa.3.0.i, f0xBFE921FB54442D18
  %i.am = insertelement <2 x double> poison, double %.sroa.3.0.i, i64 0
  %i.an = insertelement <2 x double> %i.am, double %.sroa.014.0.i, i64 1
  br i1 %i.al, label %bb.e, label %_ZL12combine_capsddiii.exit

bb.e:                                             ; preds = %bb.d, %_ZL14healpix_sphere5PJ_LP.exit
  %.0.i.i = phi double [ f0x3FF921FB54442D18, %_ZL14healpix_sphere5PJ_LP.exit ], [ f0xBFF921FB54442D18, %bb.d ]
  %i.ao = fcmp olt double %.sroa.014.0.i, f0xBFF921FB54442D18
  br i1 %i.ao, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ap = fcmp oge double %.sroa.014.0.i, f0xBFF921FB54442D18
  %i.aq = fcmp olt double %.sroa.014.0.i, 0.000000e+00
  %or.cond.i.i = and i1 %i.ap, %i.aq
  br i1 %or.cond.i.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ar = fcmp oge double %.sroa.014.0.i, 0.000000e+00
  %i.as = fcmp olt double %.sroa.014.0.i, f0x3FF921FB54442D18
  %or.cond3.i.i = and i1 %i.ar, %i.as
  br i1 %or.cond3.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e
  %.sroa.2136.0.ph.i = phi double [ f0xBFE921FB54442D18, %bb.f ], [ f0xC002D97C7F3321D2, %bb.e ], [ f0x3FE921FB54442D18, %bb.g ], [ f0x4002D97C7F3321D2, %bb.h ]
  %.sroa.031.0.ph.i = phi i32 [ 1, %bb.f ], [ 0, %bb.e ], [ 2, %bb.g ], [ 3, %bb.h ] ; 2 uses
  br i1 %i.ak, label %bb.j, label %bb.q

bb.j:                                             ; preds = %bb.i
  %i.at = sub nsw i32 %.sroa.031.0.ph.i, %i.ah
  switch i32 %i.at, label %bb.p [
    i32 -3, label %bb.o
    i32 1, label %_ZL16get_rotate_indexi.exit.i
    i32 2, label %bb.k
    i32 3, label %bb.l
    i32 -1, label %bb.m
    i32 -2, label %bb.n
  ]

bb.k:                                             ; preds = %bb.j
  br label %_ZL16get_rotate_indexi.exit.i

bb.l:                                             ; preds = %bb.j
  br label %_ZL16get_rotate_indexi.exit.i

bb.m:                                             ; preds = %bb.j
  br label %_ZL16get_rotate_indexi.exit.i

bb.n:                                             ; preds = %bb.j
  br label %_ZL16get_rotate_indexi.exit.i

bb.o:                                             ; preds = %bb.j
  br label %_ZL16get_rotate_indexi.exit.i

bb.p:                                             ; preds = %bb.j
  br label %_ZL16get_rotate_indexi.exit.i

bb.q:                                             ; preds = %bb.i
  %.neg19.i = sub nsw i32 %i.aj, %.sroa.031.0.ph.i
  switch i32 %.neg19.i, label %bb.w [
    i32 -3, label %bb.v
    i32 1, label %_ZL16get_rotate_indexi.exit.i
    i32 2, label %bb.r
    i32 3, label %bb.s
    i32 -1, label %bb.t
    i32 -2, label %bb.u
  ]

bb.r:                                             ; preds = %bb.q
  br label %_ZL16get_rotate_indexi.exit.i

bb.s:                                             ; preds = %bb.q
  br label %_ZL16get_rotate_indexi.exit.i

bb.t:                                             ; preds = %bb.q
  br label %_ZL16get_rotate_indexi.exit.i

bb.u:                                             ; preds = %bb.q
  br label %_ZL16get_rotate_indexi.exit.i

bb.v:                                             ; preds = %bb.q
  br label %_ZL16get_rotate_indexi.exit.i

bb.w:                                             ; preds = %bb.q
  br label %_ZL16get_rotate_indexi.exit.i

_ZL16get_rotate_indexi.exit.i:                    ; preds = %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j
  %.0.i23.sink.i = phi i64 [ 1, %bb.q ], [ 4, %bb.t ], [ 1, %bb.j ], [ 0, %bb.p ], [ 6, %bb.o ], [ 5, %bb.n ], [ 2, %bb.k ], [ 3, %bb.l ], [ 4, %bb.m ], [ 0, %bb.w ], [ 6, %bb.v ], [ 5, %bb.u ], [ 2, %bb.r ], [ 3, %bb.s ]
  %i.au = phi i32 [ %i.aj, %bb.q ], [ %i.aj, %bb.t ], [ %i.ah, %bb.j ], [ %i.ah, %bb.p ], [ %i.ah, %bb.o ], [ %i.ah, %bb.n ], [ %i.ah, %bb.k ], [ %i.ah, %bb.l ], [ %i.ah, %bb.m ], [ %i.aj, %bb.w ], [ %i.aj, %bb.v ], [ %i.aj, %bb.u ], [ %i.aj, %bb.r ], [ %i.aj, %bb.s ]
  %spec.select.i = phi double [ f0xBFF921FB54442D18, %bb.q ], [ f0xBFF921FB54442D18, %bb.t ], [ f0x3FF921FB54442D18, %bb.j ], [ f0x3FF921FB54442D18, %bb.p ], [ f0x3FF921FB54442D18, %bb.o ], [ f0x3FF921FB54442D18, %bb.n ], [ f0x3FF921FB54442D18, %bb.k ], [ f0x3FF921FB54442D18, %bb.l ], [ f0x3FF921FB54442D18, %bb.m ], [ f0xBFF921FB54442D18, %bb.w ], [ f0xBFF921FB54442D18, %bb.v ], [ f0xBFF921FB54442D18, %bb.u ], [ f0xBFF921FB54442D18, %bb.r ], [ f0xBFF921FB54442D18, %bb.s ]
  %i.av = getelementptr inbounds nuw [32 x i8], ptr @_ZL3rot, i64 %.0.i23.sink.i ; 4 uses
  %3 = insertelement <2 x double> poison, double %.sroa.3.0.i, i64 0
  %4 = insertelement <2 x double> %3, double %.sroa.014.0.i, i64 1
  %5 = insertelement <2 x double> poison, double %.0.i.i, i64 0
  %6 = insertelement <2 x double> %5, double %.sroa.2136.0.ph.i, i64 1
  %7 = fsub <2 x double> %4, %6                   ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.az = sitofp i32 %i.au to double
  %i.ba = load double, ptr %i.ay, align 8, !tbaa !59
  %i.bb = load double, ptr %i.ax, align 16, !tbaa !59
  %i.bc = load double, ptr %i.aw, align 8, !tbaa !59
  %i.bd = load double, ptr %i.av, align 16, !tbaa !59
  %i.be = insertelement <2 x double> poison, double %i.bb, i64 0
  %i.bf = insertelement <2 x double> %i.be, double %i.bd, i64 1
  %8 = shufflevector <2 x double> %7, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.bg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bf, <2 x double> %8, <2 x double> zeroinitializer)
  %i.bh = insertelement <2 x double> poison, double %i.ba, i64 0
  %i.bi = insertelement <2 x double> %i.bh, double %i.bc, i64 1
  %i.bj = shufflevector <2 x double> %7, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bk = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bi, <2 x double> %i.bj, <2 x double> %i.bg)
  %i.bl = tail call double @llvm.fmuladd.f64(double %i.az, double f0x3FF921FB54442D18, double f0xC002D97C7F3321D2)
  %i.bm = insertelement <2 x double> poison, double %spec.select.i, i64 0
  %i.bn = insertelement <2 x double> %i.bm, double %i.bl, i64 1
  %i.bo = fadd <2 x double> %i.bn, %i.bk
  br label %_ZL12combine_capsddiii.exit

_ZL12combine_capsddiii.exit:                      ; preds = %bb.d, %_ZL16get_rotate_indexi.exit.i
  %i.bp = phi <2 x double> [ %i.bo, %_ZL16get_rotate_indexi.exit.i ], [ %i.an, %bb.d ] ; 2 uses
  %i.bq = extractelement <2 x double> %i.bp, i64 1
  %.fca.0.insert.i12 = insertvalue { double, double } poison, double %i.bq, 0
  %i.br = extractelement <2 x double> %i.bp, i64 0
  %.fca.1.insert.i13 = insertvalue { double, double } %.fca.0.insert.i12, double %i.br, 1
  ret { double, double } %.fca.1.insert.i13
}

; Function Attrs: mustprogress uwtable
define internal { double, double } @_ZL18e_rhealpix_inverse5PJ_XYP8PJconsts(double %0, double %1, ptr noundef %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !42   ; 4 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !56   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !57   ; 2 uses
  %i.f = tail call fastcc noundef i32 @_ZL8in_imageddiii(double noundef %0, double noundef %1, i32 noundef 1, i32 noundef %i.c, i32 noundef %i.e)
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %2, align 8, !tbaa !44
  tail call void @_Z22proj_context_errno_setP6pj_ctxi(ptr noundef %i.h, i32 noundef 2050)
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.i = tail call fastcc { double, double } @_ZL12combine_capsddiii(double noundef %0, double noundef %1, i32 noundef %i.c, i32 noundef %i.e, i32 noundef 1) ; 2 uses
  %i.j = extractvalue { double, double } %i.i, 0  ; 3 uses
  %i.k = extractvalue { double, double } %i.i, 1  ; 6 uses
  %i.l = tail call double @llvm.fabs.f64(double %i.k) ; 3 uses
  %i.m = fcmp ugt double %i.l, f0x3FE921FB54442D18
  br i1 %i.m, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = fmul nnan double %i.k, 8.000000e+00
  %i.o = fdiv double %i.n, f0x4022D97C7F3321D2
  %i.p = tail call double @asin(double noundef %i.o) #10
  br label %_ZL30healpix_spherhealpix_e_inverse5PJ_XY.exit

bb.e:                                             ; preds = %bb.c
  %i.q = fcmp olt double %i.l, f0x3FF921FB54442D18
  br i1 %i.q, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.r = insertelement <2 x double> poison, double %i.j, i64 0
  %i.s = insertelement <2 x double> %i.r, double %i.l, i64 1
  %i.t = fmul <2 x double> %i.s, <double 2.000000e+00, double 4.000000e+00>
  %i.u = fdiv <2 x double> %i.t, splat (double f0x400921FB54442D18) ; 2 uses
  %i.v = extractelement <2 x double> %i.u, i64 0
  %i.w = fadd double %i.v, 2.000000e+00
  %i.x = tail call double @llvm.floor.f64(double %i.w) ; 2 uses
  %i.y = fcmp oge double %i.x, 4.000000e+00
  %i.z = tail call double @llvm.fmuladd.f64(double %i.x, double f0x3FF921FB54442D18, double f0xC002D97C7F3321D2)
  %i.aa = select i1 %i.y, double f0x4002D97C7F3321D2, double %i.z ; 2 uses
  %i.ab = extractelement <2 x double> %i.u, i64 1
  %i.ac = fsub double 2.000000e+00, %i.ab         ; 2 uses
  %i.ad = fsub double %i.j, %i.aa
  %i.ae = fdiv double %i.ad, %i.ac
  %i.af = fadd double %i.aa, %i.ae
  %i.ag = fcmp ogt double %i.k, 0.000000e+00
  %i.ah = fcmp olt double %i.k, 0.000000e+00
  %i.ai = sitofp i1 %i.ah to double
  %i.aj = select i1 %i.ag, double 1.000000e+00, double %i.ai
  %i.ak = tail call noundef double @pow(double noundef %i.ac, double noundef 2.000000e+00) #10
  %i.al = fdiv double %i.ak, 3.000000e+00
  %i.am = fsub double 1.000000e+00, %i.al
  %i.an = tail call double @asin(double noundef %i.am) #10
  %i.ao = fmul double %i.aj, %i.an
  br label %_ZL30healpix_spherhealpix_e_inverse5PJ_XY.exit

bb.g:                                             ; preds = %bb.e
  %i.ap = fcmp ogt double %i.k, 0.000000e+00
  %i.aq = fcmp olt double %i.k, 0.000000e+00
  %i.ar = sitofp i1 %i.aq to double
  %i.as = fmul nnan double %i.ar, f0x3FF921FB54442D18
  %i.at = select i1 %i.ap, double f0x3FF921FB54442D18, double %i.as
  br label %_ZL30healpix_spherhealpix_e_inverse5PJ_XY.exit

_ZL30healpix_spherhealpix_e_inverse5PJ_XY.exit:   ; preds = %bb.d, %bb.f, %bb.g
  %.sroa.016.0.i = phi double [ %i.j, %bb.d ], [ %i.af, %bb.f ], [ f0xC00921FB54442D18, %bb.g ]
  %.sroa.4.0.i = phi double [ %i.p, %bb.d ], [ %i.ao, %bb.f ], [ %i.at, %bb.g ]
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !51
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !52
  %i.ay = tail call noundef double @_Z23pj_authalic_lat_inversedPKdPK8PJconstsd(double noundef %.sroa.4.0.i, ptr noundef %i.av, ptr noundef nonnull %2, double noundef %i.ax)
  br label %bb.h

bb.h:                                             ; preds = %_ZL30healpix_spherhealpix_e_inverse5PJ_XY.exit, %bb.b
  %.sroa.414.0 = phi double [ +inf, %bb.b ], [ %i.ay, %_ZL30healpix_spherhealpix_e_inverse5PJ_XY.exit ]
  %.sroa.013.0 = phi double [ +inf, %bb.b ], [ %.sroa.016.0.i, %_ZL30healpix_spherhealpix_e_inverse5PJ_XY.exit ]
  %.fca.0.insert = insertvalue { double, double } poison, double %.sroa.013.0, 0
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %.sroa.414.0, 1
  ret { double, double } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable
define internal { double, double } @_ZL18s_rhealpix_forward5PJ_LPP8PJconsts(double %0, double %1, ptr nofree noundef readonly captures(none) %2) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !42   ; 2 uses
  %i.c = tail call double @llvm.fabs.f64(double %1)
  %i.d = fcmp ugt double %i.c, f0x3FE759EDD04F68DE
  %i.e = tail call double @sin(double noundef %1) #10 ; 2 uses
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = fmul double %i.e, f0x3FF2D97C7F3321D2
  br label %_ZL14healpix_sphere5PJ_LP.exit

bb.c:                                             ; preds = %bb.a
  %i.g = tail call double @llvm.fabs.f64(double %i.e)
  %i.h = fsub double 1.000000e+00, %i.g
  %i.i = fmul double %i.h, 3.000000e+00
  %i.j = tail call double @sqrt(double noundef %i.i) #10 ; 2 uses
  %i.k = fmul double %0, 2.000000e+00
  %i.l = fdiv double %i.k, f0x400921FB54442D18
  %i.m = fadd double %i.l, 2.000000e+00
  %i.n = tail call double @llvm.floor.f64(double %i.m) ; 2 uses
  %i.o = fcmp oge double %i.n, 4.000000e+00
  %i.p = tail call double @llvm.fmuladd.f64(double %i.n, double f0x3FF921FB54442D18, double f0xC002D97C7F3321D2)
  %i.q = select i1 %i.o, double f0x4002D97C7F3321D2, double %i.p ; 2 uses
  %i.r = fsub double %0, %i.q
  %i.s = fcmp ogt double %1, 0.000000e+00
  %i.t = fcmp olt double %1, 0.000000e+00
  %i.u = sitofp i1 %i.t to double
  %i.v = fmul nnan double %i.u, f0x3FE921FB54442D18
  %i.w = select i1 %i.s, double f0x3FE921FB54442D18, double %i.v
  %i.x = fsub double 2.000000e+00, %i.j
  %i.y = tail call double @llvm.fmuladd.f64(double %i.r, double %i.j, double %i.q)
  %i.z = fmul double %i.w, %i.x
  br label %_ZL14healpix_sphere5PJ_LP.exit

_ZL14healpix_sphere5PJ_LP.exit:                   ; preds = %bb.b, %bb.c
  %.sroa.014.0.i = phi double [ %0, %bb.b ], [ %i.y, %bb.c ] ; 7 uses
  %.sroa.3.0.i = phi double [ %i.f, %bb.b ], [ %i.z, %bb.c ] ; 4 uses
  %i.aa = load i32, ptr %i.b, align 8, !tbaa !56  ; 8 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !57 ; 8 uses
  %i.ad = fcmp ogt double %.sroa.3.0.i, f0x3FE921FB54442D18 ; 2 uses
  br i1 %i.ad, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZL14healpix_sphere5PJ_LP.exit
  %i.ae = fcmp olt double %.sroa.3.0.i, f0xBFE921FB54442D18
  %i.af = insertelement <2 x double> poison, double %.sroa.3.0.i, i64 0
  %i.ag = insertelement <2 x double> %i.af, double %.sroa.014.0.i, i64 1
  br i1 %i.ae, label %bb.e, label %_ZL12combine_capsddiii.exit

bb.e:                                             ; preds = %bb.d, %_ZL14healpix_sphere5PJ_LP.exit
  %.0.i.i = phi double [ f0x3FF921FB54442D18, %_ZL14healpix_sphere5PJ_LP.exit ], [ f0xBFF921FB54442D18, %bb.d ]
  %i.ah = fcmp olt double %.sroa.014.0.i, f0xBFF921FB54442D18
  br i1 %i.ah, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ai = fcmp oge double %.sroa.014.0.i, f0xBFF921FB54442D18
  %i.aj = fcmp olt double %.sroa.014.0.i, 0.000000e+00
  %or.cond.i.i = and i1 %i.ai, %i.aj
  br i1 %or.cond.i.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ak = fcmp oge double %.sroa.014.0.i, 0.000000e+00
  %i.al = fcmp olt double %.sroa.014.0.i, f0x3FF921FB54442D18
  %or.cond3.i.i = and i1 %i.ak, %i.al
  br i1 %or.cond3.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e
  %.sroa.2136.0.ph.i = phi double [ f0xBFE921FB54442D18, %bb.f ], [ f0xC002D97C7F3321D2, %bb.e ], [ f0x3FE921FB54442D18, %bb.g ], [ f0x4002D97C7F3321D2, %bb.h ]
  %.sroa.031.0.ph.i = phi i32 [ 1, %bb.f ], [ 0, %bb.e ], [ 2, %bb.g ], [ 3, %bb.h ] ; 2 uses
  br i1 %i.ad, label %bb.j, label %bb.q

bb.j:                                             ; preds = %bb.i
  %i.am = sub nsw i32 %.sroa.031.0.ph.i, %i.aa
  switch i32 %i.am, label %bb.p [
    i32 -3, label %bb.o
    i32 1, label %_ZL16get_rotate_indexi.exit.i
    i32 2, label %bb.k
    i32 3, label %bb.l
    i32 -1, label %bb.m
    i32 -2, label %bb.n
  ]

bb.k:                                             ; preds = %bb.j
  br label %_ZL16get_rotate_indexi.exit.i

bb.l:                                             ; preds = %bb.j
  br label %_ZL16get_rotate_indexi.exit.i

bb.m:                                             ; preds = %bb.j
  br label %_ZL16get_rotate_indexi.exit.i

bb.n:                                             ; preds = %bb.j
  br label %_ZL16get_rotate_indexi.exit.i

bb.o:                                             ; preds = %bb.j
  br label %_ZL16get_rotate_indexi.exit.i

bb.p:                                             ; preds = %bb.j
  br label %_ZL16get_rotate_indexi.exit.i

bb.q:                                             ; preds = %bb.i
  %.neg19.i = sub nsw i32 %i.ac, %.sroa.031.0.ph.i
  switch i32 %.neg19.i, label %bb.w [
    i32 -3, label %bb.v
    i32 1, label %_ZL16get_rotate_indexi.exit.i
    i32 2, label %bb.r
    i32 3, label %bb.s
    i32 -1, label %bb.t
    i32 -2, label %bb.u
  ]

bb.r:                                             ; preds = %bb.q
  br label %_ZL16get_rotate_indexi.exit.i

bb.s:                                             ; preds = %bb.q
  br label %_ZL16get_rotate_indexi.exit.i

bb.t:                                             ; preds = %bb.q
  br label %_ZL16get_rotate_indexi.exit.i

bb.u:                                             ; preds = %bb.q
  br label %_ZL16get_rotate_indexi.exit.i

bb.v:                                             ; preds = %bb.q
  br label %_ZL16get_rotate_indexi.exit.i

bb.w:                                             ; preds = %bb.q
  br label %_ZL16get_rotate_indexi.exit.i

_ZL16get_rotate_indexi.exit.i:                    ; preds = %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j
  %.0.i23.sink.i = phi i64 [ 1, %bb.q ], [ 4, %bb.t ], [ 1, %bb.j ], [ 0, %bb.p ], [ 6, %bb.o ], [ 5, %bb.n ], [ 2, %bb.k ], [ 3, %bb.l ], [ 4, %bb.m ], [ 0, %bb.w ], [ 6, %bb.v ], [ 5, %bb.u ], [ 2, %bb.r ], [ 3, %bb.s ]
  %i.an = phi i32 [ %i.ac, %bb.q ], [ %i.ac, %bb.t ], [ %i.aa, %bb.j ], [ %i.aa, %bb.p ], [ %i.aa, %bb.o ], [ %i.aa, %bb.n ], [ %i.aa, %bb.k ], [ %i.aa, %bb.l ], [ %i.aa, %bb.m ], [ %i.ac, %bb.w ], [ %i.ac, %bb.v ], [ %i.ac, %bb.u ], [ %i.ac, %bb.r ], [ %i.ac, %bb.s ]
  %spec.select.i = phi double [ f0xBFF921FB54442D18, %bb.q ], [ f0xBFF921FB54442D18, %bb.t ], [ f0x3FF921FB54442D18, %bb.j ], [ f0x3FF921FB54442D18, %bb.p ], [ f0x3FF921FB54442D18, %bb.o ], [ f0x3FF921FB54442D18, %bb.n ], [ f0x3FF921FB54442D18, %bb.k ], [ f0x3FF921FB54442D18, %bb.l ], [ f0x3FF921FB54442D18, %bb.m ], [ f0xBFF921FB54442D18, %bb.w ], [ f0xBFF921FB54442D18, %bb.v ], [ f0xBFF921FB54442D18, %bb.u ], [ f0xBFF921FB54442D18, %bb.r ], [ f0xBFF921FB54442D18, %bb.s ]
  %i.ao = getelementptr inbounds nuw [32 x i8], ptr @_ZL3rot, i64 %.0.i23.sink.i ; 4 uses
  %3 = insertelement <2 x double> poison, double %.sroa.3.0.i, i64 0
  %4 = insertelement <2 x double> %3, double %.sroa.014.0.i, i64 1
  %5 = insertelement <2 x double> poison, double %.0.i.i, i64 0
  %6 = insertelement <2 x double> %5, double %.sroa.2136.0.ph.i, i64 1
  %7 = fsub <2 x double> %4, %6                   ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.as = sitofp i32 %i.an to double
  %i.at = load double, ptr %i.ar, align 8, !tbaa !59
  %i.au = load double, ptr %i.aq, align 16, !tbaa !59
  %i.av = load double, ptr %i.ap, align 8, !tbaa !59
  %i.aw = load double, ptr %i.ao, align 16, !tbaa !59
  %i.ax = insertelement <2 x double> poison, double %i.au, i64 0
  %i.ay = insertelement <2 x double> %i.ax, double %i.aw, i64 1
  %8 = shufflevector <2 x double> %7, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.az = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ay, <2 x double> %8, <2 x double> zeroinitializer)
  %i.ba = insertelement <2 x double> poison, double %i.at, i64 0
  %i.bb = insertelement <2 x double> %i.ba, double %i.av, i64 1
  %i.bc = shufflevector <2 x double> %7, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bb, <2 x double> %i.bc, <2 x double> %i.az)
  %i.be = tail call double @llvm.fmuladd.f64(double %i.as, double f0x3FF921FB54442D18, double f0xC002D97C7F3321D2)
  %i.bf = insertelement <2 x double> poison, double %spec.select.i, i64 0
  %i.bg = insertelement <2 x double> %i.bf, double %i.be, i64 1
  %i.bh = fadd <2 x double> %i.bg, %i.bd
  br label %_ZL12combine_capsddiii.exit

_ZL12combine_capsddiii.exit:                      ; preds = %bb.d, %_ZL16get_rotate_indexi.exit.i
  %i.bi = phi <2 x double> [ %i.bh, %_ZL16get_rotate_indexi.exit.i ], [ %i.ag, %bb.d ] ; 2 uses
  %i.bj = extractelement <2 x double> %i.bi, i64 1
  %.fca.0.insert.i9 = insertvalue { double, double } poison, double %i.bj, 0
  %i.bk = extractelement <2 x double> %i.bi, i64 0
  %.fca.1.insert.i10 = insertvalue { double, double } %.fca.0.insert.i9, double %i.bk, 1
  ret { double, double } %.fca.1.insert.i10
}

; Function Attrs: mustprogress uwtable
define internal { double, double } @_ZL18s_rhealpix_inverse5PJ_XYP8PJconsts(double %0, double %1, ptr nofree noundef readonly captures(none) %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !42   ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !56   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !57   ; 2 uses
  %i.f = tail call fastcc noundef i32 @_ZL8in_imageddiii(double noundef %0, double noundef %1, i32 noundef 1, i32 noundef %i.c, i32 noundef %i.e)
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %2, align 8, !tbaa !44
  tail call void @_Z22proj_context_errno_setP6pj_ctxi(ptr noundef %i.h, i32 noundef 2050)
  br label %_ZL30healpix_spherhealpix_e_inverse5PJ_XY.exit

bb.c:                                             ; preds = %bb.a
  %i.i = tail call fastcc { double, double } @_ZL12combine_capsddiii(double noundef %0, double noundef %1, i32 noundef %i.c, i32 noundef %i.e, i32 noundef 1) ; 2 uses
  %i.j = extractvalue { double, double } %i.i, 0  ; 3 uses
  %i.k = extractvalue { double, double } %i.i, 1  ; 6 uses
  %i.l = tail call double @llvm.fabs.f64(double %i.k) ; 3 uses
  %i.m = fcmp ugt double %i.l, f0x3FE921FB54442D18
  br i1 %i.m, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = fmul nnan double %i.k, 8.000000e+00
  %i.o = fdiv double %i.n, f0x4022D97C7F3321D2
  %i.p = tail call double @asin(double noundef %i.o) #10
  br label %_ZL30healpix_spherhealpix_e_inverse5PJ_XY.exit

bb.e:                                             ; preds = %bb.c
  %i.q = fcmp olt double %i.l, f0x3FF921FB54442D18
  br i1 %i.q, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.r = insertelement <2 x double> poison, double %i.j, i64 0
  %i.s = insertelement <2 x double> %i.r, double %i.l, i64 1
  %i.t = fmul <2 x double> %i.s, <double 2.000000e+00, double 4.000000e+00>
  %i.u = fdiv <2 x double> %i.t, splat (double f0x400921FB54442D18) ; 2 uses
  %i.v = extractelement <2 x double> %i.u, i64 0
  %i.w = fadd double %i.v, 2.000000e+00
  %i.x = tail call double @llvm.floor.f64(double %i.w) ; 2 uses
  %i.y = fcmp oge double %i.x, 4.000000e+00
  %i.z = tail call double @llvm.fmuladd.f64(double %i.x, double f0x3FF921FB54442D18, double f0xC002D97C7F3321D2)
  %i.aa = select i1 %i.y, double f0x4002D97C7F3321D2, double %i.z ; 2 uses
  %i.ab = extractelement <2 x double> %i.u, i64 1
  %i.ac = fsub double 2.000000e+00, %i.ab         ; 2 uses
  %i.ad = fsub double %i.j, %i.aa
  %i.ae = fdiv double %i.ad, %i.ac
  %i.af = fadd double %i.aa, %i.ae
  %i.ag = fcmp ogt double %i.k, 0.000000e+00
  %i.ah = fcmp olt double %i.k, 0.000000e+00
  %i.ai = sitofp i1 %i.ah to double
  %i.aj = select i1 %i.ag, double 1.000000e+00, double %i.ai
  %i.ak = tail call noundef double @pow(double noundef %i.ac, double noundef 2.000000e+00) #10
  %i.al = fdiv double %i.ak, 3.000000e+00
  %i.am = fsub double 1.000000e+00, %i.al
  %i.an = tail call double @asin(double noundef %i.am) #10
  %i.ao = fmul double %i.aj, %i.an
  br label %_ZL30healpix_spherhealpix_e_inverse5PJ_XY.exit

bb.g:                                             ; preds = %bb.e
  %i.ap = fcmp ogt double %i.k, 0.000000e+00
  %i.aq = fcmp olt double %i.k, 0.000000e+00
  %i.ar = sitofp i1 %i.aq to double
  %i.as = fmul nnan double %i.ar, f0x3FF921FB54442D18
  %i.at = select i1 %i.ap, double f0x3FF921FB54442D18, double %i.as
  br label %_ZL30healpix_spherhealpix_e_inverse5PJ_XY.exit

_ZL30healpix_spherhealpix_e_inverse5PJ_XY.exit:   ; preds = %bb.g, %bb.f, %bb.d, %bb.b
  %.sroa.010.0 = phi double [ +inf, %bb.b ], [ %i.j, %bb.d ], [ %i.af, %bb.f ], [ f0xC00921FB54442D18, %bb.g ]
  %.sroa.3.0 = phi double [ +inf, %bb.b ], [ %i.p, %bb.d ], [ %i.ao, %bb.f ], [ %i.at, %bb.g ]
  %.fca.0.insert = insertvalue { double, double } poison, double %.sroa.010.0, 0
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %.sroa.3.0, 1
  ret { double, double } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #6

declare noundef double @_Z15pj_authalic_latdddPKdPK8PJconstsd(double noundef, double noundef, double noundef, ptr noundef, ptr noundef, double noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sin(double noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @cos(double noundef) local_unnamed_addr #4

declare noundef double @_Z23pj_authalic_lat_inversedPKdPK8PJconstsd(double noundef, ptr noundef, ptr noundef, double noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @asin(double noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal fastcc noundef range(i32 0, 2) i32 @_ZL8in_imageddiii(double noundef %0, double noundef %1, i32 noundef range(i32 0, 2) %2, i32 noundef %3, i32 noundef %4) unnamed_addr #8 {
bb.a:
  %i.a = alloca [12 x [2 x double]], align 16     ; 13 uses
  %i.b = icmp eq i32 %2, 0
  br i1 %i.b, label %.preheader27.preheader, label %bb.k

.preheader27.preheader:                           ; preds = %bb.a
  %i.c = fcmp oeq double %0, f0xC00921FB54442D1A  ; 2 uses
  %i.d = fcmp oeq double %1, f0x3FE921FB54442D18
  %or.cond = and i1 %i.c, %i.d
  br i1 %or.cond, label %_ZL6pnpolyiPA2_ddd.exit, label %.preheader27.1

.preheader27.1:                                   ; preds = %.preheader27.preheader
  %i.e = fcmp oeq double %0, f0xC002D97C7F3321D2  ; 2 uses
  %i.f = fcmp oeq double %1, f0x3FF921FB54442D1D
  %or.cond39 = and i1 %i.e, %i.f
  br i1 %or.cond39, label %_ZL6pnpolyiPA2_ddd.exit, label %.preheader27.2

.preheader27.2:                                   ; preds = %.preheader27.1
  %i.g = fcmp oeq double %0, f0xBFF921FB54442D18  ; 2 uses
  %i.h = fcmp oeq double %1, f0x3FE921FB54442D21
  %or.cond40 = and i1 %i.g, %i.h
  br i1 %or.cond40, label %_ZL6pnpolyiPA2_ddd.exit, label %.preheader27.3

.preheader27.3:                                   ; preds = %.preheader27.2
  %i.i = fcmp oeq double %0, f0xBFE921FB54442D18  ; 2 uses
  %i.j = fcmp oeq double %1, f0x3FF921FB54442D1D
  %or.cond41 = and i1 %i.i, %i.j
  br i1 %or.cond41, label %_ZL6pnpolyiPA2_ddd.exit, label %.preheader27.4

.preheader27.4:                                   ; preds = %.preheader27.3
  %i.k = fcmp oeq double %0, 0.000000e+00         ; 2 uses
  %i.l = fcmp oeq double %1, f0x3FE921FB54442D21
  %or.cond42 = and i1 %i.k, %i.l
  br i1 %or.cond42, label %_ZL6pnpolyiPA2_ddd.exit, label %.preheader27.5

.preheader27.5:                                   ; preds = %.preheader27.4
  %i.m = fcmp oeq double %0, f0x3FE921FB54442D18  ; 2 uses
  %i.n = fcmp oeq double %1, f0x3FF921FB54442D1D
  %or.cond43 = and i1 %i.m, %i.n
  br i1 %or.cond43, label %_ZL6pnpolyiPA2_ddd.exit, label %.preheader27.6

.preheader27.6:                                   ; preds = %.preheader27.5
  %i.o = fcmp oeq double %0, f0x3FF921FB54442D18  ; 2 uses
  %i.p = fcmp oeq double %1, f0x3FE921FB54442D21
  %or.cond44 = and i1 %i.o, %i.p
  br i1 %or.cond44, label %_ZL6pnpolyiPA2_ddd.exit, label %.preheader27.7

.preheader27.7:                                   ; preds = %.preheader27.6
  %i.q = fcmp oeq double %0, f0x4002D97C7F3321D2  ; 3 uses
  %i.r = fcmp oeq double %1, f0x3FF921FB54442D1D
  %or.cond45 = and i1 %i.q, %i.r
  br i1 %or.cond45, label %_ZL6pnpolyiPA2_ddd.exit, label %.preheader27.8

.preheader27.8:                                   ; preds = %.preheader27.7
  %i.s = fcmp oeq double %0, f0x400921FB54442D1A
  br i1 %i.s, label %bb.b, label %.preheader27.10

bb.b:                                             ; preds = %.preheader27.8
  %i.t = fcmp oeq double %1, f0x3FE921FB54442D18
  %i.u = fcmp oeq double %1, f0xBFE921FB54442D18
  %or.cond46 = or i1 %i.t, %i.u
  %i.v = fcmp oeq double %1, f0xBFF921FB54442D1D
  %or.cond47 = and i1 %i.q, %i.v
  %or.cond62 = or i1 %or.cond46, %or.cond47
  br i1 %or.cond62, label %_ZL6pnpolyiPA2_ddd.exit, label %.preheader27.11

.preheader27.10:                                  ; preds = %.preheader27.8
  %.old = fcmp oeq double %1, f0xBFF921FB54442D1D
  %or.cond47.old = and i1 %i.q, %.old
  br i1 %or.cond47.old, label %_ZL6pnpolyiPA2_ddd.exit, label %.preheader27.11

.preheader27.11:                                  ; preds = %bb.b, %.preheader27.10
  %i.w = fcmp oeq double %1, f0xBFE921FB54442D21
  %or.cond48 = and i1 %i.o, %i.w
  %i.x = fcmp oeq double %1, f0xBFF921FB54442D1D
  %or.cond49 = and i1 %i.m, %i.x
  %or.cond64 = or i1 %or.cond48, %or.cond49
  %i.y = fcmp oeq double %1, f0xBFE921FB54442D21
  %or.cond50 = and i1 %i.k, %i.y
  %or.cond66 = or i1 %or.cond64, %or.cond50
end_hunk_0
begin_hunk_1_@_ZL12combine_capsddiii:bb.a
bb.p:                                             ; preds = %bb.n, %bb.m
  %i.ak = fcmp ugt double %1, %i.ad
  br i1 %i.ak, label %bb.aq, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.al = fadd double %i.t, f0x400F6A7A2955385E
  %i.am = fadd double %i.al, 1.000000e-15
  %i.an = fcmp ogt double %1, %i.am
  br i1 %i.an, label %bb.r, label %bb.aq

bb.r:                                             ; preds = %bb.q
  %i.ao = add nsw i32 %2, 3
  %i.ap = srem i32 %i.ao, 4
  br label %bb.aq

bb.s:                                             ; preds = %bb.i
  %i.aq = sitofp i32 %3 to double                 ; 2 uses
  %i.ar = fneg double %i.aq
  %i.as = insertelement <2 x double> poison, double %i.aq, i64 0
  %i.at = insertelement <2 x double> %i.as, double %i.ar, i64 1
  %i.au = insertelement <2 x double> <double f0xC002D97C7F3321D2, double poison>, double %0, i64 1
  %i.av = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.at, <2 x double> splat (double f0x3FF921FB54442D18), <2 x double> %i.au) ; 2 uses
  %i.aw = extractelement <2 x double> %i.av, i64 1 ; 4 uses
  %i.ax = extractelement <2 x double> %i.av, i64 0 ; 7 uses
  %i.ay = fadd double %i.aw, f0x3FE921FB54442D18  ; 2 uses
  %i.az = fadd double %i.ay, 1.000000e-15
  %i.ba = fcmp ugt double %1, %i.az
  br i1 %i.ba, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bb = fsub double f0xC00F6A7A2955385E, %i.aw
  %i.bc = fadd double %i.bb, 1.000000e-15
  %i.bd = fcmp ogt double %1, %i.bc
  br i1 %i.bd, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.be = add nsw i32 %3, 1
  %i.bf = srem i32 %i.be, 4
  br label %bb.ax

bb.v:                                             ; preds = %bb.t, %bb.s
  %i.bg = fadd double %i.ay, -1.000000e-15        ; 2 uses
  %i.bh = fcmp olt double %1, %i.bg
  br i1 %i.bh, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.bi = fsub double f0xC00F6A7A2955385E, %i.aw
  %i.bj = fadd double %i.bi, 1.000000e-15
  %i.bk = fcmp ugt double %1, %i.bj
  br i1 %i.bk, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bl = add nsw i32 %3, 2
  %i.bm = srem i32 %i.bl, 4
  br label %bb.ax

bb.y:                                             ; preds = %bb.w, %bb.v
  %i.bn = fcmp ult double %1, %i.bg
  br i1 %i.bn, label %bb.ax, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bo = fsub double f0xC00F6A7A2955385E, %i.aw
  %i.bp = fadd double %i.bo, -1.000000e-15
  %i.bq = fcmp olt double %1, %i.bp
  br i1 %i.bq, label %bb.aa, label %bb.ax

bb.aa:                                            ; preds = %bb.z
  %i.br = add nsw i32 %3, 3
  %i.bs = srem i32 %i.br, 4
  br label %bb.ax

bb.ab:                                            ; preds = %bb.f, %bb.g, %bb.e, %bb.d
  %.sroa.2136.0.ph = phi double [ f0xBFE921FB54442D18, %bb.e ], [ f0xC002D97C7F3321D2, %bb.d ], [ f0x3FE921FB54442D18, %bb.f ], [ f0x4002D97C7F3321D2, %bb.g ] ; 14 uses
  %.sroa.031.0.ph = phi i32 [ 1, %bb.e ], [ 0, %bb.d ], [ 2, %bb.f ], [ 3, %bb.g ] ; 2 uses
  br i1 %i.b, label %bb.ac, label %bb.aj

bb.ac:                                            ; preds = %bb.ab
  %i.bt = sub nsw i32 %.sroa.031.0.ph, %2
  switch i32 %i.bt, label %bb.ai [
    i32 -3, label %bb.ah
    i32 1, label %_ZL16get_rotate_indexi.exit
    i32 2, label %bb.ad
    i32 3, label %bb.ae
    i32 -1, label %bb.af
    i32 -2, label %bb.ag
  ]

bb.ad:                                            ; preds = %bb.ac
  br label %_ZL16get_rotate_indexi.exit

bb.ae:                                            ; preds = %bb.ac
  br label %_ZL16get_rotate_indexi.exit

bb.af:                                            ; preds = %bb.ac
  br label %_ZL16get_rotate_indexi.exit

bb.ag:                                            ; preds = %bb.ac
  br label %_ZL16get_rotate_indexi.exit

bb.ah:                                            ; preds = %bb.ac
  br label %_ZL16get_rotate_indexi.exit

bb.ai:                                            ; preds = %bb.ac
  br label %_ZL16get_rotate_indexi.exit

bb.aj:                                            ; preds = %bb.ab
  %.neg19 = sub nsw i32 %3, %.sroa.031.0.ph
  switch i32 %.neg19, label %bb.ap [
    i32 -3, label %bb.ao
    i32 1, label %_ZL16get_rotate_indexi.exit
    i32 2, label %bb.ak
    i32 3, label %bb.al
    i32 -1, label %bb.am
    i32 -2, label %bb.an
  ]

bb.ak:                                            ; preds = %bb.aj
  br label %_ZL16get_rotate_indexi.exit

bb.al:                                            ; preds = %bb.aj
  br label %_ZL16get_rotate_indexi.exit

bb.am:                                            ; preds = %bb.aj
  br label %_ZL16get_rotate_indexi.exit

bb.an:                                            ; preds = %bb.aj
  br label %_ZL16get_rotate_indexi.exit

bb.ao:                                            ; preds = %bb.aj
  br label %_ZL16get_rotate_indexi.exit

bb.ap:                                            ; preds = %bb.aj
  br label %_ZL16get_rotate_indexi.exit

bb.aq:                                            ; preds = %bb.r, %bb.o, %bb.l, %bb.p, %bb.q
  %.sroa.031.0.ph.ph.ph = phi i32 [ %2, %bb.q ], [ %2, %bb.p ], [ %i.ac, %bb.l ], [ %i.aj, %bb.o ], [ %i.ap, %bb.r ] ; 8 uses
  %.neg = sub nsw i32 %2, %.sroa.031.0.ph.ph.ph
  switch i32 %.neg, label %bb.aw [
    i32 -3, label %bb.av
    i32 1, label %_ZL16get_rotate_indexi.exit
    i32 2, label %bb.ar
    i32 3, label %bb.as
    i32 -1, label %bb.at
    i32 -2, label %bb.au
  ]

bb.ar:                                            ; preds = %bb.aq
  br label %_ZL16get_rotate_indexi.exit

bb.as:                                            ; preds = %bb.aq
  br label %_ZL16get_rotate_indexi.exit

bb.at:                                            ; preds = %bb.aq
  br label %_ZL16get_rotate_indexi.exit

bb.au:                                            ; preds = %bb.aq
  br label %_ZL16get_rotate_indexi.exit

bb.av:                                            ; preds = %bb.aq
  br label %_ZL16get_rotate_indexi.exit

bb.aw:                                            ; preds = %bb.aq
  br label %_ZL16get_rotate_indexi.exit

bb.ax:                                            ; preds = %bb.y, %bb.z, %bb.u, %bb.x, %bb.aa
  %.sroa.031.0.ph.ph = phi i32 [ %i.bm, %bb.x ], [ %i.bf, %bb.u ], [ %3, %bb.y ], [ %3, %bb.z ], [ %i.bs, %bb.aa ] ; 8 uses
  %i.bu = sub nsw i32 %.sroa.031.0.ph.ph, %3
  switch i32 %i.bu, label %bb.bd [
    i32 -3, label %bb.bc
    i32 1, label %_ZL16get_rotate_indexi.exit
    i32 2, label %bb.ay
    i32 3, label %bb.az
    i32 -1, label %bb.ba
    i32 -2, label %bb.bb
  ]

bb.ay:                                            ; preds = %bb.ax
  br label %_ZL16get_rotate_indexi.exit

bb.az:                                            ; preds = %bb.ax
  br label %_ZL16get_rotate_indexi.exit

bb.ba:                                            ; preds = %bb.ax
  br label %_ZL16get_rotate_indexi.exit

bb.bb:                                            ; preds = %bb.ax
  br label %_ZL16get_rotate_indexi.exit

bb.bc:                                            ; preds = %bb.ax
  br label %_ZL16get_rotate_indexi.exit

bb.bd:                                            ; preds = %bb.ax
  br label %_ZL16get_rotate_indexi.exit

_ZL16get_rotate_indexi.exit:                      ; preds = %bb.bd, %bb.bc, %bb.bb, %bb.ba, %bb.az, %bb.ay, %bb.ax, %bb.aw, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac
  %.0.i23.sink = phi i64 [ 1, %bb.aj ], [ 1, %bb.aq ], [ 1, %bb.ac ], [ 0, %bb.ai ], [ 6, %bb.ah ], [ 5, %bb.ag ], [ 2, %bb.ad ], [ 3, %bb.ae ], [ 4, %bb.af ], [ 0, %bb.ap ], [ 6, %bb.ao ], [ 5, %bb.an ], [ 2, %bb.ak ], [ 3, %bb.al ], [ 4, %bb.am ], [ 0, %bb.aw ], [ 6, %bb.av ], [ 5, %bb.au ], [ 2, %bb.ar ], [ 3, %bb.as ], [ 4, %bb.at ], [ 0, %bb.bd ], [ 6, %bb.bc ], [ 5, %bb.bb ], [ 2, %bb.ay ], [ 3, %bb.az ], [ 4, %bb.ba ], [ 1, %bb.ax ]
  %i.bv = phi i32 [ %3, %bb.aj ], [ %.sroa.031.0.ph.ph.ph, %bb.aq ], [ %2, %bb.ac ], [ %2, %bb.ai ], [ %2, %bb.ah ], [ %2, %bb.ag ], [ %2, %bb.ad ], [ %2, %bb.ae ], [ %2, %bb.af ], [ %3, %bb.ap ], [ %3, %bb.ao ], [ %3, %bb.an ], [ %3, %bb.ak ], [ %3, %bb.al ], [ %3, %bb.am ], [ %.sroa.031.0.ph.ph.ph, %bb.aw ], [ %.sroa.031.0.ph.ph.ph, %bb.av ], [ %.sroa.031.0.ph.ph.ph, %bb.au ], [ %.sroa.031.0.ph.ph.ph, %bb.ar ], [ %.sroa.031.0.ph.ph.ph, %bb.as ], [ %.sroa.031.0.ph.ph.ph, %bb.at ], [ %.sroa.031.0.ph.ph, %bb.bd ], [ %.sroa.031.0.ph.ph, %bb.bc ], [ %.sroa.031.0.ph.ph, %bb.bb ], [ %.sroa.031.0.ph.ph, %bb.ay ], [ %.sroa.031.0.ph.ph, %bb.az ], [ %.sroa.031.0.ph.ph, %bb.ba ], [ %.sroa.031.0.ph.ph, %bb.ax ]
  %.sroa.2136.0.ph64 = phi double [ %.sroa.2136.0.ph, %bb.aj ], [ %i.u, %bb.aq ], [ %.sroa.2136.0.ph, %bb.ac ], [ %.sroa.2136.0.ph, %bb.ai ], [ %.sroa.2136.0.ph, %bb.ah ], [ %.sroa.2136.0.ph, %bb.ag ], [ %.sroa.2136.0.ph, %bb.ad ], [ %.sroa.2136.0.ph, %bb.ae ], [ %.sroa.2136.0.ph, %bb.af ], [ %.sroa.2136.0.ph, %bb.ap ], [ %.sroa.2136.0.ph, %bb.ao ], [ %.sroa.2136.0.ph, %bb.an ], [ %.sroa.2136.0.ph, %bb.ak ], [ %.sroa.2136.0.ph, %bb.al ], [ %.sroa.2136.0.ph, %bb.am ], [ %i.u, %bb.aw ], [ %i.u, %bb.av ], [ %i.u, %bb.au ], [ %i.u, %bb.ar ], [ %i.u, %bb.as ], [ %i.u, %bb.at ], [ %i.ax, %bb.bd ], [ %i.ax, %bb.bc ], [ %i.ax, %bb.bb ], [ %i.ax, %bb.ay ], [ %i.ax, %bb.az ], [ %i.ax, %bb.ba ], [ %i.ax, %bb.ax ]
  %.sroa.30.0.ph62 = phi double [ %.0.i, %bb.aj ], [ f0x3FF921FB54442D18, %bb.aq ], [ %.0.i, %bb.ac ], [ %.0.i, %bb.ai ], [ %.0.i, %bb.ah ], [ %.0.i, %bb.ag ], [ %.0.i, %bb.ad ], [ %.0.i, %bb.ae ], [ %.0.i, %bb.af ], [ %.0.i, %bb.ap ], [ %.0.i, %bb.ao ], [ %.0.i, %bb.an ], [ %.0.i, %bb.ak ], [ %.0.i, %bb.al ], [ %.0.i, %bb.am ], [ f0x3FF921FB54442D18, %bb.aw ], [ f0x3FF921FB54442D18, %bb.av ], [ f0x3FF921FB54442D18, %bb.au ], [ f0x3FF921FB54442D18, %bb.ar ], [ f0x3FF921FB54442D18, %bb.as ], [ f0x3FF921FB54442D18, %bb.at ], [ f0xBFF921FB54442D18, %bb.bd ], [ f0xBFF921FB54442D18, %bb.bc ], [ f0xBFF921FB54442D18, %bb.bb ], [ f0xBFF921FB54442D18, %bb.ay ], [ f0xBFF921FB54442D18, %bb.az ], [ f0xBFF921FB54442D18, %bb.ba ], [ f0xBFF921FB54442D18, %bb.ax ]
  %spec.select = phi double [ f0xBFF921FB54442D18, %bb.aj ], [ f0x3FF921FB54442D18, %bb.aq ], [ f0x3FF921FB54442D18, %bb.ac ], [ f0x3FF921FB54442D18, %bb.ai ], [ f0x3FF921FB54442D18, %bb.ah ], [ f0x3FF921FB54442D18, %bb.ag ], [ f0x3FF921FB54442D18, %bb.ad ], [ f0x3FF921FB54442D18, %bb.ae ], [ f0x3FF921FB54442D18, %bb.af ], [ f0xBFF921FB54442D18, %bb.ap ], [ f0xBFF921FB54442D18, %bb.ao ], [ f0xBFF921FB54442D18, %bb.an ], [ f0xBFF921FB54442D18, %bb.ak ], [ f0xBFF921FB54442D18, %bb.al ], [ f0xBFF921FB54442D18, %bb.am ], [ f0x3FF921FB54442D18, %bb.aw ], [ f0x3FF921FB54442D18, %bb.av ], [ f0x3FF921FB54442D18, %bb.au ], [ f0x3FF921FB54442D18, %bb.ar ], [ f0x3FF921FB54442D18, %bb.as ], [ f0x3FF921FB54442D18, %bb.at ], [ f0xBFF921FB54442D18, %bb.bd ], [ f0xBFF921FB54442D18, %bb.bc ], [ f0xBFF921FB54442D18, %bb.bb ], [ f0xBFF921FB54442D18, %bb.ay ], [ f0xBFF921FB54442D18, %bb.az ], [ f0xBFF921FB54442D18, %bb.ba ], [ f0xBFF921FB54442D18, %bb.ax ]
  %i.bw = getelementptr inbounds nuw [32 x i8], ptr @_ZL3rot, i64 %.0.i23.sink ; 4 uses
  %5 = insertelement <2 x double> poison, double %1, i64 0
  %6 = insertelement <2 x double> %5, double %0, i64 1
  %7 = insertelement <2 x double> poison, double %.sroa.30.0.ph62, i64 0
  %8 = insertelement <2 x double> %7, double %.sroa.2136.0.ph64, i64 1
  %9 = fsub <2 x double> %6, %8                   ; 2 uses
  %10 = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %11 = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %12 = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %i.bx = sitofp i32 %i.bv to double
  %13 = load double, ptr %12, align 8, !tbaa !59
  %14 = load double, ptr %11, align 16, !tbaa !59
  %15 = load double, ptr %10, align 8, !tbaa !59
  %16 = load double, ptr %i.bw, align 16, !tbaa !59
  %17 = insertelement <2 x double> poison, double %16, i64 0
  %i.by = insertelement <2 x double> %17, double %14, i64 1
  %18 = shufflevector <2 x double> %9, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.bz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.by, <2 x double> %18, <2 x double> zeroinitializer)
  %19 = insertelement <2 x double> poison, double %15, i64 0
  %i.ca = insertelement <2 x double> %19, double %13, i64 1
  %i.cb = shufflevector <2 x double> %9, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ca, <2 x double> %i.cb, <2 x double> %i.bz)
  %20 = tail call double @llvm.fmuladd.f64(double %i.bx, double f0x3FF921FB54442D18, double f0xC002D97C7F3321D2)
  %i.cd = insertelement <2 x double> poison, double %20, i64 0
  %21 = insertelement <2 x double> %i.cd, double %spec.select, i64 1
  %i.ce = fadd <2 x double> %21, %i.cc
  br label %_ZL7get_capddiii.exit

_ZL7get_capddiii.exit:                            ; preds = %bb.i, %bb.c, %_ZL16get_rotate_indexi.exit
  %i.cf = phi <2 x double> [ %i.ce, %_ZL16get_rotate_indexi.exit ], [ %i.e, %bb.c ], [ %i.m, %bb.i ] ; 2 uses
  %i.cg = extractelement <2 x double> %i.cf, i64 0
  %.fca.0.insert = insertvalue { double, double } poison, double %i.cg, 0
  %i.ch = extractelement <2 x double> %i.cf, i64 1
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %i.ch, 1
  ret { double, double } %.fca.1.insert
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #7

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind allocsize(0,1) }
attributes #10 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !12, i64 8}
!9 = !{!"_ZTS8PJconsts", !10, i64 0, !12, i64 8, !12, i64 16, !13, i64 24, !12, i64 32, !14, i64 40, !12, i64 48, !12, i64 56, !12, i64 64, !12, i64 72, !15, i64 80, !11, i64 88, !5, i64 96, !11, i64 104, !11, i64 112, !11, i64 120, !11, i64 128, !11, i64 136, !11, i64 144, !11, i64 152, !11, i64 160, !16, i64 168, !16, i64 176, !16, i64 184, !16, i64 192, !16, i64 200, !16, i64 208, !16, i64 216, !16, i64 224, !16, i64 232, !16, i64 240, !16, i64 248, !16, i64 256, !16, i64 264, !16, i64 272, !16, i64 280, !16, i64 288, !16, i64 296, !16, i64 304, !16, i64 312, !16, i64 320, !16, i64 328, !16, i64 336, !5, i64 344, !5, i64 348, !5, i64 352, !5, i64 356, !5, i64 360, !5, i64 364, !5, i64 368, !5, i64 372, !5, i64 376, !17, i64 380, !17, i64 384, !14, i64 392, !14, i64 400, !14, i64 408, !14, i64 416, !14, i64 424, !14, i64 432, !16, i64 440, !16, i64 448, !16, i64 456, !16, i64 464, !16, i64 472, !16, i64 480, !16, i64 488, !16, i64 496, !16, i64 504, !16, i64 512, !16, i64 520, !5, i64 528, !6, i64 536, !5, i64 592, !11, i64 600, !11, i64 608, !16, i64 616, !16, i64 624, !5, i64 632, !6, i64 636, !18, i64 640, !23, i64 656, !16, i64 664, !23, i64 672, !24, i64 680, !24, i64 712, !24, i64 744, !23, i64 776, !27, i64 784, !32, i64 808, !33, i64 816, !5, i64 840, !23, i64 844, !23, i64 845, !23, i64 846, !14, i64 848}
!10 = !{!"p1 _ZTS6pj_ctx", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!"p1 omnipotent char", !11, i64 0}
!13 = !{!"p1 _ZTS8ARG_list", !11, i64 0}
!14 = !{!"p1 _ZTS8PJconsts", !11, i64 0}
!15 = !{!"p1 _ZTS13geod_geodesic", !11, i64 0}
!16 = !{!"double", !6, i64 0}
!17 = !{!"_ZTS11pj_io_units", !6, i64 0}
!18 = !{!"_ZTSSt10shared_ptrIN5osgeo4proj4util10BaseObjectEE", !19, i64 0}
!19 = !{!"_ZTSSt12__shared_ptrIN5osgeo4proj4util10BaseObjectELN9__gnu_cxx12_Lock_policyE2EE", !20, i64 0, !21, i64 8}
!20 = !{!"p1 _ZTSN5osgeo4proj4util10BaseObjectE", !11, i64 0}
!21 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !22, i64 0}
!22 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !11, i64 0}
!23 = !{!"bool", !6, i64 0}
!24 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !25, i64 0, !26, i64 8, !6, i64 16}
!25 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !12, i64 0}
!26 = !{!"long", !6, i64 0}
!27 = !{!"_ZTSSt6vectorIN5osgeo4proj9operation15GridDescriptionESaIS3_EE", !28, i64 0}
!28 = !{!"_ZTSSt12_Vector_baseIN5osgeo4proj9operation15GridDescriptionESaIS3_EE", !29, i64 0}
!29 = !{!"_ZTSNSt12_Vector_baseIN5osgeo4proj9operation15GridDescriptionESaIS3_EE12_Vector_implE", !30, i64 0}
!30 = !{!"_ZTSNSt12_Vector_baseIN5osgeo4proj9operation15GridDescriptionESaIS3_EE17_Vector_impl_dataE", !31, i64 0, !31, i64 8, !31, i64 16}
!31 = !{!"p1 _ZTSN5osgeo4proj9operation15GridDescriptionE", !11, i64 0}
!32 = !{!"_ZTS7PJ_TYPE", !6, i64 0}
!33 = !{!"_ZTSSt6vectorI16PJCoordOperationSaIS0_EE", !34, i64 0}
!34 = !{!"_ZTSSt12_Vector_baseI16PJCoordOperationSaIS0_EE", !35, i64 0}
!35 = !{!"_ZTSNSt12_Vector_baseI16PJCoordOperationSaIS0_EE12_Vector_implE", !36, i64 0}
!36 = !{!"_ZTSNSt12_Vector_baseI16PJCoordOperationSaIS0_EE17_Vector_impl_dataE", !37, i64 0, !37, i64 8, !37, i64 16}
!37 = !{!"p1 _ZTS16PJCoordOperation", !11, i64 0}
!38 = !{!9, !12, i64 16}
!39 = !{!9, !5, i64 360}
!40 = !{!9, !17, i64 380}
!41 = !{!9, !17, i64 384}
!42 = !{!9, !11, i64 88}
!43 = !{!9, !11, i64 152}
!44 = !{!9, !10, i64 0}
!45 = !{!9, !13, i64 24}
!46 = !{!47, !16, i64 8}
!47 = !{!"_ZTSN12_GLOBAL__N_115pj_healpix_dataE", !5, i64 0, !5, i64 4, !16, i64 8, !16, i64 16, !48, i64 24}
!48 = !{!"p1 double", !11, i64 0}
!49 = !{!9, !16, i64 216}
!50 = !{!9, !16, i64 288}
!51 = !{!47, !48, i64 24}
!52 = !{!47, !16, i64 16}
!53 = !{!9, !16, i64 168}
!54 = !{!9, !11, i64 104}
!55 = !{!9, !11, i64 112}
!56 = !{!47, !5, i64 0}
!57 = !{!47, !5, i64 4}
!58 = !{!9, !16, i64 184}
!59 = !{!16, !16, i64 0}
!60 = distinct !{!60, !61}
!61 = !{!"llvm.loop.mustprogress"}
end_hunk_1
