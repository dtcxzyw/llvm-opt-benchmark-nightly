Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/elfshaker-rs/original/elfshaker-6828a789a61900ca.elfshaker.eea5205138ee20d7-cgu.02?download=true
inline.NumInlined: 801
inline.NumDeleted: 529
begin_hunk_0_@_RINvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB6_8IntoIterNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtB1U_8adapters9enumerateINtB2Z_9EnumeratepEB1O_4fold9enumerateBX_uNCINvNtB31_3map8map_foldTjBX_ETmBX_EuNCINvXsf_BZ_NtBZ_14VisitPackIndexNtNtCs6LlcditsbhK_5serde2de7Visitor9visit_seqINtNtCs974quTetXso_9rmp_serde6decode9SeqAccessINtB60_10ReadReaderINtNtNtNtBa_2io8buffered9bufreader9BufReaderNtNtCsaL1QbXo9JQH_3std2fs4FileEENtNtB62_6config13DefaultConfigEE0NCINvNvB1O_8for_each4callB4A_NCINvMsk_B8_INtB8_3VecB4A_E14extend_trustedINtB4b_3MapIB3r_BI_EB4H_EE0E0E0E0EB11_:bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = load i64, ptr %i.s, align 8, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.t, ptr %i.a, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.r, ptr %i.u, align 8
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = landingpad { ptr, i32 }
          cleanup
  %.val6 = load ptr, ptr %1, align 8, !nonnull !5, !align !9, !noundef !5
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val7 = load i64, ptr %i.w, align 8, !noundef !5
  store i64 %.val7, ptr %.val6, align 8
  resume { ptr, i32 } %i.v

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.val = load ptr, ptr %1, align 8, !nonnull !5, !align !9, !noundef !5
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val5 = load i64, ptr %i.x, align 8, !noundef !5
  store i64 %.val5, ptr %.val, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB6_8IntoIterNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtB1U_8adapters9enumerateINtB2Z_9EnumeratepEB1O_4fold9enumerateBX_uNCINvNtB31_3map8map_foldTjBX_ETmBX_EuNCINvXsf_BZ_NtBZ_14VisitPackIndexNtNtCs6LlcditsbhK_5serde2de7Visitor9visit_seqINtNtCs974quTetXso_9rmp_serde6decode9SeqAccessINtB60_10ReadReaderINtNtNtNtBa_2io8buffered9bufreader9BufReaderRShEENtNtB62_6config13DefaultConfigEE0NCINvNvB1O_8for_each4callB4A_NCINvMsk_B8_INtB8_3VecB4A_E14extend_trustedINtB4b_3MapIB3r_BI_EB4H_EE0E0E0E0EB11_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.promoted = load ptr, ptr %i.d, align 8        ; 2 uses
  %.not.not10 = icmp eq ptr %.promoted, %i.c
  br i1 %.not.not10, label %bb.c, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !563, !noundef !5
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.promoted11 = load i64, ptr %i.e, align 8, !alias.scope !564
  %.promoted13 = load i64, ptr %i.h, align 8, !alias.scope !563
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %i.i = phi i64 [ %.promoted13, %.lr.ph ], [ %i.p, %bb.b ] ; 2 uses
  %i.j = phi i64 [ %.promoted11, %.lr.ph ], [ %i.q, %bb.b ] ; 2 uses
  %i.k = phi ptr [ %.promoted, %.lr.ph ], [ %i.l, %bb.b ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !564)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !565)
  %i.m = trunc i64 %i.j to i32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !566)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !567)
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %i.i ; 2 uses
  %.sroa.54.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.o = load <2 x i64>, ptr %i.k, align 8
  store i32 %i.m, ptr %i.n, align 8, !noalias !568
  store <2 x i64> %i.o, ptr %.sroa.54.0..sroa_idx.i.i, align 8, !noalias !568
  %i.p = add i64 %i.i, 1                          ; 2 uses
  %i.q = add i64 %i.j, 1
  %.not.not = icmp eq ptr %i.l, %i.c
  br i1 %.not.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.b
  store i64 %i.p, ptr %i.h, align 8, !alias.scope !563
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.a
  %i.r = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = load i64, ptr %i.s, align 8, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.t, ptr %i.a, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.r, ptr %i.u, align 8
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = landingpad { ptr, i32 }
          cleanup
  %.val8 = load ptr, ptr %1, align 8, !nonnull !5, !align !9, !noundef !5
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val9 = load i64, ptr %i.w, align 8, !noundef !5
  store i64 %.val9, ptr %.val8, align 8
  resume { ptr, i32 } %i.v

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.val6 = load ptr, ptr %1, align 8, !nonnull !5, !align !9, !noundef !5
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val7 = load i64, ptr %i.x, align 8, !noundef !5
  store i64 %.val7, ptr %.val6, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RINvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB6_8IntoIterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10SnapshotIdENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropBX_ENCINvNtNtB1U_8adapters6filter15filter_try_foldBX_B2S_INtNtB1W_6result6ResultB2S_zENCNCNvMs0_NtB11_10repositoryNtB50_10Repository26find_redundant_loose_packss_00NCINvNtB8_16in_place_collect24write_in_place_with_dropBX_E0E0B4n_EB13_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %3, ptr nofree noundef readnone captures(none) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [64 x i8], align 8                ; 5 uses
  %i.c = alloca [48 x i8], align 8                ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.f = load ptr, ptr %i.d, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.g = load ptr, ptr %i.e, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %.not10 = icmp eq ptr %i.g, %i.f
  br i1 %.not10, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.val.i.pre12 = load ptr, ptr %3, align 8, !noalias !573
  %.val.i.pre = load ptr, ptr %3, align 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter15filter_try_foldNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10SnapshotIdINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop11InPlaceDropB15_EINtNtBa_6result6ResultB1V_zENCNCNvMs0_NtB19_10repositoryNtB3z_10Repository26find_redundant_loose_packss_00NCINvNtB20_16in_place_collect24write_in_place_with_dropB15_E0E0B1b_.exit
  %i.k = phi ptr [ %i.f, %.lr.ph ], [ %i.t, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter15filter_try_foldNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10SnapshotIdINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop11InPlaceDropB15_EINtNtBa_6result6ResultB1V_zENCNCNvMs0_NtB19_10repositoryNtB3z_10Repository26find_redundant_loose_packss_00NCINvNtB20_16in_place_collect24write_in_place_with_dropB15_E0E0B1b_.exit ]
  %.val.i = phi ptr [ %.val.i.pre12, %.lr.ph ], [ %.val.i13, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter15filter_try_foldNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10SnapshotIdINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop11InPlaceDropB15_EINtNtBa_6result6ResultB1V_zENCNCNvMs0_NtB19_10repositoryNtB3z_10Repository26find_redundant_loose_packss_00NCINvNtB20_16in_place_collect24write_in_place_with_dropB15_E0E0B1b_.exit ] ; 2 uses
  %i.l = phi ptr [ %i.g, %.lr.ph ], [ %i.s, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter15filter_try_foldNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10SnapshotIdINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop11InPlaceDropB15_EINtNtBa_6result6ResultB1V_zENCNCNvMs0_NtB19_10repositoryNtB3z_10Repository26find_redundant_loose_packss_00NCINvNtB20_16in_place_collect24write_in_place_with_dropB15_E0E0B1b_.exit ] ; 2 uses
  %.sroa.4.011 = phi ptr [ %2, %.lr.ph ], [ %.pn6.i, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter15filter_try_foldNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10SnapshotIdINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop11InPlaceDropB15_EINtNtBa_6result6ResultB1V_zENCNCNvMs0_NtB19_10repositoryNtB3z_10Repository26find_redundant_loose_packss_00NCINvNtB20_16in_place_collect24write_in_place_with_dropB15_E0E0B1b_.exit ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef nonnull align 8 dereferenceable(48) %i.l, i64 48, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 48 ; 2 uses
  store ptr %i.m, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %1, ptr %i.b, align 8
  store ptr %.sroa.4.011, ptr %i.h, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.i, ptr noundef nonnull align 8 dereferenceable(48) %i.c, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %1, ptr %i.a, align 8, !noalias !573
  store ptr %.sroa.4.011, ptr %i.j, align 8, !noalias !573
  %i.n = load ptr, ptr %.val.i, align 8, !noalias !574, !nonnull !5, !align !9, !noundef !5
  %i.o = invoke noundef zeroext i1 @_RNvMs0_NtNtCskuiImRAV2ip_9elfshaker4repo10repositoryNtB5_10Repository13is_pack_loose(ptr noundef nonnull align 8 %i.n, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.i)
          to label %_RNCNCNvMs0_NtNtCskuiImRAV2ip_9elfshaker4repo10repositoryNtB9_10Repository26find_redundant_loose_packss_00Bd_.exit.i unwind label %bb.e

_RNCNCNvMs0_NtNtCskuiImRAV2ip_9elfshaker4repo10repositoryNtB9_10Repository26find_redundant_loose_packss_00Bd_.exit.i: ; preds = %bb.b
  br i1 %i.o, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_RNCNCNvMs0_NtNtCskuiImRAV2ip_9elfshaker4repo10repositoryNtB9_10Repository26find_redundant_loose_packss_00Bd_.exit.i
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10SnapshotIdEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.i)
  br label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter15filter_try_foldNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10SnapshotIdINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop11InPlaceDropB15_EINtNtBa_6result6ResultB1V_zENCNCNvMs0_NtB19_10repositoryNtB3z_10Repository26find_redundant_loose_packss_00NCINvNtB20_16in_place_collect24write_in_place_with_dropB15_E0E0B1b_.exit

