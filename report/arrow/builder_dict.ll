inline.NumInlined: 5256
inline.NumDeleted: 1512
begin_hunk_0_@_ZN5arrow8internal19DictionaryMemoTableD2Ev:bb.a
bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !86   ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i, label %_ZNSt10unique_ptrIN5arrow8internal9MemoTableESt14default_deleteIS2_EED2Ev.exit.i.i.i, label %_ZNKSt14default_deleteIN5arrow8internal9MemoTableEEclEPS2_.exit.i.i.i.i

_ZNKSt14default_deleteIN5arrow8internal9MemoTableEEclEPS2_.exit.i.i.i.i: ; preds = %bb.b
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !44
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.c) #25, !inline_history !107
  br label %_ZNSt10unique_ptrIN5arrow8internal9MemoTableESt14default_deleteIS2_EED2Ev.exit.i.i.i

_ZNSt10unique_ptrIN5arrow8internal9MemoTableESt14default_deleteIS2_EED2Ev.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN5arrow8internal9MemoTableEEclEPS2_.exit.i.i.i.i, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !33   ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i.i, label %_ZNKSt14default_deleteIN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImplEEclEPS3_.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt10unique_ptrIN5arrow8internal9MemoTableESt14default_deleteIS2_EED2Ev.exit.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 4 uses
  %i.j = load atomic i64, ptr %i.i acquire, align 8 ; 2 uses
  %i.k = icmp eq i64 %i.j, 4294967297
  %i.l = trunc i64 %i.j to i32                    ; 2 uses
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.i, align 8, !tbaa !41
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  store i32 0, ptr %i.m, align 4, !tbaa !43
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !44
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #25, !inline_history !108
  %i.q = load ptr, ptr %i.h, align 8, !tbaa !44
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load ptr, ptr %i.r, align 8
  tail call void %i.s(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #25, !inline_history !108
  br label %_ZNKSt14default_deleteIN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImplEEclEPS3_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.t = load i8, ptr @__libc_single_threaded, align 1, !tbaa !38
  %.not.i.i.i.i.i.i = icmp eq i8 %i.t, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = add nsw i32 %i.l, -1
  store i32 %i.u, ptr %i.i, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.v = atomicrmw volatile add ptr %i.i, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.l, %bb.f ], [ %i.v, %bb.g ]
  %i.w = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.w, label %bb.h, label %_ZNKSt14default_deleteIN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImplEEclEPS3_.exit.i, !prof !47

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #25
  br label %_ZNKSt14default_deleteIN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImplEEclEPS3_.exit.i

_ZNKSt14default_deleteIN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImplEEclEPS3_.exit.i: ; preds = %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.d, %_ZNSt10unique_ptrIN5arrow8internal9MemoTableESt14default_deleteIS2_EED2Ev.exit.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 32) #26
  br label %_ZNSt10unique_ptrIN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImplESt14default_deleteIS3_EED2Ev.exit

_ZNSt10unique_ptrIN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImplESt14default_deleteIS3_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImplEEclEPS3_.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow8internal19DictionaryMemoTable11GetOrInsertEPKNS_11BooleanTypeEbPi(ptr dead_on_unwind noalias writable writeonly sret(%"class.arrow::Status") align 8 captures(none) initializes((0, 8)) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, ptr noundef readnone captures(none) %2, i1 noundef zeroext %3, ptr noundef writeonly captures(none) initializes((0, 4)) %4) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !39
  tail call void @llvm.experimental.noalias.scope.decl(metadata !109)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !86, !noalias !109 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !112)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !115)
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = zext i1 %3 to i64
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.e ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !3, !noalias !118 ; 2 uses
  %i.h = icmp eq i32 %i.g, -1
  br i1 %i.h, label %bb.b, label %_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl11GetOrInsertINS_11BooleanTypeEbEENS_6StatusET0_Pi.exit

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !119, !noalias !118 ; 8 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 3 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !122, !noalias !118 ; 5 uses
  %i.n = load ptr, ptr %i.i, align 8, !tbaa !119, !noalias !118
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = zext nneg i32 %i.m to i64
  %.tr.i.i.i = trunc i64 %i.q to i32
  %i.s = shl i32 %.tr.i.i.i, 3
  %i.t = add i32 %i.s, %i.m                       ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !123, !noalias !118
  %.not.i.i.i.i = icmp eq ptr %i.k, %i.v
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.w = add i32 %i.m, 1
  store i32 %i.w, ptr %i.l, align 8, !tbaa !122, !noalias !118
  %i.x = icmp eq i32 %i.m, 63
  br i1 %i.x, label %bb.d, label %_ZNSt13_Bit_iteratorppEi.exit.i.i.i.i

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.l, align 8, !tbaa !122, !noalias !118
  %i.y = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.y, ptr %i.j, align 8, !tbaa !119, !noalias !118
  br label %_ZNSt13_Bit_iteratorppEi.exit.i.i.i.i

_ZNSt13_Bit_iteratorppEi.exit.i.i.i.i:            ; preds = %bb.d, %bb.c
  %i.z = shl nuw i64 1, %i.r                      ; 2 uses
  br i1 %3, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNSt13_Bit_iteratorppEi.exit.i.i.i.i
  %i.aa = load i64, ptr %i.k, align 8, !tbaa !126, !noalias !118
  %i.ab = or i64 %i.aa, %i.z
  store i64 %i.ab, ptr %i.k, align 8, !tbaa !126, !noalias !118
  br label %_ZNSt6vectorIbSaIbEE9push_backEb.exit.i.i.i

bb.f:                                             ; preds = %_ZNSt13_Bit_iteratorppEi.exit.i.i.i.i
  %i.ac = xor i64 %i.z, -1
  %i.ad = load i64, ptr %i.k, align 8, !tbaa !126, !noalias !118
  %i.ae = and i64 %i.ad, %i.ac
  store i64 %i.ae, ptr %i.k, align 8, !tbaa !126, !noalias !118
  br label %_ZNSt6vectorIbSaIbEE9push_backEb.exit.i.i.i

bb.g:                                             ; preds = %bb.b
  tail call void @_ZNSt6vectorIbSaIbEE13_M_insert_auxESt13_Bit_iteratorb(ptr noundef nonnull align 8 dereferenceable(40) %i.i, ptr %i.k, i32 %i.m, i1 noundef zeroext %3), !noalias !118
  br label %_ZNSt6vectorIbSaIbEE9push_backEb.exit.i.i.i

_ZNSt6vectorIbSaIbEE9push_backEb.exit.i.i.i:      ; preds = %bb.g, %bb.f, %bb.e
  store i32 %i.t, ptr %i.f, align 4, !tbaa !3, !noalias !118
  br label %_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl11GetOrInsertINS_11BooleanTypeEbEENS_6StatusET0_Pi.exit

_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl11GetOrInsertINS_11BooleanTypeEbEENS_6StatusET0_Pi.exit: ; preds = %bb.a, %_ZNSt6vectorIbSaIbEE9push_backEb.exit.i.i.i
  %.0.i.i.i = phi i32 [ %i.t, %_ZNSt6vectorIbSaIbEE9push_backEb.exit.i.i.i ], [ %i.g, %bb.a ]
  store i32 %.0.i.i.i, ptr %4, align 4, !tbaa !3, !noalias !118
  store ptr null, ptr %0, align 8, !tbaa !67, !alias.scope !127
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow8internal19DictionaryMemoTable11GetOrInsertEPKNS_8Int8TypeEaPi(ptr dead_on_unwind noalias writable writeonly sret(%"class.arrow::Status") align 8 captures(none) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, ptr noundef readnone captures(none) %2, i8 noundef signext %3, ptr noundef writeonly captures(none) %4) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !39
  tail call void @llvm.experimental.noalias.scope.decl(metadata !130)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !86, !noalias !130 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !133)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !136)
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = zext i8 %3 to i64
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.e ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !3, !noalias !139 ; 2 uses
  %i.h = icmp eq i32 %i.g, -1
  br i1 %i.h, label %bb.b, label %_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl11GetOrInsertINS_8Int8TypeEaEENS_6StatusET0_Pi.exit

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 1040 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 1048 ; 4 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !140, !noalias !139 ; 3 uses
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !142, !noalias !139 ; 4 uses
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n                       ; 9 uses
  %i.p = trunc i64 %i.o to i32                    ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 1056 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !143, !noalias !139
  %.not.i.i.i.i = icmp eq ptr %i.k, %i.r
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 %3, ptr %i.k, align 1, !tbaa !38, !noalias !139
  %i.s = load ptr, ptr %i.j, align 8, !tbaa !140, !noalias !139
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  store ptr %i.t, ptr %i.j, align 8, !tbaa !140, !noalias !139
  br label %_ZNSt6vectorIaSaIaEE9push_backERKa.exit.i.i.i

bb.d:                                             ; preds = %bb.b
  %i.u = icmp eq i64 %i.o, 9223372036854775807
  br i1 %i.u, label %bb.e, label %_ZNKSt6vectorIaSaIaEE12_M_check_lenEmPKc.exit.i.i.i.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.33) #27, !noalias !139
  unreachable

_ZNKSt6vectorIaSaIaEE12_M_check_lenEmPKc.exit.i.i.i.i.i: ; preds = %bb.d
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.o, i64 1)
  %i.v = add i64 %.sroa.speculated.i.i.i.i.i.i, %i.o ; 2 uses
  %i.w = icmp ult i64 %i.v, %i.o
  %i.x = tail call i64 @llvm.umin.i64(i64 %i.v, i64 9223372036854775807)
  %i.y = select i1 %i.w, i64 9223372036854775807, i64 %i.x ; 2 uses
  %5 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.y) #24, !noalias !139 ; 4 uses
  %6 = getelementptr inbounds nuw i8, ptr %5, i64 %i.o ; 2 uses
  store i8 %3, ptr %6, align 1, !tbaa !38, !noalias !139
  %7 = icmp sgt i64 %i.o, 0
  br i1 %7, label %bb.f, label %_ZNSt6vectorIaSaIaEE11_S_relocateEPaS2_S2_RS0_.exit16.i.i.i.i.i

bb.f:                                             ; preds = %_ZNKSt6vectorIaSaIaEE12_M_check_lenEmPKc.exit.i.i.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %5, ptr align 1 %i.l, i64 %i.o, i1 false), !noalias !139
  br label %_ZNSt6vectorIaSaIaEE11_S_relocateEPaS2_S2_RS0_.exit16.i.i.i.i.i

_ZNSt6vectorIaSaIaEE11_S_relocateEPaS2_S2_RS0_.exit16.i.i.i.i.i: ; preds = %bb.f, %_ZNKSt6vectorIaSaIaEE12_M_check_lenEmPKc.exit.i.i.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 1
  %.not.i17.i.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i17.i.i.i.i.i, label %_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJRKaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIaSaIaEE11_S_relocateEPaS2_S2_RS0_.exit16.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.o) #26, !noalias !139
  br label %_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJRKaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i.i.i

_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJRKaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i.i.i: ; preds = %bb.g, %_ZNSt6vectorIaSaIaEE11_S_relocateEPaS2_S2_RS0_.exit16.i.i.i.i.i
  store ptr %5, ptr %i.i, align 8, !tbaa !142, !noalias !139
  store ptr %i.z, ptr %i.j, align 8, !tbaa !140, !noalias !139
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 %i.y
  store ptr %i.aa, ptr %i.q, align 8, !tbaa !143, !noalias !139
  br label %_ZNSt6vectorIaSaIaEE9push_backERKa.exit.i.i.i

_ZNSt6vectorIaSaIaEE9push_backERKa.exit.i.i.i:    ; preds = %_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJRKaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i.i.i, %bb.c
  store i32 %i.p, ptr %i.f, align 4, !tbaa !3, !noalias !139
  br label %_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl11GetOrInsertINS_8Int8TypeEaEENS_6StatusET0_Pi.exit

