Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/ide_db-6375deef0079f440.ide_db.4a77f52129cf6f1d-cgu.10?download=true
inline.NumInlined: 1466
inline.NumDeleted: 649
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNvXs0_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver4foldINtB5_16BoundVarReplacerNtB5_13FnMutDelegateEINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir4fold10TypeFolderNtNtB7_8interner10DbInternerE7fold_tyCs6oosyzwIepl_6ide_db:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.562.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.41.0..sroa_idx, i64 3, i1 false)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.54.0.copyload) ]
  %i.r = tail call noundef nonnull ptr @_RINvXs1r_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_argNtB7_11GenericArgsINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir4fold12TypeFoldableNtNtB9_8interner10DbInternerE9fold_withINtNtB9_4fold16BoundVarReplacerNtB2R_13FnMutDelegateEECs6oosyzwIepl_6ide_db(ptr noundef nonnull %.sroa.54.0.copyload, ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %0), !inline_history !2169
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %.sroa.25.0.copyload, ptr %i.s, align 8, !noalias !2166
  %.sroa.461.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i8 %.sroa.39.0.copyload, ptr %.sroa.461.0..sroa_idx, align 8, !noalias !2166
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.r, ptr %i.t, align 8, !noalias !2166
  br label %bb.v

bb.g:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.54.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.25.0.copyload) ]
  %i.u = tail call noundef nonnull ptr @_RNvXs0_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver4foldINtB5_16BoundVarReplacerNtB5_13FnMutDelegateEINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir4fold10TypeFolderNtNtB7_8interner10DbInternerE7fold_tyCs6oosyzwIepl_6ide_db(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull %.sroa.54.0.copyload), !inline_history !2170
  %i.v = tail call noundef nonnull ptr @_RINvXs7_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver6constsNtB6_5ConstINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir4fold12TypeFoldableNtNtB8_8interner10DbInternerE9fold_withINtNtB8_4fold16BoundVarReplacerNtB2D_13FnMutDelegateEECs6oosyzwIepl_6ide_db(ptr noundef nonnull %.sroa.25.0.copyload, ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %0), !inline_history !2169
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.u, ptr %i.w, align 8, !noalias !2166
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.v, ptr %i.x, align 8, !noalias !2166
  br label %bb.v

bb.h:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.54.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.25.0.copyload) ]
  %i.y = tail call noundef nonnull ptr @_RNvXs0_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver4foldINtB5_16BoundVarReplacerNtB5_13FnMutDelegateEINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir4fold10TypeFolderNtNtB7_8interner10DbInternerE7fold_tyCs6oosyzwIepl_6ide_db(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull %.sroa.54.0.copyload), !inline_history !2170
  %i.z = tail call noundef nonnull ptr @_RINvXse_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver8internerNtB6_7PatternINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir4fold12TypeFoldableNtB6_10DbInternerE9fold_withINtNtB8_4fold16BoundVarReplacerNtB2w_13FnMutDelegateEECs6oosyzwIepl_6ide_db(ptr noundef nonnull %.sroa.25.0.copyload, ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %0), !inline_history !2169
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.y, ptr %i.aa, align 8, !noalias !2166
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.z, ptr %i.ab, align 8, !noalias !2166
  br label %bb.v

bb.i:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.54.0.copyload) ]
  %i.ac = tail call noundef nonnull ptr @_RNvXs0_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver4foldINtB5_16BoundVarReplacerNtB5_13FnMutDelegateEINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir4fold10TypeFolderNtNtB7_8interner10DbInternerE7fold_tyCs6oosyzwIepl_6ide_db(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull %.sroa.54.0.copyload), !inline_history !2170
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.ac, ptr %i.ad, align 8, !noalias !2166
  br label %bb.v

bb.j:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.54.0.copyload) ]
  %i.ae = ptrtoint ptr %.sroa.25.0.copyload to i64
  %.sroa.25.0.extract.trunc = trunc i64 %i.ae to i8
  %i.af = tail call noundef nonnull ptr @_RNvXs0_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver4foldINtB5_16BoundVarReplacerNtB5_13FnMutDelegateEINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir4fold10TypeFolderNtNtB7_8interner10DbInternerE7fold_tyCs6oosyzwIepl_6ide_db(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull %.sroa.54.0.copyload), !inline_history !2170
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.af, ptr %i.ag, align 8, !noalias !2166
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i8 %.sroa.25.0.extract.trunc, ptr %i.ah, align 8, !noalias !2166
  br label %bb.v

bb.k:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.54.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.25.0.copyload) ]
  %i.ai = tail call noundef nonnull ptr @_RINvXs5_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver6regionNtB6_6RegionINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir4fold12TypeFoldableNtNtB8_8interner10DbInternerE9fold_withINtNtB8_4fold16BoundVarReplacerNtB2E_13FnMutDelegateEECs6oosyzwIepl_6ide_db(ptr noundef nonnull %.sroa.54.0.copyload, ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %0), !inline_history !2169
  %i.aj = tail call noundef nonnull ptr @_RNvXs0_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver4foldINtB5_16BoundVarReplacerNtB5_13FnMutDelegateEINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir4fold10TypeFolderNtNtB7_8interner10DbInternerE7fold_tyCs6oosyzwIepl_6ide_db(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull %.sroa.25.0.copyload), !inline_history !2170
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.ai, ptr %i.ak, align 8, !noalias !2166
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.aj, ptr %i.al, align 8, !noalias !2166
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i8 %.sroa.39.0.copyload, ptr %i.am, align 8, !noalias !2166
  br label %bb.v

bb.l:                                             ; preds = %bb.c
  %.sroa.565.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.565.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.41.0..sroa_idx, i64 3, i1 false)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.54.0.copyload) ]
  %i.an = tail call noundef nonnull ptr @_RINvXs1r_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_argNtB7_11GenericArgsINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir4fold12TypeFoldableNtNtB9_8interner10DbInternerE9fold_withINtNtB9_4fold16BoundVarReplacerNtB2R_13FnMutDelegateEECs6oosyzwIepl_6ide_db(ptr noundef nonnull %.sroa.54.0.copyload, ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %0), !inline_history !2169
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %.sroa.25.0.copyload, ptr %i.ao, align 8, !noalias !2166
  %.sroa.464.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i8 %.sroa.39.0.copyload, ptr %.sroa.464.0..sroa_idx, align 8, !noalias !2166
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.an, ptr %i.ap, align 8, !noalias !2166
  br label %bb.v

bb.m:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.54.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.25.0.copyload) ]
  %i.aq = tail call fastcc { ptr, ptr } @_RINvXs0_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver4foldINtB6_16BoundVarReplacerNtB6_13FnMutDelegateEINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir4fold10TypeFolderNtNtB8_8interner10DbInternerE11fold_binderINtNtB1B_7ty_kind8FnSigTysB2r_EECs6oosyzwIepl_6ide_db(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull %.sroa.54.0.copyload, ptr noundef nonnull %.sroa.25.0.copyload), !inline_history !2169 ; 2 uses
  %i.ar = extractvalue { ptr, ptr } %i.aq, 0
  %i.as = extractvalue { ptr, ptr } %i.aq, 1
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.ar, ptr %i.at, align 8, !noalias !2166
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.as, ptr %i.au, align 8, !noalias !2166
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i8 %.sroa.39.0.copyload, ptr %i.av, align 8, !noalias !2166
  br label %bb.v

bb.n:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.54.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.25.0.copyload) ]
  %i.aw = tail call fastcc { ptr, ptr } @_RINvXs0_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver4foldINtB6_16BoundVarReplacerNtB6_13FnMutDelegateEINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir4fold10TypeFolderNtNtB8_8interner10DbInternerE11fold_binderNtNtB8_2ty2TyECs6oosyzwIepl_6ide_db(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull %.sroa.54.0.copyload, ptr noundef nonnull %.sroa.25.0.copyload), !inline_history !2169 ; 2 uses
  %i.ax = extractvalue { ptr, ptr } %i.aw, 0
  %i.ay = extractvalue { ptr, ptr } %i.aw, 1
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.ax, ptr %i.az, align 8, !noalias !2166
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.ay, ptr %i.ba, align 8, !noalias !2166
  br label %bb.v