bb.d:                                             ; preds = %_RNCNCNvMs0_NtNtCskuiImRAV2ip_9elfshaker4repo10repositoryNtB9_10Repository26find_redundant_loose_packss_00Bd_.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.4.011, ptr noundef nonnull align 8 dereferenceable(48) %i.i, i64 48, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.4.011, i64 48
  %.pre = load ptr, ptr %i.d, align 8
  %.pre15 = load ptr, ptr %i.e, align 8
  br label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter15filter_try_foldNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10SnapshotIdINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop11InPlaceDropB15_EINtNtBa_6result6ResultB1V_zENCNCNvMs0_NtB19_10repositoryNtB3z_10Repository26find_redundant_loose_packss_00NCINvNtB20_16in_place_collect24write_in_place_with_dropB15_E0E0B1b_.exit

bb.e:                                             ; preds = %bb.b
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10SnapshotIdEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.i) #18
          to label %.thread.i unwind label %bb.f

bb.f:                                             ; preds = %.thread.i, %bb.e
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #16
  unreachable

bb.g:                                             ; preds = %.thread.i
  resume { ptr, i32 } %i.q

.thread.i:                                        ; preds = %bb.e
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop11InPlaceDropNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10SnapshotIdEEB1E_(ptr noalias nofree noundef align 8 dereferenceable(16) %i.a) #18
          to label %bb.g unwind label %bb.f

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter15filter_try_foldNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10SnapshotIdINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop11InPlaceDropB15_EINtNtBa_6result6ResultB1V_zENCNCNvMs0_NtB19_10repositoryNtB3z_10Repository26find_redundant_loose_packss_00NCINvNtB20_16in_place_collect24write_in_place_with_dropB15_E0E0B1b_.exit: ; preds = %bb.c, %bb.d
  %i.s = phi ptr [ %.pre15, %bb.d ], [ %i.m, %bb.c ] ; 2 uses
  %i.t = phi ptr [ %.pre, %bb.d ], [ %i.k, %bb.c ] ; 2 uses
  %.val.i13 = phi ptr [ %.val.i.pre, %bb.d ], [ %.val.i, %bb.c ]
  %.pn6.i = phi ptr [ %i.p, %bb.d ], [ %.sroa.4.011, %bb.c ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.not = icmp eq ptr %i.s, %i.t
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter15filter_try_foldNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10SnapshotIdINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop11InPlaceDropB15_EINtNtBa_6result6ResultB1V_zENCNCNvMs0_NtB19_10repositoryNtB3z_10Repository26find_redundant_loose_packss_00NCINvNtB20_16in_place_collect24write_in_place_with_dropB15_E0E0B1b_.exit, %bb.a
  %.sroa.4.0.lcssa = phi ptr [ %2, %bb.a ], [ %.pn6.i, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter15filter_try_foldNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack10SnapshotIdINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop11InPlaceDropB15_EINtNtBa_6result6ResultB1V_zENCNCNvMs0_NtB19_10repositoryNtB3z_10Repository26find_redundant_loose_packss_00NCINvNtB20_16in_place_collect24write_in_place_with_dropB15_E0E0B1b_.exit ]
  %i.u = insertvalue { ptr, ptr } poison, ptr %1, 0
  %i.v = insertvalue { ptr, ptr } %i.u, ptr %.sroa.4.0.lcssa, 1
  ret { ptr, ptr } %i.v
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB6_8IntoIterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropBX_ENCINvNtNtB1P_8adapters10filter_map19filter_map_try_foldBX_INtNtB1R_6result6ResultBX_NtNtB11_5error5ErrorEB2N_INtNtNtB1R_3ops12control_flow11ControlFlowIB4o_B2N_zEB2N_ENCNvMs0_NtB11_10repositoryNtB6g_10Repository23find_pack_with_snapshot0NCINvXB3y_INtB3y_12GenericShuntINtB3w_9FilterMapBI_B68_EIB4o_zB4N_EEB1J_8try_foldB2N_NCINvNtB8_16in_place_collect24write_in_place_with_dropBX_E0B5S_E0E0B5c_EB13_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr noundef %2, ptr noundef %3, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 9 uses
  %.sroa.5.i.i = alloca [16 x i8], align 8        ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 9 uses
  %i.e = alloca [56 x i8], align 16               ; 8 uses
  %.sroa.8.i.i = alloca [40 x i8], align 8        ; 8 uses
  %.sroa.9.i = alloca [40 x i8], align 8          ; 11 uses
  %i.f = alloca [24 x i8], align 8                ; 9 uses
  %i.g = alloca [16 x i8], align 8                ; 7 uses
  %i.h = alloca [24 x i8], align 8                ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.k = load ptr, ptr %i.i, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.l = load ptr, ptr %i.j, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %.not46 = icmp eq ptr %i.l, %i.k
  br i1 %.not46, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.val = load ptr, ptr %4, align 8, !nonnull !5, !align !9, !noundef !5 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.n = getelementptr i8, ptr %.val, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.53.0..sroa_idx4.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.y
  %i.u = phi ptr [ %i.k, %.lr.ph ], [ %i.bg, %bb.y ]
  %i.v = phi ptr [ %i.l, %.lr.ph ], [ %i.bf, %bb.y ] ; 2 uses
  %.sroa.4.047 = phi ptr [ %3, %.lr.ph ], [ %.sroa.811.020, %bb.y ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.v, i64 24, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24 ; 2 uses
  store ptr %i.w, ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !597
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %2, ptr %i.g, align 8, !noalias !597
  store ptr %.sroa.4.047, ptr %i.m, align 8, !noalias !597
  %.val.i = load ptr, ptr %.val, align 8, !noalias !597, !nonnull !5, !align !9, !noundef !5
  %.val2.i = load ptr, ptr %i.n, align 8, !noalias !597 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !598
  %i.x = load ptr, ptr %.val.i, align 8, !noalias !598, !nonnull !5, !align !9, !noundef !5
  invoke void @_RNvMs0_NtNtCskuiImRAV2ip_9elfshaker4repo10repositoryNtB5_10Repository20load_index_snapshots(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.e, ptr noundef nonnull align 8 %i.x, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.f)
          to label %bb.c unwind label %bb.p, !noalias !599

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !598
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i) ]
  store ptr %.val2.i, ptr %i.o, align 8, !noalias !598
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !noalias !599
  %i.y = load i64, ptr %i.e, align 16, !range !8, !noalias !598, !noundef !5 ; 2 uses
  %.not.i.i = icmp eq i64 %i.y, -2
  br i1 %.not.i.i, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.val2.le = load ptr, ptr %i.z, align 8         ; 10 uses
  %5 = load <2 x i64>, ptr %i.e, align 16, !noalias !598 ; 2 uses
  %.sroa.59.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8.i.i, ptr noundef nonnull align 16 dereferenceable(40) %.sroa.59.0..sroa_idx.i.i, i64 40, i1 false), !noalias !598
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.d)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEBH_.exit.i.i.i unwind label %bb.e, !noalias !599

