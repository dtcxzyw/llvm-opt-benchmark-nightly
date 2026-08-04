inline.NumInlined: 17
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@pj_adams_ws1:bb.a
  %i.a = tail call noalias dereferenceable_or_null(24) ptr @calloc(i64 noundef 1, i64 noundef 24) #7 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = tail call noundef ptr @_Z21pj_default_destructorP8PJconstsi(ptr noundef nonnull %0, i32 noundef 4096)
  br label %_Z38pj_projection_specific_setup_adams_ws1P8PJconsts.exit

bb.d:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.a, ptr %i.d, align 8, !tbaa !8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 216
  store double 0.000000e+00, ptr %i.e, align 8, !tbaa !38
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr @_ZL13adams_forward5PJ_LPP8PJconsts, ptr %i.f, align 8, !tbaa !39
  store i32 3, ptr %i.a, align 8, !tbaa !45
  br label %_Z38pj_projection_specific_setup_adams_ws1P8PJconsts.exit

bb.e:                                             ; preds = %bb.a
  %i.g = tail call noundef ptr @_Z6pj_newv()      ; 7 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %_Z38pj_projection_specific_setup_adams_ws1P8PJconsts.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @.str.3, ptr %i.i, align 8, !tbaa !40
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr @_ZL13des_adams_ws1, ptr %i.j, align 8, !tbaa !41
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 360
  store i32 1, ptr %i.k, align 8, !tbaa !42
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 380
  store i32 4, ptr %i.l, align 4, !tbaa !43
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 384
  store i32 1, ptr %i.m, align 8, !tbaa !44
  br label %_Z38pj_projection_specific_setup_adams_ws1P8PJconsts.exit

