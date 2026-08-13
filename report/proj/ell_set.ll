inline.NumInlined: 53
inline.NumDeleted: 38
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.PJconsts = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, double, double, double, double, double, double, double, double, double, double, double, i32, [7 x double], i32, ptr, ptr, double, double, i32, [4 x i8], %"class.std::shared_ptr", i8, double, i8, %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string", i8, %"class.std::vector", i32, %"class.std::vector.3", i32, i8, i8, i8, ptr }
%"class.std::shared_ptr" = type { %"class.std::__shared_ptr" }
%"class.std::__shared_ptr" = type { ptr, %"class.std::__shared_count" }
%"class.std::__shared_count" = type { ptr }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<osgeo::proj::operation::GridDescription, std::allocator<osgeo::proj::operation::GridDescription>>::_Vector_impl" }
%"struct.std::_Vector_base<osgeo::proj::operation::GridDescription, std::allocator<osgeo::proj::operation::GridDescription>>::_Vector_impl" = type { %"struct.std::_Vector_base<osgeo::proj::operation::GridDescription, std::allocator<osgeo::proj::operation::GridDescription>>::_Vector_impl_data" }
%"struct.std::_Vector_base<osgeo::proj::operation::GridDescription, std::allocator<osgeo::proj::operation::GridDescription>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.3" = type { %"struct.std::_Vector_base.4" }
%"struct.std::_Vector_base.4" = type { %"struct.std::_Vector_base<PJCoordOperation, std::allocator<PJCoordOperation>>::_Vector_impl" }
%"struct.std::_Vector_base<PJCoordOperation, std::allocator<PJCoordOperation>>::_Vector_impl" = type { %"struct.std::_Vector_base<PJCoordOperation, std::allocator<PJCoordOperation>>::_Vector_impl_data" }
%"struct.std::_Vector_base<PJCoordOperation, std::allocator<PJCoordOperation>>::_Vector_impl_data" = type { ptr, ptr, ptr }

$_ZN8PJconstsD2Ev = comdat any