bb.e:                                             ; preds = %bb.d
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.d)
          to label %.loopexit.split-lp unwind label %bb.f, !noalias !599

bb.f:                                             ; preds = %bb.e
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #16, !noalias !599
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEBH_.exit.i.i.i: ; preds = %bb.d
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.d)
          to label %bb.r unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !597

bb.g:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !598
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false), !noalias !598
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i)
  %.sroa.01.0.copyload.i.i = load i64, ptr %i.d, align 8, !noalias !598 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !600)
  %i.ac = load ptr, ptr %i.r, align 8, !alias.scope !600, !noalias !598, !nonnull !5, !noundef !5 ; 2 uses
  %i.ad = load i64, ptr %i.s, align 8, !alias.scope !600, !noalias !598, !noundef !5 ; 2 uses
  %.idx.i.i.i = mul nuw nsw i64 %i.ad, 24
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.idx.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !601)
  %.not.i.i.i.i = icmp eq i64 %i.ad, 0
  br i1 %.not.i.i.i.i, label %.loopexit.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %.val2.i, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !alias.scope !601, !noalias !602, !noundef !5 ; 2 uses
  %i.ah = load ptr, ptr %.val2.i, align 8, !alias.scope !601, !noalias !602, !nonnull !5
  br label %bb.h