bb.o:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.54.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.25.0.copyload) ]
  %i.bb = tail call noundef nonnull ptr @_RINvXs1k_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicateNtB7_26BoundExistentialPredicatesINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir4fold12TypeFoldableNtNtB9_8interner10DbInternerE9fold_withINtNtB9_4fold16BoundVarReplacerNtB33_13FnMutDelegateEECs6oosyzwIepl_6ide_db(ptr noundef nonnull %.sroa.54.0.copyload, ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %0), !inline_history !2169
  %i.bc = tail call noundef nonnull ptr @_RINvXs5_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver6regionNtB6_6RegionINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir4fold12TypeFoldableNtNtB8_8interner10DbInternerE9fold_withINtNtB8_4fold16BoundVarReplacerNtB2E_13FnMutDelegateEECs6oosyzwIepl_6ide_db(ptr noundef nonnull %.sroa.25.0.copyload, ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %0), !inline_history !2169
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.bb, ptr %i.bd, align 8, !noalias !2166
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.bc, ptr %i.be, align 8, !noalias !2166
  br label %bb.v

bb.p:                                             ; preds = %bb.c
  %i.bf = ptrtoint ptr %.sroa.54.0.copyload to i64
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.25.0.copyload) ]
  %i.bg = tail call noundef nonnull ptr @_RINvXs1r_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_argNtB7_11GenericArgsINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir4fold12TypeFoldableNtNtB9_8interner10DbInternerE9fold_withINtNtB9_4fold16BoundVarReplacerNtB2R_13FnMutDelegateEECs6oosyzwIepl_6ide_db(ptr noundef nonnull %.sroa.25.0.copyload, ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %0), !inline_history !2169
  %i.bh = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.bf, ptr %i.bh, align 8, !noalias !2166
  %i.bi = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.bg, ptr %i.bi, align 8, !noalias !2166
  br label %bb.v

bb.q:                                             ; preds = %bb.c
  %i.bj = ptrtoint ptr %.sroa.54.0.copyload to i64
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.25.0.copyload) ]
  %i.bk = tail call noundef nonnull ptr @_RINvXs1r_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_argNtB7_11GenericArgsINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir4fold12TypeFoldableNtNtB9_8interner10DbInternerE9fold_withINtNtB9_4fold16BoundVarReplacerNtB2R_13FnMutDelegateEECs6oosyzwIepl_6ide_db(ptr noundef nonnull %.sroa.25.0.copyload, ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %0), !inline_history !2169
  %i.bl = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.bj, ptr %i.bl, align 8, !noalias !2166
  %i.bm = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.bk, ptr %i.bm, align 8, !noalias !2166
  br label %bb.v

bb.r:                                             ; preds = %bb.c
  %i.bn = ptrtoint ptr %.sroa.54.0.copyload to i64
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.25.0.copyload) ]
  %i.bo = tail call noundef nonnull ptr @_RINvXs1r_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_argNtB7_11GenericArgsINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir4fold12TypeFoldableNtNtB9_8interner10DbInternerE9fold_withINtNtB9_4fold16BoundVarReplacerNtB2R_13FnMutDelegateEECs6oosyzwIepl_6ide_db(ptr noundef nonnull %.sroa.25.0.copyload, ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %0), !inline_history !2169
  %i.bp = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.bn, ptr %i.bp, align 8, !noalias !2166
  %i.bq = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.bo, ptr %i.bq, align 8, !noalias !2166
  br label %bb.v

bb.s:                                             ; preds = %bb.c
  %i.br = ptrtoint ptr %.sroa.54.0.copyload to i64
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.25.0.copyload) ]
  %i.bs = tail call noundef nonnull ptr @_RINvXs1r_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_argNtB7_11GenericArgsINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir4fold12TypeFoldableNtNtB9_8interner10DbInternerE9fold_withINtNtB9_4fold16BoundVarReplacerNtB2R_13FnMutDelegateEECs6oosyzwIepl_6ide_db(ptr noundef nonnull %.sroa.25.0.copyload, ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %0), !inline_history !2169
  %i.bt = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.br, ptr %i.bt, align 8, !noalias !2166
  %i.bu = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.bs, ptr %i.bu, align 8, !noalias !2166
  br label %bb.v

bb.t:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.54.0.copyload) ]
  %i.bv = tail call noundef nonnull ptr @_RINvXs15_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver2tyNtB7_3TysINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir4fold12TypeFoldableNtNtB9_8interner10DbInternerE9fold_withINtNtB9_4fold16BoundVarReplacerNtB2y_13FnMutDelegateEECs6oosyzwIepl_6ide_db(ptr noundef nonnull %.sroa.54.0.copyload, ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %0), !inline_history !2169
  %i.bw = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.bv, ptr %i.bw, align 8, !noalias !2166
  br label %bb.v

bb.u:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.54.0.copyload) ]
  %.sroa.4.i.sroa.5.0..sroa.4.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.4.i.sroa.5.0..sroa.4.0..sroa_idx.i.sroa_idx, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.41.0..sroa_idx, i64 3, i1 false)
  %i.bx = tail call noundef nonnull ptr @_RINvXs1r_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_argNtB7_11GenericArgsINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir4fold12TypeFoldableNtNtB9_8interner10DbInternerE9fold_withINtNtB9_4fold16BoundVarReplacerNtB2R_13FnMutDelegateEECs6oosyzwIepl_6ide_db(ptr noundef nonnull %.sroa.54.0.copyload, ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %0), !inline_history !2169
  %i.by = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.bx, ptr %i.by, align 8, !noalias !2166
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %.sroa.25.0.copyload, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !2166
  %.sroa.4.i.sroa.4.0..sroa.4.0..sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i8 %.sroa.39.0.copyload, ptr %.sroa.4.i.sroa.4.0..sroa.4.0..sroa_idx.i.sroa_idx, align 8, !noalias !2166
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f
  %.sink = phi i32 [ 25, %bb.u ], [ 24, %bb.t ], [ 22, %bb.s ], [ 21, %bb.r ], [ 20, %bb.q ], [ 19, %bb.p ], [ 18, %bb.o ], [ 17, %bb.n ], [ 16, %bb.m ], [ 15, %bb.l ], [ 14, %bb.k ], [ 13, %bb.j ], [ 12, %bb.i ], [ 11, %bb.h ], [ 10, %bb.g ], [ 7, %bb.f ]
  store i32 %.sink, ptr %i.b, align 8, !noalias !2166
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2166
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(32) %1, i64 32, i1 false), !noalias !2166
  %i.bz = call fastcc noundef zeroext i1 @_RNvXsE_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir7ty_kindINtB5_6TyKindNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqCs6oosyzwIepl_6ide_db(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.b) #39, !inline_history !2169
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2166
  br i1 %i.bz, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ca = call fastcc noundef nonnull ptr @_RNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2tyNtB2_2Ty3new(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %i.b) #39
  br label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.w
  %.sroa.0.0.i = phi ptr [ %i.ca, %bb.w ], [ %1, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2166
  br label %_RINvXs8_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver2tyNtB6_2TyINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir4fold17TypeSuperFoldableNtNtB8_8interner10DbInternerE15super_fold_withINtNtB8_4fold16BoundVarReplacerNtB2I_13FnMutDelegateEECs6oosyzwIepl_6ide_db.exit
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapINtNtB7_5chain5ChainIBN_INtNtB7_6copied6CopiedINtNtB7_7flatten7FlatMapINtNtB7_10filter_map9FilterMapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty2TyENCNvMs1x_Cs8Xq8PKFYOms_3hirNtB4g_4Type26applicable_inherent_traits0ERSNtCsileJQcQObtj_7hir_def7TraitIdNCB49_s_0EENvYNtB4g_5TraitINtNtBb_7convert4FromB5f_E4fromEIBN_IB1H_INtNtB7_6filter6FilterB2y_NCNvB4b_10env_traits0EIB1l_IB1H_IB25_IB1l_INtNtNtBb_5slice4iter4IterNtNtB3q_9predicate6ClauseEENCNCB7i_s_00EB5d_NCB8P_s_0EENCB7i_s_0EB5W_EENCINvXs8_NtCsfjX3T6UU9IB_9hashbrown3setINtB9E_7HashSetB5Z_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEINtNtNtB9_6traits7collect6ExtendB5Z_E6extendBW_E0ENtNtBbe_8iterator8Iterator9size_hintCs6oosyzwIepl_6ide_db(ptr dead_on_unwind noalias nofree noundef nonnull writable align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(304) %1) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.5.i = alloca [8 x i8], align 8           ; 6 uses
  %.sroa.8.i = alloca [8 x i8], align 8           ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2171)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2174)
  %i.f = load i64, ptr %1, align 8, !range !380, !alias.scope !2174, !noalias !2171, !noundef !10
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.i = load i64, ptr %i.h, align 8, !range !399, !alias.scope !2174, !noalias !2171, !noundef !10 ; 3 uses
  %.not7.i = icmp eq i64 %i.i, 2                  ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br i1 %.not7.i, label %bb.r, label %bb.l

