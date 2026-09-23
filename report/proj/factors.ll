Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proj/original/factors?download=true
inline.NumInlined: 47
inline.NumDeleted: 34
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.P5_FACTORS = type { double, double, double, double, double, double, double, double, double, double, double, double }
%union.PJ_COORD = type { [4 x double] }
%struct.FACTORS = type { %struct.DERIVS, double, double, double, double, double, double, double, double, i32 }
%struct.DERIVS = type { double, double, double, double }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }

@.str = private unnamed_addr constant [6 x i8] c"metre\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c" +step +proj=unitconvert\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c" +step +proj=axiswap\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"Invalid type for P object\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"Radian\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"unname crs\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"unnamed datum\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"reference prime meridian\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"unnamed crs\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"Invalid latitude\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"Invalid longitude\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"pipeline\00", align 1
@.str.12 = private unnamed_addr constant [30 x i8] c"Invalid latitude or longitude\00", align 1
@.str.13 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1

; Function Attrs: mustprogress uwtable
define void @proj_factors(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.P5_FACTORS) align 8 captures(none) initializes((0, 96)) %0, ptr noundef %1, ptr nofree noundef readonly byval(%union.PJ_COORD) align 8 captures(none) %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %union.PJ_COORD, align 8            ; 5 uses
  %4 = alloca %union.PJ_COORD, align 16           ; 5 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %5 = alloca %struct.FACTORS, align 16           ; 23 uses
  %i.b = alloca double, align 8                   ; 6 uses
  %i.c = alloca double, align 8                   ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %0, i8 0, i64 96, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  %i.d = icmp eq ptr %1, null
  br i1 %i.d, label %bb.ar, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 @proj_get_type(ptr noundef nonnull %1) ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 848 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !39   ; 2 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.c, label %bb.w

bb.c:                                             ; preds = %bb.b
  %i.h = icmp eq i32 %i.e, 16
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = load ptr, ptr %1, align 8, !tbaa !37
  %i.j = tail call ptr @proj_crs_get_sub_crs(ptr noundef %i.i, ptr noundef nonnull %1, i32 noundef 0) ; 3 uses
  %i.k = tail call i32 @proj_get_type(ptr noundef %i.j)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0104 = phi ptr [ %i.j, %bb.d ], [ null, %bb.c ] ; 3 uses
  %.0103 = phi i32 [ %i.k, %bb.d ], [ %i.e, %bb.c ] ; 2 uses
  %.094 = phi ptr [ %i.j, %bb.d ], [ %1, %bb.c ]  ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  store double 1.000000e+00, ptr %i.b, align 8, !tbaa !38
  switch i32 %.0103, label %bb.s [
    i32 15, label %bb.f
    i32 28, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  %i.l = load ptr, ptr %.094, align 8, !tbaa !37  ; 5 uses
  %i.m = tail call ptr @proj_get_source_crs(ptr noundef %i.l, ptr noundef nonnull %.094) ; 3 uses
  %i.n = tail call fastcc noundef ptr @"_ZZ12proj_factorsENK3$_0clEP8PJconsts"(ptr noundef %i.m) ; 2 uses
  %i.o = tail call ptr @proj_crs_get_coordoperation(ptr noundef %i.l, ptr noundef nonnull %.094) ; 2 uses
  %i.p = tail call ptr @proj_create_cartesian_2D_cs(ptr noundef %i.l, i32 noundef 0, ptr noundef nonnull @.str, double noundef 1.000000e+00) ; 2 uses
  %i.q = tail call ptr @proj_create_projected_crs(ptr noundef %i.l, ptr noundef null, ptr noundef %i.m, ptr noundef %i.o, ptr noundef %i.p) ; 2 uses
  %i.r = tail call ptr @proj_destroy(ptr noundef %i.m) ; 0 uses
  %i.s = tail call ptr @proj_destroy(ptr noundef %i.o) ; 0 uses
  %i.t = tail call ptr @proj_destroy(ptr noundef %i.p) ; 0 uses
  %i.u = tail call ptr @proj_create_crs_to_crs_from_pj(ptr noundef %i.l, ptr noundef %i.n, ptr noundef %i.q, ptr noundef null, ptr noundef null) ; 2 uses
  %i.v = tail call ptr @proj_destroy(ptr noundef %i.n) ; 0 uses
  %i.w = tail call ptr @proj_destroy(ptr noundef %i.q) ; 0 uses
  store ptr %i.u, ptr %i.f, align 8, !tbaa !39
  br label %bb.v

bb.g:                                             ; preds = %bb.e
  %i.x = load ptr, ptr %.094, align 8, !tbaa !37  ; 9 uses
  %i.y = tail call ptr @proj_get_source_crs(ptr noundef %i.x, ptr noundef nonnull %.094) ; 2 uses
  %i.z = tail call ptr @proj_get_source_crs(ptr noundef %i.x, ptr noundef %i.y) ; 3 uses
  %i.aa = tail call ptr @proj_destroy(ptr noundef %i.y) ; 0 uses
  %i.ab = tail call ptr @proj_get_ellipsoid(ptr noundef %i.x, ptr noundef %i.z) ; 2 uses
  %i.ac = call i32 @proj_ellipsoid_get_parameters(ptr noundef %i.x, ptr noundef %i.ab, ptr noundef nonnull %i.b, ptr noundef null, ptr noundef null, ptr noundef null) ; 0 uses
  %i.ad = call ptr @proj_destroy(ptr noundef %i.ab) ; 0 uses
  %i.ae = call fastcc noundef ptr @"_ZZ12proj_factorsENK3$_0clEP8PJconsts"(ptr noundef %i.z) ; 2 uses
  %i.af = call ptr @proj_create_crs_to_crs_from_pj(ptr noundef %i.x, ptr noundef %i.ae, ptr noundef nonnull %.094, ptr noundef null, ptr noundef null) ; 3 uses
  %i.ag = call ptr @proj_destroy(ptr noundef %i.z) ; 0 uses
  %i.ah = call ptr @proj_destroy(ptr noundef %i.ae) ; 0 uses
  %i.ai = call ptr @proj_crs_get_coordinate_system(ptr noundef %i.x, ptr noundef nonnull %.094) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  store double 1.000000e+00, ptr %i.c, align 8, !tbaa !38
  %i.aj = call i32 @proj_cs_get_axis_info(ptr noundef %i.x, ptr noundef %i.ai, i32 noundef 0, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef nonnull %i.c, ptr noundef null, ptr noundef null, ptr noundef null) ; 0 uses
  %i.ak = call ptr @proj_destroy(ptr noundef %i.ai) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  %i.al = call ptr @proj_as_proj_string(ptr noundef %i.x, ptr noundef %i.af, i32 noundef 0, ptr noundef null) ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  store ptr %i.am, ptr %6, align 8, !tbaa !40
  %i.an = icmp eq ptr %i.al, null
  br i1 %i.an, label %.noexc, label %bb.h

.noexc:                                           ; preds = %bb.g
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.13) #12
  unreachable

