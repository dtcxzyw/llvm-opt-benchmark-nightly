Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/elfshaker-rs/original/elfshaker-6828a789a61900ca.elfshaker.eea5205138ee20d7-cgu.13?download=true
inline.NumInlined: 517
inline.NumDeleted: 224
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared5pivot11median3_recTTNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEjENvYB14_NtNtBa_3cmp10PartialOrd2ltEB1P_:bb.a
bb.e:                                             ; preds = %_RNvXsc_NtCs3oUPovFnLWP_4core5tupleTNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENtNtB7_3cmp10PartialOrd13___chaining_ltB1g_.exit.i.i16
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 40
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.08.0, i64 40
  tail call void @llvm.experimental.noalias.scope.decl(metadata !223)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !226)
  %i.ae = load i64, ptr %i.ac, align 8, !alias.scope !228, !noalias !229, !noundef !8
  %i.af = load i64, ptr %i.ad, align 8, !alias.scope !229, !noalias !228, !noundef !8
  %i.ag = icmp ult i64 %i.ae, %i.af
  br label %_RNvYNvYTTNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEjENtNtCs3oUPovFnLWP_4core3cmp10PartialOrd2ltINtNtNtB1C_3ops8function5FnMutTRB5_B2J_EE8call_mutBQ_.exit18

_RNvYNvYTTNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEjENtNtCs3oUPovFnLWP_4core3cmp10PartialOrd2ltINtNtNtB1C_3ops8function5FnMutTRB5_B2J_EE8call_mutBQ_.exit18: ; preds = %_RNvXsc_NtCs3oUPovFnLWP_4core5tupleTNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENtNtB7_3cmp10PartialOrd13___chaining_ltB1g_.exit.thread.i.i13, %bb.e
  %.sroa.0.0.i.i15 = phi i1 [ %i.ab, %_RNvXsc_NtCs3oUPovFnLWP_4core5tupleTNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENtNtB7_3cmp10PartialOrd13___chaining_ltB1g_.exit.thread.i.i13 ], [ %i.ag, %bb.e ]
  %i.ah = xor i1 %.sroa.0.0.i.i, %.sroa.0.0.i.i15
  br i1 %i.ah, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared5pivot7median3TTNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEjENvYBZ_NtNtBa_3cmp10PartialOrd2ltEB1K_.exit, label %bb.f

bb.f:                                             ; preds = %_RNvYNvYTTNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEjENtNtCs3oUPovFnLWP_4core3cmp10PartialOrd2ltINtNtNtB1C_3ops8function5FnMutTRB5_B2J_EE8call_mutBQ_.exit18
  tail call void @llvm.experimental.noalias.scope.decl(metadata !230)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !233)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !235)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !238)
  %i.ai = tail call noundef range(i8 0, 3) i8 @_RINvNtCs3oUPovFnLWP_4core3cmp21default_chaining_implNtNtCsaL1QbXo9JQH_3std4time10SystemTimeBO_NvMB2_NtB2_8Ordering5is_ltECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.sroa.04.0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.sroa.08.0) ; 2 uses
  %.not.i.i.i19 = icmp eq i8 %i.ai, 2
  br i1 %.not.i.i.i19, label %_RNvXsc_NtCs3oUPovFnLWP_4core5tupleTNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENtNtB7_3cmp10PartialOrd13___chaining_ltB1g_.exit.i.i23, label %_RNvXsc_NtCs3oUPovFnLWP_4core5tupleTNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENtNtB7_3cmp10PartialOrd13___chaining_ltB1g_.exit.thread.i.i20

_RNvXsc_NtCs3oUPovFnLWP_4core5tupleTNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENtNtB7_3cmp10PartialOrd13___chaining_ltB1g_.exit.i.i23: ; preds = %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.04.0, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.08.0, i64 16
  %i.al = tail call noundef range(i8 0, 3) i8 @_RINvNtCs3oUPovFnLWP_4core3cmp21default_chaining_implNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdBO_NvMB2_NtB2_8Ordering5is_ltEBU_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aj, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ak) ; 2 uses
  %.not.i.i24 = icmp eq i8 %i.al, 2
  br i1 %.not.i.i24, label %bb.g, label %_RNvXsc_NtCs3oUPovFnLWP_4core5tupleTNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENtNtB7_3cmp10PartialOrd13___chaining_ltB1g_.exit.thread.i.i20

_RNvXsc_NtCs3oUPovFnLWP_4core5tupleTNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENtNtB7_3cmp10PartialOrd13___chaining_ltB1g_.exit.thread.i.i20: ; preds = %_RNvXsc_NtCs3oUPovFnLWP_4core5tupleTNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENtNtB7_3cmp10PartialOrd13___chaining_ltB1g_.exit.i.i23, %bb.f
  %.sroa.0.0.i5.i.i21 = phi i8 [ %i.al, %_RNvXsc_NtCs3oUPovFnLWP_4core5tupleTNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENtNtB7_3cmp10PartialOrd13___chaining_ltB1g_.exit.i.i23 ], [ %i.ai, %bb.f ]
  %i.am = trunc nuw i8 %.sroa.0.0.i5.i.i21 to i1
  br label %_RNvYNvYTTNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEjENtNtCs3oUPovFnLWP_4core3cmp10PartialOrd2ltINtNtNtB1C_3ops8function5FnMutTRB5_B2J_EE8call_mutBQ_.exit25

bb.g:                                             ; preds = %_RNvXsc_NtCs3oUPovFnLWP_4core5tupleTNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENtNtB7_3cmp10PartialOrd13___chaining_ltB1g_.exit.i.i23
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.04.0, i64 40
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.08.0, i64 40
  tail call void @llvm.experimental.noalias.scope.decl(metadata !240)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !243)
  %i.ap = load i64, ptr %i.an, align 8, !alias.scope !245, !noalias !246, !noundef !8
  %i.aq = load i64, ptr %i.ao, align 8, !alias.scope !246, !noalias !245, !noundef !8
  %i.ar = icmp ult i64 %i.ap, %i.aq
  br label %_RNvYNvYTTNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEjENtNtCs3oUPovFnLWP_4core3cmp10PartialOrd2ltINtNtNtB1C_3ops8function5FnMutTRB5_B2J_EE8call_mutBQ_.exit25

_RNvYNvYTTNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEjENtNtCs3oUPovFnLWP_4core3cmp10PartialOrd2ltINtNtNtB1C_3ops8function5FnMutTRB5_B2J_EE8call_mutBQ_.exit25: ; preds = %_RNvXsc_NtCs3oUPovFnLWP_4core5tupleTNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENtNtB7_3cmp10PartialOrd13___chaining_ltB1g_.exit.thread.i.i20, %bb.g
  %.sroa.0.0.i.i22 = phi i1 [ %i.am, %_RNvXsc_NtCs3oUPovFnLWP_4core5tupleTNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENtNtB7_3cmp10PartialOrd13___chaining_ltB1g_.exit.thread.i.i20 ], [ %i.ar, %bb.g ]
  %i.as = xor i1 %.sroa.0.0.i.i, %.sroa.0.0.i.i22
  %..i = select i1 %i.as, ptr %.sroa.08.0, ptr %.sroa.04.0
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared5pivot7median3TTNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEjENvYBZ_NtNtBa_3cmp10PartialOrd2ltEB1K_.exit

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared5pivot7median3TTNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEjENvYBZ_NtNtBa_3cmp10PartialOrd2ltEB1K_.exit: ; preds = %_RNvYNvYTTNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEjENtNtCs3oUPovFnLWP_4core3cmp10PartialOrd2ltINtNtNtB1C_3ops8function5FnMutTRB5_B2J_EE8call_mutBQ_.exit18, %_RNvYNvYTTNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEjENtNtCs3oUPovFnLWP_4core3cmp10PartialOrd2ltINtNtNtB1C_3ops8function5FnMutTRB5_B2J_EE8call_mutBQ_.exit25
  %.sroa.0.0.i = phi ptr [ %.sroa.0.0, %_RNvYNvYTTNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEjENtNtCs3oUPovFnLWP_4core3cmp10PartialOrd2ltINtNtNtB1C_3ops8function5FnMutTRB5_B2J_EE8call_mutBQ_.exit18 ], [ %..i, %_RNvYNvYTTNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEjENtNtCs3oUPovFnLWP_4core3cmp10PartialOrd2ltINtNtNtB1C_3ops8function5FnMutTRB5_B2J_EE8call_mutBQ_.exit25 ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef nonnull ptr @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared5pivot11median3_recTmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataENCINvMNtCs1xwejQucwHj_5alloc5sliceSB14_7sort_byNCINvXs1o_NtNtNtB25_11collections5btree3mapINtB2S_8BTreeMapmB16_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB14_E9from_iterINtNtNtB3S_8adapters3map3MapINtNtB4P_9enumerate9EnumerateINtNtNtB25_3vec9into_iter8IntoIterB16_EENCINvXsf_B18_NtB18_14VisitPackIndexNtNtCs6LlcditsbhK_5serde2de7Visitor9visit_seqINtNtCs974quTetXso_9rmp_serde6decode9SeqAccessINtB7E_10ReadReaderINtNtNtNtB25_2io8buffered9bufreader9BufReaderNtNtCsaL1QbXo9JQH_3std2fs4FileEENtNtB7G_6config13DefaultConfigEE0EE0E0EB1a_(ptr nofree noundef nonnull readonly %0, ptr nofree noundef nonnull readonly %1, ptr nofree noundef nonnull readonly %2, i64 noundef range(i64 0, 48038396025285291) %3) unnamed_addr #3 {
bb.a:
  %i.a = icmp samesign ugt i64 %3, 7
  br i1 %i.a, label %bb.b, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared5pivot7median3TmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataENCINvMNtCs1xwejQucwHj_5alloc5sliceSBZ_7sort_byNCINvXs1o_NtNtNtB20_11collections5btree3mapINtB2M_8BTreeMapmB11_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBZ_E9from_iterINtNtNtB3M_8adapters3map3MapINtNtB4I_9enumerate9EnumerateINtNtNtB20_3vec9into_iter8IntoIterB11_EENCINvXsf_B13_NtB13_14VisitPackIndexNtNtCs6LlcditsbhK_5serde2de7Visitor9visit_seqINtNtCs974quTetXso_9rmp_serde6decode9SeqAccessINtB7x_10ReadReaderINtNtNtNtB20_2io8buffered9bufreader9BufReaderNtNtCsaL1QbXo9JQH_3std2fs4FileEENtNtB7z_6config13DefaultConfigEE0EE0E0EB15_.exit

bb.b:                                             ; preds = %bb.a
  %i.b = lshr i64 %3, 3                           ; 5 uses
  %i.c = shl nuw nsw i64 %i.b, 2                  ; 3 uses
  %i.d = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.c
  %i.e = mul nuw nsw i64 %i.b, 7                  ; 3 uses
  %i.f = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.e
  %i.g = tail call fastcc noundef ptr @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared5pivot11median3_recTmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataENCINvMNtCs1xwejQucwHj_5alloc5sliceSB14_7sort_byNCINvXs1o_NtNtNtB25_11collections5btree3mapINtB2S_8BTreeMapmB16_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB14_E9from_iterINtNtNtB3S_8adapters3map3MapINtNtB4P_9enumerate9EnumerateINtNtNtB25_3vec9into_iter8IntoIterB16_EENCINvXsf_B18_NtB18_14VisitPackIndexNtNtCs6LlcditsbhK_5serde2de7Visitor9visit_seqINtNtCs974quTetXso_9rmp_serde6decode9SeqAccessINtB7E_10ReadReaderINtNtNtNtB25_2io8buffered9bufreader9BufReaderNtNtCsaL1QbXo9JQH_3std2fs4FileEENtNtB7G_6config13DefaultConfigEE0EE0E0EB1a_(ptr noundef %0, ptr noundef %i.d, ptr noundef %i.f, i64 noundef %i.b)
  %i.h = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %i.c
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %i.e
  %i.j = tail call fastcc noundef ptr @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared5pivot11median3_recTmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataENCINvMNtCs1xwejQucwHj_5alloc5sliceSB14_7sort_byNCINvXs1o_NtNtNtB25_11collections5btree3mapINtB2S_8BTreeMapmB16_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB14_E9from_iterINtNtNtB3S_8adapters3map3MapINtNtB4P_9enumerate9EnumerateINtNtNtB25_3vec9into_iter8IntoIterB16_EENCINvXsf_B18_NtB18_14VisitPackIndexNtNtCs6LlcditsbhK_5serde2de7Visitor9visit_seqINtNtCs974quTetXso_9rmp_serde6decode9SeqAccessINtB7E_10ReadReaderINtNtNtNtB25_2io8buffered9bufreader9BufReaderNtNtCsaL1QbXo9JQH_3std2fs4FileEENtNtB7G_6config13DefaultConfigEE0EE0E0EB1a_(ptr noundef %1, ptr noundef %i.h, ptr noundef %i.i, i64 noundef %i.b)
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %i.c
  %i.l = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %i.e
  %i.m = tail call fastcc noundef ptr @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared5pivot11median3_recTmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataENCINvMNtCs1xwejQucwHj_5alloc5sliceSB14_7sort_byNCINvXs1o_NtNtNtB25_11collections5btree3mapINtB2S_8BTreeMapmB16_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB14_E9from_iterINtNtNtB3S_8adapters3map3MapINtNtB4P_9enumerate9EnumerateINtNtNtB25_3vec9into_iter8IntoIterB16_EENCINvXsf_B18_NtB18_14VisitPackIndexNtNtCs6LlcditsbhK_5serde2de7Visitor9visit_seqINtNtCs974quTetXso_9rmp_serde6decode9SeqAccessINtB7E_10ReadReaderINtNtNtNtB25_2io8buffered9bufreader9BufReaderNtNtCsaL1QbXo9JQH_3std2fs4FileEENtNtB7G_6config13DefaultConfigEE0EE0E0EB1a_(ptr noundef %2, ptr noundef %i.k, ptr noundef %i.l, i64 noundef %i.b)
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared5pivot7median3TmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataENCINvMNtCs1xwejQucwHj_5alloc5sliceSBZ_7sort_byNCINvXs1o_NtNtNtB20_11collections5btree3mapINtB2M_8BTreeMapmB11_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBZ_E9from_iterINtNtNtB3M_8adapters3map3MapINtNtB4I_9enumerate9EnumerateINtNtNtB20_3vec9into_iter8IntoIterB11_EENCINvXsf_B13_NtB13_14VisitPackIndexNtNtCs6LlcditsbhK_5serde2de7Visitor9visit_seqINtNtCs974quTetXso_9rmp_serde6decode9SeqAccessINtB7x_10ReadReaderINtNtNtNtB20_2io8buffered9bufreader9BufReaderNtNtCsaL1QbXo9JQH_3std2fs4FileEENtNtB7z_6config13DefaultConfigEE0EE0E0EB15_.exit

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared5pivot7median3TmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataENCINvMNtCs1xwejQucwHj_5alloc5sliceSBZ_7sort_byNCINvXs1o_NtNtNtB20_11collections5btree3mapINtB2M_8BTreeMapmB11_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBZ_E9from_iterINtNtNtB3M_8adapters3map3MapINtNtB4I_9enumerate9EnumerateINtNtNtB20_3vec9into_iter8IntoIterB11_EENCINvXsf_B13_NtB13_14VisitPackIndexNtNtCs6LlcditsbhK_5serde2de7Visitor9visit_seqINtNtCs974quTetXso_9rmp_serde6decode9SeqAccessINtB7x_10ReadReaderINtNtNtNtB20_2io8buffered9bufreader9BufReaderNtNtCsaL1QbXo9JQH_3std2fs4FileEENtNtB7z_6config13DefaultConfigEE0EE0E0EB15_.exit: ; preds = %bb.a, %bb.b
  %.sroa.08.0 = phi ptr [ %i.m, %bb.b ], [ %2, %bb.a ] ; 2 uses
  %.sroa.04.0 = phi ptr [ %i.j, %bb.b ], [ %1, %bb.a ] ; 2 uses
  %.sroa.0.0 = phi ptr [ %i.g, %bb.b ], [ %0, %bb.a ] ; 2 uses
  %.sroa.0.0.val13 = load i32, ptr %.sroa.0.0, align 4, !noundef !8 ; 2 uses
  %.sroa.04.0.val14 = load i32, ptr %.sroa.04.0, align 4, !noundef !8 ; 2 uses
  %i.n = icmp ult i32 %.sroa.0.0.val13, %.sroa.04.0.val14 ; 2 uses
  %.sroa.08.0.val12 = load i32, ptr %.sroa.08.0, align 4, !noundef !8 ; 2 uses
  %i.o = icmp ult i32 %.sroa.0.0.val13, %.sroa.08.0.val12
  %i.p = xor i1 %i.n, %i.o
  %i.q = icmp ult i32 %.sroa.04.0.val14, %.sroa.08.0.val12
  %i.r = xor i1 %i.n, %i.q
  %..i = select i1 %i.r, ptr %.sroa.08.0, ptr %.sroa.04.0
  %.sroa.0.0.i = select i1 %i.p, ptr %.sroa.0.0, ptr %..i
  ret ptr %.sroa.0.0.i
}

; Function Attrs: nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef nonnull ptr @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared5pivot11median3_recTmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataENCINvMNtCs1xwejQucwHj_5alloc5sliceSB14_7sort_byNCINvXs1o_NtNtNtB25_11collections5btree3mapINtB2S_8BTreeMapmB16_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB14_E9from_iterINtNtNtB3S_8adapters3map3MapINtNtB4P_9enumerate9EnumerateINtNtNtB25_3vec9into_iter8IntoIterB16_EENCINvXsf_B18_NtB18_14VisitPackIndexNtNtCs6LlcditsbhK_5serde2de7Visitor9visit_seqINtNtCs974quTetXso_9rmp_serde6decode9SeqAccessINtB7E_10ReadReaderINtNtNtNtB25_2io8buffered9bufreader9BufReaderRShEENtNtB7G_6config13DefaultConfigEE0EE0E0EB1a_(ptr nofree noundef nonnull readonly %0, ptr nofree noundef nonnull readonly %1, ptr nofree noundef nonnull readonly %2, i64 noundef range(i64 0, 48038396025285291) %3) unnamed_addr #3 {
bb.a:
  %i.a = icmp samesign ugt i64 %3, 7
  br i1 %i.a, label %bb.b, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared5pivot7median3TmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataENCINvMNtCs1xwejQucwHj_5alloc5sliceSBZ_7sort_byNCINvXs1o_NtNtNtB20_11collections5btree3mapINtB2M_8BTreeMapmB11_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBZ_E9from_iterINtNtNtB3M_8adapters3map3MapINtNtB4I_9enumerate9EnumerateINtNtNtB20_3vec9into_iter8IntoIterB11_EENCINvXsf_B13_NtB13_14VisitPackIndexNtNtCs6LlcditsbhK_5serde2de7Visitor9visit_seqINtNtCs974quTetXso_9rmp_serde6decode9SeqAccessINtB7x_10ReadReaderINtNtNtNtB20_2io8buffered9bufreader9BufReaderRShEENtNtB7z_6config13DefaultConfigEE0EE0E0EB15_.exit

bb.b:                                             ; preds = %bb.a
  %i.b = lshr i64 %3, 3                           ; 5 uses
  %i.c = shl nuw nsw i64 %i.b, 2                  ; 3 uses
  %i.d = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.c
  %i.e = mul nuw nsw i64 %i.b, 7                  ; 3 uses
  %i.f = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.e
  %i.g = tail call fastcc noundef ptr @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared5pivot11median3_recTmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataENCINvMNtCs1xwejQucwHj_5alloc5sliceSB14_7sort_byNCINvXs1o_NtNtNtB25_11collections5btree3mapINtB2S_8BTreeMapmB16_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB14_E9from_iterINtNtNtB3S_8adapters3map3MapINtNtB4P_9enumerate9EnumerateINtNtNtB25_3vec9into_iter8IntoIterB16_EENCINvXsf_B18_NtB18_14VisitPackIndexNtNtCs6LlcditsbhK_5serde2de7Visitor9visit_seqINtNtCs974quTetXso_9rmp_serde6decode9SeqAccessINtB7E_10ReadReaderINtNtNtNtB25_2io8buffered9bufreader9BufReaderRShEENtNtB7G_6config13DefaultConfigEE0EE0E0EB1a_(ptr noundef %0, ptr noundef %i.d, ptr noundef %i.f, i64 noundef %i.b)
  %i.h = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %i.c
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %i.e
  %i.j = tail call fastcc noundef ptr @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared5pivot11median3_recTmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataENCINvMNtCs1xwejQucwHj_5alloc5sliceSB14_7sort_byNCINvXs1o_NtNtNtB25_11collections5btree3mapINtB2S_8BTreeMapmB16_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB14_E9from_iterINtNtNtB3S_8adapters3map3MapINtNtB4P_9enumerate9EnumerateINtNtNtB25_3vec9into_iter8IntoIterB16_EENCINvXsf_B18_NtB18_14VisitPackIndexNtNtCs6LlcditsbhK_5serde2de7Visitor9visit_seqINtNtCs974quTetXso_9rmp_serde6decode9SeqAccessINtB7E_10ReadReaderINtNtNtNtB25_2io8buffered9bufreader9BufReaderRShEENtNtB7G_6config13DefaultConfigEE0EE0E0EB1a_(ptr noundef %1, ptr noundef %i.h, ptr noundef %i.i, i64 noundef %i.b)
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %i.c
  %i.l = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %i.e
  %i.m = tail call fastcc noundef ptr @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared5pivot11median3_recTmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataENCINvMNtCs1xwejQucwHj_5alloc5sliceSB14_7sort_byNCINvXs1o_NtNtNtB25_11collections5btree3mapINtB2S_8BTreeMapmB16_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB14_E9from_iterINtNtNtB3S_8adapters3map3MapINtNtB4P_9enumerate9EnumerateINtNtNtB25_3vec9into_iter8IntoIterB16_EENCINvXsf_B18_NtB18_14VisitPackIndexNtNtCs6LlcditsbhK_5serde2de7Visitor9visit_seqINtNtCs974quTetXso_9rmp_serde6decode9SeqAccessINtB7E_10ReadReaderINtNtNtNtB25_2io8buffered9bufreader9BufReaderRShEENtNtB7G_6config13DefaultConfigEE0EE0E0EB1a_(ptr noundef %2, ptr noundef %i.k, ptr noundef %i.l, i64 noundef %i.b)
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared5pivot7median3TmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataENCINvMNtCs1xwejQucwHj_5alloc5sliceSBZ_7sort_byNCINvXs1o_NtNtNtB20_11collections5btree3mapINtB2M_8BTreeMapmB11_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBZ_E9from_iterINtNtNtB3M_8adapters3map3MapINtNtB4I_9enumerate9EnumerateINtNtNtB20_3vec9into_iter8IntoIterB11_EENCINvXsf_B13_NtB13_14VisitPackIndexNtNtCs6LlcditsbhK_5serde2de7Visitor9visit_seqINtNtCs974quTetXso_9rmp_serde6decode9SeqAccessINtB7x_10ReadReaderINtNtNtNtB20_2io8buffered9bufreader9BufReaderRShEENtNtB7z_6config13DefaultConfigEE0EE0E0EB15_.exit

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared5pivot7median3TmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataENCINvMNtCs1xwejQucwHj_5alloc5sliceSBZ_7sort_byNCINvXs1o_NtNtNtB20_11collections5btree3mapINtB2M_8BTreeMapmB11_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBZ_E9from_iterINtNtNtB3M_8adapters3map3MapINtNtB4I_9enumerate9EnumerateINtNtNtB20_3vec9into_iter8IntoIterB11_EENCINvXsf_B13_NtB13_14VisitPackIndexNtNtCs6LlcditsbhK_5serde2de7Visitor9visit_seqINtNtCs974quTetXso_9rmp_serde6decode9SeqAccessINtB7x_10ReadReaderINtNtNtNtB20_2io8buffered9bufreader9BufReaderRShEENtNtB7z_6config13DefaultConfigEE0EE0E0EB15_.exit: ; preds = %bb.a, %bb.b
  %.sroa.08.0 = phi ptr [ %i.m, %bb.b ], [ %2, %bb.a ] ; 2 uses
  %.sroa.04.0 = phi ptr [ %i.j, %bb.b ], [ %1, %bb.a ] ; 2 uses
  %.sroa.0.0 = phi ptr [ %i.g, %bb.b ], [ %0, %bb.a ] ; 2 uses
  %.sroa.0.0.val13 = load i32, ptr %.sroa.0.0, align 4, !noundef !8 ; 2 uses
  %.sroa.04.0.val14 = load i32, ptr %.sroa.04.0, align 4, !noundef !8 ; 2 uses
  %i.n = icmp ult i32 %.sroa.0.0.val13, %.sroa.04.0.val14 ; 2 uses
  %.sroa.08.0.val12 = load i32, ptr %.sroa.08.0, align 4, !noundef !8 ; 2 uses
  %i.o = icmp ult i32 %.sroa.0.0.val13, %.sroa.08.0.val12
  %i.p = xor i1 %i.n, %i.o
  %i.q = icmp ult i32 %.sroa.04.0.val14, %.sroa.08.0.val12
  %i.r = xor i1 %i.n, %i.q
  %..i = select i1 %i.r, ptr %.sroa.08.0, ptr %.sroa.04.0
  %.sroa.0.0.i = select i1 %i.p, ptr %.sroa.0.0, ptr %..i
  ret ptr %.sroa.0.0.i
}

; Function Attrs: nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef nonnull ptr @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared5pivot11median3_recTymENvYB14_NtNtBa_3cmp10PartialOrd2ltECskuiImRAV2ip_9elfshaker(ptr nofree noundef nonnull readonly %0, ptr nofree noundef nonnull readonly %1, ptr nofree noundef nonnull readonly %2, i64 noundef range(i64 0, 72057594037927936) %3) unnamed_addr #3 {
bb.a:
  %i.a = icmp samesign ugt i64 %3, 7
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = lshr i64 %3, 3                           ; 5 uses
  %i.c = shl nuw nsw i64 %i.b, 2                  ; 3 uses
  %i.d = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.c
  %i.e = mul nuw nsw i64 %i.b, 7                  ; 3 uses
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.e
  %i.g = tail call fastcc noundef ptr @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared5pivot11median3_recTymENvYB14_NtNtBa_3cmp10PartialOrd2ltECskuiImRAV2ip_9elfshaker(ptr noundef %0, ptr noundef %i.d, ptr noundef %i.f, i64 noundef %i.b)
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.c
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.e
  %i.j = tail call fastcc noundef ptr @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared5pivot11median3_recTymENvYB14_NtNtBa_3cmp10PartialOrd2ltECskuiImRAV2ip_9elfshaker(ptr noundef %1, ptr noundef %i.h, ptr noundef %i.i, i64 noundef %i.b)
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.c
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.e
  %i.m = tail call fastcc noundef ptr @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared5pivot11median3_recTymENvYB14_NtNtBa_3cmp10PartialOrd2ltECskuiImRAV2ip_9elfshaker(ptr noundef %2, ptr noundef %i.k, ptr noundef %i.l, i64 noundef %i.b)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.08.0 = phi ptr [ %i.m, %bb.b ], [ %2, %bb.a ] ; 3 uses
  %.sroa.04.0 = phi ptr [ %i.j, %bb.b ], [ %1, %bb.a ] ; 3 uses
  %.sroa.0.0 = phi ptr [ %i.g, %bb.b ], [ %0, %bb.a ] ; 3 uses
  %.sroa.0.0.val17 = load i64, ptr %.sroa.0.0, align 8, !noundef !8 ; 4 uses
  %i.n = getelementptr i8, ptr %.sroa.0.0, i64 8
  %.sroa.0.0.val18 = load i32, ptr %i.n, align 8  ; 2 uses
  %.sroa.04.0.val19 = load i64, ptr %.sroa.04.0, align 8, !noundef !8 ; 4 uses
  %i.o = getelementptr i8, ptr %.sroa.04.0, i64 8
  %.sroa.04.0.val20 = load i32, ptr %i.o, align 8 ; 2 uses
  %i.p = icmp eq i64 %.sroa.0.0.val17, %.sroa.04.0.val19
  %i.q = icmp ult i64 %.sroa.0.0.val17, %.sroa.04.0.val19
  %i.r = icmp ult i32 %.sroa.0.0.val18, %.sroa.04.0.val20
  %.sroa.0.0.i.i = select i1 %i.p, i1 %i.r, i1 %i.q ; 2 uses
  %.sroa.08.0.val15 = load i64, ptr %.sroa.08.0, align 8, !noundef !8 ; 4 uses
  %i.s = getelementptr i8, ptr %.sroa.08.0, i64 8
  %.sroa.08.0.val16 = load i32, ptr %i.s, align 8 ; 2 uses
  %i.t = icmp eq i64 %.sroa.0.0.val17, %.sroa.08.0.val15
  %i.u = icmp ult i64 %.sroa.0.0.val17, %.sroa.08.0.val15
  %i.v = icmp ult i32 %.sroa.0.0.val18, %.sroa.08.0.val16
  %.sroa.0.0.i.i21 = select i1 %i.t, i1 %i.v, i1 %i.u
  %i.w = xor i1 %.sroa.0.0.i.i, %.sroa.0.0.i.i21
  br i1 %i.w, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared5pivot7median3TymENvYBZ_NtNtBa_3cmp10PartialOrd2ltECskuiImRAV2ip_9elfshaker.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = icmp eq i64 %.sroa.04.0.val19, %.sroa.08.0.val15
  %i.y = icmp ult i64 %.sroa.04.0.val19, %.sroa.08.0.val15
  %i.z = icmp ult i32 %.sroa.04.0.val20, %.sroa.08.0.val16
  %.sroa.0.0.i.i22 = select i1 %i.x, i1 %i.z, i1 %i.y
  %i.aa = xor i1 %.sroa.0.0.i.i, %.sroa.0.0.i.i22
  %..i = select i1 %i.aa, ptr %.sroa.08.0, ptr %.sroa.04.0
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared5pivot7median3TymENvYBZ_NtNtBa_3cmp10PartialOrd2ltECskuiImRAV2ip_9elfshaker.exit

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared5pivot7median3TymENvYBZ_NtNtBa_3cmp10PartialOrd2ltECskuiImRAV2ip_9elfshaker.exit: ; preds = %bb.c, %bb.d
  %.sroa.0.0.i = phi ptr [ %.sroa.0.0, %bb.c ], [ %..i, %bb.d ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortNtNtCskuiImRAV2ip_9elfshaker7packidx12FileEntryRefNCINvMNtCs1xwejQucwHj_5alloc5sliceSB15_7sort_byNCNvMsd_B17_NtB17_9PackIndex25compute_snapshot_checksum0E0EB19_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 230584300921369396) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 230584300921369396) %3, i32 noundef %4, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable_or_null(40) %5, ptr noalias nofree noundef align 8 dereferenceable(8) %6) unnamed_addr #1 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 6 uses
  %i.b = icmp samesign ult i64 %1, 33
  br i1 %i.b, label %.outer._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.outer
  %.sroa.0.0.ph96 = phi ptr [ %i.fv, %.outer ], [ %0, %bb.a ] ; 21 uses
  %.sroa.16.0.ph95 = phi i64 [ %i.fg, %.outer ], [ %1, %bb.a ] ; 2 uses
  %.sroa.025.0.ph94 = phi i32 [ %i.j, %.outer ], [ %4, %bb.a ] ; 2 uses
  %.sroa.028.0.ph93 = phi ptr [ null, %.outer ], [ %5, %bb.a ] ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph96, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph96, i64 8
  %i.e = ptrtoint ptr %.sroa.0.0.ph96 to i64
  %.not = icmp eq ptr %.sroa.028.0.ph93, null
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.028.0.ph93, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.028.0.ph93, i64 8
  %i.h = icmp eq i32 %.sroa.025.0.ph94, 0
  br i1 %i.h, label %.lr.ph._crit_edge, label %.lr.ph219

bb.b:                                             ; preds = %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtCskuiImRAV2ip_9elfshaker7packidx12FileEntryRef12split_at_mutBy_.exit
  %i.i = icmp eq i32 %i.j, 0
  br i1 %i.i, label %.lr.ph._crit_edge, label %.lr.ph219

.outer._crit_edge:                                ; preds = %.outer, %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtCskuiImRAV2ip_9elfshaker7packidx12FileEntryRef12split_at_mutBy_.exit, %.outer.thread, %bb.a
  %.sroa.0.0.ph.lcssa87 = phi ptr [ %i.fh, %.outer.thread ], [ %0, %bb.a ], [ %.sroa.0.0.ph96, %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtCskuiImRAV2ip_9elfshaker7packidx12FileEntryRef12split_at_mutBy_.exit ], [ %i.fv, %.outer ]
  %.sroa.16.0.lcssa = phi i64 [ 0, %.outer.thread ], [ %1, %bb.a ], [ %.sroa.11.1.lcssa.i, %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtCskuiImRAV2ip_9elfshaker7packidx12FileEntryRef12split_at_mutBy_.exit ], [ %i.fg, %.outer ]
  call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchNtNtCskuiImRAV2ip_9elfshaker7packidx12FileEntryRefNCINvMNtCs1xwejQucwHj_5alloc5sliceSB1s_7sort_byNCNvMsd_B1u_NtB1u_9PackIndex25compute_snapshot_checksum0E0EB1w_(ptr noalias nofree noundef nonnull align 8 %.sroa.0.0.ph.lcssa87, i64 noundef range(i64 0, 33) %.sroa.16.0.lcssa, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 230584300921369396) %3, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %6)
  br label %bb.f

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %bb.b
  %.sroa.16.089.lcssa = phi i64 [ %.sroa.11.1.lcssa.i, %bb.b ], [ %.sroa.16.0.ph95, %.lr.ph ]
  call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift4sortNtNtCskuiImRAV2ip_9elfshaker7packidx12FileEntryRefNCINvMNtCs1xwejQucwHj_5alloc5sliceSBW_7sort_byNCNvMsd_BY_NtBY_9PackIndex25compute_snapshot_checksum0E0EB10_(ptr noalias nofree noundef nonnull align 8 %.sroa.0.0.ph96, i64 noundef %.sroa.16.089.lcssa, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef %3, i1 noundef zeroext true, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %6)
  br label %bb.f

