Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lief/original/SymbolVersionRequirement?download=true
inline.NumInlined: 302
inline.NumDeleted: 164
begin_hunk_0

$_ZN4LIEF3ELF24SymbolVersionRequirementD2Ev = comdat any

$_ZN4LIEF3ELF24SymbolVersionRequirementD0Ev = comdat any

@_ZN3fmt3v1212format_facetISt6localeE2idE = linkonce_odr hidden global %"class.std::locale::id" zeroinitializer, comdat, align 8
@_ZGVN3fmt3v1212format_facetISt6localeE2idE = linkonce_odr hidden local_unnamed_addr global i64 0, comdat($_ZN3fmt3v1212format_facetISt6localeE2idE), align 8
@_ZTVN4LIEF3ELF24SymbolVersionRequirementE = constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN4LIEF3ELF24SymbolVersionRequirementE, ptr @_ZNK4LIEF6ObjecteqERKS0_, ptr @_ZNK4LIEF6ObjectneERKS0_, ptr @_ZN4LIEF3ELF24SymbolVersionRequirementD2Ev, ptr @_ZN4LIEF3ELF24SymbolVersionRequirementD0Ev, ptr @_ZNK4LIEF3ELF24SymbolVersionRequirement6acceptERNS_7VisitorE] }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTIN4LIEF3ELF24SymbolVersionRequirementE = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN4LIEF3ELF24SymbolVersionRequirementE, ptr @_ZTIN4LIEF6ObjectE }, align 8
@_ZTSN4LIEF3ELF24SymbolVersionRequirementE = constant [38 x i8] c"N4LIEF3ELF24SymbolVersionRequirementE\00", align 1
@_ZTIN4LIEF6ObjectE = external constant ptr
@.str = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.104 = private unnamed_addr constant [16 x i8] c"vector::reserve\00", align 1
@_ZTVN4LIEF3ELF27SymbolVersionAuxRequirementE = external constant { [7 x ptr] }, align 8
@_ZTVN4LIEF3ELF16SymbolVersionAuxE = external constant { [7 x ptr] }, align 8
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @__cxx_global_var_init, ptr @_ZN3fmt3v1212format_facetISt6localeE2idE }]
@llvm.used = appending global [1 x ptr] [ptr @_ZN3fmt3v1212format_facetISt6localeE2idE], section "llvm.metadata"

@_ZN4LIEF3ELF24SymbolVersionRequirementC1ERKNS0_7details13Elf64_VerneedE = unnamed_addr alias void (ptr, ptr), ptr @_ZN4LIEF3ELF24SymbolVersionRequirementC2ERKNS0_7details13Elf64_VerneedE
@_ZN4LIEF3ELF24SymbolVersionRequirementC1ERKNS0_7details13Elf32_VerneedE = unnamed_addr alias void (ptr, ptr), ptr @_ZN4LIEF3ELF24SymbolVersionRequirementC2ERKNS0_7details13Elf32_VerneedE
@_ZN4LIEF3ELF24SymbolVersionRequirementC1ERKS1_ = unnamed_addr alias void (ptr, ptr), ptr @_ZN4LIEF3ELF24SymbolVersionRequirementC2ERKS1_

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #0

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal void @__cxx_global_var_init() #1 section ".text.startup" comdat($_ZN3fmt3v1212format_facetISt6localeE2idE) {
bb.a:
  %i.a = load i8, ptr @_ZGVN3fmt3v1212format_facetISt6localeE2idE, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr @_ZGVN3fmt3v1212format_facetISt6localeE2idE, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN4LIEF3ELF24SymbolVersionRequirementC2ERKNS0_7details13Elf64_VerneedE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(16) %1) unnamed_addr #2 align 2 {
bb.a:
  tail call void @_ZN4LIEF6ObjectC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #14
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4LIEF3ELF24SymbolVersionRequirementE, i64 16), ptr %0, align 8, !tbaa !10
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load i16, ptr %1, align 1, !tbaa !41
  store i16 %i.c, ptr %i.b, align 8, !tbaa !24
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store ptr %i.e, ptr %i.d, align 8, !tbaa !25
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 0, ptr %i.f, align 8, !tbaa !26
  store i8 0, ptr %i.e, align 8, !tbaa !27
  ret void
}

declare void @_ZN4LIEF6ObjectC2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN4LIEF3ELF24SymbolVersionRequirementC2ERKNS0_7details13Elf32_VerneedE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(16) %1) unnamed_addr #2 align 2 {
bb.a:
  tail call void @_ZN4LIEF6ObjectC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #14
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4LIEF3ELF24SymbolVersionRequirementE, i64 16), ptr %0, align 8, !tbaa !10
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i8 0, i64 24, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load i16, ptr %1, align 1, !tbaa !43
  store i16 %i.c, ptr %i.b, align 8, !tbaa !24
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store ptr %i.e, ptr %i.d, align 8, !tbaa !25
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 0, ptr %i.f, align 8, !tbaa !26
  store i8 0, ptr %i.e, align 8, !tbaa !27
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN4LIEF3ELF24SymbolVersionRequirementC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1) unnamed_addr #2 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  tail call void @_ZN4LIEF6ObjectC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #14
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4LIEF3ELF24SymbolVersionRequirementE, i64 16), ptr %0, align 8, !tbaa !10
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = load i16, ptr %i.e, align 8, !tbaa !24
  store i16 %i.f, ptr %i.d, align 8, !tbaa !24
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  store ptr %i.i, ptr %i.g, align 8, !tbaa !25
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !28   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.l = load i64, ptr %i.k, align 8, !tbaa !26   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  store i64 %i.l, ptr %i.b, align 8, !tbaa !29
  %i.m = icmp ugt i64 %i.l, 15
  br i1 %i.m, label %bb.b, label %._crit_edge.i.i

bb.b:                                             ; preds = %bb.a
  %i.n = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) #14 ; 2 uses
  store ptr %i.n, ptr %i.g, align 8, !tbaa !28
  %i.o = load i64, ptr %i.b, align 8, !tbaa !29
  store i64 %i.o, ptr %i.i, align 8, !tbaa !27
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.b, %bb.a
  %i.p = phi ptr [ %i.n, %bb.b ], [ %i.i, %bb.a ] ; 2 uses
  switch i64 %i.l, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.q = load i8, ptr %i.j, align 1, !tbaa !27
  store i8 %i.q, ptr %i.p, align 1, !tbaa !27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.p, ptr align 1 %i.j, i64 %i.l, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.c, %bb.d
  %i.r = load i64, ptr %i.b, align 8, !tbaa !29   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %i.r, ptr %i.s, align 8, !tbaa !26
  %i.t = load ptr, ptr %i.g, align 8, !tbaa !28
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.r
  store i8 0, ptr %i.u, align 1, !tbaa !27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !30   ; 2 uses
  %i.y = load ptr, ptr %i.v, align 8, !tbaa !31   ; 2 uses
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = sub i64 %i.z, %i.aa                     ; 4 uses
  %i.ac = icmp ugt i64 %i.ab, 9223372036854775800
  br i1 %i.ac, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.104) #15
  unreachable

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !32
  %i.af = load ptr, ptr %i.c, align 8, !tbaa !31
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = ptrtoint ptr %i.af to i64               ; 2 uses
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = icmp ult i64 %i.ai, %i.ab
  br i1 %i.aj, label %_ZNSt12_Vector_baseISt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS3_EESaIS6_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorISt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS3_EESaIS6_EE7reserveEm.exit

_ZNSt12_Vector_baseISt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS3_EESaIS6_EE11_M_allocateEm.exit.i: ; preds = %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !30
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = sub i64 %i.am, %i.ah
  %i.ao = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ab) #16 ; 6 uses
  %i.ap = load ptr, ptr %i.c, align 8, !tbaa !31  ; 8 uses
  %i.aq = load ptr, ptr %i.ak, align 8, !tbaa !30 ; 3 uses
  %.not10.i.i.i.i = icmp eq ptr %i.ap, %i.aq
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZNSt12_Vector_baseISt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS3_EESaIS6_EE11_M_allocateEm.exit.i
  %i.ar = ptrtoaddr ptr %i.aq to i64
  %i.as = ptrtoaddr ptr %i.ap to i64
  %i.at = add i64 %i.ar, -8
  %i.au = sub i64 %i.at, %i.as                    ; 2 uses
  %i.av = lshr i64 %i.au, 3
  %i.aw = add nuw nsw i64 %i.av, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.au, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader56, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.aw, 4611686018427387900     ; 3 uses
  %i.ax = shl i64 %n.vec, 3                       ; 2 uses
  %i.ay = getelementptr i8, ptr %i.ao, i64 %i.ax
  %i.az = getelementptr i8, ptr %i.ap, i64 %i.ax
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ba = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ao, i64 %i.ba ; 2 uses
  %next.gep34 = getelementptr i8, ptr %i.ap, i64 %i.ba ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !59)
  call void @llvm.experimental.noalias.scope.decl(metadata !60)
  %i.bb = getelementptr i8, ptr %next.gep34, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep34, align 8, !tbaa !34, !alias.scope !60
  %wide.load35 = load <2 x i64>, ptr %i.bb, align 8, !tbaa !34, !alias.scope !60
  %i.bc = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !34, !alias.scope !59
  store <2 x i64> %wide.load35, ptr %i.bc, align 8, !tbaa !34, !alias.scope !59
  %i.bd = getelementptr i8, ptr %next.gep34, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep34, align 8, !tbaa !34, !alias.scope !60
  store <2 x ptr> splat (ptr null), ptr %i.bd, align 8, !tbaa !34, !alias.scope !60
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.be = icmp eq i64 %index.next, %n.vec
  br i1 %i.be, label %middle.block, label %vector.body, !llvm.loop !47

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aw, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i, label %.lr.ph.i.i.i.i.preheader56

.lr.ph.i.i.i.i.preheader56:                       ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.preheader ], [ %i.ay, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.preheader ], [ %i.az, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader56, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.bh, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader56 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.bg, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader56 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !59)
  call void @llvm.experimental.noalias.scope.decl(metadata !60)
  %i.bf = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !34, !alias.scope !60
  store i64 %i.bf, ptr %.012.i.i.i.i, align 8, !tbaa !34, !alias.scope !59
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !34, !alias.scope !60
  %i.bg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.bg, %i.aq
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !48

_ZNSt6vectorISt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZNSt12_Vector_baseISt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS3_EESaIS6_EE11_M_allocateEm.exit.i
  %.not.i8.i = icmp eq ptr %i.ap, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseISt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i
  %i.bi = load ptr, ptr %i.ad, align 8, !tbaa !32
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = ptrtoint ptr %i.ap to i64
  %i.bl = sub i64 %i.bj, %i.bk
  call void @_ZdlPvm(ptr noundef nonnull %i.ap, i64 noundef %i.bl) #17
  br label %_ZNSt12_Vector_baseISt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit.i

_ZNSt12_Vector_baseISt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit.i: ; preds = %bb.g, %_ZNSt6vectorISt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i
  store ptr %i.ao, ptr %i.c, align 8, !tbaa !31
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.an
  store ptr %i.bm, ptr %i.ak, align 8, !tbaa !30
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ab
  store ptr %i.bn, ptr %i.ad, align 8, !tbaa !32
  %.pre = load ptr, ptr %i.v, align 8, !tbaa !38
  %.pre24 = load ptr, ptr %i.w, align 8, !tbaa !38
  br label %_ZNSt6vectorISt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS3_EESaIS6_EE7reserveEm.exit

_ZNSt6vectorISt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS3_EESaIS6_EE7reserveEm.exit: ; preds = %bb.f, %_ZNSt12_Vector_baseISt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit.i
  %i.bo = phi ptr [ %i.x, %bb.f ], [ %.pre24, %_ZNSt12_Vector_baseISt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit.i ] ; 2 uses
  %i.bp = phi ptr [ %i.y, %bb.f ], [ %.pre, %_ZNSt12_Vector_baseISt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit.i ] ; 2 uses
  %.not22 = icmp eq ptr %i.bp, %i.bo
  br i1 %.not22, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS3_EESaIS6_EE7reserveEm.exit
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  br label %bb.h