bb.h:                                             ; preds = %bb.g
  %i.ao = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.al) #11 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store i64 %i.ao, ptr %i.a, align 8, !tbaa !41
  %i.ap = icmp ugt i64 %i.ao, 15
  br i1 %i.ap, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.h
  %i.aq = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.aq, ptr %6, align 8, !tbaa !42
  %i.ar = load i64, ptr %i.a, align 8, !tbaa !41
  store i64 %i.ar, ptr %i.am, align 8, !tbaa !43
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.h
  %i.as = phi ptr [ %i.aq, %.noexc.i ], [ %i.am, %bb.h ] ; 2 uses
  switch i64 %i.ao, label %bb.j [
    i64 1, label %bb.i
    i64 0, label %bb.k
  ]

bb.i:                                             ; preds = %._crit_edge.i.i
  %i.at = load i8, ptr %i.al, align 1, !tbaa !43
  store i8 %i.at, ptr %i.as, align 1, !tbaa !43
  br label %bb.k

bb.j:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.as, ptr nonnull align 1 %i.al, i64 %i.ao, i1 false)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %._crit_edge.i.i
  %i.au = load i64, ptr %i.a, align 8, !tbaa !41  ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.au, ptr %i.av, align 8, !tbaa !44
  %i.aw = load ptr, ptr %6, align 8, !tbaa !42
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.au
  store i8 0, ptr %i.ax, align 1, !tbaa !43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  %i.ay = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.1, i64 noundef -1, i64 noundef 24) #11 ; 2 uses
  %.not112.not = icmp eq i64 %i.ay, -1            ; 2 uses
  br i1 %.not112.not, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef %i.ay, i8 noundef signext 0)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit unwind label %bb.m

bb.m:                                             ; preds = %bb.n, %bb.l
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit: ; preds = %bb.l, %bb.k
  %i.ba = call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEPKcmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.2, i64 noundef -1, i64 noundef 20) #11 ; 2 uses
  %.not112.1 = icmp eq i64 %i.ba, -1
  br i1 %.not112.1, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.1, label %bb.n

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef %i.ba, i8 noundef signext 0)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.1.thread unwind label %bb.m

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit
  br i1 %.not112.not, label %bb.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.1.thread

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.1.thread: ; preds = %bb.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.1
  %i.bb = invoke ptr @proj_destroy(ptr noundef %i.af)
          to label %bb.o unwind label %bb.p       ; 0 uses

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.1.thread
  %i.bc = load ptr, ptr %6, align 8, !tbaa !42
  %i.bd = invoke ptr @proj_create(ptr noundef %i.x, ptr noundef %i.bc)
          to label %bb.q unwind label %bb.p

