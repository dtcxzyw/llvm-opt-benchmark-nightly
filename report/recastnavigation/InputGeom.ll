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

._crit_edge.i:                                    ; preds = %bb.b, %.lr.ph.i
  %.041.lcssa.ph.i = phi ptr [ %scevgep.i, %bb.b ], [ %.04150.i, %.lr.ph.i ] ; 5 uses
  %i.r = icmp ult ptr %.041.lcssa.ph.i, %i.f
  br i1 %i.r, label %.lr.ph56.preheader.i, label %_ZN12_GLOBAL__N_17readRowEPcS0_S0_i.exit

.lr.ph56.preheader.i:                             ; preds = %._crit_edge.i
  %.pre.i.a = ptrtoaddr ptr %.041.lcssa.ph.i to i64
  %i.s = sub i64 %i.g, %.pre.i.a
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
  %i.ao = add nsw i64 %.sroa.speculated.i.i.i, %i.an ; 2 uses
  %i.ap = icmp ult i64 %i.ao, %i.an
  %i.aq = call i64 @llvm.umin.i64(i64 %i.ao, i64 2305843009213693951)
  %i.ar = select i1 %i.ap, i64 2305843009213693951, i64 %i.aq ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ar, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.as = shl nuw nsw i64 %i.ar, 2
  %i.at = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.as) #16 ; 4 uses
  %i.au = getelementptr inbounds i8, ptr %i.at, i64 %i.al ; 2 uses
  %i.av = load float, ptr %i.c, align 4, !tbaa !24
  store float %i.av, ptr %i.au, align 4, !tbaa !24
  %i.aw = icmp sgt i64 %i.al, 0
  br i1 %i.aw, label %bb.h, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i

bb.h:                                             ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.at, ptr align 4 %i.ai, i64 %i.al, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i: ; preds = %bb.h, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 4 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.ai, i64 noundef %i.al) #17
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i: ; preds = %bb.i, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i
  store ptr %i.at, ptr %0, align 8, !tbaa !25
  store ptr %i.ax, ptr %i.i, align 8, !tbaa !21
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %i.ar ; 2 uses
  store ptr %i.ay, ptr %i.j, align 8, !tbaa !22
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit

_ZNSt6vectorIfSaIfEE9push_backERKf.exit:          ; preds = %bb.e, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i
  %i.az = phi ptr [ %i.af, %bb.e ], [ %i.ay, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i ] ; 3 uses
  %i.ba = phi ptr [ %i.ah, %bb.e ], [ %i.ax, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i ] ; 3 uses
  %.not.i72 = icmp eq ptr %i.ba, %i.az
  br i1 %.not.i72, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIfSaIfEE9push_backERKf.exit
  %i.bb = load float, ptr %i.d, align 4, !tbaa !24
  store float %i.bb, ptr %i.ba, align 4, !tbaa !24
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 4 ; 2 uses
  store ptr %i.bc, ptr %i.i, align 8, !tbaa !21
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit79

bb.k:                                             ; preds = %_ZNSt6vectorIfSaIfEE9push_backERKf.exit
  %i.bd = load ptr, ptr %0, align 8, !tbaa !25    ; 4 uses
  %i.be = ptrtoint ptr %i.az to i64
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = sub i64 %i.be, %i.bf                    ; 6 uses
  %i.bh = icmp eq i64 %i.bg, 9223372036854775804
  br i1 %i.bh, label %bb.l, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i73

bb.l:                                             ; preds = %bb.k
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #15
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i73: ; preds = %bb.k
  %i.bi = ashr exact i64 %i.bg, 2                 ; 3 uses
  %.sroa.speculated.i.i.i74 = call i64 @llvm.umax.i64(i64 %i.bi, i64 1)
  %i.bj = add nsw i64 %.sroa.speculated.i.i.i74, %i.bi ; 2 uses
  %i.bk = icmp ult i64 %i.bj, %i.bi
  %i.bl = call i64 @llvm.umin.i64(i64 %i.bj, i64 2305843009213693951)
  %i.bm = select i1 %i.bk, i64 2305843009213693951, i64 %i.bl ; 3 uses
  %.not.i.i.i75 = icmp ne i64 %i.bm, 0
  call void @llvm.assume(i1 %.not.i.i.i75)
  %i.bn = shl nuw nsw i64 %i.bm, 2
  %i.bo = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bn) #16 ; 4 uses
  %i.bp = getelementptr inbounds i8, ptr %i.bo, i64 %i.bg ; 2 uses
  %i.bq = load float, ptr %i.d, align 4, !tbaa !24
  store float %i.bq, ptr %i.bp, align 4, !tbaa !24
  %i.br = icmp sgt i64 %i.bg, 0
  br i1 %i.br, label %bb.m, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i76

