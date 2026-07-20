inline.NumInlined: 301
inline.NumDeleted: 163
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

$_ZNK4LIEF6ObjectneERKS0_ = comdat any

$_ZN4LIEF3ELF24SymbolVersionRequirementD2Ev = comdat any

$_ZN4LIEF3ELF24SymbolVersionRequirementD0Ev = comdat any

@_ZTVN4LIEF3ELF24SymbolVersionRequirementE = hidden unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr null, ptr @_ZNK4LIEF6ObjecteqERKS0_, ptr @_ZNK4LIEF6ObjectneERKS0_, ptr @_ZN4LIEF3ELF24SymbolVersionRequirementD2Ev, ptr @_ZN4LIEF3ELF24SymbolVersionRequirementD0Ev, ptr @_ZNK4LIEF3ELF24SymbolVersionRequirement6acceptERNS_7VisitorE] }, align 8
@.str = private unnamed_addr constant [16 x i8] c"vector::reserve\00", align 1
@_ZTVN4LIEF3ELF27SymbolVersionAuxRequirementE = external unnamed_addr constant { [7 x ptr] }, align 8
@_ZTVN4LIEF3ELF16SymbolVersionAuxE = external unnamed_addr constant { [7 x ptr] }, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1

@_ZN4LIEF3ELF24SymbolVersionRequirementC1ERKNS0_7details13Elf64_VerneedE = hidden unnamed_addr alias void (ptr, ptr), ptr @_ZN4LIEF3ELF24SymbolVersionRequirementC2ERKNS0_7details13Elf64_VerneedE
@_ZN4LIEF3ELF24SymbolVersionRequirementC1ERKNS0_7details13Elf32_VerneedE = hidden unnamed_addr alias void (ptr, ptr), ptr @_ZN4LIEF3ELF24SymbolVersionRequirementC2ERKNS0_7details13Elf32_VerneedE
@_ZN4LIEF3ELF24SymbolVersionRequirementC1ERKS1_ = hidden unnamed_addr alias void (ptr, ptr), ptr @_ZN4LIEF3ELF24SymbolVersionRequirementC2ERKS1_

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4LIEF3ELF24SymbolVersionRequirementC2ERKNS0_7details13Elf64_VerneedE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(16) %1) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN4LIEF6ObjectC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #13
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4LIEF3ELF24SymbolVersionRequirementE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load i16, ptr %1, align 1
  store i16 %i.c, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store ptr %i.e, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 0, ptr %i.f, align 8
  store i8 0, ptr %i.e, align 8
  ret void
}

declare void @_ZN4LIEF6ObjectC2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4LIEF3ELF24SymbolVersionRequirementC2ERKNS0_7details13Elf32_VerneedE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(16) %1) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN4LIEF6ObjectC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #13
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4LIEF3ELF24SymbolVersionRequirementE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load i16, ptr %1, align 1
  store i16 %i.c, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store ptr %i.e, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 0, ptr %i.f, align 8
  store i8 0, ptr %i.e, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4LIEF3ELF24SymbolVersionRequirementC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  tail call void @_ZN4LIEF6ObjectC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #13
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4LIEF3ELF24SymbolVersionRequirementE, i64 16), ptr %0, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = load i16, ptr %i.e, align 8
  store i16 %i.f, ptr %i.d, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  store ptr %i.i, ptr %i.g, align 8
  %i.j = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.l = load i64, ptr %i.k, align 8              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  store i64 %i.l, ptr %i.b, align 8
  %i.m = icmp ugt i64 %i.l, 15
  br i1 %i.m, label %bb.b, label %._crit_edge.i.i