_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl11GetOrInsertINS_8Int8TypeEaEENS_6StatusET0_Pi.exit: ; preds = %bb.a, %_ZNSt6vectorIaSaIaEE9push_backERKa.exit.i.i.i
  %.0.i.i.i = phi i32 [ %i.p, %_ZNSt6vectorIaSaIaEE9push_backERKa.exit.i.i.i ], [ %i.g, %bb.a ]
  store i32 %.0.i.i.i, ptr %4, align 4, !tbaa !3, !noalias !139
  store ptr null, ptr %0, align 8, !tbaa !67, !alias.scope !144
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow8internal19DictionaryMemoTable11GetOrInsertEPKNS_9Int16TypeEsPi(ptr dead_on_unwind noalias writable writeonly sret(%"class.arrow::Status") align 8 captures(none) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, ptr noundef readnone captures(none) %2, i16 noundef signext %3, ptr noundef writeonly captures(none) %4) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !39
  tail call void @llvm.experimental.noalias.scope.decl(metadata !147)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !86, !noalias !147 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !150)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !153)
  %i.d = sext i16 %3 to i64
  %i.e = mul i64 %i.d, -7046029288634856825
  %i.f = tail call noundef i64 @llvm.bswap.i64(i64 %i.e)
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !156, !noalias !164
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !165, !noalias !164
  %i.l = icmp eq i16 %3, 0
  %i.m = select i1 %i.l, i64 42, i64 %i.f         ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableIsS1_E7PayloadEE12CompareEntryILNS5_11CompareKindE0ERZNS3_11GetOrInsertIRsZNS3_11GetOrInsertIS9_EENS_6StatusEOT_PiEUliE_ZNSA_IS9_EESB_SD_SE_EUliE0_EESB_SD_OT0_OT1_SE_EUlPKS4_E_EEbmPKNS5_5EntryESI_.exit.thread.i.i.i.i.i, %bb.a
  %.pn.i.i.i.i.i = phi i64 [ %i.m, %bb.a ], [ %i.u, %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableIsS1_E7PayloadEE12CompareEntryILNS5_11CompareKindE0ERZNS3_11GetOrInsertIRsZNS3_11GetOrInsertIS9_EENS_6StatusEOT_PiEUliE_ZNSA_IS9_EESB_SD_SE_EUliE0_EESB_SD_OT0_OT1_SE_EUlPKS4_E_EEbmPKNS5_5EntryESI_.exit.thread.i.i.i.i.i ]
  %.0.in.in.i.i.i.i.i = phi i64 [ %i.m, %bb.a ], [ %.0.i.i.i.i.i, %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableIsS1_E7PayloadEE12CompareEntryILNS5_11CompareKindE0ERZNS3_11GetOrInsertIRsZNS3_11GetOrInsertIS9_EENS_6StatusEOT_PiEUliE_ZNSA_IS9_EESB_SD_SE_EUliE0_EESB_SD_OT0_OT1_SE_EUlPKS4_E_EEbmPKNS5_5EntryESI_.exit.thread.i.i.i.i.i ]
  %storemerge.i.i.i.i.i = and i64 %.pn.i.i.i.i.i, %i.k ; 2 uses
  %.0.in.i.i.i.i.i = lshr i64 %.0.in.in.i.i.i.i.i, 5
  %.0.i.i.i.i.i = add nuw nsw i64 %.0.in.i.i.i.i.i, 1 ; 2 uses
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %storemerge.i.i.i.i.i ; 5 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !166, !noalias !164 ; 2 uses
  %i.p = icmp eq i64 %i.o, %i.m
  br i1 %i.p, label %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableIsS1_E7PayloadEE12CompareEntryILNS5_11CompareKindE0ERZNS3_11GetOrInsertIRsZNS3_11GetOrInsertIS9_EENS_6StatusEOT_PiEUliE_ZNSA_IS9_EESB_SD_SE_EUliE0_EESB_SD_OT0_OT1_SE_EUlPKS4_E_EEbmPKNS5_5EntryESI_.exit.i.i.i.i.i, label %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableIsS1_E7PayloadEE12CompareEntryILNS5_11CompareKindE0ERZNS3_11GetOrInsertIRsZNS3_11GetOrInsertIS9_EENS_6StatusEOT_PiEUliE_ZNSA_IS9_EESB_SD_SE_EUliE0_EESB_SD_OT0_OT1_SE_EUlPKS4_E_EEbmPKNS5_5EntryESI_.exit.thread.i.i.i.i.i

_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableIsS1_E7PayloadEE12CompareEntryILNS5_11CompareKindE0ERZNS3_11GetOrInsertIRsZNS3_11GetOrInsertIS9_EENS_6StatusEOT_PiEUliE_ZNSA_IS9_EESB_SD_SE_EUliE0_EESB_SD_OT0_OT1_SE_EUlPKS4_E_EEbmPKNS5_5EntryESI_.exit.i.i.i.i.i: ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.r = load i16, ptr %i.q, align 8, !tbaa !169, !noalias !164
  %i.s = icmp eq i16 %3, %i.r
  br i1 %i.s, label %bb.c, label %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableIsS1_E7PayloadEE12CompareEntryILNS5_11CompareKindE0ERZNS3_11GetOrInsertIRsZNS3_11GetOrInsertIS9_EENS_6StatusEOT_PiEUliE_ZNSA_IS9_EESB_SD_SE_EUliE0_EESB_SD_OT0_OT1_SE_EUlPKS4_E_EEbmPKNS5_5EntryESI_.exit.thread.i.i.i.i.i

_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableIsS1_E7PayloadEE12CompareEntryILNS5_11CompareKindE0ERZNS3_11GetOrInsertIRsZNS3_11GetOrInsertIS9_EENS_6StatusEOT_PiEUliE_ZNSA_IS9_EESB_SD_SE_EUliE0_EESB_SD_OT0_OT1_SE_EUlPKS4_E_EEbmPKNS5_5EntryESI_.exit.thread.i.i.i.i.i: ; preds = %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableIsS1_E7PayloadEE12CompareEntryILNS5_11CompareKindE0ERZNS3_11GetOrInsertIRsZNS3_11GetOrInsertIS9_EENS_6StatusEOT_PiEUliE_ZNSA_IS9_EESB_SD_SE_EUliE0_EESB_SD_OT0_OT1_SE_EUlPKS4_E_EEbmPKNS5_5EntryESI_.exit.i.i.i.i.i, %bb.b
  %i.t = icmp eq i64 %i.o, 0
  %i.u = add i64 %.0.i.i.i.i.i, %storemerge.i.i.i.i.i
  br i1 %i.t, label %bb.d, label %bb.b, !llvm.loop !170

bb.c:                                             ; preds = %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableIsS1_E7PayloadEE12CompareEntryILNS5_11CompareKindE0ERZNS3_11GetOrInsertIRsZNS3_11GetOrInsertIS9_EENS_6StatusEOT_PiEUliE_ZNSA_IS9_EESB_SD_SE_EUliE0_EESB_SD_OT0_OT1_SE_EUlPKS4_E_EEbmPKNS5_5EntryESI_.exit.i.i.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  %i.w = load i32, ptr %i.v, align 4, !tbaa !172, !noalias !164
  br label %_ZN5arrow6StatusD2Ev.exit22.i.i.i

bb.d:                                             ; preds = %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableIsS1_E7PayloadEE12CompareEntryILNS5_11CompareKindE0ERZNS3_11GetOrInsertIRsZNS3_11GetOrInsertIS9_EENS_6StatusEOT_PiEUliE_ZNSA_IS9_EESB_SD_SE_EUliE0_EESB_SD_OT0_OT1_SE_EUlPKS4_E_EEbmPKNS5_5EntryESI_.exit.thread.i.i.i.i.i
  %i.x = load ptr, ptr %i.c, align 8, !tbaa !44, !noalias !164
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !noalias !164
  %i.aa = tail call noundef i32 %i.z(ptr noundef nonnull align 8 dereferenceable(100) %i.c), !noalias !164, !inline_history !173 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25, !noalias !164
  store i64 %i.m, ptr %i.n, align 8, !tbaa !166, !noalias !174
  %i.ab = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.523.0.insert.ext.i.i.i = zext i32 %i.aa to i64
  %.sroa.523.0.insert.shift.i.i.i = shl nuw i64 %.sroa.523.0.insert.ext.i.i.i, 32
  %.sroa.0.0.insert.ext.i.i.i = zext i16 %3 to i64
  %.sroa.0.0.insert.insert.i.i.i = or disjoint i64 %.sroa.523.0.insert.shift.i.i.i, %.sroa.0.0.insert.ext.i.i.i
  store i64 %.sroa.0.0.insert.insert.i.i.i, ptr %i.ab, align 8, !noalias !174
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !177, !noalias !174
  %i.ae = add i64 %i.ad, 1                        ; 2 uses
  store i64 %i.ae, ptr %i.ac, align 8, !tbaa !177, !noalias !174
  %i.af = shl i64 %i.ae, 1
  %i.ag = load i64, ptr %i.g, align 8, !tbaa !178, !noalias !174 ; 2 uses
  %.not.i.i.i.i = icmp ult i64 %i.af, %i.ag
  br i1 %.not.i.i.i.i, label %_ZN5arrow6StatusD2Ev.exit.thread.i.i.i, label %_ZN5arrow6StatusD2Ev.exit.i.i.i, !prof !70

_ZN5arrow6StatusD2Ev.exit.thread.i.i.i:           ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25, !noalias !164
  br label %_ZN5arrow6StatusD2Ev.exit22.i.i.i

_ZN5arrow6StatusD2Ev.exit.i.i.i:                  ; preds = %bb.d
  %i.ah = shl i64 %i.ag, 2
  call void @_ZN5arrow8internal9HashTableINS0_15ScalarMemoTableIsS1_E7PayloadEE6UpsizeEm(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %5, ptr noundef nonnull align 8 dereferenceable(88) %i.g, i64 noundef %i.ah), !noalias !164
  %.pr.i.i.i = load ptr, ptr %5, align 8, !tbaa !67, !noalias !164 ; 2 uses
  store ptr %.pr.i.i.i, ptr %0, align 8, !tbaa !67, !alias.scope !164
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25, !noalias !164
  %i.ai = icmp eq ptr %.pr.i.i.i, null
  br i1 %i.ai, label %_ZN5arrow6StatusD2Ev.exit22.i.i.i, label %_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl11GetOrInsertINS_9Int16TypeEsEENS_6StatusET0_Pi.exit

_ZN5arrow6StatusD2Ev.exit22.i.i.i:                ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i.i, %_ZN5arrow6StatusD2Ev.exit.thread.i.i.i, %bb.c
  %.016.i.i.i = phi i32 [ %i.w, %bb.c ], [ %i.aa, %_ZN5arrow6StatusD2Ev.exit.i.i.i ], [ %i.aa, %_ZN5arrow6StatusD2Ev.exit.thread.i.i.i ]
  store i32 %.016.i.i.i, ptr %4, align 4, !tbaa !3, !noalias !164
  store ptr null, ptr %0, align 8, !tbaa !67, !alias.scope !179
  br label %_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl11GetOrInsertINS_9Int16TypeEsEENS_6StatusET0_Pi.exit

_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl11GetOrInsertINS_9Int16TypeEsEENS_6StatusET0_Pi.exit: ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i.i, %_ZN5arrow6StatusD2Ev.exit22.i.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow8internal19DictionaryMemoTable11GetOrInsertEPKNS_9Int32TypeEiPi(ptr dead_on_unwind noalias writable writeonly sret(%"class.arrow::Status") align 8 captures(none) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, ptr noundef readnone captures(none) %2, i32 noundef %3, ptr noundef writeonly captures(none) %4) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !39
  tail call void @llvm.experimental.noalias.scope.decl(metadata !182)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !86, !noalias !182 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !185)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !188)
  %i.d = sext i32 %3 to i64
  %i.e = mul i64 %i.d, -7046029288634856825
  %i.f = tail call noundef i64 @llvm.bswap.i64(i64 %i.e)
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !191, !noalias !195
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !196, !noalias !195
  %i.l = icmp eq i32 %3, 0
  %i.m = select i1 %i.l, i64 42, i64 %i.f         ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableIiS1_E7PayloadEE12CompareEntryILNS5_11CompareKindE0ERZNS3_11GetOrInsertIRiZNS3_11GetOrInsertIS9_EENS_6StatusEOT_PiEUliE_ZNSA_IS9_EESB_SD_SE_EUliE0_EESB_SD_OT0_OT1_SE_EUlPKS4_E_EEbmPKNS5_5EntryESI_.exit.thread.i.i.i.i.i, %bb.a
  %.pn.i.i.i.i.i = phi i64 [ %i.m, %bb.a ], [ %i.u, %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableIiS1_E7PayloadEE12CompareEntryILNS5_11CompareKindE0ERZNS3_11GetOrInsertIRiZNS3_11GetOrInsertIS9_EENS_6StatusEOT_PiEUliE_ZNSA_IS9_EESB_SD_SE_EUliE0_EESB_SD_OT0_OT1_SE_EUlPKS4_E_EEbmPKNS5_5EntryESI_.exit.thread.i.i.i.i.i ]
  %.0.in.in.i.i.i.i.i = phi i64 [ %i.m, %bb.a ], [ %.0.i.i.i.i.i, %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableIiS1_E7PayloadEE12CompareEntryILNS5_11CompareKindE0ERZNS3_11GetOrInsertIRiZNS3_11GetOrInsertIS9_EENS_6StatusEOT_PiEUliE_ZNSA_IS9_EESB_SD_SE_EUliE0_EESB_SD_OT0_OT1_SE_EUlPKS4_E_EEbmPKNS5_5EntryESI_.exit.thread.i.i.i.i.i ]
  %storemerge.i.i.i.i.i = and i64 %.pn.i.i.i.i.i, %i.k ; 2 uses
  %.0.in.i.i.i.i.i = lshr i64 %.0.in.in.i.i.i.i.i, 5
  %.0.i.i.i.i.i = add nuw nsw i64 %.0.in.i.i.i.i.i, 1 ; 2 uses
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %storemerge.i.i.i.i.i ; 5 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !197, !noalias !195 ; 2 uses
  %i.p = icmp eq i64 %i.o, %i.m
  br i1 %i.p, label %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableIiS1_E7PayloadEE12CompareEntryILNS5_11CompareKindE0ERZNS3_11GetOrInsertIRiZNS3_11GetOrInsertIS9_EENS_6StatusEOT_PiEUliE_ZNSA_IS9_EESB_SD_SE_EUliE0_EESB_SD_OT0_OT1_SE_EUlPKS4_E_EEbmPKNS5_5EntryESI_.exit.i.i.i.i.i, label %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableIiS1_E7PayloadEE12CompareEntryILNS5_11CompareKindE0ERZNS3_11GetOrInsertIRiZNS3_11GetOrInsertIS9_EENS_6StatusEOT_PiEUliE_ZNSA_IS9_EESB_SD_SE_EUliE0_EESB_SD_OT0_OT1_SE_EUlPKS4_E_EEbmPKNS5_5EntryESI_.exit.thread.i.i.i.i.i

