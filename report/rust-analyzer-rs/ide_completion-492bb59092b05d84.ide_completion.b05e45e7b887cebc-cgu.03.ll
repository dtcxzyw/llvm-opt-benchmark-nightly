Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/ide_completion-492bb59092b05d84.ide_completion.b05e45e7b887cebc-cgu.03?download=true
inline.NumInlined: 1132
inline.NumDeleted: 459
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNvXs6_NtCs8K4cjrcxBsw_6hir_ty2dbNtCs6oosyzwIepl_6ide_db12RootDatabaseNtB5_11HirDatabase6as_dynCsf8NQSppxkmK_14ide_completion:bb.a
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @15, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull align 8 ptr @_RNvXs7_NtCsd9Lm8bEdjjY_5salsa7storageNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtB7_5zalsa13ZalsaDatabase11zalsa_localCsf8NQSppxkmK_14ide_completion(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) %0) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  ret ptr %i.a
}

; Function Attrs: alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef nonnull align 8 ptr @_RNvXs7_NtCsd9Lm8bEdjjY_5salsa7storageNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtB7_5zalsa13ZalsaDatabase5zalsaCsf8NQSppxkmK_14ide_completion(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #7 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !7, !noundef !7
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  ret ptr %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RNvXs9_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir4foldINtB5_7ShifterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEINtB5_10TypeFolderBZ_E10fold_constCsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef align 8 dereferenceable(40) %0, ptr noundef nonnull %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %.sroa.0.0.copyload = load i32, ptr %1, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.4.0.copyload = load i32, ptr %.sroa.4.0..sroa_idx, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.0.copyload = load i32, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.6.0.copyload = load i32, ptr %.sroa.6.0..sroa_idx, align 4 ; 2 uses
  %i.b = icmp ne i32 %.sroa.0.0.copyload, 2
  %i.c = trunc nuw i32 %.sroa.5.0.copyload to i1
  %or.cond = select i1 %i.b, i1 true, i1 %i.c
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load i32, ptr %i.d, align 8
  %.not = icmp ult i32 %.sroa.6.0.copyload, %i.e
  %or.cond4 = select i1 %or.cond, i1 true, i1 %.not
  br i1 %or.cond4, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef nonnull ptr @_RINvXs8_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver6constsNtB6_5ConstINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir4fold17TypeSuperFoldableNtNtB8_8interner10DbInternerE15super_fold_withINtB13_7ShifterB22_EECsf8NQSppxkmK_14ide_completion(ptr noundef nonnull %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.h = load i32, ptr %i.g, align 4, !noundef !7
  %i.i = add i32 %i.h, %.sroa.6.0.copyload        ; 2 uses
  %i.j = icmp ult i32 %i.i, -255
  br i1 %i.j, label %bb.e, label %bb.d, !prof !19

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 38, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #31
  unreachable

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  %i.k = call noundef nonnull ptr @_RNvXsb_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver6constsNtB5_5ConstINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir8inherent5ConstNtNtB7_8interner10DbInternerE9new_bound(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a, i32 noundef %i.i, i32 noundef %.sroa.4.0.copyload)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b
  %.sroa.0.0 = phi ptr [ %i.f, %bb.b ], [ %i.k, %bb.e ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RNvXs9_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir4foldINtB5_7ShifterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEINtB5_10TypeFolderBZ_E11fold_regionCsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %0, ptr nofree noundef nonnull readonly captures(ret: address, provenance) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [20 x i8], align 4                ; 4 uses
  %.sroa.0.0.copyload = load i32, ptr %1, align 4 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.4.0.copyload = load i32, ptr %.sroa.4.0..sroa_idx, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.0.copyload = load i32, ptr %.sroa.5.0..sroa_idx, align 4 ; 2 uses
  %i.c = icmp ne i32 %.sroa.0.0.copyload, 17
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp ne i32 %.sroa.0.0.copyload, 16
  %i.e = trunc nuw i32 %.sroa.4.0.copyload to i1
  %or.cond = select i1 %i.d, i1 true, i1 %i.e
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load i32, ptr %i.f, align 8
  %.not = icmp ult i32 %.sroa.5.0.copyload, %i.g
  %or.cond4 = select i1 %or.cond, i1 true, i1 %.not
  br i1 %or.cond4, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.b, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.6.0..sroa_idx, i64 20, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.i = load i32, ptr %i.h, align 4, !noundef !7
  %i.j = add i32 %i.i, %.sroa.5.0.copyload        ; 2 uses
  %i.k = icmp ult i32 %i.j, -255
  br i1 %i.k, label %bb.d, label %bb.c, !prof !19

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 38, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #31
  unreachable

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  %i.l = call noundef nonnull ptr @_RNvXs8_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver6regionNtB5_6RegionINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir8inherent6RegionNtNtB7_8interner10DbInternerE9new_bound(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a, i32 noundef %i.j, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(20) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  %.sroa.0.0 = phi ptr [ %i.l, %bb.d ], [ %1, %bb.a ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull ptr @_RNvXs9_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir4foldINtB5_7ShifterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEINtB5_10TypeFolderBZ_E7fold_tyCsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef align 8 dereferenceable(40) %0, ptr noundef nonnull %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [20 x i8], align 4                ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %1, ptr %i.b, align 8
  %.sroa.0.0.copyload = load i32, ptr %1, align 8 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.4.0.copyload = load i32, ptr %.sroa.4.0..sroa_idx, align 4 ; 2 uses
  %i.c = icmp ne i32 %.sroa.0.0.copyload, 27
  tail call void @llvm.assume(i1 %i.c)
  %or.cond = icmp ne i32 %.sroa.0.0.copyload, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load i32, ptr %i.d, align 8              ; 2 uses
  %.not = icmp ult i32 %.sroa.4.0.copyload, %i.e
  %or.cond2 = select i1 %or.cond, i1 true, i1 %.not
  br i1 %or.cond2, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = call noundef zeroext i1 @_RNvXsb_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir5visitNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty2TyINtB5_16TypeVisitableExtNtNtBQ_8interner10DbInternerE26has_vars_bound_at_or_aboveCsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, i32 noundef %i.e)
  br i1 %i.f, label %bb.g, label %bb.f

bb.c:                                             ; preds = %bb.a
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.a, ptr noundef nonnull align 8 dereferenceable(20) %.sroa.5.0..sroa_idx, i64 20, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.h = load i32, ptr %i.g, align 4, !noundef !7
  %i.i = add i32 %i.h, %.sroa.4.0.copyload        ; 2 uses
  %i.j = icmp ult i32 %i.i, -255
  br i1 %i.j, label %bb.e, label %bb.d, !prof !19

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 38, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #31
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.k = call noundef nonnull ptr @_RNvXsb_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver2tyNtB5_2TyINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir8inherent2TyNtNtB7_8interner10DbInternerE9new_bound(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, i32 noundef %i.i, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(20) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.g, %bb.e
  %.sroa.0.0 = phi ptr [ %i.l, %bb.g ], [ %i.k, %bb.e ], [ %1, %bb.b ]
  ret ptr %.sroa.0.0

bb.g:                                             ; preds = %bb.b
  %i.l = call noundef nonnull ptr @_RINvXs8_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver2tyNtB6_2TyINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir4fold17TypeSuperFoldableNtNtB8_8interner10DbInternerE15super_fold_withINtBW_7ShifterB1V_EECsf8NQSppxkmK_14ide_completion(ptr noundef nonnull %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0)
  br label %bb.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef ptr @_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_3str4iter5SplitReENvMs2_NtCs39E2wp1vf7X_6intern6symbolNtB1M_6Symbol6internEEINtB5_8FuseImplBY_E4nextCsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(128) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !17, !noundef !7 ; 2 uses
  %.not = icmp eq i64 %i.a, 2
  br i1 %.not, label %_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3str4iter5SplitReENvMs2_NtCs39E2wp1vf7X_6intern6symbolNtB1u_6Symbol6internENtNtNtB9_6traits8iterator8Iterator4nextCsf8NQSppxkmK_14ide_completion.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3817)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3818)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3819)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 121 ; 2 uses
  %i.c = load i8, ptr %i.b, align 1, !range !15, !alias.scope !3820, !noundef !7
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3str4iter5SplitReENvMs2_NtCs39E2wp1vf7X_6intern6symbolNtB1u_6Symbol6internENtNtNtB9_6traits8iterator8Iterator4nextCsf8NQSppxkmK_14ide_completion.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.val.i.i.i = load ptr, ptr %i.e, align 8, !alias.scope !3820, !nonnull !7, !noundef !7 ; 14 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.val1.i.i.i = load i64, ptr %i.f, align 8, !alias.scope !3820, !noundef !7 ; 30 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3821)
  %i.g = trunc nuw i64 %i.a to i1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  br i1 %i.g, label %bb.m, label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 26 ; 2 uses
  %i.j = load i8, ptr %i.i, align 2, !range !15, !alias.scope !3822, !noundef !7
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.aj, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.preheader.i.i.i.i
  %.promoted.i.i.i.i = load i64, ptr %i.h, align 8, !alias.scope !3823 ; 13 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %.promoted52.i.i.i.i = load i8, ptr %i.l, align 8, !alias.scope !3822 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3824)
  %i.m = trunc nuw i8 %.promoted52.i.i.i.i to i1  ; 2 uses
  %i.n = icmp eq i64 %.promoted.i.i.i.i, 0
  br i1 %i.n, label %bb.f, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %.not.i.i.i.peel.i.i.i = icmp ult i64 %.promoted.i.i.i.i, %.val1.i.i.i
  br i1 %.not.i.i.i.peel.i.i.i, label %bb.e, label %.split.i.i.i.peel.i.i.i

