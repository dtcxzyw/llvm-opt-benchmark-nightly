Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/hir_ty-548eb6ecf0a49818.hir_ty.65d5e02866c8e496-cgu.10?download=true
inline.NumInlined: 7065
inline.NumDeleted: 2270
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 42
loop-unroll.NumUnrolled: 47
begin_hunk_0_@_RNvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTNtNtCsileJQcQObtj_7hir_def3hir17ExprOrPatIdPackeduEE5clearCs8K4cjrcxBsw_6hir_ty:bb.a
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsfjX3T6UU9IB_9hashbrown10scopeguard10ScopeGuardQINtNtBG_3raw8RawTableTNtNtCsileJQcQObtj_7hir_def3hir17ExprOrPatIdPackeduEENCNvMs6_B1w_B1t_5clear0EECs8K4cjrcxBsw_6hir_ty.exit5

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsfjX3T6UU9IB_9hashbrown10scopeguard10ScopeGuardQINtNtBG_3raw8RawTableTNtNtCsileJQcQObtj_7hir_def3hir17ExprOrPatIdPackeduEENCNvMs6_B1w_B1t_5clear0EECs8K4cjrcxBsw_6hir_ty.exit5: ; preds = %bb.b, %bb.c
  %i.m = phi i64 [ %spec.select.i.i.i4, %bb.c ], [ 0, %bb.b ]
  store i64 0, ptr %i.a, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.m, ptr %i.n, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsfjX3T6UU9IB_9hashbrown10scopeguard10ScopeGuardQINtNtBG_3raw8RawTableTNtNtCsileJQcQObtj_7hir_def3hir17ExprOrPatIdPackeduEENCNvMs6_B1w_B1t_5clear0EECs8K4cjrcxBsw_6hir_ty.exit5
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden noundef nonnull ptr @_RNvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_arg10GenericArgNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir8BoundVarEE14insert_no_growBV_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, i64 noundef %1, ptr noundef nonnull %2, i32 noundef %3) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !12, !noundef !12 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val2 = load i64, ptr %i.a, align 8, !noundef !12 ; 4 uses
  %.sroa.0.07.i = and i64 %.val2, %1              ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.07.i
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.b, align 1, !noalias !10846
  %i.c = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer
  %i.d = bitcast <16 x i1> %i.c to i16            ; 2 uses
  %.not.i9.i = icmp eq i16 %i.d, 0
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !prof !19

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.a
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %bb.a ], [ %.sroa.0.0.i, %.lr.ph.i ]
  %.lcssa.i = phi i16 [ %i.d, %bb.a ], [ %i.u, %.lr.ph.i ]
  %i.e = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.f = zext nneg i16 %i.e to i64
  %i.g = add i64 %.sroa.0.0.lcssa.i, %i.f
  %i.h = and i64 %i.g, %.val2                     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.val, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1, !noundef !12 ; 2 uses
  %i.k = icmp sgt i8 %i.j, -1
  br i1 %i.k, label %bb.b, label %_RNvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !prof !14

bb.b:                                             ; preds = %._crit_edge.i
  %.val62.i.i = load <16 x i8>, ptr %.val, align 16
  %i.l = icmp slt <16 x i8> %.val62.i.i, zeroinitializer
  %i.m = bitcast <16 x i1> %i.l to i16            ; 2 uses
  %.not.i6.i = icmp ne i16 %i.m, 0
  %i.n = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.m, i1 true)
  %i.o = zext nneg i16 %i.n to i64                ; 2 uses
  tail call void @llvm.assume(i1 %.not.i6.i)
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.val, i64 %i.o
  %.pre = load i8, ptr %.phi.trans.insert, align 1
  br label %_RNvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i, %.lr.ph.i ], [ %.sroa.0.07.i, %bb.a ]
  %i.p = phi i64 [ %i.q, %.lr.ph.i ], [ 0, %bb.a ]
  %i.q = add i64 %i.p, 16                         ; 2 uses
  %i.r = add i64 %i.q, %.sroa.0.010.i
  %.sroa.0.0.i = and i64 %i.r, %.val2             ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.0.i
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.s, align 1, !noalias !10846
  %i.t = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.u = bitcast <16 x i1> %i.t to i16            ; 2 uses
  %.not.i.i = icmp eq i16 %i.u, 0
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !prof !20

_RNvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %._crit_edge.i, %bb.b
  %i.v = phi i8 [ %.pre, %bb.b ], [ %i.j, %._crit_edge.i ]
  %.sroa.0.0.i5.i = phi i64 [ %i.o, %bb.b ], [ %i.h, %._crit_edge.i ] ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.0.i5.i
  %i.x = lshr i64 %1, 57
  %i.y = trunc nuw nsw i64 %i.x to i8             ; 2 uses
  %i.z = add i64 %.sroa.0.0.i5.i, -16
  %i.aa = and i64 %i.z, %.val2
  store i8 %i.y, ptr %i.w, align 1
  %i.ab = getelementptr i8, ptr %.val, i64 %i.aa
  %i.ac = getelementptr i8, ptr %i.ab, i64 16
  store i8 %i.y, ptr %i.ac, align 1
  %i.ad = sub nsw i64 0, %.sroa.0.0.i5.i
  %i.ae = getelementptr inbounds [16 x i8], ptr %.val, i64 %i.ad ; 3 uses
  %i.af = and i8 %i.v, 1
  %i.ag = zext nneg i8 %i.af to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ai = getelementptr inbounds i8, ptr %i.ae, i64 -16
  store ptr %2, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds i8, ptr %i.ae, i64 -8
  store i32 %3, ptr %i.aj, align 8
  %i.ak = load <2 x i64>, ptr %i.ah, align 8
  %i.al = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.ag, i64 0
  %i.am = sub <2 x i64> %i.ak, %i.al
  store <2 x i64> %i.am, ptr %i.ah, align 8
  ret ptr %i.ae
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden noundef nonnull ptr @_RNvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_arg10GenericArgjEE14insert_no_growBV_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, i64 noundef %1, ptr noundef nonnull %2, i64 noundef %3) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !12, !noundef !12 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val2 = load i64, ptr %i.a, align 8, !noundef !12 ; 4 uses
  %.sroa.0.07.i = and i64 %.val2, %1              ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.07.i
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.b, align 1, !noalias !10849
  %i.c = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer
  %i.d = bitcast <16 x i1> %i.c to i16            ; 2 uses
  %.not.i9.i = icmp eq i16 %i.d, 0
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !prof !19

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.a
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %bb.a ], [ %.sroa.0.0.i, %.lr.ph.i ]
  %.lcssa.i = phi i16 [ %i.d, %bb.a ], [ %i.u, %.lr.ph.i ]
  %i.e = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.f = zext nneg i16 %i.e to i64
  %i.g = add i64 %.sroa.0.0.lcssa.i, %i.f
  %i.h = and i64 %i.g, %.val2                     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.val, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1, !noundef !12 ; 2 uses
  %i.k = icmp sgt i8 %i.j, -1
  br i1 %i.k, label %bb.b, label %_RNvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !prof !14

bb.b:                                             ; preds = %._crit_edge.i
  %.val62.i.i = load <16 x i8>, ptr %.val, align 16
  %i.l = icmp slt <16 x i8> %.val62.i.i, zeroinitializer
  %i.m = bitcast <16 x i1> %i.l to i16            ; 2 uses
  %.not.i6.i = icmp ne i16 %i.m, 0
  %i.n = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.m, i1 true)
  %i.o = zext nneg i16 %i.n to i64                ; 2 uses
  tail call void @llvm.assume(i1 %.not.i6.i)
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.val, i64 %i.o
  %.pre = load i8, ptr %.phi.trans.insert, align 1
  br label %_RNvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i, %.lr.ph.i ], [ %.sroa.0.07.i, %bb.a ]
  %i.p = phi i64 [ %i.q, %.lr.ph.i ], [ 0, %bb.a ]
  %i.q = add i64 %i.p, 16                         ; 2 uses
  %i.r = add i64 %i.q, %.sroa.0.010.i
  %.sroa.0.0.i = and i64 %i.r, %.val2             ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.0.i
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.s, align 1, !noalias !10849
  %i.t = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.u = bitcast <16 x i1> %i.t to i16            ; 2 uses
  %.not.i.i = icmp eq i16 %i.u, 0
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !prof !20

_RNvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %._crit_edge.i, %bb.b
  %i.v = phi i8 [ %.pre, %bb.b ], [ %i.j, %._crit_edge.i ]
  %.sroa.0.0.i5.i = phi i64 [ %i.o, %bb.b ], [ %i.h, %._crit_edge.i ] ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.0.i5.i
  %i.x = lshr i64 %1, 57
  %i.y = trunc nuw nsw i64 %i.x to i8             ; 2 uses
  %i.z = add i64 %.sroa.0.0.i5.i, -16
  %i.aa = and i64 %i.z, %.val2
  store i8 %i.y, ptr %i.w, align 1
  %i.ab = getelementptr i8, ptr %.val, i64 %i.aa
  %i.ac = getelementptr i8, ptr %i.ab, i64 16
  store i8 %i.y, ptr %i.ac, align 1
  %i.ad = sub nsw i64 0, %.sroa.0.0.i5.i
  %i.ae = getelementptr inbounds [16 x i8], ptr %.val, i64 %i.ad ; 3 uses
  %i.af = and i8 %i.v, 1
  %i.ag = zext nneg i8 %i.af to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ai = getelementptr inbounds i8, ptr %i.ae, i64 -16
  store ptr %2, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds i8, ptr %i.ae, i64 -8
  store i64 %3, ptr %i.aj, align 8
  %i.ak = load <2 x i64>, ptr %i.ah, align 8
  %i.al = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.ag, i64 0
  %i.am = sub <2 x i64> %i.ak, %i.al
  store <2 x i64> %i.am, ptr %i.ah, align 8
  ret ptr %i.ae
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty2TyBP_EE16with_capacity_inBV_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 24)) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call fastcc void @_RINvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCsbSS6DM8SDEO_5alloc5alloc6GlobalECs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, i64 noundef 16, i64 noundef %1, i1 noundef zeroext true) #54
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTjjEE16with_capacity_inCs8K4cjrcxBsw_6hir_ty(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 24)) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call fastcc void @_RINvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCsbSS6DM8SDEO_5alloc5alloc6GlobalECs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, i64 noundef 16, i64 noundef %1, i1 noundef zeroext true) #54
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs7_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir12search_graphINtB5_11SearchGraphINtNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve12search_graph19SearchGraphDelegateNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6solver13SolverContextENtNtB2M_8interner10DbInternerE13evaluate_goalB2O_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([96 x i8]) align 8 captures(none) dereferenceable(96) %0, ptr noalias nofree noundef align 8 dereferenceable(64) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %2, ptr noalias nofree noundef readonly align 8 captures(address) dead_on_return dereferenceable(56) %3, i8 noundef range(i8 0, 4) %4, ptr noalias nofree noundef align 8 dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [184 x i8], align 8               ; 6 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [32 x i8], align 8                ; 7 uses
  %i.g = alloca [264 x i8], align 8               ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 7 uses
  %i.i = alloca [56 x i8], align 8                ; 4 uses
  %i.j = alloca [56 x i8], align 8                ; 6 uses
  %i.k = alloca [56 x i8], align 8                ; 4 uses
  %i.l = alloca [32 x i8], align 8                ; 7 uses
  %i.m = alloca [28 x i8], align 4                ; 9 uses
  %i.n = alloca [8 x i8], align 8                 ; 4 uses
  %i.o = alloca [16 x i8], align 8                ; 5 uses
  %i.p = alloca [16 x i8], align 8                ; 5 uses
  %i.q = alloca [32 x i8], align 8                ; 7 uses
  %i.r = alloca [1 x i8], align 1                 ; 6 uses
  %i.s = alloca [4 x i8], align 4                 ; 5 uses
  %i.t = alloca [32 x i8], align 8                ; 7 uses
  %i.u = alloca [16 x i8], align 8                ; 5 uses
  %i.v = alloca [16 x i8], align 8                ; 5 uses
  %i.w = alloca [56 x i8], align 8                ; 4 uses
  %i.x = alloca [8 x i8], align 8                 ; 5 uses
  %i.y = alloca [32 x i8], align 8                ; 7 uses
  %i.z = alloca [8 x i8], align 8                 ; 4 uses
  %i.aa = alloca [8 x i8], align 8                ; 4 uses
  %i.ab = alloca [16 x i8], align 8               ; 5 uses
  %i.ac = alloca [48 x i8], align 8               ; 9 uses
  %i.ad = alloca [56 x i8], align 8               ; 4 uses
  %i.ae = alloca [72 x i8], align 8               ; 11 uses
  %i.af = alloca [4 x i8], align 4                ; 5 uses
  %.sroa.0146.i = alloca [40 x i8], align 8       ; 5 uses
  %.sroa.6148.i = alloca [52 x i8], align 4       ; 5 uses
  %i.ag = alloca [1 x i8], align 1                ; 5 uses
  %i.ah = alloca [32 x i8], align 8               ; 7 uses
  %i.ai = alloca [72 x i8], align 8               ; 10 uses
  %i.aj = alloca [40 x i8], align 8               ; 8 uses
  %i.ak = alloca [32 x i8], align 8               ; 4 uses
  %i.al = alloca [128 x i8], align 8              ; 5 uses
  %i.am = alloca [8 x i8], align 8                ; 4 uses
  %i.an = alloca [16 x i8], align 8               ; 5 uses
  %i.ao = alloca [128 x i8], align 8              ; 8 uses
  %i.ap = alloca [96 x i8], align 8               ; 4 uses
  %i.aq = alloca [24 x i8], align 8               ; 6 uses
  %i.ar = alloca [56 x i8], align 8               ; 5 uses
  %.sroa.9.i = alloca [32 x i8], align 8          ; 4 uses
  %i.as = alloca [168 x i8], align 8              ; 6 uses
  %i.at = alloca [56 x i8], align 8               ; 4 uses
  %i.au = alloca [32 x i8], align 8               ; 5 uses
  %i.av = alloca [96 x i8], align 8               ; 7 uses
  %i.aw = alloca [56 x i8], align 8               ; 5 uses
  %i.ax = alloca [72 x i8], align 8               ; 12 uses
  %i.ay = alloca [32 x i8], align 8               ; 7 uses
  %i.az = alloca [32 x i8], align 8               ; 4 uses
  %i.ba = alloca [168 x i8], align 8              ; 4 uses
  %i.bb = alloca [168 x i8], align 8              ; 14 uses
  %i.bc = alloca [264 x i8], align 8              ; 16 uses
  %i.bd = alloca [56 x i8], align 8               ; 8 uses
  %i.be = alloca [32 x i8], align 8               ; 5 uses
  %i.bf = alloca [96 x i8], align 8               ; 7 uses
  %i.bg = alloca [8 x i8], align 8                ; 4 uses
  %i.bh = alloca [1 x i8], align 1                ; 4 uses
  %i.bi = alloca [56 x i8], align 8               ; 4 uses
  %i.bj = alloca [32 x i8], align 8               ; 4 uses
  %i.bk = alloca [96 x i8], align 8               ; 6 uses
  %i.bl = alloca [56 x i8], align 8               ; 6 uses
  %.sroa.0.i = alloca [40 x i8], align 8          ; 5 uses
  %.sroa.8.i = alloca [52 x i8], align 4          ; 5 uses
  %i.bm = alloca [32 x i8], align 8               ; 4 uses
  %i.bn = alloca [32 x i8], align 8               ; 7 uses
  %i.bo = alloca [8 x i8], align 8                ; 4 uses
  %i.bp = alloca [16 x i8], align 8               ; 5 uses
  %i.bq = alloca [112 x i8], align 8              ; 14 uses
  %i.br = alloca [96 x i8], align 8               ; 13 uses
  %i.bs = alloca [40 x i8], align 8               ; 4 uses
  %i.bt = alloca [8 x i8], align 8                ; 4 uses
  %i.bu = alloca [8 x i8], align 8                ; 4 uses
  %i.bv = alloca [32 x i8], align 8               ; 7 uses
  %i.bw = alloca [32 x i8], align 8               ; 7 uses
  %i.bx = alloca [40 x i8], align 8               ; 17 uses
  %i.by = alloca [1 x i8], align 1                ; 3 uses
  store i8 %4, ptr %i.by, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bx)
  %i.bz = load atomic i64, ptr @_RNvNtCsaMQbKjKCVRW_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.ca = icmp ult i64 %i.bz, 2
  br i1 %i.ca, label %bb.dn, label %bb.b

.loopexit:                                        ; preds = %.lr.ph.i.i, %bb.j, %bb.q
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit:                      ; preds = %.lr.ph.i.i.i.i
  %lpad.loopexit95 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.df, %_RNvMNtCs6q8GQ6zN3Tv_17ra_ap_rustc_index3vecINtB2_8IndexVecNtNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir12search_graph5stack10StackDepthINtBW_10StackEntryNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEE4pushB2t_.exit.i, %bb.bj, %bb.bh, %bb.bf, %_RNvMs4_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir12search_graphNtB5_13PathsToNested11extend_with.exit.i.i.i, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map7HashMapNtNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir12search_graph5stack10StackDepthNtB2g_10HeadUsagesNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEEE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultECs8K4cjrcxBsw_6hir_ty.exit.i.i.i, %bb.au, %switch.lookup218, %bb.ar, %bb.aq, %switch.lookup, %bb.ap, %bb.ao, %bb.an, %bb.ah, %bb.ag, %bb.af, %_RNvMs7_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir12search_graphINtB5_11SearchGraphINtNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve12search_graph19SearchGraphDelegateNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6solver13SolverContextENtNtB2M_8interner10DbInternerE15handle_overflowB2O_.exit.i, %bb.ac, %bb.ab, %bb.aa, %bb.y, %bb.x, %bb.w, %bb.v, %bb.t, %bb.p, %bb.f, %bb.ef, %bb.eb, %bb.ea, %bb.dx, %bb.du, %bb.dr, %bb.dq
  %.sroa.023.0.ph.ph = phi i8 [ %.sroa.021.1, %bb.eb ], [ %.sroa.021.1, %bb.ea ], [ %.sroa.021.1, %bb.bh ], [ %.sroa.021.1, %bb.bj ], [ %.sroa.021.1, %bb.df ], [ 1, %bb.dx ], [ 0, %bb.du ], [ 0, %bb.dr ], [ 0, %bb.dq ], [ %.sroa.021.1, %_RNvMNtCs6q8GQ6zN3Tv_17ra_ap_rustc_index3vecINtB2_8IndexVecNtNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir12search_graph5stack10StackDepthINtBW_10StackEntryNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEE4pushB2t_.exit.i ], [ %.sroa.021.1, %bb.f ], [ %.sroa.021.1, %bb.ef ], [ %.sroa.021.1, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map7HashMapNtNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir12search_graph5stack10StackDepthNtB2g_10HeadUsagesNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEEE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultECs8K4cjrcxBsw_6hir_ty.exit.i.i.i ], [ %.sroa.021.1, %_RNvMs4_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir12search_graphNtB5_13PathsToNested11extend_with.exit.i.i.i ], [ %.sroa.021.1, %bb.p ], [ %.sroa.021.1, %bb.bf ], [ %.sroa.021.1, %bb.t ], [ %.sroa.021.1, %bb.v ], [ %.sroa.021.1, %bb.w ], [ %.sroa.021.1, %bb.x ], [ %.sroa.021.1, %bb.y ], [ %.sroa.021.1, %bb.aa ], [ %.sroa.021.1, %bb.ab ], [ %.sroa.021.1, %bb.ac ], [ %.sroa.021.1, %_RNvMs7_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir12search_graphINtB5_11SearchGraphINtNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve12search_graph19SearchGraphDelegateNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6solver13SolverContextENtNtB2M_8interner10DbInternerE15handle_overflowB2O_.exit.i ], [ %.sroa.021.1, %bb.af ], [ %.sroa.021.1, %bb.ag ], [ %.sroa.021.1, %bb.ah ], [ %.sroa.021.1, %bb.an ], [ %.sroa.021.1, %bb.ao ], [ %.sroa.021.1, %bb.ap ], [ %.sroa.021.1, %switch.lookup ], [ %.sroa.021.1, %bb.aq ], [ %.sroa.021.1, %bb.ar ], [ %.sroa.021.1, %switch.lookup218 ], [ %.sroa.021.1, %bb.au ]
  %.sroa.021.0.ph.ph = phi i8 [ %.sroa.021.1, %bb.eb ], [ %.sroa.021.1, %bb.ea ], [ %.sroa.021.1, %bb.bh ], [ %.sroa.021.1, %bb.bj ], [ %.sroa.021.1, %bb.df ], [ 0, %bb.dx ], [ 0, %bb.du ], [ 0, %bb.dr ], [ 0, %bb.dq ], [ %.sroa.021.1, %_RNvMNtCs6q8GQ6zN3Tv_17ra_ap_rustc_index3vecINtB2_8IndexVecNtNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir12search_graph5stack10StackDepthINtBW_10StackEntryNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEE4pushB2t_.exit.i ], [ %.sroa.021.1, %bb.f ], [ %.sroa.021.1, %bb.ef ], [ %.sroa.021.1, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map7HashMapNtNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir12search_graph5stack10StackDepthNtB2g_10HeadUsagesNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEEE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultECs8K4cjrcxBsw_6hir_ty.exit.i.i.i ], [ %.sroa.021.1, %_RNvMs4_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir12search_graphNtB5_13PathsToNested11extend_with.exit.i.i.i ], [ %.sroa.021.1, %bb.p ], [ %.sroa.021.1, %bb.bf ], [ %.sroa.021.1, %bb.t ], [ %.sroa.021.1, %bb.v ], [ %.sroa.021.1, %bb.w ], [ %.sroa.021.1, %bb.x ], [ %.sroa.021.1, %bb.y ], [ %.sroa.021.1, %bb.aa ], [ %.sroa.021.1, %bb.ab ], [ %.sroa.021.1, %bb.ac ], [ %.sroa.021.1, %_RNvMs7_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir12search_graphINtB5_11SearchGraphINtNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve12search_graph19SearchGraphDelegateNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6solver13SolverContextENtNtB2M_8interner10DbInternerE15handle_overflowB2O_.exit.i ], [ %.sroa.021.1, %bb.af ], [ %.sroa.021.1, %bb.ag ], [ %.sroa.021.1, %bb.ah ], [ %.sroa.021.1, %bb.an ], [ %.sroa.021.1, %bb.ao ], [ %.sroa.021.1, %bb.ap ], [ %.sroa.021.1, %switch.lookup ], [ %.sroa.021.1, %bb.aq ], [ %.sroa.021.1, %bb.ar ], [ %.sroa.021.1, %switch.lookup218 ], [ %.sroa.021.1, %bb.au ]
  %lpad.loopexit.split-lp96 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %bb.di, %bb.br, %common.resume.sink.split.i, %bb.bt
  %.sroa.023.0.lpad-body = phi i8 [ %.sroa.021.1, %bb.br ], [ %.sroa.021.1, %bb.di ], [ %.sroa.021.1, %bb.bt ], [ %.sroa.021.1, %common.resume.sink.split.i ], [ %.sroa.021.1, %.loopexit ], [ %.sroa.021.1, %.loopexit.split-lp.loopexit ], [ %.sroa.023.0.ph.ph, %.loopexit.split-lp.loopexit.split-lp ]
  %.sroa.021.0.lpad-body = phi i8 [ %.sroa.021.1, %bb.br ], [ %.sroa.021.1, %bb.di ], [ %.sroa.021.1, %bb.bt ], [ %.sroa.021.1, %common.resume.sink.split.i ], [ %.sroa.021.1, %.loopexit ], [ %.sroa.021.1, %.loopexit.split-lp.loopexit ], [ %.sroa.021.0.ph.ph, %.loopexit.split-lp.loopexit.split-lp ]
  %eh.lpad-body = phi { ptr, i32 } [ %i.ml, %bb.br ], [ %lpad.thr_comm.i80, %bb.di ], [ %i.mn, %bb.bt ], [ %common.resume.op.ph.i, %common.resume.sink.split.i ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit95, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp96, %.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.cb = trunc nuw i8 %.sroa.021.0.lpad-body to i1
  %i.cc = load i64, ptr %i.bx, align 8, !range !47
  %.not.i.i77 = icmp ne i64 %i.cc, 2
  %or.cond.not = select i1 %i.cb, i1 %.not.i.i77, i1 false
  br i1 %or.cond.not, label %bb.eo, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbDqbwph1Irx_7tracing4span7EnteredECs8K4cjrcxBsw_6hir_ty.exit79

bb.b:                                             ; preds = %bb.dv, %bb.dx, %bb.a
  %.sroa.021.1 = phi i8 [ 0, %bb.a ], [ 1, %bb.dx ], [ 1, %bb.dv ] ; 77 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.br)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bq)
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bq, i64 56 ; 8 uses
  store ptr %1, ptr %i.cd, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bq, i64 64 ; 7 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ce, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bq, ptr noundef nonnull align 8 dereferenceable(56) %3, i64 56, i1 false)
  %i.cf = load i8, ptr %i.by, align 1, !range !16, !noundef !12 ; 4 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bq, i64 104 ; 6 uses
  store i8 %i.cf, ptr %i.cg, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bq, i64 96 ; 4 uses
  store ptr %5, ptr %i.ch, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !10937)
  call void @llvm.experimental.noalias.scope.decl(metadata !10938)
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.cj = load i64, ptr %i.ci, align 8, !noalias !10939, !noundef !12
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %.val87.i = load i64, ptr %i.cl, align 8, !noalias !10939, !noundef !12 ; 2 uses
  %.not.i.i = icmp eq i64 %.val87.i, 0
  br i1 %.not.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val.i = load ptr, ptr %i.ck, align 8, !noalias !10937, !nonnull !12, !noundef !12
  %i.cm = getelementptr [264 x i8], ptr %.val.i, i64 %.val87.i ; 5 uses
  %i.cn = getelementptr i8, ptr %i.cm, i64 -64
  %i.co = load i64, ptr %i.cn, align 8, !noalias !10937, !noundef !12 ; 3 uses
  %i.cp = icmp eq i64 %i.co, 0
  br i1 %i.cp, label %bb.y, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.cq = getelementptr i8, ptr %i.cm, i64 -4
  %i.cr = load i8, ptr %i.cq, align 4, !range !38, !noalias !10937, !noundef !12
  %i.cs = trunc nuw i8 %i.cr to i1
  %i.ct = lshr i64 %i.co, 2
  %i.cu = add i64 %i.co, -1
  %.sroa.02.0.i.i = select i1 %i.cs, i64 %i.ct, i64 %i.cu
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  %.sroa.4.0.i.ph.i = phi i64 [ %.sroa.02.0.i.i, %bb.d ], [ %i.cj, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bl), !noalias !10939
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bl, ptr noundef nonnull align 8 dereferenceable(56) %3, i64 56, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !10940)
  call void @llvm.experimental.noalias.scope.decl(metadata !10941)
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.cw = load i64, ptr %i.cv, align 8, !alias.scope !10942, !noalias !10937, !noundef !12
  %i.cx = icmp eq i64 %i.cw, 0
  br i1 %i.cx, label %_RNvMs8_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir12search_graphINtB5_11SearchGraphINtNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve12search_graph19SearchGraphDelegateNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6solver13SolverContextENtNtB2M_8interner10DbInternerE24lookup_provisional_cacheB2O_.exit.thread.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !10943
  store i64 0, ptr %i.x, align 8, !noalias !10943
  invoke void @_RINvXs9_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9canonicalINtB6_19CanonicalQueryInputNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtB8_5solve10QueryInputB1i_NtNtB1m_9predicate9PredicateEENtNtCshzWfHUSfYae_4core4hash4Hash4hashNtCsh04pLiDBs3j_10rustc_hash8FxHasherEB1o_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.bl, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.x)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.f
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val1.i.i.i.i = load i64, ptr %i.x, align 8, !noalias !10943, !noundef !12 ; 2 uses
  %i.cz = call noundef i64 @llvm.fshl.i64(i64 %.val1.i.i.i.i, i64 %.val1.i.i.i.i, i64 26) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !10943
  call void @llvm.experimental.noalias.scope.decl(metadata !10944)
  call void @llvm.experimental.noalias.scope.decl(metadata !10945)
  %i.da = lshr i64 %i.cz, 57
  %i.db = trunc nuw nsw i64 %i.da to i8
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.dd = load i64, ptr %i.dc, align 8, !alias.scope !10946, !noalias !10937, !noundef !12 ; 2 uses
  %i.de = load ptr, ptr %i.cy, align 8, !alias.scope !10946, !noalias !10937, !nonnull !12, !noundef !12 ; 2 uses
  %i.df = insertelement <16 x i8> poison, i8 %i.db, i64 0
  %i.dg = shufflevector <16 x i8> %i.df, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.g