.lr.ph219:                                        ; preds = %.lr.ph, %bb.b
  %.sroa.025.088218 = phi i32 [ %i.j, %bb.b ], [ %.sroa.025.0.ph94, %.lr.ph ]
  %.sroa.16.089217 = phi i64 [ %.sroa.11.1.lcssa.i, %bb.b ], [ %.sroa.16.0.ph95, %.lr.ph ] ; 21 uses
  %i.j = add i32 %.sroa.025.088218, -1            ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !247)
  %i.k = lshr i64 %.sroa.16.089217, 3             ; 3 uses
  %.idx.i = mul nuw nsw i64 %i.k, 160
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph96, i64 %.idx.i ; 5 uses
  %.idx2.i = mul nuw nsw i64 %i.k, 280
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph96, i64 %.idx2.i ; 5 uses
  %i.n = icmp samesign ult i64 %.sroa.16.089217, 64
  br i1 %i.n, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph219
  %i.o = call fastcc noundef ptr @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared5pivot11median3_recNtNtCskuiImRAV2ip_9elfshaker7packidx12FileEntryRefNCINvMNtCs1xwejQucwHj_5alloc5sliceSB14_7sort_byNCNvMsd_B16_NtB16_9PackIndex25compute_snapshot_checksum0E0EB18_(ptr noundef nonnull readonly align 8 %.sroa.0.0.ph96, ptr noundef readonly %i.l, ptr noundef readonly %i.m, i64 noundef %i.k)
  br label %bb.g

bb.d:                                             ; preds = %.lr.ph219
  call void @llvm.experimental.noalias.scope.decl(metadata !250)
  call void @llvm.experimental.noalias.scope.decl(metadata !253)
  call void @llvm.experimental.noalias.scope.decl(metadata !255)
  call void @llvm.experimental.noalias.scope.decl(metadata !258)
  %i.p = load ptr, ptr %i.c, align 8, !alias.scope !260, !noalias !261, !nonnull !8, !noundef !8 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !262, !noalias !263, !nonnull !8, !noundef !8 ; 2 uses
  %i.s = call i32 @memcmp(ptr noundef nonnull dereferenceable(20) %i.p, ptr noundef nonnull dereferenceable(20) %i.r, i64 20), !noalias !264 ; 2 uses
  %i.t = load ptr, ptr %.sroa.0.0.ph96, align 8, !alias.scope !260, !noalias !261, !nonnull !8, !noundef !8 ; 2 uses
  %i.u = load i64, ptr %i.d, align 8, !alias.scope !260, !noalias !261, !noundef !8 ; 4 uses
  %i.v = load ptr, ptr %i.l, align 8, !alias.scope !262, !noalias !263, !nonnull !8, !noundef !8 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.x = load i64, ptr %i.w, align 8, !alias.scope !262, !noalias !263, !noundef !8 ; 4 uses
  %spec.store.select1.i.i.i = call i64 @llvm.umin.i64(i64 %i.u, i64 %i.x)
  %i.y = call i32 @memcmp(ptr nonnull %i.t, ptr nonnull %i.v, i64 %spec.store.select1.i.i.i), !noalias !264 ; 2 uses
  %i.z = sext i32 %i.y to i64
  %i.aa = icmp eq i32 %i.y, 0
  %i.ab = sub i64 %i.u, %i.x
  %.sroa.011.0.i.i.i = select i1 %i.aa, i64 %i.ab, i64 %i.z
  %i.ac = icmp eq i32 %i.s, 0
  %i.ad = icmp slt i64 %.sroa.011.0.i.i.i, 0
  %i.ae = icmp slt i32 %i.s, 0
  %i.af = select i1 %i.ac, i1 %i.ad, i1 %i.ae     ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !265)
  call void @llvm.experimental.noalias.scope.decl(metadata !268)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !alias.scope !271, !noalias !272, !nonnull !8, !noundef !8 ; 2 uses
  %i.ai = call i32 @memcmp(ptr noundef nonnull dereferenceable(20) %i.p, ptr noundef nonnull dereferenceable(20) %i.ah, i64 20), !noalias !275 ; 2 uses
  %i.aj = load ptr, ptr %i.m, align 8, !alias.scope !271, !noalias !272, !nonnull !8, !noundef !8 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !alias.scope !271, !noalias !272, !noundef !8 ; 4 uses
  %spec.store.select1.i.i3.i = call i64 @llvm.umin.i64(i64 %i.u, i64 %i.al)
  %i.am = call i32 @memcmp(ptr nonnull %i.t, ptr nonnull %i.aj, i64 %spec.store.select1.i.i3.i), !noalias !275 ; 2 uses
  %i.an = sext i32 %i.am to i64
  %i.ao = icmp eq i32 %i.am, 0
  %i.ap = sub i64 %i.u, %i.al
  %.sroa.011.0.i.i4.i = select i1 %i.ao, i64 %i.ap, i64 %i.an
  %i.aq = icmp eq i32 %i.ai, 0
  %i.ar = icmp slt i64 %.sroa.011.0.i.i4.i, 0
  %i.as = icmp slt i32 %i.ai, 0
  %i.at = select i1 %i.aq, i1 %i.ar, i1 %i.as
  %i.au = xor i1 %i.af, %i.at
  br i1 %i.au, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.av = call i32 @memcmp(ptr noundef nonnull dereferenceable(20) %i.r, ptr noundef nonnull dereferenceable(20) %i.ah, i64 20), !noalias !276 ; 2 uses
  %spec.store.select1.i.i5.i = call i64 @llvm.umin.i64(i64 %i.x, i64 %i.al)
  %i.aw = call i32 @memcmp(ptr nonnull %i.v, ptr nonnull %i.aj, i64 %spec.store.select1.i.i5.i), !noalias !276 ; 2 uses
  %i.ax = sext i32 %i.aw to i64
  %i.ay = icmp eq i32 %i.aw, 0
  %i.az = sub i64 %i.x, %i.al
  %.sroa.011.0.i.i6.i = select i1 %i.ay, i64 %i.az, i64 %i.ax
  %i.ba = icmp eq i32 %i.av, 0
  %i.bb = icmp slt i64 %.sroa.011.0.i.i6.i, 0
  %i.bc = icmp slt i32 %i.av, 0
  %i.bd = select i1 %i.ba, i1 %i.bb, i1 %i.bc
  %i.be = xor i1 %i.af, %i.bd
  %..i.i = select i1 %i.be, ptr %i.m, ptr %i.l
  br label %bb.g

bb.f:                                             ; preds = %.lr.ph._crit_edge, %.outer._crit_edge
  ret void

bb.g:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.sroa.0.0.i.sink.i = phi ptr [ %i.o, %bb.c ], [ %.sroa.0.0.ph96, %bb.d ], [ %..i.i, %bb.e ]
  %i.bf = ptrtoint ptr %.sroa.0.0.i.sink.i to i64
  %i.bg = sub nuw i64 %i.bf, %i.e                 ; 2 uses
  %.sroa.0.0.i = udiv exact i64 %i.bg, 40         ; 3 uses
  %i.bh = icmp samesign ult i64 %.sroa.0.0.i, %.sroa.16.089217
  call void @llvm.assume(i1 %i.bh)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph96, i64 %i.bg ; 10 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %i.bi, i64 40, i1 false)
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.experimental.noalias.scope.decl(metadata !283)
  call void @llvm.experimental.noalias.scope.decl(metadata !286)
  call void @llvm.experimental.noalias.scope.decl(metadata !288)
  call void @llvm.experimental.noalias.scope.decl(metadata !291)
  %i.bj = load ptr, ptr %i.f, align 8, !alias.scope !293, !noalias !294, !nonnull !8, !noundef !8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8, !alias.scope !294, !noalias !293, !nonnull !8, !noundef !8
  %i.bm = call i32 @memcmp(ptr noundef nonnull dereferenceable(20) %i.bj, ptr noundef nonnull dereferenceable(20) %i.bl, i64 20), !noalias !295 ; 2 uses
  %i.bn = load ptr, ptr %.sroa.028.0.ph93, align 8, !alias.scope !293, !noalias !294, !nonnull !8, !noundef !8
  %i.bo = load i64, ptr %i.g, align 8, !alias.scope !293, !noalias !294, !noundef !8 ; 2 uses
  %i.bp = load ptr, ptr %i.bi, align 8, !alias.scope !294, !noalias !293, !nonnull !8, !noundef !8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.br = load i64, ptr %i.bq, align 8, !alias.scope !294, !noalias !293, !noundef !8 ; 2 uses
  %spec.store.select1.i.i = call i64 @llvm.umin.i64(i64 %i.bo, i64 %i.br)
  %i.bs = call i32 @memcmp(ptr nonnull %i.bn, ptr nonnull %i.bp, i64 %spec.store.select1.i.i), !noalias !295 ; 2 uses
  %i.bt = sext i32 %i.bs to i64
  %i.bu = icmp eq i32 %i.bs, 0
  %i.bv = sub i64 %i.bo, %i.br
  %.sroa.011.0.i.i = select i1 %i.bu, i64 %i.bv, i64 %i.bt
  %i.bw = icmp eq i32 %i.bm, 0
  %i.bx = icmp slt i64 %.sroa.011.0.i.i, 0
  %i.by = icmp slt i32 %i.bm, 0
  %i.bz = select i1 %i.bw, i1 %i.bx, i1 %i.by
  br i1 %i.bz, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.g, %bb.h
  call void @llvm.experimental.noalias.scope.decl(metadata !296)
  call void @llvm.experimental.noalias.scope.decl(metadata !299)
  %.not63 = icmp samesign ult i64 %3, %.sroa.16.089217
  br i1 %.not63, label %bb.k, label %bb.j, !prof !301

bb.j:                                             ; preds = %bb.i
  %i.ca = getelementptr [40 x i8], ptr %2, i64 %.sroa.16.089217 ; 4 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  call void @llvm.trap()
  unreachable

bb.l:                                             ; preds = %bb.n, %bb.j
  %.sroa.19.0.i = phi ptr [ %i.ca, %bb.j ], [ %i.dd, %bb.n ] ; 2 uses
  %.sroa.11.0.i = phi i64 [ 0, %bb.j ], [ %.sroa.11.1.lcssa.i, %bb.n ] ; 2 uses
  %.sroa.5.0.i = phi ptr [ %.sroa.0.0.ph96, %bb.j ], [ %i.df, %bb.n ] ; 3 uses
  %.sroa.0.0.i37 = phi i64 [ %.sroa.0.0.i, %bb.j ], [ %.sroa.16.089217, %bb.n ] ; 2 uses
  %i.cd = getelementptr inbounds nuw [40 x i8], ptr %.sroa.0.0.ph96, i64 %.sroa.0.0.i37 ; 2 uses
  %i.ce = icmp ult ptr %.sroa.5.0.i, %i.cd
  br i1 %i.ce, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.l
  %i.cf = load ptr, ptr %i.bi, align 8, !alias.scope !302, !noalias !307, !nonnull !8, !noundef !8
  br label %bb.m

._crit_edge.i:                                    ; preds = %bb.m, %bb.l
  %.sroa.19.1.lcssa.i = phi ptr [ %.sroa.19.0.i, %bb.l ], [ %i.cx, %bb.m ]
  %.sroa.11.1.lcssa.i = phi i64 [ %.sroa.11.0.i, %bb.l ], [ %i.da, %bb.m ] ; 14 uses
  %.sroa.5.1.lcssa.i = phi ptr [ %.sroa.5.0.i, %bb.l ], [ %i.db, %bb.m ] ; 2 uses
  %i.cg = icmp eq i64 %.sroa.0.0.i37, %.sroa.16.089217
  br i1 %i.cg, label %bb.o, label %bb.n

bb.m:                                             ; preds = %bb.m, %.lr.ph.i
  %.sroa.5.111.i = phi ptr [ %.sroa.5.0.i, %.lr.ph.i ], [ %i.db, %bb.m ] ; 5 uses
  %.sroa.11.110.i = phi i64 [ %.sroa.11.0.i, %.lr.ph.i ], [ %i.da, %bb.m ] ; 2 uses
  %.sroa.19.19.i = phi ptr [ %.sroa.19.0.i, %.lr.ph.i ], [ %i.cx, %bb.m ]
  call void @llvm.experimental.noalias.scope.decl(metadata !310)
  call void @llvm.experimental.noalias.scope.decl(metadata !311)
  call void @llvm.experimental.noalias.scope.decl(metadata !312)
  call void @llvm.experimental.noalias.scope.decl(metadata !313)
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.5.111.i, i64 16
  %i.ci = load ptr, ptr %i.ch, align 8, !alias.scope !314, !noalias !315, !nonnull !8, !noundef !8
  %i.cj = load ptr, ptr %i.cb, align 8, !alias.scope !302, !noalias !307, !nonnull !8, !noundef !8
  %i.ck = call i32 @memcmp(ptr noundef nonnull dereferenceable(20) %i.ci, ptr noundef nonnull dereferenceable(20) %i.cj, i64 20), !noalias !316 ; 2 uses
  %i.cl = load ptr, ptr %.sroa.5.111.i, align 8, !alias.scope !314, !noalias !315, !nonnull !8, !noundef !8
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.5.111.i, i64 8
  %i.cn = load i64, ptr %i.cm, align 8, !alias.scope !314, !noalias !315, !noundef !8 ; 2 uses
  %i.co = load i64, ptr %i.cc, align 8, !alias.scope !302, !noalias !307, !noundef !8 ; 2 uses
  %spec.store.select1.i.i.i38 = call i64 @llvm.umin.i64(i64 %i.cn, i64 %i.co)
  %i.cp = call i32 @memcmp(ptr nonnull %i.cl, ptr nonnull %i.cf, i64 %spec.store.select1.i.i.i38), !noalias !316 ; 2 uses
  %i.cq = sext i32 %i.cp to i64
  %i.cr = icmp eq i32 %i.cp, 0
  %i.cs = sub i64 %i.cn, %i.co
  %.sroa.011.0.i.i.i39 = select i1 %i.cr, i64 %i.cs, i64 %i.cq
  %i.ct = icmp eq i32 %i.ck, 0
  %i.cu = icmp slt i64 %.sroa.011.0.i.i.i39, 0
  %i.cv = icmp slt i32 %i.ck, 0
  %i.cw = select i1 %i.ct, i1 %i.cu, i1 %i.cv     ; 2 uses
  %i.cx = getelementptr inbounds i8, ptr %.sroa.19.19.i, i64 -40 ; 3 uses
  %.sroa.01.0.i.i = select i1 %i.cw, ptr %2, ptr %i.cx
  %i.cy = getelementptr inbounds nuw [40 x i8], ptr %.sroa.01.0.i.i, i64 %.sroa.11.110.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.cy, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.111.i, i64 40, i1 false), !alias.scope !317, !noalias !318
  %i.cz = zext i1 %i.cw to i64
  %i.da = add i64 %.sroa.11.110.i, %i.cz          ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.5.111.i, i64 40 ; 3 uses
  %i.dc = icmp ult ptr %i.db, %i.cd
  br i1 %i.dc, label %bb.m, label %._crit_edge.i

bb.n:                                             ; preds = %._crit_edge.i
  %i.dd = getelementptr inbounds i8, ptr %.sroa.19.1.lcssa.i, i64 -40 ; 2 uses
  %i.de = getelementptr inbounds nuw [40 x i8], ptr %i.dd, i64 %.sroa.11.1.lcssa.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.de, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.1.lcssa.i, i64 40, i1 false), !alias.scope !317, !noalias !321
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.5.1.lcssa.i, i64 40
  br label %bb.l

bb.o:                                             ; preds = %._crit_edge.i
  %i.dg = mul nuw nsw i64 %.sroa.11.1.lcssa.i, 40
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph96, ptr nonnull align 8 %2, i64 %i.dg, i1 false), !alias.scope !317
  %i.dh = sub i64 %.sroa.16.089217, %.sroa.11.1.lcssa.i ; 4 uses
  %.not18.i = icmp eq i64 %.sroa.16.089217, %.sroa.11.1.lcssa.i
  br i1 %.not18.i, label %.loopexit, label %.lr.ph16.i

.lr.ph16.i:                                       ; preds = %bb.o
  %i.di = getelementptr [40 x i8], ptr %.sroa.0.0.ph96, i64 %.sroa.11.1.lcssa.i ; 3 uses
  %.neg = add i64 %.sroa.11.1.lcssa.i, 1
  %xtraiter = and i64 %i.dh, 1
  %i.dj = icmp eq i64 %.sroa.16.089217, %.neg
  br i1 %i.dj, label %.epil.preheader, label %.lr.ph16.i.new

.lr.ph16.i.new:                                   ; preds = %.lr.ph16.i
  %unroll_iter = and i64 %i.dh, -2
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %.lr.ph16.i.new
  %.sroa.06.014.i = phi i64 [ 0, %.lr.ph16.i.new ], [ %i.dn, %bb.p ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph16.i.new ], [ %niter.next.1, %bb.p ]
  %i.dk = xor i64 %.sroa.06.014.i, -1
  %i.dl = getelementptr [40 x i8], ptr %i.ca, i64 %i.dk
  %i.dm = getelementptr [40 x i8], ptr %i.di, i64 %.sroa.06.014.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.dm, ptr noundef nonnull align 8 dereferenceable(40) %i.dl, i64 40, i1 false), !alias.scope !317
  %i.dn = add nuw i64 %.sroa.06.014.i, 2          ; 2 uses
  %i.do = xor i64 %.sroa.06.014.i, -2
  %i.dp = getelementptr [40 x i8], ptr %i.ca, i64 %i.do
  %i.dq = getelementptr [40 x i8], ptr %i.di, i64 %.sroa.06.014.i
  %i.dr = getelementptr i8, ptr %i.dq, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.dr, ptr noundef nonnull align 8 dereferenceable(40) %i.dp, i64 40, i1 false), !alias.scope !317
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.p

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.p
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph16.i
  %.sroa.06.014.i.epil.init = phi i64 [ 0, %.lr.ph16.i ], [ %i.dn, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod280 = trunc i64 %i.dh to i1
  call void @llvm.assume(i1 %lcmp.mod280)
  %i.ds = xor i64 %.sroa.06.014.i.epil.init, -1
  %i.dt = getelementptr [40 x i8], ptr %i.ca, i64 %i.ds
  %i.du = getelementptr [40 x i8], ptr %i.di, i64 %.sroa.06.014.i.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.du, ptr noundef nonnull align 8 dereferenceable(40) %i.dt, i64 40, i1 false), !alias.scope !317
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.o
  %i.dv = icmp eq i64 %.sroa.11.1.lcssa.i, 0
  br i1 %i.dv, label %.thread, label %bb.q

bb.q:                                             ; preds = %.loopexit
  %.not.i40 = icmp ugt i64 %.sroa.11.1.lcssa.i, %.sroa.16.089217
  br i1 %.not.i40, label %bb.r, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtCskuiImRAV2ip_9elfshaker7packidx12FileEntryRef12split_at_mutBy_.exit, !prof !324

bb.r:                                             ; preds = %bb.q
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @9, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #30, !noalias !325
  unreachable

_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtCskuiImRAV2ip_9elfshaker7packidx12FileEntryRef12split_at_mutBy_.exit: ; preds = %bb.q
  %i.dw = getelementptr inbounds nuw [40 x i8], ptr %.sroa.0.0.ph96, i64 %.sroa.11.1.lcssa.i
  call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortNtNtCskuiImRAV2ip_9elfshaker7packidx12FileEntryRefNCINvMNtCs1xwejQucwHj_5alloc5sliceSB15_7sort_byNCNvMsd_B17_NtB17_9PackIndex25compute_snapshot_checksum0E0EB19_(ptr noalias nofree noundef nonnull align 8 %i.dw, i64 noundef %i.dh, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable_or_null(40) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %6) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.dx = icmp ult i64 %.sroa.11.1.lcssa.i, 33
  br i1 %i.dx, label %.outer._crit_edge, label %bb.b

.thread:                                          ; preds = %bb.h, %.loopexit
  call void @llvm.experimental.noalias.scope.decl(metadata !329)
  call void @llvm.experimental.noalias.scope.decl(metadata !332)
  %.not64 = icmp samesign ult i64 %3, %.sroa.16.089217
  br i1 %.not64, label %bb.t, label %bb.s, !prof !301

bb.s:                                             ; preds = %.thread
  %i.dy = getelementptr [40 x i8], ptr %2, i64 %.sroa.16.089217 ; 4 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.ea = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  br label %bb.u

bb.t:                                             ; preds = %.thread
  call void @llvm.trap()
  unreachable

bb.u:                                             ; preds = %bb.w, %bb.s
  %.sroa.19.0.i43 = phi ptr [ %i.dy, %bb.s ], [ %i.fb, %bb.w ] ; 2 uses
  %.sroa.11.0.i44 = phi i64 [ 0, %bb.s ], [ %i.fd, %bb.w ] ; 2 uses
  %.sroa.5.0.i45 = phi ptr [ %.sroa.0.0.ph96, %bb.s ], [ %i.fe, %bb.w ] ; 3 uses
  %.sroa.0.0.i46 = phi i64 [ %.sroa.0.0.i, %bb.s ], [ %.sroa.16.089217, %bb.w ] ; 2 uses
  %i.eb = getelementptr inbounds nuw [40 x i8], ptr %.sroa.0.0.ph96, i64 %.sroa.0.0.i46 ; 2 uses
  %i.ec = icmp ult ptr %.sroa.5.0.i45, %i.eb
  br i1 %i.ec, label %.lr.ph.i55, label %._crit_edge.i47

.lr.ph.i55:                                       ; preds = %bb.u
  %i.ed = load ptr, ptr %i.bi, align 8, !alias.scope !334, !noalias !341, !nonnull !8, !noundef !8
  br label %bb.v

._crit_edge.i47:                                  ; preds = %bb.v, %bb.u
  %.sroa.19.1.lcssa.i48 = phi ptr [ %.sroa.19.0.i43, %bb.u ], [ %i.ev, %bb.v ]
  %.sroa.11.1.lcssa.i49 = phi i64 [ %.sroa.11.0.i44, %bb.u ], [ %i.ey, %bb.v ] ; 10 uses
  %.sroa.5.1.lcssa.i50 = phi ptr [ %.sroa.5.0.i45, %bb.u ], [ %i.ez, %bb.v ] ; 2 uses
  %i.ee = icmp eq i64 %.sroa.0.0.i46, %.sroa.16.089217
  br i1 %i.ee, label %bb.x, label %bb.w

bb.v:                                             ; preds = %bb.v, %.lr.ph.i55
  %.sroa.5.111.i56 = phi ptr [ %.sroa.5.0.i45, %.lr.ph.i55 ], [ %i.ez, %bb.v ] ; 5 uses
  %.sroa.11.110.i57 = phi i64 [ %.sroa.11.0.i44, %.lr.ph.i55 ], [ %i.ey, %bb.v ] ; 2 uses
  %.sroa.19.19.i58 = phi ptr [ %.sroa.19.0.i43, %.lr.ph.i55 ], [ %i.ev, %bb.v ]
  call void @llvm.experimental.noalias.scope.decl(metadata !345)
  call void @llvm.experimental.noalias.scope.decl(metadata !346)
  call void @llvm.experimental.noalias.scope.decl(metadata !347)
  call void @llvm.experimental.noalias.scope.decl(metadata !348)
  call void @llvm.experimental.noalias.scope.decl(metadata !349)
  call void @llvm.experimental.noalias.scope.decl(metadata !350)
  %i.ef = load ptr, ptr %i.dz, align 8, !alias.scope !334, !noalias !341, !nonnull !8, !noundef !8
  %i.eg = getelementptr inbounds nuw i8, ptr %.sroa.5.111.i56, i64 16
  %i.eh = load ptr, ptr %i.eg, align 8, !alias.scope !351, !noalias !352, !nonnull !8, !noundef !8
  %i.ei = call i32 @memcmp(ptr noundef nonnull dereferenceable(20) %i.ef, ptr noundef nonnull dereferenceable(20) %i.eh, i64 20), !noalias !353 ; 2 uses
  %i.ej = load i64, ptr %i.ea, align 8, !alias.scope !334, !noalias !341, !noundef !8 ; 2 uses
  %i.ek = load ptr, ptr %.sroa.5.111.i56, align 8, !alias.scope !351, !noalias !352, !nonnull !8, !noundef !8
  %i.el = getelementptr inbounds nuw i8, ptr %.sroa.5.111.i56, i64 8
  %i.em = load i64, ptr %i.el, align 8, !alias.scope !351, !noalias !352, !noundef !8 ; 2 uses
  %spec.store.select1.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.ej, i64 %i.em)
  %i.en = call i32 @memcmp(ptr nonnull %i.ed, ptr nonnull %i.ek, i64 %spec.store.select1.i.i.i.i), !noalias !353 ; 2 uses
  %i.eo = sext i32 %i.en to i64
  %i.ep = icmp eq i32 %i.en, 0
  %i.eq = sub i64 %i.ej, %i.em
  %.sroa.011.0.i.i.i.i = select i1 %i.ep, i64 %i.eq, i64 %i.eo
  %i.er = icmp eq i32 %i.ei, 0
  %i.es = icmp sgt i64 %.sroa.011.0.i.i.i.i, -1
  %i.et = icmp sgt i32 %i.ei, -1
  %i.eu = select i1 %i.er, i1 %i.es, i1 %i.et     ; 2 uses
  %i.ev = getelementptr inbounds i8, ptr %.sroa.19.19.i58, i64 -40 ; 3 uses
  %.sroa.01.0.i.i59 = select i1 %i.eu, ptr %2, ptr %i.ev
  %i.ew = getelementptr inbounds nuw [40 x i8], ptr %.sroa.01.0.i.i59, i64 %.sroa.11.110.i57
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ew, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.111.i56, i64 40, i1 false), !alias.scope !354, !noalias !355
  %i.ex = zext i1 %i.eu to i64
  %i.ey = add i64 %.sroa.11.110.i57, %i.ex        ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %.sroa.5.111.i56, i64 40 ; 3 uses
  %i.fa = icmp ult ptr %i.ez, %i.eb
  br i1 %i.fa, label %bb.v, label %._crit_edge.i47

bb.w:                                             ; preds = %._crit_edge.i47
  %i.fb = getelementptr inbounds i8, ptr %.sroa.19.1.lcssa.i48, i64 -40
  %i.fc = getelementptr inbounds nuw [40 x i8], ptr %2, i64 %.sroa.11.1.lcssa.i49
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.fc, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.1.lcssa.i50, i64 40, i1 false), !alias.scope !354, !noalias !358
  %i.fd = add i64 %.sroa.11.1.lcssa.i49, 1
  %i.fe = getelementptr inbounds nuw i8, ptr %.sroa.5.1.lcssa.i50, i64 40
  br label %bb.u

bb.x:                                             ; preds = %._crit_edge.i47
  %i.ff = mul nuw nsw i64 %.sroa.11.1.lcssa.i49, 40
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph96, ptr nonnull align 8 %2, i64 %i.ff, i1 false), !alias.scope !354
  %i.fg = sub i64 %.sroa.16.089217, %.sroa.11.1.lcssa.i49 ; 6 uses
  %.not18.i51 = icmp eq i64 %.sroa.16.089217, %.sroa.11.1.lcssa.i49
  %i.fh = getelementptr [40 x i8], ptr %.sroa.0.0.ph96, i64 %.sroa.11.1.lcssa.i49 ; 4 uses
  br i1 %.not18.i51, label %.outer.thread, label %.lr.ph16.i52.preheader

.lr.ph16.i52.preheader:                           ; preds = %bb.x
  %.neg292 = add i64 %.sroa.11.1.lcssa.i49, 1
  %xtraiter287 = and i64 %i.fg, 1
  %i.fi = icmp eq i64 %.sroa.16.089217, %.neg292
  br i1 %i.fi, label %.lr.ph16.i52.epil.preheader, label %.lr.ph16.i52.preheader.new

.lr.ph16.i52.preheader.new:                       ; preds = %.lr.ph16.i52.preheader
  %unroll_iter290 = and i64 %i.fg, -2
  br label %.lr.ph16.i52

.lr.ph16.i52:                                     ; preds = %.lr.ph16.i52, %.lr.ph16.i52.preheader.new
  %.sroa.06.014.i53 = phi i64 [ 0, %.lr.ph16.i52.preheader.new ], [ %i.fm, %.lr.ph16.i52 ] ; 5 uses
  %niter291 = phi i64 [ 0, %.lr.ph16.i52.preheader.new ], [ %niter291.next.1, %.lr.ph16.i52 ]
  %i.fj = xor i64 %.sroa.06.014.i53, -1
  %i.fk = getelementptr [40 x i8], ptr %i.dy, i64 %i.fj
  %i.fl = getelementptr [40 x i8], ptr %i.fh, i64 %.sroa.06.014.i53
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.fl, ptr noundef nonnull align 8 dereferenceable(40) %i.fk, i64 40, i1 false), !alias.scope !354
  %i.fm = add nuw i64 %.sroa.06.014.i53, 2        ; 2 uses
  %i.fn = xor i64 %.sroa.06.014.i53, -2
  %i.fo = getelementptr [40 x i8], ptr %i.dy, i64 %i.fn
  %i.fp = getelementptr [40 x i8], ptr %i.fh, i64 %.sroa.06.014.i53
  %i.fq = getelementptr i8, ptr %i.fp, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.fq, ptr noundef nonnull align 8 dereferenceable(40) %i.fo, i64 40, i1 false), !alias.scope !354
  %niter291.next.1 = add i64 %niter291, 2         ; 2 uses
  %niter291.ncmp.1 = icmp eq i64 %niter291.next.1, %unroll_iter290
  br i1 %niter291.ncmp.1, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort16stable_partitionNtNtCskuiImRAV2ip_9elfshaker7packidx12FileEntryRefNCINvB2_9quicksortB1d_NCINvMNtCs1xwejQucwHj_5alloc5sliceSB1d_7sort_byNCNvMsd_B1f_NtB1f_9PackIndex25compute_snapshot_checksum0E0E0EB1h_.exit.unr-lcssa, label %.lr.ph16.i52

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort16stable_partitionNtNtCskuiImRAV2ip_9elfshaker7packidx12FileEntryRefNCINvB2_9quicksortB1d_NCINvMNtCs1xwejQucwHj_5alloc5sliceSB1d_7sort_byNCNvMsd_B1f_NtB1f_9PackIndex25compute_snapshot_checksum0E0E0EB1h_.exit.unr-lcssa: ; preds = %.lr.ph16.i52
  %lcmp.mod288.not = icmp eq i64 %xtraiter287, 0
  br i1 %lcmp.mod288.not, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort16stable_partitionNtNtCskuiImRAV2ip_9elfshaker7packidx12FileEntryRefNCINvB2_9quicksortB1d_NCINvMNtCs1xwejQucwHj_5alloc5sliceSB1d_7sort_byNCNvMsd_B1f_NtB1f_9PackIndex25compute_snapshot_checksum0E0E0EB1h_.exit, label %.lr.ph16.i52.epil.preheader

.lr.ph16.i52.epil.preheader:                      ; preds = %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort16stable_partitionNtNtCskuiImRAV2ip_9elfshaker7packidx12FileEntryRefNCINvB2_9quicksortB1d_NCINvMNtCs1xwejQucwHj_5alloc5sliceSB1d_7sort_byNCNvMsd_B1f_NtB1f_9PackIndex25compute_snapshot_checksum0E0E0EB1h_.exit.unr-lcssa, %.lr.ph16.i52.preheader
  %.sroa.06.014.i53.epil.init = phi i64 [ 0, %.lr.ph16.i52.preheader ], [ %i.fm, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort16stable_partitionNtNtCskuiImRAV2ip_9elfshaker7packidx12FileEntryRefNCINvB2_9quicksortB1d_NCINvMNtCs1xwejQucwHj_5alloc5sliceSB1d_7sort_byNCNvMsd_B1f_NtB1f_9PackIndex25compute_snapshot_checksum0E0E0EB1h_.exit.unr-lcssa ] ; 2 uses
  %lcmp.mod289 = trunc i64 %i.fg to i1
  call void @llvm.assume(i1 %lcmp.mod289)
  %i.fr = xor i64 %.sroa.06.014.i53.epil.init, -1
  %i.fs = getelementptr [40 x i8], ptr %i.dy, i64 %i.fr
  %i.ft = getelementptr [40 x i8], ptr %i.fh, i64 %.sroa.06.014.i53.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ft, ptr noundef nonnull align 8 dereferenceable(40) %i.fs, i64 40, i1 false), !alias.scope !354
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort16stable_partitionNtNtCskuiImRAV2ip_9elfshaker7packidx12FileEntryRefNCINvB2_9quicksortB1d_NCINvMNtCs1xwejQucwHj_5alloc5sliceSB1d_7sort_byNCNvMsd_B1f_NtB1f_9PackIndex25compute_snapshot_checksum0E0E0EB1h_.exit

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort16stable_partitionNtNtCskuiImRAV2ip_9elfshaker7packidx12FileEntryRefNCINvB2_9quicksortB1d_NCINvMNtCs1xwejQucwHj_5alloc5sliceSB1d_7sort_byNCNvMsd_B1f_NtB1f_9PackIndex25compute_snapshot_checksum0E0E0EB1h_.exit: ; preds = %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort16stable_partitionNtNtCskuiImRAV2ip_9elfshaker7packidx12FileEntryRefNCINvB2_9quicksortB1d_NCINvMNtCs1xwejQucwHj_5alloc5sliceSB1d_7sort_byNCNvMsd_B1f_NtB1f_9PackIndex25compute_snapshot_checksum0E0E0EB1h_.exit.unr-lcssa, %.lr.ph16.i52.epil.preheader
  %i.fu = icmp ugt i64 %.sroa.11.1.lcssa.i49, %.sroa.16.089217
  br i1 %i.fu, label %bb.y, label %.outer, !prof !324

