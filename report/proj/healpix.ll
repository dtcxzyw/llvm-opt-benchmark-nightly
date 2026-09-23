Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proj/original/healpix?download=true
inline.NumInlined: 36
inline.NumDeleted: 12
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZL18s_rhealpix_forward5PJ_LPP8PJconsts:bb.a
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
  %i.ap = insertelement <2 x double> poison, double %.sroa.3.0.i, i64 0
  %i.aq = insertelement <2 x double> %i.ap, double %.sroa.014.0.i, i64 1
  %i.ar = insertelement <2 x double> poison, double %.0.i.i, i64 0
  %i.as = insertelement <2 x double> %i.ar, double %.sroa.2136.0.ph.i, i64 1
  %i.at = fsub <2 x double> %i.aq, %i.as          ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.ax = sitofp i32 %i.an to double
  %i.ay = load double, ptr %i.aw, align 8, !tbaa !58
  %i.az = load double, ptr %i.av, align 16, !tbaa !58
  %i.ba = load double, ptr %i.au, align 8, !tbaa !58
  %i.bb = load double, ptr %i.ao, align 16, !tbaa !58
  %i.bc = insertelement <2 x double> poison, double %i.az, i64 0
  %i.bd = insertelement <2 x double> %i.bc, double %i.bb, i64 1
  %i.be = shufflevector <2 x double> %i.at, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.bf = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bd, <2 x double> %i.be, <2 x double> zeroinitializer)
  %i.bg = insertelement <2 x double> poison, double %i.ay, i64 0
  %i.bh = insertelement <2 x double> %i.bg, double %i.ba, i64 1
  %i.bi = shufflevector <2 x double> %i.at, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bh, <2 x double> %i.bi, <2 x double> %i.bf)
  %i.bk = tail call double @llvm.fmuladd.f64(double %i.ax, double f0x3FF921FB54442D18, double f0xC002D97C7F3321D2)
  %i.bl = insertelement <2 x double> poison, double %spec.select.i, i64 0
  %i.bm = insertelement <2 x double> %i.bl, double %i.bk, i64 1
  %i.bn = fadd <2 x double> %i.bm, %i.bj
  br label %_ZL12combine_capsddiii.exit

_ZL12combine_capsddiii.exit:                      ; preds = %bb.d, %_ZL16get_rotate_indexi.exit.i
  %i.bo = phi <2 x double> [ %i.bn, %_ZL16get_rotate_indexi.exit.i ], [ %i.ag, %bb.d ] ; 2 uses
  %i.bp = extractelement <2 x double> %i.bo, i64 1
  %.fca.0.insert.i9 = insertvalue { double, double } poison, double %i.bp, 0
  %i.bq = extractelement <2 x double> %i.bo, i64 0
  %.fca.1.insert.i10 = insertvalue { double, double } %.fca.0.insert.i9, double %i.bq, 1
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
  %i.z = fcmp oeq double %1, f0xBFF921FB54442D1D
  %or.cond51 = and i1 %i.i, %i.z
  %or.cond68 = or i1 %or.cond66, %or.cond51
  %i.aa = fcmp oeq double %1, f0xBFE921FB54442D21
  %or.cond52 = and i1 %i.g, %i.aa
  %or.cond70 = or i1 %or.cond68, %or.cond52
  %i.ab = fcmp oeq double %1, f0xBFF921FB54442D1D
  %or.cond53 = and i1 %i.e, %i.ab
  %or.cond72 = or i1 %or.cond70, %or.cond53
  br i1 %or.cond72, label %_ZL6pnpolyiPA2_ddd.exit, label %.preheader27.17

.preheader27.17:                                  ; preds = %.preheader27.11
  br i1 %i.c, label %bb.c, label %.preheader.preheader