bb.c:                                             ; preds = %bb.a
  br i1 %.not7.i, label %bb.k, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2176)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2179)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2181)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2184)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2186)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2189)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2191
  %i.k = trunc nuw i64 %i.i to i1
  br i1 %i.k, label %bb.e, label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtBO_7flatten7FlatMapINtNtBO_10filter_map9FilterMapIBK_INtNtNtB5_5slice4iter4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicate6ClauseEENCNCNvMs1x_Cs8Xq8PKFYOms_3hirNtB3R_4Type10env_traitss_00ERSNtCsileJQcQObtj_7hir_def7TraitIdNCB3I_s_0EEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECs6oosyzwIepl_6ide_db.exit.i.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 96
  call void @_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters6copiedINtB4_6CopiedINtNtB6_7flatten7FlatMapINtNtB6_10filter_map9FilterMapIBP_INtNtNtBa_5slice4iter4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicate6ClauseEENCNCNvMs1x_Cs8Xq8PKFYOms_3hirNtB3v_4Type10env_traitss_00ERSNtCsileJQcQObtj_7hir_def7TraitIdNCB3m_s_0EENtNtNtB8_6traits8iterator8Iterator9size_hintCs6oosyzwIepl_6ide_db(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) dereferenceable_or_null(72) %i.l), !noalias !2192
  %.pre.i.i.i.i = load i64, ptr %i.d, align 8, !noalias !2191
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.pre70.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !range !380, !noalias !2191
  %.phi.trans.insert71.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.pre72.i.i.i.i = load i64, ptr %.phi.trans.insert71.i.i.i.i, align 8, !noalias !2191
  br label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtBO_7flatten7FlatMapINtNtBO_10filter_map9FilterMapIBK_INtNtNtB5_5slice4iter4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicate6ClauseEENCNCNvMs1x_Cs8Xq8PKFYOms_3hirNtB3R_4Type10env_traitss_00ERSNtCsileJQcQObtj_7hir_def7TraitIdNCB3I_s_0EEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECs6oosyzwIepl_6ide_db.exit.i.i.i.i

_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtBO_7flatten7FlatMapINtNtBO_10filter_map9FilterMapIBK_INtNtNtB5_5slice4iter4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicate6ClauseEENCNCNvMs1x_Cs8Xq8PKFYOms_3hirNtB3R_4Type10env_traitss_00ERSNtCsileJQcQObtj_7hir_def7TraitIdNCB3I_s_0EEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECs6oosyzwIepl_6ide_db.exit.i.i.i.i: ; preds = %bb.e, %bb.d
  %i.m = phi i64 [ %.pre72.i.i.i.i, %bb.e ], [ 0, %bb.d ] ; 2 uses
  %i.n = phi i64 [ %.pre70.i.i.i.i, %bb.e ], [ 1, %bb.d ] ; 2 uses
  %i.o = phi i64 [ %.pre.i.i.i.i, %bb.e ], [ 0, %bb.d ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2191
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2191
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.q = load i64, ptr %i.p, align 8, !range !380, !alias.scope !2195, !noalias !2196, !noundef !10
  %i.r = trunc nuw i64 %i.q to i1
  br i1 %i.r, label %bb.f, label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtBO_7flatten7FlatMapINtNtBO_10filter_map9FilterMapIBK_INtNtNtB5_5slice4iter4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicate6ClauseEENCNCNvMs1x_Cs8Xq8PKFYOms_3hirNtB3R_4Type10env_traitss_00ERSNtCsileJQcQObtj_7hir_def7TraitIdNCB3I_s_0EEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECs6oosyzwIepl_6ide_db.exit60.i.i.i.i

bb.f:                                             ; preds = %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtBO_7flatten7FlatMapINtNtBO_10filter_map9FilterMapIBK_INtNtNtB5_5slice4iter4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicate6ClauseEENCNCNvMs1x_Cs8Xq8PKFYOms_3hirNtB3R_4Type10env_traitss_00ERSNtCsileJQcQObtj_7hir_def7TraitIdNCB3I_s_0EEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECs6oosyzwIepl_6ide_db.exit.i.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 176
  call void @_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters6copiedINtB4_6CopiedINtNtB6_7flatten7FlatMapINtNtB6_10filter_map9FilterMapIBP_INtNtNtBa_5slice4iter4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicate6ClauseEENCNCNvMs1x_Cs8Xq8PKFYOms_3hirNtB3v_4Type10env_traitss_00ERSNtCsileJQcQObtj_7hir_def7TraitIdNCB3m_s_0EENtNtNtB8_6traits8iterator8Iterator9size_hintCs6oosyzwIepl_6ide_db(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) dereferenceable_or_null(72) %i.s), !noalias !2197
  %.pre73.i.i.i.i = load i64, ptr %i.c, align 8, !noalias !2191
  %.phi.trans.insert74.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.pre75.i.i.i.i = load i64, ptr %.phi.trans.insert74.i.i.i.i, align 8, !range !380, !noalias !2191
  %.phi.trans.insert76.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.pre77.i.i.i.i = load i64, ptr %.phi.trans.insert76.i.i.i.i, align 8, !noalias !2191
  %i.t = call i64 @llvm.uadd.sat.i64(i64 %i.o, i64 %.pre73.i.i.i.i)
  br label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtBO_7flatten7FlatMapINtNtBO_10filter_map9FilterMapIBK_INtNtNtB5_5slice4iter4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicate6ClauseEENCNCNvMs1x_Cs8Xq8PKFYOms_3hirNtB3R_4Type10env_traitss_00ERSNtCsileJQcQObtj_7hir_def7TraitIdNCB3I_s_0EEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECs6oosyzwIepl_6ide_db.exit60.i.i.i.i

