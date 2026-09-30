Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proj/original/topocentric?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.PJ_LPZ = type { double, double, double }
%struct.PJ_XYZ = type { double, double, double }

@_ZL15des_topocentric = internal constant [34 x i8] c"Geocentric/Topocentric conversion\00", align 16
@pj_s_topocentric = hidden local_unnamed_addr constant ptr @_ZL15des_topocentric, align 8
@.str = private unnamed_addr constant [12 x i8] c"topocentric\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"X_0\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"Y_0\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"Z_0\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"lon_0\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"lat_0\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"h_0\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"missing X_0 or lon_0\00", align 1
@.str.8 = private unnamed_addr constant [59 x i8] c"(X_0,Y_0,Z_0) and (lon_0,lat_0,h_0) are mutually exclusive\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"missing Y_0 and/or Z_0\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"missing lat_0\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"+proj=cart +a=1\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"dX_0\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"dY_0\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"dZ_0\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"dh_0\00", align 1

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @pj_topocentric(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef ptr @_Z40pj_projection_specific_setup_topocentricP8PJconsts(ptr noundef nonnull %0)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.b = tail call noundef ptr @_Z6pj_newv()      ; 7 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @.str, ptr %i.d, align 8, !tbaa !49
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr @_ZL15des_topocentric, ptr %i.e, align 8, !tbaa !50
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 360
  store i32 1, ptr %i.f, align 8, !tbaa !51
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 380
  store i32 4, ptr %i.g, align 4, !tbaa !37
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 384
  store i32 1, ptr %i.h, align 8, !tbaa !38
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.0 = phi ptr [ %i.a, %bb.b ], [ %i.b, %bb.d ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_Z40pj_projection_specific_setup_topocentricP8PJconsts(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.PJ_LPZ, align 8             ; 5 uses
  %2 = alloca %struct.PJ_XYZ, align 16            ; 3 uses
  %3 = alloca %struct.PJ_XYZ, align 16            ; 5 uses
  %4 = alloca %struct.PJ_LPZ, align 16            ; 3 uses
  %i.a = tail call noalias dereferenceable_or_null(56) ptr @calloc(i64 noundef 1, i64 noundef 56) #7 ; 12 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef ptr @_Z21pj_default_destructorP8PJconstsi(ptr noundef %0, i32 noundef 4096)
  br label %bb.q

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.a, ptr %i.d, align 8, !tbaa !39
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 10 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !52
  %i.g = tail call noundef ptr @_Z15pj_param_existsP8ARG_listPKc(ptr noundef %i.f, ptr noundef nonnull @.str.1)
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !52
  %i.i = tail call noundef ptr @_Z15pj_param_existsP8ARG_listPKc(ptr noundef %i.h, ptr noundef nonnull @.str.2)
  %i.j = load ptr, ptr %i.e, align 8, !tbaa !52
  %i.k = tail call noundef ptr @_Z15pj_param_existsP8ARG_listPKc(ptr noundef %i.j, ptr noundef nonnull @.str.3)
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !52
  %i.m = tail call noundef ptr @_Z15pj_param_existsP8ARG_listPKc(ptr noundef %i.l, ptr noundef nonnull @.str.4) ; 2 uses
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !52
  %i.o = tail call noundef ptr @_Z15pj_param_existsP8ARG_listPKc(ptr noundef %i.n, ptr noundef nonnull @.str.5) ; 2 uses
  %i.p = load ptr, ptr %i.e, align 8, !tbaa !52
  %i.q = tail call noundef ptr @_Z15pj_param_existsP8ARG_listPKc(ptr noundef %i.p, ptr noundef nonnull @.str.6)
  %i.r = icmp ne ptr %i.g, null                   ; 4 uses
  %i.s = icmp ne ptr %i.m, null                   ; 2 uses
  %or.cond = or i1 %i.r, %i.s
  br i1 %or.cond, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ptr, ...) @_Z14proj_log_errorPK8PJconstsPKcz(ptr noundef nonnull %0, ptr noundef nonnull @.str.7)
  %i.t = tail call noundef ptr @_Z21pj_default_destructorP8PJconstsi(ptr noundef nonnull %0, i32 noundef 1026)
  br label %bb.q

bb.e:                                             ; preds = %bb.c
  %i.u = icmp ne ptr %i.i, null                   ; 2 uses
  %or.cond3 = or i1 %i.r, %i.u
  %i.v = icmp ne ptr %i.k, null                   ; 2 uses
  %or.cond5 = or i1 %or.cond3, %i.v
  br i1 %or.cond5, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.w = icmp ne ptr %i.o, null
  %i.x = icmp ne ptr %i.q, null
  %i.y = or i1 %i.w, %i.x
  %or.cond9 = or i1 %i.s, %i.y
  br i1 %or.cond9, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, ptr, ...) @_Z14proj_log_errorPK8PJconstsPKcz(ptr noundef nonnull %0, ptr noundef nonnull @.str.8)
  %i.z = tail call noundef ptr @_Z21pj_default_destructorP8PJconstsi(ptr noundef nonnull %0, i32 noundef 1028)
  br label %bb.q

bb.h:                                             ; preds = %bb.f
  %.not = xor i1 %i.r, true
  %or.cond11 = and i1 %i.u, %i.v
  %or.cond99 = or i1 %or.cond11, %.not
  br i1 %or.cond99, label %.thread103, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, ptr, ...) @_Z14proj_log_errorPK8PJconstsPKcz(ptr noundef nonnull %0, ptr noundef nonnull @.str.9)
  %i.aa = tail call noundef ptr @_Z21pj_default_destructorP8PJconstsi(ptr noundef nonnull %0, i32 noundef 1026)
  br label %bb.q

