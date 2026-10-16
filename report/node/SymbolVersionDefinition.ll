Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/SymbolVersionDefinition?download=true
inline.NumInlined: 189
inline.NumDeleted: 131
begin_hunk_0_@_ZN4LIEF3ELF23SymbolVersionDefinitionD2Ev:bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #13
  br label %_ZNSt6vectorISt10unique_ptrIN4LIEF3ELF16SymbolVersionAuxESt14default_deleteIS3_EESaIS6_EED2Ev.exit

_ZNSt6vectorISt10unique_ptrIN4LIEF3ELF16SymbolVersionAuxESt14default_deleteIS3_EESaIS6_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4LIEF3ELF16SymbolVersionAuxESt14default_deleteIS3_EEEvT_S8_.exit.i, %bb.b
  tail call void @_ZN4LIEF6ObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #12
  ret void
}

; Function Attrs: nounwind
declare void @_ZN4LIEF6ObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4LIEF3ELF23SymbolVersionDefinitionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) initializes((0, 8)) %0) unnamed_addr #0 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4LIEF3ELF23SymbolVersionDefinitionE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN4LIEF3ELF16SymbolVersionAuxESt14default_deleteIS3_EEEvT_S8_.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %_ZSt8_DestroyISt10unique_ptrIN4LIEF3ELF16SymbolVersionAuxESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.i, %_ZSt8_DestroyISt10unique_ptrIN4LIEF3ELF16SymbolVersionAuxESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %i.e = load ptr, ptr %.05.i.i.i.i, align 8      ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN4LIEF3ELF16SymbolVersionAuxESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i, label %_ZNKSt14default_deleteIN4LIEF3ELF16SymbolVersionAuxEEclEPS2_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN4LIEF3ELF16SymbolVersionAuxEEclEPS2_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(40) %i.e) #12, !inline_history !7
  br label %_ZSt8_DestroyISt10unique_ptrIN4LIEF3ELF16SymbolVersionAuxESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt10unique_ptrIN4LIEF3ELF16SymbolVersionAuxESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN4LIEF3ELF16SymbolVersionAuxEEclEPS2_.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.i, %i.d
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN4LIEF3ELF16SymbolVersionAuxESt14default_deleteIS3_EEEvT_S8_.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPSt10unique_ptrIN4LIEF3ELF16SymbolVersionAuxESt14default_deleteIS3_EEEvT_S8_.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN4LIEF3ELF16SymbolVersionAuxESt14default_deleteIS3_EEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.a, align 8
  br label %_ZSt8_DestroyIPSt10unique_ptrIN4LIEF3ELF16SymbolVersionAuxESt14default_deleteIS3_EEEvT_S8_.exit.i.i

_ZSt8_DestroyIPSt10unique_ptrIN4LIEF3ELF16SymbolVersionAuxESt14default_deleteIS3_EEEvT_S8_.exit.i.i: ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4LIEF3ELF16SymbolVersionAuxESt14default_deleteIS3_EEEvT_S8_.exitthread-pre-split.i.i, %bb.a
  %i.j = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPSt10unique_ptrIN4LIEF3ELF16SymbolVersionAuxESt14default_deleteIS3_EEEvT_S8_.exitthread-pre-split.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i1.i.i, label %_ZN4LIEF3ELF23SymbolVersionDefinitionD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4LIEF3ELF16SymbolVersionAuxESt14default_deleteIS3_EEEvT_S8_.exit.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #13, !inline_history !8
  br label %_ZN4LIEF3ELF23SymbolVersionDefinitionD2Ev.exit

_ZN4LIEF3ELF23SymbolVersionDefinitionD2Ev.exit:   ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN4LIEF3ELF16SymbolVersionAuxESt14default_deleteIS3_EEEvT_S8_.exit.i.i, %bb.b
  tail call void @_ZN4LIEF6ObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(48) %0) #12, !inline_history !8
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 48) #13
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4LIEF3ELF23SymbolVersionDefinitionC2ERKNS0_7details12Elf64_VerdefE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(20) %1) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN4LIEF6ObjectC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #12
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4LIEF3ELF23SymbolVersionDefinitionE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i16, ptr %1, align 1
  store i16 %i.b, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.e = load i16, ptr %i.d, align 1
  store i16 %i.e, ptr %i.c, align 2
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.h = load i16, ptr %i.g, align 1
  store i16 %i.h, ptr %i.f, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load i32, ptr %i.j, align 1
  store i32 %i.k, ptr %i.i, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, i8 0, i64 24, i1 false)
  ret void
}