bb.b:                                             ; preds = %bb.a
  %i.n = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) #13 ; 2 uses
  store ptr %i.n, ptr %i.g, align 8
  %i.o = load i64, ptr %i.b, align 8
  store i64 %i.o, ptr %i.i, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.b, %bb.a
  %i.p = phi ptr [ %i.n, %bb.b ], [ %i.i, %bb.a ] ; 2 uses
  switch i64 %i.l, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.q = load i8, ptr %i.j, align 1
  store i8 %i.q, ptr %i.p, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.p, ptr align 1 %i.j, i64 %i.l, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.c, %bb.d
  %i.r = load i64, ptr %i.b, align 8              ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.r, ptr %i.s, align 8
  %i.t = load ptr, ptr %i.g, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.r
  store i8 0, ptr %i.u, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8              ; 2 uses
  %i.y = load ptr, ptr %i.v, align 8              ; 2 uses
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = sub i64 %i.z, %i.aa                     ; 4 uses
  %i.ac = icmp ugt i64 %i.ab, 9223372036854775800
  br i1 %i.ac, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #14
  unreachable

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = load ptr, ptr %i.c, align 8             ; 9 uses
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = ptrtoint ptr %i.af to i64               ; 4 uses
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = icmp ult i64 %i.ai, %i.ab
  br i1 %i.aj, label %_ZNSt12_Vector_baseISt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS3_EESaIS6_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorISt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS3_EESaIS6_EE7reserveEm.exit

_ZNSt12_Vector_baseISt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS3_EESaIS6_EE11_M_allocateEm.exit.i: ; preds = %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8            ; 4 uses
  %i.am = ptrtoint ptr %i.al to i64               ; 2 uses
  %i.an = sub i64 %i.am, %i.ah
  %i.ao = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ab) #15 ; 9 uses
  %.not10.i.i.i.i = icmp eq ptr %i.af, %i.al
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZNSt12_Vector_baseISt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS3_EESaIS6_EE11_M_allocateEm.exit.i
  %2 = ptrtoint ptr %i.al to i64
  %i.ap = sub i64 %2, %i.ah
  %i.aq = add i64 %i.ap, -8                       ; 2 uses
  %i.ar = lshr i64 %i.aq, 3
  %i.as = add nuw nsw i64 %i.ar, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.aq, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader64, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.preheader
  %i.at = add i64 %i.am, -8
  %i.au = sub i64 %i.at, %i.ah
  %i.av = and i64 %i.au, -8
  %i.aw = add i64 %i.av, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.ao, i64 %i.aw
  %scevgep35 = getelementptr i8, ptr %i.af, i64 %i.aw
  %bound0 = icmp ult ptr %i.ao, %scevgep35
  %bound1 = icmp ult ptr %i.af, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.preheader64, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.as, 4611686018427387900     ; 3 uses
  %i.ax = shl i64 %n.vec, 3                       ; 2 uses
  %i.ay = getelementptr i8, ptr %i.ao, i64 %i.ax
  %i.az = getelementptr i8, ptr %i.af, i64 %i.ax
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ba = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ao, i64 %i.ba ; 2 uses
  %next.gep36 = getelementptr i8, ptr %i.af, i64 %i.ba ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4)
  call void @llvm.experimental.noalias.scope.decl(metadata !7)
  %i.bb = getelementptr i8, ptr %next.gep36, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep36, align 8, !alias.scope !9, !noalias !4
  %wide.load37 = load <2 x i64>, ptr %i.bb, align 8, !alias.scope !9, !noalias !4
  %i.bc = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !12, !noalias !9
  store <2 x i64> %wide.load37, ptr %i.bc, align 8, !alias.scope !12, !noalias !9
  %i.bd = getelementptr i8, ptr %next.gep36, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep36, align 8, !alias.scope !9, !noalias !4
  store <2 x ptr> splat (ptr null), ptr %i.bd, align 8, !alias.scope !9, !noalias !4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.be = icmp eq i64 %index.next, %n.vec
  br i1 %i.be, label %middle.block, label %vector.body, !llvm.loop !14

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.as, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.loopexit.i, label %.lr.ph.i.i.i.i.preheader64

.lr.ph.i.i.i.i.preheader64:                       ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.ao, %vector.memcheck ], [ %i.ao, %.lr.ph.i.i.i.i.preheader ], [ %i.ay, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.af, %vector.memcheck ], [ %i.af, %.lr.ph.i.i.i.i.preheader ], [ %i.az, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader64, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.bh, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader64 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.bg, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader64 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4)
  call void @llvm.experimental.noalias.scope.decl(metadata !7)
  %i.bf = load i64, ptr %.0911.i.i.i.i, align 8, !alias.scope !7, !noalias !4
  store i64 %i.bf, ptr %.012.i.i.i.i, align 8, !alias.scope !4, !noalias !7
  store ptr null, ptr %.0911.i.i.i.i, align 8, !alias.scope !7, !noalias !4
  %i.bg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.bg, %i.al
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.loopexit.i, label %.lr.ph.i.i.i.i, !llvm.loop !18

