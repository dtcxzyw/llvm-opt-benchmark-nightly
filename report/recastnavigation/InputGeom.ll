Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/recastnavigation/original/InputGeom?download=true
inline.NumInlined: 897
inline.NumDeleted: 432
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%class.FileIO = type <{ %struct.duFileIO, ptr, i32, [4 x i8] }>
%struct.duFileIO = type { ptr }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { ptr }
%union.anon = type { i64, [8 x i8] }
%"class.std::vector.0" = type { %"struct.std::_Vector_base.1" }
%"struct.std::_Vector_base.1" = type { %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl" }
%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl" = type { %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data" }
%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%struct.ConvexVolume = type { [36 x float], i32, float, float, i32 }

$_ZNSt6vectorIfSaIfEE17_M_default_appendEm = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_ = comdat any

$_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm = comdat any

@.str = private unnamed_addr constant [9 x i8] c"%f %f %f\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"buildTiledNavigation: Could not load '%s'\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"%f %f %f  %f %f %f %f %d %d %d\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"%d %d %f %f\00", align 1
@.str.4 = private unnamed_addr constant [63 x i8] c"%f %f %f %f %f %f %f %f %f %f %d %f %f %d %f %f %f %f %f %f %f\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c".gset\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"f %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [66 x i8] c"s %f %f %f %f %f %f %f %f %f %f %d %f %f %d %f %f %f %f %f %f %f\0A\00", align 1
@.str.10 = private unnamed_addr constant [35 x i8] c"c %f %f %f  %f %f %f  %f %d %d %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"v %d %d %f %f\0A\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"%f %f %f\0A\00", align 1
@.str.13 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.14 = private unnamed_addr constant [26 x i8] c"vector::_M_default_append\00", align 1
@_ZTV6FileIO = external unnamed_addr constant { [8 x ptr] }, align 8
@.str.15 = private unnamed_addr constant [24 x i8] c"basic_string::_M_create\00", align 1
@.str.20 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4Mesh11readFromObjEPcm(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr nofree noundef readonly captures(address) %1, i64 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca [512 x i8], align 16              ; 8 uses
  %i.b = alloca [32 x i32], align 16              ; 5 uses
  %i.c = alloca float, align 4                    ; 5 uses
  %i.d = alloca float, align 4                    ; 5 uses
  %i.e = alloca float, align 4                    ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 %2 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #14
  %.not132 = icmp eq i64 %2, 0
  br i1 %.not132, label %._crit_edge, label %.lr.ph.preheader.i.lr.ph

.lr.ph.preheader.i.lr.ph:                         ; preds = %bb.a
  %i.g = ptrtoaddr ptr %i.f to i64                ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 7 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  br label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.lr.ph.preheader.i.lr.ph, %.backedge
  %.064127 = phi ptr [ %1, %.lr.ph.preheader.i.lr.ph ], [ %.142.lcssa.i, %.backedge ] ; 3 uses
  store i8 0, ptr %i.a, align 16, !tbaa !16
  %i.n = ptrtoaddr ptr %.064127 to i64
  %i.o = sub i64 %i.g, %i.n
  %scevgep.i = getelementptr i8, ptr %.064127, i64 %i.o
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.preheader.i
  %.04150.i = phi ptr [ %i.q, %bb.b ], [ %.064127, %.lr.ph.preheader.i ] ; 3 uses
  %i.p = load i8, ptr %.04150.i, align 1, !tbaa !16
  switch i8 %i.p, label %._crit_edge.i [
    i8 92, label %bb.b
    i8 32, label %bb.b
    i8 13, label %bb.b
    i8 10, label %bb.b
    i8 9, label %bb.b
  ]

bb.b:                                             ; preds = %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i, %.lr.ph.i
  %i.q = getelementptr inbounds nuw i8, ptr %.04150.i, i64 1 ; 2 uses
  %exitcond.not.i = icmp eq ptr %i.q, %i.f
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !109

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.b
  %.041.lcssa.ph.i = phi ptr [ %scevgep.i, %bb.b ], [ %.04150.i, %.lr.ph.i ] ; 5 uses
  %i.r = icmp ult ptr %.041.lcssa.ph.i, %i.f
  br i1 %i.r, label %.lr.ph56.preheader.i, label %_ZN12_GLOBAL__N_17readRowEPcS0_S0_i.exit

.lr.ph56.preheader.i:                             ; preds = %._crit_edge.i
  %.pre.i = ptrtoaddr ptr %.041.lcssa.ph.i to i64
  %i.s = sub i64 %i.g, %.pre.i
  %scevgep66.i = getelementptr i8, ptr %.041.lcssa.ph.i, i64 %i.s
  br label %.lr.ph56.i

.lr.ph56.i:                                       ; preds = %.fold.split.i, %.lr.ph56.preheader.i
  %.054.i = phi i32 [ %.1.i, %.fold.split.i ], [ 0, %.lr.ph56.preheader.i ] ; 6 uses
  %.14253.i = phi ptr [ %i.y, %.fold.split.i ], [ %.041.lcssa.ph.i, %.lr.ph56.preheader.i ] ; 4 uses
  %i.t = load i8, ptr %.14253.i, align 1, !tbaa !16 ; 2 uses
  switch i8 %i.t, label %bb.c [
    i8 10, label %.thread47.loopexit.i
    i8 92, label %.fold.split.i
    i8 13, label %.fold.split.i
  ]

bb.c:                                             ; preds = %.lr.ph56.i
  %i.u = add nsw i32 %.054.i, 1                   ; 2 uses
  %i.v = sext i32 %.054.i to i64
  %i.w = getelementptr inbounds i8, ptr %i.a, i64 %i.v
  store i8 %i.t, ptr %i.w, align 1, !tbaa !16
  %i.x = icmp sgt i32 %.054.i, 509
  br i1 %i.x, label %.thread47.loopexit.i, label %.fold.split.i

.fold.split.i:                                    ; preds = %bb.c, %.lr.ph56.i, %.lr.ph56.i
  %.1.i = phi i32 [ %i.u, %bb.c ], [ %.054.i, %.lr.ph56.i ], [ %.054.i, %.lr.ph56.i ] ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.14253.i, i64 1 ; 2 uses
  %exitcond67.not.i = icmp eq ptr %i.y, %i.f
  br i1 %exitcond67.not.i, label %.thread47.loopexit.i, label %.lr.ph56.i, !llvm.loop !110

.thread47.loopexit.i:                             ; preds = %.fold.split.i, %bb.c, %.lr.ph56.i
  %.142.lcssa.ph.i = phi ptr [ %scevgep66.i, %.fold.split.i ], [ %.14253.i, %.lr.ph56.i ], [ %.14253.i, %bb.c ]
  %.2.ph.i = phi i32 [ %.1.i, %.fold.split.i ], [ %.054.i, %.lr.ph56.i ], [ %i.u, %bb.c ]
  %i.z = sext i32 %.2.ph.i to i64
  br label %_ZN12_GLOBAL__N_17readRowEPcS0_S0_i.exit

_ZN12_GLOBAL__N_17readRowEPcS0_S0_i.exit:         ; preds = %._crit_edge.i, %.thread47.loopexit.i
  %.142.lcssa.i = phi ptr [ %.041.lcssa.ph.i, %._crit_edge.i ], [ %.142.lcssa.ph.i, %.thread47.loopexit.i ] ; 2 uses
  %.2.i = phi i64 [ 0, %._crit_edge.i ], [ %i.z, %.thread47.loopexit.i ]
  %i.aa = getelementptr inbounds i8, ptr %i.a, i64 %.2.i
  store i8 0, ptr %i.aa, align 1, !tbaa !16
  %i.ab = load i8, ptr %i.a, align 16, !tbaa !16
  %.fr = freeze i8 %i.ab                          ; 4 uses
  switch i8 %.fr, label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit87 [
    i8 35, label %.backedge
    i8 118, label %switch.early.test
  ]

switch.early.test:                                ; preds = %_ZN12_GLOBAL__N_17readRowEPcS0_S0_i.exit
  %i.ac = load i8, ptr %i.h, align 1
  switch i8 %i.ac, label %bb.d [
    i8 116, label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit87
    i8 110, label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit87
  ]

bb.d:                                             ; preds = %switch.early.test
  %i.ad = call i32 (ptr, ptr, ...) @__isoc23_sscanf(ptr noundef nonnull %i.h, ptr noundef nonnull @.str, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e) #14 ; 0 uses
  %i.ae = load ptr, ptr %i.i, align 8, !tbaa !21  ; 4 uses
  %i.af = load ptr, ptr %i.j, align 8, !tbaa !22  ; 2 uses
  %.not.i = icmp eq ptr %i.ae, %i.af
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ag = load float, ptr %i.c, align 4, !tbaa !24
  store float %i.ag, ptr %i.ae, align 4, !tbaa !24
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 4 ; 2 uses
  store ptr %i.ah, ptr %i.i, align 8, !tbaa !21
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit

bb.f:                                             ; preds = %bb.d
  %i.ai = load ptr, ptr %0, align 8, !tbaa !25    ; 4 uses
  %i.aj = ptrtoint ptr %i.ae to i64
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = sub i64 %i.aj, %i.ak                    ; 6 uses
  %i.am = icmp eq i64 %i.al, 9223372036854775804
  br i1 %i.am, label %bb.g, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i

bb.g:                                             ; preds = %bb.f
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #15
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.f
  %i.an = ashr exact i64 %i.al, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.an, i64 1)
  %3 = add nsw i64 %.sroa.speculated.i.i.i, %i.an ; 2 uses
  %i.ao = icmp ult i64 %3, %i.an
  %i.ap = call i64 @llvm.umin.i64(i64 %3, i64 2305843009213693951)
  %i.aq = select i1 %i.ao, i64 2305843009213693951, i64 %i.ap ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.aq, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.ar = shl nuw nsw i64 %i.aq, 2
  %i.as = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ar) #16 ; 4 uses
  %i.at = getelementptr inbounds i8, ptr %i.as, i64 %i.al ; 2 uses
  %i.au = load float, ptr %i.c, align 4, !tbaa !24
  store float %i.au, ptr %i.at, align 4, !tbaa !24
  %i.av = icmp sgt i64 %i.al, 0
  br i1 %i.av, label %bb.h, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i

bb.h:                                             ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.as, ptr align 4 %i.ai, i64 %i.al, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i: ; preds = %bb.h, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 4 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ai, i64 noundef %i.al) #17
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i: ; preds = %bb.i, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i
  store ptr %i.as, ptr %0, align 8, !tbaa !25
  store ptr %i.aw, ptr %i.i, align 8, !tbaa !21
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.aq ; 2 uses
  store ptr %i.ax, ptr %i.j, align 8, !tbaa !22
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit

_ZNSt6vectorIfSaIfEE9push_backERKf.exit:          ; preds = %bb.e, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i
  %i.ay = phi ptr [ %i.af, %bb.e ], [ %i.ax, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i ] ; 3 uses
  %i.az = phi ptr [ %i.ah, %bb.e ], [ %i.aw, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i ] ; 3 uses
  %.not.i72 = icmp eq ptr %i.az, %i.ay
  br i1 %.not.i72, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIfSaIfEE9push_backERKf.exit
  %i.ba = load float, ptr %i.d, align 4, !tbaa !24
  store float %i.ba, ptr %i.az, align 4, !tbaa !24
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 4 ; 2 uses
  store ptr %i.bb, ptr %i.i, align 8, !tbaa !21
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit79

bb.k:                                             ; preds = %_ZNSt6vectorIfSaIfEE9push_backERKf.exit
  %i.bc = load ptr, ptr %0, align 8, !tbaa !25    ; 4 uses
  %i.bd = ptrtoint ptr %i.ay to i64
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = sub i64 %i.bd, %i.be                    ; 6 uses
  %i.bg = icmp eq i64 %i.bf, 9223372036854775804
  br i1 %i.bg, label %bb.l, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i73

bb.l:                                             ; preds = %bb.k
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #15
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i73: ; preds = %bb.k
  %i.bh = ashr exact i64 %i.bf, 2                 ; 3 uses
  %.sroa.speculated.i.i.i74 = call i64 @llvm.umax.i64(i64 %i.bh, i64 1)
  %4 = add nsw i64 %.sroa.speculated.i.i.i74, %i.bh ; 2 uses
  %i.bi = icmp ult i64 %4, %i.bh
  %i.bj = call i64 @llvm.umin.i64(i64 %4, i64 2305843009213693951)
  %i.bk = select i1 %i.bi, i64 2305843009213693951, i64 %i.bj ; 3 uses
  %.not.i.i.i75 = icmp ne i64 %i.bk, 0
  call void @llvm.assume(i1 %.not.i.i.i75)
  %i.bl = shl nuw nsw i64 %i.bk, 2
  %i.bm = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bl) #16 ; 4 uses
  %i.bn = getelementptr inbounds i8, ptr %i.bm, i64 %i.bf ; 2 uses
  %i.bo = load float, ptr %i.d, align 4, !tbaa !24
  store float %i.bo, ptr %i.bn, align 4, !tbaa !24
  %i.bp = icmp sgt i64 %i.bf, 0
  br i1 %i.bp, label %bb.m, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i76

bb.m:                                             ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i73
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bm, ptr align 4 %i.bc, i64 %i.bf, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i76

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i76: ; preds = %bb.m, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i73
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 4 ; 2 uses
  %.not.i17.i.i77 = icmp eq ptr %i.bc, null
  br i1 %.not.i17.i.i77, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i78, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i76
  call void @_ZdlPvm(ptr noundef nonnull %i.bc, i64 noundef %i.bf) #17
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i78

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i78: ; preds = %bb.n, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i76
  store ptr %i.bm, ptr %0, align 8, !tbaa !25
  store ptr %i.bq, ptr %i.i, align 8, !tbaa !21
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.bk ; 2 uses
  store ptr %i.br, ptr %i.j, align 8, !tbaa !22
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit79

