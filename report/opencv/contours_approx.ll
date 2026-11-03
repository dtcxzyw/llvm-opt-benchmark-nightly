Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/contours_approx?download=true
inline.NumInlined: 263
inline.NumDeleted: 128
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87", target_cpu: "x86-64")
    ".globl _ZSt21ios_base_library_initv"

%"class.cv::Point_" = type { i32, i32 }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.std::allocator.6" = type { i8 }

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_ = comdat any

$_ZN2cv12BlockStorageINS_6Point_IiEELm1024ELm0EE9push_backERKS2_ = comdat any

@_ZN12_GLOBAL__N_115chainCodeDeltasE = internal unnamed_addr constant [8 x %"class.cv::Point_"] [%"class.cv::Point_" { i32 1, i32 0 }, %"class.cv::Point_" { i32 1, i32 -1 }, %"class.cv::Point_" { i32 0, i32 -1 }, %"class.cv::Point_" { i32 -1, i32 -1 }, %"class.cv::Point_" { i32 -1, i32 0 }, %"class.cv::Point_" { i32 -1, i32 1 }, %"class.cv::Point_" { i32 0, i32 1 }, %"class.cv::Point_" { i32 1, i32 1 }], align 16
@_ZN12_GLOBAL__N_18abs_diffE = internal unnamed_addr constant [16 x i8] c"\01\02\03\04\03\02\01\00\01\02\03\04\03\02\01\00", align 16
@.str = private unnamed_addr constant [16 x i8] c"vector::reserve\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"k <= len\00", align 1
@__func__._ZN12_GLOBAL__N_112calc_supportERKSt6vectorINS_10ApproxItemESaIS1_EEm = private unnamed_addr constant [13 x i8] c"calc_support\00", align 1
@.str.4 = private unnamed_addr constant [70 x i8] c"/opt-bench/work/opencv/opencv/modules/imgproc/src/contours_approx.cpp\00", align 1
@.str.5 = private unnamed_addr constant [50 x i8] c"basic_string: construction from null is not valid\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"0 <= sk.f && sk.f <= 2.2\00", align 1
@__func__._ZN12_GLOBAL__N_111calc_cosineERKSt6vectorINS_10ApproxItemESaIS1_EEm = private unnamed_addr constant [12 x i8] c"calc_cosine\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"len > 0\00", align 1
@__func__._ZN12_GLOBAL__N_114calc_new_startERSt6vectorINS_10ApproxItemESaIS1_EERm = private unnamed_addr constant [15 x i8] c"calc_new_start\00", align 1
@llvm.global_ctors = appending global [0 x { i32, ptr, ptr }] zeroinitializer

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv20approximateChainTC89ERKNS_18ContourDataStorageIaLm1024ELm0EEERKNS_6Point_IiEEiRNS0_IS5_Lm1024ELm0EEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(8) %1, i32 noundef %2, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %5 = alloca %"class.std::allocator.6", align 1  ; 3 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %7 = alloca %"class.std::allocator.6", align 1  ; 3 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %9 = alloca %"class.std::allocator.6", align 1  ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !52   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !53   ; 2 uses
  %i.e = sub i64 %i.b, %i.d                       ; 4 uses
  %i.f = icmp eq i64 %i.b, %i.d
  br i1 %i.f, label %_ZN2cv18ContourDataStorageINS_6Point_IiEELm1024ELm0EE9push_backERKS2_.exit, label %bb.b

_ZN2cv18ContourDataStorageINS_6Point_IiEELm1024ELm0EE9push_backERKS2_.exit: ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.pre.i = load ptr, ptr %3, align 8, !tbaa !56  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 40
  %i.j = load i64, ptr %i.i, align 8, !tbaa !18
  store i64 %i.j, ptr %i.h, align 8, !tbaa !57
  tail call void @_ZN2cv12BlockStorageINS_6Point_IiEELm1024ELm0EE9push_backERKS2_(ptr noundef nonnull align 8 dereferenceable(48) %.pre.i, ptr noundef nonnull align 4 dereferenceable(8) %1)
  %i.k = load ptr, ptr %3, align 8, !tbaa !56
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.m = load i64, ptr %i.l, align 8, !tbaa !18
  store i64 %i.m, ptr %i.g, align 8, !tbaa !58
  br label %_ZNSt6vectorIN12_GLOBAL__N_110ApproxItemESaIS1_EED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.n = icmp eq i32 %2, 3
  %i.o = icmp eq i32 %2, 4
  %i.p = add i32 %2, -3
  %i.q = icmp ult i32 %i.p, 2
  %.sroa.0.0.copyload = load i64, ptr %1, align 4, !tbaa !19 ; 2 uses
  %.sroa.062.0.extract.trunc.i = trunc i64 %.sroa.0.0.copyload to i32
  %.sroa.4.0.extract.shift.i = lshr i64 %.sroa.0.0.copyload, 32
  %.sroa.4.0.extract.trunc.i = trunc nuw i64 %.sroa.4.0.extract.shift.i to i32
  %i.r = lshr i64 %i.e, 1                         ; 3 uses
  %i.s = icmp ugt i64 %i.e, 768614336404564651
  br i1 %i.s, label %.invoke.i, label %bb.c

.invoke.i:                                        ; preds = %bb.n, %bb.b
  %.sroa.0.10 = phi ptr [ null, %bb.b ], [ %.sroa.0.7, %bb.n ]
  %.sroa.43.10 = phi ptr [ null, %bb.b ], [ %.sroa.43.7, %bb.n ]
  %i.t = phi ptr [ @.str, %bb.b ], [ @.str.2, %bb.n ]
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull %i.t) #12
          to label %.cont.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp, !noalias !59

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.c:                                             ; preds = %bb.b
  %.not82.i = icmp eq i64 %i.r, 0
  br i1 %.not82.i, label %.lr.ph.i, label %_ZNSt12_Vector_baseIN12_GLOBAL__N_110ApproxItemESaIS1_EE11_M_allocateEm.exit.i.i

_ZNSt12_Vector_baseIN12_GLOBAL__N_110ApproxItemESaIS1_EE11_M_allocateEm.exit.i.i: ; preds = %bb.c
  %i.u = mul nuw nsw i64 %i.r, 24
  %i.v = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.u) #13, !noalias !59 ; 2 uses
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %i.v, i64 %i.r
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %_ZNSt12_Vector_baseIN12_GLOBAL__N_110ApproxItemESaIS1_EE11_M_allocateEm.exit.i.i
  %.sroa.0.6 = phi ptr [ null, %bb.c ], [ %i.v, %_ZNSt12_Vector_baseIN12_GLOBAL__N_110ApproxItemESaIS1_EE11_M_allocateEm.exit.i.i ] ; 4 uses
  %.sroa.43.6 = phi ptr [ null, %bb.c ], [ %i.w, %_ZNSt12_Vector_baseIN12_GLOBAL__N_110ApproxItemESaIS1_EE11_M_allocateEm.exit.i.i ] ; 2 uses
  %i.x = add nsw i64 %i.e, -1
  br label %bb.d

bb.d:                                             ; preds = %bb.q, %.lr.ph.i
  %.sroa.0.7 = phi ptr [ %.sroa.0.6, %.lr.ph.i ], [ %.sroa.0.8, %bb.q ] ; 4 uses
  %.sroa.26.4 = phi ptr [ %.sroa.0.6, %.lr.ph.i ], [ %.sroa.26.5, %bb.q ]
  %.sroa.43.7 = phi ptr [ %.sroa.43.6, %.lr.ph.i ], [ %.sroa.43.8, %bb.q ] ; 4 uses
  %.val.i.i.i.i = phi ptr [ %.sroa.0.6, %.lr.ph.i ], [ %.val.i.i.i68.i, %bb.q ] ; 7 uses
  %i.y = phi ptr [ %.sroa.43.6, %.lr.ph.i ], [ %i.cm, %bb.q ] ; 6 uses
  %i.z = phi ptr [ %.sroa.0.6, %.lr.ph.i ], [ %i.cn, %bb.q ] ; 7 uses
  %.065.i = phi i64 [ 0, %.lr.ph.i ], [ %i.cs, %bb.q ] ; 4 uses
  %.sroa.4.064.i = phi i32 [ %.sroa.4.0.extract.trunc.i, %.lr.ph.i ], [ %i.cr, %bb.q ] ; 2 uses
  %.sroa.062.063.i = phi i32 [ %.sroa.062.0.extract.trunc.i, %.lr.ph.i ], [ %i.cq, %bb.q ] ; 2 uses
  %i.aa = icmp eq i64 %.065.i, 0
  br i1 %i.aa, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.ab = load ptr, ptr %0, align 8, !tbaa !60, !noalias !59 ; 2 uses
  %i.ac = load i64, ptr %i.c, align 8, !tbaa !53, !noalias !59 ; 2 uses
  %i.ad = add i64 %i.x, %i.ac                     ; 2 uses
  %i.ae = lshr i64 %i.ad, 10                      ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !68, !noalias !59 ; 3 uses
  %i.ah = icmp ult i64 %i.ae, %i.ag
  br i1 %i.ah, label %bb.f, label %_ZNK2cv18ContourDataStorageIaLm1024ELm0EEixEm.exit.i

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.trap() #14
  unreachable

_ZNK2cv18ContourDataStorageIaLm1024ELm0EEixEm.exit.i: ; preds = %bb.e
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.aj = sub nuw nsw i64 %i.ae, %i.ag
  %i.ak = load ptr, ptr %i.ai, align 8, !tbaa !69, !noalias !59 ; 2 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.aj
  br label %bb.i

bb.g:                                             ; preds = %bb.d
  %i.am = add nsw i64 %.065.i, -1
  %i.an = load ptr, ptr %0, align 8, !tbaa !60, !noalias !59 ; 2 uses
  %i.ao = load i64, ptr %i.c, align 8, !tbaa !53, !noalias !59 ; 2 uses
  %i.ap = add i64 %i.am, %i.ao                    ; 2 uses
  %i.aq = lshr i64 %i.ap, 10                      ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !68, !noalias !59 ; 3 uses
  %i.at = icmp ult i64 %i.aq, %i.as
  br i1 %i.at, label %bb.h, label %_ZNK2cv18ContourDataStorageIaLm1024ELm0EEixEm.exit47.i

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.trap() #14
  unreachable

_ZNK2cv18ContourDataStorageIaLm1024ELm0EEixEm.exit47.i: ; preds = %bb.g
  %i.au = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.av = sub nuw nsw i64 %i.aq, %i.as
  %i.aw = load ptr, ptr %i.au, align 8, !tbaa !69, !noalias !59 ; 2 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.av
  br label %bb.i

bb.i:                                             ; preds = %_ZNK2cv18ContourDataStorageIaLm1024ELm0EEixEm.exit47.i, %_ZNK2cv18ContourDataStorageIaLm1024ELm0EEixEm.exit.i
  %.sink84.i = phi i64 [ %i.ap, %_ZNK2cv18ContourDataStorageIaLm1024ELm0EEixEm.exit47.i ], [ %i.ad, %_ZNK2cv18ContourDataStorageIaLm1024ELm0EEixEm.exit.i ]
  %.sink.in.i = phi ptr [ %i.ax, %_ZNK2cv18ContourDataStorageIaLm1024ELm0EEixEm.exit47.i ], [ %i.al, %_ZNK2cv18ContourDataStorageIaLm1024ELm0EEixEm.exit.i ]
  %i.ay = phi ptr [ %i.aw, %_ZNK2cv18ContourDataStorageIaLm1024ELm0EEixEm.exit47.i ], [ %i.ak, %_ZNK2cv18ContourDataStorageIaLm1024ELm0EEixEm.exit.i ]
  %i.az = phi i64 [ %i.as, %_ZNK2cv18ContourDataStorageIaLm1024ELm0EEixEm.exit47.i ], [ %i.ag, %_ZNK2cv18ContourDataStorageIaLm1024ELm0EEixEm.exit.i ] ; 2 uses
  %i.ba = phi i64 [ %i.ao, %_ZNK2cv18ContourDataStorageIaLm1024ELm0EEixEm.exit47.i ], [ %i.ac, %_ZNK2cv18ContourDataStorageIaLm1024ELm0EEixEm.exit.i ]
  %i.bb = add i64 %i.ba, %.065.i                  ; 2 uses
  %i.bc = lshr i64 %i.bb, 10                      ; 2 uses
  %i.bd = icmp samesign ult i64 %i.bc, %i.az
  br i1 %i.bd, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.trap() #14
  unreachable

bb.k:                                             ; preds = %bb.i
  %.sink.i = load ptr, ptr %.sink.in.i, align 8, !tbaa !20, !noalias !59
  %i.be = and i64 %.sink84.i, 1023
  %i.bf = getelementptr inbounds nuw i8, ptr %.sink.i, i64 %i.be
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !21, !noalias !59
  %i.bh = sub nuw nsw i64 %i.bc, %i.az
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.bh
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !20, !noalias !59
  %i.bk = and i64 %i.bb, 1023
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !21, !noalias !59
  %i.bn = sext i8 %i.bm to i64                    ; 2 uses
  %i.bo = sext i8 %i.bg to i64
  %i.bp = sub nsw i64 %i.bn, %i.bo
  %i.bq = getelementptr i8, ptr @_ZN12_GLOBAL__N_18abs_diffE, i64 %i.bp
  %i.br = getelementptr i8, ptr %i.bq, i64 7
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !21, !noalias !59
  %.fr = freeze i8 %i.bs                          ; 2 uses
  %.not168 = icmp eq i8 %.fr, 0                   ; 2 uses
  br i1 %.not168, label %switch.early.test, label %bb.l

switch.early.test:                                ; preds = %bb.k
  switch i32 %2, label %bb.q [
    i32 4, label %bb.l
    i32 3, label %bb.l
    i32 1, label %bb.l
  ]

