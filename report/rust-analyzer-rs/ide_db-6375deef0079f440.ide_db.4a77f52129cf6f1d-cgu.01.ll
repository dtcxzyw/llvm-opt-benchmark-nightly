Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/ide_db-6375deef0079f440.ide_db.4a77f52129cf6f1d-cgu.01?download=true
inline.NumInlined: 1624
inline.NumDeleted: 557
loop-unroll.NumCompletelyUnrolled: 25
loop-unroll.NumRuntimeUnrolled: 32
loop-unroll.NumUnrolled: 57
begin_hunk_0_@_RNvXsg_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTNtNtNtCscAsMj0W7j8b_3std6thread2id8ThreadIdNtNtNtNtCsd9Lm8bEdjjY_5salsa7runtime16dependency_graph4edge4EdgeEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6oosyzwIepl_6ide_db:bb.a
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXsg_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTNtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer18region_constraints10TwoRegionsNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir11region_kind9RegionVidEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6oosyzwIepl_6ide_db(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #4 {
bb.a:
  %.val = load ptr, ptr %0, align 8               ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load i64, ptr %i.a, align 8, !noundef !4 ; 4 uses
  %i.b = icmp eq i64 %.val1, 0
  br i1 %i.b, label %_RINvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer18region_constraints10TwoRegionsNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir11region_kind9RegionVidENtNtCsbSS6DM8SDEO_5alloc5alloc6GlobalECs6oosyzwIepl_6ide_db.exit, label %_RNvMs1_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i

_RNvMs1_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i: ; preds = %bb.a
  %i.c = mul i64 %.val1, 24
  %i.d = icmp slt i64 %.val1, 768614336404564650
  tail call void @llvm.assume(i1 %i.d)
  %i.e = and i64 %i.c, -16                        ; 2 uses
  %i.f = add i64 %i.e, 32                         ; 2 uses
  %i.g = add nsw i64 %.val1, 17
  %i.h = add i64 %i.g, %i.f                       ; 4 uses
  %i.i = icmp uge i64 %i.h, %i.f
  %i.j = icmp ult i64 %i.h, 9223372036854775793
  tail call void @llvm.assume(i1 %i.i)
  tail call void @llvm.assume(i1 %i.j)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.k = icmp eq i64 %i.h, 0
  br i1 %i.k, label %_RINvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer18region_constraints10TwoRegionsNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir11region_kind9RegionVidENtNtCsbSS6DM8SDEO_5alloc5alloc6GlobalECs6oosyzwIepl_6ide_db.exit, label %bb.b

bb.b:                                             ; preds = %_RNvMs1_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i
  %i.l = sub i64 -32, %i.e
  %i.m = getelementptr inbounds i8, ptr %.val, i64 %i.l
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.m, i64 noundef %i.h, i64 noundef range(i64 1, -9223372036854775807) 16) #36
  br label %_RINvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer18region_constraints10TwoRegionsNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir11region_kind9RegionVidENtNtCsbSS6DM8SDEO_5alloc5alloc6GlobalECs6oosyzwIepl_6ide_db.exit

_RINvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver5infer18region_constraints10TwoRegionsNtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir11region_kind9RegionVidENtNtCsbSS6DM8SDEO_5alloc5alloc6GlobalECs6oosyzwIepl_6ide_db.exit: ; preds = %bb.a, %_RNvMs1_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXsg_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTTNtCs8Xq8PKFYOms_3hir6ModulebEuEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6oosyzwIepl_6ide_db(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #4 {
bb.a:
  %.val = load ptr, ptr %0, align 8               ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load i64, ptr %i.a, align 8, !noundef !4 ; 4 uses
  %i.b = icmp eq i64 %.val1, 0
  br i1 %i.b, label %_RINvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTTNtCs8Xq8PKFYOms_3hir6ModulebEuENtNtCsbSS6DM8SDEO_5alloc5alloc6GlobalECs6oosyzwIepl_6ide_db.exit, label %_RNvMs1_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i

_RNvMs1_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i: ; preds = %bb.a
  %i.c = mul i64 %.val1, 12
  %i.d = add i64 %i.c, 24
  %i.e = icmp slt i64 %.val1, 1537228672809129300
  tail call void @llvm.assume(i1 %i.e)
  %i.f = and i64 %i.d, -16                        ; 3 uses
  %i.g = add nsw i64 %.val1, 17
  %i.h = add i64 %i.g, %i.f                       ; 4 uses
  %i.i = icmp uge i64 %i.h, %i.f
  %i.j = icmp ult i64 %i.h, 9223372036854775793
  tail call void @llvm.assume(i1 %i.i)
  tail call void @llvm.assume(i1 %i.j)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.k = icmp eq i64 %i.h, 0
  br i1 %i.k, label %_RINvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTTNtCs8Xq8PKFYOms_3hir6ModulebEuENtNtCsbSS6DM8SDEO_5alloc5alloc6GlobalECs6oosyzwIepl_6ide_db.exit, label %bb.b

bb.b:                                             ; preds = %_RNvMs1_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i
  %i.l = sub nsw i64 0, %i.f
  %i.m = getelementptr inbounds i8, ptr %.val, i64 %i.l
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.m, i64 noundef %i.h, i64 noundef range(i64 1, -9223372036854775807) 16) #36
  br label %_RINvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTTNtCs8Xq8PKFYOms_3hir6ModulebEuENtNtCsbSS6DM8SDEO_5alloc5alloc6GlobalECs6oosyzwIepl_6ide_db.exit

_RINvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTTNtCs8Xq8PKFYOms_3hir6ModulebEuENtNtCsbSS6DM8SDEO_5alloc5alloc6GlobalECs6oosyzwIepl_6ide_db.exit: ; preds = %bb.a, %_RNvMs1_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXsg_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTTNtNtCsgIpRO4v45SJ_7base_db5input5CrateINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir11fast_reject14SimplifiedTypeNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_id11SolverDefIdEEuEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6oosyzwIepl_6ide_db(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #4 {
bb.a:
  %.val = load ptr, ptr %0, align 8               ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load i64, ptr %i.a, align 8, !noundef !4 ; 3 uses
  %i.b = icmp eq i64 %.val1, 0
  br i1 %i.b, label %_RINvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTTNtNtCsgIpRO4v45SJ_7base_db5input5CrateINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir11fast_reject14SimplifiedTypeNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_id11SolverDefIdEEuENtNtCsbSS6DM8SDEO_5alloc5alloc6GlobalECs6oosyzwIepl_6ide_db.exit, label %_RNvMs1_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i

_RNvMs1_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i: ; preds = %bb.a
  %i.c = shl i64 %.val1, 5                        ; 2 uses
  %i.d = add i64 %i.c, 32                         ; 2 uses
  %i.e = add i64 %.val1, 17
  %i.f = add i64 %i.e, %i.d                       ; 4 uses
  %i.g = icmp uge i64 %i.f, %i.d
  %i.h = icmp ult i64 %i.f, 9223372036854775793
  tail call void @llvm.assume(i1 %i.g)
  tail call void @llvm.assume(i1 %i.h)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.i = icmp eq i64 %i.f, 0
  br i1 %i.i, label %_RINvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTTNtNtCsgIpRO4v45SJ_7base_db5input5CrateINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir11fast_reject14SimplifiedTypeNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_id11SolverDefIdEEuENtNtCsbSS6DM8SDEO_5alloc5alloc6GlobalECs6oosyzwIepl_6ide_db.exit, label %bb.b

bb.b:                                             ; preds = %_RNvMs1_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i
  %i.j = sub nuw nsw i64 -32, %i.c
  %i.k = getelementptr inbounds i8, ptr %.val, i64 %i.j
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.k, i64 noundef %i.f, i64 noundef range(i64 1, -9223372036854775807) 16) #36
  br label %_RINvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTTNtNtCsgIpRO4v45SJ_7base_db5input5CrateINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir11fast_reject14SimplifiedTypeNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_id11SolverDefIdEEuENtNtCsbSS6DM8SDEO_5alloc5alloc6GlobalECs6oosyzwIepl_6ide_db.exit

_RINvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTTNtNtCsgIpRO4v45SJ_7base_db5input5CrateINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir11fast_reject14SimplifiedTypeNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_id11SolverDefIdEEuENtNtCsbSS6DM8SDEO_5alloc5alloc6GlobalECs6oosyzwIepl_6ide_db.exit: ; preds = %bb.a, %_RNvMs1_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXsg_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTmINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSNtCs9HU4uknhSfY_10line_index8WideCharEEENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6oosyzwIepl_6ide_db(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4884)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !4884, !noundef !4 ; 4 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RINvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTmINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSNtCs9HU4uknhSfY_10line_index8WideCharEENtNtB1j_5alloc6GlobalECs6oosyzwIepl_6ide_db.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4885)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !4886, !noundef !4 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RINvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTmINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSNtCs9HU4uknhSfY_10line_index8WideCharEEECs6oosyzwIepl_6ide_db.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !alias.scope !4886, !nonnull !4, !noundef !4 ; 3 uses
  %.val3.i.i.i = load <16 x i8>, ptr %i.g, align 16, !noalias !4887
  %i.h = icmp sgt <16 x i8> %.val3.i.i.i, splat (i8 -1)
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.j = bitcast <16 x i1> %i.h to i16
  br label %bb.d