$_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv = comdat any

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"pj_ellipsoid - final: a=%.3f f=1/%7.3f, errno=%d\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"pj_ellipsoid - final: %s %s %s %s\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"Invalid eccentricity\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"ellps\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"Invalid value for +ellps\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"Unrecognized value for +ellps\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"Major axis not given\00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c"Invalid value for major axis\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"rf\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"es\00", align 1
@.str.16 = private unnamed_addr constant [36 x i8] c"Invalid value for rf. Should be > 0\00", align 1
@.str.17 = private unnamed_addr constant [36 x i8] c"Invalid value for f. Should be >= 0\00", align 1
@.str.18 = private unnamed_addr constant [47 x i8] c"Invalid value for es. Should be in [0,1[ range\00", align 1
@.str.19 = private unnamed_addr constant [46 x i8] c"Invalid value for e. Should be in [0,1[ range\00", align 1
@.str.20 = private unnamed_addr constant [35 x i8] c"Invalid value for b. Should be > 0\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"R_A\00", align 1
@.str.22 = private unnamed_addr constant [4 x i8] c"R_V\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"R_a\00", align 1
@.str.24 = private unnamed_addr constant [4 x i8] c"R_g\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"R_h\00", align 1
@.str.26 = private unnamed_addr constant [8 x i8] c"R_lat_a\00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c"R_lat_g\00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c"R_C\00", align 1
@.str.29 = private unnamed_addr constant [51 x i8] c"Invalid value for lat_g. |lat_g| should be <= 90\C2\B0\00", align 1
@.str.30 = private unnamed_addr constant [30 x i8] c"Invalid or missing major axis\00", align 1
@__libc_single_threaded = external local_unnamed_addr global i8, align 1

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_Z12pj_ellipsoidP8PJconsts(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.PJconsts, align 8           ; 15 uses
  %i.a = tail call i32 @proj_errno_reset(ptr noundef %0) ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !8
  tail call void @free(ptr noundef %i.c) #13
  store ptr null, ptr %i.b, align 8, !tbaa !8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !38
  tail call void @free(ptr noundef %i.e) #13
  store ptr null, ptr %i.d, align 8, !tbaa !38
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !39
  tail call void @free(ptr noundef %i.g) #13
  store ptr null, ptr %i.f, align 8, !tbaa !39
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !40
  tail call void @free(ptr noundef %i.i) #13
  store ptr null, ptr %i.h, align 8, !tbaa !40
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !41   ; 3 uses
  %.not13.i = icmp eq ptr %i.k, null
  br i1 %.not13.i, label %_ZL11ellps_ellpsP8PJconsts.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.critedge12.i
  %.014.i = phi ptr [ %i.p, %.critedge12.i ], [ %i.k, %bb.a ] ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.014.i, i64 9
  %lhsc = load i8, ptr %i.l, align 1
  %i.m = icmp eq i8 %lhsc, 82
  br i1 %i.m, label %bb.b, label %.critedge12.i

bb.b:                                             ; preds = %.lr.ph.i
  %i.n = getelementptr inbounds nuw i8, ptr %.014.i, i64 10
  %i.o = load i8, ptr %i.n, align 1, !tbaa !42
  switch i8 %i.o, label %.critedge12.i [
    i8 61, label %_ZL12pj_get_paramP8ARG_listPKc.exit
    i8 0, label %_ZL12pj_get_paramP8ARG_listPKc.exit
  ]

.critedge12.i:                                    ; preds = %bb.b, %.lr.ph.i
  %i.p = load ptr, ptr %.014.i, align 8, !tbaa !43 ; 2 uses
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %.lr.ph.i.i, label %.lr.ph.i, !llvm.loop !44

_ZL12pj_get_paramP8ARG_listPKc.exit:              ; preds = %bb.b, %bb.b
  %i.q = tail call fastcc noundef i32 @_ZL10ellps_sizeP8PJconsts(ptr noundef %0)
  %.not58 = icmp eq i32 %i.q, 0
  br i1 %.not58, label %bb.c, label %bb.v

bb.c:                                             ; preds = %_ZL12pj_get_paramP8ARG_listPKc.exit
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.s = load double, ptr %i.r, align 8, !tbaa !46
  %i.t = tail call noundef i32 @_Z24pj_calc_ellipsoid_paramsP8PJconstsdd(ptr noundef %0, double noundef %i.s, double noundef 0.000000e+00) ; 0 uses
  %i.u = tail call i32 @proj_errno(ptr noundef %0)
  %.not59 = icmp eq i32 %i.u, 0
  br i1 %.not59, label %bb.d, label %bb.v

bb.d:                                             ; preds = %bb.c
  %i.v = tail call i32 @proj_errno_restore(ptr noundef nonnull %0, i32 noundef %i.a)
  br label %bb.v

.lr.ph.i.i:                                       ; preds = %.critedge12.i, %.critedge12.i.i
  %.014.i.i = phi ptr [ %i.ab, %.critedge12.i.i ], [ %i.k, %.critedge12.i ] ; 5 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.014.i.i, i64 9 ; 3 uses
  %i.x = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.w, ptr noundef nonnull dereferenceable(6) @.str.5, i64 noundef 5) #14
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %bb.e, label %.critedge12.i.i

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %.014.i.i, i64 14
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !42
  switch i8 %i.aa, label %.critedge12.i.i [
    i8 61, label %_ZL12pj_get_paramP8ARG_listPKc.exit.i
    i8 0, label %_ZL12pj_get_paramP8ARG_listPKc.exit.i
  ]

.critedge12.i.i:                                  ; preds = %bb.e, %.lr.ph.i.i
  %i.ab = load ptr, ptr %.014.i.i, align 8, !tbaa !43 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i, label %_ZL11ellps_ellpsP8PJconsts.exit.thread, label %.lr.ph.i.i, !llvm.loop !44

_ZL12pj_get_paramP8ARG_listPKc.exit.i:            ; preds = %bb.e, %bb.e
  %i.ac = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.w) #14
  %i.ad = icmp ult i64 %i.ac, 7
  br i1 %i.ad, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZL12pj_get_paramP8ARG_listPKc.exit.i
  tail call void (ptr, ptr, ...) @_Z14proj_log_errorPK8PJconstsPKcz(ptr noundef %0, ptr noundef nonnull @.str.6)
  %i.ae = tail call i32 @proj_errno_set(ptr noundef %0, i32 noundef 1027)
  br label %_ZL11ellps_ellpsP8PJconsts.exit