bb.l:                                             ; preds = %switch.early.test, %switch.early.test, %switch.early.test, %bb.k
  %i.bt = sext i8 %.fr to i32                     ; 2 uses
  %.sroa.4.0.insert.ext.i = zext i32 %.sroa.4.064.i to i64
  %.sroa.4.0.insert.shift.i = shl nuw i64 %.sroa.4.0.insert.ext.i, 32
  %.sroa.062.0.insert.ext.i = zext i32 %.sroa.062.063.i to i64
  %.sroa.062.0.insert.insert.i = or disjoint i64 %.sroa.4.0.insert.shift.i, %.sroa.062.0.insert.ext.i ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.z, %i.y
  br i1 %.not.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i64 %.sroa.062.0.insert.insert.i, ptr %i.z, align 8, !tbaa !19, !noalias !59
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store i64 0, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !22, !noalias !59
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store i32 %i.bt, ptr %.sroa.7.0..sroa_idx.i, align 8, !tbaa !19, !noalias !59
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.z, i64 20
  store i8 0, ptr %.sroa.8.0..sroa_idx.i, align 4, !tbaa !71, !noalias !59
  br label %_ZNSt6vectorIN12_GLOBAL__N_110ApproxItemESaIS1_EE9push_backEOS1_.exit.i

bb.n:                                             ; preds = %bb.l
  %i.bu = ptrtoint ptr %i.y to i64
  %i.bv = ptrtoint ptr %.val.i.i.i.i to i64
  %i.bw = sub i64 %i.bu, %i.bv                    ; 4 uses
  %i.bx = icmp eq i64 %i.bw, 9223372036854775800
  br i1 %i.bx, label %.invoke.i, label %_ZNKSt6vectorIN12_GLOBAL__N_110ApproxItemESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i

_ZNKSt6vectorIN12_GLOBAL__N_110ApproxItemESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.n
  %i.by = sdiv exact i64 %i.bw, 24                ; 3 uses
  %i.bz = icmp eq ptr %i.y, %.val.i.i.i.i         ; 2 uses
  %.sroa.speculated.i.i.i.i.i = select i1 %i.bz, i64 1, i64 %i.by
  %i.ca = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.by ; 2 uses
  %i.cb = icmp ult i64 %i.ca, %i.by
  %i.cc = tail call i64 @llvm.umin.i64(i64 %i.ca, i64 384307168202282325)
  %i.cd = select i1 %i.cb, i64 384307168202282325, i64 %i.cc ; 3 uses
  %.not.i.i.i.i49.i = icmp ne i64 %i.cd, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i49.i)
  %i.ce = mul nuw nsw i64 %i.cd, 24
  %i.cf = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ce) #13
          to label %.noexc51.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit, !noalias !59 ; 6 uses

.noexc51.i:                                       ; preds = %_ZNKSt6vectorIN12_GLOBAL__N_110ApproxItemESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.bw ; 4 uses
  store i64 %.sroa.062.0.insert.insert.i, ptr %i.cg, align 8, !tbaa !19, !noalias !59
  %.sroa.6.0..sroa_idx55.i = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  store i64 0, ptr %.sroa.6.0..sroa_idx55.i, align 8, !tbaa !22, !noalias !59
  %.sroa.7.0..sroa_idx57.i = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  store i32 %i.bt, ptr %.sroa.7.0..sroa_idx57.i, align 8, !tbaa !19, !noalias !59
  %.sroa.8.0..sroa_idx59.i = getelementptr inbounds nuw i8, ptr %i.cg, i64 20
  store i8 0, ptr %.sroa.8.0..sroa_idx59.i, align 4, !tbaa !71, !noalias !59
  br i1 %i.bz, label %_ZNSt6vectorIN12_GLOBAL__N_110ApproxItemESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit26.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.noexc51.i, %.lr.ph.i.i.i.i.i.i.i
  %.03.i.i.i.i.i.i.i = phi ptr [ %i.ci, %.lr.ph.i.i.i.i.i.i.i ], [ %i.cf, %.noexc51.i ] ; 2 uses
  %.092.i.i.i.i.i.i.i = phi ptr [ %i.ch, %.lr.ph.i.i.i.i.i.i.i ], [ %.val.i.i.i.i, %.noexc51.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.03.i.i.i.i.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(24) %.092.i.i.i.i.i.i.i, i64 24, i1 false), !tbaa.struct !72, !alias.scope !73, !noalias !59
  %i.ch = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ch, %i.y
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN12_GLOBAL__N_110ApproxItemESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit26.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !32

_ZNSt6vectorIN12_GLOBAL__N_110ApproxItemESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit26.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %.noexc51.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.cf, %.noexc51.i ], [ %i.ci, %.lr.ph.i.i.i.i.i.i.i ]
  %.not.i27.i.i.i.i = icmp eq ptr %.val.i.i.i.i, null
  br i1 %.not.i27.i.i.i.i, label %_ZNSt6vectorIN12_GLOBAL__N_110ApproxItemESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIN12_GLOBAL__N_110ApproxItemESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit26.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.val.i.i.i.i, i64 noundef %i.bw) #15, !noalias !59
  br label %_ZNSt6vectorIN12_GLOBAL__N_110ApproxItemESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i

_ZNSt6vectorIN12_GLOBAL__N_110ApproxItemESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i: ; preds = %bb.o, %_ZNSt6vectorIN12_GLOBAL__N_110ApproxItemESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit26.i.i.i.i
  %i.cj = getelementptr inbounds nuw [24 x i8], ptr %i.cf, i64 %i.cd ; 2 uses
  br label %_ZNSt6vectorIN12_GLOBAL__N_110ApproxItemESaIS1_EE9push_backEOS1_.exit.i

_ZNSt6vectorIN12_GLOBAL__N_110ApproxItemESaIS1_EE9push_backEOS1_.exit.i: ; preds = %_ZNSt6vectorIN12_GLOBAL__N_110ApproxItemESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i, %bb.m
  %.sroa.0.9 = phi ptr [ %i.cf, %_ZNSt6vectorIN12_GLOBAL__N_110ApproxItemESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i ], [ %.sroa.0.7, %bb.m ] ; 2 uses
  %.0.lcssa.i.i.i.i.i.i.i.pn = phi ptr [ %.0.lcssa.i.i.i.i.i.i.i, %_ZNSt6vectorIN12_GLOBAL__N_110ApproxItemESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i ], [ %i.z, %bb.m ] ; 2 uses
  %.sroa.43.9 = phi ptr [ %i.cj, %_ZNSt6vectorIN12_GLOBAL__N_110ApproxItemESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i ], [ %.sroa.43.7, %bb.m ] ; 2 uses
  %.val.i.i.i69.i = phi ptr [ %i.cf, %_ZNSt6vectorIN12_GLOBAL__N_110ApproxItemESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i ], [ %.val.i.i.i.i, %bb.m ] ; 2 uses
  %i.ck = phi ptr [ %i.cj, %_ZNSt6vectorIN12_GLOBAL__N_110ApproxItemESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i ], [ %i.y, %bb.m ] ; 2 uses
  %.sroa.26.6 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i.pn, i64 24 ; 4 uses
  br i1 %.not168, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_ZNSt6vectorIN12_GLOBAL__N_110ApproxItemESaIS1_EE9push_backEOS1_.exit.i
  %i.cl = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i.pn, i64 20
  store i8 1, ptr %i.cl, align 4, !tbaa !77, !noalias !59
  br label %bb.q

.loopexit.split-lp.loopexit.split-lp.i.loopexit:  ; preds = %_ZNKSt6vectorIN12_GLOBAL__N_110ApproxItemESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %lpad.loopexit175 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp: ; preds = %.invoke.i
  %lpad.loopexit.split-lp176 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.loopexit.split-lp.i

.loopexit.split-lp.loopexit.split-lp.i:           ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.i.loopexit
  %.sroa.0.5 = phi ptr [ %.sroa.0.7, %.loopexit.split-lp.loopexit.split-lp.i.loopexit ], [ %.sroa.0.10, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp ] ; 3 uses
  %.sroa.43.5 = phi ptr [ %.sroa.43.7, %.loopexit.split-lp.loopexit.split-lp.i.loopexit ], [ %.sroa.43.10, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp ]
  %lpad.phi177 = phi { ptr, i32 } [ %lpad.loopexit175, %.loopexit.split-lp.loopexit.split-lp.i.loopexit ], [ %lpad.loopexit.split-lp176, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp ] ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.sroa.0.5, null
  br i1 %.not.i.i.i.i, label %common.resume, label %bb.r

bb.q:                                             ; preds = %switch.early.test, %bb.p, %_ZNSt6vectorIN12_GLOBAL__N_110ApproxItemESaIS1_EE9push_backEOS1_.exit.i
  %.sroa.0.8 = phi ptr [ %.sroa.0.9, %_ZNSt6vectorIN12_GLOBAL__N_110ApproxItemESaIS1_EE9push_backEOS1_.exit.i ], [ %.sroa.0.9, %bb.p ], [ %.sroa.0.7, %switch.early.test ] ; 48 uses
  %.sroa.26.5 = phi ptr [ %.sroa.26.6, %_ZNSt6vectorIN12_GLOBAL__N_110ApproxItemESaIS1_EE9push_backEOS1_.exit.i ], [ %.sroa.26.6, %bb.p ], [ %.sroa.26.4, %switch.early.test ] ; 16 uses
  %.sroa.43.8 = phi ptr [ %.sroa.43.9, %_ZNSt6vectorIN12_GLOBAL__N_110ApproxItemESaIS1_EE9push_backEOS1_.exit.i ], [ %.sroa.43.9, %bb.p ], [ %.sroa.43.7, %switch.early.test ] ; 15 uses
  %.val.i.i.i68.i = phi ptr [ %.val.i.i.i69.i, %_ZNSt6vectorIN12_GLOBAL__N_110ApproxItemESaIS1_EE9push_backEOS1_.exit.i ], [ %.val.i.i.i69.i, %bb.p ], [ %.val.i.i.i.i, %switch.early.test ]
  %i.cm = phi ptr [ %i.ck, %_ZNSt6vectorIN12_GLOBAL__N_110ApproxItemESaIS1_EE9push_backEOS1_.exit.i ], [ %i.ck, %bb.p ], [ %i.y, %switch.early.test ]
  %i.cn = phi ptr [ %.sroa.26.6, %_ZNSt6vectorIN12_GLOBAL__N_110ApproxItemESaIS1_EE9push_backEOS1_.exit.i ], [ %.sroa.26.6, %bb.p ], [ %i.z, %switch.early.test ]
  %i.co = getelementptr inbounds [8 x i8], ptr @_ZN12_GLOBAL__N_115chainCodeDeltasE, i64 %i.bn ; 2 uses
  %.val42.i = load i32, ptr %i.co, align 8, !tbaa !78, !noalias !59
  %i.cp = getelementptr i8, ptr %i.co, i64 4
  %.val43.i = load i32, ptr %i.cp, align 4, !tbaa !79, !noalias !59
  %i.cq = add nsw i32 %.val42.i, %.sroa.062.063.i
  %i.cr = add nsw i32 %.val43.i, %.sroa.4.064.i
  %i.cs = add nuw i64 %.065.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.cs, %i.e
  br i1 %exitcond.not.i, label %_ZN12_GLOBAL__N_16pass_0ERKN2cv18ContourDataStorageIaLm1024ELm0EEENS0_6Point_IiEEbb.exit, label %bb.d, !llvm.loop !33

bb.r:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.i
  %i.ct = ptrtoint ptr %.sroa.43.5 to i64
  %i.cu = ptrtoint ptr %.sroa.0.5 to i64
  %i.cv = sub i64 %i.ct, %i.cu
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.5, i64 noundef %i.cv) #15, !noalias !59
  br label %common.resume

common.resume:                                    ; preds = %.body109.thread, %.body109, %.loopexit.split-lp.loopexit.split-lp.i, %bb.r
  %common.resume.op = phi { ptr, i32 } [ %lpad.phi177, %bb.r ], [ %lpad.phi177, %.loopexit.split-lp.loopexit.split-lp.i ], [ %.pn, %.body109 ], [ %.pn166, %.body109.thread ]
  resume { ptr, i32 } %common.resume.op

_ZN12_GLOBAL__N_16pass_0ERKN2cv18ContourDataStorageIaLm1024ELm0EEENS0_6Point_IiEEbb.exit: ; preds = %bb.q
  br i1 %i.q, label %.preheader173, label %_ZN12_GLOBAL__N_114calc_new_startERSt6vectorINS_10ApproxItemESaIS1_EERm.exit

.preheader173:                                    ; preds = %_ZN12_GLOBAL__N_16pass_0ERKN2cv18ContourDataStorageIaLm1024ELm0EEENS0_6Point_IiEEbb.exit
  %i.cw = ptrtoint ptr %.sroa.26.5 to i64
  %i.cx = ptrtoint ptr %.sroa.0.8 to i64          ; 2 uses
  %i.cy = sub i64 %i.cw, %i.cx                    ; 8 uses
  %i.cz = sdiv exact i64 %i.cy, 24                ; 31 uses
  %.not214 = icmp eq ptr %.sroa.26.5, %.sroa.0.8
  br i1 %.not214, label %.preheader172, label %.lr.ph.split

.preheader172:                                    ; preds = %bb.ag, %.preheader173
  %.not215 = icmp eq ptr %.sroa.26.5, %.sroa.0.8  ; 2 uses
  br i1 %.not215, label %._crit_edge, label %.lr.ph211

.lr.ph.split:                                     ; preds = %.preheader173, %bb.ag
  %.043203 = phi i64 [ %i.gy, %bb.ag ], [ 0, %.preheader173 ] ; 6 uses
  %i.da = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.8, i64 %.043203 ; 7 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 20
  %i.dc = load i8, ptr %i.db, align 4, !tbaa !77, !range !80, !noundef !81
  %i.dd = trunc nuw i8 %i.dc to i1
  br i1 %i.dd, label %bb.ag, label %.lr.ph.i77

.lr.ph.i77:                                       ; preds = %.lr.ph.split
  %i.de = getelementptr inbounds nuw i8, ptr %i.da, i64 4
  %i.df = load i32, ptr %i.da, align 8, !tbaa !82 ; 2 uses
  %i.dg = load i32, ptr %i.de, align 4, !tbaa !83 ; 2 uses
  br label %bb.u

._crit_edge.i:                                    ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #16
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.3, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %._crit_edge.i
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @__func__._ZN12_GLOBAL__N_112calc_supportERKSt6vectorINS_10ApproxItemESaIS1_EEm, ptr noundef nonnull @.str.4, i32 noundef 74) #12
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %.noexc
  unreachable