_ZNSt6vectorISt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.loopexit.i: ; preds = %.lr.ph.i.i.i.i, %middle.block
  %.pre.i = load ptr, ptr %i.c, align 8
  br label %_ZNSt6vectorISt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i

_ZNSt6vectorISt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i: ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.loopexit.i, %_ZNSt12_Vector_baseISt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS3_EESaIS6_EE11_M_allocateEm.exit.i
  %i.bi = phi ptr [ %.pre.i, %_ZNSt6vectorISt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.loopexit.i ], [ %i.af, %_ZNSt12_Vector_baseISt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS3_EESaIS6_EE11_M_allocateEm.exit.i ] ; 3 uses
  %.not.i8.i = icmp eq ptr %i.bi, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseISt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i
  %i.bj = load ptr, ptr %i.ad, align 8
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = ptrtoint ptr %i.bi to i64
  %i.bm = sub i64 %i.bk, %i.bl
  call void @_ZdlPvm(ptr noundef nonnull %i.bi, i64 noundef %i.bm) #16
  br label %_ZNSt12_Vector_baseISt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit.i

_ZNSt12_Vector_baseISt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit.i: ; preds = %bb.g, %_ZNSt6vectorISt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i
  store ptr %i.ao, ptr %i.c, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.an
  store ptr %i.bn, ptr %i.ak, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ab
  store ptr %i.bo, ptr %i.ad, align 8
  %.pre = load ptr, ptr %i.v, align 8
  %.pre24 = load ptr, ptr %i.w, align 8
  br label %_ZNSt6vectorISt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS3_EESaIS6_EE7reserveEm.exit

_ZNSt6vectorISt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS3_EESaIS6_EE7reserveEm.exit: ; preds = %bb.f, %_ZNSt12_Vector_baseISt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit.i
  %i.bp = phi ptr [ %i.x, %bb.f ], [ %.pre24, %_ZNSt12_Vector_baseISt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit.i ] ; 2 uses
  %i.bq = phi ptr [ %i.y, %bb.f ], [ %.pre, %_ZNSt12_Vector_baseISt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit.i ] ; 2 uses
  %.not22 = icmp eq ptr %i.bq, %i.bp
  br i1 %.not22, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS3_EESaIS6_EE7reserveEm.exit
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  br label %bb.h

._crit_edge:                                      ; preds = %_ZNSt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS2_EED2Ev.exit, %_ZNSt6vectorISt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS3_EESaIS6_EE7reserveEm.exit
  ret void

bb.h:                                             ; preds = %.lr.ph, %_ZNSt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS2_EED2Ev.exit
  %.sroa.019.023 = phi ptr [ %i.bq, %.lr.ph ], [ %i.ec, %_ZNSt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS2_EED2Ev.exit ] ; 2 uses
  %i.bs = load ptr, ptr %.sroa.019.023, align 8   ; 4 uses
  %i.bt = call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #15, !noalias !19 ; 9 uses
  call void @_ZN4LIEF6ObjectC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %i.bt, ptr noundef nonnull align 8 dereferenceable(48) %i.bs) #13, !noalias !19
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4LIEF3ELF16SymbolVersionAuxE, i64 16), ptr %i.bt, align 8, !noalias !19
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8 ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bt, i64 24 ; 3 uses
  store ptr %i.bw, ptr %i.bu, align 8, !noalias !19
  %i.bx = load ptr, ptr %i.bv, align 8, !noalias !19 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.bz = load i64, ptr %i.by, align 8, !noalias !19 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13, !noalias !19
  store i64 %i.bz, ptr %i.a, align 8, !noalias !19
  %i.ca = icmp ugt i64 %i.bz, 15
  br i1 %i.ca, label %bb.i, label %._crit_edge.i.i.i.i.i