_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableIiS1_E7PayloadEE12CompareEntryILNS5_11CompareKindE0ERZNS3_11GetOrInsertIRiZNS3_11GetOrInsertIS9_EENS_6StatusEOT_PiEUliE_ZNSA_IS9_EESB_SD_SE_EUliE0_EESB_SD_OT0_OT1_SE_EUlPKS4_E_EEbmPKNS5_5EntryESI_.exit.i.i.i.i.i: ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.r = load i32, ptr %i.q, align 8, !tbaa !200, !noalias !195
  %i.s = icmp eq i32 %3, %i.r
  br i1 %i.s, label %bb.c, label %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableIiS1_E7PayloadEE12CompareEntryILNS5_11CompareKindE0ERZNS3_11GetOrInsertIRiZNS3_11GetOrInsertIS9_EENS_6StatusEOT_PiEUliE_ZNSA_IS9_EESB_SD_SE_EUliE0_EESB_SD_OT0_OT1_SE_EUlPKS4_E_EEbmPKNS5_5EntryESI_.exit.thread.i.i.i.i.i

_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableIiS1_E7PayloadEE12CompareEntryILNS5_11CompareKindE0ERZNS3_11GetOrInsertIRiZNS3_11GetOrInsertIS9_EENS_6StatusEOT_PiEUliE_ZNSA_IS9_EESB_SD_SE_EUliE0_EESB_SD_OT0_OT1_SE_EUlPKS4_E_EEbmPKNS5_5EntryESI_.exit.thread.i.i.i.i.i: ; preds = %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableIiS1_E7PayloadEE12CompareEntryILNS5_11CompareKindE0ERZNS3_11GetOrInsertIRiZNS3_11GetOrInsertIS9_EENS_6StatusEOT_PiEUliE_ZNSA_IS9_EESB_SD_SE_EUliE0_EESB_SD_OT0_OT1_SE_EUlPKS4_E_EEbmPKNS5_5EntryESI_.exit.i.i.i.i.i, %bb.b
  %i.t = icmp eq i64 %i.o, 0
  %i.u = add i64 %.0.i.i.i.i.i, %storemerge.i.i.i.i.i
  br i1 %i.t, label %bb.d, label %bb.b, !llvm.loop !201

bb.c:                                             ; preds = %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableIiS1_E7PayloadEE12CompareEntryILNS5_11CompareKindE0ERZNS3_11GetOrInsertIRiZNS3_11GetOrInsertIS9_EENS_6StatusEOT_PiEUliE_ZNSA_IS9_EESB_SD_SE_EUliE0_EESB_SD_OT0_OT1_SE_EUlPKS4_E_EEbmPKNS5_5EntryESI_.exit.i.i.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  %i.w = load i32, ptr %i.v, align 4, !tbaa !202, !noalias !195
  br label %_ZN5arrow6StatusD2Ev.exit22.i.i.i

bb.d:                                             ; preds = %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableIiS1_E7PayloadEE12CompareEntryILNS5_11CompareKindE0ERZNS3_11GetOrInsertIRiZNS3_11GetOrInsertIS9_EENS_6StatusEOT_PiEUliE_ZNSA_IS9_EESB_SD_SE_EUliE0_EESB_SD_OT0_OT1_SE_EUlPKS4_E_EEbmPKNS5_5EntryESI_.exit.thread.i.i.i.i.i
  %i.x = load ptr, ptr %i.c, align 8, !tbaa !44, !noalias !195
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !noalias !195
  %i.aa = tail call noundef i32 %i.z(ptr noundef nonnull align 8 dereferenceable(100) %i.c), !noalias !195, !inline_history !203 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25, !noalias !195
  store i64 %i.m, ptr %i.n, align 8, !tbaa !197, !noalias !204
  %i.ab = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.5.0.insert.ext.i.i.i = zext i32 %i.aa to i64
  %.sroa.5.0.insert.shift.i.i.i = shl nuw i64 %.sroa.5.0.insert.ext.i.i.i, 32
  %.sroa.0.0.insert.ext.i.i.i = zext i32 %3 to i64
  %.sroa.0.0.insert.insert.i.i.i = or disjoint i64 %.sroa.5.0.insert.shift.i.i.i, %.sroa.0.0.insert.ext.i.i.i
  store i64 %.sroa.0.0.insert.insert.i.i.i, ptr %i.ab, align 8, !noalias !204
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !207, !noalias !204
  %i.ae = add i64 %i.ad, 1                        ; 2 uses
  store i64 %i.ae, ptr %i.ac, align 8, !tbaa !207, !noalias !204
  %i.af = shl i64 %i.ae, 1
  %i.ag = load i64, ptr %i.g, align 8, !tbaa !208, !noalias !204 ; 2 uses
  %.not.i.i.i.i = icmp ult i64 %i.af, %i.ag
  br i1 %.not.i.i.i.i, label %_ZN5arrow6StatusD2Ev.exit.thread.i.i.i, label %_ZN5arrow6StatusD2Ev.exit.i.i.i, !prof !70

_ZN5arrow6StatusD2Ev.exit.thread.i.i.i:           ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25, !noalias !195
  br label %_ZN5arrow6StatusD2Ev.exit22.i.i.i

_ZN5arrow6StatusD2Ev.exit.i.i.i:                  ; preds = %bb.d
  %i.ah = shl i64 %i.ag, 2
  call void @_ZN5arrow8internal9HashTableINS0_15ScalarMemoTableIiS1_E7PayloadEE6UpsizeEm(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %5, ptr noundef nonnull align 8 dereferenceable(88) %i.g, i64 noundef %i.ah), !noalias !195
  %.pr.i.i.i = load ptr, ptr %5, align 8, !tbaa !67, !noalias !195 ; 2 uses
  store ptr %.pr.i.i.i, ptr %0, align 8, !tbaa !67, !alias.scope !195
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25, !noalias !195
  %i.ai = icmp eq ptr %.pr.i.i.i, null
  br i1 %i.ai, label %_ZN5arrow6StatusD2Ev.exit22.i.i.i, label %_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl11GetOrInsertINS_9Int32TypeEiEENS_6StatusET0_Pi.exit

_ZN5arrow6StatusD2Ev.exit22.i.i.i:                ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i.i, %_ZN5arrow6StatusD2Ev.exit.thread.i.i.i, %bb.c
  %.016.i.i.i = phi i32 [ %i.w, %bb.c ], [ %i.aa, %_ZN5arrow6StatusD2Ev.exit.i.i.i ], [ %i.aa, %_ZN5arrow6StatusD2Ev.exit.thread.i.i.i ]
  store i32 %.016.i.i.i, ptr %4, align 4, !tbaa !3, !noalias !195
  store ptr null, ptr %0, align 8, !tbaa !67, !alias.scope !209
  br label %_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl11GetOrInsertINS_9Int32TypeEiEENS_6StatusET0_Pi.exit

_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl11GetOrInsertINS_9Int32TypeEiEENS_6StatusET0_Pi.exit: ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i.i, %_ZN5arrow6StatusD2Ev.exit22.i.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow8internal19DictionaryMemoTable11GetOrInsertEPKNS_9Int64TypeElPi(ptr dead_on_unwind noalias writable writeonly sret(%"class.arrow::Status") align 8 captures(none) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, ptr noundef readnone captures(none) %2, i64 noundef %3, ptr noundef writeonly captures(none) %4) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !39
  tail call void @llvm.experimental.noalias.scope.decl(metadata !212)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !86, !noalias !212 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !215)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !218)
  %i.d = mul i64 %3, -7046029288634856825
  %i.e = tail call noundef i64 @llvm.bswap.i64(i64 %i.d)
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !221, !noalias !225
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !226, !noalias !225
  %i.k = icmp eq i64 %3, 0
  %i.l = select i1 %i.k, i64 42, i64 %i.e         ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableIlS1_E7PayloadEE12CompareEntryILNS5_11CompareKindE0ERZNS3_11GetOrInsertIRlZNS3_11GetOrInsertIS9_EENS_6StatusEOT_PiEUliE_ZNSA_IS9_EESB_SD_SE_EUliE0_EESB_SD_OT0_OT1_SE_EUlPKS4_E_EEbmPKNS5_5EntryESI_.exit.thread.i.i.i.i.i, %bb.a
  %.pn.i.i.i.i.i = phi i64 [ %i.l, %bb.a ], [ %i.t, %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableIlS1_E7PayloadEE12CompareEntryILNS5_11CompareKindE0ERZNS3_11GetOrInsertIRlZNS3_11GetOrInsertIS9_EENS_6StatusEOT_PiEUliE_ZNSA_IS9_EESB_SD_SE_EUliE0_EESB_SD_OT0_OT1_SE_EUlPKS4_E_EEbmPKNS5_5EntryESI_.exit.thread.i.i.i.i.i ]
  %.0.in.in.i.i.i.i.i = phi i64 [ %i.l, %bb.a ], [ %.0.i.i.i.i.i, %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableIlS1_E7PayloadEE12CompareEntryILNS5_11CompareKindE0ERZNS3_11GetOrInsertIRlZNS3_11GetOrInsertIS9_EENS_6StatusEOT_PiEUliE_ZNSA_IS9_EESB_SD_SE_EUliE0_EESB_SD_OT0_OT1_SE_EUlPKS4_E_EEbmPKNS5_5EntryESI_.exit.thread.i.i.i.i.i ]
  %storemerge.i.i.i.i.i = and i64 %.pn.i.i.i.i.i, %i.j ; 2 uses
  %.0.in.i.i.i.i.i = lshr i64 %.0.in.in.i.i.i.i.i, 5
  %.0.i.i.i.i.i = add nuw nsw i64 %.0.in.i.i.i.i.i, 1 ; 2 uses
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %storemerge.i.i.i.i.i ; 6 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !227, !noalias !225 ; 2 uses
  %i.o = icmp eq i64 %i.n, %i.l
  br i1 %i.o, label %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableIlS1_E7PayloadEE12CompareEntryILNS5_11CompareKindE0ERZNS3_11GetOrInsertIRlZNS3_11GetOrInsertIS9_EENS_6StatusEOT_PiEUliE_ZNSA_IS9_EESB_SD_SE_EUliE0_EESB_SD_OT0_OT1_SE_EUlPKS4_E_EEbmPKNS5_5EntryESI_.exit.i.i.i.i.i, label %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableIlS1_E7PayloadEE12CompareEntryILNS5_11CompareKindE0ERZNS3_11GetOrInsertIRlZNS3_11GetOrInsertIS9_EENS_6StatusEOT_PiEUliE_ZNSA_IS9_EESB_SD_SE_EUliE0_EESB_SD_OT0_OT1_SE_EUlPKS4_E_EEbmPKNS5_5EntryESI_.exit.thread.i.i.i.i.i

_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableIlS1_E7PayloadEE12CompareEntryILNS5_11CompareKindE0ERZNS3_11GetOrInsertIRlZNS3_11GetOrInsertIS9_EENS_6StatusEOT_PiEUliE_ZNSA_IS9_EESB_SD_SE_EUliE0_EESB_SD_OT0_OT1_SE_EUlPKS4_E_EEbmPKNS5_5EntryESI_.exit.i.i.i.i.i: ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !230, !noalias !225
  %i.r = icmp eq i64 %3, %i.q
  br i1 %i.r, label %bb.c, label %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableIlS1_E7PayloadEE12CompareEntryILNS5_11CompareKindE0ERZNS3_11GetOrInsertIRlZNS3_11GetOrInsertIS9_EENS_6StatusEOT_PiEUliE_ZNSA_IS9_EESB_SD_SE_EUliE0_EESB_SD_OT0_OT1_SE_EUlPKS4_E_EEbmPKNS5_5EntryESI_.exit.thread.i.i.i.i.i