bb.t:                                             ; preds = %.noexc
  %i.dh = landingpad { ptr, i32 }
          cleanup
  %i.di = load ptr, ptr %8, align 8, !tbaa !26    ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.dk = icmp eq ptr %i.di, %i.dj
  br i1 %i.dk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.t
  %i.dl = load i64, ptr %i.dj, align 8, !tbaa !21
  %i.dm = add i64 %i.dl, 1
  call void @_ZdlPvm(ptr noundef %i.di, i64 noundef %i.dm) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #16
  br label %.body109.thread

bb.u:                                             ; preds = %bb.y, %.lr.ph.i77
  %.0618.i = phi i64 [ 1, %.lr.ph.i77 ], [ %i.ev, %bb.y ] ; 6 uses
  %.0627.i = phi i32 [ 0, %.lr.ph.i77 ], [ %i.ed, %bb.y ] ; 2 uses
  %.0636.i = phi i32 [ 0, %.lr.ph.i77 ], [ %i.eg, %bb.y ] ; 3 uses
  %.not71.i = icmp ult i64 %.043203, %.0618.i
  %.p.v.i = select i1 %.not71.i, i64 %i.cz, i64 0
  %.p.i = sub i64 %.p.v.i, %.0618.i
  %i.dn = add i64 %.0618.i, %.043203              ; 2 uses
  %i.do = icmp ult i64 %i.dn, %i.cz
  %i.dp = select i1 %i.do, i64 0, i64 %i.cz
  %i.dq = sub nuw i64 %i.dn, %i.dp
  %i.dr = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.8, i64 %i.dq ; 2 uses
  %i.ds = load i32, ptr %i.dr, align 8, !tbaa !82
  %i.dt = getelementptr [24 x i8], ptr %i.da, i64 %.p.i ; 2 uses
  %i.du = load i32, ptr %i.dt, align 8, !tbaa !82 ; 2 uses
  %i.dv = sub nsw i32 %i.ds, %i.du                ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dr, i64 4
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !83
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dt, i64 4
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !83 ; 2 uses
  %i.ea = sub nsw i32 %i.dx, %i.dz                ; 3 uses
  %i.eb = mul nsw i32 %i.dv, %i.dv
  %i.ec = mul nsw i32 %i.ea, %i.ea
  %i.ed = add nuw nsw i32 %i.ec, %i.eb            ; 3 uses
  %i.ee = sub nsw i32 %i.df, %i.du
  %i.ef = mul nsw i32 %i.ea, %i.ee
  %.neg.i = sub i32 %i.dz, %i.dg
  %.neg72.i = mul i32 %.neg.i, %i.dv
  %i.eg = add i32 %.neg72.i, %i.ef                ; 2 uses
  %i.eh = sitofp i32 %.0636.i to double
  %i.ei = uitofp nneg i32 %i.ed to double
  %i.ej = sitofp i32 %i.eg to double
  %i.ek = sitofp i32 %.0627.i to double
  %i.el = fneg double %i.ek
  %i.em = fmul nnan double %i.el, %i.ej
  %i.en = tail call double @llvm.fmuladd.f64(double %i.eh, double %i.ei, double %i.em)
  %i.eo = fptrunc double %i.en to float
  %i.ep = bitcast float %i.eo to i32              ; 2 uses
  %i.eq = icmp ugt i64 %.0618.i, 1
  br i1 %i.eq, label %bb.v, label %bb.y

bb.v:                                             ; preds = %bb.u
  %.not73.i = icmp slt i32 %.0627.i, %i.ed
  br i1 %.not73.i, label %bb.w, label %bb.z

bb.w:                                             ; preds = %bb.v
  %i.er = icmp sgt i32 %.0636.i, 0
  %i.es = icmp slt i32 %i.ep, 1
  %or.cond.i = select i1 %i.er, i1 %i.es, i1 false
  br i1 %or.cond.i, label %bb.z, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.et = icmp slt i32 %.0636.i, 0
  %i.eu = icmp sgt i32 %i.ep, -1
  %or.cond3.i = select i1 %i.et, i1 %i.eu, i1 false
  br i1 %or.cond3.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.u
  %i.ev = add i64 %.0618.i, 1                     ; 2 uses
  %.not.i78 = icmp ugt i64 %i.ev, %i.cz
  br i1 %.not.i78, label %._crit_edge.i, label %bb.u, !llvm.loop !34

bb.z:                                             ; preds = %bb.x, %bb.w, %bb.v
  %i.ew = add i64 %.0618.i, -1                    ; 3 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  store i64 %i.ew, ptr %i.ex, align 8, !tbaa !84
  br i1 %i.o, label %.lr.ph.i79.preheader, label %bb.ag

.lr.ph.i79.preheader:                             ; preds = %bb.z
  %i.ey = insertelement <2 x i32> poison, i32 %i.df, i64 0
  %i.ez = shufflevector <2 x i32> %i.ey, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.fa = insertelement <2 x i32> poison, i32 %i.dg, i64 0
  %i.fb = shufflevector <2 x i32> %i.fa, <2 x i32> poison, <2 x i32> zeroinitializer
  br label %.lr.ph.i79

bb.aa:                                            ; preds = %bb.af
  %i.fc = add i64 %.0675.i, -1                    ; 2 uses
  %.not.i83 = icmp eq i64 %i.fc, 0
  br i1 %.not.i83, label %_ZN12_GLOBAL__N_111calc_cosineERKSt6vectorINS_10ApproxItemESaIS1_EEm.exit, label %.lr.ph.i79, !llvm.loop !35

.lr.ph.i79:                                       ; preds = %.lr.ph.i79.preheader, %bb.aa
  %.0656.i = phi i32 [ %i.gv, %bb.aa ], [ 0, %.lr.ph.i79.preheader ] ; 3 uses
  %.0675.i = phi i64 [ %i.fc, %bb.aa ], [ %i.ew, %.lr.ph.i79.preheader ] ; 5 uses
  %.not74.i = icmp ult i64 %.043203, %.0675.i
  %.p.v.i80 = select i1 %.not74.i, i64 %i.cz, i64 0
  %.p.i81 = sub i64 %.p.v.i80, %.0675.i
  %i.fd = add i64 %.0675.i, %.043203              ; 2 uses
  %i.fe = icmp ult i64 %i.fd, %i.cz
  %i.ff = select i1 %i.fe, i64 0, i64 %i.cz
  %i.fg = sub nuw i64 %i.fd, %i.ff
  %i.fh = getelementptr [24 x i8], ptr %i.da, i64 %.p.i81
  %i.fi = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.8, i64 %i.fg
  %i.fj = load <2 x i32>, ptr %i.fh, align 8, !tbaa !19 ; 2 uses
  %i.fk = load <2 x i32>, ptr %i.fi, align 8, !tbaa !19 ; 2 uses
  %i.fl = shufflevector <2 x i32> %i.fj, <2 x i32> %i.fk, <2 x i32> <i32 0, i32 2>
  %i.fm = sub nsw <2 x i32> %i.fl, %i.ez          ; 4 uses
  %i.fn = shufflevector <2 x i32> %i.fj, <2 x i32> %i.fk, <2 x i32> <i32 1, i32 3>
  %i.fo = sub nsw <2 x i32> %i.fn, %i.fb          ; 4 uses
  %i.fp = or <2 x i32> %i.fo, %i.fm
  %i.fq = icmp eq <2 x i32> %i.fp, zeroinitializer ; 2 uses
  %i.fr = extractelement <2 x i1> %i.fq, i64 0
  %i.fs = extractelement <2 x i1> %i.fq, i64 1
  %or.cond.i82 = select i1 %i.fr, i1 true, i1 %i.fs
  br i1 %or.cond.i82, label %_ZN12_GLOBAL__N_111calc_cosineERKSt6vectorINS_10ApproxItemESaIS1_EEm.exit, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph.i79
  %i.ft = extractelement <2 x i32> %i.fm, i64 0
  %i.fu = extractelement <2 x i32> %i.fm, i64 1
  %i.fv = mul nsw i32 %i.fu, %i.ft
  %i.fw = extractelement <2 x i32> %i.fo, i64 0
  %i.fx = extractelement <2 x i32> %i.fo, i64 1
  %i.fy = mul nsw i32 %i.fx, %i.fw
  %i.fz = add nsw i32 %i.fy, %i.fv
  %i.ga = sitofp i32 %i.fz to double
  %i.gb = sitofp <2 x i32> %i.fm to <2 x double>  ; 2 uses
  %i.gc = sitofp <2 x i32> %i.fo to <2 x double>  ; 2 uses
  %i.gd = fmul nnan <2 x double> %i.gc, %i.gc
  %i.ge = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gb, <2 x double> %i.gb, <2 x double> %i.gd) ; 2 uses
  %shift = shufflevector <2 x double> %i.ge, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x double> %i.ge, %shift
  %i.gf = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.gg = tail call double @sqrt(double noundef %i.gf) #16
  %i.gh = fdiv double %i.ga, %i.gg
  %i.gi = fptrunc double %i.gh to float
  %i.gj = fpext float %i.gi to double
  %i.gk = fadd double %i.gj, 1.100000e+00         ; 2 uses
  %i.gl = fptrunc double %i.gk to float           ; 2 uses
  %i.gm = fcmp ult double %i.gk, f0xB690000000000000
  %i.gn = fpext float %i.gl to double
  %i.go = fcmp ugt double %i.gn, 2.200000e+00
  %or.cond79.i = or i1 %i.gm, %i.go
  br i1 %or.cond79.i, label %bb.ac, label %bb.af

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #16
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.6, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %.noexc87 unwind label %.loopexit.split-lp

.noexc87:                                         ; preds = %bb.ac
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @__func__._ZN12_GLOBAL__N_111calc_cosineERKSt6vectorINS_10ApproxItemESaIS1_EEm, ptr noundef nonnull @.str.4, i32 noundef 131) #12
          to label %bb.ad unwind label %bb.ae

bb.ad:                                            ; preds = %.noexc87
  unreachable

bb.ae:                                            ; preds = %.noexc87
  %i.gp = landingpad { ptr, i32 }
          cleanup
  %i.gq = load ptr, ptr %6, align 8, !tbaa !26    ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.gs = icmp eq ptr %i.gq, %i.gr
  br i1 %i.gs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i85, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i84

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i84: ; preds = %bb.ae
  %i.gt = load i64, ptr %i.gr, align 8, !tbaa !21
  %i.gu = add i64 %i.gt, 1
  call void @_ZdlPvm(ptr noundef %i.gq, i64 noundef %i.gu) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i85

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i85: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i84
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  br label %.body109.thread

bb.af:                                            ; preds = %bb.ab
  %i.gv = bitcast float %i.gl to i32              ; 3 uses
  %i.gw = icmp uge i64 %.0675.i, %i.ew
  %.not76.i = icmp slt i32 %.0656.i, %i.gv
  %or.cond80.i = or i1 %i.gw, %.not76.i
  br i1 %or.cond80.i, label %bb.aa, label %_ZN12_GLOBAL__N_111calc_cosineERKSt6vectorINS_10ApproxItemESaIS1_EEm.exit

_ZN12_GLOBAL__N_111calc_cosineERKSt6vectorINS_10ApproxItemESaIS1_EEm.exit: ; preds = %bb.af, %.lr.ph.i79, %bb.aa
  %.065.lcssa.i = phi i32 [ %i.gv, %bb.aa ], [ %.0656.i, %.lr.ph.i79 ], [ %.0656.i, %bb.af ]
  %i.gx = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  store i32 %.065.lcssa.i, ptr %i.gx, align 8, !tbaa !85
  br label %bb.ag

bb.ag:                                            ; preds = %bb.z, %_ZN12_GLOBAL__N_111calc_cosineERKSt6vectorINS_10ApproxItemESaIS1_EEm.exit, %.lr.ph.split
  %i.gy = add nuw i64 %.043203, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.gy, %i.cz
  br i1 %exitcond.not, label %.preheader172, label %.lr.ph.split, !llvm.loop !36

.lr.ph213:                                        ; preds = %_ZN12_GLOBAL__N_116calc_nms_cleanupERKSt6vectorINS_10ApproxItemESaIS1_EEm.exit
  %i.gz = getelementptr inbounds nuw i8, ptr %.sroa.0.8, i64 20 ; 2 uses
  %i.ha = load i8, ptr %i.gz, align 4, !tbaa !77, !range !80, !noundef !81
  %i.hb = trunc nuw i8 %i.ha to i1
  %i.hc = getelementptr inbounds nuw i8, ptr %.sroa.0.8, i64 8
  %i.hd = load i64, ptr %i.hc, align 8
  %i.he = icmp ne i64 %i.hd, 1
  %or.cond.not.peel = select i1 %i.hb, i1 true, i1 %i.he
  br i1 %or.cond.not.peel, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %.lr.ph213
  %i.hf = getelementptr inbounds nuw i8, ptr %.sroa.0.8, i64 16 ; 2 uses
  %i.hg = load i32, ptr %i.hf, align 8, !tbaa !85 ; 2 uses
  %i.hh = getelementptr i8, ptr %.sroa.0.8, i64 %i.cy
  %i.hi = getelementptr i8, ptr %i.hh, i64 -8
  %i.hj = load i32, ptr %i.hi, align 8, !tbaa !85
  %.not27.i.peel = icmp sgt i32 %i.hg, %i.hj
  br i1 %.not27.i.peel, label %_ZN12_GLOBAL__N_114calc_dominanceERKSt6vectorINS_10ApproxItemESaIS1_EEm.exit.peel, label %_ZN12_GLOBAL__N_114calc_dominanceERKSt6vectorINS_10ApproxItemESaIS1_EEm.exit.thread.peel

_ZN12_GLOBAL__N_114calc_dominanceERKSt6vectorINS_10ApproxItemESaIS1_EEm.exit.peel: ; preds = %bb.ah
  %i.hk = icmp ugt i64 %i.cz, 1
  %i.hl = sub nuw nsw i64 1, %i.cz
  %i.hm = select i1 %i.hk, i64 1, i64 %i.hl
  %i.hn = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.8, i64 %i.hm
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 16
  %i.hp = load i32, ptr %i.ho, align 8, !tbaa !85
  %.not170.peel = icmp sgt i32 %i.hg, %i.hp
  br i1 %.not170.peel, label %bb.ai, label %_ZN12_GLOBAL__N_114calc_dominanceERKSt6vectorINS_10ApproxItemESaIS1_EEm.exit.thread.peel