_ZNSt6vectorIfSaIfEE9push_backERKf.exit79:        ; preds = %bb.j, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i78
  %i.bs = phi ptr [ %i.ay, %bb.j ], [ %i.br, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i78 ] ; 2 uses
  %i.bt = phi ptr [ %i.bb, %bb.j ], [ %i.bq, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i78 ] ; 3 uses
  %.not.i80 = icmp eq ptr %i.bt, %i.bs
  br i1 %.not.i80, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIfSaIfEE9push_backERKf.exit79
  %i.bu = load float, ptr %i.e, align 4, !tbaa !24
  store float %i.bu, ptr %i.bt, align 4, !tbaa !24
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 4
  store ptr %i.bv, ptr %i.i, align 8, !tbaa !21
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit87thread-pre-split

bb.p:                                             ; preds = %_ZNSt6vectorIfSaIfEE9push_backERKf.exit79
  %i.bw = load ptr, ptr %0, align 8, !tbaa !25    ; 4 uses
  %i.bx = ptrtoint ptr %i.bs to i64
  %i.by = ptrtoint ptr %i.bw to i64
  %i.bz = sub i64 %i.bx, %i.by                    ; 6 uses
  %i.ca = icmp eq i64 %i.bz, 9223372036854775804
  br i1 %i.ca, label %bb.q, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i81

bb.q:                                             ; preds = %bb.p
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #15
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i81: ; preds = %bb.p
  %i.cb = ashr exact i64 %i.bz, 2                 ; 3 uses
  %.sroa.speculated.i.i.i82 = call i64 @llvm.umax.i64(i64 %i.cb, i64 1)
  %5 = add nsw i64 %.sroa.speculated.i.i.i82, %i.cb ; 2 uses
  %i.cc = icmp ult i64 %5, %i.cb
  %i.cd = call i64 @llvm.umin.i64(i64 %5, i64 2305843009213693951)
  %i.ce = select i1 %i.cc, i64 2305843009213693951, i64 %i.cd ; 3 uses
  %.not.i.i.i83 = icmp ne i64 %i.ce, 0
  call void @llvm.assume(i1 %.not.i.i.i83)
  %i.cf = shl nuw nsw i64 %i.ce, 2
  %i.cg = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cf) #16 ; 4 uses
  %i.ch = getelementptr inbounds i8, ptr %i.cg, i64 %i.bz ; 2 uses
  %i.ci = load float, ptr %i.e, align 4, !tbaa !24
  store float %i.ci, ptr %i.ch, align 4, !tbaa !24
  %i.cj = icmp sgt i64 %i.bz, 0
  br i1 %i.cj, label %bb.r, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i84

bb.r:                                             ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i81
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.cg, ptr align 4 %i.bw, i64 %i.bz, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i84

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i84: ; preds = %bb.r, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i81
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ch, i64 4
  %.not.i17.i.i85 = icmp eq ptr %i.bw, null
  br i1 %.not.i17.i.i85, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i86, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i84
  call void @_ZdlPvm(ptr noundef nonnull %i.bw, i64 noundef %i.bz) #17
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i86

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i86: ; preds = %bb.s, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i84
  store ptr %i.cg, ptr %0, align 8, !tbaa !25
  store ptr %i.ck, ptr %i.i, align 8, !tbaa !21
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %i.ce
  store ptr %i.cl, ptr %i.j, align 8, !tbaa !22
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit87thread-pre-split

_ZNSt6vectorIfSaIfEE9push_backERKf.exit87thread-pre-split: ; preds = %bb.o, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i86
  %.pr = load i8, ptr %i.a, align 16, !tbaa !16
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit87

_ZNSt6vectorIfSaIfEE9push_backERKf.exit87:        ; preds = %_ZNSt6vectorIfSaIfEE9push_backERKf.exit87thread-pre-split, %_ZN12_GLOBAL__N_17readRowEPcS0_S0_i.exit, %switch.early.test, %switch.early.test
  %i.cm = phi i8 [ %.pr, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit87thread-pre-split ], [ %.fr, %_ZN12_GLOBAL__N_17readRowEPcS0_S0_i.exit ], [ %.fr, %switch.early.test ], [ %.fr, %switch.early.test ]
  %i.cn = icmp eq i8 %i.cm, 102
  br i1 %i.cn, label %bb.t, label %.backedge

bb.t:                                             ; preds = %_ZNSt6vectorIfSaIfEE9push_backERKf.exit87
  %i.co = load ptr, ptr %i.i, align 8, !tbaa !21
  %i.cp = load ptr, ptr %0, align 8, !tbaa !25
  %i.cq = ptrtoint ptr %i.co to i64
  %i.cr = ptrtoint ptr %i.cp to i64
  %i.cs = sub i64 %i.cq, %i.cr
  %i.ct = lshr exact i64 %i.cs, 2
  %i.cu = trunc i64 %i.ct to i32
  %i.cv = sdiv i32 %i.cu, 3                       ; 4 uses
  %i.cw = load i8, ptr %i.h, align 1, !tbaa !16   ; 2 uses
  %.not42.i = icmp eq i8 %i.cw, 0
  br i1 %.not42.i, label %.backedge, label %.preheader.i

.preheader.i:                                     ; preds = %bb.t, %bb.y
  %i.cx = phi i8 [ %i.dl, %bb.y ], [ %i.cw, %bb.t ]
  %.02744.i = phi i32 [ %.128.i, %bb.y ], [ 0, %bb.t ] ; 4 uses
  %.02943.i = phi ptr [ %.231.i, %bb.y ], [ %i.h, %bb.t ]
  br label %bb.u

bb.u:                                             ; preds = %.critedge2.i, %.preheader.i
  %i.cy = phi i8 [ %.pr.i, %.critedge2.i ], [ %i.cx, %.preheader.i ] ; 2 uses
  %.130.i = phi ptr [ %i.cz, %.critedge2.i ], [ %.02943.i, %.preheader.i ] ; 4 uses
  switch i8 %i.cy, label %.critedge.i [
    i8 9, label %.critedge2.i
    i8 32, label %.critedge2.i
  ]

.critedge2.i:                                     ; preds = %bb.u, %bb.u
  %i.cz = getelementptr inbounds nuw i8, ptr %.130.i, i64 1 ; 2 uses
  %.pr.i = load i8, ptr %i.cz, align 1, !tbaa !16
  br label %bb.u, !llvm.loop !111

.critedge.i:                                      ; preds = %bb.u, %bb.w
  %i.da = phi i8 [ %.pre.i88, %bb.w ], [ %i.cy, %bb.u ] ; 2 uses
  %.231.i = phi ptr [ %i.db, %bb.w ], [ %.130.i, %bb.u ] ; 4 uses
  switch i8 %i.da, label %bb.w [
    i8 0, label %.critedge4.i
    i8 32, label %.critedge4.i
    i8 9, label %.critedge4.i
    i8 47, label %bb.v
  ]

bb.v:                                             ; preds = %.critedge.i
  store i8 0, ptr %.231.i, align 1, !tbaa !16
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %.critedge.i
  %i.db = getelementptr inbounds nuw i8, ptr %.231.i, i64 1 ; 2 uses
  %.pre.i88 = load i8, ptr %i.db, align 1, !tbaa !16
  br label %.critedge.i, !llvm.loop !112

.critedge4.i:                                     ; preds = %.critedge.i, %.critedge.i, %.critedge.i
  %i.dc = load i8, ptr %.130.i, align 1, !tbaa !16
  %i.dd = icmp eq i8 %i.dc, 0
  br i1 %i.dd, label %bb.y, label %bb.x, !llvm.loop !113

bb.x:                                             ; preds = %.critedge4.i
  %i.de = call i64 @__isoc23_strtol(ptr noundef nonnull %.130.i, ptr noundef null, i32 noundef 10) #14, !inline_history !114
  %i.df = trunc i64 %i.de to i32                  ; 2 uses
  %.inv.i = icmp sgt i32 %i.df, -1
  %..i = select i1 %.inv.i, i32 -1, i32 %i.cv
  %i.dg = add nsw i32 %..i, %i.df
  %i.dh = add nsw i32 %.02744.i, 1                ; 2 uses
  %i.di = sext i32 %.02744.i to i64
  %i.dj = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.di
  store i32 %i.dg, ptr %i.dj, align 4, !tbaa !26
  %i.dk = icmp sgt i32 %.02744.i, 30
  br i1 %i.dk, label %.lr.ph, label %._crit_edge.i89

._crit_edge.i89:                                  ; preds = %bb.x
  %.pre47.i = load i8, ptr %.231.i, align 1, !tbaa !16
  br label %bb.y

bb.y:                                             ; preds = %._crit_edge.i89, %.critedge4.i
  %i.dl = phi i8 [ %.pre47.i, %._crit_edge.i89 ], [ %i.da, %.critedge4.i ] ; 2 uses
  %.128.i = phi i32 [ %i.dh, %._crit_edge.i89 ], [ %.02744.i, %.critedge4.i ] ; 3 uses
  %.not.i90.a = icmp eq i8 %i.dl, 0
  br i1 %.not.i90.a, label %_ZN12_GLOBAL__N_18readFaceEPcPiii.exit, label %.preheader.i

_ZN12_GLOBAL__N_18readFaceEPcPiii.exit:           ; preds = %bb.y
  %i.dm = icmp sgt i32 %.128.i, 2
  br i1 %i.dm, label %.lr.ph, label %.backedge

.lr.ph:                                           ; preds = %bb.x, %_ZN12_GLOBAL__N_18readFaceEPcPiii.exit
  %.2.i91194 = phi i32 [ %.128.i, %_ZN12_GLOBAL__N_18readFaceEPcPiii.exit ], [ %i.dh, %bb.x ]
  %i.dn = load i32, ptr %i.b, align 16, !tbaa !26 ; 4 uses
  %i.do = icmp slt i32 %i.dn, 0
  br i1 %i.do, label %.backedge, label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.dp = icmp sge i32 %i.dn, %i.cv
  %.fr126 = freeze i1 %i.dp
  br i1 %.fr126, label %.backedge, label %.lr.ph.split.split.preheader

.lr.ph.split.split.preheader:                     ; preds = %.lr.ph.split
  %wide.trip.count = zext nneg i32 %.2.i91194 to i64
  br label %.lr.ph.split.split

.lr.ph.split.split:                               ; preds = %.lr.ph.split.split.preheader, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit111
  %indvars.iv = phi i64 [ 2, %.lr.ph.split.split.preheader ], [ %indvars.iv.next, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit111 ] ; 2 uses
  %i.dq = getelementptr [4 x i8], ptr %i.b, i64 %indvars.iv ; 2 uses
  %i.dr = getelementptr i8, ptr %i.dq, i64 -4
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !26 ; 4 uses
  %i.dt = load i32, ptr %i.dq, align 4, !tbaa !26 ; 4 uses
  %i.du = icmp slt i32 %i.ds, 0
  br i1 %i.du, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit111, label %bb.z

bb.z:                                             ; preds = %.lr.ph.split.split
  %i.dv = icmp samesign ult i32 %i.ds, %i.cv
  %i.dw = icmp sgt i32 %i.dt, -1
  %or.cond11.not121 = select i1 %i.dv, i1 %i.dw, i1 false
  %.not = icmp slt i32 %i.dt, %i.cv
  %or.cond = select i1 %or.cond11.not121, i1 %.not, i1 false
  br i1 %or.cond, label %bb.aa, label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit111

bb.aa:                                            ; preds = %bb.z
  %i.dx = load ptr, ptr %i.l, align 8, !tbaa !29  ; 4 uses
  %i.dy = load ptr, ptr %i.m, align 8, !tbaa !30  ; 2 uses
  %.not.i92 = icmp eq ptr %i.dx, %i.dy
  br i1 %.not.i92, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  store i32 %i.dn, ptr %i.dx, align 4, !tbaa !26
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dx, i64 4 ; 2 uses
  store ptr %i.dz, ptr %i.l, align 8, !tbaa !29
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.ac:                                            ; preds = %bb.aa
  %i.ea = load ptr, ptr %i.k, align 8, !tbaa !31  ; 4 uses
  %i.eb = ptrtoint ptr %i.dx to i64
  %i.ec = ptrtoint ptr %i.ea to i64
  %i.ed = sub i64 %i.eb, %i.ec                    ; 6 uses
  %i.ee = icmp eq i64 %i.ed, 9223372036854775804
  br i1 %i.ee, label %bb.ad, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.ad:                                            ; preds = %bb.ac
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #15
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.ac
  %i.ef = ashr exact i64 %i.ed, 2                 ; 3 uses
  %.sroa.speculated.i.i.i93 = call i64 @llvm.umax.i64(i64 %i.ef, i64 1)
  %6 = add nsw i64 %.sroa.speculated.i.i.i93, %i.ef ; 2 uses
  %i.eg = icmp ult i64 %6, %i.ef
  %i.eh = call i64 @llvm.umin.i64(i64 %6, i64 2305843009213693951)
  %i.ei = select i1 %i.eg, i64 2305843009213693951, i64 %i.eh ; 3 uses
  %.not.i.i.i94 = icmp ne i64 %i.ei, 0
  call void @llvm.assume(i1 %.not.i.i.i94)
  %i.ej = shl nuw nsw i64 %i.ei, 2
  %i.ek = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ej) #16 ; 4 uses
  %i.el = getelementptr inbounds i8, ptr %i.ek, i64 %i.ed ; 2 uses
  store i32 %i.dn, ptr %i.el, align 4, !tbaa !26
  %i.em = icmp sgt i64 %i.ed, 0
  br i1 %i.em, label %bb.ae, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.ae:                                            ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ek, ptr align 4 %i.ea, i64 %i.ed, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.ae, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.en = getelementptr inbounds nuw i8, ptr %i.el, i64 4 ; 2 uses
  %.not.i17.i.i95 = icmp eq ptr %i.ea, null
  br i1 %.not.i17.i.i95, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.af

