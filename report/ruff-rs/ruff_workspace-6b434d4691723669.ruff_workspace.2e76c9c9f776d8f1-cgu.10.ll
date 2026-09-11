Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ruff_workspace-6b434d4691723669.ruff_workspace.2e76c9c9f776d8f1-cgu.10?download=true
inline.NumInlined: 1753
inline.NumDeleted: 830
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable14driftsort_mainTNtNtCs2AWtUsOyxgP_3std4path7PathBufTB10_INtNtCscdodAO9FK5_5alloc3vec3VecNtNtB1J_6string6StringEEENCINvMNtB1J_5sliceSBZ_7sort_byNCINvXs1o_NtNtNtB1J_11collections5btree3mapINtB3d_8BTreeMapB10_B1z_EINtNtNtNtB8_4iter6traits7collect12FromIteratorBZ_E9from_iterINtNtNtB4g_8adapters3map3MapINtB3d_8IntoIterB10_B1E_ENCNCNvMs3_NtCs3ZkgueCtkyH_14ruff_workspace13configurationNtB68_20AnalyzeConfiguration12from_optionss_00EE0E0IB1F_BZ_EEB6a_:bb.a

.noexc10:                                         ; preds = %.noexc
  %i.l = load i64, ptr %i.k, align 8, !noalias !1575
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.j, i64 %i.l) #31
  unreachable

bb.b:                                             ; preds = %bb.d
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br i1 %i.f, label %bb.i, label %bb.h