_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtBO_7flatten7FlatMapINtNtBO_10filter_map9FilterMapIBK_INtNtNtB5_5slice4iter4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicate6ClauseEENCNCNvMs1x_Cs8Xq8PKFYOms_3hirNtB3R_4Type10env_traitss_00ERSNtCsileJQcQObtj_7hir_def7TraitIdNCB3I_s_0EEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECs6oosyzwIepl_6ide_db.exit60.i.i.i.i: ; preds = %bb.f, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtBO_7flatten7FlatMapINtNtBO_10filter_map9FilterMapIBK_INtNtNtB5_5slice4iter4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicate6ClauseEENCNCNvMs1x_Cs8Xq8PKFYOms_3hirNtB3R_4Type10env_traitss_00ERSNtCsileJQcQObtj_7hir_def7TraitIdNCB3I_s_0EEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECs6oosyzwIepl_6ide_db.exit.i.i.i.i
  %i.u = phi i64 [ %.pre77.i.i.i.i, %bb.f ], [ 0, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtBO_7flatten7FlatMapINtNtBO_10filter_map9FilterMapIBK_INtNtNtB5_5slice4iter4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicate6ClauseEENCNCNvMs1x_Cs8Xq8PKFYOms_3hirNtB3R_4Type10env_traitss_00ERSNtCsileJQcQObtj_7hir_def7TraitIdNCB3I_s_0EEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECs6oosyzwIepl_6ide_db.exit.i.i.i.i ]
  %i.v = phi i64 [ %.pre75.i.i.i.i, %bb.f ], [ 1, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtBO_7flatten7FlatMapINtNtBO_10filter_map9FilterMapIBK_INtNtNtB5_5slice4iter4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicate6ClauseEENCNCNvMs1x_Cs8Xq8PKFYOms_3hirNtB3R_4Type10env_traitss_00ERSNtCsileJQcQObtj_7hir_def7TraitIdNCB3I_s_0EEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECs6oosyzwIepl_6ide_db.exit.i.i.i.i ] ; 2 uses
  %i.w = phi i64 [ %i.t, %bb.f ], [ %i.o, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtBO_7flatten7FlatMapINtNtBO_10filter_map9FilterMapIBK_INtNtNtB5_5slice4iter4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicate6ClauseEENCNCNvMs1x_Cs8Xq8PKFYOms_3hirNtB3R_4Type10env_traitss_00ERSNtCsileJQcQObtj_7hir_def7TraitIdNCB3I_s_0EEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECs6oosyzwIepl_6ide_db.exit.i.i.i.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2191
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !2195, !noalias !2196, !noundef !10
  %.not.i.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtBO_7flatten7FlatMapINtNtBO_10filter_map9FilterMapIBK_INtNtNtB5_5slice4iter4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicate6ClauseEENCNCNvMs1x_Cs8Xq8PKFYOms_3hirNtB3R_4Type10env_traitss_00ERSNtCsileJQcQObtj_7hir_def7TraitIdNCB3I_s_0EEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECs6oosyzwIepl_6ide_db.exit60.i.i.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 256
  %.val.i.i.i.i = load ptr, ptr %i.z, align 8, !alias.scope !2195, !noalias !2196, !nonnull !10, !noundef !10
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 272
  %.val58.i.i.i.i = load ptr, ptr %i.aa, align 8, !alias.scope !2195, !noalias !2196, !nonnull !10, !noundef !10
  %i.ab = trunc nuw i64 %i.n to i1
  %i.ac = trunc nuw i64 %i.v to i1
  %i.ad = icmp eq ptr %.val58.i.i.i.i, %.val.i.i.i.i
  %or.cond.i.i.i.i = and i1 %i.ad, %i.ac
  %or.cond57.i.i.i.i = select i1 %i.ab, i1 %or.cond.i.i.i.i, i1 false
  br i1 %or.cond57.i.i.i.i, label %bb.j, label %bb.i

bb.h:                                             ; preds = %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtBO_7flatten7FlatMapINtNtBO_10filter_map9FilterMapIBK_INtNtNtB5_5slice4iter4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicate6ClauseEENCNCNvMs1x_Cs8Xq8PKFYOms_3hirNtB3R_4Type10env_traitss_00ERSNtCsileJQcQObtj_7hir_def7TraitIdNCB3I_s_0EEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECs6oosyzwIepl_6ide_db.exit60.i.i.i.i
  %i.ae = and i64 %i.v, %i.n
  %or.cond53.not.i.i.i.i = icmp eq i64 %i.ae, 0
  br i1 %or.cond53.not.i.i.i.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h, %bb.g
  store i64 %i.w, ptr %0, align 8, !alias.scope !2196, !noalias !2195
  br label %_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlatMapINtNtB7_6filter6FilterINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty2TyENCNvMs1x_Cs8Xq8PKFYOms_3hirNtB3o_4Type10env_traits0EINtNtB7_6copied6CopiedIBX_INtNtB7_10filter_map9FilterMapIB46_INtNtNtBb_5slice4iter4IterNtNtB2y_9predicate6ClauseEENCNCB3h_s_00ERSNtCsileJQcQObtj_7hir_def7TraitIdNCB5X_s_0EENCB3h_s_0ENvYNtB3o_5TraitINtNtBb_7convert4FromB6a_E4fromENtNtNtB9_6traits8iterator8Iterator9size_hintCs6oosyzwIepl_6ide_db.exit.i

bb.j:                                             ; preds = %bb.h, %bb.g
  %i.af = add i64 %i.u, %i.m                      ; 2 uses
  %i.ag = icmp uge i64 %i.af, %i.m
  %..i.i.i.i = zext i1 %i.ag to i64
  store i64 %i.w, ptr %0, align 8, !alias.scope !2196, !noalias !2195
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %..i.i.i.i, ptr %i.ah, align 8, !alias.scope !2196, !noalias !2195
  br label %_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlatMapINtNtB7_6filter6FilterINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty2TyENCNvMs1x_Cs8Xq8PKFYOms_3hirNtB3o_4Type10env_traits0EINtNtB7_6copied6CopiedIBX_INtNtB7_10filter_map9FilterMapIB46_INtNtNtBb_5slice4iter4IterNtNtB2y_9predicate6ClauseEENCNCB3h_s_00ERSNtCsileJQcQObtj_7hir_def7TraitIdNCB5X_s_0EENCB3h_s_0ENvYNtB3o_5TraitINtNtBb_7convert4FromB6a_E4fromENtNtNtB9_6traits8iterator8Iterator9size_hintCs6oosyzwIepl_6ide_db.exit.i

_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlatMapINtNtB7_6filter6FilterINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty2TyENCNvMs1x_Cs8Xq8PKFYOms_3hirNtB3o_4Type10env_traits0EINtNtB7_6copied6CopiedIBX_INtNtB7_10filter_map9FilterMapIB46_INtNtNtBb_5slice4iter4IterNtNtB2y_9predicate6ClauseEENCNCB3h_s_00ERSNtCsileJQcQObtj_7hir_def7TraitIdNCB5X_s_0EENCB3h_s_0ENvYNtB3o_5TraitINtNtBb_7convert4FromB6a_E4fromENtNtNtB9_6traits8iterator8Iterator9size_hintCs6oosyzwIepl_6ide_db.exit.i: ; preds = %bb.j, %bb.i
  %.sink79.i.i.i.i = phi i64 [ 16, %bb.j ], [ 8, %bb.i ]
  %.sink.i.i.i.i = phi i64 [ %i.af, %bb.j ], [ 0, %bb.i ]
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 %.sink79.i.i.i.i
  store i64 %.sink.i.i.i.i, ptr %i.ai, align 8, !alias.scope !2196, !noalias !2195
  br label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtB6_6copied6CopiedINtNtB6_7flatten7FlatMapINtNtB6_10filter_map9FilterMapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty2TyENCNvMs1x_Cs8Xq8PKFYOms_3hirNtB4b_4Type26applicable_inherent_traits0ERSNtCsileJQcQObtj_7hir_def7TraitIdNCB44_s_0EENvYNtB4b_5TraitINtNtBa_7convert4FromB5a_E4fromEIB10_IB1C_INtNtB6_6filter6FilterB2t_NCNvB46_10env_traits0EIB1g_IB1C_IB20_IB1g_INtNtNtBa_5slice4iter4IterNtNtB3l_9predicate6ClauseEENCNCB7e_s_00EB58_NCB8L_s_0EENCB7e_s_0EB5R_EENtNtNtB8_6traits8iterator8Iterator9size_hintCs6oosyzwIepl_6ide_db.exit

bb.k:                                             ; preds = %bb.c
  store i64 0, ptr %0, align 8, !alias.scope !2171, !noalias !2174
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.aj, align 8, !alias.scope !2171, !noalias !2174
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.ak, align 8, !alias.scope !2171, !noalias !2174
  br label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtB6_6copied6CopiedINtNtB6_7flatten7FlatMapINtNtB6_10filter_map9FilterMapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty2TyENCNvMs1x_Cs8Xq8PKFYOms_3hirNtB4b_4Type26applicable_inherent_traits0ERSNtCsileJQcQObtj_7hir_def7TraitIdNCB44_s_0EENvYNtB4b_5TraitINtNtBa_7convert4FromB5a_E4fromEIB10_IB1C_INtNtB6_6filter6FilterB2t_NCNvB46_10env_traits0EIB1g_IB1C_IB20_IB1g_INtNtNtBa_5slice4iter4IterNtNtB3l_9predicate6ClauseEENCNCB7e_s_00EB58_NCB8L_s_0EENCB7e_s_0EB5R_EENtNtNtB8_6traits8iterator8Iterator9size_hintCs6oosyzwIepl_6ide_db.exit

bb.l:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2200
  call void @_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters6copiedINtB4_6CopiedINtNtB6_7flatten7FlatMapINtNtB6_10filter_map9FilterMapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty2TyENCNvMs1x_Cs8Xq8PKFYOms_3hirNtB3B_4Type26applicable_inherent_traits0ERSNtCsileJQcQObtj_7hir_def7TraitIdNCB3u_s_0EENtNtNtB8_6traits8iterator8Iterator9size_hintCs6oosyzwIepl_6ide_db(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.j), !noalias !2171
  %i.al = load i64, ptr %i.e, align 8, !noalias !2200, !noundef !10
  %i.am = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.an = load i64, ptr %i.am, align 8, !range !380, !noalias !2200, !noundef !10
  %i.ao = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.ap = load i64, ptr %i.ao, align 8, !noalias !2200 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2200
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !2201)
  call void @llvm.experimental.noalias.scope.decl(metadata !2204)
  call void @llvm.experimental.noalias.scope.decl(metadata !2206)
  call void @llvm.experimental.noalias.scope.decl(metadata !2209)
  call void @llvm.experimental.noalias.scope.decl(metadata !2211)
  call void @llvm.experimental.noalias.scope.decl(metadata !2214)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2216
  %i.aq = trunc nuw i64 %i.i to i1
  br i1 %i.aq, label %bb.m, label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtBO_7flatten7FlatMapINtNtBO_10filter_map9FilterMapIBK_INtNtNtB5_5slice4iter4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicate6ClauseEENCNCNvMs1x_Cs8Xq8PKFYOms_3hirNtB3R_4Type10env_traitss_00ERSNtCsileJQcQObtj_7hir_def7TraitIdNCB3I_s_0EEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECs6oosyzwIepl_6ide_db.exit.i.i.i9.i

