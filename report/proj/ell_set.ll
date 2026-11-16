Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proj/original/ell_set?download=true
inline.NumInlined: 53
inline.NumDeleted: 38
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZL10ellps_sizeP8PJconsts:bb.a
  tail call void @free(ptr noundef %i.b) #13
  store ptr null, ptr %i.a, align 8, !tbaa !38
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.d = load double, ptr %i.c, align 8, !tbaa !46
  %i.e = fcmp oeq double %i.d, 0.000000e+00
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !42   ; 3 uses
  %.not13.i = icmp eq ptr %i.g, null
  br i1 %.not13.i, label %.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.critedge12.i
  %.014.i = phi ptr [ %i.l, %.critedge12.i ], [ %i.g, %bb.a ] ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.014.i, i64 9
  %lhsc = load i8, ptr %i.h, align 1
  %i.i = icmp eq i8 %lhsc, 82
  br i1 %i.i, label %bb.b, label %.critedge12.i

bb.b:                                             ; preds = %.lr.ph.i
  %i.j = getelementptr inbounds nuw i8, ptr %.014.i, i64 10
  %i.k = load i8, ptr %i.j, align 1, !tbaa !43
  switch i8 %i.k, label %.critedge12.i [
    i8 61, label %_ZL14pj_param_valueP8ARG_list.exit
    i8 0, label %_ZL14pj_param_valueP8ARG_list.exit
  ]

.critedge12.i:                                    ; preds = %bb.b, %.lr.ph.i
  %i.l = load ptr, ptr %.014.i, align 8, !tbaa !44 ; 2 uses
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %.lr.ph.i34, label %.lr.ph.i, !llvm.loop !0

.lr.ph.i34:                                       ; preds = %.critedge12.i, %.critedge12.i36
  %.014.i35 = phi ptr [ %i.q, %.critedge12.i36 ], [ %i.g, %.critedge12.i ] ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.014.i35, i64 9
  %lhsc45 = load i8, ptr %i.m, align 1
  %i.n = icmp eq i8 %lhsc45, 97
  br i1 %i.n, label %bb.c, label %.critedge12.i36

bb.c:                                             ; preds = %.lr.ph.i34
  %i.o = getelementptr inbounds nuw i8, ptr %.014.i35, i64 10
  %i.p = load i8, ptr %i.o, align 1, !tbaa !43
  switch i8 %i.p, label %.critedge12.i36 [
    i8 61, label %_ZL14pj_param_valueP8ARG_list.exit
    i8 0, label %_ZL14pj_param_valueP8ARG_list.exit
  ]

.critedge12.i36:                                  ; preds = %bb.c, %.lr.ph.i34
  %i.q = load ptr, ptr %.014.i35, align 8, !tbaa !44 ; 2 uses
  %.not.i37 = icmp eq ptr %i.q, null
  br i1 %.not.i37, label %.thread, label %.lr.ph.i34, !llvm.loop !0

.thread:                                          ; preds = %.critedge12.i36, %bb.a
  br i1 %i.e, label %bb.d, label %bb.l

bb.d:                                             ; preds = %.thread
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.s = load i32, ptr %i.r, align 8, !tbaa !61
  %.not = icmp eq i32 %i.s, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ptr, ...) @_Z14proj_log_errorPK8PJconstsPKcz(ptr noundef nonnull %0, ptr noundef nonnull @.str.9)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.t = tail call i32 @proj_errno_set(ptr noundef nonnull %0, i32 noundef 1026)
  br label %bb.l

