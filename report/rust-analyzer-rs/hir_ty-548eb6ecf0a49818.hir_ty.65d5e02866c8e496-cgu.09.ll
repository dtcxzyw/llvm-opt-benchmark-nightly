Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/hir_ty-548eb6ecf0a49818.hir_ty.65d5e02866c8e496-cgu.09?download=true
inline.NumInlined: 5162
inline.NumDeleted: 2096
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 25
begin_hunk_0_@_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort8unstable7ipnsortINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtBY_9predicate19ProjectionPredicateB1L_EENCINvMB6_SBT_20sort_unstable_by_keyNtNtB1P_6def_id6TermIdNCNvMs1_NtB1R_5lowerNtB4w_17TyLoweringContext15lower_dyn_traits4_0E0EB1R_:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2388
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.cd, i64 24, i1 false), !noalias !2389
  call void @_RNvMst_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9predicateINtB5_9AliasTermNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerE24expect_projection_def_idB1c_(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.d, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !noalias !2390
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2388
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2388
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2388
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.cg, i64 24, i1 false), !noalias !2391
  call void @_RNvMst_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9predicateINtB5_9AliasTermNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerE24expect_projection_def_idB1c_(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.c, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !noalias !2392
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2388
  call void @llvm.experimental.noalias.scope.decl(metadata !2393)
  call void @llvm.experimental.noalias.scope.decl(metadata !2394)
  call void @llvm.experimental.noalias.scope.decl(metadata !2395)
  call void @llvm.experimental.noalias.scope.decl(metadata !2396)
  call void @llvm.experimental.noalias.scope.decl(metadata !2397)
  call void @llvm.experimental.noalias.scope.decl(metadata !2398)
  %i.ch = load i32, ptr %i.d, align 4, !range !38, !alias.scope !2399, !noalias !2400, !noundef !8 ; 2 uses
  %i.ci = trunc nuw nsw i32 %i.ch to i8
  %i.cj = load i32, ptr %i.c, align 4, !range !38, !alias.scope !2401, !noalias !2402, !noundef !8 ; 3 uses
  %i.ck = trunc nuw nsw i32 %i.cj to i8
  %i.cl = sub nsw i8 %i.ci, %i.ck                 ; 2 uses
  %i.cm = icmp eq i8 %i.cl, 0
  br i1 %i.cm, label %bb.p, label %_RNCINvMNtCshzWfHUSfYae_4core5sliceSINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtBC_9predicate19ProjectionPredicateB1p_EE20sort_unstable_by_keyNtNtB1t_6def_id6TermIdNCNvMs1_NtB1v_5lowerNtB3X_17TyLoweringContext15lower_dyn_traits4_0E0B1v_.exit5

bb.p:                                             ; preds = %bb.o
  %i.cn = trunc nuw i32 %i.ch to i1
  br i1 %i.cn, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.co = icmp ne i32 %i.cj, 0
  call void @llvm.assume(i1 %i.co)
  %i.cp = load i32, ptr %i.aw, align 4, !range !39, !alias.scope !2399, !noalias !2400, !noundef !8 ; 2 uses
  %i.cq = load i32, ptr %i.ax, align 4, !range !39, !alias.scope !2401, !noalias !2402, !noundef !8 ; 2 uses
  %i.cr = call i8 @llvm.ucmp.i8.i32(i32 %i.cp, i32 %i.cq)
  %i.cs = icmp eq i32 %i.cp, %i.cq
  br i1 %i.cs, label %bb.t, label %_RNCINvMNtCshzWfHUSfYae_4core5sliceSINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtBC_9predicate19ProjectionPredicateB1p_EE20sort_unstable_by_keyNtNtB1t_6def_id6TermIdNCNvMs1_NtB1v_5lowerNtB3X_17TyLoweringContext15lower_dyn_traits4_0E0B1v_.exit5

bb.r:                                             ; preds = %bb.p
  %i.ct = icmp eq i32 %i.cj, 0
  call void @llvm.assume(i1 %i.ct)
  %i.cu = load i32, ptr %i.aw, align 4, !range !39, !alias.scope !2399, !noalias !2400, !noundef !8 ; 2 uses
  %i.cv = load i32, ptr %i.ax, align 4, !range !39, !alias.scope !2401, !noalias !2402, !noundef !8 ; 2 uses
  %i.cw = call i8 @llvm.ucmp.i8.i32(i32 %i.cu, i32 %i.cv)
  %i.cx = icmp eq i32 %i.cu, %i.cv
  br i1 %i.cx, label %bb.s, label %_RNCINvMNtCshzWfHUSfYae_4core5sliceSINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtBC_9predicate19ProjectionPredicateB1p_EE20sort_unstable_by_keyNtNtB1t_6def_id6TermIdNCNvMs1_NtB1v_5lowerNtB3X_17TyLoweringContext15lower_dyn_traits4_0E0B1v_.exit5

bb.s:                                             ; preds = %bb.r
  %i.cy = load i32, ptr %i.ay, align 4, !alias.scope !2399, !noalias !2400, !noundef !8
  %i.cz = load i32, ptr %i.az, align 4, !alias.scope !2401, !noalias !2402, !noundef !8
  %i.da = call i8 @llvm.ucmp.i8.i32(i32 %i.cy, i32 %i.cz)
  br label %_RNCINvMNtCshzWfHUSfYae_4core5sliceSINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtBC_9predicate19ProjectionPredicateB1p_EE20sort_unstable_by_keyNtNtB1t_6def_id6TermIdNCNvMs1_NtB1v_5lowerNtB3X_17TyLoweringContext15lower_dyn_traits4_0E0B1v_.exit5

bb.t:                                             ; preds = %bb.q
  %i.db = load i32, ptr %i.ay, align 4, !alias.scope !2399, !noalias !2400, !noundef !8
  %i.dc = load i32, ptr %i.az, align 4, !alias.scope !2401, !noalias !2402, !noundef !8
  %i.dd = call i8 @llvm.ucmp.i8.i32(i32 %i.db, i32 %i.dc)
  br label %_RNCINvMNtCshzWfHUSfYae_4core5sliceSINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtBC_9predicate19ProjectionPredicateB1p_EE20sort_unstable_by_keyNtNtB1t_6def_id6TermIdNCNvMs1_NtB1v_5lowerNtB3X_17TyLoweringContext15lower_dyn_traits4_0E0B1v_.exit5

_RNCINvMNtCshzWfHUSfYae_4core5sliceSINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtBC_9predicate19ProjectionPredicateB1p_EE20sort_unstable_by_keyNtNtB1t_6def_id6TermIdNCNvMs1_NtB1v_5lowerNtB3X_17TyLoweringContext15lower_dyn_traits4_0E0B1v_.exit5: ; preds = %bb.o, %bb.q, %bb.r, %bb.s, %bb.t
  %.sroa.0.1.i.i.i.i4 = phi i8 [ %i.cw, %bb.r ], [ %i.cl, %bb.o ], [ %i.da, %bb.s ], [ %i.dd, %bb.t ], [ %i.cr, %bb.q ]
  %i.de = icmp slt i8 %.sroa.0.1.i.i.i.i4, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2388
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2388
  br i1 %i.de, label %bb.u, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtB17_9predicate19ProjectionPredicateB1U_EENCINvMB6_SB12_20sort_unstable_by_keyNtNtB1Y_6def_id6TermIdNCNvMs1_NtB20_5lowerNtB4H_17TyLoweringContext15lower_dyn_traits4_0E0EB20_.exit

bb.u:                                             ; preds = %_RNCINvMNtCshzWfHUSfYae_4core5sliceSINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtBC_9predicate19ProjectionPredicateB1p_EE20sort_unstable_by_keyNtNtB1t_6def_id6TermIdNCNvMs1_NtB1v_5lowerNtB3X_17TyLoweringContext15lower_dyn_traits4_0E0B1v_.exit5
  %i.df = add nuw nsw i64 %.sroa.01.1.i14, 1      ; 2 uses
  %exitcond22.not = icmp eq i64 %i.df, %1
  br i1 %exitcond22.not, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtB17_9predicate19ProjectionPredicateB1U_EENCINvMB6_SB12_20sort_unstable_by_keyNtNtB1Y_6def_id6TermIdNCNvMs1_NtB20_5lowerNtB4H_17TyLoweringContext15lower_dyn_traits4_0E0EB20_.exit, label %bb.o

_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtB17_9predicate19ProjectionPredicateB1U_EENCINvMB6_SB12_20sort_unstable_by_keyNtNtB1Y_6def_id6TermIdNCNvMs1_NtB20_5lowerNtB4H_17TyLoweringContext15lower_dyn_traits4_0E0EB20_.exit: ; preds = %_RNCINvMNtCshzWfHUSfYae_4core5sliceSINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtBC_9predicate19ProjectionPredicateB1p_EE20sort_unstable_by_keyNtNtB1t_6def_id6TermIdNCNvMs1_NtB1v_5lowerNtB3X_17TyLoweringContext15lower_dyn_traits4_0E0B1v_.exit3, %bb.n, %_RNCINvMNtCshzWfHUSfYae_4core5sliceSINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtBC_9predicate19ProjectionPredicateB1p_EE20sort_unstable_by_keyNtNtB1t_6def_id6TermIdNCNvMs1_NtB1v_5lowerNtB3X_17TyLoweringContext15lower_dyn_traits4_0E0B1v_.exit5, %bb.u
  %.sroa.0.0.i = phi i64 [ %1, %bb.u ], [ %.sroa.01.1.i14, %_RNCINvMNtCshzWfHUSfYae_4core5sliceSINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtBC_9predicate19ProjectionPredicateB1p_EE20sort_unstable_by_keyNtNtB1t_6def_id6TermIdNCNvMs1_NtB1v_5lowerNtB3X_17TyLoweringContext15lower_dyn_traits4_0E0B1v_.exit5 ], [ %1, %bb.n ], [ %.sroa.01.0.i12, %_RNCINvMNtCshzWfHUSfYae_4core5sliceSINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtBC_9predicate19ProjectionPredicateB1p_EE20sort_unstable_by_keyNtNtB1t_6def_id6TermIdNCNvMs1_NtB1v_5lowerNtB3X_17TyLoweringContext15lower_dyn_traits4_0E0B1v_.exit3 ] ; 2 uses
  %i.dg = icmp samesign ule i64 %.sroa.0.0.i, %1
  call void @llvm.assume(i1 %i.dg)
  %i.dh = icmp eq i64 %.sroa.0.0.i, %1
  br i1 %i.dh, label %bb.v, label %bb.w

bb.v:                                             ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtB17_9predicate19ProjectionPredicateB1U_EENCINvMB6_SB12_20sort_unstable_by_keyNtNtB1Y_6def_id6TermIdNCNvMs1_NtB20_5lowerNtB4H_17TyLoweringContext15lower_dyn_traits4_0E0EB20_.exit
  br i1 %i.ar, label %.lr.ph.preheader.i.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtBz_9predicate19ProjectionPredicateB1m_EE7reverseB1s_.exit

bb.w:                                             ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtB17_9predicate19ProjectionPredicateB1U_EENCINvMB6_SB12_20sort_unstable_by_keyNtNtB1Y_6def_id6TermIdNCNvMs1_NtB20_5lowerNtB4H_17TyLoweringContext15lower_dyn_traits4_0E0EB20_.exit
  %i.di = or i64 %1, 1
  %i.dj = call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.di, i1 true)
  %i.dk = trunc nuw nsw i64 %i.dj to i32
  %i.dl = shl nuw nsw i32 %i.dk, 1
  %i.dm = xor i32 %i.dl, 126
  call fastcc void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort8unstable9quicksort9quicksortINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtB1c_9predicate19ProjectionPredicateB1Z_EENCINvMB8_SB17_20sort_unstable_by_keyNtNtB23_6def_id6TermIdNCNvMs1_NtB25_5lowerNtB4M_17TyLoweringContext15lower_dyn_traits4_0E0EB25_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(40) null, i32 noundef %i.dm, ptr noalias nofree noundef align 8 dereferenceable(8) %2)
  br label %_RNvMNtCshzWfHUSfYae_4core5sliceSINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtBz_9predicate19ProjectionPredicateB1m_EE7reverseB1s_.exit