bb.m:                                             ; preds = %bb.l
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 96
  call void @_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters6copiedINtB4_6CopiedINtNtB6_7flatten7FlatMapINtNtB6_10filter_map9FilterMapIBP_INtNtNtBa_5slice4iter4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicate6ClauseEENCNCNvMs1x_Cs8Xq8PKFYOms_3hirNtB3v_4Type10env_traitss_00ERSNtCsileJQcQObtj_7hir_def7TraitIdNCB3m_s_0EENtNtNtB8_6traits8iterator8Iterator9size_hintCs6oosyzwIepl_6ide_db(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) dereferenceable_or_null(72) %i.ar), !noalias !2217
  %.pre.i.i.i25.i = load i64, ptr %i.b, align 8, !noalias !2216
  %.phi.trans.insert.i.i.i26.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.pre70.i.i.i27.i = load i64, ptr %.phi.trans.insert.i.i.i26.i, align 8, !range !380, !noalias !2216
  %.phi.trans.insert71.i.i.i28.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.pre72.i.i.i29.i = load i64, ptr %.phi.trans.insert71.i.i.i28.i, align 8, !noalias !2216
  br label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtBO_7flatten7FlatMapINtNtBO_10filter_map9FilterMapIBK_INtNtNtB5_5slice4iter4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicate6ClauseEENCNCNvMs1x_Cs8Xq8PKFYOms_3hirNtB3R_4Type10env_traitss_00ERSNtCsileJQcQObtj_7hir_def7TraitIdNCB3I_s_0EEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECs6oosyzwIepl_6ide_db.exit.i.i.i9.i

_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtBO_7flatten7FlatMapINtNtBO_10filter_map9FilterMapIBK_INtNtNtB5_5slice4iter4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicate6ClauseEENCNCNvMs1x_Cs8Xq8PKFYOms_3hirNtB3R_4Type10env_traitss_00ERSNtCsileJQcQObtj_7hir_def7TraitIdNCB3I_s_0EEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECs6oosyzwIepl_6ide_db.exit.i.i.i9.i: ; preds = %bb.m, %bb.l
  %i.as = phi i64 [ %.pre72.i.i.i29.i, %bb.m ], [ 0, %bb.l ] ; 2 uses
  %i.at = phi i64 [ %.pre70.i.i.i27.i, %bb.m ], [ 1, %bb.l ] ; 2 uses
  %i.au = phi i64 [ %.pre.i.i.i25.i, %bb.m ], [ 0, %bb.l ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2216
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2216
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.aw = load i64, ptr %i.av, align 8, !range !380, !alias.scope !2220, !noalias !2221, !noundef !10
  %i.ax = trunc nuw i64 %i.aw to i1
  br i1 %i.ax, label %bb.n, label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtBO_7flatten7FlatMapINtNtBO_10filter_map9FilterMapIBK_INtNtNtB5_5slice4iter4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicate6ClauseEENCNCNvMs1x_Cs8Xq8PKFYOms_3hirNtB3R_4Type10env_traitss_00ERSNtCsileJQcQObtj_7hir_def7TraitIdNCB3I_s_0EEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECs6oosyzwIepl_6ide_db.exit60.i.i.i10.i

bb.n:                                             ; preds = %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtBO_7flatten7FlatMapINtNtBO_10filter_map9FilterMapIBK_INtNtNtB5_5slice4iter4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicate6ClauseEENCNCNvMs1x_Cs8Xq8PKFYOms_3hirNtB3R_4Type10env_traitss_00ERSNtCsileJQcQObtj_7hir_def7TraitIdNCB3I_s_0EEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECs6oosyzwIepl_6ide_db.exit.i.i.i9.i
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 176
  call void @_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters6copiedINtB4_6CopiedINtNtB6_7flatten7FlatMapINtNtB6_10filter_map9FilterMapIBP_INtNtNtBa_5slice4iter4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicate6ClauseEENCNCNvMs1x_Cs8Xq8PKFYOms_3hirNtB3v_4Type10env_traitss_00ERSNtCsileJQcQObtj_7hir_def7TraitIdNCB3m_s_0EENtNtNtB8_6traits8iterator8Iterator9size_hintCs6oosyzwIepl_6ide_db(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) dereferenceable_or_null(72) %i.ay), !noalias !2222
  %.pre73.i.i.i20.i = load i64, ptr %i.a, align 8, !noalias !2216
  %.phi.trans.insert74.i.i.i21.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.pre75.i.i.i22.i = load i64, ptr %.phi.trans.insert74.i.i.i21.i, align 8, !range !380, !noalias !2216
  %.phi.trans.insert76.i.i.i23.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.pre77.i.i.i24.i = load i64, ptr %.phi.trans.insert76.i.i.i23.i, align 8, !noalias !2216
  %i.az = call i64 @llvm.uadd.sat.i64(i64 %i.au, i64 %.pre73.i.i.i20.i)
  br label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtBO_7flatten7FlatMapINtNtBO_10filter_map9FilterMapIBK_INtNtNtB5_5slice4iter4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicate6ClauseEENCNCNvMs1x_Cs8Xq8PKFYOms_3hirNtB3R_4Type10env_traitss_00ERSNtCsileJQcQObtj_7hir_def7TraitIdNCB3I_s_0EEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECs6oosyzwIepl_6ide_db.exit60.i.i.i10.i