declare void @_ZN4LIEF6ObjectC2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4LIEF3ELF23SymbolVersionDefinitionC2ERKNS0_7details12Elf32_VerdefE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(20) %1) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN4LIEF6ObjectC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #12
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4LIEF3ELF23SymbolVersionDefinitionE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i16, ptr %1, align 1
  store i16 %i.b, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.e = load i16, ptr %i.d, align 1
  store i16 %i.e, ptr %i.c, align 2
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.h = load i16, ptr %i.g, align 1
  store i16 %i.h, ptr %i.f, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load i32, ptr %i.j, align 1
  store i32 %i.k, ptr %i.i, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4LIEF3ELF23SymbolVersionDefinitionC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  tail call void @_ZN4LIEF6ObjectC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #12
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4LIEF3ELF23SymbolVersionDefinitionE, i64 16), ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i16, ptr %i.c, align 8
  store i16 %i.d, ptr %i.b, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.g = load i16, ptr %i.f, align 2
  store i16 %i.g, ptr %i.e, align 2
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.j = load i16, ptr %i.i, align 4
  store i16 %i.j, ptr %i.h, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = load i32, ptr %i.l, align 8
  store i32 %i.m, ptr %i.k, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, i8 0, i64 24, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8              ; 3 uses
  %i.r = load ptr, ptr %i.o, align 8              ; 3 uses
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = sub i64 %i.s, %i.t                       ; 3 uses
  %i.v = icmp ugt i64 %i.u, 9223372036854775800
  br i1 %i.v, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str) #14
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %.not28 = icmp eq ptr %i.q, %i.r
  br i1 %.not28, label %_ZNSt6vectorISt10unique_ptrIN4LIEF3ELF16SymbolVersionAuxESt14default_deleteIS3_EESaIS6_EE7reserveEm.exit, label %_ZNSt12_Vector_baseISt10unique_ptrIN4LIEF3ELF16SymbolVersionAuxESt14default_deleteIS3_EESaIS6_EE11_M_allocateEm.exit.i

_ZNSt12_Vector_baseISt10unique_ptrIN4LIEF3ELF16SymbolVersionAuxESt14default_deleteIS3_EESaIS6_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.y = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.u) #15 ; 6 uses
  %i.z = load ptr, ptr %i.n, align 8              ; 6 uses
  %i.aa = load ptr, ptr %i.x, align 8             ; 3 uses
  %.not10.i.i.i.i = icmp eq ptr %i.z, %i.aa
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4LIEF3ELF16SymbolVersionAuxESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZNSt12_Vector_baseISt10unique_ptrIN4LIEF3ELF16SymbolVersionAuxESt14default_deleteIS3_EESaIS6_EE11_M_allocateEm.exit.i
  %i.ab = ptrtoaddr ptr %i.aa to i64
  %i.ac = ptrtoaddr ptr %i.z to i64
  %i.ad = add i64 %i.ab, -8
  %i.ae = sub i64 %i.ad, %i.ac                    ; 2 uses
  %i.af = lshr i64 %i.ae, 3
  %i.ag = add nuw nsw i64 %i.af, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ae, 24
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader51, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %n.vec = and i64 %i.ag, 4611686018427387900     ; 3 uses
  %i.ah = shl i64 %n.vec, 3                       ; 2 uses
  %i.ai = getelementptr i8, ptr %i.y, i64 %i.ah
  %i.aj = getelementptr i8, ptr %i.z, i64 %i.ah
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ak = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.y, i64 %i.ak ; 2 uses
  %next.gep29 = getelementptr i8, ptr %i.z, i64 %i.ak ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23)
  %i.al = getelementptr i8, ptr %next.gep29, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep29, align 8, !alias.scope !23, !noalias !22
  %wide.load30 = load <2 x i64>, ptr %i.al, align 8, !alias.scope !23, !noalias !22
  %i.am = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !22, !noalias !23
  store <2 x i64> %wide.load30, ptr %i.am, align 8, !alias.scope !22, !noalias !23
  %i.an = getelementptr i8, ptr %next.gep29, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep29, align 8, !alias.scope !23, !noalias !22
  store <2 x ptr> splat (ptr null), ptr %i.an, align 8, !alias.scope !23, !noalias !22
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ao = icmp eq i64 %index.next, %n.vec
  br i1 %i.ao, label %middle.block, label %vector.body, !llvm.loop !12

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ag, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt10unique_ptrIN4LIEF3ELF16SymbolVersionAuxESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exitthread-pre-split.i, label %.lr.ph.i.i.i.i.preheader51