bb.g:                                             ; preds = %_ZL12pj_get_paramP8ARG_listPKc.exit.i
  %i.af = getelementptr inbounds nuw i8, ptr %.014.i.i, i64 15
  %i.ag = tail call ptr @proj_list_ellps()        ; 3 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !47 ; 2 uses
  %cond13.i.i = icmp eq ptr %i.ah, null
  br i1 %cond13.i.i, label %_ZL13pj_find_ellpsPKc.exit.thread.i, label %.lr.ph.i42.i

bb.h:                                             ; preds = %.lr.ph.i42.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.ai = getelementptr inbounds nuw [32 x i8], ptr %i.ag, i64 %indvars.iv.next.i.i
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !47 ; 2 uses
  %cond.i.i = icmp eq ptr %i.aj, null
  br i1 %cond.i.i, label %_ZL13pj_find_ellpsPKc.exit.thread.i, label %.lr.ph.i42.i, !llvm.loop !49

.lr.ph.i42.i:                                     ; preds = %bb.g, %bb.h
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.h ], [ 0, %bb.g ] ; 2 uses
  %i.ak = phi ptr [ %i.aj, %bb.h ], [ %i.ah, %bb.g ]
  %i.al = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.af, ptr noundef nonnull dereferenceable(1) %i.ak) #14
  %.not12.i.i = icmp eq i32 %i.al, 0
  br i1 %.not12.i.i, label %_ZL13pj_find_ellpsPKc.exit.i, label %bb.h

_ZL13pj_find_ellpsPKc.exit.i:                     ; preds = %.lr.ph.i42.i
  %i.am = getelementptr inbounds nuw [32 x i8], ptr %i.ag, i64 %indvars.iv.i.i ; 2 uses
  %i.an = tail call i32 @proj_errno_reset(ptr noundef %0)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !50
  %i.aq = tail call noundef ptr @_Z10pj_mkparamPKc(ptr noundef %i.ap) ; 8 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %bb.i, label %bb.j

_ZL13pj_find_ellpsPKc.exit.thread.i:              ; preds = %bb.h, %bb.g
  tail call void (ptr, ptr, ...) @_Z14proj_log_errorPK8PJconstsPKcz(ptr noundef %0, ptr noundef nonnull @.str.7)
  %i.as = tail call i32 @proj_errno_set(ptr noundef %0, i32 noundef 1027)
  br label %_ZL11ellps_ellpsP8PJconsts.exit

bb.i:                                             ; preds = %_ZL13pj_find_ellpsPKc.exit.i
  %i.at = tail call i32 @proj_errno_set(ptr noundef %0, i32 noundef 4096)
  br label %_ZL11ellps_ellpsP8PJconsts.exit

bb.j:                                             ; preds = %_ZL13pj_find_ellpsPKc.exit.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !51
  %i.aw = tail call noundef ptr @_Z10pj_mkparamPKc(ptr noundef %i.av) ; 2 uses
  store ptr %i.aw, ptr %i.aq, align 8, !tbaa !43
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call void @free(ptr noundef nonnull %i.aq) #13
  %i.ay = tail call i32 @proj_errno_set(ptr noundef %0, i32 noundef 4096)
  br label %_ZL11ellps_ellpsP8PJconsts.exit

bb.l:                                             ; preds = %bb.j
  %i.az = load ptr, ptr %i.j, align 8, !tbaa !41  ; 2 uses
  store ptr %i.aq, ptr %i.j, align 8, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #13
  call void @_ZN8PJconstsC1Ev(ptr noundef nonnull align 8 dereferenceable(856) %1)
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.bc = load <2 x double>, ptr %i.ba, align 8, !tbaa !52
  store <2 x double> %i.bc, ptr %i.bb, align 8, !tbaa !52
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.bf = load <2 x double>, ptr %i.bd, align 8, !tbaa !52
  store <2 x double> %i.bf, ptr %i.be, align 8, !tbaa !52
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.bi = load <2 x double>, ptr %i.bg, align 8, !tbaa !52
  store <2 x double> %i.bi, ptr %i.bh, align 8, !tbaa !52
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.bl = load <2 x double>, ptr %i.bj, align 8, !tbaa !52
  store <2 x double> %i.bl, ptr %i.bk, align 8, !tbaa !52
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.bo = load <2 x double>, ptr %i.bm, align 8, !tbaa !52
  store <2 x double> %i.bo, ptr %i.bn, align 8, !tbaa !52
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.br = load <2 x double>, ptr %i.bp, align 8, !tbaa !52
  store <2 x double> %i.br, ptr %i.bq, align 8, !tbaa !52
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.bu = load <2 x double>, ptr %i.bs, align 8, !tbaa !52
  store <2 x double> %i.bu, ptr %i.bt, align 8, !tbaa !52
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 280
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.bx = load <2 x double>, ptr %i.bv, align 8, !tbaa !52
  store <2 x double> %i.bx, ptr %i.bw, align 8, !tbaa !52
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 296
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.ca = load <2 x double>, ptr %i.by, align 8, !tbaa !52
  store <2 x double> %i.ca, ptr %i.bz, align 8, !tbaa !52
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 312
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.cd = load <2 x double>, ptr %i.cb, align 8, !tbaa !52
  store <2 x double> %i.cd, ptr %i.cc, align 8, !tbaa !52
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 328
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.cg = load <2 x double>, ptr %i.ce, align 8, !tbaa !52
  store <2 x double> %i.cg, ptr %i.cf, align 8, !tbaa !52
  call void @_ZN8PJconstsD2Ev(ptr noundef nonnull align 8 dead_on_return(856) dereferenceable(856) %1) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  %i.ch = call fastcc noundef i32 @_ZL10ellps_sizeP8PJconsts(ptr noundef %0)
  %.not.i60 = icmp eq i32 %i.ch, 0
  br i1 %.not.i60, label %bb.m, label %.critedge.i