._crit_edge:                                      ; preds = %_ZNSt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS2_EED2Ev.exit, %_ZNSt6vectorISt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS3_EESaIS6_EE7reserveEm.exit
  ret void

bb.h:                                             ; preds = %.lr.ph, %_ZNSt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS2_EED2Ev.exit
  %.sroa.019.023 = phi ptr [ %i.bp, %.lr.ph ], [ %i.ea, %_ZNSt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS2_EED2Ev.exit ] ; 2 uses
  %i.br = load ptr, ptr %.sroa.019.023, align 8, !tbaa !34 ; 4 uses
  %i.bs = call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #16, !noalias !61 ; 9 uses
  call void @_ZN4LIEF6ObjectC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %i.bs, ptr noundef nonnull align 8 dereferenceable(48) %i.br) #14, !noalias !61
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4LIEF3ELF16SymbolVersionAuxE, i64 16), ptr %i.bs, align 8, !tbaa !10, !noalias !61
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8 ; 4 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 24 ; 3 uses
  store ptr %i.bv, ptr %i.bt, align 8, !tbaa !25, !noalias !61
  %i.bw = load ptr, ptr %i.bu, align 8, !tbaa !28, !noalias !61 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !26, !noalias !61 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14, !noalias !61
  store i64 %i.by, ptr %i.a, align 8, !tbaa !29, !noalias !61
  %i.bz = icmp ugt i64 %i.by, 15
  br i1 %i.bz, label %bb.i, label %._crit_edge.i.i.i.i.i

bb.i:                                             ; preds = %bb.h
  %i.ca = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.bt, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #14, !noalias !61 ; 2 uses
  store ptr %i.ca, ptr %i.bt, align 8, !tbaa !28, !noalias !61
  %i.cb = load i64, ptr %i.a, align 8, !tbaa !29, !noalias !61
  store i64 %i.cb, ptr %i.bv, align 8, !tbaa !27, !noalias !61
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %bb.i, %bb.h
  %i.cc = phi ptr [ %i.ca, %bb.i ], [ %i.bv, %bb.h ] ; 2 uses
  switch i64 %i.by, label %bb.k [
    i64 1, label %bb.j
    i64 0, label %_ZSt11make_uniqueIN4LIEF3ELF27SymbolVersionAuxRequirementEJRS2_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  ]

bb.j:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.cd = load i8, ptr %i.bw, align 1, !tbaa !27, !noalias !61
  store i8 %i.cd, ptr %i.cc, align 1, !tbaa !27, !noalias !61
  br label %_ZSt11make_uniqueIN4LIEF3ELF27SymbolVersionAuxRequirementEJRS2_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit

bb.k:                                             ; preds = %._crit_edge.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cc, ptr align 1 %i.bw, i64 %i.by, i1 false), !noalias !61
  br label %_ZSt11make_uniqueIN4LIEF3ELF27SymbolVersionAuxRequirementEJRS2_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit

_ZSt11make_uniqueIN4LIEF3ELF27SymbolVersionAuxRequirementEJRS2_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %._crit_edge.i.i.i.i.i, %bb.j, %bb.k
  %i.ce = load i64, ptr %i.a, align 8, !tbaa !29, !noalias !61 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  store i64 %i.ce, ptr %i.cf, align 8, !tbaa !26, !noalias !61
  %i.cg = load ptr, ptr %i.bt, align 8, !tbaa !28, !noalias !61
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.ce
  store i8 0, ptr %i.ch, align 1, !tbaa !27, !noalias !61
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14, !noalias !61
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4LIEF3ELF27SymbolVersionAuxRequirementE, i64 16), ptr %i.bs, align 8, !tbaa !10, !noalias !61
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bs, i64 40
  %i.cj = getelementptr inbounds nuw i8, ptr %i.br, i64 40
  %i.ck = load i64, ptr %i.cj, align 8, !noalias !61
  store i64 %i.ck, ptr %i.ci, align 8, !noalias !61
  %i.cl = load ptr, ptr %i.bq, align 8, !tbaa !30 ; 6 uses
  %i.cm = load ptr, ptr %i.ad, align 8, !tbaa !32
  %.not.i.i = icmp eq ptr %i.cl, %i.cm
  br i1 %.not.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZSt11make_uniqueIN4LIEF3ELF27SymbolVersionAuxRequirementEJRS2_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.cn = ptrtoint ptr %i.bs to i64
  store i64 %i.cn, ptr %i.cl, align 8, !tbaa !34
  %i.co = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  store ptr %i.co, ptr %i.bq, align 8, !tbaa !30
  br label %_ZNSt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS2_EED2Ev.exit

bb.m:                                             ; preds = %_ZSt11make_uniqueIN4LIEF3ELF27SymbolVersionAuxRequirementEJRS2_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.cp = load ptr, ptr %i.c, align 8, !tbaa !31  ; 10 uses
  %i.cq = ptrtoint ptr %i.cl to i64               ; 3 uses
  %i.cr = ptrtoint ptr %i.cp to i64               ; 4 uses
  %i.cs = sub i64 %i.cq, %i.cr                    ; 3 uses
  %i.ct = icmp eq i64 %i.cs, 9223372036854775800
  br i1 %i.ct, label %bb.n, label %_ZNKSt6vectorISt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i

bb.n:                                             ; preds = %bb.m
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #15
  unreachable

_ZNKSt6vectorISt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.m
  %i.cu = ashr exact i64 %i.cs, 3                 ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.cu, i64 1)
  %i.cv = add nsw i64 %.sroa.speculated.i.i, %i.cu ; 2 uses
  %i.cw = icmp ult i64 %i.cv, %i.cu
  %i.cx = call i64 @llvm.umin.i64(i64 %i.cv, i64 1152921504606846975)
  %i.cy = select i1 %i.cw, i64 1152921504606846975, i64 %i.cx ; 3 uses
  %.not.i.i9 = icmp ne i64 %i.cy, 0
  call void @llvm.assume(i1 %.not.i.i9)
  %i.cz = shl nuw nsw i64 %i.cy, 3
  %i.da = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cz) #16 ; 10 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.cs
  %i.dc = ptrtoint ptr %i.bs to i64
  store i64 %i.dc, ptr %i.db, align 8, !tbaa !34
  %.not10.i.i.i.i10 = icmp eq ptr %i.cp, %i.cl
  br i1 %.not10.i.i.i.i10, label %_ZNSt6vectorISt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i11.preheader

.lr.ph.i.i.i.i11.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %i.dd = add i64 %i.cq, -8
  %i.de = sub i64 %i.dd, %i.cr                    ; 2 uses
  %i.df = lshr i64 %i.de, 3
  %i.dg = add nuw nsw i64 %i.df, 1                ; 2 uses
  %min.iters.check41 = icmp ult i64 %i.de, 56
  br i1 %min.iters.check41, label %.lr.ph.i.i.i.i11.preheader55, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i11.preheader
  %scevgep = getelementptr i8, ptr %i.da, i64 8
  %i.dh = add i64 %i.cq, -8
  %i.di = sub i64 %i.dh, %i.cr
  %i.dj = and i64 %i.di, -8                       ; 2 uses
  %scevgep37 = getelementptr i8, ptr %scevgep, i64 %i.dj
  %scevgep38 = getelementptr i8, ptr %i.cp, i64 8
  %scevgep39 = getelementptr i8, ptr %scevgep38, i64 %i.dj
  %bound0 = icmp ult ptr %i.da, %scevgep39
  %bound1 = icmp ult ptr %i.cp, %scevgep37
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i11.preheader55, label %vector.ph42

vector.ph42:                                      ; preds = %vector.memcheck
  %n.vec43 = and i64 %i.dg, 4611686018427387900   ; 3 uses
  %i.dk = shl i64 %n.vec43, 3                     ; 2 uses
  %i.dl = getelementptr i8, ptr %i.da, i64 %i.dk  ; 2 uses
  %i.dm = getelementptr i8, ptr %i.cp, i64 %i.dk
  br label %vector.body44

vector.body44:                                    ; preds = %vector.body44, %vector.ph42
  %index45 = phi i64 [ 0, %vector.ph42 ], [ %index.next50, %vector.body44 ] ; 2 uses
  %i.dn = shl i64 %index45, 3                     ; 2 uses
  %next.gep46 = getelementptr i8, ptr %i.da, i64 %i.dn ; 2 uses
  %next.gep47 = getelementptr i8, ptr %i.cp, i64 %i.dn ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !62)
  call void @llvm.experimental.noalias.scope.decl(metadata !63)
  %i.do = getelementptr i8, ptr %next.gep47, i64 16
  %wide.load48 = load <2 x i64>, ptr %next.gep47, align 8, !tbaa !34, !alias.scope !64
  %wide.load49 = load <2 x i64>, ptr %i.do, align 8, !tbaa !34, !alias.scope !64
  %i.dp = getelementptr i8, ptr %next.gep46, i64 16
  store <2 x i64> %wide.load48, ptr %next.gep46, align 8, !tbaa !34, !alias.scope !65, !noalias !66
  store <2 x i64> %wide.load49, ptr %i.dp, align 8, !tbaa !34, !alias.scope !65, !noalias !66
  %i.dq = getelementptr i8, ptr %next.gep47, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep47, align 8, !tbaa !34, !alias.scope !64
  store <2 x ptr> splat (ptr null), ptr %i.dq, align 8, !tbaa !34, !alias.scope !64
  %index.next50 = add nuw i64 %index45, 4         ; 2 uses
  %i.dr = icmp eq i64 %index.next50, %n.vec43
  br i1 %i.dr, label %middle.block51, label %vector.body44, !llvm.loop !57

middle.block51:                                   ; preds = %vector.body44
  %cmp.n52 = icmp eq i64 %i.dg, %n.vec43
  br i1 %cmp.n52, label %_ZNSt6vectorISt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i11.preheader55

.lr.ph.i.i.i.i11.preheader55:                     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i11.preheader, %middle.block51
  %.012.i.i.i.i12.ph = phi ptr [ %i.da, %vector.memcheck ], [ %i.da, %.lr.ph.i.i.i.i11.preheader ], [ %i.dl, %middle.block51 ]
  %.0911.i.i.i.i13.ph = phi ptr [ %i.cp, %vector.memcheck ], [ %i.cp, %.lr.ph.i.i.i.i11.preheader ], [ %i.dm, %middle.block51 ]
  br label %.lr.ph.i.i.i.i11

.lr.ph.i.i.i.i11:                                 ; preds = %.lr.ph.i.i.i.i11.preheader55, %.lr.ph.i.i.i.i11
  %.012.i.i.i.i12 = phi ptr [ %i.du, %.lr.ph.i.i.i.i11 ], [ %.012.i.i.i.i12.ph, %.lr.ph.i.i.i.i11.preheader55 ] ; 2 uses
  %.0911.i.i.i.i13 = phi ptr [ %i.dt, %.lr.ph.i.i.i.i11 ], [ %.0911.i.i.i.i13.ph, %.lr.ph.i.i.i.i11.preheader55 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !62)
  call void @llvm.experimental.noalias.scope.decl(metadata !63)
  %i.ds = load i64, ptr %.0911.i.i.i.i13, align 8, !tbaa !34, !alias.scope !63
  store i64 %i.ds, ptr %.012.i.i.i.i12, align 8, !tbaa !34, !alias.scope !62
  store ptr null, ptr %.0911.i.i.i.i13, align 8, !tbaa !34, !alias.scope !63
  %i.dt = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i13, i64 8 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i12, i64 8 ; 2 uses
  %.not.i.i.i.i14 = icmp eq ptr %i.dt, %i.cl
  br i1 %.not.i.i.i.i14, label %_ZNSt6vectorISt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i11, !llvm.loop !58

