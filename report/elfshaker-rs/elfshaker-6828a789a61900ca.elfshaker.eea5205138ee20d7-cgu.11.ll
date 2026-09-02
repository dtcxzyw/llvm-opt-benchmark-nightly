Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/elfshaker-rs/original/elfshaker-6828a789a61900ca.elfshaker.eea5205138ee20d7-cgu.11?download=true
inline.NumInlined: 637
inline.NumDeleted: 466
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapIBO_INtNtNtBc_5slice4iter4IterNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryENCNvMs0_NtNtB1v_4repo10repositoryNtB2k_10Repository16extract_snapshots_0ENCINvXs8_NtCskt5MLIAl8nl_9hashbrown3setINtB3w_7HashSetRNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringNtNtNtB4m_4hash6random11RandomStateEINtNtNtBa_6traits7collect6ExtendB4f_E6extendBX_E0ENtNtB5D_8iterator8Iterator4folduNCINvNvB6m_8for_each4callTB4f_uENCINvXs1i_NtB3y_3mapINtB7y_7HashMapB4f_uB4Y_EIB5z_B7h_E6extendBN_E0E0EB1v_:bb.a

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = lshr exact i64 %i.d, 6
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.sroa.01.0.i.i = phi i64 [ 0, %bb.b ], [ %i.h, %bb.c ] ; 2 uses
  %i.f = getelementptr inbounds nuw [64 x i8], ptr %0, i64 %.sroa.01.0.i.i
  %i.g = tail call noundef zeroext i1 @_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB5_7HashMapRNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringuNtNtNtBU_4hash6random11RandomStateE6insertCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.f) ; 0 uses
  %i.h = add nuw i64 %.sroa.01.0.i.i, 1           ; 2 uses
  %i.i = icmp eq i64 %i.h, %i.e
  br i1 %i.i, label %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryENCNvMs0_NtNtB1r_4repo10repositoryNtB2g_10Repository16extract_snapshots_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvB6_8map_foldRNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringTB4e_uEuNCINvXs8_NtCskt5MLIAl8nl_9hashbrown3setINtB5e_7HashSetB4e_NtNtNtB4l_4hash6random11RandomStateEINtNtB3n_7collect6ExtendB4e_E6extendBN_E0NCINvNvB3j_8for_each4callB4X_NCINvXs1i_NtB5g_3mapINtB7T_7HashMapB4e_uB61_EIB6C_B4X_E6extendIBO_BN_B55_EE0E0E0EB1r_.exit, label %bb.c

_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryENCNvMs0_NtNtB1r_4repo10repositoryNtB2g_10Repository16extract_snapshots_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvB6_8map_foldRNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringTB4e_uEuNCINvXs8_NtCskt5MLIAl8nl_9hashbrown3setINtB5e_7HashSetB4e_NtNtNtB4l_4hash6random11RandomStateEINtNtB3n_7collect6ExtendB4e_E6extendBN_E0NCINvNvB3j_8for_each4callB4X_NCINvXs1i_NtB5g_3mapINtB7T_7HashMapB4e_uB61_EIB6C_B4X_E6extendIBO_BN_B55_EE0E0E0EB1r_.exit: ; preds = %bb.c, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtB8_9enumerate9EnumerateIBO_INtNtNtBc_5slice4iter4IterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENCNCNvMs0_NtB1X_10repositoryNtB2P_10Repository11loose_packs0s_0EENCINvMNtCs1xwejQucwHj_5alloc5sliceSB1T_18sort_by_cached_keyTNtNtCsaL1QbXo9JQH_3std4time10SystemTimeB1T_EB2F_Es_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB5x_8for_each4callTB4F_jENCINvMsk_NtB3Q_3vecINtB6Q_3VecB6A_E14extend_trustedBN_E0E0EB1Z_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [56 x i8], align 8                ; 5 uses
  %i.c = alloca [56 x i8], align 8                ; 7 uses
  %i.d = alloca [40 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !455)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !456)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !455, !noalias !456, !noundef !5
  %.sroa.0.0.copyload.i = load ptr, ptr %1, align 8, !alias.scope !456, !noalias !455 ; 4 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !456, !noalias !455 ; 2 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !456, !noalias !455
  tail call void @llvm.experimental.noalias.scope.decl(metadata !457)
  %i.g = load ptr, ptr %0, align 8, !alias.scope !458, !noalias !459, !nonnull !5, !noundef !5 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !458, !noalias !459, !nonnull !5, !noundef !5 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !458, !noalias !459, !nonnull !5, !align !13, !noundef !5
  %i.l = icmp eq ptr %i.g, %i.i
  br i1 %i.l, label %_RINvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENCNCNvMs0_NtB1S_10repositoryNtB2K_10Repository11loose_packs0s_0EENtNtNtB9_6traits8iterator8Iterator4folduNCINvB1b_8map_foldTjTNtNtCsaL1QbXo9JQH_3std4time10SystemTimeB1O_EETB4B_jEuNCINvMNtCs1xwejQucwHj_5alloc5sliceSB1O_18sort_by_cached_keyB4B_B2A_Es_0NCINvNvB3D_8for_each4callB5l_NCINvMsk_NtB5B_3vecINtB7e_3VecB5l_E14extend_trustedIB19_BS_B5t_EE0E0E0EB1U_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = ptrtoint ptr %i.g to i64
  %i.o = sub nuw i64 %i.m, %i.n
  %i.p = udiv exact i64 %i.o, 24
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  br label %bb.d

bb.c:                                             ; preds = %bb.h, %_RNCNCNCNvMs0_NtNtCskuiImRAV2ip_9elfshaker4repo10repositoryNtBb_10Repository11loose_packs0s_00Bf_.exit.i.i.i.i.i.i, %bb.d
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.d:                                             ; preds = %bb.i, %bb.b
  %.val10.i.i.i = phi i64 [ %.sroa.4.0.copyload.i, %bb.b ], [ %i.ae, %bb.i ] ; 3 uses
  %i.v = phi i64 [ %i.f, %bb.b ], [ %i.af, %bb.i ] ; 2 uses
  %.sroa.01.0.i.i.i = phi i64 [ 0, %bb.b ], [ %i.ag, %bb.i ] ; 2 uses
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %.sroa.01.0.i.i.i ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !460
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !461
  %i.x = load ptr, ptr %i.k, align 8, !noalias !461, !nonnull !5, !align !13, !noundef !5
  invoke void @_RNvMs0_NtNtCskuiImRAV2ip_9elfshaker4repo10repositoryNtB5_10Repository16pack_index_mtime(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.c, ptr noundef nonnull align 8 %i.x, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.w)
          to label %.noexc.i.i.i unwind label %bb.c, !noalias !460

.noexc.i.i.i:                                     ; preds = %bb.d
  call void @llvm.experimental.noalias.scope.decl(metadata !462)
  %i.y = load i64, ptr %i.c, align 8, !range !15, !alias.scope !462, !noalias !463, !noundef !5
  %.not.i.i.i.i.i.i = icmp eq i64 %i.y, -2
  br i1 %.not.i.i.i.i.i.i, label %bb.h, label %bb.e