bb.m:                                             ; preds = %bb.l
  %i.ci = call fastcc noundef i32 @_ZL11ellps_shapeP8PJconsts(ptr noundef nonnull %0)
  %.not45.i = icmp eq i32 %i.ci, 0
  store ptr %i.az, ptr %i.j, align 8, !tbaa !41
  %i.cj = load ptr, ptr %i.aq, align 8, !tbaa !43
  call void @free(ptr noundef %i.cj) #13
  call void @free(ptr noundef nonnull %i.aq) #13
  br i1 %.not45.i, label %bb.o, label %bb.n

.critedge.i:                                      ; preds = %bb.l
  store ptr %i.az, ptr %i.j, align 8, !tbaa !41
  %i.ck = load ptr, ptr %i.aq, align 8, !tbaa !43
  call void @free(ptr noundef %i.ck) #13
  call void @free(ptr noundef nonnull %i.aq) #13
  br label %bb.n

bb.n:                                             ; preds = %.critedge.i, %bb.m
  %i.cl = call i32 @proj_errno_set(ptr noundef nonnull %0, i32 noundef 4096)
  br label %_ZL11ellps_ellpsP8PJconsts.exit

bb.o:                                             ; preds = %bb.m
  %i.cm = call i32 @proj_errno(ptr noundef nonnull %0)
  %.not41.i = icmp eq i32 %i.cm, 0
  br i1 %.not41.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cn = call i32 @proj_errno(ptr noundef nonnull %0)
  br label %_ZL11ellps_ellpsP8PJconsts.exit

bb.q:                                             ; preds = %bb.o
  %i.co = call noundef ptr @_Z9pj_strdupPKc(ptr noundef nonnull %i.w)
  store ptr %i.co, ptr %i.h, align 8, !tbaa !40
  %i.cp = getelementptr inbounds nuw i8, ptr %.014.i.i, i64 8
  store i8 1, ptr %i.cp, align 8, !tbaa !42
  %i.cq = call i32 @proj_errno_restore(ptr noundef nonnull %0, i32 noundef %i.an)
  br label %_ZL11ellps_ellpsP8PJconsts.exit

_ZL11ellps_ellpsP8PJconsts.exit:                  ; preds = %bb.f, %_ZL13pj_find_ellpsPKc.exit.thread.i, %bb.i, %bb.k, %bb.n, %bb.p, %bb.q
  %.2.i = phi i32 [ %i.cq, %bb.q ], [ %i.ae, %bb.f ], [ %i.as, %_ZL13pj_find_ellpsPKc.exit.thread.i ], [ %i.at, %bb.i ], [ %i.ay, %bb.k ], [ %i.cl, %bb.n ], [ %i.cn, %bb.p ]
  %.not49 = icmp eq i32 %.2.i, 0
  br i1 %.not49, label %_ZL11ellps_ellpsP8PJconsts.exit.thread, label %bb.v