_ZNSt6vectorISt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i: ; preds = %.lr.ph.i.i.i.i11, %middle.block51, %_ZNKSt6vectorISt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %.0.lcssa.i.i.i.i = phi ptr [ %i.da, %_ZNKSt6vectorISt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i ], [ %i.dl, %middle.block51 ], [ %i.du, %.lr.ph.i.i.i.i11 ]
  %i.dv = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.cp, null
  br i1 %.not.i23.i, label %_ZNSt6vectorISt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i
  %i.dw = load ptr, ptr %i.ad, align 8, !tbaa !32
  %i.dx = ptrtoint ptr %i.dw to i64
  %i.dy = sub i64 %i.dx, %i.cr
  call void @_ZdlPvm(ptr noundef nonnull %i.cp, i64 noundef %i.dy) #17
  br label %_ZNSt6vectorISt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit

_ZNSt6vectorISt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, %bb.o
  store ptr %i.da, ptr %i.c, align 8, !tbaa !31
  store ptr %i.dv, ptr %i.bq, align 8, !tbaa !30
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %i.cy
  store ptr %i.dz, ptr %i.ad, align 8, !tbaa !32
  br label %_ZNSt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit, %bb.l
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.019.023, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.ea, %i.bo
  br i1 %.not, label %._crit_edge, label %bb.h
}

declare void @_ZN4LIEF6ObjectC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define noundef nonnull align 8 dereferenceable(72) ptr @_ZN4LIEF3ELF24SymbolVersionRequirementaSES1_(ptr noundef nonnull returned align 8 dereferenceable(72) %0, ptr noundef align 8 %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !32
  %i.e = load <2 x ptr>, ptr %i.b, align 8, !tbaa !38
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.g = load <2 x ptr>, ptr %i.a, align 8, !tbaa !38
  store <2 x ptr> %i.e, ptr %i.a, align 8, !tbaa !38
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !32
  store ptr %i.h, ptr %i.c, align 8, !tbaa !32
  store <2 x ptr> %i.g, ptr %i.b, align 8, !tbaa !38
  store ptr %i.d, ptr %i.f, align 8, !tbaa !32
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.k = load i16, ptr %i.i, align 8, !tbaa !39
  %i.l = load i16, ptr %i.j, align 8, !tbaa !39
  store i16 %i.l, ptr %i.i, align 8, !tbaa !39
  store i16 %i.k, ptr %i.j, align 8, !tbaa !39
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 40
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.m, ptr noundef nonnull align 8 dereferenceable(32) %i.n) #14
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN4LIEF3ELF24SymbolVersionRequirement4swapERS1_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !32
  %i.e = load <2 x ptr>, ptr %i.b, align 8, !tbaa !38
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.g = load <2 x ptr>, ptr %i.a, align 8, !tbaa !38
  store <2 x ptr> %i.e, ptr %i.a, align 8, !tbaa !38
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !32
  store ptr %i.h, ptr %i.c, align 8, !tbaa !32
  store <2 x ptr> %i.g, ptr %i.b, align 8, !tbaa !38
  store ptr %i.d, ptr %i.f, align 8, !tbaa !32
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.k = load i16, ptr %i.i, align 8, !tbaa !39
  %i.l = load i16, ptr %i.j, align 8, !tbaa !39
  store i16 %i.l, ptr %i.i, align 8, !tbaa !39
  store i16 %i.k, ptr %i.j, align 8, !tbaa !39
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 40
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.m, ptr noundef nonnull align 8 dereferenceable(32) %i.n) #14
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define noundef nonnull align 8 dereferenceable(48) ptr @_ZN4LIEF3ELF24SymbolVersionRequirement19add_aux_requirementERKNS0_27SymbolVersionAuxRequirementE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #16, !noalias !74 ; 9 uses
  tail call void @_ZN4LIEF6ObjectC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef nonnull align 8 dereferenceable(48) %1) #14, !noalias !74
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4LIEF3ELF16SymbolVersionAuxE, i64 16), ptr %i.c, align 8, !tbaa !10, !noalias !74
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 3 uses
  store ptr %i.f, ptr %i.d, align 8, !tbaa !25, !noalias !74
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !28, !noalias !74 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !26, !noalias !74 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14, !noalias !74
  store i64 %i.i, ptr %i.a, align 8, !tbaa !29, !noalias !74
  %i.j = icmp ugt i64 %i.i, 15
  br i1 %i.j, label %bb.b, label %._crit_edge.i.i.i.i.i

bb.b:                                             ; preds = %bb.a
  %i.k = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #14, !noalias !74 ; 2 uses
  store ptr %i.k, ptr %i.d, align 8, !tbaa !28, !noalias !74
  %i.l = load i64, ptr %i.a, align 8, !tbaa !29, !noalias !74
  store i64 %i.l, ptr %i.f, align 8, !tbaa !27, !noalias !74
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %bb.b, %bb.a
  %i.m = phi ptr [ %i.k, %bb.b ], [ %i.f, %bb.a ] ; 2 uses
  switch i64 %i.i, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %_ZSt11make_uniqueIN4LIEF3ELF27SymbolVersionAuxRequirementEJRKS2_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.n = load i8, ptr %i.g, align 1, !tbaa !27, !noalias !74
  store i8 %i.n, ptr %i.m, align 1, !tbaa !27, !noalias !74
  br label %_ZSt11make_uniqueIN4LIEF3ELF27SymbolVersionAuxRequirementEJRKS2_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit

bb.d:                                             ; preds = %._crit_edge.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.m, ptr align 1 %i.g, i64 %i.i, i1 false), !noalias !74
  br label %_ZSt11make_uniqueIN4LIEF3ELF27SymbolVersionAuxRequirementEJRKS2_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit

_ZSt11make_uniqueIN4LIEF3ELF27SymbolVersionAuxRequirementEJRKS2_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit: ; preds = %._crit_edge.i.i.i.i.i, %bb.c, %bb.d
  %i.o = load i64, ptr %i.a, align 8, !tbaa !29, !noalias !74 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %i.o, ptr %i.p, align 8, !tbaa !26, !noalias !74
  %i.q = load ptr, ptr %i.d, align 8, !tbaa !28, !noalias !74
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.o
  store i8 0, ptr %i.r, align 1, !tbaa !27, !noalias !74
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14, !noalias !74
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4LIEF3ELF27SymbolVersionAuxRequirementE, i64 16), ptr %i.c, align 8, !tbaa !10, !noalias !74
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.u = load i64, ptr %i.t, align 8, !noalias !74
  store i64 %i.u, ptr %i.s, align 8, !noalias !74
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !30   ; 7 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !32
  %.not.i.i = icmp eq ptr %i.w, %i.y
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZSt11make_uniqueIN4LIEF3ELF27SymbolVersionAuxRequirementEJRKS2_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.z = ptrtoint ptr %i.c to i64
  store i64 %i.z, ptr %i.w, align 8, !tbaa !34
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr %i.aa, ptr %i.v, align 8, !tbaa !30
  br label %_ZNSt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS2_EED2Ev.exit

bb.f:                                             ; preds = %_ZSt11make_uniqueIN4LIEF3ELF27SymbolVersionAuxRequirementEJRKS2_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_.exit
  %i.ab = load ptr, ptr %i.b, align 8, !tbaa !31  ; 7 uses
  %i.ac = ptrtoint ptr %i.w to i64                ; 2 uses
  %i.ad = ptrtoint ptr %i.ab to i64               ; 3 uses
  %i.ae = sub i64 %i.ac, %i.ad                    ; 3 uses
  %i.af = icmp eq i64 %i.ae, 9223372036854775800
  br i1 %i.af, label %bb.g, label %_ZNKSt6vectorISt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i

bb.g:                                             ; preds = %bb.f
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #15
  unreachable

_ZNKSt6vectorISt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.f
  %i.ag = ashr exact i64 %i.ae, 3                 ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.ag, i64 1)
  %i.ah = add nsw i64 %.sroa.speculated.i.i, %i.ag ; 2 uses
  %i.ai = icmp ult i64 %i.ah, %i.ag
  %i.aj = call i64 @llvm.umin.i64(i64 %i.ah, i64 1152921504606846975)
  %i.ak = select i1 %i.ai, i64 1152921504606846975, i64 %i.aj ; 3 uses
  %.not.i.i2 = icmp ne i64 %i.ak, 0
  call void @llvm.assume(i1 %.not.i.i2)
  %i.al = shl nuw nsw i64 %i.ak, 3
  %i.am = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.al) #16 ; 7 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ae
  %i.ao = ptrtoint ptr %i.c to i64
  store i64 %i.ao, ptr %i.an, align 8, !tbaa !34
  %.not10.i.i.i.i = icmp eq ptr %i.ab, %i.w
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZNKSt6vectorISt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %i.ap = add i64 %i.ac, -8
  %i.aq = sub i64 %i.ap, %i.ad                    ; 2 uses
  %i.ar = lshr i64 %i.aq, 3
  %i.as = add nuw nsw i64 %i.ar, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.aq, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader9, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.as, 4611686018427387900     ; 3 uses
  %i.at = shl i64 %n.vec, 3                       ; 2 uses
  %i.au = getelementptr i8, ptr %i.am, i64 %i.at  ; 2 uses
  %i.av = getelementptr i8, ptr %i.ab, i64 %i.at
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aw = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.am, i64 %i.aw ; 2 uses
  %next.gep6 = getelementptr i8, ptr %i.ab, i64 %i.aw ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !75)
  call void @llvm.experimental.noalias.scope.decl(metadata !76)
  %i.ax = getelementptr i8, ptr %next.gep6, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep6, align 8, !tbaa !34, !alias.scope !76
  %wide.load7 = load <2 x i64>, ptr %i.ax, align 8, !tbaa !34, !alias.scope !76
  %i.ay = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !34, !alias.scope !75
  store <2 x i64> %wide.load7, ptr %i.ay, align 8, !tbaa !34, !alias.scope !75
  %i.az = getelementptr i8, ptr %next.gep6, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep6, align 8, !tbaa !34, !alias.scope !76
  store <2 x ptr> splat (ptr null), ptr %i.az, align 8, !tbaa !34, !alias.scope !76
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ba = icmp eq i64 %index.next, %n.vec
  br i1 %i.ba, label %middle.block, label %vector.body, !llvm.loop !72

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.as, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i.preheader9

.lr.ph.i.i.i.i.preheader9:                        ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.am, %.lr.ph.i.i.i.i.preheader ], [ %i.au, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.ab, %.lr.ph.i.i.i.i.preheader ], [ %i.av, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader9, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.bd, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader9 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.bc, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader9 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !75)
  call void @llvm.experimental.noalias.scope.decl(metadata !76)
  %i.bb = load i64, ptr %.0911.i.i.i.i, align 8, !tbaa !34, !alias.scope !76
  store i64 %i.bb, ptr %.012.i.i.i.i, align 8, !tbaa !34, !alias.scope !75
  store ptr null, ptr %.0911.i.i.i.i, align 8, !tbaa !34, !alias.scope !76
  %i.bc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bc, %i.w
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !73

_ZNSt6vectorISt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %_ZNKSt6vectorISt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %.0.lcssa.i.i.i.i = phi ptr [ %i.am, %_ZNKSt6vectorISt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i ], [ %i.au, %middle.block ], [ %i.bd, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.ab, null
  br i1 %.not.i23.i, label %_ZNSt6vectorISt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i
  %i.bf = load ptr, ptr %i.x, align 8, !tbaa !32
  %i.bg = ptrtoint ptr %i.bf to i64
  %i.bh = sub i64 %i.bg, %i.ad
  call void @_ZdlPvm(ptr noundef nonnull %i.ab, i64 noundef %i.bh) #17
  br label %_ZNSt6vectorISt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit

_ZNSt6vectorISt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, %bb.h
  store ptr %i.am, ptr %i.b, align 8, !tbaa !31
  store ptr %i.be, ptr %i.v, align 8, !tbaa !30
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %i.ak
  store ptr %i.bi, ptr %i.x, align 8, !tbaa !32
  br label %_ZNSt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS2_EED2Ev.exit

_ZNSt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS2_EED2Ev.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit, %bb.e
  %i.bj = phi ptr [ %.0.lcssa.i.i.i.i, %_ZNSt6vectorISt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit ], [ %i.w, %bb.e ]
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !34
  ret ptr %i.bk
}