bb.h:                                             ; preds = %_RNCNCNCNvMs0_NtNtCskuiImRAV2ip_9elfshaker4repo10repositoryNtBb_10Repository23find_pack_with_snapshot000Bf_.exit.backedge.i.i.i.i, %.lr.ph.i.i.i.i
  %i.ai = phi ptr [ %i.ac, %.lr.ph.i.i.i.i ], [ %i.aj, %_RNCNCNCNvMs0_NtNtCskuiImRAV2ip_9elfshaker4repo10repositoryNtBb_10Repository23find_pack_with_snapshot000Bf_.exit.backedge.i.i.i.i ] ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 24 ; 2 uses
  %i.ak = getelementptr i8, ptr %i.ai, i64 16
  %.val3.i.i.i.i = load i64, ptr %i.ak, align 8, !noalias !603, !noundef !5
  %i.al = icmp eq i64 %.val3.i.i.i.i, %i.ag
  br i1 %i.al, label %.split.i.i.i.i, label %_RNCNCNCNvMs0_NtNtCskuiImRAV2ip_9elfshaker4repo10repositoryNtBb_10Repository23find_pack_with_snapshot000Bf_.exit.backedge.i.i.i.i

.split.i.i.i.i:                                   ; preds = %bb.h
  %i.am = getelementptr i8, ptr %i.ai, i64 8
  %.val2.i.i.i.i = load ptr, ptr %i.am, align 8, !noalias !603, !nonnull !5, !noundef !5
  %bcmp.i.i.i.i.i = call i32 @bcmp(ptr nonnull readonly %.val2.i.i.i.i, ptr nonnull %i.ah, i64 %i.ag), !noalias !603
  %i.an = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %i.an, label %bb.l, label %_RNCNCNCNvMs0_NtNtCskuiImRAV2ip_9elfshaker4repo10repositoryNtBb_10Repository23find_pack_with_snapshot000Bf_.exit.backedge.i.i.i.i

_RNCNCNCNvMs0_NtNtCskuiImRAV2ip_9elfshaker4repo10repositoryNtBb_10Repository23find_pack_with_snapshot000Bf_.exit.backedge.i.i.i.i: ; preds = %.split.i.i.i.i, %bb.h
  %.not7.i.i.i.i = icmp eq ptr %i.aj, %i.ae
  br i1 %.not7.i.i.i.i, label %.loopexit.i.i.i, label %bb.h

bb.i:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECskuiImRAV2ip_9elfshaker.exit.i.i.i.i
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.j, %bb.i
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.ao, %bb.i ], [ %i.ap, %bb.j ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtBG_6string6StringEECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c) #18
          to label %.loopexit.split-lp unwind label %bb.o, !noalias !604

.loopexit.i.i.i:                                  ; preds = %_RNCNCNCNvMs0_NtNtCskuiImRAV2ip_9elfshaker4repo10repositoryNtBb_10Repository23find_pack_with_snapshot000Bf_.exit.backedge.i.i.i.i, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !602
  store i64 %.sroa.01.0.copyload.i.i, ptr %i.b, align 8, !noalias !605
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.53.0..sroa_idx4.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.q, i64 16, i1 false), !noalias !599
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECskuiImRAV2ip_9elfshaker.exit.i.i.i.i unwind label %bb.j, !noalias !606

bb.j:                                             ; preds = %.loopexit.i.i.i
  %i.ap = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.body.i.i.i unwind label %bb.k, !noalias !606

bb.k:                                             ; preds = %bb.j
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #16, !noalias !606
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECskuiImRAV2ip_9elfshaker.exit.i.i.i.i: ; preds = %.loopexit.i.i.i
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEBH_.exit.i25.i.i unwind label %bb.i, !noalias !606

bb.l:                                             ; preds = %.split.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !602
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.q, i64 16, i1 false), !noalias !599
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEBH_.exit.i25.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEBH_.exit.i25.i.i: ; preds = %bb.l, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECskuiImRAV2ip_9elfshaker.exit.i.i.i.i
  %.sroa.0.0.i.i = phi i64 [ -1, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECskuiImRAV2ip_9elfshaker.exit.i.i.i.i ], [ %.sroa.01.0.copyload.i.i, %bb.l ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !602
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtBG_6string6StringEECskuiImRAV2ip_9elfshaker.exit.i.i.i unwind label %bb.m, !noalias !604

bb.m:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEBH_.exit.i25.i.i
  %i.ar = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.loopexit.split-lp unwind label %bb.n, !noalias !604

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtBG_6string6StringEECskuiImRAV2ip_9elfshaker.exit.i.i.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEBH_.exit.i25.i.i
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.noexc4.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !597

.noexc4.i:                                        ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtBG_6string6StringEECskuiImRAV2ip_9elfshaker.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !598
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i, i64 16, i1 false), !noalias !598
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !598
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !598
  %.not24.i.i = icmp eq i64 %.sroa.0.0.i.i, -1
  br i1 %.not24.i.i, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdINtNtBa_6result6ResultB1e_NtNtB1i_5error5ErrorEINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop11InPlaceDropB1e_EINtNtNtBa_3ops12control_flow11ControlFlowIB20_B2K_zEB2K_ENCNvMs0_NtB1i_10repositoryNtB4P_10Repository23find_pack_with_snapshot0NCINvXB6_INtB6_12GenericShuntINtB4_9FilterMapINtNtB2P_9into_iter8IntoIterB1e_EB4H_EIB20_zB2p_EENtNtNtB8_6traits8iterator8Iterator8try_foldB2K_NCINvNtB2P_16in_place_collect24write_in_place_with_dropB1e_E0B4r_E0E0B1k_.exit.thread, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdINtNtBa_6result6ResultB1e_NtNtB1i_5error5ErrorEINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop11InPlaceDropB1e_EINtNtNtBa_3ops12control_flow11ControlFlowIB20_B2K_zEB2K_ENCNvMs0_NtB1i_10repositoryNtB4P_10Repository23find_pack_with_snapshot0NCINvXB6_INtB6_12GenericShuntINtB4_9FilterMapINtNtB2P_9into_iter8IntoIterB1e_EB4H_EIB20_zB2p_EENtNtNtB8_6traits8iterator8Iterator8try_foldB2K_NCINvNtB2P_16in_place_collect24write_in_place_with_dropB1e_E0B4r_E0E0B1k_.exit

bb.n:                                             ; preds = %bb.m
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #16, !noalias !604
  unreachable

bb.o:                                             ; preds = %.body.i.i.i
  %i.at = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #16, !noalias !604
  unreachable

