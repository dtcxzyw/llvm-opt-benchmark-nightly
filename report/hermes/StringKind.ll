inline.NumInlined: 56
inline.NumDeleted: 34
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

$_ZNSt6vectorIN6hermes10StringKind5EntryESaIS2_EE12emplace_backIJRNS1_4KindEEEERS2_DpOT_ = comdat any

@.str = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1

@_ZN6hermes10StringKind5EntryC1ENS0_4KindEj = hidden unnamed_addr alias void (ptr, i32, i32), ptr @_ZN6hermes10StringKind5EntryC2ENS0_4KindEj

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN6hermes10StringKind5EntryC2ENS0_4KindEj(ptr noundef nonnull writeonly align 4 captures(none) dereferenceable(4) initializes((0, 4)) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = or i32 %2, %1
  store i32 %i.a, ptr %0, align 4, !tbaa !7
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden noundef nonnull align 4 dereferenceable(4) ptr @_ZN6hermes10StringKind5EntryppEv(ptr noundef nonnull returned align 4 captures(ret: address, provenance) dereferenceable(4) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !7
  %i.b = add i32 %i.a, 1
  store i32 %i.b, ptr %0, align 4, !tbaa !7
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6hermes10StringKind11Accumulator9push_backENS0_4KindE(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 2 uses
  store i32 %1, ptr %i.a, align 4, !tbaa !9
  %i.b = load ptr, ptr %0, align 8, !tbaa !11     ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !11   ; 7 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c, !prof !14

bb.b:                                             ; preds = %bb.a
  %i.f = call noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt6vectorIN6hermes10StringKind5EntryESaIS2_EE12emplace_backIJRNS1_4KindEEEERS2_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.a) ; 0 uses
  br label %_ZNSt6vectorIN6hermes10StringKind5EntryESaIS2_EE12emplace_backIJRNS1_4KindEEEERS2_DpOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds i8, ptr %i.d, i64 -4 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !7    ; 3 uses
  %i.i = and i32 %i.h, -2147483648
  %.not = icmp ne i32 %i.i, %1
  %i.j = and i32 %i.h, 2147483647
  %i.k = icmp eq i32 %i.j, 2147483647
  %or.cond = or i1 %.not, %i.k
  br i1 %or.cond, label %bb.d, label %bb.i, !prof !15

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !16
  %.not.i = icmp eq ptr %i.d, %i.m
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = or i32 %1, 1
  store i32 %i.n, ptr %i.d, align 4, !tbaa !7
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  store ptr %i.o, ptr %i.c, align 8, !tbaa !18
  br label %_ZNSt6vectorIN6hermes10StringKind5EntryESaIS2_EE12emplace_backIJRNS1_4KindEEEERS2_DpOT_.exit

bb.f:                                             ; preds = %bb.d
  %i.p = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.q = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.r = sub i64 %i.p, %i.q                       ; 5 uses
  %i.s = icmp eq i64 %i.r, 9223372036854775804
  br i1 %i.s, label %bb.g, label %_ZNKSt6vectorIN6hermes10StringKind5EntryESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #9
  unreachable

_ZNKSt6vectorIN6hermes10StringKind5EntryESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.f
  %i.t = ashr exact i64 %i.r, 2
  %i.u = ashr exact i64 %i.r, 1                   ; 2 uses
  %i.v = icmp ult i64 %i.u, %i.t
  %i.w = tail call i64 @llvm.umin.i64(i64 %i.u, i64 2305843009213693951)
  %i.x = select i1 %i.v, i64 2305843009213693951, i64 %i.w ; 2 uses
  %i.y = shl nuw nsw i64 %i.x, 2
  %i.z = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.y) #10 ; 7 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.r
  %i.ab = or i32 %1, 1
  store i32 %i.ab, ptr %i.aa, align 4, !tbaa !7
  %i.ac = add i64 %i.p, -4
  %i.ad = sub i64 %i.ac, %i.q                     ; 2 uses
  %i.ae = lshr i64 %i.ad, 2
  %i.af = add nuw nsw i64 %i.ae, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ad, 28
  %i.ag = ptrtoaddr ptr %i.z to i64
  %i.ah = sub i64 %i.ag, %i.q
  %diff.check = icmp ult i64 %i.ah, 32
  %or.cond11 = or i1 %min.iters.check, %diff.check
  br i1 %or.cond11, label %.lr.ph.i.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %_ZNKSt6vectorIN6hermes10StringKind5EntryESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %n.vec = and i64 %i.af, 9223372036854775800     ; 3 uses
  %i.ai = shl i64 %n.vec, 2                       ; 2 uses
  %i.aj = getelementptr i8, ptr %i.z, i64 %i.ai   ; 2 uses
  %i.ak = getelementptr i8, ptr %i.b, i64 %i.ai
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.al = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.z, i64 %i.al ; 2 uses
  %next.gep7 = getelementptr i8, ptr %i.b, i64 %i.al ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22)
  %i.am = getelementptr i8, ptr %next.gep7, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep7, align 4, !tbaa !3, !alias.scope !22, !noalias !19
  %wide.load8 = load <4 x i32>, ptr %i.am, align 4, !tbaa !3, !alias.scope !22, !noalias !19
  %i.an = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !3, !alias.scope !19, !noalias !22
  store <4 x i32> %wide.load8, ptr %i.an, align 4, !tbaa !3, !alias.scope !19, !noalias !22
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ao = icmp eq i64 %index.next, %n.vec
  br i1 %i.ao, label %middle.block, label %vector.body, !llvm.loop !24