_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableIlS1_E7PayloadEE12CompareEntryILNS5_11CompareKindE0ERZNS3_11GetOrInsertIRlZNS3_11GetOrInsertIS9_EENS_6StatusEOT_PiEUliE_ZNSA_IS9_EESB_SD_SE_EUliE0_EESB_SD_OT0_OT1_SE_EUlPKS4_E_EEbmPKNS5_5EntryESI_.exit.thread.i.i.i.i.i: ; preds = %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableIlS1_E7PayloadEE12CompareEntryILNS5_11CompareKindE0ERZNS3_11GetOrInsertIRlZNS3_11GetOrInsertIS9_EENS_6StatusEOT_PiEUliE_ZNSA_IS9_EESB_SD_SE_EUliE0_EESB_SD_OT0_OT1_SE_EUlPKS4_E_EEbmPKNS5_5EntryESI_.exit.i.i.i.i.i, %bb.b
  %i.s = icmp eq i64 %i.n, 0
  %i.t = add i64 %.0.i.i.i.i.i, %storemerge.i.i.i.i.i
  br i1 %i.s, label %bb.d, label %bb.b, !llvm.loop !231

bb.c:                                             ; preds = %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableIlS1_E7PayloadEE12CompareEntryILNS5_11CompareKindE0ERZNS3_11GetOrInsertIRlZNS3_11GetOrInsertIS9_EENS_6StatusEOT_PiEUliE_ZNSA_IS9_EESB_SD_SE_EUliE0_EESB_SD_OT0_OT1_SE_EUlPKS4_E_EEbmPKNS5_5EntryESI_.exit.i.i.i.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.v = load i32, ptr %i.u, align 8, !tbaa !232, !noalias !225
  br label %_ZN5arrow6StatusD2Ev.exit22.i.i.i

bb.d:                                             ; preds = %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableIlS1_E7PayloadEE12CompareEntryILNS5_11CompareKindE0ERZNS3_11GetOrInsertIRlZNS3_11GetOrInsertIS9_EENS_6StatusEOT_PiEUliE_ZNSA_IS9_EESB_SD_SE_EUliE0_EESB_SD_OT0_OT1_SE_EUlPKS4_E_EEbmPKNS5_5EntryESI_.exit.thread.i.i.i.i.i
  %i.w = load ptr, ptr %i.c, align 8, !tbaa !44, !noalias !225
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !noalias !225
  %i.z = tail call noundef i32 %i.y(ptr noundef nonnull align 8 dereferenceable(100) %i.c), !noalias !225, !inline_history !233 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25, !noalias !225
  store i64 %i.l, ptr %i.m, align 8, !tbaa !227, !noalias !234
  %i.aa = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 %3, ptr %i.aa, align 8, !tbaa !126, !noalias !234
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i32 %i.z, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !tbaa !3, !noalias !234
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !237, !noalias !234
  %i.ad = add i64 %i.ac, 1                        ; 2 uses
  store i64 %i.ad, ptr %i.ab, align 8, !tbaa !237, !noalias !234
  %i.ae = shl i64 %i.ad, 1
  %i.af = load i64, ptr %i.f, align 8, !tbaa !238, !noalias !234 ; 2 uses
  %.not.i.i.i.i = icmp ult i64 %i.ae, %i.af
  br i1 %.not.i.i.i.i, label %_ZN5arrow6StatusD2Ev.exit.thread.i.i.i, label %_ZN5arrow6StatusD2Ev.exit.i.i.i, !prof !70

_ZN5arrow6StatusD2Ev.exit.thread.i.i.i:           ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25, !noalias !225
  br label %_ZN5arrow6StatusD2Ev.exit22.i.i.i

_ZN5arrow6StatusD2Ev.exit.i.i.i:                  ; preds = %bb.d
  %i.ag = shl i64 %i.af, 2
  call void @_ZN5arrow8internal9HashTableINS0_15ScalarMemoTableIlS1_E7PayloadEE6UpsizeEm(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %5, ptr noundef nonnull align 8 dereferenceable(88) %i.f, i64 noundef %i.ag), !noalias !225
  %.pr.i.i.i = load ptr, ptr %5, align 8, !tbaa !67, !noalias !225 ; 2 uses
  store ptr %.pr.i.i.i, ptr %0, align 8, !tbaa !67, !alias.scope !225
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25, !noalias !225
  %i.ah = icmp eq ptr %.pr.i.i.i, null
  br i1 %i.ah, label %_ZN5arrow6StatusD2Ev.exit22.i.i.i, label %_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl11GetOrInsertINS_9Int64TypeElEENS_6StatusET0_Pi.exit

_ZN5arrow6StatusD2Ev.exit22.i.i.i:                ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i.i, %_ZN5arrow6StatusD2Ev.exit.thread.i.i.i, %bb.c
  %.016.i.i.i = phi i32 [ %i.v, %bb.c ], [ %i.z, %_ZN5arrow6StatusD2Ev.exit.i.i.i ], [ %i.z, %_ZN5arrow6StatusD2Ev.exit.thread.i.i.i ]
  store i32 %.016.i.i.i, ptr %4, align 4, !tbaa !3, !noalias !225
  store ptr null, ptr %0, align 8, !tbaa !67, !alias.scope !239
  br label %_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl11GetOrInsertINS_9Int64TypeElEENS_6StatusET0_Pi.exit

_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl11GetOrInsertINS_9Int64TypeElEENS_6StatusET0_Pi.exit: ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i.i, %_ZN5arrow6StatusD2Ev.exit22.i.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow8internal19DictionaryMemoTable11GetOrInsertEPKNS_9UInt8TypeEhPi(ptr dead_on_unwind noalias writable writeonly sret(%"class.arrow::Status") align 8 captures(none) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, ptr noundef readnone captures(none) %2, i8 noundef zeroext %3, ptr noundef writeonly captures(none) %4) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !39
  tail call void @llvm.experimental.noalias.scope.decl(metadata !242)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !86, !noalias !242 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !245)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !248)
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = zext i8 %3 to i64
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.e ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !3, !noalias !251 ; 2 uses
  %i.h = icmp eq i32 %i.g, -1
  br i1 %i.h, label %bb.b, label %_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl11GetOrInsertINS_9UInt8TypeEhEENS_6StatusET0_Pi.exit

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 1040 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 1048 ; 4 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !252, !noalias !251 ; 3 uses
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !254, !noalias !251 ; 4 uses
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n                       ; 9 uses
  %i.p = trunc i64 %i.o to i32                    ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 1056 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !255, !noalias !251
  %.not.i.i.i.i = icmp eq ptr %i.k, %i.r
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 %3, ptr %i.k, align 1, !tbaa !38, !noalias !251
  %i.s = load ptr, ptr %i.j, align 8, !tbaa !252, !noalias !251
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  store ptr %i.t, ptr %i.j, align 8, !tbaa !252, !noalias !251
  br label %_ZNSt6vectorIhSaIhEE9push_backERKh.exit.i.i.i

bb.d:                                             ; preds = %bb.b
  %i.u = icmp eq i64 %i.o, 9223372036854775807
  br i1 %i.u, label %bb.e, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.33) #27, !noalias !251
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i: ; preds = %bb.d
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.o, i64 1)
  %i.v = add i64 %.sroa.speculated.i.i.i.i.i.i, %i.o ; 2 uses
  %i.w = icmp ult i64 %i.v, %i.o
  %i.x = tail call i64 @llvm.umin.i64(i64 %i.v, i64 9223372036854775807)
  %i.y = select i1 %i.w, i64 9223372036854775807, i64 %i.x ; 2 uses
  %5 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.y) #24, !noalias !251 ; 4 uses
  %6 = getelementptr inbounds nuw i8, ptr %5, i64 %i.o ; 2 uses
  store i8 %3, ptr %6, align 1, !tbaa !38, !noalias !251
  %7 = icmp sgt i64 %i.o, 0
  br i1 %7, label %bb.f, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i

bb.f:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %5, ptr align 1 %i.l, i64 %i.o, i1 false), !noalias !251
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i: ; preds = %bb.f, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 1
  %.not.i17.i.i.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i17.i.i.i.i.i, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef %i.o) #26, !noalias !251
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i: ; preds = %bb.g, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i
  store ptr %5, ptr %i.i, align 8, !tbaa !254, !noalias !251
  store ptr %i.z, ptr %i.j, align 8, !tbaa !252, !noalias !251
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 %i.y
  store ptr %i.aa, ptr %i.q, align 8, !tbaa !255, !noalias !251
  br label %_ZNSt6vectorIhSaIhEE9push_backERKh.exit.i.i.i

_ZNSt6vectorIhSaIhEE9push_backERKh.exit.i.i.i:    ; preds = %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i, %bb.c
  store i32 %i.p, ptr %i.f, align 4, !tbaa !3, !noalias !251
  br label %_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl11GetOrInsertINS_9UInt8TypeEhEENS_6StatusET0_Pi.exit

_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl11GetOrInsertINS_9UInt8TypeEhEENS_6StatusET0_Pi.exit: ; preds = %bb.a, %_ZNSt6vectorIhSaIhEE9push_backERKh.exit.i.i.i
  %.0.i.i.i = phi i32 [ %i.p, %_ZNSt6vectorIhSaIhEE9push_backERKh.exit.i.i.i ], [ %i.g, %bb.a ]
  store i32 %.0.i.i.i, ptr %4, align 4, !tbaa !3, !noalias !251
  store ptr null, ptr %0, align 8, !tbaa !67, !alias.scope !256
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow8internal19DictionaryMemoTable11GetOrInsertEPKNS_10UInt16TypeEtPi(ptr dead_on_unwind noalias writable writeonly sret(%"class.arrow::Status") align 8 captures(none) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, ptr noundef readnone captures(none) %2, i16 noundef zeroext %3, ptr noundef writeonly captures(none) %4) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !39
  tail call void @llvm.experimental.noalias.scope.decl(metadata !259)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !86, !noalias !259 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !262)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !265)
  %i.d = zext i16 %3 to i64                       ; 2 uses
  %i.e = mul i64 %i.d, -7046029288634856825
  %i.f = tail call noundef i64 @llvm.bswap.i64(i64 %i.e)
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !268, !noalias !272
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !273, !noalias !272
  %i.l = icmp eq i16 %3, 0
  %i.m = select i1 %i.l, i64 42, i64 %i.f         ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableItS1_E7PayloadEE12CompareEntryILNS5_11CompareKindE0ERZNS3_11GetOrInsertIRtZNS3_11GetOrInsertIS9_EENS_6StatusEOT_PiEUliE_ZNSA_IS9_EESB_SD_SE_EUliE0_EESB_SD_OT0_OT1_SE_EUlPKS4_E_EEbmPKNS5_5EntryESI_.exit.thread.i.i.i.i.i, %bb.a
  %.pn.i.i.i.i.i = phi i64 [ %i.m, %bb.a ], [ %i.u, %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableItS1_E7PayloadEE12CompareEntryILNS5_11CompareKindE0ERZNS3_11GetOrInsertIRtZNS3_11GetOrInsertIS9_EENS_6StatusEOT_PiEUliE_ZNSA_IS9_EESB_SD_SE_EUliE0_EESB_SD_OT0_OT1_SE_EUlPKS4_E_EEbmPKNS5_5EntryESI_.exit.thread.i.i.i.i.i ]
  %.0.in.in.i.i.i.i.i = phi i64 [ %i.m, %bb.a ], [ %.0.i.i.i.i.i, %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableItS1_E7PayloadEE12CompareEntryILNS5_11CompareKindE0ERZNS3_11GetOrInsertIRtZNS3_11GetOrInsertIS9_EENS_6StatusEOT_PiEUliE_ZNSA_IS9_EESB_SD_SE_EUliE0_EESB_SD_OT0_OT1_SE_EUlPKS4_E_EEbmPKNS5_5EntryESI_.exit.thread.i.i.i.i.i ]
  %storemerge.i.i.i.i.i = and i64 %.pn.i.i.i.i.i, %i.k ; 2 uses
  %.0.in.i.i.i.i.i = lshr i64 %.0.in.in.i.i.i.i.i, 5
  %.0.i.i.i.i.i = add nuw nsw i64 %.0.in.i.i.i.i.i, 1 ; 2 uses
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %storemerge.i.i.i.i.i ; 5 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !274, !noalias !272 ; 2 uses
  %i.p = icmp eq i64 %i.o, %i.m
  br i1 %i.p, label %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableItS1_E7PayloadEE12CompareEntryILNS5_11CompareKindE0ERZNS3_11GetOrInsertIRtZNS3_11GetOrInsertIS9_EENS_6StatusEOT_PiEUliE_ZNSA_IS9_EESB_SD_SE_EUliE0_EESB_SD_OT0_OT1_SE_EUlPKS4_E_EEbmPKNS5_5EntryESI_.exit.i.i.i.i.i, label %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableItS1_E7PayloadEE12CompareEntryILNS5_11CompareKindE0ERZNS3_11GetOrInsertIRtZNS3_11GetOrInsertIS9_EENS_6StatusEOT_PiEUliE_ZNSA_IS9_EESB_SD_SE_EUliE0_EESB_SD_OT0_OT1_SE_EUlPKS4_E_EEbmPKNS5_5EntryESI_.exit.thread.i.i.i.i.i

