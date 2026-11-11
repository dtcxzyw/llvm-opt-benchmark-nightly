Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/IrAnalysis?download=true
inline.NumInlined: 1295
inline.NumDeleted: 511
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 19
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.Luau::FValue" = type <{ i8, i8, [6 x i8], ptr, ptr, i32, [4 x i8] }>
%"class.std::vector.51" = type { %"struct.std::_Vector_base.52" }
%"struct.std::_Vector_base.52" = type { %"struct.std::_Vector_base<Luau::CodeGen::BlockOrdering, std::allocator<Luau::CodeGen::BlockOrdering>>::_Vector_impl" }
%"struct.std::_Vector_base<Luau::CodeGen::BlockOrdering, std::allocator<Luau::CodeGen::BlockOrdering>>::_Vector_impl" = type { %"struct.std::_Vector_base<Luau::CodeGen::BlockOrdering, std::allocator<Luau::CodeGen::BlockOrdering>>::_Vector_impl_data" }
%"struct.std::_Vector_base<Luau::CodeGen::BlockOrdering, std::allocator<Luau::CodeGen::BlockOrdering>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.25" = type { %"struct.std::_Vector_base.26" }
%"struct.std::_Vector_base.26" = type { %"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int>>::_Vector_impl" }
%"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int>>::_Vector_impl" = type { %"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int>>::_Vector_impl_data" }
%"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"struct.Luau::CodeGen::IdfContext::BlockAndOrdering" = type { i32, %"struct.Luau::CodeGen::BlockOrdering" }
%"struct.Luau::CodeGen::BlockOrdering" = type <{ i32, i32, i32, i8, [3 x i8] }>
%"struct.Luau::CodeGen::BlockVmRegLiveInComputation" = type { ptr, ptr, %"struct.Luau::CodeGen::RegisterSet" }
%"struct.Luau::CodeGen::RegisterSet" = type <{ %"class.std::bitset", i8, i8, [6 x i8] }>
%"class.std::bitset" = type { %"struct.std::_Base_bitset" }
%"struct.std::_Base_bitset" = type { [4 x i64] }
%"class.std::vector.41" = type { %"struct.std::_Vector_base.42" }
%"struct.std::_Vector_base.42" = type { %"struct.std::_Vector_base<unsigned char, std::allocator<unsigned char>>::_Vector_impl" }
%"struct.std::_Vector_base<unsigned char, std::allocator<unsigned char>>::_Vector_impl" = type { %"struct.std::_Vector_base<unsigned char, std::allocator<unsigned char>>::_Vector_impl_data" }
%"struct.std::_Vector_base<unsigned char, std::allocator<unsigned char>>::_Vector_impl_data" = type { ptr, ptr, ptr }

$_ZN4Luau7CodeGen20computeBlockOrderingITnDaXadL_ZNS0_10successorsERKNS0_7CfgInfoEjEEEEvRNS0_10IrFunctionERSt6vectorINS0_13BlockOrderingESaIS8_EEPS7_IjSaIjEESE_ = comdat any

$_ZN4Luau7CodeGen20computeBlockOrderingITnDaXadL_ZNS0_11domChildrenERKNS0_7CfgInfoEjEEEEvRNS0_10IrFunctionERSt6vectorINS0_13BlockOrderingESaIS8_EEPS7_IjSaIjEESE_ = comdat any

$_ZNSt14priority_queueIN4Luau7CodeGen10IdfContext16BlockAndOrderingESt6vectorIS3_SaIS3_EESt4lessIS3_EE4pushEOS3_ = comdat any

$_ZNSt14priority_queueIN4Luau7CodeGen10IdfContext16BlockAndOrderingESt6vectorIS3_SaIS3_EESt4lessIS3_EE3popEv = comdat any

$_ZNSt6vectorIN4Luau7CodeGen11RegisterSetESaIS2_EE17_M_default_appendEm = comdat any

$_ZN4Luau7CodeGen27BlockVmRegLiveInComputation8useRangeEii = comdat any

$_ZN4Luau11SmallVectorINS_7CodeGen4IrOpELj6EE6resizeEj = comdat any

$_ZNSt6vectorIhSaIhEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPhS1_EEmRKh = comdat any

$_ZNSt6vectorIjSaIjEE17_M_default_appendEm = comdat any

$_ZNSt6vectorIjSaIjEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPjS1_EEmRKj = comdat any

$_ZNSt6vectorIN4Luau7CodeGen13BlockOrderingESaIS2_EE17_M_default_appendEm = comdat any

$_ZNSt6vectorIN4Luau7CodeGen10IdfContext13IdfVisitMarksESaIS3_EE17_M_default_appendEm = comdat any