middle.block:                                     ; preds = %vector.body
  %ind.escape = getelementptr i8, ptr %i.aj, i64 -4
  %cmp.n = icmp eq i64 %i.af, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6hermes10StringKind5EntryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorIN6hermes10StringKind5EntryESaIS2_EE12_M_check_lenEmPKc.exit.i.i, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.z, %_ZNKSt6vectorIN6hermes10StringKind5EntryESaIS2_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.aj, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.b, %_ZNKSt6vectorIN6hermes10StringKind5EntryESaIS2_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.ak, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ar, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !19)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22)
  %i.ap = load i32, ptr %.0911.i.i.i.i.i, align 4, !tbaa !3, !alias.scope !22, !noalias !19
  store i32 %i.ap, ptr %.012.i.i.i.i.i, align 4, !tbaa !3, !alias.scope !19, !noalias !22
  %i.aq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 4 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 4
  %.not.i.i.i.i.i = icmp eq ptr %i.aq, %i.d
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN6hermes10StringKind5EntryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !28

_ZNSt6vectorIN6hermes10StringKind5EntryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block
  %.012.i.i.i.i.i.lcssa = phi ptr [ %ind.escape, %middle.block ], [ %.012.i.i.i.i.i, %.lr.ph.i.i.i.i.i ]
  %i.as = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.lcssa, i64 8
  %.not.i23.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN6hermes10StringKind5EntryESaIS2_EE17_M_realloc_insertIJRNS1_4KindEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIN6hermes10StringKind5EntryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.r) #11
  br label %_ZNSt6vectorIN6hermes10StringKind5EntryESaIS2_EE17_M_realloc_insertIJRNS1_4KindEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIN6hermes10StringKind5EntryESaIS2_EE17_M_realloc_insertIJRNS1_4KindEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.h, %_ZNSt6vectorIN6hermes10StringKind5EntryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i
  store ptr %i.z, ptr %0, align 8, !tbaa !29
  store ptr %i.as, ptr %i.c, align 8, !tbaa !18
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.x
  store ptr %i.at, ptr %i.l, align 8, !tbaa !16
  br label %_ZNSt6vectorIN6hermes10StringKind5EntryESaIS2_EE12emplace_backIJRNS1_4KindEEEERS2_DpOT_.exit

bb.i:                                             ; preds = %bb.c
  %i.au = add nsw i32 %i.h, 1
  store i32 %i.au, ptr %i.g, align 4, !tbaa !7
  br label %_ZNSt6vectorIN6hermes10StringKind5EntryESaIS2_EE12emplace_backIJRNS1_4KindEEEERS2_DpOT_.exit