_RNvMNtCshzWfHUSfYae_4core5sliceSINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtBz_9predicate19ProjectionPredicateB1m_EE7reverseB1s_.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtB15_9predicate19ProjectionPredicateB1S_EEEB1Y_.exit.i.i, %.preheader10, %bb.a, %bb.v, %bb.w
  ret void

.lr.ph.preheader.i.i:                             ; preds = %.preheader, %bb.v
  %i.dn = lshr i64 %1, 1
  %i.do = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %1
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtB15_9predicate19ProjectionPredicateB1S_EEEB1Y_.exit.i.i, %.lr.ph.preheader.i.i
  %.sroa.0.017.i.i = phi i64 [ %i.dt, %_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtB15_9predicate19ProjectionPredicateB1S_EEEB1Y_.exit.i.i ], [ 0, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.dp = xor i64 %.sroa.0.017.i.i, -1
  %i.dq = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %.sroa.0.017.i.i
  %i.dr = getelementptr [40 x i8], ptr %i.do, i64 %i.dp
  invoke void @_RINvNvNtCshzWfHUSfYae_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs8K4cjrcxBsw_6hir_ty(ptr noundef nonnull %i.dq, ptr noundef nonnull %i.dr, i64 noundef 5)
          to label %_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtB15_9predicate19ProjectionPredicateB1S_EEEB1Y_.exit.i.i unwind label %bb.x

bb.x:                                             ; preds = %.lr.ph.i.i
  %i.ds = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking19panic_cannot_unwind() #43
  unreachable

_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtB15_9predicate19ProjectionPredicateB1S_EEEB1Y_.exit.i.i: ; preds = %.lr.ph.i.i
  %i.dt = add nuw nsw i64 %.sroa.0.017.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.dt, %i.dn
  br i1 %exitcond.not.i.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtBz_9predicate19ProjectionPredicateB1m_EE7reverseB1s_.exit, label %.lr.ph.i.i
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort8unstable7ipnsortNtCsileJQcQObtj_7hir_def7TraitIdNvYBT_NtNtB8_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull align 4 %0, i64 noundef range(i64 0, 1152921504606846976) %1, ptr noalias nofree noundef nonnull %2) unnamed_addr #8 {
bb.a:
  %i.a = icmp samesign ult i64 %1, 2
  br i1 %i.a, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtCsileJQcQObtj_7hir_def7TraitId7reverseCs8K4cjrcxBsw_6hir_ty.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val9 = load i32, ptr %i.b, align 4, !range !39, !noundef !8 ; 4 uses
  %i.c = getelementptr i8, ptr %0, i64 12
  %.val10 = load i32, ptr %i.c, align 4           ; 3 uses
  %.val11 = load i32, ptr %0, align 4, !range !39, !noundef !8 ; 2 uses
  %i.d = getelementptr i8, ptr %0, i64 4
  %.val12 = load i32, ptr %i.d, align 4
  %i.e = icmp eq i32 %.val9, %.val11
  %i.f = icmp ult i32 %.val10, %.val12
  %i.g = icmp ult i32 %.val9, %.val11
  %i.h = select i1 %i.e, i1 %i.f, i1 %i.g         ; 2 uses
  %.not27 = icmp eq i64 %1, 2                     ; 2 uses
  br i1 %i.h, label %.preheader, label %.preheader17

.preheader17:                                     ; preds = %bb.b
  br i1 %.not27, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtCsileJQcQObtj_7hir_def7TraitIdNvYB12_NtNtB8_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty.exit, label %.lr.ph

.preheader:                                       ; preds = %bb.b
  br i1 %.not27, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtCsileJQcQObtj_7hir_def7TraitIdNvYB12_NtNtB8_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty.exit, label %.lr.ph23

.lr.ph:                                           ; preds = %.preheader17, %bb.c
  %.val8 = phi i32 [ %.val6, %bb.c ], [ %.val10, %.preheader17 ]
  %.val7 = phi i32 [ %.val5, %bb.c ], [ %.val9, %.preheader17 ] ; 2 uses
  %.sroa.01.0.i19 = phi i64 [ %i.o, %bb.c ], [ 2, %.preheader17 ] ; 3 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.0.i19 ; 2 uses
  %.val5 = load i32, ptr %i.i, align 4, !range !39, !noundef !8 ; 3 uses
  %i.j = getelementptr i8, ptr %i.i, i64 4
  %.val6 = load i32, ptr %i.j, align 4            ; 2 uses
  %i.k = icmp eq i32 %.val5, %.val7
  %i.l = icmp ult i32 %.val6, %.val8
  %i.m = icmp ult i32 %.val5, %.val7
  %i.n = select i1 %i.k, i1 %i.l, i1 %i.m
  br i1 %i.n, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtCsileJQcQObtj_7hir_def7TraitIdNvYB12_NtNtB8_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.o = add nuw nsw i64 %.sroa.01.0.i19, 1       ; 2 uses
  %exitcond.not = icmp eq i64 %i.o, %1
  br i1 %exitcond.not, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtCsileJQcQObtj_7hir_def7TraitIdNvYB12_NtNtB8_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty.exit.thread, label %.lr.ph

.lr.ph23:                                         ; preds = %.preheader, %bb.d
  %.val4 = phi i32 [ %.val2, %bb.d ], [ %.val10, %.preheader ]
  %.val3 = phi i32 [ %.val, %bb.d ], [ %.val9, %.preheader ] ; 2 uses
  %.sroa.01.1.i22 = phi i64 [ %i.v, %bb.d ], [ 2, %.preheader ] ; 3 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.01.1.i22 ; 2 uses
  %.val = load i32, ptr %i.p, align 4, !range !39, !noundef !8 ; 3 uses
  %i.q = getelementptr i8, ptr %i.p, i64 4
  %.val2 = load i32, ptr %i.q, align 4            ; 2 uses
  %i.r = icmp eq i32 %.val, %.val3
  %i.s = icmp ult i32 %.val2, %.val4
  %i.t = icmp ult i32 %.val, %.val3
  %i.u = select i1 %i.r, i1 %i.s, i1 %i.t
  br i1 %i.u, label %bb.d, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtCsileJQcQObtj_7hir_def7TraitIdNvYB12_NtNtB8_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty.exit

bb.d:                                             ; preds = %.lr.ph23
  %i.v = add nuw nsw i64 %.sroa.01.1.i22, 1       ; 2 uses
  %exitcond30.not = icmp eq i64 %i.v, %1
  br i1 %exitcond30.not, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtCsileJQcQObtj_7hir_def7TraitIdNvYB12_NtNtB8_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty.exit.thread, label %.lr.ph23

_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtCsileJQcQObtj_7hir_def7TraitIdNvYB12_NtNtB8_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty.exit: ; preds = %.lr.ph, %.lr.ph23, %.preheader17, %.preheader
  %.sroa.0.0.i = phi i64 [ 2, %.preheader17 ], [ 2, %.preheader ], [ %.sroa.01.1.i22, %.lr.ph23 ], [ %.sroa.01.0.i19, %.lr.ph ] ; 2 uses
  %i.w = icmp samesign ule i64 %.sroa.0.0.i, %1
  tail call void @llvm.assume(i1 %i.w)
  %i.x = icmp eq i64 %.sroa.0.0.i, %1
  br i1 %i.x, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtCsileJQcQObtj_7hir_def7TraitIdNvYB12_NtNtB8_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty.exit.thread, label %bb.e

_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtCsileJQcQObtj_7hir_def7TraitIdNvYB12_NtNtB8_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty.exit.thread: ; preds = %bb.c, %bb.d, %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtCsileJQcQObtj_7hir_def7TraitIdNvYB12_NtNtB8_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty.exit
  br i1 %i.h, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtCsileJQcQObtj_7hir_def7TraitId12split_at_mutCs8K4cjrcxBsw_6hir_ty.exit11.preheader.i.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtCsileJQcQObtj_7hir_def7TraitId7reverseCs8K4cjrcxBsw_6hir_ty.exit

bb.e:                                             ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtCsileJQcQObtj_7hir_def7TraitIdNvYB12_NtNtB8_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty.exit
  %i.y = or i64 %1, 1
  %i.z = tail call range(i64 4, 64) i64 @llvm.ctlz.i64(i64 %i.y, i1 true)
  %i.aa = trunc nuw nsw i64 %i.z to i32
  %i.ab = shl nuw nsw i32 %i.aa, 1
  %i.ac = xor i32 %i.ab, 126
  tail call fastcc void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort8unstable9quicksort9quicksortNtCsileJQcQObtj_7hir_def7TraitIdNvYB17_NtNtBa_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull align 4 %0, i64 noundef %1, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(8) null, i32 noundef %i.ac, ptr noalias nofree noundef nonnull %2)
  br label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtCsileJQcQObtj_7hir_def7TraitId7reverseCs8K4cjrcxBsw_6hir_ty.exit

_RNvMNtCshzWfHUSfYae_4core5sliceSNtCsileJQcQObtj_7hir_def7TraitId7reverseCs8K4cjrcxBsw_6hir_ty.exit: ; preds = %_RNvMNtCshzWfHUSfYae_4core5sliceSNtCsileJQcQObtj_7hir_def7TraitId12split_at_mutCs8K4cjrcxBsw_6hir_ty.exit11.i.i.prol.loopexit, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtCsileJQcQObtj_7hir_def7TraitId12split_at_mutCs8K4cjrcxBsw_6hir_ty.exit11.i.i, %middle.block, %bb.a, %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtCsileJQcQObtj_7hir_def7TraitIdNvYB12_NtNtB8_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty.exit.thread, %bb.e
  ret void

_RNvMNtCshzWfHUSfYae_4core5sliceSNtCsileJQcQObtj_7hir_def7TraitId12split_at_mutCs8K4cjrcxBsw_6hir_ty.exit11.preheader.i.i: ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runNtCsileJQcQObtj_7hir_def7TraitIdNvYB12_NtNtB8_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty.exit.thread
  %i.ad = lshr i64 %1, 1                          ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2410)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2411)
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %1 ; 4 uses
  %min.iters.check = icmp samesign ult i64 %1, 32
  br i1 %min.iters.check, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtCsileJQcQObtj_7hir_def7TraitId12split_at_mutCs8K4cjrcxBsw_6hir_ty.exit11.i.i.preheader.a, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %_RNvMNtCshzWfHUSfYae_4core5sliceSNtCsileJQcQObtj_7hir_def7TraitId12split_at_mutCs8K4cjrcxBsw_6hir_ty.exit11.preheader.i.i
  %3 = add nsw i64 %i.ad, -1                      ; 2 uses
  %4 = shl nuw nsw i64 %1, 3
  %5 = getelementptr i8, ptr %0, i64 %4
  %scevgep = getelementptr i8, ptr %5, i64 -8     ; 2 uses
  %mul.result.neg = mul nsw i64 %3, -8
  %mul.overflow = icmp ugt i64 %3, 2305843009213693951
  %6 = getelementptr i8, ptr %scevgep, i64 %mul.result.neg
  %7 = icmp ugt ptr %6, %scevgep
  %8 = or i1 %7, %mul.overflow
  br i1 %8, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtCsileJQcQObtj_7hir_def7TraitId12split_at_mutCs8K4cjrcxBsw_6hir_ty.exit11.i.i.preheader.a, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %n.vec = and i64 %i.ad, 576460752303423486      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.af = xor i64 %index, -1
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 2 uses
  %i.ah = getelementptr [8 x i8], ptr %i.ae, i64 %i.af ; 2 uses
  %wide.vec = load <4 x i32>, ptr %i.ag, align 4, !alias.scope !2412, !noalias !2411
  %i.ai = getelementptr i8, ptr %i.ah, i64 -8
  %wide.load = load <2 x i64>, ptr %i.ai, align 4, !alias.scope !2413, !noalias !2410
  %reverse = shufflevector <2 x i64> %wide.load, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i64> %reverse, ptr %i.ag, align 4, !alias.scope !2412, !noalias !2411
  %i.aj = getelementptr inbounds i8, ptr %i.ah, i64 -8
  %interleaved.vec = shufflevector <4 x i32> %wide.vec, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x i32> %interleaved.vec, ptr %i.aj, align 4, !alias.scope !2413, !noalias !2410
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ak = icmp eq i64 %index.next, %n.vec
  br i1 %i.ak, label %middle.block, label %vector.body, !llvm.loop !2408

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ad, %n.vec
  br i1 %cmp.n, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtCsileJQcQObtj_7hir_def7TraitId7reverseCs8K4cjrcxBsw_6hir_ty.exit, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtCsileJQcQObtj_7hir_def7TraitId12split_at_mutCs8K4cjrcxBsw_6hir_ty.exit11.i.i.preheader.a