.split.i.i.i.peel.i.i.i:                          ; preds = %bb.d
  %i.o = icmp eq i64 %.promoted.i.i.i.i, %.val1.i.i.i
  br i1 %i.o, label %bb.f, label %.loopexit.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %.promoted.i.i.i.i
  %i.q = load i8, ptr %i.p, align 1, !alias.scope !3825, !noalias !3826, !noundef !7
  %i.r = icmp sgt i8 %i.q, -65
  br i1 %i.r, label %bb.f, label %.loopexit.i.i.i

bb.f:                                             ; preds = %bb.e, %.split.i.i.i.peel.i.i.i, %.lr.ph.i.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %.promoted.i.i.i.i ; 4 uses
  %i.t = icmp samesign eq i64 %.promoted.i.i.i.i, %.val1.i.i.i
  br i1 %i.t, label %.loopexit51.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = load i8, ptr %i.s, align 1, !noalias !3827, !noundef !7 ; 5 uses
  %i.v = icmp sgt i8 %i.u, -1
  br i1 %i.v, label %bb.h, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsf8NQSppxkmK_14ide_completion.exit12.i.i.i.peel.i.i.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsf8NQSppxkmK_14ide_completion.exit12.i.i.i.peel.i.i.i: ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  %i.x = and i8 %i.u, 31
  %i.y = zext nneg i8 %i.x to i32                 ; 3 uses
  %i.z = add nuw nsw i64 %.promoted.i.i.i.i, 1
  %i.aa = icmp samesign ne i64 %i.z, %.val1.i.i.i
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = load i8, ptr %i.w, align 1, !noalias !3827, !noundef !7
  %i.ac = shl nuw nsw i32 %i.y, 6
  %i.ad = and i8 %i.ab, 63
  %i.ae = zext nneg i8 %i.ad to i32               ; 2 uses
  %i.af = or disjoint i32 %i.ac, %i.ae
  %i.ag = icmp samesign ugt i8 %i.u, -33
  br i1 %i.ag, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsf8NQSppxkmK_14ide_completion.exit14.i.i.i.peel.i.i.i, label %bb.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsf8NQSppxkmK_14ide_completion.exit14.i.i.i.peel.i.i.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsf8NQSppxkmK_14ide_completion.exit12.i.i.i.peel.i.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.s, i64 2
  %i.ai = add nuw nsw i64 %.promoted.i.i.i.i, 2
  %i.aj = icmp samesign ne i64 %i.ai, %.val1.i.i.i
  tail call void @llvm.assume(i1 %i.aj)
  %i.ak = load i8, ptr %i.ah, align 1, !noalias !3827, !noundef !7
  %i.al = shl nuw nsw i32 %i.ae, 6
  %i.am = and i8 %i.ak, 63
  %i.an = zext nneg i8 %i.am to i32
  %i.ao = or disjoint i32 %i.al, %i.an            ; 2 uses
  %i.ap = shl nuw nsw i32 %i.y, 12
  %i.aq = or disjoint i32 %i.ao, %i.ap
  %i.ar = icmp samesign ugt i8 %i.u, -17
  br i1 %i.ar, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsf8NQSppxkmK_14ide_completion.exit16.i.i.i.peel.i.i.i, label %bb.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsf8NQSppxkmK_14ide_completion.exit16.i.i.i.peel.i.i.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsf8NQSppxkmK_14ide_completion.exit14.i.i.i.peel.i.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.s, i64 3
  %i.at = add nuw nsw i64 %.promoted.i.i.i.i, 3
  %i.au = icmp samesign ne i64 %i.at, %.val1.i.i.i
  tail call void @llvm.assume(i1 %i.au)
  %i.av = load i8, ptr %i.as, align 1, !noalias !3827, !noundef !7
  %i.aw = shl nuw nsw i32 %i.y, 18
  %i.ax = and i32 %i.aw, 1835008
  %i.ay = shl nuw nsw i32 %i.ao, 6
  %i.az = and i8 %i.av, 63
  %i.ba = zext nneg i8 %i.az to i32
  %i.bb = or disjoint i32 %i.ay, %i.ba
  %i.bc = or disjoint i32 %i.bb, %i.ax
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bd = zext nneg i8 %i.u to i32
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsf8NQSppxkmK_14ide_completion.exit16.i.i.i.peel.i.i.i, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsf8NQSppxkmK_14ide_completion.exit14.i.i.i.peel.i.i.i, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsf8NQSppxkmK_14ide_completion.exit12.i.i.i.peel.i.i.i
  %.sroa.4.0.i.ph.i.i.peel.i.i.i = phi i32 [ %i.aq, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsf8NQSppxkmK_14ide_completion.exit14.i.i.i.peel.i.i.i ], [ %i.bc, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsf8NQSppxkmK_14ide_completion.exit16.i.i.i.peel.i.i.i ], [ %i.af, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsf8NQSppxkmK_14ide_completion.exit12.i.i.i.peel.i.i.i ], [ %i.bd, %bb.h ] ; 4 uses
  %i.be = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.i.i, 1114112
  tail call void @llvm.assume(i1 %i.be)
  br i1 %i.m, label %.loopexit.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bf = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.i.i, 128
  br i1 %i.bf, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bg = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.i.i, 2048
  br i1 %i.bg, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bh = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i.i.i, 65536
  %..i.i.peel.i.i.i = select i1 %i.bh, i64 3, i64 4
  br label %bb.n