bb.c:                                             ; preds = %.preheader27.17
  %i.ac = fcmp oeq double %1, f0xBFE921FB54442D18
  %i.ad = fcmp oeq double %1, f0x3FE921FB54442D18
  %or.cond54 = or i1 %i.ac, %i.ad
  br i1 %or.cond54, label %_ZL6pnpolyiPA2_ddd.exit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.c, %.preheader27.17
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %bb.i
  %indvars.iv60.i = phi i64 [ %indvars.iv.next61.i, %bb.i ], [ 1, %.preheader.preheader ] ; 2 uses
  %.sroa.09.058.i = phi double [ %i.ai, %bb.i ], [ f0xC00921FB54442D1A, %.preheader.preheader ] ; 4 uses
  %.sroa.9.057.i = phi double [ %i.ah, %bb.i ], [ f0x3FE921FB54442D18, %.preheader.preheader ] ; 6 uses
  %.056.i = phi i32 [ %.1.i, %bb.i ], [ 0, %.preheader.preheader ] ; 5 uses
  %i.ae = phi <2 x double> [ %i.ag, %bb.i ], [ <double f0xC00921FB54442D1A, double f0x3FE921FB54442D18>, %.preheader.preheader ]
  %i.af = getelementptr inbounds nuw [16 x i8], ptr @__const._ZL8in_imageddiii.healpixVertsJit, i64 %indvars.iv60.i
  %i.ag = load <2 x double>, ptr %i.af, align 16, !tbaa !58 ; 4 uses
  %i.ah = extractelement <2 x double> %i.ag, i64 1 ; 6 uses
  %i.ai = extractelement <2 x double> %i.ag, i64 0 ; 4 uses
  %i.aj = fcmp olt double %.sroa.9.057.i, %i.ah
  %i.ak = select i1 %i.aj, double %.sroa.9.057.i, double %i.ah
  %i.al = fcmp ogt double %1, %i.ak
  br i1 %i.al, label %bb.d, label %bb.i

bb.d:                                             ; preds = %.preheader
  %i.am = fcmp ogt double %.sroa.9.057.i, %i.ah
  %i.an = select i1 %i.am, double %.sroa.9.057.i, double %i.ah
  %i.ao = fcmp ugt double %1, %i.an
  br i1 %i.ao, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ap = fcmp ogt double %.sroa.09.058.i, %i.ai
  %i.aq = select i1 %i.ap, double %.sroa.09.058.i, double %i.ai
  %i.ar = fcmp ole double %0, %i.aq
  %i.as = fcmp une double %.sroa.9.057.i, %i.ah
  %or.cond.i = and i1 %i.as, %i.ar
  br i1 %or.cond.i, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.at = fcmp oeq double %.sroa.09.058.i, %i.ai
  br i1 %i.at, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.au = fsub double %1, %.sroa.9.057.i
  %i.av = fsub <2 x double> %i.ag, %i.ae          ; 2 uses
  %i.aw = extractelement <2 x double> %i.av, i64 0
  %i.ax = fmul double %i.au, %i.aw
  %i.ay = extractelement <2 x double> %i.av, i64 1
  %i.az = fdiv double %i.ax, %i.ay
  %i.ba = fadd double %.sroa.09.058.i, %i.az
  %i.bb = fcmp ugt double %0, %i.ba
  br i1 %i.bb, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.bc = add nsw i32 %.056.i, 1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.e, %bb.d, %.preheader
  %.1.i = phi i32 [ %i.bc, %bb.h ], [ %.056.i, %bb.g ], [ %.056.i, %.preheader ], [ %.056.i, %bb.e ], [ %.056.i, %bb.d ] ; 2 uses
  %indvars.iv.next61.i = add nuw nsw i64 %indvars.iv60.i, 1 ; 2 uses
  %exitcond64.not.i = icmp eq i64 %indvars.iv.next61.i, 19
  br i1 %exitcond64.not.i, label %bb.j, label %.preheader, !llvm.loop !60

bb.j:                                             ; preds = %bb.i
  %..i = and i32 %.1.i, 1
  br label %_ZL6pnpolyiPA2_ddd.exit