_RNvMNtCshzWfHUSfYae_4core5sliceSNtCsileJQcQObtj_7hir_def7TraitId12split_at_mutCs8K4cjrcxBsw_6hir_ty.exit11.i.i.preheader.a: ; preds = %vector.scevcheck, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtCsileJQcQObtj_7hir_def7TraitId12split_at_mutCs8K4cjrcxBsw_6hir_ty.exit11.preheader.i.i, %middle.block
  %.sroa.0.016.i.i.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtCsileJQcQObtj_7hir_def7TraitId12split_at_mutCs8K4cjrcxBsw_6hir_ty.exit11.preheader.i.i ], [ %n.vec, %middle.block ] ; 5 uses
  %.neg = or disjoint i64 %.sroa.0.016.i.i.ph, 1
  %9 = and i64 %1, 2
  %lcmp.mod.not = icmp eq i64 %9, 0
  br i1 %lcmp.mod.not, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtCsileJQcQObtj_7hir_def7TraitId12split_at_mutCs8K4cjrcxBsw_6hir_ty.exit11.i.i.prol.loopexit, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtCsileJQcQObtj_7hir_def7TraitId12split_at_mutCs8K4cjrcxBsw_6hir_ty.exit11.i.i.prol

_RNvMNtCshzWfHUSfYae_4core5sliceSNtCsileJQcQObtj_7hir_def7TraitId12split_at_mutCs8K4cjrcxBsw_6hir_ty.exit11.i.i.prol: ; preds = %_RNvMNtCshzWfHUSfYae_4core5sliceSNtCsileJQcQObtj_7hir_def7TraitId12split_at_mutCs8K4cjrcxBsw_6hir_ty.exit11.i.i.preheader.a
  %10 = xor i64 %.sroa.0.016.i.i.ph, -1
  %11 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.0.016.i.i.ph ; 2 uses
  %12 = getelementptr [8 x i8], ptr %i.ae, i64 %10 ; 2 uses
  %13 = load i64, ptr %12, align 4, !alias.scope !2413, !noalias !2410
  %14 = load <2 x i32>, ptr %11, align 4, !alias.scope !2412, !noalias !2411
  store i64 %13, ptr %11, align 4, !alias.scope !2412, !noalias !2411
  store <2 x i32> %14, ptr %12, align 4, !alias.scope !2413, !noalias !2410
  %15 = or disjoint i64 %.sroa.0.016.i.i.ph, 1
  br label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtCsileJQcQObtj_7hir_def7TraitId12split_at_mutCs8K4cjrcxBsw_6hir_ty.exit11.i.i.prol.loopexit

_RNvMNtCshzWfHUSfYae_4core5sliceSNtCsileJQcQObtj_7hir_def7TraitId12split_at_mutCs8K4cjrcxBsw_6hir_ty.exit11.i.i.prol.loopexit: ; preds = %_RNvMNtCshzWfHUSfYae_4core5sliceSNtCsileJQcQObtj_7hir_def7TraitId12split_at_mutCs8K4cjrcxBsw_6hir_ty.exit11.i.i.prol, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtCsileJQcQObtj_7hir_def7TraitId12split_at_mutCs8K4cjrcxBsw_6hir_ty.exit11.i.i.preheader.a
  %.sroa.0.016.i.i.unr = phi i64 [ %.sroa.0.016.i.i.ph, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtCsileJQcQObtj_7hir_def7TraitId12split_at_mutCs8K4cjrcxBsw_6hir_ty.exit11.i.i.preheader.a ], [ %15, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtCsileJQcQObtj_7hir_def7TraitId12split_at_mutCs8K4cjrcxBsw_6hir_ty.exit11.i.i.prol ]
  %16 = icmp eq i64 %i.ad, %.neg
  br i1 %16, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtCsileJQcQObtj_7hir_def7TraitId7reverseCs8K4cjrcxBsw_6hir_ty.exit, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtCsileJQcQObtj_7hir_def7TraitId12split_at_mutCs8K4cjrcxBsw_6hir_ty.exit11.i.i

_RNvMNtCshzWfHUSfYae_4core5sliceSNtCsileJQcQObtj_7hir_def7TraitId12split_at_mutCs8K4cjrcxBsw_6hir_ty.exit11.i.i: ; preds = %_RNvMNtCshzWfHUSfYae_4core5sliceSNtCsileJQcQObtj_7hir_def7TraitId12split_at_mutCs8K4cjrcxBsw_6hir_ty.exit11.i.i.prol.loopexit, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtCsileJQcQObtj_7hir_def7TraitId12split_at_mutCs8K4cjrcxBsw_6hir_ty.exit11.i.i
  %.sroa.0.016.i.i = phi i64 [ %i.aq, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtCsileJQcQObtj_7hir_def7TraitId12split_at_mutCs8K4cjrcxBsw_6hir_ty.exit11.i.i ], [ %.sroa.0.016.i.i.unr, %_RNvMNtCshzWfHUSfYae_4core5sliceSNtCsileJQcQObtj_7hir_def7TraitId12split_at_mutCs8K4cjrcxBsw_6hir_ty.exit11.i.i.prol.loopexit ] ; 5 uses
  %i.al = xor i64 %.sroa.0.016.i.i, -1
  %17 = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.0.016.i.i ; 2 uses
  %18 = getelementptr [8 x i8], ptr %i.ae, i64 %i.al ; 2 uses
  %19 = load i64, ptr %18, align 4, !alias.scope !2413, !noalias !2410
  %20 = load <2 x i32>, ptr %17, align 4, !alias.scope !2412, !noalias !2411
  store i64 %19, ptr %17, align 4, !alias.scope !2412, !noalias !2411
  store <2 x i32> %20, ptr %18, align 4, !alias.scope !2413, !noalias !2410
  %21 = sub i64 -2, %.sroa.0.016.i.i
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.0.016.i.i
  %22 = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 2 uses
  %i.an = getelementptr [8 x i8], ptr %i.ae, i64 %21 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 4, !alias.scope !2413, !noalias !2410
  %i.ap = load <2 x i32>, ptr %22, align 4, !alias.scope !2412, !noalias !2411
  store i64 %i.ao, ptr %22, align 4, !alias.scope !2412, !noalias !2411
  store <2 x i32> %i.ap, ptr %i.an, align 4, !alias.scope !2413, !noalias !2410
  %i.aq = add nuw nsw i64 %.sroa.0.016.i.i, 2     ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %i.aq, %i.ad
  br i1 %exitcond.not.i.i.1, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtCsileJQcQObtj_7hir_def7TraitId7reverseCs8K4cjrcxBsw_6hir_ty.exit, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtCsileJQcQObtj_7hir_def7TraitId12split_at_mutCs8K4cjrcxBsw_6hir_ty.exit11.i.i, !llvm.loop !2409
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort8unstable7ipnsortTNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor16MaybeInfiniteIntiENvYBT_NtNtB8_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull align 16 %0, i64 noundef range(i64 0, 192153584101141163) %1, ptr noalias nofree noundef nonnull %2) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp samesign ult i64 %1, 2
  br i1 %i.a, label %_RNvMNtCshzWfHUSfYae_4core5sliceSTNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor16MaybeInfiniteIntiE7reverseCs8K4cjrcxBsw_6hir_ty.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2441)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2442)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2443)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2444)
  %i.c = tail call noundef range(i8 0, 3) i8 @_RINvNtCshzWfHUSfYae_4core3cmp21default_chaining_implNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor16MaybeInfiniteIntBO_NvMB2_NtB2_8Ordering5is_ltECs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.b, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %0)
  switch i8 %i.c, label %.preheader [
    i8 2, label %_RNvYNvYTNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor16MaybeInfiniteIntiENtNtCshzWfHUSfYae_4core3cmp10PartialOrd2ltINtNtNtB1t_3ops8function5FnMutTRB5_B2A_EE8call_mutCs8K4cjrcxBsw_6hir_ty.exit
    i8 0, label %.preheader17
  ]

.preheader:                                       ; preds = %_RNvYNvYTNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor16MaybeInfiniteIntiENtNtCshzWfHUSfYae_4core3cmp10PartialOrd2ltINtNtNtB1t_3ops8function5FnMutTRB5_B2A_EE8call_mutCs8K4cjrcxBsw_6hir_ty.exit, %bb.b
  %.not29 = icmp eq i64 %1, 2
  br i1 %.not29, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runTNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor16MaybeInfiniteIntiENvYB12_NtNtB8_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty.exit, label %.lr.ph24

_RNvYNvYTNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor16MaybeInfiniteIntiENtNtCshzWfHUSfYae_4core3cmp10PartialOrd2ltINtNtNtB1t_3ops8function5FnMutTRB5_B2A_EE8call_mutCs8K4cjrcxBsw_6hir_ty.exit: ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2445)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2446)
  %i.f = load i64, ptr %i.d, align 16, !alias.scope !2447, !noalias !2448, !noundef !8
  %i.g = load i64, ptr %i.e, align 16, !alias.scope !2448, !noalias !2447, !noundef !8
  %i.h = icmp slt i64 %i.f, %i.g
  br i1 %i.h, label %.preheader, label %.preheader17

.preheader17:                                     ; preds = %_RNvYNvYTNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor16MaybeInfiniteIntiENtNtCshzWfHUSfYae_4core3cmp10PartialOrd2ltINtNtNtB1t_3ops8function5FnMutTRB5_B2A_EE8call_mutCs8K4cjrcxBsw_6hir_ty.exit, %bb.b
  %.not = icmp eq i64 %1, 2
  br i1 %.not, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runTNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor16MaybeInfiniteIntiENvYB12_NtNtB8_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader17, %bb.c
  %.sroa.01.0.i19 = phi i64 [ %i.s, %bb.c ], [ 2, %.preheader17 ] ; 5 uses
  %i.i = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %.sroa.01.0.i19 ; 2 uses
  %i.j = add nsw i64 %.sroa.01.0.i19, -1          ; 2 uses
  %i.k = icmp samesign ult i64 %i.j, %1
  tail call void @llvm.assume(i1 %i.k)
  %i.l = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %i.j ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2449)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2450)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2451)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2452)
  %i.m = tail call noundef range(i8 0, 3) i8 @_RINvNtCshzWfHUSfYae_4core3cmp21default_chaining_implNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor16MaybeInfiniteIntBO_NvMB2_NtB2_8Ordering5is_ltECs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.i, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.l)
  switch i8 %i.m, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runTNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor16MaybeInfiniteIntiENvYB12_NtNtB8_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty.exit [
    i8 2, label %_RNvYNvYTNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor16MaybeInfiniteIntiENtNtCshzWfHUSfYae_4core3cmp10PartialOrd2ltINtNtNtB1t_3ops8function5FnMutTRB5_B2A_EE8call_mutCs8K4cjrcxBsw_6hir_ty.exit4
    i8 0, label %bb.c
  ]

_RNvYNvYTNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor16MaybeInfiniteIntiENtNtCshzWfHUSfYae_4core3cmp10PartialOrd2ltINtNtNtB1t_3ops8function5FnMutTRB5_B2A_EE8call_mutCs8K4cjrcxBsw_6hir_ty.exit4: ; preds = %.lr.ph
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2453)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2454)
  %i.p = load i64, ptr %i.n, align 16, !alias.scope !2455, !noalias !2456, !noundef !8
  %i.q = load i64, ptr %i.o, align 16, !alias.scope !2456, !noalias !2455, !noundef !8
  %i.r = icmp slt i64 %i.p, %i.q
  br i1 %i.r, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runTNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor16MaybeInfiniteIntiENvYB12_NtNtB8_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_RNvYNvYTNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor16MaybeInfiniteIntiENtNtCshzWfHUSfYae_4core3cmp10PartialOrd2ltINtNtNtB1t_3ops8function5FnMutTRB5_B2A_EE8call_mutCs8K4cjrcxBsw_6hir_ty.exit4
  %i.s = add nuw nsw i64 %.sroa.01.0.i19, 1       ; 2 uses
  %exitcond.not = icmp eq i64 %i.s, %1
  br i1 %exitcond.not, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runTNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor16MaybeInfiniteIntiENvYB12_NtNtB8_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty.exit, label %.lr.ph