_ZN12_GLOBAL__N_114calc_dominanceERKSt6vectorINS_10ApproxItemESaIS1_EEm.exit.thread.peel: ; preds = %_ZN12_GLOBAL__N_114calc_dominanceERKSt6vectorINS_10ApproxItemESaIS1_EEm.exit.peel, %bb.ah
  store i32 0, ptr %i.hf, align 8, !tbaa !85
  store i8 1, ptr %i.gz, align 4, !tbaa !77
  br label %bb.ai

bb.ai:                                            ; preds = %_ZN12_GLOBAL__N_114calc_dominanceERKSt6vectorINS_10ApproxItemESaIS1_EEm.exit.thread.peel, %_ZN12_GLOBAL__N_114calc_dominanceERKSt6vectorINS_10ApproxItemESaIS1_EEm.exit.peel, %.lr.ph213
  %exitcond236.peel.not = icmp eq i64 %i.cy, 24
  br i1 %exitcond236.peel.not, label %._crit_edge, label %.peel.next

.lr.ph211:                                        ; preds = %.preheader172, %_ZN12_GLOBAL__N_116calc_nms_cleanupERKSt6vectorINS_10ApproxItemESaIS1_EEm.exit
  %.040209 = phi i64 [ %i.ik, %_ZN12_GLOBAL__N_116calc_nms_cleanupERKSt6vectorINS_10ApproxItemESaIS1_EEm.exit ], [ 0, %.preheader172 ] ; 4 uses
  %i.hq = getelementptr [24 x i8], ptr %.sroa.0.8, i64 %.040209 ; 4 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 8
  %i.hs = load i64, ptr %i.hr, align 8, !tbaa !84
  %i.ht = lshr i64 %i.hs, 1                       ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hq, i64 16 ; 2 uses
  %i.hv = load i32, ptr %i.hu, align 8, !tbaa !85 ; 2 uses
  %.not7.i = icmp eq i64 %i.ht, 0
  br i1 %.not7.i, label %_ZN12_GLOBAL__N_116calc_nms_cleanupERKSt6vectorINS_10ApproxItemESaIS1_EEm.exit, label %.lr.ph.i90

bb.aj:                                            ; preds = %bb.ak
  %i.hw = add nuw i64 %.0312.i, 1
  %exitcond.not.i94 = icmp eq i64 %.0312.i, %i.ht
  br i1 %exitcond.not.i94, label %_ZN12_GLOBAL__N_116calc_nms_cleanupERKSt6vectorINS_10ApproxItemESaIS1_EEm.exit, label %.lr.ph.i90, !llvm.loop !37

.lr.ph.i90:                                       ; preds = %.lr.ph211, %bb.aj
  %.0312.i = phi i64 [ %i.hw, %bb.aj ], [ 1, %.lr.ph211 ] ; 5 uses
  %.not.i91 = icmp ult i64 %.040209, %.0312.i
  %.p.v.i92 = select i1 %.not.i91, i64 %i.cz, i64 0
  %.p.i93 = sub i64 %.p.v.i92, %.0312.i
  %i.hx = getelementptr [24 x i8], ptr %i.hq, i64 %.p.i93
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 16
  %i.hz = load i32, ptr %i.hy, align 8, !tbaa !85
  %i.ia = icmp sgt i32 %i.hz, %i.hv
  br i1 %i.ia, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %.lr.ph.i90
  %i.ib = add i64 %.0312.i, %.040209              ; 2 uses
  %i.ic = icmp ult i64 %i.ib, %i.cz
  %i.id = select i1 %i.ic, i64 0, i64 %i.cz
  %i.ie = sub nuw i64 %i.ib, %i.id
  %i.if = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.8, i64 %i.ie
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 16
  %i.ih = load i32, ptr %i.ig, align 8, !tbaa !85
  %i.ii = icmp sgt i32 %i.ih, %i.hv
  br i1 %i.ii, label %bb.al, label %bb.aj

bb.al:                                            ; preds = %bb.ak, %.lr.ph.i90
  store i32 0, ptr %i.hu, align 8, !tbaa !85
  %i.ij = getelementptr inbounds nuw i8, ptr %i.hq, i64 20
  store i8 1, ptr %i.ij, align 4, !tbaa !77
  br label %_ZN12_GLOBAL__N_116calc_nms_cleanupERKSt6vectorINS_10ApproxItemESaIS1_EEm.exit

_ZN12_GLOBAL__N_116calc_nms_cleanupERKSt6vectorINS_10ApproxItemESaIS1_EEm.exit: ; preds = %bb.aj, %.lr.ph211, %bb.al
  %i.ik = add nuw i64 %.040209, 1                 ; 2 uses
  %exitcond234.not = icmp eq i64 %i.ik, %i.cz
  br i1 %exitcond234.not, label %.lr.ph213, label %.lr.ph211, !llvm.loop !38

._crit_edge:                                      ; preds = %bb.an, %.preheader172, %bb.ai
  br i1 %i.n, label %bb.ao, label %_ZN12_GLOBAL__N_114calc_new_startERSt6vectorINS_10ApproxItemESaIS1_EERm.exit

.peel.next:                                       ; preds = %bb.ai, %bb.an
  %.039212 = phi i64 [ %i.jd, %bb.an ], [ 1, %bb.ai ] ; 3 uses
  %i.il = getelementptr [24 x i8], ptr %.sroa.0.8, i64 %.039212 ; 4 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 20 ; 2 uses
  %i.in = load i8, ptr %i.im, align 4, !tbaa !77, !range !80, !noundef !81
  %i.io = trunc nuw i8 %i.in to i1
  %i.ip = getelementptr inbounds nuw i8, ptr %i.il, i64 8
  %i.iq = load i64, ptr %i.ip, align 8
  %i.ir = icmp ne i64 %i.iq, 1
  %or.cond.not = select i1 %i.io, i1 true, i1 %i.ir
  br i1 %or.cond.not, label %bb.an, label %bb.am

bb.am:                                            ; preds = %.peel.next
  %i.is = getelementptr inbounds nuw i8, ptr %i.il, i64 16 ; 2 uses
  %i.it = load i32, ptr %i.is, align 8, !tbaa !85 ; 2 uses
  %i.iu = getelementptr i8, ptr %i.il, i64 -8
  %i.iv = load i32, ptr %i.iu, align 8, !tbaa !85
  %.not27.i = icmp sgt i32 %i.it, %i.iv
  br i1 %.not27.i, label %_ZN12_GLOBAL__N_114calc_dominanceERKSt6vectorINS_10ApproxItemESaIS1_EEm.exit, label %_ZN12_GLOBAL__N_114calc_dominanceERKSt6vectorINS_10ApproxItemESaIS1_EEm.exit.thread

_ZN12_GLOBAL__N_114calc_dominanceERKSt6vectorINS_10ApproxItemESaIS1_EEm.exit: ; preds = %bb.am
  %i.iw = add nuw i64 %.039212, 1                 ; 2 uses
  %i.ix = icmp ult i64 %i.iw, %i.cz
  %i.iy = select i1 %i.ix, i64 0, i64 %i.cz
  %i.iz = sub nuw i64 %i.iw, %i.iy
  %i.ja = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.8, i64 %i.iz
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 16
  %i.jc = load i32, ptr %i.jb, align 8, !tbaa !85
  %.not170 = icmp sgt i32 %i.it, %i.jc
  br i1 %.not170, label %bb.an, label %_ZN12_GLOBAL__N_114calc_dominanceERKSt6vectorINS_10ApproxItemESaIS1_EEm.exit.thread

_ZN12_GLOBAL__N_114calc_dominanceERKSt6vectorINS_10ApproxItemESaIS1_EEm.exit.thread: ; preds = %bb.am, %_ZN12_GLOBAL__N_114calc_dominanceERKSt6vectorINS_10ApproxItemESaIS1_EEm.exit
  store i32 0, ptr %i.is, align 8, !tbaa !85
  store i8 1, ptr %i.im, align 4, !tbaa !77
  br label %bb.an

bb.an:                                            ; preds = %_ZN12_GLOBAL__N_114calc_dominanceERKSt6vectorINS_10ApproxItemESaIS1_EEm.exit, %_ZN12_GLOBAL__N_114calc_dominanceERKSt6vectorINS_10ApproxItemESaIS1_EEm.exit.thread, %.peel.next
  %i.jd = add nuw i64 %.039212, 1                 ; 2 uses
  %exitcond236.not = icmp eq i64 %i.jd, %i.cz
  br i1 %exitcond236.not, label %._crit_edge, label %.peel.next, !llvm.loop !39

bb.ao:                                            ; preds = %._crit_edge
  %i.je = getelementptr inbounds nuw i8, ptr %.sroa.0.8, i64 16
  %i.jf = load i32, ptr %i.je, align 8, !tbaa !85
  %.not = icmp eq i32 %i.jf, 0
  br i1 %.not, label %.critedge, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.jg = getelementptr i8, ptr %.sroa.0.8, i64 %i.cy
  %i.jh = getelementptr i8, ptr %i.jg, i64 -8
  %i.ji = load i32, ptr %i.jh, align 8, !tbaa !85
  %.not44 = icmp eq i32 %i.ji, 0
  br i1 %.not44, label %.critedge, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  br i1 %.not215, label %bb.ar, label %.preheader62.i

.preheader62.i:                                   ; preds = %bb.aq
  %i.jj = icmp ugt i64 %i.cz, 1
  br i1 %i.jj, label %.lr.ph.i103, label %.critedge.i

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #16
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.7, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %.noexc108 unwind label %.loopexit.split-lp

.noexc108:                                        ; preds = %bb.ar
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @__func__._ZN12_GLOBAL__N_114calc_new_startERSt6vectorINS_10ApproxItemESaIS1_EERm, ptr noundef nonnull @.str.4, i32 noundef 189) #12
          to label %bb.as unwind label %bb.at

bb.as:                                            ; preds = %.noexc108
  unreachable

bb.at:                                            ; preds = %.noexc108
  %i.jk = landingpad { ptr, i32 }
          cleanup
  %i.jl = load ptr, ptr %4, align 8, !tbaa !26    ; 2 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.jn = icmp eq ptr %i.jl, %i.jm
  br i1 %i.jn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i106, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i105

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i105: ; preds = %bb.at
  %i.jo = load i64, ptr %i.jm, align 8, !tbaa !21
  %i.jp = add i64 %i.jo, 1
  call void @_ZdlPvm(ptr noundef %i.jl, i64 noundef %i.jp) #15
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i106

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i106: ; preds = %bb.at, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i105
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br label %.body109.thread

.lr.ph.i103:                                      ; preds = %.preheader62.i, %bb.au
  %.03663.i = phi i64 [ %i.ju, %bb.au ], [ 1, %.preheader62.i ] ; 3 uses
  %i.jq = getelementptr [24 x i8], ptr %.sroa.0.8, i64 %.03663.i ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 16
  %i.js = load i32, ptr %i.jr, align 8, !tbaa !85
  %.not44.i = icmp eq i32 %i.js, 0
  br i1 %.not44.i, label %.critedge.i, label %bb.au

bb.au:                                            ; preds = %.lr.ph.i103
  %i.jt = getelementptr i8, ptr %i.jq, i64 -8
  store i32 0, ptr %i.jt, align 8, !tbaa !85
  %i.ju = add nuw i64 %.03663.i, 1                ; 2 uses
  %exitcond.not.i104 = icmp eq i64 %i.ju, %i.cz
  br i1 %exitcond.not.i104, label %_ZN12_GLOBAL__N_114calc_new_startERSt6vectorINS_10ApproxItemESaIS1_EERm.exit, label %.lr.ph.i103, !llvm.loop !40

.critedge.i:                                      ; preds = %.lr.ph.i103, %.preheader62.i
  %.036.lcssa.i = phi i64 [ 1, %.preheader62.i ], [ %.03663.i, %.lr.ph.i103 ] ; 2 uses
  %.not88.i = icmp eq i64 %.036.lcssa.i, %i.cz
  br i1 %.not88.i, label %_ZN12_GLOBAL__N_114calc_new_startERSt6vectorINS_10ApproxItemESaIS1_EERm.exit, label %bb.av

bb.av:                                            ; preds = %.critedge.i
  %i.jv = add i64 %.036.lcssa.i, -1               ; 4 uses
  %i.jw = add nsw i64 %i.cz, -2                   ; 3 uses
  %.not4566.i = icmp eq i64 %i.jw, 0
  br i1 %.not4566.i, label %.critedge2.thread.i, label %.lr.ph68.i

.lr.ph68.i:                                       ; preds = %bb.av, %_ZN12_GLOBAL__N_111clear_untilERSt6vectorINS_10ApproxItemESaIS1_EEmm.exit.i
  %indvar = phi i64 [ %indvar.next, %_ZN12_GLOBAL__N_111clear_untilERSt6vectorINS_10ApproxItemESaIS1_EEmm.exit.i ], [ 0, %bb.av ] ; 3 uses
  %.067.i = phi i64 [ %i.kx, %_ZN12_GLOBAL__N_111clear_untilERSt6vectorINS_10ApproxItemESaIS1_EEmm.exit.i ], [ %i.jw, %bb.av ] ; 4 uses
  %i.jx = add i64 %indvar, 1
  %i.jy = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.8, i64 %.067.i
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 16
  %i.ka = load i32, ptr %i.jz, align 8, !tbaa !85
  %.not46.i = icmp eq i32 %i.ka, 0
  br i1 %.not46.i, label %.critedge2.i, label %bb.aw

bb.aw:                                            ; preds = %.lr.ph68.i
  %.01.i.i = add i64 %.067.i, 1                   ; 4 uses
  %i.kb = icmp ult i64 %.01.i.i, %i.cz
  br i1 %i.kb, label %.lr.ph.i.i.preheader, label %_ZN12_GLOBAL__N_111clear_untilERSt6vectorINS_10ApproxItemESaIS1_EEmm.exit.i