.lr.ph.i.i.i.i.preheader51:                       ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.ph = phi ptr [ %i.y, %.lr.ph.i.i.i.i.preheader ], [ %i.ai, %middle.block ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.z, %.lr.ph.i.i.i.i.preheader ], [ %i.aj, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader51, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.ar, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader51 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader51 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !22)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23)
  %i.ap = load i64, ptr %.0911.i.i.i.i, align 8, !alias.scope !23, !noalias !22
  store i64 %i.ap, ptr %.012.i.i.i.i, align 8, !alias.scope !22, !noalias !23
  store ptr null, ptr %.0911.i.i.i.i, align 8, !alias.scope !23, !noalias !22
  %i.aq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8
  %.not.i.i.i.i = icmp eq ptr %i.aq, %i.aa
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4LIEF3ELF16SymbolVersionAuxESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exitthread-pre-split.i, label %.lr.ph.i.i.i.i, !llvm.loop !13

_ZNSt6vectorISt10unique_ptrIN4LIEF3ELF16SymbolVersionAuxESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i.i, %middle.block
  %.pr.i = load ptr, ptr %i.n, align 8
  br label %_ZNSt6vectorISt10unique_ptrIN4LIEF3ELF16SymbolVersionAuxESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i

_ZNSt6vectorISt10unique_ptrIN4LIEF3ELF16SymbolVersionAuxESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i: ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF3ELF16SymbolVersionAuxESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exitthread-pre-split.i, %_ZNSt12_Vector_baseISt10unique_ptrIN4LIEF3ELF16SymbolVersionAuxESt14default_deleteIS3_EESaIS6_EE11_M_allocateEm.exit.i
  %i.as = phi ptr [ %.pr.i, %_ZNSt6vectorISt10unique_ptrIN4LIEF3ELF16SymbolVersionAuxESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exitthread-pre-split.i ], [ %i.z, %_ZNSt12_Vector_baseISt10unique_ptrIN4LIEF3ELF16SymbolVersionAuxESt14default_deleteIS3_EESaIS6_EE11_M_allocateEm.exit.i ] ; 3 uses
  %.not.i8.i = icmp eq ptr %i.as, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseISt10unique_ptrIN4LIEF3ELF16SymbolVersionAuxESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF3ELF16SymbolVersionAuxESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i
  %i.at = load ptr, ptr %i.w, align 8
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.as to i64
  %i.aw = sub i64 %i.au, %i.av
  tail call void @_ZdlPvm(ptr noundef nonnull %i.as, i64 noundef %i.aw) #13
  br label %_ZNSt12_Vector_baseISt10unique_ptrIN4LIEF3ELF16SymbolVersionAuxESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit.i

_ZNSt12_Vector_baseISt10unique_ptrIN4LIEF3ELF16SymbolVersionAuxESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit.i: ; preds = %bb.d, %_ZNSt6vectorISt10unique_ptrIN4LIEF3ELF16SymbolVersionAuxESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit.i
  store ptr %i.y, ptr %i.n, align 8
  store ptr %i.y, ptr %i.x, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.u
  store ptr %i.ax, ptr %i.w, align 8
  %.pre = load ptr, ptr %i.o, align 8
  %.pre17 = load ptr, ptr %i.p, align 8
  br label %_ZNSt6vectorISt10unique_ptrIN4LIEF3ELF16SymbolVersionAuxESt14default_deleteIS3_EESaIS6_EE7reserveEm.exit

_ZNSt6vectorISt10unique_ptrIN4LIEF3ELF16SymbolVersionAuxESt14default_deleteIS3_EESaIS6_EE7reserveEm.exit: ; preds = %bb.c, %_ZNSt12_Vector_baseISt10unique_ptrIN4LIEF3ELF16SymbolVersionAuxESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit.i
  %i.ay = phi ptr [ %i.q, %bb.c ], [ %.pre17, %_ZNSt12_Vector_baseISt10unique_ptrIN4LIEF3ELF16SymbolVersionAuxESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit.i ] ; 2 uses
  %i.az = phi ptr [ %i.r, %bb.c ], [ %.pre, %_ZNSt12_Vector_baseISt10unique_ptrIN4LIEF3ELF16SymbolVersionAuxESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit.i ] ; 2 uses
  %.not15 = icmp eq ptr %i.az, %i.ay
  br i1 %.not15, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF3ELF16SymbolVersionAuxESt14default_deleteIS3_EESaIS6_EE7reserveEm.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  br label %bb.e