bb.m:                                             ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i73
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bo, ptr align 4 %i.bd, i64 %i.bg, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i76

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i76: ; preds = %bb.m, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i73
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 4 ; 2 uses
  %.not.i17.i.i77 = icmp eq ptr %i.bd, null
  br i1 %.not.i17.i.i77, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i78, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i76
  call void @_ZdlPvm(ptr noundef nonnull %i.bd, i64 noundef %i.bg) #17
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i78

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i78: ; preds = %bb.n, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i76
  store ptr %i.bo, ptr %0, align 8, !tbaa !25
  store ptr %i.bs, ptr %i.i, align 8, !tbaa !21
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %i.bm ; 2 uses
  store ptr %i.bt, ptr %i.j, align 8, !tbaa !22
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit79

_ZNSt6vectorIfSaIfEE9push_backERKf.exit79:        ; preds = %bb.j, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i78
  %i.bu = phi ptr [ %i.az, %bb.j ], [ %i.bt, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i78 ] ; 2 uses
  %i.bv = phi ptr [ %i.bc, %bb.j ], [ %i.bs, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i78 ] ; 3 uses
  %.not.i80 = icmp eq ptr %i.bv, %i.bu
  br i1 %.not.i80, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIfSaIfEE9push_backERKf.exit79
  %i.bw = load float, ptr %i.e, align 4, !tbaa !24
  store float %i.bw, ptr %i.bv, align 4, !tbaa !24
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 4
  store ptr %i.bx, ptr %i.i, align 8, !tbaa !21
  br label %_ZNSt6vectorIfSaIfEE9push_backERKf.exit87thread-pre-split

bb.p:                                             ; preds = %_ZNSt6vectorIfSaIfEE9push_backERKf.exit79
  %i.by = load ptr, ptr %0, align 8, !tbaa !25    ; 4 uses
  %i.bz = ptrtoint ptr %i.bu to i64
end_hunk_0
begin_hunk_1_@_ZN9InputGeom11loadGeomSetEP9rcContextPcm:bb.a
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
  %i.dj = add nsw i64 %.sroa.speculated.i.i.i, %i.di ; 2 uses
  %i.dk = icmp ult i64 %i.dj, %i.di
  %i.dl = call i64 @llvm.umin.i64(i64 %i.dj, i64 57646075230342348)
  %i.dm = select i1 %i.dk, i64 57646075230342348, i64 %i.dl ; 3 uses
  %.not.i.i.i44 = icmp ne i64 %i.dm, 0
  call void @llvm.assume(i1 %.not.i.i.i44)
  %i.dn = mul nuw nsw i64 %i.dm, 160
  %i.do = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dn) #16 ; 5 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.dg
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(160) %i.dp, i8 0, i64 160, i1 false)
  %.not10.i.i.i.i.i = icmp eq ptr %i.dd, %i.cz
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorI12ConvexVolumeSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit21.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorI12ConvexVolumeSaIS0_EE12_M_check_lenEmPKc.exit.i.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.dr, %.lr.ph.i.i.i.i.i ], [ %i.do, %_ZNKSt6vectorI12ConvexVolumeSaIS0_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.dq, %.lr.ph.i.i.i.i.i ], [ %i.dd, %_ZNKSt6vectorI12ConvexVolumeSaIS0_EE12_M_check_lenEmPKc.exit.i.i ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(160) %.012.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(160) %.0911.i.i.i.i.i, i64 160, i1 false), !tbaa.struct !73, !alias.scope !128
  %i.dq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 160 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 160 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.dq, %i.cz
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorI12ConvexVolumeSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit21.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !0