bb.p:                                             ; preds = %bb.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.1.thread
  %i.be = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.q:                                             ; preds = %bb.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.1
  %.0102 = phi ptr [ %i.af, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit.1 ], [ %i.bd, %bb.o ] ; 3 uses
  %i.bf = load double, ptr %i.c, align 8, !tbaa !38
  %i.bg = getelementptr inbounds nuw i8, ptr %.0102, i64 504
  store double %i.bf, ptr %i.bg, align 8, !tbaa !45
  store ptr %.0102, ptr %i.f, align 8, !tbaa !39
  %i.bh = load ptr, ptr %6, align 8, !tbaa !42    ; 2 uses
  %i.bi = icmp eq ptr %i.bh, %i.am
  br i1 %i.bi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.q
  %i.bj = load i64, ptr %i.am, align 8, !tbaa !43
  %i.bk = add i64 %i.bj, 1
  call void @_ZdlPvm(ptr noundef %i.bh, i64 noundef %i.bk) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  br label %bb.v

bb.r:                                             ; preds = %bb.p, %bb.m
  %.pn = phi { ptr, i32 } [ %i.az, %bb.m ], [ %i.be, %bb.p ]
  %i.bl = load ptr, ptr %6, align 8, !tbaa !42    ; 2 uses
  %i.bm = icmp eq ptr %i.bl, %i.am
  br i1 %i.bm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i119

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i119: ; preds = %bb.r
  %i.bn = load i64, ptr %i.am, align 8, !tbaa !43
  %i.bo = add i64 %i.bn, 1
  call void @_ZdlPvm(ptr noundef %i.bl, i64 noundef %i.bo) #13
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i119
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  resume { ptr, i32 } %.pn

bb.s:                                             ; preds = %bb.e
  %i.bp = add i32 %.0103, -25
  %or.cond5 = icmp ult i32 %i.bp, -4
end_hunk_0
begin_hunk_1_@proj_factors:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  store <2 x double> %i.bs, ptr %4, align 16
  %.sroa.02.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.02.sroa.6.0..sroa_idx.i, i8 0, i64 16, i1 false)
  call void @_Z22pj_geocentric_latitudePK8PJconsts12PJ_DIRECTION8PJ_COORD(ptr dead_on_unwind nonnull writable sret(%union.PJ_COORD) align 8 %3, ptr noundef nonnull %.3, i32 noundef -1, ptr noundef nonnull byval(%union.PJ_COORD) align 8 %4)
  %.sroa.097.0.copyload.i = load double, ptr %3, align 8, !tbaa !38
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.10.0.copyload.i = load double, ptr %.sroa.10.0..sroa_idx.i, align 8, !tbaa !38 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  %.pre121.i = call double @llvm.fabs.f64(double %.sroa.10.0.copyload.i)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.pre-phi.i = phi double [ %.pre121.i, %bb.ac ], [ %i.by, %bb.ab ]
  %.sroa.097.0.i = phi double [ %.sroa.097.0.copyload.i, %bb.ac ], [ %i.bt, %bb.ab ] ; 2 uses
  %.sroa.10.0.i = phi double [ %.sroa.10.0.copyload.i, %bb.ac ], [ %i.bx, %bb.ab ] ; 2 uses
  %i.ch = fcmp ogt double %.pre-phi.i, f0x3FF921F0D7E968A6
  %i.ci = fcmp olt double %.sroa.10.0.i, 0.000000e+00
  %..i = select i1 %i.ci, double f0xBFF921F0D7E968A6, double f0x3FF921F0D7E968A6
  %.sroa.10.1.i = select i1 %i.ch, double %..i, double %.sroa.10.0.i ; 4 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.3, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !50 ; 2 uses
  %.not113.i = icmp eq ptr %i.ck, null
  br i1 %.not113.i, label %.thread.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cl = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ck, ptr noundef nonnull dereferenceable(9) @.str.11) #14
  %i.cm = icmp eq i32 %i.cl, 0
  br i1 %i.cm, label %.thread125.i, label %.thread.i

.thread.i:                                        ; preds = %bb.ae, %bb.ad
  %i.cn = getelementptr inbounds nuw i8, ptr %.3, i64 440
  %i.co = load double, ptr %i.cn, align 8, !tbaa !51
  %i.cp = fsub double %.sroa.097.0.i, %i.co       ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.3, i64 344
  %i.cr = load i32, ptr %i.cq, align 8, !tbaa !52
  %.not114.i = icmp eq i32 %i.cr, 0
  br i1 %.not114.i, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %.thread.i
  %i.cs = call noundef double @_Z6adjlond(double noundef %i.cp)
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %.thread.i
  %.sroa.097.1.i = phi double [ %i.cs, %bb.af ], [ %i.cp, %.thread.i ]
  %i.ct = call noundef i32 @_Z8pj_deriv5PJ_LPdPK8PJconstsP6DERIVS(double %.sroa.097.1.i, double %.sroa.10.1.i, double noundef 1.000000e-05, ptr noundef nonnull %.3, ptr noundef nonnull %5)
  %.not115.i = icmp eq i32 %i.ct, 0
  br i1 %.not115.i, label %._crit_edge.i, label %bb.ah