bb.g:                                             ; preds = %bb.i, %.noexc
  %.sroa.9.0.i.i.i.i.i = phi i64 [ 0, %.noexc ], [ %i.dx, %bb.i ]
  %.pn.i.i.i.i = phi i64 [ %i.cz, %.noexc ], [ %i.dy, %bb.i ]
  %.sroa.01.0.i.i.i.i.i = and i64 %.pn.i.i.i.i, %i.dd ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.de, i64 %.sroa.01.0.i.i.i.i.i
  %.sroa.0.0.copyload.i24.i.i.i.i = load <16 x i8>, ptr %i.dh, align 1, !noalias !10947 ; 2 uses
  %i.di = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i, %i.dg
  %i.dj = bitcast <16 x i1> %i.di to i16          ; 2 uses
  %.not.i.not30.i.i.i.i = icmp eq i16 %i.dj, 0
  br i1 %.not.i.not30.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.g, %bb.h
  %.sroa.06.0.i31.i.i.i.i = phi i16 [ %i.dw, %bb.h ], [ %i.dj, %bb.g ] ; 3 uses
  %i.dk = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i.i.i, i1 true)
  %i.dl = zext nneg i16 %i.dk to i64
  %i.dm = add i64 %.sroa.01.0.i.i.i.i.i, %i.dl
  %i.dn = and i64 %i.dm, %i.dd
  %i.do = sub nsw i64 0, %i.dn
  %i.dp = getelementptr inbounds [80 x i8], ptr %i.de, i64 %i.do ; 3 uses
  %i.dq = getelementptr inbounds i8, ptr %i.dp, i64 -80
  %i.dr = invoke noundef zeroext i1 @_RNvXCsfjX3T6UU9IB_9hashbrownINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir9canonical19CanonicalQueryInputNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerINtNtBv_5solve10QueryInputB1z_NtNtB1D_9predicate9PredicateEEINtB2_10EquivalentBq_E10equivalentB1F_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.bl, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.dq)
          to label %.noexc42 unwind label %.loopexit.split-lp.loopexit
end_hunk_0
begin_hunk_1_@_RNvMs7_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir12search_graphINtB5_11SearchGraphINtNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve12search_graph19SearchGraphDelegateNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6solver13SolverContextENtNtB2M_8interner10DbInternerE13evaluate_goalB2O_:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg), !noalias !10939
  store i64 %.sroa.4.0.i.ph.i, ptr %i.bg, align 8, !noalias !10939
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !10939
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ak, ptr noundef nonnull align 8 dereferenceable(32) %i.ce, i64 32, i1 false), !noalias !10937
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !10939
  store ptr %i.bj, ptr %i.aj, align 8, !noalias !10939
  %i.gz = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store ptr %i.bi, ptr %i.gz, align 8, !noalias !10939
  %i.ha = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store ptr %i.bg, ptr %i.ha, align 8, !noalias !10939
  %i.hb = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  store ptr %.pre212.i, ptr %i.hb, align 8, !noalias !10939
  %i.hc = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  store ptr %i.bh, ptr %i.hc, align 8, !noalias !10939
  invoke void @_RINvXs0_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir8internerNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerNtNtB8_12search_graph2Cx17with_global_cacheINtNtCshzWfHUSfYae_4core6option6OptionTINtNtB2B_6result6ResultINtNtB8_9canonical9CanonicalBQ_INtNtB8_5solve8ResponseBQ_EENtB44_10NoSolutionEINtB44_15AccessedOpaquesBQ_EEENCNvMs8_B1R_INtB1R_11SearchGraphINtNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve12search_graph19SearchGraphDelegateNtNtBU_6solver13SolverContextEBQ_E19lookup_global_cache0EBW_(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.bk, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.ak, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.aj)
          to label %.noexc56 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc56:                                         ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !10939
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !10939
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg), !noalias !10939
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh), !noalias !10939
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi), !noalias !10939
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj), !noalias !10939
  %i.hd = getelementptr inbounds nuw i8, ptr %i.bk, i64 40
  %i.he = load i32, ptr %i.hd, align 8, !range !15, !noalias !10939, !noundef !12
  %.not79.i = icmp eq i32 %i.he, -1
  br i1 %.not79.i, label %bb.bl, label %bb.bk

bb.ag:                                            ; preds = %bb.bl, %bb.ae
  %i.hf = phi i8 [ %.pre214.i.a, %bb.ae ], [ %.pre213.i, %bb.bl ] ; 6 uses
  %i.hg = phi ptr [ %.pre212.i, %bb.ae ], [ %.pre.i, %bb.bl ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf), !noalias !10939
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be), !noalias !10939
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.be, ptr noundef nonnull align 8 dereferenceable(32) %i.ce, i64 32, i1 false), !noalias !10937
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd), !noalias !10939
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bd, ptr noundef nonnull align 8 dereferenceable(112) %i.bq, i64 56, i1 false), !noalias !10937
  call void @llvm.experimental.noalias.scope.decl(metadata !10954)
  call void @llvm.experimental.noalias.scope.decl(metadata !10955)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !10956
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !10956
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.k, ptr noundef nonnull align 8 dereferenceable(112) %i.bq, i64 56, i1 false), !noalias !10937
  %i.hh = invoke { i32, i32 } @_RNvMNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir12search_graph5stackINtB2_5StackNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerE4findB1h_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.hg, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(56) %i.k)
          to label %.noexc57 unwind label %.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc57:                                         ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !10956
  %i.hi = extractvalue { i32, i32 } %i.hh, 0
  %i.hj = extractvalue { i32, i32 } %i.hh, 1      ; 7 uses
  %i.hk = trunc i32 %i.hi to i1
  br i1 %i.hk, label %bb.ah, label %_RNvMs8_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir12search_graphINtB5_11SearchGraphINtNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve12search_graph19SearchGraphDelegateNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6solver13SolverContextENtNtB2M_8interner10DbInternerE20check_cycle_on_stackB2O_.exit.thread.i