bb.m:                                             ; preds = %bb.c
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.bj = load i64, ptr %i.bi, align 8, !alias.scope !3823, !noundef !7 ; 2 uses
  %i.bk = icmp eq i64 %i.bj, -1
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bm = load ptr, ptr %i.bl, align 8, !alias.scope !3823, !nonnull !7, !noundef !7 ; 5 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bo = load i64, ptr %i.bn, align 8, !alias.scope !3823, !noundef !7 ; 16 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 9 uses
  %i.bq = add nsw i64 %i.bo, -1                   ; 5 uses
  br i1 %i.bk, label %bb.ab, label %bb.t

bb.n:                                             ; preds = %bb.l, %bb.k, %bb.j
  %.sroa.01.0.i.i.peel.i.i.i = phi i64 [ 2, %bb.k ], [ %..i.i.peel.i.i.i, %bb.l ], [ 1, %bb.j ]
  %i.br = add i64 %.sroa.01.0.i.i.peel.i.i.i, %.promoted.i.i.i.i ; 16 uses
  store i64 %i.br, ptr %i.h, align 8, !alias.scope !3828
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3829)
  %i.bs = icmp eq i64 %i.br, 0
  br i1 %i.bs, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.not.i.i.i.i.i.i = icmp ult i64 %i.br, %.val1.i.i.i
  br i1 %.not.i.i.i.i.i.i, label %bb.p, label %.split.i.i.i.i.i.i

.split.i.i.i.i.i.i:                               ; preds = %bb.o
  %i.bt = icmp eq i64 %i.br, %.val1.i.i.i
  br i1 %i.bt, label %bb.q, label %.loopexit.i.i.i

bb.p:                                             ; preds = %bb.o
  %i.bu = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.br
  %i.bv = load i8, ptr %i.bu, align 1, !alias.scope !3825, !noalias !3830, !noundef !7
  %i.bw = icmp sgt i8 %i.bv, -65
  br i1 %i.bw, label %bb.q, label %.loopexit.i.i.i

bb.q:                                             ; preds = %bb.p, %.split.i.i.i.i.i.i, %bb.n
  %i.bx = icmp samesign eq i64 %i.br, %.val1.i.i.i
  br i1 %i.bx, label %.loopexit51.thread.i.i.i, label %bb.r

.loopexit51.thread.i.i.i:                         ; preds = %bb.q
  store i8 0, ptr %i.l, align 8, !alias.scope !3822
  br label %bb.ai

bb.r:                                             ; preds = %bb.q
  %i.by = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.br
  %i.bz = load i8, ptr %i.by, align 1, !noalias !3831, !noundef !7 ; 3 uses
  %i.ca = icmp sgt i8 %i.bz, -1
  br i1 %i.ca, label %.loopexit.i.i.i.i, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsf8NQSppxkmK_14ide_completion.exit12.i.i.i.i.i.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsf8NQSppxkmK_14ide_completion.exit12.i.i.i.i.i.i: ; preds = %bb.r
  %i.cb = add nuw nsw i64 %i.br, 1
  %i.cc = icmp samesign ne i64 %i.cb, %.val1.i.i.i
  tail call void @llvm.assume(i1 %i.cc)
  %i.cd = icmp samesign ugt i8 %i.bz, -33
  br i1 %i.cd, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsf8NQSppxkmK_14ide_completion.exit14.i.i.i.i.i.i, label %.loopexit.i.i.i.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsf8NQSppxkmK_14ide_completion.exit14.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsf8NQSppxkmK_14ide_completion.exit12.i.i.i.i.i.i
  %i.ce = add nuw nsw i64 %i.br, 2
  %i.cf = icmp samesign ne i64 %i.ce, %.val1.i.i.i
  tail call void @llvm.assume(i1 %i.cf)
  %i.cg = icmp samesign ugt i8 %i.bz, -17
  br i1 %i.cg, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsf8NQSppxkmK_14ide_completion.exit16.i.i.i.i.i.i, label %.loopexit.i.i.i.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsf8NQSppxkmK_14ide_completion.exit16.i.i.i.i.i.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsf8NQSppxkmK_14ide_completion.exit14.i.i.i.i.i.i
  %i.ch = add nuw nsw i64 %i.br, 3
  %i.ci = icmp samesign ne i64 %i.ch, %.val1.i.i.i
  tail call void @llvm.assume(i1 %i.ci)
  br label %.loopexit.i.i.i.i

.loopexit.i.i.i:                                  ; preds = %bb.p, %.split.i.i.i.i.i.i, %bb.e, %.split.i.i.i.peel.i.i.i
  %.lcssa47.i.i.i = phi i8 [ %.promoted52.i.i.i.i, %.split.i.i.i.peel.i.i.i ], [ %.promoted52.i.i.i.i, %bb.e ], [ 1, %.split.i.i.i.i.i.i ], [ 1, %bb.p ]
  %.lcssa44.i.i.i = phi i64 [ %.promoted.i.i.i.i, %.split.i.i.i.peel.i.i.i ], [ %.promoted.i.i.i.i, %bb.e ], [ %i.br, %.split.i.i.i.i.i.i ], [ %i.br, %bb.p ]
  %i.cj = xor i8 %.lcssa47.i.i.i, 1
  store i8 %i.cj, ptr %i.l, align 8, !alias.scope !3822
  tail call void @_RNvNtCshzWfHUSfYae_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i.i.i, i64 noundef %.val1.i.i.i, i64 noundef %.lcssa44.i.i.i, i64 noundef %.val1.i.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @196) #31, !noalias !3830
  unreachable