._crit_edge:                                      ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF3ELF16SymbolVersionAuxESt14default_deleteIS3_EESaIS6_EE12emplace_backIJPS3_EEERS6_DpOT_.exit, %_ZNSt6vectorISt10unique_ptrIN4LIEF3ELF16SymbolVersionAuxESt14default_deleteIS3_EESaIS6_EE7reserveEm.exit
  ret void

bb.e:                                             ; preds = %.lr.ph, %_ZNSt6vectorISt10unique_ptrIN4LIEF3ELF16SymbolVersionAuxESt14default_deleteIS3_EESaIS6_EE12emplace_backIJPS3_EEERS6_DpOT_.exit
  %.sroa.012.016 = phi ptr [ %i.az, %.lr.ph ], [ %i.dg, %_ZNSt6vectorISt10unique_ptrIN4LIEF3ELF16SymbolVersionAuxESt14default_deleteIS3_EESaIS6_EE12emplace_backIJPS3_EEERS6_DpOT_.exit ] ; 2 uses
  %i.bb = call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #15 ; 7 uses
  %i.bc = load ptr, ptr %.sroa.012.016, align 8   ; 3 uses
  call void @_ZN4LIEF6ObjectC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(40) %i.bb, ptr noundef nonnull align 8 dereferenceable(40) %i.bc) #12
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4LIEF3ELF16SymbolVersionAuxE, i64 16), ptr %i.bb, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 8 ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 24 ; 3 uses
  store ptr %i.bf, ptr %i.bd, align 8
  %i.bg = load ptr, ptr %i.be, align 8            ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.bi = load i64, ptr %i.bh, align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i64 %i.bi, ptr %i.a, align 8
  %i.bj = icmp ugt i64 %i.bi, 15
  br i1 %i.bj, label %bb.f, label %._crit_edge.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.bk = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.bd, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) #12 ; 2 uses
  store ptr %i.bk, ptr %i.bd, align 8
  %i.bl = load i64, ptr %i.a, align 8
  store i64 %i.bl, ptr %i.bf, align 8
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.f, %bb.e
  %i.bm = phi ptr [ %i.bk, %bb.f ], [ %i.bf, %bb.e ] ; 2 uses
  switch i64 %i.bi, label %bb.h [
    i64 1, label %bb.g
    i64 0, label %_ZN4LIEF3ELF16SymbolVersionAuxC2ERKS1_.exit
  ]

bb.g:                                             ; preds = %._crit_edge.i.i.i
  %i.bn = load i8, ptr %i.bg, align 1
  store i8 %i.bn, ptr %i.bm, align 1
  br label %_ZN4LIEF3ELF16SymbolVersionAuxC2ERKS1_.exit

bb.h:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bm, ptr align 1 %i.bg, i64 %i.bi, i1 false)
  br label %_ZN4LIEF3ELF16SymbolVersionAuxC2ERKS1_.exit

_ZN4LIEF3ELF16SymbolVersionAuxC2ERKS1_.exit:      ; preds = %._crit_edge.i.i.i, %bb.g, %bb.h
  %i.bo = load i64, ptr %i.a, align 8             ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  store i64 %i.bo, ptr %i.bp, align 8
  %i.bq = load ptr, ptr %i.bd, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bo
  store i8 0, ptr %i.br, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.bs = load ptr, ptr %i.ba, align 8            ; 5 uses
  %i.bt = load ptr, ptr %i.w, align 8
  %.not.i = icmp eq ptr %i.bs, %i.bt
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZN4LIEF3ELF16SymbolVersionAuxC2ERKS1_.exit
  store ptr %i.bb, ptr %i.bs, align 8
  %i.bu = load ptr, ptr %i.ba, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  store ptr %i.bv, ptr %i.ba, align 8
  br label %_ZNSt6vectorISt10unique_ptrIN4LIEF3ELF16SymbolVersionAuxESt14default_deleteIS3_EESaIS6_EE12emplace_backIJPS3_EEERS6_DpOT_.exit