.lr.ph.i.i.preheader:                             ; preds = %bb.aw
  %xtraiter = and i64 %i.jx, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.02.i.i.prol = phi i64 [ %.0.i.i.prol, %.lr.ph.i.i.prol ], [ %.01.i.i, %.lr.ph.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.kc = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.8, i64 %.02.i.i.prol
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 20
  store i8 1, ptr %i.kd, align 4, !tbaa !77
  %.0.i.i.prol = add nuw i64 %.02.i.i.prol, 1     ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !41

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.02.i.i.unr = phi i64 [ %.01.i.i, %.lr.ph.i.i.preheader ], [ %.0.i.i.prol, %.lr.ph.i.i.prol ]
  %i.ke = icmp ult i64 %indvar, 7
  br i1 %i.ke, label %_ZN12_GLOBAL__N_111clear_untilERSt6vectorINS_10ApproxItemESaIS1_EEmm.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.02.i.i = phi i64 [ %.0.i.i.7, %.lr.ph.i.i ], [ %.02.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 9 uses
  %i.kf = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.8, i64 %.02.i.i
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 20
  store i8 1, ptr %i.kg, align 4, !tbaa !77
  %i.kh = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.8, i64 %.02.i.i
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 44
  store i8 1, ptr %i.ki, align 4, !tbaa !77
  %i.kj = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.8, i64 %.02.i.i
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 68
  store i8 1, ptr %i.kk, align 4, !tbaa !77
  %i.kl = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.8, i64 %.02.i.i
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 92
  store i8 1, ptr %i.km, align 4, !tbaa !77
  %i.kn = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.8, i64 %.02.i.i
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 116
  store i8 1, ptr %i.ko, align 4, !tbaa !77
  %i.kp = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.8, i64 %.02.i.i
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 140
  store i8 1, ptr %i.kq, align 4, !tbaa !77
  %i.kr = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.8, i64 %.02.i.i
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 164
  store i8 1, ptr %i.ks, align 4, !tbaa !77
  %i.kt = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.8, i64 %.02.i.i
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 188
  store i8 1, ptr %i.ku, align 4, !tbaa !77
  %.0.i.i.7 = add nuw i64 %.02.i.i, 8             ; 2 uses
  %exitcond.not.i.i.7 = icmp eq i64 %.0.i.i.7, %i.cz
  br i1 %exitcond.not.i.i.7, label %_ZN12_GLOBAL__N_111clear_untilERSt6vectorINS_10ApproxItemESaIS1_EEmm.exit.i, label %.lr.ph.i.i, !llvm.loop !42

_ZN12_GLOBAL__N_111clear_untilERSt6vectorINS_10ApproxItemESaIS1_EEmm.exit.i: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.aw
  %i.kv = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.8, i64 %.01.i.i
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 16
  store i32 0, ptr %i.kw, align 8, !tbaa !85
  %i.kx = add i64 %.067.i, -1                     ; 2 uses
  %.not45.i = icmp eq i64 %i.kx, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %.not45.i, label %.critedge2.i, label %.lr.ph68.i, !llvm.loop !43

.critedge2.i:                                     ; preds = %_ZN12_GLOBAL__N_111clear_untilERSt6vectorINS_10ApproxItemESaIS1_EEmm.exit.i, %.lr.ph68.i
  %.0.lcssa.ph.i = phi i64 [ %.067.i, %.lr.ph68.i ], [ 0, %_ZN12_GLOBAL__N_111clear_untilERSt6vectorINS_10ApproxItemESaIS1_EEmm.exit.i ]
  %i.ky = icmp ne i64 %.0.lcssa.ph.i, %i.jw
  %i.kz = icmp ne i64 %i.jv, 0
  %brmerge.i = or i1 %i.kz, %i.ky
  br i1 %brmerge.i, label %.critedge, label %.preheader.preheader.i

.critedge2.thread.i:                              ; preds = %bb.av
  %i.la = icmp eq i64 %i.jv, 0
  br i1 %i.la, label %.preheader.preheader.i, label %.critedge

.preheader.preheader.i:                           ; preds = %.critedge2.thread.i, %.critedge2.i
  %i.lb = tail call i64 @llvm.usub.sat.i64(i64 %i.cz, i64 1)
  %exitcond72.not.i313 = icmp ult i64 %i.cz, 2
  br i1 %exitcond72.not.i313, label %_ZN12_GLOBAL__N_112get_next_idxERKSt6vectorINS_10ApproxItemESaIS1_EEm.exit.i, label %.lr.ph

.preheader.i:                                     ; preds = %.lr.ph
  %exitcond72.not.i = icmp eq i64 %.0.i60.i, %i.lb
  br i1 %exitcond72.not.i, label %_ZN12_GLOBAL__N_112get_next_idxERKSt6vectorINS_10ApproxItemESaIS1_EEm.exit.i, label %.lr.ph, !llvm.loop !44

.lr.ph:                                           ; preds = %.preheader.preheader.i, %.preheader.i
  %.0.in.i.i314 = phi i64 [ %.0.i60.i, %.preheader.i ], [ 0, %.preheader.preheader.i ]
  %.0.i60.i = add nuw i64 %.0.in.i.i314, 1        ; 4 uses
  %i.lc = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.8, i64 %.0.i60.i
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 20
  %i.le = load i8, ptr %i.ld, align 4, !tbaa !77, !range !80, !noundef !81
  %i.lf = trunc nuw i8 %i.le to i1
  br i1 %i.lf, label %.preheader.i, label %._ZN12_GLOBAL__N_112get_next_idxERKSt6vectorINS_10ApproxItemESaIS1_EEm.exit.i_crit_edge, !llvm.loop !44

._ZN12_GLOBAL__N_112get_next_idxERKSt6vectorINS_10ApproxItemESaIS1_EEm.exit.i_crit_edge: ; preds = %.lr.ph
  br label %_ZN12_GLOBAL__N_112get_next_idxERKSt6vectorINS_10ApproxItemESaIS1_EEm.exit.i, !llvm.loop !44

_ZN12_GLOBAL__N_112get_next_idxERKSt6vectorINS_10ApproxItemESaIS1_EEm.exit.i: ; preds = %.preheader.i, %._ZN12_GLOBAL__N_112get_next_idxERKSt6vectorINS_10ApproxItemESaIS1_EEm.exit.i_crit_edge, %.preheader.preheader.i
  %.0.lcssa.i.i = phi i64 [ %.0.i60.i, %._ZN12_GLOBAL__N_112get_next_idxERKSt6vectorINS_10ApproxItemESaIS1_EEm.exit.i_crit_edge ], [ %i.cz, %.preheader.preheader.i ], [ %i.cz, %.preheader.i ]
  %.not.i.i = icmp eq ptr %.sroa.26.5, %.sroa.43.8
  br i1 %.not.i.i, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %_ZN12_GLOBAL__N_112get_next_idxERKSt6vectorINS_10ApproxItemESaIS1_EEm.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.26.5, ptr noundef nonnull readonly align 8 dereferenceable(24) %.sroa.0.8, i64 24, i1 false), !tbaa.struct !72
  %i.lg = getelementptr inbounds nuw i8, ptr %.sroa.26.5, i64 24
  br label %_ZNSt6vectorIN12_GLOBAL__N_110ApproxItemESaIS1_EE9push_backERKS1_.exit.i

bb.ay:                                            ; preds = %_ZN12_GLOBAL__N_112get_next_idxERKSt6vectorINS_10ApproxItemESaIS1_EEm.exit.i
  %i.lh = icmp eq i64 %i.cy, 9223372036854775800
  br i1 %i.lh, label %bb.az, label %_ZNKSt6vectorIN12_GLOBAL__N_110ApproxItemESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.az:                                            ; preds = %bb.ay
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #12
          to label %.noexc111 unwind label %.loopexit.split-lp

.noexc111:                                        ; preds = %bb.az
  unreachable

_ZNKSt6vectorIN12_GLOBAL__N_110ApproxItemESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.ay
  %i.li = shl nsw i64 %i.cz, 1
  %i.lj = icmp slt i64 %i.cy, 0
  %i.lk = tail call i64 @llvm.umin.i64(i64 %i.li, i64 384307168202282325)
  %i.ll = select i1 %i.lj, i64 384307168202282325, i64 %i.lk ; 2 uses
  %i.lm = mul nuw nsw i64 %i.ll, 24
  %i.ln = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.lm) #13
          to label %.noexc112 unwind label %.loopexit.split-lp ; 5 uses

.noexc112:                                        ; preds = %_ZNKSt6vectorIN12_GLOBAL__N_110ApproxItemESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 %i.cy
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.lo, ptr noundef nonnull readonly align 8 dereferenceable(24) %.sroa.0.8, i64 24, i1 false), !tbaa.struct !72
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc112
  %.03.i.i.i.i.i.i = phi ptr [ %i.lq, %.lr.ph.i.i.i.i.i.i ], [ %i.ln, %.noexc112 ] ; 3 uses
  %.092.i.i.i.i.i.i = phi ptr [ %i.lp, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.0.8, %.noexc112 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.03.i.i.i.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(24) %.092.i.i.i.i.i.i, i64 24, i1 false), !tbaa.struct !72, !alias.scope !88
  %i.lp = getelementptr inbounds nuw i8, ptr %.092.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i, i64 24
  %.not.i.i.i.i.i.i = icmp eq ptr %i.lp, %.sroa.26.5
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN12_GLOBAL__N_110ApproxItemESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !32

_ZNSt6vectorIN12_GLOBAL__N_110ApproxItemESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %i.lr = getelementptr inbounds nuw i8, ptr %.03.i.i.i.i.i.i, i64 48
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.8, i64 noundef %i.cy) #15
  %i.ls = getelementptr inbounds nuw [24 x i8], ptr %i.ln, i64 %i.ll
  %.pre247 = ptrtoint ptr %i.ln to i64
  br label %_ZNSt6vectorIN12_GLOBAL__N_110ApproxItemESaIS1_EE9push_backERKS1_.exit.i

_ZNSt6vectorIN12_GLOBAL__N_110ApproxItemESaIS1_EE9push_backERKS1_.exit.i: ; preds = %_ZNSt6vectorIN12_GLOBAL__N_110ApproxItemESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, %bb.ax
  %.pre241.pre-phi = phi i64 [ %.pre247, %_ZNSt6vectorIN12_GLOBAL__N_110ApproxItemESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %i.cx, %bb.ax ]
  %.sroa.0.15 = phi ptr [ %i.ln, %_ZNSt6vectorIN12_GLOBAL__N_110ApproxItemESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.sroa.0.8, %bb.ax ]
  %.sroa.26.8 = phi ptr [ %i.lr, %_ZNSt6vectorIN12_GLOBAL__N_110ApproxItemESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %i.lg, %bb.ax ] ; 3 uses
  %.sroa.43.15 = phi ptr [ %i.ls, %_ZNSt6vectorIN12_GLOBAL__N_110ApproxItemESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %.sroa.43.8, %bb.ax ]
  %i.lt = getelementptr inbounds i8, ptr %.sroa.26.8, i64 -4
  store i8 0, ptr %i.lt, align 4, !tbaa !77
  %.pre = ptrtoint ptr %.sroa.26.8 to i64
  %.pre243 = sub i64 %.pre, %.pre241.pre-phi
  %.pre245 = sdiv exact i64 %.pre243, 24
  br label %.critedge

.critedge:                                        ; preds = %.critedge2.i, %.critedge2.thread.i, %_ZNSt6vectorIN12_GLOBAL__N_110ApproxItemESaIS1_EE9push_backERKS1_.exit.i, %bb.ao, %bb.ap
  %.pre-phi246 = phi i64 [ %i.cz, %.critedge2.i ], [ 2, %.critedge2.thread.i ], [ %.pre245, %_ZNSt6vectorIN12_GLOBAL__N_110ApproxItemESaIS1_EE9push_backERKS1_.exit.i ], [ %i.cz, %bb.ao ], [ %i.cz, %bb.ap ] ; 7 uses
  %.sroa.0.0 = phi ptr [ %.sroa.0.8, %.critedge2.i ], [ %.sroa.0.8, %.critedge2.thread.i ], [ %.sroa.0.15, %_ZNSt6vectorIN12_GLOBAL__N_110ApproxItemESaIS1_EE9push_backERKS1_.exit.i ], [ %.sroa.0.8, %bb.ao ], [ %.sroa.0.8, %bb.ap ] ; 15 uses
  %.sroa.26.0 = phi ptr [ %.sroa.26.5, %.critedge2.i ], [ %.sroa.26.5, %.critedge2.thread.i ], [ %.sroa.26.8, %_ZNSt6vectorIN12_GLOBAL__N_110ApproxItemESaIS1_EE9push_backERKS1_.exit.i ], [ %.sroa.26.5, %bb.ao ], [ %.sroa.26.5, %bb.ap ] ; 2 uses
  %.sroa.43.0 = phi ptr [ %.sroa.43.8, %.critedge2.i ], [ %.sroa.43.8, %.critedge2.thread.i ], [ %.sroa.43.15, %_ZNSt6vectorIN12_GLOBAL__N_110ApproxItemESaIS1_EE9push_backERKS1_.exit.i ], [ %.sroa.43.8, %bb.ao ], [ %.sroa.43.8, %bb.ap ] ; 2 uses
  %.0 = phi i64 [ %i.jv, %.critedge2.i ], [ %i.jv, %.critedge2.thread.i ], [ %.0.lcssa.i.i, %_ZNSt6vectorIN12_GLOBAL__N_110ApproxItemESaIS1_EE9push_backERKS1_.exit.i ], [ 0, %bb.ao ], [ 0, %bb.ap ] ; 6 uses
  %i.lu = icmp ult i64 %.0, %.pre-phi246
  br i1 %i.lu, label %.lr.ph.i114.preheader, label %_ZN12_GLOBAL__N_114calc_new_startERSt6vectorINS_10ApproxItemESaIS1_EERm.exit

.lr.ph.i114.preheader:                            ; preds = %.critedge
  %i.lv = add i64 %.0, 7
  %i.lw = add i64 %.0, -2
  br label %.lr.ph.i114