.loopexit51.i.i.i:                                ; preds = %bb.f
  %i.ck = xor i8 %.promoted52.i.i.i.i, 1
  store i8 %i.ck, ptr %i.l, align 8, !alias.scope !3822
  br i1 %i.m, label %bb.ai, label %bb.s

bb.s:                                             ; preds = %.loopexit51.i.i.i
  store i8 1, ptr %i.i, align 2, !alias.scope !3822
  br label %bb.aj

.loopexit.i.i.i.i:                                ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsf8NQSppxkmK_14ide_completion.exit12.i.i.i.i.i.i, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsf8NQSppxkmK_14ide_completion.exit14.i.i.i.i.i.i, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsf8NQSppxkmK_14ide_completion.exit16.i.i.i.i.i.i, %bb.r, %bb.i
  %.lcssa46.i.i.i = phi i64 [ %.promoted.i.i.i.i, %bb.i ], [ %i.br, %bb.r ], [ %i.br, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsf8NQSppxkmK_14ide_completion.exit16.i.i.i.i.i.i ], [ %i.br, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsf8NQSppxkmK_14ide_completion.exit14.i.i.i.i.i.i ], [ %i.br, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsf8NQSppxkmK_14ide_completion.exit12.i.i.i.i.i.i ] ; 2 uses
  store i8 0, ptr %i.l, align 8, !alias.scope !3822
  br label %bb.ai

bb.t:                                             ; preds = %bb.m
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3832)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3833)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3834)
  %.promoted.i.i.i.i.i = load i64, ptr %i.bp, align 8, !alias.scope !3835 ; 2 uses
  %i.cl = add i64 %.promoted.i.i.i.i.i, %i.bq     ; 2 uses
  %i.cm = icmp ult i64 %i.cl, %.val1.i.i.i
  br i1 %i.cm, label %.lr.ph.i1.i.i.i.i, label %._crit_edge.i.i.i.i.i

.lr.ph.i1.i.i.i.i:                                ; preds = %bb.t
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.co = load i64, ptr %i.cn, align 8, !alias.scope !3835, !noundef !7
  %i.cp = load i64, ptr %i.h, align 8, !alias.scope !3835 ; 4 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cr = load i64, ptr %i.cq, align 8, !alias.scope !3835 ; 2 uses
  %i.cs = sub i64 %i.bo, %i.cr
  %invariant.op = sub i64 1, %i.cp
  br label %.lr.ph.split.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %bb.w, %bb.t
  store i64 %.val1.i.i.i, ptr %i.bp, align 8, !alias.scope !3835
  br label %bb.aj

.lr.ph.split.i.i.i.i.i:                           ; preds = %bb.w, %.lr.ph.i1.i.i.i.i
  %i.ct = phi i64 [ %.sink70.i.i.i.i.i, %bb.w ], [ %i.bj, %.lr.ph.i1.i.i.i.i ] ; 3 uses
  %i.cu = phi i64 [ %i.de, %bb.w ], [ %i.cl, %.lr.ph.i1.i.i.i.i ]
  %i.cv = phi i64 [ %.sink71.i.i.i.i.i, %bb.w ], [ %.promoted.i.i.i.i.i, %.lr.ph.i1.i.i.i.i ] ; 7 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.cu
  %i.cx = load i8, ptr %i.cw, align 1, !alias.scope !3833, !noalias !3836, !noundef !7
  %i.cy = and i8 %i.cx, 63
  %i.cz = zext nneg i8 %i.cy to i64
  %i.da = shl nuw i64 1, %i.cz
  %i.db = and i64 %i.da, %i.co
  %.not.i2.i.i.i.i = icmp eq i64 %i.db, 0
  br i1 %.not.i2.i.i.i.i, label %bb.u, label %bb.v

bb.u:                                             ; preds = %.lr.ph.split.i.i.i.i.i
  %i.dc = add i64 %i.cv, %i.bo
  br label %bb.w

bb.v:                                             ; preds = %.lr.ph.split.i.i.i.i.i
  %..i.i3.i.i.i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.ct, i64 %i.cp) ; 2 uses
  %i.dd = icmp ult i64 %..i.i3.i.i.i.i, %i.bo
  br i1 %i.dd, label %.lr.ph, label %.preheader36.i.i.i.i.i.preheader

bb.w:                                             ; preds = %bb.aa, %bb.z, %bb.u
  %.sink71.i.i.i.i.i = phi i64 [ %i.ea, %bb.aa ], [ %i.dz, %bb.z ], [ %i.dc, %bb.u ] ; 3 uses
  %.sink70.i.i.i.i.i = phi i64 [ 0, %bb.aa ], [ %i.cs, %bb.z ], [ 0, %bb.u ] ; 2 uses
  store i64 %.sink71.i.i.i.i.i, ptr %i.bp, align 8, !alias.scope !3835
  store i64 %.sink70.i.i.i.i.i, ptr %i.bi, align 8, !alias.scope !3835
  %i.de = add i64 %.sink71.i.i.i.i.i, %i.bq       ; 2 uses
  %i.df = icmp ult i64 %i.de, %.val1.i.i.i
  br i1 %i.df, label %.lr.ph.split.i.i.i.i.i, label %._crit_edge.i.i.i.i.i

bb.x:                                             ; preds = %.lr.ph
  %i.dg = add nuw nsw i64 %.sroa.04.0.i.i.i.i.i70, 1 ; 2 uses
  %i.dh = icmp ult i64 %i.dg, %i.bo
  br i1 %i.dh, label %.lr.ph, label %.preheader36.i.i.i.i.i.preheader

.preheader36.i.i.i.i.i.preheader:                 ; preds = %bb.x, %bb.v
  %i.di = icmp ult i64 %i.ct, %i.cp
  br i1 %i.di, label %.lr.ph72, label %.split.us.i.i.i.i.i

.lr.ph:                                           ; preds = %bb.v, %bb.x
  %.sroa.04.0.i.i.i.i.i70 = phi i64 [ %i.dg, %bb.x ], [ %..i.i3.i.i.i.i, %bb.v ] ; 4 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.bm, i64 %.sroa.04.0.i.i.i.i.i70
  %i.dk = load i8, ptr %i.dj, align 1, !alias.scope !3834, !noalias !3836, !noundef !7
  %i.dl = add i64 %.sroa.04.0.i.i.i.i.i70, %i.cv  ; 2 uses
  %i.dm = icmp ult i64 %i.dl, %.val1.i.i.i
  tail call void @llvm.assume(i1 %i.dm)
  %i.dn = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.dl
  %i.do = load i8, ptr %i.dn, align 1, !alias.scope !3833, !noalias !3836, !noundef !7
  %.not21.i.i.i.i.i = icmp eq i8 %i.dk, %i.do
  br i1 %.not21.i.i.i.i.i, label %bb.x, label %bb.aa