_ZL14pj_param_valueP8ARG_list.exit:               ; preds = %bb.b, %bb.b, %bb.c, %bb.c
  %.029 = phi ptr [ %.014.i35, %bb.c ], [ %.014.i35, %bb.c ], [ %.014.i, %bb.b ], [ %.014.i, %bb.b ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.029, i64 9 ; 4 uses
  %i.v = tail call noundef ptr @_Z9pj_strdupPKc(ptr noundef nonnull %i.u)
  store ptr %i.v, ptr %i.a, align 8, !tbaa !38
  %i.w = getelementptr inbounds nuw i8, ptr %.029, i64 8
  store i8 1, ptr %i.w, align 8, !tbaa !43
  %i.x = tail call noundef ptr @strchr(ptr noundef nonnull readonly dereferenceable(1) %i.u, i32 noundef 61) #14 ; 2 uses
  %.not.i40 = icmp eq ptr %i.x, null
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  %i.z = select i1 %.not.i40, ptr %i.u, ptr %i.y
  %i.aa = tail call noundef double @_Z7pj_atofPKc(ptr noundef nonnull %i.z) ; 4 uses
  store double %i.aa, ptr %i.c, align 8, !tbaa !46
  %i.ab = fcmp ugt double %i.aa, 0.000000e+00
  br i1 %i.ab, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZL14pj_param_valueP8ARG_list.exit
  tail call void (ptr, ptr, ...) @_Z14proj_log_errorPK8PJconstsPKcz(ptr noundef nonnull %0, ptr noundef nonnull @.str.10)
  %i.ac = tail call i32 @proj_errno_set(ptr noundef nonnull %0, i32 noundef 1027)
  br label %bb.l

bb.h:                                             ; preds = %_ZL14pj_param_valueP8ARG_list.exit
  %i.ad = fcmp oeq double %i.aa, +inf
  br i1 %i.ad, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, ptr, ...) @_Z14proj_log_errorPK8PJconstsPKcz(ptr noundef nonnull %0, ptr noundef nonnull @.str.10)
  %i.ae = tail call i32 @proj_errno_set(ptr noundef nonnull %0, i32 noundef 1027)
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.af = load i8, ptr %i.u, align 1, !tbaa !43
  %i.ag = icmp eq i8 %i.af, 82
  br i1 %i.ag, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 296
  store double 0.000000e+00, ptr %i.ah, align 8, !tbaa !50
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 272
  store double 0.000000e+00, ptr %i.aj, align 8, !tbaa !49
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 176
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, i8 0, i64 16, i1 false)
  store double %i.aa, ptr %i.ak, align 8, !tbaa !51
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k, %.thread, %bb.i, %bb.g, %bb.f
  %.030 = phi i32 [ 0, %.thread ], [ %i.t, %bb.f ], [ %i.ac, %bb.g ], [ %i.ae, %bb.i ], [ 0, %bb.k ], [ 0, %bb.j ]
  ret i32 %.030
}

; Function Attrs: mustprogress uwtable
define hidden noundef range(i32 0, 1028) i32 @_Z24pj_calc_ellipsoid_paramsP8PJconstsdd(ptr noundef initializes((168, 176), (200, 208), (216, 256)) %0, double noundef %1, double noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  store double %1, ptr %i.a, align 8, !tbaa !46
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 216
  store double %2, ptr %i.b, align 8, !tbaa !48
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.d = load double, ptr %i.c, align 8, !tbaa !52 ; 2 uses
  %i.e = fcmp oeq double %i.d, 0.000000e+00
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = tail call double @sqrt(double noundef %2) #13 ; 2 uses
  store double %i.f, ptr %i.c, align 8, !tbaa !52
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = phi double [ %i.f, %bb.b ], [ %i.d, %bb.a ]
  %i.h = tail call double @asin(double noundef %i.g) #13 ; 7 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 200
  store double %i.h, ptr %i.i, align 8, !tbaa !62
  %i.j = tail call double @tan(double noundef %i.h) #13 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 224
  store double %i.j, ptr %i.k, align 8, !tbaa !63
  %i.l = fmul double %i.j, %i.j
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 232
  store double %i.l, ptr %i.m, align 8, !tbaa !64
  %i.n = fcmp une double %i.h, 0.000000e+00
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.o = tail call double @sin(double noundef %i.h) #13 ; 3 uses
  %i.p = fneg double %i.o
  %i.q = tail call double @llvm.fmuladd.f64(double %i.p, double %i.o, double 2.000000e+00)
  %i.r = tail call double @sqrt(double noundef %i.q) #13
  %i.s = fdiv double %i.o, %i.r
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.t = phi double [ %i.s, %bb.d ], [ 0.000000e+00, %bb.c ] ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 240
  store double %i.t, ptr %i.u, align 8, !tbaa !65
  %i.v = fmul double %i.t, %i.t
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 248
  store double %i.v, ptr %i.w, align 8, !tbaa !66
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  %i.y = load double, ptr %i.x, align 8, !tbaa !49 ; 2 uses
  %i.z = fcmp oeq double %i.y, 0.000000e+00
  br i1 %i.z, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.aa = tail call double @cos(double noundef %i.h) #13
  %i.ab = fsub double 1.000000e+00, %i.aa         ; 2 uses
  store double %i.ab, ptr %i.x, align 8, !tbaa !49
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ac = phi double [ %i.ab, %bb.f ], [ %i.y, %bb.e ] ; 4 uses
  %i.ad = fcmp oge double %i.ac, 0.000000e+00
  %i.ae = fcmp olt double %i.ac, 1.000000e+00
  %or.cond = and i1 %i.ad, %i.ae
  br i1 %or.cond, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, ptr, ...) @_Z14proj_log_errorPK8PJconstsPKcz(ptr noundef nonnull %0, ptr noundef nonnull @.str.4)
  %i.af = tail call i32 @proj_errno_set(ptr noundef nonnull %0, i32 noundef 1027) ; 0 uses
  br label %bb.n

