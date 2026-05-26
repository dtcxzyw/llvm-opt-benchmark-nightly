inline.NumInlined: 752
inline.NumDeleted: 304
begin_hunk_0
target triple = "x86_64-pc-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<upb::EnumDefPtr, std::allocator<upb::EnumDefPtr>>::_Vector_impl" }
%"struct.std::_Vector_base<upb::EnumDefPtr, std::allocator<upb::EnumDefPtr>>::_Vector_impl" = type { %"struct.std::_Vector_base<upb::EnumDefPtr, std::allocator<upb::EnumDefPtr>>::_Vector_impl_data" }
%"struct.std::_Vector_base<upb::EnumDefPtr, std::allocator<upb::EnumDefPtr>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.0" = type { %"struct.std::_Vector_base.1" }
%"struct.std::_Vector_base.1" = type { %"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int>>::_Vector_impl" }
%"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int>>::_Vector_impl" = type { %"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int>>::_Vector_impl_data" }
%"struct.std::_Vector_base<unsigned int, std::allocator<unsigned int>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.7" = type { %"struct.std::_Vector_base.8" }
%"struct.std::_Vector_base.8" = type { %"struct.std::_Vector_base<upb::MessageDefPtr, std::allocator<upb::MessageDefPtr>>::_Vector_impl" }
%"struct.std::_Vector_base<upb::MessageDefPtr, std::allocator<upb::MessageDefPtr>>::_Vector_impl" = type { %"struct.std::_Vector_base<upb::MessageDefPtr, std::allocator<upb::MessageDefPtr>>::_Vector_impl_data" }
%"struct.std::_Vector_base<upb::MessageDefPtr, std::allocator<upb::MessageDefPtr>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::vector.12" = type { %"struct.std::_Vector_base.13" }
%"struct.std::_Vector_base.13" = type { %"struct.std::_Vector_base<upb::FieldDefPtr, std::allocator<upb::FieldDefPtr>>::_Vector_impl" }
%"struct.std::_Vector_base<upb::FieldDefPtr, std::allocator<upb::FieldDefPtr>>::_Vector_impl" = type { %"struct.std::_Vector_base<upb::FieldDefPtr, std::allocator<upb::FieldDefPtr>>::_Vector_impl_data" }
%"struct.std::_Vector_base<upb::FieldDefPtr, std::allocator<upb::FieldDefPtr>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"struct.__gnu_cxx::__ops::_Iter_less_iter" = type { i8 }

$_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_ = comdat any

$_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_ = comdat any

$_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_less_iterEEvT_S9_RT0_ = comdat any

@.str = private unnamed_addr constant [13 x i8] c"enums_layout\00", align 1
@_ZN3upb9generator10kEnumsInitE = dso_local local_unnamed_addr global ptr @.str, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"extensions_layout\00", align 1
@_ZN3upb9generator15kExtensionsInitE = dso_local local_unnamed_addr global ptr @.str.1, align 8
@.str.2 = private unnamed_addr constant [16 x i8] c"messages_layout\00", align 1
@_ZN3upb9generator13kMessagesInitE = dso_local local_unnamed_addr global ptr @.str.2, align 8
@.str.3 = private unnamed_addr constant [16 x i8] c"vector::reserve\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3upb9generator8AddEnumsENS_13MessageDefPtrEPSt6vectorINS_10EnumDefPtrESaIS3_EENS0_10WhichEnumsE(ptr %0, ptr noundef captures(none) %1, i32 noundef %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.c = load ptr, ptr %1, align 8, !tbaa !12
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = ashr exact i64 %i.f, 3
  %i.h = tail call noundef i32 @upb_MessageDef_NestedEnumCount(ptr noundef %0)
  %i.i = sext i32 %i.h to i64
  %i.j = add nsw i64 %i.g, %i.i                   ; 4 uses
  %i.k = icmp ugt i64 %i.j, 1152921504606846975
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #12
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !13
  %i.n = load ptr, ptr %1, align 8, !tbaa !12     ; 7 uses
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %i.n to i64                 ; 4 uses
  %i.q = sub i64 %i.o, %i.p                       ; 2 uses
  %i.r = ashr exact i64 %i.q, 3
  %i.s = icmp ult i64 %i.r, %i.j
  br i1 %i.s, label %_ZNSt12_Vector_baseIN3upb10EnumDefPtrESaIS1_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorIN3upb10EnumDefPtrESaIS1_EE7reserveEm.exit

_ZNSt12_Vector_baseIN3upb10EnumDefPtrESaIS1_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !8    ; 3 uses
  %i.u = ptrtoint ptr %i.t to i64                 ; 2 uses
  %i.v = sub i64 %i.u, %i.p
  %i.w = shl nuw nsw i64 %i.j, 3
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #13 ; 7 uses
  %.not10.i.i.i.i = icmp eq ptr %i.n, %i.t
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN3upb10EnumDefPtrESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZNSt12_Vector_baseIN3upb10EnumDefPtrESaIS1_EE11_M_allocateEm.exit.i
  %i.y = ptrtoaddr ptr %i.x to i64
  %i.z = add i64 %i.u, -8
  %i.aa = sub i64 %i.z, %i.p                      ; 2 uses
  %i.ab = lshr i64 %i.aa, 3
  %i.ac = add nuw nsw i64 %i.ab, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.aa, 56
  %i.ad = sub i64 %i.y, %i.p
  %diff.check = icmp ult i64 %i.ad, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.preheader55, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.ac, 4611686018427387900     ; 3 uses
  %i.ae = shl i64 %n.vec, 3                       ; 2 uses
  %i.af = getelementptr i8, ptr %i.x, i64 %i.ae
  %i.ag = getelementptr i8, ptr %i.n, i64 %i.ae
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ah = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.x, i64 %i.ah ; 2 uses
  %next.gep32 = getelementptr i8, ptr %i.n, i64 %i.ah ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17)
  %i.ai = getelementptr i8, ptr %next.gep32, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep32, align 8, !tbaa !19, !alias.scope !17, !noalias !14
  %wide.load33 = load <2 x i64>, ptr %i.ai, align 8, !tbaa !19, !alias.scope !17, !noalias !14
  %i.aj = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !19, !alias.scope !14, !noalias !17
  store <2 x i64> %wide.load33, ptr %i.aj, align 8, !tbaa !19, !alias.scope !14, !noalias !17
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ak = icmp eq i64 %index.next, %n.vec
  br i1 %i.ak, label %middle.block, label %vector.body, !llvm.loop !21

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ac, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN3upb10EnumDefPtrESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i.preheader55

.lr.ph.i.i.i.i.preheader55:                       ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.x, %.lr.ph.i.i.i.i.preheader ], [ %i.af, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.n, %.lr.ph.i.i.i.i.preheader ], [ %i.ag, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader55, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader55 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader55 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !17)
  %i.al = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !19, !alias.scope !17, !noalias !14
  store i64 %i.al, ptr %.012.i.i.i.i, align 8, !tbaa !19, !alias.scope !14, !noalias !17
  %i.am = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.am, %i.t
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN3upb10EnumDefPtrESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !25

_ZNSt6vectorIN3upb10EnumDefPtrESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZNSt12_Vector_baseIN3upb10EnumDefPtrESaIS1_EE11_M_allocateEm.exit.i
  %.not.i8.i = icmp eq ptr %i.n, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseIN3upb10EnumDefPtrESaIS1_EE13_M_deallocateEPS1_m.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIN3upb10EnumDefPtrESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.q) #14
  br label %_ZNSt12_Vector_baseIN3upb10EnumDefPtrESaIS1_EE13_M_deallocateEPS1_m.exit.i

_ZNSt12_Vector_baseIN3upb10EnumDefPtrESaIS1_EE13_M_deallocateEPS1_m.exit.i: ; preds = %bb.d, %_ZNSt6vectorIN3upb10EnumDefPtrESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  store ptr %i.x, ptr %1, align 8, !tbaa !12
  %i.ao = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.v
  store ptr %i.ao, ptr %i.a, align 8, !tbaa !8
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.j
  store ptr %i.ap, ptr %i.l, align 8, !tbaa !13
  br label %_ZNSt6vectorIN3upb10EnumDefPtrESaIS1_EE7reserveEm.exit

_ZNSt6vectorIN3upb10EnumDefPtrESaIS1_EE7reserveEm.exit: ; preds = %bb.c, %_ZNSt12_Vector_baseIN3upb10EnumDefPtrESaIS1_EE13_M_deallocateEPS1_m.exit.i
  %i.aq = tail call noundef i32 @upb_MessageDef_NestedEnumCount(ptr noundef %0)
  %i.ar = icmp sgt i32 %i.aq, 0
  br i1 %i.ar, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %_ZNSt6vectorIN3upb10EnumDefPtrESaIS1_EE7reserveEm.exit
  %i.as = icmp eq i32 %2, 0
  br label %bb.e

.preheader:                                       ; preds = %_ZNSt6vectorIN3upb10EnumDefPtrESaIS1_EE9push_backEOS1_.exit, %_ZNSt6vectorIN3upb10EnumDefPtrESaIS1_EE7reserveEm.exit
  %i.at = tail call noundef i32 @upb_MessageDef_NestedMessageCount(ptr noundef %0)
  %i.au = icmp sgt i32 %i.at, 0
  br i1 %i.au, label %.lr.ph24, label %._crit_edge

bb.e:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN3upb10EnumDefPtrESaIS1_EE9push_backEOS1_.exit
  %.022 = phi i32 [ 0, %.lr.ph ], [ %i.cg, %_ZNSt6vectorIN3upb10EnumDefPtrESaIS1_EE9push_backEOS1_.exit ] ; 3 uses
  %i.av = tail call ptr @upb_MessageDef_NestedEnum(ptr noundef %0, i32 noundef %.022)
  br i1 %i.as, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aw = tail call noundef zeroext i1 @upb_EnumDef_IsClosed(ptr noundef %i.av)
  br i1 %i.aw, label %bb.g, label %_ZNSt6vectorIN3upb10EnumDefPtrESaIS1_EE9push_backEOS1_.exit

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ax = tail call ptr @upb_MessageDef_NestedEnum(ptr noundef %0, i32 noundef %.022) ; 2 uses
  %i.ay = load ptr, ptr %i.a, align 8, !tbaa !8   ; 6 uses
  %i.az = load ptr, ptr %i.l, align 8, !tbaa !13
  %.not.i.i = icmp eq ptr %i.ay, %i.az
  br i1 %.not.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ba = ptrtoint ptr %i.ax to i64
  store i64 %i.ba, ptr %i.ay, align 8, !tbaa !19
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store ptr %i.bb, ptr %i.a, align 8, !tbaa !8
  br label %_ZNSt6vectorIN3upb10EnumDefPtrESaIS1_EE9push_backEOS1_.exit

bb.i:                                             ; preds = %bb.g
  %i.bc = load ptr, ptr %1, align 8, !tbaa !12    ; 7 uses
  %i.bd = ptrtoint ptr %i.ay to i64               ; 2 uses
  %i.be = ptrtoint ptr %i.bc to i64               ; 3 uses
  %i.bf = sub i64 %i.bd, %i.be                    ; 4 uses
  %i.bg = icmp eq i64 %i.bf, 9223372036854775800
  br i1 %i.bg, label %bb.j, label %_ZNKSt6vectorIN3upb10EnumDefPtrESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.j:                                             ; preds = %bb.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #12
  unreachable

_ZNKSt6vectorIN3upb10EnumDefPtrESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.i
  %i.bh = ashr exact i64 %i.bf, 3                 ; 2 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bh, i64 1)
  %i.bi = add nsw i64 %.sroa.speculated.i.i.i.i, %i.bh ; 2 uses
  %i.bj = tail call i64 @llvm.umin.i64(i64 %i.bi, i64 1152921504606846975) ; 2 uses
  %.not.i.i.i.i13 = icmp ne i64 %i.bi, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i13)
  %i.bk = shl nuw nsw i64 %i.bj, 3
  %i.bl = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bk) #13 ; 8 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bf
  %i.bn = ptrtoint ptr %i.ax to i64
  store i64 %i.bn, ptr %i.bm, align 8, !tbaa !19
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.bc, %i.ay
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN3upb10EnumDefPtrESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %_ZNKSt6vectorIN3upb10EnumDefPtrESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bo = ptrtoaddr ptr %i.bl to i64
  %i.bp = add i64 %i.bd, -8
  %i.bq = sub i64 %i.bp, %i.be                    ; 2 uses
  %i.br = lshr i64 %i.bq, 3
  %i.bs = add nuw nsw i64 %i.br, 1                ; 2 uses
  %min.iters.check38 = icmp ult i64 %i.bq, 24
  %i.bt = sub i64 %i.bo, %i.be
  %diff.check36 = icmp ult i64 %i.bt, 32
  %or.cond53 = or i1 %min.iters.check38, %diff.check36
  br i1 %or.cond53, label %.lr.ph.i.i.i.i.i.i.preheader54, label %vector.ph39

vector.ph39:                                      ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec41 = and i64 %i.bs, 4611686018427387900   ; 3 uses
  %i.bu = shl i64 %n.vec41, 3                     ; 2 uses
  %i.bv = getelementptr i8, ptr %i.bl, i64 %i.bu  ; 2 uses
  %i.bw = getelementptr i8, ptr %i.bc, i64 %i.bu
  br label %vector.body42

vector.body42:                                    ; preds = %vector.body42, %vector.ph39
  %index43 = phi i64 [ 0, %vector.ph39 ], [ %index.next48, %vector.body42 ] ; 2 uses
  %i.bx = shl i64 %index43, 3                     ; 2 uses
  %next.gep44 = getelementptr i8, ptr %i.bl, i64 %i.bx ; 2 uses
  %next.gep45 = getelementptr i8, ptr %i.bc, i64 %i.bx ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29)
  %i.by = getelementptr i8, ptr %next.gep45, i64 16
  %wide.load46 = load <2 x i64>, ptr %next.gep45, align 8, !tbaa !19, !alias.scope !29, !noalias !26
  %wide.load47 = load <2 x i64>, ptr %i.by, align 8, !tbaa !19, !alias.scope !29, !noalias !26
  %i.bz = getelementptr i8, ptr %next.gep44, i64 16
  store <2 x i64> %wide.load46, ptr %next.gep44, align 8, !tbaa !19, !alias.scope !26, !noalias !29
  store <2 x i64> %wide.load47, ptr %i.bz, align 8, !tbaa !19, !alias.scope !26, !noalias !29
  %index.next48 = add nuw i64 %index43, 4         ; 2 uses
  %i.ca = icmp eq i64 %index.next48, %n.vec41
  br i1 %i.ca, label %middle.block49, label %vector.body42, !llvm.loop !31