.preheader36.i.i.i.i.i:                           ; preds = %bb.y
  %i.dp = icmp ult i64 %i.ct, %i.dr
  br i1 %i.dp, label %.lr.ph72, label %.split.us.i.i.i.i.i

.split.us.i.i.i.i.i:                              ; preds = %.preheader36.i.i.i.i.i.preheader, %.preheader36.i.i.i.i.i
  %i.dq = add i64 %i.cv, %i.bo                    ; 2 uses
  store i64 %i.dq, ptr %i.bp, align 8, !alias.scope !3835
  store i64 0, ptr %i.bi, align 8, !alias.scope !3835
  br label %bb.ai

.lr.ph72:                                         ; preds = %.preheader36.i.i.i.i.i.preheader, %.preheader36.i.i.i.i.i
  %.sroa.2.0.i.i.i.i.i71 = phi i64 [ %i.dr, %.preheader36.i.i.i.i.i ], [ %i.cp, %.preheader36.i.i.i.i.i.preheader ]
  %i.dr = add i64 %.sroa.2.0.i.i.i.i.i71, -1      ; 6 uses
  %i.ds = icmp ult i64 %i.dr, %i.bo
  br i1 %i.ds, label %bb.y, label %.split32.us.i.i.i.i.i

bb.y:                                             ; preds = %.lr.ph72
  %i.dt = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.dr
  %i.du = load i8, ptr %i.dt, align 1, !alias.scope !3834, !noalias !3836, !noundef !7
  %i.dv = add i64 %i.dr, %i.cv                    ; 2 uses
  %i.dw = icmp ult i64 %i.dv, %.val1.i.i.i
  tail call void @llvm.assume(i1 %i.dw)
  %i.dx = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.dv
  %i.dy = load i8, ptr %i.dx, align 1, !alias.scope !3833, !noalias !3836, !noundef !7
  %.not20.i.i.i.i.i = icmp eq i8 %i.du, %i.dy
  br i1 %.not20.i.i.i.i.i, label %.preheader36.i.i.i.i.i, label %bb.z

.split32.us.i.i.i.i.i:                            ; preds = %.lr.ph72
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %i.dr, i64 noundef range(i64 0, -9223372036854775808) %i.bo, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #31, !noalias !3837
  unreachable

bb.z:                                             ; preds = %bb.y
  %i.dz = add i64 %i.cv, %i.cr
  br label %bb.w

bb.aa:                                            ; preds = %.lr.ph
  %.reass.i.reass.i.reass.i.reass.i.reass.reass = add i64 %i.cv, %invariant.op
  %i.ea = add i64 %.reass.i.reass.i.reass.i.reass.i.reass.reass, %.sroa.04.0.i.i.i.i.i70
  br label %bb.w

bb.ab:                                            ; preds = %bb.m
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3838)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3839)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3840)
  %.promoted.i4.i.i.i.i = load i64, ptr %i.bp, align 8, !alias.scope !3841 ; 3 uses
  %i.eb = add i64 %.promoted.i4.i.i.i.i, %i.bq    ; 3 uses
  %i.ec = icmp ult i64 %i.eb, %.val1.i.i.i
  br i1 %i.ec, label %.lr.ph.i7.i.i.i.i, label %._crit_edge.i5.i.i.i.i

.lr.ph.i7.i.i.i.i:                                ; preds = %bb.ab
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ee = load i64, ptr %i.ed, align 8, !alias.scope !3841, !noundef !7 ; 2 uses
  %i.ef = load i64, ptr %i.h, align 8, !alias.scope !3841
  %.fr63.i.i.i.i = freeze i64 %i.ef               ; 10 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.eh = load i64, ptr %i.eg, align 8, !alias.scope !3841
  %umax.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %.fr63.i.i.i.i, i64 range(i64 0, -9223372036854775808) %i.bo) ; 2 uses
  %i.ei = add i64 %.fr63.i.i.i.i, -1              ; 2 uses
  %.first_iter.i8.i.i.i.i = icmp ult i64 %i.ei, %i.bo
  %i.ej = sub i64 1, %.fr63.i.i.i.i               ; 2 uses
  br i1 %.first_iter.i8.i.i.i.i, label %.lr.ph.split.us.i.us.i.i.i.i.preheader, label %.lr.ph.split.us.i.i.i.i.i.preheader

.lr.ph.split.us.i.i.i.i.i.preheader:              ; preds = %.lr.ph.i7.i.i.i.i
  %exitcond.not.i.i.i.i.i74.not = icmp ult i64 %.fr63.i.i.i.i, %i.bo
  br label %.lr.ph.split.us.i.i.i.i.i

.lr.ph.split.us.i.us.i.i.i.i.preheader:           ; preds = %.lr.ph.i7.i.i.i.i
  %exitcond.not.i.us.i.i.i.i79.not = icmp ult i64 %.fr63.i.i.i.i, %i.bo
  %.not34.i.us.us.i.i.i.i82 = icmp eq i64 %.fr63.i.i.i.i, 0
  br label %.lr.ph.split.us.i.us.i.i.i.i

.lr.ph.split.us.i.us.i.i.i.i:                     ; preds = %.lr.ph.split.us.i.us.i.i.i.i.preheader, %bb.ae
  %i.ek = phi i64 [ %i.fk, %bb.ae ], [ %i.eb, %.lr.ph.split.us.i.us.i.i.i.i.preheader ]
  %i.el = phi i64 [ %.sink.i9.us.i.i.i.i, %bb.ae ], [ %.promoted.i4.i.i.i.i, %.lr.ph.split.us.i.us.i.i.i.i.preheader ] ; 7 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.ek
  %i.en = load i8, ptr %i.em, align 1, !alias.scope !3839, !noalias !3836, !noundef !7
  %i.eo = and i8 %i.en, 63
  %i.ep = zext nneg i8 %i.eo to i64
  %i.eq = shl nuw i64 1, %i.ep
  %i.er = and i64 %i.eq, %i.ee
  %.not.us.i.us.i.i.i.i = icmp eq i64 %i.er, 0
  br i1 %.not.us.i.us.i.i.i.i, label %bb.ad, label %.preheader35.i.us.i.i.i.i.preheader

.preheader35.i.us.i.i.i.i.preheader:              ; preds = %.lr.ph.split.us.i.us.i.i.i.i
  br i1 %exitcond.not.i.us.i.i.i.i79.not, label %.lr.ph81, label %.preheader.i10.us.us.i.i.i.i.preheader