bb.ah:                                            ; preds = %.noexc57
  store i32 %i.hj, ptr %i.s, align 4, !noalias !10956
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !10956
  %i.hl = invoke { ptr, ptr } @_RNvMNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir12search_graph5stackINtB2_5StackNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerE16cycle_step_kindsB1h_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.hg, i32 noundef %i.hj)
          to label %.noexc58 unwind label %.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc58:                                         ; preds = %bb.ah
  %i.hm = extractvalue { ptr, ptr } %i.hl, 0      ; 3 uses
  %i.hn = extractvalue { ptr, ptr } %i.hl, 1      ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.hn) ]
  %i.ho = icmp eq ptr %i.hm, %i.hn
  br i1 %i.ho, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterINtNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir12search_graph5stack10StackEntryNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldNtBV_8PathKindNCINvNtNtB39_8adapters3map8map_foldRBQ_B3N_B3N_NCNvMBT_INtBT_5StackB22_E16cycle_step_kinds0NCNvMs7_BV_INtBV_11SearchGraphINtNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve12search_graph19SearchGraphDelegateNtNtB26_6solver13SolverContextEB22_E15cycle_path_kind0E0EB28_.exit.i103.i, label %bb.ai

bb.ai:                                            ; preds = %.noexc58
  %i.hp = ptrtoint ptr %i.hn to i64
  %i.hq = ptrtoint ptr %i.hm to i64
  %i.hr = sub nuw i64 %i.hp, %i.hq
  %i.hs = udiv exact i64 %i.hr, 264
  br label %bb.aj

bb.aj:                                            ; preds = %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map8map_foldRINtNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir12search_graph5stack10StackEntryNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtB10_8PathKindB37_NCNvMBY_INtBY_5StackB27_E16cycle_step_kinds0NCNvMs7_B10_INtB10_11SearchGraphINtNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve12search_graph19SearchGraphDelegateNtNtB2b_6solver13SolverContextEB27_E15cycle_path_kind0E0B2d_.exit.i.i101.i, %bb.ai
  %.sroa.04.0.i.i95.i = phi i64 [ 0, %bb.ai ], [ %i.ib, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map8map_foldRINtNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir12search_graph5stack10StackEntryNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtB10_8PathKindB37_NCNvMBY_INtBY_5StackB27_E16cycle_step_kinds0NCNvMs7_B10_INtB10_11SearchGraphINtNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve12search_graph19SearchGraphDelegateNtNtB2b_6solver13SolverContextEB27_E15cycle_path_kind0E0B2d_.exit.i.i101.i ] ; 2 uses
  %.sroa.02.0.i.i96.i = phi i8 [ %i.hf, %bb.ai ], [ %.sroa.0.0.i.i.i.i102.i, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map8map_foldRINtNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir12search_graph5stack10StackEntryNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtB10_8PathKindB37_NCNvMBY_INtBY_5StackB27_E16cycle_step_kinds0NCNvMs7_B10_INtB10_11SearchGraphINtNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve12search_graph19SearchGraphDelegateNtNtB2b_6solver13SolverContextEB27_E15cycle_path_kind0E0B2d_.exit.i.i101.i ] ; 3 uses
  %i.ht = getelementptr inbounds nuw [264 x i8], ptr %i.hm, i64 %.sroa.04.0.i.i95.i
  %i.hu = getelementptr i8, ptr %i.ht, i64 261
  %.val.i.i97.i = load i8, ptr %i.hu, align 1, !range !16, !noalias !10957, !noundef !12 ; 3 uses
  %i.hv = icmp eq i8 %.sroa.02.0.i.i96.i, 3
  %i.hw = icmp eq i8 %.val.i.i97.i, 3
  %or.cond3.i.i.i.i98.i = or i1 %i.hv, %i.hw
  br i1 %or.cond3.i.i.i.i98.i, label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map8map_foldRINtNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir12search_graph5stack10StackEntryNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtB10_8PathKindB37_NCNvMBY_INtBY_5StackB27_E16cycle_step_kinds0NCNvMs7_B10_INtB10_11SearchGraphINtNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve12search_graph19SearchGraphDelegateNtNtB2b_6solver13SolverContextEB27_E15cycle_path_kind0E0B2d_.exit.i.i101.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.hx = icmp eq i8 %.sroa.02.0.i.i96.i, 2
  %i.hy = icmp eq i8 %.val.i.i97.i, 2
  %or.cond.i.i.i.i99.i = or i1 %i.hx, %i.hy
  br i1 %or.cond.i.i.i.i99.i, label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map8map_foldRINtNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir12search_graph5stack10StackEntryNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtB10_8PathKindB37_NCNvMBY_INtBY_5StackB27_E16cycle_step_kinds0NCNvMs7_B10_INtB10_11SearchGraphINtNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve12search_graph19SearchGraphDelegateNtNtB2b_6solver13SolverContextEB27_E15cycle_path_kind0E0B2d_.exit.i.i101.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.hz = icmp eq i8 %.sroa.02.0.i.i96.i, 1
  %i.ia = zext i1 %i.hz to i8
  %..i.i.i.i100.i = or i8 %.val.i.i97.i, %i.ia
  br label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map8map_foldRINtNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir12search_graph5stack10StackEntryNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtB10_8PathKindB37_NCNvMBY_INtBY_5StackB27_E16cycle_step_kinds0NCNvMs7_B10_INtB10_11SearchGraphINtNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve12search_graph19SearchGraphDelegateNtNtB2b_6solver13SolverContextEB27_E15cycle_path_kind0E0B2d_.exit.i.i101.i

_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map8map_foldRINtNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir12search_graph5stack10StackEntryNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtB10_8PathKindB37_NCNvMBY_INtBY_5StackB27_E16cycle_step_kinds0NCNvMs7_B10_INtB10_11SearchGraphINtNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve12search_graph19SearchGraphDelegateNtNtB2b_6solver13SolverContextEB27_E15cycle_path_kind0E0B2d_.exit.i.i101.i: ; preds = %bb.al, %bb.ak, %bb.aj
  %.sroa.0.0.i.i.i.i102.i = phi i8 [ 2, %bb.ak ], [ 3, %bb.aj ], [ %..i.i.i.i100.i, %bb.al ] ; 2 uses
  %i.ib = add nuw i64 %.sroa.04.0.i.i95.i, 1      ; 2 uses
  %i.ic = icmp eq i64 %i.ib, %i.hs
  br i1 %i.ic, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterINtNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir12search_graph5stack10StackEntryNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldNtBV_8PathKindNCINvNtNtB39_8adapters3map8map_foldRBQ_B3N_B3N_NCNvMBT_INtBT_5StackB22_E16cycle_step_kinds0NCNvMs7_BV_INtBV_11SearchGraphINtNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve12search_graph19SearchGraphDelegateNtNtB26_6solver13SolverContextEB22_E15cycle_path_kind0E0EB28_.exit.i103.i, label %bb.aj

_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterINtNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir12search_graph5stack10StackEntryNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldNtBV_8PathKindNCINvNtNtB39_8adapters3map8map_foldRBQ_B3N_B3N_NCNvMBT_INtBT_5StackB22_E16cycle_step_kinds0NCNvMs7_BV_INtBV_11SearchGraphINtNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve12search_graph19SearchGraphDelegateNtNtB26_6solver13SolverContextEB22_E15cycle_path_kind0E0EB28_.exit.i103.i: ; preds = %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map8map_foldRINtNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir12search_graph5stack10StackEntryNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtB10_8PathKindB37_NCNvMBY_INtBY_5StackB27_E16cycle_step_kinds0NCNvMs7_B10_INtB10_11SearchGraphINtNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve12search_graph19SearchGraphDelegateNtNtB2b_6solver13SolverContextEB27_E15cycle_path_kind0E0B2d_.exit.i.i101.i, %.noexc58
  %.sroa.0.0.i.i.i = phi i8 [ %i.hf, %.noexc58 ], [ %.sroa.0.0.i.i.i.i102.i, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map8map_foldRINtNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir12search_graph5stack10StackEntryNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerENtB10_8PathKindB37_NCNvMBY_INtBY_5StackB27_E16cycle_step_kinds0NCNvMs7_B10_INtB10_11SearchGraphINtNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve12search_graph19SearchGraphDelegateNtNtB2b_6solver13SolverContextEB27_E15cycle_path_kind0E0B2d_.exit.i.i101.i ] ; 2 uses
  store i8 %.sroa.0.0.i.i.i, ptr %i.r, align 1, !noalias !10956
  %i.id = load atomic i64, ptr @_RNvNtCsaMQbKjKCVRW_12tracing_core8metadata9MAX_LEVEL monotonic, align 8, !noalias !10956
  %i.ie = icmp ult i64 %i.id, 2
  br i1 %i.ie, label %bb.am, label %switch.lookup

_RNvMs8_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir12search_graphINtB5_11SearchGraphINtNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve12search_graph19SearchGraphDelegateNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6solver13SolverContextENtNtB2M_8interner10DbInternerE20check_cycle_on_stackB2O_.exit.thread.i: ; preds = %.noexc57
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !10956
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !noalias !10939
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !10939
  br label %bb.bn

default.unreachable:                              ; preds = %bb.az
  unreachable

bb.am:                                            ; preds = %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterINtNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir12search_graph5stack10StackEntryNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldNtBV_8PathKindNCINvNtNtB39_8adapters3map8map_foldRBQ_B3N_B3N_NCNvMBT_INtBT_5StackB22_E16cycle_step_kinds0NCNvMs7_BV_INtBV_11SearchGraphINtNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve12search_graph19SearchGraphDelegateNtNtB26_6solver13SolverContextEB22_E15cycle_path_kind0E0EB28_.exit.i103.i
  %i.if = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvMs8_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir12search_graphINtB7_11SearchGraphppE20check_cycle_on_stack10___CALLSITE, i64 16) monotonic, align 8, !noalias !10956 ; 3 uses
  switch i8 %i.if, label %bb.an [
    i8 0, label %thread-pre-split.i.i
    i8 1, label %bb.ao
    i8 2, label %bb.ao
  ], !prof !46

bb.an:                                            ; preds = %bb.am
  %i.ig = invoke noundef i8 @_RNvMNtCsaMQbKjKCVRW_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvMs8_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir12search_graphINtB7_11SearchGraphppE20check_cycle_on_stack10___CALLSITE) #53
          to label %.noexc59 unwind label %.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc59:                                         ; preds = %bb.an
  %i.ih = icmp eq i8 %i.ig, 0
  br i1 %i.ih, label %thread-pre-split.i.i, label %bb.ao

bb.ao:                                            ; preds = %bb.am, %.noexc59, %bb.am
  %.sroa.09.0.i.i = phi i8 [ %i.ig, %.noexc59 ], [ %i.if, %bb.am ], [ %i.if, %bb.am ]
  %i.ii = load ptr, ptr @_RNvNvMs8_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir12search_graphINtB7_11SearchGraphppE20check_cycle_on_stack10___CALLSITE, align 8, !noalias !10956, !nonnull !12, !align !18, !noundef !12
  %i.ij = invoke noundef zeroext i1 @_RNvNtCsbDqbwph1Irx_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ii, i8 noundef %.sroa.09.0.i.i)
          to label %.noexc60 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc60:                                         ; preds = %bb.ao
  br i1 %i.ij, label %bb.ap, label %thread-pre-split.i.i

thread-pre-split.i.i:                             ; preds = %.noexc61, %.noexc60, %.noexc59, %bb.am
  %.pr.i.i = load i8, ptr %i.r, align 1, !noalias !10956
  br label %switch.lookup