; Function Attrs: mustprogress nounwind uwtable
define noundef zeroext i1 @_ZN4LIEF3ELF24SymbolVersionRequirement22remove_aux_requirementERNS0_27SymbolVersionAuxRequirementE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(72) %0, ptr nofree noundef nonnull readnone align 8 captures(address) dereferenceable(48) %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !38   ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !38   ; 6 uses
  %i.e = ptrtoint ptr %i.d to i64                 ; 3 uses
  %i.f = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.g = sub i64 %i.e, %i.f                       ; 3 uses
  %i.h = ashr i64 %i.g, 5                         ; 2 uses
  %i.i = icmp sgt i64 %i.h, 0
  br i1 %i.i, label %.lr.ph.preheader.i.i.i, label %._crit_edge.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.a
  %i.j = and i64 %i.g, -32
  %scevgep.i.i.i = getelementptr i8, ptr %i.b, i64 %i.j ; 2 uses
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e, %.lr.ph.preheader.i.i.i
  %.058.i.i.i = phi i64 [ %i.s, %bb.e ], [ %i.h, %.lr.ph.preheader.i.i.i ] ; 2 uses
  %.sroa.038.057.i.i.i = phi ptr [ %i.r, %bb.e ], [ %i.b, %.lr.ph.preheader.i.i.i ] ; 9 uses
  %.val1.i.i.i.i = load ptr, ptr %.sroa.038.057.i.i.i, align 8, !tbaa !34
  %i.k = icmp eq ptr %1, %.val1.i.i.i.i
  br i1 %i.k, label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNS4_24SymbolVersionRequirement22remove_aux_requirementERS5_E3$_0ET_SH_SH_T0_.exit", label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.038.057.i.i.i, i64 8
  %.val1.i22.i.i.i = load ptr, ptr %i.l, align 8, !tbaa !34
  %i.m = icmp eq ptr %1, %.val1.i22.i.i.i
  br i1 %i.m, label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNS4_24SymbolVersionRequirement22remove_aux_requirementERS5_E3$_0ET_SH_SH_T0_.exit.loopexit.split.loop.exit", label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.038.057.i.i.i, i64 16
  %.val1.i23.i.i.i = load ptr, ptr %i.n, align 8, !tbaa !34
  %i.o = icmp eq ptr %1, %.val1.i23.i.i.i
  br i1 %i.o, label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNS4_24SymbolVersionRequirement22remove_aux_requirementERS5_E3$_0ET_SH_SH_T0_.exit.loopexit.split.loop.exit29", label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.038.057.i.i.i, i64 24
  %.val1.i24.i.i.i = load ptr, ptr %i.p, align 8, !tbaa !34
  %i.q = icmp eq ptr %1, %.val1.i24.i.i.i
  br i1 %i.q, label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNS4_24SymbolVersionRequirement22remove_aux_requirementERS5_E3$_0ET_SH_SH_T0_.exit.loopexit.split.loop.exit31", label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.038.057.i.i.i, i64 32
  %i.s = add nsw i64 %.058.i.i.i, -1
  %i.t = icmp sgt i64 %.058.i.i.i, 1
  br i1 %i.t, label %.lr.ph.i.i.i, label %._crit_edge.loopexit.i.i.i, !llvm.loop !77