bb.e:                                             ; preds = %.noexc.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !464
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(56) %i.c, i64 56, i1 false), !noalias !463
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !465
  invoke void @_RNvXs4_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.w)
          to label %_RNCNCNCNvMs0_NtNtCskuiImRAV2ip_9elfshaker4repo10repositoryNtBb_10Repository11loose_packs0s_00Bf_.exit.i.i.i.i.i.i unwind label %bb.f, !noalias !466

bb.f:                                             ; preds = %bb.e
  %i.z = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.b) #30
          to label %bb.j unwind label %bb.g, !noalias !467

bb.g:                                             ; preds = %bb.f
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #27, !noalias !467
  unreachable

_RNCNCNCNvMs0_NtNtCskuiImRAV2ip_9elfshaker4repo10repositoryNtBb_10Repository11loose_packs0s_00Bf_.exit.i.i.i.i.i.i: ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !468
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !465
  store i64 0, ptr %i.d, align 8, !noalias !468
  store i32 0, ptr %i.r, align 8, !noalias !468
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCskuiImRAV2ip_9elfshaker4repo5error5ErrorEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.b)
          to label %.noexc15.i.i.i unwind label %bb.c, !noalias !460

.noexc15.i.i.i:                                   ; preds = %_RNCNCNCNvMs0_NtNtCskuiImRAV2ip_9elfshaker4repo10repositoryNtBb_10Repository11loose_packs0s_00Bf_.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !464
  br label %bb.i

bb.h:                                             ; preds = %.noexc.i.i.i
  %i.ab = load i64, ptr %i.s, align 8, !alias.scope !462, !noalias !463, !noundef !5
  %i.ac = load i32, ptr %i.t, align 8, !range !18, !alias.scope !462, !noalias !463, !noundef !5
  invoke void @_RNvXs4_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.q, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.w)
          to label %.noexc16.i.i.i unwind label %bb.c, !noalias !460

.noexc16.i.i.i:                                   ; preds = %bb.h
  store i64 %i.ab, ptr %i.d, align 8, !noalias !468
  store i32 %i.ac, ptr %i.r, align 8, !noalias !468
  br label %bb.i

bb.i:                                             ; preds = %.noexc16.i.i.i, %.noexc15.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !461
  %i.ad = getelementptr inbounds nuw [48 x i8], ptr %.sroa.5.0.copyload.i, i64 %.val10.i.i.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ad, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.d, i64 40, i1 false), !noalias !469
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  store i64 %i.v, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !470
  %i.ae = add i64 %.val10.i.i.i, 1                ; 2 uses
  %i.af = add i64 %i.v, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !460
  %i.ag = add nuw i64 %.sroa.01.0.i.i.i, 1        ; 2 uses
  %i.ah = icmp eq i64 %i.ag, %i.p
  br i1 %i.ah, label %_RINvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENCNCNvMs0_NtB1S_10repositoryNtB2K_10Repository11loose_packs0s_0EENtNtNtB9_6traits8iterator8Iterator4folduNCINvB1b_8map_foldTjTNtNtCsaL1QbXo9JQH_3std4time10SystemTimeB1O_EETB4B_jEuNCINvMNtCs1xwejQucwHj_5alloc5sliceSB1O_18sort_by_cached_keyB4B_B2A_Es_0NCINvNvB3D_8for_each4callB5l_NCINvMsk_NtB5B_3vecINtB7e_3VecB5l_E14extend_trustedIB19_BS_B5t_EE0E0E0EB1U_.exit, label %bb.d

bb.j:                                             ; preds = %bb.f, %bb.c
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.u, %bb.c ], [ %i.z, %bb.f ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i) ]
  store i64 %.val10.i.i.i, ptr %.sroa.0.0.copyload.i, align 8, !noalias !460
  resume { ptr, i32 } %eh.lpad-body.i.i.i