bb.ap:                                            ; preds = %.noexc60
  %i.ik = load ptr, ptr @_RNvNvMs8_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir12search_graphINtB7_11SearchGraphppE20check_cycle_on_stack10___CALLSITE, align 8, !noalias !10956, !nonnull !12, !align !18, !noundef !12 ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !10956
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !10956
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !10956
  store ptr %i.s, ptr %i.o, align 8, !noalias !10956
  %.sroa.431.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr @_RNvXsd_NtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir12search_graph5stackNtB5_10StackDepthNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt, ptr %.sroa.431.0..sroa_idx.i.i, align 8, !noalias !10956
  store ptr @140, ptr %i.p, align 8, !noalias !10956
  %i.im = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %i.o, ptr %i.im, align 8, !noalias !10956
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !10956
  store ptr %i.r, ptr %i.n, align 8, !noalias !10956
  store ptr %i.p, ptr %i.q, align 8, !noalias !10956
  %i.in = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr @18, ptr %i.in, align 8, !noalias !10956
  %i.io = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store ptr %i.n, ptr %i.io, align 8, !noalias !10956
  %i.ip = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  store ptr @126, ptr %i.ip, align 8, !noalias !10956
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !10956
  store i64 1, ptr %i.l, align 8, !noalias !10956
  %.sroa.011.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.q, ptr %.sroa.011.sroa.4.0..sroa_idx.i.i, align 8, !noalias !10956
  %.sroa.011.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i64 2, ptr %.sroa.011.sroa.5.0..sroa_idx.i.i, align 8, !noalias !10956
  %.sroa.412.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store ptr %i.il, ptr %.sroa.412.0..sroa_idx.i.i, align 8, !noalias !10956
  invoke void @_RNvMNtCsaMQbKjKCVRW_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ik, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.l)
          to label %.noexc61 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc61:                                         ; preds = %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !10956
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !10956
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !10956
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !10956
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !10956
  br label %thread-pre-split.i.i

switch.lookup:                                    ; preds = %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterINtNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir12search_graph5stack10StackEntryNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldNtBV_8PathKindNCINvNtNtB39_8adapters3map8map_foldRBQ_B3N_B3N_NCNvMBT_INtBT_5StackB22_E16cycle_step_kinds0NCNvMs7_BV_INtBV_11SearchGraphINtNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve12search_graph19SearchGraphDelegateNtNtB26_6solver13SolverContextEB22_E15cycle_path_kind0E0EB28_.exit.i103.i, %thread-pre-split.i.i
  %i.iq = phi i8 [ %.pr.i.i, %thread-pre-split.i.i ], [ %.sroa.0.0.i.i.i, %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterINtNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir12search_graph5stack10StackEntryNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEENtNtNtNtBb_4iter6traits8iterator8Iterator4foldNtBV_8PathKindNCINvNtNtB39_8adapters3map8map_foldRBQ_B3N_B3N_NCNvMBT_INtBT_5StackB22_E16cycle_step_kinds0NCNvMs7_BV_INtBV_11SearchGraphINtNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve12search_graph19SearchGraphDelegateNtNtB26_6solver13SolverContextEB22_E15cycle_path_kind0E0EB28_.exit.i103.i ] ; 4 uses
  %i.ir = zext nneg i8 %i.iq to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvMs7_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir12search_graphINtB5_11SearchGraphINtNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve12search_graph19SearchGraphDelegateNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6solver13SolverContextENtNtB2M_8interner10DbInternerE13evaluate_goalB2O_, i64 %i.ir
  %switch.load = load i8, ptr %switch.gep, align 1 ; 2 uses
  %i.is = zext nneg i8 %i.iq to i64
  %switch.gep209 = getelementptr inbounds nuw i8, ptr @switch.table._RNvMs7_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir12search_graphINtB5_11SearchGraphINtNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve12search_graph19SearchGraphDelegateNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6solver13SolverContextENtNtB2M_8interner10DbInternerE13evaluate_goalB2O_.1310, i64 %i.is
  %switch.load210 = load i8, ptr %switch.gep209, align 1 ; 2 uses
  %i.it = zext nneg i8 %i.iq to i64
  %switch.gep212 = getelementptr inbounds nuw i8, ptr @switch.table._RNvMs7_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir12search_graphINtB5_11SearchGraphINtNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve12search_graph19SearchGraphDelegateNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6solver13SolverContextENtNtB2M_8interner10DbInternerE13evaluate_goalB2O_.1311, i64 %i.it
  %switch.load213 = load i8, ptr %switch.gep212, align 1 ; 2 uses
  %i.iu = zext nneg i8 %i.iq to i64
  %switch.gep215 = getelementptr inbounds nuw i8, ptr @switch.table._RNvMs7_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir12search_graphINtB5_11SearchGraphINtNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve12search_graph19SearchGraphDelegateNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6solver13SolverContextENtNtB2M_8interner10DbInternerE13evaluate_goalB2O_.1312, i64 %i.iu
  %switch.load216 = load i8, ptr %switch.gep215, align 1 ; 2 uses
  %switch.ext = zext i8 %switch.load to i32
  %6 = insertelement <4 x i8> poison, i8 %switch.load216, i64 0
  %7 = insertelement <4 x i8> %6, i8 %switch.load213, i64 1
  %8 = insertelement <4 x i8> %7, i8 %switch.load210, i64 2
  %9 = insertelement <4 x i8> %8, i8 %switch.load, i64 3 ; 2 uses
  %10 = zext <4 x i8> %9 to <4 x i32>
  %switch.ext211 = zext i8 %switch.load210 to i32
  %switch.ext214 = zext i8 %switch.load213 to i32
  %switch.ext217 = zext i8 %switch.load216 to i32
  %i.iv = shl nuw nsw i8 %i.hf, 3
  %switch.shiftamt221 = zext nneg i8 %i.iv to i32
  %switch.downshift222 = lshr i32 268960770, %switch.shiftamt221
  %switch.masked223 = trunc i32 %switch.downshift222 to i8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !10956
  store i32 1, ptr %i.m, align 4, !noalias !10956
  %.sroa.451.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  store i32 %i.hj, ptr %.sroa.451.0..sroa_idx.i.i, align 4, !noalias !10956
  %.sroa.552.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  store i32 %switch.ext217, ptr %.sroa.552.0..sroa_idx.i.i, align 4, !noalias !10956
  %.sroa.653.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  store i32 %switch.ext214, ptr %.sroa.653.0..sroa_idx.i.i, align 4, !noalias !10956
  %.sroa.754.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i32 %switch.ext211, ptr %.sroa.754.0..sroa_idx.i.i, align 4, !noalias !10956
  %.sroa.855.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 20
  store i32 %switch.ext, ptr %.sroa.855.0..sroa_idx.i.i, align 4, !noalias !10956
  %.sroa.956.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store i8 %switch.masked223, ptr %.sroa.956.0..sroa_idx.i.i, align 4, !noalias !10956
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.bd, align 8, !alias.scope !10955, !noalias !10939 ; 4 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %.sroa.5.0.copyload.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !10955, !noalias !10939 ; 4 uses
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.iw = invoke { i32, ptr } @_RNvMNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir12search_graph5stackINtB2_5StackNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerE19last_mut_with_indexB1h_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.hg)
          to label %.noexc62 unwind label %.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc62:                                         ; preds = %switch.lookup
  %i.ix = extractvalue { i32, ptr } %i.iw, 1      ; 11 uses
  %.not.i.i.i = icmp eq ptr %i.ix, null
  br i1 %.not.i.i.i, label %_RINvMs7_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir12search_graphINtB6_11SearchGraphINtNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve12search_graph19SearchGraphDelegateNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6solver13SolverContextENtNtB2N_8interner10DbInternerE18update_parent_goalINtNtNtNtCshzWfHUSfYae_4core4iter7sources4once4OnceTNtNtB6_5stack10StackDepthNtB6_9CycleHeadEEEB2P_.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.noexc62
  %11 = extractvalue { i32, ptr } %i.iw, 0
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 208 ; 2 uses
  %i.iz = load i64, ptr %i.iy, align 8, !noalias !10958, !noundef !12
  %..i.i.i.i = call noundef i64 @llvm.umax.i64(i64 %i.iz, i64 1)
  store i64 %..i.i.i.i, ptr %i.iy, align 8, !noalias !10958
  %12 = getelementptr inbounds nuw i8, ptr %i.ix, i64 8 ; 2 uses
  %.sroa.433.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %.sroa.534.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %13 = call i8 @llvm.ucmp.i8.i32(i32 %i.hj, i32 %11)
  %14 = getelementptr inbounds nuw i8, ptr %i.ix, i64 240 ; 2 uses
  %.sroa.4.0..sroa_idx.i21.i.i.i = getelementptr inbounds nuw i8, ptr %i.ix, i64 244 ; 2 uses
  %15 = getelementptr inbounds nuw i8, ptr %i.ix, i64 216
  %16 = and i8 %switch.masked223, 14
  %.not.i19.i.i.i = icmp eq i8 %16, 0
  %17 = and i8 %switch.masked223, 6
  %.not13.i.i.i.i = icmp eq i8 %17, 0
  %18 = and i8 %switch.masked223, 16
  %19 = or disjoint i8 %18, 8
  %20 = and i8 %switch.masked223, 2
  %.not14.i.i.i.i = icmp eq i8 %20, 0
  %21 = and i8 %switch.masked223, 24
  %22 = or disjoint i8 %21, 4
  %i.ja = load i64, ptr %i.ix, align 8, !range !17, !noalias !10958, !noundef !12
  %i.jb = trunc nuw i64 %i.ja to i1
  br i1 %i.jb, label %bb.as, label %bb.av

.noexc68:                                         ; preds = %_RNvMs4_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir12search_graphNtB5_13PathsToNested11extend_with.exit.i.i.i, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir12search_graph10HeadUsagesE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultECs8K4cjrcxBsw_6hir_ty.exit.i.i.i
  %i.jc = icmp ne i64 %.sroa.0.0.copyload.i.i, 7
  call void @llvm.assume(i1 %i.jc)
  %i.jd = add nsw i64 %.sroa.0.0.copyload.i.i, -6
  %i.je = icmp samesign ugt i64 %.sroa.0.0.copyload.i.i, 5
  %i.jf = select i1 %i.je, i64 %i.jd, i64 1
  switch i64 %i.jf, label %.loopexit.i.i.i [
    i64 0, label %bb.aq
    i64 1, label %switch.lookup218
    i64 2, label %bb.ar
  ]

.loopexit.i.i.i:                                  ; preds = %bb.av, %.noexc68
  unreachable

bb.aq:                                            ; preds = %.noexc68
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i.i) ]
  %i.jg = getelementptr inbounds nuw i8, ptr %i.ix, i64 168
  invoke fastcc void @_RNvMs5_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir12search_graphINtB5_11NestedGoalsNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerE17extend_from_childB1j_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.jg, i8 noundef range(i8 0, 4) %i.hf, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.5.0.copyload.i.i)
          to label %.noexc63 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc63:                                         ; preds = %bb.aq
  %i.jh = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload.i.i, i64 24
  %i.ji = load i64, ptr %i.jh, align 8, !noalias !10958, !noundef !12
  %.not15.i.i.i = icmp eq i64 %i.ji, 0
  br i1 %.not15.i.i.i, label %_RINvMs7_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir12search_graphINtB6_11SearchGraphINtNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve12search_graph19SearchGraphDelegateNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6solver13SolverContextENtNtB2N_8interner10DbInternerE18update_parent_goalINtNtNtNtCshzWfHUSfYae_4core4iter7sources4once4OnceTNtNtB6_5stack10StackDepthNtB6_9CycleHeadEEEB2P_.exit.i.i, label %bb.ar

switch.lookup218:                                 ; preds = %.noexc68
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !10959
  store i64 %.sroa.0.0.copyload.i.i, ptr %i.j, align 8, !noalias !10960
  %.sroa.5.0..sroa_idx63.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %.sroa.5.0.copyload.i.i, ptr %.sroa.5.0..sroa_idx63.i.i, align 8, !noalias !10960
  %.sroa.6.0..sroa_idx65.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.0..sroa_idx65.i.i, ptr noundef nonnull readonly align 8 dereferenceable(40) %.sroa.6.0..sroa_idx.i.i, i64 40, i1 false), !noalias !10961
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ix, i64 168
  %i.jk = shl nuw nsw i8 %i.hf, 3
  %switch.shiftamt = zext nneg i8 %i.jk to i32
  %switch.downshift = lshr i32 268960770, %switch.shiftamt
  %switch.masked = trunc i32 %switch.downshift to i8
  invoke fastcc void @_RNvMs5_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir12search_graphINtB5_11NestedGoalsNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerE6insertB1j_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.jj, ptr noalias nofree noundef align 8 captures(address) dereferenceable(56) %i.j, i8 noundef %switch.masked)
          to label %.noexc65 unwind label %.loopexit.split-lp.loopexit.split-lp