bb.j:                                             ; preds = %bb.e
  %i.ab = icmp eq ptr %i.m, null
  %5 = icmp ne ptr %i.o, null
  %or.cond13 = or i1 %i.ab, %5
  br i1 %or.cond13, label %.thread103, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void (ptr, ptr, ...) @_Z14proj_log_errorPK8PJconstsPKcz(ptr noundef nonnull %0, ptr noundef nonnull @.str.10)
  %i.ac = tail call noundef ptr @_Z21pj_default_destructorP8PJconstsi(ptr noundef nonnull %0, i32 noundef 1026)
  br label %bb.q

.thread103:                                       ; preds = %bb.h, %bb.j
  %i.ad = load ptr, ptr %0, align 8, !tbaa !53
  %i.ae = tail call ptr @proj_create(ptr noundef %i.ad, ptr noundef nonnull @.str.11) ; 5 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.thread103
  %i.ag = tail call noundef ptr @_Z21pj_default_destructorP8PJconstsi(ptr noundef nonnull %0, i32 noundef 4096)
  br label %bb.q

bb.m:                                             ; preds = %.thread103
  tail call void @_Z24pj_inherit_ellipsoid_defPK8PJconstsPS_(ptr noundef nonnull %0, ptr noundef nonnull %i.ae)
  br i1 %i.r, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ah = load ptr, ptr %0, align 8, !tbaa !53
  %i.ai = load ptr, ptr %i.e, align 8, !tbaa !52
  %i.aj = tail call i64 @_Z8pj_paramP6pj_ctxP8ARG_listPKc(ptr noundef %i.ah, ptr noundef %i.ai, ptr noundef nonnull @.str.12)
  store i64 %i.aj, ptr %i.a, align 8, !tbaa !41
  %i.ak = load ptr, ptr %0, align 8, !tbaa !53
  %i.al = load ptr, ptr %i.e, align 8, !tbaa !52
  %i.am = tail call i64 @_Z8pj_paramP6pj_ctxP8ARG_listPKc(ptr noundef %i.ak, ptr noundef %i.al, ptr noundef nonnull @.str.13)
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.am, ptr %i.an, align 8, !tbaa !42
  %i.ao = load ptr, ptr %0, align 8, !tbaa !53
  %i.ap = load ptr, ptr %i.e, align 8, !tbaa !52
  %i.aq = tail call i64 @_Z8pj_paramP6pj_ctxP8ARG_listPKc(ptr noundef %i.ao, ptr noundef %i.ap, ptr noundef nonnull @.str.14) ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.aq, ptr %i.ar, align 8, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #8
  %i.as = load <2 x double>, ptr %i.a, align 8, !tbaa !54
  store <2 x double> %i.as, ptr %2, align 16, !tbaa !54
  %.sroa.517.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %i.aq, ptr %.sroa.517.0..sroa_idx, align 16, !tbaa !54
  call void @_Z8pj_inv3d6PJ_XYZP8PJconsts(ptr dead_on_unwind nonnull writable sret(%struct.PJ_LPZ) align 8 %1, ptr noundef nonnull byval(%struct.PJ_XYZ) align 8 %2, ptr noundef nonnull %i.ae)
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.au = load double, ptr %i.at, align 8, !tbaa !56 ; 2 uses
  %i.av = call double @sin(double noundef %i.au) #8
  %i.aw = call double @cos(double noundef %i.au) #8
  %i.ax = load double, ptr %1, align 8, !tbaa !57 ; 2 uses
  %i.ay = call double @sin(double noundef %i.ax) #8
  %i.az = call double @cos(double noundef %i.ax) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #8
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.bc = load ptr, ptr %0, align 8, !tbaa !53
  %i.bd = load ptr, ptr %i.e, align 8, !tbaa !52
  %i.be = load <2 x double>, ptr %i.ba, align 8, !tbaa !54
  %i.bf = tail call i64 @_Z8pj_paramP6pj_ctxP8ARG_listPKc(ptr noundef %i.bc, ptr noundef %i.bd, ptr noundef nonnull @.str.15)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  store <2 x double> %i.be, ptr %4, align 16, !tbaa !54
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %i.bf, ptr %.sroa.5.0..sroa_idx, align 16, !tbaa !54
  call void @_Z8pj_fwd3d6PJ_LPZP8PJconsts(ptr dead_on_unwind nonnull writable sret(%struct.PJ_XYZ) align 8 %3, ptr noundef nonnull byval(%struct.PJ_LPZ) align 8 %4, ptr noundef nonnull %i.ae)
  %i.bg = load <2 x double>, ptr %3, align 16, !tbaa !54
  store <2 x double> %i.bg, ptr %i.a, align 8, !tbaa !54
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bi = load double, ptr %i.bh, align 16, !tbaa !59
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store double %i.bi, ptr %i.bj, align 8, !tbaa !43
  %i.bk = load double, ptr %i.bb, align 8, !tbaa !60 ; 2 uses
  %i.bl = call double @sin(double noundef %i.bk) #8
  %i.bm = call double @cos(double noundef %i.bk) #8
  %i.bn = load double, ptr %i.ba, align 8, !tbaa !61 ; 2 uses
  %i.bo = call double @sin(double noundef %i.bn) #8
  %i.bp = call double @cos(double noundef %i.bn) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.sink107 = phi double [ %i.av, %bb.n ], [ %i.bl, %bb.o ]
  %.sink106 = phi double [ %i.aw, %bb.n ], [ %i.bm, %bb.o ]
  %.sink105 = phi double [ %i.ay, %bb.n ], [ %i.bo, %bb.o ]
  %.sink = phi double [ %i.az, %bb.n ], [ %i.bp, %bb.o ]
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store double %.sink107, ptr %i.bq, align 8, !tbaa !44
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store double %.sink106, ptr %i.br, align 8, !tbaa !45
  %i.bs = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store double %.sink105, ptr %i.bs, align 8, !tbaa !46
  %i.bt = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store double %.sink, ptr %i.bt, align 8, !tbaa !47
  %i.bu = call ptr @proj_destroy(ptr noundef nonnull %i.ae) ; 0 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr @_ZL15topocentric_fwdR8PJ_COORDP8PJconsts, ptr %i.bv, align 8, !tbaa !62
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 144
  store ptr @_ZL15topocentric_invR8PJ_COORDP8PJconsts, ptr %i.bw, align 8, !tbaa !63
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 380
  store i32 3, ptr %i.bx, align 4, !tbaa !37
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 384
  store i32 3, ptr %i.by, align 8, !tbaa !38
  br label %bb.q