_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableItS1_E7PayloadEE12CompareEntryILNS5_11CompareKindE0ERZNS3_11GetOrInsertIRtZNS3_11GetOrInsertIS9_EENS_6StatusEOT_PiEUliE_ZNSA_IS9_EESB_SD_SE_EUliE0_EESB_SD_OT0_OT1_SE_EUlPKS4_E_EEbmPKNS5_5EntryESI_.exit.i.i.i.i.i: ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.r = load i16, ptr %i.q, align 8, !tbaa !277, !noalias !272
  %i.s = icmp eq i16 %3, %i.r
  br i1 %i.s, label %bb.c, label %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableItS1_E7PayloadEE12CompareEntryILNS5_11CompareKindE0ERZNS3_11GetOrInsertIRtZNS3_11GetOrInsertIS9_EENS_6StatusEOT_PiEUliE_ZNSA_IS9_EESB_SD_SE_EUliE0_EESB_SD_OT0_OT1_SE_EUlPKS4_E_EEbmPKNS5_5EntryESI_.exit.thread.i.i.i.i.i

_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableItS1_E7PayloadEE12CompareEntryILNS5_11CompareKindE0ERZNS3_11GetOrInsertIRtZNS3_11GetOrInsertIS9_EENS_6StatusEOT_PiEUliE_ZNSA_IS9_EESB_SD_SE_EUliE0_EESB_SD_OT0_OT1_SE_EUlPKS4_E_EEbmPKNS5_5EntryESI_.exit.thread.i.i.i.i.i: ; preds = %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableItS1_E7PayloadEE12CompareEntryILNS5_11CompareKindE0ERZNS3_11GetOrInsertIRtZNS3_11GetOrInsertIS9_EENS_6StatusEOT_PiEUliE_ZNSA_IS9_EESB_SD_SE_EUliE0_EESB_SD_OT0_OT1_SE_EUlPKS4_E_EEbmPKNS5_5EntryESI_.exit.i.i.i.i.i, %bb.b
  %i.t = icmp eq i64 %i.o, 0
  %i.u = add i64 %.0.i.i.i.i.i, %storemerge.i.i.i.i.i
  br i1 %i.t, label %bb.d, label %bb.b, !llvm.loop !278

bb.c:                                             ; preds = %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableItS1_E7PayloadEE12CompareEntryILNS5_11CompareKindE0ERZNS3_11GetOrInsertIRtZNS3_11GetOrInsertIS9_EENS_6StatusEOT_PiEUliE_ZNSA_IS9_EESB_SD_SE_EUliE0_EESB_SD_OT0_OT1_SE_EUlPKS4_E_EEbmPKNS5_5EntryESI_.exit.i.i.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  %i.w = load i32, ptr %i.v, align 4, !tbaa !279, !noalias !272
  br label %_ZN5arrow6StatusD2Ev.exit22.i.i.i

bb.d:                                             ; preds = %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableItS1_E7PayloadEE12CompareEntryILNS5_11CompareKindE0ERZNS3_11GetOrInsertIRtZNS3_11GetOrInsertIS9_EENS_6StatusEOT_PiEUliE_ZNSA_IS9_EESB_SD_SE_EUliE0_EESB_SD_OT0_OT1_SE_EUlPKS4_E_EEbmPKNS5_5EntryESI_.exit.thread.i.i.i.i.i
  %i.x = load ptr, ptr %i.c, align 8, !tbaa !44, !noalias !272
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !noalias !272
  %i.aa = tail call noundef i32 %i.z(ptr noundef nonnull align 8 dereferenceable(100) %i.c), !noalias !272, !inline_history !280 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25, !noalias !272
  store i64 %i.m, ptr %i.n, align 8, !tbaa !274, !noalias !281
  %i.ab = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.523.0.insert.ext.i.i.i = zext i32 %i.aa to i64
  %.sroa.523.0.insert.shift.i.i.i = shl nuw i64 %.sroa.523.0.insert.ext.i.i.i, 32
  %.sroa.0.0.insert.insert.i.i.i = or disjoint i64 %.sroa.523.0.insert.shift.i.i.i, %i.d
  store i64 %.sroa.0.0.insert.insert.i.i.i, ptr %i.ab, align 8, !noalias !281
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !284, !noalias !281
  %i.ae = add i64 %i.ad, 1                        ; 2 uses
  store i64 %i.ae, ptr %i.ac, align 8, !tbaa !284, !noalias !281
  %i.af = shl i64 %i.ae, 1
  %i.ag = load i64, ptr %i.g, align 8, !tbaa !285, !noalias !281 ; 2 uses
  %.not.i.i.i.i = icmp ult i64 %i.af, %i.ag
  br i1 %.not.i.i.i.i, label %_ZN5arrow6StatusD2Ev.exit.thread.i.i.i, label %_ZN5arrow6StatusD2Ev.exit.i.i.i, !prof !70

_ZN5arrow6StatusD2Ev.exit.thread.i.i.i:           ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25, !noalias !272
  br label %_ZN5arrow6StatusD2Ev.exit22.i.i.i

_ZN5arrow6StatusD2Ev.exit.i.i.i:                  ; preds = %bb.d
  %i.ah = shl i64 %i.ag, 2
  call void @_ZN5arrow8internal9HashTableINS0_15ScalarMemoTableItS1_E7PayloadEE6UpsizeEm(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %5, ptr noundef nonnull align 8 dereferenceable(88) %i.g, i64 noundef %i.ah), !noalias !272
  %.pr.i.i.i = load ptr, ptr %5, align 8, !tbaa !67, !noalias !272 ; 2 uses
  store ptr %.pr.i.i.i, ptr %0, align 8, !tbaa !67, !alias.scope !272
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25, !noalias !272
  %i.ai = icmp eq ptr %.pr.i.i.i, null
  br i1 %i.ai, label %_ZN5arrow6StatusD2Ev.exit22.i.i.i, label %_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl11GetOrInsertINS_10UInt16TypeEtEENS_6StatusET0_Pi.exit

_ZN5arrow6StatusD2Ev.exit22.i.i.i:                ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i.i, %_ZN5arrow6StatusD2Ev.exit.thread.i.i.i, %bb.c
  %.016.i.i.i = phi i32 [ %i.w, %bb.c ], [ %i.aa, %_ZN5arrow6StatusD2Ev.exit.i.i.i ], [ %i.aa, %_ZN5arrow6StatusD2Ev.exit.thread.i.i.i ]
  store i32 %.016.i.i.i, ptr %4, align 4, !tbaa !3, !noalias !272
  store ptr null, ptr %0, align 8, !tbaa !67, !alias.scope !286
  br label %_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl11GetOrInsertINS_10UInt16TypeEtEENS_6StatusET0_Pi.exit

_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl11GetOrInsertINS_10UInt16TypeEtEENS_6StatusET0_Pi.exit: ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i.i, %_ZN5arrow6StatusD2Ev.exit22.i.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow8internal19DictionaryMemoTable11GetOrInsertEPKNS_10UInt32TypeEjPi(ptr dead_on_unwind noalias writable writeonly sret(%"class.arrow::Status") align 8 captures(none) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1, ptr noundef readnone captures(none) %2, i32 noundef %3, ptr noundef writeonly captures(none) %4) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !39
  tail call void @llvm.experimental.noalias.scope.decl(metadata !289)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !86, !noalias !289 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !292)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !295)
  %i.d = zext i32 %3 to i64                       ; 2 uses
  %i.e = mul i64 %i.d, -7046029288634856825
  %i.f = tail call noundef i64 @llvm.bswap.i64(i64 %i.e)
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !298, !noalias !302
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !303, !noalias !302
  %i.l = icmp eq i32 %3, 0
  %i.m = select i1 %i.l, i64 42, i64 %i.f         ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableIjS1_E7PayloadEE12CompareEntryILNS5_11CompareKindE0ERZNS3_11GetOrInsertIRjZNS3_11GetOrInsertIS9_EENS_6StatusEOT_PiEUliE_ZNSA_IS9_EESB_SD_SE_EUliE0_EESB_SD_OT0_OT1_SE_EUlPKS4_E_EEbmPKNS5_5EntryESI_.exit.thread.i.i.i.i.i, %bb.a
  %.pn.i.i.i.i.i = phi i64 [ %i.m, %bb.a ], [ %i.u, %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableIjS1_E7PayloadEE12CompareEntryILNS5_11CompareKindE0ERZNS3_11GetOrInsertIRjZNS3_11GetOrInsertIS9_EENS_6StatusEOT_PiEUliE_ZNSA_IS9_EESB_SD_SE_EUliE0_EESB_SD_OT0_OT1_SE_EUlPKS4_E_EEbmPKNS5_5EntryESI_.exit.thread.i.i.i.i.i ]
  %.0.in.in.i.i.i.i.i = phi i64 [ %i.m, %bb.a ], [ %.0.i.i.i.i.i, %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableIjS1_E7PayloadEE12CompareEntryILNS5_11CompareKindE0ERZNS3_11GetOrInsertIRjZNS3_11GetOrInsertIS9_EENS_6StatusEOT_PiEUliE_ZNSA_IS9_EESB_SD_SE_EUliE0_EESB_SD_OT0_OT1_SE_EUlPKS4_E_EEbmPKNS5_5EntryESI_.exit.thread.i.i.i.i.i ]
  %storemerge.i.i.i.i.i = and i64 %.pn.i.i.i.i.i, %i.k ; 2 uses
  %.0.in.i.i.i.i.i = lshr i64 %.0.in.in.i.i.i.i.i, 5
  %.0.i.i.i.i.i = add nuw nsw i64 %.0.in.i.i.i.i.i, 1 ; 2 uses
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %storemerge.i.i.i.i.i ; 5 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !304, !noalias !302 ; 2 uses
  %i.p = icmp eq i64 %i.o, %i.m
  br i1 %i.p, label %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableIjS1_E7PayloadEE12CompareEntryILNS5_11CompareKindE0ERZNS3_11GetOrInsertIRjZNS3_11GetOrInsertIS9_EENS_6StatusEOT_PiEUliE_ZNSA_IS9_EESB_SD_SE_EUliE0_EESB_SD_OT0_OT1_SE_EUlPKS4_E_EEbmPKNS5_5EntryESI_.exit.i.i.i.i.i, label %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableIjS1_E7PayloadEE12CompareEntryILNS5_11CompareKindE0ERZNS3_11GetOrInsertIRjZNS3_11GetOrInsertIS9_EENS_6StatusEOT_PiEUliE_ZNSA_IS9_EESB_SD_SE_EUliE0_EESB_SD_OT0_OT1_SE_EUlPKS4_E_EEbmPKNS5_5EntryESI_.exit.thread.i.i.i.i.i

_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableIjS1_E7PayloadEE12CompareEntryILNS5_11CompareKindE0ERZNS3_11GetOrInsertIRjZNS3_11GetOrInsertIS9_EENS_6StatusEOT_PiEUliE_ZNSA_IS9_EESB_SD_SE_EUliE0_EESB_SD_OT0_OT1_SE_EUlPKS4_E_EEbmPKNS5_5EntryESI_.exit.i.i.i.i.i: ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.r = load i32, ptr %i.q, align 8, !tbaa !307, !noalias !302
  %i.s = icmp eq i32 %3, %i.r
  br i1 %i.s, label %bb.c, label %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableIjS1_E7PayloadEE12CompareEntryILNS5_11CompareKindE0ERZNS3_11GetOrInsertIRjZNS3_11GetOrInsertIS9_EENS_6StatusEOT_PiEUliE_ZNSA_IS9_EESB_SD_SE_EUliE0_EESB_SD_OT0_OT1_SE_EUlPKS4_E_EEbmPKNS5_5EntryESI_.exit.thread.i.i.i.i.i

_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableIjS1_E7PayloadEE12CompareEntryILNS5_11CompareKindE0ERZNS3_11GetOrInsertIRjZNS3_11GetOrInsertIS9_EENS_6StatusEOT_PiEUliE_ZNSA_IS9_EESB_SD_SE_EUliE0_EESB_SD_OT0_OT1_SE_EUlPKS4_E_EEbmPKNS5_5EntryESI_.exit.thread.i.i.i.i.i: ; preds = %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableIjS1_E7PayloadEE12CompareEntryILNS5_11CompareKindE0ERZNS3_11GetOrInsertIRjZNS3_11GetOrInsertIS9_EENS_6StatusEOT_PiEUliE_ZNSA_IS9_EESB_SD_SE_EUliE0_EESB_SD_OT0_OT1_SE_EUlPKS4_E_EEbmPKNS5_5EntryESI_.exit.i.i.i.i.i, %bb.b
  %i.t = icmp eq i64 %i.o, 0
  %i.u = add i64 %.0.i.i.i.i.i, %storemerge.i.i.i.i.i
  br i1 %i.t, label %bb.d, label %bb.b, !llvm.loop !308