middle.block49:                                   ; preds = %vector.body42
  %cmp.n50 = icmp eq i64 %i.bs, %n.vec41
  br i1 %cmp.n50, label %_ZNSt6vectorIN3upb10EnumDefPtrESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader54

.lr.ph.i.i.i.i.i.i.preheader54:                   ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block49
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.bl, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.bv, %middle.block49 ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.bc, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.bw, %middle.block49 ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader54, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.cd, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader54 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.cc, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader54 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !26)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !29)
  %i.cb = load i64, ptr %.0911.i.i.i.i.i.i, align 8, !tbaa !19, !alias.scope !29, !noalias !26
  store i64 %i.cb, ptr %.012.i.i.i.i.i.i, align 8, !tbaa !19, !alias.scope !26, !noalias !29
  %i.cc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cc, %i.ay
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN3upb10EnumDefPtrESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !32

_ZNSt6vectorIN3upb10EnumDefPtrESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block49, %_ZNKSt6vectorIN3upb10EnumDefPtrESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.bl, %_ZNKSt6vectorIN3upb10EnumDefPtrESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.bv, %middle.block49 ], [ %i.cd, %.lr.ph.i.i.i.i.i.i ]
  %i.ce = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.bc, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN3upb10EnumDefPtrESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIN3upb10EnumDefPtrESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bc, i64 noundef %i.bf) #14
  br label %_ZNSt6vectorIN3upb10EnumDefPtrESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIN3upb10EnumDefPtrESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.k, %_ZNSt6vectorIN3upb10EnumDefPtrESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  store ptr %i.bl, ptr %1, align 8, !tbaa !12
  store ptr %i.ce, ptr %i.a, align 8, !tbaa !8
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.bj
  store ptr %i.cf, ptr %i.l, align 8, !tbaa !13
  br label %_ZNSt6vectorIN3upb10EnumDefPtrESaIS1_EE9push_backEOS1_.exit

_ZNSt6vectorIN3upb10EnumDefPtrESaIS1_EE9push_backEOS1_.exit: ; preds = %_ZNSt6vectorIN3upb10EnumDefPtrESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, %bb.h, %bb.f
  %i.cg = add nuw nsw i32 %.022, 1                ; 2 uses
  %i.ch = tail call noundef i32 @upb_MessageDef_NestedEnumCount(ptr noundef %0)
  %i.ci = icmp slt i32 %i.cg, %i.ch
  br i1 %i.ci, label %bb.e, label %.preheader, !llvm.loop !33

._crit_edge:                                      ; preds = %.lr.ph24, %.preheader
  ret void

.lr.ph24:                                         ; preds = %.preheader, %.lr.ph24
  %.01223 = phi i32 [ %i.ck, %.lr.ph24 ], [ 0, %.preheader ] ; 2 uses
  %i.cj = tail call ptr @upb_MessageDef_NestedMessage(ptr noundef %0, i32 noundef %.01223)
  tail call void @_ZN3upb9generator8AddEnumsENS_13MessageDefPtrEPSt6vectorINS_10EnumDefPtrESaIS3_EENS0_10WhichEnumsE(ptr %i.cj, ptr noundef nonnull %1, i32 noundef %2)
  %i.ck = add nuw nsw i32 %.01223, 1              ; 2 uses
  %i.cl = tail call noundef i32 @upb_MessageDef_NestedMessageCount(ptr noundef %0)
  %i.cm = icmp slt i32 %i.ck, %i.cl
  br i1 %i.cm, label %.lr.ph24, label %._crit_edge, !llvm.loop !34
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3upb9generator11SortedEnumsENS_10FileDefPtrENS0_10WhichEnumsE(ptr dead_on_unwind noalias writable sret(%"class.std::vector") align 8 captures(none) initializes((0, 24)) %0, ptr %1, i32 noundef %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = invoke noundef i32 @upb_FileDef_TopLevelEnumCount(ptr noundef %1)
          to label %_ZNK3upb10FileDefPtr19toplevel_enum_countEv.exit unwind label %.loopexit.split-lp.loopexit.split-lp ; 3 uses

_ZNK3upb10FileDefPtr19toplevel_enum_countEv.exit: ; preds = %bb.a
  %i.b = sext i32 %i.a to i64                     ; 2 uses
  %i.c = icmp slt i32 %i.a, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZNK3upb10FileDefPtr19toplevel_enum_countEv.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #12
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %_ZNK3upb10FileDefPtr19toplevel_enum_countEv.exit
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %_ZNSt6vectorIN3upb10EnumDefPtrESaIS1_EE7reserveEm.exit, label %_ZNSt12_Vector_baseIN3upb10EnumDefPtrESaIS1_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIN3upb10EnumDefPtrESaIS1_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.e = shl nuw nsw i64 %i.b, 3
  %i.f = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #13
          to label %_ZNSt12_Vector_baseIN3upb10EnumDefPtrESaIS1_EE13_M_deallocateEPS1_m.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp ; 4 uses

_ZNSt12_Vector_baseIN3upb10EnumDefPtrESaIS1_EE13_M_deallocateEPS1_m.exit.i: ; preds = %_ZNSt12_Vector_baseIN3upb10EnumDefPtrESaIS1_EE11_M_allocateEm.exit.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.f, ptr %0, align 8, !tbaa !12
  store ptr %i.f, ptr %i.g, align 8, !tbaa !8
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.b ; 2 uses
  store ptr %i.h, ptr %i.d, align 8, !tbaa !13
  br label %_ZNSt6vectorIN3upb10EnumDefPtrESaIS1_EE7reserveEm.exit

_ZNSt6vectorIN3upb10EnumDefPtrESaIS1_EE7reserveEm.exit: ; preds = %bb.c, %_ZNSt12_Vector_baseIN3upb10EnumDefPtrESaIS1_EE13_M_deallocateEPS1_m.exit.i
  %.promoted64 = phi ptr [ null, %bb.c ], [ %i.f, %_ZNSt12_Vector_baseIN3upb10EnumDefPtrESaIS1_EE13_M_deallocateEPS1_m.exit.i ] ; 2 uses
  %.promoted = phi ptr [ null, %bb.c ], [ %i.h, %_ZNSt12_Vector_baseIN3upb10EnumDefPtrESaIS1_EE13_M_deallocateEPS1_m.exit.i ]
  %i.i = icmp eq i32 %2, 0
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIN3upb10EnumDefPtrESaIS1_EE7reserveEm.exit, %_ZNSt6vectorIN3upb10EnumDefPtrESaIS1_EE9push_backEOS1_.exit
  %i.k = phi ptr [ %i.az, %_ZNSt6vectorIN3upb10EnumDefPtrESaIS1_EE9push_backEOS1_.exit ], [ %.promoted64, %_ZNSt6vectorIN3upb10EnumDefPtrESaIS1_EE7reserveEm.exit ] ; 7 uses
  %i.l = phi ptr [ %i.ba, %_ZNSt6vectorIN3upb10EnumDefPtrESaIS1_EE9push_backEOS1_.exit ], [ %.promoted64, %_ZNSt6vectorIN3upb10EnumDefPtrESaIS1_EE7reserveEm.exit ] ; 18 uses
  %i.m = phi ptr [ %i.bb, %_ZNSt6vectorIN3upb10EnumDefPtrESaIS1_EE9push_backEOS1_.exit ], [ %.promoted, %_ZNSt6vectorIN3upb10EnumDefPtrESaIS1_EE7reserveEm.exit ] ; 8 uses
  %.017 = phi i32 [ %i.bc, %_ZNSt6vectorIN3upb10EnumDefPtrESaIS1_EE9push_backEOS1_.exit ], [ 0, %_ZNSt6vectorIN3upb10EnumDefPtrESaIS1_EE7reserveEm.exit ] ; 4 uses
  %i.n = invoke noundef i32 @upb_FileDef_TopLevelEnumCount(ptr noundef %1)
          to label %_ZNK3upb10FileDefPtr19toplevel_enum_countEv.exit23 unwind label %bb.e

_ZNK3upb10FileDefPtr19toplevel_enum_countEv.exit23: ; preds = %bb.d
  %i.o = icmp slt i32 %.017, %i.n
  br i1 %i.o, label %bb.f, label %.preheader

.preheader:                                       ; preds = %_ZNK3upb10FileDefPtr19toplevel_enum_countEv.exit23
  store ptr %i.m, ptr %i.d, align 8
  store ptr %i.l, ptr %0, align 8
  br label %bb.n

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i, %.noexc39
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lpthread-pre-split

.loopexit.split-lp.loopexit:                      ; preds = %.noexc37, %.lr.ph.i.i.i.i33
  %lpad.loopexit51 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lpthread-pre-split

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.r, %bb.q, %bb.p, %_ZNSt12_Vector_baseIN3upb10EnumDefPtrESaIS1_EE11_M_allocateEm.exit.i, %bb.b, %bb.a
  %lpad.loopexit.split-lp52 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lpthread-pre-split

bb.e:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          cleanup
  store ptr %i.m, ptr %i.d, align 8
  store ptr %i.l, ptr %0, align 8
  br label %.loopexit.split-lp

bb.f:                                             ; preds = %_ZNK3upb10FileDefPtr19toplevel_enum_countEv.exit23
  %i.q = invoke ptr @upb_FileDef_TopLevelEnum(ptr noundef %1, i32 noundef %.017)
          to label %_ZNK3upb10FileDefPtr13toplevel_enumEi.exit unwind label %bb.m

_ZNK3upb10FileDefPtr13toplevel_enumEi.exit:       ; preds = %bb.f
  br i1 %i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZNK3upb10FileDefPtr13toplevel_enumEi.exit
  %i.r = invoke noundef zeroext i1 @upb_EnumDef_IsClosed(ptr noundef %i.q)
          to label %_ZNK3upb10EnumDefPtr9is_closedEv.exit unwind label %bb.m

_ZNK3upb10EnumDefPtr9is_closedEv.exit:            ; preds = %bb.g
  br i1 %i.r, label %bb.h, label %_ZNSt6vectorIN3upb10EnumDefPtrESaIS1_EE9push_backEOS1_.exit

bb.h:                                             ; preds = %_ZNK3upb10EnumDefPtr9is_closedEv.exit, %_ZNK3upb10FileDefPtr13toplevel_enumEi.exit
  %i.s = invoke ptr @upb_FileDef_TopLevelEnum(ptr noundef %1, i32 noundef %.017)
          to label %_ZNK3upb10FileDefPtr13toplevel_enumEi.exit27 unwind label %.loopexit54 ; 2 uses

_ZNK3upb10FileDefPtr13toplevel_enumEi.exit27:     ; preds = %bb.h
  %.not.i.i = icmp eq ptr %i.k, %i.m
  br i1 %.not.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZNK3upb10FileDefPtr13toplevel_enumEi.exit27
  %i.t = ptrtoint ptr %i.s to i64
  store i64 %i.t, ptr %i.k, align 8, !tbaa !19
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  store ptr %i.u, ptr %i.j, align 8, !tbaa !8
  br label %_ZNSt6vectorIN3upb10EnumDefPtrESaIS1_EE9push_backEOS1_.exit

bb.j:                                             ; preds = %_ZNK3upb10FileDefPtr13toplevel_enumEi.exit27
  %i.v = ptrtoint ptr %i.k to i64                 ; 2 uses
  %i.w = ptrtoint ptr %i.l to i64                 ; 3 uses
  %i.x = sub i64 %i.v, %i.w                       ; 4 uses
  %i.y = icmp eq i64 %i.x, 9223372036854775800
  br i1 %i.y, label %bb.k, label %_ZNKSt6vectorIN3upb10EnumDefPtrESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.k:                                             ; preds = %bb.j
  store ptr %i.m, ptr %i.d, align 8
  store ptr %i.l, ptr %0, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #12
          to label %.noexc29 unwind label %.loopexit.split-lp55

.noexc29:                                         ; preds = %bb.k
  unreachable

_ZNKSt6vectorIN3upb10EnumDefPtrESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.j
  %i.z = ashr exact i64 %i.x, 3                   ; 2 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.z, i64 1)
  %i.aa = add nsw i64 %.sroa.speculated.i.i.i.i, %i.z ; 2 uses
  %i.ab = tail call i64 @llvm.umin.i64(i64 %i.aa, i64 1152921504606846975) ; 2 uses
  %.not.i.i.i.i28 = icmp ne i64 %i.aa, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i28)
  %i.ac = shl nuw nsw i64 %i.ab, 3
  %i.ad = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ac) #13
          to label %.noexc30 unwind label %.loopexit54 ; 8 uses

.noexc30:                                         ; preds = %_ZNKSt6vectorIN3upb10EnumDefPtrESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.x
  %i.af = ptrtoint ptr %i.s to i64
  store i64 %i.af, ptr %i.ae, align 8, !tbaa !19
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.l, %i.k
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN3upb10EnumDefPtrESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %.noexc30
  %i.ag = ptrtoaddr ptr %i.ad to i64
  %i.ah = add i64 %i.v, -8
  %i.ai = sub i64 %i.ah, %i.w                     ; 2 uses
  %i.aj = lshr i64 %i.ai, 3
  %i.ak = add nuw nsw i64 %i.aj, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ai, 24
  %i.al = sub i64 %i.ag, %i.w
  %diff.check = icmp ult i64 %i.al, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.preheader119, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.ak, 4611686018427387900     ; 3 uses
  %i.am = shl i64 %n.vec, 3                       ; 2 uses
  %i.an = getelementptr i8, ptr %i.ad, i64 %i.am  ; 2 uses
  %i.ao = getelementptr i8, ptr %i.l, i64 %i.am
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ap = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ad, i64 %i.ap ; 2 uses
  %next.gep115 = getelementptr i8, ptr %i.l, i64 %i.ap ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38)
  %i.aq = getelementptr i8, ptr %next.gep115, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep115, align 8, !tbaa !19, !alias.scope !38, !noalias !35
  %wide.load116 = load <2 x i64>, ptr %i.aq, align 8, !tbaa !19, !alias.scope !38, !noalias !35
  %i.ar = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !19, !alias.scope !35, !noalias !38
  store <2 x i64> %wide.load116, ptr %i.ar, align 8, !tbaa !19, !alias.scope !35, !noalias !38
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.as = icmp eq i64 %index.next, %n.vec
  br i1 %i.as, label %middle.block, label %vector.body, !llvm.loop !40

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ak, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN3upb10EnumDefPtrESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader119

.lr.ph.i.i.i.i.i.i.preheader119:                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.ad, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.an, %middle.block ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.l, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ao, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader119, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.av, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader119 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.au, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader119 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !35)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38)
  %i.at = load i64, ptr %.0911.i.i.i.i.i.i, align 8, !tbaa !19, !alias.scope !38, !noalias !35
  store i64 %i.at, ptr %.012.i.i.i.i.i.i, align 8, !tbaa !19, !alias.scope !35, !noalias !38
  %i.au = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.au, %i.k
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN3upb10EnumDefPtrESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !41