bb.p:                                             ; preds = %bb.b
  %lpad.thr_comm.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f) #18
          to label %.loopexit.split-lp unwind label %bb.q, !noalias !599

bb.q:                                             ; preds = %bb.p
  %i.au = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #16, !noalias !599
  unreachable

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtBG_6string6StringEECskuiImRAV2ip_9elfshaker.exit.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEBH_.exit.i.i.i
  %lpad.loopexit.split-lp89 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.r:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEBH_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !598
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !598
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.9.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8.i.i, i64 40, i1 false), !noalias !597
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !597
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !597
  store ptr %2, ptr %i.a, align 8, !noalias !607
  store ptr %.sroa.4.047, ptr %i.t, align 8, !noalias !607
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.le) ]
  %i.av = load i64, ptr %.val2.le, align 8, !range !8, !alias.scope !608, !noalias !607, !noundef !5
  %i.aw = icmp eq i64 %i.av, -2
  br i1 %i.aw, label %bb.x, label %bb.s

bb.s:                                             ; preds = %bb.r
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %.val2.le)
          to label %bb.x unwind label %bb.t, !noalias !607

bb.t:                                             ; preds = %bb.s
  %i.ax = landingpad { ptr, i32 }
          cleanup
  store i64 %i.y, ptr %.val2.le, align 8, !noalias !607
  %.sroa.59.0..8.val.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.val2.le, i64 8
  %6 = extractelement <2 x i64> %5, i64 1
  store i64 %6, ptr %.sroa.59.0..8.val.sroa_idx.i.i, align 8, !noalias !609
  %.sroa.10.24..sroa.59.0..8.val.sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.val2.le, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.24..sroa.59.0..8.val.sroa_idx.i.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.i, i64 16, i1 false), !noalias !597
  %.sroa.611.0..8.val.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.val2.le, i64 32
  %.sroa.10.48..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.9.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.611.0..8.val.sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.48..sroa_idx.i, i64 24, i1 false), !noalias !597
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop11InPlaceDropNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEEB1E_(ptr noalias nofree noundef align 8 dereferenceable(16) %i.a) #18
          to label %.body.i unwind label %bb.u, !noalias !607

bb.u:                                             ; preds = %bb.t
  %i.ay = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #16, !noalias !607
  unreachable

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdINtNtBa_6result6ResultB1e_NtNtB1i_5error5ErrorEINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop11InPlaceDropB1e_EINtNtNtBa_3ops12control_flow11ControlFlowIB20_B2K_zEB2K_ENCNvMs0_NtB1i_10repositoryNtB4P_10Repository23find_pack_with_snapshot0NCINvXB6_INtB6_12GenericShuntINtB4_9FilterMapINtNtB2P_9into_iter8IntoIterB1e_EB4H_EIB20_zB2p_EENtNtNtB8_6traits8iterator8Iterator8try_foldB2K_NCINvNtB2P_16in_place_collect24write_in_place_with_dropB1e_E0B4r_E0E0B1k_.exit.thread: ; preds = %.noexc4.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !597
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.y

.body.i:                                          ; preds = %.loopexit.split-lp, %bb.t
  %eh.lpad-body9.i = phi { ptr, i32 } [ %eh.lpad-body.ph.i, %.loopexit.split-lp ], [ %i.ax, %bb.t ]
  resume { ptr, i32 } %eh.lpad-body9.i

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.p, %bb.m, %.body.i.i.i, %bb.e
  %eh.lpad-body.ph.i = phi { ptr, i32 } [ %eh.lpad-body.i.i.i, %.body.i.i.i ], [ %i.aa, %bb.e ], [ %lpad.thr_comm.split-lp.i.i, %bb.p ], [ %i.ar, %bb.m ], [ %lpad.loopexit.split-lp89, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop11InPlaceDropNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEEB1E_(ptr noalias nofree noundef align 8 dereferenceable(16) %i.g) #18
          to label %.body.i unwind label %bb.v, !noalias !597

bb.v:                                             ; preds = %.loopexit.split-lp
  %i.az = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #16, !noalias !597
  unreachable

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdINtNtBa_6result6ResultB1e_NtNtB1i_5error5ErrorEINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop11InPlaceDropB1e_EINtNtNtBa_3ops12control_flow11ControlFlowIB20_B2K_zEB2K_ENCNvMs0_NtB1i_10repositoryNtB4P_10Repository23find_pack_with_snapshot0NCINvXB6_INtB6_12GenericShuntINtB4_9FilterMapINtNtB2P_9into_iter8IntoIterB1e_EB4H_EIB20_zB2p_EENtNtNtB8_6traits8iterator8Iterator8try_foldB2K_NCINvNtB2P_16in_place_collect24write_in_place_with_dropB1e_E0B4r_E0E0B1k_.exit: ; preds = %.noexc4.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.i.i, i64 16, i1 false), !noalias !597
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !597
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !597
  store i64 %.sroa.0.0.i.i, ptr %.sroa.4.047, align 8, !noalias !609
  %.sroa.10.24..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.4.047, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.24..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.i, i64 16, i1 false), !noalias !597
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.4.047, i64 24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !597
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %.pre = load ptr, ptr %i.i, align 8
  %.pre60 = load ptr, ptr %i.j, align 8
  br label %bb.y

._crit_edge:                                      ; preds = %bb.y, %bb.a
  %.sroa.4.0.lcssa = phi ptr [ %3, %bb.a ], [ %.sroa.811.020, %bb.y ]
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.bb, align 8, !alias.scope !610
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.4.0.lcssa, ptr %i.bc, align 8, !alias.scope !610
  store i64 0, ptr %0, align 8, !alias.scope !610
  br label %bb.w

bb.w:                                             ; preds = %._crit_edge, %bb.x
  ret void