_ZNSt6vectorI12ConvexVolumeSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit21.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorI12ConvexVolumeSaIS0_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.do, %_ZNKSt6vectorI12ConvexVolumeSaIS0_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.dr, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 160
  %.not.i22.i.i = icmp eq ptr %i.dd, null
  br i1 %.not.i22.i.i, label %_ZNSt6vectorI12ConvexVolumeSaIS0_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i, label %bb.z

bb.z:                                             ; preds = %_ZNSt6vectorI12ConvexVolumeSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit21.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.dd, i64 noundef %i.dg) #17
  br label %_ZNSt6vectorI12ConvexVolumeSaIS0_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i

_ZNSt6vectorI12ConvexVolumeSaIS0_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i: ; preds = %bb.z, %_ZNSt6vectorI12ConvexVolumeSaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit21.i.i
  store ptr %i.do, ptr %i.af, align 8, !tbaa !57
  store ptr %i.ds, ptr %i.ah, align 8, !tbaa !58
  %i.dt = getelementptr inbounds nuw [160 x i8], ptr %i.do, i64 %i.dm
  store ptr %i.dt, ptr %i.bh, align 8, !tbaa !72
  br label %_ZNSt6vectorI12ConvexVolumeSaIS0_EE12emplace_backIJEEERS0_DpOT_.exit

_ZNSt6vectorI12ConvexVolumeSaIS0_EE12emplace_backIJEEERS0_DpOT_.exit: ; preds = %bb.w, %_ZNSt6vectorI12ConvexVolumeSaIS0_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i
  %i.du = phi ptr [ %.0.lcssa.i.i.i.i.i, %_ZNSt6vectorI12ConvexVolumeSaIS0_EE17_M_realloc_insertIJEEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i ], [ %i.db, %bb.w ] ; 5 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 144 ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.du, i64 156
  %i.dx = getelementptr inbounds nuw i8, ptr %i.du, i64 148
  %i.dy = getelementptr inbounds nuw i8, ptr %i.du, i64 152
  %i.dz = call i32 (ptr, ptr, ...) @__isoc23_sscanf(ptr noundef nonnull %i.am, ptr noundef nonnull @.str.3, ptr noundef nonnull %i.dv, ptr noundef nonnull %i.dw, ptr noundef nonnull %i.dx, ptr noundef nonnull %i.dy) #14 ; 0 uses
  %i.ea = load i32, ptr %i.dv, align 4, !tbaa !75
  %i.eb = icmp sgt i32 %i.ea, 0
  br i1 %i.eb, label %.lr.ph, label %.critedge42

.lr.ph:                                           ; preds = %_ZNSt6vectorI12ConvexVolumeSaIS0_EE12emplace_backIJEEERS0_DpOT_.exit, %_ZN12_GLOBAL__N_18parseRowEPcS0_S0_i.exit58
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN12_GLOBAL__N_18parseRowEPcS0_S0_i.exit58 ], [ 0, %_ZNSt6vectorI12ConvexVolumeSaIS0_EE12emplace_backIJEEERS0_DpOT_.exit ] ; 2 uses
  %.167 = phi ptr [ %.019.lcssa.i46, %_ZN12_GLOBAL__N_18parseRowEPcS0_S0_i.exit58 ], [ %i.bp, %_ZNSt6vectorI12ConvexVolumeSaIS0_EE12emplace_backIJEEERS0_DpOT_.exit ] ; 3 uses
  store i8 0, ptr %i.a, align 16, !tbaa !16
  %.not.i45 = icmp ult ptr %.167, %i.aj
  br i1 %.not.i45, label %.lr.ph.i48, label %_ZN12_GLOBAL__N_18parseRowEPcS0_S0_i.exit58

.lr.ph.i48:                                       ; preds = %.lr.ph, %bb.ad
  %.027.i49 = phi i32 [ %.1.i54, %bb.ad ], [ 0, %.lr.ph ] ; 6 uses
  %.01725.i50 = phi i8 [ %.118.i52, %bb.ad ], [ 1, %.lr.ph ] ; 4 uses
  %.01924.i51 = phi ptr [ %i.ed, %bb.ad ], [ %.167, %.lr.ph ] ; 2 uses
  %i.ec = load i8, ptr %.01924.i51, align 1, !tbaa !16 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.01924.i51, i64 1 ; 3 uses
  switch i8 %i.ec, label %bb.ac [
    i8 10, label %bb.aa
    i8 13, label %bb.ad
    i8 9, label %bb.ab
    i8 32, label %bb.ab
  ]