.outer.thread:                                    ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.outer._crit_edge

.outer:                                           ; preds = %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort16stable_partitionNtNtCskuiImRAV2ip_9elfshaker7packidx12FileEntryRefNCINvB2_9quicksortB1d_NCINvMNtCs1xwejQucwHj_5alloc5sliceSB1d_7sort_byNCNvMsd_B1f_NtB1f_9PackIndex25compute_snapshot_checksum0E0E0EB1h_.exit
  %i.fv = getelementptr inbounds nuw [40 x i8], ptr %.sroa.0.0.ph96, i64 %.sroa.11.1.lcssa.i49 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.fw = icmp ult i64 %i.fg, 33
  br i1 %i.fw, label %.outer._crit_edge, label %.lr.ph

bb.y:                                             ; preds = %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort16stable_partitionNtNtCskuiImRAV2ip_9elfshaker7packidx12FileEntryRefNCINvB2_9quicksortB1d_NCINvMNtCs1xwejQucwHj_5alloc5sliceSB1d_7sort_byNCNvMsd_B1f_NtB1f_9PackIndex25compute_snapshot_checksum0E0E0EB1h_.exit
  call void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef %.sroa.11.1.lcssa.i49, i64 noundef %.sroa.16.089217, i64 noundef %.sroa.16.089217, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #30
  unreachable
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryNCINvMNtCs1xwejQucwHj_5alloc5sliceSB15_7sort_byNCINvNtNtB19_4repo4pack13extract_filesRRNtNtCsaL1QbXo9JQH_3std4path4PathE0E0EB19_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 144115188075855872) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 144115188075855872) %3, i32 noundef %4, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable_or_null(64) %5, ptr noalias nofree noundef align 8 dereferenceable(8) %6) unnamed_addr #1 {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 6 uses
  %i.b = icmp samesign ult i64 %1, 33
  br i1 %i.b, label %.outer._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.outer
  %.sroa.0.0.ph96 = phi ptr [ %i.cp, %.outer ], [ %0, %bb.a ] ; 19 uses
  %.sroa.16.0.ph95 = phi i64 [ %i.ca, %.outer ], [ %1, %bb.a ] ; 2 uses
  %.sroa.025.0.ph94 = phi i32 [ %i.h, %.outer ], [ %4, %bb.a ] ; 2 uses
  %.sroa.028.0.ph93 = phi ptr [ null, %.outer ], [ %5, %bb.a ] ; 2 uses
  %i.c = getelementptr i8, ptr %.sroa.0.0.ph96, i64 24
  %i.d = ptrtoint ptr %.sroa.0.0.ph96 to i64
  %.not = icmp eq ptr %.sroa.028.0.ph93, null
  %i.e = getelementptr i8, ptr %.sroa.028.0.ph93, i64 24
  %i.f = icmp eq i32 %.sroa.025.0.ph94, 0
  br i1 %i.f, label %.lr.ph._crit_edge, label %.lr.ph219

bb.b:                                             ; preds = %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntry12split_at_mutBy_.exit
  %i.g = icmp eq i32 %i.h, 0
  br i1 %i.g, label %.lr.ph._crit_edge, label %.lr.ph219

.outer._crit_edge:                                ; preds = %.outer, %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntry12split_at_mutBy_.exit, %.outer.thread, %bb.a
  %.sroa.0.0.ph.lcssa87 = phi ptr [ %i.cb, %.outer.thread ], [ %0, %bb.a ], [ %.sroa.0.0.ph96, %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntry12split_at_mutBy_.exit ], [ %i.cp, %.outer ]
  %.sroa.16.0.lcssa = phi i64 [ 0, %.outer.thread ], [ %1, %bb.a ], [ %.sroa.11.1.lcssa.i, %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntry12split_at_mutBy_.exit ], [ %i.ca, %.outer ]
  call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryNCINvMNtCs1xwejQucwHj_5alloc5sliceSB1s_7sort_byNCINvNtNtB1w_4repo4pack13extract_filesRRNtNtCsaL1QbXo9JQH_3std4path4PathE0E0EB1w_(ptr noalias nofree noundef nonnull align 8 %.sroa.0.0.ph.lcssa87, i64 noundef range(i64 0, 33) %.sroa.16.0.lcssa, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 144115188075855872) %3, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %6)
  br label %bb.d

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %bb.b
  %.sroa.16.089.lcssa = phi i64 [ %.sroa.11.1.lcssa.i, %bb.b ], [ %.sroa.16.0.ph95, %.lr.ph ]
  call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift4sortNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryNCINvMNtCs1xwejQucwHj_5alloc5sliceSBW_7sort_byNCINvNtNtB10_4repo4pack13extract_filesRRNtNtCsaL1QbXo9JQH_3std4path4PathE0E0EB10_(ptr noalias nofree noundef nonnull align 8 %.sroa.0.0.ph96, i64 noundef %.sroa.16.089.lcssa, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef %3, i1 noundef zeroext true, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %6)
  br label %bb.d

.lr.ph219:                                        ; preds = %.lr.ph, %bb.b
  %.sroa.025.088218 = phi i32 [ %i.h, %bb.b ], [ %.sroa.025.0.ph94, %.lr.ph ]
  %.sroa.16.089217 = phi i64 [ %.sroa.11.1.lcssa.i, %bb.b ], [ %.sroa.16.0.ph95, %.lr.ph ] ; 21 uses
  %i.h = add i32 %.sroa.025.088218, -1            ; 4 uses
  %i.i = lshr i64 %.sroa.16.089217, 3             ; 3 uses
  %.idx.i = shl nuw nsw i64 %i.i, 8
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph96, i64 %.idx.i ; 3 uses
  %.idx2.i = mul nuw nsw i64 %i.i, 448
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph96, i64 %.idx2.i ; 3 uses
  %i.l = icmp samesign ult i64 %.sroa.16.089217, 64
  br i1 %i.l, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared5pivot7median3NtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryNCINvMNtCs1xwejQucwHj_5alloc5sliceSBZ_7sort_byNCINvNtNtB13_4repo4pack13extract_filesRRNtNtCsaL1QbXo9JQH_3std4path4PathE0E0EB13_.exit.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph219
  %i.m = call fastcc noundef ptr @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared5pivot11median3_recNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryNCINvMNtCs1xwejQucwHj_5alloc5sliceSB14_7sort_byNCINvNtNtB18_4repo4pack13extract_filesRRNtNtCsaL1QbXo9JQH_3std4path4PathE0E0EB18_(ptr noundef nonnull readonly align 8 %.sroa.0.0.ph96, ptr noundef readonly %i.j, ptr noundef readonly %i.k, i64 noundef %i.i)
  br label %bb.e

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared5pivot7median3NtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryNCINvMNtCs1xwejQucwHj_5alloc5sliceSBZ_7sort_byNCINvNtNtB13_4repo4pack13extract_filesRRNtNtCsaL1QbXo9JQH_3std4path4PathE0E0EB13_.exit.i: ; preds = %.lr.ph219
  %.val6.i = load i64, ptr %i.c, align 8, !alias.scope !361, !noundef !8 ; 2 uses
  %i.n = getelementptr i8, ptr %i.j, i64 24
  %.val7.i = load i64, ptr %i.n, align 8, !alias.scope !361, !noundef !8 ; 2 uses
  %i.o = icmp ult i64 %.val6.i, %.val7.i          ; 2 uses
  %i.p = getelementptr i8, ptr %i.k, i64 24
  %.val5.i = load i64, ptr %i.p, align 8, !alias.scope !361, !noundef !8 ; 2 uses
  %i.q = icmp ult i64 %.val6.i, %.val5.i
  %i.r = xor i1 %i.o, %i.q
  %i.s = icmp ult i64 %.val7.i, %.val5.i
  %i.t = xor i1 %i.o, %i.s
  %..i.i = select i1 %i.t, ptr %i.k, ptr %i.j
  %.sroa.0.0.i.i = select i1 %i.r, ptr %.sroa.0.0.ph96, ptr %..i.i
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph._crit_edge, %.outer._crit_edge
  ret void

bb.e:                                             ; preds = %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared5pivot7median3NtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryNCINvMNtCs1xwejQucwHj_5alloc5sliceSBZ_7sort_byNCINvNtNtB13_4repo4pack13extract_filesRRNtNtCsaL1QbXo9JQH_3std4path4PathE0E0EB13_.exit.i, %bb.c
  %.sroa.0.0.i.sink.i = phi ptr [ %.sroa.0.0.i.i, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared5pivot7median3NtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryNCINvMNtCs1xwejQucwHj_5alloc5sliceSBZ_7sort_byNCINvNtNtB13_4repo4pack13extract_filesRRNtNtCsaL1QbXo9JQH_3std4path4PathE0E0EB13_.exit.i ], [ %i.m, %bb.c ]
  %i.u = ptrtoint ptr %.sroa.0.0.i.sink.i to i64
  %i.v = sub nuw i64 %i.u, %i.d                   ; 2 uses
  %.sroa.0.0.i = lshr exact i64 %i.v, 6           ; 3 uses
  %i.w = icmp samesign ult i64 %.sroa.0.0.i, %.sroa.16.089217
  call void @llvm.assume(i1 %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph96, i64 %i.v ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef nonnull align 8 dereferenceable(64) %i.x, i64 64, i1 false)
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.sroa.028.0.val = load i64, ptr %i.e, align 8, !noundef !8
  %i.y = getelementptr i8, ptr %i.x, i64 24
  %.val = load i64, ptr %i.y, align 8, !noundef !8
  %i.z = icmp ult i64 %.sroa.028.0.val, %.val
  br i1 %i.z, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.e, %bb.f
  call void @llvm.experimental.noalias.scope.decl(metadata !364)
  %.not63 = icmp samesign ult i64 %3, %.sroa.16.089217
  br i1 %.not63, label %bb.i, label %bb.h, !prof !301

bb.h:                                             ; preds = %bb.g
  %i.aa = getelementptr [64 x i8], ptr %2, i64 %.sroa.16.089217 ; 4 uses
  %i.ab = getelementptr i8, ptr %i.x, i64 24
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  call void @llvm.trap()
  unreachable

bb.j:                                             ; preds = %bb.k, %bb.h
  %.sroa.19.0.i = phi ptr [ %i.aa, %bb.h ], [ %i.an, %bb.k ] ; 2 uses
  %.sroa.11.0.i = phi i64 [ 0, %bb.h ], [ %.sroa.11.1.lcssa.i, %bb.k ] ; 2 uses
  %.sroa.5.0.i = phi ptr [ %.sroa.0.0.ph96, %bb.h ], [ %i.ap, %bb.k ] ; 3 uses
  %.sroa.0.0.i37 = phi i64 [ %.sroa.0.0.i, %bb.h ], [ %.sroa.16.089217, %bb.k ] ; 2 uses
  %i.ac = getelementptr inbounds nuw [64 x i8], ptr %.sroa.0.0.ph96, i64 %.sroa.0.0.i37 ; 2 uses
  %i.ad = icmp ult ptr %.sroa.5.0.i, %i.ac
  br i1 %i.ad, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.j
  %.sroa.19.1.lcssa.i = phi ptr [ %.sroa.19.0.i, %bb.j ], [ %i.ah, %.lr.ph.i ]
  %.sroa.11.1.lcssa.i = phi i64 [ %.sroa.11.0.i, %bb.j ], [ %i.ak, %.lr.ph.i ] ; 14 uses
  %.sroa.5.1.lcssa.i = phi ptr [ %.sroa.5.0.i, %bb.j ], [ %i.al, %.lr.ph.i ] ; 2 uses
  %i.ae = icmp eq i64 %.sroa.0.0.i37, %.sroa.16.089217
  br i1 %i.ae, label %bb.l, label %bb.k

.lr.ph.i:                                         ; preds = %bb.j, %.lr.ph.i
  %.sroa.5.111.i = phi ptr [ %i.al, %.lr.ph.i ], [ %.sroa.5.0.i, %bb.j ] ; 3 uses
  %.sroa.11.110.i = phi i64 [ %i.ak, %.lr.ph.i ], [ %.sroa.11.0.i, %bb.j ] ; 2 uses
  %.sroa.19.19.i = phi ptr [ %i.ah, %.lr.ph.i ], [ %.sroa.19.0.i, %bb.j ]
  %i.af = getelementptr i8, ptr %.sroa.5.111.i, i64 24
  %.val.i = load i64, ptr %i.af, align 8, !alias.scope !367, !noalias !364, !noundef !8
  %.val12.i = load i64, ptr %i.ab, align 8, !alias.scope !367, !noalias !364, !noundef !8
  %i.ag = icmp ult i64 %.val.i, %.val12.i         ; 2 uses
  %i.ah = getelementptr inbounds i8, ptr %.sroa.19.19.i, i64 -64 ; 3 uses
  %.sroa.01.0.i.i = select i1 %i.ag, ptr %2, ptr %i.ah
  %i.ai = getelementptr inbounds nuw [64 x i8], ptr %.sroa.01.0.i.i, i64 %.sroa.11.110.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ai, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5.111.i, i64 64, i1 false), !alias.scope !369, !noalias !370
  %i.aj = zext i1 %i.ag to i64
  %i.ak = add i64 %.sroa.11.110.i, %i.aj          ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.5.111.i, i64 64 ; 3 uses
  %i.am = icmp ult ptr %i.al, %i.ac
  br i1 %i.am, label %.lr.ph.i, label %._crit_edge.i

bb.k:                                             ; preds = %._crit_edge.i
  %i.an = getelementptr inbounds i8, ptr %.sroa.19.1.lcssa.i, i64 -64 ; 2 uses
  %i.ao = getelementptr inbounds nuw [64 x i8], ptr %i.an, i64 %.sroa.11.1.lcssa.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ao, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5.1.lcssa.i, i64 64, i1 false), !alias.scope !369, !noalias !373
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.5.1.lcssa.i, i64 64
  br label %bb.j

bb.l:                                             ; preds = %._crit_edge.i
  %i.aq = shl nuw nsw i64 %.sroa.11.1.lcssa.i, 6
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph96, ptr nonnull align 8 %2, i64 %i.aq, i1 false), !alias.scope !369
  %i.ar = sub i64 %.sroa.16.089217, %.sroa.11.1.lcssa.i ; 4 uses
  %.not18.i = icmp eq i64 %.sroa.16.089217, %.sroa.11.1.lcssa.i
  br i1 %.not18.i, label %.loopexit, label %.lr.ph16.i

.lr.ph16.i:                                       ; preds = %bb.l
  %i.as = getelementptr [64 x i8], ptr %.sroa.0.0.ph96, i64 %.sroa.11.1.lcssa.i ; 3 uses
  %.neg = add i64 %.sroa.11.1.lcssa.i, 1
  %xtraiter = and i64 %i.ar, 1
  %i.at = icmp eq i64 %.sroa.16.089217, %.neg
  br i1 %i.at, label %.epil.preheader, label %.lr.ph16.i.new

.lr.ph16.i.new:                                   ; preds = %.lr.ph16.i
  %unroll_iter = and i64 %i.ar, -2
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.lr.ph16.i.new
  %.sroa.06.014.i = phi i64 [ 0, %.lr.ph16.i.new ], [ %i.ax, %bb.m ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph16.i.new ], [ %niter.next.1, %bb.m ]
  %i.au = xor i64 %.sroa.06.014.i, -1
  %i.av = getelementptr [64 x i8], ptr %i.aa, i64 %i.au
  %i.aw = getelementptr [64 x i8], ptr %i.as, i64 %.sroa.06.014.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.aw, ptr noundef nonnull align 8 dereferenceable(64) %i.av, i64 64, i1 false), !alias.scope !369
  %i.ax = add nuw i64 %.sroa.06.014.i, 2          ; 2 uses
  %i.ay = xor i64 %.sroa.06.014.i, -2
  %i.az = getelementptr [64 x i8], ptr %i.aa, i64 %i.ay
  %i.ba = getelementptr [64 x i8], ptr %i.as, i64 %.sroa.06.014.i
  %i.bb = getelementptr i8, ptr %i.ba, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.bb, ptr noundef nonnull align 8 dereferenceable(64) %i.az, i64 64, i1 false), !alias.scope !369
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.m

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.m
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph16.i
  %.sroa.06.014.i.epil.init = phi i64 [ 0, %.lr.ph16.i ], [ %i.ax, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod280 = trunc i64 %i.ar to i1
  call void @llvm.assume(i1 %lcmp.mod280)
  %i.bc = xor i64 %.sroa.06.014.i.epil.init, -1
  %i.bd = getelementptr [64 x i8], ptr %i.aa, i64 %i.bc
  %i.be = getelementptr [64 x i8], ptr %i.as, i64 %.sroa.06.014.i.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.be, ptr noundef nonnull align 8 dereferenceable(64) %i.bd, i64 64, i1 false), !alias.scope !369
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.l
  %i.bf = icmp eq i64 %.sroa.11.1.lcssa.i, 0
  br i1 %i.bf, label %.thread, label %bb.n

bb.n:                                             ; preds = %.loopexit
  %.not.i38 = icmp ugt i64 %.sroa.11.1.lcssa.i, %.sroa.16.089217
  br i1 %.not.i38, label %bb.o, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntry12split_at_mutBy_.exit, !prof !324

bb.o:                                             ; preds = %bb.n
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @9, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #30, !noalias !376
  unreachable

_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntry12split_at_mutBy_.exit: ; preds = %bb.n
  %i.bg = getelementptr inbounds nuw [64 x i8], ptr %.sroa.0.0.ph96, i64 %.sroa.11.1.lcssa.i
  call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryNCINvMNtCs1xwejQucwHj_5alloc5sliceSB15_7sort_byNCINvNtNtB19_4repo4pack13extract_filesRRNtNtCsaL1QbXo9JQH_3std4path4PathE0E0EB19_(ptr noalias nofree noundef nonnull align 8 %i.bg, i64 noundef %i.ar, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable_or_null(64) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %6) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bh = icmp ult i64 %.sroa.11.1.lcssa.i, 33
  br i1 %i.bh, label %.outer._crit_edge, label %bb.b

.thread:                                          ; preds = %bb.f, %.loopexit
  call void @llvm.experimental.noalias.scope.decl(metadata !380)
  %.not64 = icmp samesign ult i64 %3, %.sroa.16.089217
  br i1 %.not64, label %bb.q, label %bb.p, !prof !301

bb.p:                                             ; preds = %.thread
  %i.bi = getelementptr [64 x i8], ptr %2, i64 %.sroa.16.089217 ; 4 uses
  %i.bj = getelementptr i8, ptr %i.x, i64 24
  br label %bb.r

bb.q:                                             ; preds = %.thread
  call void @llvm.trap()
  unreachable

bb.r:                                             ; preds = %bb.s, %bb.p
  %.sroa.19.0.i41 = phi ptr [ %i.bi, %bb.p ], [ %i.bv, %bb.s ] ; 2 uses
  %.sroa.11.0.i42 = phi i64 [ 0, %bb.p ], [ %i.bx, %bb.s ] ; 2 uses
  %.sroa.5.0.i43 = phi ptr [ %.sroa.0.0.ph96, %bb.p ], [ %i.by, %bb.s ] ; 3 uses
  %.sroa.0.0.i44 = phi i64 [ %.sroa.0.0.i, %bb.p ], [ %.sroa.16.089217, %bb.s ] ; 2 uses
  %i.bk = getelementptr inbounds nuw [64 x i8], ptr %.sroa.0.0.ph96, i64 %.sroa.0.0.i44 ; 2 uses
  %i.bl = icmp ult ptr %.sroa.5.0.i43, %i.bk
  br i1 %i.bl, label %.lr.ph.i53, label %._crit_edge.i45

._crit_edge.i45:                                  ; preds = %.lr.ph.i53, %bb.r
  %.sroa.19.1.lcssa.i46 = phi ptr [ %.sroa.19.0.i41, %bb.r ], [ %i.bp, %.lr.ph.i53 ]
  %.sroa.11.1.lcssa.i47 = phi i64 [ %.sroa.11.0.i42, %bb.r ], [ %i.bs, %.lr.ph.i53 ] ; 10 uses
  %.sroa.5.1.lcssa.i48 = phi ptr [ %.sroa.5.0.i43, %bb.r ], [ %i.bt, %.lr.ph.i53 ] ; 2 uses
  %i.bm = icmp eq i64 %.sroa.0.0.i44, %.sroa.16.089217
  br i1 %i.bm, label %bb.t, label %bb.s

.lr.ph.i53:                                       ; preds = %bb.r, %.lr.ph.i53
  %.sroa.5.111.i54 = phi ptr [ %i.bt, %.lr.ph.i53 ], [ %.sroa.5.0.i43, %bb.r ] ; 3 uses
  %.sroa.11.110.i55 = phi i64 [ %i.bs, %.lr.ph.i53 ], [ %.sroa.11.0.i42, %bb.r ] ; 2 uses
  %.sroa.19.19.i56 = phi ptr [ %i.bp, %.lr.ph.i53 ], [ %.sroa.19.0.i41, %bb.r ]
  %i.bn = getelementptr i8, ptr %.sroa.5.111.i54, i64 24
  %.val.i57 = load i64, ptr %i.bn, align 8, !alias.scope !383, !noalias !380, !noundef !8
  %.val12.i58 = load i64, ptr %i.bj, align 8, !alias.scope !383, !noalias !380, !noundef !8
  %i.bo = icmp uge i64 %.val12.i58, %.val.i57     ; 2 uses
  %i.bp = getelementptr inbounds i8, ptr %.sroa.19.19.i56, i64 -64 ; 3 uses
  %.sroa.01.0.i.i59 = select i1 %i.bo, ptr %2, ptr %i.bp
  %i.bq = getelementptr inbounds nuw [64 x i8], ptr %.sroa.01.0.i.i59, i64 %.sroa.11.110.i55
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.bq, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5.111.i54, i64 64, i1 false), !alias.scope !385, !noalias !386
  %i.br = zext i1 %i.bo to i64
  %i.bs = add i64 %.sroa.11.110.i55, %i.br        ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.5.111.i54, i64 64 ; 3 uses
  %i.bu = icmp ult ptr %i.bt, %i.bk
  br i1 %i.bu, label %.lr.ph.i53, label %._crit_edge.i45

bb.s:                                             ; preds = %._crit_edge.i45
  %i.bv = getelementptr inbounds i8, ptr %.sroa.19.1.lcssa.i46, i64 -64
  %i.bw = getelementptr inbounds nuw [64 x i8], ptr %2, i64 %.sroa.11.1.lcssa.i47
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.bw, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.5.1.lcssa.i48, i64 64, i1 false), !alias.scope !385, !noalias !389
  %i.bx = add i64 %.sroa.11.1.lcssa.i47, 1
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.5.1.lcssa.i48, i64 64
  br label %bb.r

bb.t:                                             ; preds = %._crit_edge.i45
  %i.bz = shl nuw nsw i64 %.sroa.11.1.lcssa.i47, 6
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph96, ptr nonnull align 8 %2, i64 %i.bz, i1 false), !alias.scope !385
  %i.ca = sub i64 %.sroa.16.089217, %.sroa.11.1.lcssa.i47 ; 6 uses
  %.not18.i49 = icmp eq i64 %.sroa.16.089217, %.sroa.11.1.lcssa.i47
  %i.cb = getelementptr [64 x i8], ptr %.sroa.0.0.ph96, i64 %.sroa.11.1.lcssa.i47 ; 4 uses
  br i1 %.not18.i49, label %.outer.thread, label %.lr.ph16.i50.preheader

.lr.ph16.i50.preheader:                           ; preds = %bb.t
  %.neg292 = add i64 %.sroa.11.1.lcssa.i47, 1
  %xtraiter287 = and i64 %i.ca, 1
  %i.cc = icmp eq i64 %.sroa.16.089217, %.neg292
  br i1 %i.cc, label %.lr.ph16.i50.epil.preheader, label %.lr.ph16.i50.preheader.new

.lr.ph16.i50.preheader.new:                       ; preds = %.lr.ph16.i50.preheader
  %unroll_iter290 = and i64 %i.ca, -2
  br label %.lr.ph16.i50

.lr.ph16.i50:                                     ; preds = %.lr.ph16.i50, %.lr.ph16.i50.preheader.new
  %.sroa.06.014.i51 = phi i64 [ 0, %.lr.ph16.i50.preheader.new ], [ %i.cg, %.lr.ph16.i50 ] ; 5 uses
  %niter291 = phi i64 [ 0, %.lr.ph16.i50.preheader.new ], [ %niter291.next.1, %.lr.ph16.i50 ]
  %i.cd = xor i64 %.sroa.06.014.i51, -1
  %i.ce = getelementptr [64 x i8], ptr %i.bi, i64 %i.cd
  %i.cf = getelementptr [64 x i8], ptr %i.cb, i64 %.sroa.06.014.i51
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.cf, ptr noundef nonnull align 8 dereferenceable(64) %i.ce, i64 64, i1 false), !alias.scope !385
  %i.cg = add nuw i64 %.sroa.06.014.i51, 2        ; 2 uses
  %i.ch = xor i64 %.sroa.06.014.i51, -2
  %i.ci = getelementptr [64 x i8], ptr %i.bi, i64 %i.ch
  %i.cj = getelementptr [64 x i8], ptr %i.cb, i64 %.sroa.06.014.i51
  %i.ck = getelementptr i8, ptr %i.cj, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ck, ptr noundef nonnull align 8 dereferenceable(64) %i.ci, i64 64, i1 false), !alias.scope !385
  %niter291.next.1 = add i64 %niter291, 2         ; 2 uses
  %niter291.ncmp.1 = icmp eq i64 %niter291.next.1, %unroll_iter290
  br i1 %niter291.ncmp.1, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort16stable_partitionNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryNCINvB2_9quicksortB1d_NCINvMNtCs1xwejQucwHj_5alloc5sliceSB1d_7sort_byNCINvNtNtB1h_4repo4pack13extract_filesRRNtNtCsaL1QbXo9JQH_3std4path4PathE0E0E0EB1h_.exit.unr-lcssa, label %.lr.ph16.i50

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort16stable_partitionNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryNCINvB2_9quicksortB1d_NCINvMNtCs1xwejQucwHj_5alloc5sliceSB1d_7sort_byNCINvNtNtB1h_4repo4pack13extract_filesRRNtNtCsaL1QbXo9JQH_3std4path4PathE0E0E0EB1h_.exit.unr-lcssa: ; preds = %.lr.ph16.i50
  %lcmp.mod288.not = icmp eq i64 %xtraiter287, 0
  br i1 %lcmp.mod288.not, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort16stable_partitionNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryNCINvB2_9quicksortB1d_NCINvMNtCs1xwejQucwHj_5alloc5sliceSB1d_7sort_byNCINvNtNtB1h_4repo4pack13extract_filesRRNtNtCsaL1QbXo9JQH_3std4path4PathE0E0E0EB1h_.exit, label %.lr.ph16.i50.epil.preheader

.lr.ph16.i50.epil.preheader:                      ; preds = %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort16stable_partitionNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryNCINvB2_9quicksortB1d_NCINvMNtCs1xwejQucwHj_5alloc5sliceSB1d_7sort_byNCINvNtNtB1h_4repo4pack13extract_filesRRNtNtCsaL1QbXo9JQH_3std4path4PathE0E0E0EB1h_.exit.unr-lcssa, %.lr.ph16.i50.preheader
  %.sroa.06.014.i51.epil.init = phi i64 [ 0, %.lr.ph16.i50.preheader ], [ %i.cg, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort16stable_partitionNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryNCINvB2_9quicksortB1d_NCINvMNtCs1xwejQucwHj_5alloc5sliceSB1d_7sort_byNCINvNtNtB1h_4repo4pack13extract_filesRRNtNtCsaL1QbXo9JQH_3std4path4PathE0E0E0EB1h_.exit.unr-lcssa ] ; 2 uses
  %lcmp.mod289 = trunc i64 %i.ca to i1
  call void @llvm.assume(i1 %lcmp.mod289)
  %i.cl = xor i64 %.sroa.06.014.i51.epil.init, -1
  %i.cm = getelementptr [64 x i8], ptr %i.bi, i64 %i.cl
  %i.cn = getelementptr [64 x i8], ptr %i.cb, i64 %.sroa.06.014.i51.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.cn, ptr noundef nonnull align 8 dereferenceable(64) %i.cm, i64 64, i1 false), !alias.scope !385
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort16stable_partitionNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryNCINvB2_9quicksortB1d_NCINvMNtCs1xwejQucwHj_5alloc5sliceSB1d_7sort_byNCINvNtNtB1h_4repo4pack13extract_filesRRNtNtCsaL1QbXo9JQH_3std4path4PathE0E0E0EB1h_.exit

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort16stable_partitionNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryNCINvB2_9quicksortB1d_NCINvMNtCs1xwejQucwHj_5alloc5sliceSB1d_7sort_byNCINvNtNtB1h_4repo4pack13extract_filesRRNtNtCsaL1QbXo9JQH_3std4path4PathE0E0E0EB1h_.exit: ; preds = %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort16stable_partitionNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryNCINvB2_9quicksortB1d_NCINvMNtCs1xwejQucwHj_5alloc5sliceSB1d_7sort_byNCINvNtNtB1h_4repo4pack13extract_filesRRNtNtCsaL1QbXo9JQH_3std4path4PathE0E0E0EB1h_.exit.unr-lcssa, %.lr.ph16.i50.epil.preheader
  %i.co = icmp ugt i64 %.sroa.11.1.lcssa.i47, %.sroa.16.089217
  br i1 %i.co, label %bb.u, label %.outer, !prof !324

.outer.thread:                                    ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.outer._crit_edge

.outer:                                           ; preds = %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort16stable_partitionNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryNCINvB2_9quicksortB1d_NCINvMNtCs1xwejQucwHj_5alloc5sliceSB1d_7sort_byNCINvNtNtB1h_4repo4pack13extract_filesRRNtNtCsaL1QbXo9JQH_3std4path4PathE0E0E0EB1h_.exit
  %i.cp = getelementptr inbounds nuw [64 x i8], ptr %.sroa.0.0.ph96, i64 %.sroa.11.1.lcssa.i47 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.cq = icmp ult i64 %i.ca, 33
  br i1 %i.cq, label %.outer._crit_edge, label %.lr.ph

bb.u:                                             ; preds = %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort16stable_partitionNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryNCINvB2_9quicksortB1d_NCINvMNtCs1xwejQucwHj_5alloc5sliceSB1d_7sort_byNCINvNtNtB1h_4repo4pack13extract_filesRRNtNtCsaL1QbXo9JQH_3std4path4PathE0E0E0EB1h_.exit
  call void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef %.sroa.11.1.lcssa.i47, i64 noundef %.sroa.16.089217, i64 noundef %.sroa.16.089217, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #30
  unreachable
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdNvYB15_NtNtBa_3cmp10PartialOrd2ltEB1b_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 384307168202282326) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, i32 noundef %4, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable_or_null(24) %5, ptr noalias nofree noundef nonnull %6) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = icmp samesign ult i64 %1, 33
  br i1 %i.b, label %.outer._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.outer
  %.sroa.0.0.ph104 = phi ptr [ %i.du, %.outer ], [ %0, %bb.a ] ; 20 uses
  %.sroa.16.0.ph103 = phi i64 [ %i.df, %.outer ], [ %1, %bb.a ] ; 2 uses
  %.sroa.025.0.ph102 = phi i32 [ %i.j, %.outer ], [ %4, %bb.a ] ; 2 uses
  %.sroa.028.0.ph101 = phi ptr [ null, %.outer ], [ %5, %bb.a ] ; 3 uses
  %i.c = getelementptr i8, ptr %.sroa.0.0.ph104, i64 8
  %i.d = getelementptr i8, ptr %.sroa.0.0.ph104, i64 16
  %i.e = ptrtoint ptr %.sroa.0.0.ph104 to i64
  %.not = icmp eq ptr %.sroa.028.0.ph101, null
  %i.f = getelementptr i8, ptr %.sroa.028.0.ph101, i64 8
  %i.g = getelementptr i8, ptr %.sroa.028.0.ph101, i64 16
  %i.h = icmp eq i32 %.sroa.025.0.ph102, 0
  br i1 %i.h, label %.lr.ph._crit_edge, label %.lr.ph227

bb.b:                                             ; preds = %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackId12split_at_mutBA_.exit
  %i.i = icmp eq i32 %i.j, 0
  br i1 %i.i, label %.lr.ph._crit_edge, label %.lr.ph227

.outer._crit_edge:                                ; preds = %.outer, %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackId12split_at_mutBA_.exit, %.outer.thread, %bb.a
  %.sroa.0.0.ph.lcssa95 = phi ptr [ %i.dg, %.outer.thread ], [ %0, %bb.a ], [ %.sroa.0.0.ph104, %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackId12split_at_mutBA_.exit ], [ %i.du, %.outer ]
  %.sroa.16.0.lcssa = phi i64 [ 0, %.outer.thread ], [ %1, %bb.a ], [ %.sroa.11.1.lcssa.i, %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackId12split_at_mutBA_.exit ], [ %i.df, %.outer ]
  call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdNvYB1s_NtNtBa_3cmp10PartialOrd2ltEB1y_(ptr noalias nofree noundef nonnull align 8 %.sroa.0.0.ph.lcssa95, i64 noundef range(i64 0, 33) %.sroa.16.0.lcssa, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, ptr noalias nofree noundef nonnull %6)
  br label %bb.f

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %bb.b
  %.sroa.16.097.lcssa = phi i64 [ %.sroa.11.1.lcssa.i, %bb.b ], [ %.sroa.16.0.ph103, %.lr.ph ]
  call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift4sortNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdNvYBW_NtNtBa_3cmp10PartialOrd2ltEB12_(ptr noalias nofree noundef nonnull align 8 %.sroa.0.0.ph104, i64 noundef %.sroa.16.097.lcssa, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef %3, i1 noundef zeroext true, ptr noalias nofree noundef nonnull %6)
  br label %bb.f