bb.af:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ea, i64 noundef %i.ed) #17
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.af, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  store ptr %i.ek, ptr %i.k, align 8, !tbaa !31
  store ptr %i.en, ptr %i.l, align 8, !tbaa !29
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.ek, i64 %i.ei ; 2 uses
  store ptr %i.eo, ptr %i.m, align 8, !tbaa !30
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %bb.ab, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i
  %i.ep = phi ptr [ %i.dy, %bb.ab ], [ %i.eo, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ] ; 3 uses
  %i.eq = phi ptr [ %i.dz, %bb.ab ], [ %i.en, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i ] ; 3 uses
  %.not.i96 = icmp eq ptr %i.eq, %i.ep
  br i1 %.not.i96, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  store i32 %i.ds, ptr %i.eq, align 4, !tbaa !26
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 4 ; 2 uses
  store ptr %i.er, ptr %i.l, align 8, !tbaa !29
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit103

bb.ah:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %i.es = load ptr, ptr %i.k, align 8, !tbaa !31  ; 4 uses
  %i.et = ptrtoint ptr %i.ep to i64
  %i.eu = ptrtoint ptr %i.es to i64
  %i.ev = sub i64 %i.et, %i.eu                    ; 6 uses
  %i.ew = icmp eq i64 %i.ev, 9223372036854775804
  br i1 %i.ew, label %bb.ai, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i97

bb.ai:                                            ; preds = %bb.ah
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #15
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i97: ; preds = %bb.ah
  %i.ex = ashr exact i64 %i.ev, 2                 ; 3 uses
  %.sroa.speculated.i.i.i98 = call i64 @llvm.umax.i64(i64 %i.ex, i64 1)
  %7 = add nsw i64 %.sroa.speculated.i.i.i98, %i.ex ; 2 uses
  %i.ey = icmp ult i64 %7, %i.ex
  %i.ez = call i64 @llvm.umin.i64(i64 %7, i64 2305843009213693951)
  %i.fa = select i1 %i.ey, i64 2305843009213693951, i64 %i.ez ; 3 uses
  %.not.i.i.i99 = icmp ne i64 %i.fa, 0
  call void @llvm.assume(i1 %.not.i.i.i99)
  %i.fb = shl nuw nsw i64 %i.fa, 2
  %i.fc = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fb) #16 ; 4 uses
  %i.fd = getelementptr inbounds i8, ptr %i.fc, i64 %i.ev ; 2 uses
  store i32 %i.ds, ptr %i.fd, align 4, !tbaa !26
  %i.fe = icmp sgt i64 %i.ev, 0
  br i1 %i.fe, label %bb.aj, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i100

bb.aj:                                            ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i97
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.fc, ptr align 4 %i.es, i64 %i.ev, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i100

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i100: ; preds = %bb.aj, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i97
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fd, i64 4 ; 2 uses
  %.not.i17.i.i101 = icmp eq ptr %i.es, null
  br i1 %.not.i17.i.i101, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i102, label %bb.ak

bb.ak:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i100
  call void @_ZdlPvm(ptr noundef nonnull %i.es, i64 noundef %i.ev) #17
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i102

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i102: ; preds = %bb.ak, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i100
  store ptr %i.fc, ptr %i.k, align 8, !tbaa !31
  store ptr %i.ff, ptr %i.l, align 8, !tbaa !29
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.fc, i64 %i.fa ; 2 uses
  store ptr %i.fg, ptr %i.m, align 8, !tbaa !30
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit103

_ZNSt6vectorIiSaIiEE9push_backERKi.exit103:       ; preds = %bb.ag, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i102
  %i.fh = phi ptr [ %i.ep, %bb.ag ], [ %i.fg, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i102 ] ; 2 uses
  %i.fi = phi ptr [ %i.er, %bb.ag ], [ %i.ff, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i102 ] ; 3 uses
  %.not.i104 = icmp eq ptr %i.fi, %i.fh
  br i1 %.not.i104, label %bb.am, label %bb.al

bb.al:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit103
  store i32 %i.dt, ptr %i.fi, align 4, !tbaa !26
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 4
  store ptr %i.fj, ptr %i.l, align 8, !tbaa !29
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit111

bb.am:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit103
  %i.fk = load ptr, ptr %i.k, align 8, !tbaa !31  ; 4 uses
  %i.fl = ptrtoint ptr %i.fh to i64
  %i.fm = ptrtoint ptr %i.fk to i64
  %i.fn = sub i64 %i.fl, %i.fm                    ; 6 uses
  %i.fo = icmp eq i64 %i.fn, 9223372036854775804
  br i1 %i.fo, label %bb.an, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i105

bb.an:                                            ; preds = %bb.am
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #15
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i105: ; preds = %bb.am
  %i.fp = ashr exact i64 %i.fn, 2                 ; 3 uses
  %.sroa.speculated.i.i.i106 = call i64 @llvm.umax.i64(i64 %i.fp, i64 1)
  %8 = add nsw i64 %.sroa.speculated.i.i.i106, %i.fp ; 2 uses
  %i.fq = icmp ult i64 %8, %i.fp
  %i.fr = call i64 @llvm.umin.i64(i64 %8, i64 2305843009213693951)
  %i.fs = select i1 %i.fq, i64 2305843009213693951, i64 %i.fr ; 3 uses
  %.not.i.i.i107 = icmp ne i64 %i.fs, 0
  call void @llvm.assume(i1 %.not.i.i.i107)
  %i.ft = shl nuw nsw i64 %i.fs, 2
  %i.fu = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ft) #16 ; 4 uses
  %i.fv = getelementptr inbounds i8, ptr %i.fu, i64 %i.fn ; 2 uses
  store i32 %i.dt, ptr %i.fv, align 4, !tbaa !26
  %i.fw = icmp sgt i64 %i.fn, 0
  br i1 %i.fw, label %bb.ao, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i108

bb.ao:                                            ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i105
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.fu, ptr align 4 %i.fk, i64 %i.fn, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i108

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i108: ; preds = %bb.ao, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i105
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fv, i64 4
  %.not.i17.i.i109 = icmp eq ptr %i.fk, null
  br i1 %.not.i17.i.i109, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i110, label %bb.ap

bb.ap:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i108
  call void @_ZdlPvm(ptr noundef nonnull %i.fk, i64 noundef %i.fn) #17
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i110

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i110: ; preds = %bb.ap, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i108
  store ptr %i.fu, ptr %i.k, align 8, !tbaa !31
  store ptr %i.fx, ptr %i.l, align 8, !tbaa !29
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.fu, i64 %i.fs
  store ptr %i.fy, ptr %i.m, align 8, !tbaa !30
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit111

_ZNSt6vectorIiSaIiEE9push_backERKi.exit111:       ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i110, %bb.al, %.lr.ph.split.split, %bb.z
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.backedge, label %.lr.ph.split.split, !llvm.loop !115

.backedge:                                        ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit111, %bb.t, %.lr.ph.split, %_ZNSt6vectorIfSaIfEE9push_backERKf.exit87, %.lr.ph, %_ZN12_GLOBAL__N_18readFaceEPcPiii.exit, %_ZN12_GLOBAL__N_17readRowEPcS0_S0_i.exit
  %i.fz = icmp ult ptr %.142.lcssa.i, %i.f
  br i1 %i.fz, label %.lr.ph.preheader.i, label %._crit_edge, !llvm.loop !116

._crit_edge:                                      ; preds = %.backedge, %bb.a
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !29
  %i.ge = load ptr, ptr %i.gb, align 8, !tbaa !31 ; 4 uses
  %i.gf = ptrtoint ptr %i.gd to i64
  %i.gg = ptrtoint ptr %i.ge to i64
  %i.gh = sub i64 %i.gf, %i.gg                    ; 5 uses
  %i.gi = ashr exact i64 %i.gh, 2                 ; 3 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !21 ; 2 uses
  %i.gl = load ptr, ptr %i.ga, align 8, !tbaa !25 ; 2 uses
  %i.gm = ptrtoint ptr %i.gk to i64
  %i.gn = ptrtoint ptr %i.gl to i64
  %i.go = sub i64 %i.gm, %i.gn
  %i.gp = ashr exact i64 %i.go, 2                 ; 3 uses
  %i.gq = icmp ugt i64 %i.gi, %i.gp
  br i1 %i.gq, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %._crit_edge
  %i.gr = sub nuw nsw i64 %i.gi, %i.gp
  call void @_ZNSt6vectorIfSaIfEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ga, i64 noundef %i.gr)
  %.pre = load ptr, ptr %i.gc, align 8, !tbaa !29
  %.pre146 = load ptr, ptr %i.gb, align 8, !tbaa !31 ; 2 uses
  %.pre147 = ptrtoint ptr %.pre to i64
  %.pre148 = ptrtoint ptr %.pre146 to i64
  %.pre150 = sub i64 %.pre147, %.pre148
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit

bb.ar:                                            ; preds = %._crit_edge
  %i.gs = icmp ult i64 %i.gi, %i.gp
  br i1 %i.gs, label %bb.as, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit

bb.as:                                            ; preds = %bb.ar
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gl, i64 %i.gh ; 2 uses
  %.not.i.i = icmp eq ptr %i.gk, %i.gt
  br i1 %.not.i.i, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit, label %bb.at

bb.at:                                            ; preds = %bb.as
  store ptr %i.gt, ptr %i.gj, align 8, !tbaa !21
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit

_ZNSt6vectorIfSaIfEE6resizeEm.exit:               ; preds = %bb.aq, %bb.ar, %bb.as, %bb.at
  %.pre-phi151 = phi i64 [ %.pre150, %bb.aq ], [ %i.gh, %bb.ar ], [ %i.gh, %bb.as ], [ %i.gh, %bb.at ]
  %i.gu = phi ptr [ %.pre146, %bb.aq ], [ %i.ge, %bb.ar ], [ %i.ge, %bb.as ], [ %i.ge, %bb.at ]
  %i.gv = lshr exact i64 %.pre-phi151, 2          ; 2 uses
  %i.gw = trunc i64 %i.gv to i32
  %i.gx = icmp sgt i32 %i.gw, 0
  br i1 %i.gx, label %.lr.ph130, label %._crit_edge131

.lr.ph130:                                        ; preds = %_ZNSt6vectorIfSaIfEE6resizeEm.exit
  %i.gy = load ptr, ptr %0, align 8, !tbaa !25    ; 3 uses
  %i.gz = load ptr, ptr %i.ga, align 8, !tbaa !25
  %i.ha = and i64 %i.gv, 2147483647
  br label %bb.au

._crit_edge131:                                   ; preds = %bb.aw, %_ZNSt6vectorIfSaIfEE6resizeEm.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret void

bb.au:                                            ; preds = %.lr.ph130, %bb.aw
  %indvars.iv140 = phi i64 [ 0, %.lr.ph130 ], [ %indvars.iv.next141, %bb.aw ] ; 3 uses
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.gu, i64 %indvars.iv140 ; 3 uses
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !26
  %i.hd = mul nsw i32 %i.hc, 3
  %i.he = sext i32 %i.hd to i64
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %i.gy, i64 %i.he ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hb, i64 4
  %i.hh = load i32, ptr %i.hg, align 4, !tbaa !26
  %i.hi = mul nsw i32 %i.hh, 3
  %i.hj = sext i32 %i.hi to i64
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %i.gy, i64 %i.hj ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hb, i64 8
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !26
  %i.hn = mul nsw i32 %i.hm, 3
  %i.ho = sext i32 %i.hn to i64
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %i.gy, i64 %i.ho ; 2 uses
  %i.hq = load float, ptr %i.hk, align 4, !tbaa !24
  %i.hr = load float, ptr %i.hf, align 4, !tbaa !24
  %i.hs = load float, ptr %i.hp, align 4, !tbaa !24
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hk, i64 4
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hf, i64 4
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hp, i64 4
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %i.gz, i64 %indvars.iv140 ; 3 uses
  %i.hx = load <2 x float>, ptr %i.ht, align 4, !tbaa !24 ; 2 uses
  %i.hy = load <2 x float>, ptr %i.hu, align 4, !tbaa !24 ; 3 uses
  %i.hz = fsub <2 x float> %i.hx, %i.hy           ; 2 uses
  %i.ia = shufflevector <2 x float> %i.hx, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ib = insertelement <2 x float> %i.ia, float %i.hq, i64 1
  %i.ic = shufflevector <2 x float> %i.hy, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.id = insertelement <2 x float> %i.ic, float %i.hr, i64 1 ; 2 uses
  %i.ie = fsub <2 x float> %i.ib, %i.id           ; 2 uses
  %i.if = load <2 x float>, ptr %i.hv, align 4, !tbaa !24 ; 2 uses
  %i.ig = shufflevector <2 x float> %i.if, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ih = insertelement <2 x float> %i.ig, float %i.hs, i64 1
  %i.ii = fsub <2 x float> %i.ih, %i.id           ; 2 uses
  %i.ij = fsub <2 x float> %i.if, %i.hy           ; 2 uses
  %i.ik = fneg <2 x float> %i.ij
  %i.il = fmul <2 x float> %i.ie, %i.ik
  %i.im = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hz, <2 x float> %i.ii, <2 x float> %i.il) ; 5 uses
  %i.in = extractelement <2 x float> %i.im, i64 0 ; 2 uses
  store <2 x float> %i.im, ptr %i.hw, align 4, !tbaa !24
  %i.io = extractelement <2 x float> %i.ii, i64 1
  %i.ip = fneg float %i.io
  %i.iq = extractelement <2 x float> %i.hz, i64 0
  %i.ir = fmul float %i.iq, %i.ip
  %i.is = extractelement <2 x float> %i.ie, i64 1
  %i.it = extractelement <2 x float> %i.ij, i64 0
  %i.iu = call float @llvm.fmuladd.f32(float %i.is, float %i.it, float %i.ir) ; 4 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %i.hw, i64 8 ; 2 uses
  store float %i.iu, ptr %i.iv, align 4, !tbaa !24
  %foldExtExtBinop = fmul <2 x float> %i.im, %i.im
  %i.iw = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.ix = call float @llvm.fmuladd.f32(float %i.in, float %i.in, float %i.iw)
  %i.iy = call float @llvm.fmuladd.f32(float %i.iu, float %i.iu, float %i.ix) ; 2 uses
  %i.iz = fcmp ogt float %i.iy, 0.000000e+00
  br i1 %i.iz, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %sqrt = call float @llvm.sqrt.f32(float %i.iy)
  %i.ja = fdiv float 1.000000e+00, %sqrt          ; 2 uses
  %i.jb = insertelement <2 x float> poison, float %i.ja, i64 0
  %i.jc = shufflevector <2 x float> %i.jb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jd = fmul <2 x float> %i.im, %i.jc
  store <2 x float> %i.jd, ptr %i.hw, align 4, !tbaa !24
  %i.je = fmul float %i.iu, %i.ja
  store float %i.je, ptr %i.iv, align 4, !tbaa !24
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %indvars.iv.next141 = add nuw nsw i64 %indvars.iv140, 3 ; 2 uses
  %i.jf = icmp samesign ult i64 %indvars.iv.next141, %i.ha
  br i1 %i.jf, label %bb.au, label %._crit_edge131, !llvm.loop !117
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nounwind
declare i32 @__isoc23_sscanf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN9InputGeom8loadMeshEP9rcContextRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(448) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %class.FileIO, align 8              ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTV6FileIO, i64 16), ptr %3, align 8, !tbaa !33
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr null, ptr %i.a, align 8, !tbaa !38
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 0, ptr %i.b, align 8, !tbaa !39
  %i.c = load ptr, ptr %2, align 8, !tbaa !44
  %i.d = call noundef zeroext i1 @_ZN6FileIO11openForReadEPKc(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef %i.c) #14