bb.c:                                             ; preds = %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableIjS1_E7PayloadEE12CompareEntryILNS5_11CompareKindE0ERZNS3_11GetOrInsertIRjZNS3_11GetOrInsertIS9_EENS_6StatusEOT_PiEUliE_ZNSA_IS9_EESB_SD_SE_EUliE0_EESB_SD_OT0_OT1_SE_EUlPKS4_E_EEbmPKNS5_5EntryESI_.exit.i.i.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  %i.w = load i32, ptr %i.v, align 4, !tbaa !309, !noalias !302
  br label %_ZN5arrow6StatusD2Ev.exit22.i.i.i

bb.d:                                             ; preds = %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableIjS1_E7PayloadEE12CompareEntryILNS5_11CompareKindE0ERZNS3_11GetOrInsertIRjZNS3_11GetOrInsertIS9_EENS_6StatusEOT_PiEUliE_ZNSA_IS9_EESB_SD_SE_EUliE0_EESB_SD_OT0_OT1_SE_EUlPKS4_E_EEbmPKNS5_5EntryESI_.exit.thread.i.i.i.i.i
  %i.x = load ptr, ptr %i.c, align 8, !tbaa !44, !noalias !302
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !noalias !302
  %i.aa = tail call noundef i32 %i.z(ptr noundef nonnull align 8 dereferenceable(100) %i.c), !noalias !302, !inline_history !310 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25, !noalias !302
  store i64 %i.m, ptr %i.n, align 8, !tbaa !304, !noalias !311
  %i.ab = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.5.0.insert.ext.i.i.i = zext i32 %i.aa to i64
  %.sroa.5.0.insert.shift.i.i.i = shl nuw i64 %.sroa.5.0.insert.ext.i.i.i, 32
  %.sroa.0.0.insert.insert.i.i.i = or disjoint i64 %.sroa.5.0.insert.shift.i.i.i, %i.d
  store i64 %.sroa.0.0.insert.insert.i.i.i, ptr %i.ab, align 8, !noalias !311
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !314, !noalias !311
  %i.ae = add i64 %i.ad, 1                        ; 2 uses
  store i64 %i.ae, ptr %i.ac, align 8, !tbaa !314, !noalias !311
  %i.af = shl i64 %i.ae, 1
  %i.ag = load i64, ptr %i.g, align 8, !tbaa !315, !noalias !311 ; 2 uses
  %.not.i.i.i.i = icmp ult i64 %i.af, %i.ag
  br i1 %.not.i.i.i.i, label %_ZN5arrow6StatusD2Ev.exit.thread.i.i.i, label %_ZN5arrow6StatusD2Ev.exit.i.i.i, !prof !70

_ZN5arrow6StatusD2Ev.exit.thread.i.i.i:           ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25, !noalias !302
  br label %_ZN5arrow6StatusD2Ev.exit22.i.i.i

_ZN5arrow6StatusD2Ev.exit.i.i.i:                  ; preds = %bb.d
  %i.ah = shl i64 %i.ag, 2
  call void @_ZN5arrow8internal9HashTableINS0_15ScalarMemoTableIjS1_E7PayloadEE6UpsizeEm(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %5, ptr noundef nonnull align 8 dereferenceable(88) %i.g, i64 noundef %i.ah), !noalias !302
  %.pr.i.i.i = load ptr, ptr %5, align 8, !tbaa !67, !noalias !302 ; 2 uses
  store ptr %.pr.i.i.i, ptr %0, align 8, !tbaa !67, !alias.scope !302
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25, !noalias !302
  %i.ai = icmp eq ptr %.pr.i.i.i, null
  br i1 %i.ai, label %_ZN5arrow6StatusD2Ev.exit22.i.i.i, label %_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl11GetOrInsertINS_10UInt32TypeEjEENS_6StatusET0_Pi.exit

_ZN5arrow6StatusD2Ev.exit22.i.i.i:                ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i.i, %_ZN5arrow6StatusD2Ev.exit.thread.i.i.i, %bb.c
  %.016.i.i.i = phi i32 [ %i.w, %bb.c ], [ %i.aa, %_ZN5arrow6StatusD2Ev.exit.i.i.i ], [ %i.aa, %_ZN5arrow6StatusD2Ev.exit.thread.i.i.i ]
  store i32 %.016.i.i.i, ptr %4, align 4, !tbaa !3, !noalias !302
  store ptr null, ptr %0, align 8, !tbaa !67, !alias.scope !316
  br label %_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl11GetOrInsertINS_10UInt32TypeEjEENS_6StatusET0_Pi.exit

_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl11GetOrInsertINS_10UInt32TypeEjEENS_6StatusET0_Pi.exit: ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i.i, %_ZN5arrow6StatusD2Ev.exit22.i.i.i
  ret void
}

end_hunk_0
begin_hunk_1_@_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl19ArrayValuesInserter12InsertValuesINS_11BooleanTypeENS_12BooleanArrayEEENSt9enable_ifIXntsr3std7is_sameINS0_16DictionaryTraitsIT_vE13MemoTableTypeEvEE5valueENS_6StatusEE4typeERKS9_RKT0_:bb.a
  br label %_ZNSt13_Bit_iteratorppEi.exit.i.i.i.i

_ZNSt13_Bit_iteratorppEi.exit.i.i.i.i:            ; preds = %bb.f, %bb.e
  %i.at = shl nuw i64 1, %i.al                    ; 2 uses
  br i1 %i.u, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNSt13_Bit_iteratorppEi.exit.i.i.i.i
  %i.au = load i64, ptr %i.ae, align 8, !tbaa !126, !noalias !1730
  %i.av = or i64 %i.au, %i.at
  store i64 %i.av, ptr %i.ae, align 8, !tbaa !126, !noalias !1730
  br label %_ZNSt6vectorIbSaIbEE9push_backEb.exit.i.i.i

bb.h:                                             ; preds = %_ZNSt13_Bit_iteratorppEi.exit.i.i.i.i
  %i.aw = xor i64 %i.at, -1
  %i.ax = load i64, ptr %i.ae, align 8, !tbaa !126, !noalias !1730
  %i.ay = and i64 %i.ax, %i.aw
  store i64 %i.ay, ptr %i.ae, align 8, !tbaa !126, !noalias !1730
  br label %_ZNSt6vectorIbSaIbEE9push_backEb.exit.i.i.i

bb.i:                                             ; preds = %bb.d
  tail call void @_ZNSt6vectorIbSaIbEE13_M_insert_auxESt13_Bit_iteratorb(ptr noundef nonnull align 8 dereferenceable(40) %i.ac, ptr %i.ae, i32 %i.ag, i1 noundef zeroext %i.u), !noalias !1730
  %.pre.pre = load ptr, ptr %i.c, align 8, !tbaa !92
  br label %_ZNSt6vectorIbSaIbEE9push_backEb.exit.i.i.i

_ZNSt6vectorIbSaIbEE9push_backEb.exit.i.i.i:      ; preds = %bb.i, %bb.h, %bb.g
  %.pre = phi ptr [ %.pre.pre, %bb.i ], [ %.pre20, %bb.h ], [ %.pre20, %bb.g ] ; 2 uses
  store i32 %i.an, ptr %i.z, align 4, !tbaa !3, !noalias !1730
  br label %_ZN5arrow6StatusD2Ev.exit18

_ZN5arrow6StatusD2Ev.exit18:                      ; preds = %bb.c, %_ZNSt6vectorIbSaIbEE9push_backEb.exit.i.i.i
  %.pre21 = phi ptr [ %.pre20, %bb.c ], [ %.pre, %_ZNSt6vectorIbSaIbEE9push_backEb.exit.i.i.i ]
  %i.az = phi ptr [ %i.i, %bb.c ], [ %.pre, %_ZNSt6vectorIbSaIbEE9push_backEb.exit.i.i.i ] ; 2 uses
  %i.ba = add nuw nsw i64 %.019, 1                ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !1341
  %i.bd = icmp slt i64 %i.ba, %i.bc
  br i1 %i.bd, label %bb.c, label %._crit_edge, !llvm.loop !1735

._crit_edge:                                      ; preds = %_ZN5arrow6StatusD2Ev.exit18, %.preheader
  store ptr null, ptr %0, align 8, !tbaa !67, !alias.scope !1736
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge, %bb.b
  ret void
}

declare noundef i64 @_ZNK5arrow5Array10null_countEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow6Status8FromArgsIJRA49_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext %1, ptr noundef nonnull align 1 dereferenceable(49) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.arrow::internal::StringStreamWrapper", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25, !noalias !1739
  call void @_ZN5arrow8internal19StringStreamWrapperC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %3), !noalias !1739
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !942, !noalias !1739, !nonnull !84, !align !952
  %i.c = call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(49) %2) #25, !noalias !1739
  %i.d = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(49) %2, i64 noundef %i.c)
          to label %_ZZN5arrow8internal12JoinToStringIJRA49_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i unwind label %bb.b, !noalias !1739 ; 0 uses

_ZZN5arrow8internal12JoinToStringIJRA49_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i: ; preds = %bb.a
  invoke void @_ZN5arrow8internal19StringStreamWrapper3strB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(16) %3)
          to label %_ZN5arrow8internal12JoinToStringIJRA49_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.c:                                             ; preds = %_ZZN5arrow8internal12JoinToStringIJRA49_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %.pn.i, %bb.d ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5 ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pn.i = phi { ptr, i32 } [ %i.f, %bb.c ], [ %i.e, %bb.b ]
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25, !noalias !1739
  br label %common.resume

_ZN5arrow8internal12JoinToStringIJRA49_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit: ; preds = %_ZZN5arrow8internal12JoinToStringIJRA49_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_ENKUlOT_E_clIS4_EEDaSF_.exit.i
  call void @_ZN5arrow8internal19StringStreamWrapperD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25, !noalias !1739
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %0, i8 noundef signext %1, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZN5arrow8internal12JoinToStringIJRA49_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit
  %i.g = load ptr, ptr %4, align 8, !tbaa !71     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.j = load i64, ptr %i.h, align 8, !tbaa !38
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  ret void

bb.f:                                             ; preds = %_ZN5arrow8internal12JoinToStringIJRA49_KcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_.exit
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = load ptr, ptr %4, align 8, !tbaa !71     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %bb.f
  %i.p = load i64, ptr %i.n, align 8, !tbaa !38
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl19ArrayValuesInserter12InsertValuesINS_8Int8TypeENS_12NumericArrayIS5_EEEENSt9enable_ifIXntsr3std7is_sameINS0_16DictionaryTraitsIT_vE13MemoTableTypeEvEE5valueENS_6StatusEE4typeERKSA_RKT0_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(48) %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef i64 @_ZNK5arrow5Array10null_countEv(ptr noundef nonnull align 8 dereferenceable(32) %3)
  %i.b = icmp sgt i64 %i.a, 0
  br i1 %i.b, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !92   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !1341
  %i.g = icmp sgt i64 %i.f, 0
  br i1 %i.g, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 40
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5arrow6Status8FromArgsIJRA49_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(49) @.str.22)
  br label %bb.j

bb.c:                                             ; preds = %.lr.ph, %_ZN5arrow6StatusD2Ev.exit18
  %i.i = phi ptr [ %i.d, %.lr.ph ], [ %i.an, %_ZN5arrow6StatusD2Ev.exit18 ]
  %.019 = phi i64 [ 0, %.lr.ph ], [ %i.ao, %_ZN5arrow6StatusD2Ev.exit18 ] ; 2 uses
  %i.j = load ptr, ptr %1, align 8, !tbaa !101
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !1742
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %.019
  %i.m = load i8, ptr %i.l, align 1, !tbaa !38    ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !86, !noalias !1744 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = zext i8 %i.m to i64
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.q ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !3, !noalias !1747
  %i.t = icmp eq i32 %i.s, -1
  br i1 %i.t, label %bb.d, label %_ZN5arrow6StatusD2Ev.exit18

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 1040 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 1048 ; 4 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !140, !noalias !1747 ; 3 uses
  %i.x = load ptr, ptr %i.u, align 8, !tbaa !142, !noalias !1747 ; 4 uses
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z                      ; 9 uses
  %i.ab = trunc i64 %i.aa to i32
  %i.ac = getelementptr inbounds nuw i8, ptr %i.o, i64 1056 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !143, !noalias !1747
  %.not.i.i.i.i = icmp eq ptr %i.w, %i.ad
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i8 %i.m, ptr %i.w, align 1, !tbaa !38, !noalias !1747
  %i.ae = load ptr, ptr %i.v, align 8, !tbaa !140, !noalias !1747
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 1
  store ptr %i.af, ptr %i.v, align 8, !tbaa !140, !noalias !1747
  br label %_ZNSt6vectorIaSaIaEE9push_backERKa.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.ag = icmp eq i64 %i.aa, 9223372036854775807
  br i1 %i.ag, label %bb.g, label %_ZNKSt6vectorIaSaIaEE12_M_check_lenEmPKc.exit.i.i.i.i.i

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.33) #27, !noalias !1747
  unreachable