bb.ar:                                            ; preds = %.noexc65, %.noexc63, %.noexc68
  %i.jl = getelementptr inbounds nuw i8, ptr %i.ix, i64 168
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !10959
  %i.jm = getelementptr inbounds nuw i8, ptr %i.ix, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.i, ptr noundef nonnull align 8 dereferenceable(56) %i.jm, i64 56, i1 false), !noalias !10958
  invoke fastcc void @_RNvMs5_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir12search_graphINtB5_11NestedGoalsNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerE6insertB1j_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.jl, ptr noalias nofree noundef align 8 captures(address) dereferenceable(56) %i.i, i8 noundef 1)
          to label %.noexc64 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc64:                                         ; preds = %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !10959
  br label %_RINvMs7_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir12search_graphINtB6_11SearchGraphINtNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve12search_graph19SearchGraphDelegateNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6solver13SolverContextENtNtB2N_8interner10DbInternerE18update_parent_goalINtNtNtNtCshzWfHUSfYae_4core4iter7sources4once4OnceTNtNtB6_5stack10StackDepthNtB6_9CycleHeadEEEB2P_.exit.i.i

.noexc65:                                         ; preds = %switch.lookup218
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !10959
  br label %bb.ar

bb.as:                                            ; preds = %.lr.ph.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !10962)
  %i.jn = load ptr, ptr %12, align 8, !alias.scope !10962, !noalias !10958, !align !18, !noundef !12 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.jn, null
  br i1 %.not.i.i.i.i, label %bb.at, label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map7HashMapNtNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir12search_graph5stack10StackDepthNtB2g_10HeadUsagesNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEEE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultECs8K4cjrcxBsw_6hir_ty.exit.i.i.i

bb.at:                                            ; preds = %bb.as
  call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #57, !noalias !10963
  %i.jo = call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef 32, i64 noundef 8) #57, !noalias !10963 ; 4 uses
  %i.jp = icmp eq ptr %i.jo, null
  br i1 %i.jp, label %bb.au, label %_RNvYNvYINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map7HashMapNtNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir12search_graph5stack10StackDepthNtB1D_10HeadUsagesNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEENtNtCshzWfHUSfYae_4core7default7Default7defaultINtNtNtB3P_3ops8function6FnOnceuE9call_onceCs8K4cjrcxBsw_6hir_ty.exit.i.i.i.i, !prof !14

bb.au:                                            ; preds = %bb.at
  invoke void @_RNvNtCsbSS6DM8SDEO_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #59
          to label %.noexc66 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc66:                                         ; preds = %bb.au
  unreachable

_RNvYNvYINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map7HashMapNtNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir12search_graph5stack10StackDepthNtB1D_10HeadUsagesNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEENtNtCshzWfHUSfYae_4core7default7Default7defaultINtNtNtB3P_3ops8function6FnOnceuE9call_onceCs8K4cjrcxBsw_6hir_ty.exit.i.i.i.i: ; preds = %bb.at
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.jo, ptr noundef nonnull align 8 dereferenceable(32) @7, i64 32, i1 false), !noalias !10963
  store ptr %i.jo, ptr %12, align 8, !alias.scope !10962, !noalias !10958
  br label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map7HashMapNtNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir12search_graph5stack10StackDepthNtB2g_10HeadUsagesNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEEE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultECs8K4cjrcxBsw_6hir_ty.exit.i.i.i

_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map7HashMapNtNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir12search_graph5stack10StackDepthNtB2g_10HeadUsagesNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEEE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultECs8K4cjrcxBsw_6hir_ty.exit.i.i.i: ; preds = %_RNvYNvYINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map7HashMapNtNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir12search_graph5stack10StackDepthNtB1D_10HeadUsagesNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEENtNtCshzWfHUSfYae_4core7default7Default7defaultINtNtNtB3P_3ops8function6FnOnceuE9call_onceCs8K4cjrcxBsw_6hir_ty.exit.i.i.i.i, %bb.as
  %i.jq = phi ptr [ %i.jn, %bb.as ], [ %i.jo, %_RNvYNvYINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map7HashMapNtNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir12search_graph5stack10StackDepthNtB1D_10HeadUsagesNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEENtNtCshzWfHUSfYae_4core7default7Default7defaultINtNtNtB3P_3ops8function6FnOnceuE9call_onceCs8K4cjrcxBsw_6hir_ty.exit.i.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !10959
  invoke void @_RNvMNtCsfjX3T6UU9IB_9hashbrown11rustc_entryINtNtB4_3map7HashMapNtNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir12search_graph5stack10StackDepthNtB13_10HeadUsagesNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE11rustc_entryCs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.jq, i32 noundef %i.hj)
          to label %.noexc67 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc67:                                         ; preds = %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map7HashMapNtNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir12search_graph5stack10StackDepthNtB2g_10HeadUsagesNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEEE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultECs8K4cjrcxBsw_6hir_ty.exit.i.i.i
  %i.jr = load ptr, ptr %i.h, align 8, !noalias !10959, !noundef !12 ; 4 uses
  %.not16.i.i.i = icmp eq ptr %i.jr, null
  br i1 %.not16.i.i.i, label %bb.ay, label %bb.aw

bb.av:                                            ; preds = %_RNvMs19_NtNtNtCscAsMj0W7j8b_3std11collections4hash3mapINtB6_5EntryNtNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir12search_graph5stack10StackDepthNtB16_10HeadUsagesE10or_defaultCs8K4cjrcxBsw_6hir_ty.exit.i.i.i, %.lr.ph.i.i.i
  switch i8 %13, label %.loopexit.i.i.i [
    i8 -1, label %bb.az
    i8 0, label %bb.bd
    i8 1, label %bb.bf
  ], !prof !40

bb.aw:                                            ; preds = %.noexc67
  %.sroa.433.0.copyload.i.i.i = load i64, ptr %.sroa.433.0..sroa_idx.i.i.i, align 8, !noalias !10959 ; 2 uses
  %.sroa.534.0.copyload.i.i.i = load ptr, ptr %.sroa.534.0..sroa_idx.i.i.i, align 8, !noalias !10959
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !10959
  %i.js = ptrtoint ptr %.sroa.534.0.copyload.i.i.i to i64
  %.sroa.829.16.extract.trunc.i.i.i = trunc i64 %i.js to i32
  call void @llvm.experimental.noalias.scope.decl(metadata !10964)
  %.val.i.i.i.i.i = load ptr, ptr %i.jr, align 8, !alias.scope !10964, !noalias !10965, !nonnull !12, !noundef !12 ; 8 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jr, i64 8
  %.val2.i.i.i.i.i = load i64, ptr %i.jt, align 8, !alias.scope !10964, !noalias !10965, !noundef !12 ; 4 uses
  %.sroa.0.07.i.i.i.i.i.i = and i64 %.val2.i.i.i.i.i, %.sroa.433.0.copyload.i.i.i ; 3 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 %.sroa.0.07.i.i.i.i.i.i
  %.sroa.0.0.copyload.i68.i.i.i.i.i.i = load <16 x i8>, ptr %i.ju, align 1, !noalias !10966
  %i.jv = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i.i.i.i.i.i, zeroinitializer
  %i.jw = bitcast <16 x i1> %i.jv to i16          ; 2 uses
  %.not.i9.i.i.i.i.i.i = icmp eq i16 %i.jw, 0
  br i1 %.not.i9.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, !prof !19

._crit_edge.i.i.i.i.i.i:                          ; preds = %.lr.ph.i.i.i.i.i.i, %bb.aw
  %.sroa.0.0.lcssa.i.i.i.i.i.i = phi i64 [ %.sroa.0.07.i.i.i.i.i.i, %bb.aw ], [ %.sroa.0.0.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ]
  %.lcssa.i.i.i.i.i.i = phi i16 [ %i.jw, %bb.aw ], [ %i.kn, %.lr.ph.i.i.i.i.i.i ]
  %i.jx = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i, i1 true)
  %i.jy = zext nneg i16 %i.jx to i64
  %i.jz = add i64 %.sroa.0.0.lcssa.i.i.i.i.i.i, %i.jy
  %i.ka = and i64 %i.jz, %.val2.i.i.i.i.i         ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 %i.ka
  %i.kc = load i8, ptr %i.kb, align 1, !noalias !10967, !noundef !12 ; 2 uses
  %i.kd = icmp sgt i8 %i.kc, -1
  br i1 %i.kd, label %bb.ax, label %_RNvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTNtNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir12search_graph5stack10StackDepthNtBT_10HeadUsagesEE14insert_no_growCs8K4cjrcxBsw_6hir_ty.exit.i.i.i.i, !prof !14

bb.ax:                                            ; preds = %._crit_edge.i.i.i.i.i.i
  %.val62.i.i.i.i.i.i.i = load <16 x i8>, ptr %.val.i.i.i.i.i, align 16, !noalias !10967
  %i.ke = icmp slt <16 x i8> %.val62.i.i.i.i.i.i.i, zeroinitializer
  %i.kf = bitcast <16 x i1> %i.ke to i16          ; 2 uses
  %.not.i6.i.i.i.i.i.i = icmp ne i16 %i.kf, 0
  %i.kg = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.kf, i1 true)
  %i.kh = zext nneg i16 %i.kg to i64              ; 2 uses
  call void @llvm.assume(i1 %.not.i6.i.i.i.i.i.i)
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 %i.kh
  %.pre.i.i.i.i.i = load i8, ptr %.phi.trans.insert.i.i.i.i.i, align 1, !noalias !10967
  br label %_RNvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTNtNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir12search_graph5stack10StackDepthNtBT_10HeadUsagesEE14insert_no_growCs8K4cjrcxBsw_6hir_ty.exit.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.aw, %.lr.ph.i.i.i.i.i.i
  %.sroa.0.010.i.i.i.i.i.i = phi i64 [ %.sroa.0.0.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.0.07.i.i.i.i.i.i, %bb.aw ]
  %i.ki = phi i64 [ %i.kj, %.lr.ph.i.i.i.i.i.i ], [ 0, %bb.aw ]
  %i.kj = add i64 %i.ki, 16                       ; 2 uses
  %i.kk = add i64 %i.kj, %.sroa.0.010.i.i.i.i.i.i
  %.sroa.0.0.i.i.i.i.i.i = and i64 %i.kk, %.val2.i.i.i.i.i ; 3 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 %.sroa.0.0.i.i.i.i.i.i
  %.sroa.0.0.copyload.i6.i.i.i.i.i.i = load <16 x i8>, ptr %i.kl, align 1, !noalias !10966
  %i.km = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i.i.i.i.i.i, zeroinitializer
  %i.kn = bitcast <16 x i1> %i.km to i16          ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i16 %i.kn, 0
  br i1 %.not.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, !prof !20

_RNvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTNtNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir12search_graph5stack10StackDepthNtBT_10HeadUsagesEE14insert_no_growCs8K4cjrcxBsw_6hir_ty.exit.i.i.i.i: ; preds = %bb.ax, %._crit_edge.i.i.i.i.i.i
  %i.ko = phi i8 [ %.pre.i.i.i.i.i, %bb.ax ], [ %i.kc, %._crit_edge.i.i.i.i.i.i ]
  %.sroa.0.0.i5.i.i.i.i.i.i = phi i64 [ %i.kh, %bb.ax ], [ %i.ka, %._crit_edge.i.i.i.i.i.i ] ; 3 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 %.sroa.0.0.i5.i.i.i.i.i.i
  %i.kq = lshr i64 %.sroa.433.0.copyload.i.i.i, 57
  %i.kr = trunc nuw nsw i64 %i.kq to i8           ; 2 uses
  %i.ks = add i64 %.sroa.0.0.i5.i.i.i.i.i.i, -16
  %i.kt = and i64 %i.ks, %.val2.i.i.i.i.i
  store i8 %i.kr, ptr %i.kp, align 1, !noalias !10967
  %i.ku = getelementptr i8, ptr %.val.i.i.i.i.i, i64 %i.kt
  %i.kv = getelementptr i8, ptr %i.ku, i64 16
  store i8 %i.kr, ptr %i.kv, align 1, !noalias !10967
  %i.kw = sub nsw i64 0, %.sroa.0.0.i5.i.i.i.i.i.i
  %i.kx = getelementptr inbounds [20 x i8], ptr %.val.i.i.i.i.i, i64 %i.kw ; 3 uses
  %i.ky = and i8 %i.ko, 1
  %i.kz = zext nneg i8 %i.ky to i64
  %i.la = getelementptr inbounds nuw i8, ptr %i.jr, i64 16 ; 2 uses
  %i.lb = getelementptr inbounds i8, ptr %i.kx, i64 -20
  store i32 %.sroa.829.16.extract.trunc.i.i.i, ptr %i.lb, align 4, !noalias !10968
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds i8, ptr %i.kx, i64 -16
  store i128 0, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 4, !noalias !10968
  %i.lc = load <2 x i64>, ptr %i.la, align 8, !alias.scope !10964, !noalias !10965
  %i.ld = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.kz, i64 0
  %i.le = sub <2 x i64> %i.lc, %i.ld
  store <2 x i64> %i.le, ptr %i.la, align 8, !alias.scope !10964, !noalias !10965
  br label %_RNvMs19_NtNtNtCscAsMj0W7j8b_3std11collections4hash3mapINtB6_5EntryNtNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir12search_graph5stack10StackDepthNtB16_10HeadUsagesE10or_defaultCs8K4cjrcxBsw_6hir_ty.exit.i.i.i

bb.ay:                                            ; preds = %.noexc67
  %i.lf = load ptr, ptr %.sroa.433.0..sroa_idx.i.i.i, align 8, !noalias !10959, !nonnull !12, !noundef !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !10959
  br label %_RNvMs19_NtNtNtCscAsMj0W7j8b_3std11collections4hash3mapINtB6_5EntryNtNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir12search_graph5stack10StackDepthNtB16_10HeadUsagesE10or_defaultCs8K4cjrcxBsw_6hir_ty.exit.i.i.i

_RNvMs19_NtNtNtCscAsMj0W7j8b_3std11collections4hash3mapINtB6_5EntryNtNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir12search_graph5stack10StackDepthNtB16_10HeadUsagesE10or_defaultCs8K4cjrcxBsw_6hir_ty.exit.i.i.i: ; preds = %bb.ay, %_RNvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTNtNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir12search_graph5stack10StackDepthNtBT_10HeadUsagesEE14insert_no_growCs8K4cjrcxBsw_6hir_ty.exit.i.i.i.i
  %.pn.i.i.i105.i = phi ptr [ %i.kx, %_RNvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTNtNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir12search_graph5stack10StackDepthNtBT_10HeadUsagesEE14insert_no_growCs8K4cjrcxBsw_6hir_ty.exit.i.i.i.i ], [ %i.lf, %bb.ay ]
  %.sroa.0.0.i.i.i.i = getelementptr inbounds i8, ptr %.pn.i.i.i105.i, i64 -16 ; 2 uses
  %i.lg = load <4 x i32>, ptr %.sroa.0.0.i.i.i.i, align 4, !noalias !10958
  %23 = zext <4 x i8> %9 to <4 x i32>
  %i.lh = add <4 x i32> %i.lg, %23
  store <4 x i32> %i.lh, ptr %.sroa.0.0.i.i.i.i, align 4, !noalias !10958
  br label %bb.av

bb.az:                                            ; preds = %bb.av
  switch i8 %i.hf, label %default.unreachable [
    i8 0, label %_RNvMs4_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir12search_graphNtB5_13PathsToNested11extend_with.exit.i.i.i
    i8 1, label %bb.ba
    i8 2, label %bb.bb
    i8 3, label %bb.bc
  ]

bb.ba:                                            ; preds = %bb.az
  %spec.select40.i.i.i = select i1 %.not14.i.i.i.i, i8 %switch.masked223, i8 %22
  br label %_RNvMs4_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir12search_graphNtB5_13PathsToNested11extend_with.exit.i.i.i

bb.bb:                                            ; preds = %bb.az
  %spec.select41.i.i.i = select i1 %.not13.i.i.i.i, i8 %switch.masked223, i8 %19
  br label %_RNvMs4_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir12search_graphNtB5_13PathsToNested11extend_with.exit.i.i.i

bb.bc:                                            ; preds = %bb.az
  %spec.select42.i.i.i = select i1 %.not.i19.i.i.i, i8 %switch.masked223, i8 16
  br label %_RNvMs4_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir12search_graphNtB5_13PathsToNested11extend_with.exit.i.i.i

_RNvMs4_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir12search_graphNtB5_13PathsToNested11extend_with.exit.i.i.i: ; preds = %bb.bc, %bb.bb, %bb.ba, %bb.az
  %.sroa.0.0.i20.i.i.i = phi i8 [ %spec.select40.i.i.i, %bb.ba ], [ %spec.select42.i.i.i, %bb.bc ], [ %spec.select41.i.i.i, %bb.bb ], [ %switch.masked223, %bb.az ]
  invoke void @_RINvMs2_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir12search_graphNtB6_10CycleHeads6insertNtB6_13PathsToNestedECs8K4cjrcxBsw_6hir_ty(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %15, i32 noundef %i.hj, i8 noundef %.sroa.0.0.i20.i.i.i, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %.sroa.552.0..sroa_idx.i.i)
          to label %.noexc68 unwind label %.loopexit.split-lp.loopexit.split-lp

bb.bd:                                            ; preds = %bb.av
  %i.li = load i32, ptr %14, align 8, !range !28, !alias.scope !10969, !noalias !10958, !noundef !12
  %i.lj = trunc nuw i32 %i.li to i1
  br i1 %i.lj, label %._RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir12search_graph10HeadUsagesE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultECs8K4cjrcxBsw_6hir_ty.exit_crit_edge.i.i.i, label %bb.be

._RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir12search_graph10HeadUsagesE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultECs8K4cjrcxBsw_6hir_ty.exit_crit_edge.i.i.i: ; preds = %bb.bd
  %24 = load <4 x i32>, ptr %.sroa.4.0..sroa_idx.i21.i.i.i, align 4, !noalias !10958
  br label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir12search_graph10HeadUsagesE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultECs8K4cjrcxBsw_6hir_ty.exit.i.i.i

bb.be:                                            ; preds = %bb.bd
  store i32 1, ptr %14, align 8, !alias.scope !10969, !noalias !10958
  br label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir12search_graph10HeadUsagesE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultECs8K4cjrcxBsw_6hir_ty.exit.i.i.i

_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir12search_graph10HeadUsagesE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultECs8K4cjrcxBsw_6hir_ty.exit.i.i.i: ; preds = %bb.be, %._RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir12search_graph10HeadUsagesE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultECs8K4cjrcxBsw_6hir_ty.exit_crit_edge.i.i.i
  %25 = phi <4 x i32> [ %24, %._RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir12search_graph10HeadUsagesE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultECs8K4cjrcxBsw_6hir_ty.exit_crit_edge.i.i.i ], [ zeroinitializer, %bb.be ]
  %26 = add <4 x i32> %25, %10
  store <4 x i32> %26, ptr %.sroa.4.0..sroa_idx.i21.i.i.i, align 4, !noalias !10958
  br label %.noexc68

bb.bf:                                            ; preds = %bb.av
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #55
          to label %.noexc69 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc69:                                         ; preds = %bb.bf
  unreachable

_RINvMs7_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir12search_graphINtB6_11SearchGraphINtNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve12search_graph19SearchGraphDelegateNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6solver13SolverContextENtNtB2N_8interner10DbInternerE18update_parent_goalINtNtNtNtCshzWfHUSfYae_4core4iter7sources4once4OnceTNtNtB6_5stack10StackDepthNtB6_9CycleHeadEEEB2P_.exit.i.i: ; preds = %.noexc64, %.noexc63, %.noexc62
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !10956
  %i.lk = getelementptr inbounds nuw i8, ptr %i.hg, i64 16
  %i.ll = load i64, ptr %i.lk, align 8, !alias.scope !10954, !noalias !10937, !noundef !12 ; 2 uses
  %i.lm = zext i32 %i.hj to i64                   ; 3 uses
  %i.ln = icmp ugt i64 %i.ll, %i.lm
  br i1 %i.ln, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %_RINvMs7_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir12search_graphINtB6_11SearchGraphINtNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve12search_graph19SearchGraphDelegateNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6solver13SolverContextENtNtB2N_8interner10DbInternerE18update_parent_goalINtNtNtNtCshzWfHUSfYae_4core4iter7sources4once4OnceTNtNtB6_5stack10StackDepthNtB6_9CycleHeadEEEB2P_.exit.i.i
  %i.lo = getelementptr inbounds nuw i8, ptr %i.hg, i64 8
  %i.lp = load ptr, ptr %i.lo, align 8, !alias.scope !10954, !noalias !10937, !nonnull !12, !noundef !12
  %i.lq = getelementptr inbounds nuw [264 x i8], ptr %i.lp, i64 %i.lm ; 2 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 112
  %i.ls = load i32, ptr %i.lr, align 8, !range !15, !noalias !10957, !noundef !12
  %.not.i104.i = icmp eq i32 %i.ls, -1
  br i1 %.not.i104.i, label %bb.bj, label %bb.bi

bb.bh:                                            ; preds = %_RINvMs7_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir12search_graphINtB6_11SearchGraphINtNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve12search_graph19SearchGraphDelegateNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6solver13SolverContextENtNtB2N_8interner10DbInternerE18update_parent_goalINtNtNtNtCshzWfHUSfYae_4core4iter7sources4once4OnceTNtNtB6_5stack10StackDepthNtB6_9CycleHeadEEEB2P_.exit.i.i
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %i.lm, i64 noundef %i.ll, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @141) #55
          to label %.noexc70 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc70:                                         ; preds = %bb.bh
  unreachable

bb.bi:                                            ; preds = %bb.bg
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lq, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.bf, ptr noundef nonnull align 8 dereferenceable(96) %i.lt, i64 96, i1 false), !noalias !10970
  br label %_RNvMs8_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir12search_graphINtB5_11SearchGraphINtNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve12search_graph19SearchGraphDelegateNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6solver13SolverContextENtNtB2M_8interner10DbInternerE20check_cycle_on_stackB2O_.exit.i

bb.bj:                                            ; preds = %bb.bg
  %i.lu = load i8, ptr %i.r, align 1, !range !16, !noalias !10956, !noundef !12
  invoke void @_RNvXNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve12search_graphINtB2_19SearchGraphDelegateNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6solver13SolverContextENtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir12search_graph8Delegate26initial_provisional_resultB1G_(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(none) dereferenceable(96) %i.bf, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.be, i8 noundef %i.lu, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.bd)
          to label %_RNvMs8_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir12search_graphINtB5_11SearchGraphINtNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve12search_graph19SearchGraphDelegateNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6solver13SolverContextENtNtB2M_8interner10DbInternerE20check_cycle_on_stackB2O_.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp

_RNvMs8_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir12search_graphINtB5_11SearchGraphINtNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve12search_graph19SearchGraphDelegateNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6solver13SolverContextENtNtB2M_8interner10DbInternerE20check_cycle_on_stackB2O_.exit.i: ; preds = %bb.bj, %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !10956
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 40
  %.pre215.i = load i32, ptr %.phi.trans.insert.i, align 8, !range !15, !noalias !10939
  %i.lv = icmp eq i32 %.pre215.i, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !10956
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !noalias !10939
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !10939
  br i1 %i.lv, label %bb.bn, label %bb.bm