.lr.ph227:                                        ; preds = %.lr.ph, %bb.b
  %.sroa.025.096226 = phi i32 [ %i.j, %bb.b ], [ %.sroa.025.0.ph102, %.lr.ph ]
  %.sroa.16.097225 = phi i64 [ %.sroa.11.1.lcssa.i, %bb.b ], [ %.sroa.16.0.ph103, %.lr.ph ] ; 21 uses
  %i.j = add i32 %.sroa.025.096226, -1            ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !392)
  %i.k = lshr i64 %.sroa.16.097225, 3             ; 3 uses
  %.idx.i = mul nuw nsw i64 %i.k, 96
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph104, i64 %.idx.i ; 4 uses
  %.idx2.i = mul nuw nsw i64 %i.k, 168
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph104, i64 %.idx2.i ; 4 uses
  %i.n = icmp samesign ult i64 %.sroa.16.097225, 64
  br i1 %i.n, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph227
  %i.o = call fastcc noundef ptr @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared5pivot11median3_recNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdNvYB14_NtNtBa_3cmp10PartialOrd2ltEB1a_(ptr noundef nonnull readonly align 8 %.sroa.0.0.ph104, ptr noundef readonly %i.l, ptr noundef readonly %i.m, i64 noundef %i.k)
  br label %bb.g

bb.d:                                             ; preds = %.lr.ph227
  %.val10.i = load ptr, ptr %i.c, align 8, !alias.scope !392, !nonnull !8, !noundef !8 ; 2 uses
  %.val11.i = load i64, ptr %i.d, align 8, !alias.scope !392, !noundef !8 ; 4 uses
  %i.p = getelementptr i8, ptr %i.l, i64 8
  %.val12.i = load ptr, ptr %i.p, align 8, !alias.scope !392, !nonnull !8, !noundef !8 ; 2 uses
  %i.q = getelementptr i8, ptr %i.l, i64 16
  %.val13.i = load i64, ptr %i.q, align 8, !alias.scope !392, !noundef !8 ; 4 uses
  %spec.store.select.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %.val11.i, i64 range(i64 0, -9223372036854775808) %.val13.i)
  %i.r = call i32 @memcmp(ptr nonnull readonly %.val10.i, ptr nonnull readonly %.val12.i, i64 %spec.store.select.i.i.i.i.i.i), !alias.scope !395, !noalias !392 ; 2 uses
  %i.s = sext i32 %i.r to i64
  %i.t = icmp eq i32 %i.r, 0
  %i.u = sub nsw i64 %.val11.i, %.val13.i
  %spec.select.i.i.i.i.i.i = select i1 %i.t, i64 %i.u, i64 %i.s ; 2 uses
  %i.v = getelementptr i8, ptr %i.m, i64 8
  %.val8.i = load ptr, ptr %i.v, align 8, !alias.scope !392, !nonnull !8, !noundef !8 ; 2 uses
  %i.w = getelementptr i8, ptr %i.m, i64 16
  %.val9.i = load i64, ptr %i.w, align 8, !alias.scope !392, !noundef !8 ; 4 uses
  %spec.store.select.i.i.i.i.i14.i = call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %.val11.i, i64 range(i64 0, -9223372036854775808) %.val9.i)
  %i.x = call i32 @memcmp(ptr nonnull readonly %.val10.i, ptr nonnull readonly %.val8.i, i64 %spec.store.select.i.i.i.i.i14.i), !alias.scope !399, !noalias !392 ; 2 uses
  %i.y = sext i32 %i.x to i64
  %i.z = icmp eq i32 %i.x, 0
  %i.aa = sub nsw i64 %.val11.i, %.val9.i
  %spec.select.i.i.i.i.i15.i = select i1 %i.z, i64 %i.aa, i64 %i.y
  %i.ab = xor i64 %spec.select.i.i.i.i.i15.i, %spec.select.i.i.i.i.i.i
  %i.ac = icmp slt i64 %i.ab, 0
  br i1 %i.ac, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %spec.store.select.i.i.i.i.i16.i = call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %.val13.i, i64 range(i64 0, -9223372036854775808) %.val9.i)
  %i.ad = call i32 @memcmp(ptr nonnull readonly %.val12.i, ptr nonnull readonly %.val8.i, i64 %spec.store.select.i.i.i.i.i16.i), !alias.scope !403, !noalias !392 ; 2 uses
  %i.ae = sext i32 %i.ad to i64
  %i.af = icmp eq i32 %i.ad, 0
  %i.ag = sub nsw i64 %.val13.i, %.val9.i
  %spec.select.i.i.i.i.i17.i = select i1 %i.af, i64 %i.ag, i64 %i.ae
  %i.ah = xor i64 %spec.select.i.i.i.i.i17.i, %spec.select.i.i.i.i.i.i
  %i.ai = icmp slt i64 %i.ah, 0
  %..i.i = select i1 %i.ai, ptr %i.m, ptr %i.l
  br label %bb.g

bb.f:                                             ; preds = %.lr.ph._crit_edge, %.outer._crit_edge
  ret void

bb.g:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.sroa.0.0.i.sink.i = phi ptr [ %i.o, %bb.c ], [ %.sroa.0.0.ph104, %bb.d ], [ %..i.i, %bb.e ]
  %i.aj = ptrtoint ptr %.sroa.0.0.i.sink.i to i64
  %i.ak = sub nuw i64 %i.aj, %i.e                 ; 2 uses
  %.sroa.0.0.i = udiv exact i64 %i.ak, 24         ; 3 uses
  %i.al = icmp samesign ult i64 %.sroa.0.0.i, %.sroa.16.097225
  call void @llvm.assume(i1 %i.al)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph104, i64 %i.ak ; 7 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.am, i64 24, i1 false)
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.sroa.028.0.val = load ptr, ptr %i.f, align 8, !nonnull !8, !noundef !8
  %.sroa.028.0.val37 = load i64, ptr %i.g, align 8, !noundef !8 ; 2 uses
  %i.an = getelementptr i8, ptr %i.am, i64 8
  %.val = load ptr, ptr %i.an, align 8, !nonnull !8, !noundef !8
  %i.ao = getelementptr i8, ptr %i.am, i64 16
  %.val38 = load i64, ptr %i.ao, align 8, !noundef !8 ; 2 uses
  %spec.store.select.i.i.i.i.i = call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %.sroa.028.0.val37, i64 range(i64 0, -9223372036854775808) %.val38)
  %i.ap = call i32 @memcmp(ptr nonnull readonly %.sroa.028.0.val, ptr nonnull readonly %.val, i64 %spec.store.select.i.i.i.i.i), !alias.scope !407 ; 2 uses
  %i.aq = sext i32 %i.ap to i64
  %i.ar = icmp eq i32 %i.ap, 0
  %i.as = sub nsw i64 %.sroa.028.0.val37, %.val38
  %spec.select.i.i.i.i.i = select i1 %i.ar, i64 %i.as, i64 %i.aq
  %i.at = icmp slt i64 %spec.select.i.i.i.i.i, 0
  br i1 %i.at, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.g, %bb.h
  call void @llvm.experimental.noalias.scope.decl(metadata !411)
  call void @llvm.experimental.noalias.scope.decl(metadata !414)
  %.not71 = icmp samesign ult i64 %3, %.sroa.16.097225
  br i1 %.not71, label %bb.k, label %bb.j, !prof !301

bb.j:                                             ; preds = %bb.i
  %i.au = getelementptr [24 x i8], ptr %2, i64 %.sroa.16.097225 ; 4 uses
  %i.av = getelementptr i8, ptr %i.am, i64 8
  %i.aw = getelementptr i8, ptr %i.am, i64 16
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  call void @llvm.trap()
  unreachable

bb.l:                                             ; preds = %bb.m, %bb.j
  %.sroa.19.0.i = phi ptr [ %i.au, %bb.j ], [ %i.bm, %bb.m ] ; 2 uses
  %.sroa.11.0.i = phi i64 [ 0, %bb.j ], [ %.sroa.11.1.lcssa.i, %bb.m ] ; 2 uses
  %.sroa.5.0.i = phi ptr [ %.sroa.0.0.ph104, %bb.j ], [ %i.bo, %bb.m ] ; 3 uses
  %.sroa.0.0.i39 = phi i64 [ %.sroa.0.0.i, %bb.j ], [ %.sroa.16.097225, %bb.m ] ; 2 uses
  %i.ax = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.ph104, i64 %.sroa.0.0.i39 ; 2 uses
  %i.ay = icmp ult ptr %.sroa.5.0.i, %i.ax
  br i1 %i.ay, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.l
  %.sroa.19.1.lcssa.i = phi ptr [ %.sroa.19.0.i, %bb.l ], [ %i.bh, %.lr.ph.i ]
  %.sroa.11.1.lcssa.i = phi i64 [ %.sroa.11.0.i, %bb.l ], [ %i.bj, %.lr.ph.i ] ; 14 uses
  %.sroa.5.1.lcssa.i = phi ptr [ %.sroa.5.0.i, %bb.l ], [ %i.bk, %.lr.ph.i ] ; 2 uses
  %i.az = icmp eq i64 %.sroa.0.0.i39, %.sroa.16.097225
  br i1 %i.az, label %bb.n, label %bb.m

.lr.ph.i:                                         ; preds = %bb.l, %.lr.ph.i
  %.sroa.5.111.i = phi ptr [ %i.bk, %.lr.ph.i ], [ %.sroa.5.0.i, %bb.l ] ; 4 uses
  %.sroa.11.110.i = phi i64 [ %i.bj, %.lr.ph.i ], [ %.sroa.11.0.i, %bb.l ] ; 2 uses
  %.sroa.19.19.i = phi ptr [ %i.bh, %.lr.ph.i ], [ %.sroa.19.0.i, %bb.l ]
  %i.ba = getelementptr i8, ptr %.sroa.5.111.i, i64 8
  %.val.i = load ptr, ptr %i.ba, align 8, !alias.scope !411, !noalias !414, !nonnull !8, !noundef !8
  %i.bb = getelementptr i8, ptr %.sroa.5.111.i, i64 16
  %.val12.i40 = load i64, ptr %i.bb, align 8, !alias.scope !411, !noalias !414, !noundef !8 ; 2 uses
  %.val13.i41 = load ptr, ptr %i.av, align 8, !alias.scope !411, !noalias !414, !nonnull !8, !noundef !8
  %.val14.i = load i64, ptr %i.aw, align 8, !alias.scope !411, !noalias !414, !noundef !8 ; 2 uses
  %spec.store.select.i.i.i.i.i.i42 = call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %.val12.i40, i64 range(i64 0, -9223372036854775808) %.val14.i)
  %i.bc = call i32 @memcmp(ptr nonnull readonly %.val.i, ptr nonnull readonly %.val13.i41, i64 %spec.store.select.i.i.i.i.i.i42), !alias.scope !416, !noalias !420 ; 2 uses
  %i.bd = sext i32 %i.bc to i64
  %i.be = icmp eq i32 %i.bc, 0
  %i.bf = sub nsw i64 %.val12.i40, %.val14.i
  %spec.select.i.i.i.i.i.i43 = select i1 %i.be, i64 %i.bf, i64 %i.bd ; 2 uses
  %i.bg = icmp slt i64 %spec.select.i.i.i.i.i.i43, 0
  %i.bh = getelementptr inbounds i8, ptr %.sroa.19.19.i, i64 -24 ; 3 uses
  %.sroa.01.0.i.i = select i1 %i.bg, ptr %2, ptr %i.bh
  %i.bi = getelementptr inbounds nuw [24 x i8], ptr %.sroa.01.0.i.i, i64 %.sroa.11.110.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bi, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.111.i, i64 24, i1 false), !alias.scope !420, !noalias !421
  %spec.select.i.i.i.i.i.lobit.i = lshr i64 %spec.select.i.i.i.i.i.i43, 63
  %i.bj = add i64 %spec.select.i.i.i.i.i.lobit.i, %.sroa.11.110.i ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.5.111.i, i64 24 ; 3 uses
  %i.bl = icmp ult ptr %i.bk, %i.ax
  br i1 %i.bl, label %.lr.ph.i, label %._crit_edge.i

bb.m:                                             ; preds = %._crit_edge.i
  %i.bm = getelementptr inbounds i8, ptr %.sroa.19.1.lcssa.i, i64 -24 ; 2 uses
  %i.bn = getelementptr inbounds nuw [24 x i8], ptr %i.bm, i64 %.sroa.11.1.lcssa.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bn, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.1.lcssa.i, i64 24, i1 false), !alias.scope !420, !noalias !424
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.5.1.lcssa.i, i64 24
  br label %bb.l

bb.n:                                             ; preds = %._crit_edge.i
  %i.bp = mul nuw nsw i64 %.sroa.11.1.lcssa.i, 24
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph104, ptr nonnull align 8 %2, i64 %i.bp, i1 false), !alias.scope !420
  %i.bq = sub i64 %.sroa.16.097225, %.sroa.11.1.lcssa.i ; 4 uses
  %.not18.i = icmp eq i64 %.sroa.16.097225, %.sroa.11.1.lcssa.i
  br i1 %.not18.i, label %.loopexit, label %.lr.ph16.i

.lr.ph16.i:                                       ; preds = %bb.n
  %i.br = getelementptr [24 x i8], ptr %.sroa.0.0.ph104, i64 %.sroa.11.1.lcssa.i ; 3 uses
  %.neg = add i64 %.sroa.11.1.lcssa.i, 1
  %xtraiter = and i64 %i.bq, 1
  %i.bs = icmp eq i64 %.sroa.16.097225, %.neg
  br i1 %i.bs, label %.epil.preheader, label %.lr.ph16.i.new

.lr.ph16.i.new:                                   ; preds = %.lr.ph16.i
  %unroll_iter = and i64 %i.bq, -2
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %.lr.ph16.i.new
  %.sroa.06.014.i = phi i64 [ 0, %.lr.ph16.i.new ], [ %i.bw, %bb.o ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph16.i.new ], [ %niter.next.1, %bb.o ]
  %i.bt = xor i64 %.sroa.06.014.i, -1
  %i.bu = getelementptr [24 x i8], ptr %i.au, i64 %i.bt
  %i.bv = getelementptr [24 x i8], ptr %i.br, i64 %.sroa.06.014.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bv, ptr noundef nonnull align 8 dereferenceable(24) %i.bu, i64 24, i1 false), !alias.scope !420
  %i.bw = add nuw i64 %.sroa.06.014.i, 2          ; 2 uses
  %i.bx = xor i64 %.sroa.06.014.i, -2
  %i.by = getelementptr [24 x i8], ptr %i.au, i64 %i.bx
  %i.bz = getelementptr [24 x i8], ptr %i.br, i64 %.sroa.06.014.i
  %i.ca = getelementptr i8, ptr %i.bz, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ca, ptr noundef nonnull align 8 dereferenceable(24) %i.by, i64 24, i1 false), !alias.scope !420
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.o

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.o
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph16.i
  %.sroa.06.014.i.epil.init = phi i64 [ 0, %.lr.ph16.i ], [ %i.bw, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod288 = trunc i64 %i.bq to i1
  call void @llvm.assume(i1 %lcmp.mod288)
  %i.cb = xor i64 %.sroa.06.014.i.epil.init, -1
  %i.cc = getelementptr [24 x i8], ptr %i.au, i64 %i.cb
  %i.cd = getelementptr [24 x i8], ptr %i.br, i64 %.sroa.06.014.i.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cd, ptr noundef nonnull align 8 dereferenceable(24) %i.cc, i64 24, i1 false), !alias.scope !420
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.n
  %i.ce = icmp eq i64 %.sroa.11.1.lcssa.i, 0
  br i1 %i.ce, label %.thread, label %bb.p

bb.p:                                             ; preds = %.loopexit
  %.not.i44 = icmp ugt i64 %.sroa.11.1.lcssa.i, %.sroa.16.097225
  br i1 %.not.i44, label %bb.q, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackId12split_at_mutBA_.exit, !prof !324

bb.q:                                             ; preds = %bb.p
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @9, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #30, !noalias !427
  unreachable

_RNvMNtCs3oUPovFnLWP_4core5sliceSNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackId12split_at_mutBA_.exit: ; preds = %bb.p
  %i.cf = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.ph104, i64 %.sroa.11.1.lcssa.i
  call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdNvYB15_NtNtBa_3cmp10PartialOrd2ltEB1b_(ptr noalias nofree noundef nonnull align 8 %i.cf, i64 noundef %i.bq, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) %i.a, ptr noalias nofree noundef nonnull %6) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.cg = icmp ult i64 %.sroa.11.1.lcssa.i, 33
  br i1 %i.cg, label %.outer._crit_edge, label %bb.b

.thread:                                          ; preds = %bb.h, %.loopexit
  call void @llvm.experimental.noalias.scope.decl(metadata !431)
  call void @llvm.experimental.noalias.scope.decl(metadata !434)
  %.not72 = icmp samesign ult i64 %3, %.sroa.16.097225
  br i1 %.not72, label %bb.s, label %bb.r, !prof !301

bb.r:                                             ; preds = %.thread
  %i.ch = getelementptr [24 x i8], ptr %2, i64 %.sroa.16.097225 ; 4 uses
  %i.ci = getelementptr i8, ptr %i.am, i64 8
  %i.cj = getelementptr i8, ptr %i.am, i64 16
  br label %bb.t

bb.s:                                             ; preds = %.thread
  call void @llvm.trap()
  unreachable

bb.t:                                             ; preds = %bb.u, %bb.r
  %.sroa.19.0.i47 = phi ptr [ %i.ch, %bb.r ], [ %i.da, %bb.u ] ; 2 uses
  %.sroa.11.0.i48 = phi i64 [ 0, %bb.r ], [ %i.dc, %bb.u ] ; 2 uses
  %.sroa.5.0.i49 = phi ptr [ %.sroa.0.0.ph104, %bb.r ], [ %i.dd, %bb.u ] ; 3 uses
  %.sroa.0.0.i50 = phi i64 [ %.sroa.0.0.i, %bb.r ], [ %.sroa.16.097225, %bb.u ] ; 2 uses
  %i.ck = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.ph104, i64 %.sroa.0.0.i50 ; 2 uses
  %i.cl = icmp ult ptr %.sroa.5.0.i49, %i.ck
  br i1 %i.cl, label %.lr.ph.i59, label %._crit_edge.i51

._crit_edge.i51:                                  ; preds = %.lr.ph.i59, %bb.t
  %.sroa.19.1.lcssa.i52 = phi ptr [ %.sroa.19.0.i47, %bb.t ], [ %i.cu, %.lr.ph.i59 ]
  %.sroa.11.1.lcssa.i53 = phi i64 [ %.sroa.11.0.i48, %bb.t ], [ %i.cx, %.lr.ph.i59 ] ; 10 uses
  %.sroa.5.1.lcssa.i54 = phi ptr [ %.sroa.5.0.i49, %bb.t ], [ %i.cy, %.lr.ph.i59 ] ; 2 uses
  %i.cm = icmp eq i64 %.sroa.0.0.i50, %.sroa.16.097225
  br i1 %i.cm, label %bb.v, label %bb.u

.lr.ph.i59:                                       ; preds = %bb.t, %.lr.ph.i59
  %.sroa.5.111.i60 = phi ptr [ %i.cy, %.lr.ph.i59 ], [ %.sroa.5.0.i49, %bb.t ] ; 4 uses
  %.sroa.11.110.i61 = phi i64 [ %i.cx, %.lr.ph.i59 ], [ %.sroa.11.0.i48, %bb.t ] ; 2 uses
  %.sroa.19.19.i62 = phi ptr [ %i.cu, %.lr.ph.i59 ], [ %.sroa.19.0.i47, %bb.t ]
  %i.cn = getelementptr i8, ptr %.sroa.5.111.i60, i64 8
  %.val.i63 = load ptr, ptr %i.cn, align 8, !alias.scope !431, !noalias !434, !nonnull !8, !noundef !8
  %i.co = getelementptr i8, ptr %.sroa.5.111.i60, i64 16
  %.val12.i64 = load i64, ptr %i.co, align 8, !alias.scope !431, !noalias !434, !noundef !8 ; 2 uses
  %.val13.i65 = load ptr, ptr %i.ci, align 8, !alias.scope !431, !noalias !434, !nonnull !8, !noundef !8
  %.val14.i66 = load i64, ptr %i.cj, align 8, !alias.scope !431, !noalias !434, !noundef !8 ; 2 uses
  %spec.store.select.i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %.val14.i66, i64 range(i64 0, -9223372036854775808) %.val12.i64)
  %i.cp = call i32 @memcmp(ptr nonnull readonly %.val13.i65, ptr nonnull readonly %.val.i63, i64 %spec.store.select.i.i.i.i.i.i.i), !alias.scope !436, !noalias !440 ; 2 uses
  %i.cq = sext i32 %i.cp to i64
  %i.cr = icmp eq i32 %i.cp, 0
  %i.cs = sub nsw i64 %.val14.i66, %.val12.i64
  %spec.select.i.i.i.i.i.i.i = select i1 %i.cr, i64 %i.cs, i64 %i.cq
  %i.ct = icmp sgt i64 %spec.select.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.cu = getelementptr inbounds i8, ptr %.sroa.19.19.i62, i64 -24 ; 3 uses
  %.sroa.01.0.i.i67 = select i1 %i.ct, ptr %2, ptr %i.cu
  %i.cv = getelementptr inbounds nuw [24 x i8], ptr %.sroa.01.0.i.i67, i64 %.sroa.11.110.i61
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cv, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.111.i60, i64 24, i1 false), !alias.scope !440, !noalias !441
  %i.cw = zext i1 %i.ct to i64
  %i.cx = add i64 %.sroa.11.110.i61, %i.cw        ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.5.111.i60, i64 24 ; 3 uses
  %i.cz = icmp ult ptr %i.cy, %i.ck
  br i1 %i.cz, label %.lr.ph.i59, label %._crit_edge.i51

bb.u:                                             ; preds = %._crit_edge.i51
  %i.da = getelementptr inbounds i8, ptr %.sroa.19.1.lcssa.i52, i64 -24
  %i.db = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %.sroa.11.1.lcssa.i53
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.db, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.1.lcssa.i54, i64 24, i1 false), !alias.scope !440, !noalias !444
  %i.dc = add i64 %.sroa.11.1.lcssa.i53, 1
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.5.1.lcssa.i54, i64 24
  br label %bb.t

bb.v:                                             ; preds = %._crit_edge.i51
  %i.de = mul nuw nsw i64 %.sroa.11.1.lcssa.i53, 24
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph104, ptr nonnull align 8 %2, i64 %i.de, i1 false), !alias.scope !440
  %i.df = sub i64 %.sroa.16.097225, %.sroa.11.1.lcssa.i53 ; 6 uses
  %.not18.i55 = icmp eq i64 %.sroa.16.097225, %.sroa.11.1.lcssa.i53
  %i.dg = getelementptr [24 x i8], ptr %.sroa.0.0.ph104, i64 %.sroa.11.1.lcssa.i53 ; 4 uses
  br i1 %.not18.i55, label %.outer.thread, label %.lr.ph16.i56.preheader

.lr.ph16.i56.preheader:                           ; preds = %bb.v
  %.neg300 = add i64 %.sroa.11.1.lcssa.i53, 1
  %xtraiter295 = and i64 %i.df, 1
  %i.dh = icmp eq i64 %.sroa.16.097225, %.neg300
  br i1 %i.dh, label %.lr.ph16.i56.epil.preheader, label %.lr.ph16.i56.preheader.new

.lr.ph16.i56.preheader.new:                       ; preds = %.lr.ph16.i56.preheader
  %unroll_iter298 = and i64 %i.df, -2
  br label %.lr.ph16.i56

.lr.ph16.i56:                                     ; preds = %.lr.ph16.i56, %.lr.ph16.i56.preheader.new
  %.sroa.06.014.i57 = phi i64 [ 0, %.lr.ph16.i56.preheader.new ], [ %i.dl, %.lr.ph16.i56 ] ; 5 uses
  %niter299 = phi i64 [ 0, %.lr.ph16.i56.preheader.new ], [ %niter299.next.1, %.lr.ph16.i56 ]
  %i.di = xor i64 %.sroa.06.014.i57, -1
  %i.dj = getelementptr [24 x i8], ptr %i.ch, i64 %i.di
  %i.dk = getelementptr [24 x i8], ptr %i.dg, i64 %.sroa.06.014.i57
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dk, ptr noundef nonnull align 8 dereferenceable(24) %i.dj, i64 24, i1 false), !alias.scope !440
  %i.dl = add nuw i64 %.sroa.06.014.i57, 2        ; 2 uses
  %i.dm = xor i64 %.sroa.06.014.i57, -2
  %i.dn = getelementptr [24 x i8], ptr %i.ch, i64 %i.dm
  %i.do = getelementptr [24 x i8], ptr %i.dg, i64 %.sroa.06.014.i57
  %i.dp = getelementptr i8, ptr %i.do, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dp, ptr noundef nonnull align 8 dereferenceable(24) %i.dn, i64 24, i1 false), !alias.scope !440
  %niter299.next.1 = add i64 %niter299, 2         ; 2 uses
  %niter299.ncmp.1 = icmp eq i64 %niter299.next.1, %unroll_iter298
  br i1 %niter299.ncmp.1, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort16stable_partitionNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdNCINvB2_9quicksortB1d_NvYB1d_NtNtBa_3cmp10PartialOrd2ltE0EB1j_.exit.unr-lcssa, label %.lr.ph16.i56

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort16stable_partitionNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdNCINvB2_9quicksortB1d_NvYB1d_NtNtBa_3cmp10PartialOrd2ltE0EB1j_.exit.unr-lcssa: ; preds = %.lr.ph16.i56
  %lcmp.mod296.not = icmp eq i64 %xtraiter295, 0
  br i1 %lcmp.mod296.not, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort16stable_partitionNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdNCINvB2_9quicksortB1d_NvYB1d_NtNtBa_3cmp10PartialOrd2ltE0EB1j_.exit, label %.lr.ph16.i56.epil.preheader

.lr.ph16.i56.epil.preheader:                      ; preds = %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort16stable_partitionNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdNCINvB2_9quicksortB1d_NvYB1d_NtNtBa_3cmp10PartialOrd2ltE0EB1j_.exit.unr-lcssa, %.lr.ph16.i56.preheader
  %.sroa.06.014.i57.epil.init = phi i64 [ 0, %.lr.ph16.i56.preheader ], [ %i.dl, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort16stable_partitionNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdNCINvB2_9quicksortB1d_NvYB1d_NtNtBa_3cmp10PartialOrd2ltE0EB1j_.exit.unr-lcssa ] ; 2 uses
  %lcmp.mod297 = trunc i64 %i.df to i1
  call void @llvm.assume(i1 %lcmp.mod297)
  %i.dq = xor i64 %.sroa.06.014.i57.epil.init, -1
  %i.dr = getelementptr [24 x i8], ptr %i.ch, i64 %i.dq
  %i.ds = getelementptr [24 x i8], ptr %i.dg, i64 %.sroa.06.014.i57.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ds, ptr noundef nonnull align 8 dereferenceable(24) %i.dr, i64 24, i1 false), !alias.scope !440
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort16stable_partitionNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdNCINvB2_9quicksortB1d_NvYB1d_NtNtBa_3cmp10PartialOrd2ltE0EB1j_.exit

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort16stable_partitionNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdNCINvB2_9quicksortB1d_NvYB1d_NtNtBa_3cmp10PartialOrd2ltE0EB1j_.exit: ; preds = %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort16stable_partitionNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdNCINvB2_9quicksortB1d_NvYB1d_NtNtBa_3cmp10PartialOrd2ltE0EB1j_.exit.unr-lcssa, %.lr.ph16.i56.epil.preheader
  %i.dt = icmp ugt i64 %.sroa.11.1.lcssa.i53, %.sroa.16.097225
  br i1 %i.dt, label %bb.w, label %.outer, !prof !324

.outer.thread:                                    ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.outer._crit_edge

.outer:                                           ; preds = %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort16stable_partitionNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdNCINvB2_9quicksortB1d_NvYB1d_NtNtBa_3cmp10PartialOrd2ltE0EB1j_.exit
  %i.du = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.ph104, i64 %.sroa.11.1.lcssa.i53 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.dv = icmp ult i64 %i.df, 33
  br i1 %i.dv, label %.outer._crit_edge, label %.lr.ph

bb.w:                                             ; preds = %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort16stable_partitionNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdNCINvB2_9quicksortB1d_NvYB1d_NtNtBa_3cmp10PartialOrd2ltE0EB1j_.exit
  call void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef %.sroa.11.1.lcssa.i53, i64 noundef %.sroa.16.097225, i64 noundef %.sroa.16.097225, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #30
  unreachable
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortRNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringNvYB15_NtNtBa_3cmp10PartialOrd2ltECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, i32 noundef %4, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable_or_null(8) %5, ptr noalias nofree noundef nonnull %6) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 6 uses
  %i.b = icmp samesign ult i64 %1, 33
  br i1 %i.b, label %.outer._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.outer
  %.sroa.0.0.ph126 = phi ptr [ %i.ig, %.outer ], [ %0, %bb.a ] ; 22 uses
  %.sroa.16.0.ph125 = phi i64 [ %i.hr, %.outer ], [ %1, %bb.a ] ; 2 uses
  %.sroa.025.0.ph124 = phi i32 [ %i.f, %.outer ], [ %4, %bb.a ] ; 2 uses
  %.sroa.028.0.ph123 = phi ptr [ null, %.outer ], [ %5, %bb.a ] ; 2 uses
  %i.c = ptrtoint ptr %.sroa.0.0.ph126 to i64
  %.not = icmp eq ptr %.sroa.028.0.ph123, null
  %i.d = icmp eq i32 %.sroa.025.0.ph124, 0
  br i1 %i.d, label %.lr.ph._crit_edge, label %.lr.ph272

bb.b:                                             ; preds = %_RNvMNtCs3oUPovFnLWP_4core5sliceSRNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsString12split_at_mutCskuiImRAV2ip_9elfshaker.exit
  %i.e = icmp eq i32 %i.f, 0
  br i1 %i.e, label %.lr.ph._crit_edge, label %.lr.ph272

.outer._crit_edge:                                ; preds = %.outer, %_RNvMNtCs3oUPovFnLWP_4core5sliceSRNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsString12split_at_mutCskuiImRAV2ip_9elfshaker.exit, %.outer.thread, %bb.a
  %.sroa.0.0.ph.lcssa116 = phi ptr [ %i.hs, %.outer.thread ], [ %0, %bb.a ], [ %.sroa.0.0.ph126, %_RNvMNtCs3oUPovFnLWP_4core5sliceSRNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsString12split_at_mutCskuiImRAV2ip_9elfshaker.exit ], [ %i.ig, %.outer ]
  %.sroa.16.0.lcssa = phi i64 [ 0, %.outer.thread ], [ %1, %bb.a ], [ %.sroa.27.2.lcssa.i, %_RNvMNtCs3oUPovFnLWP_4core5sliceSRNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsString12split_at_mutCskuiImRAV2ip_9elfshaker.exit ], [ %i.hr, %.outer ]
  call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchRNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringNvYB1s_NtNtBa_3cmp10PartialOrd2ltECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 %.sroa.0.0.ph.lcssa116, i64 noundef range(i64 0, 33) %.sroa.16.0.lcssa, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 1152921504606846976) %3, ptr noalias nofree noundef nonnull %6)
  br label %bb.f

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %bb.b
  %.sroa.16.0119.lcssa = phi i64 [ %.sroa.27.2.lcssa.i, %bb.b ], [ %.sroa.16.0.ph125, %.lr.ph ]
  call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift4sortRNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringNvYBW_NtNtBa_3cmp10PartialOrd2ltECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 %.sroa.0.0.ph126, i64 noundef %.sroa.16.0119.lcssa, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef %3, i1 noundef zeroext true, ptr noalias nofree noundef nonnull %6)
  br label %bb.f

.lr.ph272:                                        ; preds = %.lr.ph, %bb.b
  %.sroa.025.0118271 = phi i32 [ %i.f, %bb.b ], [ %.sroa.025.0.ph124, %.lr.ph ]
  %.sroa.16.0119270 = phi i64 [ %.sroa.27.2.lcssa.i, %bb.b ], [ %.sroa.16.0.ph125, %.lr.ph ] ; 19 uses
  %i.f = add i32 %.sroa.025.0118271, -1           ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !447)
  %i.g = lshr i64 %.sroa.16.0119270, 3            ; 3 uses
  %.idx.i = shl nuw nsw i64 %i.g, 5
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph126, i64 %.idx.i ; 3 uses
  %.idx2.i = mul nuw nsw i64 %i.g, 56
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph126, i64 %.idx2.i ; 3 uses
  %i.j = icmp samesign ult i64 %.sroa.16.0119270, 64
  br i1 %i.j, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph272
  %i.k = call fastcc noundef ptr @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared5pivot11median3_recRNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringNvYB14_NtNtBa_3cmp10PartialOrd2ltECskuiImRAV2ip_9elfshaker(ptr noundef nonnull readonly align 8 %.sroa.0.0.ph126, ptr noundef readonly %i.h, ptr noundef readonly %i.i, i64 noundef %i.g)
  br label %bb.g