bb.i:                                             ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.ah = tail call double @cos(double noundef %i.h) #13
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.aj = insertelement <2 x double> poison, double %i.ac, i64 0
  %i.ak = fmul double %i.h, 5.000000e-01
  %i.al = tail call double @tan(double noundef %i.ak) #13
  %i.am = tail call noundef double @pow(double noundef %i.al, double noundef 2.000000e+00) #13 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 288
  store double %i.am, ptr %i.an, align 8, !tbaa !67
  %i.ao = insertelement <2 x double> poison, double %i.ah, i64 0
  %i.ap = insertelement <2 x double> %i.ao, double %i.am, i64 1 ; 2 uses
  %i.aq = fcmp une <2 x double> %i.ap, zeroinitializer
  %i.ar = fdiv <2 x double> splat (double 1.000000e+00), %i.ap ; 2 uses
  %i.as = fadd <2 x double> %i.ar, <double -1.000000e+00, double poison>
  %3 = shufflevector <2 x double> %i.as, <2 x double> %i.ar, <2 x i32> <i32 0, i32 3>
  %i.at = select <2 x i1> %i.aq, <2 x double> %3, <2 x double> <double 0.000000e+00, double +inf> ; 3 uses
  %i.au = extractelement <2 x double> %i.at, i64 0
  store double %i.au, ptr %i.ai, align 8, !tbaa !68
  %i.av = shufflevector <2 x double> %i.aj, <2 x double> %i.at, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.aw = fcmp une <2 x double> %i.av, zeroinitializer
  %i.ax = fdiv <2 x double> splat (double 1.000000e+00), %i.av
  %i.ay = select <2 x i1> %i.aw, <2 x double> %i.ax, <2 x double> splat (double +inf)
  store <2 x double> %i.ay, ptr %i.ag, align 8, !tbaa !47
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.ba = extractelement <2 x double> %i.at, i64 1
  store double %i.ba, ptr %i.az, align 8, !tbaa !69
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !51 ; 2 uses
  %i.bd = fcmp oeq double %i.bc, 0.000000e+00
  br i1 %i.bd, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.be = fsub nnan double 1.000000e+00, %i.ac
  %i.bf = fmul double %1, %i.be                   ; 2 uses
  store double %i.bf, ptr %i.bb, align 8, !tbaa !51
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.bg = phi double [ %i.bf, %bb.j ], [ %i.bc, %bb.i ]
  %i.bh = insertelement <2 x double> poison, double %1, i64 0
  %i.bi = insertelement <2 x double> %i.bh, double %i.bg, i64 1
  %i.bj = fdiv <2 x double> splat (double 1.000000e+00), %i.bi
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 184
  store <2 x double> %i.bj, ptr %i.bk, align 8, !tbaa !47
  %i.bl = fsub double 1.000000e+00, %2            ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 256
  store double %i.bl, ptr %i.bm, align 8, !tbaa !70
  %i.bn = fcmp oeq double %i.bl, 0.000000e+00
  br i1 %i.bn, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  tail call void (ptr, ptr, ...) @_Z14proj_log_errorPK8PJconstsPKcz(ptr noundef nonnull %0, ptr noundef nonnull @.str.4)
  %i.bo = tail call i32 @proj_errno_set(ptr noundef nonnull %0, i32 noundef 1027) ; 0 uses
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.bp = fdiv double 1.000000e+00, %i.bl
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 264
  store double %i.bp, ptr %i.bq, align 8, !tbaa !71
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.h
  %.0 = phi i32 [ 1027, %bb.l ], [ 0, %bb.m ], [ 1027, %bb.h ]
  ret i32 %.0
}