_ZNKSt6vectorIaSaIaEE12_M_check_lenEmPKc.exit.i.i.i.i.i: ; preds = %bb.f
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.aa, i64 1)
  %i.ah = add i64 %.sroa.speculated.i.i.i.i.i.i, %i.aa ; 2 uses
  %i.ai = icmp ult i64 %i.ah, %i.aa
  %i.aj = tail call i64 @llvm.umin.i64(i64 %i.ah, i64 9223372036854775807)
  %i.ak = select i1 %i.ai, i64 9223372036854775807, i64 %i.aj ; 2 uses
  %4 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ak) #24, !noalias !1747 ; 4 uses
  %5 = getelementptr inbounds nuw i8, ptr %4, i64 %i.aa ; 2 uses
  store i8 %i.m, ptr %5, align 1, !tbaa !38, !noalias !1747
  %6 = icmp sgt i64 %i.aa, 0
  br i1 %6, label %bb.h, label %_ZNSt6vectorIaSaIaEE11_S_relocateEPaS2_S2_RS0_.exit16.i.i.i.i.i

bb.h:                                             ; preds = %_ZNKSt6vectorIaSaIaEE12_M_check_lenEmPKc.exit.i.i.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %4, ptr align 1 %i.x, i64 %i.aa, i1 false), !noalias !1747
  br label %_ZNSt6vectorIaSaIaEE11_S_relocateEPaS2_S2_RS0_.exit16.i.i.i.i.i

_ZNSt6vectorIaSaIaEE11_S_relocateEPaS2_S2_RS0_.exit16.i.i.i.i.i: ; preds = %bb.h, %_ZNKSt6vectorIaSaIaEE12_M_check_lenEmPKc.exit.i.i.i.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 1
  %.not.i17.i.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i17.i.i.i.i.i, label %_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJRKaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIaSaIaEE11_S_relocateEPaS2_S2_RS0_.exit16.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef %i.aa) #26, !noalias !1747
  br label %_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJRKaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i.i.i

_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJRKaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i.i.i: ; preds = %bb.i, %_ZNSt6vectorIaSaIaEE11_S_relocateEPaS2_S2_RS0_.exit16.i.i.i.i.i
  store ptr %4, ptr %i.u, align 8, !tbaa !142, !noalias !1747
  store ptr %i.al, ptr %i.v, align 8, !tbaa !140, !noalias !1747
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 %i.ak
  store ptr %i.am, ptr %i.ac, align 8, !tbaa !143, !noalias !1747
  br label %_ZNSt6vectorIaSaIaEE9push_backERKa.exit.i.i.i

_ZNSt6vectorIaSaIaEE9push_backERKa.exit.i.i.i:    ; preds = %_ZNSt6vectorIaSaIaEE17_M_realloc_insertIJRKaEEEvN9__gnu_cxx17__normal_iteratorIPaS1_EEDpOT_.exit.i.i.i.i, %bb.e
  store i32 %i.ab, ptr %i.r, align 4, !tbaa !3, !noalias !1747
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !92
  br label %_ZN5arrow6StatusD2Ev.exit18

_ZN5arrow6StatusD2Ev.exit18:                      ; preds = %bb.c, %_ZNSt6vectorIaSaIaEE9push_backERKa.exit.i.i.i
  %i.an = phi ptr [ %i.i, %bb.c ], [ %.pre, %_ZNSt6vectorIaSaIaEE9push_backERKa.exit.i.i.i ] ; 2 uses
  %i.ao = add nuw nsw i64 %.019, 1                ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !1341
  %i.ar = icmp slt i64 %i.ao, %i.aq
  br i1 %i.ar, label %bb.c, label %._crit_edge, !llvm.loop !1752

._crit_edge:                                      ; preds = %_ZN5arrow6StatusD2Ev.exit18, %.preheader
  store ptr null, ptr %0, align 8, !tbaa !67, !alias.scope !1753
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl19ArrayValuesInserter12InsertValuesINS_9UInt8TypeENS_12NumericArrayIS5_EEEENSt9enable_ifIXntsr3std7is_sameINS0_16DictionaryTraitsIT_vE13MemoTableTypeEvEE5valueENS_6StatusEE4typeERKSA_RKT0_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(48) %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef i64 @_ZNK5arrow5Array10null_countEv(ptr noundef nonnull align 8 dereferenceable(32) %3)
  %i.b = icmp sgt i64 %i.a, 0
  br i1 %i.b, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !92   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !1341
  %i.g = icmp sgt i64 %i.f, 0
  br i1 %i.g, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 40
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5arrow6Status8FromArgsIJRA49_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(49) @.str.22)
  br label %bb.j

bb.c:                                             ; preds = %.lr.ph, %_ZN5arrow6StatusD2Ev.exit18
  %i.i = phi ptr [ %i.d, %.lr.ph ], [ %i.an, %_ZN5arrow6StatusD2Ev.exit18 ]
  %.019 = phi i64 [ 0, %.lr.ph ], [ %i.ao, %_ZN5arrow6StatusD2Ev.exit18 ] ; 2 uses
  %i.j = load ptr, ptr %1, align 8, !tbaa !101
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !1756
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %.019
  %i.m = load i8, ptr %i.l, align 1, !tbaa !38    ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !86, !noalias !1758 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = zext i8 %i.m to i64
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.q ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !3, !noalias !1761
  %i.t = icmp eq i32 %i.s, -1
  br i1 %i.t, label %bb.d, label %_ZN5arrow6StatusD2Ev.exit18

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 1040 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 1048 ; 4 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !252, !noalias !1761 ; 3 uses
  %i.x = load ptr, ptr %i.u, align 8, !tbaa !254, !noalias !1761 ; 4 uses
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z                      ; 9 uses
  %i.ab = trunc i64 %i.aa to i32
  %i.ac = getelementptr inbounds nuw i8, ptr %i.o, i64 1056 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !255, !noalias !1761
  %.not.i.i.i.i = icmp eq ptr %i.w, %i.ad
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i8 %i.m, ptr %i.w, align 1, !tbaa !38, !noalias !1761
  %i.ae = load ptr, ptr %i.v, align 8, !tbaa !252, !noalias !1761
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 1
  store ptr %i.af, ptr %i.v, align 8, !tbaa !252, !noalias !1761
  br label %_ZNSt6vectorIhSaIhEE9push_backERKh.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.ag = icmp eq i64 %i.aa, 9223372036854775807
  br i1 %i.ag, label %bb.g, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i

bb.g:                                             ; preds = %bb.f
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.33) #27, !noalias !1761
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i: ; preds = %bb.f
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.aa, i64 1)
  %i.ah = add i64 %.sroa.speculated.i.i.i.i.i.i, %i.aa ; 2 uses
  %i.ai = icmp ult i64 %i.ah, %i.aa
  %i.aj = tail call i64 @llvm.umin.i64(i64 %i.ah, i64 9223372036854775807)
  %i.ak = select i1 %i.ai, i64 9223372036854775807, i64 %i.aj ; 2 uses
  %4 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ak) #24, !noalias !1761 ; 4 uses
  %5 = getelementptr inbounds nuw i8, ptr %4, i64 %i.aa ; 2 uses
  store i8 %i.m, ptr %5, align 1, !tbaa !38, !noalias !1761
  %6 = icmp sgt i64 %i.aa, 0
  br i1 %6, label %bb.h, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i

bb.h:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %4, ptr align 1 %i.x, i64 %i.aa, i1 false), !noalias !1761
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i: ; preds = %bb.h, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %5, i64 1
  %.not.i17.i.i.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i17.i.i.i.i.i, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef %i.aa) #26, !noalias !1761
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i: ; preds = %bb.i, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i
  store ptr %4, ptr %i.u, align 8, !tbaa !254, !noalias !1761
  store ptr %i.al, ptr %i.v, align 8, !tbaa !252, !noalias !1761
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 %i.ak
  store ptr %i.am, ptr %i.ac, align 8, !tbaa !255, !noalias !1761
  br label %_ZNSt6vectorIhSaIhEE9push_backERKh.exit.i.i.i

_ZNSt6vectorIhSaIhEE9push_backERKh.exit.i.i.i:    ; preds = %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJRKhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i, %bb.e
  store i32 %i.ab, ptr %i.r, align 4, !tbaa !3, !noalias !1761
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !92
  br label %_ZN5arrow6StatusD2Ev.exit18

_ZN5arrow6StatusD2Ev.exit18:                      ; preds = %bb.c, %_ZNSt6vectorIhSaIhEE9push_backERKh.exit.i.i.i
  %i.an = phi ptr [ %i.i, %bb.c ], [ %.pre, %_ZNSt6vectorIhSaIhEE9push_backERKh.exit.i.i.i ] ; 2 uses
  %i.ao = add nuw nsw i64 %.019, 1                ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !1341
  %i.ar = icmp slt i64 %i.ao, %i.aq
  br i1 %i.ar, label %bb.c, label %._crit_edge, !llvm.loop !1766

._crit_edge:                                      ; preds = %_ZN5arrow6StatusD2Ev.exit18, %.preheader
  store ptr null, ptr %0, align 8, !tbaa !67, !alias.scope !1767
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl19ArrayValuesInserter12InsertValuesINS_9Int16TypeENS_12NumericArrayIS5_EEEENSt9enable_ifIXntsr3std7is_sameINS0_16DictionaryTraitsIT_vE13MemoTableTypeEvEE5valueENS_6StatusEE4typeERKSA_RKT0_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(48) %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %i.a = tail call noundef i64 @_ZNK5arrow5Array10null_countEv(ptr noundef nonnull align 8 dereferenceable(32) %3)
  %i.b = icmp sgt i64 %i.a, 0
  br i1 %i.b, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !92
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !1341
  %i.g = icmp sgt i64 %i.f, 0
  br i1 %i.g, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 40
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5arrow6Status8FromArgsIJRA49_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(49) @.str.22)
  br label %bb.g

bb.c:                                             ; preds = %.lr.ph, %_ZN5arrow6StatusD2Ev.exit18
  %.021 = phi i64 [ 0, %.lr.ph ], [ %i.as, %_ZN5arrow6StatusD2Ev.exit18 ] ; 2 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !101
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !1770
  %i.k = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %.021
  %i.l = load i16, ptr %i.k, align 2, !tbaa !1362 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !86, !noalias !1772 ; 6 uses
  %i.o = sext i16 %i.l to i64
  %i.p = mul i64 %i.o, -7046029288634856825
  %i.q = call noundef i64 @llvm.bswap.i64(i64 %i.p)
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !156, !noalias !1775
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.v = load i64, ptr %i.u, align 8, !tbaa !165, !noalias !1775
  %i.w = icmp eq i16 %i.l, 0
  %i.x = select i1 %i.w, i64 42, i64 %i.q         ; 4 uses
  br label %bb.d

bb.d:                                             ; preds = %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableIsS1_E7PayloadEE12CompareEntryILNS5_11CompareKindE0ERZNS3_11GetOrInsertIRsZNS3_11GetOrInsertIS9_EENS_6StatusEOT_PiEUliE_ZNSA_IS9_EESB_SD_SE_EUliE0_EESB_SD_OT0_OT1_SE_EUlPKS4_E_EEbmPKNS5_5EntryESI_.exit.thread.i.i.i.i.i, %bb.c
  %.pn.i.i.i.i.i = phi i64 [ %i.x, %bb.c ], [ %i.af, %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableIsS1_E7PayloadEE12CompareEntryILNS5_11CompareKindE0ERZNS3_11GetOrInsertIRsZNS3_11GetOrInsertIS9_EENS_6StatusEOT_PiEUliE_ZNSA_IS9_EESB_SD_SE_EUliE0_EESB_SD_OT0_OT1_SE_EUlPKS4_E_EEbmPKNS5_5EntryESI_.exit.thread.i.i.i.i.i ]
  %.0.in.in.i.i.i.i.i = phi i64 [ %i.x, %bb.c ], [ %.0.i.i.i.i.i, %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableIsS1_E7PayloadEE12CompareEntryILNS5_11CompareKindE0ERZNS3_11GetOrInsertIRsZNS3_11GetOrInsertIS9_EENS_6StatusEOT_PiEUliE_ZNSA_IS9_EESB_SD_SE_EUliE0_EESB_SD_OT0_OT1_SE_EUlPKS4_E_EEbmPKNS5_5EntryESI_.exit.thread.i.i.i.i.i ]
  %storemerge.i.i.i.i.i = and i64 %.pn.i.i.i.i.i, %i.v ; 2 uses
  %.0.in.i.i.i.i.i = lshr i64 %.0.in.in.i.i.i.i.i, 5
  %.0.i.i.i.i.i = add nuw nsw i64 %.0.in.i.i.i.i.i, 1 ; 2 uses
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %storemerge.i.i.i.i.i ; 4 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !166, !noalias !1775 ; 2 uses
  %i.aa = icmp eq i64 %i.z, %i.x
  br i1 %i.aa, label %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableIsS1_E7PayloadEE12CompareEntryILNS5_11CompareKindE0ERZNS3_11GetOrInsertIRsZNS3_11GetOrInsertIS9_EENS_6StatusEOT_PiEUliE_ZNSA_IS9_EESB_SD_SE_EUliE0_EESB_SD_OT0_OT1_SE_EUlPKS4_E_EEbmPKNS5_5EntryESI_.exit.i.i.i.i.i, label %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableIsS1_E7PayloadEE12CompareEntryILNS5_11CompareKindE0ERZNS3_11GetOrInsertIRsZNS3_11GetOrInsertIS9_EENS_6StatusEOT_PiEUliE_ZNSA_IS9_EESB_SD_SE_EUliE0_EESB_SD_OT0_OT1_SE_EUlPKS4_E_EEbmPKNS5_5EntryESI_.exit.thread.i.i.i.i.i