bb.d:                                             ; preds = %.lr.ph272
  %.val6.i = load ptr, ptr %.sroa.0.0.ph126, align 8, !alias.scope !447, !nonnull !8, !align !183, !noundef !8 ; 2 uses
  %.val7.i = load ptr, ptr %i.h, align 8, !alias.scope !447, !nonnull !8, !align !183, !noundef !8 ; 2 uses
  %i.l = getelementptr i8, ptr %.val6.i, i64 8
  %.val.i.i.i = load ptr, ptr %i.l, align 8, !noalias !447, !nonnull !8, !noundef !8 ; 2 uses
  %i.m = getelementptr i8, ptr %.val6.i, i64 16
  %.val1.i.i.i = load i64, ptr %i.m, align 8, !noalias !447, !noundef !8 ; 4 uses
  %i.n = getelementptr i8, ptr %.val7.i, i64 8
  %.val2.i.i.i = load ptr, ptr %i.n, align 8, !noalias !447, !nonnull !8, !noundef !8 ; 2 uses
  %i.o = getelementptr i8, ptr %.val7.i, i64 16
  %.val3.i.i.i = load i64, ptr %i.o, align 8, !noalias !447, !noundef !8 ; 4 uses
  %spec.store.select.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %.val1.i.i.i, i64 %.val3.i.i.i)
  %i.p = call i32 @memcmp(ptr nonnull readonly %.val.i.i.i, ptr nonnull readonly %.val2.i.i.i, i64 %spec.store.select.i.i.i.i.i), !alias.scope !450, !noalias !447 ; 2 uses
  %i.q = sext i32 %i.p to i64
  %i.r = icmp eq i32 %i.p, 0
  %i.s = sub i64 %.val1.i.i.i, %.val3.i.i.i
  %spec.select.i.i.i.i.i = select i1 %i.r, i64 %i.s, i64 %i.q ; 2 uses
  %.val5.i = load ptr, ptr %i.i, align 8, !alias.scope !447, !nonnull !8, !align !183, !noundef !8 ; 2 uses
  %i.t = getelementptr i8, ptr %.val5.i, i64 8
  %.val2.i.i10.i = load ptr, ptr %i.t, align 8, !noalias !447, !nonnull !8, !noundef !8 ; 2 uses
  %i.u = getelementptr i8, ptr %.val5.i, i64 16
  %.val3.i.i11.i = load i64, ptr %i.u, align 8, !noalias !447, !noundef !8 ; 4 uses
  %spec.store.select.i.i.i.i12.i = call i64 @llvm.umin.i64(i64 %.val1.i.i.i, i64 %.val3.i.i11.i)
  %i.v = call i32 @memcmp(ptr nonnull readonly %.val.i.i.i, ptr nonnull readonly %.val2.i.i10.i, i64 %spec.store.select.i.i.i.i12.i), !alias.scope !454, !noalias !447 ; 2 uses
  %i.w = sext i32 %i.v to i64
  %i.x = icmp eq i32 %i.v, 0
  %i.y = sub i64 %.val1.i.i.i, %.val3.i.i11.i
  %spec.select.i.i.i.i13.i = select i1 %i.x, i64 %i.y, i64 %i.w
  %i.z = xor i64 %spec.select.i.i.i.i13.i, %spec.select.i.i.i.i.i
  %i.aa = icmp slt i64 %i.z, 0
  br i1 %i.aa, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %spec.store.select.i.i.i.i18.i = call i64 @llvm.umin.i64(i64 %.val3.i.i.i, i64 %.val3.i.i11.i)
  %i.ab = call i32 @memcmp(ptr nonnull readonly %.val2.i.i.i, ptr nonnull readonly %.val2.i.i10.i, i64 %spec.store.select.i.i.i.i18.i), !alias.scope !458, !noalias !447 ; 2 uses
  %i.ac = sext i32 %i.ab to i64
  %i.ad = icmp eq i32 %i.ab, 0
  %i.ae = sub i64 %.val3.i.i.i, %.val3.i.i11.i
  %spec.select.i.i.i.i19.i = select i1 %i.ad, i64 %i.ae, i64 %i.ac
  %i.af = xor i64 %spec.select.i.i.i.i19.i, %spec.select.i.i.i.i.i
  %i.ag = icmp slt i64 %i.af, 0
  %..i.i = select i1 %i.ag, ptr %i.i, ptr %i.h
  br label %bb.g

bb.f:                                             ; preds = %.lr.ph._crit_edge, %.outer._crit_edge
  ret void

bb.g:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.sroa.0.0.i.sink.i = phi ptr [ %i.k, %bb.c ], [ %.sroa.0.0.ph126, %bb.d ], [ %..i.i, %bb.e ]
  %i.ah = ptrtoint ptr %.sroa.0.0.i.sink.i to i64
  %i.ai = sub nuw i64 %i.ah, %i.c                 ; 3 uses
  %.sroa.0.0.i = lshr exact i64 %i.ai, 3          ; 3 uses
  %i.aj = icmp samesign ult i64 %.sroa.0.0.i, %.sroa.16.0119270
  call void @llvm.assume(i1 %i.aj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph126, i64 %i.ai
  %i.al = load ptr, ptr %i.ak, align 8            ; 6 uses
  store ptr %i.al, ptr %i.a, align 8
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.sroa.028.0.val = load ptr, ptr %.sroa.028.0.ph123, align 8, !nonnull !8, !align !183, !noundef !8 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.al) ]
  %i.am = getelementptr i8, ptr %.sroa.028.0.val, i64 8
  %.val.i.i = load ptr, ptr %i.am, align 8, !nonnull !8, !noundef !8
  %i.an = getelementptr i8, ptr %.sroa.028.0.val, i64 16
  %.val1.i.i = load i64, ptr %i.an, align 8, !noundef !8 ; 2 uses
  %i.ao = getelementptr i8, ptr %i.al, i64 8
  %.val2.i.i = load ptr, ptr %i.ao, align 8, !nonnull !8, !noundef !8
  %i.ap = getelementptr i8, ptr %i.al, i64 16
  %.val3.i.i = load i64, ptr %i.ap, align 8, !noundef !8 ; 2 uses
  %spec.store.select.i.i.i.i = call i64 @llvm.umin.i64(i64 %.val1.i.i, i64 %.val3.i.i)
  %i.aq = call i32 @memcmp(ptr nonnull readonly %.val.i.i, ptr nonnull readonly %.val2.i.i, i64 %spec.store.select.i.i.i.i), !alias.scope !462 ; 2 uses
  %i.ar = sext i32 %i.aq to i64
  %i.as = icmp eq i32 %i.aq, 0
  %i.at = sub i64 %.val1.i.i, %.val3.i.i
  %spec.select.i.i.i.i = select i1 %i.as, i64 %i.at, i64 %i.ar
  %i.au = icmp slt i64 %spec.select.i.i.i.i, 0
  br i1 %i.au, label %bb.i, label %.thread

bb.i:                                             ; preds = %bb.g, %bb.h
  call void @llvm.experimental.noalias.scope.decl(metadata !466)
  call void @llvm.experimental.noalias.scope.decl(metadata !469)
  %.not86 = icmp samesign ult i64 %3, %.sroa.16.0119270
  br i1 %.not86, label %bb.k, label %bb.j, !prof !301

bb.j:                                             ; preds = %bb.i
  %i.av = getelementptr [8 x i8], ptr %2, i64 %.sroa.16.0119270 ; 3 uses
  %i.aw = getelementptr i8, ptr %i.al, i64 8      ; 2 uses
  %i.ax = getelementptr i8, ptr %i.al, i64 16     ; 2 uses
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  call void @llvm.trap()
  unreachable

bb.l:                                             ; preds = %bb.n, %bb.j
  %.sroa.43.0.i = phi ptr [ %i.av, %bb.j ], [ %i.do, %bb.n ] ; 2 uses
  %.sroa.27.0.i = phi i64 [ 0, %bb.j ], [ %.sroa.27.2.lcssa.i, %bb.n ] ; 2 uses
  %.sroa.9.0.i = phi ptr [ %.sroa.0.0.ph126, %bb.j ], [ %i.dr, %bb.n ] ; 3 uses
  %.sroa.0.0.i37 = phi i64 [ %.sroa.0.0.i, %bb.j ], [ %.sroa.16.0119270, %bb.n ] ; 3 uses
  %i.ay = call i64 @llvm.usub.sat.i64(i64 %.sroa.0.0.i37, i64 3)
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph126, i64 %i.ay ; 2 uses
  %i.ba = icmp ult ptr %.sroa.9.0.i, %i.az
  br i1 %i.ba, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.l
  %.val2.i.i.i40 = load ptr, ptr %i.aw, align 8, !noalias !471, !nonnull !8, !noundef !8 ; 4 uses
  %.val3.i.i.i41 = load i64, ptr %i.ax, align 8, !noalias !471, !noundef !8 ; 8 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.lr.ph.i
  %.sroa.9.131.i = phi ptr [ %.sroa.9.0.i, %.lr.ph.i ], [ %i.cw, %bb.m ] ; 5 uses
  %.sroa.27.130.i = phi i64 [ %.sroa.27.0.i, %.lr.ph.i ], [ %i.cv, %bb.m ] ; 2 uses
  %.sroa.43.129.i = phi ptr [ %.sroa.43.0.i, %.lr.ph.i ], [ %i.cs, %bb.m ] ; 4 uses
  %.val21.i = load ptr, ptr %.sroa.9.131.i, align 8, !alias.scope !466, !noalias !469, !nonnull !8, !align !183, !noundef !8 ; 3 uses
  %i.bb = getelementptr i8, ptr %.val21.i, i64 8
  %.val.i.i.i38 = load ptr, ptr %i.bb, align 8, !noalias !471, !nonnull !8, !noundef !8
  %i.bc = getelementptr i8, ptr %.val21.i, i64 16
  %.val1.i.i.i39 = load i64, ptr %i.bc, align 8, !noalias !471, !noundef !8 ; 2 uses
  %spec.store.select.i.i.i.i.i42 = call i64 @llvm.umin.i64(i64 %.val1.i.i.i39, i64 %.val3.i.i.i41)
  %i.bd = call i32 @memcmp(ptr nonnull readonly %.val.i.i.i38, ptr nonnull readonly %.val2.i.i.i40, i64 %spec.store.select.i.i.i.i.i42), !alias.scope !472, !noalias !471 ; 2 uses
  %i.be = sext i32 %i.bd to i64
  %i.bf = icmp eq i32 %i.bd, 0
  %i.bg = sub i64 %.val1.i.i.i39, %.val3.i.i.i41
  %spec.select.i.i.i.i.i43 = select i1 %i.bf, i64 %i.bg, i64 %i.be ; 2 uses
  %i.bh = icmp slt i64 %spec.select.i.i.i.i.i43, 0
  %i.bi = getelementptr inbounds i8, ptr %.sroa.43.129.i, i64 -8
  %.sroa.01.0.i.i = select i1 %i.bh, ptr %2, ptr %i.bi
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i.i, i64 %.sroa.27.130.i
  %i.bk = ptrtoint ptr %.val21.i to i64
  store i64 %i.bk, ptr %i.bj, align 8, !alias.scope !469, !noalias !476
  %spec.select.i.i.i.i.lobit.i = lshr i64 %spec.select.i.i.i.i.i43, 63
  %i.bl = add i64 %spec.select.i.i.i.i.lobit.i, %.sroa.27.130.i ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i, i64 8
  %.val19.i = load ptr, ptr %i.bm, align 8, !alias.scope !466, !noalias !469, !nonnull !8, !align !183, !noundef !8 ; 3 uses
  %i.bn = getelementptr i8, ptr %.val19.i, i64 8
  %.val.i.i23.i = load ptr, ptr %i.bn, align 8, !noalias !471, !nonnull !8, !noundef !8
  %i.bo = getelementptr i8, ptr %.val19.i, i64 16
  %.val1.i.i24.i = load i64, ptr %i.bo, align 8, !noalias !471, !noundef !8 ; 2 uses
  %spec.store.select.i.i.i.i27.i = call i64 @llvm.umin.i64(i64 %.val1.i.i24.i, i64 %.val3.i.i.i41)
  %i.bp = call i32 @memcmp(ptr nonnull readonly %.val.i.i23.i, ptr nonnull readonly %.val2.i.i.i40, i64 %spec.store.select.i.i.i.i27.i), !alias.scope !479, !noalias !471 ; 2 uses
  %i.bq = sext i32 %i.bp to i64
  %i.br = icmp eq i32 %i.bp, 0
  %i.bs = sub i64 %.val1.i.i24.i, %.val3.i.i.i41
  %spec.select.i.i.i.i28.i = select i1 %i.br, i64 %i.bs, i64 %i.bq ; 2 uses
  %i.bt = icmp slt i64 %spec.select.i.i.i.i28.i, 0
  %i.bu = getelementptr inbounds i8, ptr %.sroa.43.129.i, i64 -16
  %.sroa.01.0.i29.i = select i1 %i.bt, ptr %2, ptr %i.bu
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i29.i, i64 %i.bl
  %i.bw = ptrtoint ptr %.val19.i to i64
  store i64 %i.bw, ptr %i.bv, align 8, !alias.scope !469, !noalias !483
  %spec.select.i.i.i.i28.lobit.i = lshr i64 %spec.select.i.i.i.i28.i, 63
  %i.bx = add i64 %spec.select.i.i.i.i28.lobit.i, %i.bl ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i, i64 16
  %.val17.i = load ptr, ptr %i.by, align 8, !alias.scope !466, !noalias !469, !nonnull !8, !align !183, !noundef !8 ; 3 uses
  %i.bz = getelementptr i8, ptr %.val17.i, i64 8
  %.val.i.i30.i = load ptr, ptr %i.bz, align 8, !noalias !471, !nonnull !8, !noundef !8
  %i.ca = getelementptr i8, ptr %.val17.i, i64 16
  %.val1.i.i31.i = load i64, ptr %i.ca, align 8, !noalias !471, !noundef !8 ; 2 uses
  %spec.store.select.i.i.i.i34.i = call i64 @llvm.umin.i64(i64 %.val1.i.i31.i, i64 %.val3.i.i.i41)
  %i.cb = call i32 @memcmp(ptr nonnull readonly %.val.i.i30.i, ptr nonnull readonly %.val2.i.i.i40, i64 %spec.store.select.i.i.i.i34.i), !alias.scope !486, !noalias !471 ; 2 uses
  %i.cc = sext i32 %i.cb to i64
  %i.cd = icmp eq i32 %i.cb, 0
  %i.ce = sub i64 %.val1.i.i31.i, %.val3.i.i.i41
  %spec.select.i.i.i.i35.i = select i1 %i.cd, i64 %i.ce, i64 %i.cc ; 2 uses
  %i.cf = icmp slt i64 %spec.select.i.i.i.i35.i, 0
  %i.cg = getelementptr inbounds i8, ptr %.sroa.43.129.i, i64 -24
  %.sroa.01.0.i36.i = select i1 %i.cf, ptr %2, ptr %i.cg
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i36.i, i64 %i.bx
  %i.ci = ptrtoint ptr %.val17.i to i64
  store i64 %i.ci, ptr %i.ch, align 8, !alias.scope !469, !noalias !490
  %spec.select.i.i.i.i35.lobit.i = lshr i64 %spec.select.i.i.i.i35.i, 63
  %i.cj = add i64 %spec.select.i.i.i.i35.lobit.i, %i.bx ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i, i64 24
  %.val15.i = load ptr, ptr %i.ck, align 8, !alias.scope !466, !noalias !469, !nonnull !8, !align !183, !noundef !8 ; 3 uses
  %i.cl = getelementptr i8, ptr %.val15.i, i64 8
  %.val.i.i37.i = load ptr, ptr %i.cl, align 8, !noalias !471, !nonnull !8, !noundef !8
  %i.cm = getelementptr i8, ptr %.val15.i, i64 16
  %.val1.i.i38.i = load i64, ptr %i.cm, align 8, !noalias !471, !noundef !8 ; 2 uses
  %spec.store.select.i.i.i.i41.i = call i64 @llvm.umin.i64(i64 %.val1.i.i38.i, i64 %.val3.i.i.i41)
  %i.cn = call i32 @memcmp(ptr nonnull readonly %.val.i.i37.i, ptr nonnull readonly %.val2.i.i.i40, i64 %spec.store.select.i.i.i.i41.i), !alias.scope !493, !noalias !471 ; 2 uses
  %i.co = sext i32 %i.cn to i64
  %i.cp = icmp eq i32 %i.cn, 0
  %i.cq = sub i64 %.val1.i.i38.i, %.val3.i.i.i41
  %spec.select.i.i.i.i42.i = select i1 %i.cp, i64 %i.cq, i64 %i.co ; 2 uses
  %i.cr = icmp slt i64 %spec.select.i.i.i.i42.i, 0
  %i.cs = getelementptr inbounds i8, ptr %.sroa.43.129.i, i64 -32 ; 3 uses
  %.sroa.01.0.i43.i = select i1 %i.cr, ptr %2, ptr %i.cs
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i43.i, i64 %i.cj
  %i.cu = ptrtoint ptr %.val15.i to i64
  store i64 %i.cu, ptr %i.ct, align 8, !alias.scope !469, !noalias !497
  %spec.select.i.i.i.i42.lobit.i = lshr i64 %spec.select.i.i.i.i42.i, 63
  %i.cv = add i64 %spec.select.i.i.i.i42.lobit.i, %i.cj ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i, i64 32 ; 3 uses
  %i.cx = icmp ult ptr %i.cw, %i.az
  br i1 %i.cx, label %bb.m, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.m, %bb.l
  %.sroa.43.1.lcssa.i = phi ptr [ %.sroa.43.0.i, %bb.l ], [ %i.cs, %bb.m ] ; 2 uses
  %.sroa.27.1.lcssa.i = phi i64 [ %.sroa.27.0.i, %bb.l ], [ %i.cv, %bb.m ] ; 2 uses
  %.sroa.9.1.lcssa.i = phi ptr [ %.sroa.9.0.i, %bb.l ], [ %i.cw, %bb.m ] ; 3 uses
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph126, i64 %.sroa.0.0.i37 ; 2 uses
  %i.cz = icmp ult ptr %.sroa.9.1.lcssa.i, %i.cy
  br i1 %i.cz, label %.lr.ph38.i.preheader, label %._crit_edge39.i

.lr.ph38.i.preheader:                             ; preds = %._crit_edge.i
  %.val2.i.i46.i = load ptr, ptr %i.aw, align 8, !noalias !471, !nonnull !8, !noundef !8
  %.val3.i.i47.i = load i64, ptr %i.ax, align 8, !noalias !471, !noundef !8 ; 2 uses
  br label %.lr.ph38.i

._crit_edge39.i:                                  ; preds = %.lr.ph38.i, %._crit_edge.i
  %.sroa.43.2.lcssa.i = phi ptr [ %.sroa.43.1.lcssa.i, %._crit_edge.i ], [ %i.di, %.lr.ph38.i ]
  %.sroa.27.2.lcssa.i = phi i64 [ %.sroa.27.1.lcssa.i, %._crit_edge.i ], [ %i.dl, %.lr.ph38.i ] ; 13 uses
  %.sroa.9.2.lcssa.i = phi ptr [ %.sroa.9.1.lcssa.i, %._crit_edge.i ], [ %i.dm, %.lr.ph38.i ] ; 2 uses
  %i.da = icmp eq i64 %.sroa.0.0.i37, %.sroa.16.0119270
  br i1 %i.da, label %bb.o, label %bb.n

.lr.ph38.i:                                       ; preds = %.lr.ph38.i.preheader, %.lr.ph38.i
  %.sroa.9.236.i = phi ptr [ %i.dm, %.lr.ph38.i ], [ %.sroa.9.1.lcssa.i, %.lr.ph38.i.preheader ] ; 2 uses
  %.sroa.27.235.i = phi i64 [ %i.dl, %.lr.ph38.i ], [ %.sroa.27.1.lcssa.i, %.lr.ph38.i.preheader ] ; 2 uses
  %.sroa.43.234.i = phi ptr [ %i.di, %.lr.ph38.i ], [ %.sroa.43.1.lcssa.i, %.lr.ph38.i.preheader ]
  %.val.i = load ptr, ptr %.sroa.9.236.i, align 8, !alias.scope !466, !noalias !469, !nonnull !8, !align !183, !noundef !8 ; 3 uses
  %i.db = getelementptr i8, ptr %.val.i, i64 8
  %.val.i.i44.i = load ptr, ptr %i.db, align 8, !noalias !471, !nonnull !8, !noundef !8
  %i.dc = getelementptr i8, ptr %.val.i, i64 16
  %.val1.i.i45.i = load i64, ptr %i.dc, align 8, !noalias !471, !noundef !8 ; 2 uses
  %spec.store.select.i.i.i.i48.i = call i64 @llvm.umin.i64(i64 %.val1.i.i45.i, i64 %.val3.i.i47.i)
  %i.dd = call i32 @memcmp(ptr nonnull readonly %.val.i.i44.i, ptr nonnull readonly %.val2.i.i46.i, i64 %spec.store.select.i.i.i.i48.i), !alias.scope !500, !noalias !471 ; 2 uses
  %i.de = sext i32 %i.dd to i64
  %i.df = icmp eq i32 %i.dd, 0
  %i.dg = sub i64 %.val1.i.i45.i, %.val3.i.i47.i
  %spec.select.i.i.i.i49.i = select i1 %i.df, i64 %i.dg, i64 %i.de ; 2 uses
  %i.dh = icmp slt i64 %spec.select.i.i.i.i49.i, 0
  %i.di = getelementptr inbounds i8, ptr %.sroa.43.234.i, i64 -8 ; 3 uses
  %.sroa.01.0.i50.i = select i1 %i.dh, ptr %2, ptr %i.di
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i50.i, i64 %.sroa.27.235.i
  %i.dk = ptrtoint ptr %.val.i to i64
  store i64 %i.dk, ptr %i.dj, align 8, !alias.scope !469, !noalias !504
  %spec.select.i.i.i.i49.lobit.i = lshr i64 %spec.select.i.i.i.i49.i, 63
  %i.dl = add i64 %spec.select.i.i.i.i49.lobit.i, %.sroa.27.235.i ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.9.236.i, i64 8 ; 3 uses
  %i.dn = icmp ult ptr %i.dm, %i.cy
  br i1 %i.dn, label %.lr.ph38.i, label %._crit_edge39.i

bb.n:                                             ; preds = %._crit_edge39.i
  %i.do = getelementptr inbounds i8, ptr %.sroa.43.2.lcssa.i, i64 -8 ; 2 uses
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %.sroa.27.2.lcssa.i
  %i.dq = load i64, ptr %.sroa.9.2.lcssa.i, align 8, !alias.scope !466, !noalias !507
  store i64 %i.dq, ptr %i.dp, align 8, !alias.scope !469, !noalias !510
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.9.2.lcssa.i, i64 8
  br label %bb.l

bb.o:                                             ; preds = %._crit_edge39.i
  %i.ds = shl nuw nsw i64 %.sroa.27.2.lcssa.i, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph126, ptr nonnull align 8 %2, i64 %i.ds, i1 false), !alias.scope !471
  %i.dt = sub i64 %.sroa.16.0119270, %.sroa.27.2.lcssa.i ; 5 uses
  %.not47.i = icmp eq i64 %.sroa.16.0119270, %.sroa.27.2.lcssa.i
  br i1 %.not47.i, label %.loopexit, label %.lr.ph45.i

.lr.ph45.i:                                       ; preds = %bb.o
  %i.du = getelementptr [8 x i8], ptr %.sroa.0.0.ph126, i64 %.sroa.27.2.lcssa.i ; 2 uses
  %min.iters.check279 = icmp ult i64 %i.dt, 4
  br i1 %min.iters.check279, label %scalar.ph278.preheader, label %vector.ph280

vector.ph280:                                     ; preds = %.lr.ph45.i
  %n.vec281 = and i64 %i.dt, -4                   ; 3 uses
  br label %vector.body282

vector.body282:                                   ; preds = %vector.body282, %vector.ph280
  %index283 = phi i64 [ 0, %vector.ph280 ], [ %index.next288, %vector.body282 ] ; 3 uses
  %i.dv = xor i64 %index283, -1
  %i.dw = getelementptr [8 x i8], ptr %i.av, i64 %i.dv ; 2 uses
  %i.dx = getelementptr [8 x i8], ptr %i.du, i64 %index283 ; 2 uses
  %i.dy = getelementptr i8, ptr %i.dw, i64 -8
  %i.dz = getelementptr i8, ptr %i.dw, i64 -24
  %wide.load284 = load <2 x i64>, ptr %i.dy, align 8, !alias.scope !469, !noalias !466
  %wide.load285 = load <2 x i64>, ptr %i.dz, align 8, !alias.scope !469, !noalias !466
  %reverse286 = shufflevector <2 x i64> %wide.load284, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %reverse287 = shufflevector <2 x i64> %wide.load285, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.ea = getelementptr i8, ptr %i.dx, i64 16
  store <2 x i64> %reverse286, ptr %i.dx, align 8, !alias.scope !466, !noalias !469
  store <2 x i64> %reverse287, ptr %i.ea, align 8, !alias.scope !466, !noalias !469
  %index.next288 = add nuw i64 %index283, 4       ; 2 uses
  %i.eb = icmp eq i64 %index.next288, %n.vec281
  br i1 %i.eb, label %middle.block289, label %vector.body282, !llvm.loop !511

middle.block289:                                  ; preds = %vector.body282
  %cmp.n290 = icmp eq i64 %i.dt, %n.vec281
  br i1 %cmp.n290, label %.loopexit, label %scalar.ph278.preheader

scalar.ph278.preheader:                           ; preds = %.lr.ph45.i, %middle.block289
  %.sroa.07.043.i.ph = phi i64 [ 0, %.lr.ph45.i ], [ %n.vec281, %middle.block289 ]
  br label %scalar.ph278

scalar.ph278:                                     ; preds = %scalar.ph278.preheader, %scalar.ph278
  %.sroa.07.043.i = phi i64 [ %i.ec, %scalar.ph278 ], [ %.sroa.07.043.i.ph, %scalar.ph278.preheader ] ; 3 uses
  %i.ec = add nuw i64 %.sroa.07.043.i, 1          ; 2 uses
  %i.ed = xor i64 %.sroa.07.043.i, -1
  %i.ee = getelementptr [8 x i8], ptr %i.av, i64 %i.ed
  %i.ef = getelementptr [8 x i8], ptr %i.du, i64 %.sroa.07.043.i
  %i.eg = load i64, ptr %i.ee, align 8, !alias.scope !469, !noalias !466
  store i64 %i.eg, ptr %i.ef, align 8, !alias.scope !466, !noalias !469
  %exitcond.not.i = icmp eq i64 %i.ec, %i.dt
  br i1 %exitcond.not.i, label %.loopexit, label %scalar.ph278, !llvm.loop !514

.loopexit:                                        ; preds = %scalar.ph278, %middle.block289, %bb.o
  %i.eh = icmp eq i64 %.sroa.27.2.lcssa.i, 0
  br i1 %i.eh, label %.thread, label %bb.p

bb.p:                                             ; preds = %.loopexit
  %.not.i44 = icmp ugt i64 %.sroa.27.2.lcssa.i, %.sroa.16.0119270
  br i1 %.not.i44, label %bb.q, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSRNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsString12split_at_mutCskuiImRAV2ip_9elfshaker.exit, !prof !324

bb.q:                                             ; preds = %bb.p
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @9, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #30, !noalias !515
  unreachable

_RNvMNtCs3oUPovFnLWP_4core5sliceSRNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsString12split_at_mutCskuiImRAV2ip_9elfshaker.exit: ; preds = %bb.p
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph126, i64 %.sroa.27.2.lcssa.i
  call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortRNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringNvYB15_NtNtBa_3cmp10PartialOrd2ltECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 %i.ei, i64 noundef %i.dt, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) %i.a, ptr noalias nofree noundef nonnull %6) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ej = icmp ult i64 %.sroa.27.2.lcssa.i, 33
  br i1 %i.ej, label %.outer._crit_edge, label %bb.b

.thread:                                          ; preds = %bb.h, %.loopexit
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph126, i64 %i.ai ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !519)
  call void @llvm.experimental.noalias.scope.decl(metadata !522)
  %.not87 = icmp samesign ult i64 %3, %.sroa.16.0119270
  br i1 %.not87, label %bb.s, label %bb.r, !prof !301

bb.r:                                             ; preds = %.thread
  %i.el = getelementptr [8 x i8], ptr %2, i64 %.sroa.16.0119270 ; 3 uses
  br label %bb.t

bb.s:                                             ; preds = %.thread
  call void @llvm.trap()
  unreachable

bb.t:                                             ; preds = %bb.v, %bb.r
  %.sroa.43.0.i47 = phi ptr [ %i.el, %bb.r ], [ %i.hl, %bb.v ] ; 2 uses
  %.sroa.27.0.i48 = phi i64 [ 0, %bb.r ], [ %i.ho, %bb.v ] ; 2 uses
  %.sroa.9.0.i49 = phi ptr [ %.sroa.0.0.ph126, %bb.r ], [ %i.hp, %bb.v ] ; 3 uses
  %.sroa.0.0.i50 = phi i64 [ %.sroa.0.0.i, %bb.r ], [ %.sroa.16.0119270, %bb.v ] ; 3 uses
  %i.em = call i64 @llvm.usub.sat.i64(i64 %.sroa.0.0.i50, i64 3)
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph126, i64 %i.em ; 2 uses
  %i.eo = icmp ult ptr %.sroa.9.0.i49, %i.en
  br i1 %i.eo, label %.lr.ph.i70, label %._crit_edge.i51

.lr.ph.i70:                                       ; preds = %bb.t
  %.val22.i71 = load ptr, ptr %i.ek, align 8, !alias.scope !519, !noalias !522, !nonnull !8, !align !183, !noundef !8 ; 2 uses
  %i.ep = getelementptr i8, ptr %.val22.i71, i64 8
  %i.eq = getelementptr i8, ptr %.val22.i71, i64 16
  %.val.i.i.i.i = load ptr, ptr %i.ep, align 8, !noalias !524, !nonnull !8, !noundef !8 ; 4 uses
  %.val1.i.i.i.i = load i64, ptr %i.eq, align 8, !noalias !524, !noundef !8 ; 8 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %.lr.ph.i70
  %.sroa.9.131.i72 = phi ptr [ %.sroa.9.0.i49, %.lr.ph.i70 ], [ %i.gq, %bb.u ] ; 5 uses
  %.sroa.27.130.i73 = phi i64 [ %.sroa.27.0.i48, %.lr.ph.i70 ], [ %i.gp, %bb.u ] ; 2 uses
  %.sroa.43.129.i74 = phi ptr [ %.sroa.43.0.i47, %.lr.ph.i70 ], [ %i.gl, %bb.u ] ; 4 uses
  %.val21.i75 = load ptr, ptr %.sroa.9.131.i72, align 8, !alias.scope !519, !noalias !522, !nonnull !8, !align !183, !noundef !8 ; 3 uses
  %i.er = getelementptr i8, ptr %.val21.i75, i64 8
  %.val2.i.i.i.i = load ptr, ptr %i.er, align 8, !noalias !524, !nonnull !8, !noundef !8
  %i.es = getelementptr i8, ptr %.val21.i75, i64 16
  %.val3.i.i.i.i = load i64, ptr %i.es, align 8, !noalias !524, !noundef !8 ; 2 uses
  %spec.store.select.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %.val1.i.i.i.i, i64 %.val3.i.i.i.i)
  %i.et = call i32 @memcmp(ptr nonnull readonly %.val.i.i.i.i, ptr nonnull readonly %.val2.i.i.i.i, i64 %spec.store.select.i.i.i.i.i.i), !alias.scope !525, !noalias !524 ; 2 uses
  %i.eu = sext i32 %i.et to i64
  %i.ev = icmp eq i32 %i.et, 0
  %i.ew = sub i64 %.val1.i.i.i.i, %.val3.i.i.i.i
  %spec.select.i.i.i.i.i.i = select i1 %i.ev, i64 %i.ew, i64 %i.eu
  %i.ex = icmp sgt i64 %spec.select.i.i.i.i.i.i, -1 ; 2 uses
  %i.ey = getelementptr inbounds i8, ptr %.sroa.43.129.i74, i64 -8
  %.sroa.01.0.i.i76 = select i1 %i.ex, ptr %2, ptr %i.ey
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i.i76, i64 %.sroa.27.130.i73
  %i.fa = ptrtoint ptr %.val21.i75 to i64
  store i64 %i.fa, ptr %i.ez, align 8, !alias.scope !522, !noalias !529
  %i.fb = zext i1 %i.ex to i64
  %i.fc = add i64 %.sroa.27.130.i73, %i.fb        ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i72, i64 8
  %.val19.i77 = load ptr, ptr %i.fd, align 8, !alias.scope !519, !noalias !522, !nonnull !8, !align !183, !noundef !8 ; 3 uses
  %i.fe = getelementptr i8, ptr %.val19.i77, i64 8
  %.val2.i.i.i25.i = load ptr, ptr %i.fe, align 8, !noalias !524, !nonnull !8, !noundef !8
  %i.ff = getelementptr i8, ptr %.val19.i77, i64 16
  %.val3.i.i.i26.i = load i64, ptr %i.ff, align 8, !noalias !524, !noundef !8 ; 2 uses
  %spec.store.select.i.i.i.i.i27.i = call i64 @llvm.umin.i64(i64 %.val1.i.i.i.i, i64 %.val3.i.i.i26.i)
  %i.fg = call i32 @memcmp(ptr nonnull readonly %.val.i.i.i.i, ptr nonnull readonly %.val2.i.i.i25.i, i64 %spec.store.select.i.i.i.i.i27.i), !alias.scope !532, !noalias !524 ; 2 uses
  %i.fh = sext i32 %i.fg to i64
  %i.fi = icmp eq i32 %i.fg, 0
  %i.fj = sub i64 %.val1.i.i.i.i, %.val3.i.i.i26.i
  %spec.select.i.i.i.i.i28.i = select i1 %i.fi, i64 %i.fj, i64 %i.fh
  %i.fk = icmp sgt i64 %spec.select.i.i.i.i.i28.i, -1 ; 2 uses
  %i.fl = getelementptr inbounds i8, ptr %.sroa.43.129.i74, i64 -16
  %.sroa.01.0.i29.i78 = select i1 %i.fk, ptr %2, ptr %i.fl
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i29.i78, i64 %i.fc
  %i.fn = ptrtoint ptr %.val19.i77 to i64
  store i64 %i.fn, ptr %i.fm, align 8, !alias.scope !522, !noalias !536
  %i.fo = zext i1 %i.fk to i64
  %i.fp = add i64 %i.fc, %i.fo                    ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i72, i64 16
  %.val17.i79 = load ptr, ptr %i.fq, align 8, !alias.scope !519, !noalias !522, !nonnull !8, !align !183, !noundef !8 ; 3 uses
  %i.fr = getelementptr i8, ptr %.val17.i79, i64 8
  %.val2.i.i.i32.i = load ptr, ptr %i.fr, align 8, !noalias !524, !nonnull !8, !noundef !8
  %i.fs = getelementptr i8, ptr %.val17.i79, i64 16
  %.val3.i.i.i33.i = load i64, ptr %i.fs, align 8, !noalias !524, !noundef !8 ; 2 uses
  %spec.store.select.i.i.i.i.i34.i = call i64 @llvm.umin.i64(i64 %.val1.i.i.i.i, i64 %.val3.i.i.i33.i)
  %i.ft = call i32 @memcmp(ptr nonnull readonly %.val.i.i.i.i, ptr nonnull readonly %.val2.i.i.i32.i, i64 %spec.store.select.i.i.i.i.i34.i), !alias.scope !539, !noalias !524 ; 2 uses
  %i.fu = sext i32 %i.ft to i64
  %i.fv = icmp eq i32 %i.ft, 0
  %i.fw = sub i64 %.val1.i.i.i.i, %.val3.i.i.i33.i
  %spec.select.i.i.i.i.i35.i = select i1 %i.fv, i64 %i.fw, i64 %i.fu
  %i.fx = icmp sgt i64 %spec.select.i.i.i.i.i35.i, -1 ; 2 uses
  %i.fy = getelementptr inbounds i8, ptr %.sroa.43.129.i74, i64 -24
  %.sroa.01.0.i36.i80 = select i1 %i.fx, ptr %2, ptr %i.fy
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i36.i80, i64 %i.fp
  %i.ga = ptrtoint ptr %.val17.i79 to i64
  store i64 %i.ga, ptr %i.fz, align 8, !alias.scope !522, !noalias !543
  %i.gb = zext i1 %i.fx to i64
  %i.gc = add i64 %i.fp, %i.gb                    ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i72, i64 24
  %.val15.i81 = load ptr, ptr %i.gd, align 8, !alias.scope !519, !noalias !522, !nonnull !8, !align !183, !noundef !8 ; 3 uses
  %i.ge = getelementptr i8, ptr %.val15.i81, i64 8
  %.val2.i.i.i39.i = load ptr, ptr %i.ge, align 8, !noalias !524, !nonnull !8, !noundef !8
  %i.gf = getelementptr i8, ptr %.val15.i81, i64 16
  %.val3.i.i.i40.i = load i64, ptr %i.gf, align 8, !noalias !524, !noundef !8 ; 2 uses
  %spec.store.select.i.i.i.i.i41.i = call i64 @llvm.umin.i64(i64 %.val1.i.i.i.i, i64 %.val3.i.i.i40.i)
  %i.gg = call i32 @memcmp(ptr nonnull readonly %.val.i.i.i.i, ptr nonnull readonly %.val2.i.i.i39.i, i64 %spec.store.select.i.i.i.i.i41.i), !alias.scope !546, !noalias !524 ; 2 uses
  %i.gh = sext i32 %i.gg to i64
  %i.gi = icmp eq i32 %i.gg, 0
  %i.gj = sub i64 %.val1.i.i.i.i, %.val3.i.i.i40.i
  %spec.select.i.i.i.i.i42.i = select i1 %i.gi, i64 %i.gj, i64 %i.gh
  %i.gk = icmp sgt i64 %spec.select.i.i.i.i.i42.i, -1 ; 2 uses
  %i.gl = getelementptr inbounds i8, ptr %.sroa.43.129.i74, i64 -32 ; 3 uses
  %.sroa.01.0.i43.i82 = select i1 %i.gk, ptr %2, ptr %i.gl
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i43.i82, i64 %i.gc
  %i.gn = ptrtoint ptr %.val15.i81 to i64
  store i64 %i.gn, ptr %i.gm, align 8, !alias.scope !522, !noalias !550
  %i.go = zext i1 %i.gk to i64
  %i.gp = add i64 %i.gc, %i.go                    ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i72, i64 32 ; 3 uses
  %i.gr = icmp ult ptr %i.gq, %i.en
  br i1 %i.gr, label %bb.u, label %._crit_edge.i51