bb.j:                                             ; preds = %_ZN4LIEF3ELF16SymbolVersionAuxC2ERKS1_.exit
  %i.bw = load ptr, ptr %i.n, align 8             ; 10 uses
  %i.bx = ptrtoint ptr %i.bs to i64               ; 3 uses
  %i.by = ptrtoint ptr %i.bw to i64               ; 4 uses
  %i.bz = sub i64 %i.bx, %i.by                    ; 3 uses
  %i.ca = icmp eq i64 %i.bz, 9223372036854775800
  br i1 %i.ca, label %bb.k, label %_ZNKSt6vectorISt10unique_ptrIN4LIEF3ELF16SymbolVersionAuxESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i

bb.k:                                             ; preds = %bb.j
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #14
  unreachable

_ZNKSt6vectorISt10unique_ptrIN4LIEF3ELF16SymbolVersionAuxESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.j
  %i.cb = ashr exact i64 %i.bz, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.cb, i64 1)
  %i.cc = add nsw i64 %.sroa.speculated.i.i.i, %i.cb ; 2 uses
  %i.cd = icmp ult i64 %i.cc, %i.cb
  %i.ce = call i64 @llvm.umin.i64(i64 %i.cc, i64 1152921504606846975)
  %i.cf = select i1 %i.cd, i64 1152921504606846975, i64 %i.ce ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.cf, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.cg = shl nuw nsw i64 %i.cf, 3
  %i.ch = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cg) #15 ; 10 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.bz
  store ptr %i.bb, ptr %i.ci, align 8
  %.not10.i.i.i.i.i = icmp eq ptr %i.bw, %i.bs
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4LIEF3ELF16SymbolVersionAuxESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN4LIEF3ELF16SymbolVersionAuxESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i
  %i.cj = add i64 %i.bx, -8
  %i.ck = sub i64 %i.cj, %i.by                    ; 2 uses
  %i.cl = lshr i64 %i.ck, 3
  %i.cm = add nuw nsw i64 %i.cl, 1                ; 2 uses
  %min.iters.check36 = icmp ult i64 %i.ck, 56
  br i1 %min.iters.check36, label %.lr.ph.i.i.i.i.i.preheader50, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %scevgep = getelementptr i8, ptr %i.ch, i64 8
  %i.cn = add i64 %i.bx, -8
  %i.co = sub i64 %i.cn, %i.by
  %i.cp = and i64 %i.co, -8                       ; 2 uses
  %scevgep32 = getelementptr i8, ptr %scevgep, i64 %i.cp
  %scevgep33 = getelementptr i8, ptr %i.bw, i64 8
  %scevgep34 = getelementptr i8, ptr %scevgep33, i64 %i.cp
  %bound0 = icmp ult ptr %i.ch, %scevgep34
  %bound1 = icmp ult ptr %i.bw, %scevgep32
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader50, label %vector.ph37

vector.ph37:                                      ; preds = %vector.memcheck
  %n.vec38 = and i64 %i.cm, 4611686018427387900   ; 3 uses
  %i.cq = shl i64 %n.vec38, 3                     ; 2 uses
  %i.cr = getelementptr i8, ptr %i.ch, i64 %i.cq  ; 2 uses
  %i.cs = getelementptr i8, ptr %i.bw, i64 %i.cq
  br label %vector.body39

vector.body39:                                    ; preds = %vector.body39, %vector.ph37
  %index40 = phi i64 [ 0, %vector.ph37 ], [ %index.next45, %vector.body39 ] ; 2 uses
  %i.ct = shl i64 %index40, 3                     ; 2 uses
  %next.gep41 = getelementptr i8, ptr %i.ch, i64 %i.ct ; 2 uses
  %next.gep42 = getelementptr i8, ptr %i.bw, i64 %i.ct ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !26)
  call void @llvm.experimental.noalias.scope.decl(metadata !27)
  %i.cu = getelementptr i8, ptr %next.gep42, i64 16
  %wide.load43 = load <2 x i64>, ptr %next.gep42, align 8, !alias.scope !28, !noalias !26
  %wide.load44 = load <2 x i64>, ptr %i.cu, align 8, !alias.scope !28, !noalias !26
  %i.cv = getelementptr i8, ptr %next.gep41, i64 16
  store <2 x i64> %wide.load43, ptr %next.gep41, align 8, !alias.scope !29, !noalias !28
  store <2 x i64> %wide.load44, ptr %i.cv, align 8, !alias.scope !29, !noalias !28
  %i.cw = getelementptr i8, ptr %next.gep42, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep42, align 8, !alias.scope !28, !noalias !26
  store <2 x ptr> splat (ptr null), ptr %i.cw, align 8, !alias.scope !28, !noalias !26
  %index.next45 = add nuw i64 %index40, 4         ; 2 uses
  %i.cx = icmp eq i64 %index.next45, %n.vec38
  br i1 %i.cx, label %middle.block46, label %vector.body39, !llvm.loop !20

