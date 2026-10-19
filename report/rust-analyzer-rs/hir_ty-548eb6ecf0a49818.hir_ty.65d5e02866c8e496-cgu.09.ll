Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/hir_ty-548eb6ecf0a49818.hir_ty.65d5e02866c8e496-cgu.09?download=true
inline.NumInlined: 5162
inline.NumDeleted: 2096
loop-unroll.NumRuntimeUnrolled: 25
loop-unroll.NumUnrolled: 25
begin_hunk_0_@_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort8unstable7ipnsortINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtBY_9predicate19ProjectionPredicateB1L_EENCINvMB6_SBT_20sort_unstable_by_keyNtNtB1P_6def_id6TermIdNCNvMs1_NtB1R_5lowerNtB4w_17TyLoweringContext15lower_dyn_traits4_0E0EB1R_:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2180
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.cd, i64 24, i1 false), !noalias !2181
  call void @_RNvMst_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9predicateINtB5_9AliasTermNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerE24expect_projection_def_idB1c_(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.d, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !noalias !2182
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2180
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2180
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2180
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(40) %i.cg, i64 24, i1 false), !noalias !2183
  call void @_RNvMst_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9predicateINtB5_9AliasTermNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerE24expect_projection_def_idB1c_(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.c, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !noalias !2184
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2180
  call void @llvm.experimental.noalias.scope.decl(metadata !2185)
  call void @llvm.experimental.noalias.scope.decl(metadata !2186)
  call void @llvm.experimental.noalias.scope.decl(metadata !2187)
  call void @llvm.experimental.noalias.scope.decl(metadata !2188)
  call void @llvm.experimental.noalias.scope.decl(metadata !2189)
  call void @llvm.experimental.noalias.scope.decl(metadata !2190)
  %i.ch = load i32, ptr %i.d, align 4, !range !38, !alias.scope !2191, !noalias !2180, !noundef !8 ; 2 uses
  %i.ci = trunc nuw nsw i32 %i.ch to i8
  %i.cj = load i32, ptr %i.c, align 4, !range !38, !alias.scope !2192, !noalias !2180, !noundef !8 ; 3 uses
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
  %i.cp = load i32, ptr %i.aw, align 4, !range !39, !alias.scope !2191, !noalias !2180, !noundef !8 ; 2 uses
  %i.cq = load i32, ptr %i.ax, align 4, !range !39, !alias.scope !2192, !noalias !2180, !noundef !8 ; 2 uses
  %i.cr = call i8 @llvm.ucmp.i8.i32(i32 %i.cp, i32 %i.cq)
  %i.cs = icmp eq i32 %i.cp, %i.cq
  br i1 %i.cs, label %bb.t, label %_RNCINvMNtCshzWfHUSfYae_4core5sliceSINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtBC_9predicate19ProjectionPredicateB1p_EE20sort_unstable_by_keyNtNtB1t_6def_id6TermIdNCNvMs1_NtB1v_5lowerNtB3X_17TyLoweringContext15lower_dyn_traits4_0E0B1v_.exit5

bb.r:                                             ; preds = %bb.p
  %i.ct = icmp eq i32 %i.cj, 0
  call void @llvm.assume(i1 %i.ct)
  %i.cu = load i32, ptr %i.aw, align 4, !range !39, !alias.scope !2191, !noalias !2180, !noundef !8 ; 2 uses
  %i.cv = load i32, ptr %i.ax, align 4, !range !39, !alias.scope !2192, !noalias !2180, !noundef !8 ; 2 uses
  %i.cw = call i8 @llvm.ucmp.i8.i32(i32 %i.cu, i32 %i.cv)
  %i.cx = icmp eq i32 %i.cu, %i.cv
  br i1 %i.cx, label %bb.s, label %_RNCINvMNtCshzWfHUSfYae_4core5sliceSINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtBC_9predicate19ProjectionPredicateB1p_EE20sort_unstable_by_keyNtNtB1t_6def_id6TermIdNCNvMs1_NtB1v_5lowerNtB3X_17TyLoweringContext15lower_dyn_traits4_0E0B1v_.exit5

bb.s:                                             ; preds = %bb.r
  %i.cy = load i32, ptr %i.ay, align 4, !alias.scope !2191, !noalias !2180, !noundef !8
  %i.cz = load i32, ptr %i.az, align 4, !alias.scope !2192, !noalias !2180, !noundef !8
  %i.da = call i8 @llvm.ucmp.i8.i32(i32 %i.cy, i32 %i.cz)
  br label %_RNCINvMNtCshzWfHUSfYae_4core5sliceSINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtBC_9predicate19ProjectionPredicateB1p_EE20sort_unstable_by_keyNtNtB1t_6def_id6TermIdNCNvMs1_NtB1v_5lowerNtB3X_17TyLoweringContext15lower_dyn_traits4_0E0B1v_.exit5

bb.t:                                             ; preds = %bb.q
  %i.db = load i32, ptr %i.ay, align 4, !alias.scope !2191, !noalias !2180, !noundef !8
  %i.dc = load i32, ptr %i.az, align 4, !alias.scope !2192, !noalias !2180, !noundef !8
  %i.dd = call i8 @llvm.ucmp.i8.i32(i32 %i.db, i32 %i.dc)
  br label %_RNCINvMNtCshzWfHUSfYae_4core5sliceSINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtBC_9predicate19ProjectionPredicateB1p_EE20sort_unstable_by_keyNtNtB1t_6def_id6TermIdNCNvMs1_NtB1v_5lowerNtB3X_17TyLoweringContext15lower_dyn_traits4_0E0B1v_.exit5

_RNCINvMNtCshzWfHUSfYae_4core5sliceSINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtBC_9predicate19ProjectionPredicateB1p_EE20sort_unstable_by_keyNtNtB1t_6def_id6TermIdNCNvMs1_NtB1v_5lowerNtB3X_17TyLoweringContext15lower_dyn_traits4_0E0B1v_.exit5: ; preds = %bb.o, %bb.q, %bb.r, %bb.s, %bb.t
  %.sroa.0.1.i.i.i.i4 = phi i8 [ %i.cw, %bb.r ], [ %i.cl, %bb.o ], [ %i.da, %bb.s ], [ %i.dd, %bb.t ], [ %i.cr, %bb.q ]
  %i.de = icmp slt i8 %.sroa.0.1.i.i.i.i4, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2180
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2180
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2200)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2201)
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
  %wide.vec = load <4 x i32>, ptr %i.ag, align 4, !alias.scope !2202
  %i.ai = getelementptr i8, ptr %i.ah, i64 -8
  %wide.load = load <2 x i64>, ptr %i.ai, align 4, !alias.scope !2203
  %reverse = shufflevector <2 x i64> %wide.load, <2 x i64> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i64> %reverse, ptr %i.ag, align 4, !alias.scope !2202
  %i.aj = getelementptr inbounds i8, ptr %i.ah, i64 -8
  %interleaved.vec = shufflevector <4 x i32> %wide.vec, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  store <4 x i32> %interleaved.vec, ptr %i.aj, align 4, !alias.scope !2203
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ak = icmp eq i64 %index.next, %n.vec
  br i1 %i.ak, label %middle.block, label %vector.body, !llvm.loop !2198

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
  %13 = load i64, ptr %12, align 4, !alias.scope !2203
  %14 = load <2 x i32>, ptr %11, align 4, !alias.scope !2202
  store i64 %13, ptr %11, align 4, !alias.scope !2202
  store <2 x i32> %14, ptr %12, align 4, !alias.scope !2203
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
  %19 = load i64, ptr %18, align 4, !alias.scope !2203
  %20 = load <2 x i32>, ptr %17, align 4, !alias.scope !2202
  store i64 %19, ptr %17, align 4, !alias.scope !2202
  store <2 x i32> %20, ptr %18, align 4, !alias.scope !2203
  %21 = sub i64 -2, %.sroa.0.016.i.i
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.sroa.0.016.i.i
  %22 = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 2 uses
  %i.an = getelementptr [8 x i8], ptr %i.ae, i64 %21 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 4, !alias.scope !2203
  %i.ap = load <2 x i32>, ptr %22, align 4, !alias.scope !2202
  store i64 %i.ao, ptr %22, align 4, !alias.scope !2202
  store <2 x i32> %i.ap, ptr %i.an, align 4, !alias.scope !2203
  %i.aq = add nuw nsw i64 %.sroa.0.016.i.i, 2     ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %i.aq, %i.ad
  br i1 %exitcond.not.i.i.1, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtCsileJQcQObtj_7hir_def7TraitId7reverseCs8K4cjrcxBsw_6hir_ty.exit, label %_RNvMNtCshzWfHUSfYae_4core5sliceSNtCsileJQcQObtj_7hir_def7TraitId12split_at_mutCs8K4cjrcxBsw_6hir_ty.exit11.i.i, !llvm.loop !2199
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort8unstable7ipnsortTNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor16MaybeInfiniteIntiENvYBT_NtNtB8_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull align 16 %0, i64 noundef range(i64 0, 192153584101141163) %1, ptr noalias nofree noundef nonnull %2) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp samesign ult i64 %1, 2
  br i1 %i.a, label %_RNvMNtCshzWfHUSfYae_4core5sliceSTNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor16MaybeInfiniteIntiE7reverseCs8K4cjrcxBsw_6hir_ty.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2231)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2232)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2233)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2234)
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2235)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2236)
  %i.f = load i64, ptr %i.d, align 16, !alias.scope !2237, !noundef !8
  %i.g = load i64, ptr %i.e, align 16, !alias.scope !2238, !noundef !8
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2239)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2240)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2241)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2242)
  %i.m = tail call noundef range(i8 0, 3) i8 @_RINvNtCshzWfHUSfYae_4core3cmp21default_chaining_implNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor16MaybeInfiniteIntBO_NvMB2_NtB2_8Ordering5is_ltECs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.i, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.l)
  switch i8 %i.m, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runTNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor16MaybeInfiniteIntiENvYB12_NtNtB8_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty.exit [
    i8 2, label %_RNvYNvYTNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor16MaybeInfiniteIntiENtNtCshzWfHUSfYae_4core3cmp10PartialOrd2ltINtNtNtB1t_3ops8function5FnMutTRB5_B2A_EE8call_mutCs8K4cjrcxBsw_6hir_ty.exit4
    i8 0, label %bb.c
  ]

_RNvYNvYTNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor16MaybeInfiniteIntiENtNtCshzWfHUSfYae_4core3cmp10PartialOrd2ltINtNtNtB1t_3ops8function5FnMutTRB5_B2A_EE8call_mutCs8K4cjrcxBsw_6hir_ty.exit4: ; preds = %.lr.ph
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2243)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2244)
  %i.p = load i64, ptr %i.n, align 16, !alias.scope !2245, !noundef !8
  %i.q = load i64, ptr %i.o, align 16, !alias.scope !2246, !noundef !8
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2247)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2248)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2249)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2250)
  %i.x = tail call noundef range(i8 0, 3) i8 @_RINvNtCshzWfHUSfYae_4core3cmp21default_chaining_implNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor16MaybeInfiniteIntBO_NvMB2_NtB2_8Ordering5is_ltECs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.t, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(48) %i.w)
  switch i8 %i.x, label %bb.d [
    i8 2, label %_RNvYNvYTNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor16MaybeInfiniteIntiENtNtCshzWfHUSfYae_4core3cmp10PartialOrd2ltINtNtNtB1t_3ops8function5FnMutTRB5_B2A_EE8call_mutCs8K4cjrcxBsw_6hir_ty.exit7
    i8 0, label %_RINvNtNtNtCshzWfHUSfYae_4core5slice4sort6shared17find_existing_runTNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor16MaybeInfiniteIntiENvYB12_NtNtB8_3cmp10PartialOrd2ltECs8K4cjrcxBsw_6hir_ty.exit
  ]

_RNvYNvYTNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor16MaybeInfiniteIntiENtNtCshzWfHUSfYae_4core3cmp10PartialOrd2ltINtNtNtB1t_3ops8function5FnMutTRB5_B2A_EE8call_mutCs8K4cjrcxBsw_6hir_ty.exit7: ; preds = %.lr.ph24
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2251)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2252)
  %i.aa = load i64, ptr %i.y, align 16, !alias.scope !2253, !noundef !8
  %i.ab = load i64, ptr %i.z, align 16, !alias.scope !2254, !noundef !8
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
  %.val5 = load i32, ptr %i.b, align 4, !alias.scope !40, !noundef !8 ; 3 uses
  %.val6 = load i32, ptr %0, align 4, !alias.scope !41, !noundef !8
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
  %.val3 = load i32, ptr %i.d, align 4, !alias.scope !40, !noundef !8 ; 2 uses
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
  %.val = load i32, ptr %i.g, align 4, !alias.scope !40, !noundef !8 ; 2 uses
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
!1999 = !{!1669}
!2000 = !{!1669, !1667}
!2001 = !{!1681, !1680, !1679, !1677, !1676, !1674, !1673, !1671, !1669, !1670, !1666, !1667}
!2002 = !{!1683}
!2003 = !{!1685}
!2004 = !{!1686}
!2005 = !{!1688}
!2006 = !{!1690}
!2007 = !{!1692}
!2008 = !{!1693}
!2009 = !{!1705, !1704, !1702, !1701, !1699, !1697, !1695, !1693, !1690, !1688, !1686}
!2010 = !{!1699, !1697, !1695, !1693, !1690, !1688, !1686}
!2011 = !{!1709, !1707, !1697, !1695, !1693, !1690, !1688, !1686}
!2012 = !{!1711, !1690, !1710, !1688, !1685, !1686}
!2013 = !{!1693, !1690, !1688, !1686}
!2014 = !{!1713}
!2015 = !{!1714}
!2016 = !{!1715}
!2017 = !{!1713, !1714}
!2018 = !{!1717}
!2019 = !{!1717, !1715, !1690, !1688, !1686}
!2020 = !{!1719}
!2021 = !{!1727, !1725, !1723, !1721, !1719, !1717, !1715, !1690, !1688, !1686}
!2022 = !{!1725, !1723, !1721, !1719, !1717, !1715, !1690, !1688, !1686}
!2023 = !{!1732, !1731, !1729, !1719, !1728, !1717, !1713, !1714, !1715, !1711, !1710, !1685}
!2024 = !{!1734}
!2025 = !{!1735}
!2026 = !{!1737}
!2027 = !{!1737, !1735}
!2028 = !{!1749, !1748, !1747, !1745, !1744, !1742, !1741, !1739, !1737, !1738, !1734, !1735}
!2029 = !{!1752}
!2030 = !{!1754}
!2031 = !{!1755}
!2032 = !{!1757}
!2033 = !{!1759}
!2034 = !{!1761}
!2035 = !{!1762}
!2036 = !{!1774, !1773, !1771, !1770, !1768, !1766, !1764, !1762, !1759, !1757, !1755}
!2037 = !{!1768, !1766, !1764, !1762, !1759, !1757, !1755}
!2038 = !{!1778, !1776, !1766, !1764, !1762, !1759, !1757, !1755}
!2039 = !{!1780, !1759, !1779, !1757, !1754, !1755}
!2040 = !{!1762, !1759, !1757, !1755}
!2041 = !{!1782}
!2042 = !{!1783}
!2043 = !{!1784}
!2044 = !{!1782, !1783}
!2045 = !{!1786}
!2046 = !{!1786, !1784, !1759, !1757, !1755}
!2047 = !{!1788}
!2048 = !{!1796, !1794, !1792, !1790, !1788, !1786, !1784, !1759, !1757, !1755}
!2049 = !{!1794, !1792, !1790, !1788, !1786, !1784, !1759, !1757, !1755}
!2050 = !{!1801, !1800, !1798, !1788, !1797, !1786, !1782, !1783, !1784, !1780, !1779, !1754}
!2051 = !{!1803}
!2052 = !{!1804}
!2053 = !{!1806}
!2054 = !{!1806, !1804}
!2055 = !{!1818, !1817, !1816, !1814, !1813, !1811, !1810, !1808, !1806, !1807, !1803, !1804}
!2056 = !{!1820}
!2057 = !{!1822}
!2058 = !{!1823}
!2059 = !{!1825}
!2060 = !{!1827}
!2061 = !{!1829}
!2062 = !{!1830}
!2063 = !{!1842, !1841, !1839, !1838, !1836, !1834, !1832, !1830, !1827, !1825, !1823}
!2064 = !{!1836, !1834, !1832, !1830, !1827, !1825, !1823}
!2065 = !{!1846, !1844, !1834, !1832, !1830, !1827, !1825, !1823}
!2066 = !{!1848, !1827, !1847, !1825, !1822, !1823}
!2067 = !{!1830, !1827, !1825, !1823}
!2068 = !{!1850}
!2069 = !{!1851}
!2070 = !{!1852}
!2071 = !{!1850, !1851}
!2072 = !{!1854}
!2073 = !{!1854, !1852, !1827, !1825, !1823}
!2074 = !{!1856}
!2075 = !{!1864, !1862, !1860, !1858, !1856, !1854, !1852, !1827, !1825, !1823}
!2076 = !{!1862, !1860, !1858, !1856, !1854, !1852, !1827, !1825, !1823}
!2077 = !{!1869, !1868, !1866, !1856, !1865, !1854, !1850, !1851, !1852, !1848, !1847, !1822}
!2078 = !{!1871}
!2079 = !{!1872}
!2080 = !{!1874}
!2081 = !{!1874, !1872}
!2082 = !{!1886, !1885, !1884, !1882, !1881, !1879, !1878, !1876, !1874, !1875, !1871, !1872}
!2083 = distinct !{!2083, i1 true, !"_RNvNtNtCshzWfHUSfYae_4core5slice5index16into_slice_range"}
!2084 = distinct !{!2084, !2083, !"_RNvNtNtCshzWfHUSfYae_4core5slice5index16into_slice_range: argument 0"}
!2085 = !{!2084}
!2086 = distinct !{!2086, i1 true, !"_RNvNtNtCshzWfHUSfYae_4core5slice5index16into_slice_range"}
!2087 = distinct !{!2087, !2086, !"_RNvNtNtCshzWfHUSfYae_4core5slice5index16into_slice_range: argument 0"}
!2088 = !{!2087}
!2089 = distinct !{!2089, i1 true, !"_RINvNvMNtCshzWfHUSfYae_4core5sliceSp7reverse7revswapINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir7BindingEECs8K4cjrcxBsw_6hir_ty"}
!2090 = distinct !{!2090, !2089, !"_RINvNvMNtCshzWfHUSfYae_4core5sliceSp7reverse7revswapINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir7BindingEECs8K4cjrcxBsw_6hir_ty: argument 0"}
!2091 = distinct !{!2091, !2089, !"_RINvNvMNtCshzWfHUSfYae_4core5sliceSp7reverse7revswapINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir7BindingEECs8K4cjrcxBsw_6hir_ty: argument 1"}
!2092 = distinct !{!2092, i1 true, !"_RNvMNtCshzWfHUSfYae_4core5sliceSINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir7BindingE7reverseCs8K4cjrcxBsw_6hir_ty"}
!2093 = distinct !{!2093, !2092, !"_RNvMNtCshzWfHUSfYae_4core5sliceSINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir7BindingE7reverseCs8K4cjrcxBsw_6hir_ty: argument 0"}
!2094 = distinct !{!2094, !31, !32}
!2095 = distinct !{!2095, !32, !31}
!2096 = !{!2090}
!2097 = !{!2091}
!2098 = !{!2090, !2093}
!2099 = !{!2091, !2093}
!2100 = distinct !{!2100, i1 true, !"_RNCINvMNtCshzWfHUSfYae_4core5sliceSINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtBC_9predicate19ProjectionPredicateB1p_EE20sort_unstable_by_keyNtNtB1t_6def_id6TermIdNCNvMs1_NtB1v_5lowerNtB3X_17TyLoweringContext15lower_dyn_traits4_0E0B1v_"}
!2101 = distinct !{!2101, !2100, !"_RNCINvMNtCshzWfHUSfYae_4core5sliceSINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtBC_9predicate19ProjectionPredicateB1p_EE20sort_unstable_by_keyNtNtB1t_6def_id6TermIdNCNvMs1_NtB1v_5lowerNtB3X_17TyLoweringContext15lower_dyn_traits4_0E0B1v_: argument 1"}
!2102 = distinct !{!2102, !2100, !"_RNCINvMNtCshzWfHUSfYae_4core5sliceSINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtBC_9predicate19ProjectionPredicateB1p_EE20sort_unstable_by_keyNtNtB1t_6def_id6TermIdNCNvMs1_NtB1v_5lowerNtB3X_17TyLoweringContext15lower_dyn_traits4_0E0B1v_: argument 0"}
!2103 = distinct !{!2103, i1 true, !"_RNCNvMs1_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB7_17TyLoweringContext15lower_dyn_traits4_0B9_"}
!2104 = distinct !{!2104, !2103, !"_RNCNvMs1_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB7_17TyLoweringContext15lower_dyn_traits4_0B9_: argument 0"}
!2105 = distinct !{!2105, !2103, !"_RNCNvMs1_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB7_17TyLoweringContext15lower_dyn_traits4_0B9_: argument 1"}
!2106 = distinct !{!2106, i1 true, !"_RNCNvMs1_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB7_17TyLoweringContext15lower_dyn_traits4_0B9_"}
!2107 = distinct !{!2107, !2106, !"_RNCNvMs1_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB7_17TyLoweringContext15lower_dyn_traits4_0B9_: argument 0"}
!2108 = distinct !{!2108, !2106, !"_RNCNvMs1_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB7_17TyLoweringContext15lower_dyn_traits4_0B9_: argument 1"}
!2109 = distinct !{!2109, i1 true, !"_RNvYNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_id6TermIdNtNtCshzWfHUSfYae_4core3cmp10PartialOrd2ltB8_"}
!2110 = distinct !{!2110, !2109, !"_RNvYNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_id6TermIdNtNtCshzWfHUSfYae_4core3cmp10PartialOrd2ltB8_: argument 0"}
!2111 = distinct !{!2111, !2109, !"_RNvYNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_id6TermIdNtNtCshzWfHUSfYae_4core3cmp10PartialOrd2ltB8_: argument 1"}
!2112 = distinct !{!2112, i1 true, !"_RNvXs5u_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_idNtB6_6TermIdNtNtCshzWfHUSfYae_4core3cmp10PartialOrd11partial_cmp"}
!2113 = distinct !{!2113, !2112, !"_RNvXs5u_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_idNtB6_6TermIdNtNtCshzWfHUSfYae_4core3cmp10PartialOrd11partial_cmp: argument 0"}
!2114 = distinct !{!2114, !2112, !"_RNvXs5u_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_idNtB6_6TermIdNtNtCshzWfHUSfYae_4core3cmp10PartialOrd11partial_cmp: argument 1"}
!2115 = distinct !{!2115, i1 true, !"_RNvXs5v_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_idNtB6_6TermIdNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp"}
!2116 = distinct !{!2116, !2115, !"_RNvXs5v_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_idNtB6_6TermIdNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp: argument 0"}
!2117 = distinct !{!2117, !2115, !"_RNvXs5v_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_idNtB6_6TermIdNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp: argument 1"}
!2118 = distinct !{!2118, i1 true, !"_RNCINvMNtCshzWfHUSfYae_4core5sliceSINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtBC_9predicate19ProjectionPredicateB1p_EE20sort_unstable_by_keyNtNtB1t_6def_id6TermIdNCNvMs1_NtB1v_5lowerNtB3X_17TyLoweringContext15lower_dyn_traits4_0E0B1v_"}
!2119 = distinct !{!2119, !2118, !"_RNCINvMNtCshzWfHUSfYae_4core5sliceSINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtBC_9predicate19ProjectionPredicateB1p_EE20sort_unstable_by_keyNtNtB1t_6def_id6TermIdNCNvMs1_NtB1v_5lowerNtB3X_17TyLoweringContext15lower_dyn_traits4_0E0B1v_: argument 1"}
!2120 = distinct !{!2120, !2118, !"_RNCINvMNtCshzWfHUSfYae_4core5sliceSINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtBC_9predicate19ProjectionPredicateB1p_EE20sort_unstable_by_keyNtNtB1t_6def_id6TermIdNCNvMs1_NtB1v_5lowerNtB3X_17TyLoweringContext15lower_dyn_traits4_0E0B1v_: argument 0"}
!2121 = distinct !{!2121, i1 true, !"_RNCNvMs1_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB7_17TyLoweringContext15lower_dyn_traits4_0B9_"}
!2122 = distinct !{!2122, !2121, !"_RNCNvMs1_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB7_17TyLoweringContext15lower_dyn_traits4_0B9_: argument 0"}
!2123 = distinct !{!2123, !2121, !"_RNCNvMs1_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB7_17TyLoweringContext15lower_dyn_traits4_0B9_: argument 1"}
!2124 = distinct !{!2124, i1 true, !"_RNCNvMs1_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB7_17TyLoweringContext15lower_dyn_traits4_0B9_"}
!2125 = distinct !{!2125, !2124, !"_RNCNvMs1_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB7_17TyLoweringContext15lower_dyn_traits4_0B9_: argument 0"}
!2126 = distinct !{!2126, !2124, !"_RNCNvMs1_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB7_17TyLoweringContext15lower_dyn_traits4_0B9_: argument 1"}
!2127 = distinct !{!2127, i1 true, !"_RNvYNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_id6TermIdNtNtCshzWfHUSfYae_4core3cmp10PartialOrd2ltB8_"}
!2128 = distinct !{!2128, !2127, !"_RNvYNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_id6TermIdNtNtCshzWfHUSfYae_4core3cmp10PartialOrd2ltB8_: argument 0"}
!2129 = distinct !{!2129, !2127, !"_RNvYNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_id6TermIdNtNtCshzWfHUSfYae_4core3cmp10PartialOrd2ltB8_: argument 1"}
!2130 = distinct !{!2130, i1 true, !"_RNvXs5u_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_idNtB6_6TermIdNtNtCshzWfHUSfYae_4core3cmp10PartialOrd11partial_cmp"}
!2131 = distinct !{!2131, !2130, !"_RNvXs5u_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_idNtB6_6TermIdNtNtCshzWfHUSfYae_4core3cmp10PartialOrd11partial_cmp: argument 0"}
!2132 = distinct !{!2132, !2130, !"_RNvXs5u_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_idNtB6_6TermIdNtNtCshzWfHUSfYae_4core3cmp10PartialOrd11partial_cmp: argument 1"}
!2133 = distinct !{!2133, i1 true, !"_RNvXs5v_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_idNtB6_6TermIdNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp"}
!2134 = distinct !{!2134, !2133, !"_RNvXs5v_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_idNtB6_6TermIdNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp: argument 0"}
!2135 = distinct !{!2135, !2133, !"_RNvXs5v_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_idNtB6_6TermIdNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp: argument 1"}
!2136 = distinct !{!2136, i1 true, !"_RNCINvMNtCshzWfHUSfYae_4core5sliceSINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtBC_9predicate19ProjectionPredicateB1p_EE20sort_unstable_by_keyNtNtB1t_6def_id6TermIdNCNvMs1_NtB1v_5lowerNtB3X_17TyLoweringContext15lower_dyn_traits4_0E0B1v_"}
!2137 = distinct !{!2137, !2136, !"_RNCINvMNtCshzWfHUSfYae_4core5sliceSINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtBC_9predicate19ProjectionPredicateB1p_EE20sort_unstable_by_keyNtNtB1t_6def_id6TermIdNCNvMs1_NtB1v_5lowerNtB3X_17TyLoweringContext15lower_dyn_traits4_0E0B1v_: argument 1"}
!2138 = distinct !{!2138, !2136, !"_RNCINvMNtCshzWfHUSfYae_4core5sliceSINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtBC_9predicate19ProjectionPredicateB1p_EE20sort_unstable_by_keyNtNtB1t_6def_id6TermIdNCNvMs1_NtB1v_5lowerNtB3X_17TyLoweringContext15lower_dyn_traits4_0E0B1v_: argument 0"}
!2139 = distinct !{!2139, i1 true, !"_RNCNvMs1_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB7_17TyLoweringContext15lower_dyn_traits4_0B9_"}
!2140 = distinct !{!2140, !2139, !"_RNCNvMs1_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB7_17TyLoweringContext15lower_dyn_traits4_0B9_: argument 0"}
!2141 = distinct !{!2141, !2139, !"_RNCNvMs1_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB7_17TyLoweringContext15lower_dyn_traits4_0B9_: argument 1"}
!2142 = distinct !{!2142, i1 true, !"_RNCNvMs1_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB7_17TyLoweringContext15lower_dyn_traits4_0B9_"}
!2143 = distinct !{!2143, !2142, !"_RNCNvMs1_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB7_17TyLoweringContext15lower_dyn_traits4_0B9_: argument 0"}
!2144 = distinct !{!2144, !2142, !"_RNCNvMs1_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB7_17TyLoweringContext15lower_dyn_traits4_0B9_: argument 1"}
!2145 = distinct !{!2145, i1 true, !"_RNvYNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_id6TermIdNtNtCshzWfHUSfYae_4core3cmp10PartialOrd2ltB8_"}
!2146 = distinct !{!2146, !2145, !"_RNvYNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_id6TermIdNtNtCshzWfHUSfYae_4core3cmp10PartialOrd2ltB8_: argument 0"}
!2147 = distinct !{!2147, !2145, !"_RNvYNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_id6TermIdNtNtCshzWfHUSfYae_4core3cmp10PartialOrd2ltB8_: argument 1"}
!2148 = distinct !{!2148, i1 true, !"_RNvXs5u_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_idNtB6_6TermIdNtNtCshzWfHUSfYae_4core3cmp10PartialOrd11partial_cmp"}
!2149 = distinct !{!2149, !2148, !"_RNvXs5u_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_idNtB6_6TermIdNtNtCshzWfHUSfYae_4core3cmp10PartialOrd11partial_cmp: argument 0"}
!2150 = distinct !{!2150, !2148, !"_RNvXs5u_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_idNtB6_6TermIdNtNtCshzWfHUSfYae_4core3cmp10PartialOrd11partial_cmp: argument 1"}
!2151 = distinct !{!2151, i1 true, !"_RNvXs5v_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_idNtB6_6TermIdNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp"}
!2152 = distinct !{!2152, !2151, !"_RNvXs5v_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_idNtB6_6TermIdNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp: argument 0"}
!2153 = distinct !{!2153, !2151, !"_RNvXs5v_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_idNtB6_6TermIdNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp: argument 1"}
!2154 = !{!2102, !2101}
!2155 = !{!2104, !2101}
!2156 = !{!2105, !2102, !2101}
!2157 = !{!2107, !2102}
!2158 = !{!2108, !2102, !2101}
!2159 = !{!2110}
!2160 = !{!2111}
!2161 = !{!2113}
!2162 = !{!2114}
!2163 = !{!2116}
!2164 = !{!2117}
!2165 = !{!2116, !2113, !2110}
!2166 = !{!2117, !2114, !2111}
!2167 = !{!2120, !2119}
!2168 = !{!2122, !2119}
!2169 = !{!2123, !2120, !2119}
!2170 = !{!2125, !2120}
!2171 = !{!2126, !2120, !2119}
!2172 = !{!2128}
!2173 = !{!2129}
!2174 = !{!2131}
!2175 = !{!2132}
!2176 = !{!2134}
!2177 = !{!2135}
!2178 = !{!2134, !2131, !2128}
!2179 = !{!2135, !2132, !2129}
!2180 = !{!2138, !2137}
!2181 = !{!2140, !2137}
!2182 = !{!2141, !2138, !2137}
!2183 = !{!2143, !2138}
!2184 = !{!2144, !2138, !2137}
!2185 = !{!2146}
!2186 = !{!2147}
!2187 = !{!2149}
!2188 = !{!2150}
!2189 = !{!2152}
!2190 = !{!2153}
!2191 = !{!2152, !2149, !2146}
!2192 = !{!2153, !2150, !2147}
!2193 = distinct !{!2193, i1 true, !"_RINvNvMNtCshzWfHUSfYae_4core5sliceSp7reverse7revswapNtCsileJQcQObtj_7hir_def7TraitIdECs8K4cjrcxBsw_6hir_ty"}
!2194 = distinct !{!2194, !2193, !"_RINvNvMNtCshzWfHUSfYae_4core5sliceSp7reverse7revswapNtCsileJQcQObtj_7hir_def7TraitIdECs8K4cjrcxBsw_6hir_ty: argument 0"}
!2195 = distinct !{!2195, !2193, !"_RINvNvMNtCshzWfHUSfYae_4core5sliceSp7reverse7revswapNtCsileJQcQObtj_7hir_def7TraitIdECs8K4cjrcxBsw_6hir_ty: argument 1"}
!2196 = distinct !{!2196, i1 true, !"_RNvMNtCshzWfHUSfYae_4core5sliceSNtCsileJQcQObtj_7hir_def7TraitId7reverseCs8K4cjrcxBsw_6hir_ty"}
!2197 = distinct !{!2197, !2196, !"_RNvMNtCshzWfHUSfYae_4core5sliceSNtCsileJQcQObtj_7hir_def7TraitId7reverseCs8K4cjrcxBsw_6hir_ty: argument 0"}
!2198 = distinct !{!2198, !31, !32}
!2199 = distinct !{!2199, !31}
!2200 = !{!2194}
!2201 = !{!2195}
!2202 = !{!2194, !2197}
!2203 = !{!2195, !2197}
!2204 = distinct !{!2204, i1 true, !"_RNvYNvYTNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor16MaybeInfiniteIntiENtNtCshzWfHUSfYae_4core3cmp10PartialOrd2ltINtNtNtB1t_3ops8function5FnMutTRB5_B2A_EE8call_mutCs8K4cjrcxBsw_6hir_ty"}
!2205 = distinct !{!2205, !2204, !"_RNvYNvYTNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor16MaybeInfiniteIntiENtNtCshzWfHUSfYae_4core3cmp10PartialOrd2ltINtNtNtB1t_3ops8function5FnMutTRB5_B2A_EE8call_mutCs8K4cjrcxBsw_6hir_ty: argument 0"}
!2206 = distinct !{!2206, !2204, !"_RNvYNvYTNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor16MaybeInfiniteIntiENtNtCshzWfHUSfYae_4core3cmp10PartialOrd2ltINtNtNtB1t_3ops8function5FnMutTRB5_B2A_EE8call_mutCs8K4cjrcxBsw_6hir_ty: argument 1"}
!2207 = distinct !{!2207, i1 true, !"_RNvXsc_NtCshzWfHUSfYae_4core5tupleTNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor16MaybeInfiniteIntiENtNtB7_3cmp10PartialOrd2ltCs8K4cjrcxBsw_6hir_ty"}
!2208 = distinct !{!2208, !2207, !"_RNvXsc_NtCshzWfHUSfYae_4core5tupleTNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor16MaybeInfiniteIntiENtNtB7_3cmp10PartialOrd2ltCs8K4cjrcxBsw_6hir_ty: argument 0"}
!2209 = distinct !{!2209, !2207, !"_RNvXsc_NtCshzWfHUSfYae_4core5tupleTNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor16MaybeInfiniteIntiENtNtB7_3cmp10PartialOrd2ltCs8K4cjrcxBsw_6hir_ty: argument 1"}
!2210 = distinct !{!2210, i1 true, !"_RNvXs16_NtNtCshzWfHUSfYae_4core3cmp5implsiNtB8_10PartialOrd2lt"}
!2211 = distinct !{!2211, !2210, !"_RNvXs16_NtNtCshzWfHUSfYae_4core3cmp5implsiNtB8_10PartialOrd2lt: argument 0"}
!2212 = distinct !{!2212, !2210, !"_RNvXs16_NtNtCshzWfHUSfYae_4core3cmp5implsiNtB8_10PartialOrd2lt: argument 1"}
!2213 = distinct !{!2213, i1 true, !"_RNvYNvYTNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor16MaybeInfiniteIntiENtNtCshzWfHUSfYae_4core3cmp10PartialOrd2ltINtNtNtB1t_3ops8function5FnMutTRB5_B2A_EE8call_mutCs8K4cjrcxBsw_6hir_ty"}
!2214 = distinct !{!2214, !2213, !"_RNvYNvYTNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor16MaybeInfiniteIntiENtNtCshzWfHUSfYae_4core3cmp10PartialOrd2ltINtNtNtB1t_3ops8function5FnMutTRB5_B2A_EE8call_mutCs8K4cjrcxBsw_6hir_ty: argument 0"}
!2215 = distinct !{!2215, !2213, !"_RNvYNvYTNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor16MaybeInfiniteIntiENtNtCshzWfHUSfYae_4core3cmp10PartialOrd2ltINtNtNtB1t_3ops8function5FnMutTRB5_B2A_EE8call_mutCs8K4cjrcxBsw_6hir_ty: argument 1"}
!2216 = distinct !{!2216, i1 true, !"_RNvXsc_NtCshzWfHUSfYae_4core5tupleTNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor16MaybeInfiniteIntiENtNtB7_3cmp10PartialOrd2ltCs8K4cjrcxBsw_6hir_ty"}
!2217 = distinct !{!2217, !2216, !"_RNvXsc_NtCshzWfHUSfYae_4core5tupleTNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor16MaybeInfiniteIntiENtNtB7_3cmp10PartialOrd2ltCs8K4cjrcxBsw_6hir_ty: argument 0"}
!2218 = distinct !{!2218, !2216, !"_RNvXsc_NtCshzWfHUSfYae_4core5tupleTNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor16MaybeInfiniteIntiENtNtB7_3cmp10PartialOrd2ltCs8K4cjrcxBsw_6hir_ty: argument 1"}
!2219 = distinct !{!2219, i1 true, !"_RNvXs16_NtNtCshzWfHUSfYae_4core3cmp5implsiNtB8_10PartialOrd2lt"}
!2220 = distinct !{!2220, !2219, !"_RNvXs16_NtNtCshzWfHUSfYae_4core3cmp5implsiNtB8_10PartialOrd2lt: argument 0"}
!2221 = distinct !{!2221, !2219, !"_RNvXs16_NtNtCshzWfHUSfYae_4core3cmp5implsiNtB8_10PartialOrd2lt: argument 1"}
!2222 = distinct !{!2222, i1 true, !"_RNvYNvYTNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor16MaybeInfiniteIntiENtNtCshzWfHUSfYae_4core3cmp10PartialOrd2ltINtNtNtB1t_3ops8function5FnMutTRB5_B2A_EE8call_mutCs8K4cjrcxBsw_6hir_ty"}
!2223 = distinct !{!2223, !2222, !"_RNvYNvYTNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor16MaybeInfiniteIntiENtNtCshzWfHUSfYae_4core3cmp10PartialOrd2ltINtNtNtB1t_3ops8function5FnMutTRB5_B2A_EE8call_mutCs8K4cjrcxBsw_6hir_ty: argument 0"}
!2224 = distinct !{!2224, !2222, !"_RNvYNvYTNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor16MaybeInfiniteIntiENtNtCshzWfHUSfYae_4core3cmp10PartialOrd2ltINtNtNtB1t_3ops8function5FnMutTRB5_B2A_EE8call_mutCs8K4cjrcxBsw_6hir_ty: argument 1"}
!2225 = distinct !{!2225, i1 true, !"_RNvXsc_NtCshzWfHUSfYae_4core5tupleTNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor16MaybeInfiniteIntiENtNtB7_3cmp10PartialOrd2ltCs8K4cjrcxBsw_6hir_ty"}
!2226 = distinct !{!2226, !2225, !"_RNvXsc_NtCshzWfHUSfYae_4core5tupleTNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor16MaybeInfiniteIntiENtNtB7_3cmp10PartialOrd2ltCs8K4cjrcxBsw_6hir_ty: argument 0"}
!2227 = distinct !{!2227, !2225, !"_RNvXsc_NtCshzWfHUSfYae_4core5tupleTNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor16MaybeInfiniteIntiENtNtB7_3cmp10PartialOrd2ltCs8K4cjrcxBsw_6hir_ty: argument 1"}
!2228 = distinct !{!2228, i1 true, !"_RNvXs16_NtNtCshzWfHUSfYae_4core3cmp5implsiNtB8_10PartialOrd2lt"}
!2229 = distinct !{!2229, !2228, !"_RNvXs16_NtNtCshzWfHUSfYae_4core3cmp5implsiNtB8_10PartialOrd2lt: argument 0"}
!2230 = distinct !{!2230, !2228, !"_RNvXs16_NtNtCshzWfHUSfYae_4core3cmp5implsiNtB8_10PartialOrd2lt: argument 1"}
!2231 = !{!2205}
!2232 = !{!2206}
!2233 = !{!2208}
!2234 = !{!2209}
!2235 = !{!2211}
!2236 = !{!2212}
!2237 = !{!2211, !2208, !2205}
!2238 = !{!2212, !2209, !2206}
!2239 = !{!2214}
!2240 = !{!2215}
!2241 = !{!2217}
!2242 = !{!2218}
!2243 = !{!2220}
!2244 = !{!2221}
!2245 = !{!2220, !2217, !2214}
!2246 = !{!2221, !2218, !2215}
!2247 = !{!2223}
!2248 = !{!2224}
!2249 = !{!2226}
!2250 = !{!2227}
!2251 = !{!2229}
!2252 = !{!2230}
!2253 = !{!2229, !2226, !2223}
!2254 = !{!2230, !2227, !2224}
!2255 = distinct !{!2255, i1 true, !"_RINvNvMNtCshzWfHUSfYae_4core5sliceSp7reverse7revswapmECs8K4cjrcxBsw_6hir_ty"}
!2256 = distinct !{!2256, !2255, !"_RINvNvMNtCshzWfHUSfYae_4core5sliceSp7reverse7revswapmECs8K4cjrcxBsw_6hir_ty: argument 0"}
!2257 = distinct !{!2257, !2255, !"_RINvNvMNtCshzWfHUSfYae_4core5sliceSp7reverse7revswapmECs8K4cjrcxBsw_6hir_ty: argument 1"}
!2258 = distinct !{!2258, i1 true, !"_RNvMNtCshzWfHUSfYae_4core5sliceSm7reverseCs8K4cjrcxBsw_6hir_ty"}
!2259 = distinct !{!2259, !2258, !"_RNvMNtCshzWfHUSfYae_4core5sliceSm7reverseCs8K4cjrcxBsw_6hir_ty: argument 0"}
!2260 = distinct !{!2260, !31, !32}
!2261 = distinct !{!2261, !32, !31}
!2262 = !{!2256}
!2263 = !{!2257}
!2264 = !{!2256, !2259}
!2265 = !{!2257, !2259}
!2266 = distinct !{!2266, i1 true, !"_RNCINvMNtCshzWfHUSfYae_4core5sliceSINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtBC_9predicate19ProjectionPredicateB1p_EE20sort_unstable_by_keyNtNtB1t_6def_id6TermIdNCNvMs1_NtB1v_5lowerNtB3X_17TyLoweringContext15lower_dyn_traits4_0E0B1v_"}
!2267 = distinct !{!2267, !2266, !"_RNCINvMNtCshzWfHUSfYae_4core5sliceSINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtBC_9predicate19ProjectionPredicateB1p_EE20sort_unstable_by_keyNtNtB1t_6def_id6TermIdNCNvMs1_NtB1v_5lowerNtB3X_17TyLoweringContext15lower_dyn_traits4_0E0B1v_: argument 1"}
!2268 = distinct !{!2268, !2266, !"_RNCINvMNtCshzWfHUSfYae_4core5sliceSINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtBC_9predicate19ProjectionPredicateB1p_EE20sort_unstable_by_keyNtNtB1t_6def_id6TermIdNCNvMs1_NtB1v_5lowerNtB3X_17TyLoweringContext15lower_dyn_traits4_0E0B1v_: argument 0"}
!2269 = distinct !{!2269, i1 true, !"_RNCNvMs1_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB7_17TyLoweringContext15lower_dyn_traits4_0B9_"}
!2270 = distinct !{!2270, !2269, !"_RNCNvMs1_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB7_17TyLoweringContext15lower_dyn_traits4_0B9_: argument 0"}
!2271 = distinct !{!2271, !2269, !"_RNCNvMs1_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB7_17TyLoweringContext15lower_dyn_traits4_0B9_: argument 1"}
!2272 = distinct !{!2272, i1 true, !"_RNCNvMs1_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB7_17TyLoweringContext15lower_dyn_traits4_0B9_"}
!2273 = distinct !{!2273, !2272, !"_RNCNvMs1_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB7_17TyLoweringContext15lower_dyn_traits4_0B9_: argument 0"}
!2274 = distinct !{!2274, !2272, !"_RNCNvMs1_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB7_17TyLoweringContext15lower_dyn_traits4_0B9_: argument 1"}
!2275 = distinct !{!2275, i1 true, !"_RNvYNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_id6TermIdNtNtCshzWfHUSfYae_4core3cmp10PartialOrd2ltB8_"}
!2276 = distinct !{!2276, !2275, !"_RNvYNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_id6TermIdNtNtCshzWfHUSfYae_4core3cmp10PartialOrd2ltB8_: argument 0"}
!2277 = distinct !{!2277, !2275, !"_RNvYNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_id6TermIdNtNtCshzWfHUSfYae_4core3cmp10PartialOrd2ltB8_: argument 1"}
!2278 = distinct !{!2278, i1 true, !"_RNvXs5u_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_idNtB6_6TermIdNtNtCshzWfHUSfYae_4core3cmp10PartialOrd11partial_cmp"}
!2279 = distinct !{!2279, !2278, !"_RNvXs5u_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_idNtB6_6TermIdNtNtCshzWfHUSfYae_4core3cmp10PartialOrd11partial_cmp: argument 0"}
!2280 = distinct !{!2280, !2278, !"_RNvXs5u_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_idNtB6_6TermIdNtNtCshzWfHUSfYae_4core3cmp10PartialOrd11partial_cmp: argument 1"}
!2281 = distinct !{!2281, i1 true, !"_RNvXs5v_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_idNtB6_6TermIdNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp"}
!2282 = distinct !{!2282, !2281, !"_RNvXs5v_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_idNtB6_6TermIdNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp: argument 0"}
!2283 = distinct !{!2283, !2281, !"_RNvXs5v_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_idNtB6_6TermIdNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp: argument 1"}
!2284 = distinct !{!2284, i1 true, !"_RNCINvMNtCshzWfHUSfYae_4core5sliceSINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtBC_9predicate19ProjectionPredicateB1p_EE20sort_unstable_by_keyNtNtB1t_6def_id6TermIdNCNvMs1_NtB1v_5lowerNtB3X_17TyLoweringContext15lower_dyn_traits4_0E0B1v_"}
!2285 = distinct !{!2285, !2284, !"_RNCINvMNtCshzWfHUSfYae_4core5sliceSINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtBC_9predicate19ProjectionPredicateB1p_EE20sort_unstable_by_keyNtNtB1t_6def_id6TermIdNCNvMs1_NtB1v_5lowerNtB3X_17TyLoweringContext15lower_dyn_traits4_0E0B1v_: argument 1"}
!2286 = distinct !{!2286, !2284, !"_RNCINvMNtCshzWfHUSfYae_4core5sliceSINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtBC_9predicate19ProjectionPredicateB1p_EE20sort_unstable_by_keyNtNtB1t_6def_id6TermIdNCNvMs1_NtB1v_5lowerNtB3X_17TyLoweringContext15lower_dyn_traits4_0E0B1v_: argument 0"}
!2287 = distinct !{!2287, i1 true, !"_RNCNvMs1_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB7_17TyLoweringContext15lower_dyn_traits4_0B9_"}
!2288 = distinct !{!2288, !2287, !"_RNCNvMs1_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB7_17TyLoweringContext15lower_dyn_traits4_0B9_: argument 0"}
!2289 = distinct !{!2289, !2287, !"_RNCNvMs1_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB7_17TyLoweringContext15lower_dyn_traits4_0B9_: argument 1"}
!2290 = distinct !{!2290, i1 true, !"_RNCNvMs1_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB7_17TyLoweringContext15lower_dyn_traits4_0B9_"}
!2291 = distinct !{!2291, !2290, !"_RNCNvMs1_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB7_17TyLoweringContext15lower_dyn_traits4_0B9_: argument 0"}
!2292 = distinct !{!2292, !2290, !"_RNCNvMs1_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB7_17TyLoweringContext15lower_dyn_traits4_0B9_: argument 1"}
!2293 = distinct !{!2293, i1 true, !"_RNvYNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_id6TermIdNtNtCshzWfHUSfYae_4core3cmp10PartialOrd2ltB8_"}
!2294 = distinct !{!2294, !2293, !"_RNvYNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_id6TermIdNtNtCshzWfHUSfYae_4core3cmp10PartialOrd2ltB8_: argument 0"}
!2295 = distinct !{!2295, !2293, !"_RNvYNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_id6TermIdNtNtCshzWfHUSfYae_4core3cmp10PartialOrd2ltB8_: argument 1"}
!2296 = distinct !{!2296, i1 true, !"_RNvXs5u_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_idNtB6_6TermIdNtNtCshzWfHUSfYae_4core3cmp10PartialOrd11partial_cmp"}
!2297 = distinct !{!2297, !2296, !"_RNvXs5u_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_idNtB6_6TermIdNtNtCshzWfHUSfYae_4core3cmp10PartialOrd11partial_cmp: argument 0"}
!2298 = distinct !{!2298, !2296, !"_RNvXs5u_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_idNtB6_6TermIdNtNtCshzWfHUSfYae_4core3cmp10PartialOrd11partial_cmp: argument 1"}
!2299 = distinct !{!2299, i1 true, !"_RNvXs5v_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_idNtB6_6TermIdNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp"}
!2300 = distinct !{!2300, !2299, !"_RNvXs5v_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_idNtB6_6TermIdNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp: argument 0"}
!2301 = distinct !{!2301, !2299, !"_RNvXs5v_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_idNtB6_6TermIdNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp: argument 1"}
!2302 = distinct !{!2302, i1 true, !"_RNCINvMNtCshzWfHUSfYae_4core5sliceSINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtBC_9predicate19ProjectionPredicateB1p_EE20sort_unstable_by_keyNtNtB1t_6def_id6TermIdNCNvMs1_NtB1v_5lowerNtB3X_17TyLoweringContext15lower_dyn_traits4_0E0B1v_"}
!2303 = distinct !{!2303, !2302, !"_RNCINvMNtCshzWfHUSfYae_4core5sliceSINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtBC_9predicate19ProjectionPredicateB1p_EE20sort_unstable_by_keyNtNtB1t_6def_id6TermIdNCNvMs1_NtB1v_5lowerNtB3X_17TyLoweringContext15lower_dyn_traits4_0E0B1v_: argument 1"}
!2304 = distinct !{!2304, !2302, !"_RNCINvMNtCshzWfHUSfYae_4core5sliceSINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir6binder6BinderNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtBC_9predicate19ProjectionPredicateB1p_EE20sort_unstable_by_keyNtNtB1t_6def_id6TermIdNCNvMs1_NtB1v_5lowerNtB3X_17TyLoweringContext15lower_dyn_traits4_0E0B1v_: argument 0"}
!2305 = distinct !{!2305, i1 true, !"_RNCNvMs1_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB7_17TyLoweringContext15lower_dyn_traits4_0B9_"}
!2306 = distinct !{!2306, !2305, !"_RNCNvMs1_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB7_17TyLoweringContext15lower_dyn_traits4_0B9_: argument 0"}
!2307 = distinct !{!2307, !2305, !"_RNCNvMs1_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB7_17TyLoweringContext15lower_dyn_traits4_0B9_: argument 1"}
!2308 = distinct !{!2308, i1 true, !"_RNCNvMs1_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB7_17TyLoweringContext15lower_dyn_traits4_0B9_"}
!2309 = distinct !{!2309, !2308, !"_RNCNvMs1_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB7_17TyLoweringContext15lower_dyn_traits4_0B9_: argument 0"}
!2310 = distinct !{!2310, !2308, !"_RNCNvMs1_NtCs8K4cjrcxBsw_6hir_ty5lowerNtB7_17TyLoweringContext15lower_dyn_traits4_0B9_: argument 1"}
!2311 = distinct !{!2311, i1 true, !"_RNvYNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_id6TermIdNtNtCshzWfHUSfYae_4core3cmp10PartialOrd2ltB8_"}
!2312 = distinct !{!2312, !2311, !"_RNvYNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_id6TermIdNtNtCshzWfHUSfYae_4core3cmp10PartialOrd2ltB8_: argument 0"}
!2313 = distinct !{!2313, !2311, !"_RNvYNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_id6TermIdNtNtCshzWfHUSfYae_4core3cmp10PartialOrd2ltB8_: argument 1"}
!2314 = distinct !{!2314, i1 true, !"_RNvXs5u_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_idNtB6_6TermIdNtNtCshzWfHUSfYae_4core3cmp10PartialOrd11partial_cmp"}
!2315 = distinct !{!2315, !2314, !"_RNvXs5u_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_idNtB6_6TermIdNtNtCshzWfHUSfYae_4core3cmp10PartialOrd11partial_cmp: argument 0"}
!2316 = distinct !{!2316, !2314, !"_RNvXs5u_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_idNtB6_6TermIdNtNtCshzWfHUSfYae_4core3cmp10PartialOrd11partial_cmp: argument 1"}
!2317 = distinct !{!2317, i1 true, !"_RNvXs5v_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_idNtB6_6TermIdNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp"}
!2318 = distinct !{!2318, !2317, !"_RNvXs5v_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_idNtB6_6TermIdNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp: argument 0"}
!2319 = distinct !{!2319, !2317, !"_RNvXs5v_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_idNtB6_6TermIdNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp: argument 1"}
!2320 = !{!2268, !2267}
!2321 = !{!2270, !2267}
!2322 = !{!2271, !2268, !2267}
!2323 = !{!2273, !2268}
!2324 = !{!2274, !2268, !2267}
!2325 = !{!2276}
!2326 = !{!2277}
!2327 = !{!2279}
!2328 = !{!2280}
!2329 = !{!2282}
!2330 = !{!2283}
!2331 = !{!2282, !2279, !2276}
!2332 = !{!2283, !2280, !2277}
!2333 = !{!2286, !2285}
!2334 = !{!2288, !2285}
!2335 = !{!2289, !2286, !2285}
!2336 = !{!2291, !2286}
!2337 = !{!2292, !2286, !2285}
!2338 = !{!2294}
!2339 = !{!2295}
!2340 = !{!2297}
!2341 = !{!2298}
!2342 = !{!2300}
!2343 = !{!2301}
!2344 = !{!2300, !2297, !2294}
!2345 = !{!2301, !2298, !2295}
!2346 = !{!2304, !2303}
!2347 = !{!2306, !2303}
!2348 = !{!2307, !2304, !2303}
!2349 = !{!2309, !2304}
!2350 = !{!2310, !2304, !2303}
!2351 = !{!2312}
!2352 = !{!2313}
!2353 = !{!2315}
!2354 = !{!2316}
!2355 = !{!2318}
!2356 = !{!2319}
!2357 = !{!2318, !2315, !2312}
!2358 = !{!2319, !2316, !2313}
!2359 = distinct !{!2359, i1 true, !"_RNvXsm_NtCshzWfHUSfYae_4core5tupleTINtNtB7_3cmp7ReverseyEoyENtBA_10PartialOrd2ltCs8K4cjrcxBsw_6hir_ty"}
!2360 = distinct !{!2360, !2359, !"_RNvXsm_NtCshzWfHUSfYae_4core5tupleTINtNtB7_3cmp7ReverseyEoyENtBA_10PartialOrd2ltCs8K4cjrcxBsw_6hir_ty: argument 0"}
!2361 = distinct !{!2361, !2359, !"_RNvXsm_NtCshzWfHUSfYae_4core5tupleTINtNtB7_3cmp7ReverseyEoyENtBA_10PartialOrd2ltCs8K4cjrcxBsw_6hir_ty: argument 1"}
!2362 = distinct !{!2362, i1 true, !"_RNvXs12_NtNtCshzWfHUSfYae_4core3cmp5implsyNtB8_10PartialOrd2lt"}
!2363 = distinct !{!2363, !2362, !"_RNvXs12_NtNtCshzWfHUSfYae_4core3cmp5implsyNtB8_10PartialOrd2lt: argument 0"}
!2364 = distinct !{!2364, !2362, !"_RNvXs12_NtNtCshzWfHUSfYae_4core3cmp5implsyNtB8_10PartialOrd2lt: argument 1"}
!2365 = distinct !{!2365, i1 true, !"_RNvXsm_NtCshzWfHUSfYae_4core5tupleTINtNtB7_3cmp7ReverseyEoyENtBA_10PartialOrd2ltCs8K4cjrcxBsw_6hir_ty"}
!2366 = distinct !{!2366, !2365, !"_RNvXsm_NtCshzWfHUSfYae_4core5tupleTINtNtB7_3cmp7ReverseyEoyENtBA_10PartialOrd2ltCs8K4cjrcxBsw_6hir_ty: argument 0"}
!2367 = distinct !{!2367, !2365, !"_RNvXsm_NtCshzWfHUSfYae_4core5tupleTINtNtB7_3cmp7ReverseyEoyENtBA_10PartialOrd2ltCs8K4cjrcxBsw_6hir_ty: argument 1"}
!2368 = distinct !{!2368, i1 true, !"_RNvXs12_NtNtCshzWfHUSfYae_4core3cmp5implsyNtB8_10PartialOrd2lt"}
!2369 = distinct !{!2369, !2368, !"_RNvXs12_NtNtCshzWfHUSfYae_4core3cmp5implsyNtB8_10PartialOrd2lt: argument 0"}
!2370 = distinct !{!2370, !2368, !"_RNvXs12_NtNtCshzWfHUSfYae_4core3cmp5implsyNtB8_10PartialOrd2lt: argument 1"}
!2371 = distinct !{!2371, i1 true, !"_RNvXsm_NtCshzWfHUSfYae_4core5tupleTINtNtB7_3cmp7ReverseyEoyENtBA_10PartialOrd2ltCs8K4cjrcxBsw_6hir_ty"}
!2372 = distinct !{!2372, !2371, !"_RNvXsm_NtCshzWfHUSfYae_4core5tupleTINtNtB7_3cmp7ReverseyEoyENtBA_10PartialOrd2ltCs8K4cjrcxBsw_6hir_ty: argument 0"}
!2373 = distinct !{!2373, !2371, !"_RNvXsm_NtCshzWfHUSfYae_4core5tupleTINtNtB7_3cmp7ReverseyEoyENtBA_10PartialOrd2ltCs8K4cjrcxBsw_6hir_ty: argument 1"}
!2374 = distinct !{!2374, i1 true, !"_RNvXs12_NtNtCshzWfHUSfYae_4core3cmp5implsyNtB8_10PartialOrd2lt"}
!2375 = distinct !{!2375, !2374, !"_RNvXs12_NtNtCshzWfHUSfYae_4core3cmp5implsyNtB8_10PartialOrd2lt: argument 0"}
!2376 = distinct !{!2376, !2374, !"_RNvXs12_NtNtCshzWfHUSfYae_4core3cmp5implsyNtB8_10PartialOrd2lt: argument 1"}
!2377 = !{!2360}
!2378 = !{!2361}
!2379 = !{!2363}
!2380 = !{!2364}
!2381 = !{!2363, !2360}
!2382 = !{!2364, !2361}
!2383 = !{!2366}
!2384 = !{!2367}
!2385 = !{!2369}
!2386 = !{!2370}
!2387 = !{!2369, !2366}
!2388 = !{!2370, !2367}
!2389 = !{!2372}
!2390 = !{!2373}
!2391 = !{!2375}
!2392 = !{!2376}
!2393 = !{!2375, !2372}
!2394 = !{!2376, !2373}
!2395 = distinct !{!2395, i1 true, !"_RNvYNvYTNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor16MaybeInfiniteIntiENtNtCshzWfHUSfYae_4core3cmp10PartialOrd2ltINtNtNtB1t_3ops8function5FnMutTRB5_B2A_EE8call_mutCs8K4cjrcxBsw_6hir_ty"}
!2396 = distinct !{!2396, !2395, !"_RNvYNvYTNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor16MaybeInfiniteIntiENtNtCshzWfHUSfYae_4core3cmp10PartialOrd2ltINtNtNtB1t_3ops8function5FnMutTRB5_B2A_EE8call_mutCs8K4cjrcxBsw_6hir_ty: argument 0"}
!2397 = distinct !{!2397, !2395, !"_RNvYNvYTNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor16MaybeInfiniteIntiENtNtCshzWfHUSfYae_4core3cmp10PartialOrd2ltINtNtNtB1t_3ops8function5FnMutTRB5_B2A_EE8call_mutCs8K4cjrcxBsw_6hir_ty: argument 1"}
!2398 = distinct !{!2398, i1 true, !"_RNvXsc_NtCshzWfHUSfYae_4core5tupleTNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor16MaybeInfiniteIntiENtNtB7_3cmp10PartialOrd2ltCs8K4cjrcxBsw_6hir_ty"}
!2399 = distinct !{!2399, !2398, !"_RNvXsc_NtCshzWfHUSfYae_4core5tupleTNtNtCs87KLmgHaecV_28ra_ap_rustc_pattern_analysis11constructor16MaybeInfiniteIntiENtNtB7_3cmp10PartialOrd2ltCs8K4cjrcxBsw_6hir_ty: argument 0"}
end_hunk_1