._crit_edge.i51:                                  ; preds = %bb.u, %bb.t
  %.sroa.43.1.lcssa.i52 = phi ptr [ %.sroa.43.0.i47, %bb.t ], [ %i.gl, %bb.u ] ; 2 uses
  %.sroa.27.1.lcssa.i53 = phi i64 [ %.sroa.27.0.i48, %bb.t ], [ %i.gp, %bb.u ] ; 2 uses
  %.sroa.9.1.lcssa.i54 = phi ptr [ %.sroa.9.0.i49, %bb.t ], [ %i.gq, %bb.u ] ; 3 uses
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph126, i64 %.sroa.0.0.i50 ; 2 uses
  %i.gt = icmp ult ptr %.sroa.9.1.lcssa.i54, %i.gs
  br i1 %i.gt, label %.lr.ph38.i63.preheader, label %._crit_edge39.i55

.lr.ph38.i63.preheader:                           ; preds = %._crit_edge.i51
  %.val14.i68 = load ptr, ptr %i.ek, align 8, !alias.scope !519, !noalias !522, !nonnull !8, !align !183, !noundef !8 ; 2 uses
  %i.gu = getelementptr i8, ptr %.val14.i68, i64 8
  %.val.i.i.i44.i = load ptr, ptr %i.gu, align 8, !noalias !524, !nonnull !8, !noundef !8
  %i.gv = getelementptr i8, ptr %.val14.i68, i64 16
  %.val1.i.i.i45.i = load i64, ptr %i.gv, align 8, !noalias !524, !noundef !8 ; 2 uses
  br label %.lr.ph38.i63

._crit_edge39.i55:                                ; preds = %.lr.ph38.i63, %._crit_edge.i51
  %.sroa.43.2.lcssa.i56 = phi ptr [ %.sroa.43.1.lcssa.i52, %._crit_edge.i51 ], [ %i.he, %.lr.ph38.i63 ]
  %.sroa.27.2.lcssa.i57 = phi i64 [ %.sroa.27.1.lcssa.i53, %._crit_edge.i51 ], [ %i.hi, %.lr.ph38.i63 ] ; 9 uses
  %.sroa.9.2.lcssa.i58 = phi ptr [ %.sroa.9.1.lcssa.i54, %._crit_edge.i51 ], [ %i.hj, %.lr.ph38.i63 ] ; 2 uses
  %i.gw = icmp eq i64 %.sroa.0.0.i50, %.sroa.16.0119270
  br i1 %i.gw, label %bb.w, label %bb.v

.lr.ph38.i63:                                     ; preds = %.lr.ph38.i63.preheader, %.lr.ph38.i63
  %.sroa.9.236.i64 = phi ptr [ %i.hj, %.lr.ph38.i63 ], [ %.sroa.9.1.lcssa.i54, %.lr.ph38.i63.preheader ] ; 2 uses
  %.sroa.27.235.i65 = phi i64 [ %i.hi, %.lr.ph38.i63 ], [ %.sroa.27.1.lcssa.i53, %.lr.ph38.i63.preheader ] ; 2 uses
  %.sroa.43.234.i66 = phi ptr [ %i.he, %.lr.ph38.i63 ], [ %.sroa.43.1.lcssa.i52, %.lr.ph38.i63.preheader ]
  %.val.i67 = load ptr, ptr %.sroa.9.236.i64, align 8, !alias.scope !519, !noalias !522, !nonnull !8, !align !183, !noundef !8 ; 3 uses
  %i.gx = getelementptr i8, ptr %.val.i67, i64 8
  %.val2.i.i.i46.i = load ptr, ptr %i.gx, align 8, !noalias !524, !nonnull !8, !noundef !8
  %i.gy = getelementptr i8, ptr %.val.i67, i64 16
  %.val3.i.i.i47.i = load i64, ptr %i.gy, align 8, !noalias !524, !noundef !8 ; 2 uses
  %spec.store.select.i.i.i.i.i48.i = call i64 @llvm.umin.i64(i64 %.val1.i.i.i45.i, i64 %.val3.i.i.i47.i)
  %i.gz = call i32 @memcmp(ptr nonnull readonly %.val.i.i.i44.i, ptr nonnull readonly %.val2.i.i.i46.i, i64 %spec.store.select.i.i.i.i.i48.i), !alias.scope !553, !noalias !524 ; 2 uses
  %i.ha = sext i32 %i.gz to i64
  %i.hb = icmp eq i32 %i.gz, 0
  %i.hc = sub i64 %.val1.i.i.i45.i, %.val3.i.i.i47.i
  %spec.select.i.i.i.i.i49.i = select i1 %i.hb, i64 %i.hc, i64 %i.ha
  %i.hd = icmp sgt i64 %spec.select.i.i.i.i.i49.i, -1 ; 2 uses
  %i.he = getelementptr inbounds i8, ptr %.sroa.43.234.i66, i64 -8 ; 3 uses
  %.sroa.01.0.i50.i69 = select i1 %i.hd, ptr %2, ptr %i.he
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %.sroa.01.0.i50.i69, i64 %.sroa.27.235.i65
  %i.hg = ptrtoint ptr %.val.i67 to i64
  store i64 %i.hg, ptr %i.hf, align 8, !alias.scope !522, !noalias !557
  %i.hh = zext i1 %i.hd to i64
  %i.hi = add i64 %.sroa.27.235.i65, %i.hh        ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %.sroa.9.236.i64, i64 8 ; 3 uses
  %i.hk = icmp ult ptr %i.hj, %i.gs
  br i1 %i.hk, label %.lr.ph38.i63, label %._crit_edge39.i55

bb.v:                                             ; preds = %._crit_edge39.i55
  %i.hl = getelementptr inbounds i8, ptr %.sroa.43.2.lcssa.i56, i64 -8
  %i.hm = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.sroa.27.2.lcssa.i57
  %i.hn = load i64, ptr %.sroa.9.2.lcssa.i58, align 8, !alias.scope !519, !noalias !560
  store i64 %i.hn, ptr %i.hm, align 8, !alias.scope !522, !noalias !563
  %i.ho = add i64 %.sroa.27.2.lcssa.i57, 1
  %i.hp = getelementptr inbounds nuw i8, ptr %.sroa.9.2.lcssa.i58, i64 8
  br label %bb.t

bb.w:                                             ; preds = %._crit_edge39.i55
  %i.hq = shl nuw nsw i64 %.sroa.27.2.lcssa.i57, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph126, ptr nonnull align 8 %2, i64 %i.hq, i1 false), !alias.scope !524
  %i.hr = sub i64 %.sroa.16.0119270, %.sroa.27.2.lcssa.i57 ; 7 uses
  %.not47.i59 = icmp eq i64 %.sroa.16.0119270, %.sroa.27.2.lcssa.i57
  %i.hs = getelementptr [8 x i8], ptr %.sroa.0.0.ph126, i64 %.sroa.27.2.lcssa.i57 ; 3 uses
  br i1 %.not47.i59, label %.outer.thread, label %.lr.ph45.i60

.lr.ph45.i60:                                     ; preds = %bb.w
  %min.iters.check = icmp ult i64 %i.hr, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph45.i60
  %n.vec = and i64 %i.hr, -4                      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ht = xor i64 %index, -1
  %i.hu = getelementptr [8 x i8], ptr %i.el, i64 %i.ht ; 2 uses
  %i.hv = getelementptr [8 x i8], ptr %i.hs, i64 %index ; 2 uses
  %i.hw = getelementptr i8, ptr %i.hu, i64 -8
  %i.hx = getelementptr i8, ptr %i.hu, i64 -24
  %wide.load = load <2 x i64>, ptr %i.hw, align 8, !alias.scope !522, !noalias !519
  %wide.load276 = load <2 x i64>, ptr %i.hx, align 8, !alias.scope !522, !noalias !519
  %reverse = shufflevector <2 x i64> %wide.load, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %reverse277 = shufflevector <2 x i64> %wide.load276, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.hy = getelementptr i8, ptr %i.hv, i64 16
  store <2 x i64> %reverse, ptr %i.hv, align 8, !alias.scope !519, !noalias !522
  store <2 x i64> %reverse277, ptr %i.hy, align 8, !alias.scope !519, !noalias !522
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.hz = icmp eq i64 %index.next, %n.vec
  br i1 %i.hz, label %middle.block, label %vector.body, !llvm.loop !564

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.hr, %n.vec
  br i1 %cmp.n, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort16stable_partitionRNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringNCINvB2_9quicksortB1d_NvYB1d_NtNtBa_3cmp10PartialOrd2ltE0ECskuiImRAV2ip_9elfshaker.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph45.i60, %middle.block
  %.sroa.07.043.i61.ph = phi i64 [ 0, %.lr.ph45.i60 ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.sroa.07.043.i61 = phi i64 [ %i.ia, %scalar.ph ], [ %.sroa.07.043.i61.ph, %scalar.ph.preheader ] ; 3 uses
  %i.ia = add nuw i64 %.sroa.07.043.i61, 1        ; 2 uses
  %i.ib = xor i64 %.sroa.07.043.i61, -1
  %i.ic = getelementptr [8 x i8], ptr %i.el, i64 %i.ib
  %i.id = getelementptr [8 x i8], ptr %i.hs, i64 %.sroa.07.043.i61
  %i.ie = load i64, ptr %i.ic, align 8, !alias.scope !522, !noalias !519
  store i64 %i.ie, ptr %i.id, align 8, !alias.scope !519, !noalias !522
  %exitcond.not.i62 = icmp eq i64 %i.ia, %i.hr
  br i1 %exitcond.not.i62, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort16stable_partitionRNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringNCINvB2_9quicksortB1d_NvYB1d_NtNtBa_3cmp10PartialOrd2ltE0ECskuiImRAV2ip_9elfshaker.exit, label %scalar.ph, !llvm.loop !565

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort16stable_partitionRNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringNCINvB2_9quicksortB1d_NvYB1d_NtNtBa_3cmp10PartialOrd2ltE0ECskuiImRAV2ip_9elfshaker.exit: ; preds = %scalar.ph, %middle.block
  %i.if = icmp ugt i64 %.sroa.27.2.lcssa.i57, %.sroa.16.0119270
  br i1 %i.if, label %bb.x, label %.outer, !prof !324

.outer.thread:                                    ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.outer._crit_edge

.outer:                                           ; preds = %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort16stable_partitionRNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringNCINvB2_9quicksortB1d_NvYB1d_NtNtBa_3cmp10PartialOrd2ltE0ECskuiImRAV2ip_9elfshaker.exit
  %i.ig = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.ph126, i64 %.sroa.27.2.lcssa.i57 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ih = icmp ult i64 %i.hr, 33
  br i1 %i.ih, label %.outer._crit_edge, label %.lr.ph

bb.x:                                             ; preds = %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort16stable_partitionRNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringNCINvB2_9quicksortB1d_NvYB1d_NtNtBa_3cmp10PartialOrd2ltE0ECskuiImRAV2ip_9elfshaker.exit
  call void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef %.sroa.27.2.lcssa.i57, i64 noundef %.sroa.16.0119270, i64 noundef %.sroa.16.0119270, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #30
  unreachable
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortTmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataENCINvMNtCs1xwejQucwHj_5alloc5sliceSB15_7sort_byNCINvXs1o_NtNtNtB26_11collections5btree3mapINtB2T_8BTreeMapmB17_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB3T_8adapters3map3MapINtNtB4Q_9enumerate9EnumerateINtNtNtB26_3vec9into_iter8IntoIterB17_EENCINvXsf_B19_NtB19_14VisitPackIndexNtNtCs6LlcditsbhK_5serde2de7Visitor9visit_seqINtNtCs974quTetXso_9rmp_serde6decode9SeqAccessINtB7F_10ReadReaderINtNtNtNtB26_2io8buffered9bufreader9BufReaderNtNtCsaL1QbXo9JQH_3std2fs4FileEENtNtB7H_6config13DefaultConfigEE0EE0E0EB1b_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 384307168202282326) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, i32 noundef %4, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable_or_null(24) %5, ptr noalias nofree noundef align 8 dereferenceable(8) %6) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = icmp samesign ult i64 %1, 33
  br i1 %i.b, label %.outer._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.outer
  %.sroa.0.0.ph96 = phi ptr [ %i.cg, %.outer ], [ %0, %bb.a ] ; 19 uses
  %.sroa.16.0.ph95 = phi i64 [ %i.br, %.outer ], [ %1, %bb.a ] ; 2 uses
  %.sroa.025.0.ph94 = phi i32 [ %i.f, %.outer ], [ %4, %bb.a ] ; 2 uses
  %.sroa.028.0.ph93 = phi ptr [ null, %.outer ], [ %5, %bb.a ] ; 2 uses
  %i.c = ptrtoint ptr %.sroa.0.0.ph96 to i64
  %.not = icmp eq ptr %.sroa.028.0.ph93, null
  %i.d = icmp eq i32 %.sroa.025.0.ph94, 0
  br i1 %i.d, label %.lr.ph._crit_edge, label %.lr.ph219

bb.b:                                             ; preds = %_RNvMNtCs3oUPovFnLWP_4core5sliceSTmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataE12split_at_mutBA_.exit
  %i.e = icmp eq i32 %i.f, 0
  br i1 %i.e, label %.lr.ph._crit_edge, label %.lr.ph219

.outer._crit_edge:                                ; preds = %.outer, %_RNvMNtCs3oUPovFnLWP_4core5sliceSTmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataE12split_at_mutBA_.exit, %.outer.thread, %bb.a
  %.sroa.0.0.ph.lcssa87 = phi ptr [ %i.bs, %.outer.thread ], [ %0, %bb.a ], [ %.sroa.0.0.ph96, %_RNvMNtCs3oUPovFnLWP_4core5sliceSTmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataE12split_at_mutBA_.exit ], [ %i.cg, %.outer ]
  %.sroa.16.0.lcssa = phi i64 [ 0, %.outer.thread ], [ %1, %bb.a ], [ %.sroa.11.1.lcssa.i, %_RNvMNtCs3oUPovFnLWP_4core5sliceSTmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataE12split_at_mutBA_.exit ], [ %i.br, %.outer ]
  call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchTmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataENCINvMNtCs1xwejQucwHj_5alloc5sliceSB1s_7sort_byNCINvXs1o_NtNtNtB2t_11collections5btree3mapINtB3g_8BTreeMapmB1u_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1s_E9from_iterINtNtNtB4g_8adapters3map3MapINtNtB5d_9enumerate9EnumerateINtNtNtB2t_3vec9into_iter8IntoIterB1u_EENCINvXsf_B1w_NtB1w_14VisitPackIndexNtNtCs6LlcditsbhK_5serde2de7Visitor9visit_seqINtNtCs974quTetXso_9rmp_serde6decode9SeqAccessINtB82_10ReadReaderINtNtNtNtB2t_2io8buffered9bufreader9BufReaderNtNtCsaL1QbXo9JQH_3std2fs4FileEENtNtB84_6config13DefaultConfigEE0EE0E0EB1y_(ptr noalias nofree noundef nonnull align 8 %.sroa.0.0.ph.lcssa87, i64 noundef range(i64 0, 33) %.sroa.16.0.lcssa, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %6)
  br label %bb.d

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %bb.b
  %.sroa.16.089.lcssa = phi i64 [ %.sroa.11.1.lcssa.i, %bb.b ], [ %.sroa.16.0.ph95, %.lr.ph ]
  call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift4sortTmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataENCINvMNtCs1xwejQucwHj_5alloc5sliceSBW_7sort_byNCINvXs1o_NtNtNtB1X_11collections5btree3mapINtB2J_8BTreeMapmBY_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBW_E9from_iterINtNtNtB3I_8adapters3map3MapINtNtB4E_9enumerate9EnumerateINtNtNtB1X_3vec9into_iter8IntoIterBY_EENCINvXsf_B10_NtB10_14VisitPackIndexNtNtCs6LlcditsbhK_5serde2de7Visitor9visit_seqINtNtCs974quTetXso_9rmp_serde6decode9SeqAccessINtB7s_10ReadReaderINtNtNtNtB1X_2io8buffered9bufreader9BufReaderNtNtCsaL1QbXo9JQH_3std2fs4FileEENtNtB7u_6config13DefaultConfigEE0EE0E0EB12_(ptr noalias nofree noundef nonnull align 8 %.sroa.0.0.ph96, i64 noundef %.sroa.16.089.lcssa, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef %3, i1 noundef zeroext true, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %6)
  br label %bb.d

.lr.ph219:                                        ; preds = %.lr.ph, %bb.b
  %.sroa.025.088218 = phi i32 [ %i.f, %bb.b ], [ %.sroa.025.0.ph94, %.lr.ph ]
  %.sroa.16.089217 = phi i64 [ %.sroa.11.1.lcssa.i, %bb.b ], [ %.sroa.16.0.ph95, %.lr.ph ] ; 21 uses
  %i.f = add i32 %.sroa.025.088218, -1            ; 4 uses
  %i.g = lshr i64 %.sroa.16.089217, 3             ; 3 uses
  %.idx.i = mul nuw nsw i64 %i.g, 96
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph96, i64 %.idx.i ; 3 uses
  %.idx2.i = mul nuw nsw i64 %i.g, 168
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph96, i64 %.idx2.i ; 3 uses
  %i.j = icmp samesign ult i64 %.sroa.16.089217, 64
  br i1 %i.j, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared5pivot7median3TmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataENCINvMNtCs1xwejQucwHj_5alloc5sliceSBZ_7sort_byNCINvXs1o_NtNtNtB20_11collections5btree3mapINtB2M_8BTreeMapmB11_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBZ_E9from_iterINtNtNtB3M_8adapters3map3MapINtNtB4I_9enumerate9EnumerateINtNtNtB20_3vec9into_iter8IntoIterB11_EENCINvXsf_B13_NtB13_14VisitPackIndexNtNtCs6LlcditsbhK_5serde2de7Visitor9visit_seqINtNtCs974quTetXso_9rmp_serde6decode9SeqAccessINtB7x_10ReadReaderINtNtNtNtB20_2io8buffered9bufreader9BufReaderNtNtCsaL1QbXo9JQH_3std2fs4FileEENtNtB7z_6config13DefaultConfigEE0EE0E0EB15_.exit.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph219
  %i.k = call fastcc noundef ptr @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared5pivot11median3_recTmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataENCINvMNtCs1xwejQucwHj_5alloc5sliceSB14_7sort_byNCINvXs1o_NtNtNtB25_11collections5btree3mapINtB2S_8BTreeMapmB16_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB14_E9from_iterINtNtNtB3S_8adapters3map3MapINtNtB4P_9enumerate9EnumerateINtNtNtB25_3vec9into_iter8IntoIterB16_EENCINvXsf_B18_NtB18_14VisitPackIndexNtNtCs6LlcditsbhK_5serde2de7Visitor9visit_seqINtNtCs974quTetXso_9rmp_serde6decode9SeqAccessINtB7E_10ReadReaderINtNtNtNtB25_2io8buffered9bufreader9BufReaderNtNtCsaL1QbXo9JQH_3std2fs4FileEENtNtB7G_6config13DefaultConfigEE0EE0E0EB1a_(ptr noundef nonnull readonly align 8 %.sroa.0.0.ph96, ptr noundef readonly %i.h, ptr noundef readonly %i.i, i64 noundef %i.g)
  br label %bb.e

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared5pivot7median3TmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataENCINvMNtCs1xwejQucwHj_5alloc5sliceSBZ_7sort_byNCINvXs1o_NtNtNtB20_11collections5btree3mapINtB2M_8BTreeMapmB11_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBZ_E9from_iterINtNtNtB3M_8adapters3map3MapINtNtB4I_9enumerate9EnumerateINtNtNtB20_3vec9into_iter8IntoIterB11_EENCINvXsf_B13_NtB13_14VisitPackIndexNtNtCs6LlcditsbhK_5serde2de7Visitor9visit_seqINtNtCs974quTetXso_9rmp_serde6decode9SeqAccessINtB7x_10ReadReaderINtNtNtNtB20_2io8buffered9bufreader9BufReaderNtNtCsaL1QbXo9JQH_3std2fs4FileEENtNtB7z_6config13DefaultConfigEE0EE0E0EB15_.exit.i: ; preds = %.lr.ph219
  %.val6.i = load i32, ptr %.sroa.0.0.ph96, align 4, !alias.scope !566, !noundef !8 ; 2 uses
  %.val7.i = load i32, ptr %i.h, align 4, !alias.scope !566, !noundef !8 ; 2 uses
  %i.l = icmp ult i32 %.val6.i, %.val7.i          ; 2 uses
  %.val5.i = load i32, ptr %i.i, align 4, !alias.scope !566, !noundef !8 ; 2 uses
  %i.m = icmp ult i32 %.val6.i, %.val5.i
  %i.n = xor i1 %i.l, %i.m
  %i.o = icmp ult i32 %.val7.i, %.val5.i
  %i.p = xor i1 %i.l, %i.o
  %..i.i = select i1 %i.p, ptr %i.i, ptr %i.h
  %.sroa.0.0.i.i = select i1 %i.n, ptr %.sroa.0.0.ph96, ptr %..i.i
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph._crit_edge, %.outer._crit_edge
  ret void

bb.e:                                             ; preds = %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared5pivot7median3TmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataENCINvMNtCs1xwejQucwHj_5alloc5sliceSBZ_7sort_byNCINvXs1o_NtNtNtB20_11collections5btree3mapINtB2M_8BTreeMapmB11_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBZ_E9from_iterINtNtNtB3M_8adapters3map3MapINtNtB4I_9enumerate9EnumerateINtNtNtB20_3vec9into_iter8IntoIterB11_EENCINvXsf_B13_NtB13_14VisitPackIndexNtNtCs6LlcditsbhK_5serde2de7Visitor9visit_seqINtNtCs974quTetXso_9rmp_serde6decode9SeqAccessINtB7x_10ReadReaderINtNtNtNtB20_2io8buffered9bufreader9BufReaderNtNtCsaL1QbXo9JQH_3std2fs4FileEENtNtB7z_6config13DefaultConfigEE0EE0E0EB15_.exit.i, %bb.c
  %.sroa.0.0.i.sink.i = phi ptr [ %.sroa.0.0.i.i, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared5pivot7median3TmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataENCINvMNtCs1xwejQucwHj_5alloc5sliceSBZ_7sort_byNCINvXs1o_NtNtNtB20_11collections5btree3mapINtB2M_8BTreeMapmB11_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBZ_E9from_iterINtNtNtB3M_8adapters3map3MapINtNtB4I_9enumerate9EnumerateINtNtNtB20_3vec9into_iter8IntoIterB11_EENCINvXsf_B13_NtB13_14VisitPackIndexNtNtCs6LlcditsbhK_5serde2de7Visitor9visit_seqINtNtCs974quTetXso_9rmp_serde6decode9SeqAccessINtB7x_10ReadReaderINtNtNtNtB20_2io8buffered9bufreader9BufReaderNtNtCsaL1QbXo9JQH_3std2fs4FileEENtNtB7z_6config13DefaultConfigEE0EE0E0EB15_.exit.i ], [ %i.k, %bb.c ]
  %i.q = ptrtoint ptr %.sroa.0.0.i.sink.i to i64
  %i.r = sub nuw i64 %i.q, %i.c                   ; 2 uses
  %.sroa.0.0.i = udiv exact i64 %i.r, 24          ; 3 uses
  %i.s = icmp samesign ult i64 %.sroa.0.0.i, %.sroa.16.089217
  call void @llvm.assume(i1 %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph96, i64 %i.r ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 24, i1 false)
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.sroa.028.0.val = load i32, ptr %.sroa.028.0.ph93, align 8, !noundef !8
  %.val = load i32, ptr %i.t, align 8, !noundef !8
  %i.u = icmp ult i32 %.sroa.028.0.val, %.val
  br i1 %i.u, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.e, %bb.f
  call void @llvm.experimental.noalias.scope.decl(metadata !569)
  %.not63 = icmp samesign ult i64 %3, %.sroa.16.089217
  br i1 %.not63, label %bb.i, label %bb.h, !prof !301

bb.h:                                             ; preds = %bb.g
  %i.v = getelementptr [24 x i8], ptr %2, i64 %.sroa.16.089217 ; 4 uses
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  call void @llvm.trap()
  unreachable

bb.j:                                             ; preds = %bb.l, %bb.h
  %.sroa.19.0.i = phi ptr [ %i.v, %bb.h ], [ %i.ag, %bb.l ] ; 2 uses
  %.sroa.11.0.i = phi i64 [ 0, %bb.h ], [ %.sroa.11.1.lcssa.i, %bb.l ] ; 2 uses
  %.sroa.5.0.i = phi ptr [ %.sroa.0.0.ph96, %bb.h ], [ %i.ai, %bb.l ] ; 3 uses
  %.sroa.0.0.i37 = phi i64 [ %.sroa.0.0.i, %bb.h ], [ %.sroa.16.089217, %bb.l ] ; 2 uses
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.ph96, i64 %.sroa.0.0.i37 ; 2 uses
  %i.x = icmp ult ptr %.sroa.5.0.i, %i.w
  br i1 %i.x, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.j
  %.val12.i = load i32, ptr %i.t, align 8, !alias.scope !572, !noalias !569, !noundef !8
  br label %bb.k

._crit_edge.i:                                    ; preds = %bb.k, %bb.j
  %.sroa.19.1.lcssa.i = phi ptr [ %.sroa.19.0.i, %bb.j ], [ %i.aa, %bb.k ]
  %.sroa.11.1.lcssa.i = phi i64 [ %.sroa.11.0.i, %bb.j ], [ %i.ad, %bb.k ] ; 14 uses
  %.sroa.5.1.lcssa.i = phi ptr [ %.sroa.5.0.i, %bb.j ], [ %i.ae, %bb.k ] ; 2 uses
  %i.y = icmp eq i64 %.sroa.0.0.i37, %.sroa.16.089217
  br i1 %i.y, label %bb.m, label %bb.l

bb.k:                                             ; preds = %bb.k, %.lr.ph.i
  %.sroa.5.111.i = phi ptr [ %.sroa.5.0.i, %.lr.ph.i ], [ %i.ae, %bb.k ] ; 3 uses
  %.sroa.11.110.i = phi i64 [ %.sroa.11.0.i, %.lr.ph.i ], [ %i.ad, %bb.k ] ; 2 uses
  %.sroa.19.19.i = phi ptr [ %.sroa.19.0.i, %.lr.ph.i ], [ %i.aa, %bb.k ]
  %.val.i = load i32, ptr %.sroa.5.111.i, align 4, !alias.scope !572, !noalias !569, !noundef !8
  %i.z = icmp ult i32 %.val.i, %.val12.i          ; 2 uses
  %i.aa = getelementptr inbounds i8, ptr %.sroa.19.19.i, i64 -24 ; 3 uses
  %.sroa.01.0.i.i = select i1 %i.z, ptr %2, ptr %i.aa
  %i.ab = getelementptr inbounds nuw [24 x i8], ptr %.sroa.01.0.i.i, i64 %.sroa.11.110.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.111.i, i64 24, i1 false), !alias.scope !574, !noalias !575
  %i.ac = zext i1 %i.z to i64
  %i.ad = add i64 %.sroa.11.110.i, %i.ac          ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.5.111.i, i64 24 ; 3 uses
  %i.af = icmp ult ptr %i.ae, %i.w
  br i1 %i.af, label %bb.k, label %._crit_edge.i

bb.l:                                             ; preds = %._crit_edge.i
  %i.ag = getelementptr inbounds i8, ptr %.sroa.19.1.lcssa.i, i64 -24 ; 2 uses
  %i.ah = getelementptr inbounds nuw [24 x i8], ptr %i.ag, i64 %.sroa.11.1.lcssa.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.1.lcssa.i, i64 24, i1 false), !alias.scope !574, !noalias !578
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.5.1.lcssa.i, i64 24
  br label %bb.j

bb.m:                                             ; preds = %._crit_edge.i
  %i.aj = mul nuw nsw i64 %.sroa.11.1.lcssa.i, 24
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph96, ptr nonnull align 8 %2, i64 %i.aj, i1 false), !alias.scope !574
  %i.ak = sub i64 %.sroa.16.089217, %.sroa.11.1.lcssa.i ; 4 uses
  %.not18.i = icmp eq i64 %.sroa.16.089217, %.sroa.11.1.lcssa.i
  br i1 %.not18.i, label %.loopexit, label %.lr.ph16.i

.lr.ph16.i:                                       ; preds = %bb.m
  %i.al = getelementptr [24 x i8], ptr %.sroa.0.0.ph96, i64 %.sroa.11.1.lcssa.i ; 3 uses
  %.neg = add i64 %.sroa.11.1.lcssa.i, 1
  %xtraiter = and i64 %i.ak, 1
  %i.am = icmp eq i64 %.sroa.16.089217, %.neg
  br i1 %i.am, label %.epil.preheader, label %.lr.ph16.i.new