_Z38pj_projection_specific_setup_adams_ws1P8PJconsts.exit: ; preds = %bb.d, %bb.c, %bb.e, %bb.f
  %.0 = phi ptr [ null, %bb.e ], [ %i.g, %bb.f ], [ %i.c, %bb.c ], [ %0, %bb.d ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_Z38pj_projection_specific_setup_adams_ws1P8PJconsts(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(24) ptr @calloc(i64 noundef 1, i64 noundef 24) #7 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef ptr @_Z21pj_default_destructorP8PJconstsi(ptr noundef %0, i32 noundef 4096)
  br label %_ZL14pj_adams_setupP8PJconstsN12_GLOBAL__N_115projection_typeE.exit

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.a, ptr %i.d, align 8, !tbaa !8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 216
  store double 0.000000e+00, ptr %i.e, align 8, !tbaa !38
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr @_ZL13adams_forward5PJ_LPP8PJconsts, ptr %i.f, align 8, !tbaa !39
  store i32 3, ptr %i.a, align 8, !tbaa !45
  br label %_ZL14pj_adams_setupP8PJconstsN12_GLOBAL__N_115projection_typeE.exit

_ZL14pj_adams_setupP8PJconstsN12_GLOBAL__N_115projection_typeE.exit: ; preds = %bb.b, %bb.c
  %.4.i = phi ptr [ %i.c, %bb.b ], [ %0, %bb.c ]
  ret ptr %.4.i
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @pj_adams_ws2(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noalias dereferenceable_or_null(24) ptr @calloc(i64 noundef 1, i64 noundef 24) #7 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = tail call noundef ptr @_Z21pj_default_destructorP8PJconstsi(ptr noundef nonnull %0, i32 noundef 4096)
  br label %_Z38pj_projection_specific_setup_adams_ws2P8PJconsts.exit

bb.d:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.a, ptr %i.d, align 8, !tbaa !8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 216
  store double 0.000000e+00, ptr %i.e, align 8, !tbaa !38
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr @_ZL13adams_forward5PJ_LPP8PJconsts, ptr %i.f, align 8, !tbaa !39
  store i32 4, ptr %i.a, align 8, !tbaa !45
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr @_ZL13adams_inverse5PJ_XYP8PJconsts, ptr %i.g, align 8, !tbaa !47
  br label %_Z38pj_projection_specific_setup_adams_ws2P8PJconsts.exit

bb.e:                                             ; preds = %bb.a
  %i.h = tail call noundef ptr @_Z6pj_newv()      ; 7 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %_Z38pj_projection_specific_setup_adams_ws2P8PJconsts.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr @.str.4, ptr %i.j, align 8, !tbaa !40
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr @_ZL13des_adams_ws2, ptr %i.k, align 8, !tbaa !41
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 360
  store i32 1, ptr %i.l, align 8, !tbaa !42
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 380
  store i32 4, ptr %i.m, align 4, !tbaa !43
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 384
  store i32 1, ptr %i.n, align 8, !tbaa !44
  br label %_Z38pj_projection_specific_setup_adams_ws2P8PJconsts.exit

_Z38pj_projection_specific_setup_adams_ws2P8PJconsts.exit: ; preds = %bb.d, %bb.c, %bb.e, %bb.f
  %.0 = phi ptr [ null, %bb.e ], [ %i.h, %bb.f ], [ %i.c, %bb.c ], [ %0, %bb.d ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_Z38pj_projection_specific_setup_adams_ws2P8PJconsts(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(24) ptr @calloc(i64 noundef 1, i64 noundef 24) #7 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef ptr @_Z21pj_default_destructorP8PJconstsi(ptr noundef %0, i32 noundef 4096)
  br label %_ZL14pj_adams_setupP8PJconstsN12_GLOBAL__N_115projection_typeE.exit

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.a, ptr %i.d, align 8, !tbaa !8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 216
  store double 0.000000e+00, ptr %i.e, align 8, !tbaa !38
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr @_ZL13adams_forward5PJ_LPP8PJconsts, ptr %i.f, align 8, !tbaa !39
  store i32 4, ptr %i.a, align 8, !tbaa !45
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr @_ZL13adams_inverse5PJ_XYP8PJconsts, ptr %i.g, align 8, !tbaa !47
  br label %_ZL14pj_adams_setupP8PJconstsN12_GLOBAL__N_115projection_typeE.exit

_ZL14pj_adams_setupP8PJconstsN12_GLOBAL__N_115projection_typeE.exit: ; preds = %bb.b, %bb.c
  %.4.i = phi ptr [ %i.c, %bb.b ], [ %0, %bb.c ]
  ret ptr %.4.i
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #3

declare noundef ptr @_Z21pj_default_destructorP8PJconstsi(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define internal { double, double } @_ZL13adams_forward5PJ_LPP8PJconsts(double %0, double %1, ptr noundef %2) #0 {
bb.a:
  %3 = alloca %union.PJ_COORD, align 16           ; 4 uses
  %4 = alloca %union.PJ_COORD, align 16           ; 4 uses
  %5 = alloca %union.PJ_COORD, align 16           ; 4 uses
  %6 = alloca %union.PJ_COORD, align 16           ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8    ; 6 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !45
  switch i32 %i.c, label %bb.p [
    i32 0, label %bb.b
    i32 1, label %bb.g
    i32 2, label %bb.l
    i32 3, label %bb.n
    i32 4, label %bb.o
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = tail call double @llvm.fabs.f64(double %0)
  %i.e = fadd double %i.d, -1.000000e-09
  %i.f = fcmp ogt double %i.e, f0x3FF921FB54442D18
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = tail call i32 @proj_errno_set(ptr noundef nonnull %2, i32 noundef 2050) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  call void @_Z16proj_coord_errorv(ptr dead_on_unwind nonnull writable sret(%union.PJ_COORD) align 8 %3)
  %i.h = load <2 x double>, ptr %3, align 16, !tbaa !53
  %i.i = shufflevector <2 x double> %i.h, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  br label %.thread227

bb.d:                                             ; preds = %bb.b
  %i.j = tail call double @llvm.fabs.f64(double %1)
  %i.k = fadd double %i.j, f0xBFF921FB54442D18
  %i.l = tail call double @llvm.fabs.f64(double %i.k)
  %i.m = fcmp olt double %i.l, 1.000000e-09
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.n = fcmp olt double %1, 0.000000e+00
  %i.o = select i1 %i.n, double -1.854070e+00, double 1.854070e+00
  %i.p = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.o, i64 0
  br label %.thread227

bb.f:                                             ; preds = %bb.d
  %i.q = tail call double @sin(double noundef %0) #9
  %i.r = tail call double @sin(double noundef %1) #9 ; 2 uses
  %i.s = tail call double @cos(double noundef %1) #9
  %i.t = load ptr, ptr %2, align 8, !tbaa !48
  %i.u = fneg double %i.r
  %7 = insertelement <2 x double> poison, double %i.s, i64 0
  %8 = shufflevector <2 x double> %7, <2 x double> poison, <2 x i32> zeroinitializer
  %9 = insertelement <2 x double> poison, double %i.q, i64 0
  %10 = shufflevector <2 x double> %9, <2 x double> poison, <2 x i32> zeroinitializer
  %11 = insertelement <2 x double> poison, double %i.u, i64 0
  %12 = insertelement <2 x double> %11, double %i.r, i64 1
  %13 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %8, <2 x double> %10, <2 x double> %12)
  %14 = fmul <2 x double> %13, splat (double f0x3FE6A09E667F3BCD) ; 2 uses
  %15 = extractelement <2 x double> %14, i64 0
  %i.v = tail call noundef double @_Z5aacosP6pj_ctxd(ptr noundef %i.t, double noundef %15)
  %i.w = load ptr, ptr %2, align 8, !tbaa !48
  %16 = extractelement <2 x double> %14, i64 1
  %i.x = tail call noundef double @_Z5aacosP6pj_ctxd(ptr noundef %i.w, double noundef %16)
  %i.y = fcmp olt double %0, 0.000000e+00
  %i.z = fcmp olt double %1, 0.000000e+00
  br label %bb.p

bb.g:                                             ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !50 ; 2 uses
  %i.ac = icmp eq i32 %i.ab, 2
  %i.ad = fcmp olt double %1, -1.000000e-09
  %or.cond11 = select i1 %i.ac, i1 %i.ad, i1 false
  br i1 %or.cond11, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ae = tail call i32 @proj_errno_set(ptr noundef nonnull %2, i32 noundef 2050) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  call void @_Z16proj_coord_errorv(ptr dead_on_unwind nonnull writable sret(%union.PJ_COORD) align 8 %4)
  %i.af = load <2 x double>, ptr %4, align 16, !tbaa !53
  %i.ag = shufflevector <2 x double> %i.af, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  br label %.thread227

bb.i:                                             ; preds = %bb.g
  %i.ah = icmp eq i32 %i.ab, 3
  %i.ai = fcmp ogt double %1, -1.000000e-09
  %or.cond14 = select i1 %i.ah, i1 %i.ai, i1 false
  br i1 %or.cond14, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.aj = tail call i32 @proj_errno_set(ptr noundef nonnull %2, i32 noundef 2050) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  call void @_Z16proj_coord_errorv(ptr dead_on_unwind nonnull writable sret(%union.PJ_COORD) align 8 %5)
  %i.ak = load <2 x double>, ptr %5, align 16, !tbaa !53
  %i.al = shufflevector <2 x double> %i.ak, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  br label %.thread227

bb.k:                                             ; preds = %bb.i
  %i.am = tail call double @sin(double noundef %0) #9 ; 3 uses
  %i.an = tail call double @cos(double noundef %0) #9 ; 3 uses
  %i.ao = tail call double @cos(double noundef %1) #9 ; 2 uses
  %i.ap = load ptr, ptr %2, align 8, !tbaa !48
  %i.aq = fadd double %i.am, %i.an
  %i.ar = fmul double %i.ao, %i.aq
  %i.as = fmul double %i.ar, f0x3FE6A09E667F3BCD
  %i.at = tail call noundef double @_Z5aacosP6pj_ctxd(ptr noundef %i.ap, double noundef %i.as)
  %i.au = load ptr, ptr %2, align 8, !tbaa !48
  %i.av = fsub double %i.am, %i.an
  %i.aw = fmul double %i.ao, %i.av
  %i.ax = fmul double %i.aw, f0x3FE6A09E667F3BCD
  %i.ay = tail call noundef double @_Z5aacosP6pj_ctxd(ptr noundef %i.au, double noundef %i.ax)
  %i.az = fcmp olt double %i.am, 0.000000e+00
  %i.ba = fcmp ogt double %i.an, 0.000000e+00
  br label %bb.p

bb.l:                                             ; preds = %bb.a
  %i.bb = tail call double @sin(double noundef %1) #9 ; 2 uses
  %i.bc = tail call double @llvm.fabs.f64(double %0)
  %i.bd = fadd double %i.bc, -1.000000e-09
  %i.be = fcmp ule double %i.bd, f0x3FF921FB54442D18
  br i1 %i.be, label %.thread, label %bb.m

.thread:                                          ; preds = %bb.l
  %i.bf = tail call double @cos(double noundef %1) #9
  %i.bg = tail call double @sin(double noundef %0) #9
  %i.bh = fmul double %i.bf, %i.bg                ; 3 uses
  %i.bi = fadd double %i.bb, %i.bh
  %i.bj = fcmp olt double %i.bi, 0.000000e+00
  %i.bk = fcmp olt double %i.bb, %i.bh
  %i.bl = load ptr, ptr %2, align 8, !tbaa !48
  %i.bm = tail call noundef double @_Z5aacosP6pj_ctxd(ptr noundef %i.bl, double noundef %i.bh)
  %i.bn = fsub double f0x3FF921FB54442D18, %1
  br label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.bo = tail call i32 @proj_errno_set(ptr noundef nonnull %2, i32 noundef 2050) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #9
  call void @_Z16proj_coord_errorv(ptr dead_on_unwind nonnull writable sret(%union.PJ_COORD) align 8 %6)
  %i.bp = load <2 x double>, ptr %6, align 16, !tbaa !53
  %i.bq = shufflevector <2 x double> %i.bp, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  br label %.thread227

bb.n:                                             ; preds = %bb.a
  %i.br = fmul double %1, 5.000000e-01
  %i.bs = tail call double @tan(double noundef %i.br) #9 ; 3 uses
  %i.bt = load ptr, ptr %2, align 8, !tbaa !48
  %i.bu = tail call noundef double @_Z5aasinP6pj_ctxd(ptr noundef %i.bt, double noundef %i.bs)
  %i.bv = tail call double @cos(double noundef %i.bu) #9
  %i.bw = fmul double %0, 5.000000e-01
  %i.bx = tail call double @sin(double noundef %i.bw) #9
  %i.by = fmul double %i.bv, %i.bx                ; 2 uses
  %i.bz = load ptr, ptr %2, align 8, !tbaa !48
  %i.ca = fsub double %i.by, %i.bs
  %i.cb = fmul double %i.ca, f0x3FE6A09E667F3BCD
  %i.cc = tail call noundef double @_Z5aacosP6pj_ctxd(ptr noundef %i.bz, double noundef %i.cb)
  %i.cd = load ptr, ptr %2, align 8, !tbaa !48
  %i.ce = fadd double %i.bs, %i.by
  %i.cf = fmul double %i.ce, f0x3FE6A09E667F3BCD
  %i.cg = tail call noundef double @_Z5aacosP6pj_ctxd(ptr noundef %i.cd, double noundef %i.cf)
  %i.ch = fcmp olt double %0, 0.000000e+00
  %i.ci = fcmp olt double %1, 0.000000e+00
  br label %bb.p

bb.o:                                             ; preds = %bb.a
  %i.cj = fmul double %1, 5.000000e-01
  %i.ck = tail call double @tan(double noundef %i.cj) #9 ; 4 uses
  %i.cl = load ptr, ptr %2, align 8, !tbaa !48
  %i.cm = tail call noundef double @_Z5aasinP6pj_ctxd(ptr noundef %i.cl, double noundef %i.ck)
  %i.cn = tail call double @cos(double noundef %i.cm) #9
  %i.co = fmul double %0, 5.000000e-01
  %i.cp = tail call double @sin(double noundef %i.co) #9
  %i.cq = fmul double %i.cn, %i.cp                ; 3 uses
  %i.cr = fadd double %i.ck, %i.cq
  %i.cs = fcmp olt double %i.cr, 0.000000e+00
  %i.ct = fcmp olt double %i.ck, %i.cq
  %i.cu = load ptr, ptr %2, align 8, !tbaa !48
  %i.cv = tail call noundef double @_Z5aacosP6pj_ctxd(ptr noundef %i.cu, double noundef %i.ck)
  %i.cw = load ptr, ptr %2, align 8, !tbaa !48
  %i.cx = tail call noundef double @_Z5aacosP6pj_ctxd(ptr noundef %i.cw, double noundef %i.cq)
  br label %bb.p

bb.p:                                             ; preds = %.thread, %bb.o, %bb.n, %bb.k, %bb.f, %bb.a
  %.1188 = phi i1 [ false, %bb.a ], [ %i.z, %bb.f ], [ %i.ba, %bb.k ], [ %i.bk, %.thread ], [ %i.ci, %bb.n ], [ %i.ct, %bb.o ]
  %.1186 = phi i1 [ false, %bb.a ], [ %i.y, %bb.f ], [ %i.az, %bb.k ], [ %i.bj, %.thread ], [ %i.ch, %bb.n ], [ %i.cs, %bb.o ]
  %.1184 = phi double [ 0.000000e+00, %bb.a ], [ %i.x, %bb.f ], [ %i.ay, %bb.k ], [ %i.bn, %.thread ], [ %i.cg, %bb.n ], [ %i.cv, %bb.o ] ; 2 uses
  %.1 = phi double [ 0.000000e+00, %bb.a ], [ %i.v, %bb.f ], [ %i.at, %bb.k ], [ %i.bm, %.thread ], [ %i.cc, %bb.n ], [ %i.cx, %bb.o ] ; 2 uses
  %i.cy = load ptr, ptr %2, align 8, !tbaa !48
  %i.cz = fadd double %.1184, %.1
  %i.da = tail call double @cos(double noundef %i.cz) #9 ; 2 uses
  %i.db = fcmp olt double %i.da, 0.000000e+00
  %.sroa.speculated202 = select i1 %i.db, double %i.da, double 0.000000e+00
  %i.dc = fadd double %.sroa.speculated202, 1.000000e+00
  %i.dd = tail call double @sqrt(double noundef %i.dc) #9
  %i.de = tail call noundef double @_Z5aasinP6pj_ctxd(ptr noundef %i.cy, double noundef %i.dd)
  %i.df = insertelement <2 x i1> poison, i1 %.1188, i64 0
  %i.dg = insertelement <2 x i1> %i.df, i1 %.1186, i64 1
  %i.dh = freeze <2 x i1> %i.dg
  %i.di = load ptr, ptr %2, align 8, !tbaa !48
  %i.dj = fsub double %.1, %.1184
  %i.dk = tail call double @cos(double noundef %i.dj) #9 ; 2 uses
  %i.dl = fcmp ogt double %i.dk, 0.000000e+00
  %.sroa.speculated = select i1 %i.dl, double %i.dk, double 0.000000e+00
  %i.dm = fsub double 1.000000e+00, %.sroa.speculated
  %i.dn = tail call double @llvm.fabs.f64(double %i.dm)
  %sqrt = tail call double @llvm.sqrt.f64(double %i.dn)
  %i.do = tail call noundef double @_Z5aasinP6pj_ctxd(ptr noundef %i.di, double noundef %sqrt)
  %i.dp = insertelement <2 x double> poison, double %i.do, i64 0
  %i.dq = insertelement <2 x double> %i.dp, double %i.de, i64 1 ; 2 uses
  %i.dr = fneg <2 x double> %i.dq
  %i.ds = select <2 x i1> %i.dh, <2 x double> %i.dr, <2 x double> %i.dq ; 2 uses
  %i.dt = fmul <2 x double> %i.ds, splat (double f0x3FE45F306DC9C883) ; 2 uses
  %i.du = fmul <2 x double> %i.dt, splat (double 2.000000e+00)
  %i.dv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.du, <2 x double> %i.dt, <2 x double> splat (double -1.000000e+00)) ; 2 uses
  %i.dw = fmul <2 x double> %i.dv, splat (double 2.000000e+00) ; 7 uses
  %i.dx = fmul <2 x double> %i.dw, zeroinitializer
  %i.dy = fadd <2 x double> %i.dx, splat (double f0xBEACD0197C801E71) ; 2 uses
  %i.dz = fmul <2 x double> %i.dw, %i.dy
  %i.ea = fadd <2 x double> %i.dz, splat (double f0x3E8B3472B443B2B5) ; 2 uses
  %i.eb = fneg <2 x double> %i.dy
  %i.ec = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dw, <2 x double> %i.ea, <2 x double> %i.eb)
  %i.ed = fadd <2 x double> %i.ec, splat (double f0x3F00687C061BD167) ; 2 uses
  %i.ee = fneg <2 x double> %i.ea
  %i.ef = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dw, <2 x double> %i.ed, <2 x double> %i.ee)
  %i.eg = fadd <2 x double> %i.ef, splat (double f0x3F0BCED673156376) ; 2 uses
  %i.eh = fneg <2 x double> %i.ed
  %i.ei = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dw, <2 x double> %i.eg, <2 x double> %i.eh)
  %i.ej = fadd <2 x double> %i.ei, splat (double f0xBF54FAA840E59820) ; 2 uses
  %i.ek = fneg <2 x double> %i.eg
  %i.el = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dw, <2 x double> %i.ej, <2 x double> %i.ek)
  %i.em = fadd <2 x double> %i.el, splat (double f0xBF779356F0180731) ; 2 uses
  %i.en = fneg <2 x double> %i.ej
  %i.eo = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dw, <2 x double> %i.em, <2 x double> %i.en)
  %i.ep = fadd <2 x double> %i.eo, splat (double f0x3FB767522D0A0ABA)
  %i.eq = fneg <2 x double> %i.em
  %i.er = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dv, <2 x double> %i.ep, <2 x double> %i.eq)
  %i.es = fadd <2 x double> %i.er, splat (double f0x3FF188B1F952BB44)
  %i.et = fmul <2 x double> %i.ds, %i.es          ; 7 uses
  %i.eu = load i32, ptr %i.b, align 8, !tbaa !45
  switch i32 %i.eu, label %.thread227 [
    i32 1, label %bb.q
    i32 2, label %bb.ae
    i32 4, label %bb.ae
  ]

bb.q:                                             ; preds = %bb.p
  %i.ev = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !50 ; 3 uses
  %i.ex = icmp eq i32 %i.ew, 0                    ; 3 uses
  br i1 %i.ex, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ey = icmp eq i32 %i.ew, 1
  %i.ez = fcmp olt double %1, 0.000000e+00
  %or.cond17 = select i1 %i.ey, i1 %i.ez, i1 false
  br i1 %or.cond17, label %bb.t, label %bb.v

bb.s:                                             ; preds = %bb.q
  %.old16 = fcmp olt double %1, 0.000000e+00
  br i1 %.old16, label %bb.t, label %bb.v

end_hunk_0