end_hunk_0
begin_hunk_1_@_ZN9InputGeom11loadGeomSetEP9rcContextPcm:bb.a
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.bj = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.bl = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.bm = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %4, i64 8
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph70, %.critedge42
  %.03269 = phi ptr [ %2, %.lr.ph70 ], [ %.2, %.critedge42 ]
  store i8 0, ptr %i.a, align 16, !tbaa !16
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.i, %bb.m
  %.027.i = phi i32 [ %.1.i, %bb.m ], [ 0, %bb.i ] ; 6 uses
  %.01725.i = phi i8 [ %.118.i, %bb.m ], [ 1, %bb.i ] ; 4 uses
  %.01924.i = phi ptr [ %i.bp, %bb.m ], [ %.03269, %bb.i ] ; 2 uses
  %i.bo = load i8, ptr %.01924.i, align 1, !tbaa !16 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.01924.i, i64 1 ; 9 uses
  switch i8 %i.bo, label %bb.l [
    i8 10, label %bb.j
    i8 13, label %bb.m
    i8 9, label %bb.k
    i8 32, label %bb.k
  ]

bb.j:                                             ; preds = %.lr.ph.i
  %i.bq = trunc nuw i8 %.01725.i to i1
  %not..i = xor i1 %i.bq, true
  br label %bb.m

bb.k:                                             ; preds = %.lr.ph.i, %.lr.ph.i
  %i.br = trunc nuw i8 %.01725.i to i1
  br i1 %i.br, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph.i
  %i.bs = add nsw i32 %.027.i, 1
  %i.bt = sext i32 %.027.i to i64
  %i.bu = getelementptr inbounds i8, ptr %i.a, i64 %i.bt
  store i8 %i.bo, ptr %i.bu, align 1, !tbaa !16
  %i.bv = icmp sgt i32 %.027.i, 509
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j, %.lr.ph.i
  %.118.i = phi i8 [ %.01725.i, %.lr.ph.i ], [ 0, %bb.l ], [ %.01725.i, %bb.j ], [ 1, %bb.k ]
  %.116.i = phi i1 [ false, %.lr.ph.i ], [ %i.bv, %bb.l ], [ %not..i, %bb.j ], [ false, %bb.k ]
  %.1.i = phi i32 [ %.027.i, %.lr.ph.i ], [ %i.bs, %bb.l ], [ %.027.i, %bb.j ], [ %.027.i, %bb.k ] ; 2 uses
  %i.bw = icmp uge ptr %i.bp, %i.aj
  %.not22.i = select i1 %.116.i, i1 true, i1 %i.bw
  br i1 %.not22.i, label %_ZN12_GLOBAL__N_18parseRowEPcS0_S0_i.exit, label %.lr.ph.i, !llvm.loop !121

_ZN12_GLOBAL__N_18parseRowEPcS0_S0_i.exit:        ; preds = %bb.m
  %i.bx = sext i32 %.1.i to i64
  %i.by = getelementptr inbounds i8, ptr %i.a, i64 %i.bx
  store i8 0, ptr %i.by, align 1, !tbaa !16
  %i.bz = load i8, ptr %i.a, align 16, !tbaa !16
  switch i8 %i.bz, label %.critedge42 [
    i8 102, label %.preheader
    i8 99, label %bb.u
    i8 118, label %bb.v
    i8 115, label %bb.ae
  ]

.preheader:                                       ; preds = %_ZN12_GLOBAL__N_18parseRowEPcS0_S0_i.exit, %bb.n
  %.pn = phi ptr [ %.031, %bb.n ], [ %i.a, %_ZN12_GLOBAL__N_18parseRowEPcS0_S0_i.exit ]
  %.031 = getelementptr inbounds nuw i8, ptr %.pn, i64 1 ; 5 uses
  %i.ca = load i8, ptr %.031, align 1, !tbaa !16  ; 2 uses
  %.not = icmp eq i8 %i.ca, 0
  br i1 %.not, label %.critedge42, label %bb.n

bb.n:                                             ; preds = %.preheader
  %i.cb = sext i8 %i.ca to i32
  %i.cc = call i32 @isspace(i32 noundef %i.cb) #18
  %.not39 = icmp eq i32 %i.cc, 0
  br i1 %.not39, label %.critedge, label %.preheader, !llvm.loop !122

.critedge:                                        ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  store ptr %i.bm, ptr %4, align 8, !tbaa !69
  %i.cd = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %.031) #14 ; 8 uses
  %i.ce = icmp ugt i64 %i.cd, 15
  br i1 %i.ce, label %bb.o, label %._crit_edge.i.i

bb.o:                                             ; preds = %.critedge
  %i.cf = icmp slt i64 %i.cd, 0
  br i1 %i.cf, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #15
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.cg = add nuw i64 %i.cd, 1                    ; 2 uses
  %i.ch = icmp slt i64 %i.cg, 0
  br i1 %i.ch, label %bb.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, !prof !70

bb.r:                                             ; preds = %bb.q
  call void @_ZSt17__throw_bad_allocv() #15
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.q
  %i.ci = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cg) #16 ; 2 uses
  store ptr %i.ci, ptr %4, align 8, !tbaa !44
  store i64 %i.cd, ptr %i.bm, align 8, !tbaa !16
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, %.critedge
  %i.cj = phi ptr [ %i.ci, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i ], [ %i.bm, %.critedge ] ; 3 uses
  switch i64 %i.cd, label %bb.t [
    i64 1, label %bb.s
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit
  ]

bb.s:                                             ; preds = %._crit_edge.i.i
  %i.ck = load i8, ptr %.031, align 1, !tbaa !16
  store i8 %i.ck, ptr %i.cj, align 1, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit

bb.t:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cj, ptr nonnull align 1 %.031, i64 %i.cd, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit: ; preds = %._crit_edge.i.i, %bb.s, %bb.t
  store i64 %i.cd, ptr %i.bn, align 8, !tbaa !71
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.cd
  store i8 0, ptr %i.cl, align 1, !tbaa !16
  %i.cm = call noundef zeroext i1 @_ZN9InputGeom8loadMeshEP9rcContextRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(448) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %4)
  %i.cn = load ptr, ptr %4, align 8, !tbaa !44    ; 2 uses
  %i.co = icmp eq ptr %i.cn, %i.bm
  br i1 %i.co, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit
  %i.cp = load i64, ptr %i.bm, align 8, !tbaa !16
  %i.cq = add i64 %i.cp, 1
  call void @_ZdlPvm(ptr noundef %i.cn, i64 noundef %i.cq) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  br i1 %i.cm, label %.critedge42, label %._crit_edge

bb.u:                                             ; preds = %_ZN12_GLOBAL__N_18parseRowEPcS0_S0_i.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #14
  %i.cr = call i32 (ptr, ptr, ...) @__isoc23_sscanf(ptr noundef nonnull %i.am, ptr noundef nonnull @.str.2, ptr noundef nonnull %i.b, ptr noundef nonnull %i.bi, ptr noundef nonnull %i.bj, ptr noundef nonnull %i.c, ptr noundef nonnull %i.bk, ptr noundef nonnull %i.bl, ptr noundef nonnull %i.g, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f) #14 ; 0 uses
  %i.cs = load float, ptr %i.g, align 4, !tbaa !24
  %i.ct = load i32, ptr %i.d, align 4, !tbaa !26
  %i.cu = trunc i32 %i.ct to i8
  %i.cv = load i32, ptr %i.e, align 4, !tbaa !26
  %i.cw = trunc i32 %i.cv to i8
  %i.cx = load i32, ptr %i.f, align 4, !tbaa !26
  %i.cy = trunc i32 %i.cx to i16
  call void @_ZN9InputGeom20addOffMeshConnectionEPKfS1_fhht(ptr noundef nonnull align 8 dereferenceable(448) %0, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, float noundef %i.cs, i8 noundef zeroext %i.cu, i8 noundef zeroext %i.cw, i16 noundef zeroext %i.cy)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  br label %.critedge42

bb.v:                                             ; preds = %_ZN12_GLOBAL__N_18parseRowEPcS0_S0_i.exit
  %i.cz = load ptr, ptr %i.ah, align 8, !tbaa !58 ; 5 uses
  %i.da = load ptr, ptr %i.bh, align 8, !tbaa !72
  %.not.i43 = icmp eq ptr %i.cz, %i.da
  br i1 %.not.i43, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(160) %i.cz, i8 0, i64 160, i1 false)
  %i.db = load ptr, ptr %i.ah, align 8, !tbaa !58 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 160
  store ptr %i.dc, ptr %i.ah, align 8, !tbaa !58
  br label %_ZNSt6vectorI12ConvexVolumeSaIS0_EE12emplace_backIJEEERS0_DpOT_.exit

bb.x:                                             ; preds = %bb.v
  %i.dd = load ptr, ptr %i.af, align 8, !tbaa !57 ; 5 uses
  %i.de = ptrtoint ptr %i.cz to i64
  %i.df = ptrtoint ptr %i.dd to i64
  %i.dg = sub i64 %i.de, %i.df                    ; 4 uses
  %i.dh = icmp eq i64 %i.dg, 9223372036854775680
  br i1 %i.dh, label %bb.y, label %_ZNKSt6vectorI12ConvexVolumeSaIS0_EE12_M_check_lenEmPKc.exit.i.i

bb.y:                                             ; preds = %bb.x
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #15
  unreachable

_ZNKSt6vectorI12ConvexVolumeSaIS0_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.x
  %i.di = sdiv exact i64 %i.dg, 160               ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.di, i64 1)
  %5 = add nsw i64 %.sroa.speculated.i.i.i, %i.di ; 2 uses
  %i.dj = icmp ult i64 %5, %i.di
  %i.dk = call i64 @llvm.umin.i64(i64 %5, i64 57646075230342348)
  %i.dl = select i1 %i.dj, i64 57646075230342348, i64 %i.dk ; 3 uses
  %.not.i.i.i44 = icmp ne i64 %i.dl, 0
  call void @llvm.assume(i1 %.not.i.i.i44)
  %i.dm = mul nuw nsw i64 %i.dl, 160
  %i.dn = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dm) #16 ; 5 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.dg
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(160) %i.do, i8 0, i64 160, i1 false)
  %.not10.i.i.i.i.i = icmp eq ptr %i.dd, %i.cz
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorI12ConvexVolumeSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit21.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorI12ConvexVolumeSaIS0_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.dq, %.lr.ph.i.i.i.i.i ], [ %i.dn, %_ZNKSt6vectorI12ConvexVolumeSaIS0_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.dp, %.lr.ph.i.i.i.i.i ], [ %i.dd, %_ZNKSt6vectorI12ConvexVolumeSaIS0_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(160) %.012.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(160) %.0911.i.i.i.i.i, i64 160, i1 false), !tbaa.struct !73, !alias.scope !128
  %i.dp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 160 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 160 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.dp, %i.cz
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorI12ConvexVolumeSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit21.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !0

_ZNSt6vectorI12ConvexVolumeSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit21.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorI12ConvexVolumeSaIS0_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.dn, %_ZNKSt6vectorI12ConvexVolumeSaIS0_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.dq, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 160
  %.not.i22.i.i = icmp eq ptr %i.dd, null
  br i1 %.not.i22.i.i, label %_ZNSt6vectorI12ConvexVolumeSaIS0_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i, label %bb.z

bb.z:                                             ; preds = %_ZNSt6vectorI12ConvexVolumeSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit21.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.dd, i64 noundef %i.dg) #17
  br label %_ZNSt6vectorI12ConvexVolumeSaIS0_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i

_ZNSt6vectorI12ConvexVolumeSaIS0_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i: ; preds = %bb.z, %_ZNSt6vectorI12ConvexVolumeSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit21.i.i
  store ptr %i.dn, ptr %i.af, align 8, !tbaa !57
  store ptr %i.dr, ptr %i.ah, align 8, !tbaa !58
  %i.ds = getelementptr inbounds nuw [160 x i8], ptr %i.dn, i64 %i.dl
  store ptr %i.ds, ptr %i.bh, align 8, !tbaa !72
  br label %_ZNSt6vectorI12ConvexVolumeSaIS0_EE12emplace_backIJEEERS0_DpOT_.exit