bb.c:                                             ; preds = %.noexc
  %i.m = load ptr, ptr %i.k, align 8, !noalias !1575, !nonnull !5, !noundef !5 ; 2 uses
  %i.n = icmp ule i64 %.sroa.0.0.i9, %i.j
  tail call void @llvm.assume(i1 %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1575
  store i64 %i.j, ptr %i.b, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.m, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.sroa.4.0 = phi i64 [ 56, %bb.a ], [ %i.j, %bb.c ]
  %.pn17 = phi ptr [ %i.c, %bb.a ], [ %i.m, %bb.c ]
  %i.o = icmp samesign ult i64 %1, 65
  invoke void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift4sortTNtNtCs2AWtUsOyxgP_3std4path7PathBufTBX_INtNtCscdodAO9FK5_5alloc3vec3VecNtNtB1F_6string6StringEEENCINvMNtB1F_5sliceSBW_7sort_byNCINvXs1o_NtNtNtB1F_11collections5btree3mapINtB39_8BTreeMapBX_B1w_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBW_E9from_iterINtNtNtB4b_8adapters3map3MapINtB39_8IntoIterBX_B1A_ENCNCNvMs3_NtCs3ZkgueCtkyH_14ruff_workspace13configurationNtB62_20AnalyzeConfiguration12from_optionss_00EE0E0EB64_(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %.pn17, i64 noundef %.sroa.4.0, i1 noundef zeroext %i.o, ptr noalias noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.e unwind label %bb.b

bb.e:                                             ; preds = %bb.d
  br i1 %i.f, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.g:                                             ; preds = %bb.e
  call fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtCs2AWtUsOyxgP_3std4path7PathBufTB18_IBC_NtNtBG_6string6StringEEEEECs3ZkgueCtkyH_14ruff_workspace(ptr noalias noundef align 8 dereferenceable(24) %i.b)
  br label %bb.f

bb.h:                                             ; preds = %bb.i, %bb.b
  resume { ptr, i32 } %lpad.thr_comm.split-lp

bb.i:                                             ; preds = %bb.b
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtCs2AWtUsOyxgP_3std4path7PathBufTB18_IBC_NtNtBG_6string6StringEEEEECs3ZkgueCtkyH_14ruff_workspace(ptr noalias noundef align 8 dereferenceable(24) %i.b) #26
          to label %bb.h unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #27
  unreachable
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable14driftsort_mainTRReRRNtNtCsEhZmuQNqkz_11ruff_linter13rule_selector12RuleSelectorENCINvMNtCscdodAO9FK5_5alloc5sliceSBZ_11sort_by_keyB10_NCNvMs1_NtCs3ZkgueCtkyH_14ruff_workspace13configurationNtB33_17LintConfiguration13as_rule_tables8_0E0INtNtB2b_3vec3VecBZ_EEB35_(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias noundef align 8 dereferenceable(8) %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [4096 x i8], align 8              ; 3 uses
  %i.d = lshr i64 %1, 1
  %i.e = sub nuw nsw i64 %1, %i.d
  %.sroa.0.0.i = tail call noundef range(i64 0, 1152921504606846976) i64 @llvm.umin.i64(i64 range(i64 0, 1729382256910270462) %1, i64 500000)
  %.sroa.0.0.i8 = tail call noundef i64 @llvm.umax.i64(i64 %.sroa.0.0.i, i64 %i.e) ; 2 uses
  %.sroa.0.0.i9 = tail call noundef i64 @llvm.umax.i64(i64 %.sroa.0.0.i8, i64 48) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.f = icmp samesign ugt i64 %.sroa.0.0.i8, 256 ; 3 uses
  br i1 %i.f, label %.noexc, label %bb.d

.noexc:                                           ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1578
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs3ZkgueCtkyH_14ruff_workspace(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 257, 0) %.sroa.0.0.i9, i1 noundef zeroext false, i64 noundef 8, i64 noundef 16)
  %i.g = load i64, ptr %i.a, align 8, !range !13, !noalias !1578, !noundef !5
  %i.h = trunc nuw i64 %i.g to i1
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !26, !noalias !1578, !noundef !5 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.h, label %.noexc10, label %bb.c, !prof !7

.noexc10:                                         ; preds = %.noexc
  %i.l = load i64, ptr %i.k, align 8, !noalias !1578
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.j, i64 %i.l) #31
  unreachable

bb.b:                                             ; preds = %bb.d
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br i1 %i.f, label %bb.h, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTRReRRNtNtCsEhZmuQNqkz_11ruff_linter13rule_selector12RuleSelectorEEECs3ZkgueCtkyH_14ruff_workspace.exit

bb.c:                                             ; preds = %.noexc
  %i.m = load ptr, ptr %i.k, align 8, !noalias !1578, !nonnull !5, !noundef !5 ; 2 uses
  %i.n = icmp ule i64 %.sroa.0.0.i9, %i.j
  tail call void @llvm.assume(i1 %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1578
  store i64 %i.j, ptr %i.b, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.m, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.a
  %.sroa.4.0 = phi i64 [ 256, %bb.a ], [ %i.j, %bb.c ]
  %.pn18 = phi ptr [ %i.c, %bb.a ], [ %i.m, %bb.c ]
  %i.o = icmp samesign ult i64 %1, 65
  invoke void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6stable5drift4sortTRReRRNtNtCsEhZmuQNqkz_11ruff_linter13rule_selector12RuleSelectorENCINvMNtCscdodAO9FK5_5alloc5sliceSBW_11sort_by_keyBX_NCNvMs1_NtCs3ZkgueCtkyH_14ruff_workspace13configurationNtB2Z_17LintConfiguration13as_rule_tables8_0E0EB31_(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef nonnull align 8 %.pn18, i64 noundef %.sroa.4.0, i1 noundef zeroext %i.o, ptr noalias noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.e unwind label %bb.b

bb.e:                                             ; preds = %bb.d
  br i1 %i.f, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.g:                                             ; preds = %bb.e
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTRReRRNtNtCsEhZmuQNqkz_11ruff_linter13rule_selector12RuleSelectorEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs3ZkgueCtkyH_14ruff_workspace(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  br label %bb.f

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTRReRRNtNtCsEhZmuQNqkz_11ruff_linter13rule_selector12RuleSelectorEEECs3ZkgueCtkyH_14ruff_workspace.exit: ; preds = %bb.h, %bb.b
  resume { ptr, i32 } %lpad.thr_comm.split-lp

bb.h:                                             ; preds = %bb.b
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTRReRRNtNtCsEhZmuQNqkz_11ruff_linter13rule_selector12RuleSelectorEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs3ZkgueCtkyH_14ruff_workspace(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTRReRRNtNtCsEhZmuQNqkz_11ruff_linter13rule_selector12RuleSelectorEEECs3ZkgueCtkyH_14ruff_workspace.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #27
  unreachable
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable7ipnsortRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNvYBT_NtNtB8_3cmp10PartialOrd2ltECs3ZkgueCtkyH_14ruff_workspace(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias noundef nonnull %2) unnamed_addr #3 {
bb.a:
  %i.a = icmp samesign ult i64 %1, 2
  br i1 %i.a, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection7reverseCs3ZkgueCtkyH_14ruff_workspace.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val6 = load ptr, ptr %i.b, align 8, !nonnull !5, !align !22, !noundef !5 ; 6 uses
  %.val7 = load ptr, ptr %0, align 8, !nonnull !5, !align !22, !noundef !5 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1604)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1605)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1606)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1607)
  %i.c = load i64, ptr %.val6, align 8, !range !9, !alias.scope !1608, !noalias !1609, !noundef !5 ; 3 uses
  %i.d = icmp eq i64 %i.c, -1
  %i.e = load i64, ptr %.val7, align 8, !range !9, !alias.scope !1609, !noalias !1608, !noundef !5
  %.not57 = icmp eq i64 %i.e, -1                  ; 2 uses
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %.not57, label %.preheader28, label %.split

bb.d:                                             ; preds = %bb.b
  br i1 %.not57, label %.split18, label %.preheader

.split18:                                         ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %.val6, i64 8
  %i.g = load i8, ptr %i.f, align 8, !range !27, !alias.scope !1608, !noalias !1609, !noundef !5
  %i.h = getelementptr inbounds nuw i8, ptr %.val7, i64 8
  %i.i = load i8, ptr %i.h, align 8, !range !27, !alias.scope !1609, !noalias !1608, !noundef !5
  %i.j = icmp samesign ult i8 %i.g, %i.i
  br i1 %i.j, label %.preheader, label %.preheader28

.preheader:                                       ; preds = %bb.d, %.split, %.split18
  %.not43 = icmp eq i64 %1, 2
  br i1 %.not43, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNvYB12_NtNtB8_3cmp10PartialOrd2ltECs3ZkgueCtkyH_14ruff_workspace.exit, label %.lr.ph36

.split:                                           ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %.val6, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !1608, !noalias !1609, !nonnull !5, !noundef !5
  %i.m = getelementptr inbounds nuw i8, ptr %.val6, i64 16
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !1608, !noalias !1609, !noundef !5 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.val7, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !1609, !noalias !1608, !nonnull !5, !noundef !5
  %i.q = getelementptr inbounds nuw i8, ptr %.val7, i64 16
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !1609, !noalias !1608, !noundef !5 ; 2 uses
  %spec.store.select.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.n, i64 %i.r)
  %i.s = tail call i32 @memcmp(ptr nonnull %i.l, ptr nonnull %i.p, i64 %spec.store.select.i.i.i.i), !noalias !1610 ; 2 uses
  %i.t = sext i32 %i.s to i64
  %i.u = icmp eq i32 %i.s, 0
  %i.v = sub i64 %i.n, %i.r
  %spec.select.i.i.i.i = select i1 %i.u, i64 %i.v, i64 %i.t
  %i.w = icmp slt i64 %spec.select.i.i.i.i, 0
  br i1 %i.w, label %.preheader, label %.preheader28