.lr.ph16.i.new:                                   ; preds = %.lr.ph16.i
  %unroll_iter = and i64 %i.ak, -2
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %.lr.ph16.i.new
  %.sroa.06.014.i = phi i64 [ 0, %.lr.ph16.i.new ], [ %i.aq, %bb.n ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph16.i.new ], [ %niter.next.1, %bb.n ]
  %i.an = xor i64 %.sroa.06.014.i, -1
  %i.ao = getelementptr [24 x i8], ptr %i.v, i64 %i.an
  %i.ap = getelementptr [24 x i8], ptr %i.al, i64 %.sroa.06.014.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, ptr noundef nonnull align 8 dereferenceable(24) %i.ao, i64 24, i1 false), !alias.scope !574
  %i.aq = add nuw i64 %.sroa.06.014.i, 2          ; 2 uses
  %i.ar = xor i64 %.sroa.06.014.i, -2
  %i.as = getelementptr [24 x i8], ptr %i.v, i64 %i.ar
  %i.at = getelementptr [24 x i8], ptr %i.al, i64 %.sroa.06.014.i
  %i.au = getelementptr i8, ptr %i.at, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.au, ptr noundef nonnull align 8 dereferenceable(24) %i.as, i64 24, i1 false), !alias.scope !574
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.n

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.n
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph16.i
  %.sroa.06.014.i.epil.init = phi i64 [ 0, %.lr.ph16.i ], [ %i.aq, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod280 = trunc i64 %i.ak to i1
  call void @llvm.assume(i1 %lcmp.mod280)
  %i.av = xor i64 %.sroa.06.014.i.epil.init, -1
  %i.aw = getelementptr [24 x i8], ptr %i.v, i64 %i.av
  %i.ax = getelementptr [24 x i8], ptr %i.al, i64 %.sroa.06.014.i.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ax, ptr noundef nonnull align 8 dereferenceable(24) %i.aw, i64 24, i1 false), !alias.scope !574
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.m
  %i.ay = icmp eq i64 %.sroa.11.1.lcssa.i, 0
  br i1 %i.ay, label %.thread, label %bb.o

bb.o:                                             ; preds = %.loopexit
  %.not.i38 = icmp ugt i64 %.sroa.11.1.lcssa.i, %.sroa.16.089217
  br i1 %.not.i38, label %bb.p, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSTmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataE12split_at_mutBA_.exit, !prof !324

bb.p:                                             ; preds = %bb.o
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @9, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #30, !noalias !581
  unreachable

_RNvMNtCs3oUPovFnLWP_4core5sliceSTmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataE12split_at_mutBA_.exit: ; preds = %bb.o
  %i.az = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.ph96, i64 %.sroa.11.1.lcssa.i
  call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortTmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataENCINvMNtCs1xwejQucwHj_5alloc5sliceSB15_7sort_byNCINvXs1o_NtNtNtB26_11collections5btree3mapINtB2T_8BTreeMapmB17_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB3T_8adapters3map3MapINtNtB4Q_9enumerate9EnumerateINtNtNtB26_3vec9into_iter8IntoIterB17_EENCINvXsf_B19_NtB19_14VisitPackIndexNtNtCs6LlcditsbhK_5serde2de7Visitor9visit_seqINtNtCs974quTetXso_9rmp_serde6decode9SeqAccessINtB7F_10ReadReaderINtNtNtNtB26_2io8buffered9bufreader9BufReaderNtNtCsaL1QbXo9JQH_3std2fs4FileEENtNtB7H_6config13DefaultConfigEE0EE0E0EB1b_(ptr noalias nofree noundef nonnull align 8 %i.az, i64 noundef %i.ak, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %6) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ba = icmp ult i64 %.sroa.11.1.lcssa.i, 33
  br i1 %i.ba, label %.outer._crit_edge, label %bb.b

.thread:                                          ; preds = %bb.f, %.loopexit
  call void @llvm.experimental.noalias.scope.decl(metadata !585)
  %.not64 = icmp samesign ult i64 %3, %.sroa.16.089217
  br i1 %.not64, label %bb.r, label %bb.q, !prof !301

bb.q:                                             ; preds = %.thread
  %i.bb = getelementptr [24 x i8], ptr %2, i64 %.sroa.16.089217 ; 4 uses
  br label %bb.s

bb.r:                                             ; preds = %.thread
  call void @llvm.trap()
  unreachable

bb.s:                                             ; preds = %bb.u, %bb.q
  %.sroa.19.0.i41 = phi ptr [ %i.bb, %bb.q ], [ %i.bm, %bb.u ] ; 2 uses
  %.sroa.11.0.i42 = phi i64 [ 0, %bb.q ], [ %i.bo, %bb.u ] ; 2 uses
  %.sroa.5.0.i43 = phi ptr [ %.sroa.0.0.ph96, %bb.q ], [ %i.bp, %bb.u ] ; 3 uses
  %.sroa.0.0.i44 = phi i64 [ %.sroa.0.0.i, %bb.q ], [ %.sroa.16.089217, %bb.u ] ; 2 uses
  %i.bc = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.ph96, i64 %.sroa.0.0.i44 ; 2 uses
  %i.bd = icmp ult ptr %.sroa.5.0.i43, %i.bc
  br i1 %i.bd, label %.lr.ph.i53, label %._crit_edge.i45

.lr.ph.i53:                                       ; preds = %bb.s
  %.val12.i54 = load i32, ptr %i.t, align 4, !alias.scope !588, !noalias !585, !noundef !8
  br label %bb.t

._crit_edge.i45:                                  ; preds = %bb.t, %bb.s
  %.sroa.19.1.lcssa.i46 = phi ptr [ %.sroa.19.0.i41, %bb.s ], [ %i.bg, %bb.t ]
  %.sroa.11.1.lcssa.i47 = phi i64 [ %.sroa.11.0.i42, %bb.s ], [ %i.bj, %bb.t ] ; 10 uses
  %.sroa.5.1.lcssa.i48 = phi ptr [ %.sroa.5.0.i43, %bb.s ], [ %i.bk, %bb.t ] ; 2 uses
  %i.be = icmp eq i64 %.sroa.0.0.i44, %.sroa.16.089217
  br i1 %i.be, label %bb.v, label %bb.u

bb.t:                                             ; preds = %bb.t, %.lr.ph.i53
  %.sroa.5.111.i55 = phi ptr [ %.sroa.5.0.i43, %.lr.ph.i53 ], [ %i.bk, %bb.t ] ; 3 uses
  %.sroa.11.110.i56 = phi i64 [ %.sroa.11.0.i42, %.lr.ph.i53 ], [ %i.bj, %bb.t ] ; 2 uses
  %.sroa.19.19.i57 = phi ptr [ %.sroa.19.0.i41, %.lr.ph.i53 ], [ %i.bg, %bb.t ]
  %.val.i58 = load i32, ptr %.sroa.5.111.i55, align 4, !alias.scope !588, !noalias !585, !noundef !8
  %i.bf = icmp uge i32 %.val12.i54, %.val.i58     ; 2 uses
  %i.bg = getelementptr inbounds i8, ptr %.sroa.19.19.i57, i64 -24 ; 3 uses
  %.sroa.01.0.i.i59 = select i1 %i.bf, ptr %2, ptr %i.bg
  %i.bh = getelementptr inbounds nuw [24 x i8], ptr %.sroa.01.0.i.i59, i64 %.sroa.11.110.i56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bh, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.111.i55, i64 24, i1 false), !alias.scope !590, !noalias !591
  %i.bi = zext i1 %i.bf to i64
  %i.bj = add i64 %.sroa.11.110.i56, %i.bi        ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.5.111.i55, i64 24 ; 3 uses
  %i.bl = icmp ult ptr %i.bk, %i.bc
  br i1 %i.bl, label %bb.t, label %._crit_edge.i45

bb.u:                                             ; preds = %._crit_edge.i45
  %i.bm = getelementptr inbounds i8, ptr %.sroa.19.1.lcssa.i46, i64 -24
  %i.bn = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %.sroa.11.1.lcssa.i47
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bn, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.1.lcssa.i48, i64 24, i1 false), !alias.scope !590, !noalias !594
  %i.bo = add i64 %.sroa.11.1.lcssa.i47, 1
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.5.1.lcssa.i48, i64 24
  br label %bb.s

bb.v:                                             ; preds = %._crit_edge.i45
  %i.bq = mul nuw nsw i64 %.sroa.11.1.lcssa.i47, 24
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph96, ptr nonnull align 8 %2, i64 %i.bq, i1 false), !alias.scope !590
  %i.br = sub i64 %.sroa.16.089217, %.sroa.11.1.lcssa.i47 ; 6 uses
  %.not18.i49 = icmp eq i64 %.sroa.16.089217, %.sroa.11.1.lcssa.i47
  %i.bs = getelementptr [24 x i8], ptr %.sroa.0.0.ph96, i64 %.sroa.11.1.lcssa.i47 ; 4 uses
  br i1 %.not18.i49, label %.outer.thread, label %.lr.ph16.i50.preheader

.lr.ph16.i50.preheader:                           ; preds = %bb.v
  %.neg292 = add i64 %.sroa.11.1.lcssa.i47, 1
  %xtraiter287 = and i64 %i.br, 1
  %i.bt = icmp eq i64 %.sroa.16.089217, %.neg292
  br i1 %i.bt, label %.lr.ph16.i50.epil.preheader, label %.lr.ph16.i50.preheader.new

.lr.ph16.i50.preheader.new:                       ; preds = %.lr.ph16.i50.preheader
  %unroll_iter290 = and i64 %i.br, -2
  br label %.lr.ph16.i50

.lr.ph16.i50:                                     ; preds = %.lr.ph16.i50, %.lr.ph16.i50.preheader.new
  %.sroa.06.014.i51 = phi i64 [ 0, %.lr.ph16.i50.preheader.new ], [ %i.bx, %.lr.ph16.i50 ] ; 5 uses
  %niter291 = phi i64 [ 0, %.lr.ph16.i50.preheader.new ], [ %niter291.next.1, %.lr.ph16.i50 ]
  %i.bu = xor i64 %.sroa.06.014.i51, -1
  %i.bv = getelementptr [24 x i8], ptr %i.bb, i64 %i.bu
  %i.bw = getelementptr [24 x i8], ptr %i.bs, i64 %.sroa.06.014.i51
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bw, ptr noundef nonnull align 8 dereferenceable(24) %i.bv, i64 24, i1 false), !alias.scope !590
  %i.bx = add nuw i64 %.sroa.06.014.i51, 2        ; 2 uses
  %i.by = xor i64 %.sroa.06.014.i51, -2
  %i.bz = getelementptr [24 x i8], ptr %i.bb, i64 %i.by
  %i.ca = getelementptr [24 x i8], ptr %i.bs, i64 %.sroa.06.014.i51
  %i.cb = getelementptr i8, ptr %i.ca, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cb, ptr noundef nonnull align 8 dereferenceable(24) %i.bz, i64 24, i1 false), !alias.scope !590
  %niter291.next.1 = add i64 %niter291, 2         ; 2 uses
  %niter291.ncmp.1 = icmp eq i64 %niter291.next.1, %unroll_iter290
  br i1 %niter291.ncmp.1, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort16stable_partitionTmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataENCINvB2_9quicksortB1d_NCINvMNtCs1xwejQucwHj_5alloc5sliceSB1d_7sort_byNCINvXs1o_NtNtNtB2A_11collections5btree3mapINtB3n_8BTreeMapmB1f_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1d_E9from_iterINtNtNtB4n_8adapters3map3MapINtNtB5k_9enumerate9EnumerateINtNtNtB2A_3vec9into_iter8IntoIterB1f_EENCINvXsf_B1h_NtB1h_14VisitPackIndexNtNtCs6LlcditsbhK_5serde2de7Visitor9visit_seqINtNtCs974quTetXso_9rmp_serde6decode9SeqAccessINtB89_10ReadReaderINtNtNtNtB2A_2io8buffered9bufreader9BufReaderNtNtCsaL1QbXo9JQH_3std2fs4FileEENtNtB8b_6config13DefaultConfigEE0EE0E0E0EB1j_.exit.unr-lcssa, label %.lr.ph16.i50

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort16stable_partitionTmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataENCINvB2_9quicksortB1d_NCINvMNtCs1xwejQucwHj_5alloc5sliceSB1d_7sort_byNCINvXs1o_NtNtNtB2A_11collections5btree3mapINtB3n_8BTreeMapmB1f_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1d_E9from_iterINtNtNtB4n_8adapters3map3MapINtNtB5k_9enumerate9EnumerateINtNtNtB2A_3vec9into_iter8IntoIterB1f_EENCINvXsf_B1h_NtB1h_14VisitPackIndexNtNtCs6LlcditsbhK_5serde2de7Visitor9visit_seqINtNtCs974quTetXso_9rmp_serde6decode9SeqAccessINtB89_10ReadReaderINtNtNtNtB2A_2io8buffered9bufreader9BufReaderNtNtCsaL1QbXo9JQH_3std2fs4FileEENtNtB8b_6config13DefaultConfigEE0EE0E0E0EB1j_.exit.unr-lcssa: ; preds = %.lr.ph16.i50
  %lcmp.mod288.not = icmp eq i64 %xtraiter287, 0
  br i1 %lcmp.mod288.not, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort16stable_partitionTmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataENCINvB2_9quicksortB1d_NCINvMNtCs1xwejQucwHj_5alloc5sliceSB1d_7sort_byNCINvXs1o_NtNtNtB2A_11collections5btree3mapINtB3n_8BTreeMapmB1f_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1d_E9from_iterINtNtNtB4n_8adapters3map3MapINtNtB5k_9enumerate9EnumerateINtNtNtB2A_3vec9into_iter8IntoIterB1f_EENCINvXsf_B1h_NtB1h_14VisitPackIndexNtNtCs6LlcditsbhK_5serde2de7Visitor9visit_seqINtNtCs974quTetXso_9rmp_serde6decode9SeqAccessINtB89_10ReadReaderINtNtNtNtB2A_2io8buffered9bufreader9BufReaderNtNtCsaL1QbXo9JQH_3std2fs4FileEENtNtB8b_6config13DefaultConfigEE0EE0E0E0EB1j_.exit, label %.lr.ph16.i50.epil.preheader

.lr.ph16.i50.epil.preheader:                      ; preds = %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort16stable_partitionTmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataENCINvB2_9quicksortB1d_NCINvMNtCs1xwejQucwHj_5alloc5sliceSB1d_7sort_byNCINvXs1o_NtNtNtB2A_11collections5btree3mapINtB3n_8BTreeMapmB1f_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1d_E9from_iterINtNtNtB4n_8adapters3map3MapINtNtB5k_9enumerate9EnumerateINtNtNtB2A_3vec9into_iter8IntoIterB1f_EENCINvXsf_B1h_NtB1h_14VisitPackIndexNtNtCs6LlcditsbhK_5serde2de7Visitor9visit_seqINtNtCs974quTetXso_9rmp_serde6decode9SeqAccessINtB89_10ReadReaderINtNtNtNtB2A_2io8buffered9bufreader9BufReaderNtNtCsaL1QbXo9JQH_3std2fs4FileEENtNtB8b_6config13DefaultConfigEE0EE0E0E0EB1j_.exit.unr-lcssa, %.lr.ph16.i50.preheader
  %.sroa.06.014.i51.epil.init = phi i64 [ 0, %.lr.ph16.i50.preheader ], [ %i.bx, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort16stable_partitionTmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataENCINvB2_9quicksortB1d_NCINvMNtCs1xwejQucwHj_5alloc5sliceSB1d_7sort_byNCINvXs1o_NtNtNtB2A_11collections5btree3mapINtB3n_8BTreeMapmB1f_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1d_E9from_iterINtNtNtB4n_8adapters3map3MapINtNtB5k_9enumerate9EnumerateINtNtNtB2A_3vec9into_iter8IntoIterB1f_EENCINvXsf_B1h_NtB1h_14VisitPackIndexNtNtCs6LlcditsbhK_5serde2de7Visitor9visit_seqINtNtCs974quTetXso_9rmp_serde6decode9SeqAccessINtB89_10ReadReaderINtNtNtNtB2A_2io8buffered9bufreader9BufReaderNtNtCsaL1QbXo9JQH_3std2fs4FileEENtNtB8b_6config13DefaultConfigEE0EE0E0E0EB1j_.exit.unr-lcssa ] ; 2 uses
  %lcmp.mod289 = trunc i64 %i.br to i1
  call void @llvm.assume(i1 %lcmp.mod289)
  %i.cc = xor i64 %.sroa.06.014.i51.epil.init, -1
  %i.cd = getelementptr [24 x i8], ptr %i.bb, i64 %i.cc
  %i.ce = getelementptr [24 x i8], ptr %i.bs, i64 %.sroa.06.014.i51.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ce, ptr noundef nonnull align 8 dereferenceable(24) %i.cd, i64 24, i1 false), !alias.scope !590
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort16stable_partitionTmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataENCINvB2_9quicksortB1d_NCINvMNtCs1xwejQucwHj_5alloc5sliceSB1d_7sort_byNCINvXs1o_NtNtNtB2A_11collections5btree3mapINtB3n_8BTreeMapmB1f_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1d_E9from_iterINtNtNtB4n_8adapters3map3MapINtNtB5k_9enumerate9EnumerateINtNtNtB2A_3vec9into_iter8IntoIterB1f_EENCINvXsf_B1h_NtB1h_14VisitPackIndexNtNtCs6LlcditsbhK_5serde2de7Visitor9visit_seqINtNtCs974quTetXso_9rmp_serde6decode9SeqAccessINtB89_10ReadReaderINtNtNtNtB2A_2io8buffered9bufreader9BufReaderNtNtCsaL1QbXo9JQH_3std2fs4FileEENtNtB8b_6config13DefaultConfigEE0EE0E0E0EB1j_.exit

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort16stable_partitionTmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataENCINvB2_9quicksortB1d_NCINvMNtCs1xwejQucwHj_5alloc5sliceSB1d_7sort_byNCINvXs1o_NtNtNtB2A_11collections5btree3mapINtB3n_8BTreeMapmB1f_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1d_E9from_iterINtNtNtB4n_8adapters3map3MapINtNtB5k_9enumerate9EnumerateINtNtNtB2A_3vec9into_iter8IntoIterB1f_EENCINvXsf_B1h_NtB1h_14VisitPackIndexNtNtCs6LlcditsbhK_5serde2de7Visitor9visit_seqINtNtCs974quTetXso_9rmp_serde6decode9SeqAccessINtB89_10ReadReaderINtNtNtNtB2A_2io8buffered9bufreader9BufReaderNtNtCsaL1QbXo9JQH_3std2fs4FileEENtNtB8b_6config13DefaultConfigEE0EE0E0E0EB1j_.exit: ; preds = %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort16stable_partitionTmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataENCINvB2_9quicksortB1d_NCINvMNtCs1xwejQucwHj_5alloc5sliceSB1d_7sort_byNCINvXs1o_NtNtNtB2A_11collections5btree3mapINtB3n_8BTreeMapmB1f_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1d_E9from_iterINtNtNtB4n_8adapters3map3MapINtNtB5k_9enumerate9EnumerateINtNtNtB2A_3vec9into_iter8IntoIterB1f_EENCINvXsf_B1h_NtB1h_14VisitPackIndexNtNtCs6LlcditsbhK_5serde2de7Visitor9visit_seqINtNtCs974quTetXso_9rmp_serde6decode9SeqAccessINtB89_10ReadReaderINtNtNtNtB2A_2io8buffered9bufreader9BufReaderNtNtCsaL1QbXo9JQH_3std2fs4FileEENtNtB8b_6config13DefaultConfigEE0EE0E0E0EB1j_.exit.unr-lcssa, %.lr.ph16.i50.epil.preheader
  %i.cf = icmp ugt i64 %.sroa.11.1.lcssa.i47, %.sroa.16.089217
  br i1 %i.cf, label %bb.w, label %.outer, !prof !324

.outer.thread:                                    ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.outer._crit_edge

.outer:                                           ; preds = %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort16stable_partitionTmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataENCINvB2_9quicksortB1d_NCINvMNtCs1xwejQucwHj_5alloc5sliceSB1d_7sort_byNCINvXs1o_NtNtNtB2A_11collections5btree3mapINtB3n_8BTreeMapmB1f_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1d_E9from_iterINtNtNtB4n_8adapters3map3MapINtNtB5k_9enumerate9EnumerateINtNtNtB2A_3vec9into_iter8IntoIterB1f_EENCINvXsf_B1h_NtB1h_14VisitPackIndexNtNtCs6LlcditsbhK_5serde2de7Visitor9visit_seqINtNtCs974quTetXso_9rmp_serde6decode9SeqAccessINtB89_10ReadReaderINtNtNtNtB2A_2io8buffered9bufreader9BufReaderNtNtCsaL1QbXo9JQH_3std2fs4FileEENtNtB8b_6config13DefaultConfigEE0EE0E0E0EB1j_.exit
  %i.cg = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.ph96, i64 %.sroa.11.1.lcssa.i47 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ch = icmp ult i64 %i.br, 33
  br i1 %i.ch, label %.outer._crit_edge, label %.lr.ph

bb.w:                                             ; preds = %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort16stable_partitionTmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataENCINvB2_9quicksortB1d_NCINvMNtCs1xwejQucwHj_5alloc5sliceSB1d_7sort_byNCINvXs1o_NtNtNtB2A_11collections5btree3mapINtB3n_8BTreeMapmB1f_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1d_E9from_iterINtNtNtB4n_8adapters3map3MapINtNtB5k_9enumerate9EnumerateINtNtNtB2A_3vec9into_iter8IntoIterB1f_EENCINvXsf_B1h_NtB1h_14VisitPackIndexNtNtCs6LlcditsbhK_5serde2de7Visitor9visit_seqINtNtCs974quTetXso_9rmp_serde6decode9SeqAccessINtB89_10ReadReaderINtNtNtNtB2A_2io8buffered9bufreader9BufReaderNtNtCsaL1QbXo9JQH_3std2fs4FileEENtNtB8b_6config13DefaultConfigEE0EE0E0E0EB1j_.exit
  call void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef %.sroa.11.1.lcssa.i47, i64 noundef %.sroa.16.089217, i64 noundef %.sroa.16.089217, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #30
  unreachable
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortTmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataENCINvMNtCs1xwejQucwHj_5alloc5sliceSB15_7sort_byNCINvXs1o_NtNtNtB26_11collections5btree3mapINtB2T_8BTreeMapmB17_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB3T_8adapters3map3MapINtNtB4Q_9enumerate9EnumerateINtNtNtB26_3vec9into_iter8IntoIterB17_EENCINvXsf_B19_NtB19_14VisitPackIndexNtNtCs6LlcditsbhK_5serde2de7Visitor9visit_seqINtNtCs974quTetXso_9rmp_serde6decode9SeqAccessINtB7F_10ReadReaderINtNtNtNtB26_2io8buffered9bufreader9BufReaderRShEENtNtB7H_6config13DefaultConfigEE0EE0E0EB1b_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 384307168202282326) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, i32 noundef %4, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable_or_null(24) %5, ptr noalias nofree noundef align 8 dereferenceable(8) %6) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = icmp samesign ult i64 %1, 33
  br i1 %i.b, label %.outer._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.outer
  %.sroa.0.0.ph96 = phi ptr [ %i.cg, %.outer ], [ %0, %bb.a ] ; 19 uses
  %.sroa.16.0.ph95 = phi i64 [ %i.br, %.outer ], [ %1, %bb.a ] ; 2 uses
  %.sroa.025.0.ph94 = phi i32 [ %i.f, %.outer ], [ %4, %bb.a ] ; 2 uses
  %.sroa.028.0.ph93 = phi ptr [ null, %.outer ], [ %5, %bb.a ] ; 2 uses
  %i.c = ptrtoint ptr %.sroa.0.0.ph96 to i64
  %.not = icmp eq ptr %.sroa.028.0.ph93, null
  %i.d = icmp eq i32 %.sroa.025.0.ph94, 0
  br i1 %i.d, label %.lr.ph._crit_edge, label %.lr.ph219

bb.b:                                             ; preds = %_RNvMNtCs3oUPovFnLWP_4core5sliceSTmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataE12split_at_mutBA_.exit
  %i.e = icmp eq i32 %i.f, 0
  br i1 %i.e, label %.lr.ph._crit_edge, label %.lr.ph219

.outer._crit_edge:                                ; preds = %.outer, %_RNvMNtCs3oUPovFnLWP_4core5sliceSTmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataE12split_at_mutBA_.exit, %.outer.thread, %bb.a
  %.sroa.0.0.ph.lcssa87 = phi ptr [ %i.bs, %.outer.thread ], [ %0, %bb.a ], [ %.sroa.0.0.ph96, %_RNvMNtCs3oUPovFnLWP_4core5sliceSTmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataE12split_at_mutBA_.exit ], [ %i.cg, %.outer ]
  %.sroa.16.0.lcssa = phi i64 [ 0, %.outer.thread ], [ %1, %bb.a ], [ %.sroa.11.1.lcssa.i, %_RNvMNtCs3oUPovFnLWP_4core5sliceSTmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataE12split_at_mutBA_.exit ], [ %i.br, %.outer ]
  call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchTmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataENCINvMNtCs1xwejQucwHj_5alloc5sliceSB1s_7sort_byNCINvXs1o_NtNtNtB2t_11collections5btree3mapINtB3g_8BTreeMapmB1u_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1s_E9from_iterINtNtNtB4g_8adapters3map3MapINtNtB5d_9enumerate9EnumerateINtNtNtB2t_3vec9into_iter8IntoIterB1u_EENCINvXsf_B1w_NtB1w_14VisitPackIndexNtNtCs6LlcditsbhK_5serde2de7Visitor9visit_seqINtNtCs974quTetXso_9rmp_serde6decode9SeqAccessINtB82_10ReadReaderINtNtNtNtB2t_2io8buffered9bufreader9BufReaderRShEENtNtB84_6config13DefaultConfigEE0EE0E0EB1y_(ptr noalias nofree noundef nonnull align 8 %.sroa.0.0.ph.lcssa87, i64 noundef range(i64 0, 33) %.sroa.16.0.lcssa, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %6)
  br label %bb.d

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %bb.b
  %.sroa.16.089.lcssa = phi i64 [ %.sroa.11.1.lcssa.i, %bb.b ], [ %.sroa.16.0.ph95, %.lr.ph ]
  call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable5drift4sortTmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataENCINvMNtCs1xwejQucwHj_5alloc5sliceSBW_7sort_byNCINvXs1o_NtNtNtB1X_11collections5btree3mapINtB2J_8BTreeMapmBY_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBW_E9from_iterINtNtNtB3I_8adapters3map3MapINtNtB4E_9enumerate9EnumerateINtNtNtB1X_3vec9into_iter8IntoIterBY_EENCINvXsf_B10_NtB10_14VisitPackIndexNtNtCs6LlcditsbhK_5serde2de7Visitor9visit_seqINtNtCs974quTetXso_9rmp_serde6decode9SeqAccessINtB7s_10ReadReaderINtNtNtNtB1X_2io8buffered9bufreader9BufReaderRShEENtNtB7u_6config13DefaultConfigEE0EE0E0EB12_(ptr noalias nofree noundef nonnull align 8 %.sroa.0.0.ph96, i64 noundef %.sroa.16.089.lcssa, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef %3, i1 noundef zeroext true, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %6)
  br label %bb.d

.lr.ph219:                                        ; preds = %.lr.ph, %bb.b
  %.sroa.025.088218 = phi i32 [ %i.f, %bb.b ], [ %.sroa.025.0.ph94, %.lr.ph ]
  %.sroa.16.089217 = phi i64 [ %.sroa.11.1.lcssa.i, %bb.b ], [ %.sroa.16.0.ph95, %.lr.ph ] ; 21 uses
  %i.f = add i32 %.sroa.025.088218, -1            ; 4 uses
  %i.g = lshr i64 %.sroa.16.089217, 3             ; 3 uses
  %.idx.i = mul nuw nsw i64 %i.g, 96
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph96, i64 %.idx.i ; 3 uses
  %.idx2.i = mul nuw nsw i64 %i.g, 168
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph96, i64 %.idx2.i ; 3 uses
  %i.j = icmp samesign ult i64 %.sroa.16.089217, 64
  br i1 %i.j, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared5pivot7median3TmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataENCINvMNtCs1xwejQucwHj_5alloc5sliceSBZ_7sort_byNCINvXs1o_NtNtNtB20_11collections5btree3mapINtB2M_8BTreeMapmB11_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBZ_E9from_iterINtNtNtB3M_8adapters3map3MapINtNtB4I_9enumerate9EnumerateINtNtNtB20_3vec9into_iter8IntoIterB11_EENCINvXsf_B13_NtB13_14VisitPackIndexNtNtCs6LlcditsbhK_5serde2de7Visitor9visit_seqINtNtCs974quTetXso_9rmp_serde6decode9SeqAccessINtB7x_10ReadReaderINtNtNtNtB20_2io8buffered9bufreader9BufReaderRShEENtNtB7z_6config13DefaultConfigEE0EE0E0EB15_.exit.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph219
  %i.k = call fastcc noundef ptr @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared5pivot11median3_recTmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataENCINvMNtCs1xwejQucwHj_5alloc5sliceSB14_7sort_byNCINvXs1o_NtNtNtB25_11collections5btree3mapINtB2S_8BTreeMapmB16_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB14_E9from_iterINtNtNtB3S_8adapters3map3MapINtNtB4P_9enumerate9EnumerateINtNtNtB25_3vec9into_iter8IntoIterB16_EENCINvXsf_B18_NtB18_14VisitPackIndexNtNtCs6LlcditsbhK_5serde2de7Visitor9visit_seqINtNtCs974quTetXso_9rmp_serde6decode9SeqAccessINtB7E_10ReadReaderINtNtNtNtB25_2io8buffered9bufreader9BufReaderRShEENtNtB7G_6config13DefaultConfigEE0EE0E0EB1a_(ptr noundef nonnull readonly align 8 %.sroa.0.0.ph96, ptr noundef readonly %i.h, ptr noundef readonly %i.i, i64 noundef %i.g)
  br label %bb.e

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared5pivot7median3TmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataENCINvMNtCs1xwejQucwHj_5alloc5sliceSBZ_7sort_byNCINvXs1o_NtNtNtB20_11collections5btree3mapINtB2M_8BTreeMapmB11_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBZ_E9from_iterINtNtNtB3M_8adapters3map3MapINtNtB4I_9enumerate9EnumerateINtNtNtB20_3vec9into_iter8IntoIterB11_EENCINvXsf_B13_NtB13_14VisitPackIndexNtNtCs6LlcditsbhK_5serde2de7Visitor9visit_seqINtNtCs974quTetXso_9rmp_serde6decode9SeqAccessINtB7x_10ReadReaderINtNtNtNtB20_2io8buffered9bufreader9BufReaderRShEENtNtB7z_6config13DefaultConfigEE0EE0E0EB15_.exit.i: ; preds = %.lr.ph219
  %.val6.i = load i32, ptr %.sroa.0.0.ph96, align 4, !alias.scope !597, !noundef !8 ; 2 uses
  %.val7.i = load i32, ptr %i.h, align 4, !alias.scope !597, !noundef !8 ; 2 uses
  %i.l = icmp ult i32 %.val6.i, %.val7.i          ; 2 uses
  %.val5.i = load i32, ptr %i.i, align 4, !alias.scope !597, !noundef !8 ; 2 uses
  %i.m = icmp ult i32 %.val6.i, %.val5.i
  %i.n = xor i1 %i.l, %i.m
  %i.o = icmp ult i32 %.val7.i, %.val5.i
  %i.p = xor i1 %i.l, %i.o
  %..i.i = select i1 %i.p, ptr %i.i, ptr %i.h
  %.sroa.0.0.i.i = select i1 %i.n, ptr %.sroa.0.0.ph96, ptr %..i.i
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph._crit_edge, %.outer._crit_edge
  ret void

bb.e:                                             ; preds = %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared5pivot7median3TmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataENCINvMNtCs1xwejQucwHj_5alloc5sliceSBZ_7sort_byNCINvXs1o_NtNtNtB20_11collections5btree3mapINtB2M_8BTreeMapmB11_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBZ_E9from_iterINtNtNtB3M_8adapters3map3MapINtNtB4I_9enumerate9EnumerateINtNtNtB20_3vec9into_iter8IntoIterB11_EENCINvXsf_B13_NtB13_14VisitPackIndexNtNtCs6LlcditsbhK_5serde2de7Visitor9visit_seqINtNtCs974quTetXso_9rmp_serde6decode9SeqAccessINtB7x_10ReadReaderINtNtNtNtB20_2io8buffered9bufreader9BufReaderRShEENtNtB7z_6config13DefaultConfigEE0EE0E0EB15_.exit.i, %bb.c
  %.sroa.0.0.i.sink.i = phi ptr [ %.sroa.0.0.i.i, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared5pivot7median3TmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataENCINvMNtCs1xwejQucwHj_5alloc5sliceSBZ_7sort_byNCINvXs1o_NtNtNtB20_11collections5btree3mapINtB2M_8BTreeMapmB11_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBZ_E9from_iterINtNtNtB3M_8adapters3map3MapINtNtB4I_9enumerate9EnumerateINtNtNtB20_3vec9into_iter8IntoIterB11_EENCINvXsf_B13_NtB13_14VisitPackIndexNtNtCs6LlcditsbhK_5serde2de7Visitor9visit_seqINtNtCs974quTetXso_9rmp_serde6decode9SeqAccessINtB7x_10ReadReaderINtNtNtNtB20_2io8buffered9bufreader9BufReaderRShEENtNtB7z_6config13DefaultConfigEE0EE0E0EB15_.exit.i ], [ %i.k, %bb.c ]
  %i.q = ptrtoint ptr %.sroa.0.0.i.sink.i to i64
  %i.r = sub nuw i64 %i.q, %i.c                   ; 2 uses
  %.sroa.0.0.i = udiv exact i64 %i.r, 24          ; 3 uses
  %i.s = icmp samesign ult i64 %.sroa.0.0.i, %.sroa.16.089217
  call void @llvm.assume(i1 %i.s)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph96, i64 %i.r ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 24, i1 false)
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.sroa.028.0.val = load i32, ptr %.sroa.028.0.ph93, align 8, !noundef !8
  %.val = load i32, ptr %i.t, align 8, !noundef !8
  %i.u = icmp ult i32 %.sroa.028.0.val, %.val
  br i1 %i.u, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.e, %bb.f
  call void @llvm.experimental.noalias.scope.decl(metadata !600)
  %.not63 = icmp samesign ult i64 %3, %.sroa.16.089217
  br i1 %.not63, label %bb.i, label %bb.h, !prof !301