bb.aa:                                            ; preds = %.lr.ph.i48
  %i.ee = trunc nuw i8 %.01725.i50 to i1
  %not..i57 = xor i1 %i.ee, true
  br label %bb.ad

bb.ab:                                            ; preds = %.lr.ph.i48, %.lr.ph.i48
  %i.ef = trunc nuw i8 %.01725.i50 to i1
  br i1 %i.ef, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %.lr.ph.i48
  %i.eg = add nsw i32 %.027.i49, 1
  %i.eh = sext i32 %.027.i49 to i64
  %i.ei = getelementptr inbounds i8, ptr %i.a, i64 %i.eh
  store i8 %i.ec, ptr %i.ei, align 1, !tbaa !16
  %i.ej = icmp sgt i32 %.027.i49, 509
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %bb.aa, %.lr.ph.i48
  %.118.i52 = phi i8 [ %.01725.i50, %.lr.ph.i48 ], [ 0, %bb.ac ], [ %.01725.i50, %bb.aa ], [ 1, %bb.ab ]
  %.116.i53 = phi i1 [ false, %.lr.ph.i48 ], [ %i.ej, %bb.ac ], [ %not..i57, %bb.aa ], [ false, %bb.ab ]
  %.1.i54 = phi i32 [ %.027.i49, %.lr.ph.i48 ], [ %i.eg, %bb.ac ], [ %.027.i49, %bb.aa ], [ %.027.i49, %bb.ab ] ; 2 uses
  %i.ek = icmp uge ptr %i.ed, %i.aj
  %.not22.i55 = select i1 %.116.i53, i1 true, i1 %i.ek
  br i1 %.not22.i55, label %._crit_edge.loopexit.i56, label %.lr.ph.i48, !llvm.loop !121

._crit_edge.loopexit.i56:                         ; preds = %bb.ad
  %i.el = sext i32 %.1.i54 to i64
  br label %_ZN12_GLOBAL__N_18parseRowEPcS0_S0_i.exit58

_ZN12_GLOBAL__N_18parseRowEPcS0_S0_i.exit58:      ; preds = %.lr.ph, %._crit_edge.loopexit.i56
  %.019.lcssa.i46 = phi ptr [ %.167, %.lr.ph ], [ %i.ed, %._crit_edge.loopexit.i56 ] ; 2 uses
  %.0.lcssa.i47 = phi i64 [ 0, %.lr.ph ], [ %i.el, %._crit_edge.loopexit.i56 ]
  %i.em = getelementptr inbounds i8, ptr %i.a, i64 %.0.lcssa.i47
  store i8 0, ptr %i.em, align 1, !tbaa !16
  %.idx = mul nuw nsw i64 %indvars.iv, 12
  %i.en = getelementptr inbounds nuw i8, ptr %i.du, i64 %.idx ; 3 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 4
  %i.ep = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  %i.eq = call i32 (ptr, ptr, ...) @__isoc23_sscanf(ptr noundef nonnull %i.a, ptr noundef nonnull @.str, ptr noundef nonnull %i.en, ptr noundef nonnull %i.eo, ptr noundef nonnull %i.ep) #14 ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.er = load i32, ptr %i.dv, align 4, !tbaa !75
  %i.es = sext i32 %i.er to i64
  %i.et = icmp slt i64 %indvars.iv.next, %i.es
  br i1 %i.et, label %.lr.ph, label %.critedge42, !llvm.loop !126