_RINvXs_NtNtNtCs3oUPovFnLWP_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtNtCskuiImRAV2ip_9elfshaker4repo4pack6PackIdENCNCNvMs0_NtB1S_10repositoryNtB2K_10Repository11loose_packs0s_0EENtNtNtB9_6traits8iterator8Iterator4folduNCINvB1b_8map_foldTjTNtNtCsaL1QbXo9JQH_3std4time10SystemTimeB1O_EETB4B_jEuNCINvMNtCs1xwejQucwHj_5alloc5sliceSB1O_18sort_by_cached_keyB4B_B2A_Es_0NCINvNvB3D_8for_each4callB5l_NCINvMsk_NtB5B_3vecINtB7e_3VecB5l_E14extend_trustedIB19_BS_B5t_EE0E0E0EB1U_.exit: ; preds = %bb.i, %bb.a
  %storemerge.i.i = phi i64 [ %.sroa.4.0.copyload.i, %bb.a ], [ %i.ae, %bb.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i) ]
  store i64 %storemerge.i.i, ptr %.sroa.0.0.copyload.i, align 8, !noalias !460
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtB8_9enumerate9EnumerateINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataEENCINvXsf_B2f_NtB2f_14VisitPackIndexNtNtCs6LlcditsbhK_5serde2de7Visitor9visit_seqINtNtCs974quTetXso_9rmp_serde6decode9SeqAccessINtB4q_10ReadReaderINtNtNtNtB1w_2io8buffered9bufreader9BufReaderNtNtCsaL1QbXo9JQH_3std2fs4FileEENtNtB4s_6config13DefaultConfigEE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB7d_8for_each4callTmB2d_ENCINvMsk_B1u_INtB1u_3VecB8g_E14extend_trustedBN_E0E0EB2h_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !474)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !475
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(40) %0, i64 32, i1 false), !noalias !476
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !475
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !474, !noalias !476, !noundef !5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %1, i64 24, i1 false), !noalias !474
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %i.d, ptr %i.e, align 8, !noalias !475
  call void @_RINvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB6_8IntoIterNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtB1U_8adapters9enumerateINtB2Z_9EnumeratepEB1O_4fold9enumerateBX_uNCINvNtB31_3map8map_foldTjBX_ETmBX_EuNCINvXsf_BZ_NtBZ_14VisitPackIndexNtNtCs6LlcditsbhK_5serde2de7Visitor9visit_seqINtNtCs974quTetXso_9rmp_serde6decode9SeqAccessINtB60_10ReadReaderINtNtNtNtBa_2io8buffered9bufreader9BufReaderNtNtCsaL1QbXo9JQH_3std2fs4FileEENtNtB62_6config13DefaultConfigEE0NCINvNvB1O_8for_each4callB4A_NCINvMsk_B8_INtB8_3VecB4A_E14extend_trustedINtB4b_3MapIB3r_BI_EB4H_EE0E0E0E0EB11_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a), !noalias !475
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !475
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !475
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtB8_9enumerate9EnumerateINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataEENCINvXsf_B2f_NtB2f_14VisitPackIndexNtNtCs6LlcditsbhK_5serde2de7Visitor9visit_seqINtNtCs974quTetXso_9rmp_serde6decode9SeqAccessINtB4q_10ReadReaderINtNtNtNtB1w_2io8buffered9bufreader9BufReaderRShEENtNtB4s_6config13DefaultConfigEE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB6M_8for_each4callTmB2d_ENCINvMsk_B1u_INtB1u_3VecB7P_E14extend_trustedBN_E0E0EB2h_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !480)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !481
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(40) %0, i64 32, i1 false), !noalias !482
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !481
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !480, !noalias !482, !noundef !5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %1, i64 24, i1 false), !noalias !480
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %i.d, ptr %i.e, align 8, !noalias !481
  call void @_RINvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB6_8IntoIterNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtB1U_8adapters9enumerateINtB2Z_9EnumeratepEB1O_4fold9enumerateBX_uNCINvNtB31_3map8map_foldTjBX_ETmBX_EuNCINvXsf_BZ_NtBZ_14VisitPackIndexNtNtCs6LlcditsbhK_5serde2de7Visitor9visit_seqINtNtCs974quTetXso_9rmp_serde6decode9SeqAccessINtB60_10ReadReaderINtNtNtNtBa_2io8buffered9bufreader9BufReaderRShEENtNtB62_6config13DefaultConfigEE0NCINvNvB1O_8for_each4callB4A_NCINvMsk_B8_INtB8_3VecB4A_E14extend_trustedINtB4b_3MapIB3r_BI_EB4H_EE0E0E0E0EB11_(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a), !noalias !481
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !481
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !481
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCNvNtNtCskuiImRAV2ip_9elfshaker4repo4pack16assign_to_frames0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2p_8for_each4callINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtB1x_7packidx9FileEntryENCINvMsk_B3v_IB3t_B3s_E14extend_trustedBN_E0E0EB1x_(i64 noundef %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8 ; 3 uses
  %i.a = icmp ult i64 %0, %1
  br i1 %i.a, label %.lr.ph.i.preheader, label %_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEuNCNvNtNtB2G_4repo4pack16assign_to_frames0NCINvNvBL_8for_each4callB25_NCINvMsk_B28_IB26_B25_E14extend_trustedINtB1B_3MapB3_B3o_EE0E0E0EB2G_.exit

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.b = sub nuw i64 %1, %0
  %.neg = add i64 %0, 1
  %xtraiter = and i64 %i.b, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %i.c = add nuw i64 %0, 1
  %i.d = getelementptr inbounds nuw [24 x i8], ptr %.sroa.6.0.copyload, i64 %.sroa.4.0.copyload ; 3 uses
  store i64 0, ptr %i.d, align 8, !noalias !491
  %.sroa.42.0..sroa_idx.i.i.prol = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.42.0..sroa_idx.i.i.prol, align 8, !noalias !491
  %.sroa.53.0..sroa_idx.i.i.prol = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i.prol, align 8, !noalias !491
  %i.e = add i64 %.sroa.4.0.copyload, 1           ; 2 uses
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.lcssa.unr = phi i64 [ poison, %.lr.ph.i.preheader ], [ %i.e, %.lr.ph.i.prol ]
  %.unr = phi i64 [ %.sroa.4.0.copyload, %.lr.ph.i.preheader ], [ %i.e, %.lr.ph.i.prol ]
  %.sroa.0.010.i.unr = phi i64 [ %0, %.lr.ph.i.preheader ], [ %i.c, %.lr.ph.i.prol ]
  %i.f = icmp eq i64 %1, %.neg
  br i1 %i.f, label %_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEuNCNvNtNtB2G_4repo4pack16assign_to_frames0NCINvNvBL_8for_each4callB25_NCINvMsk_B28_IB26_B25_E14extend_trustedINtB1B_3MapB3_B3o_EE0E0E0EB2G_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %i.g = phi i64 [ %i.l, %.lr.ph.i ], [ %.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %.sroa.0.010.i = phi i64 [ %i.i, %.lr.ph.i ], [ %.sroa.0.010.i.unr, %.lr.ph.i.prol.loopexit ]
  %i.h = getelementptr inbounds nuw [24 x i8], ptr %.sroa.6.0.copyload, i64 %i.g ; 3 uses
  store i64 0, ptr %i.h, align 8, !noalias !491
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.42.0..sroa_idx.i.i, align 8, !noalias !491
  %.sroa.53.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i, align 8, !noalias !491
  %i.i = add nuw i64 %.sroa.0.010.i, 2            ; 2 uses
  %i.j = getelementptr [24 x i8], ptr %.sroa.6.0.copyload, i64 %i.g ; 3 uses
  %i.k = getelementptr i8, ptr %i.j, i64 24
  store i64 0, ptr %i.k, align 8, !noalias !491
  %.sroa.42.0..sroa_idx.i.i.1 = getelementptr i8, ptr %i.j, i64 32
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.42.0..sroa_idx.i.i.1, align 8, !noalias !491
  %.sroa.53.0..sroa_idx.i.i.1 = getelementptr i8, ptr %i.j, i64 40
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i.1, align 8, !noalias !491
  %i.l = add i64 %i.g, 2                          ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.i, %1
  br i1 %exitcond.not.i.1, label %_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEuNCNvNtNtB2G_4repo4pack16assign_to_frames0NCINvNvBL_8for_each4callB25_NCINvMsk_B28_IB26_B25_E14extend_trustedINtB1B_3MapB3_B3o_EE0E0E0EB2G_.exit, label %.lr.ph.i

_RINvYINtNtNtCs3oUPovFnLWP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEuNCNvNtNtB2G_4repo4pack16assign_to_frames0NCINvNvBL_8for_each4callB25_NCINvMsk_B28_IB26_B25_E14extend_trustedINtB1B_3MapB3_B3o_EE0E0E0EB2G_.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.a
  %.val6.i = phi i64 [ %.sroa.4.0.copyload, %bb.a ], [ %.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %i.l, %.lr.ph.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val6.i, ptr %.sroa.0.0.copyload, align 8, !noalias !492
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterAhj14_ENCNvMs0_NtNtCskuiImRAV2ip_9elfshaker4repo10repositoryNtB1C_10Repository12explode_pack0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2T_8for_each4callNtNtB1G_7packidx9FileEntryNCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB4v_3VecB3W_E14extend_trustedBN_E0E0EB1G_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 7 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !5, !align !13, !noundef !5
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !5, !align !13, !noundef !5
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8
  %i.i = icmp eq ptr %i.b, %i.d
  br i1 %i.i, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterAhj14_ENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB13_8adapters3map8map_foldRBQ_NtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryuNCNvMs0_NtNtB2p_4repo10repositoryNtB3e_10Repository12explode_pack0NCINvNvBX_8for_each4callB2l_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB4L_3VecB2l_E14extend_trustedINtB1N_3MapBF_B36_EE0E0E0EB2p_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = ptrtoint ptr %i.d to i64
  %i.k = ptrtoint ptr %i.b to i64
  %i.l = sub nuw i64 %i.j, %i.k
  %i.m = udiv exact i64 %i.l, 20
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 60
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.val10.i = phi i64 [ %.sroa.6.0.copyload, %bb.b ], [ %i.v, %bb.d ] ; 3 uses
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.w, %bb.d ] ; 2 uses
  %i.q = getelementptr inbounds nuw [20 x i8], ptr %i.b, i64 %.sroa.01.0.i ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !501
  %i.r = invoke noundef nonnull align 8 ptr @_RNvMsd_NtCskuiImRAV2ip_9elfshaker7packidxNtB5_9PackIndex15object_metadata(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(264) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(20) %i.q)
          to label %.noexc.i unwind label %bb.e, !noalias !501

.noexc.i:                                         ; preds = %bb.c
  %i.s = load ptr, ptr %i.h, align 8, !noalias !502, !nonnull !5, !align !13, !noundef !5
  invoke void @_RNvMs0_NtNtCskuiImRAV2ip_9elfshaker4repo10repositoryNtB5_10Repository17loose_object_path(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(64) %i.a, ptr noundef nonnull align 8 %i.s, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(20) %i.q)
          to label %bb.d unwind label %bb.e, !noalias !501

bb.d:                                             ; preds = %.noexc.i
  %i.t = load <2 x i64>, ptr %i.r, align 8, !noalias !503
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.n, ptr noundef nonnull readonly align 1 dereferenceable(20) %i.q, i64 20, i1 false), !noalias !504
  store <2 x i64> %i.t, ptr %i.o, align 8, !noalias !505
  store i32 420, ptr %i.p, align 4, !noalias !505
  %i.u = getelementptr inbounds nuw [64 x i8], ptr %.sroa.8.0.copyload, i64 %.val10.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.u, ptr noundef nonnull readonly align 8 dereferenceable(64) %i.a, i64 64, i1 false), !noalias !504
  %i.v = add i64 %.val10.i, 1                     ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !501
  %i.w = add nuw i64 %.sroa.01.0.i, 1             ; 2 uses
  %i.x = icmp eq i64 %i.w, %i.m
  br i1 %i.x, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterAhj14_ENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB13_8adapters3map8map_foldRBQ_NtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryuNCNvMs0_NtNtB2p_4repo10repositoryNtB3e_10Repository12explode_pack0NCINvNvBX_8for_each4callB2l_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB4L_3VecB2l_E14extend_trustedINtB1N_3MapBF_B36_EE0E0E0EB2p_.exit, label %bb.c