_ZNSt6vectorIN3upb10EnumDefPtrESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %.noexc30
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.ad, %.noexc30 ], [ %i.an, %middle.block ], [ %i.av, %.lr.ph.i.i.i.i.i.i ]
  %i.aw = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i23.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN3upb10EnumDefPtrESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIN3upb10EnumDefPtrESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.x) #14
  br label %_ZNSt6vectorIN3upb10EnumDefPtrESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIN3upb10EnumDefPtrESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.l, %_ZNSt6vectorIN3upb10EnumDefPtrESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  store ptr %i.aw, ptr %i.j, align 8, !tbaa !8
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.ab
  br label %_ZNSt6vectorIN3upb10EnumDefPtrESaIS1_EE9push_backEOS1_.exit

bb.m:                                             ; preds = %bb.g, %bb.f
  %i.ay = landingpad { ptr, i32 }
          cleanup
  store ptr %i.m, ptr %i.d, align 8
  store ptr %i.l, ptr %0, align 8
  br label %.loopexit.split-lp

.loopexit54:                                      ; preds = %bb.h, %_ZNKSt6vectorIN3upb10EnumDefPtrESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit56 = landingpad { ptr, i32 }
          cleanup
  store ptr %i.m, ptr %i.d, align 8
  store ptr %i.l, ptr %0, align 8
  br label %.loopexit.split-lp

.loopexit.split-lp55:                             ; preds = %bb.k
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

_ZNSt6vectorIN3upb10EnumDefPtrESaIS1_EE9push_backEOS1_.exit: ; preds = %bb.i, %_ZNSt6vectorIN3upb10EnumDefPtrESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, %_ZNK3upb10EnumDefPtr9is_closedEv.exit
  %i.az = phi ptr [ %i.u, %bb.i ], [ %i.aw, %_ZNSt6vectorIN3upb10EnumDefPtrESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %i.k, %_ZNK3upb10EnumDefPtr9is_closedEv.exit ]
  %i.ba = phi ptr [ %i.l, %bb.i ], [ %i.ad, %_ZNSt6vectorIN3upb10EnumDefPtrESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %i.l, %_ZNK3upb10EnumDefPtr9is_closedEv.exit ]
  %i.bb = phi ptr [ %i.m, %bb.i ], [ %i.ax, %_ZNSt6vectorIN3upb10EnumDefPtrESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %i.m, %_ZNK3upb10EnumDefPtr9is_closedEv.exit ]
  %i.bc = add nuw nsw i32 %.017, 1
  br label %bb.d, !llvm.loop !42

bb.n:                                             ; preds = %.preheader, %bb.u
  %.016 = phi i32 [ %i.ce, %bb.u ], [ 0, %.preheader ] ; 3 uses
  %i.bd = invoke noundef i32 @upb_FileDef_TopLevelMessageCount(ptr noundef %1)
          to label %_ZNK3upb10FileDefPtr22toplevel_message_countEv.exit unwind label %bb.s

_ZNK3upb10FileDefPtr22toplevel_message_countEv.exit: ; preds = %bb.n
  %i.be = icmp slt i32 %.016, %i.bd
  br i1 %i.be, label %bb.t, label %bb.o

bb.o:                                             ; preds = %_ZNK3upb10FileDefPtr22toplevel_message_countEv.exit
  %i.bf = load ptr, ptr %0, align 8, !tbaa !43    ; 6 uses
  %i.bg = load ptr, ptr %i.j, align 8, !tbaa !43  ; 6 uses
  %.not.i.i32 = icmp eq ptr %i.bf, %i.bg
  br i1 %.not.i.i32, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN3upb10EnumDefPtrESt6vectorIS3_SaIS3_EEEEZNS2_9generator11SortedEnumsENS2_10FileDefPtrENS9_10WhichEnumsEE3$_0EvT_SD_T0_.exit", label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = ptrtoint ptr %i.bf to i64
  %i.bj = sub i64 %i.bh, %i.bi                    ; 2 uses
  %i.bk = ashr exact i64 %i.bj, 3
  %i.bl = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bk, i1 true)
  %i.bm = shl nuw nsw i64 %i.bl, 1
  %i.bn = xor i64 %i.bm, 126
  invoke fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN3upb10EnumDefPtrESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_comp_iterIZNS2_9generator11SortedEnumsENS2_10FileDefPtrENSB_10WhichEnumsEE3$_0EEEvT_SG_T0_T1_"(ptr %i.bf, ptr %i.bg, i64 noundef %i.bn)
          to label %.noexc35 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc35:                                         ; preds = %bb.p
  %i.bo = icmp sgt i64 %i.bj, 128
  br i1 %i.bo, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.noexc35
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bf, i64 128 ; 3 uses
  invoke fastcc void @"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN3upb10EnumDefPtrESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_9generator11SortedEnumsENS2_10FileDefPtrENSB_10WhichEnumsEE3$_0EEEvT_SG_T0_"(ptr %i.bf, ptr nonnull %i.bp)
          to label %.noexc36 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc36:                                         ; preds = %bb.q
  %.not6.i.i.i.i = icmp eq ptr %i.bp, %i.bg
  br i1 %.not6.i.i.i.i, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN3upb10EnumDefPtrESt6vectorIS3_SaIS3_EEEEZNS2_9generator11SortedEnumsENS2_10FileDefPtrENS9_10WhichEnumsEE3$_0EvT_SD_T0_.exit", label %.lr.ph.i.i.i.i33

.lr.ph.i.i.i.i33:                                 ; preds = %.noexc36, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3upb10EnumDefPtrESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZNS2_9generator11SortedEnumsENS2_10FileDefPtrENSB_10WhichEnumsEE3$_0EEEvT_T0_.exit.i.i.i.i"
  %.sroa.0.07.i.i.i.i = phi ptr [ %i.cb, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3upb10EnumDefPtrESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZNS2_9generator11SortedEnumsENS2_10FileDefPtrENSB_10WhichEnumsEE3$_0EEEvT_T0_.exit.i.i.i.i" ], [ %i.bp, %.noexc36 ] ; 5 uses
  %i.bq = load i64, ptr %.sroa.0.07.i.i.i.i, align 8, !tbaa !19 ; 2 uses
  %i.br = inttoptr i64 %i.bq to ptr               ; 2 uses
  %.sroa.0.07.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.07.i.i.i.i, i64 -8 ; 2 uses
  %.sroa.0.0.copyload.i8.i.i.i.i.i = load ptr, ptr %.sroa.0.07.i.i.i.i.i, align 8, !tbaa !19
  %i.bs = invoke noundef ptr @upb_EnumDef_FullName(ptr noundef %i.br)
          to label %.noexc37 unwind label %.loopexit.split-lp.loopexit

.noexc37:                                         ; preds = %.lr.ph.i.i.i.i33
  %i.bt = invoke noundef ptr @upb_EnumDef_FullName(ptr noundef %.sroa.0.0.copyload.i8.i.i.i.i.i)
          to label %.noexc38 unwind label %.loopexit.split-lp.loopexit

.noexc38:                                         ; preds = %.noexc37
  %i.bu = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.bs, ptr noundef nonnull dereferenceable(1) %i.bt) #15
  %i.bv = icmp slt i32 %i.bu, 0
  br i1 %i.bv, label %.lr.ph.i.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3upb10EnumDefPtrESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZNS2_9generator11SortedEnumsENS2_10FileDefPtrENSB_10WhichEnumsEE3$_0EEEvT_T0_.exit.i.i.i.i"

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc38, %.noexc40
  %.sroa.0.010.i.i.i.i.i = phi ptr [ %.sroa.0.0.i.i.i.i.i, %.noexc40 ], [ %.sroa.0.07.i.i.i.i.i, %.noexc38 ] ; 4 uses
  %.sroa.04.09.i.i.i.i.i = phi ptr [ %.sroa.0.010.i.i.i.i.i, %.noexc40 ], [ %.sroa.0.07.i.i.i.i, %.noexc38 ]
  %i.bw = load i64, ptr %.sroa.0.010.i.i.i.i.i, align 8, !tbaa !19
  store i64 %i.bw, ptr %.sroa.04.09.i.i.i.i.i, align 8, !tbaa !19
  %.sroa.0.0.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.010.i.i.i.i.i, i64 -8 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sroa.0.0.i.i.i.i.i, align 8, !tbaa !19
  %i.bx = invoke noundef ptr @upb_EnumDef_FullName(ptr noundef %i.br)
          to label %.noexc39 unwind label %.loopexit

.noexc39:                                         ; preds = %.lr.ph.i.i.i.i.i
  %i.by = invoke noundef ptr @upb_EnumDef_FullName(ptr noundef %.sroa.0.0.copyload.i.i.i.i.i.i)
          to label %.noexc40 unwind label %.loopexit

.noexc40:                                         ; preds = %.noexc39
  %i.bz = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.bx, ptr noundef nonnull dereferenceable(1) %i.by) #15
  %i.ca = icmp slt i32 %i.bz, 0
  br i1 %i.ca, label %.lr.ph.i.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3upb10EnumDefPtrESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZNS2_9generator11SortedEnumsENS2_10FileDefPtrENSB_10WhichEnumsEE3$_0EEEvT_T0_.exit.i.i.i.i", !llvm.loop !44

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3upb10EnumDefPtrESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZNS2_9generator11SortedEnumsENS2_10FileDefPtrENSB_10WhichEnumsEE3$_0EEEvT_T0_.exit.i.i.i.i": ; preds = %.noexc40, %.noexc38
  %.sroa.04.0.lcssa.i.i.i.i.i = phi ptr [ %.sroa.0.07.i.i.i.i, %.noexc38 ], [ %.sroa.0.010.i.i.i.i.i, %.noexc40 ]
  store i64 %i.bq, ptr %.sroa.04.0.lcssa.i.i.i.i.i, align 8, !tbaa !19
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i34 = icmp eq ptr %i.cb, %i.bg
  br i1 %.not.i.i.i.i34, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN3upb10EnumDefPtrESt6vectorIS3_SaIS3_EEEEZNS2_9generator11SortedEnumsENS2_10FileDefPtrENS9_10WhichEnumsEE3$_0EvT_SD_T0_.exit", label %.lr.ph.i.i.i.i33, !llvm.loop !45

bb.r:                                             ; preds = %.noexc35
  invoke fastcc void @"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN3upb10EnumDefPtrESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_9generator11SortedEnumsENS2_10FileDefPtrENSB_10WhichEnumsEE3$_0EEEvT_SG_T0_"(ptr %i.bf, ptr %i.bg)
          to label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN3upb10EnumDefPtrESt6vectorIS3_SaIS3_EEEEZNS2_9generator11SortedEnumsENS2_10FileDefPtrENS9_10WhichEnumsEE3$_0EvT_SD_T0_.exit" unwind label %.loopexit.split-lp.loopexit.split-lp

bb.s:                                             ; preds = %bb.t, %bb.n, %_ZNK3upb10FileDefPtr16toplevel_messageEi.exit
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lpthread-pre-split

bb.t:                                             ; preds = %_ZNK3upb10FileDefPtr22toplevel_message_countEv.exit
  %i.cd = invoke ptr @upb_FileDef_TopLevelMessage(ptr noundef %1, i32 noundef %.016)
          to label %_ZNK3upb10FileDefPtr16toplevel_messageEi.exit unwind label %bb.s

_ZNK3upb10FileDefPtr16toplevel_messageEi.exit:    ; preds = %bb.t
  invoke void @_ZN3upb9generator8AddEnumsENS_13MessageDefPtrEPSt6vectorINS_10EnumDefPtrESaIS3_EENS0_10WhichEnumsE(ptr %i.cd, ptr noundef nonnull %0, i32 noundef %2)
          to label %bb.u unwind label %bb.s

bb.u:                                             ; preds = %_ZNK3upb10FileDefPtr16toplevel_messageEi.exit
  %i.ce = add nuw nsw i32 %.016, 1
  br label %bb.n, !llvm.loop !46

"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN3upb10EnumDefPtrESt6vectorIS3_SaIS3_EEEEZNS2_9generator11SortedEnumsENS2_10FileDefPtrENS9_10WhichEnumsEE3$_0EvT_SD_T0_.exit": ; preds = %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3upb10EnumDefPtrESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZNS2_9generator11SortedEnumsENS2_10FileDefPtrENSB_10WhichEnumsEE3$_0EEEvT_T0_.exit.i.i.i.i", %.noexc36, %bb.o, %bb.r
  ret void

.loopexit.split-lpthread-pre-split:               ; preds = %bb.s, %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit
  %.pn.pn.pn.ph = phi { ptr, i32 } [ %lpad.loopexit51, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp52, %.loopexit.split-lp.loopexit.split-lp ], [ %i.cc, %bb.s ]
  %.pr = load ptr, ptr %0, align 8, !tbaa !12
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lpthread-pre-split, %.loopexit54, %.loopexit.split-lp55, %bb.m, %bb.e
  %i.cf = phi ptr [ %.pr, %.loopexit.split-lpthread-pre-split ], [ %i.l, %.loopexit54 ], [ %i.l, %.loopexit.split-lp55 ], [ %i.l, %bb.m ], [ %i.l, %bb.e ] ; 3 uses
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.ph, %.loopexit.split-lpthread-pre-split ], [ %lpad.loopexit56, %.loopexit54 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp55 ], [ %i.ay, %bb.m ], [ %i.p, %bb.e ]
  %.not.i.i.i = icmp eq ptr %i.cf, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN3upb10EnumDefPtrESaIS1_EED2Ev.exit, label %bb.v

bb.v:                                             ; preds = %.loopexit.split-lp
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !13
  %i.ci = ptrtoint ptr %i.ch to i64
  %i.cj = ptrtoint ptr %i.cf to i64
  %i.ck = sub i64 %i.ci, %i.cj
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cf, i64 noundef %i.ck) #14
  br label %_ZNSt6vectorIN3upb10EnumDefPtrESaIS1_EED2Ev.exit

_ZNSt6vectorIN3upb10EnumDefPtrESaIS1_EED2Ev.exit: ; preds = %.loopexit.split-lp, %bb.v
  resume { ptr, i32 } %.pn.pn.pn
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3upb9generator23SortedUniqueEnumNumbersENS_10EnumDefPtrE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.0") align 8 captures(none) initializes((0, 24)) %0, ptr %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = invoke noundef i32 @upb_EnumDef_ValueCount(ptr noundef %1)
          to label %_ZNK3upb10EnumDefPtr11value_countEv.exit unwind label %bb.g ; 3 uses