_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtBO_7flatten7FlatMapINtNtBO_10filter_map9FilterMapIBK_INtNtNtB5_5slice4iter4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicate6ClauseEENCNCNvMs1x_Cs8Xq8PKFYOms_3hirNtB3R_4Type10env_traitss_00ERSNtCsileJQcQObtj_7hir_def7TraitIdNCB3I_s_0EEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECs6oosyzwIepl_6ide_db.exit60.i.i.i10.i: ; preds = %bb.n, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtBO_7flatten7FlatMapINtNtBO_10filter_map9FilterMapIBK_INtNtNtB5_5slice4iter4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicate6ClauseEENCNCNvMs1x_Cs8Xq8PKFYOms_3hirNtB3R_4Type10env_traitss_00ERSNtCsileJQcQObtj_7hir_def7TraitIdNCB3I_s_0EEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECs6oosyzwIepl_6ide_db.exit.i.i.i9.i
  %i.ba = phi i64 [ %.pre77.i.i.i24.i, %bb.n ], [ 0, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtBO_7flatten7FlatMapINtNtBO_10filter_map9FilterMapIBK_INtNtNtB5_5slice4iter4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicate6ClauseEENCNCNvMs1x_Cs8Xq8PKFYOms_3hirNtB3R_4Type10env_traitss_00ERSNtCsileJQcQObtj_7hir_def7TraitIdNCB3I_s_0EEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECs6oosyzwIepl_6ide_db.exit.i.i.i9.i ]
  %i.bb = phi i64 [ %.pre75.i.i.i22.i, %bb.n ], [ 1, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtBO_7flatten7FlatMapINtNtBO_10filter_map9FilterMapIBK_INtNtNtB5_5slice4iter4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicate6ClauseEENCNCNvMs1x_Cs8Xq8PKFYOms_3hirNtB3R_4Type10env_traitss_00ERSNtCsileJQcQObtj_7hir_def7TraitIdNCB3I_s_0EEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECs6oosyzwIepl_6ide_db.exit.i.i.i9.i ] ; 2 uses
  %i.bc = phi i64 [ %i.az, %bb.n ], [ %i.au, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtBO_7flatten7FlatMapINtNtBO_10filter_map9FilterMapIBK_INtNtNtB5_5slice4iter4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicate6ClauseEENCNCNvMs1x_Cs8Xq8PKFYOms_3hirNtB3R_4Type10env_traitss_00ERSNtCsileJQcQObtj_7hir_def7TraitIdNCB3I_s_0EEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECs6oosyzwIepl_6ide_db.exit.i.i.i9.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2216
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.be = load ptr, ptr %i.bd, align 8, !alias.scope !2220, !noalias !2221, !noundef !10
  %.not.i.i.i11.i = icmp eq ptr %i.be, null
  br i1 %.not.i.i.i11.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtBO_7flatten7FlatMapINtNtBO_10filter_map9FilterMapIBK_INtNtNtB5_5slice4iter4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicate6ClauseEENCNCNvMs1x_Cs8Xq8PKFYOms_3hirNtB3R_4Type10env_traitss_00ERSNtCsileJQcQObtj_7hir_def7TraitIdNCB3I_s_0EEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECs6oosyzwIepl_6ide_db.exit60.i.i.i10.i
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 256
  %.val.i.i.i12.i = load ptr, ptr %i.bf, align 8, !alias.scope !2220, !noalias !2221, !nonnull !10, !noundef !10
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 272
  %.val58.i.i.i13.i = load ptr, ptr %i.bg, align 8, !alias.scope !2220, !noalias !2221, !nonnull !10, !noundef !10
  %i.bh = trunc nuw i64 %i.at to i1
  %i.bi = trunc nuw i64 %i.bb to i1
  %i.bj = icmp eq ptr %.val58.i.i.i13.i, %.val.i.i.i12.i
  %or.cond.i.i.i14.i = and i1 %i.bj, %i.bi
  %or.cond57.i.i.i15.i = select i1 %i.bh, i1 %or.cond.i.i.i14.i, i1 false
  br i1 %or.cond57.i.i.i15.i, label %bb.q, label %_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlatMapINtNtB7_6filter6FilterINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty2TyENCNvMs1x_Cs8Xq8PKFYOms_3hirNtB3o_4Type10env_traits0EINtNtB7_6copied6CopiedIBX_INtNtB7_10filter_map9FilterMapIB46_INtNtNtBb_5slice4iter4IterNtNtB2y_9predicate6ClauseEENCNCB3h_s_00ERSNtCsileJQcQObtj_7hir_def7TraitIdNCB5X_s_0EENCB3h_s_0ENvYNtB3o_5TraitINtNtBb_7convert4FromB6a_E4fromENtNtNtB9_6traits8iterator8Iterator9size_hintCs6oosyzwIepl_6ide_db.exit30.i

bb.p:                                             ; preds = %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionRINtNtNtNtB5_4iter8adapters6copied6CopiedINtNtBO_7flatten7FlatMapINtNtBO_10filter_map9FilterMapIBK_INtNtNtB5_5slice4iter4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver9predicate6ClauseEENCNCNvMs1x_Cs8Xq8PKFYOms_3hirNtB3R_4Type10env_traitss_00ERSNtCsileJQcQObtj_7hir_def7TraitIdNCB3I_s_0EEE6map_orTjIBw_jEENvYBJ_NtNtNtBQ_6traits8iterator8Iterator9size_hintECs6oosyzwIepl_6ide_db.exit60.i.i.i10.i
  %i.bk = and i64 %i.bb, %i.at
  %or.cond53.not.i.i.i19.i = icmp eq i64 %i.bk, 0
  br i1 %or.cond53.not.i.i.i19.i, label %_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlatMapINtNtB7_6filter6FilterINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty2TyENCNvMs1x_Cs8Xq8PKFYOms_3hirNtB3o_4Type10env_traits0EINtNtB7_6copied6CopiedIBX_INtNtB7_10filter_map9FilterMapIB46_INtNtNtBb_5slice4iter4IterNtNtB2y_9predicate6ClauseEENCNCB3h_s_00ERSNtCsileJQcQObtj_7hir_def7TraitIdNCB5X_s_0EENCB3h_s_0ENvYNtB3o_5TraitINtNtBb_7convert4FromB6a_E4fromENtNtNtB9_6traits8iterator8Iterator9size_hintCs6oosyzwIepl_6ide_db.exit30.i, label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.bl = add i64 %i.ba, %i.as                    ; 2 uses
  %i.bm = icmp uge i64 %i.bl, %i.as
  %..i.i.i18.i = zext i1 %i.bm to i64
  store i64 %..i.i.i18.i, ptr %.sroa.5.i, align 8, !alias.scope !2225, !noalias !2226
  br label %_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlatMapINtNtB7_6filter6FilterINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty2TyENCNvMs1x_Cs8Xq8PKFYOms_3hirNtB3o_4Type10env_traits0EINtNtB7_6copied6CopiedIBX_INtNtB7_10filter_map9FilterMapIB46_INtNtNtBb_5slice4iter4IterNtNtB2y_9predicate6ClauseEENCNCB3h_s_00ERSNtCsileJQcQObtj_7hir_def7TraitIdNCB5X_s_0EENCB3h_s_0ENvYNtB3o_5TraitINtNtBb_7convert4FromB6a_E4fromENtNtNtB9_6traits8iterator8Iterator9size_hintCs6oosyzwIepl_6ide_db.exit30.i

_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlatMapINtNtB7_6filter6FilterINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty2TyENCNvMs1x_Cs8Xq8PKFYOms_3hirNtB3o_4Type10env_traits0EINtNtB7_6copied6CopiedIBX_INtNtB7_10filter_map9FilterMapIB46_INtNtNtBb_5slice4iter4IterNtNtB2y_9predicate6ClauseEENCNCB3h_s_00ERSNtCsileJQcQObtj_7hir_def7TraitIdNCB5X_s_0EENCB3h_s_0ENvYNtB3o_5TraitINtNtBb_7convert4FromB6a_E4fromENtNtNtB9_6traits8iterator8Iterator9size_hintCs6oosyzwIepl_6ide_db.exit30.i: ; preds = %bb.q, %bb.p, %bb.o
  %.sink79.i.i.i16.sroa.phi.i = phi ptr [ %.sroa.8.i, %bb.q ], [ %.sroa.5.i, %bb.p ], [ %.sroa.5.i, %bb.o ]
  %.sink.i.i.i17.i = phi i64 [ %i.bl, %bb.q ], [ 0, %bb.p ], [ 0, %bb.o ]
  store i64 %.sink.i.i.i17.i, ptr %.sink79.i.i.i16.sroa.phi.i, align 8, !alias.scope !2225, !noalias !2226
  %.sroa.5.i.0..sroa.5.i.0..sroa.5.i.0..sroa.5.0..sroa.5.0..sroa.5.8..i = load i64, ptr %.sroa.5.i, align 8, !noalias !2200
  %.sroa.8.i.0..sroa.8.i.0..sroa.8.i.0..sroa.8.0..sroa.8.0..sroa.8.16..i = load i64, ptr %.sroa.8.i, align 8, !noalias !2200
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i)
  %i.bn = call i64 @llvm.uadd.sat.i64(i64 %i.al, i64 %i.bc)
  %2 = trunc nuw i64 %i.an to i1
  %3 = trunc nuw i64 %.sroa.5.i.0..sroa.5.i.0..sroa.5.i.0..sroa.5.0..sroa.5.0..sroa.5.8..i to i1
  %or.cond.i = select i1 %2, i1 %3, i1 false      ; 2 uses
  %i.bo = add i64 %.sroa.8.i.0..sroa.8.i.0..sroa.8.i.0..sroa.8.0..sroa.8.0..sroa.8.16..i, %i.ap ; 2 uses
  %i.bp = icmp uge i64 %i.bo, %i.ap
  %.sroa.46.0.i = select i1 %or.cond.i, i64 %i.bo, i64 undef
  %narrow.i = select i1 %or.cond.i, i1 %i.bp, i1 false
  %.sroa.05.0.i = zext i1 %narrow.i to i64
  store i64 %i.bn, ptr %0, align 8, !alias.scope !2171, !noalias !2174
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.05.0.i, ptr %i.bq, align 8, !alias.scope !2171, !noalias !2174
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.46.0.i, ptr %i.br, align 8, !alias.scope !2171, !noalias !2174
  br label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtB6_6copied6CopiedINtNtB6_7flatten7FlatMapINtNtB6_10filter_map9FilterMapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty2TyENCNvMs1x_Cs8Xq8PKFYOms_3hirNtB4b_4Type26applicable_inherent_traits0ERSNtCsileJQcQObtj_7hir_def7TraitIdNCB44_s_0EENvYNtB4b_5TraitINtNtBa_7convert4FromB5a_E4fromEIB10_IB1C_INtNtB6_6filter6FilterB2t_NCNvB46_10env_traits0EIB1g_IB1C_IB20_IB1g_INtNtNtBa_5slice4iter4IterNtNtB3l_9predicate6ClauseEENCNCB7e_s_00EB58_NCB8L_s_0EENCB7e_s_0EB5R_EENtNtNtB8_6traits8iterator8Iterator9size_hintCs6oosyzwIepl_6ide_db.exit