@_ZN5FFlag26LuauCodegenA64ExitUseCheckE = external local_unnamed_addr global %"struct.Luau::FValue", align 8
@.str = private unnamed_addr constant [26 x i8] c"vector::_M_default_append\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"vector::_M_fill_insert\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"bitset::test\00", align 1
@.str.4 = private unnamed_addr constant [52 x i8] c"%s: __position (which is %zu) >= _Nb (which is %zu)\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"bitset::set\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"vector::reserve\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN4Luau7CodeGen15updateUseCountsERNS0_10IrFunctionE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(928) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %0, align 8, !tbaa !16     ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !16   ; 2 uses
  %.not3639 = icmp eq ptr %i.b, %i.d
  br i1 %.not3639, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !116  ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !116  ; 3 uses
  %.not3741 = icmp eq ptr %i.e, %i.g
  br i1 %.not3741, label %._crit_edge53, label %.lr.ph44

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.033.040 = phi ptr [ %i.i, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.033.040, i64 2
  store i16 0, ptr %i.h, align 2, !tbaa !22
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.033.040, i64 36 ; 2 uses
  %.not36 = icmp eq ptr %i.i, %i.d
  br i1 %.not36, label %._crit_edge, label %.lr.ph

.lr.ph44:                                         ; preds = %._crit_edge, %.lr.ph44
  %.sroa.029.042 = phi ptr [ %i.k, %.lr.ph44 ], [ %i.e, %._crit_edge ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.029.042, i64 52
  store i16 0, ptr %i.j, align 4, !tbaa !32
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.029.042, i64 64 ; 2 uses
  %.not37 = icmp eq ptr %i.k, %i.g
  br i1 %.not37, label %.lr.ph52, label %.lr.ph44

._crit_edge53:                                    ; preds = %._crit_edge49, %._crit_edge
  ret void

.lr.ph52:                                         ; preds = %.lr.ph44, %._crit_edge49
  %.sroa.024.051 = phi ptr [ %i.r, %._crit_edge49 ], [ %i.e, %.lr.ph44 ] ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.024.051, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !33   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.024.051, i64 16
  %i.o = load i32, ptr %i.n, align 8, !tbaa !34   ; 2 uses
  %i.p = zext i32 %i.o to i64
  %.idx = shl nuw nsw i64 %i.p, 2
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 %.idx
  %.not45 = icmp eq i32 %i.o, 0
  br i1 %.not45, label %._crit_edge49, label %.lr.ph48

._crit_edge49:                                    ; preds = %"_ZZN4Luau7CodeGen15updateUseCountsERNS0_10IrFunctionEENK3$_0clENS0_4IrOpE.exit", %.lr.ph52
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.024.051, i64 64 ; 2 uses
  %.not38 = icmp eq ptr %i.r, %i.g
  br i1 %.not38, label %._crit_edge53, label %.lr.ph52

.lr.ph48:                                         ; preds = %.lr.ph52, %"_ZZN4Luau7CodeGen15updateUseCountsERNS0_10IrFunctionEENK3$_0clENS0_4IrOpE.exit"
  %.046 = phi ptr [ %i.af, %"_ZZN4Luau7CodeGen15updateUseCountsERNS0_10IrFunctionEENK3$_0clENS0_4IrOpE.exit" ], [ %i.m, %.lr.ph52 ] ; 2 uses
  %.sroa.0.0.copyload = load i32, ptr %.046, align 4, !tbaa !35 ; 3 uses
  %i.s = and i32 %.sroa.0.0.copyload, 15
  switch i32 %i.s, label %"_ZZN4Luau7CodeGen15updateUseCountsERNS0_10IrFunctionEENK3$_0clENS0_4IrOpE.exit" [
    i32 4, label %bb.b
    i32 5, label %bb.c
  ]

bb.b:                                             ; preds = %.lr.ph48
  %i.t = lshr i32 %.sroa.0.0.copyload, 4
  %i.u = zext nneg i32 %i.t to i64
  %i.v = getelementptr inbounds nuw [64 x i8], ptr %i.e, i64 %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 52 ; 2 uses
  %i.x = load i16, ptr %i.w, align 4, !tbaa !32
  %i.y = add i16 %i.x, 1
  store i16 %i.y, ptr %i.w, align 4, !tbaa !32
  br label %"_ZZN4Luau7CodeGen15updateUseCountsERNS0_10IrFunctionEENK3$_0clENS0_4IrOpE.exit"

bb.c:                                             ; preds = %.lr.ph48
  %i.z = lshr i32 %.sroa.0.0.copyload, 4
  %i.aa = zext nneg i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw [36 x i8], ptr %i.b, i64 %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 2 ; 2 uses
  %i.ad = load i16, ptr %i.ac, align 2, !tbaa !22
  %i.ae = add i16 %i.ad, 1
  store i16 %i.ae, ptr %i.ac, align 2, !tbaa !22
  br label %"_ZZN4Luau7CodeGen15updateUseCountsERNS0_10IrFunctionEENK3$_0clENS0_4IrOpE.exit"

"_ZZN4Luau7CodeGen15updateUseCountsERNS0_10IrFunctionEENK3$_0clENS0_4IrOpE.exit": ; preds = %.lr.ph48, %bb.b, %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %.046, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.af, %i.q
  br i1 %.not, label %._crit_edge49, label %.lr.ph48
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN4Luau7CodeGen22updateLastUseLocationsERNS0_10IrFunctionERKSt6vectorIjSaIjEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(928) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !38
  %i.d = load ptr, ptr %1, align 8, !tbaa !39     ; 2 uses
  %.not73 = icmp eq ptr %i.c, %i.d
  br i1 %.not73, label %._crit_edge, label %.lr.ph72

.lr.ph72:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 272
  br label %bb.b

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph72, %.loopexit
  %i.m = phi ptr [ %i.d, %.lr.ph72 ], [ %i.dv, %.loopexit ]
  %.03671 = phi i64 [ 0, %.lr.ph72 ], [ %i.dt, %.loopexit ] ; 2 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.03671
  %i.o = load i32, ptr %i.n, align 4, !tbaa !40   ; 3 uses
  %i.p = zext i32 %i.o to i64                     ; 2 uses
  %i.q = load ptr, ptr %0, align 8, !tbaa !42
  %i.r = getelementptr inbounds nuw [36 x i8], ptr %i.q, i64 %i.p ; 3 uses
  %i.s = load i8, ptr %i.r, align 4, !tbaa !43
  switch i8 %i.s, label %_ZN4Luau12DenseHashMapIjjSt4hashIjESt8equal_toIjEE4findERKj.exit.thread [
    i8 5, label %.loopexit
    i8 4, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  %i.t = load i64, ptr %i.f, align 8, !tbaa !121
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %_ZN4Luau12DenseHashMapIjjSt4hashIjESt8equal_toIjEE4findERKj.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = load i32, ptr %i.g, align 8, !tbaa !40   ; 2 uses
  %i.w = icmp eq i32 %i.o, %i.v
  br i1 %i.w, label %_ZN4Luau12DenseHashMapIjjSt4hashIjESt8equal_toIjEE4findERKj.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = load i64, ptr %i.h, align 8, !tbaa !122
  %i.y = add i64 %i.x, -1                         ; 3 uses
  %i.z = and i64 %i.y, %i.p
  %i.aa = load ptr, ptr %i.e, align 8, !tbaa !123 ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.h, %bb.e
  %.01832.i.i = phi i64 [ 0, %bb.e ], [ %i.af, %bb.h ]
  %.01931.i.i = phi i64 [ %i.z, %bb.e ], [ %i.ah, %bb.h ] ; 3 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %.01931.i.i
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !40 ; 2 uses
  %i.ad = icmp eq i32 %i.ac, %i.o
  br i1 %i.ad, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = icmp eq i32 %i.ac, %i.v
  br i1 %i.ae, label %_ZN4Luau12DenseHashMapIjjSt4hashIjESt8equal_toIjEE4findERKj.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.af = add i64 %.01832.i.i, 1                  ; 3 uses
  %i.ag = add i64 %i.af, %.01931.i.i
  %i.ah = and i64 %i.ag, %i.y
  %.not.i.i = icmp ugt i64 %i.af, %i.y
  br i1 %.not.i.i, label %_ZN4Luau12DenseHashMapIjjSt4hashIjESt8equal_toIjEE4findERKj.exit.thread, label %bb.f, !llvm.loop !117

bb.i:                                             ; preds = %bb.f
  %i.ai = load i64, ptr %i.j, align 8, !tbaa !52
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %_ZN4Luau12DenseHashMapIjNS_7CodeGen14VmExitSyncInfoESt4hashIjESt8equal_toIjEE4findERKj.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %.01931.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  %i.am = load i32, ptr %i.al, align 4, !tbaa !40 ; 3 uses
  %i.an = load i32, ptr %i.k, align 8, !tbaa !40  ; 2 uses
  %i.ao = icmp eq i32 %i.am, %i.an
  br i1 %i.ao, label %_ZN4Luau12DenseHashMapIjNS_7CodeGen14VmExitSyncInfoESt4hashIjESt8equal_toIjEE4findERKj.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ap = load i64, ptr %i.l, align 8, !tbaa !53
  %i.aq = add i64 %i.ap, -1                       ; 3 uses
  %i.ar = zext i32 %i.am to i64
  %i.as = and i64 %i.aq, %i.ar
  %i.at = load ptr, ptr %i.i, align 8, !tbaa !54
  br label %bb.l

bb.l:                                             ; preds = %bb.n, %bb.k
  %.01828.i.i = phi i64 [ 0, %bb.k ], [ %i.ay, %bb.n ]
  %.01927.i.i = phi i64 [ %i.as, %bb.k ], [ %i.ba, %bb.n ] ; 2 uses
  %i.au = getelementptr inbounds nuw [64 x i8], ptr %i.at, i64 %.01927.i.i ; 2 uses
  %i.av = load i32, ptr %i.au, align 4, !tbaa !40 ; 2 uses
  %i.aw = icmp eq i32 %i.av, %i.am
  br i1 %i.aw, label %_ZN4Luau12DenseHashMapIjNS_7CodeGen14VmExitSyncInfoESt4hashIjESt8equal_toIjEE4findERKj.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ax = icmp eq i32 %i.av, %i.an
  br i1 %i.ax, label %_ZN4Luau12DenseHashMapIjNS_7CodeGen14VmExitSyncInfoESt4hashIjESt8equal_toIjEE4findERKj.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ay = add i64 %.01828.i.i, 1                  ; 3 uses
  %i.az = add i64 %i.ay, %.01927.i.i
  %i.ba = and i64 %i.az, %i.aq
  %.not.i.i43 = icmp ugt i64 %i.ay, %i.aq
  br i1 %.not.i.i43, label %_ZN4Luau12DenseHashMapIjNS_7CodeGen14VmExitSyncInfoESt4hashIjESt8equal_toIjEE4findERKj.exit, label %bb.l, !llvm.loop !0

_ZN4Luau12DenseHashMapIjNS_7CodeGen14VmExitSyncInfoESt4hashIjESt8equal_toIjEE4findERKj.exit: ; preds = %bb.l, %bb.m, %bb.n, %bb.i, %bb.j
  %.4.i.i44 = phi ptr [ null, %bb.j ], [ null, %bb.i ], [ %i.au, %bb.l ], [ null, %bb.m ], [ null, %bb.n ] ; 2 uses
  %.not.i45 = icmp eq ptr %.4.i.i44, null
  %i.bb = getelementptr i8, ptr %.4.i.i44, i64 8
  %i.bc = select i1 %.not.i45, ptr null, ptr %i.bb
  br label %_ZN4Luau12DenseHashMapIjjSt4hashIjESt8equal_toIjEE4findERKj.exit.thread

_ZN4Luau12DenseHashMapIjjSt4hashIjESt8equal_toIjEE4findERKj.exit.thread: ; preds = %bb.h, %bb.g, %bb.c, %bb.d, %_ZN4Luau12DenseHashMapIjNS_7CodeGen14VmExitSyncInfoESt4hashIjESt8equal_toIjEE4findERKj.exit, %bb.b
  %.1 = phi ptr [ null, %bb.b ], [ %i.bc, %_ZN4Luau12DenseHashMapIjNS_7CodeGen14VmExitSyncInfoESt4hashIjESt8equal_toIjEE4findERKj.exit ], [ null, %bb.d ], [ null, %bb.c ], [ null, %bb.g ], [ null, %bb.h ] ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !55 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 3 uses
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !56 ; 3 uses
  %.not3966 = icmp ugt i32 %i.be, %i.bg
  br i1 %.not3966, label %.loopexit, label %.lr.ph70

.lr.ph70:                                         ; preds = %_ZN4Luau12DenseHashMapIjjSt4hashIjESt8equal_toIjEE4findERKj.exit.thread
  %.not41 = icmp eq ptr %.1, null
  %i.bh = getelementptr inbounds nuw i8, ptr %.1, i64 32
  %i.bi = getelementptr inbounds nuw i8, ptr %.1, i64 40
  br i1 %.not41, label %.lr.ph70.split.us.preheader, label %.lr.ph70.split

.lr.ph70.split.us.preheader:                      ; preds = %.lr.ph70
  %.pre85 = load ptr, ptr %i.a, align 8, !tbaa !58
  br label %.lr.ph70.split.us

.lr.ph70.split.us:                                ; preds = %.lr.ph70.split.us.preheader, %_ZN4Luau7CodeGen8isPseudoENS0_5IrCmdE.exit.thread.us
  %i.bj = phi i32 [ %i.bt, %_ZN4Luau7CodeGen8isPseudoENS0_5IrCmdE.exit.thread.us ], [ %i.bg, %.lr.ph70.split.us.preheader ] ; 5 uses
  %2 = phi ptr [ %4, %_ZN4Luau7CodeGen8isPseudoENS0_5IrCmdE.exit.thread.us ], [ %.pre85, %.lr.ph70.split.us.preheader ] ; 6 uses
  %.03467.us = phi i32 [ %i.bu, %_ZN4Luau7CodeGen8isPseudoENS0_5IrCmdE.exit.thread.us ], [ %i.be, %.lr.ph70.split.us.preheader ] ; 3 uses
  %3 = zext i32 %.03467.us to i64
  %i.bk = getelementptr inbounds nuw [64 x i8], ptr %2, i64 %3 ; 3 uses
  %i.bl = load i8, ptr %i.bk, align 8, !tbaa !59
  switch i8 %i.bl, label %_ZN4Luau7CodeGen8isPseudoENS0_5IrCmdE.exit.us [
    i8 -84, label %_ZN4Luau7CodeGen8isPseudoENS0_5IrCmdE.exit.thread.us
    i8 -85, label %_ZN4Luau7CodeGen8isPseudoENS0_5IrCmdE.exit.thread.us
    i8 0, label %_ZN4Luau7CodeGen8isPseudoENS0_5IrCmdE.exit.thread.us
    i8 -83, label %_ZN4Luau7CodeGen8isPseudoENS0_5IrCmdE.exit.thread.us
  ]

_ZN4Luau7CodeGen8isPseudoENS0_5IrCmdE.exit.us:    ; preds = %.lr.ph70.split.us
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !33 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !34 ; 2 uses
  %i.bq = zext i32 %i.bp to i64
  %.idx75 = shl nuw nsw i64 %i.bq, 2
  %i.br = getelementptr inbounds nuw i8, ptr %i.bn, i64 %.idx75
  %.not4060.us = icmp eq i32 %i.bp, 0
  br i1 %.not4060.us, label %_ZN4Luau7CodeGen8isPseudoENS0_5IrCmdE.exit.thread.us, label %_ZSt4findIPN4Luau7CodeGen4IrOpES2_ET_S4_S4_RKT0_.exit.thread.us.us

_ZSt4findIPN4Luau7CodeGen4IrOpES2_ET_S4_S4_RKT0_.exit.thread.us.us: ; preds = %_ZN4Luau7CodeGen8isPseudoENS0_5IrCmdE.exit.us, %_ZSt4findIPN4Luau7CodeGen4IrOpES2_ET_S4_S4_RKT0_.exit.thread.us.us
  %.061.us.us = phi ptr [ %i.bs, %_ZSt4findIPN4Luau7CodeGen4IrOpES2_ET_S4_S4_RKT0_.exit.thread.us.us ], [ %i.bn, %_ZN4Luau7CodeGen8isPseudoENS0_5IrCmdE.exit.us ] ; 2 uses
  %.sroa.0.0.copyload.us.us = load i32, ptr %.061.us.us, align 4, !tbaa !35
  tail call fastcc void @_ZN4Luau7CodeGenL18updateLastUseForOpERNS0_10IrFunctionEjNS0_4IrOpE(ptr noundef nonnull align 8 dereferenceable(928) %0, i32 noundef %.03467.us, i32 %.sroa.0.0.copyload.us.us)
  %i.bs = getelementptr inbounds nuw i8, ptr %.061.us.us, i64 4 ; 2 uses
  %.not40.us.us = icmp eq ptr %i.bs, %i.br
  br i1 %.not40.us.us, label %_ZN4Luau7CodeGen8isPseudoENS0_5IrCmdE.exit.thread.us.loopexit, label %_ZSt4findIPN4Luau7CodeGen4IrOpES2_ET_S4_S4_RKT0_.exit.thread.us.us

_ZN4Luau7CodeGen8isPseudoENS0_5IrCmdE.exit.thread.us.loopexit: ; preds = %_ZSt4findIPN4Luau7CodeGen4IrOpES2_ET_S4_S4_RKT0_.exit.thread.us.us
  %.pre84 = load ptr, ptr %i.a, align 8, !tbaa !58
  %.pre84.a = load i32, ptr %i.bf, align 4, !tbaa !56
  br label %_ZN4Luau7CodeGen8isPseudoENS0_5IrCmdE.exit.thread.us

_ZN4Luau7CodeGen8isPseudoENS0_5IrCmdE.exit.thread.us: ; preds = %_ZN4Luau7CodeGen8isPseudoENS0_5IrCmdE.exit.thread.us.loopexit, %_ZN4Luau7CodeGen8isPseudoENS0_5IrCmdE.exit.us, %.lr.ph70.split.us, %.lr.ph70.split.us, %.lr.ph70.split.us, %.lr.ph70.split.us
  %i.bt = phi i32 [ %.pre84.a, %_ZN4Luau7CodeGen8isPseudoENS0_5IrCmdE.exit.thread.us.loopexit ], [ %i.bj, %_ZN4Luau7CodeGen8isPseudoENS0_5IrCmdE.exit.us ], [ %i.bj, %.lr.ph70.split.us ], [ %i.bj, %.lr.ph70.split.us ], [ %i.bj, %.lr.ph70.split.us ], [ %i.bj, %.lr.ph70.split.us ] ; 2 uses
  %4 = phi ptr [ %.pre84, %_ZN4Luau7CodeGen8isPseudoENS0_5IrCmdE.exit.thread.us.loopexit ], [ %2, %_ZN4Luau7CodeGen8isPseudoENS0_5IrCmdE.exit.us ], [ %2, %.lr.ph70.split.us ], [ %2, %.lr.ph70.split.us ], [ %2, %.lr.ph70.split.us ], [ %2, %.lr.ph70.split.us ]
  %i.bu = add i32 %.03467.us, 1                   ; 2 uses
  %.not39.us = icmp ugt i32 %i.bu, %i.bt
  br i1 %.not39.us, label %.loopexit, label %.lr.ph70.split.us, !llvm.loop !118

.lr.ph70.split:                                   ; preds = %.lr.ph70, %_ZN4Luau7CodeGen8isPseudoENS0_5IrCmdE.exit.thread
  %i.bv = phi i32 [ %i.dr, %_ZN4Luau7CodeGen8isPseudoENS0_5IrCmdE.exit.thread ], [ %i.bg, %.lr.ph70 ] ; 5 uses
  %.03467 = phi i32 [ %i.ds, %_ZN4Luau7CodeGen8isPseudoENS0_5IrCmdE.exit.thread ], [ %i.be, %.lr.ph70 ] ; 3 uses
  %i.bw = zext i32 %.03467 to i64
  %i.bx = load ptr, ptr %i.a, align 8, !tbaa !58
  %i.by = getelementptr inbounds nuw [64 x i8], ptr %i.bx, i64 %i.bw ; 3 uses
  %i.bz = load i8, ptr %i.by, align 8, !tbaa !59
  switch i8 %i.bz, label %_ZN4Luau7CodeGen8isPseudoENS0_5IrCmdE.exit [
    i8 -84, label %_ZN4Luau7CodeGen8isPseudoENS0_5IrCmdE.exit.thread
    i8 -85, label %_ZN4Luau7CodeGen8isPseudoENS0_5IrCmdE.exit.thread
    i8 0, label %_ZN4Luau7CodeGen8isPseudoENS0_5IrCmdE.exit.thread
    i8 -83, label %_ZN4Luau7CodeGen8isPseudoENS0_5IrCmdE.exit.thread
  ]

_ZN4Luau7CodeGen8isPseudoENS0_5IrCmdE.exit:       ; preds = %.lr.ph70.split
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !33 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !34 ; 2 uses
  %i.ce = zext i32 %i.cd to i64
  %.idx74 = shl nuw nsw i64 %i.ce, 2
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cb, i64 %.idx74
  %.not4060 = icmp eq i32 %i.cd, 0
  br i1 %.not4060, label %_ZN4Luau7CodeGen8isPseudoENS0_5IrCmdE.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4Luau7CodeGen8isPseudoENS0_5IrCmdE.exit, %bb.y
  %.061 = phi ptr [ %i.dq, %bb.y ], [ %i.cb, %_ZN4Luau7CodeGen8isPseudoENS0_5IrCmdE.exit ] ; 6 uses
  %i.cg = load ptr, ptr %i.bh, align 8, !tbaa !61 ; 4 uses
  %i.ch = load i32, ptr %i.bi, align 8, !tbaa !62 ; 3 uses
  %i.ci = zext i32 %i.ch to i64                   ; 2 uses
  %.idx50 = shl nuw nsw i64 %i.ci, 2              ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.idx50
  %i.ck = lshr i64 %i.ci, 2                       ; 2 uses
  %.not = icmp eq i64 %i.ck, 0
  br i1 %.not, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph
  %i.cl = load i32, ptr %.061, align 4            ; 8 uses
  %i.cm = and i64 %.idx50, 17179869168
  %scevgep.i.i.i = getelementptr i8, ptr %i.cg, i64 %i.cm
  br label %bb.o

bb.o:                                             ; preds = %bb.s, %.lr.ph.i.i.i
  %.047.i.i.i = phi i64 [ %i.ck, %.lr.ph.i.i.i ], [ %i.cz, %bb.s ] ; 2 uses
  %.02946.i.i.i = phi ptr [ %i.cg, %.lr.ph.i.i.i ], [ %i.cy, %bb.s ] ; 9 uses
  %i.cn = load i32, ptr %.02946.i.i.i, align 4
  %i.co = icmp eq i32 %i.cn, %i.cl
  br i1 %i.co, label %_ZSt4findIPN4Luau7CodeGen4IrOpES2_ET_S4_S4_RKT0_.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cp = getelementptr inbounds nuw i8, ptr %.02946.i.i.i, i64 4
  %i.cq = load i32, ptr %i.cp, align 4
  %i.cr = icmp eq i32 %i.cq, %i.cl
  br i1 %i.cr, label %_ZSt4findIPN4Luau7CodeGen4IrOpES2_ET_S4_S4_RKT0_.exit.loopexit.split.loop.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cs = getelementptr inbounds nuw i8, ptr %.02946.i.i.i, i64 8
  %i.ct = load i32, ptr %i.cs, align 4
  %i.cu = icmp eq i32 %i.ct, %i.cl
  br i1 %i.cu, label %_ZSt4findIPN4Luau7CodeGen4IrOpES2_ET_S4_S4_RKT0_.exit.loopexit.split.loop.exit112, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cv = getelementptr inbounds nuw i8, ptr %.02946.i.i.i, i64 12
  %i.cw = load i32, ptr %i.cv, align 4
  %i.cx = icmp eq i32 %i.cw, %i.cl
  br i1 %i.cx, label %_ZSt4findIPN4Luau7CodeGen4IrOpES2_ET_S4_S4_RKT0_.exit.loopexit.split.loop.exit114, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cy = getelementptr inbounds nuw i8, ptr %.02946.i.i.i, i64 16
  %i.cz = add nsw i64 %.047.i.i.i, -1
  %i.da = icmp sgt i64 %.047.i.i.i, 1
  br i1 %i.da, label %bb.o, label %._crit_edge.loopexit.i.i.i, !llvm.loop !119

._crit_edge.loopexit.i.i.i:                       ; preds = %bb.s
  %i.db = and i32 %i.ch, 3
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %.lr.ph
  %.pre-phi56.i.i.i = phi i32 [ %i.db, %._crit_edge.loopexit.i.i.i ], [ %i.ch, %.lr.ph ]
  %.029.lcssa.i.i.i = phi ptr [ %scevgep.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.cg, %.lr.ph ] ; 5 uses
  switch i32 %.pre-phi56.i.i.i, label %._crit_edge.i.i.i._ZSt4findIPN4Luau7CodeGen4IrOpES2_ET_S4_S4_RKT0_.exit.thread_crit_edge [
    i32 3, label %bb.t
    i32 2, label %._crit_edge._crit_edge.i.i.i
    i32 1, label %._crit_edge._crit_edge52.i.i.i
  ]

._crit_edge.i.i.i._ZSt4findIPN4Luau7CodeGen4IrOpES2_ET_S4_S4_RKT0_.exit.thread_crit_edge: ; preds = %._crit_edge.i.i.i
  %.sroa.0.0.copyload.pre = load i32, ptr %.061, align 4, !tbaa !35
  br label %_ZSt4findIPN4Luau7CodeGen4IrOpES2_ET_S4_S4_RKT0_.exit.thread

._crit_edge._crit_edge52.i.i.i:                   ; preds = %._crit_edge.i.i.i
  %.pre53.i.i.i = load i32, ptr %.061, align 4
  br label %bb.x

._crit_edge._crit_edge.i.i.i:                     ; preds = %._crit_edge.i.i.i
  %.pre.i.i.i = load i32, ptr %.061, align 4
  br label %bb.v

bb.t:                                             ; preds = %._crit_edge.i.i.i
  %i.dc = load i32, ptr %.029.lcssa.i.i.i, align 4 ; 2 uses
  %i.dd = load i32, ptr %.061, align 4            ; 2 uses
  %i.de = icmp eq i32 %i.dc, %i.dd
  br i1 %i.de, label %_ZSt4findIPN4Luau7CodeGen4IrOpES2_ET_S4_S4_RKT0_.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.df = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i, i64 4
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %._crit_edge._crit_edge.i.i.i
  %i.dg = phi i32 [ %i.dd, %bb.u ], [ %.pre.i.i.i, %._crit_edge._crit_edge.i.i.i ] ; 3 uses
  %.1.i.i.i = phi ptr [ %i.df, %bb.u ], [ %.029.lcssa.i.i.i, %._crit_edge._crit_edge.i.i.i ] ; 3 uses
  %i.dh = load i32, ptr %.1.i.i.i, align 4
  %i.di = icmp eq i32 %i.dh, %i.dg
  br i1 %i.di, label %_ZSt4findIPN4Luau7CodeGen4IrOpES2_ET_S4_S4_RKT0_.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dj = getelementptr inbounds nuw i8, ptr %.1.i.i.i, i64 4
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %._crit_edge._crit_edge52.i.i.i
  %i.dk = phi i32 [ %i.dg, %bb.w ], [ %.pre53.i.i.i, %._crit_edge._crit_edge52.i.i.i ] ; 3 uses
  %.2.i.i.i = phi ptr [ %i.dj, %bb.w ], [ %.029.lcssa.i.i.i, %._crit_edge._crit_edge52.i.i.i ] ; 2 uses
  %i.dl = load i32, ptr %.2.i.i.i, align 4
  %i.dm = icmp eq i32 %i.dl, %i.dk
  br i1 %i.dm, label %_ZSt4findIPN4Luau7CodeGen4IrOpES2_ET_S4_S4_RKT0_.exit, label %_ZSt4findIPN4Luau7CodeGen4IrOpES2_ET_S4_S4_RKT0_.exit.thread

_ZSt4findIPN4Luau7CodeGen4IrOpES2_ET_S4_S4_RKT0_.exit.loopexit.split.loop.exit: ; preds = %bb.p
  %i.dn = getelementptr inbounds nuw i8, ptr %.02946.i.i.i, i64 4
  br label %_ZSt4findIPN4Luau7CodeGen4IrOpES2_ET_S4_S4_RKT0_.exit

_ZSt4findIPN4Luau7CodeGen4IrOpES2_ET_S4_S4_RKT0_.exit.loopexit.split.loop.exit112: ; preds = %bb.q
  %i.do = getelementptr inbounds nuw i8, ptr %.02946.i.i.i, i64 8
  br label %_ZSt4findIPN4Luau7CodeGen4IrOpES2_ET_S4_S4_RKT0_.exit

_ZSt4findIPN4Luau7CodeGen4IrOpES2_ET_S4_S4_RKT0_.exit.loopexit.split.loop.exit114: ; preds = %bb.r
  %i.dp = getelementptr inbounds nuw i8, ptr %.02946.i.i.i, i64 12
  br label %_ZSt4findIPN4Luau7CodeGen4IrOpES2_ET_S4_S4_RKT0_.exit

_ZSt4findIPN4Luau7CodeGen4IrOpES2_ET_S4_S4_RKT0_.exit: ; preds = %bb.o, %_ZSt4findIPN4Luau7CodeGen4IrOpES2_ET_S4_S4_RKT0_.exit.loopexit.split.loop.exit, %_ZSt4findIPN4Luau7CodeGen4IrOpES2_ET_S4_S4_RKT0_.exit.loopexit.split.loop.exit112, %_ZSt4findIPN4Luau7CodeGen4IrOpES2_ET_S4_S4_RKT0_.exit.loopexit.split.loop.exit114, %bb.t, %bb.v, %bb.x
  %.sroa.0.0.copyload83 = phi i32 [ %i.dg, %bb.v ], [ %i.dc, %bb.t ], [ %i.dk, %bb.x ], [ %i.cl, %_ZSt4findIPN4Luau7CodeGen4IrOpES2_ET_S4_S4_RKT0_.exit.loopexit.split.loop.exit ], [ %i.cl, %_ZSt4findIPN4Luau7CodeGen4IrOpES2_ET_S4_S4_RKT0_.exit.loopexit.split.loop.exit114 ], [ %i.cl, %_ZSt4findIPN4Luau7CodeGen4IrOpES2_ET_S4_S4_RKT0_.exit.loopexit.split.loop.exit112 ], [ %i.cl, %bb.o ]
  %.028.i.i.i = phi ptr [ %.1.i.i.i, %bb.v ], [ %.029.lcssa.i.i.i, %bb.t ], [ %.2.i.i.i, %bb.x ], [ %i.dn, %_ZSt4findIPN4Luau7CodeGen4IrOpES2_ET_S4_S4_RKT0_.exit.loopexit.split.loop.exit ], [ %i.dp, %_ZSt4findIPN4Luau7CodeGen4IrOpES2_ET_S4_S4_RKT0_.exit.loopexit.split.loop.exit114 ], [ %i.do, %_ZSt4findIPN4Luau7CodeGen4IrOpES2_ET_S4_S4_RKT0_.exit.loopexit.split.loop.exit112 ], [ %.02946.i.i.i, %bb.o ]
  %.not42 = icmp eq ptr %.028.i.i.i, %i.cj
  br i1 %.not42, label %_ZSt4findIPN4Luau7CodeGen4IrOpES2_ET_S4_S4_RKT0_.exit.thread, label %bb.y

_ZSt4findIPN4Luau7CodeGen4IrOpES2_ET_S4_S4_RKT0_.exit.thread: ; preds = %._crit_edge.i.i.i._ZSt4findIPN4Luau7CodeGen4IrOpES2_ET_S4_S4_RKT0_.exit.thread_crit_edge, %bb.x, %_ZSt4findIPN4Luau7CodeGen4IrOpES2_ET_S4_S4_RKT0_.exit
  %.sroa.0.0.copyload = phi i32 [ %.sroa.0.0.copyload.pre, %._crit_edge.i.i.i._ZSt4findIPN4Luau7CodeGen4IrOpES2_ET_S4_S4_RKT0_.exit.thread_crit_edge ], [ %i.dk, %bb.x ], [ %.sroa.0.0.copyload83, %_ZSt4findIPN4Luau7CodeGen4IrOpES2_ET_S4_S4_RKT0_.exit ]
  tail call fastcc void @_ZN4Luau7CodeGenL18updateLastUseForOpERNS0_10IrFunctionEjNS0_4IrOpE(ptr noundef nonnull align 8 dereferenceable(928) %0, i32 noundef %.03467, i32 %.sroa.0.0.copyload)
  br label %bb.y

bb.y:                                             ; preds = %_ZSt4findIPN4Luau7CodeGen4IrOpES2_ET_S4_S4_RKT0_.exit, %_ZSt4findIPN4Luau7CodeGen4IrOpES2_ET_S4_S4_RKT0_.exit.thread
  %i.dq = getelementptr inbounds nuw i8, ptr %.061, i64 4 ; 2 uses
  %.not40 = icmp eq ptr %i.dq, %i.cf
  br i1 %.not40, label %_ZN4Luau7CodeGen8isPseudoENS0_5IrCmdE.exit.thread.loopexit, label %.lr.ph

_ZN4Luau7CodeGen8isPseudoENS0_5IrCmdE.exit.thread.loopexit: ; preds = %bb.y
  %.pre = load i32, ptr %i.bf, align 4, !tbaa !56
  br label %_ZN4Luau7CodeGen8isPseudoENS0_5IrCmdE.exit.thread

_ZN4Luau7CodeGen8isPseudoENS0_5IrCmdE.exit.thread: ; preds = %_ZN4Luau7CodeGen8isPseudoENS0_5IrCmdE.exit.thread.loopexit, %_ZN4Luau7CodeGen8isPseudoENS0_5IrCmdE.exit, %.lr.ph70.split, %.lr.ph70.split, %.lr.ph70.split, %.lr.ph70.split
  %i.dr = phi i32 [ %.pre, %_ZN4Luau7CodeGen8isPseudoENS0_5IrCmdE.exit.thread.loopexit ], [ %i.bv, %_ZN4Luau7CodeGen8isPseudoENS0_5IrCmdE.exit ], [ %i.bv, %.lr.ph70.split ], [ %i.bv, %.lr.ph70.split ], [ %i.bv, %.lr.ph70.split ], [ %i.bv, %.lr.ph70.split ] ; 2 uses
  %i.ds = add i32 %.03467, 1                      ; 2 uses
  %.not39 = icmp ugt i32 %i.ds, %i.dr
  br i1 %.not39, label %.loopexit, label %.lr.ph70.split, !llvm.loop !118

.loopexit:                                        ; preds = %_ZN4Luau7CodeGen8isPseudoENS0_5IrCmdE.exit.thread, %_ZN4Luau7CodeGen8isPseudoENS0_5IrCmdE.exit.thread.us, %_ZN4Luau12DenseHashMapIjjSt4hashIjESt8equal_toIjEE4findERKj.exit.thread, %bb.b
  %i.dt = add nuw i64 %.03671, 1                  ; 2 uses
  %i.du = load ptr, ptr %i.b, align 8, !tbaa !38
  %i.dv = load ptr, ptr %1, align 8, !tbaa !39    ; 2 uses
  %i.dw = ptrtoint ptr %i.du to i64
  %i.dx = ptrtoint ptr %i.dv to i64
  %i.dy = sub i64 %i.dw, %i.dx
  %i.dz = ashr exact i64 %i.dy, 2
  %i.ea = icmp ult i64 %i.dt, %i.dz
  br i1 %i.ea, label %bb.b, label %._crit_edge, !llvm.loop !120
}

; Function Attrs: mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_ZN4Luau7CodeGenL18updateLastUseForOpERNS0_10IrFunctionEjNS0_4IrOpE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(928) %0, i32 noundef %1, i32 %2) unnamed_addr #2 {
bb.a:
  %i.a = and i32 %2, 15
  switch i32 %i.a, label %_ZN4Luau12DenseHashMapIjNS_7CodeGen14VmExitSyncInfoESt4hashIjESt8equal_toIjEE4findERKj.exit.thread [
    i32 4, label %bb.b
    i32 5, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = lshr i32 %2, 4
  %i.d = zext nneg i32 %i.c to i64
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !58
  %i.f = getelementptr inbounds nuw [64 x i8], ptr %i.e, i64 %i.d
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  store i32 %1, ptr %i.g, align 8, !tbaa !63
  br label %_ZN4Luau12DenseHashMapIjNS_7CodeGen14VmExitSyncInfoESt4hashIjESt8equal_toIjEE4findERKj.exit.thread

bb.c:                                             ; preds = %bb.a
end_hunk_0