bb.e:                                             ; preds = %.noexc.i, %bb.c
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val10.i, ptr %.sroa.0.0.copyload, align 8, !noalias !501
  resume { ptr, i32 } %i.y

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterAhj14_ENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB13_8adapters3map8map_foldRBQ_NtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryuNCNvMs0_NtNtB2p_4repo10repositoryNtB3e_10Repository12explode_pack0NCINvNvBX_8for_each4callB2l_NCINvMsk_NtCs1xwejQucwHj_5alloc3vecINtB4L_3VecB2l_E14extend_trustedINtB1N_3MapBF_B36_EE0E0E0EB2p_.exit: ; preds = %bb.d, %bb.a
  %storemerge = phi i64 [ %.sroa.6.0.copyload, %bb.a ], [ %i.v, %bb.d ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge, ptr %.sroa.0.0.copyload, align 8, !noalias !501
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: write, target_mem: none) uwtable
define hidden noundef i64 @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEENCINvMsa_NtNtB1Y_4repo4packNtB2P_4Pack15extract_entriesRNtNtCsaL1QbXo9JQH_3std4path4PathE0ENtNtNtBa_6traits8iterator8Iterator4foldyNCINvNtB8_7flatten11flatten_oneINtNtBc_6option6OptionyEyNCINvXsC_NtB4d_5accumyNtB5Q_3Sum3sumINtB4S_7FlatMapBX_B5i_B2G_EE0E0EB1Y_(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldyNCINvNtNtB2f_8adapters3map8map_foldRBQ_INtNtBb_6option6OptionyEyNCINvMsa_NtNtB1r_4repo4packNtB45_4Pack15extract_entriesRNtNtCsaL1QbXo9JQH_3std4path4PathE0NCINvNtB31_7flatten11flatten_oneB3x_yNCINvXsC_NtB2d_5accumyNtB68_3Sum3sumINtB5t_7FlatMapBF_B3x_B3W_EE0E0E0EB1r_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub nuw i64 %i.b, %i.c
  %i.e = udiv exact i64 %i.d, 24
  br label %bb.c

bb.c:                                             ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEINtNtBa_6option6OptionyEyNCINvMsa_NtNtB1w_4repo4packNtB2L_4Pack15extract_entriesRNtNtCsaL1QbXo9JQH_3std4path4PathE0NCINvNtB6_7flatten11flatten_oneB2d_yNCINvXsC_NtNtB8_6traits5accumyNtB4N_3Sum3sumINtB49_7FlatMapINtNtNtBa_5slice4iter4IterBV_EB2d_B2C_EE0E0E0B1w_.exit.i, %bb.b
  %.sroa.04.0.i = phi i64 [ 0, %bb.b ], [ %i.ad, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEINtNtBa_6option6OptionyEyNCINvMsa_NtNtB1w_4repo4packNtB2L_4Pack15extract_entriesRNtNtCsaL1QbXo9JQH_3std4path4PathE0NCINvNtB6_7flatten11flatten_oneB2d_yNCINvXsC_NtNtB8_6traits5accumyNtB4N_3Sum3sumINtB49_7FlatMapINtNtNtBa_5slice4iter4IterBV_EB2d_B2C_EE0E0E0B1w_.exit.i ] ; 2 uses
  %.sroa.02.0.i = phi i64 [ %2, %bb.b ], [ %spec.select.i.i.i, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEINtNtBa_6option6OptionyEyNCINvMsa_NtNtB1w_4repo4packNtB2L_4Pack15extract_entriesRNtNtCsaL1QbXo9JQH_3std4path4PathE0NCINvNtB6_7flatten11flatten_oneB2d_yNCINvXsC_NtNtB8_6traits5accumyNtB4N_3Sum3sumINtB49_7FlatMapINtNtNtBa_5slice4iter4IterBV_EB2d_B2C_EE0E0E0B1w_.exit.i ]
  %i.f = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.04.0.i ; 2 uses
  %i.g = getelementptr i8, ptr %i.f, i64 16
  %.val11.i = load i64, ptr %i.g, align 8, !noundef !5 ; 3 uses
  %.not.i.i = icmp eq i64 %.val11.i, 0
  br i1 %.not.i.i, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEINtNtBa_6option6OptionyEyNCINvMsa_NtNtB1w_4repo4packNtB2L_4Pack15extract_entriesRNtNtCsaL1QbXo9JQH_3std4path4PathE0NCINvNtB6_7flatten11flatten_oneB2d_yNCINvXsC_NtNtB8_6traits5accumyNtB4N_3Sum3sumINtB49_7FlatMapINtNtNtBa_5slice4iter4IterBV_EB2d_B2C_EE0E0E0B1w_.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr i8, ptr %i.f, i64 8
  %.val.i = load ptr, ptr %i.h, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.val.i, i64 64 ; 3 uses
  %i.j = getelementptr i8, ptr %.val.i, i64 24
  %.val.i.i.i.i.i = load i64, ptr %i.j, align 8, !noalias !508, !noundef !5
  %i.k = getelementptr i8, ptr %.val.i, i64 32
  %.val3.i.i.i.i.i = load i64, ptr %i.k, align 8, !noalias !508, !noundef !5
  %i.l = add i64 %.val3.i.i.i.i.i, %.val.i.i.i.i.i ; 3 uses
  %i.m = icmp eq i64 %.val11.i, 1
  br i1 %i.m, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEINtNtBa_6option6OptionyEyNCINvMsa_NtNtB1w_4repo4packNtB2L_4Pack15extract_entriesRNtNtCsaL1QbXo9JQH_3std4path4PathE0NCINvNtB6_7flatten11flatten_oneB2d_yNCINvXsC_NtNtB8_6traits5accumyNtB4N_3Sum3sumINtB49_7FlatMapINtNtNtBa_5slice4iter4IterBV_EB2d_B2C_EE0E0E0B1w_.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = add i64 %.val11.i, 288230376151711743    ; 4 uses
  %3 = and i64 %i.n, 288230376151711743
  %xtraiter = and i64 %i.n, 1
  %i.o = icmp eq i64 %3, 1
  br i1 %i.o, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.e
  %unroll_iter = and i64 %i.n, 288230376151711742
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.new
  %.sroa.04.0.i.i.i.i.i.i = phi i64 [ 0, %.new ], [ %i.x, %bb.f ] ; 3 uses
  %.sroa.02.0.i.i.i.i.i.i = phi i64 [ %i.l, %.new ], [ %..i.i.i.i.i.i.i.i.i.1, %bb.f ]
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.f ]
  %i.p = getelementptr inbounds nuw [64 x i8], ptr %i.i, i64 %.sroa.04.0.i.i.i.i.i.i ; 2 uses
  %i.q = getelementptr i8, ptr %i.p, i64 24
  %.val.i.i.i.i.i.i = load i64, ptr %i.q, align 8, !noundef !5
  %i.r = getelementptr i8, ptr %i.p, i64 32
  %.val11.i.i.i.i.i.i = load i64, ptr %i.r, align 8, !noundef !5
  %i.s = add i64 %.val11.i.i.i.i.i.i, %.val.i.i.i.i.i.i
  %..i.i.i.i.i.i.i.i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.s, i64 %.sroa.02.0.i.i.i.i.i.i)
  %i.t = getelementptr inbounds nuw [64 x i8], ptr %i.i, i64 %.sroa.04.0.i.i.i.i.i.i ; 2 uses
  %i.u = getelementptr i8, ptr %i.t, i64 88
  %.val.i.i.i.i.i.i.1 = load i64, ptr %i.u, align 8, !noundef !5
  %i.v = getelementptr i8, ptr %i.t, i64 96
  %.val11.i.i.i.i.i.i.1 = load i64, ptr %i.v, align 8, !noundef !5
  %i.w = add i64 %.val11.i.i.i.i.i.i.1, %.val.i.i.i.i.i.i.1
  %..i.i.i.i.i.i.i.i.i.1 = tail call noundef i64 @llvm.umax.i64(i64 %i.w, i64 %..i.i.i.i.i.i.i.i.i) ; 3 uses
  %i.x = add nuw i64 %.sroa.04.0.i.i.i.i.i.i, 2   ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEINtNtBa_6option6OptionyEyNCINvMsa_NtNtB1w_4repo4packNtB2L_4Pack15extract_entriesRNtNtCsaL1QbXo9JQH_3std4path4PathE0NCINvNtB6_7flatten11flatten_oneB2d_yNCINvXsC_NtNtB8_6traits5accumyNtB4N_3Sum3sumINtB49_7FlatMapINtNtNtBa_5slice4iter4IterBV_EB2d_B2C_EE0E0E0B1w_.exit.i.loopexit.unr-lcssa, label %bb.f

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEINtNtBa_6option6OptionyEyNCINvMsa_NtNtB1w_4repo4packNtB2L_4Pack15extract_entriesRNtNtCsaL1QbXo9JQH_3std4path4PathE0NCINvNtB6_7flatten11flatten_oneB2d_yNCINvXsC_NtNtB8_6traits5accumyNtB4N_3Sum3sumINtB49_7FlatMapINtNtNtBa_5slice4iter4IterBV_EB2d_B2C_EE0E0E0B1w_.exit.i.loopexit.unr-lcssa: ; preds = %bb.f
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEINtNtBa_6option6OptionyEyNCINvMsa_NtNtB1w_4repo4packNtB2L_4Pack15extract_entriesRNtNtCsaL1QbXo9JQH_3std4path4PathE0NCINvNtB6_7flatten11flatten_oneB2d_yNCINvXsC_NtNtB8_6traits5accumyNtB4N_3Sum3sumINtB49_7FlatMapINtNtNtBa_5slice4iter4IterBV_EB2d_B2C_EE0E0E0B1w_.exit.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEINtNtBa_6option6OptionyEyNCINvMsa_NtNtB1w_4repo4packNtB2L_4Pack15extract_entriesRNtNtCsaL1QbXo9JQH_3std4path4PathE0NCINvNtB6_7flatten11flatten_oneB2d_yNCINvXsC_NtNtB8_6traits5accumyNtB4N_3Sum3sumINtB49_7FlatMapINtNtNtBa_5slice4iter4IterBV_EB2d_B2C_EE0E0E0B1w_.exit.i.loopexit.unr-lcssa, %bb.e
  %.sroa.04.0.i.i.i.i.i.i.epil.init = phi i64 [ 0, %bb.e ], [ %i.x, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEINtNtBa_6option6OptionyEyNCINvMsa_NtNtB1w_4repo4packNtB2L_4Pack15extract_entriesRNtNtCsaL1QbXo9JQH_3std4path4PathE0NCINvNtB6_7flatten11flatten_oneB2d_yNCINvXsC_NtNtB8_6traits5accumyNtB4N_3Sum3sumINtB49_7FlatMapINtNtNtBa_5slice4iter4IterBV_EB2d_B2C_EE0E0E0B1w_.exit.i.loopexit.unr-lcssa ]
  %.sroa.02.0.i.i.i.i.i.i.epil.init = phi i64 [ %i.l, %bb.e ], [ %..i.i.i.i.i.i.i.i.i.1, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEINtNtBa_6option6OptionyEyNCINvMsa_NtNtB1w_4repo4packNtB2L_4Pack15extract_entriesRNtNtCsaL1QbXo9JQH_3std4path4PathE0NCINvNtB6_7flatten11flatten_oneB2d_yNCINvXsC_NtNtB8_6traits5accumyNtB4N_3Sum3sumINtB49_7FlatMapINtNtNtBa_5slice4iter4IterBV_EB2d_B2C_EE0E0E0B1w_.exit.i.loopexit.unr-lcssa ]
  %lcmp.mod4 = trunc i64 %i.n to i1
  tail call void @llvm.assume(i1 %lcmp.mod4)
  %i.y = getelementptr inbounds nuw [64 x i8], ptr %i.i, i64 %.sroa.04.0.i.i.i.i.i.i.epil.init ; 2 uses
  %i.z = getelementptr i8, ptr %i.y, i64 24
  %.val.i.i.i.i.i.i.epil = load i64, ptr %i.z, align 8, !noundef !5
  %i.aa = getelementptr i8, ptr %i.y, i64 32
  %.val11.i.i.i.i.i.i.epil = load i64, ptr %i.aa, align 8, !noundef !5
  %i.ab = add i64 %.val11.i.i.i.i.i.i.epil, %.val.i.i.i.i.i.i.epil
  %..i.i.i.i.i.i.i.i.i.epil = tail call noundef i64 @llvm.umax.i64(i64 %i.ab, i64 %.sroa.02.0.i.i.i.i.i.i.epil.init)
  br label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEINtNtBa_6option6OptionyEyNCINvMsa_NtNtB1w_4repo4packNtB2L_4Pack15extract_entriesRNtNtCsaL1QbXo9JQH_3std4path4PathE0NCINvNtB6_7flatten11flatten_oneB2d_yNCINvXsC_NtNtB8_6traits5accumyNtB4N_3Sum3sumINtB49_7FlatMapINtNtNtBa_5slice4iter4IterBV_EB2d_B2C_EE0E0E0B1w_.exit.i

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEINtNtBa_6option6OptionyEyNCINvMsa_NtNtB1w_4repo4packNtB2L_4Pack15extract_entriesRNtNtCsaL1QbXo9JQH_3std4path4PathE0NCINvNtB6_7flatten11flatten_oneB2d_yNCINvXsC_NtNtB8_6traits5accumyNtB4N_3Sum3sumINtB49_7FlatMapINtNtNtBa_5slice4iter4IterBV_EB2d_B2C_EE0E0E0B1w_.exit.i: ; preds = %.epil.preheader, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEINtNtBa_6option6OptionyEyNCINvMsa_NtNtB1w_4repo4packNtB2L_4Pack15extract_entriesRNtNtCsaL1QbXo9JQH_3std4path4PathE0NCINvNtB6_7flatten11flatten_oneB2d_yNCINvXsC_NtNtB8_6traits5accumyNtB4N_3Sum3sumINtB49_7FlatMapINtNtNtBa_5slice4iter4IterBV_EB2d_B2C_EE0E0E0B1w_.exit.i.loopexit.unr-lcssa, %bb.d, %bb.c
  %i.ac = phi i64 [ 0, %bb.c ], [ %i.l, %bb.d ], [ %..i.i.i.i.i.i.i.i.i.1, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEINtNtBa_6option6OptionyEyNCINvMsa_NtNtB1w_4repo4packNtB2L_4Pack15extract_entriesRNtNtCsaL1QbXo9JQH_3std4path4PathE0NCINvNtB6_7flatten11flatten_oneB2d_yNCINvXsC_NtNtB8_6traits5accumyNtB4N_3Sum3sumINtB49_7FlatMapINtNtNtBa_5slice4iter4IterBV_EB2d_B2C_EE0E0E0B1w_.exit.i.loopexit.unr-lcssa ], [ %..i.i.i.i.i.i.i.i.i.epil, %.epil.preheader ]
  %spec.select.i.i.i = add i64 %i.ac, %.sroa.02.0.i ; 2 uses
  %i.ad = add nuw i64 %.sroa.04.0.i, 1            ; 2 uses
  %i.ae = icmp eq i64 %i.ad, %i.e
  br i1 %i.ae, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldyNCINvNtNtB2f_8adapters3map8map_foldRBQ_INtNtBb_6option6OptionyEyNCINvMsa_NtNtB1r_4repo4packNtB45_4Pack15extract_entriesRNtNtCsaL1QbXo9JQH_3std4path4PathE0NCINvNtB31_7flatten11flatten_oneB3x_yNCINvXsC_NtB2d_5accumyNtB68_3Sum3sumINtB5t_7FlatMapBF_B3x_B3W_EE0E0E0EB1r_.exit, label %bb.c

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldyNCINvNtNtB2f_8adapters3map8map_foldRBQ_INtNtBb_6option6OptionyEyNCINvMsa_NtNtB1r_4repo4packNtB45_4Pack15extract_entriesRNtNtCsaL1QbXo9JQH_3std4path4PathE0NCINvNtB31_7flatten11flatten_oneB3x_yNCINvXsC_NtB2d_5accumyNtB68_3Sum3sumINtB5t_7FlatMapBF_B3x_B3W_EE0E0E0EB1r_.exit: ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEINtNtBa_6option6OptionyEyNCINvMsa_NtNtB1w_4repo4packNtB2L_4Pack15extract_entriesRNtNtCsaL1QbXo9JQH_3std4path4PathE0NCINvNtB6_7flatten11flatten_oneB2d_yNCINvXsC_NtNtB8_6traits5accumyNtB4N_3Sum3sumINtB49_7FlatMapINtNtNtBa_5slice4iter4IterBV_EB2d_B2C_EE0E0E0B1w_.exit.i, %bb.a
  %.sroa.0.0.i = phi i64 [ %2, %bb.a ], [ %spec.select.i.i.i, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryEINtNtBa_6option6OptionyEyNCINvMsa_NtNtB1w_4repo4packNtB2L_4Pack15extract_entriesRNtNtCsaL1QbXo9JQH_3std4path4PathE0NCINvNtB6_7flatten11flatten_oneB2d_yNCINvXsC_NtNtB8_6traits5accumyNtB4N_3Sum3sumINtB49_7FlatMapINtNtNtBa_5slice4iter4IterBV_EB2d_B2C_EE0E0E0B1w_.exit.i ]
  ret i64 %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCs1xwejQucwHj_5alloc6string6StringENCNCNvMs0_NtNtCskuiImRAV2ip_9elfshaker4repo10repositoryNtB2a_10Repository24find_duplicate_snapshots00ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3E_8for_each4callTB1n_Ahj14_ENCINvXs1i_NtCskt5MLIAl8nl_9hashbrown3mapINtB53_7HashMapB1n_B4M_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateEINtNtB3I_7collect6ExtendB4H_E6extendBN_E0E0EB2e_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(48) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [21 x i8], align 1                ; 3 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [21 x i8], align 1                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [48 x i8], align 8                ; 5 uses
  %i.f = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !5, !align !13, !noundef !5
  %i.k = icmp eq ptr %i.f, %i.h
  br i1 %i.k, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCs1xwejQucwHj_5alloc6string6StringENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1z_8adapters3map8map_foldRBQ_TBQ_Ahj14_EuNCNCNvMs0_NtNtCskuiImRAV2ip_9elfshaker4repo10repositoryNtB3d_10Repository24find_duplicate_snapshots00NCINvNvB1t_8for_each4callB2R_NCINvXs1i_NtCskt5MLIAl8nl_9hashbrown3mapINtB5j_7HashMapBQ_B2V_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateEINtNtB1x_7collect6ExtendB2R_E6extendINtB2j_3MapBF_B33_EE0E0E0EB3h_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = ptrtoint ptr %i.h to i64
  %i.m = ptrtoint ptr %i.f to i64
  %i.n = sub nuw i64 %i.l, %i.m
  %i.o = udiv exact i64 %i.n, 24
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs1xwejQucwHj_5alloc6string6StringTBV_Ahj14_EuNCNCNvMs0_NtNtCskuiImRAV2ip_9elfshaker4repo10repositoryNtB1T_10Repository24find_duplicate_snapshots00NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1x_NCINvXs1i_NtCskt5MLIAl8nl_9hashbrown3mapINtB4t_7HashMapBV_B1B_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateEINtNtB3x_7collect6ExtendB1x_E6extendINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1J_EE0E0E0B1X_.exit.i, %bb.b
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.z, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs1xwejQucwHj_5alloc6string6StringTBV_Ahj14_EuNCNCNvMs0_NtNtCskuiImRAV2ip_9elfshaker4repo10repositoryNtB1T_10Repository24find_duplicate_snapshots00NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1x_NCINvXs1i_NtCskt5MLIAl8nl_9hashbrown3mapINtB4t_7HashMapBV_B1B_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateEINtNtB3x_7collect6ExtendB1x_E6extendINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1J_EE0E0E0B1X_.exit.i ] ; 2 uses
  %i.r = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %.sroa.01.0.i ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !521)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !522
  call void @llvm.experimental.noalias.scope.decl(metadata !523)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !524
  call void @_RNvXs4_NtCs1xwejQucwHj_5alloc6stringNtB5_6StringNtNtCs3oUPovFnLWP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.r), !noalias !525
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !524
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !526, !noalias !527, !nonnull !5, !noundef !5
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.v = load i64, ptr %i.u, align 8, !alias.scope !526, !noalias !527, !noundef !5
  invoke void @_RNvMsd_NtCskuiImRAV2ip_9elfshaker7packidxNtB5_9PackIndex25compute_snapshot_checksum(ptr noalias nofree noundef nonnull sret([21 x i8]) align 1 captures(none) dereferenceable(21) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(264) %i.j, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.t, i64 noundef %i.v)
          to label %bb.e unwind label %.loopexit.i, !noalias !525