bb.r:                                             ; preds = %bb.b
  tail call void @_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters6copiedINtB4_6CopiedINtNtB6_7flatten7FlatMapINtNtB6_10filter_map9FilterMapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty2TyENCNvMs1x_Cs8Xq8PKFYOms_3hirNtB3B_4Type26applicable_inherent_traits0ERSNtCsileJQcQObtj_7hir_def7TraitIdNCB3u_s_0EENtNtNtB8_6traits8iterator8Iterator9size_hintCs6oosyzwIepl_6ide_db(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.j)
  br label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtB6_6copied6CopiedINtNtB6_7flatten7FlatMapINtNtB6_10filter_map9FilterMapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty2TyENCNvMs1x_Cs8Xq8PKFYOms_3hirNtB4b_4Type26applicable_inherent_traits0ERSNtCsileJQcQObtj_7hir_def7TraitIdNCB44_s_0EENvYNtB4b_5TraitINtNtBa_7convert4FromB5a_E4fromEIB10_IB1C_INtNtB6_6filter6FilterB2t_NCNvB46_10env_traits0EIB1g_IB1C_IB20_IB1g_INtNtNtBa_5slice4iter4IterNtNtB3l_9predicate6ClauseEENCNCB7e_s_00EB58_NCB8L_s_0EENCB7e_s_0EB5R_EENtNtNtB8_6traits8iterator8Iterator9size_hintCs6oosyzwIepl_6ide_db.exit

_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB4_5ChainINtNtB6_3map3MapINtNtB6_6copied6CopiedINtNtB6_7flatten7FlatMapINtNtB6_10filter_map9FilterMapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty2TyENCNvMs1x_Cs8Xq8PKFYOms_3hirNtB4b_4Type26applicable_inherent_traits0ERSNtCsileJQcQObtj_7hir_def7TraitIdNCB44_s_0EENvYNtB4b_5TraitINtNtBa_7convert4FromB5a_E4fromEIB10_IB1C_INtNtB6_6filter6FilterB2t_NCNvB46_10env_traits0EIB1g_IB1C_IB20_IB1g_INtNtNtBa_5slice4iter4IterNtNtB3l_9predicate6ClauseEENCNCB7e_s_00EB58_NCB8L_s_0EENCB7e_s_0EB5R_EENtNtNtB8_6traits8iterator8Iterator9size_hintCs6oosyzwIepl_6ide_db.exit: ; preds = %_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlatMapINtNtB7_6filter6FilterINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty2TyENCNvMs1x_Cs8Xq8PKFYOms_3hirNtB3o_4Type10env_traits0EINtNtB7_6copied6CopiedIBX_INtNtB7_10filter_map9FilterMapIB46_INtNtNtBb_5slice4iter4IterNtNtB2y_9predicate6ClauseEENCNCB3h_s_00ERSNtCsileJQcQObtj_7hir_def7TraitIdNCB5X_s_0EENCB3h_s_0ENvYNtB3o_5TraitINtNtBb_7convert4FromB6a_E4fromENtNtNtB9_6traits8iterator8Iterator9size_hintCs6oosyzwIepl_6ide_db.exit.i, %bb.k, %_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapINtNtB7_7flatten7FlatMapINtNtB7_6filter6FilterINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty2TyENCNvMs1x_Cs8Xq8PKFYOms_3hirNtB3o_4Type10env_traits0EINtNtB7_6copied6CopiedIBX_INtNtB7_10filter_map9FilterMapIB46_INtNtNtBb_5slice4iter4IterNtNtB2y_9predicate6ClauseEENCNCB3h_s_00ERSNtCsileJQcQObtj_7hir_def7TraitIdNCB5X_s_0EENCB3h_s_0ENvYNtB3o_5TraitINtNtBb_7convert4FromB6a_E4fromENtNtNtB9_6traits8iterator8Iterator9size_hintCs6oosyzwIepl_6ide_db.exit30.i, %bb.r
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, target_mem: none) uwtable
define hidden void @_RNvXs18_NtNtCs3gqD4ldeioo_8indexmap3map4iterINtB6_10IntoValuesNtNtCs8K4cjrcxBsw_6hir_ty17method_resolution11CandidateIdNtNtB10_5probe20CandidateWithPrivateENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCs6oosyzwIepl_6ide_db(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) initializes((0, 8)) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1) unnamed_addr #15 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2227)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !2227, !noalias !2230, !nonnull !10, !noundef !10
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !2227, !noalias !2230, !nonnull !10, !noundef !10 ; 4 uses
  %i.e = icmp eq ptr %i.d, %i.b
  br i1 %i.e, label %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterINtCs3gqD4ldeioo_8indexmap6BucketINtNtNtCshzWfHUSfYae_4core3mem12maybe_uninit11MaybeUninitNtNtCs8K4cjrcxBsw_6hir_ty17method_resolution11CandidateIdENtNtB2q_5probe20CandidateWithPrivateEENtNtNtNtB1A_4iter6traits8iterator8Iterator4nextCs6oosyzwIepl_6ide_db.exit.thread, label %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterINtCs3gqD4ldeioo_8indexmap6BucketINtNtNtCshzWfHUSfYae_4core3mem12maybe_uninit11MaybeUninitNtNtCs8K4cjrcxBsw_6hir_ty17method_resolution11CandidateIdENtNtB2q_5probe20CandidateWithPrivateEENtNtNtNtB1A_4iter6traits8iterator8Iterator4nextCs6oosyzwIepl_6ide_db.exit