_ZNK3upb10EnumDefPtr11value_countEv.exit:         ; preds = %bb.a
  %i.b = sext i32 %i.a to i64                     ; 2 uses
  %i.c = icmp slt i32 %i.a, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZNK3upb10EnumDefPtr11value_countEv.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #12
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %_ZNK3upb10EnumDefPtr11value_countEv.exit
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %_ZNSt6vectorIjSaIjEE7reserveEm.exit, label %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.e = shl nuw nsw i64 %i.b, 2
  %i.f = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #13
          to label %.noexc17 unwind label %bb.g   ; 4 uses

.noexc17:                                         ; preds = %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.f, ptr %0, align 8, !tbaa !47
  store ptr %i.f, ptr %i.g, align 8, !tbaa !50
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.b ; 2 uses
  store ptr %i.h, ptr %i.d, align 8, !tbaa !51
  br label %_ZNSt6vectorIjSaIjEE7reserveEm.exit

_ZNSt6vectorIjSaIjEE7reserveEm.exit:              ; preds = %bb.c, %.noexc17
  %.promoted46 = phi ptr [ null, %bb.c ], [ %i.f, %.noexc17 ] ; 2 uses
  %.promoted = phi ptr [ null, %bb.c ], [ %i.h, %.noexc17 ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIjSaIjEE7reserveEm.exit, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit
  %i.j = phi ptr [ %i.an, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit ], [ %.promoted46, %_ZNSt6vectorIjSaIjEE7reserveEm.exit ] ; 12 uses
  %i.k = phi ptr [ %i.ao, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit ], [ %.promoted46, %_ZNSt6vectorIjSaIjEE7reserveEm.exit ] ; 18 uses
  %i.l = phi ptr [ %i.ap, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit ], [ %.promoted, %_ZNSt6vectorIjSaIjEE7reserveEm.exit ] ; 6 uses
  %.012 = phi i32 [ %i.aq, %_ZNSt6vectorIjSaIjEE9push_backEOj.exit ], [ 0, %_ZNSt6vectorIjSaIjEE7reserveEm.exit ] ; 3 uses
  %i.m = invoke noundef i32 @upb_EnumDef_ValueCount(ptr noundef %1)
          to label %_ZNK3upb10EnumDefPtr11value_countEv.exit19 unwind label %bb.h

_ZNK3upb10EnumDefPtr11value_countEv.exit19:       ; preds = %bb.d
  %i.n = icmp slt i32 %.012, %i.m
  br i1 %i.n, label %bb.i, label %bb.e

bb.e:                                             ; preds = %_ZNK3upb10EnumDefPtr11value_countEv.exit19
  store ptr %i.l, ptr %i.d, align 8
  store ptr %i.k, ptr %0, align 8
  %.not.i.i = icmp eq ptr %i.k, %i.j
  br i1 %.not.i.i, label %_ZNSt6vectorIjSaIjEE5eraseEN9__gnu_cxx17__normal_iteratorIPKjS1_EES6_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = ptrtoint ptr %i.j to i64
  %i.p = ptrtoint ptr %i.k to i64                 ; 2 uses
  %i.q = sub i64 %i.o, %i.p
  %i.r = ashr exact i64 %i.q, 2
  %i.s = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.r, i1 true)
  %i.t = shl nuw nsw i64 %i.s, 1
  %i.u = xor i64 %i.t, 126
  invoke void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr %i.k, ptr %i.j, i64 noundef %i.u)
          to label %.noexc20 unwind label %bb.g

.noexc20:                                         ; preds = %bb.f
  invoke void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(ptr %i.k, ptr %i.j)
          to label %.preheader.i.i.i unwind label %bb.g

bb.g:                                             ; preds = %.noexc20, %bb.f, %_ZNSt12_Vector_baseIjSaIjEE11_M_allocateEm.exit.i, %bb.b, %bb.a
  %i.v = landingpad { ptr, i32 }
          cleanup
  %.pre = load ptr, ptr %0, align 8, !tbaa !47
  br label %bb.r

bb.h:                                             ; preds = %bb.d
  %i.w = landingpad { ptr, i32 }
          cleanup
  store ptr %i.l, ptr %i.d, align 8
  store ptr %i.k, ptr %0, align 8
  br label %bb.r

bb.i:                                             ; preds = %_ZNK3upb10EnumDefPtr11value_countEv.exit19
  %i.x = invoke ptr @upb_EnumDef_Value(ptr noundef %1, i32 noundef %.012)
          to label %_ZNK3upb10EnumDefPtr5valueEi.exit unwind label %.loopexit

_ZNK3upb10EnumDefPtr5valueEi.exit:                ; preds = %bb.i
  %i.y = invoke noundef i32 @upb_EnumValueDef_Number(ptr noundef %i.x)
          to label %_ZNK3upb13EnumValDefPtr6numberEv.exit unwind label %.loopexit ; 2 uses

_ZNK3upb13EnumValDefPtr6numberEv.exit:            ; preds = %_ZNK3upb10EnumDefPtr5valueEi.exit
  %.not.i.i24 = icmp eq ptr %i.j, %i.l
  br i1 %.not.i.i24, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZNK3upb13EnumValDefPtr6numberEv.exit
  store i32 %i.y, ptr %i.j, align 4, !tbaa !4
  %i.z = getelementptr inbounds nuw i8, ptr %i.j, i64 4 ; 2 uses
  store ptr %i.z, ptr %i.i, align 8, !tbaa !50
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit

bb.k:                                             ; preds = %_ZNK3upb13EnumValDefPtr6numberEv.exit
  %i.aa = ptrtoint ptr %i.j to i64
  %i.ab = ptrtoint ptr %i.k to i64
  %i.ac = sub i64 %i.aa, %i.ab                    ; 6 uses
  %i.ad = icmp eq i64 %i.ac, 9223372036854775804
  br i1 %i.ad, label %bb.l, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i

bb.l:                                             ; preds = %bb.k
  store ptr %i.l, ptr %i.d, align 8
  store ptr %i.k, ptr %0, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #12
          to label %.noexc25 unwind label %.loopexit.split-lp

.noexc25:                                         ; preds = %bb.l
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.k
  %i.ae = ashr exact i64 %i.ac, 2                 ; 2 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ae, i64 1)
  %i.af = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ae ; 2 uses
  %i.ag = tail call i64 @llvm.umin.i64(i64 %i.af, i64 2305843009213693951) ; 2 uses
  %.not.i.i.i.i = icmp ne i64 %i.af, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ah = shl nuw nsw i64 %i.ag, 2
  %i.ai = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ah) #13
          to label %.noexc26 unwind label %.loopexit ; 4 uses

.noexc26:                                         ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i
  %i.aj = getelementptr inbounds i8, ptr %i.ai, i64 %i.ac ; 2 uses
  store i32 %i.y, ptr %i.aj, align 4, !tbaa !4
  %i.ak = icmp sgt i64 %i.ac, 0
  br i1 %i.ak, label %bb.m, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i

bb.m:                                             ; preds = %.noexc26
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ai, ptr align 4 %i.k, i64 %i.ac, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.m, %.noexc26
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 4 ; 2 uses
  %.not.i17.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.ac) #14
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i: ; preds = %bb.n, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i
  store ptr %i.al, ptr %i.i, align 8, !tbaa !50
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.ag
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit

_ZNSt6vectorIjSaIjEE9push_backEOj.exit:           ; preds = %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i, %bb.j
  %i.an = phi ptr [ %i.al, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i ], [ %i.z, %bb.j ]
  %i.ao = phi ptr [ %i.ai, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i ], [ %i.k, %bb.j ]
  %i.ap = phi ptr [ %i.am, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i ], [ %i.l, %bb.j ]
  %i.aq = add nuw nsw i32 %.012, 1
  br label %bb.d, !llvm.loop !52

.loopexit:                                        ; preds = %bb.i, %_ZNK3upb10EnumDefPtr5valueEi.exit, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %i.l, ptr %i.d, align 8
  store ptr %i.k, ptr %0, align 8
  br label %bb.r

.loopexit.split-lp:                               ; preds = %bb.l
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

.preheader.i.i.i:                                 ; preds = %.noexc20, %bb.o
  %.sroa.09.0.i.i.i = phi ptr [ %i.ar, %bb.o ], [ %i.k, %.noexc20 ] ; 5 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i.i, i64 4 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ar, %i.j
  br i1 %.not.i.i.i, label %_ZNSt6vectorIjSaIjEE5eraseEN9__gnu_cxx17__normal_iteratorIPKjS1_EES6_.exit, label %bb.o

bb.o:                                             ; preds = %.preheader.i.i.i
  %i.as = load i32, ptr %.sroa.09.0.i.i.i, align 4, !tbaa !4 ; 2 uses
  %i.at = load i32, ptr %i.ar, align 4, !tbaa !4
  %i.au = icmp eq i32 %i.as, %i.at
  br i1 %i.au, label %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i, label %.preheader.i.i.i, !llvm.loop !53

_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i: ; preds = %bb.o
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.09.0.i.i.i, i64 8 ; 2 uses
  %.not18.i.i = icmp eq ptr %i.av, %i.j
  br i1 %.not18.i.i, label %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEET_S7_S7_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i, %bb.q
  %i.aw = phi i32 [ %i.ay, %bb.q ], [ %i.as, %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i ]
  %i.ax = phi ptr [ %i.bb, %bb.q ], [ %i.av, %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i ] ; 2 uses
  %.sroa.0.019.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.q ], [ %.sroa.09.0.i.i.i, %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i ] ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !4  ; 3 uses
  %i.az = icmp eq i32 %i.aw, %i.ay
  br i1 %i.az, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i.i, i64 4 ; 2 uses
  store i32 %i.ay, ptr %i.ba, align 4, !tbaa !4
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.lr.ph.i.i
  %.sroa.0.1.i.i = phi ptr [ %.sroa.0.019.i.i, %.lr.ph.i.i ], [ %i.ba, %bb.p ] ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 4 ; 2 uses
  %.not.i.i27 = icmp eq ptr %i.bb, %i.j
  br i1 %.not.i.i27, label %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEET_S7_S7_.exit, label %.lr.ph.i.i, !llvm.loop !54

_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEET_S7_S7_.exit: ; preds = %bb.q, %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i
  %.sroa.0.0.lcssa.i.i = phi ptr [ %.sroa.09.0.i.i.i, %_ZSt15__adjacent_findIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEENS0_5__ops19_Iter_equal_to_iterEET_S9_S9_T0_.exit.i.i ], [ %.sroa.0.1.i.i, %bb.q ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i.i, i64 4 ; 2 uses
  %.not.i.i28 = icmp eq ptr %i.bc, %i.j
  br i1 %.not.i.i28, label %_ZNSt6vectorIjSaIjEE5eraseEN9__gnu_cxx17__normal_iteratorIPKjS1_EES6_.exit, label %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i.i:      ; preds = %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEET_S7_S7_.exit
  %i.bd = ptrtoint ptr %i.bc to i64
  %i.be = sub i64 %i.bd, %i.p
  %i.bf = getelementptr inbounds i8, ptr %i.k, i64 %i.be
  store ptr %i.bf, ptr %i.i, align 8, !tbaa !50
  br label %_ZNSt6vectorIjSaIjEE5eraseEN9__gnu_cxx17__normal_iteratorIPKjS1_EES6_.exit

_ZNSt6vectorIjSaIjEE5eraseEN9__gnu_cxx17__normal_iteratorIPKjS1_EES6_.exit: ; preds = %.preheader.i.i.i, %bb.e, %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i.i, %_ZSt6uniqueIN9__gnu_cxx17__normal_iteratorIPjSt6vectorIjSaIjEEEEET_S7_S7_.exit
  ret void

bb.r:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.h, %bb.g
  %i.bg = phi ptr [ %.pre, %bb.g ], [ %i.k, %bb.h ], [ %i.k, %.loopexit ], [ %i.k, %.loopexit.split-lp ] ; 3 uses
  %.pn14.pn = phi { ptr, i32 } [ %i.v, %bb.g ], [ %i.w, %bb.h ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.not.i.i.i30 = icmp eq ptr %i.bg, null
  br i1 %.not.i.i.i30, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !51
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = ptrtoint ptr %i.bg to i64
  %i.bl = sub i64 %i.bj, %i.bk
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bg, i64 noundef %i.bl) #14
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %bb.r, %bb.s
  resume { ptr, i32 } %.pn14.pn
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3upb9generator11AddMessagesENS_13MessageDefPtrEPSt6vectorIS1_SaIS1_EE(ptr %0, ptr noundef captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !55   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !58
  %.not.i = icmp eq ptr %i.b, %i.d
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = ptrtoint ptr %0 to i64
  store i64 %i.e, ptr %i.b, align 8, !tbaa !59
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.f, ptr %i.a, align 8, !tbaa !55
  br label %_ZNSt6vectorIN3upb13MessageDefPtrESaIS1_EE9push_backERKS1_.exit

bb.c:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %1, align 8, !tbaa !61     ; 7 uses
  %i.h = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.i = ptrtoint ptr %i.g to i64                 ; 3 uses
  %i.j = sub i64 %i.h, %i.i                       ; 4 uses
  %i.k = icmp eq i64 %i.j, 9223372036854775800
  br i1 %i.k, label %bb.d, label %_ZNKSt6vectorIN3upb13MessageDefPtrESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #12
  unreachable

_ZNKSt6vectorIN3upb13MessageDefPtrESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.c
  %i.l = ashr exact i64 %i.j, 3                   ; 2 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.l, i64 1)
  %i.m = add nsw i64 %.sroa.speculated.i.i.i, %i.l ; 2 uses
  %i.n = tail call i64 @llvm.umin.i64(i64 %i.m, i64 1152921504606846975) ; 2 uses
  %.not.i.i.i = icmp ne i64 %i.m, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.o = shl nuw nsw i64 %i.n, 3
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #13 ; 8 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.j
  %i.r = ptrtoint ptr %0 to i64
  store i64 %i.r, ptr %i.q, align 8, !tbaa !59
  %.not10.i.i.i.i.i = icmp eq ptr %i.g, %i.b
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN3upb13MessageDefPtrESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorIN3upb13MessageDefPtrESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.s = ptrtoaddr ptr %i.p to i64
  %i.t = add i64 %i.h, -8
  %i.u = sub i64 %i.t, %i.i                       ; 2 uses
  %i.v = lshr i64 %i.u, 3
  %i.w = add nuw nsw i64 %i.v, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.u, 56
  %i.x = sub i64 %i.s, %i.i
  %diff.check = icmp ult i64 %i.x, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.preheader12, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.w, 4611686018427387900      ; 3 uses
  %i.y = shl i64 %n.vec, 3                        ; 2 uses
  %i.z = getelementptr i8, ptr %i.p, i64 %i.y     ; 2 uses
  %i.aa = getelementptr i8, ptr %i.g, i64 %i.y
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ab = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.p, i64 %i.ab ; 2 uses
  %next.gep9 = getelementptr i8, ptr %i.g, i64 %i.ab ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !65)
  %i.ac = getelementptr i8, ptr %next.gep9, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep9, align 8, !tbaa !59, !alias.scope !65, !noalias !62
  %wide.load10 = load <2 x i64>, ptr %i.ac, align 8, !tbaa !59, !alias.scope !65, !noalias !62
  %i.ad = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !59, !alias.scope !62, !noalias !65
  store <2 x i64> %wide.load10, ptr %i.ad, align 8, !tbaa !59, !alias.scope !62, !noalias !65
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ae = icmp eq i64 %index.next, %n.vec
  br i1 %i.ae, label %middle.block, label %vector.body, !llvm.loop !67

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.w, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN3upb13MessageDefPtrESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader12