.preheader35.i.us.i.i.i.i:                        ; preds = %.lr.ph81
  %i.es = add i64 %.sroa.04.0.us.i.us.i.i.i.i80, 1 ; 2 uses
  %exitcond.not.i.us.i.i.i.i = icmp eq i64 %i.es, %umax.i.i.i.i.i
  br i1 %exitcond.not.i.us.i.i.i.i, label %.preheader.i10.us.us.i.i.i.i.preheader, label %.lr.ph81

.preheader.i10.us.us.i.i.i.i.preheader:           ; preds = %.preheader35.i.us.i.i.i.i, %.preheader35.i.us.i.i.i.i.preheader
  br i1 %.not34.i.us.us.i.i.i.i82, label %.split.us.i12.i.i.i.i, label %.lr.ph84

.lr.ph81:                                         ; preds = %.preheader35.i.us.i.i.i.i.preheader, %.preheader35.i.us.i.i.i.i
  %.sroa.04.0.us.i.us.i.i.i.i80 = phi i64 [ %i.es, %.preheader35.i.us.i.i.i.i ], [ %.fr63.i.i.i.i, %.preheader35.i.us.i.i.i.i.preheader ] ; 4 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.bm, i64 %.sroa.04.0.us.i.us.i.i.i.i80
  %i.eu = load i8, ptr %i.et, align 1, !alias.scope !3840, !noalias !3836, !noundef !7
  %i.ev = add i64 %.sroa.04.0.us.i.us.i.i.i.i80, %i.el ; 2 uses
  %i.ew = icmp ult i64 %i.ev, %.val1.i.i.i
  tail call void @llvm.assume(i1 %i.ew)
  %i.ex = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.ev
  %i.ey = load i8, ptr %i.ex, align 1, !alias.scope !3839, !noalias !3836, !noundef !7
  %.not21.us.i.us.i.i.i.i = icmp eq i8 %i.eu, %i.ey
  br i1 %.not21.us.i.us.i.i.i.i, label %.preheader35.i.us.i.i.i.i, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph81
  %i.ez = add i64 %i.el, %i.ej
  %i.fa = add i64 %i.ez, %.sroa.04.0.us.i.us.i.i.i.i80
  br label %bb.ae

.preheader.i10.us.us.i.i.i.i:                     ; preds = %.lr.ph84
  %.not34.i.us.us.i.i.i.i = icmp eq i64 %i.fb, 0
  br i1 %.not34.i.us.us.i.i.i.i, label %.split.us.i12.i.i.i.i, label %.lr.ph84

.lr.ph84:                                         ; preds = %.preheader.i10.us.us.i.i.i.i.preheader, %.preheader.i10.us.us.i.i.i.i
  %.sroa.2.0.us.i.us.us.i.i.i.i83 = phi i64 [ %i.fb, %.preheader.i10.us.us.i.i.i.i ], [ %.fr63.i.i.i.i, %.preheader.i10.us.us.i.i.i.i.preheader ]
  %i.fb = add i64 %.sroa.2.0.us.i.us.us.i.i.i.i83, -1 ; 4 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.fb
  %i.fd = load i8, ptr %i.fc, align 1, !alias.scope !3840, !noalias !3836, !noundef !7
  %i.fe = add i64 %i.fb, %i.el                    ; 2 uses
  %i.ff = icmp ult i64 %i.fe, %.val1.i.i.i
  tail call void @llvm.assume(i1 %i.ff)
  %i.fg = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.fe
  %i.fh = load i8, ptr %i.fg, align 1, !alias.scope !3839, !noalias !3836, !noundef !7
  %.not20.us.i.us.us.i.i.i.i = icmp eq i8 %i.fd, %i.fh
  br i1 %.not20.us.i.us.us.i.i.i.i, label %.preheader.i10.us.us.i.i.i.i, label %.split.us.us.i.i.i.i

.split.us.us.i.i.i.i:                             ; preds = %.lr.ph84
  %i.fi = add i64 %i.el, %i.eh
  br label %bb.ae

bb.ad:                                            ; preds = %.lr.ph.split.us.i.us.i.i.i.i
  %i.fj = add i64 %i.el, %i.bo
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %.split.us.us.i.i.i.i, %bb.ac
  %.sink.i9.us.i.i.i.i = phi i64 [ %i.fj, %bb.ad ], [ %i.fa, %bb.ac ], [ %i.fi, %.split.us.us.i.i.i.i ] ; 3 uses
  store i64 %.sink.i9.us.i.i.i.i, ptr %i.bp, align 8, !alias.scope !3841
  %i.fk = add i64 %.sink.i9.us.i.i.i.i, %i.bq     ; 2 uses
  %i.fl = icmp ult i64 %i.fk, %.val1.i.i.i
  br i1 %i.fl, label %.lr.ph.split.us.i.us.i.i.i.i, label %._crit_edge.i5.i.i.i.i

.lr.ph.split.us.i.i.i.i.i:                        ; preds = %.lr.ph.split.us.i.i.i.i.i.preheader, %bb.ah
  %i.fm = phi i64 [ %i.ge, %bb.ah ], [ %i.eb, %.lr.ph.split.us.i.i.i.i.i.preheader ]
  %i.fn = phi i64 [ %.sink.i9.i.i.i.i, %bb.ah ], [ %.promoted.i4.i.i.i.i, %.lr.ph.split.us.i.i.i.i.i.preheader ] ; 4 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.fm
  %i.fp = load i8, ptr %i.fo, align 1, !alias.scope !3839, !noalias !3836, !noundef !7
  %i.fq = and i8 %i.fp, 63
  %i.fr = zext nneg i8 %i.fq to i64
  %i.fs = shl nuw i64 1, %i.fr
  %i.ft = and i64 %i.fs, %i.ee
  %.not.us.i.i.i.i.i = icmp eq i64 %i.ft, 0
  br i1 %.not.us.i.i.i.i.i, label %bb.ag, label %.preheader35.i.i.i.i.i.preheader

.preheader35.i.i.i.i.i.preheader:                 ; preds = %.lr.ph.split.us.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i74.not, label %.lr.ph76, label %.preheader.i10.i.i.i.i

.preheader35.i.i.i.i.i:                           ; preds = %.lr.ph76
  %i.fu = add i64 %.sroa.04.0.us.i.i.i.i.i75, 1   ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.fu, %umax.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i, label %.preheader.i10.i.i.i.i, label %.lr.ph76