declare i32 @proj_errno(ptr noundef) local_unnamed_addr #2

declare i32 @proj_errno_restore(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define internal fastcc noundef i32 @_ZL11ellps_shapeP8PJconsts(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 7 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !39
  tail call void @free(ptr noundef %i.b) #13
  store ptr null, ptr %i.a, align 8, !tbaa !39
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !42   ; 6 uses
  %.not13.i = icmp eq ptr %i.d, null
  br i1 %.not13.i, label %.split124, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.critedge12.i
  %.014.i = phi ptr [ %i.j, %.critedge12.i ], [ %i.d, %bb.a ] ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.014.i, i64 9
  %i.f = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.e, ptr noundef nonnull readonly dereferenceable(3) @.str.11, i64 noundef 2) #14
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.b, label %.critedge12.i

bb.b:                                             ; preds = %.lr.ph.i
  %i.h = getelementptr inbounds nuw i8, ptr %.014.i, i64 11
  %i.i = load i8, ptr %i.h, align 1, !tbaa !43
  switch i8 %i.i, label %.critedge12.i [
    i8 61, label %_ZL14pj_param_valueP8ARG_list.exit
    i8 0, label %_ZL14pj_param_valueP8ARG_list.exit
  ]

.critedge12.i:                                    ; preds = %bb.b, %.lr.ph.i
  %i.j = load ptr, ptr %.014.i, align 8, !tbaa !44 ; 2 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %.lr.ph.i.1, label %.lr.ph.i, !llvm.loop !0

.lr.ph.i.1:                                       ; preds = %.critedge12.i, %.critedge12.i.1
  %.014.i.1 = phi ptr [ %i.o, %.critedge12.i.1 ], [ %i.d, %.critedge12.i ] ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.014.i.1, i64 9
  %lhsc = load i8, ptr %i.k, align 1
  %i.l = icmp eq i8 %lhsc, 102
  br i1 %i.l, label %bb.c, label %.critedge12.i.1

bb.c:                                             ; preds = %.lr.ph.i.1
  %i.m = getelementptr inbounds nuw i8, ptr %.014.i.1, i64 10
  %i.n = load i8, ptr %i.m, align 1, !tbaa !43
  switch i8 %i.n, label %.critedge12.i.1 [
    i8 61, label %_ZL14pj_param_valueP8ARG_list.exit105
    i8 0, label %_ZL14pj_param_valueP8ARG_list.exit105
  ]

.critedge12.i.1:                                  ; preds = %bb.c, %.lr.ph.i.1
  %i.o = load ptr, ptr %.014.i.1, align 8, !tbaa !44 ; 2 uses
  %.not.i.1 = icmp eq ptr %i.o, null
  br i1 %.not.i.1, label %.lr.ph.i.2, label %.lr.ph.i.1, !llvm.loop !0

.lr.ph.i.2:                                       ; preds = %.critedge12.i.1, %.critedge12.i.2
  %.014.i.2 = phi ptr [ %i.u, %.critedge12.i.2 ], [ %i.d, %.critedge12.i.1 ] ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.014.i.2, i64 9
  %i.q = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.p, ptr noundef nonnull readonly dereferenceable(3) @.str.13, i64 noundef 2) #14
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.d, label %.critedge12.i.2

bb.d:                                             ; preds = %.lr.ph.i.2
  %i.s = getelementptr inbounds nuw i8, ptr %.014.i.2, i64 11
  %i.t = load i8, ptr %i.s, align 1, !tbaa !43
  switch i8 %i.t, label %.critedge12.i.2 [
    i8 61, label %_ZL14pj_param_valueP8ARG_list.exit108
    i8 0, label %_ZL14pj_param_valueP8ARG_list.exit108
  ]

.critedge12.i.2:                                  ; preds = %bb.d, %.lr.ph.i.2
  %i.u = load ptr, ptr %.014.i.2, align 8, !tbaa !44 ; 2 uses
  %.not.i.2 = icmp eq ptr %i.u, null
  br i1 %.not.i.2, label %.lr.ph.i.3, label %.lr.ph.i.2, !llvm.loop !0