.lr.ph.i.i.i.i.i.preheader12:                     ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.p, %.lr.ph.i.i.i.i.i.preheader ], [ %i.z, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.g, %.lr.ph.i.i.i.i.i.preheader ], [ %i.aa, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader12, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader12 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader12 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !65)
  %i.af = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !59, !alias.scope !65, !noalias !62
  store i64 %i.af, ptr %.012.i.i.i.i.i, align 8, !tbaa !59, !alias.scope !62, !noalias !65
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ag, %i.b
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN3upb13MessageDefPtrESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !68

_ZNSt6vectorIN3upb13MessageDefPtrESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorIN3upb13MessageDefPtrESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorIN3upb13MessageDefPtrESaIS1_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.z, %middle.block ], [ %i.ah, %.lr.ph.i.i.i.i.i ]
  %i.ai = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorIN3upb13MessageDefPtrESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN3upb13MessageDefPtrESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.j) #14
  br label %_ZNSt6vectorIN3upb13MessageDefPtrESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIN3upb13MessageDefPtrESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.e, %_ZNSt6vectorIN3upb13MessageDefPtrESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i
  store ptr %i.p, ptr %1, align 8, !tbaa !61
  store ptr %i.ai, ptr %i.a, align 8, !tbaa !55
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.n
  store ptr %i.aj, ptr %i.c, align 8, !tbaa !58
  br label %_ZNSt6vectorIN3upb13MessageDefPtrESaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIN3upb13MessageDefPtrESaIS1_EE9push_backERKS1_.exit: ; preds = %bb.b, %_ZNSt6vectorIN3upb13MessageDefPtrESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i
  %i.ak = tail call noundef i32 @upb_MessageDef_NestedMessageCount(ptr noundef %0)
  %i.al = icmp sgt i32 %i.ak, 0
  br i1 %i.al, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %_ZNSt6vectorIN3upb13MessageDefPtrESaIS1_EE9push_backERKS1_.exit
  ret void

.lr.ph:                                           ; preds = %_ZNSt6vectorIN3upb13MessageDefPtrESaIS1_EE9push_backERKS1_.exit, %.lr.ph
  %.06 = phi i32 [ %i.an, %.lr.ph ], [ 0, %_ZNSt6vectorIN3upb13MessageDefPtrESaIS1_EE9push_backERKS1_.exit ] ; 2 uses
  %i.am = tail call ptr @upb_MessageDef_NestedMessage(ptr noundef %0, i32 noundef %.06)
  tail call void @_ZN3upb9generator11AddMessagesENS_13MessageDefPtrEPSt6vectorIS1_SaIS1_EE(ptr %i.am, ptr noundef nonnull %1)
  %i.an = add nuw nsw i32 %.06, 1                 ; 2 uses
  %i.ao = tail call noundef i32 @upb_MessageDef_NestedMessageCount(ptr noundef %0)
  %i.ap = icmp slt i32 %i.an, %i.ao
  br i1 %i.ap, label %.lr.ph, label %._crit_edge, !llvm.loop !69
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3upb9generator14SortedMessagesENS_10FileDefPtrE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.7") align 8 captures(none) initializes((0, 24)) %0, ptr %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ %i.k, %bb.f ]     ; 3 uses
  %i.a = invoke noundef i32 @upb_FileDef_TopLevelMessageCount(ptr noundef %1)
          to label %_ZNK3upb10FileDefPtr22toplevel_message_countEv.exit unwind label %bb.c

_ZNK3upb10FileDefPtr22toplevel_message_countEv.exit: ; preds = %bb.b
  %i.b = icmp slt i32 %.0, %i.a
  br i1 %i.b, label %bb.e, label %bb.g

bb.c:                                             ; preds = %bb.e, %bb.b, %_ZNK3upb10FileDefPtr16toplevel_messageEi.exit
  %i.c = landingpad { ptr, i32 }
          cleanup
  %i.d = load ptr, ptr %0, align 8, !tbaa !61     ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN3upb13MessageDefPtrESaIS1_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !58
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.i) #14
  br label %_ZNSt6vectorIN3upb13MessageDefPtrESaIS1_EED2Ev.exit

_ZNSt6vectorIN3upb13MessageDefPtrESaIS1_EED2Ev.exit: ; preds = %bb.c, %bb.d
  resume { ptr, i32 } %i.c

bb.e:                                             ; preds = %_ZNK3upb10FileDefPtr22toplevel_message_countEv.exit
  %i.j = invoke ptr @upb_FileDef_TopLevelMessage(ptr noundef %1, i32 noundef %.0)
          to label %_ZNK3upb10FileDefPtr16toplevel_messageEi.exit unwind label %bb.c

_ZNK3upb10FileDefPtr16toplevel_messageEi.exit:    ; preds = %bb.e
  invoke void @_ZN3upb9generator11AddMessagesENS_13MessageDefPtrEPSt6vectorIS1_SaIS1_EE(ptr %i.j, ptr noundef nonnull %0)
          to label %bb.f unwind label %bb.c

bb.f:                                             ; preds = %_ZNK3upb10FileDefPtr16toplevel_messageEi.exit
  %i.k = add nuw nsw i32 %.0, 1
  br label %bb.b, !llvm.loop !70

bb.g:                                             ; preds = %_ZNK3upb10FileDefPtr22toplevel_message_countEv.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3upb9generator24AddExtensionsFromMessageENS_13MessageDefPtrEPSt6vectorINS_11FieldDefPtrESaIS3_EE(ptr %0, ptr noundef captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef i32 @upb_MessageDef_NestedExtensionCount(ptr noundef %0)
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  br label %bb.b

.preheader:                                       ; preds = %_ZNSt6vectorIN3upb11FieldDefPtrESaIS1_EE9push_backEOS1_.exit, %bb.a
  %i.e = tail call noundef i32 @upb_MessageDef_NestedMessageCount(ptr noundef %0)
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %.lr.ph15, label %._crit_edge

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN3upb11FieldDefPtrESaIS1_EE9push_backEOS1_.exit
  %.013 = phi i32 [ 0, %.lr.ph ], [ %i.ap, %_ZNSt6vectorIN3upb11FieldDefPtrESaIS1_EE9push_backEOS1_.exit ] ; 2 uses
  %i.g = tail call ptr @upb_MessageDef_NestedExtension(ptr noundef %0, i32 noundef %.013) ; 2 uses
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !71   ; 6 uses
  %i.i = load ptr, ptr %i.d, align 8, !tbaa !74
  %.not.i.i = icmp eq ptr %i.h, %i.i
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = ptrtoint ptr %i.g to i64
  store i64 %i.j, ptr %i.h, align 8, !tbaa !75
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.k, ptr %i.c, align 8, !tbaa !71
  br label %_ZNSt6vectorIN3upb11FieldDefPtrESaIS1_EE9push_backEOS1_.exit

bb.d:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %1, align 8, !tbaa !77     ; 7 uses
  %i.m = ptrtoint ptr %i.h to i64                 ; 2 uses
  %i.n = ptrtoint ptr %i.l to i64                 ; 3 uses
  %i.o = sub i64 %i.m, %i.n                       ; 4 uses
  %i.p = icmp eq i64 %i.o, 9223372036854775800
  br i1 %i.p, label %bb.e, label %_ZNKSt6vectorIN3upb11FieldDefPtrESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #12
  unreachable

_ZNKSt6vectorIN3upb11FieldDefPtrESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.d
  %i.q = ashr exact i64 %i.o, 3                   ; 2 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.q, i64 1)
  %i.r = add nsw i64 %.sroa.speculated.i.i.i.i, %i.q ; 2 uses
  %i.s = tail call i64 @llvm.umin.i64(i64 %i.r, i64 1152921504606846975) ; 2 uses
  %.not.i.i.i.i = icmp ne i64 %i.r, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.t = shl nuw nsw i64 %i.s, 3
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #13 ; 8 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.o
  %i.w = ptrtoint ptr %i.g to i64
  store i64 %i.w, ptr %i.v, align 8, !tbaa !75
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.l, %i.h
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN3upb11FieldDefPtrESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %_ZNKSt6vectorIN3upb11FieldDefPtrESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.x = ptrtoaddr ptr %i.u to i64
  %i.y = add i64 %i.m, -8
  %i.z = sub i64 %i.y, %i.n                       ; 2 uses
  %i.aa = lshr i64 %i.z, 3
  %i.ab = add nuw nsw i64 %i.aa, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.z, 24
  %i.ac = sub i64 %i.x, %i.n
  %diff.check = icmp ult i64 %i.ac, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.preheader22, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.ab, 4611686018427387900     ; 3 uses
  %i.ad = shl i64 %n.vec, 3                       ; 2 uses
  %i.ae = getelementptr i8, ptr %i.u, i64 %i.ad   ; 2 uses
  %i.af = getelementptr i8, ptr %i.l, i64 %i.ad
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ag = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.u, i64 %i.ag ; 2 uses
  %next.gep19 = getelementptr i8, ptr %i.l, i64 %i.ag ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !78)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81)
  %i.ah = getelementptr i8, ptr %next.gep19, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep19, align 8, !tbaa !75, !alias.scope !81, !noalias !78
  %wide.load20 = load <2 x i64>, ptr %i.ah, align 8, !tbaa !75, !alias.scope !81, !noalias !78
  %i.ai = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !75, !alias.scope !78, !noalias !81
  store <2 x i64> %wide.load20, ptr %i.ai, align 8, !tbaa !75, !alias.scope !78, !noalias !81
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aj = icmp eq i64 %index.next, %n.vec
  br i1 %i.aj, label %middle.block, label %vector.body, !llvm.loop !83

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ab, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN3upb11FieldDefPtrESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader22

.lr.ph.i.i.i.i.i.i.preheader22:                   ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.u, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ae, %middle.block ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.l, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.af, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader22, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader22 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader22 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !78)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !81)
  %i.ak = load i64, ptr %.0911.i.i.i.i.i.i, align 8, !tbaa !75, !alias.scope !81, !noalias !78
  store i64 %i.ak, ptr %.012.i.i.i.i.i.i, align 8, !tbaa !75, !alias.scope !78, !noalias !81
  %i.al = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.al, %i.h
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN3upb11FieldDefPtrESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !84

_ZNSt6vectorIN3upb11FieldDefPtrESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %_ZNKSt6vectorIN3upb11FieldDefPtrESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.u, %_ZNKSt6vectorIN3upb11FieldDefPtrESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.ae, %middle.block ], [ %i.am, %.lr.ph.i.i.i.i.i.i ]
  %i.an = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN3upb11FieldDefPtrESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN3upb11FieldDefPtrESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.o) #14
  br label %_ZNSt6vectorIN3upb11FieldDefPtrESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIN3upb11FieldDefPtrESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.f, %_ZNSt6vectorIN3upb11FieldDefPtrESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  store ptr %i.u, ptr %1, align 8, !tbaa !77
  store ptr %i.an, ptr %i.c, align 8, !tbaa !71
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.s
  store ptr %i.ao, ptr %i.d, align 8, !tbaa !74
  br label %_ZNSt6vectorIN3upb11FieldDefPtrESaIS1_EE9push_backEOS1_.exit

_ZNSt6vectorIN3upb11FieldDefPtrESaIS1_EE9push_backEOS1_.exit: ; preds = %bb.c, %_ZNSt6vectorIN3upb11FieldDefPtrESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i
  %i.ap = add nuw nsw i32 %.013, 1                ; 2 uses
  %i.aq = tail call noundef i32 @upb_MessageDef_NestedExtensionCount(ptr noundef %0)
  %i.ar = icmp slt i32 %i.ap, %i.aq
  br i1 %i.ar, label %bb.b, label %.preheader, !llvm.loop !85

._crit_edge:                                      ; preds = %.lr.ph15, %.preheader
  ret void

.lr.ph15:                                         ; preds = %.preheader, %.lr.ph15
  %.0714 = phi i32 [ %i.at, %.lr.ph15 ], [ 0, %.preheader ] ; 2 uses
  %i.as = tail call ptr @upb_MessageDef_NestedMessage(ptr noundef %0, i32 noundef %.0714)
  tail call void @_ZN3upb9generator24AddExtensionsFromMessageENS_13MessageDefPtrEPSt6vectorINS_11FieldDefPtrESaIS3_EE(ptr %i.as, ptr noundef %1)
  %i.at = add nuw nsw i32 %.0714, 1               ; 2 uses
  %i.au = tail call noundef i32 @upb_MessageDef_NestedMessageCount(ptr noundef %0)
  %i.av = icmp slt i32 %i.at, %i.au
  br i1 %i.av, label %.lr.ph15, label %._crit_edge, !llvm.loop !86
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3upb9generator16SortedExtensionsENS_10FileDefPtrE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.12") align 8 captures(none) initializes((0, 24)) %0, ptr %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
_ZNK3upb10FileDefPtr24toplevel_extension_countEv.exit:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = tail call noundef i32 @upb_FileDef_TopLevelExtensionCount(ptr noundef %1) ; 3 uses
  %i.b = sext i32 %i.a to i64                     ; 2 uses
  %i.c = icmp slt i32 %i.a, 0
  br i1 %i.c, label %.noexc, label %bb.a

.noexc:                                           ; preds = %_ZNK3upb10FileDefPtr24toplevel_extension_countEv.exit
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #12
  unreachable