bb.k:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.bf = sitofp i32 %3 to double
  %i.bg = insertelement <2 x double> poison, double %i.bf, i64 0
  %i.bh = shufflevector <2 x double> %i.bg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bi = fadd <2 x double> %i.bh, <double -0.000000e+00, double 1.000000e+00>
  %i.bj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bi, <2 x double> splat (double f0x3FF921FB54442D18), <2 x double> splat (double f0xC00921FB54442D18)) ; 2 uses
  %i.bk = extractelement <2 x double> %i.bj, i64 0
  %i.bl = fadd double %i.bk, -1.000000e-15        ; 2 uses
  %i.bm = insertelement <4 x double> <double poison, double f0x3FE921FB54442D21, double poison, double f0x4002D97C7F3321D4>, double %i.bl, i64 0
  %i.bn = shufflevector <4 x double> %i.bm, <4 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 3>
  store <4 x double> %i.bn, ptr %i.bd, align 16, !tbaa !58
  %i.bo = extractelement <2 x double> %i.bj, i64 1
  %i.bp = fadd double %i.bo, 1.000000e-15         ; 3 uses
  store double %i.bp, ptr %i.be, align 16, !tbaa !58
  %5 = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store double f0x4002D97C7F3321D4, ptr %5, align 8, !tbaa !58
  %6 = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store double %i.bp, ptr %6, align 16, !tbaa !58
  %7 = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store <2 x double> <double f0x3FE921FB54442D21, double f0x400921FB54442D1A>, ptr %7, align 8, !tbaa !58
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store <2 x double> <double f0x3FE921FB54442D21, double f0x400921FB54442D1A>, ptr %i.bq, align 8, !tbaa !58
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.bs = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  %i.bt = sitofp i32 %4 to double
  %i.bu = insertelement <2 x double> poison, double %i.bt, i64 0
  %i.bv = shufflevector <2 x double> %i.bu, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bw = fadd <2 x double> %i.bv, <double 1.000000e+00, double -0.000000e+00>
  %i.bx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bw, <2 x double> splat (double f0x3FF921FB54442D18), <2 x double> splat (double f0xC00921FB54442D18)) ; 2 uses
  %i.by = extractelement <2 x double> %i.bx, i64 0
  %i.bz = fadd double %i.by, 1.000000e-15         ; 2 uses
  %i.ca = insertelement <4 x double> <double f0xBFE921FB54442D21, double poison, double f0xBFE921FB54442D21, double poison>, double %i.bz, i64 1
  %8 = shufflevector <4 x double> %i.ca, <4 x double> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  store <4 x double> %8, ptr %i.br, align 8, !tbaa !58
  %i.cb = extractelement <2 x double> %i.bx, i64 1
  %i.cc = fadd double %i.cb, -1.000000e-15        ; 2 uses
  %i.cd = insertelement <4 x double> <double f0xC002D97C7F3321D4, double poison, double f0xC002D97C7F3321D4, double poison>, double %i.cc, i64 1
  %9 = shufflevector <4 x double> %i.cd, <4 x double> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  store <4 x double> %9, ptr %i.bs, align 8, !tbaa !58
  %10 = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  store <2 x double> <double f0xBFE921FB54442D21, double f0xC00921FB54442D1A>, ptr %10, align 8, !tbaa !58
  %i.ce = getelementptr inbounds nuw i8, ptr %i.a, i64 184
  store double f0xBFE921FB54442D21, ptr %i.ce, align 8, !tbaa !58
  %i.cf = fcmp oeq double %0, f0xC00921FB54442D1A ; 2 uses
  %i.cg = fcmp oeq double %1, f0x3FE921FB54442D21
  %or.cond55 = and i1 %i.cf, %i.cg
  br i1 %or.cond55, label %_ZL6pnpolyiPA2_ddd.exit26, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ch = fcmp oeq double %0, %i.bl
  br i1 %i.ch, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ci = fcmp oeq double %1, f0x3FE921FB54442D21
  %i.cj = fcmp oeq double %1, f0x4002D97C7F3321D4
  %or.cond56 = or i1 %i.ci, %i.cj
  br i1 %or.cond56, label %_ZL6pnpolyiPA2_ddd.exit26, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ck = fcmp oeq double %0, %i.bp
  br i1 %i.ck, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.cl = fcmp oeq double %1, f0x4002D97C7F3321D4
  %i.cm = fcmp oeq double %1, f0x3FE921FB54442D21
  %or.cond57 = or i1 %i.cl, %i.cm
  br i1 %or.cond57, label %_ZL6pnpolyiPA2_ddd.exit26, label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.cn = fcmp oeq double %0, f0x400921FB54442D1A
  br i1 %i.cn, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.co = fcmp oeq double %1, f0x3FE921FB54442D21
  %i.cp = fcmp oeq double %1, f0xBFE921FB54442D21
  %or.cond58 = or i1 %i.co, %i.cp
  br i1 %or.cond58, label %_ZL6pnpolyiPA2_ddd.exit26, label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.cq = fcmp oeq double %0, %i.bz
  br i1 %i.cq, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cr = fcmp oeq double %1, f0xBFE921FB54442D21
  %i.cs = fcmp oeq double %1, f0xC002D97C7F3321D4
  %or.cond59 = or i1 %i.cr, %i.cs
  br i1 %or.cond59, label %_ZL6pnpolyiPA2_ddd.exit26, label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.ct = fcmp oeq double %0, %i.cc
  br i1 %i.ct, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.cu = fcmp oeq double %1, f0xC002D97C7F3321D4
  %i.cv = fcmp oeq double %1, f0xBFE921FB54442D21
  %or.cond60 = or i1 %i.cu, %i.cv
  br i1 %or.cond60, label %_ZL6pnpolyiPA2_ddd.exit26, label %.preheader28.preheader