bb.ae:                                            ; preds = %_ZN12_GLOBAL__N_18parseRowEPcS0_S0_i.exit
  store i8 1, ptr %i.al, align 4, !tbaa !147
  %i.eu = call i32 (ptr, ptr, ...) @__isoc23_sscanf(ptr noundef nonnull %i.am, ptr noundef nonnull @.str.4, ptr noundef nonnull %0, ptr noundef nonnull %i.an, ptr noundef nonnull %i.ao, ptr noundef nonnull %i.ap, ptr noundef nonnull %i.aq, ptr noundef nonnull %i.ar, ptr noundef nonnull %i.as, ptr noundef nonnull %i.at, ptr noundef nonnull %i.au, ptr noundef nonnull %i.av, ptr noundef nonnull %i.aw, ptr noundef nonnull %i.ax, ptr noundef nonnull %i.ay, ptr noundef nonnull %i.az, ptr noundef nonnull %i.ba, ptr noundef nonnull %i.bb, ptr noundef nonnull %i.bc, ptr noundef nonnull %i.bd, ptr noundef nonnull %i.be, ptr noundef nonnull %i.bf, ptr noundef nonnull %i.bg) #14 ; 0 uses
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
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = icmp ult i64 %i.g, -24
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNSt6vectorIfSaIfEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef 6)
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !21
  %.pre33 = load ptr, ptr %i.a, align 8, !tbaa !25
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
  %i.k = phi ptr [ %.pre33, %bb.b ], [ %i.d, %bb.c ], [ %i.d, %bb.d ] ; 2 uses
  %i.l = phi ptr [ %.pre, %bb.b ], [ %i.c, %bb.c ], [ %i.j, %bb.d ]
  %.pre-phi = ptrtoint ptr %i.k to i64
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
  %i.ar = add nsw i64 %.sroa.speculated.i.i.i, %i.aq ; 2 uses
  %i.as = icmp ult i64 %i.ar, %i.aq
  %i.at = tail call i64 @llvm.umin.i64(i64 %i.ar, i64 2305843009213693951)
  %i.au = select i1 %i.as, i64 2305843009213693951, i64 %i.at ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.au, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.av = shl nuw nsw i64 %i.au, 2
  %i.aw = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.av) #16 ; 4 uses
  %i.ax = getelementptr inbounds i8, ptr %i.aw, i64 %i.ao ; 2 uses
  store float %3, ptr %i.ax, align 4, !tbaa !24
  %i.ay = icmp sgt i64 %i.ao, 0
  br i1 %i.ay, label %bb.h, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i

bb.h:                                             ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.aw, ptr align 4 %i.al, i64 %i.ao, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i: ; preds = %bb.h, %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 4
  %.not.i17.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.al, i64 noundef %i.ao) #17
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i: ; preds = %bb.i, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i
  store ptr %i.aw, ptr %i.af, align 8, !tbaa !25
  store ptr %i.az, ptr %i.ag, align 8, !tbaa !21
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %i.au
  store ptr %i.ba, ptr %i.ai, align 8, !tbaa !22
  br label %_ZNSt6vectorIfSaIfEE12emplace_backIJRKfEEERfDpOT_.exit

_ZNSt6vectorIfSaIfEE12emplace_backIJRKfEEERfDpOT_.exit: ; preds = %bb.e, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJRKfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 4 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !47 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !148
  %.not.i5 = icmp eq ptr %i.bd, %i.bf
  br i1 %.not.i5, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIfSaIfEE12emplace_backIJRKfEEERfDpOT_.exit
  store i8 %4, ptr %i.bd, align 1, !tbaa !16
  %i.bg = load ptr, ptr %i.bc, align 8, !tbaa !47
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 1
  store ptr %i.bh, ptr %i.bc, align 8, !tbaa !47
  br label %_ZNSt6vectorIhSaIhEE12emplace_backIJRhEEES3_DpOT_.exit

bb.k:                                             ; preds = %_ZNSt6vectorIfSaIfEE12emplace_backIJRKfEEERfDpOT_.exit
  %i.bi = load ptr, ptr %i.bb, align 8, !tbaa !46 ; 4 uses
  %i.bj = ptrtoint ptr %i.bd to i64
  %i.bk = ptrtoint ptr %i.bi to i64
  %i.bl = sub i64 %i.bj, %i.bk                    ; 8 uses
  %i.bm = icmp eq i64 %i.bl, 9223372036854775807
  br i1 %i.bm, label %bb.l, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i