_ZNSt6vectorI12ConvexVolumeSaIS0_EE12emplace_backIJEEERS0_DpOT_.exit: ; preds = %bb.w, %_ZNSt6vectorI12ConvexVolumeSaIS0_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i
  %i.dt = phi ptr [ %.0.lcssa.i.i.i.i.i, %_ZNSt6vectorI12ConvexVolumeSaIS0_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i ], [ %i.db, %bb.w ] ; 5 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 144 ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dt, i64 156
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dt, i64 148
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dt, i64 152
  %i.dy = call i32 (ptr, ptr, ...) @__isoc23_sscanf(ptr noundef nonnull %i.am, ptr noundef nonnull @.str.3, ptr noundef nonnull %i.du, ptr noundef nonnull %i.dv, ptr noundef nonnull %i.dw, ptr noundef nonnull %i.dx) #14 ; 0 uses
  %i.dz = load i32, ptr %i.du, align 4, !tbaa !75
  %i.ea = icmp sgt i32 %i.dz, 0
  br i1 %i.ea, label %.lr.ph, label %.critedge42

.lr.ph:                                           ; preds = %_ZNSt6vectorI12ConvexVolumeSaIS0_EE12emplace_backIJEEERS0_DpOT_.exit, %_ZN12_GLOBAL__N_18parseRowEPcS0_S0_i.exit58
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN12_GLOBAL__N_18parseRowEPcS0_S0_i.exit58 ], [ 0, %_ZNSt6vectorI12ConvexVolumeSaIS0_EE12emplace_backIJEEERS0_DpOT_.exit ] ; 2 uses
  %.167 = phi ptr [ %.019.lcssa.i46, %_ZN12_GLOBAL__N_18parseRowEPcS0_S0_i.exit58 ], [ %i.bp, %_ZNSt6vectorI12ConvexVolumeSaIS0_EE12emplace_backIJEEERS0_DpOT_.exit ] ; 3 uses
  store i8 0, ptr %i.a, align 16, !tbaa !16
  %.not.i45 = icmp ult ptr %.167, %i.aj
  br i1 %.not.i45, label %.lr.ph.i48, label %_ZN12_GLOBAL__N_18parseRowEPcS0_S0_i.exit58

.lr.ph.i48:                                       ; preds = %.lr.ph, %bb.ad
  %.027.i49 = phi i32 [ %.1.i54, %bb.ad ], [ 0, %.lr.ph ] ; 6 uses
  %.01725.i50 = phi i8 [ %.118.i52, %bb.ad ], [ 1, %.lr.ph ] ; 4 uses
  %.01924.i51 = phi ptr [ %i.ec, %bb.ad ], [ %.167, %.lr.ph ] ; 2 uses
  %i.eb = load i8, ptr %.01924.i51, align 1, !tbaa !16 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.01924.i51, i64 1 ; 3 uses
  switch i8 %i.eb, label %bb.ac [
    i8 10, label %bb.aa
    i8 13, label %bb.ad
    i8 9, label %bb.ab
    i8 32, label %bb.ab
  ]

bb.aa:                                            ; preds = %.lr.ph.i48
  %i.ed = trunc nuw i8 %.01725.i50 to i1
  %not..i57 = xor i1 %i.ed, true
  br label %bb.ad

bb.ab:                                            ; preds = %.lr.ph.i48, %.lr.ph.i48
  %i.ee = trunc nuw i8 %.01725.i50 to i1
  br i1 %i.ee, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %.lr.ph.i48
  %i.ef = add nsw i32 %.027.i49, 1
  %i.eg = sext i32 %.027.i49 to i64
  %i.eh = getelementptr inbounds i8, ptr %i.a, i64 %i.eg
  store i8 %i.eb, ptr %i.eh, align 1, !tbaa !16
  %i.ei = icmp sgt i32 %.027.i49, 509
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %bb.aa, %.lr.ph.i48
  %.118.i52 = phi i8 [ %.01725.i50, %.lr.ph.i48 ], [ 0, %bb.ac ], [ %.01725.i50, %bb.aa ], [ 1, %bb.ab ]
  %.116.i53 = phi i1 [ false, %.lr.ph.i48 ], [ %i.ei, %bb.ac ], [ %not..i57, %bb.aa ], [ false, %bb.ab ]
  %.1.i54 = phi i32 [ %.027.i49, %.lr.ph.i48 ], [ %i.ef, %bb.ac ], [ %.027.i49, %bb.aa ], [ %.027.i49, %bb.ab ] ; 2 uses
  %i.ej = icmp uge ptr %i.ec, %i.aj
  %.not22.i55 = select i1 %.116.i53, i1 true, i1 %i.ej
  br i1 %.not22.i55, label %._crit_edge.loopexit.i56, label %.lr.ph.i48, !llvm.loop !121

._crit_edge.loopexit.i56:                         ; preds = %bb.ad
  %i.ek = sext i32 %.1.i54 to i64
  br label %_ZN12_GLOBAL__N_18parseRowEPcS0_S0_i.exit58

_ZN12_GLOBAL__N_18parseRowEPcS0_S0_i.exit58:      ; preds = %.lr.ph, %._crit_edge.loopexit.i56
  %.019.lcssa.i46 = phi ptr [ %.167, %.lr.ph ], [ %i.ec, %._crit_edge.loopexit.i56 ] ; 2 uses
  %.0.lcssa.i47 = phi i64 [ 0, %.lr.ph ], [ %i.ek, %._crit_edge.loopexit.i56 ]
  %i.el = getelementptr inbounds i8, ptr %i.a, i64 %.0.lcssa.i47
  store i8 0, ptr %i.el, align 1, !tbaa !16
  %.idx = mul nuw nsw i64 %indvars.iv, 12
  %i.em = getelementptr inbounds nuw i8, ptr %i.dt, i64 %.idx ; 3 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 4
  %i.eo = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  %i.ep = call i32 (ptr, ptr, ...) @__isoc23_sscanf(ptr noundef nonnull %i.a, ptr noundef nonnull @.str, ptr noundef nonnull %i.em, ptr noundef nonnull %i.en, ptr noundef nonnull %i.eo) #14 ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.eq = load i32, ptr %i.du, align 4, !tbaa !75
  %i.er = sext i32 %i.eq to i64
  %i.es = icmp slt i64 %indvars.iv.next, %i.er
  br i1 %i.es, label %.lr.ph, label %.critedge42, !llvm.loop !126

bb.ae:                                            ; preds = %_ZN12_GLOBAL__N_18parseRowEPcS0_S0_i.exit
  store i8 1, ptr %i.al, align 4, !tbaa !147
  %i.et = call i32 (ptr, ptr, ...) @__isoc23_sscanf(ptr noundef nonnull %i.am, ptr noundef nonnull @.str.4, ptr noundef nonnull %0, ptr noundef nonnull %i.an, ptr noundef nonnull %i.ao, ptr noundef nonnull %i.ap, ptr noundef nonnull %i.aq, ptr noundef nonnull %i.ar, ptr noundef nonnull %i.as, ptr noundef nonnull %i.at, ptr noundef nonnull %i.au, ptr noundef nonnull %i.av, ptr noundef nonnull %i.aw, ptr noundef nonnull %i.ax, ptr noundef nonnull %i.ay, ptr noundef nonnull %i.az, ptr noundef nonnull %i.ba, ptr noundef nonnull %i.bb, ptr noundef nonnull %i.bc, ptr noundef nonnull %i.bd, ptr noundef nonnull %i.be, ptr noundef nonnull %i.bf, ptr noundef nonnull %i.bg) #14 ; 0 uses
  br label %.critedge42

.critedge42:                                      ; preds = %_ZN12_GLOBAL__N_18parseRowEPcS0_S0_i.exit58, %.preheader, %_ZNSt6vectorI12ConvexVolumeSaIS0_EE12emplace_backIJEEERS0_DpOT_.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZN12_GLOBAL__N_18parseRowEPcS0_S0_i.exit, %bb.u, %bb.ae
  %.2 = phi ptr [ %i.bp, %.preheader ], [ %i.bp, %bb.u ], [ %i.bp, %_ZN12_GLOBAL__N_18parseRowEPcS0_S0_i.exit ], [ %i.bp, %bb.ae ], [ %i.bp, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.bp, %_ZNSt6vectorI12ConvexVolumeSaIS0_EE12emplace_backIJEEERS0_DpOT_.exit ], [ %.019.lcssa.i46, %_ZN12_GLOBAL__N_18parseRowEPcS0_S0_i.exit58 ] ; 2 uses
  %.not73 = icmp ult ptr %.2, %i.aj
  br i1 %.not73, label %bb.i, label %._crit_edge, !llvm.loop !127

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %.critedge42, %_ZNSt6vectorI12ConvexVolumeSaIS0_EE5clearEv.exit
  %.lcssa63 = phi i1 [ true, %_ZNSt6vectorI12ConvexVolumeSaIS0_EE5clearEv.exit ], [ true, %.critedge42 ], [ false, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret i1 %.lcssa63
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @isspace(i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN9InputGeom20addOffMeshConnectionEPKfS1_fhht(ptr noundef nonnull align 8 dereferenceable(448) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, float noundef %3, i8 noundef zeroext %4, i8 noundef zeroext %5, i16 noundef zeroext %6) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !21   ; 3 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !25   ; 4 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 3 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = icmp ult i64 %i.g, -24
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNSt6vectorIfSaIfEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef 6)
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !21
  %.pre33.a = load ptr, ptr %i.a, align 8, !tbaa !25 ; 2 uses
  %.pre36 = ptrtoint ptr %.pre33.a to i64
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr i8, ptr %i.d, i64 %i.g
  %i.j = getelementptr i8, ptr %i.i, i64 24       ; 3 uses
  %.not.i.i = icmp eq ptr %i.c, %i.j
  br i1 %.not.i.i, label %_ZNSt6vectorIfSaIfEE6resizeEm.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %i.j, ptr %i.b, align 8, !tbaa !21
  br label %_ZNSt6vectorIfSaIfEE6resizeEm.exit

_ZNSt6vectorIfSaIfEE6resizeEm.exit:               ; preds = %bb.b, %bb.c, %bb.d
  %.pre-phi = phi i64 [ %.pre36, %bb.b ], [ %i.f, %bb.c ], [ %i.f, %bb.d ]
  %i.k = phi ptr [ %.pre33.a, %bb.b ], [ %i.d, %bb.c ], [ %i.d, %bb.d ]
  %i.l = phi ptr [ %.pre, %bb.b ], [ %i.c, %bb.c ], [ %i.j, %bb.d ]
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = sub i64 %i.m, %.pre-phi
  %i.o = getelementptr i8, ptr %i.k, i64 %i.n     ; 6 uses
  %i.p = getelementptr i8, ptr %i.o, i64 -24
  %i.q = load float, ptr %1, align 4, !tbaa !24
  store float %i.q, ptr %i.p, align 4, !tbaa !24
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.s = load float, ptr %i.r, align 4, !tbaa !24
  %i.t = getelementptr i8, ptr %i.o, i64 -20
  store float %i.s, ptr %i.t, align 4, !tbaa !24
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = load float, ptr %i.u, align 4, !tbaa !24
  %i.w = getelementptr i8, ptr %i.o, i64 -16
  store float %i.v, ptr %i.w, align 4, !tbaa !24
  %i.x = getelementptr i8, ptr %i.o, i64 -12
  %i.y = load float, ptr %2, align 4, !tbaa !24
  store float %i.y, ptr %i.x, align 4, !tbaa !24
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.aa = load float, ptr %i.z, align 4, !tbaa !24
  %i.ab = getelementptr i8, ptr %i.o, i64 -8
  store float %i.aa, ptr %i.ab, align 4, !tbaa !24
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !24
  %i.ae = getelementptr i8, ptr %i.o, i64 -4
  store float %i.ad, ptr %i.ae, align 4, !tbaa !24
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 3 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !21 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !22
  %.not.i = icmp eq ptr %i.ah, %i.aj
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIfSaIfEE6resizeEm.exit
  store float %3, ptr %i.ah, align 4, !tbaa !24
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  store ptr %i.ak, ptr %i.ag, align 8, !tbaa !21
  br label %_ZNSt6vectorIfSaIfEE12emplace_backIJRKfEEERfDpOT_.exit

bb.f:                                             ; preds = %_ZNSt6vectorIfSaIfEE6resizeEm.exit
  %i.al = load ptr, ptr %i.af, align 8, !tbaa !25 ; 4 uses
  %i.am = ptrtoint ptr %i.ah to i64
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = sub i64 %i.am, %i.an                    ; 6 uses
  %i.ap = icmp eq i64 %i.ao, 9223372036854775804
  br i1 %i.ap, label %bb.g, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #15
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.f
  %i.aq = ashr exact i64 %i.ao, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.aq, i64 1)
  %7 = add nsw i64 %.sroa.speculated.i.i.i, %i.aq ; 2 uses
  %i.ar = icmp ult i64 %7, %i.aq
  %i.as = tail call i64 @llvm.umin.i64(i64 %7, i64 2305843009213693951)
  %i.at = select i1 %i.ar, i64 2305843009213693951, i64 %i.as ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.at, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.au = shl nuw nsw i64 %i.at, 2
  %i.av = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.au) #16 ; 4 uses
  %i.aw = getelementptr inbounds i8, ptr %i.av, i64 %i.ao ; 2 uses
  store float %3, ptr %i.aw, align 4, !tbaa !24
  %i.ax = icmp sgt i64 %i.ao, 0
  br i1 %i.ax, label %bb.h, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i

bb.h:                                             ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.av, ptr align 4 %i.al, i64 %i.ao, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i: ; preds = %bb.h, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 4
  %.not.i17.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.al, i64 noundef %i.ao) #17
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i: ; preds = %bb.i, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i
  store ptr %i.av, ptr %i.af, align 8, !tbaa !25
  store ptr %i.ay, ptr %i.ag, align 8, !tbaa !21
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %i.at
  store ptr %i.az, ptr %i.ai, align 8, !tbaa !22
  br label %_ZNSt6vectorIfSaIfEE12emplace_backIJRKfEEERfDpOT_.exit