.lr.ph24:                                         ; preds = %.preheader, %bb.d
  %.sroa.01.1.i23 = phi i64 [ %i.ad, %bb.d ], [ 2, %.preheader ] ; 5 uses
  %i.t = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %.sroa.01.1.i23 ; 2 uses
  %i.u = add nsw i64 %.sroa.01.1.i23, -1          ; 2 uses
  %i.v = icmp samesign ult i64 %i.u, %1
  tail call void @llvm.assume(i1 %i.v)
  %i.w = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %i.u ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2457)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2458)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2459)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2460)
  %i.x = tail call noundef range(i8 0, 3) i8 @_RINvNtCshzWfHUSfYae_4core3cmp21default_chaining_implNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor16MaybeInfiniteIntBO_NvMB2_NtB2_8Ordering5is_ltECs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.t, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.w)
  switch i8 %i.x, label %bb.d [
    i8 2, label %_RNvYNvYTNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor16MaybeInfiniteIntiENtNtCshzWfHUSfYae_4core3cmp10PartialOrd2ltINtNtNtB1t_3ops8function5FnMutTRB5_B2A_EE8call_mutCs8K4cjrcxBsw_6hir_ty.exit7
    i8 0, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runTNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor16MaybeInfiniteIntiENvYB12_NtNtB8_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty.exit
  ]

_RNvYNvYTNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor16MaybeInfiniteIntiENtNtCshzWfHUSfYae_4core3cmp10PartialOrd2ltINtNtNtB1t_3ops8function5FnMutTRB5_B2A_EE8call_mutCs8K4cjrcxBsw_6hir_ty.exit7: ; preds = %.lr.ph24
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2461)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2462)
  %i.aa = load i64, ptr %i.y, align 16, !alias.scope !2463, !noalias !2464, !noundef !8
  %i.ab = load i64, ptr %i.z, align 16, !alias.scope !2464, !noalias !2463, !noundef !8
  %i.ac = icmp slt i64 %i.aa, %i.ab
  br i1 %i.ac, label %bb.d, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runTNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor16MaybeInfiniteIntiENvYB12_NtNtB8_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty.exit

bb.d:                                             ; preds = %.lr.ph24, %_RNvYNvYTNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor16MaybeInfiniteIntiENtNtCshzWfHUSfYae_4core3cmp10PartialOrd2ltINtNtNtB1t_3ops8function5FnMutTRB5_B2A_EE8call_mutCs8K4cjrcxBsw_6hir_ty.exit7
  %i.ad = add nuw nsw i64 %.sroa.01.1.i23, 1      ; 2 uses
  %exitcond33.not = icmp eq i64 %i.ad, %1
  br i1 %exitcond33.not, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runTNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor16MaybeInfiniteIntiENvYB12_NtNtB8_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty.exit, label %.lr.ph24

_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runTNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor16MaybeInfiniteIntiENvYB12_NtNtB8_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty.exit: ; preds = %_RNvYNvYTNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor16MaybeInfiniteIntiENtNtCshzWfHUSfYae_4core3cmp10PartialOrd2ltINtNtNtB1t_3ops8function5FnMutTRB5_B2A_EE8call_mutCs8K4cjrcxBsw_6hir_ty.exit4, %bb.c, %.lr.ph, %_RNvYNvYTNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor16MaybeInfiniteIntiENtNtCshzWfHUSfYae_4core3cmp10PartialOrd2ltINtNtNtB1t_3ops8function5FnMutTRB5_B2A_EE8call_mutCs8K4cjrcxBsw_6hir_ty.exit7, %bb.d, %.lr.ph24, %.preheader17, %.preheader
  %.sroa.3.0.i = phi i1 [ true, %.preheader ], [ false, %.preheader17 ], [ true, %_RNvYNvYTNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor16MaybeInfiniteIntiENtNtCshzWfHUSfYae_4core3cmp10PartialOrd2ltINtNtNtB1t_3ops8function5FnMutTRB5_B2A_EE8call_mutCs8K4cjrcxBsw_6hir_ty.exit7 ], [ true, %.lr.ph24 ], [ true, %bb.d ], [ false, %.lr.ph ], [ false, %bb.c ], [ false, %_RNvYNvYTNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor16MaybeInfiniteIntiENtNtCshzWfHUSfYae_4core3cmp10PartialOrd2ltINtNtNtB1t_3ops8function5FnMutTRB5_B2A_EE8call_mutCs8K4cjrcxBsw_6hir_ty.exit4 ]
  %.sroa.0.0.i = phi i64 [ 2, %.preheader ], [ 2, %.preheader17 ], [ %.sroa.01.1.i23, %_RNvYNvYTNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor16MaybeInfiniteIntiENtNtCshzWfHUSfYae_4core3cmp10PartialOrd2ltINtNtNtB1t_3ops8function5FnMutTRB5_B2A_EE8call_mutCs8K4cjrcxBsw_6hir_ty.exit7 ], [ %1, %bb.d ], [ %.sroa.01.1.i23, %.lr.ph24 ], [ %.sroa.01.0.i19, %_RNvYNvYTNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor16MaybeInfiniteIntiENtNtCshzWfHUSfYae_4core3cmp10PartialOrd2ltINtNtNtB1t_3ops8function5FnMutTRB5_B2A_EE8call_mutCs8K4cjrcxBsw_6hir_ty.exit4 ], [ %1, %bb.c ], [ %.sroa.01.0.i19, %.lr.ph ] ; 2 uses
  %i.ae = icmp samesign ule i64 %.sroa.0.0.i, %1
  tail call void @llvm.assume(i1 %i.ae)
  %i.af = icmp eq i64 %.sroa.0.0.i, %1
  br i1 %i.af, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runTNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor16MaybeInfiniteIntiENvYB12_NtNtB8_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty.exit
  br i1 %.sroa.3.0.i, label %.lr.ph.preheader.i.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSTNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor16MaybeInfiniteIntiE7reverseCs8K4cjrcxBsw_6hir_ty.exit

bb.f:                                             ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runTNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor16MaybeInfiniteIntiENvYB12_NtNtB8_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty.exit
  %i.ag = or i64 %1, 1
  %i.ah = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.ag, i1 true)
  %i.ai = trunc nuw nsw i64 %i.ah to i32
  %i.aj = shl nuw nsw i32 %i.ai, 1
  %i.ak = xor i32 %i.aj, 126
  tail call fastcc void @_RINvNtNtNtNtCshzWfHUSfYae_4core5slice4sort8unstable9quicksort9quicksortTNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor16MaybeInfiniteIntiENvYB17_NtNtBa_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull align 16 %0, i64 noundef %1, ptr noalias nofree noundef readonly align 16 captures(address, read_provenance) dereferenceable_or_null(48) null, i32 noundef %i.ak, ptr noalias nofree noundef nonnull %2)
  br label %_RNvMNtCshzWfHUSfYae_4core5sliceSTNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor16MaybeInfiniteIntiE7reverseCs8K4cjrcxBsw_6hir_ty.exit

_RNvMNtCshzWfHUSfYae_4core5sliceSTNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor16MaybeInfiniteIntiE7reverseCs8K4cjrcxBsw_6hir_ty.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingTNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor16MaybeInfiniteIntiEECs8K4cjrcxBsw_6hir_ty.exit.i.i, %bb.a, %bb.e, %bb.f
  ret void

.lr.ph.preheader.i.i:                             ; preds = %bb.e
  %i.al = lshr i64 %1, 1
  %i.am = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %1
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingTNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor16MaybeInfiniteIntiEECs8K4cjrcxBsw_6hir_ty.exit.i.i, %.lr.ph.preheader.i.i
  %.sroa.0.017.i.i = phi i64 [ %i.ar, %_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingTNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor16MaybeInfiniteIntiEECs8K4cjrcxBsw_6hir_ty.exit.i.i ], [ 0, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.an = xor i64 %.sroa.0.017.i.i, -1
  %i.ao = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %.sroa.0.017.i.i
  %i.ap = getelementptr [48 x i8], ptr %i.am, i64 %i.an
  invoke void @_RINvNvNtCshzWfHUSfYae_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs8K4cjrcxBsw_6hir_ty(ptr noundef nonnull %i.ao, ptr noundef nonnull %i.ap, i64 noundef 6)
          to label %_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingTNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor16MaybeInfiniteIntiEECs8K4cjrcxBsw_6hir_ty.exit.i.i unwind label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking19panic_cannot_unwind() #43
  unreachable

_RINvNtCshzWfHUSfYae_4core10intrinsics25typed_swap_nonoverlappingTNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor16MaybeInfiniteIntiEECs8K4cjrcxBsw_6hir_ty.exit.i.i: ; preds = %.lr.ph.i.i
  %i.ar = add nuw nsw i64 %.sroa.0.017.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.ar, %i.al
  br i1 %exitcond.not.i.i, label %_RNvMNtCshzWfHUSfYae_4core5sliceSTNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor16MaybeInfiniteIntiE7reverseCs8K4cjrcxBsw_6hir_ty.exit, label %.lr.ph.i.i
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort8unstable7ipnsortmNvYmNtNtB8_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull align 4 %0, i64 noundef range(i64 0, 2305843009213693952) %1, ptr noalias nofree noundef nonnull %2) unnamed_addr #8 {
bb.a:
  %i.a = icmp samesign ult i64 %1, 2
  br i1 %i.a, label %_RNvMNtCshzWfHUSfYae_4core5sliceSm7reverseCs8K4cjrcxBsw_6hir_ty.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.val5 = load i32, ptr %i.b, align 4, !alias.scope !40, !noalias !41, !noundef !8 ; 3 uses
  %.val6 = load i32, ptr %0, align 4, !alias.scope !41, !noalias !40, !noundef !8
  %i.c = icmp ult i32 %.val5, %.val6              ; 2 uses
  %.not21 = icmp eq i64 %1, 2                     ; 2 uses
  br i1 %i.c, label %.preheader, label %.preheader11

.preheader11:                                     ; preds = %bb.b
  br i1 %.not21, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runmNvYmNtNtB8_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty.exit, label %.lr.ph

.preheader:                                       ; preds = %bb.b
  br i1 %.not21, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runmNvYmNtNtB8_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty.exit, label %.lr.ph17

.lr.ph:                                           ; preds = %.preheader11, %bb.c
  %.val4 = phi i32 [ %.val3, %bb.c ], [ %.val5, %.preheader11 ]
  %.sroa.01.0.i13 = phi i64 [ %i.f, %bb.c ], [ 2, %.preheader11 ] ; 3 uses
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.01.0.i13
  %.val3 = load i32, ptr %i.d, align 4, !alias.scope !40, !noalias !41, !noundef !8 ; 2 uses
  %i.e = icmp ult i32 %.val3, %.val4
  br i1 %i.e, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runmNvYmNtNtB8_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.f = add nuw nsw i64 %.sroa.01.0.i13, 1       ; 2 uses
  %exitcond.not = icmp eq i64 %i.f, %1
  br i1 %exitcond.not, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runmNvYmNtNtB8_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty.exit.thread, label %.lr.ph

.lr.ph17:                                         ; preds = %.preheader, %bb.d
  %.val2 = phi i32 [ %.val, %bb.d ], [ %.val5, %.preheader ]
  %.sroa.01.1.i16 = phi i64 [ %i.i, %bb.d ], [ 2, %.preheader ] ; 3 uses
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.sroa.01.1.i16
  %.val = load i32, ptr %i.g, align 4, !alias.scope !40, !noalias !41, !noundef !8 ; 2 uses
  %i.h = icmp ult i32 %.val, %.val2
  br i1 %i.h, label %bb.d, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runmNvYmNtNtB8_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty.exit

bb.d:                                             ; preds = %.lr.ph17
  %i.i = add nuw nsw i64 %.sroa.01.1.i16, 1       ; 2 uses
  %exitcond24.not = icmp eq i64 %i.i, %1
  br i1 %exitcond24.not, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runmNvYmNtNtB8_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty.exit.thread, label %.lr.ph17