bb.x:                                             ; preds = %bb.r, %bb.s
  store <2 x i64> %5, ptr %.val2.le, align 8, !noalias !609
  %.sroa.10.24..sroa.59.0..8.val.sroa_idx10.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.val2.le, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.24..sroa.59.0..8.val.sroa_idx10.i.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.i, i64 16, i1 false), !noalias !597
  %.sroa.611.0..8.val.sroa_idx12.i.i = getelementptr inbounds nuw i8, ptr %.val2.le, i64 32
  %.sroa.10.48..sroa_idx6.i = getelementptr inbounds nuw i8, ptr %.sroa.9.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.611.0..8.val.sroa_idx12.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.48..sroa_idx6.i, i64 24, i1 false), !noalias !597
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !597
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.bd, align 8, !alias.scope !611
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.4.047, ptr %i.be, align 8, !alias.scope !611
  store i64 1, ptr %0, align 8, !alias.scope !611
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.w

bb.y:                                             ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdINtNtBa_6result6ResultB1e_NtNtB1i_5error5ErrorEINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop11InPlaceDropB1e_EINtNtNtBa_3ops12control_flow11ControlFlowIB20_B2K_zEB2K_ENCNvMs0_NtB1i_10repositoryNtB4P_10Repository23find_pack_with_snapshot0NCINvXB6_INtB6_12GenericShuntINtB4_9FilterMapINtNtB2P_9into_iter8IntoIterB1e_EB4H_EIB20_zB2p_EENtNtNtB8_6traits8iterator8Iterator8try_foldB2K_NCINvNtB2P_16in_place_collect24write_in_place_with_dropB1e_E0B4r_E0E0B1k_.exit, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdINtNtBa_6result6ResultB1e_NtNtB1i_5error5ErrorEINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop11InPlaceDropB1e_EINtNtNtBa_3ops12control_flow11ControlFlowIB20_B2K_zEB2K_ENCNvMs0_NtB1i_10repositoryNtB4P_10Repository23find_pack_with_snapshot0NCINvXB6_INtB6_12GenericShuntINtB4_9FilterMapINtNtB2P_9into_iter8IntoIterB1e_EB4H_EIB20_zB2p_EENtNtNtB8_6traits8iterator8Iterator8try_foldB2K_NCINvNtB2P_16in_place_collect24write_in_place_with_dropB1e_E0B4r_E0E0B1k_.exit.thread
  %i.bf = phi ptr [ %i.w, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdINtNtBa_6result6ResultB1e_NtNtB1i_5error5ErrorEINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop11InPlaceDropB1e_EINtNtNtBa_3ops12control_flow11ControlFlowIB20_B2K_zEB2K_ENCNvMs0_NtB1i_10repositoryNtB4P_10Repository23find_pack_with_snapshot0NCINvXB6_INtB6_12GenericShuntINtB4_9FilterMapINtNtB2P_9into_iter8IntoIterB1e_EB4H_EIB20_zB2p_EENtNtNtB8_6traits8iterator8Iterator8try_foldB2K_NCINvNtB2P_16in_place_collect24write_in_place_with_dropB1e_E0B4r_E0E0B1k_.exit.thread ], [ %.pre60, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdINtNtBa_6result6ResultB1e_NtNtB1i_5error5ErrorEINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop11InPlaceDropB1e_EINtNtNtBa_3ops12control_flow11ControlFlowIB20_B2K_zEB2K_ENCNvMs0_NtB1i_10repositoryNtB4P_10Repository23find_pack_with_snapshot0NCINvXB6_INtB6_12GenericShuntINtB4_9FilterMapINtNtB2P_9into_iter8IntoIterB1e_EB4H_EIB20_zB2p_EENtNtNtB8_6traits8iterator8Iterator8try_foldB2K_NCINvNtB2P_16in_place_collect24write_in_place_with_dropB1e_E0B4r_E0E0B1k_.exit ] ; 2 uses
  %i.bg = phi ptr [ %i.u, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdINtNtBa_6result6ResultB1e_NtNtB1i_5error5ErrorEINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop11InPlaceDropB1e_EINtNtNtBa_3ops12control_flow11ControlFlowIB20_B2K_zEB2K_ENCNvMs0_NtB1i_10repositoryNtB4P_10Repository23find_pack_with_snapshot0NCINvXB6_INtB6_12GenericShuntINtB4_9FilterMapINtNtB2P_9into_iter8IntoIterB1e_EB4H_EIB20_zB2p_EENtNtNtB8_6traits8iterator8Iterator8try_foldB2K_NCINvNtB2P_16in_place_collect24write_in_place_with_dropB1e_E0B4r_E0E0B1k_.exit.thread ], [ %.pre, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdINtNtBa_6result6ResultB1e_NtNtB1i_5error5ErrorEINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop11InPlaceDropB1e_EINtNtNtBa_3ops12control_flow11ControlFlowIB20_B2K_zEB2K_ENCNvMs0_NtB1i_10repositoryNtB4P_10Repository23find_pack_with_snapshot0NCINvXB6_INtB6_12GenericShuntINtB4_9FilterMapINtNtB2P_9into_iter8IntoIterB1e_EB4H_EIB20_zB2p_EENtNtNtB8_6traits8iterator8Iterator8try_foldB2K_NCINvNtB2P_16in_place_collect24write_in_place_with_dropB1e_E0B4r_E0E0B1k_.exit ] ; 2 uses
  %.sroa.811.020 = phi ptr [ %.sroa.4.047, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdINtNtBa_6result6ResultB1e_NtNtB1i_5error5ErrorEINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop11InPlaceDropB1e_EINtNtNtBa_3ops12control_flow11ControlFlowIB20_B2K_zEB2K_ENCNvMs0_NtB1i_10repositoryNtB4P_10Repository23find_pack_with_snapshot0NCINvXB6_INtB6_12GenericShuntINtB4_9FilterMapINtNtB2P_9into_iter8IntoIterB1e_EB4H_EIB20_zB2p_EENtNtNtB8_6traits8iterator8Iterator8try_foldB2K_NCINvNtB2P_16in_place_collect24write_in_place_with_dropB1e_E0B4r_E0E0B1k_.exit.thread ], [ %i.ba, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdINtNtBa_6result6ResultB1e_NtNtB1i_5error5ErrorEINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop11InPlaceDropB1e_EINtNtNtBa_3ops12control_flow11ControlFlowIB20_B2K_zEB2K_ENCNvMs0_NtB1i_10repositoryNtB4P_10Repository23find_pack_with_snapshot0NCINvXB6_INtB6_12GenericShuntINtB4_9FilterMapINtNtB2P_9into_iter8IntoIterB1e_EB4H_EIB20_zB2p_EENtNtNtB8_6traits8iterator8Iterator8try_foldB2K_NCINvNtB2P_16in_place_collect24write_in_place_with_dropB1e_E0B4r_E0E0B1k_.exit ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %.not = icmp eq ptr %i.bf, %i.bg
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RINvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB6_8IntoIterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropBX_ENCINvNtNtB1P_8adapters6filter15filter_try_foldBX_B2N_INtNtB1R_6result6ResultB2N_zENCNCNvMs0_NtB11_10repositoryNtB4V_10Repository11loose_packs00NCINvNtB8_16in_place_collect24write_in_place_with_dropBX_E0E0B4i_EB13_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %3, ptr nofree noundef readnone captures(none) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [40 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.f = load ptr, ptr %i.d, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.g = load ptr, ptr %i.e, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %.not12 = icmp eq ptr %i.g, %i.f
  br i1 %.not12, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.val.i.pre14 = load ptr, ptr %3, align 8, !noalias !616
  %.val.i.pre = load ptr, ptr %3, align 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter15filter_try_foldNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop11InPlaceDropB15_EINtNtBa_6result6ResultB1Q_zENCNCNvMs0_NtB19_10repositoryNtB3u_10Repository11loose_packs00NCINvNtB1V_16in_place_collect24write_in_place_with_dropB15_E0E0B1b_.exit
  %i.k = phi ptr [ %i.f, %.lr.ph ], [ %i.v, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter15filter_try_foldNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop11InPlaceDropB15_EINtNtBa_6result6ResultB1Q_zENCNCNvMs0_NtB19_10repositoryNtB3u_10Repository11loose_packs00NCINvNtB1V_16in_place_collect24write_in_place_with_dropB15_E0E0B1b_.exit ]
  %.val.i = phi ptr [ %.val.i.pre14, %.lr.ph ], [ %.val.i15, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter15filter_try_foldNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop11InPlaceDropB15_EINtNtBa_6result6ResultB1Q_zENCNCNvMs0_NtB19_10repositoryNtB3u_10Repository11loose_packs00NCINvNtB1V_16in_place_collect24write_in_place_with_dropB15_E0E0B1b_.exit ] ; 2 uses
  %i.l = phi ptr [ %i.g, %.lr.ph ], [ %i.u, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter15filter_try_foldNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop11InPlaceDropB15_EINtNtBa_6result6ResultB1Q_zENCNCNvMs0_NtB19_10repositoryNtB3u_10Repository11loose_packs00NCINvNtB1V_16in_place_collect24write_in_place_with_dropB15_E0E0B1b_.exit ] ; 2 uses
  %.sroa.4.013 = phi ptr [ %2, %.lr.ph ], [ %.pn6.i, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter15filter_try_foldNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop11InPlaceDropB15_EINtNtBa_6result6ResultB1Q_zENCNCNvMs0_NtB19_10repositoryNtB3u_10Repository11loose_packs00NCINvNtB1V_16in_place_collect24write_in_place_with_dropB15_E0E0B1b_.exit ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24 ; 2 uses
  store ptr %i.m, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %1, ptr %i.b, align 8
  store ptr %.sroa.4.013, ptr %i.h, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %1, ptr %i.a, align 8, !noalias !616
  store ptr %.sroa.4.013, ptr %i.j, align 8, !noalias !616
  %i.n = load ptr, ptr %.val.i, align 8, !noalias !617, !nonnull !5, !align !9, !noundef !5
  %i.o = invoke noundef zeroext i1 @_RNvMs0_NtNtCskuiImRAV2ip_9elfshaker4repo10repositoryNtB5_10Repository13is_pack_loose(ptr noundef nonnull align 8 %i.n, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.i)
          to label %_RNCNCNvMs0_NtNtCskuiImRAV2ip_9elfshaker4repo10repositoryNtB9_10Repository11loose_packs00Bd_.exit.i unwind label %bb.g

_RNCNCNvMs0_NtNtCskuiImRAV2ip_9elfshaker4repo10repositoryNtB9_10Repository11loose_packs00Bd_.exit.i: ; preds = %bb.b
  br i1 %i.o, label %bb.f, label %bb.c

bb.c:                                             ; preds = %_RNCNCNvMs0_NtNtCskuiImRAV2ip_9elfshaker4repo10repositoryNtB9_10Repository11loose_packs00Bd_.exit.i
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECskuiImRAV2ip_9elfshaker.exit.i.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %bb.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #16
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECskuiImRAV2ip_9elfshaker.exit.i.i: ; preds = %bb.c
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
  br label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter15filter_try_foldNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop11InPlaceDropB15_EINtNtBa_6result6ResultB1Q_zENCNCNvMs0_NtB19_10repositoryNtB3u_10Repository11loose_packs00NCINvNtB1V_16in_place_collect24write_in_place_with_dropB15_E0E0B1b_.exit

bb.f:                                             ; preds = %_RNCNCNvMs0_NtNtCskuiImRAV2ip_9elfshaker4repo10repositoryNtB9_10Repository11loose_packs00Bd_.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.013, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.4.013, i64 24
  %.pre = load ptr, ptr %i.d, align 8
  %.pre17 = load ptr, ptr %i.e, align 8
  br label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter15filter_try_foldNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop11InPlaceDropB15_EINtNtBa_6result6ResultB1Q_zENCNCNvMs0_NtB19_10repositoryNtB3u_10Repository11loose_packs00NCINvNtB1V_16in_place_collect24write_in_place_with_dropB15_E0E0B1b_.exit

bb.g:                                             ; preds = %bb.b
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i) #18
          to label %.thread.i unwind label %bb.h

bb.h:                                             ; preds = %.thread.i, %bb.g
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #16
  unreachable

bb.i:                                             ; preds = %.thread.i, %bb.d
  %.pn3.i = phi { ptr, i32 } [ %i.s, %.thread.i ], [ %i.p, %bb.d ]
  resume { ptr, i32 } %.pn3.i

.thread.i:                                        ; preds = %bb.g
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop11InPlaceDropNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdEEB1E_(ptr noalias nofree noundef align 8 dereferenceable(16) %i.a) #18
          to label %bb.i unwind label %bb.h

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter15filter_try_foldNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop11InPlaceDropB15_EINtNtBa_6result6ResultB1Q_zENCNCNvMs0_NtB19_10repositoryNtB3u_10Repository11loose_packs00NCINvNtB1V_16in_place_collect24write_in_place_with_dropB15_E0E0B1b_.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECskuiImRAV2ip_9elfshaker.exit.i.i, %bb.f
  %i.u = phi ptr [ %.pre17, %bb.f ], [ %i.m, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECskuiImRAV2ip_9elfshaker.exit.i.i ] ; 2 uses
  %i.v = phi ptr [ %.pre, %bb.f ], [ %i.k, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECskuiImRAV2ip_9elfshaker.exit.i.i ] ; 2 uses
  %.val.i15 = phi ptr [ %.val.i.pre, %bb.f ], [ %.val.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECskuiImRAV2ip_9elfshaker.exit.i.i ]
  %.pn6.i = phi ptr [ %i.r, %bb.f ], [ %.sroa.4.013, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECskuiImRAV2ip_9elfshaker.exit.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.not = icmp eq ptr %i.u, %i.v
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter15filter_try_foldNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop11InPlaceDropB15_EINtNtBa_6result6ResultB1Q_zENCNCNvMs0_NtB19_10repositoryNtB3u_10Repository11loose_packs00NCINvNtB1V_16in_place_collect24write_in_place_with_dropB15_E0E0B1b_.exit, %bb.a
  %.sroa.4.0.lcssa = phi ptr [ %2, %bb.a ], [ %.pn6.i, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter15filter_try_foldNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop11InPlaceDropB15_EINtNtBa_6result6ResultB1Q_zENCNCNvMs0_NtB19_10repositoryNtB3u_10Repository11loose_packs00NCINvNtB1V_16in_place_collect24write_in_place_with_dropB15_E0E0B1b_.exit ]
  %i.w = insertvalue { ptr, ptr } poison, ptr %1, 0
  %i.x = insertvalue { ptr, ptr } %i.w, ptr %.sroa.4.0.lcssa, 1
  ret { ptr, ptr } %i.x
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB6_8IntoIterRNtNtCsaL1QbXo9JQH_3std4path7PathBufENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB1E_8adapters3map8map_foldBX_INtNtB1G_6result6ResultAhj14_NtNtNtB1G_2io5error5ErrorEuNCINvNtCskuiImRAV2ip_9elfshaker5batch17compute_checksumsBY_E0NCINvNvB1y_8for_each4callB3b_NCINvMsk_B8_INtB8_3VecB3b_E14extend_trustedINtB2E_3MapBI_B45_EE0E0E0EB4c_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [40 x i8], align 8                ; 8 uses
  %i.c = alloca [64 x i8], align 1                ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 5 uses
  %i.e = alloca [4 x i8], align 4                 ; 4 uses
  %i.f = alloca [72 x i8], align 8                ; 7 uses
  %i.g = alloca [20 x i8], align 4                ; 8 uses
  %i.h = alloca [104 x i8], align 8               ; 7 uses
  %i.i = alloca [20 x i8], align 1                ; 8 uses
  %i.j = alloca [104 x i8], align 8               ; 5 uses
  %i.k = alloca [104 x i8], align 8               ; 12 uses
  %i.l = alloca [24 x i8], align 8                ; 7 uses
  %i.m = alloca [24 x i8], align 8                ; 9 uses
  %.sroa.5.i = alloca [7 x i8], align 1           ; 4 uses
  %i.n = alloca [16 x i8], align 8                ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.promoted = load ptr, ptr %i.p, align 8        ; 2 uses
  %i.q = load ptr, ptr %i.o, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %.not.not26 = icmp eq ptr %.promoted, %i.q
  br i1 %.not.not26, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.59.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 32 ; 5 uses
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 3 uses
  %.sroa.8.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 96 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.h, i64 32 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 96 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 88
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.z = getelementptr inbounds nuw i8, ptr %i.i, i64 20
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 20
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.6.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.7.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 56 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.f, i64 64 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %.sroa.6.1..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 7
  %.sroa.7.1..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 15
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.promoted28 = load i64, ptr %i.af, align 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCsaL1QbXo9JQH_3std4path7PathBufINtNtBa_6result6ResultAhj14_NtNtNtBa_2io5error5ErrorEuNCINvNtCskuiImRAV2ip_9elfshaker5batch17compute_checksumsBV_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1u_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB4r_3VecB1u_E14extend_trustedINtB4_3MapINtNtB4r_9into_iter8IntoIterBU_EB2m_EE0E0E0B2t_.exit
  %i.ag = phi i64 [ %.promoted28, %.lr.ph ], [ %i.co, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCsaL1QbXo9JQH_3std4path7PathBufINtNtBa_6result6ResultAhj14_NtNtNtBa_2io5error5ErrorEuNCINvNtCskuiImRAV2ip_9elfshaker5batch17compute_checksumsBV_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1u_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB4r_3VecB1u_E14extend_trustedINtB4_3MapINtNtB4r_9into_iter8IntoIterBU_EB2m_EE0E0E0B2t_.exit ] ; 3 uses
  %i.ah = phi ptr [ %.promoted, %.lr.ph ], [ %i.aj, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCsaL1QbXo9JQH_3std4path7PathBufINtNtBa_6result6ResultAhj14_NtNtNtBa_2io5error5ErrorEuNCINvNtCskuiImRAV2ip_9elfshaker5batch17compute_checksumsBV_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1u_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB4r_3VecB1u_E14extend_trustedINtB4_3MapINtNtB4r_9into_iter8IntoIterBU_EB2m_EE0E0E0B2t_.exit ] ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !nonnull !5, !align !9, !noundef !5
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !669)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !670
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !670
  invoke void @_RINvNtCsaL1QbXo9JQH_3std2fs4readRNtNtB4_4path7PathBufECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.l, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ai)
          to label %.noexc unwind label %.loopexit
end_hunk_0