bb.v:                                             ; preds = %bb.t
  %.old73 = fcmp oeq double %1, f0xBFE921FB54442D21
  %or.cond61.old = and i1 %i.cf, %.old73
  br i1 %or.cond61.old, label %_ZL6pnpolyiPA2_ddd.exit26, label %.preheader28.preheader

.preheader28.preheader:                           ; preds = %bb.v, %bb.u
  br label %.preheader28

.preheader28:                                     ; preds = %.preheader28.preheader, %bb.ab
  %indvars.iv60.i16 = phi i64 [ %indvars.iv.next61.i21, %bb.ab ], [ 1, %.preheader28.preheader ] ; 2 uses
  %.sroa.09.058.i17 = phi double [ %i.da, %bb.ab ], [ f0xC00921FB54442D1A, %.preheader28.preheader ] ; 4 uses
  %.sroa.9.057.i18 = phi double [ %i.cz, %bb.ab ], [ f0x3FE921FB54442D21, %.preheader28.preheader ] ; 6 uses
  %.056.i19 = phi i32 [ %.1.i20, %bb.ab ], [ 0, %.preheader28.preheader ] ; 5 uses
  %i.cw = phi <2 x double> [ %i.cy, %bb.ab ], [ <double f0xC00921FB54442D1A, double f0x3FE921FB54442D21>, %.preheader28.preheader ]
  %i.cx = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %indvars.iv60.i16
  %i.cy = load <2 x double>, ptr %i.cx, align 16, !tbaa !58 ; 4 uses
  %i.cz = extractelement <2 x double> %i.cy, i64 1 ; 6 uses
  %i.da = extractelement <2 x double> %i.cy, i64 0 ; 4 uses
  %i.db = fcmp olt double %.sroa.9.057.i18, %i.cz
  %i.dc = select i1 %i.db, double %.sroa.9.057.i18, double %i.cz
  %i.dd = fcmp ogt double %1, %i.dc
  br i1 %i.dd, label %bb.w, label %bb.ab

bb.w:                                             ; preds = %.preheader28
  %i.de = fcmp ogt double %.sroa.9.057.i18, %i.cz
  %i.df = select i1 %i.de, double %.sroa.9.057.i18, double %i.cz
  %i.dg = fcmp ugt double %1, %i.df
  br i1 %i.dg, label %bb.ab, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dh = fcmp ogt double %.sroa.09.058.i17, %i.da
  %i.di = select i1 %i.dh, double %.sroa.09.058.i17, double %i.da
  %i.dj = fcmp ole double %0, %i.di
  %i.dk = fcmp une double %.sroa.9.057.i18, %i.cz
  %or.cond.i25 = and i1 %i.dk, %i.dj
  br i1 %or.cond.i25, label %bb.y, label %bb.ab

bb.y:                                             ; preds = %bb.x
  %i.dl = fcmp oeq double %.sroa.09.058.i17, %i.da
  br i1 %i.dl, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dm = fsub double %1, %.sroa.9.057.i18
  %i.dn = fsub <2 x double> %i.cy, %i.cw          ; 2 uses
  %i.do = extractelement <2 x double> %i.dn, i64 0
  %i.dp = fmul double %i.dm, %i.do
  %i.dq = extractelement <2 x double> %i.dn, i64 1
  %i.dr = fdiv double %i.dp, %i.dq
  %i.ds = fadd double %.sroa.09.058.i17, %i.dr
  %i.dt = fcmp ugt double %0, %i.ds
  br i1 %i.dt, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.du = add nsw i32 %.056.i19, 1
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %bb.x, %bb.w, %.preheader28
  %.1.i20 = phi i32 [ %i.du, %bb.aa ], [ %.056.i19, %bb.z ], [ %.056.i19, %.preheader28 ], [ %.056.i19, %bb.x ], [ %.056.i19, %bb.w ] ; 2 uses
  %indvars.iv.next61.i21 = add nuw nsw i64 %indvars.iv60.i16, 1 ; 2 uses
  %exitcond64.not.i22 = icmp eq i64 %indvars.iv.next61.i21, 12
  br i1 %exitcond64.not.i22, label %bb.ac, label %.preheader28, !llvm.loop !60

bb.ac:                                            ; preds = %bb.ab
  %..i23 = and i32 %.1.i20, 1
  br label %_ZL6pnpolyiPA2_ddd.exit26