_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runmNvYmNtNtB8_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty.exit: ; preds = %.lr.ph, %.lr.ph17, %.preheader11, %.preheader
  %.sroa.0.0.i = phi i64 [ 2, %.preheader11 ], [ 2, %.preheader ], [ %.sroa.01.1.i16, %.lr.ph17 ], [ %.sroa.01.0.i13, %.lr.ph ] ; 2 uses
end_hunk_0
begin_hunk_1_@llvm.vector.reduce.add.v2i64
!2209 = !{!1860}
!2210 = !{!1861, !1860}
!2211 = !{!1863}
!2212 = !{!1863, !1860}
!2213 = !{!1864, !1861, !1859}
!2214 = !{!1874, !1873, !1872, !1870, !1869, !1867, !1866, !1864, !1863, !1861, !1859, !1860}
!2215 = !{!1877}
!2216 = !{!1879}
!2217 = !{!1880}
!2218 = !{!1882}
!2219 = !{!1884}
!2220 = !{!1886}
!2221 = !{!1887}
!2222 = !{!1899, !1898, !1896, !1895, !1893, !1891, !1889, !1887, !1884, !1882, !1880}
!2223 = !{!1904, !1903, !1902, !1886, !1901, !1900, !1879}
!2224 = !{!1893, !1891, !1889, !1887, !1884, !1882, !1880}
!2225 = !{!1908, !1906, !1891, !1889, !1887, !1884, !1882, !1880}
!2226 = !{!1911, !1910, !1909, !1903, !1902, !1886, !1901, !1900, !1879}
!2227 = !{!1887, !1901, !1884, !1900, !1882, !1879, !1880}
!2228 = !{!1887, !1884, !1882, !1880}
!2229 = !{!1886, !1901, !1900, !1879}
!2230 = !{!1913}
!2231 = !{!1914}
!2232 = !{!1915}
!2233 = !{!1913, !1915, !1901, !1884, !1900, !1882, !1879, !1880}
!2234 = !{!1913, !1914}
!2235 = !{!1915, !1901, !1884, !1900, !1882, !1879, !1880}
!2236 = !{!1917}
!2237 = !{!1917, !1915, !1884, !1882, !1880}
!2238 = !{!1918, !1913, !1914, !1901, !1900, !1879}
!2239 = !{!1920}
!2240 = !{!1928, !1926, !1924, !1922, !1920, !1917, !1915, !1884, !1882, !1880}
!2241 = !{!1930, !1929, !1918, !1913, !1914, !1901, !1900, !1879}
!2242 = !{!1926, !1924, !1922, !1920, !1917, !1915, !1884, !1882, !1880}
!2243 = !{!1933, !1932, !1929, !1920, !1918, !1917, !1913, !1914, !1915, !1901, !1900, !1879}
!2244 = !{!1935}
!2245 = !{!1936}
!2246 = !{!1937, !1936}
!2247 = !{!1939}
!2248 = !{!1939, !1936}
!2249 = !{!1940, !1937, !1935}
!2250 = !{!1950, !1949, !1948, !1946, !1945, !1943, !1942, !1940, !1939, !1937, !1935, !1936}
!2251 = !{!1952}
!2252 = !{!1954}
!2253 = !{!1955}
!2254 = !{!1957}
!2255 = !{!1959}
!2256 = !{!1961}
!2257 = !{!1962}
!2258 = !{!1974, !1973, !1971, !1970, !1968, !1966, !1964, !1962, !1959, !1957, !1955}
!2259 = !{!1979, !1978, !1977, !1961, !1976, !1975, !1954}
!2260 = !{!1968, !1966, !1964, !1962, !1959, !1957, !1955}
!2261 = !{!1983, !1981, !1966, !1964, !1962, !1959, !1957, !1955}
!2262 = !{!1986, !1985, !1984, !1978, !1977, !1961, !1976, !1975, !1954}
!2263 = !{!1962, !1976, !1959, !1975, !1957, !1954, !1955}
!2264 = !{!1962, !1959, !1957, !1955}
!2265 = !{!1961, !1976, !1975, !1954}
!2266 = !{!1988}
!2267 = !{!1989}
!2268 = !{!1990}
!2269 = !{!1988, !1990, !1976, !1959, !1975, !1957, !1954, !1955}
!2270 = !{!1988, !1989}
!2271 = !{!1990, !1976, !1959, !1975, !1957, !1954, !1955}
!2272 = !{!1992}
!2273 = !{!1992, !1990, !1959, !1957, !1955}
!2274 = !{!1993, !1988, !1989, !1976, !1975, !1954}
!2275 = !{!1995}
!2276 = !{!2003, !2001, !1999, !1997, !1995, !1992, !1990, !1959, !1957, !1955}
!2277 = !{!2005, !2004, !1993, !1988, !1989, !1976, !1975, !1954}
!2278 = !{!2001, !1999, !1997, !1995, !1992, !1990, !1959, !1957, !1955}
!2279 = !{!2008, !2007, !2004, !1995, !1993, !1992, !1988, !1989, !1990, !1976, !1975, !1954}
!2280 = !{!2010}
!2281 = !{!2011}
!2282 = !{!2012, !2011}
!2283 = !{!2014}
!2284 = !{!2014, !2011}
!2285 = !{!2015, !2012, !2010}
!2286 = !{!2025, !2024, !2023, !2021, !2020, !2018, !2017, !2015, !2014, !2012, !2010, !2011}
!2287 = distinct !{!2287, i1 false, !"_RNvNtNtCshzWfHUSfYae_4core5slice5index16into_slice_range"}
!2288 = distinct !{!2288, !2287, !"_RNvNtNtCshzWfHUSfYae_4core5slice5index16into_slice_range: argument 0"}
!2289 = !{!2288}
!2290 = distinct !{!2290, i1 false, !"_RNvNtNtCshzWfHUSfYae_4core5slice5index16into_slice_range"}
!2291 = distinct !{!2291, !2290, !"_RNvNtNtCshzWfHUSfYae_4core5slice5index16into_slice_range: argument 0"}
!2292 = !{!2291}
!2293 = distinct !{!2293, i1 false, !"_RINvNvMNtCshzWfHUSfYae_4core5sliceSp7reverse7revswapINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir7BindingEECs8K4cjrcxBsw_6hir_ty"}
!2294 = distinct !{!2294, !2293, !"_RINvNvMNtCshzWfHUSfYae_4core5sliceSp7reverse7revswapINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir7BindingEECs8K4cjrcxBsw_6hir_ty: argument 0"}
!2295 = distinct !{!2295, !2293, !"_RINvNvMNtCshzWfHUSfYae_4core5sliceSp7reverse7revswapINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir7BindingEECs8K4cjrcxBsw_6hir_ty: argument 1"}
!2296 = distinct !{!2296, i1 false, !"_RNvMNtCshzWfHUSfYae_4core5sliceSINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir7BindingE7reverseCs8K4cjrcxBsw_6hir_ty"}
!2297 = distinct !{!2297, !2296, !"_RNvMNtCshzWfHUSfYae_4core5sliceSINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir7BindingE7reverseCs8K4cjrcxBsw_6hir_ty: argument 0"}
!2298 = distinct !{!2298, !31, !32}
!2299 = distinct !{!2299, !32, !31}
!2300 = !{!2294}
!2301 = !{!2295}
!2302 = !{!2294, !2297}
!2303 = !{!2295, !2297}
!2304 = distinct !{!2304, i1 false, !"_RNCINvMNtCshzWfHUSfYae_4core5sliceSINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtBC_9predicate19ProjectionPredicateB1p_EE20sort_unstable_by_keyNtNtB1t_6def_id6TermIdNCNvMs1_NtB1v_5lowerNtB3X_17TyLoweringContext15lower_dyn_traits4_0E0B1v_"}
!2305 = distinct !{!2305, !2304, !"_RNCINvMNtCshzWfHUSfYae_4core5sliceSINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtBC_9predicate19ProjectionPredicateB1p_EE20sort_unstable_by_keyNtNtB1t_6def_id6TermIdNCNvMs1_NtB1v_5lowerNtB3X_17TyLoweringContext15lower_dyn_traits4_0E0B1v_: argument 1"}
!2306 = distinct !{!2306, !2304, !"_RNCINvMNtCshzWfHUSfYae_4core5sliceSINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtBC_9predicate19ProjectionPredicateB1p_EE20sort_unstable_by_keyNtNtB1t_6def_id6TermIdNCNvMs1_NtB1v_5lowerNtB3X_17TyLoweringContext15lower_dyn_traits4_0E0B1v_: argument 0"}
!2307 = distinct !{!2307, i1 false, !"_RNCNvMs1_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB7_17TyLoweringContext15lower_dyn_traits4_0B9_"}
!2308 = distinct !{!2308, !2307, !"_RNCNvMs1_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB7_17TyLoweringContext15lower_dyn_traits4_0B9_: argument 0"}
!2309 = distinct !{!2309, !2307, !"_RNCNvMs1_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB7_17TyLoweringContext15lower_dyn_traits4_0B9_: argument 1"}
!2310 = distinct !{!2310, i1 false, !"_RNCNvMs1_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB7_17TyLoweringContext15lower_dyn_traits4_0B9_"}
!2311 = distinct !{!2311, !2310, !"_RNCNvMs1_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB7_17TyLoweringContext15lower_dyn_traits4_0B9_: argument 0"}
!2312 = distinct !{!2312, !2310, !"_RNCNvMs1_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB7_17TyLoweringContext15lower_dyn_traits4_0B9_: argument 1"}
!2313 = distinct !{!2313, i1 false, !"_RNvYNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_id6TermIdNtNtCshzWfHUSfYae_4core3cmp10PartialOrd2ltB8_"}
!2314 = distinct !{!2314, !2313, !"_RNvYNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_id6TermIdNtNtCshzWfHUSfYae_4core3cmp10PartialOrd2ltB8_: argument 0"}
!2315 = distinct !{!2315, !2313, !"_RNvYNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_id6TermIdNtNtCshzWfHUSfYae_4core3cmp10PartialOrd2ltB8_: argument 1"}
!2316 = distinct !{!2316, i1 false, !"_RNvXs5u_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_idNtB6_6TermIdNtNtCshzWfHUSfYae_4core3cmp10PartialOrd11partial_cmp"}
!2317 = distinct !{!2317, !2316, !"_RNvXs5u_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_idNtB6_6TermIdNtNtCshzWfHUSfYae_4core3cmp10PartialOrd11partial_cmp: argument 0"}
!2318 = distinct !{!2318, !2316, !"_RNvXs5u_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_idNtB6_6TermIdNtNtCshzWfHUSfYae_4core3cmp10PartialOrd11partial_cmp: argument 1"}
!2319 = distinct !{!2319, i1 false, !"_RNvXs5v_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_idNtB6_6TermIdNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp"}
!2320 = distinct !{!2320, !2319, !"_RNvXs5v_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_idNtB6_6TermIdNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp: argument 0"}
!2321 = distinct !{!2321, !2319, !"_RNvXs5v_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_idNtB6_6TermIdNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp: argument 1"}
!2322 = distinct !{!2322, i1 false, !"_RNCINvMNtCshzWfHUSfYae_4core5sliceSINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtBC_9predicate19ProjectionPredicateB1p_EE20sort_unstable_by_keyNtNtB1t_6def_id6TermIdNCNvMs1_NtB1v_5lowerNtB3X_17TyLoweringContext15lower_dyn_traits4_0E0B1v_"}
!2323 = distinct !{!2323, !2322, !"_RNCINvMNtCshzWfHUSfYae_4core5sliceSINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtBC_9predicate19ProjectionPredicateB1p_EE20sort_unstable_by_keyNtNtB1t_6def_id6TermIdNCNvMs1_NtB1v_5lowerNtB3X_17TyLoweringContext15lower_dyn_traits4_0E0B1v_: argument 1"}
!2324 = distinct !{!2324, !2322, !"_RNCINvMNtCshzWfHUSfYae_4core5sliceSINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtBC_9predicate19ProjectionPredicateB1p_EE20sort_unstable_by_keyNtNtB1t_6def_id6TermIdNCNvMs1_NtB1v_5lowerNtB3X_17TyLoweringContext15lower_dyn_traits4_0E0B1v_: argument 0"}
!2325 = distinct !{!2325, i1 false, !"_RNCNvMs1_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB7_17TyLoweringContext15lower_dyn_traits4_0B9_"}
!2326 = distinct !{!2326, !2325, !"_RNCNvMs1_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB7_17TyLoweringContext15lower_dyn_traits4_0B9_: argument 0"}
!2327 = distinct !{!2327, !2325, !"_RNCNvMs1_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB7_17TyLoweringContext15lower_dyn_traits4_0B9_: argument 1"}
!2328 = distinct !{!2328, i1 false, !"_RNCNvMs1_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB7_17TyLoweringContext15lower_dyn_traits4_0B9_"}
!2329 = distinct !{!2329, !2328, !"_RNCNvMs1_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB7_17TyLoweringContext15lower_dyn_traits4_0B9_: argument 0"}
!2330 = distinct !{!2330, !2328, !"_RNCNvMs1_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB7_17TyLoweringContext15lower_dyn_traits4_0B9_: argument 1"}
!2331 = distinct !{!2331, i1 false, !"_RNvYNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_id6TermIdNtNtCshzWfHUSfYae_4core3cmp10PartialOrd2ltB8_"}
!2332 = distinct !{!2332, !2331, !"_RNvYNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_id6TermIdNtNtCshzWfHUSfYae_4core3cmp10PartialOrd2ltB8_: argument 0"}
!2333 = distinct !{!2333, !2331, !"_RNvYNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_id6TermIdNtNtCshzWfHUSfYae_4core3cmp10PartialOrd2ltB8_: argument 1"}
!2334 = distinct !{!2334, i1 false, !"_RNvXs5u_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_idNtB6_6TermIdNtNtCshzWfHUSfYae_4core3cmp10PartialOrd11partial_cmp"}
!2335 = distinct !{!2335, !2334, !"_RNvXs5u_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_idNtB6_6TermIdNtNtCshzWfHUSfYae_4core3cmp10PartialOrd11partial_cmp: argument 0"}
!2336 = distinct !{!2336, !2334, !"_RNvXs5u_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_idNtB6_6TermIdNtNtCshzWfHUSfYae_4core3cmp10PartialOrd11partial_cmp: argument 1"}
!2337 = distinct !{!2337, i1 false, !"_RNvXs5v_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_idNtB6_6TermIdNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp"}
!2338 = distinct !{!2338, !2337, !"_RNvXs5v_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_idNtB6_6TermIdNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp: argument 0"}
!2339 = distinct !{!2339, !2337, !"_RNvXs5v_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_idNtB6_6TermIdNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp: argument 1"}
!2340 = distinct !{!2340, i1 false, !"_RNCINvMNtCshzWfHUSfYae_4core5sliceSINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtBC_9predicate19ProjectionPredicateB1p_EE20sort_unstable_by_keyNtNtB1t_6def_id6TermIdNCNvMs1_NtB1v_5lowerNtB3X_17TyLoweringContext15lower_dyn_traits4_0E0B1v_"}
!2341 = distinct !{!2341, !2340, !"_RNCINvMNtCshzWfHUSfYae_4core5sliceSINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtBC_9predicate19ProjectionPredicateB1p_EE20sort_unstable_by_keyNtNtB1t_6def_id6TermIdNCNvMs1_NtB1v_5lowerNtB3X_17TyLoweringContext15lower_dyn_traits4_0E0B1v_: argument 1"}
!2342 = distinct !{!2342, !2340, !"_RNCINvMNtCshzWfHUSfYae_4core5sliceSINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtBC_9predicate19ProjectionPredicateB1p_EE20sort_unstable_by_keyNtNtB1t_6def_id6TermIdNCNvMs1_NtB1v_5lowerNtB3X_17TyLoweringContext15lower_dyn_traits4_0E0B1v_: argument 0"}
!2343 = distinct !{!2343, i1 false, !"_RNCNvMs1_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB7_17TyLoweringContext15lower_dyn_traits4_0B9_"}
!2344 = distinct !{!2344, !2343, !"_RNCNvMs1_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB7_17TyLoweringContext15lower_dyn_traits4_0B9_: argument 0"}
!2345 = distinct !{!2345, !2343, !"_RNCNvMs1_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB7_17TyLoweringContext15lower_dyn_traits4_0B9_: argument 1"}
!2346 = distinct !{!2346, i1 false, !"_RNCNvMs1_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB7_17TyLoweringContext15lower_dyn_traits4_0B9_"}
!2347 = distinct !{!2347, !2346, !"_RNCNvMs1_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB7_17TyLoweringContext15lower_dyn_traits4_0B9_: argument 0"}
!2348 = distinct !{!2348, !2346, !"_RNCNvMs1_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB7_17TyLoweringContext15lower_dyn_traits4_0B9_: argument 1"}
!2349 = distinct !{!2349, i1 false, !"_RNvYNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_id6TermIdNtNtCshzWfHUSfYae_4core3cmp10PartialOrd2ltB8_"}
!2350 = distinct !{!2350, !2349, !"_RNvYNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_id6TermIdNtNtCshzWfHUSfYae_4core3cmp10PartialOrd2ltB8_: argument 0"}
!2351 = distinct !{!2351, !2349, !"_RNvYNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_id6TermIdNtNtCshzWfHUSfYae_4core3cmp10PartialOrd2ltB8_: argument 1"}
!2352 = distinct !{!2352, i1 false, !"_RNvXs5u_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_idNtB6_6TermIdNtNtCshzWfHUSfYae_4core3cmp10PartialOrd11partial_cmp"}
!2353 = distinct !{!2353, !2352, !"_RNvXs5u_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_idNtB6_6TermIdNtNtCshzWfHUSfYae_4core3cmp10PartialOrd11partial_cmp: argument 0"}
!2354 = distinct !{!2354, !2352, !"_RNvXs5u_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_idNtB6_6TermIdNtNtCshzWfHUSfYae_4core3cmp10PartialOrd11partial_cmp: argument 1"}
!2355 = distinct !{!2355, i1 false, !"_RNvXs5v_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_idNtB6_6TermIdNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp"}
!2356 = distinct !{!2356, !2355, !"_RNvXs5v_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_idNtB6_6TermIdNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp: argument 0"}
!2357 = distinct !{!2357, !2355, !"_RNvXs5v_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_idNtB6_6TermIdNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp: argument 1"}
!2358 = !{!2306, !2305}
!2359 = !{!2308, !2305}
!2360 = !{!2309, !2306, !2305}
!2361 = !{!2311, !2306}
!2362 = !{!2312, !2306, !2305}
!2363 = !{!2314}
!2364 = !{!2315}
!2365 = !{!2317}
!2366 = !{!2318}
!2367 = !{!2320}
!2368 = !{!2321}
!2369 = !{!2320, !2317, !2314}
!2370 = !{!2321, !2318, !2315, !2306, !2305}
!2371 = !{!2321, !2318, !2315}
!2372 = !{!2320, !2317, !2314, !2306, !2305}
!2373 = !{!2324, !2323}
!2374 = !{!2326, !2323}
!2375 = !{!2327, !2324, !2323}
!2376 = !{!2329, !2324}
!2377 = !{!2330, !2324, !2323}
!2378 = !{!2332}
!2379 = !{!2333}
!2380 = !{!2335}
!2381 = !{!2336}
!2382 = !{!2338}
!2383 = !{!2339}
!2384 = !{!2338, !2335, !2332}
!2385 = !{!2339, !2336, !2333, !2324, !2323}
!2386 = !{!2339, !2336, !2333}
!2387 = !{!2338, !2335, !2332, !2324, !2323}
!2388 = !{!2342, !2341}
!2389 = !{!2344, !2341}
!2390 = !{!2345, !2342, !2341}
!2391 = !{!2347, !2342}
!2392 = !{!2348, !2342, !2341}
!2393 = !{!2350}
!2394 = !{!2351}
!2395 = !{!2353}
!2396 = !{!2354}
!2397 = !{!2356}
!2398 = !{!2357}
!2399 = !{!2356, !2353, !2350}
!2400 = !{!2357, !2354, !2351, !2342, !2341}
!2401 = !{!2357, !2354, !2351}
!2402 = !{!2356, !2353, !2350, !2342, !2341}
!2403 = distinct !{!2403, i1 false, !"_RINvNvMNtCshzWfHUSfYae_4core5sliceSp7reverse7revswapNtCsileJQcQObtj_7hir_def7TraitIdECs8K4cjrcxBsw_6hir_ty"}
!2404 = distinct !{!2404, !2403, !"_RINvNvMNtCshzWfHUSfYae_4core5sliceSp7reverse7revswapNtCsileJQcQObtj_7hir_def7TraitIdECs8K4cjrcxBsw_6hir_ty: argument 0"}
!2405 = distinct !{!2405, !2403, !"_RINvNvMNtCshzWfHUSfYae_4core5sliceSp7reverse7revswapNtCsileJQcQObtj_7hir_def7TraitIdECs8K4cjrcxBsw_6hir_ty: argument 1"}
!2406 = distinct !{!2406, i1 false, !"_RNvMNtCshzWfHUSfYae_4core5sliceSNtCsileJQcQObtj_7hir_def7TraitId7reverseCs8K4cjrcxBsw_6hir_ty"}
!2407 = distinct !{!2407, !2406, !"_RNvMNtCshzWfHUSfYae_4core5sliceSNtCsileJQcQObtj_7hir_def7TraitId7reverseCs8K4cjrcxBsw_6hir_ty: argument 0"}
!2408 = distinct !{!2408, !31, !32}
!2409 = distinct !{!2409, !31}
!2410 = !{!2404}
!2411 = !{!2405}
!2412 = !{!2404, !2407}
!2413 = !{!2405, !2407}
!2414 = distinct !{!2414, i1 false, !"_RNvYNvYTNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor16MaybeInfiniteIntiENtNtCshzWfHUSfYae_4core3cmp10PartialOrd2ltINtNtNtB1t_3ops8function5FnMutTRB5_B2A_EE8call_mutCs8K4cjrcxBsw_6hir_ty"}
!2415 = distinct !{!2415, !2414, !"_RNvYNvYTNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor16MaybeInfiniteIntiENtNtCshzWfHUSfYae_4core3cmp10PartialOrd2ltINtNtNtB1t_3ops8function5FnMutTRB5_B2A_EE8call_mutCs8K4cjrcxBsw_6hir_ty: argument 0"}
!2416 = distinct !{!2416, !2414, !"_RNvYNvYTNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor16MaybeInfiniteIntiENtNtCshzWfHUSfYae_4core3cmp10PartialOrd2ltINtNtNtB1t_3ops8function5FnMutTRB5_B2A_EE8call_mutCs8K4cjrcxBsw_6hir_ty: argument 1"}
!2417 = distinct !{!2417, i1 false, !"_RNvXsc_NtCshzWfHUSfYae_4core5tupleTNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor16MaybeInfiniteIntiENtNtB7_3cmp10PartialOrd2ltCs8K4cjrcxBsw_6hir_ty"}
!2418 = distinct !{!2418, !2417, !"_RNvXsc_NtCshzWfHUSfYae_4core5tupleTNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor16MaybeInfiniteIntiENtNtB7_3cmp10PartialOrd2ltCs8K4cjrcxBsw_6hir_ty: argument 0"}
!2419 = distinct !{!2419, !2417, !"_RNvXsc_NtCshzWfHUSfYae_4core5tupleTNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor16MaybeInfiniteIntiENtNtB7_3cmp10PartialOrd2ltCs8K4cjrcxBsw_6hir_ty: argument 1"}
!2420 = distinct !{!2420, i1 false, !"_RNvXs16_NtNtCshzWfHUSfYae_4core3cmp5implsiNtB8_10PartialOrd2lt"}
!2421 = distinct !{!2421, !2420, !"_RNvXs16_NtNtCshzWfHUSfYae_4core3cmp5implsiNtB8_10PartialOrd2lt: argument 0"}
!2422 = distinct !{!2422, !2420, !"_RNvXs16_NtNtCshzWfHUSfYae_4core3cmp5implsiNtB8_10PartialOrd2lt: argument 1"}
!2423 = distinct !{!2423, i1 false, !"_RNvYNvYTNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor16MaybeInfiniteIntiENtNtCshzWfHUSfYae_4core3cmp10PartialOrd2ltINtNtNtB1t_3ops8function5FnMutTRB5_B2A_EE8call_mutCs8K4cjrcxBsw_6hir_ty"}
!2424 = distinct !{!2424, !2423, !"_RNvYNvYTNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor16MaybeInfiniteIntiENtNtCshzWfHUSfYae_4core3cmp10PartialOrd2ltINtNtNtB1t_3ops8function5FnMutTRB5_B2A_EE8call_mutCs8K4cjrcxBsw_6hir_ty: argument 0"}
!2425 = distinct !{!2425, !2423, !"_RNvYNvYTNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor16MaybeInfiniteIntiENtNtCshzWfHUSfYae_4core3cmp10PartialOrd2ltINtNtNtB1t_3ops8function5FnMutTRB5_B2A_EE8call_mutCs8K4cjrcxBsw_6hir_ty: argument 1"}
!2426 = distinct !{!2426, i1 false, !"_RNvXsc_NtCshzWfHUSfYae_4core5tupleTNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor16MaybeInfiniteIntiENtNtB7_3cmp10PartialOrd2ltCs8K4cjrcxBsw_6hir_ty"}
!2427 = distinct !{!2427, !2426, !"_RNvXsc_NtCshzWfHUSfYae_4core5tupleTNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor16MaybeInfiniteIntiENtNtB7_3cmp10PartialOrd2ltCs8K4cjrcxBsw_6hir_ty: argument 0"}
!2428 = distinct !{!2428, !2426, !"_RNvXsc_NtCshzWfHUSfYae_4core5tupleTNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor16MaybeInfiniteIntiENtNtB7_3cmp10PartialOrd2ltCs8K4cjrcxBsw_6hir_ty: argument 1"}
!2429 = distinct !{!2429, i1 false, !"_RNvXs16_NtNtCshzWfHUSfYae_4core3cmp5implsiNtB8_10PartialOrd2lt"}
!2430 = distinct !{!2430, !2429, !"_RNvXs16_NtNtCshzWfHUSfYae_4core3cmp5implsiNtB8_10PartialOrd2lt: argument 0"}
!2431 = distinct !{!2431, !2429, !"_RNvXs16_NtNtCshzWfHUSfYae_4core3cmp5implsiNtB8_10PartialOrd2lt: argument 1"}
!2432 = distinct !{!2432, i1 false, !"_RNvYNvYTNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor16MaybeInfiniteIntiENtNtCshzWfHUSfYae_4core3cmp10PartialOrd2ltINtNtNtB1t_3ops8function5FnMutTRB5_B2A_EE8call_mutCs8K4cjrcxBsw_6hir_ty"}
!2433 = distinct !{!2433, !2432, !"_RNvYNvYTNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor16MaybeInfiniteIntiENtNtCshzWfHUSfYae_4core3cmp10PartialOrd2ltINtNtNtB1t_3ops8function5FnMutTRB5_B2A_EE8call_mutCs8K4cjrcxBsw_6hir_ty: argument 0"}
!2434 = distinct !{!2434, !2432, !"_RNvYNvYTNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor16MaybeInfiniteIntiENtNtCshzWfHUSfYae_4core3cmp10PartialOrd2ltINtNtNtB1t_3ops8function5FnMutTRB5_B2A_EE8call_mutCs8K4cjrcxBsw_6hir_ty: argument 1"}
!2435 = distinct !{!2435, i1 false, !"_RNvXsc_NtCshzWfHUSfYae_4core5tupleTNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor16MaybeInfiniteIntiENtNtB7_3cmp10PartialOrd2ltCs8K4cjrcxBsw_6hir_ty"}
!2436 = distinct !{!2436, !2435, !"_RNvXsc_NtCshzWfHUSfYae_4core5tupleTNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor16MaybeInfiniteIntiENtNtB7_3cmp10PartialOrd2ltCs8K4cjrcxBsw_6hir_ty: argument 0"}
!2437 = distinct !{!2437, !2435, !"_RNvXsc_NtCshzWfHUSfYae_4core5tupleTNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor16MaybeInfiniteIntiENtNtB7_3cmp10PartialOrd2ltCs8K4cjrcxBsw_6hir_ty: argument 1"}
!2438 = distinct !{!2438, i1 false, !"_RNvXs16_NtNtCshzWfHUSfYae_4core3cmp5implsiNtB8_10PartialOrd2lt"}
!2439 = distinct !{!2439, !2438, !"_RNvXs16_NtNtCshzWfHUSfYae_4core3cmp5implsiNtB8_10PartialOrd2lt: argument 0"}
!2440 = distinct !{!2440, !2438, !"_RNvXs16_NtNtCshzWfHUSfYae_4core3cmp5implsiNtB8_10PartialOrd2lt: argument 1"}
!2441 = !{!2415}
!2442 = !{!2416}
!2443 = !{!2418}
!2444 = !{!2419}
!2445 = !{!2421}
!2446 = !{!2422}
!2447 = !{!2421, !2418, !2415}
!2448 = !{!2422, !2419, !2416}
!2449 = !{!2424}
!2450 = !{!2425}
!2451 = !{!2427}
!2452 = !{!2428}
!2453 = !{!2430}
!2454 = !{!2431}
!2455 = !{!2430, !2427, !2424}
!2456 = !{!2431, !2428, !2425}
!2457 = !{!2433}
!2458 = !{!2434}
!2459 = !{!2436}
!2460 = !{!2437}
!2461 = !{!2439}
!2462 = !{!2440}
!2463 = !{!2439, !2436, !2433}
!2464 = !{!2440, !2437, !2434}
!2465 = distinct !{!2465, i1 false, !"_RINvNvMNtCshzWfHUSfYae_4core5sliceSp7reverse7revswapmECs8K4cjrcxBsw_6hir_ty"}
!2466 = distinct !{!2466, !2465, !"_RINvNvMNtCshzWfHUSfYae_4core5sliceSp7reverse7revswapmECs8K4cjrcxBsw_6hir_ty: argument 0"}
!2467 = distinct !{!2467, !2465, !"_RINvNvMNtCshzWfHUSfYae_4core5sliceSp7reverse7revswapmECs8K4cjrcxBsw_6hir_ty: argument 1"}
!2468 = distinct !{!2468, i1 false, !"_RNvMNtCshzWfHUSfYae_4core5sliceSm7reverseCs8K4cjrcxBsw_6hir_ty"}
!2469 = distinct !{!2469, !2468, !"_RNvMNtCshzWfHUSfYae_4core5sliceSm7reverseCs8K4cjrcxBsw_6hir_ty: argument 0"}
!2470 = distinct !{!2470, !31, !32}
!2471 = distinct !{!2471, !32, !31}
!2472 = !{!2466}
!2473 = !{!2467}
!2474 = !{!2466, !2469}
!2475 = !{!2467, !2469}
!2476 = distinct !{!2476, i1 false, !"_RNCINvMNtCshzWfHUSfYae_4core5sliceSINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtBC_9predicate19ProjectionPredicateB1p_EE20sort_unstable_by_keyNtNtB1t_6def_id6TermIdNCNvMs1_NtB1v_5lowerNtB3X_17TyLoweringContext15lower_dyn_traits4_0E0B1v_"}
!2477 = distinct !{!2477, !2476, !"_RNCINvMNtCshzWfHUSfYae_4core5sliceSINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtBC_9predicate19ProjectionPredicateB1p_EE20sort_unstable_by_keyNtNtB1t_6def_id6TermIdNCNvMs1_NtB1v_5lowerNtB3X_17TyLoweringContext15lower_dyn_traits4_0E0B1v_: argument 1"}
!2478 = distinct !{!2478, !2476, !"_RNCINvMNtCshzWfHUSfYae_4core5sliceSINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtBC_9predicate19ProjectionPredicateB1p_EE20sort_unstable_by_keyNtNtB1t_6def_id6TermIdNCNvMs1_NtB1v_5lowerNtB3X_17TyLoweringContext15lower_dyn_traits4_0E0B1v_: argument 0"}
!2479 = distinct !{!2479, i1 false, !"_RNCNvMs1_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB7_17TyLoweringContext15lower_dyn_traits4_0B9_"}
!2480 = distinct !{!2480, !2479, !"_RNCNvMs1_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB7_17TyLoweringContext15lower_dyn_traits4_0B9_: argument 0"}
!2481 = distinct !{!2481, !2479, !"_RNCNvMs1_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB7_17TyLoweringContext15lower_dyn_traits4_0B9_: argument 1"}
!2482 = distinct !{!2482, i1 false, !"_RNCNvMs1_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB7_17TyLoweringContext15lower_dyn_traits4_0B9_"}
!2483 = distinct !{!2483, !2482, !"_RNCNvMs1_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB7_17TyLoweringContext15lower_dyn_traits4_0B9_: argument 0"}
!2484 = distinct !{!2484, !2482, !"_RNCNvMs1_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB7_17TyLoweringContext15lower_dyn_traits4_0B9_: argument 1"}
!2485 = distinct !{!2485, i1 false, !"_RNvYNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_id6TermIdNtNtCshzWfHUSfYae_4core3cmp10PartialOrd2ltB8_"}
!2486 = distinct !{!2486, !2485, !"_RNvYNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_id6TermIdNtNtCshzWfHUSfYae_4core3cmp10PartialOrd2ltB8_: argument 0"}
!2487 = distinct !{!2487, !2485, !"_RNvYNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_id6TermIdNtNtCshzWfHUSfYae_4core3cmp10PartialOrd2ltB8_: argument 1"}
!2488 = distinct !{!2488, i1 false, !"_RNvXs5u_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_idNtB6_6TermIdNtNtCshzWfHUSfYae_4core3cmp10PartialOrd11partial_cmp"}
!2489 = distinct !{!2489, !2488, !"_RNvXs5u_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_idNtB6_6TermIdNtNtCshzWfHUSfYae_4core3cmp10PartialOrd11partial_cmp: argument 0"}
!2490 = distinct !{!2490, !2488, !"_RNvXs5u_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_idNtB6_6TermIdNtNtCshzWfHUSfYae_4core3cmp10PartialOrd11partial_cmp: argument 1"}
!2491 = distinct !{!2491, i1 false, !"_RNvXs5v_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_idNtB6_6TermIdNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp"}
!2492 = distinct !{!2492, !2491, !"_RNvXs5v_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_idNtB6_6TermIdNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp: argument 0"}
!2493 = distinct !{!2493, !2491, !"_RNvXs5v_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_idNtB6_6TermIdNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp: argument 1"}
!2494 = distinct !{!2494, i1 false, !"_RNCINvMNtCshzWfHUSfYae_4core5sliceSINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtBC_9predicate19ProjectionPredicateB1p_EE20sort_unstable_by_keyNtNtB1t_6def_id6TermIdNCNvMs1_NtB1v_5lowerNtB3X_17TyLoweringContext15lower_dyn_traits4_0E0B1v_"}
!2495 = distinct !{!2495, !2494, !"_RNCINvMNtCshzWfHUSfYae_4core5sliceSINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtBC_9predicate19ProjectionPredicateB1p_EE20sort_unstable_by_keyNtNtB1t_6def_id6TermIdNCNvMs1_NtB1v_5lowerNtB3X_17TyLoweringContext15lower_dyn_traits4_0E0B1v_: argument 1"}
!2496 = distinct !{!2496, !2494, !"_RNCINvMNtCshzWfHUSfYae_4core5sliceSINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtBC_9predicate19ProjectionPredicateB1p_EE20sort_unstable_by_keyNtNtB1t_6def_id6TermIdNCNvMs1_NtB1v_5lowerNtB3X_17TyLoweringContext15lower_dyn_traits4_0E0B1v_: argument 0"}
!2497 = distinct !{!2497, i1 false, !"_RNCNvMs1_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB7_17TyLoweringContext15lower_dyn_traits4_0B9_"}
!2498 = distinct !{!2498, !2497, !"_RNCNvMs1_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB7_17TyLoweringContext15lower_dyn_traits4_0B9_: argument 0"}
!2499 = distinct !{!2499, !2497, !"_RNCNvMs1_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB7_17TyLoweringContext15lower_dyn_traits4_0B9_: argument 1"}
!2500 = distinct !{!2500, i1 false, !"_RNCNvMs1_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB7_17TyLoweringContext15lower_dyn_traits4_0B9_"}
!2501 = distinct !{!2501, !2500, !"_RNCNvMs1_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB7_17TyLoweringContext15lower_dyn_traits4_0B9_: argument 0"}
!2502 = distinct !{!2502, !2500, !"_RNCNvMs1_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB7_17TyLoweringContext15lower_dyn_traits4_0B9_: argument 1"}
!2503 = distinct !{!2503, i1 false, !"_RNvYNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_id6TermIdNtNtCshzWfHUSfYae_4core3cmp10PartialOrd2ltB8_"}
!2504 = distinct !{!2504, !2503, !"_RNvYNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_id6TermIdNtNtCshzWfHUSfYae_4core3cmp10PartialOrd2ltB8_: argument 0"}
!2505 = distinct !{!2505, !2503, !"_RNvYNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_id6TermIdNtNtCshzWfHUSfYae_4core3cmp10PartialOrd2ltB8_: argument 1"}
!2506 = distinct !{!2506, i1 false, !"_RNvXs5u_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_idNtB6_6TermIdNtNtCshzWfHUSfYae_4core3cmp10PartialOrd11partial_cmp"}
!2507 = distinct !{!2507, !2506, !"_RNvXs5u_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_idNtB6_6TermIdNtNtCshzWfHUSfYae_4core3cmp10PartialOrd11partial_cmp: argument 0"}
!2508 = distinct !{!2508, !2506, !"_RNvXs5u_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_idNtB6_6TermIdNtNtCshzWfHUSfYae_4core3cmp10PartialOrd11partial_cmp: argument 1"}
!2509 = distinct !{!2509, i1 false, !"_RNvXs5v_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_idNtB6_6TermIdNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp"}
!2510 = distinct !{!2510, !2509, !"_RNvXs5v_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_idNtB6_6TermIdNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp: argument 0"}
!2511 = distinct !{!2511, !2509, !"_RNvXs5v_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_idNtB6_6TermIdNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp: argument 1"}
!2512 = distinct !{!2512, i1 false, !"_RNCINvMNtCshzWfHUSfYae_4core5sliceSINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtBC_9predicate19ProjectionPredicateB1p_EE20sort_unstable_by_keyNtNtB1t_6def_id6TermIdNCNvMs1_NtB1v_5lowerNtB3X_17TyLoweringContext15lower_dyn_traits4_0E0B1v_"}
!2513 = distinct !{!2513, !2512, !"_RNCINvMNtCshzWfHUSfYae_4core5sliceSINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtBC_9predicate19ProjectionPredicateB1p_EE20sort_unstable_by_keyNtNtB1t_6def_id6TermIdNCNvMs1_NtB1v_5lowerNtB3X_17TyLoweringContext15lower_dyn_traits4_0E0B1v_: argument 1"}
!2514 = distinct !{!2514, !2512, !"_RNCINvMNtCshzWfHUSfYae_4core5sliceSINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtBC_9predicate19ProjectionPredicateB1p_EE20sort_unstable_by_keyNtNtB1t_6def_id6TermIdNCNvMs1_NtB1v_5lowerNtB3X_17TyLoweringContext15lower_dyn_traits4_0E0B1v_: argument 0"}
!2515 = distinct !{!2515, i1 false, !"_RNCNvMs1_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB7_17TyLoweringContext15lower_dyn_traits4_0B9_"}
!2516 = distinct !{!2516, !2515, !"_RNCNvMs1_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB7_17TyLoweringContext15lower_dyn_traits4_0B9_: argument 0"}
!2517 = distinct !{!2517, !2515, !"_RNCNvMs1_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB7_17TyLoweringContext15lower_dyn_traits4_0B9_: argument 1"}
!2518 = distinct !{!2518, i1 false, !"_RNCNvMs1_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB7_17TyLoweringContext15lower_dyn_traits4_0B9_"}
!2519 = distinct !{!2519, !2518, !"_RNCNvMs1_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB7_17TyLoweringContext15lower_dyn_traits4_0B9_: argument 0"}
!2520 = distinct !{!2520, !2518, !"_RNCNvMs1_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB7_17TyLoweringContext15lower_dyn_traits4_0B9_: argument 1"}
!2521 = distinct !{!2521, i1 false, !"_RNvYNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_id6TermIdNtNtCshzWfHUSfYae_4core3cmp10PartialOrd2ltB8_"}
!2522 = distinct !{!2522, !2521, !"_RNvYNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_id6TermIdNtNtCshzWfHUSfYae_4core3cmp10PartialOrd2ltB8_: argument 0"}
!2523 = distinct !{!2523, !2521, !"_RNvYNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_id6TermIdNtNtCshzWfHUSfYae_4core3cmp10PartialOrd2ltB8_: argument 1"}
!2524 = distinct !{!2524, i1 false, !"_RNvXs5u_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_idNtB6_6TermIdNtNtCshzWfHUSfYae_4core3cmp10PartialOrd11partial_cmp"}
!2525 = distinct !{!2525, !2524, !"_RNvXs5u_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_idNtB6_6TermIdNtNtCshzWfHUSfYae_4core3cmp10PartialOrd11partial_cmp: argument 0"}
!2526 = distinct !{!2526, !2524, !"_RNvXs5u_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_idNtB6_6TermIdNtNtCshzWfHUSfYae_4core3cmp10PartialOrd11partial_cmp: argument 1"}
!2527 = distinct !{!2527, i1 false, !"_RNvXs5v_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_idNtB6_6TermIdNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp"}
!2528 = distinct !{!2528, !2527, !"_RNvXs5v_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_idNtB6_6TermIdNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp: argument 0"}
!2529 = distinct !{!2529, !2527, !"_RNvXs5v_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_idNtB6_6TermIdNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp: argument 1"}
!2530 = !{!2478, !2477}
!2531 = !{!2480, !2477}
!2532 = !{!2481, !2478, !2477}
!2533 = !{!2483, !2478}
!2534 = !{!2484, !2478, !2477}
!2535 = !{!2486}
!2536 = !{!2487}
!2537 = !{!2489}
!2538 = !{!2490}
!2539 = !{!2492}
!2540 = !{!2493}
!2541 = !{!2492, !2489, !2486}
!2542 = !{!2493, !2490, !2487, !2478, !2477}
!2543 = !{!2493, !2490, !2487}
!2544 = !{!2492, !2489, !2486, !2478, !2477}
!2545 = !{!2496, !2495}
!2546 = !{!2498, !2495}
!2547 = !{!2499, !2496, !2495}
!2548 = !{!2501, !2496}
!2549 = !{!2502, !2496, !2495}
!2550 = !{!2504}
!2551 = !{!2505}
!2552 = !{!2507}
!2553 = !{!2508}
!2554 = !{!2510}
!2555 = !{!2511}
!2556 = !{!2510, !2507, !2504}
!2557 = !{!2511, !2508, !2505, !2496, !2495}
!2558 = !{!2511, !2508, !2505}
!2559 = !{!2510, !2507, !2504, !2496, !2495}
!2560 = !{!2514, !2513}
!2561 = !{!2516, !2513}
!2562 = !{!2517, !2514, !2513}
!2563 = !{!2519, !2514}
!2564 = !{!2520, !2514, !2513}
!2565 = !{!2522}
!2566 = !{!2523}
!2567 = !{!2525}
!2568 = !{!2526}
!2569 = !{!2528}
!2570 = !{!2529}
!2571 = !{!2528, !2525, !2522}
!2572 = !{!2529, !2526, !2523, !2514, !2513}
!2573 = !{!2529, !2526, !2523}
!2574 = !{!2528, !2525, !2522, !2514, !2513}
!2575 = distinct !{!2575, i1 false, !"_RNvXsm_NtCshzWfHUSfYae_4core5tupleTINtNtB7_3cmp7ReverseyEoyENtBA_10PartialOrd2ltCs8K4cjrcxBsw_6hir_ty"}
!2576 = distinct !{!2576, !2575, !"_RNvXsm_NtCshzWfHUSfYae_4core5tupleTINtNtB7_3cmp7ReverseyEoyENtBA_10PartialOrd2ltCs8K4cjrcxBsw_6hir_ty: argument 0"}
!2577 = distinct !{!2577, !2575, !"_RNvXsm_NtCshzWfHUSfYae_4core5tupleTINtNtB7_3cmp7ReverseyEoyENtBA_10PartialOrd2ltCs8K4cjrcxBsw_6hir_ty: argument 1"}
!2578 = distinct !{!2578, i1 false, !"_RNvXs12_NtNtCshzWfHUSfYae_4core3cmp5implsyNtB8_10PartialOrd2lt"}
!2579 = distinct !{!2579, !2578, !"_RNvXs12_NtNtCshzWfHUSfYae_4core3cmp5implsyNtB8_10PartialOrd2lt: argument 0"}
!2580 = distinct !{!2580, !2578, !"_RNvXs12_NtNtCshzWfHUSfYae_4core3cmp5implsyNtB8_10PartialOrd2lt: argument 1"}
!2581 = distinct !{!2581, i1 false, !"_RNvXsm_NtCshzWfHUSfYae_4core5tupleTINtNtB7_3cmp7ReverseyEoyENtBA_10PartialOrd2ltCs8K4cjrcxBsw_6hir_ty"}
!2582 = distinct !{!2582, !2581, !"_RNvXsm_NtCshzWfHUSfYae_4core5tupleTINtNtB7_3cmp7ReverseyEoyENtBA_10PartialOrd2ltCs8K4cjrcxBsw_6hir_ty: argument 0"}
!2583 = distinct !{!2583, !2581, !"_RNvXsm_NtCshzWfHUSfYae_4core5tupleTINtNtB7_3cmp7ReverseyEoyENtBA_10PartialOrd2ltCs8K4cjrcxBsw_6hir_ty: argument 1"}
!2584 = distinct !{!2584, i1 false, !"_RNvXs12_NtNtCshzWfHUSfYae_4core3cmp5implsyNtB8_10PartialOrd2lt"}
!2585 = distinct !{!2585, !2584, !"_RNvXs12_NtNtCshzWfHUSfYae_4core3cmp5implsyNtB8_10PartialOrd2lt: argument 0"}
!2586 = distinct !{!2586, !2584, !"_RNvXs12_NtNtCshzWfHUSfYae_4core3cmp5implsyNtB8_10PartialOrd2lt: argument 1"}
!2587 = distinct !{!2587, i1 false, !"_RNvXsm_NtCshzWfHUSfYae_4core5tupleTINtNtB7_3cmp7ReverseyEoyENtBA_10PartialOrd2ltCs8K4cjrcxBsw_6hir_ty"}
!2588 = distinct !{!2588, !2587, !"_RNvXsm_NtCshzWfHUSfYae_4core5tupleTINtNtB7_3cmp7ReverseyEoyENtBA_10PartialOrd2ltCs8K4cjrcxBsw_6hir_ty: argument 0"}
!2589 = distinct !{!2589, !2587, !"_RNvXsm_NtCshzWfHUSfYae_4core5tupleTINtNtB7_3cmp7ReverseyEoyENtBA_10PartialOrd2ltCs8K4cjrcxBsw_6hir_ty: argument 1"}
!2590 = distinct !{!2590, i1 false, !"_RNvXs12_NtNtCshzWfHUSfYae_4core3cmp5implsyNtB8_10PartialOrd2lt"}
!2591 = distinct !{!2591, !2590, !"_RNvXs12_NtNtCshzWfHUSfYae_4core3cmp5implsyNtB8_10PartialOrd2lt: argument 0"}
!2592 = distinct !{!2592, !2590, !"_RNvXs12_NtNtCshzWfHUSfYae_4core3cmp5implsyNtB8_10PartialOrd2lt: argument 1"}
!2593 = !{!2576}
!2594 = !{!2577}
!2595 = !{!2579}
!2596 = !{!2580}
!2597 = !{!2579, !2576}
!2598 = !{!2580, !2577}
!2599 = !{!2582}
!2600 = !{!2583}
!2601 = !{!2585}
!2602 = !{!2586}
!2603 = !{!2585, !2582}
!2604 = !{!2586, !2583}
!2605 = !{!2588}
!2606 = !{!2589}
!2607 = !{!2591}
!2608 = !{!2592}
!2609 = !{!2591, !2588}
end_hunk_1