_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableIsS1_E7PayloadEE12CompareEntryILNS5_11CompareKindE0ERZNS3_11GetOrInsertIRsZNS3_11GetOrInsertIS9_EENS_6StatusEOT_PiEUliE_ZNSA_IS9_EESB_SD_SE_EUliE0_EESB_SD_OT0_OT1_SE_EUlPKS4_E_EEbmPKNS5_5EntryESI_.exit.i.i.i.i.i: ; preds = %bb.d
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ac = load i16, ptr %i.ab, align 8, !tbaa !169, !noalias !1775
  %i.ad = icmp eq i16 %i.l, %i.ac
  br i1 %i.ad, label %_ZN5arrow6StatusD2Ev.exit18, label %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableIsS1_E7PayloadEE12CompareEntryILNS5_11CompareKindE0ERZNS3_11GetOrInsertIRsZNS3_11GetOrInsertIS9_EENS_6StatusEOT_PiEUliE_ZNSA_IS9_EESB_SD_SE_EUliE0_EESB_SD_OT0_OT1_SE_EUlPKS4_E_EEbmPKNS5_5EntryESI_.exit.thread.i.i.i.i.i

_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableIsS1_E7PayloadEE12CompareEntryILNS5_11CompareKindE0ERZNS3_11GetOrInsertIRsZNS3_11GetOrInsertIS9_EENS_6StatusEOT_PiEUliE_ZNSA_IS9_EESB_SD_SE_EUliE0_EESB_SD_OT0_OT1_SE_EUlPKS4_E_EEbmPKNS5_5EntryESI_.exit.thread.i.i.i.i.i: ; preds = %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableIsS1_E7PayloadEE12CompareEntryILNS5_11CompareKindE0ERZNS3_11GetOrInsertIRsZNS3_11GetOrInsertIS9_EENS_6StatusEOT_PiEUliE_ZNSA_IS9_EESB_SD_SE_EUliE0_EESB_SD_OT0_OT1_SE_EUlPKS4_E_EEbmPKNS5_5EntryESI_.exit.i.i.i.i.i, %bb.d
  %i.ae = icmp eq i64 %i.z, 0
  %i.af = add i64 %.0.i.i.i.i.i, %storemerge.i.i.i.i.i
  br i1 %i.ae, label %bb.e, label %bb.d, !llvm.loop !170

bb.e:                                             ; preds = %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableIsS1_E7PayloadEE12CompareEntryILNS5_11CompareKindE0ERZNS3_11GetOrInsertIRsZNS3_11GetOrInsertIS9_EENS_6StatusEOT_PiEUliE_ZNSA_IS9_EESB_SD_SE_EUliE0_EESB_SD_OT0_OT1_SE_EUlPKS4_E_EEbmPKNS5_5EntryESI_.exit.thread.i.i.i.i.i
  %i.ag = load ptr, ptr %i.n, align 8, !tbaa !44, !noalias !1775
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !noalias !1775
  %i.aj = call noundef i32 %i.ai(ptr noundef nonnull align 8 dereferenceable(100) %i.n), !noalias !1775, !inline_history !173
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25, !noalias !1775
  store i64 %i.x, ptr %i.y, align 8, !tbaa !166, !noalias !1780
  %i.ak = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.sroa.523.0.insert.ext.i.i.i = zext i32 %i.aj to i64
  %.sroa.523.0.insert.shift.i.i.i = shl nuw i64 %.sroa.523.0.insert.ext.i.i.i, 32
  %.sroa.0.0.insert.ext.i.i.i = zext i16 %i.l to i64
  %.sroa.0.0.insert.insert.i.i.i = or disjoint i64 %.sroa.523.0.insert.shift.i.i.i, %.sroa.0.0.insert.ext.i.i.i
  store i64 %.sroa.0.0.insert.insert.i.i.i, ptr %i.ak, align 8, !noalias !1780
  %i.al = getelementptr inbounds nuw i8, ptr %i.n, i64 24 ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !177, !noalias !1780
  %i.an = add i64 %i.am, 1                        ; 2 uses
  store i64 %i.an, ptr %i.al, align 8, !tbaa !177, !noalias !1780
  %i.ao = shl i64 %i.an, 1
  %i.ap = load i64, ptr %i.r, align 8, !tbaa !178, !noalias !1780 ; 2 uses
  %.not.i.i.i.i = icmp ult i64 %i.ao, %i.ap
  br i1 %.not.i.i.i.i, label %_ZN5arrow6StatusD2Ev.exit.thread.i.i.i, label %_ZN5arrow6StatusD2Ev.exit.i.i.i, !prof !70

_ZN5arrow6StatusD2Ev.exit.thread.i.i.i:           ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25, !noalias !1775
  br label %_ZN5arrow6StatusD2Ev.exit18

_ZN5arrow6StatusD2Ev.exit.i.i.i:                  ; preds = %bb.e
  %i.aq = shl i64 %i.ap, 2
  call void @_ZN5arrow8internal9HashTableINS0_15ScalarMemoTableIsS1_E7PayloadEE6UpsizeEm(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %4, ptr noundef nonnull align 8 dereferenceable(88) %i.r, i64 noundef %i.aq), !noalias !1775
  %.pr.i.i.i = load ptr, ptr %4, align 8, !tbaa !67, !noalias !1775 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25, !noalias !1775
  %i.ar = icmp eq ptr %.pr.i.i.i, null
  br i1 %i.ar, label %_ZN5arrow6StatusD2Ev.exit18, label %bb.f

_ZN5arrow6StatusD2Ev.exit18:                      ; preds = %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableIsS1_E7PayloadEE12CompareEntryILNS5_11CompareKindE0ERZNS3_11GetOrInsertIRsZNS3_11GetOrInsertIS9_EENS_6StatusEOT_PiEUliE_ZNSA_IS9_EESB_SD_SE_EUliE0_EESB_SD_OT0_OT1_SE_EUlPKS4_E_EEbmPKNS5_5EntryESI_.exit.i.i.i.i.i, %_ZN5arrow6StatusD2Ev.exit.i.i.i, %_ZN5arrow6StatusD2Ev.exit.thread.i.i.i
  store ptr null, ptr %0, align 8, !tbaa !67
  %i.as = add nuw nsw i64 %.021, 1                ; 2 uses
  %i.at = load ptr, ptr %i.c, align 8, !tbaa !92
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.av = load i64, ptr %i.au, align 8, !tbaa !1341
  %i.aw = icmp slt i64 %i.as, %i.av
  br i1 %i.aw, label %bb.c, label %._crit_edge, !llvm.loop !1783

bb.f:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit.i.i.i
  store ptr %.pr.i.i.i, ptr %0, align 8, !tbaa !67
  br label %bb.g

._crit_edge:                                      ; preds = %_ZN5arrow6StatusD2Ev.exit18, %.preheader
  store ptr null, ptr %0, align 8, !tbaa !67, !alias.scope !1784
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow8internal19DictionaryMemoTable23DictionaryMemoTableImpl19ArrayValuesInserter12InsertValuesINS_10UInt16TypeENS_12NumericArrayIS5_EEEENSt9enable_ifIXntsr3std7is_sameINS0_16DictionaryTraitsIT_vE13MemoTableTypeEvEE5valueENS_6StatusEE4typeERKSA_RKT0_(ptr dead_on_unwind noalias writable sret(%"class.arrow::Status") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(48) %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.arrow::Status", align 8     ; 5 uses
  %i.a = tail call noundef i64 @_ZNK5arrow5Array10null_countEv(ptr noundef nonnull align 8 dereferenceable(32) %3)
  %i.b = icmp sgt i64 %i.a, 0
  br i1 %i.b, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !92
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !1341
  %i.g = icmp sgt i64 %i.f, 0
  br i1 %i.g, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 40
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5arrow6Status8FromArgsIJRA49_KcEEES0_NS_10StatusCodeEDpOT_(ptr dead_on_unwind writable sret(%"class.arrow::Status") align 8 %0, i8 noundef signext 4, ptr noundef nonnull align 1 dereferenceable(49) @.str.22)
  br label %bb.g

bb.c:                                             ; preds = %.lr.ph, %_ZN5arrow6StatusD2Ev.exit18
  %.021 = phi i64 [ 0, %.lr.ph ], [ %i.as, %_ZN5arrow6StatusD2Ev.exit18 ] ; 2 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !101
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !1787
  %i.k = getelementptr inbounds nuw [2 x i8], ptr %i.j, i64 %.021
  %i.l = load i16, ptr %i.k, align 2, !tbaa !1362 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !86, !noalias !1789 ; 6 uses
  %i.o = zext i16 %i.l to i64                     ; 2 uses
  %i.p = mul i64 %i.o, -7046029288634856825
  %i.q = call noundef i64 @llvm.bswap.i64(i64 %i.p)
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !268, !noalias !1792
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.v = load i64, ptr %i.u, align 8, !tbaa !273, !noalias !1792
  %i.w = icmp eq i16 %i.l, 0
  %i.x = select i1 %i.w, i64 42, i64 %i.q         ; 4 uses
  br label %bb.d

bb.d:                                             ; preds = %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableItS1_E7PayloadEE12CompareEntryILNS5_11CompareKindE0ERZNS3_11GetOrInsertIRtZNS3_11GetOrInsertIS9_EENS_6StatusEOT_PiEUliE_ZNSA_IS9_EESB_SD_SE_EUliE0_EESB_SD_OT0_OT1_SE_EUlPKS4_E_EEbmPKNS5_5EntryESI_.exit.thread.i.i.i.i.i, %bb.c
  %.pn.i.i.i.i.i = phi i64 [ %i.x, %bb.c ], [ %i.af, %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableItS1_E7PayloadEE12CompareEntryILNS5_11CompareKindE0ERZNS3_11GetOrInsertIRtZNS3_11GetOrInsertIS9_EENS_6StatusEOT_PiEUliE_ZNSA_IS9_EESB_SD_SE_EUliE0_EESB_SD_OT0_OT1_SE_EUlPKS4_E_EEbmPKNS5_5EntryESI_.exit.thread.i.i.i.i.i ]
  %.0.in.in.i.i.i.i.i = phi i64 [ %i.x, %bb.c ], [ %.0.i.i.i.i.i, %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableItS1_E7PayloadEE12CompareEntryILNS5_11CompareKindE0ERZNS3_11GetOrInsertIRtZNS3_11GetOrInsertIS9_EENS_6StatusEOT_PiEUliE_ZNSA_IS9_EESB_SD_SE_EUliE0_EESB_SD_OT0_OT1_SE_EUlPKS4_E_EEbmPKNS5_5EntryESI_.exit.thread.i.i.i.i.i ]
  %storemerge.i.i.i.i.i = and i64 %.pn.i.i.i.i.i, %i.v ; 2 uses
  %.0.in.i.i.i.i.i = lshr i64 %.0.in.in.i.i.i.i.i, 5
  %.0.i.i.i.i.i = add nuw nsw i64 %.0.in.i.i.i.i.i, 1 ; 2 uses
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %storemerge.i.i.i.i.i ; 4 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !274, !noalias !1792 ; 2 uses
  %i.aa = icmp eq i64 %i.z, %i.x
  br i1 %i.aa, label %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableItS1_E7PayloadEE12CompareEntryILNS5_11CompareKindE0ERZNS3_11GetOrInsertIRtZNS3_11GetOrInsertIS9_EENS_6StatusEOT_PiEUliE_ZNSA_IS9_EESB_SD_SE_EUliE0_EESB_SD_OT0_OT1_SE_EUlPKS4_E_EEbmPKNS5_5EntryESI_.exit.i.i.i.i.i, label %_ZNK5arrow8internal9HashTableINS0_15ScalarMemoTableItS1_E7PayloadEE12CompareEntryILNS5_11CompareKindE0ERZNS3_11GetOrInsertIRtZNS3_11GetOrInsertIS9_EENS_6StatusEOT_PiEUliE_ZNSA_IS9_EESB_SD_SE_EUliE0_EESB_SD_OT0_OT1_SE_EUlPKS4_E_EEbmPKNS5_5EntryESI_.exit.thread.i.i.i.i.i

end_hunk_1