middle.block46:                                   ; preds = %vector.body39
  %cmp.n47 = icmp eq i64 %i.cm, %n.vec38
  br i1 %cmp.n47, label %_ZNSt6vectorISt10unique_ptrIN4LIEF3ELF16SymbolVersionAuxESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i, label %.lr.ph.i.i.i.i.i.preheader50

.lr.ph.i.i.i.i.i.preheader50:                     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block46
  %.012.i.i.i.i.i.ph = phi ptr [ %i.ch, %vector.memcheck ], [ %i.ch, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cr, %middle.block46 ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.bw, %vector.memcheck ], [ %i.bw, %.lr.ph.i.i.i.i.i.preheader ], [ %i.cs, %middle.block46 ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader50, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.da, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader50 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.cz, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader50 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !26)
  call void @llvm.experimental.noalias.scope.decl(metadata !27)
  %i.cy = load i64, ptr %.0911.i.i.i.i.i, align 8, !alias.scope !27, !noalias !26
  store i64 %i.cy, ptr %.012.i.i.i.i.i, align 8, !alias.scope !26, !noalias !27
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !alias.scope !27, !noalias !26
  %i.cz = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.cz, %i.bs
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4LIEF3ELF16SymbolVersionAuxESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !21

_ZNSt6vectorISt10unique_ptrIN4LIEF3ELF16SymbolVersionAuxESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block46, %_ZNKSt6vectorISt10unique_ptrIN4LIEF3ELF16SymbolVersionAuxESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.ch, %_ZNKSt6vectorISt10unique_ptrIN4LIEF3ELF16SymbolVersionAuxESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i.i ], [ %i.cr, %middle.block46 ], [ %i.da, %.lr.ph.i.i.i.i.i ]
  %i.db = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 8
  %.not.i23.i.i = icmp eq ptr %i.bw, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt10unique_ptrIN4LIEF3ELF16SymbolVersionAuxESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJPS3_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF3ELF16SymbolVersionAuxESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i
  %i.dc = load ptr, ptr %i.w, align 8
  %i.dd = ptrtoint ptr %i.dc to i64
  %i.de = sub i64 %i.dd, %i.by
  call void @_ZdlPvm(ptr noundef nonnull %i.bw, i64 noundef %i.de) #13
  br label %_ZNSt6vectorISt10unique_ptrIN4LIEF3ELF16SymbolVersionAuxESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJPS3_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i

_ZNSt6vectorISt10unique_ptrIN4LIEF3ELF16SymbolVersionAuxESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJPS3_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i: ; preds = %bb.l, %_ZNSt6vectorISt10unique_ptrIN4LIEF3ELF16SymbolVersionAuxESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i.i
  store ptr %i.ch, ptr %i.n, align 8
  store ptr %i.db, ptr %i.ba, align 8
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.ch, i64 %i.cf
  store ptr %i.df, ptr %i.w, align 8
  br label %_ZNSt6vectorISt10unique_ptrIN4LIEF3ELF16SymbolVersionAuxESt14default_deleteIS3_EESaIS6_EE12emplace_backIJPS3_EEERS6_DpOT_.exit

_ZNSt6vectorISt10unique_ptrIN4LIEF3ELF16SymbolVersionAuxESt14default_deleteIS3_EESaIS6_EE12emplace_backIJPS3_EEERS6_DpOT_.exit: ; preds = %bb.i, %_ZNSt6vectorISt10unique_ptrIN4LIEF3ELF16SymbolVersionAuxESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJPS3_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit.i
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.012.016, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.dg, %i.ay
  br i1 %.not, label %._crit_edge, label %bb.e
}