_ZNSt6vectorIN6hermes10StringKind5EntryESaIS2_EE12emplace_backIJRNS1_4KindEEEERS2_DpOT_.exit: ; preds = %_ZNSt6vectorIN6hermes10StringKind5EntryESaIS2_EE17_M_realloc_insertIJRNS1_4KindEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, %bb.e, %bb.i, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt6vectorIN6hermes10StringKind5EntryESaIS2_EE12emplace_backIJRNS1_4KindEEEERS2_DpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18   ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !16
  %.not = icmp eq ptr %i.b, %i.d
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr %1, align 4, !tbaa !9
  %i.f = or i32 %i.e, 1
  store i32 %i.f, ptr %i.b, align 4, !tbaa !7
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store ptr %i.g, ptr %i.a, align 8, !tbaa !18
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %0, align 8, !tbaa !29     ; 7 uses
  %i.i = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.j = ptrtoint ptr %i.h to i64                 ; 3 uses
  %i.k = sub i64 %i.i, %i.j                       ; 4 uses
  %i.l = icmp eq i64 %i.k, 9223372036854775804
  br i1 %i.l, label %bb.d, label %_ZNKSt6vectorIN6hermes10StringKind5EntryESaIS2_EE12_M_check_lenEmPKc.exit.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #9
  unreachable

_ZNKSt6vectorIN6hermes10StringKind5EntryESaIS2_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.c
  %i.m = ashr exact i64 %i.k, 2                   ; 3 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.m, i64 1)
  %i.n = add nsw i64 %.sroa.speculated.i.i, %i.m  ; 2 uses
  %i.o = icmp ult i64 %i.n, %i.m
  %i.p = tail call i64 @llvm.umin.i64(i64 %i.n, i64 2305843009213693951)
  %i.q = select i1 %i.o, i64 2305843009213693951, i64 %i.p ; 3 uses
  %.not.i.i = icmp ne i64 %i.q, 0
  tail call void @llvm.assume(i1 %.not.i.i)
  %i.r = shl nuw nsw i64 %i.q, 2
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.r) #10 ; 8 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.k
  %i.u = load i32, ptr %1, align 4, !tbaa !9
  %i.v = or i32 %i.u, 1
  store i32 %i.v, ptr %i.t, align 4, !tbaa !7
  %.not10.i.i.i.i = icmp eq ptr %i.h, %i.b
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN6hermes10StringKind5EntryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZNKSt6vectorIN6hermes10StringKind5EntryESaIS2_EE12_M_check_lenEmPKc.exit.i
  %i.w = ptrtoaddr ptr %i.s to i64
  %i.x = add i64 %i.i, -4
  %i.y = sub i64 %i.x, %i.j                       ; 2 uses
  %i.z = lshr i64 %i.y, 2
  %i.aa = add nuw nsw i64 %i.z, 1                 ; 2 uses
  %min.iters.check = icmp ult i64 %i.y, 28
  %i.ab = sub i64 %i.w, %i.j
  %diff.check = icmp ult i64 %i.ab, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.preheader8, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.aa, 9223372036854775800     ; 3 uses
  %i.ac = shl i64 %n.vec, 2                       ; 2 uses
  %i.ad = getelementptr i8, ptr %i.s, i64 %i.ac   ; 2 uses
  %i.ae = getelementptr i8, ptr %i.h, i64 %i.ac
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.af = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.s, i64 %i.af ; 2 uses
  %next.gep5 = getelementptr i8, ptr %i.h, i64 %i.af ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33)
  %i.ag = getelementptr i8, ptr %next.gep5, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep5, align 4, !tbaa !3, !alias.scope !33, !noalias !30
  %wide.load6 = load <4 x i32>, ptr %i.ag, align 4, !tbaa !3, !alias.scope !33, !noalias !30
  %i.ah = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !3, !alias.scope !30, !noalias !33
  store <4 x i32> %wide.load6, ptr %i.ah, align 4, !tbaa !3, !alias.scope !30, !noalias !33
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ai = icmp eq i64 %index.next, %n.vec
  br i1 %i.ai, label %middle.block, label %vector.body, !llvm.loop !35

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aa, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6hermes10StringKind5EntryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i, label %.lr.ph.i.i.i.i.preheader8

.lr.ph.i.i.i.i.preheader8:                        ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.s, %.lr.ph.i.i.i.i.preheader ], [ %i.ad, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.h, %.lr.ph.i.i.i.i.preheader ], [ %i.ae, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader8, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader8 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.ak, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader8 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !30)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !33)
  %i.aj = load i32, ptr %.0911.i.i.i.i, align 4, !tbaa !3, !alias.scope !33, !noalias !30
  store i32 %i.aj, ptr %.012.i.i.i.i, align 4, !tbaa !3, !alias.scope !30, !noalias !33
  %i.ak = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 4 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ak, %i.b
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN6hermes10StringKind5EntryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !36