bb.bk:                                            ; preds = %.noexc56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.br, ptr noundef nonnull align 8 dereferenceable(96) %i.bk, i64 96, i1 false), !noalias !10938
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk), !noalias !10939
  br label %bb.dy

bb.bl:                                            ; preds = %.noexc56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bk), !noalias !10939
  %.pre.i = load ptr, ptr %i.cd, align 8, !alias.scope !10938
  %.pre213.i = load i8, ptr %i.cg, align 8, !range !16, !alias.scope !10938
  br label %bb.ag

bb.bm:                                            ; preds = %_RNvMs8_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir12search_graphINtB5_11SearchGraphINtNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve12search_graph19SearchGraphDelegateNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6solver13SolverContextENtNtB2M_8interner10DbInternerE20check_cycle_on_stackB2O_.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.br, ptr noundef nonnull align 8 dereferenceable(96) %i.bf, i64 96, i1 false), !noalias !10938
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !10939
  br label %bb.dy

bb.bn:                                            ; preds = %_RNvMs8_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir12search_graphINtB5_11SearchGraphINtNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve12search_graph19SearchGraphDelegateNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6solver13SolverContextENtNtB2M_8interner10DbInternerE20check_cycle_on_stackB2O_.exit.i, %_RNvMs8_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir12search_graphINtB5_11SearchGraphINtNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve12search_graph19SearchGraphDelegateNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6solver13SolverContextENtNtB2M_8interner10DbInternerE20check_cycle_on_stackB2O_.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf), !noalias !10939
  %i.lw = load ptr, ptr %i.cd, align 8, !alias.scope !10938, !nonnull !12, !align !18, !noundef !12 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc), !noalias !10939
  %i.lx = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.lx, ptr noundef nonnull align 8 dereferenceable(112) %i.bq, i64 56, i1 false), !noalias !10937
  %i.ly = load i8, ptr %i.cg, align 8, !range !16, !alias.scope !10938, !noundef !12
  %i.lz = getelementptr inbounds nuw i8, ptr %i.bc, i64 261
  store i8 %i.ly, ptr %i.lz, align 1, !noalias !10939
  %i.ma = getelementptr inbounds nuw i8, ptr %i.bc, i64 200
  store i64 %.sroa.4.0.i.ph.i, ptr %i.ma, align 8, !noalias !10939
  %i.mb = getelementptr inbounds nuw i8, ptr %i.bc, i64 208
  store i64 0, ptr %i.mb, align 8, !noalias !10939
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bc, i64 112
  store i32 -1, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !10939
  %i.mc = getelementptr inbounds nuw i8, ptr %i.bc, i64 216
  store ptr null, ptr %i.mc, align 8, !noalias !10939
  %.sroa.533.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bc, i64 232
  store i64 0, ptr %.sroa.533.0..sroa_idx.i, align 8, !noalias !10939
  %i.md = getelementptr inbounds nuw i8, ptr %i.bc, i64 260
  store i8 0, ptr %i.md, align 4, !noalias !10939
  %i.me = getelementptr inbounds nuw i8, ptr %i.bc, i64 240
  store i32 0, ptr %i.me, align 8, !noalias !10939
  store i64 0, ptr %i.bc, align 8, !noalias !10939
  %i.mf = getelementptr inbounds nuw i8, ptr %i.bc, i64 168
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.mf, ptr noundef nonnull align 8 dereferenceable(32) @7, i64 32, i1 false), !noalias !10939
  call void @llvm.experimental.noalias.scope.decl(metadata !10971)
  %i.mg = getelementptr inbounds nuw i8, ptr %i.lw, i64 16 ; 2 uses
  %i.mh = load i64, ptr %i.mg, align 8, !alias.scope !10971, !noalias !10937, !noundef !12 ; 4 uses
  %i.mi = icmp ult i64 %i.mh, 4294967041
  br i1 %i.mi, label %bb.bp, label %bb.bo, !prof !13

bb.bo:                                            ; preds = %bb.bn
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @115, i64 noundef 49, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @135) #55
          to label %.noexc.i.i unwind label %bb.bt, !noalias !10972

.noexc.i.i:                                       ; preds = %bb.bo
  unreachable

bb.bp:                                            ; preds = %bb.bn
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !10973
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %i.g, ptr noundef nonnull align 8 dereferenceable(264) %i.bc, i64 264, i1 false), !noalias !10974
  %i.mj = load i64, ptr %i.lw, align 8, !range !22, !alias.scope !10975, !noalias !10937, !noundef !12
  %i.mk = icmp eq i64 %i.mh, %i.mj
  br i1 %i.mk, label %bb.bq, label %_RNvMNtCs6q8GQ6zN3Tv_17ra_ap_rustc_index3vecINtB2_8IndexVecNtNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir12search_graph5stack10StackDepthINtBW_10StackEntryNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEE4pushB2t_.exit.i

bb.bq:                                            ; preds = %bb.bp
  invoke void @_RNvMs4_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecINtNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir12search_graph5stack10StackEntryNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEE8grow_oneB24_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.lw)
          to label %_RNvMNtCs6q8GQ6zN3Tv_17ra_ap_rustc_index3vecINtB2_8IndexVecNtNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir12search_graph5stack10StackDepthINtBW_10StackEntryNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEE4pushB2t_.exit.i unwind label %bb.br, !noalias !10976

bb.br:                                            ; preds = %bb.bq
  %i.ml = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir12search_graph5stack10StackEntryNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEEB1T_(ptr noalias nofree noundef nonnull align 8 dereferenceable(264) %i.g) #56
          to label %.body unwind label %bb.bs, !noalias !10977

bb.bs:                                            ; preds = %bb.br
  %i.mm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #58, !noalias !10977
  unreachable

common.resume.sink.split.i:                       ; preds = %bb.dm, %bb.dk, %bb.cw, %bb.cu, %bb.cp
  %common.resume.op.ph.i = phi { ptr, i32 } [ %i.ru, %bb.dk ], [ %lpad.thr_comm.i, %bb.dm ], [ %i.rc, %bb.cw ], [ %i.qq, %bb.cp ], [ %i.ra, %bb.cu ]
  call void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir12search_graph11NestedGoalsNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEEB1M_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.nl) #56, !noalias !10937
  br label %.body

bb.bt:                                            ; preds = %bb.bo
  %i.mn = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir12search_graph5stack10StackEntryNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEEB1T_(ptr noalias nofree noundef nonnull align 8 dereferenceable(264) %i.bc) #56
          to label %.body unwind label %bb.bu, !noalias !10978

bb.bu:                                            ; preds = %bb.bt
  %i.mo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #58, !noalias !10978
  unreachable

_RNvMNtCs6q8GQ6zN3Tv_17ra_ap_rustc_index3vecINtB2_8IndexVecNtNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir12search_graph5stack10StackDepthINtBW_10StackEntryNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEE4pushB2t_.exit.i: ; preds = %bb.bq, %bb.bp
  %i.mp = getelementptr inbounds nuw i8, ptr %i.lw, i64 8
  %i.mq = load ptr, ptr %i.mp, align 8, !alias.scope !10975, !noalias !10937, !nonnull !12, !noundef !12
  %i.mr = getelementptr inbounds nuw [264 x i8], ptr %i.mq, i64 %i.mh
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %i.mr, ptr noundef nonnull align 8 dereferenceable(264) %i.bc, i64 264, i1 false), !noalias !10937
  %i.ms = add nuw nsw i64 %i.mh, 1
  store i64 %i.ms, ptr %i.mg, align 8, !alias.scope !10975, !noalias !10937
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !10973
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !noalias !10939
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !noalias !10939
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az), !noalias !10939
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.az, ptr noundef nonnull align 8 dereferenceable(32) %i.ce, i64 32, i1 false), !noalias !10937
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay), !noalias !10939
  %i.mt = load ptr, ptr %i.cd, align 8, !alias.scope !10938, !nonnull !12, !align !18, !noundef !12
  %i.mu = load ptr, ptr %i.ch, align 8, !alias.scope !10938, !nonnull !12, !align !18, !noundef !12
  store ptr %i.mt, ptr %i.ay, align 8, !noalias !10939
  %i.mv = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store ptr %i.ce, ptr %i.mv, align 8, !noalias !10939
  %i.mw = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  store ptr %i.bq, ptr %i.mw, align 8, !noalias !10939
  %i.mx = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  store ptr %i.mu, ptr %i.mx, align 8, !noalias !10939
  invoke void @_RINvXs0_NtCs1nWGUjlayfI_19ra_ap_rustc_type_ir8internerNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerNtNtB8_12search_graph2Cx16with_cached_taskINtB1R_16EvaluationResultBQ_ENCNCNvMs7_B1R_INtB1R_11SearchGraphINtNtNtCshbspv01vNlV_29ra_ap_rustc_next_trait_solver5solve12search_graph19SearchGraphDelegateNtNtBU_6solver13SolverContextEBQ_E13evaluate_goal0s0_0EBW_(ptr noalias nofree noundef nonnull sret([168 x i8]) align 8 captures(address) dereferenceable(168) %i.ba, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.az, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.ay)
          to label %.noexc72 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc72:                                         ; preds = %_RNvMNtCs6q8GQ6zN3Tv_17ra_ap_rustc_index3vecINtB2_8IndexVecNtNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir12search_graph5stack10StackDepthINtBW_10StackEntryNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8interner10DbInternerEE4pushB2t_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay), !noalias !10939
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !10939
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb), !noalias !10939
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %i.bb, ptr noundef nonnull align 8 dereferenceable(168) %i.ba, i64 168, i1 false), !noalias !10939
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !10939
  %i.my = load ptr, ptr %i.cd, align 8, !alias.scope !10938, !nonnull !12, !align !18, !noundef !12
  %i.mz = load i8, ptr %i.cg, align 8, !range !16, !alias.scope !10938, !noundef !12
  %i.na = getelementptr inbounds nuw i8, ptr %i.bb, i64 128
  %i.nb = load i64, ptr %i.na, align 8, !noalias !10939, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ax), !noalias !10939
  %i.nc = getelementptr inbounds nuw i8, ptr %i.bb, i64 136 ; 4 uses
  %i.nd = load ptr, ptr %i.nc, align 8, !noalias !10939, !noundef !12 ; 3 uses
  %.not81.i = icmp ne ptr %i.nd, null             ; 3 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %i.bb, i64 144
  %i.nf = load i64, ptr %i.ne, align 8, !noalias !10939
  %i.ng = getelementptr inbounds nuw i8, ptr %i.bb, i64 152 ; 2 uses
  %i.nh = load i64, ptr %i.ng, align 8, !noalias !10939
  %.sroa.034.sroa.0.0.i = zext i1 %.not81.i to i64 ; 2 uses
  %.sroa.535.0.i = select i1 %.not81.i, i64 %i.nh, i64 0
  %.sroa.034.sroa.5.sroa.6.0.i = select i1 %.not81.i, i64 %i.nf, i64 undef ; 2 uses
  store i64 %.sroa.034.sroa.0.0.i, ptr %i.ax, align 8, !noalias !10939
  %.sroa.034.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store ptr null, ptr %.sroa.034.sroa.5.0..sroa_idx.i, align 8, !noalias !10939
  %.sroa.034.sroa.5.sroa.5.0..sroa.034.sroa.5.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  store ptr %i.nd, ptr %.sroa.034.sroa.5.sroa.5.0..sroa.034.sroa.5.0..sroa_idx.sroa_idx.i, align 8, !noalias !10939
  %.sroa.034.sroa.5.sroa.6.0..sroa.034.sroa.5.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
end_hunk_1