bb.h:                                             ; preds = %bb.g
  %i.v = getelementptr [24 x i8], ptr %2, i64 %.sroa.16.089217 ; 4 uses
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  call void @llvm.trap()
  unreachable

bb.j:                                             ; preds = %bb.l, %bb.h
  %.sroa.19.0.i = phi ptr [ %i.v, %bb.h ], [ %i.ag, %bb.l ] ; 2 uses
  %.sroa.11.0.i = phi i64 [ 0, %bb.h ], [ %.sroa.11.1.lcssa.i, %bb.l ] ; 2 uses
  %.sroa.5.0.i = phi ptr [ %.sroa.0.0.ph96, %bb.h ], [ %i.ai, %bb.l ] ; 3 uses
  %.sroa.0.0.i37 = phi i64 [ %.sroa.0.0.i, %bb.h ], [ %.sroa.16.089217, %bb.l ] ; 2 uses
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.ph96, i64 %.sroa.0.0.i37 ; 2 uses
  %i.x = icmp ult ptr %.sroa.5.0.i, %i.w
  br i1 %i.x, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.j
  %.val12.i = load i32, ptr %i.t, align 8, !alias.scope !603, !noalias !600, !noundef !8
  br label %bb.k

._crit_edge.i:                                    ; preds = %bb.k, %bb.j
  %.sroa.19.1.lcssa.i = phi ptr [ %.sroa.19.0.i, %bb.j ], [ %i.aa, %bb.k ]
  %.sroa.11.1.lcssa.i = phi i64 [ %.sroa.11.0.i, %bb.j ], [ %i.ad, %bb.k ] ; 14 uses
  %.sroa.5.1.lcssa.i = phi ptr [ %.sroa.5.0.i, %bb.j ], [ %i.ae, %bb.k ] ; 2 uses
  %i.y = icmp eq i64 %.sroa.0.0.i37, %.sroa.16.089217
  br i1 %i.y, label %bb.m, label %bb.l

bb.k:                                             ; preds = %bb.k, %.lr.ph.i
  %.sroa.5.111.i = phi ptr [ %.sroa.5.0.i, %.lr.ph.i ], [ %i.ae, %bb.k ] ; 3 uses
  %.sroa.11.110.i = phi i64 [ %.sroa.11.0.i, %.lr.ph.i ], [ %i.ad, %bb.k ] ; 2 uses
  %.sroa.19.19.i = phi ptr [ %.sroa.19.0.i, %.lr.ph.i ], [ %i.aa, %bb.k ]
  %.val.i = load i32, ptr %.sroa.5.111.i, align 4, !alias.scope !603, !noalias !600, !noundef !8
  %i.z = icmp ult i32 %.val.i, %.val12.i          ; 2 uses
  %i.aa = getelementptr inbounds i8, ptr %.sroa.19.19.i, i64 -24 ; 3 uses
  %.sroa.01.0.i.i = select i1 %i.z, ptr %2, ptr %i.aa
  %i.ab = getelementptr inbounds nuw [24 x i8], ptr %.sroa.01.0.i.i, i64 %.sroa.11.110.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.111.i, i64 24, i1 false), !alias.scope !605, !noalias !606
  %i.ac = zext i1 %i.z to i64
  %i.ad = add i64 %.sroa.11.110.i, %i.ac          ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.5.111.i, i64 24 ; 3 uses
  %i.af = icmp ult ptr %i.ae, %i.w
  br i1 %i.af, label %bb.k, label %._crit_edge.i

bb.l:                                             ; preds = %._crit_edge.i
  %i.ag = getelementptr inbounds i8, ptr %.sroa.19.1.lcssa.i, i64 -24 ; 2 uses
  %i.ah = getelementptr inbounds nuw [24 x i8], ptr %i.ag, i64 %.sroa.11.1.lcssa.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ah, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.1.lcssa.i, i64 24, i1 false), !alias.scope !605, !noalias !609
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.5.1.lcssa.i, i64 24
  br label %bb.j

bb.m:                                             ; preds = %._crit_edge.i
  %i.aj = mul nuw nsw i64 %.sroa.11.1.lcssa.i, 24
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph96, ptr nonnull align 8 %2, i64 %i.aj, i1 false), !alias.scope !605
  %i.ak = sub i64 %.sroa.16.089217, %.sroa.11.1.lcssa.i ; 4 uses
  %.not18.i = icmp eq i64 %.sroa.16.089217, %.sroa.11.1.lcssa.i
  br i1 %.not18.i, label %.loopexit, label %.lr.ph16.i

.lr.ph16.i:                                       ; preds = %bb.m
  %i.al = getelementptr [24 x i8], ptr %.sroa.0.0.ph96, i64 %.sroa.11.1.lcssa.i ; 3 uses
  %.neg = add i64 %.sroa.11.1.lcssa.i, 1
  %xtraiter = and i64 %i.ak, 1
  %i.am = icmp eq i64 %.sroa.16.089217, %.neg
  br i1 %i.am, label %.epil.preheader, label %.lr.ph16.i.new

.lr.ph16.i.new:                                   ; preds = %.lr.ph16.i
  %unroll_iter = and i64 %i.ak, -2
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %.lr.ph16.i.new
  %.sroa.06.014.i = phi i64 [ 0, %.lr.ph16.i.new ], [ %i.aq, %bb.n ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph16.i.new ], [ %niter.next.1, %bb.n ]
  %i.an = xor i64 %.sroa.06.014.i, -1
  %i.ao = getelementptr [24 x i8], ptr %i.v, i64 %i.an
  %i.ap = getelementptr [24 x i8], ptr %i.al, i64 %.sroa.06.014.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, ptr noundef nonnull align 8 dereferenceable(24) %i.ao, i64 24, i1 false), !alias.scope !605
  %i.aq = add nuw i64 %.sroa.06.014.i, 2          ; 2 uses
  %i.ar = xor i64 %.sroa.06.014.i, -2
  %i.as = getelementptr [24 x i8], ptr %i.v, i64 %i.ar
  %i.at = getelementptr [24 x i8], ptr %i.al, i64 %.sroa.06.014.i
  %i.au = getelementptr i8, ptr %i.at, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.au, ptr noundef nonnull align 8 dereferenceable(24) %i.as, i64 24, i1 false), !alias.scope !605
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.n

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.n
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph16.i
  %.sroa.06.014.i.epil.init = phi i64 [ 0, %.lr.ph16.i ], [ %i.aq, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod280 = trunc i64 %i.ak to i1
  call void @llvm.assume(i1 %lcmp.mod280)
  %i.av = xor i64 %.sroa.06.014.i.epil.init, -1
  %i.aw = getelementptr [24 x i8], ptr %i.v, i64 %i.av
  %i.ax = getelementptr [24 x i8], ptr %i.al, i64 %.sroa.06.014.i.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ax, ptr noundef nonnull align 8 dereferenceable(24) %i.aw, i64 24, i1 false), !alias.scope !605
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.m
  %i.ay = icmp eq i64 %.sroa.11.1.lcssa.i, 0
  br i1 %i.ay, label %.thread, label %bb.o

bb.o:                                             ; preds = %.loopexit
  %.not.i38 = icmp ugt i64 %.sroa.11.1.lcssa.i, %.sroa.16.089217
  br i1 %.not.i38, label %bb.p, label %_RNvMNtCs3oUPovFnLWP_4core5sliceSTmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataE12split_at_mutBA_.exit, !prof !324

bb.p:                                             ; preds = %bb.o
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @9, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #30, !noalias !612
  unreachable

_RNvMNtCs3oUPovFnLWP_4core5sliceSTmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataE12split_at_mutBA_.exit: ; preds = %bb.o
  %i.az = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.ph96, i64 %.sroa.11.1.lcssa.i
  call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort9quicksortTmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataENCINvMNtCs1xwejQucwHj_5alloc5sliceSB15_7sort_byNCINvXs1o_NtNtNtB26_11collections5btree3mapINtB2T_8BTreeMapmB17_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB3T_8adapters3map3MapINtNtB4Q_9enumerate9EnumerateINtNtNtB26_3vec9into_iter8IntoIterB17_EENCINvXsf_B19_NtB19_14VisitPackIndexNtNtCs6LlcditsbhK_5serde2de7Visitor9visit_seqINtNtCs974quTetXso_9rmp_serde6decode9SeqAccessINtB7F_10ReadReaderINtNtNtNtB26_2io8buffered9bufreader9BufReaderRShEENtNtB7H_6config13DefaultConfigEE0EE0E0EB1b_(ptr noalias nofree noundef nonnull align 8 %i.az, i64 noundef %i.ak, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %6) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ba = icmp ult i64 %.sroa.11.1.lcssa.i, 33
  br i1 %i.ba, label %.outer._crit_edge, label %bb.b

.thread:                                          ; preds = %bb.f, %.loopexit
  call void @llvm.experimental.noalias.scope.decl(metadata !616)
  %.not64 = icmp samesign ult i64 %3, %.sroa.16.089217
  br i1 %.not64, label %bb.r, label %bb.q, !prof !301

bb.q:                                             ; preds = %.thread
  %i.bb = getelementptr [24 x i8], ptr %2, i64 %.sroa.16.089217 ; 4 uses
  br label %bb.s

bb.r:                                             ; preds = %.thread
  call void @llvm.trap()
  unreachable

bb.s:                                             ; preds = %bb.u, %bb.q
  %.sroa.19.0.i41 = phi ptr [ %i.bb, %bb.q ], [ %i.bm, %bb.u ] ; 2 uses
  %.sroa.11.0.i42 = phi i64 [ 0, %bb.q ], [ %i.bo, %bb.u ] ; 2 uses
  %.sroa.5.0.i43 = phi ptr [ %.sroa.0.0.ph96, %bb.q ], [ %i.bp, %bb.u ] ; 3 uses
  %.sroa.0.0.i44 = phi i64 [ %.sroa.0.0.i, %bb.q ], [ %.sroa.16.089217, %bb.u ] ; 2 uses
  %i.bc = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.ph96, i64 %.sroa.0.0.i44 ; 2 uses
  %i.bd = icmp ult ptr %.sroa.5.0.i43, %i.bc
  br i1 %i.bd, label %.lr.ph.i53, label %._crit_edge.i45

.lr.ph.i53:                                       ; preds = %bb.s
  %.val12.i54 = load i32, ptr %i.t, align 4, !alias.scope !619, !noalias !616, !noundef !8
  br label %bb.t

._crit_edge.i45:                                  ; preds = %bb.t, %bb.s
  %.sroa.19.1.lcssa.i46 = phi ptr [ %.sroa.19.0.i41, %bb.s ], [ %i.bg, %bb.t ]
  %.sroa.11.1.lcssa.i47 = phi i64 [ %.sroa.11.0.i42, %bb.s ], [ %i.bj, %bb.t ] ; 10 uses
  %.sroa.5.1.lcssa.i48 = phi ptr [ %.sroa.5.0.i43, %bb.s ], [ %i.bk, %bb.t ] ; 2 uses
  %i.be = icmp eq i64 %.sroa.0.0.i44, %.sroa.16.089217
  br i1 %i.be, label %bb.v, label %bb.u

bb.t:                                             ; preds = %bb.t, %.lr.ph.i53
  %.sroa.5.111.i55 = phi ptr [ %.sroa.5.0.i43, %.lr.ph.i53 ], [ %i.bk, %bb.t ] ; 3 uses
  %.sroa.11.110.i56 = phi i64 [ %.sroa.11.0.i42, %.lr.ph.i53 ], [ %i.bj, %bb.t ] ; 2 uses
  %.sroa.19.19.i57 = phi ptr [ %.sroa.19.0.i41, %.lr.ph.i53 ], [ %i.bg, %bb.t ]
  %.val.i58 = load i32, ptr %.sroa.5.111.i55, align 4, !alias.scope !619, !noalias !616, !noundef !8
  %i.bf = icmp uge i32 %.val12.i54, %.val.i58     ; 2 uses
  %i.bg = getelementptr inbounds i8, ptr %.sroa.19.19.i57, i64 -24 ; 3 uses
  %.sroa.01.0.i.i59 = select i1 %i.bf, ptr %2, ptr %i.bg
  %i.bh = getelementptr inbounds nuw [24 x i8], ptr %.sroa.01.0.i.i59, i64 %.sroa.11.110.i56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bh, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.111.i55, i64 24, i1 false), !alias.scope !621, !noalias !622
  %i.bi = zext i1 %i.bf to i64
  %i.bj = add i64 %.sroa.11.110.i56, %i.bi        ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.5.111.i55, i64 24 ; 3 uses
  %i.bl = icmp ult ptr %i.bk, %i.bc
  br i1 %i.bl, label %bb.t, label %._crit_edge.i45

bb.u:                                             ; preds = %._crit_edge.i45
  %i.bm = getelementptr inbounds i8, ptr %.sroa.19.1.lcssa.i46, i64 -24
  %i.bn = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %.sroa.11.1.lcssa.i47
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bn, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.1.lcssa.i48, i64 24, i1 false), !alias.scope !621, !noalias !625
  %i.bo = add i64 %.sroa.11.1.lcssa.i47, 1
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.5.1.lcssa.i48, i64 24
  br label %bb.s

bb.v:                                             ; preds = %._crit_edge.i45
  %i.bq = mul nuw nsw i64 %.sroa.11.1.lcssa.i47, 24
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph96, ptr nonnull align 8 %2, i64 %i.bq, i1 false), !alias.scope !621
  %i.br = sub i64 %.sroa.16.089217, %.sroa.11.1.lcssa.i47 ; 6 uses
  %.not18.i49 = icmp eq i64 %.sroa.16.089217, %.sroa.11.1.lcssa.i47
  %i.bs = getelementptr [24 x i8], ptr %.sroa.0.0.ph96, i64 %.sroa.11.1.lcssa.i47 ; 4 uses
  br i1 %.not18.i49, label %.outer.thread, label %.lr.ph16.i50.preheader

.lr.ph16.i50.preheader:                           ; preds = %bb.v
  %.neg292 = add i64 %.sroa.11.1.lcssa.i47, 1
  %xtraiter287 = and i64 %i.br, 1
  %i.bt = icmp eq i64 %.sroa.16.089217, %.neg292
  br i1 %i.bt, label %.lr.ph16.i50.epil.preheader, label %.lr.ph16.i50.preheader.new

.lr.ph16.i50.preheader.new:                       ; preds = %.lr.ph16.i50.preheader
  %unroll_iter290 = and i64 %i.br, -2
  br label %.lr.ph16.i50

.lr.ph16.i50:                                     ; preds = %.lr.ph16.i50, %.lr.ph16.i50.preheader.new
  %.sroa.06.014.i51 = phi i64 [ 0, %.lr.ph16.i50.preheader.new ], [ %i.bx, %.lr.ph16.i50 ] ; 5 uses
  %niter291 = phi i64 [ 0, %.lr.ph16.i50.preheader.new ], [ %niter291.next.1, %.lr.ph16.i50 ]
  %i.bu = xor i64 %.sroa.06.014.i51, -1
  %i.bv = getelementptr [24 x i8], ptr %i.bb, i64 %i.bu
  %i.bw = getelementptr [24 x i8], ptr %i.bs, i64 %.sroa.06.014.i51
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bw, ptr noundef nonnull align 8 dereferenceable(24) %i.bv, i64 24, i1 false), !alias.scope !621
  %i.bx = add nuw i64 %.sroa.06.014.i51, 2        ; 2 uses
  %i.by = xor i64 %.sroa.06.014.i51, -2
  %i.bz = getelementptr [24 x i8], ptr %i.bb, i64 %i.by
  %i.ca = getelementptr [24 x i8], ptr %i.bs, i64 %.sroa.06.014.i51
  %i.cb = getelementptr i8, ptr %i.ca, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cb, ptr noundef nonnull align 8 dereferenceable(24) %i.bz, i64 24, i1 false), !alias.scope !621
  %niter291.next.1 = add i64 %niter291, 2         ; 2 uses
  %niter291.ncmp.1 = icmp eq i64 %niter291.next.1, %unroll_iter290
  br i1 %niter291.ncmp.1, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort16stable_partitionTmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataENCINvB2_9quicksortB1d_NCINvMNtCs1xwejQucwHj_5alloc5sliceSB1d_7sort_byNCINvXs1o_NtNtNtB2A_11collections5btree3mapINtB3n_8BTreeMapmB1f_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1d_E9from_iterINtNtNtB4n_8adapters3map3MapINtNtB5k_9enumerate9EnumerateINtNtNtB2A_3vec9into_iter8IntoIterB1f_EENCINvXsf_B1h_NtB1h_14VisitPackIndexNtNtCs6LlcditsbhK_5serde2de7Visitor9visit_seqINtNtCs974quTetXso_9rmp_serde6decode9SeqAccessINtB89_10ReadReaderINtNtNtNtB2A_2io8buffered9bufreader9BufReaderRShEENtNtB8b_6config13DefaultConfigEE0EE0E0E0EB1j_.exit.unr-lcssa, label %.lr.ph16.i50

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort16stable_partitionTmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataENCINvB2_9quicksortB1d_NCINvMNtCs1xwejQucwHj_5alloc5sliceSB1d_7sort_byNCINvXs1o_NtNtNtB2A_11collections5btree3mapINtB3n_8BTreeMapmB1f_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1d_E9from_iterINtNtNtB4n_8adapters3map3MapINtNtB5k_9enumerate9EnumerateINtNtNtB2A_3vec9into_iter8IntoIterB1f_EENCINvXsf_B1h_NtB1h_14VisitPackIndexNtNtCs6LlcditsbhK_5serde2de7Visitor9visit_seqINtNtCs974quTetXso_9rmp_serde6decode9SeqAccessINtB89_10ReadReaderINtNtNtNtB2A_2io8buffered9bufreader9BufReaderRShEENtNtB8b_6config13DefaultConfigEE0EE0E0E0EB1j_.exit.unr-lcssa: ; preds = %.lr.ph16.i50
  %lcmp.mod288.not = icmp eq i64 %xtraiter287, 0
  br i1 %lcmp.mod288.not, label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort16stable_partitionTmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataENCINvB2_9quicksortB1d_NCINvMNtCs1xwejQucwHj_5alloc5sliceSB1d_7sort_byNCINvXs1o_NtNtNtB2A_11collections5btree3mapINtB3n_8BTreeMapmB1f_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1d_E9from_iterINtNtNtB4n_8adapters3map3MapINtNtB5k_9enumerate9EnumerateINtNtNtB2A_3vec9into_iter8IntoIterB1f_EENCINvXsf_B1h_NtB1h_14VisitPackIndexNtNtCs6LlcditsbhK_5serde2de7Visitor9visit_seqINtNtCs974quTetXso_9rmp_serde6decode9SeqAccessINtB89_10ReadReaderINtNtNtNtB2A_2io8buffered9bufreader9BufReaderRShEENtNtB8b_6config13DefaultConfigEE0EE0E0E0EB1j_.exit, label %.lr.ph16.i50.epil.preheader

.lr.ph16.i50.epil.preheader:                      ; preds = %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort16stable_partitionTmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataENCINvB2_9quicksortB1d_NCINvMNtCs1xwejQucwHj_5alloc5sliceSB1d_7sort_byNCINvXs1o_NtNtNtB2A_11collections5btree3mapINtB3n_8BTreeMapmB1f_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1d_E9from_iterINtNtNtB4n_8adapters3map3MapINtNtB5k_9enumerate9EnumerateINtNtNtB2A_3vec9into_iter8IntoIterB1f_EENCINvXsf_B1h_NtB1h_14VisitPackIndexNtNtCs6LlcditsbhK_5serde2de7Visitor9visit_seqINtNtCs974quTetXso_9rmp_serde6decode9SeqAccessINtB89_10ReadReaderINtNtNtNtB2A_2io8buffered9bufreader9BufReaderRShEENtNtB8b_6config13DefaultConfigEE0EE0E0E0EB1j_.exit.unr-lcssa, %.lr.ph16.i50.preheader
  %.sroa.06.014.i51.epil.init = phi i64 [ 0, %.lr.ph16.i50.preheader ], [ %i.bx, %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort16stable_partitionTmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataENCINvB2_9quicksortB1d_NCINvMNtCs1xwejQucwHj_5alloc5sliceSB1d_7sort_byNCINvXs1o_NtNtNtB2A_11collections5btree3mapINtB3n_8BTreeMapmB1f_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1d_E9from_iterINtNtNtB4n_8adapters3map3MapINtNtB5k_9enumerate9EnumerateINtNtNtB2A_3vec9into_iter8IntoIterB1f_EENCINvXsf_B1h_NtB1h_14VisitPackIndexNtNtCs6LlcditsbhK_5serde2de7Visitor9visit_seqINtNtCs974quTetXso_9rmp_serde6decode9SeqAccessINtB89_10ReadReaderINtNtNtNtB2A_2io8buffered9bufreader9BufReaderRShEENtNtB8b_6config13DefaultConfigEE0EE0E0E0EB1j_.exit.unr-lcssa ] ; 2 uses
  %lcmp.mod289 = trunc i64 %i.br to i1
  call void @llvm.assume(i1 %lcmp.mod289)
  %i.cc = xor i64 %.sroa.06.014.i51.epil.init, -1
  %i.cd = getelementptr [24 x i8], ptr %i.bb, i64 %i.cc
  %i.ce = getelementptr [24 x i8], ptr %i.bs, i64 %.sroa.06.014.i51.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ce, ptr noundef nonnull align 8 dereferenceable(24) %i.cd, i64 24, i1 false), !alias.scope !621
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort16stable_partitionTmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataENCINvB2_9quicksortB1d_NCINvMNtCs1xwejQucwHj_5alloc5sliceSB1d_7sort_byNCINvXs1o_NtNtNtB2A_11collections5btree3mapINtB3n_8BTreeMapmB1f_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1d_E9from_iterINtNtNtB4n_8adapters3map3MapINtNtB5k_9enumerate9EnumerateINtNtNtB2A_3vec9into_iter8IntoIterB1f_EENCINvXsf_B1h_NtB1h_14VisitPackIndexNtNtCs6LlcditsbhK_5serde2de7Visitor9visit_seqINtNtCs974quTetXso_9rmp_serde6decode9SeqAccessINtB89_10ReadReaderINtNtNtNtB2A_2io8buffered9bufreader9BufReaderRShEENtNtB8b_6config13DefaultConfigEE0EE0E0E0EB1j_.exit

_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort16stable_partitionTmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataENCINvB2_9quicksortB1d_NCINvMNtCs1xwejQucwHj_5alloc5sliceSB1d_7sort_byNCINvXs1o_NtNtNtB2A_11collections5btree3mapINtB3n_8BTreeMapmB1f_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1d_E9from_iterINtNtNtB4n_8adapters3map3MapINtNtB5k_9enumerate9EnumerateINtNtNtB2A_3vec9into_iter8IntoIterB1f_EENCINvXsf_B1h_NtB1h_14VisitPackIndexNtNtCs6LlcditsbhK_5serde2de7Visitor9visit_seqINtNtCs974quTetXso_9rmp_serde6decode9SeqAccessINtB89_10ReadReaderINtNtNtNtB2A_2io8buffered9bufreader9BufReaderRShEENtNtB8b_6config13DefaultConfigEE0EE0E0E0EB1j_.exit: ; preds = %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort16stable_partitionTmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataENCINvB2_9quicksortB1d_NCINvMNtCs1xwejQucwHj_5alloc5sliceSB1d_7sort_byNCINvXs1o_NtNtNtB2A_11collections5btree3mapINtB3n_8BTreeMapmB1f_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1d_E9from_iterINtNtNtB4n_8adapters3map3MapINtNtB5k_9enumerate9EnumerateINtNtNtB2A_3vec9into_iter8IntoIterB1f_EENCINvXsf_B1h_NtB1h_14VisitPackIndexNtNtCs6LlcditsbhK_5serde2de7Visitor9visit_seqINtNtCs974quTetXso_9rmp_serde6decode9SeqAccessINtB89_10ReadReaderINtNtNtNtB2A_2io8buffered9bufreader9BufReaderRShEENtNtB8b_6config13DefaultConfigEE0EE0E0E0EB1j_.exit.unr-lcssa, %.lr.ph16.i50.epil.preheader
  %i.cf = icmp ugt i64 %.sroa.11.1.lcssa.i47, %.sroa.16.089217
  br i1 %i.cf, label %bb.w, label %.outer, !prof !324

.outer.thread:                                    ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.outer._crit_edge

.outer:                                           ; preds = %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort16stable_partitionTmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataENCINvB2_9quicksortB1d_NCINvMNtCs1xwejQucwHj_5alloc5sliceSB1d_7sort_byNCINvXs1o_NtNtNtB2A_11collections5btree3mapINtB3n_8BTreeMapmB1f_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1d_E9from_iterINtNtNtB4n_8adapters3map3MapINtNtB5k_9enumerate9EnumerateINtNtNtB2A_3vec9into_iter8IntoIterB1f_EENCINvXsf_B1h_NtB1h_14VisitPackIndexNtNtCs6LlcditsbhK_5serde2de7Visitor9visit_seqINtNtCs974quTetXso_9rmp_serde6decode9SeqAccessINtB89_10ReadReaderINtNtNtNtB2A_2io8buffered9bufreader9BufReaderRShEENtNtB8b_6config13DefaultConfigEE0EE0E0E0EB1j_.exit
  %i.cg = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.ph96, i64 %.sroa.11.1.lcssa.i47 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ch = icmp ult i64 %i.br, 33
  br i1 %i.ch, label %.outer._crit_edge, label %.lr.ph

bb.w:                                             ; preds = %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6stable9quicksort16stable_partitionTmNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataENCINvB2_9quicksortB1d_NCINvMNtCs1xwejQucwHj_5alloc5sliceSB1d_7sort_byNCINvXs1o_NtNtNtB2A_11collections5btree3mapINtB3n_8BTreeMapmB1f_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB1d_E9from_iterINtNtNtB4n_8adapters3map3MapINtNtB5k_9enumerate9EnumerateINtNtNtB2A_3vec9into_iter8IntoIterB1f_EENCINvXsf_B1h_NtB1h_14VisitPackIndexNtNtCs6LlcditsbhK_5serde2de7Visitor9visit_seqINtNtCs974quTetXso_9rmp_serde6decode9SeqAccessINtB89_10ReadReaderINtNtNtNtB2A_2io8buffered9bufreader9BufReaderRShEENtNtB8b_6config13DefaultConfigEE0EE0E0E0EB1j_.exit
  call void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef %.sroa.11.1.lcssa.i47, i64 noundef %.sroa.16.089217, i64 noundef %.sroa.16.089217, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #30
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort8unstable9quicksort9quicksortTTNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEjENvYB17_NtNtBa_3cmp10PartialOrd2ltEB1S_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 192153584101141163) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(48) %2, i32 noundef %3, ptr noalias nofree noundef nonnull %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = alloca [48 x i8], align 8                ; 7 uses
  %i.c = icmp samesign ult i64 %1, 33
  br i1 %i.c, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.d = icmp eq i32 %3, 0
  br i1 %i.d, label %.lr.ph._crit_edge, label %.lr.ph210

.lr.ph:                                           ; preds = %.backedge
  %i.e = icmp eq i32 %i.f, 0
  br i1 %i.e, label %.lr.ph._crit_edge, label %.lr.ph210

._crit_edge:                                      ; preds = %.backedge, %bb.a
  %.sroa.15.0.lcssa = phi i64 [ %1, %bb.a ], [ %.sroa.15.0.be, %.backedge ]
  %.sroa.0.0.lcssa = phi ptr [ %0, %bb.a ], [ %.sroa.0.0.be, %.backedge ]
  call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared9smallsort18small_sort_generalTTNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEjENvYB1f_NtNtBa_3cmp10PartialOrd2ltEB20_(ptr noalias nofree noundef nonnull align 8 %.sroa.0.0.lcssa, i64 noundef range(i64 0, 33) %.sroa.15.0.lcssa, ptr noalias nofree noundef nonnull %4)
  br label %bb.h

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %.lr.ph.preheader
  %.sroa.0.0107.lcssa = phi ptr [ %0, %.lr.ph.preheader ], [ %.sroa.0.0.be, %.lr.ph ]
  %.sroa.15.0106.lcssa = phi i64 [ %1, %.lr.ph.preheader ], [ %.sroa.15.0.be, %.lr.ph ]
  call void @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort8unstable8heapsort8heapsortTTNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEjENvYB15_NtNtBa_3cmp10PartialOrd2ltEB1Q_(ptr noalias nofree noundef nonnull align 8 %.sroa.0.0107.lcssa, i64 noundef %.sroa.15.0106.lcssa, ptr noalias nofree noundef nonnull %4) #31
  br label %bb.h

.lr.ph210:                                        ; preds = %.lr.ph.preheader, %.lr.ph
  %.sroa.026.0103209 = phi i32 [ %i.f, %.lr.ph ], [ %3, %.lr.ph.preheader ]
  %.sroa.023.0104207 = phi ptr [ %.sroa.023.0.be, %.lr.ph ], [ %2, %.lr.ph.preheader ] ; 5 uses
  %.sroa.15.0106206 = phi i64 [ %.sroa.15.0.be, %.lr.ph ], [ %1, %.lr.ph.preheader ] ; 13 uses
  %.sroa.0.0107205 = phi ptr [ %.sroa.0.0.be, %.lr.ph ], [ %0, %.lr.ph.preheader ] ; 33 uses
  %i.f = add i32 %.sroa.026.0103209, -1           ; 3 uses
  %i.g = lshr i64 %.sroa.15.0106206, 3            ; 3 uses
  %.idx.i = mul nuw nsw i64 %i.g, 192
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.0107205, i64 %.idx.i ; 8 uses
  %.idx2.i = mul nuw nsw i64 %i.g, 336
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0107205, i64 %.idx2.i ; 8 uses
  %i.j = icmp samesign ult i64 %.sroa.15.0106206, 64
  br i1 %i.j, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph210
  %i.k = call fastcc noundef ptr @_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared5pivot11median3_recTTNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEjENvYB14_NtNtBa_3cmp10PartialOrd2ltEB1P_(ptr noundef nonnull readonly align 8 %.sroa.0.0107205, ptr noundef readonly %i.h, ptr noundef readonly %i.i, i64 noundef %i.g)
  br label %_RINvNtNtNtNtCs3oUPovFnLWP_4core5slice4sort6shared5pivot12choose_pivotTTNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEjENvYB15_NtNtBa_3cmp10PartialOrd2ltEB1Q_.exit

bb.c:                                             ; preds = %.lr.ph210
  call void @llvm.experimental.noalias.scope.decl(metadata !628)
  call void @llvm.experimental.noalias.scope.decl(metadata !631)
  call void @llvm.experimental.noalias.scope.decl(metadata !633)
  call void @llvm.experimental.noalias.scope.decl(metadata !636)
  %i.l = call noundef range(i8 0, 3) i8 @_RINvNtCs3oUPovFnLWP_4core3cmp21default_chaining_implNtNtCsaL1QbXo9JQH_3std4time10SystemTimeBO_NvMB2_NtB2_8Ordering5is_ltECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.sroa.0.0107205, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.h) ; 2 uses
  %.not.i.i.i.i = icmp eq i8 %i.l, 2
  br i1 %.not.i.i.i.i, label %_RNvXsc_NtCs3oUPovFnLWP_4core5tupleTNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENtNtB7_3cmp10PartialOrd13___chaining_ltB1g_.exit.i.i.i, label %_RNvXsc_NtCs3oUPovFnLWP_4core5tupleTNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENtNtB7_3cmp10PartialOrd13___chaining_ltB1g_.exit.thread.i.i.i

_RNvXsc_NtCs3oUPovFnLWP_4core5tupleTNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENtNtB7_3cmp10PartialOrd13___chaining_ltB1g_.exit.i.i.i: ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.0107205, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.o = call noundef range(i8 0, 3) i8 @_RINvNtCs3oUPovFnLWP_4core3cmp21default_chaining_implNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdBO_NvMB2_NtB2_8Ordering5is_ltEBU_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.m, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.n) ; 2 uses
  %.not.i.i.i = icmp eq i8 %i.o, 2
  br i1 %.not.i.i.i, label %bb.d, label %_RNvXsc_NtCs3oUPovFnLWP_4core5tupleTNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENtNtB7_3cmp10PartialOrd13___chaining_ltB1g_.exit.thread.i.i.i

_RNvXsc_NtCs3oUPovFnLWP_4core5tupleTNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENtNtB7_3cmp10PartialOrd13___chaining_ltB1g_.exit.thread.i.i.i: ; preds = %_RNvXsc_NtCs3oUPovFnLWP_4core5tupleTNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENtNtB7_3cmp10PartialOrd13___chaining_ltB1g_.exit.i.i.i, %bb.c
  %.sroa.0.0.i5.i.i.i = phi i8 [ %i.o, %_RNvXsc_NtCs3oUPovFnLWP_4core5tupleTNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENtNtB7_3cmp10PartialOrd13___chaining_ltB1g_.exit.i.i.i ], [ %i.l, %bb.c ]
  %i.p = trunc nuw i8 %.sroa.0.0.i5.i.i.i to i1
  br label %_RNvYNvYTTNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEjENtNtCs3oUPovFnLWP_4core3cmp10PartialOrd2ltINtNtNtB1C_3ops8function5FnMutTRB5_B2J_EE8call_mutBQ_.exit.i

bb.d:                                             ; preds = %_RNvXsc_NtCs3oUPovFnLWP_4core5tupleTNtNtCsaL1QbXo9JQH_3std4time10SystemTimeNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENtNtB7_3cmp10PartialOrd13___chaining_ltB1g_.exit.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.0107205, i64 40
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 40
end_hunk_0