.lr.ph.i.3:                                       ; preds = %.critedge12.i.2, %.critedge12.i.3
  %.014.i.3 = phi ptr [ %i.z, %.critedge12.i.3 ], [ %i.d, %.critedge12.i.2 ] ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.014.i.3, i64 9
  %lhsc149 = load i8, ptr %i.v, align 1
  %i.w = icmp eq i8 %lhsc149, 101
  br i1 %i.w, label %bb.e, label %.critedge12.i.3

bb.e:                                             ; preds = %.lr.ph.i.3
  %i.x = getelementptr inbounds nuw i8, ptr %.014.i.3, i64 10
  %i.y = load i8, ptr %i.x, align 1, !tbaa !43
  switch i8 %i.y, label %.critedge12.i.3 [
    i8 61, label %_ZL14pj_param_valueP8ARG_list.exit111
    i8 0, label %_ZL14pj_param_valueP8ARG_list.exit111
  ]

.critedge12.i.3:                                  ; preds = %bb.e, %.lr.ph.i.3
  %i.z = load ptr, ptr %.014.i.3, align 8, !tbaa !44 ; 2 uses
  %.not.i.3 = icmp eq ptr %i.z, null
  br i1 %.not.i.3, label %.lr.ph.i.4, label %.lr.ph.i.3, !llvm.loop !0

.lr.ph.i.4:                                       ; preds = %.critedge12.i.3, %.critedge12.i.4
  %.014.i.4 = phi ptr [ %i.ae, %.critedge12.i.4 ], [ %i.d, %.critedge12.i.3 ] ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.014.i.4, i64 9
  %lhsc150 = load i8, ptr %i.aa, align 1
  %i.ab = icmp eq i8 %lhsc150, 98
  br i1 %i.ab, label %bb.f, label %.critedge12.i.4

bb.f:                                             ; preds = %.lr.ph.i.4
  %i.ac = getelementptr inbounds nuw i8, ptr %.014.i.4, i64 10
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !43
  switch i8 %i.ad, label %.critedge12.i.4 [
    i8 61, label %_ZL14pj_param_valueP8ARG_list.exit114
    i8 0, label %_ZL14pj_param_valueP8ARG_list.exit114
  ]

.critedge12.i.4:                                  ; preds = %bb.f, %.lr.ph.i.4
  %i.ae = load ptr, ptr %.014.i.4, align 8, !tbaa !44 ; 2 uses
  %.not.i.4 = icmp eq ptr %i.ae, null
  br i1 %.not.i.4, label %.split124, label %.lr.ph.i.4, !llvm.loop !0

.split124:                                        ; preds = %.critedge12.i.4, %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.ag = load double, ptr %i.af, align 8, !tbaa !48
  %i.ah = fcmp une double %i.ag, 0.000000e+00
  br i1 %i.ah, label %bb.s, label %bb.g

bb.g:                                             ; preds = %.split124
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 272
  store double 0.000000e+00, ptr %i.ai, align 8, !tbaa !49
  store double 0.000000e+00, ptr %i.af, align 8, !tbaa !48
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !46
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 176
  store double %i.ak, ptr %i.al, align 8, !tbaa !51
  br label %bb.s

_ZL14pj_param_valueP8ARG_list.exit:               ; preds = %bb.b, %bb.b
  %i.am = getelementptr inbounds nuw i8, ptr %.014.i, i64 9 ; 3 uses
  %i.an = tail call noundef ptr @_Z9pj_strdupPKc(ptr noundef nonnull %i.am)
  store ptr %i.an, ptr %i.a, align 8, !tbaa !39
  %i.ao = getelementptr inbounds nuw i8, ptr %.014.i, i64 8
  store i8 1, ptr %i.ao, align 8, !tbaa !43
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  store double 0.000000e+00, ptr %i.ap, align 8, !tbaa !50
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 176
  store double 0.000000e+00, ptr %i.ar, align 8, !tbaa !51
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  store double 0.000000e+00, ptr %i.as, align 8, !tbaa !49
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aq, i8 0, i64 16, i1 false)
  %i.at = tail call noundef ptr @strchr(ptr noundef nonnull readonly dereferenceable(1) %i.am, i32 noundef 61) #14 ; 2 uses
  %.not.i102 = icmp eq ptr %i.at, null
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 1
  %i.av = select i1 %.not.i102, ptr %i.am, ptr %i.au
end_hunk_0