.lr.ph76:                                         ; preds = %.preheader35.i.i.i.i.i.preheader, %.preheader35.i.i.i.i.i
  %.sroa.04.0.us.i.i.i.i.i75 = phi i64 [ %i.fu, %.preheader35.i.i.i.i.i ], [ %.fr63.i.i.i.i, %.preheader35.i.i.i.i.i.preheader ] ; 4 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.bm, i64 %.sroa.04.0.us.i.i.i.i.i75
  %i.fw = load i8, ptr %i.fv, align 1, !alias.scope !3840, !noalias !3836, !noundef !7
  %i.fx = add i64 %.sroa.04.0.us.i.i.i.i.i75, %i.fn ; 2 uses
  %i.fy = icmp ult i64 %i.fx, %.val1.i.i.i
  tail call void @llvm.assume(i1 %i.fy)
  %i.fz = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %i.fx
  %i.ga = load i8, ptr %i.fz, align 1, !alias.scope !3839, !noalias !3836, !noundef !7
  %.not21.us.i.i.i.i.i = icmp eq i8 %i.fw, %i.ga
  br i1 %.not21.us.i.i.i.i.i, label %.preheader35.i.i.i.i.i, label %bb.af

.preheader.i10.i.i.i.i:                           ; preds = %.preheader35.i.i.i.i.i.preheader, %.preheader35.i.i.i.i.i
  %.not34.i.i.i.i.i = icmp eq i64 %.fr63.i.i.i.i, 0
  br i1 %.not34.i.i.i.i.i, label %.split.us.i12.i.i.i.i, label %.split32.us.i11.i.i.i.i

.split32.us.i11.i.i.i.i:                          ; preds = %.preheader.i10.i.i.i.i
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %i.ei, i64 noundef range(i64 0, -9223372036854775808) %i.bo, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #31, !noalias !3842
  unreachable

bb.af:                                            ; preds = %.lr.ph76
  %i.gb = add i64 %i.fn, %i.ej
  %i.gc = add i64 %i.gb, %.sroa.04.0.us.i.i.i.i.i75
  br label %bb.ah

bb.ag:                                            ; preds = %.lr.ph.split.us.i.i.i.i.i
  %i.gd = add i64 %i.fn, %i.bo
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.sink.i9.i.i.i.i = phi i64 [ %i.gd, %bb.ag ], [ %i.gc, %bb.af ] ; 3 uses
  store i64 %.sink.i9.i.i.i.i, ptr %i.bp, align 8, !alias.scope !3841
  %i.ge = add i64 %.sink.i9.i.i.i.i, %i.bq        ; 2 uses
  %i.gf = icmp ult i64 %i.ge, %.val1.i.i.i
  br i1 %i.gf, label %.lr.ph.split.us.i.i.i.i.i, label %._crit_edge.i5.i.i.i.i

._crit_edge.i5.i.i.i.i:                           ; preds = %bb.ah, %bb.ae, %bb.ab
  store i64 %.val1.i.i.i, ptr %i.bp, align 8, !alias.scope !3841
  br label %bb.aj

.split.us.i12.i.i.i.i:                            ; preds = %.preheader.i10.us.us.i.i.i.i.preheader, %.preheader.i10.us.us.i.i.i.i, %.preheader.i10.i.i.i.i
  %.us-phi.i.i.i.i = phi i64 [ %i.fn, %.preheader.i10.i.i.i.i ], [ %i.el, %.preheader.i10.us.us.i.i.i.i ], [ %i.el, %.preheader.i10.us.us.i.i.i.i.preheader ] ; 2 uses
  %i.gg = add i64 %.us-phi.i.i.i.i, %i.bo         ; 2 uses
  store i64 %i.gg, ptr %i.bp, align 8, !alias.scope !3841
  br label %bb.ai

bb.ai:                                            ; preds = %.split.us.i12.i.i.i.i, %.split.us.i.i.i.i.i, %.loopexit.i.i.i.i, %.loopexit51.i.i.i, %.loopexit51.thread.i.i.i
  %.sroa.8.0.ph.i.i.i = phi i64 [ %.val1.i.i.i, %.loopexit51.i.i.i ], [ %.lcssa46.i.i.i, %.loopexit.i.i.i.i ], [ %i.dq, %.split.us.i.i.i.i.i ], [ %i.gg, %.split.us.i12.i.i.i.i ], [ %.val1.i.i.i, %.loopexit51.thread.i.i.i ]
  %.sroa.4.02.ph.i.i.i = phi i64 [ %.val1.i.i.i, %.loopexit51.i.i.i ], [ %.lcssa46.i.i.i, %.loopexit.i.i.i.i ], [ %i.cv, %.split.us.i.i.i.i.i ], [ %.us-phi.i.i.i.i, %.split.us.i12.i.i.i.i ], [ %.val1.i.i.i, %.loopexit51.thread.i.i.i ]
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.gi = load i64, ptr %i.gh, align 8, !alias.scope !3820, !noundef !7 ; 2 uses
  %i.gj = sub nuw i64 %.sroa.4.02.ph.i.i.i, %i.gi
  store i64 %.sroa.8.0.ph.i.i.i, ptr %i.gh, align 8, !alias.scope !3820
  br label %bb.am

bb.aj:                                            ; preds = %._crit_edge.i5.i.i.i.i, %._crit_edge.i.i.i.i.i, %bb.s, %.preheader.i.i.i.i
  store i8 1, ptr %i.b, align 1, !alias.scope !3843
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.gl = load i8, ptr %i.gk, align 8, !range !15, !alias.scope !3843, !noundef !7
  %i.gm = trunc nuw i8 %i.gl to i1
  br i1 %i.gm, label %._crit_edge.i.i.i.i, label %bb.ak

._crit_edge.i.i.i.i:                              ; preds = %bb.aj
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !alias.scope !3843
  %.phi.trans.insert2.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.pre3.i.i.i.i = load i64, ptr %.phi.trans.insert2.i.i.i.i, align 8, !alias.scope !3843
  br label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.go = load i64, ptr %i.gn, align 8, !alias.scope !3843, !noundef !7 ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.gq = load i64, ptr %i.gp, align 8, !alias.scope !3843, !noundef !7 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.go, %i.gq
  br i1 %.not.i.i.i.i, label %_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3str4iter5SplitReENvMs2_NtCs39E2wp1vf7X_6intern6symbolNtB1u_6Symbol6internENtNtNtB9_6traits8iterator8Iterator4nextCsf8NQSppxkmK_14ide_completion.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak, %._crit_edge.i.i.i.i
  %i.gr = phi i64 [ %.pre3.i.i.i.i, %._crit_edge.i.i.i.i ], [ %i.go, %bb.ak ]
  %i.gs = phi i64 [ %.pre.i.i.i.i, %._crit_edge.i.i.i.i ], [ %i.gq, %bb.ak ] ; 2 uses
  %i.gt = sub nuw i64 %i.gr, %i.gs
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ai
  %.sroa.4.1.i.i.i = phi i64 [ %i.gt, %bb.al ], [ %i.gj, %bb.ai ]
  %.pn.i = phi i64 [ %i.gs, %bb.al ], [ %i.gi, %bb.ai ]
  %.sroa.0.1.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 %.pn.i
  %i.gu = tail call noundef nonnull ptr @_RNvMs2_NtCs39E2wp1vf7X_6intern6symbolNtB5_6Symbol6intern(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.1.i.i.i, i64 noundef %.sroa.4.1.i.i.i), !noalias !3817
  br label %_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3str4iter5SplitReENvMs2_NtCs39E2wp1vf7X_6intern6symbolNtB1u_6Symbol6internENtNtNtB9_6traits8iterator8Iterator4nextCsf8NQSppxkmK_14ide_completion.exit

_RNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB5_3MapINtNtNtBb_3str4iter5SplitReENvMs2_NtCs39E2wp1vf7X_6intern6symbolNtB1u_6Symbol6internENtNtNtB9_6traits8iterator8Iterator4nextCsf8NQSppxkmK_14ide_completion.exit: ; preds = %bb.am, %bb.ak, %bb.b, %bb.a
  %.sroa.0.0 = phi ptr [ null, %bb.a ], [ %i.gu, %bb.am ], [ null, %bb.b ], [ null, %bb.ak ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsD_Cs42xZ1oUXfIG_8smol_strINtNtCscFGNKo4Sl5v_9itertools6format6FormatINtNtNtNtCshzWfHUSfYae_4core4iter8adapters7flatten7FlatMapINtNtB1e_6filter6FilterINtNtCs9GitHPCrz2Q_5rowan3api21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENCNvNtNtCsf8NQSppxkmK_14ide_completion11completions7postfix18include_references0EINtNtB1e_5chain5ChainINtNtNtB1i_5array4iter8IntoIterINtCs83ee1IJTiSq_6either6EitherINtNtB2x_13utility_types11NodeOrTokenINtB2v_10SyntaxNodeB3i_EINtB2v_11SyntaxTokenB3i_EEReEKj1_EINtNtB1i_6option8IntoIterB6i_EENCB4b_s_0EENtB5_9ToSmolStr10to_smolstrB4h_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [32 x i8], align 8                ; 10 uses
  %i.d = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %1, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.4.0..sroa_idx, i8 0, i64 23, i1 false)
  store i8 0, ptr %i.c, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.d, ptr %i.b, align 8
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs1i_NtCshzWfHUSfYae_4core3fmtRINtNtCscFGNKo4Sl5v_9itertools6format6FormatINtNtNtNtB8_4iter8adapters7flatten7FlatMapINtNtB1i_6filter6FilterINtNtCs9GitHPCrz2Q_5rowan3api21SyntaxElementChildrenNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageENCNvNtNtCsf8NQSppxkmK_14ide_completion11completions7postfix18include_references0EINtNtB1i_5chain5ChainINtNtNtB8_5array4iter8IntoIterINtCs83ee1IJTiSq_6either6EitherINtNtB2l_13utility_types11NodeOrTokenINtB2j_10SyntaxNodeB36_EINtB2j_11SyntaxTokenB36_EEReEKj1_EINtNtB8_6option8IntoIterB65_EENCB3Z_s_0EENtB6_7Display3fmtB45_, ptr %.sroa.45.0..sroa_idx, align 8
  %i.e = invoke noundef zeroext i1 @_RNvNtCshzWfHUSfYae_4core3fmt5write(ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @62, ptr noundef nonnull @23, ptr noundef nonnull %i.b)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.d, %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6expectCsf8NQSppxkmK_14ide_completion.exit, %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str14SmolStrBuilderECsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.c) #29
          to label %common.resume unwind label %bb.i

bb.c:                                             ; preds = %bb.a
  br i1 %i.e, label %bb.d, label %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6expectCsf8NQSppxkmK_14ide_completion.exit, !prof !13

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @63, i64 noundef 51, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @36, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @134) #31
          to label %.noexc unwind label %bb.b

.noexc:                                           ; preds = %bb.d
  unreachable

_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6expectCsf8NQSppxkmK_14ide_completion.exit: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke void @_RNvMsF_Cs42xZ1oUXfIG_8smol_strNtB5_14SmolStrBuilder6finish(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.c)
          to label %bb.e unwind label %bb.b

bb.e:                                             ; preds = %_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6expectCsf8NQSppxkmK_14ide_completion.exit
  %i.g = load i8, ptr %i.c, align 8, !range !15, !alias.scope !3848, !noundef !7
  %i.h = icmp eq i8 %i.g, 0
  br i1 %i.h, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str14SmolStrBuilderECsf8NQSppxkmK_14ide_completion.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsf8NQSppxkmK_14ide_completion.exit.i.i unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %common.resume unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #27
  unreachable

common.resume:                                    ; preds = %bb.b, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.j, %bb.g ], [ %i.f, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsf8NQSppxkmK_14ide_completion.exit.i.i: ; preds = %bb.f
  call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str14SmolStrBuilderECsf8NQSppxkmK_14ide_completion.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs42xZ1oUXfIG_8smol_str14SmolStrBuilderECsf8NQSppxkmK_14ide_completion.exit: ; preds = %bb.e, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECsf8NQSppxkmK_14ide_completion.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.i:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #27
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsG_Cs42xZ1oUXfIG_8smol_strNtB5_14SmolStrBuilderNtNtCshzWfHUSfYae_4core3fmt5Write9write_str(ptr noalias nofree noundef align 8 dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #4 {
bb.a:
  tail call void @_RNvMsF_Cs42xZ1oUXfIG_8smol_strNtB5_14SmolStrBuilder8push_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2)
  ret i1 false
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsK_NtCshzWfHUSfYae_4core3fmtNtB5_5ErrorNtB5_5Debug3fmt(ptr noalias nofree nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #4 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @140, i64 noundef 5)
  ret i1 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsR_NtCshzWfHUSfYae_4core6optionINtB5_6OptionNtNtCsbSS6DM8SDEO_5alloc6string6StringENtNtB7_3fmt5Debug3fmtCsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #4 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i64, ptr %0, align 8, !range !6, !noundef !7
  %.not = icmp eq i64 %i.b, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @147, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @116)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @145, i64 noundef 4)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsR_NtCshzWfHUSfYae_4core6optionINtB5_6OptionNtNtCsf8NQSppxkmK_14ide_completion4item21CompletionRelevanceFnENtNtB7_3fmt5Debug3fmtBO_(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(3) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #4 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i8, ptr %0, align 1, !range !34, !noundef !7
  %.not = icmp eq i8 %i.b, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @147, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @148)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @145, i64 noundef 4)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsR_NtCshzWfHUSfYae_4core6optionINtB5_6OptionNtNtCsf8NQSppxkmK_14ide_completion4item28CompletionRelevanceTraitInfoENtNtB7_3fmt5Debug3fmtBO_(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(2) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #4 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i8, ptr %0, align 1, !range !34, !noundef !7
  %.not = icmp eq i8 %i.b, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
end_hunk_0