_ZNSt6vectorIfSaIfEE12emplace_backIJRKfEEERfDpOT_.exit: ; preds = %bb.e, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 4 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !47 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !148
  %.not.i5 = icmp eq ptr %i.bc, %i.be
  br i1 %.not.i5, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIfSaIfEE12emplace_backIJRKfEEERfDpOT_.exit
  store i8 %4, ptr %i.bc, align 1, !tbaa !16
  %i.bf = load ptr, ptr %i.bb, align 8, !tbaa !47
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 1
  store ptr %i.bg, ptr %i.bb, align 8, !tbaa !47
  br label %_ZNSt6vectorIhSaIhEE12emplace_backIJRhEEES3_DpOT_.exit

bb.k:                                             ; preds = %_ZNSt6vectorIfSaIfEE12emplace_backIJRKfEEERfDpOT_.exit
  %i.bh = load ptr, ptr %i.ba, align 8, !tbaa !46 ; 4 uses
  %i.bi = ptrtoint ptr %i.bc to i64
  %i.bj = ptrtoint ptr %i.bh to i64
  %i.bk = sub i64 %i.bi, %i.bj                    ; 8 uses
  %i.bl = icmp eq i64 %i.bk, 9223372036854775807
  br i1 %i.bl, label %bb.l, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i

bb.l:                                             ; preds = %bb.k
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #15
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.k
  %.sroa.speculated.i.i.i6 = tail call i64 @llvm.umax.i64(i64 %i.bk, i64 1)
  %i.bm = add i64 %.sroa.speculated.i.i.i6, %i.bk ; 2 uses
  %i.bn = icmp ult i64 %i.bm, %i.bk
  %i.bo = tail call i64 @llvm.umin.i64(i64 %i.bm, i64 9223372036854775807)
  %i.bp = select i1 %i.bn, i64 9223372036854775807, i64 %i.bo ; 3 uses
  %.not.i.i.i7 = icmp ne i64 %i.bp, 0
  tail call void @llvm.assume(i1 %.not.i.i.i7)
  %i.bq = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bp) #16 ; 4 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bk ; 2 uses
  store i8 %4, ptr %i.br, align 1, !tbaa !16
  %i.bs = icmp sgt i64 %i.bk, 0
  br i1 %i.bs, label %bb.m, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i

bb.m:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bq, ptr align 1 %i.bh, i64 %i.bk, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i: ; preds = %bb.m, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 1
  %.not.i17.i.i8 = icmp eq ptr %i.bh, null
  br i1 %.not.i17.i.i8, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bh, i64 noundef %i.bk) #17
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i: ; preds = %bb.n, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i
  store ptr %i.bq, ptr %i.ba, align 8, !tbaa !46
  store ptr %i.bt, ptr %i.bb, align 8, !tbaa !47
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bp
  store ptr %i.bu, ptr %i.bd, align 8, !tbaa !148
  br label %_ZNSt6vectorIhSaIhEE12emplace_backIJRhEEES3_DpOT_.exit

_ZNSt6vectorIhSaIhEE12emplace_backIJRhEEES3_DpOT_.exit: ; preds = %bb.j, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 5 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !47 ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 2 uses
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !148
  %.not.i9 = icmp eq ptr %i.bx, %i.bz
  br i1 %.not.i9, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIhSaIhEE12emplace_backIJRhEEES3_DpOT_.exit
  store i8 %5, ptr %i.bx, align 1, !tbaa !16
  %i.ca = load ptr, ptr %i.bw, align 8, !tbaa !47
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 1 ; 2 uses
  store ptr %i.cb, ptr %i.bw, align 8, !tbaa !47
  br label %_ZNSt6vectorIhSaIhEE12emplace_backIJRhEEES3_DpOT_.exit16

bb.p:                                             ; preds = %_ZNSt6vectorIhSaIhEE12emplace_backIJRhEEES3_DpOT_.exit
  %i.cc = load ptr, ptr %i.bv, align 8, !tbaa !46 ; 4 uses
  %i.cd = ptrtoint ptr %i.bx to i64
  %i.ce = ptrtoint ptr %i.cc to i64
  %i.cf = sub i64 %i.cd, %i.ce                    ; 8 uses
  %i.cg = icmp eq i64 %i.cf, 9223372036854775807
  br i1 %i.cg, label %bb.q, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i10

bb.q:                                             ; preds = %bb.p
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #15
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i10: ; preds = %bb.p
  %.sroa.speculated.i.i.i11 = tail call i64 @llvm.umax.i64(i64 %i.cf, i64 1)
  %i.ch = add i64 %.sroa.speculated.i.i.i11, %i.cf ; 2 uses
  %i.ci = icmp ult i64 %i.ch, %i.cf
  %i.cj = tail call i64 @llvm.umin.i64(i64 %i.ch, i64 9223372036854775807)
  %i.ck = select i1 %i.ci, i64 9223372036854775807, i64 %i.cj ; 3 uses
  %.not.i.i.i12 = icmp ne i64 %i.ck, 0
  tail call void @llvm.assume(i1 %.not.i.i.i12)
  %i.cl = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ck) #16 ; 4 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.cf ; 2 uses
  store i8 %5, ptr %i.cm, align 1, !tbaa !16
  %i.cn = icmp sgt i64 %i.cf, 0
  br i1 %i.cn, label %bb.r, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i13

bb.r:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i10
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.cl, ptr align 1 %i.cc, i64 %i.cf, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i13

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i13: ; preds = %bb.r, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i10
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 1 ; 2 uses
  %.not.i17.i.i14 = icmp eq ptr %i.cc, null
  br i1 %.not.i17.i.i14, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i15, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i13
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cc, i64 noundef %i.cf) #17
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i15

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i15: ; preds = %bb.s, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i13
  store ptr %i.cl, ptr %i.bv, align 8, !tbaa !46
  store ptr %i.co, ptr %i.bw, align 8, !tbaa !47
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.ck
  store ptr %i.cp, ptr %i.by, align 8, !tbaa !148
  br label %_ZNSt6vectorIhSaIhEE12emplace_backIJRhEEES3_DpOT_.exit16

_ZNSt6vectorIhSaIhEE12emplace_backIJRhEEES3_DpOT_.exit16: ; preds = %bb.o, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i15
  %i.cq = phi ptr [ %i.cb, %bb.o ], [ %i.co, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i15 ] ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 3 uses
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !51 ; 4 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 2 uses
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !149
  %.not.i17 = icmp eq ptr %i.ct, %i.cv
  br i1 %.not.i17, label %bb.u, label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorIhSaIhEE12emplace_backIJRhEEES3_DpOT_.exit16
  store i16 %6, ptr %i.ct, align 2, !tbaa !78
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ct, i64 2
  store ptr %i.cw, ptr %i.cs, align 8, !tbaa !51
  br label %_ZNSt6vectorItSaItEE12emplace_backIJRtEEES3_DpOT_.exit

bb.u:                                             ; preds = %_ZNSt6vectorIhSaIhEE12emplace_backIJRhEEES3_DpOT_.exit16
  %i.cx = load ptr, ptr %i.cr, align 8, !tbaa !50 ; 4 uses
  %i.cy = ptrtoint ptr %i.ct to i64
  %i.cz = ptrtoint ptr %i.cx to i64
  %i.da = sub i64 %i.cy, %i.cz                    ; 6 uses
  %i.db = icmp eq i64 %i.da, 9223372036854775806
  br i1 %i.db, label %bb.v, label %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i

bb.v:                                             ; preds = %bb.u
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #15
  unreachable

_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.u
  %i.dc = ashr exact i64 %i.da, 1                 ; 3 uses
  %.sroa.speculated.i.i.i18 = tail call i64 @llvm.umax.i64(i64 %i.dc, i64 1)
  %i.dd = add i64 %.sroa.speculated.i.i.i18, %i.dc ; 2 uses
  %i.de = icmp ult i64 %i.dd, %i.dc
  %i.df = tail call i64 @llvm.umin.i64(i64 %i.dd, i64 4611686018427387903)
  %i.dg = select i1 %i.de, i64 4611686018427387903, i64 %i.df ; 3 uses
  %.not.i.i.i19 = icmp ne i64 %i.dg, 0
  tail call void @llvm.assume(i1 %.not.i.i.i19)
  %i.dh = shl nuw nsw i64 %i.dg, 1
  %i.di = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dh) #16 ; 4 uses
  %i.dj = getelementptr inbounds i8, ptr %i.di, i64 %i.da ; 2 uses
  store i16 %6, ptr %i.dj, align 2, !tbaa !78
  %i.dk = icmp sgt i64 %i.da, 0
  br i1 %i.dk, label %bb.w, label %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i

bb.w:                                             ; preds = %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.di, ptr align 2 %i.cx, i64 %i.da, i1 false)
  br label %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i

_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i: ; preds = %bb.w, %_ZNKSt6vectorItSaItEE12_M_check_lenEmPKc.exit.i.i
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dj, i64 2
  %.not.i17.i.i20 = icmp eq ptr %i.cx, null
  br i1 %.not.i17.i.i20, label %_ZNSt6vectorItSaItEE17_M_realloc_insertIJRtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i, label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cx, i64 noundef %i.da) #17
  %.pre34.pre = load ptr, ptr %i.bw, align 8, !tbaa !47
  br label %_ZNSt6vectorItSaItEE17_M_realloc_insertIJRtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i

_ZNSt6vectorItSaItEE17_M_realloc_insertIJRtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i: ; preds = %bb.x, %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i
  %.pre34 = phi ptr [ %.pre34.pre, %bb.x ], [ %i.cq, %_ZNSt6vectorItSaItEE11_S_relocateEPtS2_S2_RS0_.exit16.i.i ]
  store ptr %i.di, ptr %i.cr, align 8, !tbaa !50
  store ptr %i.dl, ptr %i.cs, align 8, !tbaa !51
  %i.dm = getelementptr inbounds nuw [2 x i8], ptr %i.di, i64 %i.dg
  store ptr %i.dm, ptr %i.cu, align 8, !tbaa !149
  br label %_ZNSt6vectorItSaItEE12emplace_backIJRtEEES3_DpOT_.exit

_ZNSt6vectorItSaItEE12emplace_backIJRtEEES3_DpOT_.exit: ; preds = %bb.t, %_ZNSt6vectorItSaItEE17_M_realloc_insertIJRtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i
  %i.dn = phi ptr [ %i.cq, %bb.t ], [ %.pre34, %_ZNSt6vectorItSaItEE17_M_realloc_insertIJRtEEEvN9__gnu_cxx17__normal_iteratorIPtS1_EEDpOT_.exit.i ]
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 2 uses
  %i.dp = load ptr, ptr %i.bv, align 8, !tbaa !46
  %i.dq = ptrtoint ptr %i.dn to i64
  %i.dr = ptrtoint ptr %i.dp to i64
  %i.ds = sub i64 %i.dq, %i.dr
  %i.dt = trunc i64 %i.ds to i32
  %i.du = add i32 %i.dt, 999                      ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 3 uses
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !54 ; 4 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 2 uses
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !150
  %.not.i21 = icmp eq ptr %i.dw, %i.dy
  br i1 %.not.i21, label %bb.z, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorItSaItEE12emplace_backIJRtEEES3_DpOT_.exit
  store i32 %i.du, ptr %i.dw, align 4, !tbaa !26
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dw, i64 4
  store ptr %i.dz, ptr %i.dv, align 8, !tbaa !54
  br label %_ZNSt6vectorIjSaIjEE12emplace_backIJjEEERjDpOT_.exit

bb.z:                                             ; preds = %_ZNSt6vectorItSaItEE12emplace_backIJRtEEES3_DpOT_.exit
  %i.ea = load ptr, ptr %i.do, align 8, !tbaa !53 ; 4 uses
  %i.eb = ptrtoint ptr %i.dw to i64
  %i.ec = ptrtoint ptr %i.ea to i64
  %i.ed = sub i64 %i.eb, %i.ec                    ; 6 uses
  %i.ee = icmp eq i64 %i.ed, 9223372036854775804
  br i1 %i.ee, label %bb.aa, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i

bb.aa:                                            ; preds = %bb.z
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #15
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.z
  %i.ef = ashr exact i64 %i.ed, 2                 ; 3 uses
  %.sroa.speculated.i.i.i22 = tail call i64 @llvm.umax.i64(i64 %i.ef, i64 1)
  %8 = add nsw i64 %.sroa.speculated.i.i.i22, %i.ef ; 2 uses
  %i.eg = icmp ult i64 %8, %i.ef
  %i.eh = tail call i64 @llvm.umin.i64(i64 %8, i64 2305843009213693951)
  %i.ei = select i1 %i.eg, i64 2305843009213693951, i64 %i.eh ; 3 uses
  %.not.i.i.i23 = icmp ne i64 %i.ei, 0
  tail call void @llvm.assume(i1 %.not.i.i.i23)
  %i.ej = shl nuw nsw i64 %i.ei, 2
  %i.ek = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ej) #16 ; 4 uses
  %i.el = getelementptr inbounds i8, ptr %i.ek, i64 %i.ed ; 2 uses
  store i32 %i.du, ptr %i.el, align 4, !tbaa !26
  %i.em = icmp sgt i64 %i.ed, 0
  br i1 %i.em, label %bb.ab, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i

bb.ab:                                            ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ek, ptr align 4 %i.ea, i64 %i.ed, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i: ; preds = %bb.ab, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i
  %i.en = getelementptr inbounds nuw i8, ptr %i.el, i64 4
  %.not.i17.i.i24 = icmp eq ptr %i.ea, null
  br i1 %.not.i17.i.i24, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i, label %bb.ac

bb.ac:                                            ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ea, i64 noundef %i.ed) #17
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i: ; preds = %bb.ac, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i
  store ptr %i.ek, ptr %i.do, align 8, !tbaa !53
  store ptr %i.en, ptr %i.dv, align 8, !tbaa !54
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.ek, i64 %i.ei
  store ptr %i.eo, ptr %i.dx, align 8, !tbaa !150
  br label %_ZNSt6vectorIjSaIjEE12emplace_backIJjEEERjDpOT_.exit

_ZNSt6vectorIjSaIjEE12emplace_backIJjEEERjDpOT_.exit: ; preds = %bb.y, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN9InputGeom4loadEP9rcContextRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(448) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !71   ; 3 uses
  %.not.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12find_last_ofEcm.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %2, align 8                ; 2 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.d
  %.not13.i.i = icmp eq i64 %i.d, 0
  br i1 %.not13.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12find_last_ofEcm.exit.thread, label %bb.d, !llvm.loop !1