.thread125.i:                                     ; preds = %bb.ae
  %i.cu = call noundef i32 @_Z8pj_deriv5PJ_LPdPK8PJconstsP6DERIVS(double %.sroa.097.0.i, double %.sroa.10.1.i, double noundef 1.000000e-05, ptr noundef nonnull %.3, ptr noundef nonnull %5)
  %.not115127.i = icmp eq i32 %i.cu, 0
  br i1 %.not115127.i, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %.thread125.i, %bb.ag
  call void (ptr, ptr, ...) @_Z14proj_log_errorPK8PJconstsPKcz(ptr noundef nonnull %1, ptr noundef nonnull @.str.12)
  %i.cv = call i32 @proj_errno_set(ptr noundef nonnull %1, i32 noundef 2049) ; 0 uses
  br label %_ZL10pj_factors5PJ_LPP8PJconstsPKS0_dP7FACTORS.exit

._crit_edge.i:                                    ; preds = %bb.ag
  %i.cw = load <4 x double>, ptr %5, align 16, !tbaa !38
  br label %bb.aj

bb.ai:                                            ; preds = %.thread125.i
  %i.cx = getelementptr inbounds nuw i8, ptr %.3, i64 184
  %i.cy = load double, ptr %i.cx, align 8, !tbaa !53
  %i.cz = getelementptr inbounds nuw i8, ptr %.3, i64 504
  %i.da = load double, ptr %i.cz, align 8, !tbaa !45
  %i.db = fmul double %i.cy, %i.da
  %i.dc = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.dd = load <4 x double>, ptr %5, align 16, !tbaa !38
  %i.de = insertelement <4 x double> poison, double %i.db, i64 0
  %i.df = shufflevector <4 x double> %i.de, <4 x double> poison, <4 x i32> zeroinitializer
  %i.dg = fmul <4 x double> %i.dd, %i.df          ; 3 uses
  %i.dh = shufflevector <4 x double> %i.dg, <4 x double> poison, <2 x i32> <i32 0, i32 1>
  store <2 x double> %i.dh, ptr %5, align 16, !tbaa !38
  %i.di = shufflevector <4 x double> %i.dg, <4 x double> poison, <2 x i32> <i32 2, i32 3>
  store <2 x double> %i.di, ptr %i.dc, align 16, !tbaa !38
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %._crit_edge.i
  %i.dj = phi <4 x double> [ %i.cw, %._crit_edge.i ], [ %i.dg, %bb.ai ] ; 4 uses
  %i.dk = call double @cos(double noundef %.sroa.10.1.i) #11 ; 2 uses
  %i.dl = extractelement <4 x double> %i.dj, i64 1 ; 3 uses
  %i.dm = extractelement <4 x double> %i.dj, i64 3 ; 3 uses
  %i.dn = call double @hypot(double noundef %i.dl, double noundef %i.dm) #11 ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  store double %i.dn, ptr %i.do, align 16, !tbaa !54
  %i.dp = extractelement <4 x double> %i.dj, i64 0 ; 2 uses
  %i.dq = extractelement <4 x double> %i.dj, i64 2 ; 2 uses
  %i.dr = call double @hypot(double noundef %i.dp, double noundef %i.dq) #11
  %i.ds = fdiv double %i.dr, %i.dk                ; 3 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 3 uses
  store double %i.ds, ptr %i.dt, align 8, !tbaa !55
  %i.du = getelementptr inbounds nuw i8, ptr %.3, i64 216
  %i.dv = load double, ptr %i.du, align 8, !tbaa !56 ; 2 uses
  %i.dw = fcmp une double %i.dv, 0.000000e+00
  br i1 %i.dw, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.dx = call double @sin(double noundef %.sroa.10.1.i) #11 ; 2 uses
  %i.dy = fneg double %i.dx
  %i.dz = fmul double %i.dv, %i.dy
  %i.ea = call double @llvm.fmuladd.f64(double %i.dz, double %i.dx, double 1.000000e+00) ; 2 uses
  %i.eb = call double @sqrt(double noundef %i.ea) #11 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.3, i64 256
  %i.ed = load double, ptr %i.ec, align 8, !tbaa !57
  %i.ee = fmul double %i.ds, %i.eb                ; 2 uses
  store double %i.ee, ptr %i.dt, align 8, !tbaa !55
  %i.ef = insertelement <2 x double> poison, double %i.eb, i64 0
  %i.eg = insertelement <2 x double> %i.ef, double %i.ea, i64 1 ; 2 uses
  %i.eh = shufflevector <2 x double> %i.eg, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ei = fmul <2 x double> %i.eg, %i.eh
  %i.ej = insertelement <2 x double> poison, double %i.ed, i64 0
  %i.ek = shufflevector <2 x double> %i.ej, <2 x double> poison, <2 x i32> zeroinitializer
  %i.el = fdiv <2 x double> %i.ei, %i.ek          ; 2 uses
  %i.em = extractelement <2 x double> %i.el, i64 0
  %i.en = fmul double %i.dn, %i.em                ; 2 uses
  store double %i.en, ptr %i.do, align 16, !tbaa !54
  %i.eo = extractelement <2 x double> %i.el, i64 1
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.ep = phi double [ %i.ee, %bb.ak ], [ %i.ds, %bb.aj ]
  %i.eq = phi double [ %i.en, %bb.ak ], [ %i.dn, %bb.aj ]
  %.0108.i = phi double [ %i.eo, %bb.ak ], [ 1.000000e+00, %bb.aj ]
  %i.er = call double @atan2(double noundef %i.dl, double noundef %i.dm) #11
  %i.es = fneg double %i.er
  %i.et = getelementptr inbounds nuw i8, ptr %5, i64 64
  store double %i.es, ptr %i.et, align 16, !tbaa !58
  %i.eu = fneg double %i.dq
  %i.ev = fmul double %i.dl, %i.eu
  %i.ew = call double @llvm.fmuladd.f64(double %i.dm, double %i.dp, double %i.ev)
  %i.ex = fmul double %i.ew, %.0108.i
  %i.ey = fdiv double %i.ex, %i.dk                ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %5, i64 72 ; 2 uses
  store double %i.ey, ptr %i.ez, align 8, !tbaa !59
  %i.fa = load ptr, ptr %.3, align 8, !tbaa !37
  %i.fb = fmul double %i.ep, %i.eq
  %i.fc = fdiv double %i.ey, %i.fb
  %i.fd = call noundef double @_Z5aasinP6pj_ctxd(ptr noundef %i.fa, double noundef %i.fc)
  %i.fe = getelementptr inbounds nuw i8, ptr %5, i64 56
  store double %i.fd, ptr %i.fe, align 8, !tbaa !60
  %i.ff = load double, ptr %i.dt, align 8, !tbaa !55 ; 2 uses
  %i.fg = load double, ptr %i.do, align 16, !tbaa !54 ; 2 uses
  %i.fh = fmul double %i.fg, %i.fg
  %i.fi = call double @llvm.fmuladd.f64(double %i.ff, double %i.ff, double %i.fh)
  %i.fj = load <2 x double>, ptr %i.ez, align 8
  %i.fk = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.fl = shufflevector <2 x double> %i.fj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fm = insertelement <2 x double> poison, double %i.fi, i64 0
  %i.fn = shufflevector <2 x double> %i.fm, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fo = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fl, <2 x double> <double 2.000000e+00, double -2.000000e+00>, <2 x double> %i.fn) ; 2 uses
  %i.fp = extractelement <2 x double> %i.fo, i64 0
  %i.fq = call double @sqrt(double noundef %i.fp) #11 ; 2 uses
  %i.fr = extractelement <2 x double> %i.fo, i64 1 ; 2 uses
  %i.fs = fcmp ogt double %i.fr, 0.000000e+00
  br i1 %i.fs, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.ft = call double @sqrt(double noundef %i.fr) #11
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.fu = phi double [ %i.ft, %bb.am ], [ 0.000000e+00, %bb.al ] ; 2 uses
  %i.fv = fsub double %i.fq, %i.fu
  %i.fw = fmul double %i.fv, 5.000000e-01         ; 3 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %5, i64 88
  store double %i.fw, ptr %i.fx, align 8, !tbaa !61
  %i.fy = fadd double %i.fq, %i.fu
  %i.fz = fmul double %i.fy, 5.000000e-01         ; 3 uses
  store double %i.fz, ptr %i.fk, align 16, !tbaa !62
  %i.ga = load ptr, ptr %.3, align 8, !tbaa !37
  %i.gb = fsub double %i.fz, %i.fw
  %i.gc = fadd double %i.fz, %i.fw
  %i.gd = fdiv double %i.gb, %i.gc
  %i.ge = call noundef double @_Z5aasinP6pj_ctxd(ptr noundef %i.ga, double noundef %i.gd)
  %i.gf = fmul double %i.ge, 2.000000e+00
  %i.gg = getelementptr inbounds nuw i8, ptr %5, i64 48
  store double %i.gf, ptr %i.gg, align 16, !tbaa !63
  %i.gh = call i32 @proj_errno_restore(ptr noundef nonnull %1, i32 noundef %i.bv) ; 0 uses
  br label %_ZL10pj_factors5PJ_LPP8PJconstsPKS0_dP7FACTORS.exit