bb.l:                                             ; preds = %bb.k
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #15
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.k
  %.sroa.speculated.i.i.i6 = tail call i64 @llvm.umax.i64(i64 %i.bl, i64 1)
  %i.bn = add i64 %.sroa.speculated.i.i.i6, %i.bl ; 2 uses
  %i.bo = icmp ult i64 %i.bn, %i.bl
  %i.bp = tail call i64 @llvm.umin.i64(i64 %i.bn, i64 9223372036854775807)
  %i.bq = select i1 %i.bo, i64 9223372036854775807, i64 %i.bp ; 3 uses
  %.not.i.i.i7 = icmp ne i64 %i.bq, 0
  tail call void @llvm.assume(i1 %.not.i.i.i7)
  %i.br = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bq) #16 ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bl ; 2 uses
  store i8 %4, ptr %i.bs, align 1, !tbaa !16
  %i.bt = icmp sgt i64 %i.bl, 0
  br i1 %i.bt, label %bb.m, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i

bb.m:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.br, ptr align 1 %i.bi, i64 %i.bl, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i: ; preds = %bb.m, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 1
  %.not.i17.i.i8 = icmp eq ptr %i.bi, null
  br i1 %.not.i17.i.i8, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bi, i64 noundef %i.bl) #17
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i: ; preds = %bb.n, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i
  store ptr %i.br, ptr %i.bb, align 8, !tbaa !46
  store ptr %i.bu, ptr %i.bc, align 8, !tbaa !47
  %i.bv = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bq
  store ptr %i.bv, ptr %i.be, align 8, !tbaa !148
  br label %_ZNSt6vectorIhSaIhEE12emplace_backIJRhEEES3_DpOT_.exit

_ZNSt6vectorIhSaIhEE12emplace_backIJRhEEES3_DpOT_.exit: ; preds = %bb.j, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 5 uses
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !47 ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 2 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !148
  %.not.i9 = icmp eq ptr %i.by, %i.ca
  br i1 %.not.i9, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIhSaIhEE12emplace_backIJRhEEES3_DpOT_.exit
  store i8 %5, ptr %i.by, align 1, !tbaa !16
  %i.cb = load ptr, ptr %i.bx, align 8, !tbaa !47
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 1 ; 2 uses
  store ptr %i.cc, ptr %i.bx, align 8, !tbaa !47
  br label %_ZNSt6vectorIhSaIhEE12emplace_backIJRhEEES3_DpOT_.exit16

bb.p:                                             ; preds = %_ZNSt6vectorIhSaIhEE12emplace_backIJRhEEES3_DpOT_.exit
  %i.cd = load ptr, ptr %i.bw, align 8, !tbaa !46 ; 4 uses
  %i.ce = ptrtoint ptr %i.by to i64
  %i.cf = ptrtoint ptr %i.cd to i64
  %i.cg = sub i64 %i.ce, %i.cf                    ; 8 uses
  %i.ch = icmp eq i64 %i.cg, 9223372036854775807
  br i1 %i.ch, label %bb.q, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i10

bb.q:                                             ; preds = %bb.p
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #15
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i10: ; preds = %bb.p
  %.sroa.speculated.i.i.i11 = tail call i64 @llvm.umax.i64(i64 %i.cg, i64 1)
  %i.ci = add i64 %.sroa.speculated.i.i.i11, %i.cg ; 2 uses
  %i.cj = icmp ult i64 %i.ci, %i.cg
  %i.ck = tail call i64 @llvm.umin.i64(i64 %i.ci, i64 9223372036854775807)
  %i.cl = select i1 %i.cj, i64 9223372036854775807, i64 %i.ck ; 3 uses
  %.not.i.i.i12 = icmp ne i64 %i.cl, 0
  tail call void @llvm.assume(i1 %.not.i.i.i12)
  %i.cm = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cl) #16 ; 4 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.cg ; 2 uses
  store i8 %5, ptr %i.cn, align 1, !tbaa !16
  %i.co = icmp sgt i64 %i.cg, 0
  br i1 %i.co, label %bb.r, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i13

bb.r:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i10
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.cm, ptr align 1 %i.cd, i64 %i.cg, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i13

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i13: ; preds = %bb.r, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i10
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 1 ; 2 uses
  %.not.i17.i.i14 = icmp eq ptr %i.cd, null
  br i1 %.not.i17.i.i14, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i15, label %bb.s

end_hunk_1