bb.d:                                             ; preds = %bb.b, %bb.c
  %.1.i.i25 = phi i64 [ %i.b, %bb.b ], [ %i.d, %bb.c ]
  %i.d = add i64 %.1.i.i25, -1                    ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.d
  %i.f = load i8, ptr %i.e, align 1, !tbaa !16
  %i.g = icmp eq i8 %i.f, 46
  br i1 %i.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12find_last_ofEcm.exit, label %bb.c, !llvm.loop !1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12find_last_ofEcm.exit: ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.d ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  store ptr %i.i, ptr %3, align 8, !tbaa !69, !alias.scope !155
  %i.j = sub nuw i64 %i.b, %i.d                   ; 8 uses
  %i.k = icmp ugt i64 %i.j, 15
  br i1 %i.k, label %bb.e, label %._crit_edge.i.i.i

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12find_last_ofEcm.exit
  %i.l = icmp slt i64 %i.j, 0
  br i1 %i.l, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #15
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.m = add nuw i64 %i.j, 1                      ; 2 uses
  %i.n = icmp slt i64 %i.m, 0
  br i1 %i.n, label %bb.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, !prof !70

bb.h:                                             ; preds = %bb.g
  call void @_ZSt17__throw_bad_allocv() #15
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i: ; preds = %bb.g
  %i.o = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #16 ; 2 uses
  store ptr %i.o, ptr %3, align 8, !tbaa !44, !alias.scope !155
  store i64 %i.j, ptr %i.i, align 8, !tbaa !16, !alias.scope !155
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12find_last_ofEcm.exit
  %i.p = phi ptr [ %i.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i ], [ %i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12find_last_ofEcm.exit ] ; 3 uses
  switch i64 %i.j, label %bb.j [
    i64 1, label %bb.i
    i64 0, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit
  ]

bb.i:                                             ; preds = %._crit_edge.i.i.i
  %i.q = load i8, ptr %i.h, align 1, !tbaa !16
  store i8 %i.q, ptr %i.p, align 1, !tbaa !16
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit

bb.j:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.p, ptr nonnull align 1 %i.h, i64 %i.j, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit: ; preds = %._crit_edge.i.i.i, %bb.i, %bb.j
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i64 %i.j, ptr %i.r, align 8, !tbaa !71, !alias.scope !155
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.j
  store i8 0, ptr %i.s, align 1, !tbaa !16
  %i.t = load ptr, ptr %3, align 8, !tbaa !44     ; 2 uses
  %i.u = load i64, ptr %i.r, align 8, !tbaa !71   ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.u
  %i.w = icmp samesign eq i64 %i.u, 0
  br i1 %i.w, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit14.thread17, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit, %.lr.ph.i
  %.sroa.0.07.i = phi ptr [ %i.ab, %.lr.ph.i ], [ %i.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit ] ; 3 uses
  %i.x = load i8, ptr %.sroa.0.07.i, align 1, !tbaa !16
  %i.y = sext i8 %i.x to i32
  %i.z = call noundef i32 @tolower(i32 noundef %i.y) #14, !inline_history !153
  %i.aa = trunc i32 %i.z to i8
  store i8 %i.aa, ptr %.sroa.0.07.i, align 1, !tbaa !16
  %i.ab = getelementptr i8, ptr %.sroa.0.07.i, i64 1 ; 2 uses
  %i.ac = icmp eq ptr %i.ab, %i.v
  br i1 %i.ac, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_PDoFiiEET0_T_SD_SC_T1_.exit, label %.lr.ph.i, !llvm.loop !154

_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_PDoFiiEET0_T_SD_SC_T1_.exit: ; preds = %.lr.ph.i
  %.pr = load i64, ptr %i.r, align 8, !tbaa !71
  switch i64 %.pr, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit14.thread17 [
    i64 5, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
    i64 4, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit14
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_PDoFiiEET0_T_SD_SC_T1_.exit
  %i.ad = load ptr, ptr %3, align 8, !tbaa !44    ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 1
  %i.af = xor i32 %i.ae, 1702061870
  %i.ag = getelementptr i8, ptr %i.ad, i64 4
  %i.ah = load i8, ptr %i.ag, align 1
  %i.ai = zext i8 %i.ah to i32
  %i.aj = xor i32 %i.ai, 116
  %i.ak = or i32 %i.af, %i.aj
  %i.al = icmp ne i32 %i.ak, 0
  %i.am = zext i1 %i.al to i32
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit14.thread17

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.ao = call noundef zeroext i1 @_ZN9InputGeom11loadGeomSetEP9rcContextRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(448) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit14.thread17

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit14: ; preds = %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_PDoFiiEET0_T_SD_SC_T1_.exit
  %i.ap = load ptr, ptr %3, align 8, !tbaa !44
  %i.aq = load i32, ptr %i.ap, align 1
  %i.ar = icmp ne i32 %i.aq, 1784835886
  %i.as = zext i1 %i.ar to i32
  %i.at = icmp eq i32 %i.as, 0
  br i1 %i.at, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit14.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit14.thread17

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit14.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit14
  %i.au = call noundef zeroext i1 @_ZN9InputGeom8loadMeshEP9rcContextRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(448) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit14.thread17

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit14.thread17: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_PDoFiiEET0_T_SD_SC_T1_.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit14, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit14.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %.0 = phi i1 [ %i.ao, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ], [ %i.au, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit14.thread ], [ false, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit14 ], [ false, %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_PDoFiiEET0_T_SD_SC_T1_.exit ], [ false, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ], [ false, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit ]
  %i.av = load ptr, ptr %3, align 8, !tbaa !44    ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.i
  br i1 %i.aw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit14.thread17
  %i.ax = load i64, ptr %i.i, align 8, !tbaa !16
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.ay) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit14.thread17, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12find_last_ofEcm.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12find_last_ofEcm.exit.thread: ; preds = %bb.c, %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.1 = phi i1 [ %.0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ false, %bb.a ], [ false, %bb.c ]
  ret i1 %.1
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @tolower(i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZN9InputGeom11saveGeomSetEPK13BuildSettings(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(448) %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !79
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !79
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.ae, label %bb.b

bb.b:                                             ; preds = %bb.a
end_hunk_1
begin_hunk_2_@_ZN9InputGeom23deleteOffMeshConnectionEi:bb.a

bb.v:                                             ; preds = %_ZNSt6vectorItSaItEE5eraseEN9__gnu_cxx17__normal_iteratorIPKtS1_EE.exit
  %i.ch = ptrtoint ptr %i.cf to i64
  %i.ci = ptrtoint ptr %i.cd to i64
  %i.cj = sub i64 %i.ch, %i.ci                    ; 3 uses
  %i.ck = icmp sgt i64 %i.cj, 4
  br i1 %i.ck, label %bb.w, label %bb.x, !prof !83

bb.w:                                             ; preds = %bb.v
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.cc, ptr nonnull align 4 %i.cd, i64 %i.cj, i1 false)
  %.pre.i.i15 = load ptr, ptr %i.ce, align 8, !tbaa !54
  br label %_ZNSt6vectorIjSaIjEE5eraseEN9__gnu_cxx17__normal_iteratorIPKjS1_EE.exit

bb.x:                                             ; preds = %bb.v
  %i.cl = icmp eq i64 %i.cj, 4
  br i1 %i.cl, label %bb.y, label %_ZNSt6vectorIjSaIjEE5eraseEN9__gnu_cxx17__normal_iteratorIPKjS1_EE.exit

bb.y:                                             ; preds = %bb.x
  %i.cm = load i32, ptr %i.cd, align 4, !tbaa !26
  store i32 %i.cm, ptr %i.cc, align 4, !tbaa !26
  br label %_ZNSt6vectorIjSaIjEE5eraseEN9__gnu_cxx17__normal_iteratorIPKjS1_EE.exit

_ZNSt6vectorIjSaIjEE5eraseEN9__gnu_cxx17__normal_iteratorIPKjS1_EE.exit: ; preds = %_ZNSt6vectorItSaItEE5eraseEN9__gnu_cxx17__normal_iteratorIPKtS1_EE.exit, %bb.w, %bb.x, %bb.y
  %i.cn = phi ptr [ %i.cf, %bb.y ], [ %i.cf, %bb.x ], [ %.pre.i.i15, %bb.w ], [ %i.cf, %_ZNSt6vectorItSaItEE5eraseEN9__gnu_cxx17__normal_iteratorIPKtS1_EE.exit ]
  %i.co = getelementptr inbounds i8, ptr %i.cn, i64 -4
  store ptr %i.co, ptr %i.ce, align 8, !tbaa !54
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN9InputGeom22drawOffMeshConnectionsEP11duDebugDrawb(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(448) %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !33
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(8) %1, i1 noundef zeroext false) #14, !call_target !89
  %i.d = load ptr, ptr %1, align 8, !tbaa !33
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef 1, float noundef 2.000000e+00) #14, !call_target !93
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !54
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !53
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = lshr exact i64 %i.m, 2                   ; 2 uses
  %i.o = trunc i64 %i.n to i32
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 328
  %wide.trip.count = and i64 %i.n, 2147483647
  br label %bb.b

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %i.t = load ptr, ptr %1, align 8, !tbaa !33
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 72
  %i.v = load ptr, ptr %i.u, align 8
  tail call void %i.v(ptr noundef nonnull align 8 dereferenceable(8) %1) #14, !call_target !102
  %i.w = load ptr, ptr %1, align 8, !tbaa !33
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8
  tail call void %i.y(ptr noundef nonnull align 8 dereferenceable(8) %1, i1 noundef zeroext true) #14, !call_target !89
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 5 uses
  %i.z = load ptr, ptr %i.q, align 8, !tbaa !25
  %.idx = mul nuw nsw i64 %indvars.iv, 24
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %.idx ; 9 uses
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !24
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 4 ; 4 uses
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !24
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 4 uses
  %i.af = load float, ptr %i.ae, align 4, !tbaa !24
  %i.ag = load ptr, ptr %1, align 8, !tbaa !33
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 48
  %i.ai = load ptr, ptr %i.ah, align 8
  tail call void %i.ai(ptr noundef nonnull align 8 dereferenceable(8) %1, float noundef %i.ab, float noundef %i.ad, float noundef %i.af, i32 noundef 1073741824) #14, !call_target !106
  %i.aj = load float, ptr %i.aa, align 4, !tbaa !24
  %i.ak = load float, ptr %i.ac, align 4, !tbaa !24
  %i.al = fadd float %i.ak, 2.000000e-01
  %i.am = load float, ptr %i.ae, align 4, !tbaa !24
  %i.an = load ptr, ptr %1, align 8, !tbaa !33
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 48
  %i.ap = load ptr, ptr %i.ao, align 8
  tail call void %i.ap(ptr noundef nonnull align 8 dereferenceable(8) %1, float noundef %i.aj, float noundef %i.al, float noundef %i.am, i32 noundef 1073741824) #14, !call_target !106
  %i.aq = getelementptr inbounds nuw i8, ptr %i.aa, i64 12 ; 4 uses
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !24
  %i.as = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 4 uses
  %i.at = load float, ptr %i.as, align 4, !tbaa !24
  %i.au = getelementptr inbounds nuw i8, ptr %i.aa, i64 20 ; 4 uses
  %i.av = load float, ptr %i.au, align 4, !tbaa !24
  %i.aw = load ptr, ptr %1, align 8, !tbaa !33
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 48
  %i.ay = load ptr, ptr %i.ax, align 8
  tail call void %i.ay(ptr noundef nonnull align 8 dereferenceable(8) %1, float noundef %i.ar, float noundef %i.at, float noundef %i.av, i32 noundef 1073741824) #14, !call_target !106
  %i.az = load float, ptr %i.aq, align 4, !tbaa !24
  %i.ba = load float, ptr %i.as, align 4, !tbaa !24
  %i.bb = fadd float %i.ba, 2.000000e-01
  %i.bc = load float, ptr %i.au, align 4, !tbaa !24
  %i.bd = load ptr, ptr %1, align 8, !tbaa !33
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 48
  %i.bf = load ptr, ptr %i.be, align 8
  tail call void %i.bf(ptr noundef nonnull align 8 dereferenceable(8) %1, float noundef %i.az, float noundef %i.bb, float noundef %i.bc, i32 noundef 1073741824) #14, !call_target !106
  %i.bg = load float, ptr %i.aa, align 4, !tbaa !24
  %i.bh = load float, ptr %i.ac, align 4, !tbaa !24
  %i.bi = fadd float %i.bh, 1.000000e-01
  %i.bj = load float, ptr %i.ae, align 4, !tbaa !24
  %i.bk = load ptr, ptr %i.r, align 8, !tbaa !25
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %indvars.iv
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !24
  tail call void @_Z14duAppendCircleP11duDebugDrawffffj(ptr noundef nonnull %1, float noundef %i.bg, float noundef %i.bi, float noundef %i.bj, float noundef %i.bm, i32 noundef 1073741824) #14
  %i.bn = load float, ptr %i.aq, align 4, !tbaa !24
  %i.bo = load float, ptr %i.as, align 4, !tbaa !24
  %i.bp = fadd float %i.bo, 1.000000e-01
  %i.bq = load float, ptr %i.au, align 4, !tbaa !24
  %i.br = load ptr, ptr %i.r, align 8, !tbaa !25
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %indvars.iv
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !24
  tail call void @_Z14duAppendCircleP11duDebugDrawffffj(ptr noundef nonnull %1, float noundef %i.bn, float noundef %i.bp, float noundef %i.bq, float noundef %i.bt, i32 noundef 1073741824) #14
  br i1 %2, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.bu = load float, ptr %i.aa, align 4, !tbaa !24
  %i.bv = load float, ptr %i.ac, align 4, !tbaa !24
  %i.bw = load float, ptr %i.ae, align 4, !tbaa !24
  %i.bx = load float, ptr %i.aq, align 4, !tbaa !24
  %i.by = load float, ptr %i.as, align 4, !tbaa !24
  %i.bz = load float, ptr %i.au, align 4, !tbaa !24
  %i.ca = load ptr, ptr %i.s, align 8, !tbaa !46
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 %indvars.iv
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !16
  %i.cd = and i8 %i.cc, 1
  %.not = icmp eq i8 %i.cd, 0
  %i.ce = select i1 %.not, float 0.000000e+00, float 6.000000e-01
  tail call void @_Z11duAppendArcP11duDebugDrawfffffffffj(ptr noundef nonnull %1, float noundef %i.bu, float noundef %i.bv, float noundef %i.bw, float noundef %i.bx, float noundef %i.by, float noundef %i.bz, float noundef 2.500000e-01, float noundef %i.ce, float noundef 6.000000e-01, i32 noundef -1065353024) #14
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !173
}