.preheader28:                                     ; preds = %bb.c, %.split, %.split18
  %.not42 = icmp eq i64 %1, 2
  br i1 %.not42, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNvYB12_NtNtB8_3cmp10PartialOrd2ltECs3ZkgueCtkyH_14ruff_workspace.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader28, %_RNvYNvYRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1l_3ops8function5FnMutTRB5_B2s_EE8call_mutCs3ZkgueCtkyH_14ruff_workspace.exit11.thread
  %i.x = phi i64 [ %i.z, %_RNvYNvYRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1l_3ops8function5FnMutTRB5_B2s_EE8call_mutCs3ZkgueCtkyH_14ruff_workspace.exit11.thread ], [ %i.c, %.preheader28 ]
  %.val5 = phi ptr [ %.val4, %_RNvYNvYRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1l_3ops8function5FnMutTRB5_B2s_EE8call_mutCs3ZkgueCtkyH_14ruff_workspace.exit11.thread ], [ %.val6, %.preheader28 ] ; 3 uses
  %.sroa.01.0.i30 = phi i64 [ %i.at, %_RNvYNvYRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1l_3ops8function5FnMutTRB5_B2s_EE8call_mutCs3ZkgueCtkyH_14ruff_workspace.exit11.thread ], [ 2, %.preheader28 ] ; 5 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i30
  %.val4 = load ptr, ptr %i.y, align 8, !nonnull !5, !align !22, !noundef !5 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1611)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1612)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1613)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1614)
  %i.z = load i64, ptr %.val4, align 8, !range !9, !alias.scope !1615, !noalias !1616, !noundef !5 ; 2 uses
  %i.aa = icmp eq i64 %i.z, -1
  %.not = icmp eq i64 %i.x, -1                    ; 2 uses
  br i1 %i.aa, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph
  br i1 %.not, label %_RNvYNvYRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1l_3ops8function5FnMutTRB5_B2s_EE8call_mutCs3ZkgueCtkyH_14ruff_workspace.exit11.thread, label %.split19

bb.f:                                             ; preds = %.lr.ph
  br i1 %.not, label %.split20, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNvYB12_NtNtB8_3cmp10PartialOrd2ltECs3ZkgueCtkyH_14ruff_workspace.exit

.split20:                                         ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %.val4, i64 8
  %i.ac = load i8, ptr %i.ab, align 8, !range !27, !alias.scope !1615, !noalias !1616, !noundef !5
  %i.ad = getelementptr inbounds nuw i8, ptr %.val5, i64 8
  %i.ae = load i8, ptr %i.ad, align 8, !range !27, !alias.scope !1616, !noalias !1615, !noundef !5
  %i.af = icmp samesign ult i8 %i.ac, %i.ae
  br i1 %i.af, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNvYB12_NtNtB8_3cmp10PartialOrd2ltECs3ZkgueCtkyH_14ruff_workspace.exit, label %_RNvYNvYRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1l_3ops8function5FnMutTRB5_B2s_EE8call_mutCs3ZkgueCtkyH_14ruff_workspace.exit11.thread

.split19:                                         ; preds = %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %.val4, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !alias.scope !1615, !noalias !1616, !nonnull !5, !noundef !5
  %i.ai = getelementptr inbounds nuw i8, ptr %.val4, i64 16
  %i.aj = load i64, ptr %i.ai, align 8, !alias.scope !1615, !noalias !1616, !noundef !5 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.val5, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !alias.scope !1616, !noalias !1615, !nonnull !5, !noundef !5
  %i.am = getelementptr inbounds nuw i8, ptr %.val5, i64 16
  %i.an = load i64, ptr %i.am, align 8, !alias.scope !1616, !noalias !1615, !noundef !5 ; 2 uses
  %spec.store.select.i.i.i.i9 = tail call i64 @llvm.umin.i64(i64 %i.aj, i64 %i.an)
  %i.ao = tail call i32 @memcmp(ptr nonnull %i.ah, ptr nonnull %i.al, i64 %spec.store.select.i.i.i.i9), !noalias !1617 ; 2 uses
  %i.ap = sext i32 %i.ao to i64
  %i.aq = icmp eq i32 %i.ao, 0
  %i.ar = sub i64 %i.aj, %i.an
  %spec.select.i.i.i.i10 = select i1 %i.aq, i64 %i.ar, i64 %i.ap
  %i.as = icmp slt i64 %spec.select.i.i.i.i10, 0
  br i1 %i.as, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNvYB12_NtNtB8_3cmp10PartialOrd2ltECs3ZkgueCtkyH_14ruff_workspace.exit, label %_RNvYNvYRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1l_3ops8function5FnMutTRB5_B2s_EE8call_mutCs3ZkgueCtkyH_14ruff_workspace.exit11.thread

_RNvYNvYRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1l_3ops8function5FnMutTRB5_B2s_EE8call_mutCs3ZkgueCtkyH_14ruff_workspace.exit11.thread: ; preds = %bb.e, %.split20, %.split19
  %i.at = add nuw nsw i64 %.sroa.01.0.i30, 1      ; 2 uses
  %exitcond.not = icmp eq i64 %i.at, %1
  br i1 %exitcond.not, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection7reverseCs3ZkgueCtkyH_14ruff_workspace.exit, label %.lr.ph