.lr.ph.i114:                                      ; preds = %.lr.ph.i114.preheader, %_ZN12_GLOBAL__N_111clear_untilERSt6vectorINS_10ApproxItemESaIS1_EEmm.exit.i118
  %indvar343 = phi i64 [ 0, %.lr.ph.i114.preheader ], [ %indvar.next344, %_ZN12_GLOBAL__N_111clear_untilERSt6vectorINS_10ApproxItemESaIS1_EEmm.exit.i118 ] ; 3 uses
  %.04.i = phi i64 [ %.0, %.lr.ph.i114.preheader ], [ %.1.i119, %_ZN12_GLOBAL__N_111clear_untilERSt6vectorINS_10ApproxItemESaIS1_EEmm.exit.i118 ] ; 2 uses
  %.0413.i = phi i64 [ %.0, %.lr.ph.i114.preheader ], [ %i.oc, %_ZN12_GLOBAL__N_111clear_untilERSt6vectorINS_10ApproxItemESaIS1_EEmm.exit.i118 ] ; 19 uses
  %.0422.i = phi i64 [ %.0, %.lr.ph.i114.preheader ], [ %.2.i, %_ZN12_GLOBAL__N_111clear_untilERSt6vectorINS_10ApproxItemESaIS1_EEmm.exit.i118 ] ; 4 uses
  %.0441.i = phi i32 [ 1, %.lr.ph.i114.preheader ], [ %.246.i, %_ZN12_GLOBAL__N_111clear_untilERSt6vectorINS_10ApproxItemESaIS1_EEmm.exit.i118 ] ; 4 uses
  %i.lx = add i64 %i.lv, %indvar343
  %i.ly = add i64 %i.lw, %indvar343
  %i.lz = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0, i64 %.0413.i ; 3 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 20 ; 2 uses
  %i.mb = load i8, ptr %i.ma, align 4, !tbaa !77, !range !80, !noundef !81
  %i.mc = trunc nuw i8 %i.mb to i1
  br i1 %i.mc, label %_ZN12_GLOBAL__N_111clear_untilERSt6vectorINS_10ApproxItemESaIS1_EEmm.exit.i118, label %.preheader.i115.preheader

.preheader.i115.preheader:                        ; preds = %.lr.ph.i114
  %.0.i.i117316 = add nuw i64 %.0413.i, 1         ; 2 uses
  %i.md = icmp ult i64 %.0.i.i117316, %.pre-phi246
  br i1 %i.md, label %.lr.ph318, label %_ZN12_GLOBAL__N_112get_next_idxERKSt6vectorINS_10ApproxItemESaIS1_EEm.exit.thread.i

.preheader.i115:                                  ; preds = %.lr.ph318
  %.0.i.i117 = add nuw i64 %.0.i.i117317, 1       ; 2 uses
  %i.me = icmp ult i64 %.0.i.i117, %.pre-phi246
  br i1 %i.me, label %.lr.ph318, label %_ZN12_GLOBAL__N_112get_next_idxERKSt6vectorINS_10ApproxItemESaIS1_EEm.exit.thread.i, !llvm.loop !44

.lr.ph318:                                        ; preds = %.preheader.i115.preheader, %.preheader.i115
  %.0.i.i117317 = phi i64 [ %.0.i.i117, %.preheader.i115 ], [ %.0.i.i117316, %.preheader.i115.preheader ] ; 3 uses
  %i.mf = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0, i64 %.0.i.i117317
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 20
  %i.mh = load i8, ptr %i.mg, align 4, !tbaa !77, !range !80, !noundef !81
  %i.mi = trunc nuw i8 %i.mh to i1
  br i1 %i.mi, label %.preheader.i115, label %_ZN12_GLOBAL__N_112get_next_idxERKSt6vectorINS_10ApproxItemESaIS1_EEm.exit.i125, !llvm.loop !44

_ZN12_GLOBAL__N_112get_next_idxERKSt6vectorINS_10ApproxItemESaIS1_EEm.exit.i125: ; preds = %.lr.ph318
  %i.mj = sub nuw i64 %.0.i.i117317, %.0413.i
  %.not.i126 = icmp eq i64 %i.mj, 1
  br i1 %.not.i126, label %bb.bi, label %_ZN12_GLOBAL__N_112get_next_idxERKSt6vectorINS_10ApproxItemESaIS1_EEm.exit.thread.i

_ZN12_GLOBAL__N_112get_next_idxERKSt6vectorINS_10ApproxItemESaIS1_EEm.exit.thread.i: ; preds = %.preheader.i115, %.preheader.i115.preheader, %_ZN12_GLOBAL__N_112get_next_idxERKSt6vectorINS_10ApproxItemESaIS1_EEm.exit.i125
  %i.mk = icmp sgt i32 %.0441.i, 1
  br i1 %i.mk, label %bb.ba, label %_ZN12_GLOBAL__N_111clear_untilERSt6vectorINS_10ApproxItemESaIS1_EEmm.exit.i118

bb.ba:                                            ; preds = %_ZN12_GLOBAL__N_112get_next_idxERKSt6vectorINS_10ApproxItemESaIS1_EEm.exit.thread.i
  %i.ml = icmp eq i32 %.0441.i, 2
  br i1 %i.ml, label %bb.bb, label %bb.bg

bb.bb:                                            ; preds = %bb.ba
  %i.mm = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0, i64 %.04.i ; 3 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mm, i64 16
  %i.mo = load i32, ptr %i.mn, align 8, !tbaa !85 ; 2 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %i.lz, i64 16
  %i.mq = load i32, ptr %i.mp, align 8, !tbaa !85 ; 2 uses
  %i.mr = icmp sgt i32 %i.mo, %i.mq
  br i1 %i.mr, label %bb.be, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.ms = icmp eq i32 %i.mo, %i.mq
  br i1 %i.ms, label %bb.bd, label %bb.bf

bb.bd:                                            ; preds = %bb.bc
  %i.mt = getelementptr inbounds nuw i8, ptr %i.mm, i64 8
  %i.mu = load i64, ptr %i.mt, align 8, !tbaa !84
  %i.mv = getelementptr inbounds nuw i8, ptr %i.lz, i64 8
  %i.mw = load i64, ptr %i.mv, align 8, !tbaa !84
  %.not51.i = icmp ugt i64 %i.mu, %i.mw
  br i1 %.not51.i, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bb
  store i8 1, ptr %i.ma, align 4, !tbaa !77
  br label %_ZN12_GLOBAL__N_111clear_untilERSt6vectorINS_10ApproxItemESaIS1_EEmm.exit.i118

bb.bf:                                            ; preds = %bb.bd, %bb.bc
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mm, i64 20
  store i8 1, ptr %i.mx, align 4, !tbaa !77
  br label %_ZN12_GLOBAL__N_111clear_untilERSt6vectorINS_10ApproxItemESaIS1_EEmm.exit.i118

bb.bg:                                            ; preds = %bb.ba
  %i.my = add i64 %.0422.i, 1
  %umax.i66.i = tail call i64 @llvm.umax.i64(i64 %.pre-phi246, i64 %i.my) ; 2 uses
  %.0.i68.i319 = add i64 %.0422.i, 1              ; 2 uses
  %i.mz = icmp ult i64 %.0.i68.i319, %.pre-phi246
  br i1 %i.mz, label %.lr.ph322, label %_ZN12_GLOBAL__N_112get_next_idxERKSt6vectorINS_10ApproxItemESaIS1_EEm.exit70.i

bb.bh:                                            ; preds = %.lr.ph322
  %.0.i68.i = add i64 %.0.i68.i320, 1             ; 2 uses
  %i.na = icmp ult i64 %.0.i68.i, %.pre-phi246
  br i1 %i.na, label %.lr.ph322, label %_ZN12_GLOBAL__N_112get_next_idxERKSt6vectorINS_10ApproxItemESaIS1_EEm.exit70.i, !llvm.loop !44

.lr.ph322:                                        ; preds = %bb.bg, %bb.bh
  %.0.i68.i320 = phi i64 [ %.0.i68.i, %bb.bh ], [ %.0.i68.i319, %bb.bg ] ; 3 uses
  %i.nb = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0, i64 %.0.i68.i320
  %i.nc = getelementptr inbounds nuw i8, ptr %i.nb, i64 20
  %i.nd = load i8, ptr %i.nc, align 4, !tbaa !77, !range !80, !noundef !81
  %i.ne = trunc nuw i8 %i.nd to i1
  br i1 %i.ne, label %bb.bh, label %._ZN12_GLOBAL__N_112get_next_idxERKSt6vectorINS_10ApproxItemESaIS1_EEm.exit70.i_crit_edge, !llvm.loop !44

._ZN12_GLOBAL__N_112get_next_idxERKSt6vectorINS_10ApproxItemESaIS1_EEm.exit70.i_crit_edge: ; preds = %.lr.ph322
  br label %_ZN12_GLOBAL__N_112get_next_idxERKSt6vectorINS_10ApproxItemESaIS1_EEm.exit70.i, !llvm.loop !44

_ZN12_GLOBAL__N_112get_next_idxERKSt6vectorINS_10ApproxItemESaIS1_EEm.exit70.i: ; preds = %bb.bh, %._ZN12_GLOBAL__N_112get_next_idxERKSt6vectorINS_10ApproxItemESaIS1_EEm.exit70.i_crit_edge, %bb.bg
  %.0.lcssa.i69.i = phi i64 [ %.0.i68.i320, %._ZN12_GLOBAL__N_112get_next_idxERKSt6vectorINS_10ApproxItemESaIS1_EEm.exit70.i_crit_edge ], [ %umax.i66.i, %bb.bg ], [ %umax.i66.i, %bb.bh ] ; 3 uses
  %.01.i.i121 = add i64 %.0.lcssa.i69.i, 1        ; 3 uses
  %i.nf = icmp ult i64 %.01.i.i121, %.0413.i
  br i1 %i.nf, label %.lr.ph.i.i122.preheader, label %_ZN12_GLOBAL__N_111clear_untilERSt6vectorINS_10ApproxItemESaIS1_EEmm.exit.i118

.lr.ph.i.i122.preheader:                          ; preds = %_ZN12_GLOBAL__N_112get_next_idxERKSt6vectorINS_10ApproxItemESaIS1_EEm.exit70.i
  %i.ng = sub i64 %i.lx, %.0.lcssa.i69.i
  %i.nh = sub i64 %i.ly, %.0.lcssa.i69.i
  %xtraiter345 = and i64 %i.ng, 7                 ; 2 uses
  %lcmp.mod346.not = icmp eq i64 %xtraiter345, 0
  br i1 %lcmp.mod346.not, label %.lr.ph.i.i122.prol.loopexit, label %.lr.ph.i.i122.prol

.lr.ph.i.i122.prol:                               ; preds = %.lr.ph.i.i122.preheader, %.lr.ph.i.i122.prol
  %.02.i.i123.prol = phi i64 [ %.0.i71.i.prol, %.lr.ph.i.i122.prol ], [ %.01.i.i121, %.lr.ph.i.i122.preheader ] ; 2 uses
  %prol.iter347 = phi i64 [ %prol.iter347.next, %.lr.ph.i.i122.prol ], [ 0, %.lr.ph.i.i122.preheader ]
  %i.ni = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0, i64 %.02.i.i123.prol
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ni, i64 20
  store i8 1, ptr %i.nj, align 4, !tbaa !77
  %.0.i71.i.prol = add nuw i64 %.02.i.i123.prol, 1 ; 2 uses
  %prol.iter347.next = add i64 %prol.iter347, 1   ; 2 uses
  %prol.iter347.cmp.not = icmp eq i64 %prol.iter347.next, %xtraiter345
  br i1 %prol.iter347.cmp.not, label %.lr.ph.i.i122.prol.loopexit, label %.lr.ph.i.i122.prol, !llvm.loop !48

.lr.ph.i.i122.prol.loopexit:                      ; preds = %.lr.ph.i.i122.prol, %.lr.ph.i.i122.preheader
  %.02.i.i123.unr = phi i64 [ %.01.i.i121, %.lr.ph.i.i122.preheader ], [ %.0.i71.i.prol, %.lr.ph.i.i122.prol ]
  %i.nk = icmp ult i64 %i.nh, 7
  br i1 %i.nk, label %_ZN12_GLOBAL__N_111clear_untilERSt6vectorINS_10ApproxItemESaIS1_EEmm.exit.i118, label %.lr.ph.i.i122

.lr.ph.i.i122:                                    ; preds = %.lr.ph.i.i122.prol.loopexit, %.lr.ph.i.i122
  %.02.i.i123 = phi i64 [ %.0.i71.i.7, %.lr.ph.i.i122 ], [ %.02.i.i123.unr, %.lr.ph.i.i122.prol.loopexit ] ; 9 uses
  %i.nl = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0, i64 %.02.i.i123
  %i.nm = getelementptr inbounds nuw i8, ptr %i.nl, i64 20
  store i8 1, ptr %i.nm, align 4, !tbaa !77
  %i.nn = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0, i64 %.02.i.i123
  %i.no = getelementptr inbounds nuw i8, ptr %i.nn, i64 44
  store i8 1, ptr %i.no, align 4, !tbaa !77
  %i.np = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0, i64 %.02.i.i123
  %i.nq = getelementptr inbounds nuw i8, ptr %i.np, i64 68
  store i8 1, ptr %i.nq, align 4, !tbaa !77
  %i.nr = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0, i64 %.02.i.i123
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nr, i64 92
  store i8 1, ptr %i.ns, align 4, !tbaa !77
  %i.nt = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0, i64 %.02.i.i123
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nt, i64 116
  store i8 1, ptr %i.nu, align 4, !tbaa !77
  %i.nv = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0, i64 %.02.i.i123
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nv, i64 140
  store i8 1, ptr %i.nw, align 4, !tbaa !77
  %i.nx = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0, i64 %.02.i.i123
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nx, i64 164
  store i8 1, ptr %i.ny, align 4, !tbaa !77
  %i.nz = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0, i64 %.02.i.i123
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nz, i64 188
  store i8 1, ptr %i.oa, align 4, !tbaa !77
  %.0.i71.i.7 = add nuw i64 %.02.i.i123, 8        ; 2 uses
  %exitcond.not.i.i124.7 = icmp eq i64 %.0.i71.i.7, %.0413.i
  br i1 %exitcond.not.i.i124.7, label %_ZN12_GLOBAL__N_111clear_untilERSt6vectorINS_10ApproxItemESaIS1_EEmm.exit.i118, label %.lr.ph.i.i122, !llvm.loop !42

bb.bi:                                            ; preds = %_ZN12_GLOBAL__N_112get_next_idxERKSt6vectorINS_10ApproxItemESaIS1_EEm.exit.i125
  %i.ob = add nsw i32 %.0441.i, 1
  br label %_ZN12_GLOBAL__N_111clear_untilERSt6vectorINS_10ApproxItemESaIS1_EEmm.exit.i118