declare void @_ZN4LIEF6ObjectC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden noundef nonnull align 8 dereferenceable(48) ptr @_ZN4LIEF3ELF23SymbolVersionDefinitionaSES1_(ptr nofree noundef nonnull returned align 8 captures(ret: address, provenance) dereferenceable(48) %0, ptr nofree noundef align 8 captures(none) %1) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load i16, ptr %i.a, align 8
  %i.d = load i16, ptr %i.b, align 8
  store i16 %i.d, ptr %i.a, align 8
  store i16 %i.c, ptr %i.b, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 10 ; 2 uses
  %i.g = load i16, ptr %i.e, align 2
  %i.h = load i16, ptr %i.f, align 2
  store i16 %i.h, ptr %i.e, align 2
  store i16 %i.g, ptr %i.f, align 2
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.k = load i16, ptr %i.i, align 4
  %i.l = load i16, ptr %i.j, align 4
  store i16 %i.l, ptr %i.i, align 4
  store i16 %i.k, ptr %i.j, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.o = load i32, ptr %i.m, align 8
  %i.p = load i32, ptr %i.n, align 8
  store i32 %i.p, ptr %i.m, align 8
  store i32 %i.o, ptr %i.n, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = load ptr, ptr %i.r, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.y = load <2 x ptr>, ptr %i.q, align 8
  store ptr %i.v, ptr %i.q, align 8
  %i.z = load ptr, ptr %i.w, align 8
  store ptr %i.z, ptr %i.s, align 8
  %i.aa = load ptr, ptr %i.x, align 8
  store ptr %i.aa, ptr %i.t, align 8
  store <2 x ptr> %i.y, ptr %i.r, align 8
  store ptr %i.u, ptr %i.x, align 8
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZN4LIEF3ELF23SymbolVersionDefinition4swapERS1_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(48) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(48) %1) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load i16, ptr %i.a, align 8
  %i.d = load i16, ptr %i.b, align 8
  store i16 %i.d, ptr %i.a, align 8
  store i16 %i.c, ptr %i.b, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 10 ; 2 uses
  %i.g = load i16, ptr %i.e, align 2
  %i.h = load i16, ptr %i.f, align 2
  store i16 %i.h, ptr %i.e, align 2
  store i16 %i.g, ptr %i.f, align 2
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.k = load i16, ptr %i.i, align 4
  %i.l = load i16, ptr %i.j, align 4
  store i16 %i.l, ptr %i.i, align 4
  store i16 %i.k, ptr %i.j, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.o = load i32, ptr %i.m, align 8
  %i.p = load i32, ptr %i.n, align 8
  store i32 %i.p, ptr %i.m, align 8
  store i32 %i.o, ptr %i.n, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = load ptr, ptr %i.r, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.y = load <2 x ptr>, ptr %i.q, align 8
  store ptr %i.v, ptr %i.q, align 8
  %i.z = load ptr, ptr %i.w, align 8
  store ptr %i.z, ptr %i.s, align 8
  %i.aa = load ptr, ptr %i.x, align 8
  store ptr %i.aa, ptr %i.t, align 8
  store <2 x ptr> %i.y, ptr %i.r, align 8
  store ptr %i.u, ptr %i.x, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZNK4LIEF3ELF23SymbolVersionDefinition6acceptERNS_7VisitorE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(56) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 200
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(48) %0) #12
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZN4LIEF3ELFlsERSoRKNS0_23SymbolVersionDefinitionE(ptr noundef nonnull returned align 8 dereferenceable(8) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr i8, ptr %i.a, i64 -24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = and i32 %i.f, -75
  %i.h = or disjoint i32 %i.g, 8
  store i32 %i.h, ptr %i.e, align 8
  %i.i = load ptr, ptr %0, align 8
  %i.j = getelementptr i8, ptr %i.i, i64 -24
  %i.k = load i64, ptr %i.j, align 8
  %i.l = getelementptr inbounds i8, ptr %0, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8
  %i.o = and i32 %i.n, -177
  %i.p = or disjoint i32 %i.o, 32
  store i32 %i.p, ptr %i.m, align 8
  %i.q = load ptr, ptr %0, align 8
  %i.r = getelementptr i8, ptr %i.q, i64 -24
  %i.s = load i64, ptr %i.r, align 8
  %i.t = getelementptr inbounds i8, ptr %0, i64 %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store i64 10, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = load i16, ptr %i.v, align 8
  %i.x = zext i16 %i.w to i64
  %i.y = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %i.x) #12 ; 0 uses
  %i.z = load ptr, ptr %0, align 8
  %i.aa = getelementptr i8, ptr %i.z, i64 -24
  %i.ab = load i64, ptr %i.aa, align 8
  %i.ac = getelementptr inbounds i8, ptr %0, i64 %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  store i64 10, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.af = load i16, ptr %i.ae, align 2
  %i.ag = zext i16 %i.af to i64
  %i.ah = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %i.ag) #12 ; 0 uses
  %i.ai = load ptr, ptr %0, align 8
  %i.aj = getelementptr i8, ptr %i.ai, i64 -24
  %i.ak = load i64, ptr %i.aj, align 8
  %i.al = getelementptr inbounds i8, ptr %0, i64 %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store i64 10, ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ao = load i16, ptr %i.an, align 4
  %i.ap = zext i16 %i.ao to i64
  %i.aq = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %i.ap) #12 ; 0 uses
  %i.ar = load ptr, ptr %0, align 8
  %i.as = getelementptr i8, ptr %i.ar, i64 -24
  %i.at = load i64, ptr %i.as, align 8
  %i.au = getelementptr inbounds i8, ptr %0, i64 %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  store i64 10, ptr %i.av, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ax = load i32, ptr %i.aw, align 8
  %i.ay = zext i32 %i.ax to i64
  %i.az = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef %i.ay) #12 ; 0 uses
  ret ptr %0
}