bb.a:                                             ; preds = %_ZNK3upb10FileDefPtr24toplevel_extension_countEv.exit
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %_ZNSt6vectorIN3upb11FieldDefPtrESaIS1_EE7reserveEm.exit, label %_ZNSt12_Vector_baseIN3upb11FieldDefPtrESaIS1_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIN3upb11FieldDefPtrESaIS1_EE11_M_allocateEm.exit.i: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = shl nuw nsw i64 %i.b, 3
  %i.g = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #13 ; 4 uses
  store ptr %i.g, ptr %0, align 8, !tbaa !77
  store ptr %i.g, ptr %i.e, align 8, !tbaa !71
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.b ; 2 uses
  store ptr %i.h, ptr %i.d, align 8, !tbaa !74
  br label %_ZNSt6vectorIN3upb11FieldDefPtrESaIS1_EE7reserveEm.exit

_ZNSt6vectorIN3upb11FieldDefPtrESaIS1_EE7reserveEm.exit: ; preds = %bb.a, %_ZNSt12_Vector_baseIN3upb11FieldDefPtrESaIS1_EE11_M_allocateEm.exit.i
  %.promoted33 = phi ptr [ null, %bb.a ], [ %i.g, %_ZNSt12_Vector_baseIN3upb11FieldDefPtrESaIS1_EE11_M_allocateEm.exit.i ] ; 2 uses
  %.promoted = phi ptr [ null, %bb.a ], [ %i.h, %_ZNSt12_Vector_baseIN3upb11FieldDefPtrESaIS1_EE11_M_allocateEm.exit.i ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZNSt6vectorIN3upb11FieldDefPtrESaIS1_EE7reserveEm.exit, %_ZNSt6vectorIN3upb11FieldDefPtrESaIS1_EE9push_backEOS1_.exit
  %i.j = phi ptr [ %i.av, %_ZNSt6vectorIN3upb11FieldDefPtrESaIS1_EE9push_backEOS1_.exit ], [ %.promoted33, %_ZNSt6vectorIN3upb11FieldDefPtrESaIS1_EE7reserveEm.exit ] ; 6 uses
  %i.k = phi ptr [ %i.aw, %_ZNSt6vectorIN3upb11FieldDefPtrESaIS1_EE9push_backEOS1_.exit ], [ %.promoted33, %_ZNSt6vectorIN3upb11FieldDefPtrESaIS1_EE7reserveEm.exit ] ; 15 uses
  %i.l = phi ptr [ %i.ax, %_ZNSt6vectorIN3upb11FieldDefPtrESaIS1_EE9push_backEOS1_.exit ], [ %.promoted, %_ZNSt6vectorIN3upb11FieldDefPtrESaIS1_EE7reserveEm.exit ] ; 6 uses
  %.08 = phi i32 [ %i.ay, %_ZNSt6vectorIN3upb11FieldDefPtrESaIS1_EE9push_backEOS1_.exit ], [ 0, %_ZNSt6vectorIN3upb11FieldDefPtrESaIS1_EE7reserveEm.exit ] ; 3 uses
  %i.m = invoke noundef i32 @upb_FileDef_TopLevelExtensionCount(ptr noundef %1)
          to label %_ZNK3upb10FileDefPtr24toplevel_extension_countEv.exit16 unwind label %bb.c

_ZNK3upb10FileDefPtr24toplevel_extension_countEv.exit16: ; preds = %bb.b
  %i.n = icmp slt i32 %.08, %i.m
  br i1 %i.n, label %bb.d, label %.preheader

.preheader:                                       ; preds = %_ZNK3upb10FileDefPtr24toplevel_extension_countEv.exit16
  store ptr %i.l, ptr %i.d, align 8
  store ptr %i.k, ptr %0, align 8
  br label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.o = landingpad { ptr, i32 }
          cleanup
  store ptr %i.l, ptr %i.d, align 8
  store ptr %i.k, ptr %0, align 8
  br label %bb.n

bb.d:                                             ; preds = %_ZNK3upb10FileDefPtr24toplevel_extension_countEv.exit16
  %i.p = invoke ptr @upb_FileDef_TopLevelExtension(ptr noundef %1, i32 noundef %.08)
          to label %_ZNK3upb10FileDefPtr18toplevel_extensionEi.exit unwind label %.loopexit ; 2 uses

_ZNK3upb10FileDefPtr18toplevel_extensionEi.exit:  ; preds = %bb.d
  %.not.i.i = icmp eq ptr %i.j, %i.l
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZNK3upb10FileDefPtr18toplevel_extensionEi.exit
  %i.q = ptrtoint ptr %i.p to i64
  store i64 %i.q, ptr %i.j, align 8, !tbaa !75
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  store ptr %i.r, ptr %i.i, align 8, !tbaa !71
  br label %_ZNSt6vectorIN3upb11FieldDefPtrESaIS1_EE9push_backEOS1_.exit

bb.f:                                             ; preds = %_ZNK3upb10FileDefPtr18toplevel_extensionEi.exit
  %i.s = ptrtoint ptr %i.j to i64                 ; 2 uses
  %i.t = ptrtoint ptr %i.k to i64                 ; 3 uses
  %i.u = sub i64 %i.s, %i.t                       ; 4 uses
  %i.v = icmp eq i64 %i.u, 9223372036854775800
  br i1 %i.v, label %bb.g, label %_ZNKSt6vectorIN3upb11FieldDefPtrESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.g:                                             ; preds = %bb.f
  store ptr %i.l, ptr %i.d, align 8
  store ptr %i.k, ptr %0, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #12
          to label %.noexc19 unwind label %.loopexit.split-lp

.noexc19:                                         ; preds = %bb.g
  unreachable

_ZNKSt6vectorIN3upb11FieldDefPtrESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.f
  %i.w = ashr exact i64 %i.u, 3                   ; 2 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.w, i64 1)
  %i.x = add nsw i64 %.sroa.speculated.i.i.i.i, %i.w ; 2 uses
  %i.y = tail call i64 @llvm.umin.i64(i64 %i.x, i64 1152921504606846975) ; 2 uses
  %.not.i.i.i.i18 = icmp ne i64 %i.x, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i18)
  %i.z = shl nuw nsw i64 %i.y, 3
  %i.aa = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.z) #13
          to label %.noexc20 unwind label %.loopexit ; 8 uses

.noexc20:                                         ; preds = %_ZNKSt6vectorIN3upb11FieldDefPtrESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.u
  %i.ac = ptrtoint ptr %i.p to i64
  store i64 %i.ac, ptr %i.ab, align 8, !tbaa !75
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.k, %i.j
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN3upb11FieldDefPtrESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %.noexc20
  %i.ad = ptrtoaddr ptr %i.aa to i64
  %i.ae = add i64 %i.s, -8
  %i.af = sub i64 %i.ae, %i.t                     ; 2 uses
  %i.ag = lshr i64 %i.af, 3
  %i.ah = add nuw nsw i64 %i.ag, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.af, 24
  %i.ai = sub i64 %i.ad, %i.t
  %diff.check = icmp ult i64 %i.ai, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.preheader77, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.ah, 4611686018427387900     ; 3 uses
  %i.aj = shl i64 %n.vec, 3                       ; 2 uses
  %i.ak = getelementptr i8, ptr %i.aa, i64 %i.aj  ; 2 uses
  %i.al = getelementptr i8, ptr %i.k, i64 %i.aj
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.am = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.aa, i64 %i.am ; 2 uses
  %next.gep74 = getelementptr i8, ptr %i.k, i64 %i.am ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !87)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !90)
  %i.an = getelementptr i8, ptr %next.gep74, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep74, align 8, !tbaa !75, !alias.scope !90, !noalias !87
  %wide.load75 = load <2 x i64>, ptr %i.an, align 8, !tbaa !75, !alias.scope !90, !noalias !87
  %i.ao = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !75, !alias.scope !87, !noalias !90
  store <2 x i64> %wide.load75, ptr %i.ao, align 8, !tbaa !75, !alias.scope !87, !noalias !90
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ap = icmp eq i64 %index.next, %n.vec
  br i1 %i.ap, label %middle.block, label %vector.body, !llvm.loop !92

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ah, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN3upb11FieldDefPtrESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader77

.lr.ph.i.i.i.i.i.i.preheader77:                   ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.aa, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ak, %middle.block ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.k, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.al, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader77, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.as, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader77 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.ar, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader77 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !87)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !90)
  %i.aq = load i64, ptr %.0911.i.i.i.i.i.i, align 8, !tbaa !75, !alias.scope !90, !noalias !87
  store i64 %i.aq, ptr %.012.i.i.i.i.i.i, align 8, !tbaa !75, !alias.scope !87, !noalias !90
  %i.ar = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ar, %i.j
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN3upb11FieldDefPtrESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !93

_ZNSt6vectorIN3upb11FieldDefPtrESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %.noexc20
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.aa, %.noexc20 ], [ %i.ak, %middle.block ], [ %i.as, %.lr.ph.i.i.i.i.i.i ]
  %i.at = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i23.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN3upb11FieldDefPtrESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIN3upb11FieldDefPtrESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.u) #14
  br label %_ZNSt6vectorIN3upb11FieldDefPtrESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIN3upb11FieldDefPtrESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.h, %_ZNSt6vectorIN3upb11FieldDefPtrESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  store ptr %i.at, ptr %i.i, align 8, !tbaa !71
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.y
  br label %_ZNSt6vectorIN3upb11FieldDefPtrESaIS1_EE9push_backEOS1_.exit

_ZNSt6vectorIN3upb11FieldDefPtrESaIS1_EE9push_backEOS1_.exit: ; preds = %_ZNSt6vectorIN3upb11FieldDefPtrESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, %bb.e
  %i.av = phi ptr [ %i.at, %_ZNSt6vectorIN3upb11FieldDefPtrESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %i.r, %bb.e ]
  %i.aw = phi ptr [ %i.aa, %_ZNSt6vectorIN3upb11FieldDefPtrESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %i.k, %bb.e ]
  %i.ax = phi ptr [ %i.au, %_ZNSt6vectorIN3upb11FieldDefPtrESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %i.l, %bb.e ]
  %i.ay = add nuw nsw i32 %.08, 1
  br label %bb.b, !llvm.loop !94

.loopexit:                                        ; preds = %bb.d, %_ZNKSt6vectorIN3upb11FieldDefPtrESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  store ptr %i.l, ptr %i.d, align 8
  store ptr %i.k, ptr %0, align 8
  br label %bb.n

.loopexit.split-lp:                               ; preds = %bb.g
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.i:                                             ; preds = %.preheader, %bb.l
  %.0 = phi i32 [ %i.bd, %bb.l ], [ 0, %.preheader ] ; 3 uses
  %i.az = invoke noundef i32 @upb_FileDef_TopLevelMessageCount(ptr noundef %1)
          to label %_ZNK3upb10FileDefPtr22toplevel_message_countEv.exit unwind label %bb.j

_ZNK3upb10FileDefPtr22toplevel_message_countEv.exit: ; preds = %bb.i
  %i.ba = icmp slt i32 %.0, %i.az
  br i1 %i.ba, label %bb.k, label %bb.m

bb.j:                                             ; preds = %bb.k, %bb.i, %_ZNK3upb10FileDefPtr16toplevel_messageEi.exit
  %i.bb = landingpad { ptr, i32 }
          cleanup
  %.pre = load ptr, ptr %0, align 8, !tbaa !77
  br label %bb.n

bb.k:                                             ; preds = %_ZNK3upb10FileDefPtr22toplevel_message_countEv.exit
  %i.bc = invoke ptr @upb_FileDef_TopLevelMessage(ptr noundef %1, i32 noundef %.0)
          to label %_ZNK3upb10FileDefPtr16toplevel_messageEi.exit unwind label %bb.j

_ZNK3upb10FileDefPtr16toplevel_messageEi.exit:    ; preds = %bb.k
  invoke void @_ZN3upb9generator24AddExtensionsFromMessageENS_13MessageDefPtrEPSt6vectorINS_11FieldDefPtrESaIS3_EE(ptr %i.bc, ptr noundef nonnull %0)
          to label %bb.l unwind label %bb.j

bb.l:                                             ; preds = %_ZNK3upb10FileDefPtr16toplevel_messageEi.exit
  %i.bd = add nuw nsw i32 %.0, 1
  br label %bb.i, !llvm.loop !95

bb.m:                                             ; preds = %_ZNK3upb10FileDefPtr22toplevel_message_countEv.exit
  ret void

bb.n:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.c, %bb.j
  %i.be = phi ptr [ %i.k, %.loopexit.split-lp ], [ %.pre, %bb.j ], [ %i.k, %bb.c ], [ %i.k, %.loopexit ] ; 3 uses
  %.pn.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %i.bb, %bb.j ], [ %i.o, %bb.c ], [ %lpad.loopexit, %.loopexit ]
  %.not.i.i.i = icmp eq ptr %i.be, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN3upb11FieldDefPtrESaIS1_EED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !74
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = ptrtoint ptr %i.be to i64
  %i.bj = sub i64 %i.bh, %i.bi
  tail call void @_ZdlPvm(ptr noundef nonnull %i.be, i64 noundef %i.bj) #14
  br label %_ZNSt6vectorIN3upb11FieldDefPtrESaIS1_EED2Ev.exit

_ZNSt6vectorIN3upb11FieldDefPtrESaIS1_EED2Ev.exit: ; preds = %bb.n, %bb.o
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3upb9generator16FieldNumberOrderENS_13MessageDefPtrE(ptr dead_on_unwind noalias writable sret(%"class.std::vector.12") align 8 captures(none) initializes((0, 24)) %0, ptr %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = invoke noundef i32 @upb_MessageDef_FieldCount(ptr noundef %1)
          to label %_ZNK3upb13MessageDefPtr11field_countEv.exit unwind label %.loopexit.split-lp.loopexit.split-lp ; 3 uses

_ZNK3upb13MessageDefPtr11field_countEv.exit:      ; preds = %bb.a
  %i.b = sext i32 %i.a to i64                     ; 2 uses
  %i.c = icmp slt i32 %i.a, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZNK3upb13MessageDefPtr11field_countEv.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #12
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %_ZNK3upb13MessageDefPtr11field_countEv.exit
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %_ZNSt6vectorIN3upb11FieldDefPtrESaIS1_EE7reserveEm.exit, label %_ZNSt12_Vector_baseIN3upb11FieldDefPtrESaIS1_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseIN3upb11FieldDefPtrESaIS1_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.e = shl nuw nsw i64 %i.b, 3
  %i.f = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.e) #13
          to label %_ZNSt12_Vector_baseIN3upb11FieldDefPtrESaIS1_EE13_M_deallocateEPS1_m.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp ; 4 uses

_ZNSt12_Vector_baseIN3upb11FieldDefPtrESaIS1_EE13_M_deallocateEPS1_m.exit.i: ; preds = %_ZNSt12_Vector_baseIN3upb11FieldDefPtrESaIS1_EE11_M_allocateEm.exit.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.f, ptr %0, align 8, !tbaa !77
  store ptr %i.f, ptr %i.g, align 8, !tbaa !71
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.b ; 2 uses
  store ptr %i.h, ptr %i.d, align 8, !tbaa !74
  br label %_ZNSt6vectorIN3upb11FieldDefPtrESaIS1_EE7reserveEm.exit