_ZNSt6vectorIN6hermes10StringKind5EntryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZNKSt6vectorIN6hermes10StringKind5EntryESaIS2_EE12_M_check_lenEmPKc.exit.i
  %.0.lcssa.i.i.i.i = phi ptr [ %i.s, %_ZNKSt6vectorIN6hermes10StringKind5EntryESaIS2_EE12_M_check_lenEmPKc.exit.i ], [ %i.ad, %middle.block ], [ %i.al, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 4
  %.not.i23.i = icmp eq ptr %i.h, null
  br i1 %.not.i23.i, label %_ZNSt6vectorIN6hermes10StringKind5EntryESaIS2_EE17_M_realloc_insertIJRNS1_4KindEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN6hermes10StringKind5EntryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef %i.k) #11
  br label %_ZNSt6vectorIN6hermes10StringKind5EntryESaIS2_EE17_M_realloc_insertIJRNS1_4KindEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit

_ZNSt6vectorIN6hermes10StringKind5EntryESaIS2_EE17_M_realloc_insertIJRNS1_4KindEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit: ; preds = %_ZNSt6vectorIN6hermes10StringKind5EntryESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i, %bb.e
  store ptr %i.s, ptr %0, align 8, !tbaa !29
  store ptr %i.am, ptr %i.a, align 8, !tbaa !18
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.q
  store ptr %i.an, ptr %i.c, align 8, !tbaa !16
  br label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN6hermes10StringKind5EntryESaIS2_EE17_M_realloc_insertIJRNS1_4KindEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit, %bb.b
  %i.ao = phi ptr [ %.0.lcssa.i.i.i.i, %_ZNSt6vectorIN6hermes10StringKind5EntryESaIS2_EE17_M_realloc_insertIJRNS1_4KindEEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit ], [ %i.b, %bb.b ]
  ret ptr %i.ao
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #3

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #4

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { noreturn nounwind }
attributes #10 = { builtin nounwind allocsize(0) }
attributes #11 = { builtin nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !4, i64 0}
!8 = !{!"_ZTSN6hermes10StringKind5EntryE", !4, i64 0}
!9 = !{!10, !10, i64 0}
!10 = !{!"_ZTSN6hermes10StringKind4KindE", !5, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"p1 _ZTSN6hermes10StringKind5EntryE", !13, i64 0}
!13 = !{!"any pointer", !5, i64 0}
!14 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!15 = !{!"branch_weights", i32 2002, i32 2000}
!16 = !{!17, !12, i64 16}
!17 = !{!"_ZTSNSt12_Vector_baseIN6hermes10StringKind5EntryESaIS2_EE17_Vector_impl_dataE", !12, i64 0, !12, i64 8, !12, i64 16}
!18 = !{!17, !12, i64 8}
!19 = !{!20}
!20 = distinct !{!20, !21, !"_ZSt19__relocate_object_aIN6hermes10StringKind5EntryES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!21 = distinct !{!21, !"_ZSt19__relocate_object_aIN6hermes10StringKind5EntryES2_SaIS2_EEvPT_PT0_RT1_"}
!22 = !{!23}
!23 = distinct !{!23, !21, !"_ZSt19__relocate_object_aIN6hermes10StringKind5EntryES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!24 = distinct !{!24, !25, !26, !27}
!25 = !{!"llvm.loop.mustprogress"}
!26 = !{!"llvm.loop.isvectorized", i32 1}
!27 = !{!"llvm.loop.unroll.runtime.disable"}
!28 = distinct !{!28, !25, !26}
!29 = !{!17, !12, i64 0}
!30 = !{!31}
!31 = distinct !{!31, !32, !"_ZSt19__relocate_object_aIN6hermes10StringKind5EntryES2_SaIS2_EEvPT_PT0_RT1_: argument 0"}
!32 = distinct !{!32, !"_ZSt19__relocate_object_aIN6hermes10StringKind5EntryES2_SaIS2_EEvPT_PT0_RT1_"}
!33 = !{!34}
!34 = distinct !{!34, !32, !"_ZSt19__relocate_object_aIN6hermes10StringKind5EntryES2_SaIS2_EEvPT_PT0_RT1_: argument 1"}
!35 = distinct !{!35, !25, !26, !27}
!36 = distinct !{!36, !25, !26}
end_hunk_0