_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterINtCs3gqD4ldeioo_8indexmap6BucketINtNtNtCshzWfHUSfYae_4core3mem12maybe_uninit11MaybeUninitNtNtCs8K4cjrcxBsw_6hir_ty17method_resolution11CandidateIdENtNtB2q_5probe20CandidateWithPrivateEENtNtNtNtB1A_4iter6traits8iterator8Iterator4nextCs6oosyzwIepl_6ide_db.exit: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  store ptr %i.f, ptr %i.c, align 8, !alias.scope !2227, !noalias !2230
  %.sroa.0.0.copyload = load i64, ptr %i.d, align 8, !noalias !2227 ; 2 uses
  %.not = icmp eq i64 %.sroa.0.0.copyload, -1
  br i1 %.not, label %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterINtCs3gqD4ldeioo_8indexmap6BucketINtNtNtCshzWfHUSfYae_4core3mem12maybe_uninit11MaybeUninitNtNtCs8K4cjrcxBsw_6hir_ty17method_resolution11CandidateIdENtNtB2q_5probe20CandidateWithPrivateEENtNtNtNtB1A_4iter6traits8iterator8Iterator4nextCs6oosyzwIepl_6ide_db.exit.thread, label %bb.b

bb.b:                                             ; preds = %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterINtCs3gqD4ldeioo_8indexmap6BucketINtNtNtCshzWfHUSfYae_4core3mem12maybe_uninit11MaybeUninitNtNtCs8K4cjrcxBsw_6hir_ty17method_resolution11CandidateIdENtNtB2q_5probe20CandidateWithPrivateEENtNtNtNtB1A_4iter6traits8iterator8Iterator4nextCs6oosyzwIepl_6ide_db.exit
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6.0..sroa_idx, i64 48, i1 false)
  br label %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterINtCs3gqD4ldeioo_8indexmap6BucketINtNtNtCshzWfHUSfYae_4core3mem12maybe_uninit11MaybeUninitNtNtCs8K4cjrcxBsw_6hir_ty17method_resolution11CandidateIdENtNtB2q_5probe20CandidateWithPrivateEENtNtNtNtB1A_4iter6traits8iterator8Iterator4nextCs6oosyzwIepl_6ide_db.exit.thread

_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterINtCs3gqD4ldeioo_8indexmap6BucketINtNtNtCshzWfHUSfYae_4core3mem12maybe_uninit11MaybeUninitNtNtCs8K4cjrcxBsw_6hir_ty17method_resolution11CandidateIdENtNtB2q_5probe20CandidateWithPrivateEENtNtNtNtB1A_4iter6traits8iterator8Iterator4nextCs6oosyzwIepl_6ide_db.exit.thread: ; preds = %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterINtCs3gqD4ldeioo_8indexmap6BucketINtNtNtCshzWfHUSfYae_4core3mem12maybe_uninit11MaybeUninitNtNtCs8K4cjrcxBsw_6hir_ty17method_resolution11CandidateIdENtNtB2q_5probe20CandidateWithPrivateEENtNtNtNtB1A_4iter6traits8iterator8Iterator4nextCs6oosyzwIepl_6ide_db.exit, %bb.a, %bb.b
  %storemerge = phi i64 [ %.sroa.0.0.copyload, %bb.b ], [ -1, %bb.a ], [ -1, %_RNvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterINtCs3gqD4ldeioo_8indexmap6BucketINtNtNtCshzWfHUSfYae_4core3mem12maybe_uninit11MaybeUninitNtNtCs8K4cjrcxBsw_6hir_ty17method_resolution11CandidateIdENtNtB2q_5probe20CandidateWithPrivateEENtNtNtNtB1A_4iter6traits8iterator8Iterator4nextCs6oosyzwIepl_6ide_db.exit ]
  store i64 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecINtCs3gqD4ldeioo_8indexmap6BucketINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9opaque_ty13OpaqueTypeKeyNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtNtNtB2q_5infer12opaque_types16OpaqueHiddenTypeEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6oosyzwIepl_6ide_db(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #5 {
bb.a:
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs6oosyzwIepl_6ide_db.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !10, !noundef !10
  %i.c = shl nuw i64 %.val, 5
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #42
  br label %_RNvMs3_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs6oosyzwIepl_6ide_db.exit

_RNvMs3_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs6oosyzwIepl_6ide_db.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecINtCs3gqD4ldeioo_8indexmap6BucketINtNtNtCshzWfHUSfYae_4core3mem12maybe_uninit11MaybeUninitNtNtCs8K4cjrcxBsw_6hir_ty17method_resolution11CandidateIdENtNtB2g_5probe20CandidateWithPrivateEENtNtNtB1q_3ops4drop4Drop4dropCs6oosyzwIepl_6ide_db(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #5 {
bb.a:
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs6oosyzwIepl_6ide_db.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !10, !noundef !10
  %i.c = mul nuw i64 %.val, 80
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #42
  br label %_RNvMs3_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs6oosyzwIepl_6ide_db.exit

_RNvMs3_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs6oosyzwIepl_6ide_db.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecINtCs3gqD4ldeioo_8indexmap6BucketNtCs4sl5YdnrCxp_3vfs6FileIdNtNtB1l_8vfs_path7VfsPathEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6oosyzwIepl_6ide_db(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #5 {
bb.a:
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs6oosyzwIepl_6ide_db.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !10, !noundef !10
  %i.c = mul nuw i64 %.val, 48
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #42
  br label %_RNvMs3_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs6oosyzwIepl_6ide_db.exit

_RNvMs3_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs6oosyzwIepl_6ide_db.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecINtCs3gqD4ldeioo_8indexmap6BucketNtNtCs8Xq8PKFYOms_3hir7symbols10FileSymboluEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6oosyzwIepl_6ide_db(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #5 {
bb.a:
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs6oosyzwIepl_6ide_db.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !10, !noundef !10
  %i.c = mul nuw i64 %.val, 80
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #42
  br label %_RNvMs3_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs6oosyzwIepl_6ide_db.exit

_RNvMs3_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs6oosyzwIepl_6ide_db.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecINtCs3gqD4ldeioo_8indexmap6BucketNtNtCsd9Lm8bEdjjY_5salsa11zalsa_local9QueryEdgeuEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6oosyzwIepl_6ide_db(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #5 {
bb.a:
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs6oosyzwIepl_6ide_db.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !10, !noundef !10
  %i.c = mul nuw i64 %.val, 24
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #42
  br label %_RNvMs3_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs6oosyzwIepl_6ide_db.exit

_RNvMs3_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs6oosyzwIepl_6ide_db.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecINtCs3gqD4ldeioo_8indexmap6BucketNtNtCsgIpRO4v45SJ_7base_db5input5CrateNtNtCs39E2wp1vf7X_6intern6symbol6SymbolEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6oosyzwIepl_6ide_db(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #5 {
bb.a:
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs6oosyzwIepl_6ide_db.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !10, !noundef !10
  %i.c = mul nuw i64 %.val, 24
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #42
  br label %_RNvMs3_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs6oosyzwIepl_6ide_db.exit

_RNvMs3_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs6oosyzwIepl_6ide_db.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecINtCs3gqD4ldeioo_8indexmap6BucketNtNtNtCs6oosyzwIepl_6ide_db14syntax_helpers9tree_diff17TreeDiffInsertPosINtNtB7_3vec3VecINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB2O_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB3D_11SyntaxTokenB3Z_EEEEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropB1p_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #5 {
bb.a:
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs6oosyzwIepl_6ide_db.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !10, !noundef !10
  %i.c = mul nuw i64 %.val, 56
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #42
  br label %_RNvMs3_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs6oosyzwIepl_6ide_db.exit

_RNvMs3_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs6oosyzwIepl_6ide_db.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecINtCs3gqD4ldeioo_8indexmap6BucketNtNtNtCs6oosyzwIepl_6ide_db7imports13import_assets13LocatedImportuEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropB1p_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #5 {
bb.a:
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs6oosyzwIepl_6ide_db.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !10, !noundef !10
  %i.c = mul nuw i64 %.val, 96
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #42
  br label %_RNvMs3_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs6oosyzwIepl_6ide_db.exit

_RNvMs3_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs6oosyzwIepl_6ide_db.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecINtCs83ee1IJTiSq_6either6EitherNtCs8Xq8PKFYOms_3hir9TypeParamNtB1j_10ConstParamEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6oosyzwIepl_6ide_db(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #5 {
bb.a:
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs6oosyzwIepl_6ide_db.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !10, !noundef !10
end_hunk_0