_ZNSt6vectorIN3upb11FieldDefPtrESaIS1_EE7reserveEm.exit: ; preds = %bb.c, %_ZNSt12_Vector_baseIN3upb11FieldDefPtrESaIS1_EE13_M_deallocateEPS1_m.exit.i
  %.promoted44 = phi ptr [ null, %bb.c ], [ %i.f, %_ZNSt12_Vector_baseIN3upb11FieldDefPtrESaIS1_EE13_M_deallocateEPS1_m.exit.i ] ; 2 uses
  %.promoted = phi ptr [ null, %bb.c ], [ %i.h, %_ZNSt12_Vector_baseIN3upb11FieldDefPtrESaIS1_EE13_M_deallocateEPS1_m.exit.i ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIN3upb11FieldDefPtrESaIS1_EE7reserveEm.exit, %_ZNSt6vectorIN3upb11FieldDefPtrESaIS1_EE9push_backEOS1_.exit
  %i.j = phi ptr [ %i.bo, %_ZNSt6vectorIN3upb11FieldDefPtrESaIS1_EE9push_backEOS1_.exit ], [ %.promoted44, %_ZNSt6vectorIN3upb11FieldDefPtrESaIS1_EE7reserveEm.exit ] ; 12 uses
  %i.k = phi ptr [ %i.bp, %_ZNSt6vectorIN3upb11FieldDefPtrESaIS1_EE9push_backEOS1_.exit ], [ %.promoted44, %_ZNSt6vectorIN3upb11FieldDefPtrESaIS1_EE7reserveEm.exit ] ; 21 uses
  %i.l = phi ptr [ %i.bq, %_ZNSt6vectorIN3upb11FieldDefPtrESaIS1_EE9push_backEOS1_.exit ], [ %.promoted, %_ZNSt6vectorIN3upb11FieldDefPtrESaIS1_EE7reserveEm.exit ] ; 6 uses
  %.06 = phi i32 [ %i.br, %_ZNSt6vectorIN3upb11FieldDefPtrESaIS1_EE9push_backEOS1_.exit ], [ 0, %_ZNSt6vectorIN3upb11FieldDefPtrESaIS1_EE7reserveEm.exit ] ; 3 uses
  %i.m = invoke noundef i32 @upb_MessageDef_FieldCount(ptr noundef %1)
          to label %_ZNK3upb13MessageDefPtr11field_countEv.exit13 unwind label %bb.i

_ZNK3upb13MessageDefPtr11field_countEv.exit13:    ; preds = %bb.d
  %i.n = icmp slt i32 %.06, %i.m
  br i1 %i.n, label %bb.j, label %bb.e

bb.e:                                             ; preds = %_ZNK3upb13MessageDefPtr11field_countEv.exit13
  store ptr %i.l, ptr %i.d, align 8
  store ptr %i.k, ptr %0, align 8
  %.not.i.i = icmp eq ptr %i.k, %i.j
  br i1 %.not.i.i, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN3upb11FieldDefPtrESt6vectorIS3_SaIS3_EEEEZNS2_9generator16FieldNumberOrderENS2_13MessageDefPtrEE3$_0EvT_SC_T0_.exit", label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = ptrtoint ptr %i.j to i64
  %i.p = ptrtoint ptr %i.k to i64
  %i.q = sub i64 %i.o, %i.p                       ; 2 uses
  %i.r = ashr exact i64 %i.q, 3
  %i.s = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.r, i1 true)
  %i.t = shl nuw nsw i64 %i.s, 1
  %i.u = xor i64 %i.t, 126
  invoke fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN3upb11FieldDefPtrESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_comp_iterIZNS2_9generator16FieldNumberOrderENS2_13MessageDefPtrEE3$_0EEEvT_SF_T0_T1_"(ptr %i.k, ptr %i.j, i64 noundef %i.u)
          to label %.noexc16 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc16:                                         ; preds = %bb.f
  %i.v = icmp sgt i64 %i.q, 128
  br i1 %i.v, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.noexc16
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 128 ; 3 uses
  invoke fastcc void @"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN3upb11FieldDefPtrESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_9generator16FieldNumberOrderENS2_13MessageDefPtrEE3$_0EEEvT_SF_T0_"(ptr %i.k, ptr nonnull %i.w)
          to label %.noexc17 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc17:                                         ; preds = %bb.g
  %.not6.i.i.i.i = icmp eq ptr %i.w, %i.j
  br i1 %.not6.i.i.i.i, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN3upb11FieldDefPtrESt6vectorIS3_SaIS3_EEEEZNS2_9generator16FieldNumberOrderENS2_13MessageDefPtrEE3$_0EvT_SC_T0_.exit", label %.lr.ph.i.i.i.i14

.lr.ph.i.i.i.i14:                                 ; preds = %.noexc17, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3upb11FieldDefPtrESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZNS2_9generator16FieldNumberOrderENS2_13MessageDefPtrEE3$_0EEEvT_T0_.exit.i.i.i.i"
  %.sroa.0.07.i.i.i.i = phi ptr [ %i.ag, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3upb11FieldDefPtrESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZNS2_9generator16FieldNumberOrderENS2_13MessageDefPtrEE3$_0EEEvT_T0_.exit.i.i.i.i" ], [ %i.w, %.noexc17 ] ; 5 uses
  %i.x = load i64, ptr %.sroa.0.07.i.i.i.i, align 8, !tbaa !75 ; 2 uses
  %i.y = inttoptr i64 %i.x to ptr                 ; 2 uses
  %.sroa.0.07.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.07.i.i.i.i, i64 -8 ; 2 uses
  %.sroa.0.0.copyload.i8.i.i.i.i.i = load ptr, ptr %.sroa.0.07.i.i.i.i.i, align 8, !tbaa !75
  %i.z = invoke noundef i32 @upb_FieldDef_Number(ptr noundef %i.y)
          to label %.noexc18 unwind label %.loopexit.split-lp.loopexit

.noexc18:                                         ; preds = %.lr.ph.i.i.i.i14
  %i.aa = invoke noundef i32 @upb_FieldDef_Number(ptr noundef %.sroa.0.0.copyload.i8.i.i.i.i.i)
          to label %.noexc19 unwind label %.loopexit.split-lp.loopexit

.noexc19:                                         ; preds = %.noexc18
  %i.ab = icmp ult i32 %i.z, %i.aa
  br i1 %i.ab, label %.lr.ph.i.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3upb11FieldDefPtrESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZNS2_9generator16FieldNumberOrderENS2_13MessageDefPtrEE3$_0EEEvT_T0_.exit.i.i.i.i"

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc19, %.noexc21
  %.sroa.0.010.i.i.i.i.i = phi ptr [ %.sroa.0.0.i.i.i.i.i, %.noexc21 ], [ %.sroa.0.07.i.i.i.i.i, %.noexc19 ] ; 4 uses
  %.sroa.04.09.i.i.i.i.i = phi ptr [ %.sroa.0.010.i.i.i.i.i, %.noexc21 ], [ %.sroa.0.07.i.i.i.i, %.noexc19 ]
  %i.ac = load i64, ptr %.sroa.0.010.i.i.i.i.i, align 8, !tbaa !75
  store i64 %i.ac, ptr %.sroa.04.09.i.i.i.i.i, align 8, !tbaa !75
  %.sroa.0.0.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.010.i.i.i.i.i, i64 -8 ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %.sroa.0.0.i.i.i.i.i, align 8, !tbaa !75
  %i.ad = invoke noundef i32 @upb_FieldDef_Number(ptr noundef %i.y)
          to label %.noexc20 unwind label %.loopexit

.noexc20:                                         ; preds = %.lr.ph.i.i.i.i.i
  %i.ae = invoke noundef i32 @upb_FieldDef_Number(ptr noundef %.sroa.0.0.copyload.i.i.i.i.i.i)
          to label %.noexc21 unwind label %.loopexit

.noexc21:                                         ; preds = %.noexc20
  %i.af = icmp ult i32 %i.ad, %i.ae
  br i1 %i.af, label %.lr.ph.i.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3upb11FieldDefPtrESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZNS2_9generator16FieldNumberOrderENS2_13MessageDefPtrEE3$_0EEEvT_T0_.exit.i.i.i.i", !llvm.loop !96

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3upb11FieldDefPtrESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZNS2_9generator16FieldNumberOrderENS2_13MessageDefPtrEE3$_0EEEvT_T0_.exit.i.i.i.i": ; preds = %.noexc21, %.noexc19
  %.sroa.04.0.lcssa.i.i.i.i.i = phi ptr [ %.sroa.0.07.i.i.i.i, %.noexc19 ], [ %.sroa.0.010.i.i.i.i.i, %.noexc21 ]
  store i64 %i.x, ptr %.sroa.04.0.lcssa.i.i.i.i.i, align 8, !tbaa !75
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i15 = icmp eq ptr %i.ag, %i.j
  br i1 %.not.i.i.i.i15, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN3upb11FieldDefPtrESt6vectorIS3_SaIS3_EEEEZNS2_9generator16FieldNumberOrderENS2_13MessageDefPtrEE3$_0EvT_SC_T0_.exit", label %.lr.ph.i.i.i.i14, !llvm.loop !97

bb.h:                                             ; preds = %.noexc16
  invoke fastcc void @"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN3upb11FieldDefPtrESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_9generator16FieldNumberOrderENS2_13MessageDefPtrEE3$_0EEEvT_SF_T0_"(ptr %i.k, ptr %i.j)
          to label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN3upb11FieldDefPtrESt6vectorIS3_SaIS3_EEEEZNS2_9generator16FieldNumberOrderENS2_13MessageDefPtrEE3$_0EvT_SC_T0_.exit" unwind label %.loopexit.split-lp.loopexit.split-lp

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i, %.noexc20
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lpthread-pre-split

.loopexit.split-lp.loopexit:                      ; preds = %.noexc18, %.lr.ph.i.i.i.i14
  %lpad.loopexit32 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lpthread-pre-split

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.h, %bb.g, %bb.f, %_ZNSt12_Vector_baseIN3upb11FieldDefPtrESaIS1_EE11_M_allocateEm.exit.i, %bb.b, %bb.a
  %lpad.loopexit.split-lp33 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lpthread-pre-split

bb.i:                                             ; preds = %bb.d
  %i.ah = landingpad { ptr, i32 }
          cleanup
  store ptr %i.l, ptr %i.d, align 8
  store ptr %i.k, ptr %0, align 8
  br label %.loopexit.split-lp

bb.j:                                             ; preds = %_ZNK3upb13MessageDefPtr11field_countEv.exit13
  %i.ai = invoke ptr @upb_MessageDef_Field(ptr noundef %1, i32 noundef %.06)
          to label %_ZNK3upb13MessageDefPtr5fieldEi.exit unwind label %.loopexit35 ; 2 uses

_ZNK3upb13MessageDefPtr5fieldEi.exit:             ; preds = %bb.j
  %.not.i.i24 = icmp eq ptr %i.j, %i.l
  br i1 %.not.i.i24, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZNK3upb13MessageDefPtr5fieldEi.exit
  %i.aj = ptrtoint ptr %i.ai to i64
  store i64 %i.aj, ptr %i.j, align 8, !tbaa !75
  %i.ak = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  store ptr %i.ak, ptr %i.i, align 8, !tbaa !71
  br label %_ZNSt6vectorIN3upb11FieldDefPtrESaIS1_EE9push_backEOS1_.exit

bb.l:                                             ; preds = %_ZNK3upb13MessageDefPtr5fieldEi.exit
  %i.al = ptrtoint ptr %i.j to i64                ; 2 uses
  %i.am = ptrtoint ptr %i.k to i64                ; 3 uses
  %i.an = sub i64 %i.al, %i.am                    ; 4 uses
  %i.ao = icmp eq i64 %i.an, 9223372036854775800
  br i1 %i.ao, label %bb.m, label %_ZNKSt6vectorIN3upb11FieldDefPtrESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i

bb.m:                                             ; preds = %bb.l
  store ptr %i.l, ptr %i.d, align 8
  store ptr %i.k, ptr %0, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #12
          to label %.noexc26 unwind label %.loopexit.split-lp36

.noexc26:                                         ; preds = %bb.m
  unreachable

_ZNKSt6vectorIN3upb11FieldDefPtrESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.l
  %i.ap = ashr exact i64 %i.an, 3                 ; 2 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ap, i64 1)
  %i.aq = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ap ; 2 uses
  %i.ar = tail call i64 @llvm.umin.i64(i64 %i.aq, i64 1152921504606846975) ; 2 uses
  %.not.i.i.i.i25 = icmp ne i64 %i.aq, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i25)
  %i.as = shl nuw nsw i64 %i.ar, 3
  %i.at = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.as) #13
          to label %.noexc27 unwind label %.loopexit35 ; 8 uses

.noexc27:                                         ; preds = %_ZNKSt6vectorIN3upb11FieldDefPtrESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.an
  %i.av = ptrtoint ptr %i.ai to i64
  store i64 %i.av, ptr %i.au, align 8, !tbaa !75
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.k, %i.j
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN3upb11FieldDefPtrESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %.noexc27
  %i.aw = ptrtoaddr ptr %i.at to i64
  %i.ax = add i64 %i.al, -8
  %i.ay = sub i64 %i.ax, %i.am                    ; 2 uses
  %i.az = lshr i64 %i.ay, 3
  %i.ba = add nuw nsw i64 %i.az, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ay, 24
  %i.bb = sub i64 %i.aw, %i.am
  %diff.check = icmp ult i64 %i.bb, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.preheader99, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.ba, 4611686018427387900     ; 3 uses
  %i.bc = shl i64 %n.vec, 3                       ; 2 uses
  %i.bd = getelementptr i8, ptr %i.at, i64 %i.bc  ; 2 uses
  %i.be = getelementptr i8, ptr %i.k, i64 %i.bc
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bf = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.at, i64 %i.bf ; 2 uses
  %next.gep95 = getelementptr i8, ptr %i.k, i64 %i.bf ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !101)
  %i.bg = getelementptr i8, ptr %next.gep95, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep95, align 8, !tbaa !75, !alias.scope !101, !noalias !98
  %wide.load96 = load <2 x i64>, ptr %i.bg, align 8, !tbaa !75, !alias.scope !101, !noalias !98
  %i.bh = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !75, !alias.scope !98, !noalias !101
  store <2 x i64> %wide.load96, ptr %i.bh, align 8, !tbaa !75, !alias.scope !98, !noalias !101
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bi = icmp eq i64 %index.next, %n.vec
  br i1 %i.bi, label %middle.block, label %vector.body, !llvm.loop !103

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ba, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN3upb11FieldDefPtrESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader99