.lr.ph36:                                         ; preds = %.preheader, %_RNvYNvYRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1l_3ops8function5FnMutTRB5_B2s_EE8call_mutCs3ZkgueCtkyH_14ruff_workspace.exit15
  %i.au = phi i64 [ %i.aw, %_RNvYNvYRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1l_3ops8function5FnMutTRB5_B2s_EE8call_mutCs3ZkgueCtkyH_14ruff_workspace.exit15 ], [ %i.c, %.preheader ]
  %.val3 = phi ptr [ %.val, %_RNvYNvYRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1l_3ops8function5FnMutTRB5_B2s_EE8call_mutCs3ZkgueCtkyH_14ruff_workspace.exit15 ], [ %.val6, %.preheader ] ; 3 uses
  %.sroa.01.1.i35 = phi i64 [ %i.bq, %_RNvYNvYRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1l_3ops8function5FnMutTRB5_B2s_EE8call_mutCs3ZkgueCtkyH_14ruff_workspace.exit15 ], [ 2, %.preheader ] ; 5 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.1.i35
  %.val = load ptr, ptr %i.av, align 8, !nonnull !5, !align !22, !noundef !5 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1618)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1619)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1620)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1621)
  %i.aw = load i64, ptr %.val, align 8, !range !9, !alias.scope !1622, !noalias !1623, !noundef !5 ; 2 uses
  %i.ax = icmp eq i64 %i.aw, -1
  %.not27 = icmp eq i64 %i.au, -1                 ; 2 uses
  br i1 %i.ax, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph36
  br i1 %.not27, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNvYB12_NtNtB8_3cmp10PartialOrd2ltECs3ZkgueCtkyH_14ruff_workspace.exit, label %.split21

bb.h:                                             ; preds = %.lr.ph36
  br i1 %.not27, label %.split22, label %_RNvYNvYRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1l_3ops8function5FnMutTRB5_B2s_EE8call_mutCs3ZkgueCtkyH_14ruff_workspace.exit15

.split22:                                         ; preds = %bb.h
  %i.ay = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.az = load i8, ptr %i.ay, align 8, !range !27, !alias.scope !1622, !noalias !1623, !noundef !5
  %i.ba = getelementptr inbounds nuw i8, ptr %.val3, i64 8
  %i.bb = load i8, ptr %i.ba, align 8, !range !27, !alias.scope !1623, !noalias !1622, !noundef !5
  %i.bc = icmp samesign ult i8 %i.az, %i.bb
  br i1 %i.bc, label %_RNvYNvYRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1l_3ops8function5FnMutTRB5_B2s_EE8call_mutCs3ZkgueCtkyH_14ruff_workspace.exit15, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNvYB12_NtNtB8_3cmp10PartialOrd2ltECs3ZkgueCtkyH_14ruff_workspace.exit

.split21:                                         ; preds = %bb.g
  %i.bd = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.be = load ptr, ptr %i.bd, align 8, !alias.scope !1622, !noalias !1623, !nonnull !5, !noundef !5
  %i.bf = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.bg = load i64, ptr %i.bf, align 8, !alias.scope !1622, !noalias !1623, !noundef !5 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.val3, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !alias.scope !1623, !noalias !1622, !nonnull !5, !noundef !5
  %i.bj = getelementptr inbounds nuw i8, ptr %.val3, i64 16
  %i.bk = load i64, ptr %i.bj, align 8, !alias.scope !1623, !noalias !1622, !noundef !5 ; 2 uses
  %spec.store.select.i.i.i.i13 = tail call i64 @llvm.umin.i64(i64 %i.bg, i64 %i.bk)
  %i.bl = tail call i32 @memcmp(ptr nonnull %i.be, ptr nonnull %i.bi, i64 %spec.store.select.i.i.i.i13), !noalias !1624 ; 2 uses
  %i.bm = sext i32 %i.bl to i64
  %i.bn = icmp eq i32 %i.bl, 0
  %i.bo = sub i64 %i.bg, %i.bk
  %spec.select.i.i.i.i14 = select i1 %i.bn, i64 %i.bo, i64 %i.bm
  %i.bp = icmp slt i64 %spec.select.i.i.i.i14, 0
  br i1 %i.bp, label %_RNvYNvYRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1l_3ops8function5FnMutTRB5_B2s_EE8call_mutCs3ZkgueCtkyH_14ruff_workspace.exit15, label %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNvYB12_NtNtB8_3cmp10PartialOrd2ltECs3ZkgueCtkyH_14ruff_workspace.exit

_RNvYNvYRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1l_3ops8function5FnMutTRB5_B2s_EE8call_mutCs3ZkgueCtkyH_14ruff_workspace.exit15: ; preds = %bb.h, %.split22, %.split21
  %i.bq = add nuw nsw i64 %.sroa.01.1.i35, 1      ; 2 uses
  %exitcond47.not = icmp eq i64 %i.bq, %1
  br i1 %exitcond47.not, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection12split_at_mutCs3ZkgueCtkyH_14ruff_workspace.exit11.preheader.i.i, label %.lr.ph36

_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNvYB12_NtNtB8_3cmp10PartialOrd2ltECs3ZkgueCtkyH_14ruff_workspace.exit: ; preds = %.split19, %.split20, %bb.f, %.split21, %.split22, %bb.g, %.preheader28, %.preheader
  %.sroa.3.0.i = phi i1 [ true, %.preheader ], [ true, %.split21 ], [ false, %.preheader28 ], [ true, %bb.g ], [ true, %.split22 ], [ false, %bb.f ], [ false, %.split20 ], [ false, %.split19 ]
  %.sroa.0.0.i = phi i64 [ 2, %.preheader ], [ %.sroa.01.1.i35, %.split21 ], [ 2, %.preheader28 ], [ %.sroa.01.1.i35, %bb.g ], [ %.sroa.01.1.i35, %.split22 ], [ %.sroa.01.0.i30, %bb.f ], [ %.sroa.01.0.i30, %.split20 ], [ %.sroa.01.0.i30, %.split19 ] ; 2 uses
  %i.br = icmp samesign ule i64 %.sroa.0.0.i, %1
  tail call void @llvm.assume(i1 %i.br)
  %i.bs = icmp eq i64 %.sroa.0.0.i, %1
  br i1 %i.bs, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNvYB12_NtNtB8_3cmp10PartialOrd2ltECs3ZkgueCtkyH_14ruff_workspace.exit
  br i1 %.sroa.3.0.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection12split_at_mutCs3ZkgueCtkyH_14ruff_workspace.exit11.preheader.i.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection7reverseCs3ZkgueCtkyH_14ruff_workspace.exit