declare noundef zeroext i1 @_ZNK4LIEF6ObjecteqERKS0_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4LIEF6ObjectneERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = tail call noundef zeroext i1 %i.b(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #12
  %i.d = xor i1 %i.c, true
  ret i1 %i.d
}

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #7

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #11

attributes #0 = { mustprogress nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nobuiltin nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nobuiltin allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nounwind }
attributes #13 = { builtin nounwind }
attributes #14 = { noreturn nounwind }
attributes #15 = { builtin nounwind allocsize(0) }

!llvm.module.flags = !{!1, !2, !3}
!llvm.ident = !{!4}

!0 = distinct !{!0, !5}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260707081847+70646dd3eda3-1~exp1~20260707082012.1709)"}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{null, null, null, null, null, null}
!7 = distinct !{ptr @_ZN4LIEF3ELF23SymbolVersionDefinitionD2Ev, null, null, null, null, null, null}
!8 = !{ptr @_ZN4LIEF3ELF23SymbolVersionDefinitionD2Ev}
!9 = distinct !{!9, i1 false, !"_ZSt19__relocate_object_aISt10unique_ptrIN4LIEF3ELF16SymbolVersionAuxESt14default_deleteIS3_EES6_SaIS6_EEvPT_PT0_RT1_"}
!10 = distinct !{!10, !9, !"_ZSt19__relocate_object_aISt10unique_ptrIN4LIEF3ELF16SymbolVersionAuxESt14default_deleteIS3_EES6_SaIS6_EEvPT_PT0_RT1_: argument 0"}
!11 = distinct !{!11, !9, !"_ZSt19__relocate_object_aISt10unique_ptrIN4LIEF3ELF16SymbolVersionAuxESt14default_deleteIS3_EES6_SaIS6_EEvPT_PT0_RT1_: argument 1"}
!12 = distinct !{!12, !5, !24, !25}
!13 = distinct !{!13, !5, !25, !24}
!14 = distinct !{!14, i1 false, !"_ZSt19__relocate_object_aISt10unique_ptrIN4LIEF3ELF16SymbolVersionAuxESt14default_deleteIS3_EES6_SaIS6_EEvPT_PT0_RT1_"}
!15 = distinct !{!15, !14, !"_ZSt19__relocate_object_aISt10unique_ptrIN4LIEF3ELF16SymbolVersionAuxESt14default_deleteIS3_EES6_SaIS6_EEvPT_PT0_RT1_: argument 0"}
!16 = distinct !{!16, !14, !"_ZSt19__relocate_object_aISt10unique_ptrIN4LIEF3ELF16SymbolVersionAuxESt14default_deleteIS3_EES6_SaIS6_EEvPT_PT0_RT1_: argument 1"}
!17 = distinct !{!17, i1 false, !"LVerDomain"}
!18 = distinct !{!18, !17}
!19 = distinct !{!19, !17}
!20 = distinct !{!20, !5, !24, !25}
!21 = distinct !{!21, !5, !24}
!22 = !{!10}
!23 = !{!11}
!24 = !{!"llvm.loop.isvectorized", i32 1}
!25 = !{!"llvm.loop.unroll.runtime.disable"}
!26 = !{!15}
!27 = !{!16}
!28 = !{!16, !18}
!29 = !{!15, !19}
end_hunk_0