_ZL10pj_factors5PJ_LPP8PJconstsPKS0_dP7FACTORS.exit: ; preds = %bb.w, %bb.y, %bb.aa, %bb.ah, %bb.an
  %.not116 = phi i1 [ false, %bb.w ], [ false, %bb.y ], [ false, %bb.aa ], [ false, %bb.ah ], [ true, %bb.an ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %.not115 = icmp eq ptr %.1105, null
  br i1 %.not115, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %_ZL10pj_factors5PJ_LPP8PJconstsPKS0_dP7FACTORS.exit
  %i.gi = call ptr @proj_destroy(ptr noundef nonnull %.1105) ; 0 uses
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %_ZL10pj_factors5PJ_LPP8PJconstsPKS0_dP7FACTORS.exit
  br i1 %.not116, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.gj = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.gk = load <2 x double>, ptr %i.gj, align 16, !tbaa !38
  store <2 x double> %i.gk, ptr %0, align 8, !tbaa !38
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.gm = getelementptr inbounds nuw i8, ptr %5, i64 48
  %7 = load <4 x double>, ptr %i.gm, align 16, !tbaa !38
  %8 = shufflevector <4 x double> %7, <4 x double> poison, <4 x i32> <i32 3, i32 0, i32 1, i32 2>
  store <4 x double> %8, ptr %i.gl, align 8, !tbaa !38
  %i.gn = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.gp = load <2 x double>, ptr %i.gn, align 16, !tbaa !38
  %9 = load <2 x double>, ptr %5, align 16, !tbaa !38
  %10 = shufflevector <2 x double> %i.gp, <2 x double> %9, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x double> %10, ptr %i.go, align 8, !tbaa !38
  %i.gq = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.gs = load <2 x double>, ptr %i.gq, align 16, !tbaa !38
  store <2 x double> %i.gs, ptr %i.gr, align 8, !tbaa !38
  br label %bb.ar

.critedge:                                        ; preds = %bb.u, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  br label %bb.ar

bb.ar:                                            ; preds = %.critedge, %bb.ap, %bb.aq, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare i32 @proj_get_type(ptr noundef) local_unnamed_addr #3

declare ptr @proj_crs_get_sub_crs(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare ptr @proj_get_source_crs(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc noundef ptr @"_ZZ12proj_factorsENK3$_0clEP8PJconsts"(ptr noundef %0) unnamed_addr #4 align 2 {
bb.a:
  %i.a = alloca double, align 8                   ; 5 uses
  %i.b = alloca double, align 8                   ; 5 uses
  %i.c = alloca double, align 8                   ; 5 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !37     ; 9 uses
  %i.e = tail call ptr @proj_get_prime_meridian(ptr noundef %i.d, ptr noundef nonnull %0) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store double 0.000000e+00, ptr %i.a, align 8, !tbaa !38
  %i.f = call i32 @proj_prime_meridian_get_parameters(ptr noundef %i.d, ptr noundef %i.e, ptr noundef nonnull %i.a, ptr noundef null, ptr noundef null) ; 0 uses
  %i.g = call ptr @proj_destroy(ptr noundef %i.e) ; 0 uses
  %i.h = call ptr @proj_create_ellipsoidal_2D_cs(ptr noundef %i.d, i32 noundef 0, ptr noundef nonnull @.str.4, double noundef 1.000000e+00) ; 3 uses
  %i.i = load double, ptr %i.a, align 8, !tbaa !38
  %i.j = fcmp une double %i.i, 0.000000e+00
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = call ptr @proj_get_ellipsoid(ptr noundef %i.d, ptr noundef nonnull %0) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  store double 0.000000e+00, ptr %i.b, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  store double 0.000000e+00, ptr %i.c, align 8, !tbaa !38
  %i.l = call i32 @proj_ellipsoid_get_parameters(ptr noundef %i.d, ptr noundef %i.k, ptr noundef nonnull %i.b, ptr noundef null, ptr noundef null, ptr noundef nonnull %i.c) ; 0 uses
  %i.m = call ptr @proj_get_name(ptr noundef %i.k)
  %i.n = load double, ptr %i.b, align 8, !tbaa !38
  %i.o = load double, ptr %i.c, align 8, !tbaa !38
  %i.p = call ptr @proj_create_geographic_crs(ptr noundef %i.d, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef %i.m, double noundef %i.n, double noundef %i.o, ptr noundef nonnull @.str.7, double noundef 0.000000e+00, ptr noundef null, double noundef 0.000000e+00, ptr noundef %i.h)
  %i.q = call ptr @proj_destroy(ptr noundef %i.k) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.r = call ptr @proj_crs_get_datum(ptr noundef %i.d, ptr noundef nonnull %0) ; 3 uses
  %i.s = call ptr @proj_crs_get_datum_ensemble(ptr noundef %i.d, ptr noundef nonnull %0) ; 2 uses
  %.not = icmp eq ptr %i.r, null
  %i.t = select i1 %.not, ptr %i.s, ptr %i.r
  %i.u = call ptr @proj_create_geographic_crs_from_datum(ptr noundef %i.d, ptr noundef nonnull @.str.8, ptr noundef %i.t, ptr noundef %i.h)
  %i.v = call ptr @proj_destroy(ptr noundef %i.r) ; 0 uses
  %i.w = call ptr @proj_destroy(ptr noundef %i.s) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ %i.p, %bb.b ], [ %i.u, %bb.c ]
  %i.x = call ptr @proj_destroy(ptr noundef %i.h) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret ptr %.0
}

declare ptr @proj_crs_get_coordoperation(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @proj_create_cartesian_2D_cs(ptr noundef, i32 noundef, ptr noundef, double noundef) local_unnamed_addr #3

declare ptr @proj_create_projected_crs(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @proj_destroy(ptr noundef) local_unnamed_addr #3

declare ptr @proj_create_crs_to_crs_from_pj(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

declare ptr @proj_get_ellipsoid(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @proj_ellipsoid_get_parameters(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @proj_crs_get_coordinate_system(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @proj_cs_get_axis_info(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @proj_as_proj_string(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @__gxx_personality_v0(...)

declare ptr @proj_create(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @_Z14proj_log_errorPK8PJconstsPKcz(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

declare i32 @proj_errno_set(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare ptr @proj_get_prime_meridian(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @proj_prime_meridian_get_parameters(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @proj_create_ellipsoidal_2D_cs(ptr noundef, i32 noundef, ptr noundef, double noundef) local_unnamed_addr #3

declare ptr @proj_create_geographic_crs(ptr noundef, ptr noundef, ptr noundef, ptr noundef, double noundef, double noundef, ptr noundef, double noundef, ptr noundef, double noundef, ptr noundef) local_unnamed_addr #3

declare ptr @proj_get_name(ptr noundef) local_unnamed_addr #3

declare ptr @proj_crs_get_datum(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @proj_crs_get_datum_ensemble(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @proj_create_geographic_crs_from_datum(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @proj_errno_reset(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #5

declare void @_Z22pj_geocentric_latitudePK8PJconsts12PJ_DIRECTION8PJ_COORD(ptr dead_on_unwind writable sret(%union.PJ_COORD) align 8, ptr noundef, i32 noundef, ptr noundef byval(%union.PJ_COORD) align 8) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #6

declare noundef double @_Z6adjlond(double noundef) local_unnamed_addr #3

declare noundef i32 @_Z8pj_deriv5PJ_LPdPK8PJconstsP6DERIVS(double, double, double noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @cos(double noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @hypot(double noundef, double noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sin(double noundef) local_unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @atan2(double noundef, double noundef) local_unnamed_addr #7

declare noundef double @_Z5aasinP6pj_ctxd(ptr noundef, double noundef) local_unnamed_addr #3

declare i32 @proj_errno_restore(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #6

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEPKcmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #10

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i8 noundef signext) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #5

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind }
attributes #12 = { noreturn }
attributes #13 = { builtin nounwind }
attributes #14 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"p1 _ZTS6pj_ctx", !8, i64 0}
!10 = !{!"p1 omnipotent char", !8, i64 0}
!11 = !{!"p1 _ZTS8ARG_list", !8, i64 0}
!12 = !{!"p1 _ZTS8PJconsts", !8, i64 0}
!13 = !{!"p1 _ZTS13geod_geodesic", !8, i64 0}
!14 = !{!"double", !4, i64 0}
!15 = !{!"_ZTS11pj_io_units", !4, i64 0}
!16 = !{!"p1 _ZTSN5osgeo4proj4util10BaseObjectE", !8, i64 0}
!17 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !8, i64 0}
!18 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !17, i64 0}
!19 = !{!"_ZTSSt12__shared_ptrIN5osgeo4proj4util10BaseObjectELN9__gnu_cxx12_Lock_policyE2EE", !16, i64 0, !18, i64 8}
!20 = !{!"_ZTSSt10shared_ptrIN5osgeo4proj4util10BaseObjectEE", !19, i64 0}
!21 = !{!"bool", !4, i64 0}
!22 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !10, i64 0}
!23 = !{!"long", !4, i64 0}
!24 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !22, i64 0, !23, i64 8, !4, i64 16}
!25 = !{!"p1 _ZTSN5osgeo4proj9operation15GridDescriptionE", !8, i64 0}
!26 = !{!"_ZTSNSt12_Vector_baseIN5osgeo4proj9operation15GridDescriptionESaIS3_EE17_Vector_impl_dataE", !25, i64 0, !25, i64 8, !25, i64 16}
!27 = !{!"_ZTSNSt12_Vector_baseIN5osgeo4proj9operation15GridDescriptionESaIS3_EE12_Vector_implE", !26, i64 0}
!28 = !{!"_ZTSSt12_Vector_baseIN5osgeo4proj9operation15GridDescriptionESaIS3_EE", !27, i64 0}
!29 = !{!"_ZTSSt6vectorIN5osgeo4proj9operation15GridDescriptionESaIS3_EE", !28, i64 0}
!30 = !{!"_ZTS7PJ_TYPE", !4, i64 0}
!31 = !{!"p1 _ZTS16PJCoordOperation", !8, i64 0}
!32 = !{!"_ZTSNSt12_Vector_baseI16PJCoordOperationSaIS0_EE17_Vector_impl_dataE", !31, i64 0, !31, i64 8, !31, i64 16}
!33 = !{!"_ZTSNSt12_Vector_baseI16PJCoordOperationSaIS0_EE12_Vector_implE", !32, i64 0}
!34 = !{!"_ZTSSt12_Vector_baseI16PJCoordOperationSaIS0_EE", !33, i64 0}
!35 = !{!"_ZTSSt6vectorI16PJCoordOperationSaIS0_EE", !34, i64 0}
!36 = !{!"_ZTS8PJconsts", !9, i64 0, !10, i64 8, !10, i64 16, !11, i64 24, !10, i64 32, !12, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !13, i64 80, !8, i64 88, !5, i64 96, !8, i64 104, !8, i64 112, !8, i64 120, !8, i64 128, !8, i64 136, !8, i64 144, !8, i64 152, !8, i64 160, !14, i64 168, !14, i64 176, !14, i64 184, !14, i64 192, !14, i64 200, !14, i64 208, !14, i64 216, !14, i64 224, !14, i64 232, !14, i64 240, !14, i64 248, !14, i64 256, !14, i64 264, !14, i64 272, !14, i64 280, !14, i64 288, !14, i64 296, !14, i64 304, !14, i64 312, !14, i64 320, !14, i64 328, !14, i64 336, !5, i64 344, !5, i64 348, !5, i64 352, !5, i64 356, !5, i64 360, !5, i64 364, !5, i64 368, !5, i64 372, !5, i64 376, !15, i64 380, !15, i64 384, !12, i64 392, !12, i64 400, !12, i64 408, !12, i64 416, !12, i64 424, !12, i64 432, !14, i64 440, !14, i64 448, !14, i64 456, !14, i64 464, !14, i64 472, !14, i64 480, !14, i64 488, !14, i64 496, !14, i64 504, !14, i64 512, !14, i64 520, !5, i64 528, !4, i64 536, !5, i64 592, !8, i64 600, !8, i64 608, !14, i64 616, !14, i64 624, !5, i64 632, !4, i64 636, !20, i64 640, !21, i64 656, !14, i64 664, !21, i64 672, !24, i64 680, !24, i64 712, !24, i64 744, !21, i64 776, !29, i64 784, !30, i64 808, !35, i64 816, !5, i64 840, !21, i64 844, !21, i64 845, !21, i64 846, !12, i64 848}
!37 = !{!36, !9, i64 0}
!38 = !{!14, !14, i64 0}
!39 = !{!36, !12, i64 848}
!40 = !{!22, !10, i64 0}
!41 = !{!23, !23, i64 0}
!42 = !{!24, !10, i64 0}
!43 = !{!4, !4, i64 0}
!44 = !{!24, !23, i64 8}
!45 = !{!36, !14, i64 504}
!46 = !{!"_ZTS6DERIVS", !14, i64 0, !14, i64 8, !14, i64 16, !14, i64 24}
!47 = !{!"_ZTS7FACTORS", !46, i64 0, !14, i64 32, !14, i64 40, !14, i64 48, !14, i64 56, !14, i64 64, !14, i64 72, !14, i64 80, !14, i64 88, !5, i64 96}
!48 = !{!47, !5, i64 96}
!49 = !{!36, !5, i64 348}
!50 = !{!36, !10, i64 8}
!51 = !{!36, !14, i64 440}
!52 = !{!36, !5, i64 344}
!53 = !{!36, !14, i64 184}
!54 = !{!47, !14, i64 32}
!55 = !{!47, !14, i64 40}
!56 = !{!36, !14, i64 216}
!57 = !{!36, !14, i64 256}
!58 = !{!47, !14, i64 64}
!59 = !{!47, !14, i64 72}
!60 = !{!47, !14, i64 56}
!61 = !{!47, !14, i64 88}
!62 = !{!47, !14, i64 80}
!63 = !{!47, !14, i64 48}
end_hunk_1