.lr.ph.i.i.i.i.i.i.preheader99:                   ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.at, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.bd, %middle.block ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %i.k, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.be, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader99, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.bl, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader99 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.bk, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader99 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !98)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !101)
  %i.bj = load i64, ptr %.0911.i.i.i.i.i.i, align 8, !tbaa !75, !alias.scope !101, !noalias !98
  store i64 %i.bj, ptr %.012.i.i.i.i.i.i, align 8, !tbaa !75, !alias.scope !98, !noalias !101
  %i.bk = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bk, %i.j
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN3upb11FieldDefPtrESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !104

_ZNSt6vectorIN3upb11FieldDefPtrESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %.noexc27
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.at, %.noexc27 ], [ %i.bd, %middle.block ], [ %i.bl, %.lr.ph.i.i.i.i.i.i ]
  %i.bm = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i23.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN3upb11FieldDefPtrESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIN3upb11FieldDefPtrESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.an) #14
  br label %_ZNSt6vectorIN3upb11FieldDefPtrESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i

_ZNSt6vectorIN3upb11FieldDefPtrESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i: ; preds = %bb.n, %_ZNSt6vectorIN3upb11FieldDefPtrESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i
  store ptr %i.bm, ptr %i.i, align 8, !tbaa !71
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.ar
  br label %_ZNSt6vectorIN3upb11FieldDefPtrESaIS1_EE9push_backEOS1_.exit

_ZNSt6vectorIN3upb11FieldDefPtrESaIS1_EE9push_backEOS1_.exit: ; preds = %_ZNSt6vectorIN3upb11FieldDefPtrESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i, %bb.k
  %i.bo = phi ptr [ %i.bm, %_ZNSt6vectorIN3upb11FieldDefPtrESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %i.ak, %bb.k ]
  %i.bp = phi ptr [ %i.at, %_ZNSt6vectorIN3upb11FieldDefPtrESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %i.k, %bb.k ]
  %i.bq = phi ptr [ %i.bn, %_ZNSt6vectorIN3upb11FieldDefPtrESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i ], [ %i.l, %bb.k ]
  %i.br = add nuw nsw i32 %.06, 1
  br label %bb.d, !llvm.loop !105

.loopexit35:                                      ; preds = %bb.j, %_ZNKSt6vectorIN3upb11FieldDefPtrESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit37 = landingpad { ptr, i32 }
          cleanup
  store ptr %i.l, ptr %i.d, align 8
  store ptr %i.k, ptr %0, align 8
  br label %.loopexit.split-lp

.loopexit.split-lp36:                             ; preds = %bb.m
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN3upb11FieldDefPtrESt6vectorIS3_SaIS3_EEEEZNS2_9generator16FieldNumberOrderENS2_13MessageDefPtrEE3$_0EvT_SC_T0_.exit": ; preds = %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN3upb11FieldDefPtrESt6vectorIS3_SaIS3_EEEENS0_5__ops14_Val_comp_iterIZNS2_9generator16FieldNumberOrderENS2_13MessageDefPtrEE3$_0EEEvT_T0_.exit.i.i.i.i", %.noexc17, %bb.e, %bb.h
  ret void

.loopexit.split-lpthread-pre-split:               ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit
  %.pn.pn.ph = phi { ptr, i32 } [ %lpad.loopexit32, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp33, %.loopexit.split-lp.loopexit.split-lp ]
  %.pr = load ptr, ptr %0, align 8, !tbaa !77
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lpthread-pre-split, %.loopexit35, %.loopexit.split-lp36, %bb.i
  %i.bs = phi ptr [ %.pr, %.loopexit.split-lpthread-pre-split ], [ %i.k, %.loopexit35 ], [ %i.k, %.loopexit.split-lp36 ], [ %i.k, %bb.i ] ; 3 uses
  %.pn.pn = phi { ptr, i32 } [ %.pn.pn.ph, %.loopexit.split-lpthread-pre-split ], [ %lpad.loopexit37, %.loopexit35 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp36 ], [ %i.ah, %bb.i ]
  %.not.i.i.i = icmp eq ptr %i.bs, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN3upb11FieldDefPtrESaIS1_EED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %.loopexit.split-lp
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !74
  %i.bv = ptrtoint ptr %i.bu to i64
  %i.bw = ptrtoint ptr %i.bs to i64
  %i.bx = sub i64 %i.bv, %i.bw
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bs, i64 noundef %i.bx) #14
  br label %_ZNSt6vectorIN3upb11FieldDefPtrESaIS1_EED2Ev.exit

_ZNSt6vectorIN3upb11FieldDefPtrESaIS1_EED2Ev.exit: ; preds = %.loopexit.split-lp, %bb.o
  resume { ptr, i32 } %.pn.pn
}

declare i32 @upb_MessageDef_NestedEnumCount(ptr noundef) local_unnamed_addr #2

declare ptr @upb_MessageDef_NestedEnum(ptr noundef, i32 noundef) local_unnamed_addr #2

declare zeroext i1 @upb_EnumDef_IsClosed(ptr noundef) local_unnamed_addr #2

declare i32 @upb_MessageDef_NestedMessageCount(ptr noundef) local_unnamed_addr #2

declare ptr @upb_MessageDef_NestedMessage(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @upb_FileDef_TopLevelEnumCount(ptr noundef) local_unnamed_addr #2

declare ptr @upb_FileDef_TopLevelEnum(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @upb_FileDef_TopLevelMessageCount(ptr noundef) local_unnamed_addr #2

declare ptr @upb_FileDef_TopLevelMessage(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @upb_EnumDef_ValueCount(ptr noundef) local_unnamed_addr #2

declare ptr @upb_EnumDef_Value(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @upb_EnumValueDef_Number(ptr noundef) local_unnamed_addr #2

declare i32 @upb_MessageDef_NestedExtensionCount(ptr noundef) local_unnamed_addr #2

declare ptr @upb_MessageDef_NestedExtension(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @upb_FileDef_TopLevelExtensionCount(ptr noundef) local_unnamed_addr #2

declare ptr @upb_FileDef_TopLevelExtension(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @upb_MessageDef_FieldCount(ptr noundef) local_unnamed_addr #2

declare ptr @upb_MessageDef_Field(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #3

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #4

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define internal fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN3upb10EnumDefPtrESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_comp_iterIZNS2_9generator11SortedEnumsENS2_10FileDefPtrENSB_10WhichEnumsEE3$_0EEEvT_SG_T0_T1_"(ptr %0, ptr %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = ashr exact i64 %i.c, 3                   ; 3 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN3upb10EnumDefPtrESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_9generator11SortedEnumsENS2_10FileDefPtrENSB_10WhichEnumsEE3$_0EEEvT_SG_SG_T0_.exit"

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph40

bb.b:                                             ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN3upb10EnumDefPtrESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_9generator11SortedEnumsENS2_10FileDefPtrENSB_10WhichEnumsEE3$_0EEET_SG_SG_T0_.exit"
  %i.h = icmp eq i64 %i.t, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph40, !llvm.loop !106

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.lcssa36 = phi i64 [ %i.d, %.lr.ph ], [ %i.bk, %bb.b ] ; 2 uses
  %storemerge23.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.012.1.i.i, %bb.b ]
  %i.i = add nsw i64 %.lcssa36, -2
  %i.j = lshr i64 %i.i, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %._crit_edge
  %.010.i.i.i = phi i64 [ %i.j, %._crit_edge ], [ %i.l, %bb.c ] ; 4 uses
  %i.k = getelementptr inbounds [8 x i8], ptr %0, i64 %.010.i.i.i
  %.sroa.03.0.copyload.i.i.i = load ptr, ptr %i.k, align 8, !tbaa !19
  tail call fastcc void @"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN3upb10EnumDefPtrESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZNS2_9generator11SortedEnumsENS2_10FileDefPtrENSB_10WhichEnumsEE3$_0EEEvT_T0_SH_T1_T2_"(ptr %0, i64 noundef %.010.i.i.i, i64 noundef %.lcssa36, ptr %.sroa.03.0.copyload.i.i.i)
  %.not.i.i.i = icmp eq i64 %.010.i.i.i, 0
  %i.l = add nsw i64 %.010.i.i.i, -1
  br i1 %.not.i.i.i, label %.lr.ph.i9.i, label %bb.c, !llvm.loop !107

.lr.ph.i9.i:                                      ; preds = %bb.c, %.lr.ph.i9.i
  %.sroa.0.03.i.i = phi ptr [ %i.m, %.lr.ph.i9.i ], [ %storemerge23.lcssa, %bb.c ]
  %i.m = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -8 ; 4 uses
  %.sroa.03.0.copyload.i.i10.i = load ptr, ptr %i.m, align 8, !tbaa !19
  %i.n = load i64, ptr %0, align 8, !tbaa !19
  store i64 %i.n, ptr %i.m, align 8, !tbaa !19
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.o, %i.a                       ; 2 uses
  %i.q = ashr exact i64 %i.p, 3
  tail call fastcc void @"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPN3upb10EnumDefPtrESt6vectorIS3_SaIS3_EEEElS3_NS0_5__ops15_Iter_comp_iterIZNS2_9generator11SortedEnumsENS2_10FileDefPtrENSB_10WhichEnumsEE3$_0EEEvT_T0_SH_T1_T2_"(ptr nonnull %0, i64 noundef 0, i64 noundef %i.q, ptr %.sroa.03.0.copyload.i.i10.i)
  %i.r = icmp sgt i64 %i.p, 8
  br i1 %i.r, label %.lr.ph.i9.i, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN3upb10EnumDefPtrESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_9generator11SortedEnumsENS2_10FileDefPtrENSB_10WhichEnumsEE3$_0EEEvT_SG_SG_T0_.exit", !llvm.loop !108

.lr.ph40:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2339 = phi ptr [ %.sroa.012.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.02438 = phi i64 [ %i.t, %bb.b ], [ %2, %.lr.ph ]
  %i.s = phi i64 [ %i.bk, %bb.b ], [ %i.d, %.lr.ph ]
  %i.t = add nsw i64 %.02438, -1                  ; 3 uses
  %i.u = lshr i64 %i.s, 1
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.u ; 7 uses
  %i.w = getelementptr inbounds i8, ptr %storemerge2339, i64 -8 ; 7 uses
  %.sroa.01.0.copyload.i.i.i = load ptr, ptr %i.f, align 8, !tbaa !19
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %i.v, align 8, !tbaa !19
  %i.x = tail call noundef ptr @upb_EnumDef_FullName(ptr noundef %.sroa.01.0.copyload.i.i.i)
  %i.y = tail call noundef ptr @upb_EnumDef_FullName(ptr noundef %.sroa.0.0.copyload.i.i.i)
  %i.z = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.x, ptr noundef nonnull dereferenceable(1) %i.y) #15
  %i.aa = icmp slt i32 %i.z, 0
  %.sroa.0.0.copyload.i27.i.i = load ptr, ptr %i.w, align 8, !tbaa !19 ; 2 uses
  br i1 %i.aa, label %bb.d, label %bb.i

bb.d:                                             ; preds = %.lr.ph40
  %.sroa.01.0.copyload.i26.i.i = load ptr, ptr %i.v, align 8, !tbaa !19
  %i.ab = tail call noundef ptr @upb_EnumDef_FullName(ptr noundef %.sroa.01.0.copyload.i26.i.i)
  %i.ac = tail call noundef ptr @upb_EnumDef_FullName(ptr noundef %.sroa.0.0.copyload.i27.i.i)
  %i.ad = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ab, ptr noundef nonnull dereferenceable(1) %i.ac) #15
  %i.ae = icmp slt i32 %i.ad, 0
  br i1 %i.ae, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %0, align 8, !tbaa !19
  %i.af = load i64, ptr %i.v, align 8, !tbaa !19
  store i64 %i.af, ptr %0, align 8, !tbaa !19
  store ptr %.sroa.0.0.copyload.i.i.i.i, ptr %i.v, align 8, !tbaa !19
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN3upb10EnumDefPtrESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_9generator11SortedEnumsENS2_10FileDefPtrENSB_10WhichEnumsEE3$_0EEEvT_SG_SG_SG_T0_.exit.i.preheader"

bb.f:                                             ; preds = %bb.d
  %.sroa.01.0.copyload.i28.i.i = load ptr, ptr %i.f, align 8, !tbaa !19
  %.sroa.0.0.copyload.i29.i.i = load ptr, ptr %i.w, align 8, !tbaa !19
  %i.ag = tail call noundef ptr @upb_EnumDef_FullName(ptr noundef %.sroa.01.0.copyload.i28.i.i)
  %i.ah = tail call noundef ptr @upb_EnumDef_FullName(ptr noundef %.sroa.0.0.copyload.i29.i.i)
  %i.ai = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ag, ptr noundef nonnull dereferenceable(1) %i.ah) #15
  %i.aj = icmp slt i32 %i.ai, 0
  %.sroa.0.0.copyload.i.i30.i.i = load ptr, ptr %0, align 8, !tbaa !19 ; 2 uses
  br i1 %i.aj, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ak = load i64, ptr %i.w, align 8, !tbaa !19
  store i64 %i.ak, ptr %0, align 8, !tbaa !19
  store ptr %.sroa.0.0.copyload.i.i30.i.i, ptr %i.w, align 8, !tbaa !19
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN3upb10EnumDefPtrESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_9generator11SortedEnumsENS2_10FileDefPtrENSB_10WhichEnumsEE3$_0EEEvT_SG_SG_SG_T0_.exit.i.preheader"

bb.h:                                             ; preds = %bb.f
  %i.al = load i64, ptr %i.f, align 8, !tbaa !19
  store i64 %i.al, ptr %0, align 8, !tbaa !19
  store ptr %.sroa.0.0.copyload.i.i30.i.i, ptr %i.f, align 8, !tbaa !19
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN3upb10EnumDefPtrESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterIZNS2_9generator11SortedEnumsENS2_10FileDefPtrENSB_10WhichEnumsEE3$_0EEEvT_SG_SG_SG_T0_.exit.i.preheader"

bb.i:                                             ; preds = %.lr.ph40
  %.sroa.01.0.copyload.i32.i.i = load ptr, ptr %i.f, align 8, !tbaa !19
  %i.am = tail call noundef ptr @upb_EnumDef_FullName(ptr noundef %.sroa.01.0.copyload.i32.i.i)
  %i.an = tail call noundef ptr @upb_EnumDef_FullName(ptr noundef %.sroa.0.0.copyload.i27.i.i)
  %i.ao = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.am, ptr noundef nonnull dereferenceable(1) %i.an) #15
end_hunk_0