bb.i:                                             ; preds = %bb.h
  %i.cb = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.bu, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #13, !noalias !19 ; 2 uses
  store ptr %i.cb, ptr %i.bu, align 8, !noalias !19
  %i.cc = load i64, ptr %i.a, align 8, !noalias !19
  store i64 %i.cc, ptr %i.bw, align 8, !noalias !19
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %bb.i, %bb.h
  %i.cd = phi ptr [ %i.cb, %bb.i ], [ %i.bw, %bb.h ] ; 2 uses
  switch i64 %i.bz, label %bb.k [
    i64 1, label %bb.j
    i64 0, label %_ZSt11make_uniqueIN4LIEF3ELF27SymbolVersionAuxRequirementEJRS2_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  ]

bb.j:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.ce = load i8, ptr %i.bx, align 1, !noalias !19
  store i8 %i.ce, ptr %i.cd, align 1, !noalias !19
  br label %_ZSt11make_uniqueIN4LIEF3ELF27SymbolVersionAuxRequirementEJRS2_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit

bb.k:                                             ; preds = %._crit_edge.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cd, ptr align 1 %i.bx, i64 %i.bz, i1 false), !noalias !19
  br label %_ZSt11make_uniqueIN4LIEF3ELF27SymbolVersionAuxRequirementEJRS2_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit

_ZSt11make_uniqueIN4LIEF3ELF27SymbolVersionAuxRequirementEJRS2_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %._crit_edge.i.i.i.i.i, %bb.j, %bb.k
  %i.cf = load i64, ptr %i.a, align 8, !noalias !19 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  store i64 %i.cf, ptr %i.cg, align 8, !noalias !19
  %i.ch = load ptr, ptr %i.bu, align 8, !noalias !19
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.cf
  store i8 0, ptr %i.ci, align 1, !noalias !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13, !noalias !19
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4LIEF3ELF27SymbolVersionAuxRequirementE, i64 16), ptr %i.bt, align 8, !noalias !19
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bt, i64 40
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bs, i64 40
  %i.cl = load i64, ptr %i.ck, align 8, !noalias !19
  store i64 %i.cl, ptr %i.cj, align 8, !noalias !19
  %i.cm = load ptr, ptr %i.br, align 8            ; 5 uses
  %i.cn = load ptr, ptr %i.ad, align 8
  %.not.i.i = icmp eq ptr %i.cm, %i.cn
  br i1 %.not.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZSt11make_uniqueIN4LIEF3ELF27SymbolVersionAuxRequirementEJRS2_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.co = ptrtoint ptr %i.bt to i64
  store i64 %i.co, ptr %i.cm, align 8
  %i.cp = load ptr, ptr %i.br, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  store ptr %i.cq, ptr %i.br, align 8
  br label %_ZNSt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS2_EED2Ev.exit

bb.m:                                             ; preds = %_ZSt11make_uniqueIN4LIEF3ELF27SymbolVersionAuxRequirementEJRS2_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.cr = load ptr, ptr %i.c, align 8             ; 10 uses
  %i.cs = ptrtoint ptr %i.cm to i64               ; 3 uses
  %i.ct = ptrtoint ptr %i.cr to i64               ; 4 uses
  %i.cu = sub i64 %i.cs, %i.ct                    ; 3 uses
  %i.cv = icmp eq i64 %i.cu, 9223372036854775800
  br i1 %i.cv, label %bb.n, label %_ZNKSt6vectorISt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i

bb.n:                                             ; preds = %bb.m
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #14
  unreachable

_ZNKSt6vectorISt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.m
  %i.cw = ashr exact i64 %i.cu, 3                 ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.cw, i64 1)
  %i.cx = add nsw i64 %.sroa.speculated.i.i, %i.cw ; 2 uses
  %i.cy = icmp ult i64 %i.cx, %i.cw
  %i.cz = call i64 @llvm.umin.i64(i64 %i.cx, i64 1152921504606846975)
  %i.da = select i1 %i.cy, i64 1152921504606846975, i64 %i.cz ; 3 uses
  %.not.i.i9 = icmp ne i64 %i.da, 0
  call void @llvm.assume(i1 %.not.i.i9)
  %i.db = shl nuw nsw i64 %i.da, 3
  %i.dc = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.db) #15 ; 10 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.cu
  %i.de = ptrtoint ptr %i.bt to i64
  store i64 %i.de, ptr %i.dd, align 8
end_hunk_0