.loopexit.i:                                      ; preds = %bb.c
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

.loopexit.split-lp.i:                             ; preds = %bb.f
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.d:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #30
          to label %bb.i unwind label %bb.h, !noalias !525

bb.e:                                             ; preds = %bb.c
  %i.w = load i8, ptr %i.c, align 1, !range !4, !noalias !524, !noundef !5
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs1xwejQucwHj_5alloc6string6StringTBV_Ahj14_EuNCNCNvMs0_NtNtCskuiImRAV2ip_9elfshaker4repo10repositoryNtB1T_10Repository24find_duplicate_snapshots00NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1x_NCINvXs1i_NtCskt5MLIAl8nl_9hashbrown3mapINtB4t_7HashMapBV_B1B_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateEINtNtB3x_7collect6ExtendB1x_E6extendINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1J_EE0E0E0B1X_.exit.i, label %bb.f, !prof !19

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 26, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #32
          to label %bb.g unwind label %.loopexit.split-lp.i, !noalias !525

bb.g:                                             ; preds = %bb.f
  unreachable

bb.h:                                             ; preds = %bb.d
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #27, !noalias !525
  unreachable

bb.i:                                             ; preds = %bb.d
  resume { ptr, i32 } %lpad.phi.i

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs1xwejQucwHj_5alloc6string6StringTBV_Ahj14_EuNCNCNvMs0_NtNtCskuiImRAV2ip_9elfshaker4repo10repositoryNtB1T_10Repository24find_duplicate_snapshots00NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1x_NCINvXs1i_NtCskt5MLIAl8nl_9hashbrown3mapINtB4t_7HashMapBV_B1B_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateEINtNtB3x_7collect6ExtendB1x_E6extendINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1J_EE0E0E0B1X_.exit.i: ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.q, ptr noundef nonnull align 1 dereferenceable(20) %i.p, i64 20, i1 false), !noalias !528
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !524
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !528
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !524
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !529
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(48) %i.e, i64 24, i1 false), !noalias !528
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !529
  call void @_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB5_7HashMapNtNtCs1xwejQucwHj_5alloc6string6StringAhj14_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE6insertCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull sret([21 x i8]) align 1 captures(none) dereferenceable(21) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 1 captures(none) dereferenceable(20) %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !529
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !529
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !522
  %i.z = add nuw i64 %.sroa.01.0.i, 1             ; 2 uses
  %i.aa = icmp eq i64 %i.z, %i.o
  br i1 %i.aa, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCs1xwejQucwHj_5alloc6string6StringENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1z_8adapters3map8map_foldRBQ_TBQ_Ahj14_EuNCNCNvMs0_NtNtCskuiImRAV2ip_9elfshaker4repo10repositoryNtB3d_10Repository24find_duplicate_snapshots00NCINvNvB1t_8for_each4callB2R_NCINvXs1i_NtCskt5MLIAl8nl_9hashbrown3mapINtB5j_7HashMapBQ_B2V_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateEINtNtB1x_7collect6ExtendB2R_E6extendINtB2j_3MapBF_B33_EE0E0E0EB3h_.exit, label %bb.c

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCs1xwejQucwHj_5alloc6string6StringENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1z_8adapters3map8map_foldRBQ_TBQ_Ahj14_EuNCNCNvMs0_NtNtCskuiImRAV2ip_9elfshaker4repo10repositoryNtB3d_10Repository24find_duplicate_snapshots00NCINvNvB1t_8for_each4callB2R_NCINvXs1i_NtCskt5MLIAl8nl_9hashbrown3mapINtB5j_7HashMapBQ_B2V_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateEINtNtB1x_7collect6ExtendB2R_E6extendINtB2j_3MapBF_B33_EE0E0E0EB3h_.exit: ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtCs1xwejQucwHj_5alloc6string6StringTBV_Ahj14_EuNCNCNvMs0_NtNtCskuiImRAV2ip_9elfshaker4repo10repositoryNtB1T_10Repository24find_duplicate_snapshots00NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB1x_NCINvXs1i_NtCskt5MLIAl8nl_9hashbrown3mapINtB4t_7HashMapBV_B1B_NtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateEINtNtB3x_7collect6ExtendB1x_E6extendINtB4_3MapINtNtNtBa_5slice4iter4IterBV_EB1J_EE0E0E0B1X_.exit.i, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryENCNvMs0_NtNtB1r_4repo10repositoryNtB2g_10Repository18compute_entry_diff0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3j_8for_each4callTTRNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringRAhj14_RNtB1p_12FileMetadataERB1n_ENCINvXs1i_NtCskt5MLIAl8nl_9hashbrown3mapINtB5Q_7HashMapB4n_B5A_NtNtNtB4v_4hash6random11RandomStateEINtNtB3n_7collect6ExtendB4m_E6extendBN_E0E0EB1r_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef align 8 dereferenceable(48) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.b = icmp eq ptr %0, %1
  br i1 %i.b, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1H_8adapters3map8map_foldRBQ_TTRNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringRAhj14_RNtBS_12FileMetadataEB2V_EuNCNvMs0_NtNtBU_4repo10repositoryNtB4q_10Repository18compute_entry_diff0NCINvNvB1B_8for_each4callB2Z_NCINvXs1i_NtCskt5MLIAl8nl_9hashbrown3mapINtB64_7HashMapB30_B2V_NtNtNtB38_4hash6random11RandomStateEINtNtB1F_7collect6ExtendB2Z_E6extendINtB2r_3MapBF_B4i_EE0E0E0EBU_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %1 to i64
  %i.d = ptrtoint ptr %0 to i64
  %i.e = sub nuw i64 %i.c, %i.d
  %i.f = lshr exact i64 %i.e, 6
  %.sroa.0.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.0.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.k, %bb.c ] ; 2 uses
  %i.g = getelementptr inbounds nuw [64 x i8], ptr %0, i64 %.sroa.01.0.i ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 60
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !538
  store ptr %i.g, ptr %i.a, align 8, !noalias !539
  store ptr %i.h, ptr %.sroa.0.sroa.4.0..sroa_idx.i.i, align 8, !noalias !539
  store ptr %i.i, ptr %.sroa.0.sroa.5.0..sroa_idx.i.i, align 8, !noalias !539
  %i.j = call noundef align 8 ptr @_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB5_7HashMapTRNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringRAhj14_RNtNtCskuiImRAV2ip_9elfshaker7packidx12FileMetadataERNtB1H_9FileEntryNtNtNtBV_4hash6random11RandomStateE6insertB1J_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.g), !noalias !540 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !538
  %i.k = add nuw i64 %.sroa.01.0.i, 1             ; 2 uses
  %i.l = icmp eq i64 %i.k, %i.f
  br i1 %i.l, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1H_8adapters3map8map_foldRBQ_TTRNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringRAhj14_RNtBS_12FileMetadataEB2V_EuNCNvMs0_NtNtBU_4repo10repositoryNtB4q_10Repository18compute_entry_diff0NCINvNvB1B_8for_each4callB2Z_NCINvXs1i_NtCskt5MLIAl8nl_9hashbrown3mapINtB64_7HashMapB30_B2V_NtNtNtB38_4hash6random11RandomStateEINtNtB1F_7collect6ExtendB2Z_E6extendINtB2r_3MapBF_B4i_EE0E0E0EBU_.exit, label %bb.c

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1H_8adapters3map8map_foldRBQ_TTRNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringRAhj14_RNtBS_12FileMetadataEB2V_EuNCNvMs0_NtNtBU_4repo10repositoryNtB4q_10Repository18compute_entry_diff0NCINvNvB1B_8for_each4callB2Z_NCINvXs1i_NtCskt5MLIAl8nl_9hashbrown3mapINtB64_7HashMapB30_B2V_NtNtNtB38_4hash6random11RandomStateEINtNtB1F_7collect6ExtendB2Z_E6extendINtB2r_3MapBF_B4i_EE0E0E0EBU_.exit: ; preds = %bb.c, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryENCNvMs0_NtNtB1r_4repo10repositoryNtB2g_10Repository18compute_entry_diffs_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3l_8for_each4callTTRNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringRAhj14_RNtB1p_12FileMetadataERB1n_ENCINvXs1i_NtCskt5MLIAl8nl_9hashbrown3mapINtB5S_7HashMapB4p_B5C_NtNtNtB4x_4hash6random11RandomStateEINtNtB3p_7collect6ExtendB4o_E6extendBN_E0E0EB1r_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias nofree noundef align 8 dereferenceable(48) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.b = icmp eq ptr %0, %1
  br i1 %i.b, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1H_8adapters3map8map_foldRBQ_TTRNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringRAhj14_RNtBS_12FileMetadataEB2V_EuNCNvMs0_NtNtBU_4repo10repositoryNtB4q_10Repository18compute_entry_diffs_0NCINvNvB1B_8for_each4callB2Z_NCINvXs1i_NtCskt5MLIAl8nl_9hashbrown3mapINtB66_7HashMapB30_B2V_NtNtNtB38_4hash6random11RandomStateEINtNtB1F_7collect6ExtendB2Z_E6extendINtB2r_3MapBF_B4i_EE0E0E0EBU_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = ptrtoint ptr %1 to i64
  %i.d = ptrtoint ptr %0 to i64
  %i.e = sub nuw i64 %i.c, %i.d
  %i.f = lshr exact i64 %i.e, 6
  %.sroa.0.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.0.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.sroa.01.0.i = phi i64 [ 0, %bb.b ], [ %i.k, %bb.c ] ; 2 uses
  %i.g = getelementptr inbounds nuw [64 x i8], ptr %0, i64 %.sroa.01.0.i ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 60
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !549
  store ptr %i.g, ptr %i.a, align 8, !noalias !550
  store ptr %i.h, ptr %.sroa.0.sroa.4.0..sroa_idx.i.i, align 8, !noalias !550
  store ptr %i.i, ptr %.sroa.0.sroa.5.0..sroa_idx.i.i, align 8, !noalias !550
  %i.j = call noundef align 8 ptr @_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB5_7HashMapTRNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringRAhj14_RNtNtCskuiImRAV2ip_9elfshaker7packidx12FileMetadataERNtB1H_9FileEntryNtNtNtBV_4hash6random11RandomStateE6insertB1J_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.g), !noalias !551 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !549
  %i.k = add nuw i64 %.sroa.01.0.i, 1             ; 2 uses
  %i.l = icmp eq i64 %i.k, %i.f
  br i1 %i.l, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1H_8adapters3map8map_foldRBQ_TTRNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringRAhj14_RNtBS_12FileMetadataEB2V_EuNCNvMs0_NtNtBU_4repo10repositoryNtB4q_10Repository18compute_entry_diffs_0NCINvNvB1B_8for_each4callB2Z_NCINvXs1i_NtCskt5MLIAl8nl_9hashbrown3mapINtB66_7HashMapB30_B2V_NtNtNtB38_4hash6random11RandomStateEINtNtB1F_7collect6ExtendB2Z_E6extendINtB2r_3MapBF_B4i_EE0E0E0EBU_.exit, label %bb.c

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtCskuiImRAV2ip_9elfshaker7packidx9FileEntryENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1H_8adapters3map8map_foldRBQ_TTRNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringRAhj14_RNtBS_12FileMetadataEB2V_EuNCNvMs0_NtNtBU_4repo10repositoryNtB4q_10Repository18compute_entry_diffs_0NCINvNvB1B_8for_each4callB2Z_NCINvXs1i_NtCskt5MLIAl8nl_9hashbrown3mapINtB66_7HashMapB30_B2V_NtNtNtB38_4hash6random11RandomStateEINtNtB1F_7collect6ExtendB2Z_E6extendINtB2r_3MapBF_B4i_EE0E0E0EBU_.exit: ; preds = %bb.c, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterRNtNtCsaL1QbXo9JQH_3std4path7PathBufENCINvNtCskuiImRAV2ip_9elfshaker5batch17compute_checksumsB1M_E0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3n_8for_each4callINtNtBc_6result6ResultAhj14_NtNtNtBc_2io5error5ErrorENCINvMsk_B12_INtB12_3VecB4q_E14extend_trustedBN_E0E0EB2t_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
end_hunk_0