._crit_edge.loopexit.i.i.i:                       ; preds = %bb.e
  %.pre.i.i.i = ptrtoint ptr %scevgep.i.i.i to i64
  %.pre63.i.i.i = sub i64 %i.e, %.pre.i.i.i
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %bb.a
  %.pre-phi64.i.i.i = phi i64 [ %.pre63.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.g, %bb.a ]
  %.sroa.038.0.lcssa.i.i.i = phi ptr [ %scevgep.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.b, %bb.a ] ; 5 uses
  %i.u = ashr exact i64 %.pre-phi64.i.i.i, 3
  switch i64 %i.u, label %_ZNSt6vectorISt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS3_EESaIS6_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS6_S8_EE.exit [
    i64 3, label %bb.f
    i64 2, label %bb.h
    i64 1, label %bb.j
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i
  %.val1.i25.i.i.i = load ptr, ptr %.sroa.038.0.lcssa.i.i.i, align 8, !tbaa !34
  %i.v = icmp eq ptr %1, %.val1.i25.i.i.i
  br i1 %i.v, label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNS4_24SymbolVersionRequirement22remove_aux_requirementERS5_E3$_0ET_SH_SH_T0_.exit", label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.038.0.lcssa.i.i.i, i64 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i.i
  %.sroa.038.1.i.i.i = phi ptr [ %i.w, %bb.g ], [ %.sroa.038.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %.val1.i26.i.i.i = load ptr, ptr %.sroa.038.1.i.i.i, align 8, !tbaa !34
  %i.x = icmp eq ptr %1, %.val1.i26.i.i.i
  br i1 %i.x, label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNS4_24SymbolVersionRequirement22remove_aux_requirementERS5_E3$_0ET_SH_SH_T0_.exit", label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.038.1.i.i.i, i64 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge.i.i.i
  %.sroa.038.2.i.i.i = phi ptr [ %i.y, %bb.i ], [ %.sroa.038.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 2 uses
  %.val1.i27.i.i.i = load ptr, ptr %.sroa.038.2.i.i.i, align 8, !tbaa !34
  %i.z = icmp eq ptr %1, %.val1.i27.i.i.i
  %spec.select.i.i.i = select i1 %i.z, ptr %.sroa.038.2.i.i.i, ptr %i.d
  br label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNS4_24SymbolVersionRequirement22remove_aux_requirementERS5_E3$_0ET_SH_SH_T0_.exit"

"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNS4_24SymbolVersionRequirement22remove_aux_requirementERS5_E3$_0ET_SH_SH_T0_.exit.loopexit.split.loop.exit": ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.038.057.i.i.i, i64 8
  br label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNS4_24SymbolVersionRequirement22remove_aux_requirementERS5_E3$_0ET_SH_SH_T0_.exit"

"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNS4_24SymbolVersionRequirement22remove_aux_requirementERS5_E3$_0ET_SH_SH_T0_.exit.loopexit.split.loop.exit29": ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.038.057.i.i.i, i64 16
  br label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNS4_24SymbolVersionRequirement22remove_aux_requirementERS5_E3$_0ET_SH_SH_T0_.exit"

"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNS4_24SymbolVersionRequirement22remove_aux_requirementERS5_E3$_0ET_SH_SH_T0_.exit.loopexit.split.loop.exit31": ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.038.057.i.i.i, i64 24
  br label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNS4_24SymbolVersionRequirement22remove_aux_requirementERS5_E3$_0ET_SH_SH_T0_.exit"

"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNS4_24SymbolVersionRequirement22remove_aux_requirementERS5_E3$_0ET_SH_SH_T0_.exit": ; preds = %.lr.ph.i.i.i, %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNS4_24SymbolVersionRequirement22remove_aux_requirementERS5_E3$_0ET_SH_SH_T0_.exit.loopexit.split.loop.exit", %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNS4_24SymbolVersionRequirement22remove_aux_requirementERS5_E3$_0ET_SH_SH_T0_.exit.loopexit.split.loop.exit29", %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNS4_24SymbolVersionRequirement22remove_aux_requirementERS5_E3$_0ET_SH_SH_T0_.exit.loopexit.split.loop.exit31", %bb.f, %bb.h, %bb.j
  %.sroa.08.0.in.sroa.speculated.i.i.i = phi ptr [ %.sroa.038.1.i.i.i, %bb.h ], [ %spec.select.i.i.i, %bb.j ], [ %.sroa.038.0.lcssa.i.i.i, %bb.f ], [ %i.ac, %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNS4_24SymbolVersionRequirement22remove_aux_requirementERS5_E3$_0ET_SH_SH_T0_.exit.loopexit.split.loop.exit31" ], [ %i.ab, %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNS4_24SymbolVersionRequirement22remove_aux_requirementERS5_E3$_0ET_SH_SH_T0_.exit.loopexit.split.loop.exit29" ], [ %i.aa, %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNS4_24SymbolVersionRequirement22remove_aux_requirementERS5_E3$_0ET_SH_SH_T0_.exit.loopexit.split.loop.exit" ], [ %.sroa.038.057.i.i.i, %.lr.ph.i.i.i ] ; 2 uses
  %i.ad = icmp eq ptr %.sroa.08.0.in.sroa.speculated.i.i.i, %i.d
  br i1 %i.ad, label %_ZNSt6vectorISt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS3_EESaIS6_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS6_S8_EE.exit, label %bb.k

bb.k:                                             ; preds = %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNS4_24SymbolVersionRequirement22remove_aux_requirementERS5_E3$_0ET_SH_SH_T0_.exit"
  %i.ae = ptrtoint ptr %.sroa.08.0.in.sroa.speculated.i.i.i to i64
  %i.af = sub i64 %i.ae, %i.f
  %i.ag = getelementptr inbounds i8, ptr %i.b, i64 %i.af ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 3 uses
  %.not.i.i = icmp eq ptr %i.ah, %i.d
  br i1 %.not.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ai = ptrtoint ptr %i.ah to i64
  %i.aj = sub i64 %i.e, %i.ai
  %i.ak = ashr exact i64 %i.aj, 3                 ; 2 uses
  %i.al = icmp sgt i64 %i.ak, 0
  br i1 %i.al, label %.lr.ph.i.i.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.l, %_ZNSt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi i64 [ %i.at, %_ZNSt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i.i ], [ %i.ak, %bb.l ] ; 2 uses
  %.0811.i.i.i.i.i.i.i = phi ptr [ %i.as, %_ZNSt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i.i ], [ %i.ag, %bb.l ] ; 3 uses
  %.0910.i.i.i.i.i.i.i = phi ptr [ %i.ar, %_ZNSt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i.i ], [ %i.ah, %bb.l ] ; 3 uses
  %i.am = load ptr, ptr %.0910.i.i.i.i.i.i.i, align 8, !tbaa !34
  store ptr null, ptr %.0910.i.i.i.i.i.i.i, align 8, !tbaa !34
  %i.an = load ptr, ptr %.0811.i.i.i.i.i.i.i, align 8, !tbaa !34 ; 3 uses
  store ptr %i.am, ptr %.0811.i.i.i.i.i.i.i, align 8, !tbaa !34
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZNSt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN4LIEF3ELF27SymbolVersionAuxRequirementEEclEPS2_.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN4LIEF3ELF27SymbolVersionAuxRequirementEEclEPS2_.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !10
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8
  tail call void %i.aq(ptr noundef nonnull align 8 dereferenceable(48) %i.an) #14, !inline_history !78
  br label %_ZNSt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i.i

_ZNSt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN4LIEF3ELF27SymbolVersionAuxRequirementEEclEPS2_.exit.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i.i.i, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i.i.i, i64 8
  %i.at = add nsw i64 %.012.i.i.i.i.i.i.i, -1
  %i.au = icmp sgt i64 %.012.i.i.i.i.i.i.i, 1
  br i1 %i.au, label %.lr.ph.i.i.i.i.i.i.i, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.loopexit.i.i, !llvm.loop !79

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.loopexit.i.i: ; preds = %_ZNSt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS2_EEaSEOS5_.exit.i.i.i.i.i.i.i
  %.pre.i.i = load ptr, ptr %i.c, align 8, !tbaa !30
  br label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.i.i

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.i.i: ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.loopexit.i.i, %bb.l, %bb.k
  %i.av = phi ptr [ %.pre.i.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.loopexit.i.i ], [ %i.d, %bb.l ], [ %i.d, %bb.k ]
  %i.aw = getelementptr inbounds i8, ptr %i.av, i64 -8 ; 2 uses
  store ptr %i.aw, ptr %i.c, align 8, !tbaa !30
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !34 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.ax, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS3_EESaIS6_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS6_S8_EE.exit, label %_ZNKSt14default_deleteIN4LIEF3ELF27SymbolVersionAuxRequirementEEclEPS2_.exit.i.i.i

_ZNKSt14default_deleteIN4LIEF3ELF27SymbolVersionAuxRequirementEEclEPS2_.exit.i.i.i: ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.i.i
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !10
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.ba = load ptr, ptr %i.az, align 8
  tail call void %i.ba(ptr noundef nonnull align 8 dereferenceable(48) %i.ax) #14, !inline_history !80
  br label %_ZNSt6vectorISt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS3_EESaIS6_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS6_S8_EE.exit

_ZNSt6vectorISt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS3_EESaIS6_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS6_S8_EE.exit: ; preds = %._crit_edge.i.i.i, %_ZNKSt14default_deleteIN4LIEF3ELF27SymbolVersionAuxRequirementEEclEPS2_.exit.i.i.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.i.i, %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNS4_24SymbolVersionRequirement22remove_aux_requirementERS5_E3$_0ET_SH_SH_T0_.exit"
  %.0 = phi i1 [ true, %_ZNKSt14default_deleteIN4LIEF3ELF27SymbolVersionAuxRequirementEEclEPS2_.exit.i.i.i ], [ false, %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNS4_24SymbolVersionRequirement22remove_aux_requirementERS5_E3$_0ET_SH_SH_T0_.exit" ], [ true, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEESD_ET0_T_SF_SE_.exit.i.i ], [ false, %._crit_edge.i.i.i ]
  ret i1 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef ptr @_ZNK4LIEF3ELF24SymbolVersionRequirement8find_auxERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !38   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !38   ; 2 uses
  %i.e = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f                       ; 3 uses
  %i.h = ashr i64 %i.g, 5                         ; 2 uses
  %i.i = icmp sgt i64 %i.h, 0
  br i1 %i.i, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !26   ; 11 uses
  %i.l = and i64 %i.g, -32
  %scevgep.i.i.i = getelementptr i8, ptr %i.b, i64 %i.l ; 2 uses
  %i.m = icmp eq i64 %i.k, 0                      ; 4 uses
  %.pre.i.i = load ptr, ptr %1, align 8           ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF3ELF24SymbolVersionRequirement8find_auxERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_27SymbolVersionAuxRequirementESt14default_deleteISI_EESt6vectorISL_SaISL_EEEEEEbT_.exit30.thread55.i.i.i", %.lr.ph.i.i.i
  %.081.i.i.i = phi i64 [ %i.h, %.lr.ph.i.i.i ], [ %i.az, %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF3ELF24SymbolVersionRequirement8find_auxERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_27SymbolVersionAuxRequirementESt14default_deleteISI_EESt6vectorISL_SaISL_EEEEEEbT_.exit30.thread55.i.i.i" ] ; 2 uses
  %.sroa.043.080.i.i.i = phi ptr [ %i.b, %.lr.ph.i.i.i ], [ %i.ay, %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF3ELF24SymbolVersionRequirement8find_auxERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_27SymbolVersionAuxRequirementESt14default_deleteISI_EESt6vectorISL_SaISL_EEEEEEbT_.exit30.thread55.i.i.i" ] ; 11 uses
  %.val1.i.i.i.i = load ptr, ptr %.sroa.043.080.i.i.i, align 8, !tbaa !34 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !26
  %i.q = icmp eq i64 %i.p, %i.k
  br i1 %i.q, label %bb.c, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF3ELF24SymbolVersionRequirement8find_auxERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_27SymbolVersionAuxRequirementESt14default_deleteISI_EESt6vectorISL_SaISL_EEEEEEbT_.exit.thread52.i.i.i"

bb.c:                                             ; preds = %bb.b
  br i1 %i.m, label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPKSt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNKS4_24SymbolVersionRequirement8find_auxERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0ET_SP_SP_T0_.exit", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF3ELF24SymbolVersionRequirement8find_auxERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_27SymbolVersionAuxRequirementESt14default_deleteISI_EESt6vectorISL_SaISL_EEEEEEbT_.exit.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF3ELF24SymbolVersionRequirement8find_auxERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_27SymbolVersionAuxRequirementESt14default_deleteISI_EESt6vectorISL_SaISL_EEEEEEbT_.exit.i.i.i": ; preds = %bb.c
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !28
  %bcmp.i.i.i.i.i.i = tail call i32 @bcmp(ptr %i.r, ptr %.pre.i.i, i64 %i.k)
  %i.s = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.s, label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPKSt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNKS4_24SymbolVersionRequirement8find_auxERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0ET_SP_SP_T0_.exit", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF3ELF24SymbolVersionRequirement8find_auxERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_27SymbolVersionAuxRequirementESt14default_deleteISI_EESt6vectorISL_SaISL_EEEEEEbT_.exit.thread52.i.thread.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF3ELF24SymbolVersionRequirement8find_auxERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_27SymbolVersionAuxRequirementESt14default_deleteISI_EESt6vectorISL_SaISL_EEEEEEbT_.exit.thread52.i.i.i": ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.043.080.i.i.i, i64 8 ; 3 uses
  %.val1.i22.i.i.i = load ptr, ptr %i.t, align 8, !tbaa !34 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.val1.i22.i.i.i, i64 16
  %i.v = load i64, ptr %i.u, align 8, !tbaa !26
  %i.w = icmp eq i64 %i.v, %i.k
  br i1 %i.w, label %bb.d, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF3ELF24SymbolVersionRequirement8find_auxERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_27SymbolVersionAuxRequirementESt14default_deleteISI_EESt6vectorISL_SaISL_EEEEEEbT_.exit24.thread53.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF3ELF24SymbolVersionRequirement8find_auxERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_27SymbolVersionAuxRequirementESt14default_deleteISI_EESt6vectorISL_SaISL_EEEEEEbT_.exit.thread52.i.thread.i.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF3ELF24SymbolVersionRequirement8find_auxERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_27SymbolVersionAuxRequirementESt14default_deleteISI_EESt6vectorISL_SaISL_EEEEEEbT_.exit.i.i.i"
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.043.080.i.i.i, i64 8 ; 2 uses
  %.val1.i22.i6.i.i = load ptr, ptr %i.x, align 8, !tbaa !34 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.val1.i22.i6.i.i, i64 16
  %i.z = load i64, ptr %i.y, align 8, !tbaa !26
  %i.aa = icmp eq i64 %i.z, %i.k
  br i1 %i.aa, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF3ELF24SymbolVersionRequirement8find_auxERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_27SymbolVersionAuxRequirementESt14default_deleteISI_EESt6vectorISL_SaISL_EEEEEEbT_.exit24.i.i.i", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF3ELF24SymbolVersionRequirement8find_auxERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_27SymbolVersionAuxRequirementESt14default_deleteISI_EESt6vectorISL_SaISL_EEEEEEbT_.exit24.thread53.i.i.i"

bb.d:                                             ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF3ELF24SymbolVersionRequirement8find_auxERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_27SymbolVersionAuxRequirementESt14default_deleteISI_EESt6vectorISL_SaISL_EEEEEEbT_.exit.thread52.i.i.i"
  br i1 %i.m, label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPKSt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNKS4_24SymbolVersionRequirement8find_auxERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0ET_SP_SP_T0_.exit", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF3ELF24SymbolVersionRequirement8find_auxERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_27SymbolVersionAuxRequirementESt14default_deleteISI_EESt6vectorISL_SaISL_EEEEEEbT_.exit24.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF3ELF24SymbolVersionRequirement8find_auxERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_27SymbolVersionAuxRequirementESt14default_deleteISI_EESt6vectorISL_SaISL_EEEEEEbT_.exit24.i.i.i": ; preds = %bb.d, %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF3ELF24SymbolVersionRequirement8find_auxERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_27SymbolVersionAuxRequirementESt14default_deleteISI_EESt6vectorISL_SaISL_EEEEEEbT_.exit.thread52.i.thread.i.i"
  %i.ab = phi ptr [ %i.x, %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF3ELF24SymbolVersionRequirement8find_auxERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_27SymbolVersionAuxRequirementESt14default_deleteISI_EESt6vectorISL_SaISL_EEEEEEbT_.exit.thread52.i.thread.i.i" ], [ %i.t, %bb.d ]
  %.val1.i22.i.pn.i.i = phi ptr [ %.val1.i22.i6.i.i, %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF3ELF24SymbolVersionRequirement8find_auxERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_27SymbolVersionAuxRequirementESt14default_deleteISI_EESt6vectorISL_SaISL_EEEEEEbT_.exit.thread52.i.thread.i.i" ], [ %.val1.i22.i.i.i, %bb.d ] ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.val1.i22.i.pn.i.i, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !28
  %bcmp.i.i.i23.i.i.i = tail call i32 @bcmp(ptr %i.ad, ptr %.pre.i.i, i64 %i.k)
  %i.ae = icmp eq i32 %bcmp.i.i.i23.i.i.i, 0
  br i1 %i.ae, label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPKSt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNKS4_24SymbolVersionRequirement8find_auxERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0ET_SP_SP_T0_.exit", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF3ELF24SymbolVersionRequirement8find_auxERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_27SymbolVersionAuxRequirementESt14default_deleteISI_EESt6vectorISL_SaISL_EEEEEEbT_.exit24.thread53.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF3ELF24SymbolVersionRequirement8find_auxERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_27SymbolVersionAuxRequirementESt14default_deleteISI_EESt6vectorISL_SaISL_EEEEEEbT_.exit24.thread53.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF3ELF24SymbolVersionRequirement8find_auxERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_27SymbolVersionAuxRequirementESt14default_deleteISI_EESt6vectorISL_SaISL_EEEEEEbT_.exit24.i.i.i", %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF3ELF24SymbolVersionRequirement8find_auxERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_27SymbolVersionAuxRequirementESt14default_deleteISI_EESt6vectorISL_SaISL_EEEEEEbT_.exit.thread52.i.thread.i.i", %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF3ELF24SymbolVersionRequirement8find_auxERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_27SymbolVersionAuxRequirementESt14default_deleteISI_EESt6vectorISL_SaISL_EEEEEEbT_.exit.thread52.i.i.i"
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.043.080.i.i.i, i64 16
  %.val1.i25.i.i.i = load ptr, ptr %i.af, align 8, !tbaa !34 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.val1.i25.i.i.i, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %.val1.i25.i.i.i, i64 16
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !26
  %i.aj = icmp eq i64 %i.ai, %i.k
  br i1 %i.aj, label %bb.e, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF3ELF24SymbolVersionRequirement8find_auxERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_27SymbolVersionAuxRequirementESt14default_deleteISI_EESt6vectorISL_SaISL_EEEEEEbT_.exit27.thread54.i.i.i"

bb.e:                                             ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF3ELF24SymbolVersionRequirement8find_auxERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_27SymbolVersionAuxRequirementESt14default_deleteISI_EESt6vectorISL_SaISL_EEEEEEbT_.exit24.thread53.i.i.i"
  br i1 %i.m, label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPKSt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNKS4_24SymbolVersionRequirement8find_auxERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0ET_SP_SP_T0_.exit.loopexit.split.loop.exit31", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF3ELF24SymbolVersionRequirement8find_auxERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_27SymbolVersionAuxRequirementESt14default_deleteISI_EESt6vectorISL_SaISL_EEEEEEbT_.exit27.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF3ELF24SymbolVersionRequirement8find_auxERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_27SymbolVersionAuxRequirementESt14default_deleteISI_EESt6vectorISL_SaISL_EEEEEEbT_.exit27.i.i.i": ; preds = %bb.e
  %i.ak = load ptr, ptr %i.ag, align 8, !tbaa !28
  %bcmp.i.i.i26.i.i.i = tail call i32 @bcmp(ptr %i.ak, ptr %.pre.i.i, i64 %i.k)
  %i.al = icmp eq i32 %bcmp.i.i.i26.i.i.i, 0
  br i1 %i.al, label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPKSt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNKS4_24SymbolVersionRequirement8find_auxERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0ET_SP_SP_T0_.exit.loopexit.split.loop.exit", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF3ELF24SymbolVersionRequirement8find_auxERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_27SymbolVersionAuxRequirementESt14default_deleteISI_EESt6vectorISL_SaISL_EEEEEEbT_.exit27.thread54.i.thread.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF3ELF24SymbolVersionRequirement8find_auxERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_27SymbolVersionAuxRequirementESt14default_deleteISI_EESt6vectorISL_SaISL_EEEEEEbT_.exit27.thread54.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF3ELF24SymbolVersionRequirement8find_auxERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_27SymbolVersionAuxRequirementESt14default_deleteISI_EESt6vectorISL_SaISL_EEEEEEbT_.exit24.thread53.i.i.i"
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.043.080.i.i.i, i64 24 ; 3 uses
  %.val1.i28.i.i.i = load ptr, ptr %i.am, align 8, !tbaa !34 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.val1.i28.i.i.i, i64 16
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !26
  %i.ap = icmp eq i64 %i.ao, %i.k
  br i1 %i.ap, label %bb.f, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF3ELF24SymbolVersionRequirement8find_auxERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_27SymbolVersionAuxRequirementESt14default_deleteISI_EESt6vectorISL_SaISL_EEEEEEbT_.exit30.thread55.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF3ELF24SymbolVersionRequirement8find_auxERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_27SymbolVersionAuxRequirementESt14default_deleteISI_EESt6vectorISL_SaISL_EEEEEEbT_.exit27.thread54.i.thread.i.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF3ELF24SymbolVersionRequirement8find_auxERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_27SymbolVersionAuxRequirementESt14default_deleteISI_EESt6vectorISL_SaISL_EEEEEEbT_.exit27.i.i.i"
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.043.080.i.i.i, i64 24 ; 2 uses
  %.val1.i28.i7.i.i = load ptr, ptr %i.aq, align 8, !tbaa !34 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.val1.i28.i7.i.i, i64 16
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !26
  %i.at = icmp eq i64 %i.as, %i.k
  br i1 %i.at, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF3ELF24SymbolVersionRequirement8find_auxERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_27SymbolVersionAuxRequirementESt14default_deleteISI_EESt6vectorISL_SaISL_EEEEEEbT_.exit30.i.i.i", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF3ELF24SymbolVersionRequirement8find_auxERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_27SymbolVersionAuxRequirementESt14default_deleteISI_EESt6vectorISL_SaISL_EEEEEEbT_.exit30.thread55.i.i.i"

bb.f:                                             ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF3ELF24SymbolVersionRequirement8find_auxERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_27SymbolVersionAuxRequirementESt14default_deleteISI_EESt6vectorISL_SaISL_EEEEEEbT_.exit27.thread54.i.i.i"
  br i1 %i.m, label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPKSt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNKS4_24SymbolVersionRequirement8find_auxERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0ET_SP_SP_T0_.exit", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF3ELF24SymbolVersionRequirement8find_auxERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_27SymbolVersionAuxRequirementESt14default_deleteISI_EESt6vectorISL_SaISL_EEEEEEbT_.exit30.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF3ELF24SymbolVersionRequirement8find_auxERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_27SymbolVersionAuxRequirementESt14default_deleteISI_EESt6vectorISL_SaISL_EEEEEEbT_.exit30.i.i.i": ; preds = %bb.f, %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF3ELF24SymbolVersionRequirement8find_auxERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_27SymbolVersionAuxRequirementESt14default_deleteISI_EESt6vectorISL_SaISL_EEEEEEbT_.exit27.thread54.i.thread.i.i"
  %i.au = phi ptr [ %i.aq, %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF3ELF24SymbolVersionRequirement8find_auxERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_27SymbolVersionAuxRequirementESt14default_deleteISI_EESt6vectorISL_SaISL_EEEEEEbT_.exit27.thread54.i.thread.i.i" ], [ %i.am, %bb.f ]
  %.val1.i28.i.pn.i.i = phi ptr [ %.val1.i28.i7.i.i, %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF3ELF24SymbolVersionRequirement8find_auxERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_27SymbolVersionAuxRequirementESt14default_deleteISI_EESt6vectorISL_SaISL_EEEEEEbT_.exit27.thread54.i.thread.i.i" ], [ %.val1.i28.i.i.i, %bb.f ] ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.val1.i28.i.pn.i.i, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !28
  %bcmp.i.i.i29.i.i.i = tail call i32 @bcmp(ptr %i.aw, ptr %.pre.i.i, i64 %i.k)
  %i.ax = icmp eq i32 %bcmp.i.i.i29.i.i.i, 0
  br i1 %i.ax, label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPKSt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNKS4_24SymbolVersionRequirement8find_auxERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0ET_SP_SP_T0_.exit", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF3ELF24SymbolVersionRequirement8find_auxERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_27SymbolVersionAuxRequirementESt14default_deleteISI_EESt6vectorISL_SaISL_EEEEEEbT_.exit30.thread55.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF3ELF24SymbolVersionRequirement8find_auxERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_27SymbolVersionAuxRequirementESt14default_deleteISI_EESt6vectorISL_SaISL_EEEEEEbT_.exit30.thread55.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF3ELF24SymbolVersionRequirement8find_auxERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_27SymbolVersionAuxRequirementESt14default_deleteISI_EESt6vectorISL_SaISL_EEEEEEbT_.exit30.i.i.i", %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF3ELF24SymbolVersionRequirement8find_auxERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_27SymbolVersionAuxRequirementESt14default_deleteISI_EESt6vectorISL_SaISL_EEEEEEbT_.exit27.thread54.i.thread.i.i", %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF3ELF24SymbolVersionRequirement8find_auxERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_27SymbolVersionAuxRequirementESt14default_deleteISI_EESt6vectorISL_SaISL_EEEEEEbT_.exit27.thread54.i.i.i"
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.043.080.i.i.i, i64 32
  %i.az = add nsw i64 %.081.i.i.i, -1
  %i.ba = icmp sgt i64 %.081.i.i.i, 1
  br i1 %i.ba, label %bb.b, label %._crit_edge.loopexit.i.i.i, !llvm.loop !81

._crit_edge.loopexit.i.i.i:                       ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF3ELF24SymbolVersionRequirement8find_auxERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_27SymbolVersionAuxRequirementESt14default_deleteISI_EESt6vectorISL_SaISL_EEEEEEbT_.exit30.thread55.i.i.i"
  %.pre92.i.i.i = ptrtoint ptr %scevgep.i.i.i to i64
  %.pre93.i.i.i = sub i64 %i.e, %.pre92.i.i.i
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %bb.a
  %.pre-phi94.i.i.i = phi i64 [ %.pre93.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.g, %bb.a ]
  %.sroa.043.0.lcssa.i.i.i = phi ptr [ %scevgep.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %i.b, %bb.a ] ; 6 uses
  %i.bb = ashr exact i64 %.pre-phi94.i.i.i, 3
  switch i64 %i.bb, label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPKSt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNKS4_24SymbolVersionRequirement8find_auxERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0ET_SP_SP_T0_.exit.thread" [
    i64 3, label %bb.g
    i64 2, label %._crit_edge._crit_edge.i.i.i
    i64 1, label %._crit_edge._crit_edge89.i.i.i
  ]

._crit_edge._crit_edge89.i.i.i:                   ; preds = %._crit_edge.i.i.i
  %.phi.trans.insert90.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre91.i.i.i = load i64, ptr %.phi.trans.insert90.i.i.i, align 8, !tbaa !26
  br label %bb.k

._crit_edge._crit_edge.i.i.i:                     ; preds = %._crit_edge.i.i.i
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !tbaa !26
  br label %bb.i

bb.g:                                             ; preds = %._crit_edge.i.i.i
  %.val1.i31.i.i.i = load ptr, ptr %.sroa.043.0.lcssa.i.i.i, align 8, !tbaa !34 ; 4 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.val1.i31.i.i.i, i64 8
  %i.bd = getelementptr inbounds nuw i8, ptr %.val1.i31.i.i.i, i64 16
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !26 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !26 ; 2 uses
  %i.bh = icmp eq i64 %i.be, %i.bg
  br i1 %i.bh, label %bb.h, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF3ELF24SymbolVersionRequirement8find_auxERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_27SymbolVersionAuxRequirementESt14default_deleteISI_EESt6vectorISL_SaISL_EEEEEEbT_.exit33.thread56.i.i.i"

bb.h:                                             ; preds = %bb.g
  %i.bi = icmp eq i64 %i.be, 0
  br i1 %i.bi, label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPKSt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNKS4_24SymbolVersionRequirement8find_auxERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0ET_SP_SP_T0_.exit", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF3ELF24SymbolVersionRequirement8find_auxERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_27SymbolVersionAuxRequirementESt14default_deleteISI_EESt6vectorISL_SaISL_EEEEEEbT_.exit33.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF3ELF24SymbolVersionRequirement8find_auxERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_27SymbolVersionAuxRequirementESt14default_deleteISI_EESt6vectorISL_SaISL_EEEEEEbT_.exit33.i.i.i": ; preds = %bb.h
  %i.bj = load ptr, ptr %1, align 8, !tbaa !28
  %i.bk = load ptr, ptr %i.bc, align 8, !tbaa !28
  %bcmp.i.i.i32.i.i.i = tail call i32 @bcmp(ptr %i.bk, ptr %i.bj, i64 %i.be)
  %i.bl = icmp eq i32 %bcmp.i.i.i32.i.i.i, 0
  br i1 %i.bl, label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPKSt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNKS4_24SymbolVersionRequirement8find_auxERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0ET_SP_SP_T0_.exit", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF3ELF24SymbolVersionRequirement8find_auxERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_27SymbolVersionAuxRequirementESt14default_deleteISI_EESt6vectorISL_SaISL_EEEEEEbT_.exit33.thread56.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF3ELF24SymbolVersionRequirement8find_auxERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_27SymbolVersionAuxRequirementESt14default_deleteISI_EESt6vectorISL_SaISL_EEEEEEbT_.exit33.thread56.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF3ELF24SymbolVersionRequirement8find_auxERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_27SymbolVersionAuxRequirementESt14default_deleteISI_EESt6vectorISL_SaISL_EEEEEEbT_.exit33.i.i.i", %bb.g
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.043.0.lcssa.i.i.i, i64 8
  br label %bb.i

bb.i:                                             ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF3ELF24SymbolVersionRequirement8find_auxERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_27SymbolVersionAuxRequirementESt14default_deleteISI_EESt6vectorISL_SaISL_EEEEEEbT_.exit33.thread56.i.i.i", %._crit_edge._crit_edge.i.i.i
  %i.bn = phi i64 [ %i.bg, %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF3ELF24SymbolVersionRequirement8find_auxERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_27SymbolVersionAuxRequirementESt14default_deleteISI_EESt6vectorISL_SaISL_EEEEEEbT_.exit33.thread56.i.i.i" ], [ %.pre.i.i.i, %._crit_edge._crit_edge.i.i.i ] ; 4 uses
  %.sroa.043.1.i.i.i = phi ptr [ %i.bm, %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF3ELF24SymbolVersionRequirement8find_auxERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_27SymbolVersionAuxRequirementESt14default_deleteISI_EESt6vectorISL_SaISL_EEEEEEbT_.exit33.thread56.i.i.i" ], [ %.sroa.043.0.lcssa.i.i.i, %._crit_edge._crit_edge.i.i.i ] ; 4 uses
  %.val1.i34.i.i.i = load ptr, ptr %.sroa.043.1.i.i.i, align 8, !tbaa !34 ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.val1.i34.i.i.i, i64 8
  %i.bp = getelementptr inbounds nuw i8, ptr %.val1.i34.i.i.i, i64 16
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !26
  %i.br = icmp eq i64 %i.bq, %i.bn
  br i1 %i.br, label %bb.j, label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF3ELF24SymbolVersionRequirement8find_auxERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_27SymbolVersionAuxRequirementESt14default_deleteISI_EESt6vectorISL_SaISL_EEEEEEbT_.exit36.thread57.i.i.i"

bb.j:                                             ; preds = %bb.i
  %i.bs = icmp eq i64 %i.bn, 0
  br i1 %i.bs, label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPKSt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNKS4_24SymbolVersionRequirement8find_auxERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0ET_SP_SP_T0_.exit", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF3ELF24SymbolVersionRequirement8find_auxERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_27SymbolVersionAuxRequirementESt14default_deleteISI_EESt6vectorISL_SaISL_EEEEEEbT_.exit36.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF3ELF24SymbolVersionRequirement8find_auxERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_27SymbolVersionAuxRequirementESt14default_deleteISI_EESt6vectorISL_SaISL_EEEEEEbT_.exit36.i.i.i": ; preds = %bb.j
  %i.bt = load ptr, ptr %1, align 8, !tbaa !28
  %i.bu = load ptr, ptr %i.bo, align 8, !tbaa !28
  %bcmp.i.i.i35.i.i.i = tail call i32 @bcmp(ptr %i.bu, ptr %i.bt, i64 %i.bn)
  %i.bv = icmp eq i32 %bcmp.i.i.i35.i.i.i, 0
  br i1 %i.bv, label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPKSt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNKS4_24SymbolVersionRequirement8find_auxERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0ET_SP_SP_T0_.exit", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF3ELF24SymbolVersionRequirement8find_auxERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_27SymbolVersionAuxRequirementESt14default_deleteISI_EESt6vectorISL_SaISL_EEEEEEbT_.exit36.thread57.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF3ELF24SymbolVersionRequirement8find_auxERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_27SymbolVersionAuxRequirementESt14default_deleteISI_EESt6vectorISL_SaISL_EEEEEEbT_.exit36.thread57.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF3ELF24SymbolVersionRequirement8find_auxERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_27SymbolVersionAuxRequirementESt14default_deleteISI_EESt6vectorISL_SaISL_EEEEEEbT_.exit36.i.i.i", %bb.i
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.043.1.i.i.i, i64 8
  br label %bb.k

bb.k:                                             ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF3ELF24SymbolVersionRequirement8find_auxERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_27SymbolVersionAuxRequirementESt14default_deleteISI_EESt6vectorISL_SaISL_EEEEEEbT_.exit36.thread57.i.i.i", %._crit_edge._crit_edge89.i.i.i
  %i.bx = phi i64 [ %i.bn, %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF3ELF24SymbolVersionRequirement8find_auxERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_27SymbolVersionAuxRequirementESt14default_deleteISI_EESt6vectorISL_SaISL_EEEEEEbT_.exit36.thread57.i.i.i" ], [ %.pre91.i.i.i, %._crit_edge._crit_edge89.i.i.i ] ; 3 uses
  %.sroa.043.2.i.i.i = phi ptr [ %i.bw, %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF3ELF24SymbolVersionRequirement8find_auxERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_27SymbolVersionAuxRequirementESt14default_deleteISI_EESt6vectorISL_SaISL_EEEEEEbT_.exit36.thread57.i.i.i" ], [ %.sroa.043.0.lcssa.i.i.i, %._crit_edge._crit_edge89.i.i.i ] ; 3 uses
  %.val1.i37.i.i.i = load ptr, ptr %.sroa.043.2.i.i.i, align 8, !tbaa !34 ; 4 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.val1.i37.i.i.i, i64 8
  %i.bz = getelementptr inbounds nuw i8, ptr %.val1.i37.i.i.i, i64 16
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !26
  %i.cb = icmp eq i64 %i.ca, %i.bx
  br i1 %i.cb, label %bb.l, label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPKSt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNKS4_24SymbolVersionRequirement8find_auxERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0ET_SP_SP_T0_.exit.thread"

bb.l:                                             ; preds = %bb.k
  %i.cc = icmp eq i64 %i.bx, 0
  br i1 %i.cc, label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPKSt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNKS4_24SymbolVersionRequirement8find_auxERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0ET_SP_SP_T0_.exit", label %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF3ELF24SymbolVersionRequirement8find_auxERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_27SymbolVersionAuxRequirementESt14default_deleteISI_EESt6vectorISL_SaISL_EEEEEEbT_.exit39.i.i.i"

"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF3ELF24SymbolVersionRequirement8find_auxERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_27SymbolVersionAuxRequirementESt14default_deleteISI_EESt6vectorISL_SaISL_EEEEEEbT_.exit39.i.i.i": ; preds = %bb.l
  %i.cd = load ptr, ptr %1, align 8, !tbaa !28
  %i.ce = load ptr, ptr %i.by, align 8, !tbaa !28
  %bcmp.i.i.i38.i.i.i = tail call i32 @bcmp(ptr %i.ce, ptr %i.cd, i64 %i.bx)
  %i.cf = icmp eq i32 %bcmp.i.i.i38.i.i.i, 0
  br i1 %i.cf, label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPKSt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNKS4_24SymbolVersionRequirement8find_auxERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0ET_SP_SP_T0_.exit", label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPKSt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNKS4_24SymbolVersionRequirement8find_auxERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0ET_SP_SP_T0_.exit.thread"

"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPKSt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNKS4_24SymbolVersionRequirement8find_auxERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0ET_SP_SP_T0_.exit.loopexit.split.loop.exit": ; preds = %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF3ELF24SymbolVersionRequirement8find_auxERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_27SymbolVersionAuxRequirementESt14default_deleteISI_EESt6vectorISL_SaISL_EEEEEEbT_.exit27.i.i.i"
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.043.080.i.i.i, i64 16
  br label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPKSt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNKS4_24SymbolVersionRequirement8find_auxERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0ET_SP_SP_T0_.exit"

"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPKSt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNKS4_24SymbolVersionRequirement8find_auxERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0ET_SP_SP_T0_.exit.loopexit.split.loop.exit31": ; preds = %bb.e
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.043.080.i.i.i, i64 16
  br label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPKSt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNKS4_24SymbolVersionRequirement8find_auxERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0ET_SP_SP_T0_.exit"

"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPKSt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNKS4_24SymbolVersionRequirement8find_auxERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0ET_SP_SP_T0_.exit": ; preds = %bb.c, %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF3ELF24SymbolVersionRequirement8find_auxERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_27SymbolVersionAuxRequirementESt14default_deleteISI_EESt6vectorISL_SaISL_EEEEEEbT_.exit.i.i.i", %bb.d, %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF3ELF24SymbolVersionRequirement8find_auxERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_27SymbolVersionAuxRequirementESt14default_deleteISI_EESt6vectorISL_SaISL_EEEEEEbT_.exit24.i.i.i", %bb.f, %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF3ELF24SymbolVersionRequirement8find_auxERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_27SymbolVersionAuxRequirementESt14default_deleteISI_EESt6vectorISL_SaISL_EEEEEEbT_.exit30.i.i.i", %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPKSt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNKS4_24SymbolVersionRequirement8find_auxERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0ET_SP_SP_T0_.exit.loopexit.split.loop.exit", %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPKSt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNKS4_24SymbolVersionRequirement8find_auxERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0ET_SP_SP_T0_.exit.loopexit.split.loop.exit31", %bb.h, %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF3ELF24SymbolVersionRequirement8find_auxERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_27SymbolVersionAuxRequirementESt14default_deleteISI_EESt6vectorISL_SaISL_EEEEEEbT_.exit33.i.i.i", %bb.j, %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF3ELF24SymbolVersionRequirement8find_auxERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_27SymbolVersionAuxRequirementESt14default_deleteISI_EESt6vectorISL_SaISL_EEEEEEbT_.exit36.i.i.i", %bb.l, %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF3ELF24SymbolVersionRequirement8find_auxERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_27SymbolVersionAuxRequirementESt14default_deleteISI_EESt6vectorISL_SaISL_EEEEEEbT_.exit39.i.i.i"
  %i.ci = phi ptr [ %.val1.i34.i.i.i, %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF3ELF24SymbolVersionRequirement8find_auxERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_27SymbolVersionAuxRequirementESt14default_deleteISI_EESt6vectorISL_SaISL_EEEEEEbT_.exit36.i.i.i" ], [ %.val1.i31.i.i.i, %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF3ELF24SymbolVersionRequirement8find_auxERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_27SymbolVersionAuxRequirementESt14default_deleteISI_EESt6vectorISL_SaISL_EEEEEEbT_.exit33.i.i.i" ], [ %.val1.i34.i.i.i, %bb.j ], [ %.val1.i31.i.i.i, %bb.h ], [ %.val1.i37.i.i.i, %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF3ELF24SymbolVersionRequirement8find_auxERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_27SymbolVersionAuxRequirementESt14default_deleteISI_EESt6vectorISL_SaISL_EEEEEEbT_.exit39.i.i.i" ], [ %.val1.i37.i.i.i, %bb.l ], [ %.val1.i25.i.i.i, %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPKSt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNKS4_24SymbolVersionRequirement8find_auxERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0ET_SP_SP_T0_.exit.loopexit.split.loop.exit" ], [ %.val1.i25.i.i.i, %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPKSt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNKS4_24SymbolVersionRequirement8find_auxERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0ET_SP_SP_T0_.exit.loopexit.split.loop.exit31" ], [ %.val1.i28.i.i.i, %bb.f ], [ %.val1.i.i.i.i, %bb.c ], [ %.val1.i22.i.pn.i.i, %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF3ELF24SymbolVersionRequirement8find_auxERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_27SymbolVersionAuxRequirementESt14default_deleteISI_EESt6vectorISL_SaISL_EEEEEEbT_.exit24.i.i.i" ], [ %.val1.i22.i.i.i, %bb.d ], [ %.val1.i.i.i.i, %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF3ELF24SymbolVersionRequirement8find_auxERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_27SymbolVersionAuxRequirementESt14default_deleteISI_EESt6vectorISL_SaISL_EEEEEEbT_.exit.i.i.i" ], [ %.val1.i28.i.pn.i.i, %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF3ELF24SymbolVersionRequirement8find_auxERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_27SymbolVersionAuxRequirementESt14default_deleteISI_EESt6vectorISL_SaISL_EEEEEEbT_.exit30.i.i.i" ]
  %.sroa.08.0.in.sroa.speculated.i.i.i = phi ptr [ %.sroa.043.1.i.i.i, %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF3ELF24SymbolVersionRequirement8find_auxERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_27SymbolVersionAuxRequirementESt14default_deleteISI_EESt6vectorISL_SaISL_EEEEEEbT_.exit36.i.i.i" ], [ %.sroa.043.0.lcssa.i.i.i, %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF3ELF24SymbolVersionRequirement8find_auxERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_27SymbolVersionAuxRequirementESt14default_deleteISI_EESt6vectorISL_SaISL_EEEEEEbT_.exit33.i.i.i" ], [ %.sroa.043.1.i.i.i, %bb.j ], [ %.sroa.043.0.lcssa.i.i.i, %bb.h ], [ %.sroa.043.2.i.i.i, %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF3ELF24SymbolVersionRequirement8find_auxERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_27SymbolVersionAuxRequirementESt14default_deleteISI_EESt6vectorISL_SaISL_EEEEEEbT_.exit39.i.i.i" ], [ %.sroa.043.2.i.i.i, %bb.l ], [ %i.cg, %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPKSt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNKS4_24SymbolVersionRequirement8find_auxERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0ET_SP_SP_T0_.exit.loopexit.split.loop.exit" ], [ %i.ch, %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPKSt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNKS4_24SymbolVersionRequirement8find_auxERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0ET_SP_SP_T0_.exit.loopexit.split.loop.exit31" ], [ %i.am, %bb.f ], [ %.sroa.043.080.i.i.i, %bb.c ], [ %i.ab, %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF3ELF24SymbolVersionRequirement8find_auxERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_27SymbolVersionAuxRequirementESt14default_deleteISI_EESt6vectorISL_SaISL_EEEEEEbT_.exit24.i.i.i" ], [ %i.t, %bb.d ], [ %.sroa.043.080.i.i.i, %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF3ELF24SymbolVersionRequirement8find_auxERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_27SymbolVersionAuxRequirementESt14default_deleteISI_EESt6vectorISL_SaISL_EEEEEEbT_.exit.i.i.i" ], [ %i.au, %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF3ELF24SymbolVersionRequirement8find_auxERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_27SymbolVersionAuxRequirementESt14default_deleteISI_EESt6vectorISL_SaISL_EEEEEEbT_.exit30.i.i.i" ]
  %i.cj = icmp eq ptr %.sroa.08.0.in.sroa.speculated.i.i.i, %i.d
  %spec.select = select i1 %i.cj, ptr null, ptr %i.ci
  br label %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPKSt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNKS4_24SymbolVersionRequirement8find_auxERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0ET_SP_SP_T0_.exit.thread"

"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPKSt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNKS4_24SymbolVersionRequirement8find_auxERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0ET_SP_SP_T0_.exit.thread": ; preds = %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPKSt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNKS4_24SymbolVersionRequirement8find_auxERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0ET_SP_SP_T0_.exit", %bb.k, %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF3ELF24SymbolVersionRequirement8find_auxERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_27SymbolVersionAuxRequirementESt14default_deleteISI_EESt6vectorISL_SaISL_EEEEEEbT_.exit39.i.i.i", %._crit_edge.i.i.i
  %.0 = phi ptr [ null, %bb.k ], [ %spec.select, %"_ZSt7find_ifIN9__gnu_cxx17__normal_iteratorIPKSt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS5_EESt6vectorIS8_SaIS8_EEEEZNKS4_24SymbolVersionRequirement8find_auxERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0ET_SP_SP_T0_.exit" ], [ null, %._crit_edge.i.i.i ], [ null, %"_ZN9__gnu_cxx5__ops10_Iter_predIZNK4LIEF3ELF24SymbolVersionRequirement8find_auxERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3$_0EclINS_17__normal_iteratorIPKSt10unique_ptrINS3_27SymbolVersionAuxRequirementESt14default_deleteISI_EESt6vectorISL_SaISL_EEEEEEbT_.exit39.i.i.i" ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZNK4LIEF3ELF24SymbolVersionRequirement6acceptERNS_7VisitorE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(56) %1) unnamed_addr #2 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !10
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(72) %0) #14
  ret void
}

declare noundef zeroext i1 @_ZNK4LIEF6ObjecteqERKS0_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4LIEF6ObjectneERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !10
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = tail call noundef zeroext i1 %i.b(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #14
  %i.d = xor i1 %i.c, true
  ret i1 %i.d
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4LIEF3ELF24SymbolVersionRequirementD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4LIEF3ELF24SymbolVersionRequirementE, i64 16), ptr %0, align 8, !tbaa !10
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !27
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !31   ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !30   ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.h, %i.j
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS3_EEEvT_S8_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZSt8_DestroyISt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS3_EEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.o, %_ZSt8_DestroyISt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS3_EEEvPT_.exit.i.i.i ], [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  %i.k = load ptr, ptr %.05.i.i.i, align 8, !tbaa !34 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS3_EEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteIN4LIEF3ELF27SymbolVersionAuxRequirementEEclEPS2_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN4LIEF3ELF27SymbolVersionAuxRequirementEEclEPS2_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !10
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(48) %i.k) #14, !inline_history !82
  br label %_ZSt8_DestroyISt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS3_EEEvPT_.exit.i.i.i

_ZSt8_DestroyISt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS3_EEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN4LIEF3ELF27SymbolVersionAuxRequirementEEclEPS2_.exit.i.i.i.i.i, %.lr.ph.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.o, %i.j
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS3_EEEvT_S8_.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPSt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS3_EEEvT_S8_.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS3_EEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.g, align 8, !tbaa !31
  br label %_ZSt8_DestroyIPSt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS3_EEEvT_S8_.exit.i

_ZSt8_DestroyIPSt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS3_EEEvT_S8_.exit.i: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS3_EEEvT_S8_.exitthread-pre-split.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.p = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS3_EEEvT_S8_.exitthread-pre-split.i ], [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS3_EESaIS6_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS3_EEEvT_S8_.exit.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !32
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #17
  br label %_ZNSt6vectorISt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS3_EESaIS6_EED2Ev.exit

_ZNSt6vectorISt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS3_EESaIS6_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS3_EEEvT_S8_.exit.i, %bb.b
  tail call void @_ZN4LIEF6ObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #14
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4LIEF3ELF24SymbolVersionRequirementD0Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4LIEF3ELF24SymbolVersionRequirementE, i64 16), ptr %0, align 8, !tbaa !10
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !27
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #17, !inline_history !84
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !31   ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !30   ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.h, %i.j
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS3_EEEvT_S8_.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZSt8_DestroyISt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.o, %_ZSt8_DestroyISt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i ], [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ] ; 2 uses
  %i.k = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !34 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i, label %_ZNKSt14default_deleteIN4LIEF3ELF27SymbolVersionAuxRequirementEEclEPS2_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN4LIEF3ELF27SymbolVersionAuxRequirementEEclEPS2_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !10
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(48) %i.k) #14, !inline_history !83
  br label %_ZSt8_DestroyISt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN4LIEF3ELF27SymbolVersionAuxRequirementEEclEPS2_.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.o, %i.j
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS3_EEEvT_S8_.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPSt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS3_EEEvT_S8_.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.g, align 8, !tbaa !31
  br label %_ZSt8_DestroyIPSt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS3_EEEvT_S8_.exit.i.i

_ZSt8_DestroyIPSt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS3_EEEvT_S8_.exit.i.i: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS3_EEEvT_S8_.exitthread-pre-split.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.p = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPSt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS3_EEEvT_S8_.exitthread-pre-split.i.i ], [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i1.i.i, label %_ZN4LIEF3ELF24SymbolVersionRequirementD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS3_EEEvT_S8_.exit.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !32
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.p to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.u) #17, !inline_history !84
  br label %_ZN4LIEF3ELF24SymbolVersionRequirementD2Ev.exit

_ZN4LIEF3ELF24SymbolVersionRequirementD2Ev.exit:  ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS3_EEEvT_S8_.exit.i.i, %bb.b
  tail call void @_ZN4LIEF6ObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(72) %0) #14, !inline_history !84
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 72) #17
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #0

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #7

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN4LIEF6ObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #8

; Function Attrs: nounwind
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4swapERS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #13

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #14 = { nounwind }
attributes #15 = { noreturn nounwind }
attributes #16 = { builtin nounwind allocsize(0) }
attributes #17 = { builtin nounwind }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{!0, !35}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"vtable pointer", !4, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{!"short", !5, i64 0}
!12 = !{!"_ZTSN4LIEF6ObjectE"}
!13 = !{!"any pointer", !5, i64 0}
!14 = !{!"p1 _ZTSSt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS2_EE", !13, i64 0}
!15 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS3_EESaIS6_EE17_Vector_impl_dataE", !14, i64 0, !14, i64 8, !14, i64 16}
!16 = !{!"_ZTSNSt12_Vector_baseISt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS3_EESaIS6_EE12_Vector_implE", !15, i64 0}
!17 = !{!"_ZTSSt12_Vector_baseISt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS3_EESaIS6_EE", !16, i64 0}
!18 = !{!"_ZTSSt6vectorISt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS3_EESaIS6_EE", !17, i64 0}
!19 = !{!"p1 omnipotent char", !13, i64 0}
!20 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !19, i64 0}
!21 = !{!"long", !5, i64 0}
!22 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !20, i64 0, !21, i64 8, !5, i64 16}
!23 = !{!"_ZTSN4LIEF3ELF24SymbolVersionRequirementE", !12, i64 0, !18, i64 8, !11, i64 32, !22, i64 40}
!24 = !{!23, !11, i64 32}
!25 = !{!20, !19, i64 0}
!26 = !{!22, !21, i64 8}
!27 = !{!5, !5, i64 0}
!28 = !{!22, !19, i64 0}
!29 = !{!21, !21, i64 0}
!30 = !{!15, !14, i64 8}
!31 = !{!15, !14, i64 0}
!32 = !{!15, !14, i64 16}
!33 = !{!"p1 _ZTSN4LIEF3ELF27SymbolVersionAuxRequirementE", !13, i64 0}
!34 = !{!33, !33, i64 0}
!35 = !{!"llvm.loop.mustprogress"}
!36 = !{!"llvm.loop.isvectorized", i32 1}
!37 = !{!"llvm.loop.unroll.runtime.disable"}
!38 = !{!14, !14, i64 0}
!39 = !{!11, !11, i64 0}
!40 = !{!"_ZTSN4LIEF3ELF7details13Elf64_VerneedE", !11, i64 0, !11, i64 2, !6, i64 4, !6, i64 8, !6, i64 12}
!41 = !{!40, !11, i64 0}
!42 = !{!"_ZTSN4LIEF3ELF7details13Elf32_VerneedE", !11, i64 0, !11, i64 2, !6, i64 4, !6, i64 8, !6, i64 12}
!43 = !{!42, !11, i64 0}
!44 = distinct !{!44, i1 true, !"_ZSt19__relocate_object_aISt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS3_EES6_SaIS6_EEvPT_PT0_RT1_"}
!45 = distinct !{!45, !44, !"_ZSt19__relocate_object_aISt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS3_EES6_SaIS6_EEvPT_PT0_RT1_: argument 0"}
!46 = distinct !{!46, !44, !"_ZSt19__relocate_object_aISt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS3_EES6_SaIS6_EEvPT_PT0_RT1_: argument 1"}
!47 = distinct !{!47, !35, !36, !37}
!48 = distinct !{!48, !35, !37, !36}
!49 = distinct !{!49, i1 true, !"_ZSt11make_uniqueIN4LIEF3ELF27SymbolVersionAuxRequirementEJRS2_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!50 = distinct !{!50, !49, !"_ZSt11make_uniqueIN4LIEF3ELF27SymbolVersionAuxRequirementEJRS2_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!51 = distinct !{!51, i1 true, !"_ZSt19__relocate_object_aISt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS3_EES6_SaIS6_EEvPT_PT0_RT1_"}
!52 = distinct !{!52, !51, !"_ZSt19__relocate_object_aISt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS3_EES6_SaIS6_EEvPT_PT0_RT1_: argument 0"}
!53 = distinct !{!53, !51, !"_ZSt19__relocate_object_aISt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS3_EES6_SaIS6_EEvPT_PT0_RT1_: argument 1"}
!54 = distinct !{!54, i1 false, !"LVerDomain"}
!55 = distinct !{!55, !54}
!56 = distinct !{!56, !54}
!57 = distinct !{!57, !35, !36, !37}
!58 = distinct !{!58, !35, !36}
!59 = !{!45}
!60 = !{!46}
!61 = !{!50}
!62 = !{!52}
!63 = !{!53}
!64 = !{!53, !55}
!65 = !{!52, !56}
!66 = !{!55}
!67 = distinct !{!67, i1 true, !"_ZSt11make_uniqueIN4LIEF3ELF27SymbolVersionAuxRequirementEJRKS2_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!68 = distinct !{!68, !67, !"_ZSt11make_uniqueIN4LIEF3ELF27SymbolVersionAuxRequirementEJRKS2_EENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!69 = distinct !{!69, i1 true, !"_ZSt19__relocate_object_aISt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS3_EES6_SaIS6_EEvPT_PT0_RT1_"}
!70 = distinct !{!70, !69, !"_ZSt19__relocate_object_aISt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS3_EES6_SaIS6_EEvPT_PT0_RT1_: argument 0"}
!71 = distinct !{!71, !69, !"_ZSt19__relocate_object_aISt10unique_ptrIN4LIEF3ELF27SymbolVersionAuxRequirementESt14default_deleteIS3_EES6_SaIS6_EEvPT_PT0_RT1_: argument 1"}
!72 = distinct !{!72, !35, !36, !37}
!73 = distinct !{!73, !35, !37, !36}
!74 = !{!68}
!75 = !{!70}
!76 = !{!71}
!77 = distinct !{!77, !35}
!78 = distinct !{null, null, null, null, null, null, null, null, null, null, null, null}
!79 = distinct !{!79, !35}
!80 = distinct !{null, null, null, null}
!81 = distinct !{!81, !35}
!82 = distinct !{null, null, null, null, null, null}
!83 = distinct !{ptr @_ZN4LIEF3ELF24SymbolVersionRequirementD2Ev, null, null, null, null, null, null}
!84 = !{ptr @_ZN4LIEF3ELF24SymbolVersionRequirementD2Ev}
end_hunk_0