_ZN12_GLOBAL__N_111clear_untilERSt6vectorINS_10ApproxItemESaIS1_EEmm.exit.i118: ; preds = %.lr.ph.i.i122.prol.loopexit, %.lr.ph.i.i122, %bb.bi, %_ZN12_GLOBAL__N_112get_next_idxERKSt6vectorINS_10ApproxItemESaIS1_EEm.exit70.i, %bb.bf, %bb.be, %_ZN12_GLOBAL__N_112get_next_idxERKSt6vectorINS_10ApproxItemESaIS1_EEm.exit.thread.i, %.lr.ph.i114
  %.246.i = phi i32 [ %.0441.i, %.lr.ph.i114 ], [ %i.ob, %bb.bi ], [ 1, %bb.be ], [ 1, %bb.bf ], [ 1, %_ZN12_GLOBAL__N_112get_next_idxERKSt6vectorINS_10ApproxItemESaIS1_EEm.exit.thread.i ], [ 1, %_ZN12_GLOBAL__N_112get_next_idxERKSt6vectorINS_10ApproxItemESaIS1_EEm.exit70.i ], [ 1, %.lr.ph.i.i122 ], [ 1, %.lr.ph.i.i122.prol.loopexit ]
  %.2.i = phi i64 [ %.0422.i, %.lr.ph.i114 ], [ %.0422.i, %bb.bi ], [ %.0413.i, %bb.be ], [ %.0413.i, %bb.bf ], [ %.0413.i, %_ZN12_GLOBAL__N_112get_next_idxERKSt6vectorINS_10ApproxItemESaIS1_EEm.exit.thread.i ], [ %.0413.i, %_ZN12_GLOBAL__N_112get_next_idxERKSt6vectorINS_10ApproxItemESaIS1_EEm.exit70.i ], [ %.0413.i, %.lr.ph.i.i122 ], [ %.0413.i, %.lr.ph.i.i122.prol.loopexit ]
  %.1.i119 = phi i64 [ %.04.i, %.lr.ph.i114 ], [ %.0413.i, %bb.bi ], [ %.0413.i, %bb.be ], [ %.0413.i, %bb.bf ], [ %.0413.i, %_ZN12_GLOBAL__N_112get_next_idxERKSt6vectorINS_10ApproxItemESaIS1_EEm.exit.thread.i ], [ %.0413.i, %_ZN12_GLOBAL__N_112get_next_idxERKSt6vectorINS_10ApproxItemESaIS1_EEm.exit70.i ], [ %.0413.i, %.lr.ph.i.i122 ], [ %.0413.i, %.lr.ph.i.i122.prol.loopexit ]
  %i.oc = add nuw i64 %.0413.i, 1                 ; 2 uses
  %exitcond.not.i120 = icmp eq i64 %i.oc, %.pre-phi246
  %indvar.next344 = add i64 %indvar343, 1
  br i1 %exitcond.not.i120, label %_ZN12_GLOBAL__N_114calc_new_startERSt6vectorINS_10ApproxItemESaIS1_EERm.exit, label %.lr.ph.i114, !llvm.loop !49

_ZN12_GLOBAL__N_114calc_new_startERSt6vectorINS_10ApproxItemESaIS1_EERm.exit: ; preds = %bb.au, %_ZN12_GLOBAL__N_111clear_untilERSt6vectorINS_10ApproxItemESaIS1_EEmm.exit.i118, %.critedge.i, %.critedge, %._crit_edge, %_ZN12_GLOBAL__N_16pass_0ERKN2cv18ContourDataStorageIaLm1024ELm0EEENS0_6Point_IiEEbb.exit
  %.sroa.0.2 = phi ptr [ %.sroa.0.8, %_ZN12_GLOBAL__N_16pass_0ERKN2cv18ContourDataStorageIaLm1024ELm0EEENS0_6Point_IiEEbb.exit ], [ %.sroa.0.8, %._crit_edge ], [ %.sroa.0.8, %.critedge.i ], [ %.sroa.0.0, %_ZN12_GLOBAL__N_111clear_untilERSt6vectorINS_10ApproxItemESaIS1_EEmm.exit.i118 ], [ %.sroa.0.0, %.critedge ], [ %.sroa.0.8, %bb.au ] ; 6 uses
  %.sroa.26.2 = phi ptr [ %.sroa.26.5, %_ZN12_GLOBAL__N_16pass_0ERKN2cv18ContourDataStorageIaLm1024ELm0EEENS0_6Point_IiEEbb.exit ], [ %.sroa.26.5, %._crit_edge ], [ %.sroa.26.5, %.critedge.i ], [ %.sroa.26.0, %_ZN12_GLOBAL__N_111clear_untilERSt6vectorINS_10ApproxItemESaIS1_EEmm.exit.i118 ], [ %.sroa.26.0, %.critedge ], [ %.sroa.26.5, %bb.au ] ; 2 uses
  %.sroa.43.2 = phi ptr [ %.sroa.43.8, %_ZN12_GLOBAL__N_16pass_0ERKN2cv18ContourDataStorageIaLm1024ELm0EEENS0_6Point_IiEEbb.exit ], [ %.sroa.43.8, %._crit_edge ], [ %.sroa.43.8, %.critedge.i ], [ %.sroa.43.0, %_ZN12_GLOBAL__N_111clear_untilERSt6vectorINS_10ApproxItemESaIS1_EEmm.exit.i118 ], [ %.sroa.43.0, %.critedge ], [ %.sroa.43.8, %bb.au ] ; 2 uses
  %i.od = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.oe = load i64, ptr %i.od, align 8, !tbaa !58 ; 2 uses
  %i.of = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i64 %i.oe, ptr %i.of, align 8, !tbaa !57
  %.not2.i = icmp eq ptr %.sroa.0.2, %.sroa.26.2
  br i1 %.not2.i, label %_ZN12_GLOBAL__N_112gatherPointsERKSt6vectorINS_10ApproxItemESaIS1_EERN2cv18ContourDataStorageINS6_6Point_IiEELm1024ELm0EEE.exit, label %.lr.ph.i128

.lr.ph.i128:                                      ; preds = %_ZN12_GLOBAL__N_114calc_new_startERSt6vectorINS_10ApproxItemESaIS1_EERm.exit, %bb.bl
  %i.og = phi i64 [ %i.or, %bb.bl ], [ %i.oe, %_ZN12_GLOBAL__N_114calc_new_startERSt6vectorINS_10ApproxItemESaIS1_EERm.exit ] ; 2 uses
  %.sroa.01.03.i = phi ptr [ %i.os, %bb.bl ], [ %.sroa.0.2, %_ZN12_GLOBAL__N_114calc_new_startERSt6vectorINS_10ApproxItemESaIS1_EERm.exit ] ; 3 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %.sroa.01.03.i, i64 20
  %i.oi = load i8, ptr %i.oh, align 4, !tbaa !77, !range !80, !noundef !81
  %i.oj = trunc nuw i8 %i.oi to i1
  br i1 %i.oj, label %bb.bl, label %bb.bj

bb.bj:                                            ; preds = %.lr.ph.i128
  %i.ok = load i64, ptr %i.of, align 8, !tbaa !57
  %i.ol = icmp eq i64 %i.ok, %i.og
  %.pre.i.i = load ptr, ptr %3, align 8, !tbaa !56 ; 2 uses
  br i1 %i.ol, label %bb.bk, label %_ZN2cv18ContourDataStorageINS_6Point_IiEELm1024ELm0EE9push_backERKS2_.exit.i

bb.bk:                                            ; preds = %bb.bj
  %i.om = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 40
  %i.on = load i64, ptr %i.om, align 8, !tbaa !18
  store i64 %i.on, ptr %i.of, align 8, !tbaa !57
  br label %_ZN2cv18ContourDataStorageINS_6Point_IiEELm1024ELm0EE9push_backERKS2_.exit.i

_ZN2cv18ContourDataStorageINS_6Point_IiEELm1024ELm0EE9push_backERKS2_.exit.i: ; preds = %bb.bk, %bb.bj
  invoke void @_ZN2cv12BlockStorageINS_6Point_IiEELm1024ELm0EE9push_backERKS2_(ptr noundef nonnull align 8 dereferenceable(48) %.pre.i.i, ptr noundef nonnull align 4 dereferenceable(8) %.sroa.01.03.i)
          to label %.noexc131 unwind label %.loopexit

.noexc131:                                        ; preds = %_ZN2cv18ContourDataStorageINS_6Point_IiEELm1024ELm0EE9push_backERKS2_.exit.i
  %i.oo = load ptr, ptr %3, align 8, !tbaa !56
  %i.op = getelementptr inbounds nuw i8, ptr %i.oo, i64 40
  %i.oq = load i64, ptr %i.op, align 8, !tbaa !18 ; 2 uses
  store i64 %i.oq, ptr %i.od, align 8, !tbaa !58
  br label %bb.bl

bb.bl:                                            ; preds = %.noexc131, %.lr.ph.i128
  %i.or = phi i64 [ %i.oq, %.noexc131 ], [ %i.og, %.lr.ph.i128 ]
  %i.os = getelementptr inbounds nuw i8, ptr %.sroa.01.03.i, i64 24 ; 2 uses
  %.not.i129 = icmp eq ptr %i.os, %.sroa.26.2
  br i1 %.not.i129, label %_ZN12_GLOBAL__N_112gatherPointsERKSt6vectorINS_10ApproxItemESaIS1_EERN2cv18ContourDataStorageINS6_6Point_IiEELm1024ELm0EEE.exit, label %.lr.ph.i128

_ZN12_GLOBAL__N_112gatherPointsERKSt6vectorINS_10ApproxItemESaIS1_EERN2cv18ContourDataStorageINS6_6Point_IiEELm1024ELm0EEE.exit: ; preds = %bb.bl, %_ZN12_GLOBAL__N_114calc_new_startERSt6vectorINS_10ApproxItemESaIS1_EERm.exit
  %.not.i.i.i132 = icmp eq ptr %.sroa.0.2, null
  br i1 %.not.i.i.i132, label %_ZNSt6vectorIN12_GLOBAL__N_110ApproxItemESaIS1_EED2Ev.exit, label %bb.bm

bb.bm:                                            ; preds = %_ZN12_GLOBAL__N_112gatherPointsERKSt6vectorINS_10ApproxItemESaIS1_EERN2cv18ContourDataStorageINS6_6Point_IiEELm1024ELm0EEE.exit
  %i.ot = ptrtoint ptr %.sroa.43.2 to i64
  %i.ou = ptrtoint ptr %.sroa.0.2 to i64
  %i.ov = sub i64 %i.ot, %i.ou
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.2, i64 noundef %i.ov) #15
  br label %_ZNSt6vectorIN12_GLOBAL__N_110ApproxItemESaIS1_EED2Ev.exit

_ZNSt6vectorIN12_GLOBAL__N_110ApproxItemESaIS1_EED2Ev.exit: ; preds = %bb.bm, %_ZN12_GLOBAL__N_112gatherPointsERKSt6vectorINS_10ApproxItemESaIS1_EERN2cv18ContourDataStorageINS6_6Point_IiEELm1024ELm0EEE.exit, %_ZN2cv18ContourDataStorageINS_6Point_IiEELm1024ELm0EE9push_backERKS2_.exit
  ret void

.loopexit:                                        ; preds = %_ZN2cv18ContourDataStorageINS_6Point_IiEELm1024ELm0EE9push_backERKS2_.exit.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body109

.loopexit.split-lp:                               ; preds = %bb.ar, %bb.az, %_ZNKSt6vectorIN12_GLOBAL__N_110ApproxItemESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i, %._crit_edge.i, %bb.ac
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body109

.body109:                                         ; preds = %.loopexit, %.loopexit.split-lp
  %.sroa.0.4 = phi ptr [ %.sroa.0.8, %.loopexit.split-lp ], [ %.sroa.0.2, %.loopexit ] ; 2 uses
  %.sroa.43.4 = phi ptr [ %.sroa.43.8, %.loopexit.split-lp ], [ %.sroa.43.2, %.loopexit ]
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit ] ; 2 uses
  %.not.i.i.i133 = icmp eq ptr %.sroa.0.4, null
  br i1 %.not.i.i.i133, label %common.resume, label %.body109.thread

.body109.thread:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i85, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i106, %.body109
  %.pn166 = phi { ptr, i32 } [ %.pn, %.body109 ], [ %i.jk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i106 ], [ %i.gp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i85 ], [ %i.dh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ]
  %.sroa.43.4165 = phi ptr [ %.sroa.43.4, %.body109 ], [ %.sroa.43.8, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i106 ], [ %.sroa.43.8, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i85 ], [ %.sroa.43.8, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ]
  %.sroa.0.4164 = phi ptr [ %.sroa.0.4, %.body109 ], [ %.sroa.0.8, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i106 ], [ %.sroa.0.8, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i85 ], [ %.sroa.0.8, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ] ; 2 uses
  %i.ow = ptrtoint ptr %.sroa.43.4165 to i64
  %i.ox = ptrtoint ptr %.sroa.0.4164 to i64
  %i.oy = sub i64 %i.ow, %i.ox
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.4164, i64 noundef %i.oy) #15
  br label %common.resume
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #2

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #3

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #5

; Function Attrs: noreturn
declare void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !89
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.5) #12
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  store i64 %i.d, ptr %i.a, align 8, !tbaa !22
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc, label %._crit_edge.i

.noexc:                                           ; preds = %bb.c
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !26
  %i.g = load i64, ptr %i.a, align 8, !tbaa !22
  store i64 %i.g, ptr %i.b, align 8, !tbaa !21
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %.noexc
  %i.h = phi ptr [ %i.f, %.noexc ], [ %i.b, %bb.c ] ; 2 uses
  switch i64 %i.d, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i
  %i.i = load i8, ptr %1, align 1, !tbaa !21
  store i8 %i.i, ptr %i.h, align 1, !tbaa !21
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %1, i64 %i.d, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i
  %i.j = load i64, ptr %i.a, align 8, !tbaa !22   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !90
  %i.l = load ptr, ptr %0, align 8, !tbaa !26
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #6

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #7

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv12BlockStorageINS_6Point_IiEELm1024ELm0EE9push_backERKS2_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !18
  %i.c = lshr i64 %i.b, 10                        ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !91
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !92
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !93
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = ashr exact i64 %i.l, 3
  %i.n = add i64 %i.m, %i.e
  %i.o = icmp eq i64 %i.c, %i.n
  br i1 %i.o, label %bb.b, label %_ZNSt6vectorIPN2cv12BlockStorageINS0_6Point_IiEELm1024ELm0EE10block_typeESaIS6_EE9push_backEOS6_.exit