declare void @_Z14duAppendCircleP11duDebugDrawffffj(ptr noundef, float noundef, float noundef, float noundef, float noundef, i32 noundef) local_unnamed_addr #4

declare void @_Z11duAppendArcP11duDebugDrawfffffffffj(ptr noundef, float noundef, float noundef, float noundef, float noundef, float noundef, float noundef, float noundef, float noundef, float noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN9InputGeom15addConvexVolumeEPKfiffh(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(448) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, float noundef %3, float noundef %4, i8 noundef zeroext %5) local_unnamed_addr #0 align 2 {
bb.a:
  %6 = alloca %struct.ConvexVolume, align 4       ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(144) %6, i8 0, i64 144, i1 false)
  %i.a = sext i32 %2 to i64
  %i.b = mul nsw i64 %i.a, 12
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %6, ptr align 4 %1, i64 %i.b, i1 false)
  %.148..148..148..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 148
  store float %3, ptr %.148..148..148..sroa_idx, align 4, !tbaa !107
  %.152..152..152..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 152
  store float %4, ptr %.152..152..152..sroa_idx, align 4, !tbaa !108
  %.144..144..144..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 144
  store i32 %2, ptr %.144..144..144..sroa_idx, align 4, !tbaa !75
  %i.c = zext i8 %5 to i32
  %.156..156..156..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 156
  store i32 %i.c, ptr %.156..156..156..sroa_idx, align 4, !tbaa !81
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !58   ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !72
  %.not.i = icmp eq ptr %i.f, %i.h
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(160) %i.f, ptr noundef nonnull align 4 dereferenceable(160) %6, i64 160, i1 false), !tbaa.struct !73
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !58
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 160
  store ptr %i.j, ptr %i.e, align 8, !tbaa !58
  br label %_ZNSt6vectorI12ConvexVolumeSaIS0_EE12emplace_backIJS0_EEERS0_DpOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !57   ; 5 uses
  %i.l = ptrtoint ptr %i.f to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m                       ; 4 uses
  %i.o = icmp eq i64 %i.n, 9223372036854775680
  br i1 %i.o, label %bb.d, label %_ZNKSt6vectorI12ConvexVolumeSaIS0_EE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #15
  unreachable

_ZNKSt6vectorI12ConvexVolumeSaIS0_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.p = sdiv exact i64 %i.n, 160                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.p, i64 1)
  %7 = add nsw i64 %.sroa.speculated.i.i.i, %i.p  ; 2 uses
  %i.q = icmp ult i64 %7, %i.p
  %i.r = tail call i64 @llvm.umin.i64(i64 %7, i64 57646075230342348)
  %i.s = select i1 %i.q, i64 57646075230342348, i64 %i.r ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.s, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.t = mul nuw nsw i64 %i.s, 160
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #16 ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(160) %i.v, ptr noundef nonnull align 4 dereferenceable(160) %6, i64 160, i1 false), !tbaa.struct !73
  %.not10.i.i.i.i.i = icmp eq ptr %i.k, %i.f
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorI12ConvexVolumeSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorI12ConvexVolumeSaIS0_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.x, %.lr.ph.i.i.i.i.i ], [ %i.u, %_ZNKSt6vectorI12ConvexVolumeSaIS0_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.w, %.lr.ph.i.i.i.i.i ], [ %i.k, %_ZNKSt6vectorI12ConvexVolumeSaIS0_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(160) %.012.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(160) %.0911.i.i.i.i.i, i64 160, i1 false), !tbaa.struct !73, !alias.scope !177
  %i.w = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 160 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 160 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.w, %i.f
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorI12ConvexVolumeSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !0

_ZNSt6vectorI12ConvexVolumeSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorI12ConvexVolumeSaIS0_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.u, %_ZNKSt6vectorI12ConvexVolumeSaIS0_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.x, %.lr.ph.i.i.i.i.i ]
  %i.y = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 160
  %.not.i23.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorI12ConvexVolumeSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorI12ConvexVolumeSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.n) #17
  br label %_ZNSt6vectorI12ConvexVolumeSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i

_ZNSt6vectorI12ConvexVolumeSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i: ; preds = %bb.e, %_ZNSt6vectorI12ConvexVolumeSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit22.i.i
  store ptr %i.u, ptr %i.d, align 8, !tbaa !57
  store ptr %i.y, ptr %i.e, align 8, !tbaa !58
  %i.z = getelementptr inbounds nuw [160 x i8], ptr %i.u, i64 %i.s
  store ptr %i.z, ptr %i.g, align 8, !tbaa !72
  br label %_ZNSt6vectorI12ConvexVolumeSaIS0_EE12emplace_backIJS0_EEERS0_DpOT_.exit

_ZNSt6vectorI12ConvexVolumeSaIS0_EE12emplace_backIJS0_EEERS0_DpOT_.exit: ; preds = %bb.b, %_ZNSt6vectorI12ConvexVolumeSaIS0_EE17_M_realloc_insertIJS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN9InputGeom18deleteConvexVolumeEi(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(448) %0, i32 noundef %1) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !80
  %i.c = sext i32 %1 to i64
  %i.d = getelementptr inbounds [160 x i8], ptr %i.b, i64 %i.c ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 160 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !80   ; 2 uses
  %i.h = icmp eq ptr %i.e, %i.g
  br i1 %i.h, label %_ZNSt6vectorI12ConvexVolumeSaIS0_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS0_S2_EE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.e to i64
  %i.k = sub i64 %i.i, %i.j                       ; 3 uses
  %i.l = icmp sgt i64 %i.k, 160
  br i1 %i.l, label %bb.c, label %bb.d, !prof !83

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.d, ptr nonnull align 4 %i.e, i64 %i.k, i1 false)
  br label %_ZNSt6vectorI12ConvexVolumeSaIS0_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS0_S2_EE.exit

bb.d:                                             ; preds = %bb.b
  %i.m = icmp eq i64 %i.k, 160
  br i1 %i.m, label %bb.e, label %_ZNSt6vectorI12ConvexVolumeSaIS0_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS0_S2_EE.exit

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(160) %i.d, ptr noundef nonnull align 4 dereferenceable(160) %i.e, i64 160, i1 false), !tbaa.struct !73
  br label %_ZNSt6vectorI12ConvexVolumeSaIS0_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS0_S2_EE.exit

_ZNSt6vectorI12ConvexVolumeSaIS0_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS0_S2_EE.exit: ; preds = %bb.a, %bb.c, %bb.d, %bb.e
  %i.n = load ptr, ptr %i.f, align 8, !tbaa !58
  %i.o = getelementptr inbounds i8, ptr %i.n, i64 -160
  store ptr %i.o, ptr %i.f, align 8, !tbaa !58
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN9InputGeom17drawConvexVolumesEP11duDebugDraw(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(448) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !33
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(8) %1, i1 noundef zeroext false) #14, !call_target !89
  %i.d = load ptr, ptr %1, align 8, !tbaa !33
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef 2, float noundef 1.000000e+00) #14, !call_target !93
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !80   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !80   ; 2 uses
  %i.k = icmp eq ptr %i.h, %i.j
  br i1 %i.k, label %._crit_edge156, label %.lr.ph155

._crit_edge156:                                   ; preds = %._crit_edge, %bb.a
  %i.l = load ptr, ptr %1, align 8, !tbaa !33
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 72
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(8) %1) #14, !call_target !102
  %i.o = load ptr, ptr %1, align 8, !tbaa !33
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef 1, float noundef 2.000000e+00) #14, !call_target !93
  %i.r = load ptr, ptr %i.g, align 8, !tbaa !80   ; 2 uses
  %i.s = load ptr, ptr %i.i, align 8, !tbaa !80   ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %._crit_edge165, label %.lr.ph164

.lr.ph155:                                        ; preds = %bb.a, %._crit_edge
  %.sroa.0148.0153 = phi ptr [ %i.am, %._crit_edge ], [ %i.h, %bb.a ] ; 9 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0148.0153, i64 156
  %i.v = load i32, ptr %i.u, align 4, !tbaa !81
  %i.w = load ptr, ptr %1, align 8, !tbaa !33
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 80
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = tail call noundef i32 %i.y(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %i.v) #14, !call_target !183 ; 2 uses
  %i.aa = and i32 %i.z, 16777215
  %i.ab = or disjoint i32 %i.aa, 536870912        ; 6 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0148.0153, i64 144 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !75 ; 2 uses
  %i.ae = icmp sgt i32 %i.ad, 0
  br i1 %i.ae, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph155
  %i.af = add nsw i32 %i.ad, -1
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0148.0153, i64 152 ; 6 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0148.0153, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0148.0153, i64 148 ; 3 uses
  %i.aj = lshr i32 %i.z, 1
  %i.ak = and i32 %i.aj, 8355711
  %i.al = or disjoint i32 %i.ak, 536870912        ; 3 uses
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %.lr.ph155
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.0148.0153, i64 160 ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.j
  br i1 %i.an, label %._crit_edge156, label %.lr.ph155

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %.0138152 = phi i32 [ %i.af, %.lr.ph ], [ %i.cz, %bb.b ]
  %i.ao = mul nsw i32 %.0138152, 3
  %i.ap = zext nneg i32 %i.ao to i64
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0148.0153, i64 %i.ap ; 5 uses
  %.idx = mul nuw nsw i64 %indvars.iv, 12
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.0148.0153, i64 %.idx ; 5 uses
  %i.as = load float, ptr %.sroa.0148.0153, align 4, !tbaa !24
  %i.at = load float, ptr %i.ag, align 4, !tbaa !108
  %i.au = load float, ptr %i.ah, align 4, !tbaa !24
  %i.av = load ptr, ptr %1, align 8, !tbaa !33
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 48
  %i.ax = load ptr, ptr %i.aw, align 8
  tail call void %i.ax(ptr noundef nonnull align 8 dereferenceable(8) %1, float noundef %i.as, float noundef %i.at, float noundef %i.au, i32 noundef %i.ab) #14, !call_target !106
  %i.ay = load float, ptr %i.ar, align 4, !tbaa !24
  %i.az = load float, ptr %i.ag, align 4, !tbaa !108
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ar, i64 8 ; 4 uses
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !24
  %i.bc = load ptr, ptr %1, align 8, !tbaa !33
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 48
  %i.be = load ptr, ptr %i.bd, align 8
  tail call void %i.be(ptr noundef nonnull align 8 dereferenceable(8) %1, float noundef %i.ay, float noundef %i.az, float noundef %i.bb, i32 noundef %i.ab) #14, !call_target !106
  %i.bf = load float, ptr %i.aq, align 4, !tbaa !24
  %i.bg = load float, ptr %i.ag, align 4, !tbaa !108
  %i.bh = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 4 uses
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !24
  %i.bj = load ptr, ptr %1, align 8, !tbaa !33
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 48
  %i.bl = load ptr, ptr %i.bk, align 8
  tail call void %i.bl(ptr noundef nonnull align 8 dereferenceable(8) %1, float noundef %i.bf, float noundef %i.bg, float noundef %i.bi, i32 noundef %i.ab) #14, !call_target !106
  %i.bm = load float, ptr %i.aq, align 4, !tbaa !24
  %i.bn = load float, ptr %i.ai, align 4, !tbaa !107
  %i.bo = load float, ptr %i.bh, align 4, !tbaa !24
  %i.bp = load ptr, ptr %1, align 8, !tbaa !33
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 48
  %i.br = load ptr, ptr %i.bq, align 8
  tail call void %i.br(ptr noundef nonnull align 8 dereferenceable(8) %1, float noundef %i.bm, float noundef %i.bn, float noundef %i.bo, i32 noundef %i.al) #14, !call_target !106
  %i.bs = load float, ptr %i.aq, align 4, !tbaa !24
  %i.bt = load float, ptr %i.ag, align 4, !tbaa !108
  %i.bu = load float, ptr %i.bh, align 4, !tbaa !24
  %i.bv = load ptr, ptr %1, align 8, !tbaa !33
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 48
  %i.bx = load ptr, ptr %i.bw, align 8
  tail call void %i.bx(ptr noundef nonnull align 8 dereferenceable(8) %1, float noundef %i.bs, float noundef %i.bt, float noundef %i.bu, i32 noundef %i.ab) #14, !call_target !106
  %i.by = load float, ptr %i.ar, align 4, !tbaa !24
  %i.bz = load float, ptr %i.ag, align 4, !tbaa !108
  %i.ca = load float, ptr %i.ba, align 4, !tbaa !24
  %i.cb = load ptr, ptr %1, align 8, !tbaa !33
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 48
  %i.cd = load ptr, ptr %i.cc, align 8
  tail call void %i.cd(ptr noundef nonnull align 8 dereferenceable(8) %1, float noundef %i.by, float noundef %i.bz, float noundef %i.ca, i32 noundef %i.ab) #14, !call_target !106
  %i.ce = load float, ptr %i.aq, align 4, !tbaa !24
  %i.cf = load float, ptr %i.ai, align 4, !tbaa !107
  %i.cg = load float, ptr %i.bh, align 4, !tbaa !24
  %i.ch = load ptr, ptr %1, align 8, !tbaa !33
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 48
  %i.cj = load ptr, ptr %i.ci, align 8
end_hunk_2