bb.j:                                             ; preds = %_RINvNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared17find_existing_runRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNvYB12_NtNtB8_3cmp10PartialOrd2ltECs3ZkgueCtkyH_14ruff_workspace.exit
  %i.bt = or i64 %1, 1
  %i.bu = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.bt, i1 true)
  %i.bv = trunc nuw nsw i64 %i.bu to i32
  %i.bw = shl nuw nsw i32 %i.bv, 1
  %i.bx = xor i32 %i.bw, 126
  tail call fastcc void @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort8unstable9quicksort9quicksortRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNvYB17_NtNtBa_3cmp10PartialOrd2ltECs3ZkgueCtkyH_14ruff_workspace(ptr noalias noundef nonnull align 8 %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(8) null, i32 noundef %i.bx, ptr noalias noundef nonnull %2)
  br label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection7reverseCs3ZkgueCtkyH_14ruff_workspace.exit

_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection7reverseCs3ZkgueCtkyH_14ruff_workspace.exit: ; preds = %_RNvYNvYRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1l_3ops8function5FnMutTRB5_B2s_EE8call_mutCs3ZkgueCtkyH_14ruff_workspace.exit11.thread, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection12split_at_mutCs3ZkgueCtkyH_14ruff_workspace.exit11.i.i, %middle.block, %bb.a, %bb.i, %bb.j
  ret void

_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection12split_at_mutCs3ZkgueCtkyH_14ruff_workspace.exit11.preheader.i.i: ; preds = %_RNvYNvYRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSectionNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB1l_3ops8function5FnMutTRB5_B2s_EE8call_mutCs3ZkgueCtkyH_14ruff_workspace.exit15, %bb.i
  %i.by = lshr i64 %1, 1                          ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1625)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1626)
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %1 ; 2 uses
  %min.iters.check = icmp samesign ult i64 %1, 8
  br i1 %min.iters.check, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection12split_at_mutCs3ZkgueCtkyH_14ruff_workspace.exit11.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection12split_at_mutCs3ZkgueCtkyH_14ruff_workspace.exit11.preheader.i.i
  %n.vec = and i64 %i.by, 576460752303423484      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ca = xor i64 %index, -1
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 4 uses
  %i.cc = getelementptr [8 x i8], ptr %i.bz, i64 %i.ca ; 4 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %wide.load = load <2 x ptr>, ptr %i.cb, align 8, !alias.scope !1627, !noalias !1626
  %wide.load60 = load <2 x ptr>, ptr %i.cd, align 8, !alias.scope !1627, !noalias !1626
  %i.ce = getelementptr i8, ptr %i.cc, i64 -8
  %i.cf = getelementptr i8, ptr %i.cc, i64 -24
  %wide.load61 = load <2 x i64>, ptr %i.ce, align 8, !alias.scope !1628, !noalias !1625
  %wide.load62 = load <2 x i64>, ptr %i.cf, align 8, !alias.scope !1628, !noalias !1625
  %reverse = shufflevector <2 x i64> %wide.load61, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %reverse63 = shufflevector <2 x i64> %wide.load62, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  store <2 x i64> %reverse, ptr %i.cb, align 8, !alias.scope !1627, !noalias !1626
  store <2 x i64> %reverse63, ptr %i.cg, align 8, !alias.scope !1627, !noalias !1626
  %i.ch = getelementptr i8, ptr %i.cc, i64 -8
  %i.ci = getelementptr i8, ptr %i.cc, i64 -24
  %reverse64 = shufflevector <2 x ptr> %wide.load, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  %reverse65 = shufflevector <2 x ptr> %wide.load60, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %reverse64, ptr %i.ch, align 8, !alias.scope !1628, !noalias !1625
  store <2 x ptr> %reverse65, ptr %i.ci, align 8, !alias.scope !1628, !noalias !1625
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cj = icmp eq i64 %index.next, %n.vec
  br i1 %i.cj, label %middle.block, label %vector.body, !llvm.loop !1602

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.by, %n.vec
  br i1 %cmp.n, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection7reverseCs3ZkgueCtkyH_14ruff_workspace.exit, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection12split_at_mutCs3ZkgueCtkyH_14ruff_workspace.exit11.i.i.preheader

_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection12split_at_mutCs3ZkgueCtkyH_14ruff_workspace.exit11.i.i.preheader: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection12split_at_mutCs3ZkgueCtkyH_14ruff_workspace.exit11.preheader.i.i, %middle.block
  %.sroa.0.016.i.i.ph = phi i64 [ 0, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection12split_at_mutCs3ZkgueCtkyH_14ruff_workspace.exit11.preheader.i.i ], [ %n.vec, %middle.block ]
  br label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection12split_at_mutCs3ZkgueCtkyH_14ruff_workspace.exit11.i.i