bb.b:                                             ; preds = %bb.a
  %i.p = tail call noalias noundef nonnull dereferenceable(8192) ptr @_Znwm(i64 noundef 8192) #13 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(8192) %i.p, i8 0, i64 8192, i1 false), !tbaa !19
  %i.q = load ptr, ptr %i.g, align 8, !tbaa !92   ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !94
  %.not.i.i = icmp eq ptr %i.q, %i.s
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %i.p, ptr %i.q, align 8, !tbaa !20
  %i.t = load ptr, ptr %i.g, align 8, !tbaa !92
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %i.u, ptr %i.g, align 8, !tbaa !92
  br label %_ZNSt6vectorIPN2cv12BlockStorageINS0_6Point_IiEELm1024ELm0EE10block_typeESaIS6_EE9push_backEOS6_.exit

bb.d:                                             ; preds = %bb.b
  %i.v = load ptr, ptr %i.f, align 8, !tbaa !93   ; 4 uses
  %i.w = ptrtoint ptr %i.q to i64
  %i.x = ptrtoint ptr %i.v to i64                 ; 2 uses
  %i.y = sub i64 %i.w, %i.x                       ; 5 uses
  %i.z = icmp eq i64 %i.y, 9223372036854775800
  br i1 %i.z, label %bb.e, label %_ZNKSt6vectorIPN2cv12BlockStorageINS0_6Point_IiEELm1024ELm0EE10block_typeESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #12
  unreachable

_ZNKSt6vectorIPN2cv12BlockStorageINS0_6Point_IiEELm1024ELm0EE10block_typeESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.d
  %i.aa = ashr exact i64 %i.y, 3                  ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.aa, i64 1)
  %i.ab = add nsw i64 %.sroa.speculated.i.i.i.i, %i.aa ; 2 uses
  %i.ac = icmp ult i64 %i.ab, %i.aa
  %i.ad = tail call i64 @llvm.umin.i64(i64 %i.ab, i64 1152921504606846975)
  %i.ae = select i1 %i.ac, i64 1152921504606846975, i64 %i.ad ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ae, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.af = shl nuw nsw i64 %i.ae, 3
  %i.ag = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.af) #13 ; 4 uses
  %i.ah = getelementptr inbounds i8, ptr %i.ag, i64 %i.y ; 2 uses
  store ptr %i.p, ptr %i.ah, align 8, !tbaa !20
  %i.ai = icmp sgt i64 %i.y, 0
  br i1 %i.ai, label %bb.f, label %_ZNSt6vectorIPN2cv12BlockStorageINS0_6Point_IiEELm1024ELm0EE10block_typeESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit16.i.i.i

bb.f:                                             ; preds = %_ZNKSt6vectorIPN2cv12BlockStorageINS0_6Point_IiEELm1024ELm0EE10block_typeESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ag, ptr align 8 %i.v, i64 %i.y, i1 false)
  br label %_ZNSt6vectorIPN2cv12BlockStorageINS0_6Point_IiEELm1024ELm0EE10block_typeESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit16.i.i.i

_ZNSt6vectorIPN2cv12BlockStorageINS0_6Point_IiEELm1024ELm0EE10block_typeESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit16.i.i.i: ; preds = %bb.f, %_ZNKSt6vectorIPN2cv12BlockStorageINS0_6Point_IiEELm1024ELm0EE10block_typeESaIS6_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPN2cv12BlockStorageINS0_6Point_IiEELm1024ELm0EE10block_typeESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIPN2cv12BlockStorageINS0_6Point_IiEELm1024ELm0EE10block_typeESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit16.i.i.i
  %i.ak = load ptr, ptr %i.r, align 8, !tbaa !94
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = sub i64 %i.al, %i.x
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.am) #15
  br label %_ZNSt6vectorIPN2cv12BlockStorageINS0_6Point_IiEELm1024ELm0EE10block_typeESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i

_ZNSt6vectorIPN2cv12BlockStorageINS0_6Point_IiEELm1024ELm0EE10block_typeESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i: ; preds = %bb.g, %_ZNSt6vectorIPN2cv12BlockStorageINS0_6Point_IiEELm1024ELm0EE10block_typeESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit16.i.i.i
  store ptr %i.ag, ptr %i.f, align 8, !tbaa !93
  store ptr %i.aj, ptr %i.g, align 8, !tbaa !92
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.ae
  store ptr %i.an, ptr %i.r, align 8, !tbaa !94
  br label %_ZNSt6vectorIPN2cv12BlockStorageINS0_6Point_IiEELm1024ELm0EE10block_typeESaIS6_EE9push_backEOS6_.exit

_ZNSt6vectorIPN2cv12BlockStorageINS0_6Point_IiEELm1024ELm0EE10block_typeESaIS6_EE9push_backEOS6_.exit: ; preds = %_ZNSt6vectorIPN2cv12BlockStorageINS0_6Point_IiEELm1024ELm0EE10block_typeESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i.i, %bb.c, %bb.a
  %i.ao = load i64, ptr %i.d, align 8, !tbaa !91  ; 2 uses
  %i.ap = icmp ult i64 %i.c, %i.ao
  br i1 %i.ap, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZNSt6vectorIPN2cv12BlockStorageINS0_6Point_IiEELm1024ELm0EE10block_typeESaIS6_EE9push_backEOS6_.exit
  tail call void @llvm.trap() #14
  unreachable

bb.i:                                             ; preds = %_ZNSt6vectorIPN2cv12BlockStorageINS0_6Point_IiEELm1024ELm0EE10block_typeESaIS6_EE9push_backEOS6_.exit
  %i.aq = sub nuw nsw i64 %i.c, %i.ao
  %i.ar = load ptr, ptr %i.f, align 8, !tbaa !93
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %i.aq
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !20
  %i.au = load i64, ptr %i.a, align 8, !tbaa !18  ; 2 uses
  %i.av = and i64 %i.au, 1023
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.av
  %i.ax = load i64, ptr %1, align 4, !tbaa !19
  store i64 %i.ax, ptr %i.aw, align 4, !tbaa !19
  %i.ay = add i64 %i.au, 1
  store i64 %i.ay, ptr %i.a, align 8, !tbaa !18
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #6

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #5 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #8 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { noreturn }
attributes #13 = { builtin allocsize(0) }
attributes #14 = { noreturn nounwind }
attributes #15 = { builtin nounwind }
attributes #16 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"any pointer", !4, i64 0}
!9 = !{!"long", !4, i64 0}
!10 = !{!"_ZTSNSt14__array_traitsIN2cv12BlockStorageINS0_6Point_IiEELm1024ELm0EE10block_typeELm0EE5_TypeE"}
!11 = !{!"_ZTSSt5arrayIN2cv12BlockStorageINS0_6Point_IiEELm1024ELm0EE10block_typeELm0EE", !10, i64 0}
!12 = !{!"any p2 pointer", !8, i64 0}
!13 = !{!"_ZTSNSt12_Vector_baseIPN2cv12BlockStorageINS0_6Point_IiEELm1024ELm0EE10block_typeESaIS6_EE17_Vector_impl_dataE", !12, i64 0, !12, i64 8, !12, i64 16}
!14 = !{!"_ZTSNSt12_Vector_baseIPN2cv12BlockStorageINS0_6Point_IiEELm1024ELm0EE10block_typeESaIS6_EE12_Vector_implE", !13, i64 0}
!15 = !{!"_ZTSSt12_Vector_baseIPN2cv12BlockStorageINS0_6Point_IiEELm1024ELm0EE10block_typeESaIS6_EE", !14, i64 0}
!16 = !{!"_ZTSSt6vectorIPN2cv12BlockStorageINS0_6Point_IiEELm1024ELm0EE10block_typeESaIS6_EE", !15, i64 0}
!17 = !{!"_ZTSN2cv12BlockStorageINS_6Point_IiEELm1024ELm0EEE", !11, i64 0, !9, i64 8, !16, i64 16, !9, i64 40}
!18 = !{!17, !9, i64 40}
!19 = !{!5, !5, i64 0}
!20 = !{!8, !8, i64 0}
!21 = !{!4, !4, i64 0}
!22 = !{!9, !9, i64 0}
!23 = !{!"p1 omnipotent char", !8, i64 0}
!24 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !23, i64 0}
!25 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !24, i64 0, !9, i64 8, !4, i64 16}
!26 = !{!25, !23, i64 0}
!27 = distinct !{!27, i1 true, !"_ZN12_GLOBAL__N_16pass_0ERKN2cv18ContourDataStorageIaLm1024ELm0EEENS0_6Point_IiEEbb"}
!28 = distinct !{!28, !27, !"_ZN12_GLOBAL__N_16pass_0ERKN2cv18ContourDataStorageIaLm1024ELm0EEENS0_6Point_IiEEbb: argument 0"}
!29 = distinct !{!29, i1 true, !"_ZSt19__relocate_object_aIN12_GLOBAL__N_110ApproxItemES1_SaIS1_EEvPT_PT0_RT1_"}
!30 = distinct !{!30, !29, !"_ZSt19__relocate_object_aIN12_GLOBAL__N_110ApproxItemES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!31 = distinct !{!31, !29, !"_ZSt19__relocate_object_aIN12_GLOBAL__N_110ApproxItemES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!32 = distinct !{!32, !74}
!33 = distinct !{!33, !74}
!34 = distinct !{!34, !74}
!35 = distinct !{!35, !74}
!36 = distinct !{!36, !74}
!37 = distinct !{!37, !74}
!38 = distinct !{!38, !74}
!39 = distinct !{!39, !74, !86}
!40 = distinct !{!40, !74}
!41 = distinct !{!41, !87}
!42 = distinct !{!42, !74}
!43 = distinct !{!43, !74}
!44 = distinct !{!44, !74}
!45 = distinct !{!45, i1 true, !"_ZSt19__relocate_object_aIN12_GLOBAL__N_110ApproxItemES1_SaIS1_EEvPT_PT0_RT1_"}
!46 = distinct !{!46, !45, !"_ZSt19__relocate_object_aIN12_GLOBAL__N_110ApproxItemES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!47 = distinct !{!47, !45, !"_ZSt19__relocate_object_aIN12_GLOBAL__N_110ApproxItemES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!48 = distinct !{!48, !87}
!49 = distinct !{!49, !74}
!50 = !{!"p1 _ZTSN2cv12BlockStorageIaLm1024ELm0EEE", !8, i64 0}
!51 = !{!"_ZTSN2cv18ContourDataStorageIaLm1024ELm0EEE", !50, i64 0, !9, i64 8, !9, i64 16}
!52 = !{!51, !9, i64 16}
!53 = !{!51, !9, i64 8}
!54 = !{!"p1 _ZTSN2cv12BlockStorageINS_6Point_IiEELm1024ELm0EEE", !8, i64 0}
!55 = !{!"_ZTSN2cv18ContourDataStorageINS_6Point_IiEELm1024ELm0EEE", !54, i64 0, !9, i64 8, !9, i64 16}
!56 = !{!55, !54, i64 0}
!57 = !{!55, !9, i64 8}
!58 = !{!55, !9, i64 16}
!59 = !{!28}
!60 = !{!51, !50, i64 0}
!61 = !{!"_ZTSNSt14__array_traitsIN2cv12BlockStorageIaLm1024ELm0EE10block_typeELm0EE5_TypeE"}
!62 = !{!"_ZTSSt5arrayIN2cv12BlockStorageIaLm1024ELm0EE10block_typeELm0EE", !61, i64 0}
!63 = !{!"_ZTSNSt12_Vector_baseIPN2cv12BlockStorageIaLm1024ELm0EE10block_typeESaIS4_EE17_Vector_impl_dataE", !12, i64 0, !12, i64 8, !12, i64 16}
!64 = !{!"_ZTSNSt12_Vector_baseIPN2cv12BlockStorageIaLm1024ELm0EE10block_typeESaIS4_EE12_Vector_implE", !63, i64 0}
!65 = !{!"_ZTSSt12_Vector_baseIPN2cv12BlockStorageIaLm1024ELm0EE10block_typeESaIS4_EE", !64, i64 0}
!66 = !{!"_ZTSSt6vectorIPN2cv12BlockStorageIaLm1024ELm0EE10block_typeESaIS4_EE", !65, i64 0}
!67 = !{!"_ZTSN2cv12BlockStorageIaLm1024ELm0EEE", !62, i64 0, !9, i64 8, !66, i64 16, !9, i64 40}
!68 = !{!67, !9, i64 8}
!69 = !{!63, !12, i64 0}
!70 = !{!"bool", !4, i64 0}
!71 = !{!70, !70, i64 0}
!72 = !{i64 0, i64 4, !19, i64 4, i64 4, !19, i64 8, i64 8, !22, i64 16, i64 4, !19, i64 20, i64 1, !71}
!73 = !{!31, !30}
!74 = !{!"llvm.loop.mustprogress"}
!75 = !{!"_ZTSN2cv6Point_IiEE", !5, i64 0, !5, i64 4}
!76 = !{!"_ZTSN12_GLOBAL__N_110ApproxItemE", !75, i64 0, !9, i64 8, !5, i64 16, !70, i64 20}
!77 = !{!76, !70, i64 20}
!78 = !{!75, !5, i64 0}
!79 = !{!75, !5, i64 4}
!80 = !{i8 0, i8 2}
!81 = !{}
!82 = !{!76, !5, i64 0}
!83 = !{!76, !5, i64 4}
!84 = !{!76, !9, i64 8}
!85 = !{!76, !5, i64 16}
!86 = !{!"llvm.loop.peeled.count", i32 1}
!87 = !{!"llvm.loop.unroll.disable"}
!88 = !{!47, !46}
!89 = !{!24, !23, i64 0}
!90 = !{!25, !9, i64 8}
!91 = !{!17, !9, i64 8}
!92 = !{!13, !12, i64 8}
!93 = !{!13, !12, i64 0}
!94 = !{!13, !12, i64 16}
end_hunk_0