bb.d:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTmINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSNtCs9HU4uknhSfY_10line_index8WideCharEEECs6oosyzwIepl_6ide_db.exit.i.i, %bb.c
  %.sroa.06.017.i.i = phi ptr [ %i.g, %bb.c ], [ %.sroa.06.1.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTmINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSNtCs9HU4uknhSfY_10line_index8WideCharEEECs6oosyzwIepl_6ide_db.exit.i.i ] ; 2 uses
  %.sroa.6.016.i.i = phi ptr [ %i.i, %bb.c ], [ %.sroa.6.1.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTmINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSNtCs9HU4uknhSfY_10line_index8WideCharEEECs6oosyzwIepl_6ide_db.exit.i.i ] ; 2 uses
  %.sroa.87.015.i.i = phi i16 [ %i.j, %bb.c ], [ %i.s, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTmINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSNtCs9HU4uknhSfY_10line_index8WideCharEEECs6oosyzwIepl_6ide_db.exit.i.i ] ; 2 uses
  %.sroa.108.014.i.i = phi i64 [ %i.e, %bb.c ], [ %i.v, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTmINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSNtCs9HU4uknhSfY_10line_index8WideCharEEECs6oosyzwIepl_6ide_db.exit.i.i ]
  %.not11.i.i.i = icmp eq i16 %.sroa.87.015.i.i, 0
  br i1 %.not11.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCsfjX3T6UU9IB_9hashbrown3rawINtB6_12RawIterRangeTmINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSNtCs9HU4uknhSfY_10line_index8WideCharEEE9next_implKb0_ECs6oosyzwIepl_6ide_db.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
  %i.k = phi ptr [ %i.o, %.lr.ph.i.i.i ], [ %.sroa.6.016.i.i, %bb.d ] ; 2 uses
  %i.l = phi ptr [ %i.n, %.lr.ph.i.i.i ], [ %.sroa.06.017.i.i, %bb.d ]
  %.val9.i.i.i = load <16 x i8>, ptr %i.k, align 16, !noalias !4888
  %i.m = icmp sgt <16 x i8> %.val9.i.i.i, splat (i8 -1)
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 -384 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.m to i16    ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCsfjX3T6UU9IB_9hashbrown3rawINtB6_12RawIterRangeTmINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSNtCs9HU4uknhSfY_10line_index8WideCharEEE9next_implKb0_ECs6oosyzwIepl_6ide_db.exit.i.i

_RINvMsi_NtCsfjX3T6UU9IB_9hashbrown3rawINtB6_12RawIterRangeTmINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSNtCs9HU4uknhSfY_10line_index8WideCharEEE9next_implKb0_ECs6oosyzwIepl_6ide_db.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.d
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.016.i.i, %bb.d ], [ %i.o, %.lr.ph.i.i.i ]
  %.sroa.06.1.i.i = phi ptr [ %.sroa.06.017.i.i, %bb.d ], [ %i.n, %.lr.ph.i.i.i ] ; 2 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.87.015.i.i, %bb.d ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.p = add i16 %.lcssa.i.i.i, -1
  %i.q = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.r = zext nneg i16 %i.q to i64
  %i.s = and i16 %i.p, %.lcssa.i.i.i
  %i.t = sub nsw i64 0, %i.r
  %i.u = getelementptr inbounds [24 x i8], ptr %.sroa.06.1.i.i, i64 %i.t ; 2 uses
  %i.v = add i64 %.sroa.108.014.i.i, -1           ; 2 uses
  %i.w = getelementptr i8, ptr %i.u, i64 -8
  %.val5.i.i = load i64, ptr %i.w, align 8, !noalias !4886, !noundef !4 ; 2 uses
  %i.x = icmp eq i64 %.val5.i.i, 0
  br i1 %i.x, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTmINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSNtCs9HU4uknhSfY_10line_index8WideCharEEECs6oosyzwIepl_6ide_db.exit.i.i, label %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i

_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i: ; preds = %_RINvMsi_NtCsfjX3T6UU9IB_9hashbrown3rawINtB6_12RawIterRangeTmINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSNtCs9HU4uknhSfY_10line_index8WideCharEEE9next_implKb0_ECs6oosyzwIepl_6ide_db.exit.i.i
  %i.y = getelementptr i8, ptr %i.u, i64 -16
  %.val.i.i = load ptr, ptr %i.y, align 8, !noalias !4886, !nonnull !4, !noundef !4
  %i.z = shl nuw nsw i64 %.val5.i.i, 3
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %i.z, i64 noundef 4) #36, !noalias !4886
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTmINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSNtCs9HU4uknhSfY_10line_index8WideCharEEECs6oosyzwIepl_6ide_db.exit.i.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTmINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSNtCs9HU4uknhSfY_10line_index8WideCharEEECs6oosyzwIepl_6ide_db.exit.i.i: ; preds = %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i, %_RINvMsi_NtCsfjX3T6UU9IB_9hashbrown3rawINtB6_12RawIterRangeTmINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSNtCs9HU4uknhSfY_10line_index8WideCharEEE9next_implKb0_ECs6oosyzwIepl_6ide_db.exit.i.i
  %i.aa = icmp eq i64 %i.v, 0
  br i1 %i.aa, label %_RINvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTmINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSNtCs9HU4uknhSfY_10line_index8WideCharEEECs6oosyzwIepl_6ide_db.exit.i, label %bb.d

_RINvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTmINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSNtCs9HU4uknhSfY_10line_index8WideCharEEECs6oosyzwIepl_6ide_db.exit.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTmINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSNtCs9HU4uknhSfY_10line_index8WideCharEEECs6oosyzwIepl_6ide_db.exit.i.i, %bb.b
  %i.ab = mul i64 %i.b, 24
  %i.ac = icmp slt i64 %i.b, 768614336404564650
  tail call void @llvm.assume(i1 %i.ac)
  %i.ad = and i64 %i.ab, -16                      ; 2 uses
  %i.ae = add i64 %i.ad, 32                       ; 2 uses
  %i.af = add nsw i64 %i.b, 17
  %i.ag = add i64 %i.af, %i.ae                    ; 4 uses
  %i.ah = icmp uge i64 %i.ag, %i.ae
  %i.ai = icmp ult i64 %i.ag, 9223372036854775793
  tail call void @llvm.assume(i1 %i.ah)
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = icmp eq i64 %i.ag, 0
  br i1 %i.aj, label %_RINvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTmINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSNtCs9HU4uknhSfY_10line_index8WideCharEENtNtB1j_5alloc6GlobalECs6oosyzwIepl_6ide_db.exit, label %bb.e

bb.e:                                             ; preds = %_RINvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTmINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSNtCs9HU4uknhSfY_10line_index8WideCharEEECs6oosyzwIepl_6ide_db.exit.i
  %i.ak = load ptr, ptr %0, align 8, !alias.scope !4884, !nonnull !4, !noundef !4
  %i.al = sub i64 -32, %i.ad
  %i.am = getelementptr inbounds i8, ptr %i.ak, i64 %i.al
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.am, i64 noundef %i.ag, i64 noundef range(i64 1, -9223372036854775807) 16) #36, !noalias !4884
  br label %_RINvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTmINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSNtCs9HU4uknhSfY_10line_index8WideCharEENtNtB1j_5alloc6GlobalECs6oosyzwIepl_6ide_db.exit

_RINvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTmINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSNtCs9HU4uknhSfY_10line_index8WideCharEENtNtB1j_5alloc6GlobalECs6oosyzwIepl_6ide_db.exit: ; preds = %bb.a, %_RINvMsa_NtCsfjX3T6UU9IB_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTmINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSNtCs9HU4uknhSfY_10line_index8WideCharEEECs6oosyzwIepl_6ide_db.exit.i, %bb.e
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvXsh_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTNtCs4sl5YdnrCxp_3vfs6FileIdNtNtCs6oosyzwIepl_6ide_db9text_edit8TextEditEENtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect12IntoIterator9into_iterB1k_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) initializes((0, 50), (56, 64)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #16 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !4 ; 4 uses
  %.val3.i = load <16 x i8>, ptr %i.a, align 16, !noalias !4891
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load i64, ptr %i.d, align 8, !noundef !4
  %i.f = icmp eq i64 %i.c, 0
  br i1 %i.f, label %_RNvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTNtCs4sl5YdnrCxp_3vfs6FileIdNtNtCs6oosyzwIepl_6ide_db9text_edit8TextEditEE15into_allocationB1k_.exit, label %_RNvMs1_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i

_RNvMs1_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i: ; preds = %bb.a
  %i.g = mul i64 %i.c, 40
  %i.h = and i64 %i.g, -16                        ; 2 uses
  %i.i = add i64 %i.c, 65
  %i.j = add i64 %i.i, %i.h
  %i.k = sub i64 -48, %i.h
  %i.l = getelementptr inbounds i8, ptr %i.a, i64 %i.k
  br label %_RNvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTNtCs4sl5YdnrCxp_3vfs6FileIdNtNtCs6oosyzwIepl_6ide_db9text_edit8TextEditEE15into_allocationB1k_.exit

_RNvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTNtCs4sl5YdnrCxp_3vfs6FileIdNtNtCs6oosyzwIepl_6ide_db9text_edit8TextEditEE15into_allocationB1k_.exit: ; preds = %_RNvMs1_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i, %bb.a
  %.sroa.511.0 = phi ptr [ undef, %bb.a ], [ %i.l, %_RNvMs1_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i ]
  %.sroa.410.0 = phi i64 [ undef, %bb.a ], [ %i.j, %_RNvMs1_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i ]
  %.sink.i = phi i64 [ 0, %bb.a ], [ 16, %_RNvMs1_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.n = icmp sgt <16 x i8> %.val3.i, splat (i8 -1)
  %i.o = getelementptr i8, ptr %i.a, i64 %i.c
  %i.p = getelementptr i8, ptr %i.o, i64 1
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.a, ptr %i.q, align 8
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.m, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.p, ptr %.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <16 x i1> %i.n, ptr %.sroa.0.sroa.6.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.e, ptr %.sroa.4.0..sroa_idx, align 8
  store i64 %.sink.i, ptr %0, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.410.0, ptr %.sroa.410.0..sroa_idx, align 8
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.511.0, ptr %.sroa.511.0..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvXsh_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTNtCs4sl5YdnrCxp_3vfs6FileIdNtNtCsjJXvCMGntp8_6syntax13syntax_editor12SyntaxEditorEENtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect12IntoIterator9into_iterCs6oosyzwIepl_6ide_db(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) initializes((0, 50), (56, 64)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #16 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !4 ; 4 uses
  %.val3.i = load <16 x i8>, ptr %i.a, align 16, !noalias !4894
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load i64, ptr %i.d, align 8, !noundef !4
  %i.f = icmp eq i64 %i.c, 0
  br i1 %i.f, label %_RNvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTNtCs4sl5YdnrCxp_3vfs6FileIdNtNtCsjJXvCMGntp8_6syntax13syntax_editor12SyntaxEditorEE15into_allocationCs6oosyzwIepl_6ide_db.exit, label %_RNvMs1_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i

_RNvMs1_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i: ; preds = %bb.a
  %i.g = mul i64 %i.c, 152
  %i.h = and i64 %i.g, -16                        ; 2 uses
  %i.i = add i64 %i.c, 177
  %i.j = add i64 %i.i, %i.h
  %i.k = sub i64 -160, %i.h
  %i.l = getelementptr inbounds i8, ptr %i.a, i64 %i.k
  br label %_RNvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTNtCs4sl5YdnrCxp_3vfs6FileIdNtNtCsjJXvCMGntp8_6syntax13syntax_editor12SyntaxEditorEE15into_allocationCs6oosyzwIepl_6ide_db.exit

_RNvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTNtCs4sl5YdnrCxp_3vfs6FileIdNtNtCsjJXvCMGntp8_6syntax13syntax_editor12SyntaxEditorEE15into_allocationCs6oosyzwIepl_6ide_db.exit: ; preds = %_RNvMs1_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i, %bb.a
  %.sroa.511.0 = phi ptr [ undef, %bb.a ], [ %i.l, %_RNvMs1_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i ]
  %.sroa.410.0 = phi i64 [ undef, %bb.a ], [ %i.j, %_RNvMs1_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i ]
  %.sink.i = phi i64 [ 0, %bb.a ], [ 16, %_RNvMs1_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.n = icmp sgt <16 x i8> %.val3.i, splat (i8 -1)
  %i.o = getelementptr i8, ptr %i.a, i64 %i.c
  %i.p = getelementptr i8, ptr %i.o, i64 1
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.a, ptr %i.q, align 8
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.m, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.p, ptr %.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <16 x i1> %i.n, ptr %.sroa.0.sroa.6.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.e, ptr %.sroa.4.0..sroa_idx, align 8
  store i64 %.sink.i, ptr %0, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.410.0, ptr %.sroa.410.0..sroa_idx, align 8
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.511.0, ptr %.sroa.511.0..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvXsh_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTNtCs4sl5YdnrCxp_3vfs6FileIdTNtNtCs6oosyzwIepl_6ide_db9text_edit8TextEditINtNtCshzWfHUSfYae_4core6option6OptionNtNtB1l_13source_change11SnippetEditEEEENtNtNtNtB24_4iter6traits7collect12IntoIterator9into_iterB1l_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) initializes((0, 50), (56, 64)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #16 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !4 ; 4 uses
  %.val3.i = load <16 x i8>, ptr %i.a, align 16, !noalias !4897
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load i64, ptr %i.d, align 8, !noundef !4
  %i.f = icmp eq i64 %i.c, 0
  br i1 %i.f, label %_RNvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTNtCs4sl5YdnrCxp_3vfs6FileIdTNtNtCs6oosyzwIepl_6ide_db9text_edit8TextEditINtNtCshzWfHUSfYae_4core6option6OptionNtNtB1l_13source_change11SnippetEditEEEE15into_allocationB1l_.exit, label %_RNvMs1_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i

_RNvMs1_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i: ; preds = %bb.a
  %i.g = shl i64 %i.c, 6
  %2 = mul i64 %i.c, 65
  %i.h = add i64 %2, 81
  %i.i = sub nuw nsw i64 -64, %i.g
  %i.j = getelementptr inbounds i8, ptr %i.a, i64 %i.i
  br label %_RNvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTNtCs4sl5YdnrCxp_3vfs6FileIdTNtNtCs6oosyzwIepl_6ide_db9text_edit8TextEditINtNtCshzWfHUSfYae_4core6option6OptionNtNtB1l_13source_change11SnippetEditEEEE15into_allocationB1l_.exit

_RNvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTNtCs4sl5YdnrCxp_3vfs6FileIdTNtNtCs6oosyzwIepl_6ide_db9text_edit8TextEditINtNtCshzWfHUSfYae_4core6option6OptionNtNtB1l_13source_change11SnippetEditEEEE15into_allocationB1l_.exit: ; preds = %_RNvMs1_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i, %bb.a
  %.sroa.511.0 = phi ptr [ undef, %bb.a ], [ %i.j, %_RNvMs1_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i ]
  %.sroa.410.0 = phi i64 [ undef, %bb.a ], [ %i.h, %_RNvMs1_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i ]
  %.sink.i = phi i64 [ 0, %bb.a ], [ 16, %_RNvMs1_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i ]
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.l = icmp sgt <16 x i8> %.val3.i, splat (i8 -1)
  %i.m = getelementptr i8, ptr %i.a, i64 %i.c
  %i.n = getelementptr i8, ptr %i.m, i64 1
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.a, ptr %i.o, align 8
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.k, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.n, ptr %.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <16 x i1> %i.l, ptr %.sroa.0.sroa.6.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.e, ptr %.sroa.4.0..sroa_idx, align 8
  store i64 %.sink.i, ptr %0, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.410.0, ptr %.sroa.410.0..sroa_idx, align 8
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.511.0, ptr %.sroa.511.0..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvXsh_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTNtCs8Xq8PKFYOms_3hir5LocaluEENtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect12IntoIterator9into_iterCs6oosyzwIepl_6ide_db(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) initializes((0, 50), (56, 64)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #16 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !4 ; 4 uses
  %.val3.i = load <16 x i8>, ptr %i.a, align 16, !noalias !4900
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load i64, ptr %i.d, align 8, !noundef !4
  %i.f = icmp eq i64 %i.c, 0
  br i1 %i.f, label %_RNvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTNtCs8Xq8PKFYOms_3hir5LocaluEE15into_allocationCs6oosyzwIepl_6ide_db.exit, label %_RNvMs1_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i

_RNvMs1_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i: ; preds = %bb.a
  %i.g = shl i64 %i.c, 5
  %2 = mul i64 %i.c, 33
  %i.h = add i64 %2, 49
  %i.i = sub nuw nsw i64 -32, %i.g
  %i.j = getelementptr inbounds i8, ptr %i.a, i64 %i.i
  br label %_RNvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTNtCs8Xq8PKFYOms_3hir5LocaluEE15into_allocationCs6oosyzwIepl_6ide_db.exit

_RNvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTNtCs8Xq8PKFYOms_3hir5LocaluEE15into_allocationCs6oosyzwIepl_6ide_db.exit: ; preds = %_RNvMs1_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i, %bb.a
  %.sroa.514.0 = phi ptr [ undef, %bb.a ], [ %i.j, %_RNvMs1_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i ]
  %.sroa.413.0 = phi i64 [ undef, %bb.a ], [ %i.h, %_RNvMs1_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i ]
  %.sink.i = phi i64 [ 0, %bb.a ], [ 16, %_RNvMs1_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i ]
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.l = icmp sgt <16 x i8> %.val3.i, splat (i8 -1)
  %i.m = getelementptr i8, ptr %i.a, i64 %i.c
  %i.n = getelementptr i8, ptr %i.m, i64 1
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.a, ptr %i.o, align 8
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.k, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.n, ptr %.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <16 x i1> %i.l, ptr %.sroa.0.sroa.6.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.e, ptr %.sroa.4.0..sroa_idx, align 8
  store i64 %.sink.i, ptr %0, align 8
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.413.0, ptr %.sroa.413.0..sroa_idx, align 8
  %.sroa.514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.514.0, ptr %.sroa.514.0..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvXsh_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs6oosyzwIepl_6ide_db6search13FileReferenceEEENtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect12IntoIterator9into_iterB2q_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) initializes((0, 50), (56, 64)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #16 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !4 ; 4 uses
  %.val3.i = load <16 x i8>, ptr %i.a, align 16, !noalias !4903
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load i64, ptr %i.d, align 8, !noundef !4
  %i.f = icmp eq i64 %i.c, 0
  br i1 %i.f, label %_RNvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs6oosyzwIepl_6ide_db6search13FileReferenceEEE15into_allocationB2q_.exit, label %_RNvMs1_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i

_RNvMs1_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i: ; preds = %bb.a
  %i.g = shl i64 %i.c, 5
  %2 = mul i64 %i.c, 33
  %i.h = add i64 %2, 49
  %i.i = sub nuw nsw i64 -32, %i.g
  %i.j = getelementptr inbounds i8, ptr %i.a, i64 %i.i
  br label %_RNvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs6oosyzwIepl_6ide_db6search13FileReferenceEEE15into_allocationB2q_.exit

_RNvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtCs6oosyzwIepl_6ide_db6search13FileReferenceEEE15into_allocationB2q_.exit: ; preds = %_RNvMs1_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i, %bb.a
  %.sroa.511.0 = phi ptr [ undef, %bb.a ], [ %i.j, %_RNvMs1_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i ]
  %.sroa.410.0 = phi i64 [ undef, %bb.a ], [ %i.h, %_RNvMs1_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i ]
  %.sink.i = phi i64 [ 0, %bb.a ], [ 16, %_RNvMs1_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i ]
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.l = icmp sgt <16 x i8> %.val3.i, splat (i8 -1)
  %i.m = getelementptr i8, ptr %i.a, i64 %i.c
  %i.n = getelementptr i8, ptr %i.m, i64 1
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.a, ptr %i.o, align 8
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.k, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.n, ptr %.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <16 x i1> %i.l, ptr %.sroa.0.sroa.6.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.e, ptr %.sroa.4.0..sroa_idx, align 8
  store i64 %.sink.i, ptr %0, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.410.0, ptr %.sroa.410.0..sroa_idx, align 8
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.511.0, ptr %.sroa.511.0..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RNvXsh_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdINtNtCshzWfHUSfYae_4core6option6OptionNtNtCsuAhG64lL82_9text_size5range9TextRangeEEENtNtNtNtB1U_4iter6traits7collect12IntoIterator9into_iterCs6oosyzwIepl_6ide_db(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) initializes((0, 50), (56, 64)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #16 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !4 ; 4 uses
  %.val3.i = load <16 x i8>, ptr %i.a, align 16, !noalias !4906
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load i64, ptr %i.d, align 8, !noundef !4
  %i.f = icmp eq i64 %i.c, 0
  br i1 %i.f, label %_RNvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdINtNtCshzWfHUSfYae_4core6option6OptionNtNtCsuAhG64lL82_9text_size5range9TextRangeEEE15into_allocationCs6oosyzwIepl_6ide_db.exit, label %_RNvMs1_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i

_RNvMs1_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i: ; preds = %bb.a
  %i.g = mul i64 %i.c, 20
  %i.h = and i64 %i.g, -16                        ; 2 uses
  %i.i = add i64 %i.c, 49
  %i.j = add i64 %i.i, %i.h
  %i.k = sub i64 -32, %i.h
  %i.l = getelementptr inbounds i8, ptr %i.a, i64 %i.k
  br label %_RNvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdINtNtCshzWfHUSfYae_4core6option6OptionNtNtCsuAhG64lL82_9text_size5range9TextRangeEEE15into_allocationCs6oosyzwIepl_6ide_db.exit

_RNvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdINtNtCshzWfHUSfYae_4core6option6OptionNtNtCsuAhG64lL82_9text_size5range9TextRangeEEE15into_allocationCs6oosyzwIepl_6ide_db.exit: ; preds = %_RNvMs1_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i, %bb.a
  %.sroa.514.0 = phi ptr [ undef, %bb.a ], [ %i.l, %_RNvMs1_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i ]
  %.sroa.413.0 = phi i64 [ undef, %bb.a ], [ %i.j, %_RNvMs1_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i ]
  %.sink.i = phi i64 [ 0, %bb.a ], [ 16, %_RNvMs1_NtCsfjX3T6UU9IB_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.n = icmp sgt <16 x i8> %.val3.i, splat (i8 -1)
  %i.o = getelementptr i8, ptr %i.a, i64 %i.c
  %i.p = getelementptr i8, ptr %i.o, i64 1
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.a, ptr %i.q, align 8
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.m, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.p, ptr %.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <16 x i1> %i.n, ptr %.sroa.0.sroa.6.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.e, ptr %.sroa.4.0..sroa_idx, align 8
  store i64 %.sink.i, ptr %0, align 8
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.413.0, ptr %.sroa.413.0..sroa_idx, align 8
  %.sroa.514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.514.0, ptr %.sroa.514.0..sroa_idx, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvYNCINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtBb_8RawTableTINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtB10_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1P_11SyntaxTokenB2b_EEBV_EE14reserve_rehashNCINvNtBd_3map11make_hasherBV_BV_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE0Es_0INtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceTOhEE9call_onceCs6oosyzwIepl_6ide_db(ptr nofree noundef readonly captures(none) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4909)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val5.i.i = load ptr, ptr %i.a, align 8, !alias.scope !4909, !nonnull !4, !noundef !4 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.val5.i.i, i64 48 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !noalias !4909, !noundef !4
  %i.d = add i32 %i.c, -1                         ; 2 uses
  store i32 %i.d, ptr %i.b, align 4, !noalias !4909
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs6oosyzwIepl_6ide_db.exit.sink.split.i.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBG_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1v_11SyntaxTokenB1Q_EEECs6oosyzwIepl_6ide_db.exit.i.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs6oosyzwIepl_6ide_db.exit.sink.split.i.i.i: ; preds = %bb.a
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val5.i.i) #37
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBG_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1v_11SyntaxTokenB1Q_EEECs6oosyzwIepl_6ide_db.exit.i.i unwind label %bb.b, !noalias !4909

bb.b:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs6oosyzwIepl_6ide_db.exit.sink.split.i.i.i
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val3.i.i = load ptr, ptr %i.g, align 8, !alias.scope !4909, !nonnull !4, !noundef !4 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.val3.i.i, i64 48 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !noalias !4909, !noundef !4
  %i.j = add i32 %i.i, -1                         ; 2 uses
  store i32 %i.j, ptr %i.h, align 4, !noalias !4909
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs6oosyzwIepl_6ide_db.exit.sink.split.i6.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBG_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1v_11SyntaxTokenB1Q_EEECs6oosyzwIepl_6ide_db.exit8.i.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs6oosyzwIepl_6ide_db.exit.sink.split.i6.i.i: ; preds = %bb.b
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val3.i.i) #37
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBG_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1v_11SyntaxTokenB1Q_EEECs6oosyzwIepl_6ide_db.exit8.i.i unwind label %bb.c, !noalias !4909

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBG_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1v_11SyntaxTokenB1Q_EEECs6oosyzwIepl_6ide_db.exit.i.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs6oosyzwIepl_6ide_db.exit.sink.split.i.i.i, %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1.i.i = load ptr, ptr %i.l, align 8, !alias.scope !4909, !nonnull !4, !noundef !4 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.val1.i.i, i64 48 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !noalias !4909, !noundef !4
  %i.o = add i32 %i.n, -1                         ; 2 uses
  store i32 %i.o, ptr %i.m, align 4, !noalias !4909
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs6oosyzwIepl_6ide_db.exit.sink.split.i9.i.i, label %_RNCINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB8_8RawTableTINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBX_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1M_11SyntaxTokenB27_EEBS_EE14reserve_rehashNCINvNtBa_3map11make_hasherBS_BS_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE0Es_0Cs6oosyzwIepl_6ide_db.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs6oosyzwIepl_6ide_db.exit.sink.split.i9.i.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBG_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1v_11SyntaxTokenB1Q_EEECs6oosyzwIepl_6ide_db.exit.i.i
  tail call void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val1.i.i) #37, !noalias !4909
  br label %_RNCINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB8_8RawTableTINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBX_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1M_11SyntaxTokenB27_EEBS_EE14reserve_rehashNCINvNtBa_3map11make_hasherBS_BS_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE0Es_0Cs6oosyzwIepl_6ide_db.exit

bb.c:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs6oosyzwIepl_6ide_db.exit.sink.split.i6.i.i
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #35, !noalias !4909
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBG_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1v_11SyntaxTokenB1Q_EEECs6oosyzwIepl_6ide_db.exit8.i.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs6oosyzwIepl_6ide_db.exit.sink.split.i6.i.i, %bb.b
  resume { ptr, i32 } %i.f

_RNCINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB8_8RawTableTINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBX_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1M_11SyntaxTokenB27_EEBS_EE14reserve_rehashNCINvNtBa_3map11make_hasherBS_BS_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE0Es_0Cs6oosyzwIepl_6ide_db.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan13utility_types11NodeOrTokenINtNtBG_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtB1v_11SyntaxTokenB1Q_EEECs6oosyzwIepl_6ide_db.exit.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEECs6oosyzwIepl_6ide_db.exit.sink.split.i9.i.i
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvYNCINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtBb_8RawTableTNtCs42xZ1oUXfIG_8smol_str7SmolStrjEE14reserve_rehashNCINvNtBd_3map11make_hasherBV_jNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE0Es_0INtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceTOhEE9call_onceCs6oosyzwIepl_6ide_db(ptr noundef %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4920)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4921)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4922)
  %i.a = load i8, ptr %0, align 8, !range !25, !alias.scope !4923, !noundef !4
  %switch.i.i.i.i = icmp samesign ult i8 %i.a, 25
  br i1 %switch.i.i.i.i, label %_RNCINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB8_8RawTableTNtCs42xZ1oUXfIG_8smol_str7SmolStrjEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_jNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE0Es_0Cs6oosyzwIepl_6ide_db.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4924)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4925)
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !4926, !nonnull !4, !noundef !4
  %i.d = atomicrmw sub ptr %i.c, i64 1 release, align 8, !noalias !4926
  %i.e = icmp eq i64 %i.d, 1
  br i1 %i.e, label %bb.c, label %_RNCINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB8_8RawTableTNtCs42xZ1oUXfIG_8smol_str7SmolStrjEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_jNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE0Es_0Cs6oosyzwIepl_6ide_db.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  tail call void @_RNvMsn_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArceE9drop_slowCsjJXvCMGntp8_6syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b) #37
  br label %_RNCINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB8_8RawTableTNtCs42xZ1oUXfIG_8smol_str7SmolStrjEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_jNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE0Es_0Cs6oosyzwIepl_6ide_db.exit

_RNCINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB8_8RawTableTNtCs42xZ1oUXfIG_8smol_str7SmolStrjEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_jNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE0Es_0Cs6oosyzwIepl_6ide_db.exit: ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvYNCINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtBb_8RawTableTNtCs42xZ1oUXfIG_8smol_str7SmolStruEE14reserve_rehashNCINvNtBd_3map11make_hasherBV_uNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE0Es_0INtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceTOhEE9call_onceCs6oosyzwIepl_6ide_db(ptr noundef %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4937)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4938)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4939)
  %i.a = load i8, ptr %0, align 8, !range !25, !alias.scope !4940, !noundef !4
  %switch.i.i.i.i = icmp samesign ult i8 %i.a, 25
  br i1 %switch.i.i.i.i, label %_RNCINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB8_8RawTableTNtCs42xZ1oUXfIG_8smol_str7SmolStruEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE0Es_0Cs6oosyzwIepl_6ide_db.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4941)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4942)
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !4943, !nonnull !4, !noundef !4
  %i.d = atomicrmw sub ptr %i.c, i64 1 release, align 8, !noalias !4943
  %i.e = icmp eq i64 %i.d, 1
  br i1 %i.e, label %bb.c, label %_RNCINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB8_8RawTableTNtCs42xZ1oUXfIG_8smol_str7SmolStruEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE0Es_0Cs6oosyzwIepl_6ide_db.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  tail call void @_RNvMsn_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArceE9drop_slowCsjJXvCMGntp8_6syntax(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b) #37
  br label %_RNCINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB8_8RawTableTNtCs42xZ1oUXfIG_8smol_str7SmolStruEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE0Es_0Cs6oosyzwIepl_6ide_db.exit

_RNCINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB8_8RawTableTNtCs42xZ1oUXfIG_8smol_str7SmolStruEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE0Es_0Cs6oosyzwIepl_6ide_db.exit: ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvYNCINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtBb_8RawTableTNtCs4sl5YdnrCxp_3vfs6FileIdTNtNtCs6oosyzwIepl_6ide_db9text_edit8TextEditINtNtCshzWfHUSfYae_4core6option6OptionNtNtB1r_13source_change11SnippetEditEEEE14reserve_rehashNCINvNtBd_3map11make_hasherBV_B1m_INtNtB2a_4hash18BuildHasherDefaultINtCsdHhuG8sbGmp_13nohash_hasher12NoHashHasherBV_EEE0Es_0INtNtNtB2a_3ops8function6FnOnceTOhEE9call_onceB1r_(ptr noundef nonnull %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueTNtCs4sl5YdnrCxp_3vfs6FileIdTNtNtCs6oosyzwIepl_6ide_db9text_edit8TextEditINtNtB4_6option6OptionNtNtB18_13source_change11SnippetEditEEEEB18_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %0)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvYNCINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtBb_8RawTableTNtCs8Xq8PKFYOms_3hir10ConstParamINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEE14reserve_rehashNCINvNtBd_3map11make_hasherBV_B1r_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE0Es_0INtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceTOhEE9call_onceCs6oosyzwIepl_6ide_db(ptr nofree noundef readonly captures(none) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 16
  %.val = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 48 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !noundef !4
  %i.d = add i32 %i.c, -1                         ; 2 uses
  store i32 %i.d, ptr %i.b, align 4
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.b, label %_RNCINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB8_8RawTableTNtCs8Xq8PKFYOms_3hir10ConstParamINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1o_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE0Es_0Cs6oosyzwIepl_6ide_db.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val) #37
  br label %_RNCINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB8_8RawTableTNtCs8Xq8PKFYOms_3hir10ConstParamINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1o_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE0Es_0Cs6oosyzwIepl_6ide_db.exit

_RNCINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB8_8RawTableTNtCs8Xq8PKFYOms_3hir10ConstParamINtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1o_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE0Es_0Cs6oosyzwIepl_6ide_db.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvYNCINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtBb_8RawTableTNtCs8Xq8PKFYOms_3hir8ItemInNsINtNtCshzWfHUSfYae_4core6option6OptionNtNtCs33K2ylI4knu_10hir_expand8mod_path7ModPathEEE14reserve_rehashNCINvNtBd_3map11make_hasherBV_B1o_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE0Es_0INtNtNtB1t_3ops8function6FnOnceTOhEE9call_onceCs6oosyzwIepl_6ide_db(ptr noundef %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i8, ptr %i.a, align 8, !range !26, !alias.scope !4948, !noundef !4
  %i.c = icmp eq i8 %i.b, -1
  br i1 %i.c, label %_RNCINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB8_8RawTableTNtCs8Xq8PKFYOms_3hir8ItemInNsINtNtCshzWfHUSfYae_4core6option6OptionNtNtCs33K2ylI4knu_10hir_expand8mod_path7ModPathEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1l_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE0Es_0Cs6oosyzwIepl_6ide_db.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_RNvXsw_Csjpcu9PwIgok_8smallvecINtB5_8SmallVecANtNtCs33K2ylI4knu_10hir_expand4name4Namej1_ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6oosyzwIepl_6ide_db(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.d)
  br label %_RNCINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB8_8RawTableTNtCs8Xq8PKFYOms_3hir8ItemInNsINtNtCshzWfHUSfYae_4core6option6OptionNtNtCs33K2ylI4knu_10hir_expand8mod_path7ModPathEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1l_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE0Es_0Cs6oosyzwIepl_6ide_db.exit

_RNCINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB8_8RawTableTNtCs8Xq8PKFYOms_3hir8ItemInNsINtNtCshzWfHUSfYae_4core6option6OptionNtNtCs33K2ylI4knu_10hir_expand8mod_path7ModPathEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1l_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE0Es_0Cs6oosyzwIepl_6ide_db.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvYNCINvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtBb_8RawTableTNtCs8Xq8PKFYOms_3hir9TypeParamNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4TypeEE14reserve_rehashNCINvNtBd_3map11make_hasherBV_B1p_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE0Es_0INtNtNtCshzWfHUSfYae_4core3ops8function6FnOnceTOhEE9call_onceCs6oosyzwIepl_6ide_db(ptr nofree noundef readonly captures(none) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.val1, i64 48 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !noundef !4
  %i.d = add i32 %i.c, -1                         ; 2 uses
  store i32 %i.d, ptr %i.b, align 4
  %i.e = icmp eq i32 %i.d, 0
end_hunk_0
begin_hunk_1_@_RINvYNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherNtNtCshzWfHUSfYae_4core4hash11BuildHasher8hash_oneRNtCs8Xq8PKFYOms_3hir8ItemInNsECs6oosyzwIepl_6ide_db

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvYNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherNtNtCshzWfHUSfYae_4core4hash11BuildHasher8hash_oneRNtCs8Xq8PKFYOms_3hir8ScopeDefECs6oosyzwIepl_6ide_db(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvYNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherNtNtCshzWfHUSfYae_4core4hash11BuildHasher8hash_oneRNtCs8Xq8PKFYOms_3hir9AssocItemECs6oosyzwIepl_6ide_db(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(12)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvYNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherNtNtCshzWfHUSfYae_4core4hash11BuildHasher8hash_oneRNtCs8Xq8PKFYOms_3hir9TypeParamECs6oosyzwIepl_6ide_db(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvYNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherNtNtCshzWfHUSfYae_4core4hash11BuildHasher8hash_oneRNtNtCs6oosyzwIepl_6ide_db13source_change18ChangeAnnotationIdEB1D_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvYNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherNtNtCshzWfHUSfYae_4core4hash11BuildHasher8hash_oneRNtNtCsbSS6DM8SDEO_5alloc6string6StringECs6oosyzwIepl_6ide_db(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvYNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherNtNtCshzWfHUSfYae_4core4hash11BuildHasher8hash_oneRNtNtCsgIpRO4v45SJ_7base_db5input5CrateECs6oosyzwIepl_6ide_db(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvYNtNtNtCscAsMj0W7j8b_3std4hash6random11RandomStateNtNtCshzWfHUSfYae_4core4hash11BuildHasher8hash_oneRTNtCs8Xq8PKFYOms_3hir6ModulebEECs6oosyzwIepl_6ide_db(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(12)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvYNtNtNtCscAsMj0W7j8b_3std4hash6random11RandomStateNtNtCshzWfHUSfYae_4core4hash11BuildHasher8hash_oneRTNtNtCsgIpRO4v45SJ_7base_db5input5CrateINtNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir11fast_reject14SimplifiedTypeNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver6def_id11SolverDefIdEEECs6oosyzwIepl_6ide_db(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXCsfjX3T6UU9IB_9hashbrownNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdINtB2_10EquivalentBq_E10equivalentCs6oosyzwIepl_6ide_db(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMs_NtCs6oosyzwIepl_6ide_db13source_changeNtB5_12SourceChange30insert_source_and_snippet_editNtCs4sl5YdnrCxp_3vfs6FileIdEB7_(ptr noalias nofree noundef align 8 dereferenceable(96), i32 noundef, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB5_7HashMapNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdINtNtCshzWfHUSfYae_4core6option6OptionNtNtCsuAhG64lL82_9text_size5range9TextRangeENtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE6insertCs6oosyzwIepl_6ide_db(ptr dead_on_unwind noalias nofree noundef writable sret([12 x i8]) align 4 captures(none) dereferenceable(12), ptr noalias nofree noundef align 8 dereferenceable(32), i32 noundef range(i32 1, 0), i32 noundef, ptr noalias nofree noundef readonly align 4 captures(none) dead_on_return dereferenceable(12)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCsd9Lm8bEdjjY_5salsa5zalsa13ZalsaDatabase6zalsasB4_(ptr noundef nonnull align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RNvXs7_NtCsd9Lm8bEdjjY_5salsa7storageNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtB7_5zalsa13ZalsaDatabase9zalsa_mutBB_(ptr noalias nofree noundef align 8 dereferenceable(120)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCsd9Lm8bEdjjY_5salsa8database8Database20trigger_lru_evictionB4_(ptr noalias nofree noundef align 8 dereferenceable(120)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCsd9Lm8bEdjjY_5salsa8database8Database15synthetic_writeB4_(ptr noalias nofree noundef align 8 dereferenceable(120), i8 noundef range(i8 0, 4)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCsd9Lm8bEdjjY_5salsa8database8Database20trigger_cancellationB4_(ptr noalias nofree noundef align 8 dereferenceable(120)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull ptr @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCsd9Lm8bEdjjY_5salsa8database8Database18cancellation_tokenB4_(ptr noundef nonnull align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCsd9Lm8bEdjjY_5salsa8database8Database21report_untracked_readB4_(ptr noundef nonnull align 8) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCsd9Lm8bEdjjY_5salsa8database8Database21ingredient_debug_nameB4_(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef nonnull align 8, i32 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvYNtCs6oosyzwIepl_6ide_db12RootDatabaseNtNtCsd9Lm8bEdjjY_5salsa8database8Database28unwind_if_revision_cancelledB4_(ptr noundef nonnull align 8) unnamed_addr #1

; Function Attrs: cold noinline nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvXsb_Cs6oosyzwIepl_6ide_dbNtB5_12RootDatabaseNtNtCsd9Lm8bEdjjY_5salsa8database8Database25zalsa_register_downcaster(ptr noundef nonnull align 8) unnamed_addr #2

; Function Attrs: nonlazybind uwtable
declare hidden noundef i32 @_RINvMs9_NvNtCsgIpRO4v45SJ_7base_db17editioned_file_id1__NtB8_15EditionedFileId5fieldDNtNtCsd9Lm8bEdjjY_5salsa8database8DatabaseEL_ECs6oosyzwIepl_6ide_db(i32 noundef range(i32 1, 0), i32 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(136)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef i32 @_RNvMs4_Csdovh4xi6v3I_4spanNtB5_15EditionedFileId7file_id(i32 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtCs6oosyzwIepl_6ide_db6rename27source_edit_from_references(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noundef nonnull align 8, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 230584300921369396), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), i8 noundef range(i8 0, 4)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #4

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #27

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCshzWfHUSfYae_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #23

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvMs0_NtNtNtCslLTI5cSnp8O_6memchr4arch3all6twowayNtB5_5Shift7forward(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), i64 noundef, i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RNvMs0_NtCs50pZefIA5Ye_8triomphe3arcINtB5_8ArcInnerINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEE14offset_of_dataCs6oosyzwIepl_6ide_db(ptr noundef) unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #28

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs4_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecINtNtCsjsNuU4yXw23_3fst3raw11StreamStateINtNtBR_15inner_automaton15StartsWithStateNtB1t_3StrEEE8grow_oneCsileJQcQObtj_7hir_def(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #7

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs4_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecINtNtCsjsNuU4yXw23_3fst3raw11StreamStateINtNtCshzWfHUSfYae_4core6option6OptionjEEE8grow_oneCsileJQcQObtj_7hir_def(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #7

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs4_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecINtNtCsjsNuU4yXw23_3fst3raw11StreamStatejEE8grow_oneCs4sl5YdnrCxp_3vfs(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #7

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs4_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #7

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RINvNtCscAsMj0W7j8b_3std9panicking11begin_panicReEB4_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #18

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.ctlz.i16(i16, i1 immarg) #21

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs6oosyzwIepl_6ide_db(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef, i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #1

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #22

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNvNtCshzWfHUSfYae_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs6oosyzwIepl_6ide_db(ptr noundef, ptr noundef, i64 noundef range(i64 1, 0)) unnamed_addr #1

; Function Attrs: cold nonlazybind uwtable
declare noundef i128 @_RNvNtNtCs5LohdNWbVIt_10std_detect6detect5cache21detect_and_initialize() unnamed_addr #29

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull) unnamed_addr #7

; Function Attrs: cold nonlazybind uwtable
declare void @_RNvMs2_NtCs39E2wp1vf7X_6intern6symbolNtB5_6Symbol9drop_slow(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #29

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCs6oosyzwIepl_6ide_db(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #1

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArceE9drop_slowCsjJXvCMGntp8_6syntax(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #7

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #30

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEE10drop_innerCs6oosyzwIepl_6ide_db(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcNtCsgIpRO4v45SJ_7base_db5FilesE10drop_innerCs6oosyzwIepl_6ide_db(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcNtNtCs33K2ylI4knu_10hir_expand10proc_macro15CrateProcMacrosE10drop_innerCs6oosyzwIepl_6ide_db(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcNtNtCsgIpRO4v45SJ_7base_db5input9CratesMapE10drop_innerCs6oosyzwIepl_6ide_db(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef range(i8 -2, 2) i8 @_RNvXsd_Cs42xZ1oUXfIG_8smol_strNtB5_7SmolStrNtNtCshzWfHUSfYae_4core3cmp10PartialOrd11partial_cmp(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef range(i8 0, 3) i8 @_RINvNtCshzWfHUSfYae_4core3cmp21default_chaining_implNtNtCsgIpRO4v45SJ_7base_db17editioned_file_id15EditionedFileIdBO_NvMB2_NtB2_8Ordering5is_ltECs6oosyzwIepl_6ide_db(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef range(i8 0, 3) i8 @_RINvNtCshzWfHUSfYae_4core3cmp21default_chaining_implNtNtCsuAhG64lL82_9text_size4size8TextSizeBO_NvMB2_NtB2_8Ordering5is_ltECs6oosyzwIepl_6ide_db(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef range(i8 -1, 2) i8 @_RNvNtNtCs6oosyzwIepl_6ide_db7imports13merge_imports12use_tree_cmp(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef range(i8 -1, 2) i8 @_RNvNtNtCs6oosyzwIepl_6ide_db7imports13merge_imports23use_tree_cmp_bin_search(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #28

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #31

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #28

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #28

attributes #0 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { cold noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" "target-features"="+sse,+sse2,+avx,+avx2,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+crc32,+ssse3" }
attributes #9 = { nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { alwaysinline mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { nofree norecurse nosync nounwind nonlazybind memory(readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #18 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #20 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #21 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #23 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #25 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #26 = { mustprogress nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #27 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCsiZ68L5R9VjM_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #28 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #29 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #30 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #31 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #32 = { inlinehint }
attributes #33 = { noinline noreturn }
attributes #34 = { cold }
attributes #35 = { cold noreturn nounwind }
attributes #36 = { nounwind }
attributes #37 = { noinline }
attributes #38 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"rustc version 1.99.0-nightly (73dc9167f 2026-08-01)"}
!4 = !{}
!5 = !{!"llvm.loop.unroll.disable"}
!6 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!7 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!8 = !{i8 0, i8 2}
!9 = !{i32 1, i32 0}
!10 = !{!"branch_weights", i32 1, i32 1999}
!11 = !{!"branch_weights", i32 0, i32 1}
!12 = !{!"branch_weights", !"expected", i32 0, i32 -2147483648}
!13 = !{!"branch_weights", !"expected", i32 2146946, i32 2145336702}
!14 = !{!"branch_weights", i32 2002, i32 2000}
!15 = !{i64 8}
!16 = !{i64 0, i64 2}
!17 = !{i64 0, i64 3}
!18 = !{i64 0, i64 -9223372036854775808}
!19 = !{i8 0, i8 4}
!20 = !{!"branch_weights", i32 1, i32 2000, i32 2000, i32 2000, i32 1}
!21 = !{!"branch_weights", i32 4000000, i32 4001}
!22 = !{!"branch_weights", i32 4001, i32 4000000}
!23 = !{i64 -1, i64 -9223372036854775808}
!24 = !{i64 0, i64 -9223372036854775807}
!25 = !{i8 0, i8 26}
!26 = !{i8 -1, i8 5}
!27 = distinct !{!27, !"_RNvMNtNtNtCslLTI5cSnp8O_6memchr4arch3all9rabinkarpNtB2_6Finder3new"}
!28 = distinct !{!28, !27, !"_RNvMNtNtNtCslLTI5cSnp8O_6memchr4arch3all9rabinkarpNtB2_6Finder3new: argument 0"}
!29 = distinct !{!29, !49}
!30 = distinct !{!30, !5}
!31 = distinct !{!31, !"_RINvMs_NtNtNtCslLTI5cSnp8O_6memchr4arch3all10packedpairNtB5_4Pair11with_rankerRNtB5_20DefaultFrequencyRankECs6oosyzwIepl_6ide_db"}
!32 = distinct !{!32, !31, !"_RINvMs_NtNtNtCslLTI5cSnp8O_6memchr4arch3all10packedpairNtB5_4Pair11with_rankerRNtB5_20DefaultFrequencyRankECs6oosyzwIepl_6ide_db: argument 1"}
!33 = distinct !{!33, !31, !"_RINvMs_NtNtNtCslLTI5cSnp8O_6memchr4arch3all10packedpairNtB5_4Pair11with_rankerRNtB5_20DefaultFrequencyRankECs6oosyzwIepl_6ide_db: argument 0"}
!34 = distinct !{!34, !"_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6oosyzwIepl_6ide_db"}
!35 = distinct !{!35, !34, !"_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCs6oosyzwIepl_6ide_db: argument 0"}
!36 = distinct !{!36, !"_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs6oosyzwIepl_6ide_db"}
!37 = distinct !{!37, !36, !"_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs6oosyzwIepl_6ide_db: argument 0"}
!38 = distinct !{!38, !"_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResulthNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs6oosyzwIepl_6ide_db"}
!39 = distinct !{!39, !38, !"_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResulthNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs6oosyzwIepl_6ide_db: argument 0"}
!40 = distinct !{!40, !"_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResulthNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs6oosyzwIepl_6ide_db"}
!41 = distinct !{!41, !40, !"_RNvMNtCshzWfHUSfYae_4core6resultINtB2_6ResulthNtNtNtB4_3num5error15TryFromIntErrorE6unwrapCs6oosyzwIepl_6ide_db: argument 0"}
!42 = distinct !{!42, !"_RNvMNtNtNtNtCslLTI5cSnp8O_6memchr4arch6x86_644sse210packedpairNtB2_6Finder14with_pair_impl"}
!43 = distinct !{!43, !42, !"_RNvMNtNtNtNtCslLTI5cSnp8O_6memchr4arch6x86_644sse210packedpairNtB2_6Finder14with_pair_impl: argument 1"}
!44 = distinct !{!44, !"_RNvMNtNtNtCslLTI5cSnp8O_6memchr4arch7generic10packedpairINtB2_6FinderNtNtNtCshzWfHUSfYae_4core9core_arch3x867___m128iE3newCs6oosyzwIepl_6ide_db"}
!45 = distinct !{!45, !44, !"_RNvMNtNtNtCslLTI5cSnp8O_6memchr4arch7generic10packedpairINtB2_6FinderNtNtNtCshzWfHUSfYae_4core9core_arch3x867___m128iE3newCs6oosyzwIepl_6ide_db: argument 1"}
!46 = distinct !{!46, !42, !"_RNvMNtNtNtNtCslLTI5cSnp8O_6memchr4arch6x86_644sse210packedpairNtB2_6Finder14with_pair_impl: argument 0"}
!47 = distinct !{!47, !44, !"_RNvMNtNtNtCslLTI5cSnp8O_6memchr4arch7generic10packedpairINtB2_6FinderNtNtNtCshzWfHUSfYae_4core9core_arch3x867___m128iE3newCs6oosyzwIepl_6ide_db: argument 0"}
!48 = !{!28}
!49 = !{!"llvm.loop.peeled.count", i32 1}
!50 = !{!33, !32}
!51 = !{!33}
!52 = !{!37, !35}
!53 = !{!35}
!54 = !{!39, !33, !32}
!55 = !{!41, !33, !32}
!56 = !{!43}
!57 = !{!45}
!58 = !{!47, !45, !46, !43}
!59 = !{!45, !43}
!60 = !{!47, !46}
!61 = distinct !{!61, !"_RINvMsa_NtCsaH4Z5sDJ4bD_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCsdJdTcfBK2IX_14allocator_api26stable5alloc6global6GlobalECs6oosyzwIepl_6ide_db"}
!62 = distinct !{!62, !61, !"_RINvMsa_NtCsaH4Z5sDJ4bD_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCsdJdTcfBK2IX_14allocator_api26stable5alloc6global6GlobalECs6oosyzwIepl_6ide_db: argument 0"}
!63 = distinct !{!63, !61, !"_RINvMsa_NtCsaH4Z5sDJ4bD_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCsdJdTcfBK2IX_14allocator_api26stable5alloc6global6GlobalECs6oosyzwIepl_6ide_db: argument 2"}
!64 = distinct !{!64, !61, !"_RINvMsa_NtCsaH4Z5sDJ4bD_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCsdJdTcfBK2IX_14allocator_api26stable5alloc6global6GlobalECs6oosyzwIepl_6ide_db: argument 1"}
!65 = distinct !{!65, !"_RINvMsa_NtCsaH4Z5sDJ4bD_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtNtNtCsdJdTcfBK2IX_14allocator_api26stable5alloc6global6GlobalECs6oosyzwIepl_6ide_db"}
!66 = distinct !{!66, !65, !"_RINvMsa_NtCsaH4Z5sDJ4bD_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtNtNtCsdJdTcfBK2IX_14allocator_api26stable5alloc6global6GlobalECs6oosyzwIepl_6ide_db: argument 0"}
!67 = distinct !{!67, !65, !"_RINvMsa_NtCsaH4Z5sDJ4bD_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtNtNtCsdJdTcfBK2IX_14allocator_api26stable5alloc6global6GlobalECs6oosyzwIepl_6ide_db: argument 2"}
!68 = distinct !{!68, !65, !"_RINvMsa_NtCsaH4Z5sDJ4bD_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtNtNtCsdJdTcfBK2IX_14allocator_api26stable5alloc6global6GlobalECs6oosyzwIepl_6ide_db: argument 1"}
!69 = distinct !{!69, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsaH4Z5sDJ4bD_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtNtCsdJdTcfBK2IX_14allocator_api26stable5alloc6global6GlobalE0EECs6oosyzwIepl_6ide_db"}
!70 = distinct !{!70, !69, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsaH4Z5sDJ4bD_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtNtCsdJdTcfBK2IX_14allocator_api26stable5alloc6global6GlobalE0EECs6oosyzwIepl_6ide_db: argument 0"}
!71 = distinct !{!71, !"_RNvXs1_NtCsaH4Z5sDJ4bD_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtNtNtCsdJdTcfBK2IX_14allocator_api26stable5alloc6global6GlobalE0ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6oosyzwIepl_6ide_db"}
!72 = distinct !{!72, !71, !"_RNvXs1_NtCsaH4Z5sDJ4bD_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtNtNtCsdJdTcfBK2IX_14allocator_api26stable5alloc6global6GlobalE0ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6oosyzwIepl_6ide_db: argument 0"}
!73 = distinct !{!73, !"_RNCINvMsa_NtCsaH4Z5sDJ4bD_9hashbrown3rawNtB8_13RawTableInner14prepare_resizeNtNtNtNtCsdJdTcfBK2IX_14allocator_api26stable5alloc6global6GlobalE0Cs6oosyzwIepl_6ide_db"}
!74 = distinct !{!74, !73, !"_RNCINvMsa_NtCsaH4Z5sDJ4bD_9hashbrown3rawNtB8_13RawTableInner14prepare_resizeNtNtNtNtCsdJdTcfBK2IX_14allocator_api26stable5alloc6global6GlobalE0Cs6oosyzwIepl_6ide_db: argument 0"}
!75 = distinct !{!75, !"_RNCINvMs6_NtCsaH4Z5sDJ4bD_9hashbrown3rawINtB8_8RawTableNtNtCsd9Lm8bEdjjY_5salsa2id2IdE14reserve_rehashNCINvMs5_NtBV_8internedINtB1L_14IngredientImplNtCsgIpRO4v45SJ_7base_db20InternedSourceRootIdE9intern_idINtNvB2o_s4_1__9StructKeyNtNtB2o_5input12SourceRootIdENCINvMs9_B3k_B2m_3newDNtNtCs8K4cjrcxBsw_6hir_ty2db11HirDatabaseEL_B3G_E0Es1_0E0Cs6oosyzwIepl_6ide_db"}
!76 = distinct !{!76, !75, !"_RNCINvMs6_NtCsaH4Z5sDJ4bD_9hashbrown3rawINtB8_8RawTableNtNtCsd9Lm8bEdjjY_5salsa2id2IdE14reserve_rehashNCINvMs5_NtBV_8internedINtB1L_14IngredientImplNtCsgIpRO4v45SJ_7base_db20InternedSourceRootIdE9intern_idINtNvB2o_s4_1__9StructKeyNtNtB2o_5input12SourceRootIdENCINvMs9_B3k_B2m_3newDNtNtCs8K4cjrcxBsw_6hir_ty2db11HirDatabaseEL_B3G_E0Es1_0E0Cs6oosyzwIepl_6ide_db: argument 1"}
!77 = distinct !{!77, !75, !"_RNCINvMs6_NtCsaH4Z5sDJ4bD_9hashbrown3rawINtB8_8RawTableNtNtCsd9Lm8bEdjjY_5salsa2id2IdE14reserve_rehashNCINvMs5_NtBV_8internedINtB1L_14IngredientImplNtCsgIpRO4v45SJ_7base_db20InternedSourceRootIdE9intern_idINtNvB2o_s4_1__9StructKeyNtNtB2o_5input12SourceRootIdENCINvMs9_B3k_B2m_3newDNtNtCs8K4cjrcxBsw_6hir_ty2db11HirDatabaseEL_B3G_E0Es1_0E0Cs6oosyzwIepl_6ide_db: argument 0"}
!78 = distinct !{!78, !"_RNvNtNtNtCshzWfHUSfYae_4core9core_arch3x864sse215__mm_loadu_si128"}
!79 = distinct !{!79, !78, !"_RNvNtNtNtCshzWfHUSfYae_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!80 = distinct !{!80, !"_RNvMsa_NtCsaH4Z5sDJ4bD_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place"}
!81 = distinct !{!81, !80, !"_RNvMsa_NtCsaH4Z5sDJ4bD_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place: argument 0"}
!82 = distinct !{!82, !80, !"_RNvMsa_NtCsaH4Z5sDJ4bD_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place: argument 1"}
!83 = distinct !{!83, !"_RNCINvMs6_NtCsaH4Z5sDJ4bD_9hashbrown3rawINtB8_8RawTableNtNtCsd9Lm8bEdjjY_5salsa2id2IdE14reserve_rehashNCINvMs5_NtBV_8internedINtB1L_14IngredientImplNtCsgIpRO4v45SJ_7base_db20InternedSourceRootIdE9intern_idINtNvB2o_s4_1__9StructKeyNtNtB2o_5input12SourceRootIdENCINvMs9_B3k_B2m_3newDNtNtCs8K4cjrcxBsw_6hir_ty2db11HirDatabaseEL_B3G_E0Es1_0E0Cs6oosyzwIepl_6ide_db"}
!84 = distinct !{!84, !83, !"_RNCINvMs6_NtCsaH4Z5sDJ4bD_9hashbrown3rawINtB8_8RawTableNtNtCsd9Lm8bEdjjY_5salsa2id2IdE14reserve_rehashNCINvMs5_NtBV_8internedINtB1L_14IngredientImplNtCsgIpRO4v45SJ_7base_db20InternedSourceRootIdE9intern_idINtNvB2o_s4_1__9StructKeyNtNtB2o_5input12SourceRootIdENCINvMs9_B3k_B2m_3newDNtNtCs8K4cjrcxBsw_6hir_ty2db11HirDatabaseEL_B3G_E0Es1_0E0Cs6oosyzwIepl_6ide_db: argument 1"}
!85 = distinct !{!85, !83, !"_RNCINvMs6_NtCsaH4Z5sDJ4bD_9hashbrown3rawINtB8_8RawTableNtNtCsd9Lm8bEdjjY_5salsa2id2IdE14reserve_rehashNCINvMs5_NtBV_8internedINtB1L_14IngredientImplNtCsgIpRO4v45SJ_7base_db20InternedSourceRootIdE9intern_idINtNvB2o_s4_1__9StructKeyNtNtB2o_5input12SourceRootIdENCINvMs9_B3k_B2m_3newDNtNtCs8K4cjrcxBsw_6hir_ty2db11HirDatabaseEL_B3G_E0Es1_0E0Cs6oosyzwIepl_6ide_db: argument 0"}
!86 = distinct !{!86, !"_RNvNtNtNtCshzWfHUSfYae_4core9core_arch3x864sse215__mm_loadu_si128"}
!87 = distinct !{!87, !86, !"_RNvNtNtNtCshzWfHUSfYae_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!88 = !{!62}
!89 = !{!64, !63}
!90 = !{!66}
!91 = !{!66, !68, !67, !62, !64, !63}
!92 = !{!67, !63}
!93 = !{!66, !62}
!94 = !{!68, !67, !64, !63}
!95 = !{!70}
!96 = !{!72}
!97 = !{!72, !70}
!98 = !{!74}
!99 = !{!74, !72, !70}
!100 = !{!74, !72, !70, !67, !63}
!101 = !{!76}
!102 = !{!77, !67, !63}
!103 = !{!77, !76, !67, !63}
!104 = !{!79}
!105 = !{!81}
!106 = !{!81, !82, !64}
!107 = !{!82, !64}
!108 = !{!84}
!109 = !{!85, !82, !64}
!110 = !{!85, !84, !82, !64}
!111 = !{!87}
!112 = !{!62, !64, !63}
!113 = distinct !{!113, !"_RINvMsa_NtCsaH4Z5sDJ4bD_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCsdJdTcfBK2IX_14allocator_api26stable5alloc6global6GlobalECs6oosyzwIepl_6ide_db"}
!114 = distinct !{!114, !113, !"_RINvMsa_NtCsaH4Z5sDJ4bD_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCsdJdTcfBK2IX_14allocator_api26stable5alloc6global6GlobalECs6oosyzwIepl_6ide_db: argument 0"}
!115 = distinct !{!115, !113, !"_RINvMsa_NtCsaH4Z5sDJ4bD_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCsdJdTcfBK2IX_14allocator_api26stable5alloc6global6GlobalECs6oosyzwIepl_6ide_db: argument 2"}
!116 = distinct !{!116, !113, !"_RINvMsa_NtCsaH4Z5sDJ4bD_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCsdJdTcfBK2IX_14allocator_api26stable5alloc6global6GlobalECs6oosyzwIepl_6ide_db: argument 1"}
!117 = distinct !{!117, !"_RINvMsa_NtCsaH4Z5sDJ4bD_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtNtNtCsdJdTcfBK2IX_14allocator_api26stable5alloc6global6GlobalECs6oosyzwIepl_6ide_db"}
!118 = distinct !{!118, !117, !"_RINvMsa_NtCsaH4Z5sDJ4bD_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtNtNtCsdJdTcfBK2IX_14allocator_api26stable5alloc6global6GlobalECs6oosyzwIepl_6ide_db: argument 0"}
!119 = distinct !{!119, !117, !"_RINvMsa_NtCsaH4Z5sDJ4bD_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtNtNtCsdJdTcfBK2IX_14allocator_api26stable5alloc6global6GlobalECs6oosyzwIepl_6ide_db: argument 2"}
!120 = distinct !{!120, !117, !"_RINvMsa_NtCsaH4Z5sDJ4bD_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtNtNtCsdJdTcfBK2IX_14allocator_api26stable5alloc6global6GlobalECs6oosyzwIepl_6ide_db: argument 1"}
!121 = distinct !{!121, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsaH4Z5sDJ4bD_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtNtCsdJdTcfBK2IX_14allocator_api26stable5alloc6global6GlobalE0EECs6oosyzwIepl_6ide_db"}
!122 = distinct !{!122, !121, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsaH4Z5sDJ4bD_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtNtCsdJdTcfBK2IX_14allocator_api26stable5alloc6global6GlobalE0EECs6oosyzwIepl_6ide_db: argument 0"}
!123 = distinct !{!123, !"_RNvXs1_NtCsaH4Z5sDJ4bD_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtNtNtCsdJdTcfBK2IX_14allocator_api26stable5alloc6global6GlobalE0ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6oosyzwIepl_6ide_db"}
!124 = distinct !{!124, !123, !"_RNvXs1_NtCsaH4Z5sDJ4bD_9hashbrown10scopeguardINtB5_10ScopeGuardNtNtB7_3raw13RawTableInnerNCINvMsa_B11_BZ_14prepare_resizeNtNtNtNtCsdJdTcfBK2IX_14allocator_api26stable5alloc6global6GlobalE0ENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs6oosyzwIepl_6ide_db: argument 0"}
!125 = distinct !{!125, !"_RNCINvMsa_NtCsaH4Z5sDJ4bD_9hashbrown3rawNtB8_13RawTableInner14prepare_resizeNtNtNtNtCsdJdTcfBK2IX_14allocator_api26stable5alloc6global6GlobalE0Cs6oosyzwIepl_6ide_db"}
!126 = distinct !{!126, !125, !"_RNCINvMsa_NtCsaH4Z5sDJ4bD_9hashbrown3rawNtB8_13RawTableInner14prepare_resizeNtNtNtNtCsdJdTcfBK2IX_14allocator_api26stable5alloc6global6GlobalE0Cs6oosyzwIepl_6ide_db: argument 0"}
!127 = distinct !{!127, !"_RNCINvMs6_NtCsaH4Z5sDJ4bD_9hashbrown3rawINtB8_8RawTableNtNtCsd9Lm8bEdjjY_5salsa2id2IdE14reserve_rehashNCINvMs5_NtBV_8internedINtB1L_14IngredientImplNtNvCs6oosyzwIepl_6ide_db10line_index14InternedFileIdE9intern_idINtNvB2o_1__9StructKeyNtCs4sl5YdnrCxp_3vfs6FileIdENCINvMs9_B3r_B2m_3newDNtCsgIpRO4v45SJ_7base_db14SourceDatabaseEL_B3K_E0Es1_0E0B2q_"}
!128 = distinct !{!128, !127, !"_RNCINvMs6_NtCsaH4Z5sDJ4bD_9hashbrown3rawINtB8_8RawTableNtNtCsd9Lm8bEdjjY_5salsa2id2IdE14reserve_rehashNCINvMs5_NtBV_8internedINtB1L_14IngredientImplNtNvCs6oosyzwIepl_6ide_db10line_index14InternedFileIdE9intern_idINtNvB2o_1__9StructKeyNtCs4sl5YdnrCxp_3vfs6FileIdENCINvMs9_B3r_B2m_3newDNtCsgIpRO4v45SJ_7base_db14SourceDatabaseEL_B3K_E0Es1_0E0B2q_: argument 1"}
!129 = distinct !{!129, !127, !"_RNCINvMs6_NtCsaH4Z5sDJ4bD_9hashbrown3rawINtB8_8RawTableNtNtCsd9Lm8bEdjjY_5salsa2id2IdE14reserve_rehashNCINvMs5_NtBV_8internedINtB1L_14IngredientImplNtNvCs6oosyzwIepl_6ide_db10line_index14InternedFileIdE9intern_idINtNvB2o_1__9StructKeyNtCs4sl5YdnrCxp_3vfs6FileIdENCINvMs9_B3r_B2m_3newDNtCsgIpRO4v45SJ_7base_db14SourceDatabaseEL_B3K_E0Es1_0E0B2q_: argument 0"}
!130 = distinct !{!130, !"_RNvNtNtNtCshzWfHUSfYae_4core9core_arch3x864sse215__mm_loadu_si128"}
!131 = distinct !{!131, !130, !"_RNvNtNtNtCshzWfHUSfYae_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!132 = distinct !{!132, !"_RNvMsa_NtCsaH4Z5sDJ4bD_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place"}
!133 = distinct !{!133, !132, !"_RNvMsa_NtCsaH4Z5sDJ4bD_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place: argument 0"}
!134 = distinct !{!134, !132, !"_RNvMsa_NtCsaH4Z5sDJ4bD_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place: argument 1"}
!135 = distinct !{!135, !"_RNCINvMs6_NtCsaH4Z5sDJ4bD_9hashbrown3rawINtB8_8RawTableNtNtCsd9Lm8bEdjjY_5salsa2id2IdE14reserve_rehashNCINvMs5_NtBV_8internedINtB1L_14IngredientImplNtNvCs6oosyzwIepl_6ide_db10line_index14InternedFileIdE9intern_idINtNvB2o_1__9StructKeyNtCs4sl5YdnrCxp_3vfs6FileIdENCINvMs9_B3r_B2m_3newDNtCsgIpRO4v45SJ_7base_db14SourceDatabaseEL_B3K_E0Es1_0E0B2q_"}
!136 = distinct !{!136, !135, !"_RNCINvMs6_NtCsaH4Z5sDJ4bD_9hashbrown3rawINtB8_8RawTableNtNtCsd9Lm8bEdjjY_5salsa2id2IdE14reserve_rehashNCINvMs5_NtBV_8internedINtB1L_14IngredientImplNtNvCs6oosyzwIepl_6ide_db10line_index14InternedFileIdE9intern_idINtNvB2o_1__9StructKeyNtCs4sl5YdnrCxp_3vfs6FileIdENCINvMs9_B3r_B2m_3newDNtCsgIpRO4v45SJ_7base_db14SourceDatabaseEL_B3K_E0Es1_0E0B2q_: argument 1"}
!137 = distinct !{!137, !135, !"_RNCINvMs6_NtCsaH4Z5sDJ4bD_9hashbrown3rawINtB8_8RawTableNtNtCsd9Lm8bEdjjY_5salsa2id2IdE14reserve_rehashNCINvMs5_NtBV_8internedINtB1L_14IngredientImplNtNvCs6oosyzwIepl_6ide_db10line_index14InternedFileIdE9intern_idINtNvB2o_1__9StructKeyNtCs4sl5YdnrCxp_3vfs6FileIdENCINvMs9_B3r_B2m_3newDNtCsgIpRO4v45SJ_7base_db14SourceDatabaseEL_B3K_E0Es1_0E0B2q_: argument 0"}
!138 = distinct !{!138, !"_RNvNtNtNtCshzWfHUSfYae_4core9core_arch3x864sse215__mm_loadu_si128"}
!139 = distinct !{!139, !138, !"_RNvNtNtNtCshzWfHUSfYae_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!140 = !{!114}
!141 = !{!116, !115}
!142 = !{!118}
!143 = !{!118, !120, !119, !114, !116, !115}
!144 = !{!119, !115}
!145 = !{!118, !114}
!146 = !{!120, !119, !116, !115}
!147 = !{!122}
!148 = !{!124}
!149 = !{!124, !122}
!150 = !{!126}
!151 = !{!126, !124, !122}
!152 = !{!126, !124, !122, !119, !115}
!153 = !{!128}
!154 = !{!129, !119, !115}
!155 = !{!129, !128, !119, !115}
!156 = !{!131}
!157 = !{!133}
!158 = !{!133, !134, !116}
!159 = !{!134, !116}
!160 = !{!136}
!161 = !{!137, !134, !116}
!162 = !{!137, !136, !134, !116}
!163 = !{!139}
!164 = !{!114, !116, !115}
!165 = distinct !{!165, !"_RINvMsa_NtCsaH4Z5sDJ4bD_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCsdJdTcfBK2IX_14allocator_api26stable5alloc6global6GlobalECs6oosyzwIepl_6ide_db"}
!166 = distinct !{!166, !165, !"_RINvMsa_NtCsaH4Z5sDJ4bD_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCsdJdTcfBK2IX_14allocator_api26stable5alloc6global6GlobalECs6oosyzwIepl_6ide_db: argument 0"}
!167 = distinct !{!167, !165, !"_RINvMsa_NtCsaH4Z5sDJ4bD_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCsdJdTcfBK2IX_14allocator_api26stable5alloc6global6GlobalECs6oosyzwIepl_6ide_db: argument 2"}
!168 = distinct !{!168, !165, !"_RINvMsa_NtCsaH4Z5sDJ4bD_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtNtNtCsdJdTcfBK2IX_14allocator_api26stable5alloc6global6GlobalECs6oosyzwIepl_6ide_db: argument 1"}
!169 = distinct !{!169, !"_RINvMsa_NtCsaH4Z5sDJ4bD_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtNtNtCsdJdTcfBK2IX_14allocator_api26stable5alloc6global6GlobalECs6oosyzwIepl_6ide_db"}
!170 = distinct !{!170, !169, !"_RINvMsa_NtCsaH4Z5sDJ4bD_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtNtNtCsdJdTcfBK2IX_14allocator_api26stable5alloc6global6GlobalECs6oosyzwIepl_6ide_db: argument 0"}
!171 = distinct !{!171, !169, !"_RINvMsa_NtCsaH4Z5sDJ4bD_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtNtNtCsdJdTcfBK2IX_14allocator_api26stable5alloc6global6GlobalECs6oosyzwIepl_6ide_db: argument 2"}
!172 = distinct !{!172, !169, !"_RINvMsa_NtCsaH4Z5sDJ4bD_9hashbrown3rawNtB6_13RawTableInner12resize_innerNtNtNtNtCsdJdTcfBK2IX_14allocator_api26stable5alloc6global6GlobalECs6oosyzwIepl_6ide_db: argument 1"}
!173 = distinct !{!173, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsaH4Z5sDJ4bD_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtNtNtCsdJdTcfBK2IX_14allocator_api26stable5alloc6global6GlobalE0EECs6oosyzwIepl_6ide_db"}
end_hunk_1