_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection12split_at_mutCs3ZkgueCtkyH_14ruff_workspace.exit11.i.i: ; preds = %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection12split_at_mutCs3ZkgueCtkyH_14ruff_workspace.exit11.i.i.preheader, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection12split_at_mutCs3ZkgueCtkyH_14ruff_workspace.exit11.i.i
  %.sroa.0.016.i.i = phi i64 [ %i.cp, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection12split_at_mutCs3ZkgueCtkyH_14ruff_workspace.exit11.i.i ], [ %.sroa.0.016.i.i.ph, %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection12split_at_mutCs3ZkgueCtkyH_14ruff_workspace.exit11.i.i.preheader ] ; 3 uses
  %i.ck = xor i64 %.sroa.0.016.i.i, -1
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.0.016.i.i ; 2 uses
  %i.cm = getelementptr [8 x i8], ptr %i.bz, i64 %i.ck ; 2 uses
  %i.cn = load ptr, ptr %i.cl, align 8, !alias.scope !1627, !noalias !1626, !nonnull !5, !align !22, !noundef !5
  %i.co = load i64, ptr %i.cm, align 8, !alias.scope !1628, !noalias !1625
  store i64 %i.co, ptr %i.cl, align 8, !alias.scope !1627, !noalias !1626
  store ptr %i.cn, ptr %i.cm, align 8, !alias.scope !1628, !noalias !1625
  %i.cp = add nuw nsw i64 %.sroa.0.016.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.cp, %i.by
  br i1 %exitcond.not.i.i, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection7reverseCs3ZkgueCtkyH_14ruff_workspace.exit, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSRNtNtNtNtCsEhZmuQNqkz_11ruff_linter5rules5isort10categorize13ImportSection12split_at_mutCs3ZkgueCtkyH_14ruff_workspace.exit11.i.i, !llvm.loop !1603
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot11median3_recINtNtBa_6result6ResultNtNtCs3ZkgueCtkyH_14ruff_workspace8resolver12ResolvedFileNtCsizY4S0OBG5z_6ignore5ErrorENCINvMNtCscdodAO9FK5_5alloc5sliceSB14_7sort_byNCNvB1s_17deduplicate_files0E0EB1u_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noalias noundef align 8 dereferenceable(8) %4) unnamed_addr #1 {
bb.a:
  %i.a = and i64 %3, 2305843009213693944
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = lshr i64 %3, 3                           ; 5 uses
  %i.c = shl nuw nsw i64 %i.b, 2                  ; 3 uses
  %i.d = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %i.c
  %i.e = mul nuw i64 %i.b, 7                      ; 3 uses
  %i.f = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %i.e
  %i.g = tail call noundef ptr @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot11median3_recINtNtBa_6result6ResultNtNtCs3ZkgueCtkyH_14ruff_workspace8resolver12ResolvedFileNtCsizY4S0OBG5z_6ignore5ErrorENCINvMNtCscdodAO9FK5_5alloc5sliceSB14_7sort_byNCNvB1s_17deduplicate_files0E0EB1u_(ptr noundef %0, ptr noundef %i.d, ptr noundef %i.f, i64 noundef %i.b, ptr noalias noundef nonnull align 8 dereferenceable(8) %4)
  %i.h = getelementptr inbounds nuw [56 x i8], ptr %1, i64 %i.c
  %i.i = getelementptr inbounds nuw [56 x i8], ptr %1, i64 %i.e
  %i.j = tail call noundef ptr @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot11median3_recINtNtBa_6result6ResultNtNtCs3ZkgueCtkyH_14ruff_workspace8resolver12ResolvedFileNtCsizY4S0OBG5z_6ignore5ErrorENCINvMNtCscdodAO9FK5_5alloc5sliceSB14_7sort_byNCNvB1s_17deduplicate_files0E0EB1u_(ptr noundef %1, ptr noundef %i.h, ptr noundef %i.i, i64 noundef %i.b, ptr noalias noundef nonnull align 8 dereferenceable(8) %4)
  %i.k = getelementptr inbounds nuw [56 x i8], ptr %2, i64 %i.c
  %i.l = getelementptr inbounds nuw [56 x i8], ptr %2, i64 %i.e
  %i.m = tail call noundef ptr @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot11median3_recINtNtBa_6result6ResultNtNtCs3ZkgueCtkyH_14ruff_workspace8resolver12ResolvedFileNtCsizY4S0OBG5z_6ignore5ErrorENCINvMNtCscdodAO9FK5_5alloc5sliceSB14_7sort_byNCNvB1s_17deduplicate_files0E0EB1u_(ptr noundef %2, ptr noundef %i.k, ptr noundef %i.l, i64 noundef %i.b, ptr noalias noundef nonnull align 8 dereferenceable(8) %4)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.08.0 = phi ptr [ %i.m, %bb.b ], [ %2, %bb.a ] ; 3 uses
  %.sroa.04.0 = phi ptr [ %i.j, %bb.b ], [ %1, %bb.a ] ; 3 uses
  %.sroa.0.0 = phi ptr [ %i.g, %bb.b ], [ %0, %bb.a ] ; 3 uses
  %i.n = tail call fastcc noundef zeroext i1 @_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCs3ZkgueCtkyH_14ruff_workspace8resolver12ResolvedFileNtCsizY4S0OBG5z_6ignore5ErrorE7sort_byNCNvB1b_17deduplicate_files0E0B1d_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.sroa.0.0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.sroa.04.0) ; 2 uses
  %i.o = tail call fastcc noundef zeroext i1 @_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCs3ZkgueCtkyH_14ruff_workspace8resolver12ResolvedFileNtCsizY4S0OBG5z_6ignore5ErrorE7sort_byNCNvB1b_17deduplicate_files0E0B1d_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.sroa.0.0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.sroa.08.0)
  %i.p = xor i1 %i.n, %i.o
  br i1 %i.p, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot7median3INtNtBa_6result6ResultNtNtCs3ZkgueCtkyH_14ruff_workspace8resolver12ResolvedFileNtCsizY4S0OBG5z_6ignore5ErrorENCINvMNtCscdodAO9FK5_5alloc5sliceSBZ_7sort_byNCNvB1n_17deduplicate_files0E0EB1p_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = tail call fastcc noundef zeroext i1 @_RNCINvMNtCscdodAO9FK5_5alloc5sliceSINtNtCs4NRVxsYgnAr_4core6result6ResultNtNtCs3ZkgueCtkyH_14ruff_workspace8resolver12ResolvedFileNtCsizY4S0OBG5z_6ignore5ErrorE7sort_byNCNvB1b_17deduplicate_files0E0B1d_(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.sroa.04.0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.sroa.08.0)
  %i.r = xor i1 %i.n, %i.q
  %..i = select i1 %i.r, ptr %.sroa.08.0, ptr %.sroa.04.0
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot7median3INtNtBa_6result6ResultNtNtCs3ZkgueCtkyH_14ruff_workspace8resolver12ResolvedFileNtCsizY4S0OBG5z_6ignore5ErrorENCINvMNtCscdodAO9FK5_5alloc5sliceSBZ_7sort_byNCNvB1n_17deduplicate_files0E0EB1p_.exit

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot7median3INtNtBa_6result6ResultNtNtCs3ZkgueCtkyH_14ruff_workspace8resolver12ResolvedFileNtCsizY4S0OBG5z_6ignore5ErrorENCINvMNtCscdodAO9FK5_5alloc5sliceSBZ_7sort_byNCNvB1n_17deduplicate_files0E0EB1p_.exit: ; preds = %bb.c, %bb.d
  %.sroa.0.0.i = phi ptr [ %.sroa.0.0, %bb.c ], [ %..i, %bb.d ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden noundef nonnull ptr @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot11median3_recNtNtCs7bpTdHNYxeX_20ruff_python_semantic7imports10NameImportNvYB14_NtNtBa_3cmp10PartialOrd2ltECs3ZkgueCtkyH_14ruff_workspace(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noalias noundef nonnull %4) unnamed_addr #4 {
bb.a:
  %i.a = and i64 %3, 2305843009213693944
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = lshr i64 %3, 3                           ; 5 uses
  %i.c = shl nuw nsw i64 %i.b, 2                  ; 3 uses
  %i.d = getelementptr inbounds nuw [80 x i8], ptr %0, i64 %i.c
  %i.e = mul nuw i64 %i.b, 7                      ; 3 uses
  %i.f = getelementptr inbounds nuw [80 x i8], ptr %0, i64 %i.e
  %i.g = tail call noundef ptr @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot11median3_recNtNtCs7bpTdHNYxeX_20ruff_python_semantic7imports10NameImportNvYB14_NtNtBa_3cmp10PartialOrd2ltECs3ZkgueCtkyH_14ruff_workspace(ptr noundef %0, ptr noundef %i.d, ptr noundef %i.f, i64 noundef %i.b, ptr noalias noundef nonnull %4)
  %i.h = getelementptr inbounds nuw [80 x i8], ptr %1, i64 %i.c
  %i.i = getelementptr inbounds nuw [80 x i8], ptr %1, i64 %i.e
  %i.j = tail call noundef ptr @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot11median3_recNtNtCs7bpTdHNYxeX_20ruff_python_semantic7imports10NameImportNvYB14_NtNtBa_3cmp10PartialOrd2ltECs3ZkgueCtkyH_14ruff_workspace(ptr noundef %1, ptr noundef %i.h, ptr noundef %i.i, i64 noundef %i.b, ptr noalias noundef nonnull %4)
  %i.k = getelementptr inbounds nuw [80 x i8], ptr %2, i64 %i.c
  %i.l = getelementptr inbounds nuw [80 x i8], ptr %2, i64 %i.e
  %i.m = tail call noundef ptr @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot11median3_recNtNtCs7bpTdHNYxeX_20ruff_python_semantic7imports10NameImportNvYB14_NtNtBa_3cmp10PartialOrd2ltECs3ZkgueCtkyH_14ruff_workspace(ptr noundef %2, ptr noundef %i.k, ptr noundef %i.l, i64 noundef %i.b, ptr noalias noundef nonnull %4)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.08.0 = phi ptr [ %i.m, %bb.b ], [ %2, %bb.a ] ; 3 uses
  %.sroa.04.0 = phi ptr [ %i.j, %bb.b ], [ %1, %bb.a ] ; 3 uses
  %.sroa.0.0 = phi ptr [ %i.g, %bb.b ], [ %0, %bb.a ] ; 3 uses
  %i.n = tail call fastcc noundef zeroext i1 @_RNvYNvYNtNtCs7bpTdHNYxeX_20ruff_python_semantic7imports10NameImportNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB17_3ops8function5FnMutTRB5_B2e_EE8call_mutCs3ZkgueCtkyH_14ruff_workspace(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %.sroa.0.0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %.sroa.04.0) ; 2 uses
  %i.o = tail call fastcc noundef zeroext i1 @_RNvYNvYNtNtCs7bpTdHNYxeX_20ruff_python_semantic7imports10NameImportNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB17_3ops8function5FnMutTRB5_B2e_EE8call_mutCs3ZkgueCtkyH_14ruff_workspace(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %.sroa.0.0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %.sroa.08.0)
  %i.p = xor i1 %i.n, %i.o
  br i1 %i.p, label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot7median3NtNtCs7bpTdHNYxeX_20ruff_python_semantic7imports10NameImportNvYBZ_NtNtBa_3cmp10PartialOrd2ltECs3ZkgueCtkyH_14ruff_workspace.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = tail call fastcc noundef zeroext i1 @_RNvYNvYNtNtCs7bpTdHNYxeX_20ruff_python_semantic7imports10NameImportNtNtCs4NRVxsYgnAr_4core3cmp10PartialOrd2ltINtNtNtB17_3ops8function5FnMutTRB5_B2e_EE8call_mutCs3ZkgueCtkyH_14ruff_workspace(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %.sroa.04.0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %.sroa.08.0)
  %i.r = xor i1 %i.n, %i.q
  %..i = select i1 %i.r, ptr %.sroa.08.0, ptr %.sroa.04.0
  br label %_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot7median3NtNtCs7bpTdHNYxeX_20ruff_python_semantic7imports10NameImportNvYBZ_NtNtBa_3cmp10PartialOrd2ltECs3ZkgueCtkyH_14ruff_workspace.exit

_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot7median3NtNtCs7bpTdHNYxeX_20ruff_python_semantic7imports10NameImportNvYBZ_NtNtBa_3cmp10PartialOrd2ltECs3ZkgueCtkyH_14ruff_workspace.exit: ; preds = %bb.c, %bb.d
  %.sroa.0.0.i = phi ptr [ %.sroa.0.0, %bb.c ], [ %..i, %bb.d ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot11median3_recRNtNtCs2AWtUsOyxgP_3std4path4PathNvYB14_NtNtBa_3cmp10PartialOrd2ltECs3ZkgueCtkyH_14ruff_workspace(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noalias noundef nonnull %4) unnamed_addr #1 {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 4 uses
  %i.b = alloca [64 x i8], align 8                ; 4 uses
  %i.c = alloca [64 x i8], align 8                ; 4 uses
  %i.d = alloca [64 x i8], align 8                ; 4 uses
  %i.e = alloca [64 x i8], align 8                ; 4 uses
  %i.f = alloca [64 x i8], align 8                ; 4 uses
  %i.g = and i64 %3, 2305843009213693944
  %.not = icmp eq i64 %i.g, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = lshr i64 %3, 3                           ; 5 uses
  %i.i = shl nuw nsw i64 %i.h, 2                  ; 3 uses
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.i
  %i.k = mul nuw i64 %i.h, 7                      ; 3 uses
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.k
  %i.m = tail call noundef ptr @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot11median3_recRNtNtCs2AWtUsOyxgP_3std4path4PathNvYB14_NtNtBa_3cmp10PartialOrd2ltECs3ZkgueCtkyH_14ruff_workspace(ptr noundef %0, ptr noundef %i.j, ptr noundef %i.l, i64 noundef %i.h, ptr noalias noundef nonnull %4)
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.i
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %i.k
  %i.p = tail call noundef ptr @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot11median3_recRNtNtCs2AWtUsOyxgP_3std4path4PathNvYB14_NtNtBa_3cmp10PartialOrd2ltECs3ZkgueCtkyH_14ruff_workspace(ptr noundef %1, ptr noundef %i.n, ptr noundef %i.o, i64 noundef %i.h, ptr noalias noundef nonnull %4)
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.i
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.k
  %i.s = tail call noundef ptr @_RINvNtNtNtNtCs4NRVxsYgnAr_4core5slice4sort6shared5pivot11median3_recRNtNtCs2AWtUsOyxgP_3std4path4PathNvYB14_NtNtBa_3cmp10PartialOrd2ltECs3ZkgueCtkyH_14ruff_workspace(ptr noundef %2, ptr noundef %i.q, ptr noundef %i.r, i64 noundef %i.h, ptr noalias noundef nonnull %4)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.08.0 = phi ptr [ %i.s, %bb.b ], [ %2, %bb.a ] ; 4 uses
  %.sroa.04.0 = phi ptr [ %i.p, %bb.b ], [ %1, %bb.a ] ; 4 uses
  %.sroa.0.0 = phi ptr [ %i.m, %bb.b ], [ %0, %bb.a ] ; 4 uses
  %.sroa.0.0.val17 = load ptr, ptr %.sroa.0.0, align 8, !nonnull !5, !noundef !5
  %i.t = getelementptr i8, ptr %.sroa.0.0, i64 8  ; 2 uses
  %.sroa.0.0.val18 = load i64, ptr %i.t, align 8, !noundef !5
  %.sroa.04.0.val19 = load ptr, ptr %.sroa.04.0, align 8, !nonnull !5, !noundef !5
  %i.u = getelementptr i8, ptr %.sroa.04.0, i64 8 ; 2 uses
  %.sroa.04.0.val20 = load i64, ptr %i.u, align 8, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1649
  call void @_RNvMs16_NtCs2AWtUsOyxgP_3std4pathNtB6_4Path10components(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.f, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.val17, i64 noundef %.sroa.0.0.val18), !noalias !1650
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1649
  call void @_RNvMs16_NtCs2AWtUsOyxgP_3std4pathNtB6_4Path10components(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.e, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.04.0.val19, i64 noundef %.sroa.04.0.val20)
  %i.v = call noundef range(i8 -1, 2) i8 @_RNvNtCs2AWtUsOyxgP_3std4path18compare_components(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(64) %i.f, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(64) %i.e) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1649
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1649
  %.sroa.0.0.val = load ptr, ptr %.sroa.0.0, align 8, !nonnull !5, !noundef !5
  %.sroa.0.0.val14 = load i64, ptr %i.t, align 8, !noundef !5
  %.sroa.08.0.val15 = load ptr, ptr %.sroa.08.0, align 8, !nonnull !5, !noundef !5
  %i.w = getelementptr i8, ptr %.sroa.08.0, i64 8 ; 2 uses
  %.sroa.08.0.val16 = load i64, ptr %i.w, align 8, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1651
  call void @_RNvMs16_NtCs2AWtUsOyxgP_3std4pathNtB6_4Path10components(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.d, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.val, i64 noundef %.sroa.0.0.val14), !noalias !1652
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1651
  call void @_RNvMs16_NtCs2AWtUsOyxgP_3std4pathNtB6_4Path10components(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.08.0.val15, i64 noundef %.sroa.08.0.val16)
  %i.x = call noundef range(i8 -1, 2) i8 @_RNvNtCs2AWtUsOyxgP_3std4path18compare_components(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(64) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(64) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1651
end_hunk_0