bb.q:                                             ; preds = %bb.d, %bb.g, %bb.i, %bb.k, %bb.p, %bb.l, %bb.b
  %.2 = phi ptr [ %i.c, %bb.b ], [ %i.z, %bb.g ], [ %i.t, %bb.d ], [ %i.ac, %bb.k ], [ %i.aa, %bb.i ], [ %i.ag, %bb.l ], [ %0, %bb.p ]
  ret ptr %.2
}

declare noundef ptr @_Z6pj_newv() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #3

declare noundef ptr @_Z21pj_default_destructorP8PJconstsi(ptr noundef, i32 noundef) local_unnamed_addr #1

declare noundef ptr @_Z15pj_param_existsP8ARG_listPKc(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @_Z14proj_log_errorPK8PJconstsPKcz(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

declare ptr @proj_create(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @_Z24pj_inherit_ellipsoid_defPK8PJconstsPS_(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i64 @_Z8pj_paramP6pj_ctxP8ARG_listPKc(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare void @_Z8pj_inv3d6PJ_XYZP8PJconsts(ptr dead_on_unwind writable sret(%struct.PJ_LPZ) align 8, ptr noundef byval(%struct.PJ_XYZ) align 8, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sin(double noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @cos(double noundef) local_unnamed_addr #4

declare void @_Z8pj_fwd3d6PJ_LPZP8PJconsts(ptr dead_on_unwind writable sret(%struct.PJ_XYZ) align 8, ptr noundef byval(%struct.PJ_LPZ) align 8, ptr noundef) local_unnamed_addr #1

declare ptr @proj_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_ZL15topocentric_fwdR8PJ_COORDP8PJconsts(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef readonly captures(none) %1) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !39   ; 7 uses
  %i.c = load double, ptr %0, align 8, !tbaa !48
  %i.d = load double, ptr %i.b, align 8, !tbaa !41
  %i.e = fsub double %i.c, %i.d                   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load double, ptr %i.f, align 8, !tbaa !48
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.i = load double, ptr %i.h, align 8, !tbaa !42
  %i.j = fsub double %i.g, %i.i                   ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.l = load double, ptr %i.k, align 8, !tbaa !48
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.n = load double, ptr %i.m, align 8, !tbaa !43
  %i.o = fsub double %i.l, %i.n                   ; 2 uses
  %i.p = fneg double %i.e                         ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 3 uses
  %i.r = load double, ptr %i.q, align 8, !tbaa !46
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 3 uses
  %i.t = load double, ptr %i.s, align 8, !tbaa !47
  %i.u = fmul double %i.j, %i.t
  %i.v = tail call double @llvm.fmuladd.f64(double %i.p, double %i.r, double %i.u)
  store double %i.v, ptr %0, align 8, !tbaa !48
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.x = load double, ptr %i.w, align 8, !tbaa !44 ; 2 uses
  %i.y = fmul double %i.x, %i.p
  %i.z = load double, ptr %i.s, align 8, !tbaa !47
  %i.aa = fmul double %i.j, %i.x
  %i.ab = load double, ptr %i.q, align 8, !tbaa !46
  %i.ac = fneg double %i.ab
  %i.ad = fmul double %i.aa, %i.ac
  %i.ae = tail call double @llvm.fmuladd.f64(double %i.y, double %i.z, double %i.ad)
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.ag = load double, ptr %i.af, align 8, !tbaa !45
  %i.ah = tail call double @llvm.fmuladd.f64(double %i.o, double %i.ag, double %i.ae)
  store double %i.ah, ptr %i.f, align 8, !tbaa !48
  %i.ai = load double, ptr %i.af, align 8, !tbaa !45 ; 2 uses
  %i.aj = fmul double %i.e, %i.ai
  %i.ak = load double, ptr %i.s, align 8, !tbaa !47
  %i.al = fmul double %i.j, %i.ai
  %i.am = load double, ptr %i.q, align 8, !tbaa !46
  %i.an = fmul double %i.al, %i.am
  %i.ao = tail call double @llvm.fmuladd.f64(double %i.aj, double %i.ak, double %i.an)
  %i.ap = load double, ptr %i.w, align 8, !tbaa !44
  %i.aq = tail call double @llvm.fmuladd.f64(double %i.o, double %i.ap, double %i.ao)
  store double %i.aq, ptr %i.k, align 8, !tbaa !48
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_ZL15topocentric_invR8PJ_COORDP8PJconsts(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef readonly captures(none) %1) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !39   ; 7 uses
  %i.c = load double, ptr %0, align 8, !tbaa !48  ; 2 uses
end_hunk_0