_ZL11ellps_ellpsP8PJconsts.exit.thread:           ; preds = %.critedge12.i.i, %bb.a, %_ZL11ellps_ellpsP8PJconsts.exit
  %i.cr = call fastcc noundef i32 @_ZL10ellps_sizeP8PJconsts(ptr noundef %0)
  %.not50 = icmp eq i32 %i.cr, 0
  br i1 %.not50, label %bb.r, label %bb.v

bb.r:                                             ; preds = %_ZL11ellps_ellpsP8PJconsts.exit.thread
  %i.cs = call fastcc noundef i32 @_ZL11ellps_shapeP8PJconsts(ptr noundef %0)
  %.not51 = icmp eq i32 %i.cs, 0
  br i1 %.not51, label %bb.s, label %bb.v

bb.s:                                             ; preds = %bb.r
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.cu = load double, ptr %i.ct, align 8, !tbaa !46
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.cw = load double, ptr %i.cv, align 8, !tbaa !53
  %i.cx = call noundef i32 @_Z24pj_calc_ellipsoid_paramsP8PJconstsdd(ptr noundef %0, double noundef %i.cu, double noundef %i.cw) ; 0 uses
  %i.cy = call fastcc noundef i32 @_ZL20ellps_spherificationP8PJconsts(ptr noundef %0)
  %.not52 = icmp eq i32 %i.cy, 0
  br i1 %.not52, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.cz = load double, ptr %i.ct, align 8, !tbaa !46
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.db = load double, ptr %i.da, align 8, !tbaa !54 ; 2 uses
  %i.dc = fcmp une double %i.db, 0.000000e+00
  %i.dd = fdiv double 1.000000e+00, %i.db
  %i.de = select i1 %i.dc, double %i.dd, double 0.000000e+00
  %i.df = call i32 @proj_errno(ptr noundef nonnull %0)
  call void (ptr, ptr, ...) @_Z14proj_log_traceP8PJconstsPKcz(ptr noundef nonnull %0, ptr noundef nonnull @.str.2, double noundef %i.cz, double noundef %i.de, i32 noundef %i.df)
  %i.dg = load ptr, ptr %i.b, align 8, !tbaa !8   ; 2 uses
  %.not53 = icmp eq ptr %i.dg, null
  %i.dh = select i1 %.not53, ptr @.str, ptr %i.dg
  %i.di = load ptr, ptr %i.d, align 8, !tbaa !38  ; 2 uses
  %.not54 = icmp eq ptr %i.di, null
  %i.dj = select i1 %.not54, ptr @.str, ptr %i.di
  %i.dk = load ptr, ptr %i.f, align 8, !tbaa !39  ; 2 uses
  %.not55 = icmp eq ptr %i.dk, null
  %i.dl = select i1 %.not55, ptr @.str, ptr %i.dk
  %i.dm = load ptr, ptr %i.h, align 8, !tbaa !40  ; 2 uses
  %.not56 = icmp eq ptr %i.dm, null
  %i.dn = select i1 %.not56, ptr @.str, ptr %i.dm
  call void (ptr, ptr, ...) @_Z14proj_log_traceP8PJconstsPKcz(ptr noundef nonnull %0, ptr noundef nonnull @.str.3, ptr noundef nonnull %i.dh, ptr noundef nonnull %i.dj, ptr noundef nonnull %i.dl, ptr noundef nonnull %i.dn)
  %i.do = call i32 @proj_errno(ptr noundef nonnull %0)
  %.not57 = icmp eq i32 %i.do, 0
  br i1 %.not57, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.dp = call i32 @proj_errno_restore(ptr noundef nonnull %0, i32 noundef %i.a)
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.s, %bb.r, %_ZL11ellps_ellpsP8PJconsts.exit.thread, %_ZL11ellps_ellpsP8PJconsts.exit, %bb.c, %_ZL12pj_get_paramP8ARG_listPKc.exit, %bb.u, %bb.d
  %.0 = phi i32 [ %i.dp, %bb.u ], [ 1, %_ZL12pj_get_paramP8ARG_listPKc.exit ], [ %i.v, %bb.d ], [ 1, %bb.c ], [ 1, %_ZL11ellps_ellpsP8PJconsts.exit ], [ 2, %_ZL11ellps_ellpsP8PJconsts.exit.thread ], [ 3, %bb.r ], [ 4, %bb.s ], [ 5, %bb.t ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @proj_errno_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define internal fastcc noundef i32 @_ZL10ellps_sizeP8PJconsts(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
end_hunk_0