_ZL6pnpolyiPA2_ddd.exit26:                        ; preds = %bb.v, %bb.k, %bb.m, %bb.o, %bb.q, %bb.s, %bb.u, %bb.ac
  %.049.i24 = phi i32 [ %..i23, %bb.ac ], [ 1, %bb.v ], [ 1, %bb.m ], [ 1, %bb.u ], [ 1, %bb.o ], [ 1, %bb.s ], [ 1, %bb.k ], [ 1, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %_ZL6pnpolyiPA2_ddd.exit

_ZL6pnpolyiPA2_ddd.exit:                          ; preds = %.preheader27.11, %.preheader27.10, %.preheader27.7, %.preheader27.6, %.preheader27.5, %.preheader27.4, %.preheader27.3, %.preheader27.2, %.preheader27.1, %.preheader27.preheader, %bb.b, %bb.c, %bb.j, %_ZL6pnpolyiPA2_ddd.exit26
  %.0 = phi i32 [ %.049.i24, %_ZL6pnpolyiPA2_ddd.exit26 ], [ %..i, %bb.j ], [ 1, %.preheader27.1 ], [ 1, %bb.c ], [ 1, %.preheader27.6 ], [ 1, %.preheader27.5 ], [ 1, %.preheader27.4 ], [ 1, %.preheader27.3 ], [ 1, %.preheader27.2 ], [ 1, %.preheader27.11 ], [ 1, %.preheader27.10 ], [ 1, %.preheader27.preheader ], [ 1, %bb.b ], [ 1, %.preheader27.7 ]
  ret i32 %.0
}

declare void @_Z22proj_context_errno_setP6pj_ctxi(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal fastcc { double, double } @_ZL12combine_capsddiii(double noundef %0, double noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef range(i32 0, 2) %4) unnamed_addr #8 {
bb.a:
  %i.a = icmp eq i32 %4, 0
  %i.b = fcmp ogt double %1, f0x3FE921FB54442D18  ; 3 uses
  br i1 %i.a, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  br i1 %i.b, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = fcmp olt double %1, f0xBFE921FB54442D18
  %i.d = insertelement <2 x double> poison, double %0, i64 0
  %i.e = insertelement <2 x double> %i.d, double %1, i64 1
  br i1 %i.c, label %bb.d, label %_ZL7get_capddiii.exit

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0.i = phi double [ f0x3FF921FB54442D18, %bb.b ], [ f0xBFF921FB54442D18, %bb.c ] ; 14 uses
  %i.f = fcmp olt double %0, f0xBFF921FB54442D18
  br i1 %i.f, label %bb.ab, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = fcmp oge double %0, f0xBFF921FB54442D18
  %i.h = fcmp olt double %0, 0.000000e+00
  %or.cond.i = and i1 %i.g, %i.h
  br i1 %or.cond.i, label %bb.ab, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = fcmp oge double %0, 0.000000e+00
  %i.j = fcmp olt double %0, f0x3FF921FB54442D18
  %or.cond3.i = and i1 %i.i, %i.j
  br i1 %or.cond3.i, label %bb.ab, label %bb.g

bb.g:                                             ; preds = %bb.f
  br label %bb.ab

bb.h:                                             ; preds = %bb.a
  br i1 %i.b, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.k = fcmp olt double %1, f0xBFE921FB54442D18
  %i.l = insertelement <2 x double> poison, double %0, i64 0
  %i.m = insertelement <2 x double> %i.l, double %1, i64 1
  br i1 %i.k, label %bb.s, label %_ZL7get_capddiii.exit

bb.j:                                             ; preds = %bb.h
  %i.n = sitofp i32 %2 to double                  ; 2 uses
  %i.o = fneg double %i.n
  %i.p = insertelement <2 x double> poison, double %i.n, i64 0
  %i.q = insertelement <2 x double> %i.p, double %i.o, i64 1
  %i.r = insertelement <2 x double> <double f0xC002D97C7F3321D2, double poison>, double %0, i64 1
  %i.s = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.q, <2 x double> splat (double f0x3FF921FB54442D18), <2 x double> %i.r) ; 2 uses
  %i.t = extractelement <2 x double> %i.s, i64 1  ; 4 uses
  %i.u = extractelement <2 x double> %i.s, i64 0  ; 7 uses
  %i.v = fsub double f0xBFE921FB54442D18, %i.t    ; 2 uses
  %i.w = fadd double %i.v, -1.000000e-15
  %i.x = fcmp ult double %1, %i.w
  br i1 %i.x, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.y = fadd double %i.t, f0x400F6A7A2955385E
  %i.z = fadd double %i.y, -1.000000e-15
  %i.aa = fcmp olt double %1, %i.z
  br i1 %i.aa, label %bb.l, label %bb.m
end_hunk_0
