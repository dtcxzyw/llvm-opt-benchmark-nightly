Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/delta-rs/original/deltalake.deltalake.563ccdf0ebbd83e0-cgu.05?download=true
inline.NumInlined: 6673
inline.NumDeleted: 2611
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6stable5merge5mergeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENCINvMNtB12_5sliceSBX_7sort_byNCINvXs1o_NtNtNtB12_11collections5btree3mapINtB2V_8BTreeMapBY_B1A_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBX_E9from_iterINtNtNtB3X_8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterBY_BY_ENCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB6t_13RawDeltaTable24create_write_transaction0s2_0EE0E0EB6t_:bb.a
  br i1 %.not, label %.preheader, label %.lr.ph.i

.preheader:                                       ; preds = %.critedge, %.preheader
  %i.i = phi ptr [ %i.y, %.preheader ], [ %i.h, %.critedge ] ; 3 uses
  %i.j = phi ptr [ %i.x, %.preheader ], [ %i.e, %.critedge ] ; 3 uses
  %.sroa.0.0.i17 = phi ptr [ %i.m, %.preheader ], [ %i.f, %.critedge ]
  %i.k = getelementptr inbounds i8, ptr %i.j, i64 -56 ; 2 uses
  %i.l = getelementptr inbounds i8, ptr %i.i, i64 -56 ; 2 uses
  %i.m = getelementptr inbounds i8, ptr %.sroa.0.0.i17, i64 -56 ; 2 uses
  %i.n = getelementptr i8, ptr %i.i, i64 -48
  %.val.i = load ptr, ptr %i.n, align 8, !noalias !8548, !nonnull !4, !noundef !4
  %i.o = getelementptr i8, ptr %i.i, i64 -40
  %.val10.i = load i64, ptr %i.o, align 8, !noalias !8548, !noundef !4 ; 2 uses
  %i.p = getelementptr i8, ptr %i.j, i64 -48
  %.val11.i = load ptr, ptr %i.p, align 8, !noalias !8548, !nonnull !4, !noundef !4
  %i.q = getelementptr i8, ptr %i.j, i64 -40
  %.val12.i = load i64, ptr %i.q, align 8, !noalias !8548, !noundef !4 ; 2 uses
  %spec.store.select.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %.val10.i, i64 range(i64 0, -9223372036854775808) %.val12.i)
  %i.r = tail call i32 @memcmp(ptr nonnull readonly %.val.i, ptr nonnull readonly %.val11.i, i64 %spec.store.select.i.i.i.i.i.i), !alias.scope !8551, !noalias !8548 ; 2 uses
  %i.s = sext i32 %i.r to i64
  %i.t = icmp eq i32 %i.r, 0
  %i.u = sub nsw i64 %.val10.i, %.val12.i
  %spec.select.i.i.i.i.i.i = select i1 %i.t, i64 %i.u, i64 %i.s ; 2 uses
  %i.v = icmp sgt i64 %spec.select.i.i.i.i.i.i, -1 ; 2 uses
  %..i = select i1 %i.v, ptr %i.l, ptr %i.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.m, ptr noundef nonnull align 8 dereferenceable(56) %..i, i64 56, i1 false), !noalias !8548
  %i.w = zext i1 %i.v to i64
  %i.x = getelementptr inbounds nuw [56 x i8], ptr %i.k, i64 %i.w ; 3 uses
  %spec.select.i.i.i.i.i.lobit.i = lshr i64 %spec.select.i.i.i.i.i.i, 63
  %i.y = getelementptr inbounds nuw [56 x i8], ptr %i.l, i64 %spec.select.i.i.i.i.i.lobit.i ; 3 uses
  %i.z = icmp eq ptr %i.x, %0
  %i.aa = icmp eq ptr %i.y, %2
  %or.cond.i = select i1 %i.z, i1 true, i1 %i.aa
  br i1 %or.cond.i, label %_RINvMNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6stable5mergeINtB3_10MergeStateTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEE10merge_downNCINvMNtB1f_5sliceSB1a_7sort_byNCINvXs1o_NtNtNtB1f_11collections5btree3mapINtB3m_8BTreeMapB1b_B1N_EINtNtNtNtBb_4iter6traits7collect12FromIteratorB1a_E9from_iterINtNtNtB4p_8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterB1b_B1b_ENCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB6Y_13RawDeltaTable24create_write_transaction0s2_0EE0E0EB6Y_.exit, label %.preheader

.lr.ph.i:                                         ; preds = %.critedge, %.lr.ph.i
  %i.ab = phi ptr [ %i.ap, %.lr.ph.i ], [ %0, %.critedge ] ; 2 uses
  %.sroa.0.02.i = phi ptr [ %i.ao, %.lr.ph.i ], [ %i.e, %.critedge ] ; 4 uses
  %i.ac = phi ptr [ %i.an, %.lr.ph.i ], [ %2, %.critedge ] ; 4 uses
  %i.ad = getelementptr i8, ptr %.sroa.0.02.i, i64 8
  %.sroa.0.0.val.i = load ptr, ptr %i.ad, align 8, !noalias !8555, !nonnull !4, !noundef !4
  %i.ae = getelementptr i8, ptr %.sroa.0.02.i, i64 16
  %.sroa.0.0.val6.i = load i64, ptr %i.ae, align 8, !noalias !8555, !noundef !4 ; 2 uses
  %i.af = getelementptr i8, ptr %i.ac, i64 8
  %.val.i19 = load ptr, ptr %i.af, align 8, !noalias !8555, !nonnull !4, !noundef !4
  %i.ag = getelementptr i8, ptr %i.ac, i64 16
  %.val7.i = load i64, ptr %i.ag, align 8, !noalias !8555, !noundef !4 ; 2 uses
  %spec.store.select.i.i.i.i.i.i20 = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %.sroa.0.0.val6.i, i64 range(i64 0, -9223372036854775808) %.val7.i)
  %i.ah = tail call i32 @memcmp(ptr nonnull readonly %.sroa.0.0.val.i, ptr nonnull readonly %.val.i19, i64 %spec.store.select.i.i.i.i.i.i20), !alias.scope !8558, !noalias !8555 ; 2 uses
  %i.ai = sext i32 %i.ah to i64
  %i.aj = icmp eq i32 %i.ah, 0
  %i.ak = sub nsw i64 %.sroa.0.0.val6.i, %.val7.i
  %spec.select.i.i.i.i.i.i21 = select i1 %i.aj, i64 %i.ak, i64 %i.ai ; 2 uses
  %i.al = icmp sgt i64 %spec.select.i.i.i.i.i.i21, -1 ; 2 uses
  %spec.select.i = select i1 %i.al, ptr %i.ac, ptr %.sroa.0.02.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ab, ptr noundef nonnull align 8 dereferenceable(56) %spec.select.i, i64 56, i1 false), !noalias !8555
  %i.am = zext i1 %i.al to i64
  %i.an = getelementptr inbounds nuw [56 x i8], ptr %i.ac, i64 %i.am ; 3 uses
  %spec.select.i.i.i.i.i.lobit.i22 = lshr i64 %spec.select.i.i.i.i.i.i21, 63
  %i.ao = getelementptr inbounds nuw [56 x i8], ptr %.sroa.0.02.i, i64 %spec.select.i.i.i.i.i.lobit.i22 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ab, i64 56 ; 2 uses
  %i.aq = icmp ne ptr %i.an, %i.h
  %i.ar = icmp ne ptr %i.ao, %i.f
  %or.cond.i23 = select i1 %i.aq, i1 %i.ar, i1 false
  br i1 %or.cond.i23, label %.lr.ph.i, label %_RINvMNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6stable5mergeINtB3_10MergeStateTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEE10merge_downNCINvMNtB1f_5sliceSB1a_7sort_byNCINvXs1o_NtNtNtB1f_11collections5btree3mapINtB3m_8BTreeMapB1b_B1N_EINtNtNtNtBb_4iter6traits7collect12FromIteratorB1a_E9from_iterINtNtNtB4p_8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterB1b_B1b_ENCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB6Y_13RawDeltaTable24create_write_transaction0s2_0EE0E0EB6Y_.exit

_RINvMNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6stable5mergeINtB3_10MergeStateTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEE10merge_downNCINvMNtB1f_5sliceSB1a_7sort_byNCINvXs1o_NtNtNtB1f_11collections5btree3mapINtB3m_8BTreeMapB1b_B1N_EINtNtNtNtBb_4iter6traits7collect12FromIteratorB1a_E9from_iterINtNtNtB4p_8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterB1b_B1b_ENCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB6Y_13RawDeltaTable24create_write_transaction0s2_0EE0E0EB6Y_.exit: ; preds = %.lr.ph.i, %.preheader
  %.sroa.13.0 = phi ptr [ %i.x, %.preheader ], [ %i.ap, %.lr.ph.i ]
  %.sroa.7.0 = phi ptr [ %i.y, %.preheader ], [ %i.h, %.lr.ph.i ]
  %.sroa.0.0 = phi ptr [ %2, %.preheader ], [ %i.an, %.lr.ph.i ] ; 2 uses
  %i.as = ptrtoint ptr %.sroa.7.0 to i64
  %i.at = ptrtoint ptr %.sroa.0.0 to i64
  %i.au = sub nuw i64 %i.as, %i.at
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.0, ptr align 8 %.sroa.0.0, i64 %i.au, i1 false), !noalias !8562
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a, %_RINvMNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6stable5mergeINtB3_10MergeStateTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEE10merge_downNCINvMNtB1f_5sliceSB1a_7sort_byNCINvXs1o_NtNtNtB1f_11collections5btree3mapINtB3m_8BTreeMapB1b_B1N_EINtNtNtNtBb_4iter6traits7collect12FromIteratorB1a_E9from_iterINtNtNtB4p_8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterB1b_B1b_ENCNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtB6Y_13RawDeltaTable24create_write_transaction0s2_0EE0E0EB6Y_.exit
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6stable5merge5mergeTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENCINvMNtB12_5sliceSBX_7sort_byNCINvXs1o_NtNtNtB12_11collections5btree3mapINtB2V_8BTreeMapBY_B1A_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBX_E9from_iterINtNtNtB3X_8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterBY_BY_ENCNvCs7p2uQeJxui2_9deltalake30maybe_create_commit_properties0EE0E0EB6n_(ptr noalias nofree noundef nonnull align 8 captures(address) %0, i64 noundef range(i64 0, 164703072086692426) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 164703072086692426) %3, i64 noundef %4, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %5) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %4, 0
  %i.b = icmp uge i64 %4, %1
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = sub nuw nsw i64 %1, %4                   ; 2 uses
  %.sroa.0.0.i = tail call i64 @llvm.umin.i64(i64 %i.c, i64 %4) ; 2 uses
  %i.d = icmp samesign ult i64 %3, %.sroa.0.0.i
  br i1 %i.d, label %bb.c, label %.critedge

.critedge:                                        ; preds = %bb.b
  %i.e = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %4 ; 3 uses
  %i.f = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %1 ; 2 uses
  %.not = icmp samesign ugt i64 %4, %i.c          ; 2 uses
  %spec.select = select i1 %.not, ptr %i.e, ptr %0
  %i.g = mul nuw nsw i64 %.sroa.0.0.i, 56         ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %spec.select, i64 %i.g, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 %i.g ; 3 uses
  br i1 %.not, label %.preheader, label %.lr.ph.i

.preheader:                                       ; preds = %.critedge, %.preheader
  %i.i = phi ptr [ %i.y, %.preheader ], [ %i.h, %.critedge ] ; 3 uses
  %i.j = phi ptr [ %i.x, %.preheader ], [ %i.e, %.critedge ] ; 3 uses
  %.sroa.0.0.i17 = phi ptr [ %i.m, %.preheader ], [ %i.f, %.critedge ]
  %i.k = getelementptr inbounds i8, ptr %i.j, i64 -56 ; 2 uses
  %i.l = getelementptr inbounds i8, ptr %i.i, i64 -56 ; 2 uses
  %i.m = getelementptr inbounds i8, ptr %.sroa.0.0.i17, i64 -56 ; 2 uses
  %i.n = getelementptr i8, ptr %i.i, i64 -48
  %.val.i = load ptr, ptr %i.n, align 8, !noalias !8567, !nonnull !4, !noundef !4
  %i.o = getelementptr i8, ptr %i.i, i64 -40
  %.val10.i = load i64, ptr %i.o, align 8, !noalias !8567, !noundef !4 ; 2 uses
  %i.p = getelementptr i8, ptr %i.j, i64 -48
  %.val11.i = load ptr, ptr %i.p, align 8, !noalias !8567, !nonnull !4, !noundef !4
  %i.q = getelementptr i8, ptr %i.j, i64 -40
  %.val12.i = load i64, ptr %i.q, align 8, !noalias !8567, !noundef !4 ; 2 uses
  %spec.store.select.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %.val10.i, i64 range(i64 0, -9223372036854775808) %.val12.i)
  %i.r = tail call i32 @memcmp(ptr nonnull readonly %.val.i, ptr nonnull readonly %.val11.i, i64 %spec.store.select.i.i.i.i.i.i), !alias.scope !8570, !noalias !8567 ; 2 uses
  %i.s = sext i32 %i.r to i64
  %i.t = icmp eq i32 %i.r, 0
  %i.u = sub nsw i64 %.val10.i, %.val12.i
  %spec.select.i.i.i.i.i.i = select i1 %i.t, i64 %i.u, i64 %i.s ; 2 uses
  %i.v = icmp sgt i64 %spec.select.i.i.i.i.i.i, -1 ; 2 uses
  %..i = select i1 %i.v, ptr %i.l, ptr %i.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.m, ptr noundef nonnull align 8 dereferenceable(56) %..i, i64 56, i1 false), !noalias !8567
  %i.w = zext i1 %i.v to i64
  %i.x = getelementptr inbounds nuw [56 x i8], ptr %i.k, i64 %i.w ; 3 uses
  %spec.select.i.i.i.i.i.lobit.i = lshr i64 %spec.select.i.i.i.i.i.i, 63
  %i.y = getelementptr inbounds nuw [56 x i8], ptr %i.l, i64 %spec.select.i.i.i.i.i.lobit.i ; 3 uses
  %i.z = icmp eq ptr %i.x, %0
  %i.aa = icmp eq ptr %i.y, %2
  %or.cond.i = select i1 %i.z, i1 true, i1 %i.aa
  br i1 %or.cond.i, label %_RINvMNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6stable5mergeINtB3_10MergeStateTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEE10merge_downNCINvMNtB1f_5sliceSB1a_7sort_byNCINvXs1o_NtNtNtB1f_11collections5btree3mapINtB3m_8BTreeMapB1b_B1N_EINtNtNtNtBb_4iter6traits7collect12FromIteratorB1a_E9from_iterINtNtNtB4p_8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterB1b_B1b_ENCNvCs7p2uQeJxui2_9deltalake30maybe_create_commit_properties0EE0E0EB6S_.exit, label %.preheader

.lr.ph.i:                                         ; preds = %.critedge, %.lr.ph.i
  %i.ab = phi ptr [ %i.ap, %.lr.ph.i ], [ %0, %.critedge ] ; 2 uses
  %.sroa.0.02.i = phi ptr [ %i.ao, %.lr.ph.i ], [ %i.e, %.critedge ] ; 4 uses
  %i.ac = phi ptr [ %i.an, %.lr.ph.i ], [ %2, %.critedge ] ; 4 uses
  %i.ad = getelementptr i8, ptr %.sroa.0.02.i, i64 8
  %.sroa.0.0.val.i = load ptr, ptr %i.ad, align 8, !noalias !8574, !nonnull !4, !noundef !4
  %i.ae = getelementptr i8, ptr %.sroa.0.02.i, i64 16
  %.sroa.0.0.val6.i = load i64, ptr %i.ae, align 8, !noalias !8574, !noundef !4 ; 2 uses
  %i.af = getelementptr i8, ptr %i.ac, i64 8
  %.val.i19 = load ptr, ptr %i.af, align 8, !noalias !8574, !nonnull !4, !noundef !4
  %i.ag = getelementptr i8, ptr %i.ac, i64 16
  %.val7.i = load i64, ptr %i.ag, align 8, !noalias !8574, !noundef !4 ; 2 uses
  %spec.store.select.i.i.i.i.i.i20 = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %.sroa.0.0.val6.i, i64 range(i64 0, -9223372036854775808) %.val7.i)
  %i.ah = tail call i32 @memcmp(ptr nonnull readonly %.sroa.0.0.val.i, ptr nonnull readonly %.val.i19, i64 %spec.store.select.i.i.i.i.i.i20), !alias.scope !8577, !noalias !8574 ; 2 uses
  %i.ai = sext i32 %i.ah to i64
  %i.aj = icmp eq i32 %i.ah, 0
  %i.ak = sub nsw i64 %.sroa.0.0.val6.i, %.val7.i
  %spec.select.i.i.i.i.i.i21 = select i1 %i.aj, i64 %i.ak, i64 %i.ai ; 2 uses
  %i.al = icmp sgt i64 %spec.select.i.i.i.i.i.i21, -1 ; 2 uses
  %spec.select.i = select i1 %i.al, ptr %i.ac, ptr %.sroa.0.02.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ab, ptr noundef nonnull align 8 dereferenceable(56) %spec.select.i, i64 56, i1 false), !noalias !8574
  %i.am = zext i1 %i.al to i64
  %i.an = getelementptr inbounds nuw [56 x i8], ptr %i.ac, i64 %i.am ; 3 uses
  %spec.select.i.i.i.i.i.lobit.i22 = lshr i64 %spec.select.i.i.i.i.i.i21, 63
  %i.ao = getelementptr inbounds nuw [56 x i8], ptr %.sroa.0.02.i, i64 %spec.select.i.i.i.i.i.lobit.i22 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ab, i64 56 ; 2 uses
  %i.aq = icmp ne ptr %i.an, %i.h
  %i.ar = icmp ne ptr %i.ao, %i.f
  %or.cond.i23 = select i1 %i.aq, i1 %i.ar, i1 false
  br i1 %or.cond.i23, label %.lr.ph.i, label %_RINvMNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6stable5mergeINtB3_10MergeStateTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEE10merge_downNCINvMNtB1f_5sliceSB1a_7sort_byNCINvXs1o_NtNtNtB1f_11collections5btree3mapINtB3m_8BTreeMapB1b_B1N_EINtNtNtNtBb_4iter6traits7collect12FromIteratorB1a_E9from_iterINtNtNtB4p_8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterB1b_B1b_ENCNvCs7p2uQeJxui2_9deltalake30maybe_create_commit_properties0EE0E0EB6S_.exit

_RINvMNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6stable5mergeINtB3_10MergeStateTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEE10merge_downNCINvMNtB1f_5sliceSB1a_7sort_byNCINvXs1o_NtNtNtB1f_11collections5btree3mapINtB3m_8BTreeMapB1b_B1N_EINtNtNtNtBb_4iter6traits7collect12FromIteratorB1a_E9from_iterINtNtNtB4p_8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterB1b_B1b_ENCNvCs7p2uQeJxui2_9deltalake30maybe_create_commit_properties0EE0E0EB6S_.exit: ; preds = %.lr.ph.i, %.preheader
  %.sroa.13.0 = phi ptr [ %i.x, %.preheader ], [ %i.ap, %.lr.ph.i ]
  %.sroa.7.0 = phi ptr [ %i.y, %.preheader ], [ %i.h, %.lr.ph.i ]
  %.sroa.0.0 = phi ptr [ %2, %.preheader ], [ %i.an, %.lr.ph.i ] ; 2 uses
  %i.as = ptrtoint ptr %.sroa.7.0 to i64
  %i.at = ptrtoint ptr %.sroa.0.0 to i64
  %i.au = sub nuw i64 %i.as, %i.at
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.0, ptr align 8 %.sroa.0.0, i64 %i.au, i1 false), !noalias !8581
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a, %_RINvMNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6stable5mergeINtB3_10MergeStateTNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueEE10merge_downNCINvMNtB1f_5sliceSB1a_7sort_byNCINvXs1o_NtNtNtB1f_11collections5btree3mapINtB3m_8BTreeMapB1b_B1N_EINtNtNtNtBb_4iter6traits7collect12FromIteratorB1a_E9from_iterINtNtNtB4p_8adapters3map3MapINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map8IntoIterB1b_B1b_ENCNvCs7p2uQeJxui2_9deltalake30maybe_create_commit_properties0EE0E0EB6S_.exit
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort8unstable8heapsort8heapsortNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNCINvMB8_SB15_16sort_unstable_byNCNCNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtB2o_8Snapshot12commit_infos0s_0E0ECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 17, 96076792050570582) %1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 8                ; 4 uses
  %i.b = lshr i64 %1, 1
  %i.c = add nuw nsw i64 %i.b, %1
  br label %bb.c

bb.b:                                             ; preds = %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort8unstable8heapsort9sift_downNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNCINvMB8_SB16_16sort_unstable_byNCNCNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtB2p_8Snapshot12commit_infos0s_0E0ECs7p2uQeJxui2_9deltalake.exit
  ret void

bb.c:                                             ; preds = %bb.a, %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort8unstable8heapsort9sift_downNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNCINvMB8_SB16_16sort_unstable_byNCNCNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtB2p_8Snapshot12commit_infos0s_0E0ECs7p2uQeJxui2_9deltalake.exit
  %.sroa.2.04 = phi i64 [ %i.c, %bb.a ], [ %i.d, %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort8unstable8heapsort9sift_downNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNCINvMB8_SB16_16sort_unstable_byNCNCNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtB2p_8Snapshot12commit_infos0s_0E0ECs7p2uQeJxui2_9deltalake.exit ]
  %i.d = add nsw i64 %.sroa.2.04, -1              ; 6 uses
  %.not9 = icmp ult i64 %i.d, %1
  br i1 %.not9, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = sub nuw nsw i64 %i.d, %1
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw [96 x i8], ptr %0, i64 %i.d ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.a, ptr noundef nonnull align 8 dereferenceable(96) %0, i64 96, i1 false)
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %i.f, i64 96, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.f, ptr noundef nonnull align 8 dereferenceable(96) %i.a, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.sroa.04.0 = phi i64 [ %i.e, %bb.d ], [ 0, %bb.e ] ; 3 uses
  %.sroa.0.0.i18 = tail call noundef range(i64 0, -1) i64 @llvm.umin.i64(i64 range(i64 -164703072086692424, 192153584101141163) %1, i64 range(i64 0, -1) %i.d) ; 4 uses
  %i.g = icmp ule i64 %.sroa.04.0, %.sroa.0.0.i18
  tail call void @llvm.assume(i1 %i.g)
  %i.h = shl nuw nsw i64 %.sroa.04.0, 1           ; 2 uses
  %i.i = or disjoint i64 %i.h, 1                  ; 2 uses
  %.not.i1 = icmp samesign ult i64 %i.i, %.sroa.0.0.i18
  br i1 %.not.i1, label %.lr.ph, label %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort8unstable8heapsort9sift_downNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNCINvMB8_SB16_16sort_unstable_byNCNCNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtB2p_8Snapshot12commit_infos0s_0E0ECs7p2uQeJxui2_9deltalake.exit

.lr.ph:                                           ; preds = %bb.f, %bb.i
  %i.j = phi i64 [ %i.ak, %bb.i ], [ %i.i, %bb.f ] ; 3 uses
  %i.k = phi i64 [ %i.aj, %bb.i ], [ %i.h, %bb.f ]
  %.sroa.0.0.i2 = phi i64 [ %.sroa.04.0.i, %bb.i ], [ %.sroa.04.0, %bb.f ]
  %i.l = add nuw nsw i64 %i.k, 2                  ; 2 uses
  %i.m = icmp samesign ult i64 %i.l, %.sroa.0.0.i18
  br i1 %i.m, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph
  %i.n = getelementptr inbounds nuw [96 x i8], ptr %0, i64 %i.j ; 2 uses
  %i.o = getelementptr inbounds nuw [96 x i8], ptr %0, i64 %i.l ; 2 uses
  %i.p = getelementptr i8, ptr %i.n, i64 8
  %.val = load ptr, ptr %i.p, align 8, !nonnull !4, !noundef !4
  %i.q = getelementptr i8, ptr %i.n, i64 16
  %.val11 = load i64, ptr %i.q, align 8, !noundef !4 ; 2 uses
  %i.r = getelementptr i8, ptr %i.o, i64 8
  %.val12 = load ptr, ptr %i.r, align 8, !nonnull !4, !noundef !4
  %i.s = getelementptr i8, ptr %i.o, i64 16
  %.val13 = load i64, ptr %i.s, align 8, !noundef !4 ; 2 uses
  %spec.store.select.i.i = tail call i64 @llvm.umin.i64(i64 %.val13, i64 %.val11)
  %i.t = tail call i32 @memcmp(ptr nonnull readonly %.val12, ptr nonnull readonly %.val, i64 %spec.store.select.i.i) ; 2 uses
  %i.u = sext i32 %i.t to i64
  %i.v = icmp eq i32 %i.t, 0
  %i.w = sub i64 %.val13, %.val11
  %spec.select.i.i = select i1 %i.v, i64 %i.w, i64 %i.u
  %spec.select.i.i.lobit = lshr i64 %spec.select.i.i, 63
  %i.x = add nuw nsw i64 %spec.select.i.i.lobit, %i.j
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph
  %.sroa.04.0.i = phi i64 [ %i.x, %bb.g ], [ %i.j, %.lr.ph ] ; 3 uses
  %i.y = getelementptr inbounds nuw [96 x i8], ptr %0, i64 %.sroa.0.0.i2 ; 3 uses
  %i.z = getelementptr inbounds nuw [96 x i8], ptr %0, i64 %.sroa.04.0.i ; 3 uses
  %i.aa = getelementptr i8, ptr %i.y, i64 8
  %.val14 = load ptr, ptr %i.aa, align 8, !nonnull !4, !noundef !4
  %i.ab = getelementptr i8, ptr %i.y, i64 16
  %.val15 = load i64, ptr %i.ab, align 8, !noundef !4 ; 2 uses
  %i.ac = getelementptr i8, ptr %i.z, i64 8
  %.val16 = load ptr, ptr %i.ac, align 8, !nonnull !4, !noundef !4
  %i.ad = getelementptr i8, ptr %i.z, i64 16
  %.val17 = load i64, ptr %i.ad, align 8, !noundef !4 ; 2 uses
  %spec.store.select.i.i19 = tail call i64 @llvm.umin.i64(i64 %.val17, i64 %.val15)
  %i.ae = tail call i32 @memcmp(ptr nonnull readonly %.val16, ptr nonnull readonly %.val14, i64 %spec.store.select.i.i19) ; 2 uses
  %i.af = sext i32 %i.ae to i64
  %i.ag = icmp eq i32 %i.ae, 0
  %i.ah = sub i64 %.val17, %.val15
  %spec.select.i.i20 = select i1 %i.ag, i64 %i.ah, i64 %i.af
  %i.ai = icmp slt i64 %spec.select.i.i20, 0
  br i1 %i.ai, label %bb.i, label %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort8unstable8heapsort9sift_downNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNCINvMB8_SB16_16sort_unstable_byNCNCNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtB2p_8Snapshot12commit_infos0s_0E0ECs7p2uQeJxui2_9deltalake.exit

bb.i:                                             ; preds = %bb.h
  tail call void @_RINvNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs7p2uQeJxui2_9deltalake(ptr noundef nonnull %i.y, ptr noundef nonnull %i.z, i64 noundef 12)
  %i.aj = shl nuw nsw i64 %.sroa.04.0.i, 1        ; 2 uses
  %i.ak = or disjoint i64 %i.aj, 1                ; 2 uses
  %.not.i = icmp samesign ult i64 %i.ak, %.sroa.0.0.i18
  br i1 %.not.i, label %.lr.ph, label %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort8unstable8heapsort9sift_downNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNCINvMB8_SB16_16sort_unstable_byNCNCNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtB2p_8Snapshot12commit_infos0s_0E0ECs7p2uQeJxui2_9deltalake.exit

_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort8unstable8heapsort9sift_downNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNCINvMB8_SB16_16sort_unstable_byNCNCNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtB2p_8Snapshot12commit_infos0s_0E0ECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.h, %bb.i, %bb.f
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.b, label %bb.c
}

; Function Attrs: noinline nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort8unstable8heapsort8heapsortNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next23DeletionVectorSelectionNCINvMB8_SB15_16sort_unstable_byNCNCNvNtB17_4scan23replay_deletion_vectors0s0_0E0ECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 33, 192153584101141163) %1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = lshr i64 %1, 1
  %i.c = add nuw nsw i64 %i.b, %1
  br label %bb.c

bb.b:                                             ; preds = %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort8unstable8heapsort9sift_downNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next23DeletionVectorSelectionNCINvMB8_SB16_16sort_unstable_byNCNCNvNtB18_4scan23replay_deletion_vectors0s0_0E0ECs7p2uQeJxui2_9deltalake.exit
  ret void

bb.c:                                             ; preds = %bb.a, %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort8unstable8heapsort9sift_downNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next23DeletionVectorSelectionNCINvMB8_SB16_16sort_unstable_byNCNCNvNtB18_4scan23replay_deletion_vectors0s0_0E0ECs7p2uQeJxui2_9deltalake.exit
  %.sroa.2.04 = phi i64 [ %i.c, %bb.a ], [ %i.d, %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort8unstable8heapsort9sift_downNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next23DeletionVectorSelectionNCINvMB8_SB16_16sort_unstable_byNCNCNvNtB18_4scan23replay_deletion_vectors0s0_0E0ECs7p2uQeJxui2_9deltalake.exit ]
  %i.d = add nsw i64 %.sroa.2.04, -1              ; 6 uses
  %.not9 = icmp ult i64 %i.d, %1
  br i1 %.not9, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = sub nuw nsw i64 %i.d, %1
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %i.d ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 8 dereferenceable(48) %0, i64 48, i1 false)
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.f, i64 48, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.f, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.sroa.04.0 = phi i64 [ %i.e, %bb.d ], [ 0, %bb.e ] ; 3 uses
  %.sroa.0.0.i18 = tail call noundef range(i64 0, -1) i64 @llvm.umin.i64(i64 range(i64 -164703072086692424, 192153584101141163) %1, i64 range(i64 0, -1) %i.d) ; 4 uses
  %i.g = icmp ule i64 %.sroa.04.0, %.sroa.0.0.i18
  tail call void @llvm.assume(i1 %i.g)
  %i.h = shl nuw nsw i64 %.sroa.04.0, 1           ; 2 uses
  %i.i = or disjoint i64 %i.h, 1                  ; 2 uses
  %.not.i1 = icmp samesign ult i64 %i.i, %.sroa.0.0.i18
  br i1 %.not.i1, label %.lr.ph, label %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort8unstable8heapsort9sift_downNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next23DeletionVectorSelectionNCINvMB8_SB16_16sort_unstable_byNCNCNvNtB18_4scan23replay_deletion_vectors0s0_0E0ECs7p2uQeJxui2_9deltalake.exit

.lr.ph:                                           ; preds = %bb.f, %bb.i
  %i.j = phi i64 [ %i.ak, %bb.i ], [ %i.i, %bb.f ] ; 3 uses
  %i.k = phi i64 [ %i.aj, %bb.i ], [ %i.h, %bb.f ]
  %.sroa.0.0.i2 = phi i64 [ %.sroa.04.0.i, %bb.i ], [ %.sroa.04.0, %bb.f ]
  %i.l = add nuw nsw i64 %i.k, 2                  ; 2 uses
  %i.m = icmp samesign ult i64 %i.l, %.sroa.0.0.i18
  br i1 %i.m, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph
  %i.n = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %i.j ; 2 uses
  %i.o = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %i.l ; 2 uses
  %i.p = getelementptr i8, ptr %i.n, i64 8
  %.val = load ptr, ptr %i.p, align 8, !nonnull !4, !noundef !4
  %i.q = getelementptr i8, ptr %i.n, i64 16
  %.val11 = load i64, ptr %i.q, align 8, !noundef !4 ; 2 uses
  %i.r = getelementptr i8, ptr %i.o, i64 8
  %.val12 = load ptr, ptr %i.r, align 8, !nonnull !4, !noundef !4
  %i.s = getelementptr i8, ptr %i.o, i64 16
  %.val13 = load i64, ptr %i.s, align 8, !noundef !4 ; 2 uses
  %spec.store.select.i.i = tail call i64 @llvm.umin.i64(i64 %.val11, i64 %.val13)
  %i.t = tail call i32 @memcmp(ptr nonnull readonly %.val, ptr nonnull readonly %.val12, i64 %spec.store.select.i.i) ; 2 uses
  %i.u = sext i32 %i.t to i64
  %i.v = icmp eq i32 %i.t, 0
  %i.w = sub i64 %.val11, %.val13
  %spec.select.i.i = select i1 %i.v, i64 %i.w, i64 %i.u
  %spec.select.i.i.lobit = lshr i64 %spec.select.i.i, 63
  %i.x = add nuw nsw i64 %spec.select.i.i.lobit, %i.j
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph
  %.sroa.04.0.i = phi i64 [ %i.x, %bb.g ], [ %i.j, %.lr.ph ] ; 3 uses
  %i.y = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %.sroa.0.0.i2 ; 3 uses
  %i.z = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %.sroa.04.0.i ; 3 uses
  %i.aa = getelementptr i8, ptr %i.y, i64 8
  %.val14 = load ptr, ptr %i.aa, align 8, !nonnull !4, !noundef !4
  %i.ab = getelementptr i8, ptr %i.y, i64 16
  %.val15 = load i64, ptr %i.ab, align 8, !noundef !4 ; 2 uses
  %i.ac = getelementptr i8, ptr %i.z, i64 8
  %.val16 = load ptr, ptr %i.ac, align 8, !nonnull !4, !noundef !4
  %i.ad = getelementptr i8, ptr %i.z, i64 16
  %.val17 = load i64, ptr %i.ad, align 8, !noundef !4 ; 2 uses
  %spec.store.select.i.i19 = tail call i64 @llvm.umin.i64(i64 %.val15, i64 %.val17)
  %i.ae = tail call i32 @memcmp(ptr nonnull readonly %.val14, ptr nonnull readonly %.val16, i64 %spec.store.select.i.i19) ; 2 uses
  %i.af = sext i32 %i.ae to i64
  %i.ag = icmp eq i32 %i.ae, 0
  %i.ah = sub i64 %.val15, %.val17
  %spec.select.i.i20 = select i1 %i.ag, i64 %i.ah, i64 %i.af
  %i.ai = icmp slt i64 %spec.select.i.i20, 0
  br i1 %i.ai, label %bb.i, label %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort8unstable8heapsort9sift_downNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next23DeletionVectorSelectionNCINvMB8_SB16_16sort_unstable_byNCNCNvNtB18_4scan23replay_deletion_vectors0s0_0E0ECs7p2uQeJxui2_9deltalake.exit

bb.i:                                             ; preds = %bb.h
  tail call void @_RINvNvNtCsbvkFyIu7lgC_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs7p2uQeJxui2_9deltalake(ptr noundef nonnull %i.y, ptr noundef nonnull %i.z, i64 noundef 6)
  %i.aj = shl nuw nsw i64 %.sroa.04.0.i, 1        ; 2 uses
  %i.ak = or disjoint i64 %i.aj, 1                ; 2 uses
  %.not.i = icmp samesign ult i64 %i.ak, %.sroa.0.0.i18
  br i1 %.not.i, label %.lr.ph, label %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort8unstable8heapsort9sift_downNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next23DeletionVectorSelectionNCINvMB8_SB16_16sort_unstable_byNCNCNvNtB18_4scan23replay_deletion_vectors0s0_0E0ECs7p2uQeJxui2_9deltalake.exit

_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort8unstable8heapsort9sift_downNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next23DeletionVectorSelectionNCINvMB8_SB16_16sort_unstable_byNCNCNvNtB18_4scan23replay_deletion_vectors0s0_0E0ECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.h, %bb.i, %bb.f
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %bb.b, label %bb.c
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort8unstable9quicksort9quicksortNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNCINvMB8_SB17_16sort_unstable_byNCNCNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtB2q_8Snapshot12commit_infos0s_0E0ECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 %0, i64 noundef range(i64 0, 96076792050570582) %1, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable_or_null(96) %2, i32 noundef range(i32 0, 127) %3, ptr noalias noundef nonnull align 8 dereferenceable(8) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 8                ; 6 uses
  %i.b = alloca [96 x i8], align 8                ; 6 uses
  %i.c = icmp samesign ult i64 %1, 17
  br i1 %i.c, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.d = icmp eq i32 %3, 0
  br i1 %i.d, label %.lr.ph._crit_edge, label %.lr.ph125

.lr.ph:                                           ; preds = %.backedge
  %i.e = icmp eq i32 %i.g, 0
  br i1 %i.e, label %.lr.ph._crit_edge, label %.lr.ph125

._crit_edge:                                      ; preds = %.backedge, %bb.a
  %.sroa.15.0.lcssa = phi i64 [ %1, %bb.a ], [ %.sroa.15.0.be, %.backedge ] ; 2 uses
  %.sroa.0.0.lcssa = phi ptr [ %0, %bb.a ], [ %.sroa.0.0.be, %.backedge ]
  %i.f = icmp samesign ugt i64 %.sroa.15.0.lcssa, 1
  br i1 %i.f, label %bb.b, label %_RINvXs2_NtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared9smallsortNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB6_31UnstableSmallSortFreezeTypeImpl10small_sortNCINvMBc_SBZ_16sort_unstable_byNCNCNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtB35_8Snapshot12commit_infos0s_0E0ECs7p2uQeJxui2_9deltalake.exit

bb.b:                                             ; preds = %._crit_edge
  tail call void @_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared9smallsort25insertion_sort_shift_leftNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNCINvMB8_SB1m_16sort_unstable_byNCNCNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtB2F_8Snapshot12commit_infos0s_0E0ECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 %.sroa.0.0.lcssa, i64 noundef range(i64 0, 17) %.sroa.15.0.lcssa, i64 noundef 1, ptr noalias noundef nonnull align 8 dereferenceable(8) %4)
  br label %_RINvXs2_NtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared9smallsortNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB6_31UnstableSmallSortFreezeTypeImpl10small_sortNCINvMBc_SBZ_16sort_unstable_byNCNCNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtB35_8Snapshot12commit_infos0s_0E0ECs7p2uQeJxui2_9deltalake.exit

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %.lr.ph.preheader
  %.sroa.0.081.lcssa = phi ptr [ %0, %.lr.ph.preheader ], [ %.sroa.0.0.be, %.lr.ph ]
  %.sroa.15.080.lcssa = phi i64 [ %1, %.lr.ph.preheader ], [ %.sroa.15.0.be, %.lr.ph ]
  tail call fastcc void @_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort8unstable8heapsort8heapsortNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNCINvMB8_SB15_16sort_unstable_byNCNCNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtB2o_8Snapshot12commit_infos0s_0E0ECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 %.sroa.0.081.lcssa, i64 noundef %.sroa.15.080.lcssa) #38
  br label %_RINvXs2_NtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared9smallsortNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB6_31UnstableSmallSortFreezeTypeImpl10small_sortNCINvMBc_SBZ_16sort_unstable_byNCNCNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtB35_8Snapshot12commit_infos0s_0E0ECs7p2uQeJxui2_9deltalake.exit

.lr.ph125:                                        ; preds = %.lr.ph.preheader, %.lr.ph
  %.sroa.026.078124 = phi i32 [ %i.g, %.lr.ph ], [ %3, %.lr.ph.preheader ]
  %.sroa.023.079123 = phi ptr [ %.sroa.023.0.be, %.lr.ph ], [ %2, %.lr.ph.preheader ] ; 4 uses
  %.sroa.15.080122 = phi i64 [ %.sroa.15.0.be, %.lr.ph ], [ %1, %.lr.ph.preheader ] ; 13 uses
  %.sroa.0.081121 = phi ptr [ %.sroa.0.0.be, %.lr.ph ], [ %0, %.lr.ph.preheader ] ; 25 uses
  %i.g = add nsw i32 %.sroa.026.078124, -1        ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8586)
  %i.h = lshr i64 %.sroa.15.080122, 3             ; 3 uses
  %.idx.i = mul nuw nsw i64 %i.h, 384
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.081121, i64 %.idx.i ; 4 uses
  %.idx2.i = mul nuw nsw i64 %i.h, 672
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.081121, i64 %.idx2.i ; 4 uses
  %i.k = icmp samesign ult i64 %.sroa.15.080122, 64
  br i1 %i.k, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph125
  %i.l = tail call noundef ptr @_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared5pivot11median3_recNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNCINvMB8_SB14_16sort_unstable_byNCNCNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtB2n_8Snapshot12commit_infos0s_0E0ECs7p2uQeJxui2_9deltalake(ptr noundef nonnull readonly align 8 %.sroa.0.081121, ptr noundef nonnull readonly %i.i, ptr noundef nonnull readonly %i.j, i64 noundef %i.h, ptr noalias noundef nonnull align 8 dereferenceable(8) %4)
  br label %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared5pivot12choose_pivotNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNCINvMB8_SB15_16sort_unstable_byNCNCNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtB2o_8Snapshot12commit_infos0s_0E0ECs7p2uQeJxui2_9deltalake.exit

bb.d:                                             ; preds = %.lr.ph125
  %i.m = getelementptr i8, ptr %.sroa.0.081121, i64 8
  %.val10.i = load ptr, ptr %i.m, align 8, !alias.scope !8586, !noalias !8589, !nonnull !4, !noundef !4 ; 2 uses
  %i.n = getelementptr i8, ptr %.sroa.0.081121, i64 16
  %.val11.i = load i64, ptr %i.n, align 8, !alias.scope !8586, !noalias !8589, !noundef !4 ; 4 uses
  %i.o = getelementptr i8, ptr %i.i, i64 8
  %.val12.i = load ptr, ptr %i.o, align 8, !alias.scope !8586, !noalias !8589, !nonnull !4, !noundef !4 ; 2 uses
  %i.p = getelementptr i8, ptr %i.i, i64 16
  %.val13.i = load i64, ptr %i.p, align 8, !alias.scope !8586, !noalias !8589, !noundef !4 ; 4 uses
  %spec.store.select.i.i.i = tail call i64 @llvm.umin.i64(i64 %.val13.i, i64 %.val11.i)
  %i.q = tail call i32 @memcmp(ptr nonnull readonly %.val12.i, ptr nonnull readonly %.val10.i, i64 %spec.store.select.i.i.i), !noalias !8591 ; 2 uses
  %i.r = sext i32 %i.q to i64
  %i.s = icmp eq i32 %i.q, 0
  %i.t = sub i64 %.val13.i, %.val11.i
  %spec.select.i.i.i = select i1 %i.s, i64 %i.t, i64 %i.r ; 2 uses
  %i.u = getelementptr i8, ptr %i.j, i64 8
  %.val8.i = load ptr, ptr %i.u, align 8, !alias.scope !8586, !noalias !8589, !nonnull !4, !noundef !4 ; 2 uses
  %i.v = getelementptr i8, ptr %i.j, i64 16
  %.val9.i = load i64, ptr %i.v, align 8, !alias.scope !8586, !noalias !8589, !noundef !4 ; 4 uses
  %spec.store.select.i.i14.i = tail call i64 @llvm.umin.i64(i64 %.val9.i, i64 %.val11.i)
  %i.w = tail call i32 @memcmp(ptr nonnull readonly %.val8.i, ptr nonnull readonly %.val10.i, i64 %spec.store.select.i.i14.i), !noalias !8591 ; 2 uses
  %i.x = sext i32 %i.w to i64
  %i.y = icmp eq i32 %i.w, 0
  %i.z = sub i64 %.val9.i, %.val11.i
  %spec.select.i.i15.i = select i1 %i.y, i64 %i.z, i64 %i.x
  %i.aa = xor i64 %spec.select.i.i15.i, %spec.select.i.i.i
  %i.ab = icmp slt i64 %i.aa, 0
  br i1 %i.ab, label %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared5pivot12choose_pivotNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNCINvMB8_SB15_16sort_unstable_byNCNCNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtB2o_8Snapshot12commit_infos0s_0E0ECs7p2uQeJxui2_9deltalake.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %spec.store.select.i.i16.i = tail call i64 @llvm.umin.i64(i64 %.val9.i, i64 %.val13.i)
  %i.ac = tail call i32 @memcmp(ptr nonnull readonly %.val8.i, ptr nonnull readonly %.val12.i, i64 %spec.store.select.i.i16.i), !noalias !8591 ; 2 uses
  %i.ad = sext i32 %i.ac to i64
  %i.ae = icmp eq i32 %i.ac, 0
  %i.af = sub i64 %.val9.i, %.val13.i
  %spec.select.i.i17.i = select i1 %i.ae, i64 %i.af, i64 %i.ad
  %i.ag = xor i64 %spec.select.i.i17.i, %spec.select.i.i.i
  %i.ah = icmp slt i64 %i.ag, 0
  %..i.i = select i1 %i.ah, ptr %i.j, ptr %i.i
  br label %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared5pivot12choose_pivotNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNCINvMB8_SB15_16sort_unstable_byNCNCNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtB2o_8Snapshot12commit_infos0s_0E0ECs7p2uQeJxui2_9deltalake.exit

_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared5pivot12choose_pivotNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNCINvMB8_SB15_16sort_unstable_byNCNCNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtB2o_8Snapshot12commit_infos0s_0E0ECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.c, %bb.d, %bb.e
  %.sroa.0.0.i.sink.i = phi ptr [ %i.l, %bb.c ], [ %.sroa.0.081121, %bb.d ], [ %..i.i, %bb.e ]
  %i.ai = ptrtoint ptr %.sroa.0.0.i.sink.i to i64
  %i.aj = ptrtoint ptr %.sroa.0.081121 to i64
  %i.ak = sub nuw i64 %i.ai, %i.aj                ; 2 uses
  %.sroa.0.0.i = udiv exact i64 %i.ak, 96         ; 3 uses
  %i.al = icmp samesign ult i64 %.sroa.0.0.i, %.sroa.15.080122
  tail call void @llvm.assume(i1 %i.al)
  %.not = icmp eq ptr %.sroa.023.079123, null
  br i1 %.not, label %bb.f, label %bb.h

_RINvXs2_NtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared9smallsortNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB6_31UnstableSmallSortFreezeTypeImpl10small_sortNCINvMBc_SBZ_16sort_unstable_byNCNCNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtB35_8Snapshot12commit_infos0s_0E0ECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.b, %._crit_edge, %.lr.ph._crit_edge
  ret void

bb.f:                                             ; preds = %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared5pivot12choose_pivotNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNCINvMB8_SB15_16sort_unstable_byNCNCNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtB2o_8Snapshot12commit_infos0s_0E0ECs7p2uQeJxui2_9deltalake.exit, %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8592)
  tail call void @_RNvMNtCsbvkFyIu7lgC_4core5sliceSNtCsjyY8HP3IvQ6_12object_store10ObjectMeta14swap_uncheckedCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 %.sroa.0.081121, i64 noundef range(i64 17, 96076792050570582) %.sroa.15.080122, i64 noundef 0, i64 noundef range(i64 0, 96076792050570581) %.sroa.0.0.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27)
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.0.081121, i64 96 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8595)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8598)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !8600
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.b, ptr noundef nonnull align 8 dereferenceable(96) %i.am, i64 96, i1 false), !noalias !8598
  %i.an = mul nuw nsw i64 %.sroa.15.080122, 96
  %i.ao = getelementptr i8, ptr %.sroa.0.081121, i64 %i.an ; 2 uses
  %.sroa.11.033.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.081121, i64 192
end_hunk_0
begin_hunk_1_@_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEE14insert_no_growCs7p2uQeJxui2_9deltalake:bb.a
  %i.u = bitcast <16 x i1> %i.t to i16            ; 2 uses
  %.not.i.i = icmp eq i16 %i.u, 0
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !prof !1679

_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.b, %._crit_edge.i
  %i.v = phi i8 [ %.pre, %bb.b ], [ %i.j, %._crit_edge.i ]
  %.sroa.0.0.i5.i = phi i64 [ %i.o, %bb.b ], [ %i.h, %._crit_edge.i ] ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.val, i64 %.sroa.0.0.i5.i
  %i.x = lshr i64 %1, 57
  %i.y = trunc nuw nsw i64 %i.x to i8             ; 2 uses
  %i.z = add i64 %.sroa.0.0.i5.i, -16
  %i.aa = and i64 %i.z, %.val3
  store i8 %i.y, ptr %i.w, align 1
  %i.ab = getelementptr i8, ptr %.val, i64 %i.aa
  %i.ac = getelementptr i8, ptr %i.ab, i64 16
  store i8 %i.y, ptr %i.ac, align 1
  %i.ad = sub nsw i64 0, %.sroa.0.0.i5.i
  %i.ae = getelementptr inbounds [64 x i8], ptr %.val, i64 %i.ad ; 2 uses
  %i.af = and i8 %i.v, 1
  %i.ag = zext nneg i8 %i.af to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ai = getelementptr inbounds i8, ptr %i.ae, i64 -64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ai, ptr noundef nonnull align 8 dereferenceable(64) %2, i64 64, i1 false)
  %i.aj = load <2 x i64>, ptr %i.ah, align 8
  %i.ak = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.ag, i64 0
  %i.al = sub <2 x i64> %i.aj, %i.ak
  store <2 x i64> %i.al, ptr %i.ah, align 8
  ret ptr %i.ae
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs6_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference22ResolvedTableReferenceINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs8VI8w5SIoU4_15datafusion_expr12table_source11TableSourceEL_EEE16with_capacity_inCs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 24)) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call fastcc void @_RINvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB6_13RawTableInner22fallible_with_capacityNtNtCs6Po7BT7Nknu_5alloc5alloc6GlobalECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 captures(none) dereferenceable(32) %0, i64 noundef 64, i64 noundef %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEE18disconnect_sendersCs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 128 %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 2 uses
  %i.b = load i64, ptr %i.a, align 16, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.d = atomicrmw or ptr %i.c, i64 %i.b seq_cst, align 8
  %i.e = load i64, ptr %i.a, align 16, !noundef !4
  %i.f = and i64 %i.e, %i.d
  %i.g = icmp eq i64 %i.f, 0                      ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 320
  tail call fastcc void @_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB5_9SyncWaker10disconnect(ptr noundef nonnull align 8 %i.h) #40
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i1 %i.g
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEE4sendCs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull align 128 %1, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %2, i64 %3, i32 noundef range(i32 0, 1000000001) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [40 x i8], align 8                ; 8 uses
  %i.h = alloca [16 x i8], align 8                ; 6 uses
  store i64 %3, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store i32 %4, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 400 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, i8 0, i64 40, i1 false)
  %i.m = load atomic i64, ptr %i.k monotonic, align 128, !noalias !11060 ; 2 uses
  %i.n = load i64, ptr %i.l, align 16, !noalias !11060, !noundef !4 ; 2 uses
  %i.o = and i64 %i.n, %i.m
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %.lr.ph.i.lr.ph, label %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEE5writeCs7p2uQeJxui2_9deltalake.exit

.lr.ph.i.lr.ph:                                   ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 392 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 408
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 416
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 384
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.u = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBa_7Context4with7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.59.0..sroa_idx10.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.5.0..sroa_idx5.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.lr.ph, %bb.ag
  %i.w = phi i64 [ %i.n, %.lr.ph.i.lr.ph ], [ %i.ct, %bb.ag ]
  %i.x = phi i64 [ %i.m, %.lr.ph.i.lr.ph ], [ %i.cs, %bb.ag ]
  call void @llvm.experimental.noalias.scope.decl(metadata !11063)
  br label %bb.b

bb.b:                                             ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i, %.lr.ph.i
  %i.y = phi i64 [ %i.w, %.lr.ph.i ], [ %i.bc, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i ]
  %.sroa.02.033.i = phi i64 [ %i.x, %.lr.ph.i ], [ %i.bb, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i ] ; 8 uses
  %.sroa.0.02832.i = phi i32 [ 0, %.lr.ph.i ], [ %.sroa.0.1.i, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i ] ; 14 uses
  %i.z = add i64 %i.y, -1
  %i.aa = and i64 %i.z, %.sroa.02.033.i           ; 3 uses
  %i.ab = load i64, ptr %i.q, align 8, !noalias !11063, !noundef !4
  %i.ac = sub i64 0, %i.ab
  %i.ad = and i64 %.sroa.02.033.i, %i.ac
  %i.ae = load ptr, ptr %i.r, align 8, !noalias !11063, !nonnull !4, !noundef !4
  %i.af = load i64, ptr %i.s, align 32, !noalias !11063, !noundef !4
  %i.ag = icmp ult i64 %i.aa, %i.af
  call void @llvm.assume(i1 %i.ag)
  %i.ah = getelementptr inbounds nuw [32 x i8], ptr %i.ae, i64 %i.aa ; 5 uses
  %i.ai = load atomic i64, ptr %i.ah acquire, align 8, !noalias !11063 ; 2 uses
  %i.aj = icmp eq i64 %.sroa.02.033.i, %i.ai
  br i1 %i.aj, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ak = load i64, ptr %i.q, align 8, !noalias !11063, !noundef !4
  %i.al = add i64 %i.ak, %i.ai
  %i.am = add i64 %.sroa.02.033.i, 1
  %i.an = icmp eq i64 %i.al, %i.am
  br i1 %i.an, label %bb.h, label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.ao = add nuw i64 %i.aa, 1
  %i.ap = load i64, ptr %i.t, align 128, !noalias !11063, !noundef !4
  %i.aq = icmp ult i64 %i.ao, %i.ap
  br i1 %i.aq, label %bb.k, label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.ar = icmp ult i32 %.sroa.0.02832.i, 7
  br i1 %i.ar, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now()
          to label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i unwind label %.body.thread30.loopexit

bb.g:                                             ; preds = %bb.e
  %.not.i.i = icmp eq i32 %.sroa.0.02832.i, 0
  br i1 %.not.i.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.g
  %i.as = mul nuw i32 %.sroa.0.02832.i, %.sroa.0.02832.i ; 2 uses
  %xtraiter = and i32 %i.as, 7                    ; 3 uses
  %i.at = icmp ult i32 %.sroa.0.02832.i, 3
  br i1 %i.at, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i32 %i.as, 56
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !11063
  call void @llvm.x86.sse2.pause(), !noalias !11063
  call void @llvm.x86.sse2.pause(), !noalias !11063
  call void @llvm.x86.sse2.pause(), !noalias !11063
  call void @llvm.x86.sse2.pause(), !noalias !11063
  call void @llvm.x86.sse2.pause(), !noalias !11063
  call void @llvm.x86.sse2.pause(), !noalias !11063
  call void @llvm.x86.sse2.pause(), !noalias !11063
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %lcmp.mod91 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod91)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !11063
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil, !llvm.loop !11065

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.f, %bb.g
  %i.au = add i32 %.sroa.0.02832.i, 1
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i

bb.h:                                             ; preds = %bb.c
  fence seq_cst
  %i.av = load atomic i64, ptr %1 monotonic, align 128, !noalias !11063
  %i.aw = load i64, ptr %i.q, align 8, !noalias !11063, !noundef !4
  %i.ax = add i64 %i.aw, %i.av
  %i.ay = icmp eq i64 %i.ax, %.sroa.02.033.i
  br i1 %i.ay, label %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEE10start_sendCs7p2uQeJxui2_9deltalake.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not.i11.i = icmp eq i32 %.sroa.0.02832.i, 0
  br i1 %.not.i11.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i, label %.lr.ph.i12.i.preheader

.lr.ph.i12.i.preheader:                           ; preds = %bb.i
  %.sroa.0.0.i.i.i = call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.02832.i, i32 6) ; 2 uses
  %5 = mul nuw nsw i32 %.sroa.0.0.i.i.i, %.sroa.0.0.i.i.i ; 2 uses
  %xtraiter92 = and i32 %5, 5                     ; 3 uses
  %i.az = icmp ult i32 %.sroa.0.02832.i, 3
  br i1 %i.az, label %.lr.ph.i12.i.epil.preheader, label %.lr.ph.i12.i.preheader.new

.lr.ph.i12.i.preheader.new:                       ; preds = %.lr.ph.i12.i.preheader
  %unroll_iter96 = and i32 %5, 56
  br label %.lr.ph.i12.i

._crit_edge.loopexit.i.i.unr-lcssa:               ; preds = %.lr.ph.i12.i
  %lcmp.mod94.not = icmp eq i32 %xtraiter92, 0
  br i1 %lcmp.mod94.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i12.i.epil.preheader

.lr.ph.i12.i.epil.preheader:                      ; preds = %._crit_edge.loopexit.i.i.unr-lcssa, %.lr.ph.i12.i.preheader
  %lcmp.mod95 = icmp ne i32 %xtraiter92, 0
  call void @llvm.assume(i1 %lcmp.mod95)
  br label %.lr.ph.i12.i.epil

.lr.ph.i12.i.epil:                                ; preds = %.lr.ph.i12.i.epil, %.lr.ph.i12.i.epil.preheader
  %epil.iter93 = phi i32 [ 0, %.lr.ph.i12.i.epil.preheader ], [ %epil.iter93.next, %.lr.ph.i12.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !11063
  %epil.iter93.next = add i32 %epil.iter93, 1     ; 2 uses
  %epil.iter93.cmp.not = icmp eq i32 %epil.iter93.next, %xtraiter92
  br i1 %epil.iter93.cmp.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i12.i.epil, !llvm.loop !11066

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i12.i.epil, %._crit_edge.loopexit.i.i.unr-lcssa
  %i.ba = add i32 %.sroa.0.02832.i, 1
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i

.lr.ph.i12.i:                                     ; preds = %.lr.ph.i12.i, %.lr.ph.i12.i.preheader.new
  %niter97 = phi i32 [ 0, %.lr.ph.i12.i.preheader.new ], [ %niter97.next.7, %.lr.ph.i12.i ]
  call void @llvm.x86.sse2.pause(), !noalias !11063
  call void @llvm.x86.sse2.pause(), !noalias !11063
  call void @llvm.x86.sse2.pause(), !noalias !11063
  call void @llvm.x86.sse2.pause(), !noalias !11063
  call void @llvm.x86.sse2.pause(), !noalias !11063
  call void @llvm.x86.sse2.pause(), !noalias !11063
  call void @llvm.x86.sse2.pause(), !noalias !11063
  call void @llvm.x86.sse2.pause(), !noalias !11063
  %niter97.next.7 = add i32 %niter97, 8           ; 2 uses
  %niter97.ncmp.7 = icmp eq i32 %niter97.next.7, %unroll_iter96
  br i1 %niter97.ncmp.7, label %._crit_edge.loopexit.i.i.unr-lcssa, label %.lr.ph.i12.i

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i: ; preds = %._crit_edge.loopexit.i20.i, %bb.m, %._crit_edge.loopexit.i.i, %bb.i, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i
  %.sroa.0.1.i = phi i32 [ %i.au, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ], [ 1, %bb.m ], [ %i.bk, %._crit_edge.loopexit.i20.i ], [ %i.ba, %._crit_edge.loopexit.i.i ], [ 1, %bb.i ]
  %i.bb = load atomic i64, ptr %i.k monotonic, align 128, !noalias !11063 ; 2 uses
  %i.bc = load i64, ptr %i.l, align 16, !noalias !11063, !noundef !4 ; 2 uses
  %i.bd = and i64 %i.bc, %i.bb
  %i.be = icmp eq i64 %i.bd, 0
  br i1 %i.be, label %bb.b, label %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEE5writeCs7p2uQeJxui2_9deltalake.exit

bb.j:                                             ; preds = %bb.d
  %i.bf = load i64, ptr %i.q, align 8, !noalias !11063, !noundef !4
  %i.bg = add i64 %i.bf, %i.ad
  br label %bb.l

bb.k:                                             ; preds = %bb.d
  %i.bh = add i64 %.sroa.02.033.i, 1
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.sroa.01.0.i = phi i64 [ %i.bh, %bb.k ], [ %i.bg, %bb.j ]
  %i.bi = cmpxchg weak ptr %i.k, i64 %.sroa.02.033.i, i64 %.sroa.01.0.i seq_cst monotonic, align 8, !noalias !11063
  %.sroa.18.0.in.i.i = extractvalue { i64, i1 } %i.bi, 1
  br i1 %.sroa.18.0.in.i.i, label %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEE5writeCs7p2uQeJxui2_9deltalake.exit.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.not.i16.i = icmp eq i32 %.sroa.0.02832.i, 0
  br i1 %.not.i16.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i, label %.lr.ph.i17.i.preheader

.lr.ph.i17.i.preheader:                           ; preds = %bb.m
  %.sroa.0.0.i.i15.i = call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.02832.i, i32 6) ; 2 uses
  %6 = mul nuw nsw i32 %.sroa.0.0.i.i15.i, %.sroa.0.0.i.i15.i ; 2 uses
  %xtraiter98 = and i32 %6, 5                     ; 3 uses
  %i.bj = icmp ult i32 %.sroa.0.02832.i, 3
  br i1 %i.bj, label %.lr.ph.i17.i.epil.preheader, label %.lr.ph.i17.i.preheader.new

.lr.ph.i17.i.preheader.new:                       ; preds = %.lr.ph.i17.i.preheader
  %unroll_iter102 = and i32 %6, 56
  br label %.lr.ph.i17.i

._crit_edge.loopexit.i20.i.unr-lcssa:             ; preds = %.lr.ph.i17.i
  %lcmp.mod100.not = icmp eq i32 %xtraiter98, 0
  br i1 %lcmp.mod100.not, label %._crit_edge.loopexit.i20.i, label %.lr.ph.i17.i.epil.preheader

.lr.ph.i17.i.epil.preheader:                      ; preds = %._crit_edge.loopexit.i20.i.unr-lcssa, %.lr.ph.i17.i.preheader
  %lcmp.mod101 = icmp ne i32 %xtraiter98, 0
  call void @llvm.assume(i1 %lcmp.mod101)
  br label %.lr.ph.i17.i.epil

.lr.ph.i17.i.epil:                                ; preds = %.lr.ph.i17.i.epil, %.lr.ph.i17.i.epil.preheader
  %epil.iter99 = phi i32 [ 0, %.lr.ph.i17.i.epil.preheader ], [ %epil.iter99.next, %.lr.ph.i17.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !11063
  %epil.iter99.next = add i32 %epil.iter99, 1     ; 2 uses
  %epil.iter99.cmp.not = icmp eq i32 %epil.iter99.next, %xtraiter98
  br i1 %epil.iter99.cmp.not, label %._crit_edge.loopexit.i20.i, label %.lr.ph.i17.i.epil, !llvm.loop !11067

._crit_edge.loopexit.i20.i:                       ; preds = %.lr.ph.i17.i.epil, %._crit_edge.loopexit.i20.i.unr-lcssa
  %i.bk = add i32 %.sroa.0.02832.i, 1
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i

.lr.ph.i17.i:                                     ; preds = %.lr.ph.i17.i, %.lr.ph.i17.i.preheader.new
  %niter103 = phi i32 [ 0, %.lr.ph.i17.i.preheader.new ], [ %niter103.next.7, %.lr.ph.i17.i ]
  call void @llvm.x86.sse2.pause(), !noalias !11063
  call void @llvm.x86.sse2.pause(), !noalias !11063
  call void @llvm.x86.sse2.pause(), !noalias !11063
  call void @llvm.x86.sse2.pause(), !noalias !11063
  call void @llvm.x86.sse2.pause(), !noalias !11063
  call void @llvm.x86.sse2.pause(), !noalias !11063
  call void @llvm.x86.sse2.pause(), !noalias !11063
  call void @llvm.x86.sse2.pause(), !noalias !11063
  %niter103.next.7 = add i32 %niter103, 8         ; 2 uses
  %niter103.ncmp.7 = icmp eq i32 %niter103.next.7, %unroll_iter102
  br i1 %niter103.ncmp.7, label %._crit_edge.loopexit.i20.i.unr-lcssa, label %.lr.ph.i17.i

.body.thread30.loopexit:                          ; preds = %bb.f
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.body.thread30.loopexit.split-lp:                 ; preds = %bb.z, %bb.u, %bb.p, %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.i.i, %bb.n, %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtB1S_5arrayINtB31_7ChannelINtNtBZ_6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEE4send0uEs_0uECs7p2uQeJxui2_9deltalake.exit.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEE10start_sendCs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.h
  %i.bl = load i32, ptr %i.i, align 8, !range !10802, !noundef !4 ; 2 uses
  %.not = icmp eq i32 %i.bl, 1000000000
  br i1 %.not, label %bb.o, label %bb.n

_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEE5writeCs7p2uQeJxui2_9deltalake.exit.thread: ; preds = %bb.l
  store ptr %i.ah, ptr %i.g, align 8, !alias.scope !11063
  %i.bm = add i64 %.sroa.02.033.i, 1              ; 2 uses
  store i64 %i.bm, ptr %i.j, align 8, !alias.scope !11063
  %.sroa.018.0.copyload35 = load i64, ptr %2, align 8
  %.sroa.5.0..sroa_idx36 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  store i64 %.sroa.018.0.copyload35, ptr %i.bn, align 8, !noalias !11068
  %.sroa.5.0..sroa_idx20 = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx20, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx36, i64 16, i1 false)
  store atomic i64 %i.bm, ptr %i.ah release, align 8, !noalias !11071
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 320
  call fastcc void @_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB5_9SyncWaker6notify(ptr noundef nonnull align 8 %i.bo) #40
  br label %bb.ai

bb.n:                                             ; preds = %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEE10start_sendCs7p2uQeJxui2_9deltalake.exit
  %i.bp = load i64, ptr %i.h, align 8, !noundef !4 ; 2 uses
  %i.bq = invoke { i64, i32 } @_RNvMNtCs2pqxYH9ZEk8_3std4timeNtB2_7Instant3now()
          to label %bb.ac unwind label %.body.thread30.loopexit.split-lp ; 2 uses

bb.o:                                             ; preds = %.split, %bb.ad, %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEE10start_sendCs7p2uQeJxui2_9deltalake.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !11073
  store ptr %i.g, ptr %i.f, align 8
  store ptr %1, ptr %.sroa.422.0..sroa_idx, align 8
  store ptr %i.h, ptr %.sroa.7.0..sroa_idx, align 8
  %i.br = load i8, ptr %i.v, align 8, !range !1921, !noalias !11076, !noundef !4
  %i.bs = icmp eq i8 %i.br, 1
  br i1 %i.bs, label %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.thread.i.i, label %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.i.i, !prof !1696

_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.i.i: ; preds = %bb.o
  %i.bt = invoke noundef ptr @_RINvMs0_NtNtNtNtCs2pqxYH9ZEk8_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsbvkFyIu7lgC_4core4cell4CellINtNtB1j_6option6OptionNtNtNtNtBe_4sync4mpmc7context7ContextEEuE16get_or_init_slowNvNvNvMB2b_B29_4with7CONTEXT27___rust_std_internal_init_fnECs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 8 %i.u, ptr noalias noundef align 8 dereferenceable_or_null(16) null)
          to label %.noexc10 unwind label %.body.thread30.loopexit.split-lp ; 2 uses

.noexc10:                                         ; preds = %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.i.i
  %i.bu = icmp eq ptr %i.bt, null
  br i1 %i.bu, label %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtB1S_5arrayINtB31_7ChannelINtNtBZ_6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEE4send0uEs_0uECs7p2uQeJxui2_9deltalake.exit.i, label %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.thread.i.i

_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.thread.i.i: ; preds = %.noexc10, %bb.o
  %.sroa.0.0.i.i.i2.i.i = phi ptr [ %i.bt, %.noexc10 ], [ %i.u, %bb.o ] ; 4 uses
  %i.bv = load ptr, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !11073, !noundef !4 ; 7 uses
  store ptr null, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !11073
  %.not.i.i.i = icmp eq ptr %i.bv, null
  br i1 %.not.i.i.i, label %bb.p, label %bb.w, !prof !1649

bb.p:                                             ; preds = %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !11073
  %i.bw = invoke noundef nonnull ptr @_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context3new()
          to label %bb.q unwind label %.body.thread30.loopexit.split-lp ; 2 uses

bb.q:                                             ; preds = %bb.p
  store ptr %i.bw, ptr %i.e, align 8, !noalias !11073
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !11073
  store ptr %i.g, ptr %i.c, align 8, !noalias !11073
  store ptr %1, ptr %.sroa.5.0..sroa_idx5.i.i.i, align 8
  store ptr %i.h, ptr %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx, align 8
  invoke fastcc void @_RNCNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB6_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEE4send0Cs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c, ptr nonnull %i.bw)
          to label %bb.t unwind label %bb.r, !noalias !11073

bb.r:                                             ; preds = %bb.q
  %i.bx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11083)
  call void @llvm.experimental.noalias.scope.decl(metadata !11086)
  call void @llvm.experimental.noalias.scope.decl(metadata !11089)
  %i.by = load ptr, ptr %i.e, align 8, !alias.scope !11092, !noalias !11073, !nonnull !4, !noundef !4
  %i.bz = atomicrmw sub ptr %i.by, i64 1 release, align 8, !noalias !11093
  %i.ca = icmp eq i64 %i.bz, 1
  br i1 %i.ca, label %bb.s, label %.body.thread

bb.s:                                             ; preds = %bb.r
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e) #38
          to label %.body.thread unwind label %bb.v, !noalias !11073

bb.t:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !11073
  call void @llvm.experimental.noalias.scope.decl(metadata !11094)
  call void @llvm.experimental.noalias.scope.decl(metadata !11097)
  call void @llvm.experimental.noalias.scope.decl(metadata !11100)
  %i.cb = load ptr, ptr %i.e, align 8, !alias.scope !11103, !noalias !11073, !nonnull !4, !noundef !4
  %i.cc = atomicrmw sub ptr %i.cb, i64 1 release, align 8, !noalias !11104
  %i.cd = icmp eq i64 %i.cc, 1
  br i1 %i.cd, label %bb.u, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextECs7p2uQeJxui2_9deltalake.exit19.i.i.i

bb.u:                                             ; preds = %bb.t
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e) #38
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextECs7p2uQeJxui2_9deltalake.exit19.i.i.i unwind label %.body.thread30.loopexit.split-lp

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextECs7p2uQeJxui2_9deltalake.exit19.i.i.i: ; preds = %bb.u, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !11073
  br label %bb.ag

bb.v:                                             ; preds = %bb.ab, %bb.s
  %i.ce = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !11073
  unreachable

bb.w:                                             ; preds = %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !11073
  store ptr %i.bv, ptr %i.d, align 8, !noalias !11073
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  store atomic i64 0, ptr %i.cf release, align 8, !noalias !11073
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bv, i64 32
  store atomic ptr null, ptr %i.cg release, align 8, !noalias !11073
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !11073
  store ptr %i.g, ptr %i.b, align 8, !noalias !11073
  store ptr %1, ptr %.sroa.59.0..sroa_idx10.i.i.i, align 8
  store ptr %i.h, ptr %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx, align 8
  invoke fastcc void @_RNCNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB6_7ChannelINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEE4send0Cs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, ptr nonnull %i.bv)
          to label %bb.x unwind label %bb.aa, !noalias !11073

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !11073
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !11073
  %i.ch = load ptr, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !11073, !noundef !4 ; 3 uses
  store ptr %i.ch, ptr %i.a, align 8, !noalias !11073
  store ptr %i.bv, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !11073
  %i.ci = icmp eq ptr %i.ch, null
  br i1 %i.ci, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextEECs7p2uQeJxui2_9deltalake.exit.i.i.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cj = atomicrmw sub ptr %i.ch, i64 1 release, align 8, !noalias !11105
  %i.ck = icmp eq i64 %i.cj, 1
  br i1 %i.ck, label %bb.z, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextEECs7p2uQeJxui2_9deltalake.exit.i.i.i

bb.z:                                             ; preds = %bb.y
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a) #38
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextEECs7p2uQeJxui2_9deltalake.exit.i.i.i unwind label %.body.thread30.loopexit.split-lp

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextEECs7p2uQeJxui2_9deltalake.exit.i.i.i: ; preds = %bb.z, %bb.y, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !11073
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !11073
  br label %bb.ag

bb.aa:                                            ; preds = %bb.w
  %i.cl = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cm = atomicrmw sub ptr %i.bv, i64 1 release, align 8, !noalias !11114
  %i.cn = icmp eq i64 %i.cm, 1
  br i1 %i.cn, label %bb.ab, label %.body.thread
end_hunk_1
begin_hunk_2_@_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageE20disconnect_receiversCs7p2uQeJxui2_9deltalake:bb.a
_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i
  %.sroa.0.18.i = phi i32 [ %i.ak, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ], [ %.sroa.0.07.i, %bb.l ], [ %.sroa.0.07.i, %bb.m ], [ %.sroa.0.07.i, %bb.n ], [ %.sroa.0.07.i, %bb.o ], [ %.sroa.0.07.i, %bb.p ], [ %.sroa.0.07.i, %bb.q ]
  %.sroa.0.1.i = phi i64 [ %.sroa.0.0.i, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ], [ %.sroa.05.0.i, %bb.l ], [ %.sroa.05.0.i, %bb.m ], [ %.sroa.05.0.i, %bb.n ], [ %.sroa.05.0.i, %bb.o ], [ %.sroa.05.0.i, %bb.p ], [ %.sroa.05.0.i, %bb.q ]
  %.pre.i = load i64, ptr %i.a, align 16
  br label %bb.d

bb.j:                                             ; preds = %bb.f
  %i.al = load i64, ptr %i.m, align 8, !noundef !4
  %i.am = add i64 %i.al, %i.v
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.f
  %.sroa.05.0.i = phi i64 [ %i.am, %bb.j ], [ %i.aa, %bb.f ] ; 6 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11125)
  %i.ao = load i64, ptr %i.an, align 8, !range !2292, !alias.scope !11125, !noundef !4
  %i.ap = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 6 uses
  switch i64 %i.ao, label %default.unreachable [
    i64 0, label %bb.n
    i64 1, label %bb.p
    i64 2, label %bb.q
    i64 3, label %bb.l
  ]

default.unreachable:                              ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11128)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11131)
  %i.aq = load ptr, ptr %i.ap, align 8, !alias.scope !11134, !nonnull !4, !noundef !4
  %i.ar = atomicrmw sub ptr %i.aq, i64 1 release, align 8, !noalias !11134
  %i.as = icmp eq i64 %i.ar, 1
  br i1 %i.as, label %bb.m, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageECs7p2uQeJxui2_9deltalake.exit.i

bb.m:                                             ; preds = %bb.l
  fence acquire
  tail call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCscq8Lx7CD32J_17opentelemetry_sdk8resource8ResourceE9drop_slowBK_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ap) #38
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageECs7p2uQeJxui2_9deltalake.exit.i

bb.n:                                             ; preds = %bb.k
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11135)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11138)
  %i.at = load ptr, ptr %i.ap, align 8, !alias.scope !11141, !nonnull !4, !noundef !4
  %i.au = atomicrmw sub ptr %i.at, i64 1 release, align 8, !noalias !11141
  %i.av = icmp eq i64 %i.au, 1
  br i1 %i.av, label %bb.o, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageECs7p2uQeJxui2_9deltalake.exit.i

bb.o:                                             ; preds = %bb.n
  fence acquire
  tail call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtCsbvkFyIu7lgC_4core4sync6atomic6AtomicbEE9drop_slowCscq8Lx7CD32J_17opentelemetry_sdk(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ap) #38
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageECs7p2uQeJxui2_9deltalake.exit.i

bb.p:                                             ; preds = %bb.k
  tail call void @_RNvXs4_NtNtCs2pqxYH9ZEk8_3std4sync4mpmcINtB5_6SenderINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEENtNtNtBT_3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ap)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageECs7p2uQeJxui2_9deltalake.exit.i

bb.q:                                             ; preds = %bb.k
  tail call void @_RNvXs4_NtNtCs2pqxYH9ZEk8_3std4sync4mpmcINtB5_6SenderINtNtCsbvkFyIu7lgC_4core6result6ResultuNtNtCscq8Lx7CD32J_17opentelemetry_sdk5error12OTelSdkErrorEENtNtNtBT_3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.ap)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageECs7p2uQeJxui2_9deltalake.exit.i

_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageE20discard_all_messagesCs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.e
  ret i1 %i.g
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageE4recvCs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 128 %1, i64 %2, i32 noundef range(i32 0, 1000000001) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.4 = alloca [16 x i8], align 8            ; 2 uses
  %i.i = alloca [40 x i8], align 8                ; 8 uses
  %i.j = alloca [16 x i8], align 8                ; 6 uses
  store i64 %2, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  store i32 %3, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 400 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 392 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 408
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 416
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 384
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.s = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBa_7Context4with7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.59.0..sroa_idx10.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.5.0..sroa_idx5.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.i, i8 0, i64 40, i1 false)
  br label %bb.b

bb.b:                                             ; preds = %_RINvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageE4recvs_0uECs7p2uQeJxui2_9deltalake.exit, %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !11142)
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i.backedge, %bb.b
  %.sroa.0.028.i = phi i32 [ 0, %bb.b ], [ %.sroa.0.028.i.be, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i.backedge ] ; 14 uses
  %i.u = load atomic i64, ptr %1 monotonic, align 128, !noalias !11142 ; 7 uses
  %i.v = load i64, ptr %i.m, align 16, !noalias !11142, !noundef !4
  %i.w = add i64 %i.v, -1
  %i.x = and i64 %i.w, %i.u                       ; 3 uses
  %i.y = load i64, ptr %i.n, align 8, !noalias !11142, !noundef !4
  %i.z = sub i64 0, %i.y
  %i.aa = and i64 %i.u, %i.z
  %i.ab = load ptr, ptr %i.o, align 8, !noalias !11142, !nonnull !4, !noundef !4
  %i.ac = load i64, ptr %i.p, align 32, !noalias !11142, !noundef !4
  %i.ad = icmp ult i64 %i.x, %i.ac
  call void @llvm.assume(i1 %i.ad)
  %i.ae = getelementptr inbounds nuw [32 x i8], ptr %i.ab, i64 %i.x ; 4 uses
  %i.af = load atomic i64, ptr %i.ae acquire, align 8, !noalias !11142 ; 3 uses
  %i.ag = add i64 %i.u, 1
  %i.ah = icmp eq i64 %i.ag, %i.af
  br i1 %i.ah, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i
  %i.ai = icmp eq i64 %i.af, %i.u
  br i1 %i.ai, label %bb.h, label %bb.e

bb.d:                                             ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i
  %i.aj = add nuw i64 %i.x, 1
  %i.ak = load i64, ptr %i.r, align 128, !noalias !11142, !noundef !4
  %i.al = icmp ult i64 %i.aj, %i.ak
  br i1 %i.al, label %bb.l, label %bb.k

bb.e:                                             ; preds = %bb.c
  %i.am = icmp ult i32 %.sroa.0.028.i, 7
  br i1 %i.am, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now(), !noalias !11142
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i

bb.g:                                             ; preds = %bb.e
  %.not.i.i = icmp eq i32 %.sroa.0.028.i, 0
  br i1 %.not.i.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.g
  %i.an = mul nuw i32 %.sroa.0.028.i, %.sroa.0.028.i ; 2 uses
  %xtraiter = and i32 %i.an, 7                    ; 3 uses
  %i.ao = icmp ult i32 %.sroa.0.028.i, 3
  br i1 %i.ao, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i32 %i.an, 56
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !11142
  call void @llvm.x86.sse2.pause(), !noalias !11142
  call void @llvm.x86.sse2.pause(), !noalias !11142
  call void @llvm.x86.sse2.pause(), !noalias !11142
  call void @llvm.x86.sse2.pause(), !noalias !11142
  call void @llvm.x86.sse2.pause(), !noalias !11142
  call void @llvm.x86.sse2.pause(), !noalias !11142
  call void @llvm.x86.sse2.pause(), !noalias !11142
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %lcmp.mod62 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod62)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !11142
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil, !llvm.loop !11145

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.g, %bb.f
  %i.ap = add i32 %.sroa.0.028.i, 1
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i.backedge

bb.h:                                             ; preds = %bb.c
  fence seq_cst
  %i.aq = load atomic i64, ptr %i.q monotonic, align 128, !noalias !11142 ; 2 uses
  %i.ar = load i64, ptr %i.m, align 16, !noalias !11142, !noundef !4 ; 2 uses
  %i.as = xor i64 %i.ar, -1
  %i.at = and i64 %i.aq, %i.as
  %i.au = icmp eq i64 %i.at, %i.u
  br i1 %i.au, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not.i11.i = icmp eq i32 %.sroa.0.028.i, 0
  br i1 %.not.i11.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i.backedge, label %.lr.ph.i12.i.preheader

.lr.ph.i12.i.preheader:                           ; preds = %bb.i
  %.sroa.0.0.i.i.i = call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.028.i, i32 6) ; 2 uses
  %4 = mul nuw nsw i32 %.sroa.0.0.i.i.i, %.sroa.0.0.i.i.i ; 2 uses
  %xtraiter63 = and i32 %4, 5                     ; 3 uses
  %i.av = icmp ult i32 %.sroa.0.028.i, 3
  br i1 %i.av, label %.lr.ph.i12.i.epil.preheader, label %.lr.ph.i12.i.preheader.new

.lr.ph.i12.i.preheader.new:                       ; preds = %.lr.ph.i12.i.preheader
  %unroll_iter67 = and i32 %4, 56
  br label %.lr.ph.i12.i

._crit_edge.loopexit.i.i.unr-lcssa:               ; preds = %.lr.ph.i12.i
  %lcmp.mod65.not = icmp eq i32 %xtraiter63, 0
  br i1 %lcmp.mod65.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i12.i.epil.preheader

.lr.ph.i12.i.epil.preheader:                      ; preds = %._crit_edge.loopexit.i.i.unr-lcssa, %.lr.ph.i12.i.preheader
  %lcmp.mod66 = icmp ne i32 %xtraiter63, 0
  call void @llvm.assume(i1 %lcmp.mod66)
  br label %.lr.ph.i12.i.epil

.lr.ph.i12.i.epil:                                ; preds = %.lr.ph.i12.i.epil, %.lr.ph.i12.i.epil.preheader
  %epil.iter64 = phi i32 [ 0, %.lr.ph.i12.i.epil.preheader ], [ %epil.iter64.next, %.lr.ph.i12.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !11142
  %epil.iter64.next = add i32 %epil.iter64, 1     ; 2 uses
  %epil.iter64.cmp.not = icmp eq i32 %epil.iter64.next, %xtraiter63
  br i1 %epil.iter64.cmp.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i12.i.epil, !llvm.loop !11146

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i12.i.epil, %._crit_edge.loopexit.i.i.unr-lcssa
  %i.aw = add i32 %.sroa.0.028.i, 1
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i.backedge

.lr.ph.i12.i:                                     ; preds = %.lr.ph.i12.i, %.lr.ph.i12.i.preheader.new
  %niter68 = phi i32 [ 0, %.lr.ph.i12.i.preheader.new ], [ %niter68.next.7, %.lr.ph.i12.i ]
  call void @llvm.x86.sse2.pause(), !noalias !11142
  call void @llvm.x86.sse2.pause(), !noalias !11142
  call void @llvm.x86.sse2.pause(), !noalias !11142
  call void @llvm.x86.sse2.pause(), !noalias !11142
  call void @llvm.x86.sse2.pause(), !noalias !11142
  call void @llvm.x86.sse2.pause(), !noalias !11142
  call void @llvm.x86.sse2.pause(), !noalias !11142
  call void @llvm.x86.sse2.pause(), !noalias !11142
  %niter68.next.7 = add i32 %niter68, 8           ; 2 uses
  %niter68.ncmp.7 = icmp eq i32 %niter68.next.7, %unroll_iter67
  br i1 %niter68.ncmp.7, label %._crit_edge.loopexit.i.i.unr-lcssa, label %.lr.ph.i12.i

bb.j:                                             ; preds = %bb.h
  %i.ax = and i64 %i.ar, %i.aq
  %i.ay = icmp eq i64 %i.ax, 0
  br i1 %i.ay, label %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageE10start_recvCs7p2uQeJxui2_9deltalake.exit, label %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageE4readCs7p2uQeJxui2_9deltalake.exit.thread

bb.k:                                             ; preds = %bb.d
  %i.az = load i64, ptr %i.n, align 8, !noalias !11142, !noundef !4
  %i.ba = add i64 %i.az, %i.aa
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.d
  %.sroa.01.0.i = phi i64 [ %i.ba, %bb.k ], [ %i.af, %bb.d ]
  %i.bb = cmpxchg weak ptr %1, i64 %i.u, i64 %.sroa.01.0.i seq_cst monotonic, align 8, !noalias !11142
  %.sroa.18.0.in.i.i = extractvalue { i64, i1 } %i.bb, 1
  br i1 %.sroa.18.0.in.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.not.i16.i = icmp eq i32 %.sroa.0.028.i, 0
  br i1 %.not.i16.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i.backedge, label %.lr.ph.i17.i.preheader

.lr.ph.i17.i.preheader:                           ; preds = %bb.m
  %.sroa.0.0.i.i15.i = call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.028.i, i32 6) ; 2 uses
  %5 = mul nuw nsw i32 %.sroa.0.0.i.i15.i, %.sroa.0.0.i.i15.i ; 2 uses
  %xtraiter69 = and i32 %5, 5                     ; 3 uses
  %i.bc = icmp ult i32 %.sroa.0.028.i, 3
  br i1 %i.bc, label %.lr.ph.i17.i.epil.preheader, label %.lr.ph.i17.i.preheader.new

.lr.ph.i17.i.preheader.new:                       ; preds = %.lr.ph.i17.i.preheader
  %unroll_iter73 = and i32 %5, 56
  br label %.lr.ph.i17.i

._crit_edge.loopexit.i20.i.unr-lcssa:             ; preds = %.lr.ph.i17.i
  %lcmp.mod71.not = icmp eq i32 %xtraiter69, 0
  br i1 %lcmp.mod71.not, label %._crit_edge.loopexit.i20.i, label %.lr.ph.i17.i.epil.preheader

.lr.ph.i17.i.epil.preheader:                      ; preds = %._crit_edge.loopexit.i20.i.unr-lcssa, %.lr.ph.i17.i.preheader
  %lcmp.mod72 = icmp ne i32 %xtraiter69, 0
  call void @llvm.assume(i1 %lcmp.mod72)
  br label %.lr.ph.i17.i.epil

.lr.ph.i17.i.epil:                                ; preds = %.lr.ph.i17.i.epil, %.lr.ph.i17.i.epil.preheader
  %epil.iter70 = phi i32 [ 0, %.lr.ph.i17.i.epil.preheader ], [ %epil.iter70.next, %.lr.ph.i17.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !11142
  %epil.iter70.next = add i32 %epil.iter70, 1     ; 2 uses
  %epil.iter70.cmp.not = icmp eq i32 %epil.iter70.next, %xtraiter69
  br i1 %epil.iter70.cmp.not, label %._crit_edge.loopexit.i20.i, label %.lr.ph.i17.i.epil, !llvm.loop !11147

._crit_edge.loopexit.i20.i:                       ; preds = %.lr.ph.i17.i.epil, %._crit_edge.loopexit.i20.i.unr-lcssa
  %i.bd = add i32 %.sroa.0.028.i, 1
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i.backedge

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i.backedge: ; preds = %._crit_edge.loopexit.i20.i, %bb.m, %._crit_edge.loopexit.i.i, %bb.i, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i
  %.sroa.0.028.i.be = phi i32 [ %i.ap, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ], [ 1, %bb.m ], [ %i.bd, %._crit_edge.loopexit.i20.i ], [ %i.aw, %._crit_edge.loopexit.i.i ], [ 1, %bb.i ]
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i

.lr.ph.i17.i:                                     ; preds = %.lr.ph.i17.i, %.lr.ph.i17.i.preheader.new
  %niter74 = phi i32 [ 0, %.lr.ph.i17.i.preheader.new ], [ %niter74.next.7, %.lr.ph.i17.i ]
  call void @llvm.x86.sse2.pause(), !noalias !11142
  call void @llvm.x86.sse2.pause(), !noalias !11142
  call void @llvm.x86.sse2.pause(), !noalias !11142
  call void @llvm.x86.sse2.pause(), !noalias !11142
  call void @llvm.x86.sse2.pause(), !noalias !11142
  call void @llvm.x86.sse2.pause(), !noalias !11142
  call void @llvm.x86.sse2.pause(), !noalias !11142
  call void @llvm.x86.sse2.pause(), !noalias !11142
  %niter74.next.7 = add i32 %niter74, 8           ; 2 uses
  %niter74.ncmp.7 = icmp eq i32 %niter74.next.7, %unroll_iter73
  br i1 %niter74.ncmp.7, label %._crit_edge.loopexit.i20.i.unr-lcssa, label %.lr.ph.i17.i

_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageE10start_recvCs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.j
  %i.be = load i32, ptr %i.k, align 8, !range !10802, !noundef !4 ; 2 uses
  %.not = icmp eq i32 %i.be, 1000000000
  br i1 %.not, label %bb.r, label %bb.q

bb.n:                                             ; preds = %bb.l
  store ptr %i.ae, ptr %i.i, align 8, !alias.scope !11142
  %i.bf = load i64, ptr %i.n, align 8, !noalias !11142, !noundef !4
  %i.bg = add i64 %i.bf, %i.u                     ; 2 uses
  store i64 %i.bg, ptr %i.l, align 8, !alias.scope !11142
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !11148
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.bh, i64 24, i1 false), !noalias !11148
  store atomic i64 %i.bg, ptr %i.ae release, align 8, !noalias !11148
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !11148
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 256
  invoke fastcc void @_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB5_9SyncWaker6notify(ptr noundef nonnull align 8 %i.bi)
          to label %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageE4readCs7p2uQeJxui2_9deltalake.exit unwind label %bb.o, !noalias !11148

bb.o:                                             ; preds = %bb.n
  %i.bj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(24) %i.h) #37
          to label %common.resume unwind label %bb.p, !noalias !11148

bb.p:                                             ; preds = %bb.o
  %i.bk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !11148
  unreachable

common.resume:                                    ; preds = %bb.t, %bb.u, %bb.ac, %bb.ad, %bb.o
  %common.resume.op = phi { ptr, i32 } [ %i.bj, %bb.o ], [ %i.bw, %bb.t ], [ %i.ck, %bb.ac ], [ %i.bw, %bb.u ], [ %i.ck, %bb.ad ]
  resume { ptr, i32 } %common.resume.op

_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageE4readCs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.n
  %.sroa.0.0.copyload2 = load i64, ptr %i.h, align 8 ; 2 uses
  %.sroa.4.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx3, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !11148
  %i.bl = icmp eq i64 %.sroa.0.0.copyload2, 4
  br i1 %i.bl, label %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageE4readCs7p2uQeJxui2_9deltalake.exit.thread, label %bb.ah

bb.q:                                             ; preds = %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageE10start_recvCs7p2uQeJxui2_9deltalake.exit
  %i.bm = load i64, ptr %i.j, align 8, !noundef !4 ; 2 uses
  %i.bn = call { i64, i32 } @_RNvMNtCs2pqxYH9ZEk8_3std4timeNtB2_7Instant3now() ; 2 uses
  %i.bo = extractvalue { i64, i32 } %i.bn, 0      ; 2 uses
  %i.bp = icmp eq i64 %i.bo, %i.bm
  br i1 %i.bp, label %.split, label %bb.ae

bb.r:                                             ; preds = %.split, %bb.ae, %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageE10start_recvCs7p2uQeJxui2_9deltalake.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !11151
  store ptr %i.i, ptr %i.f, align 8
  store ptr %1, ptr %.sroa.45.0..sroa_idx, align 8
  store ptr %i.j, ptr %.sroa.7.0..sroa_idx, align 8
  %i.bq = load i8, ptr %i.t, align 8, !range !1921, !noalias !11154, !noundef !4
  %i.br = icmp eq i8 %i.bq, 1
  br i1 %i.br, label %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.thread.i.i, label %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.i.i, !prof !1696

_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.i.i: ; preds = %bb.r
  %i.bs = call noundef ptr @_RINvMs0_NtNtNtNtCs2pqxYH9ZEk8_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsbvkFyIu7lgC_4core4cell4CellINtNtB1j_6option6OptionNtNtNtNtBe_4sync4mpmc7context7ContextEEuE16get_or_init_slowNvNvNvMB2b_B29_4with7CONTEXT27___rust_std_internal_init_fnECs7p2uQeJxui2_9deltalake(ptr noundef nonnull align 8 %i.s, ptr noalias noundef align 8 dereferenceable_or_null(16) null), !noalias !11151 ; 2 uses
  %i.bt = icmp eq ptr %i.bs, null
  br i1 %i.bt, label %_RINvMs2_NtNtCs2pqxYH9ZEk8_3std6thread5localINtB6_8LocalKeyINtNtCsbvkFyIu7lgC_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtB1S_5arrayINtB31_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageE4recvs_0uEs_0uECs7p2uQeJxui2_9deltalake.exit.i, label %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.thread.i.i

_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.thread.i.i: ; preds = %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.i.i, %bb.r
  %.sroa.0.0.i.i.i2.i.i = phi ptr [ %i.bs, %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.i.i ], [ %i.s, %bb.r ] ; 4 uses
  %i.bu = load ptr, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !11151, !noundef !4 ; 7 uses
  store ptr null, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !11151
  %.not.i.i.i = icmp eq ptr %i.bu, null
  br i1 %.not.i.i.i, label %bb.s, label %bb.y, !prof !1649

bb.s:                                             ; preds = %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !11151
  %i.bv = call noundef nonnull ptr @_RNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB2_7Context3new(), !noalias !11151 ; 2 uses
  store ptr %i.bv, ptr %i.e, align 8, !noalias !11151
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !11151
  store ptr %i.i, ptr %i.c, align 8, !noalias !11151
  store ptr %1, ptr %.sroa.5.0..sroa_idx5.i.i.i, align 8
  store ptr %i.j, ptr %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx, align 8
  invoke fastcc void @_RNCNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB6_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageE4recvs_0Cs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c, ptr nonnull %i.bv)
          to label %bb.v unwind label %bb.t, !noalias !11151

bb.t:                                             ; preds = %bb.s
  %i.bw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11161)
  call void @llvm.experimental.noalias.scope.decl(metadata !11164)
  call void @llvm.experimental.noalias.scope.decl(metadata !11167)
  %i.bx = load ptr, ptr %i.e, align 8, !alias.scope !11170, !noalias !11151, !nonnull !4, !noundef !4
  %i.by = atomicrmw sub ptr %i.bx, i64 1 release, align 8, !noalias !11171
  %i.bz = icmp eq i64 %i.by, 1
  br i1 %i.bz, label %bb.u, label %common.resume

bb.u:                                             ; preds = %bb.t
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e) #38
          to label %common.resume unwind label %bb.x, !noalias !11151

bb.v:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !11151
  call void @llvm.experimental.noalias.scope.decl(metadata !11172)
  call void @llvm.experimental.noalias.scope.decl(metadata !11175)
  call void @llvm.experimental.noalias.scope.decl(metadata !11178)
  %i.ca = load ptr, ptr %i.e, align 8, !alias.scope !11181, !noalias !11151, !nonnull !4, !noundef !4
  %i.cb = atomicrmw sub ptr %i.ca, i64 1 release, align 8, !noalias !11182
  %i.cc = icmp eq i64 %i.cb, 1
  br i1 %i.cc, label %bb.w, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextECs7p2uQeJxui2_9deltalake.exit19.i.i.i

bb.w:                                             ; preds = %bb.v
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context5InnerE9drop_slowCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e) #38, !noalias !11151
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextECs7p2uQeJxui2_9deltalake.exit19.i.i.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextECs7p2uQeJxui2_9deltalake.exit19.i.i.i: ; preds = %bb.w, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !11151
  br label %_RINvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageE4recvs_0uECs7p2uQeJxui2_9deltalake.exit

bb.x:                                             ; preds = %bb.ad, %bb.u
  %i.cd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !11151
  unreachable

bb.y:                                             ; preds = %_RNvYNCNKNvNvMNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCsbvkFyIu7lgC_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCs7p2uQeJxui2_9deltalake.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !11151
  store ptr %i.bu, ptr %i.d, align 8, !noalias !11151
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  store atomic i64 0, ptr %i.ce release, align 8, !noalias !11151
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bu, i64 32
  store atomic ptr null, ptr %i.cf release, align 8, !noalias !11151
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !11151
  store ptr %i.i, ptr %i.b, align 8, !noalias !11151
  store ptr %1, ptr %.sroa.59.0..sroa_idx10.i.i.i, align 8
  store ptr %i.j, ptr %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx, align 8
  invoke fastcc void @_RNCNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB6_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace14span_processor12BatchMessageE4recvs_0Cs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, ptr nonnull %i.bu)
          to label %bb.z unwind label %bb.ac, !noalias !11151

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !11151
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !11151
  %i.cg = load ptr, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !11151, !noundef !4 ; 3 uses
  store ptr %i.cg, ptr %i.a, align 8, !noalias !11151
  store ptr %i.bu, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !11151
  %i.ch = icmp eq ptr %i.cg, null
  br i1 %i.ch, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextEECs7p2uQeJxui2_9deltalake.exit.i.i.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ci = atomicrmw sub ptr %i.cg, i64 1 release, align 8, !noalias !11183
  %i.cj = icmp eq i64 %i.ci, 1
  br i1 %i.cj, label %bb.ab, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc7context7ContextEECs7p2uQeJxui2_9deltalake.exit.i.i.i

bb.ab:                                            ; preds = %bb.aa
end_hunk_2
begin_hunk_3_@_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataE20disconnect_receiversCs7p2uQeJxui2_9deltalake:bb.a
  %i.ad = icmp eq i64 %i.ac, %i.ab
  br i1 %i.ad, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ae = icmp eq i64 %i.l, %.sroa.0.0.i
  br i1 %i.ae, label %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataE20discard_all_messagesCs7p2uQeJxui2_9deltalake.exit, label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.af = add nuw i64 %i.s, 1
  %i.ag = load i64, ptr %i.p, align 128, !noundef !4
  %i.ah = icmp ult i64 %i.af, %i.ag
  br i1 %i.ah, label %bb.l, label %bb.k

bb.g:                                             ; preds = %bb.e
  %i.ai = icmp ult i32 %.sroa.0.07.i, 7
  br i1 %i.ai, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now()
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i

bb.i:                                             ; preds = %bb.g
  %.not.i.i = icmp eq i32 %.sroa.0.07.i, 0
  br i1 %.not.i.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.i
  %i.aj = mul nuw i32 %.sroa.0.07.i, %.sroa.0.07.i ; 2 uses
  %xtraiter = and i32 %i.aj, 7                    ; 3 uses
  %i.ak = icmp ult i32 %.sroa.0.07.i, 3
  br i1 %i.ak, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i32 %i.aj, 56
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i ]
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  tail call void @llvm.x86.sse2.pause()
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %lcmp.mod2 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod2)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.epil ]
  tail call void @llvm.x86.sse2.pause()
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil, !llvm.loop !11199

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.i, %bb.h
  %i.al = add i32 %.sroa.0.07.i, 1
  br label %bb.j

bb.j:                                             ; preds = %bb.l, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i
  %.sroa.0.18.i = phi i32 [ %.sroa.0.07.i, %bb.l ], [ %i.al, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ]
  %.sroa.0.1.i = phi i64 [ %.sroa.05.0.i, %bb.l ], [ %.sroa.0.0.i, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ]
  %.pre.i = load i64, ptr %i.a, align 16
  br label %bb.d

bb.k:                                             ; preds = %bb.f
  %i.am = load i64, ptr %i.m, align 8, !noundef !4
  %i.an = add i64 %i.am, %i.v
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.f
  %.sroa.05.0.i = phi i64 [ %i.an, %bb.k ], [ %i.ab, %bb.f ]
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 16 dereferenceable(352) %i.z)
  br label %bb.j

_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataE20discard_all_messagesCs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.e
  ret i1 %i.g
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataE8try_recvCs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([352 x i8]) align 16 captures(none) dereferenceable(352) %0, ptr noundef nonnull align 128 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [352 x i8], align 16              ; 4 uses
  %i.b = alloca [352 x i8], align 16              ; 6 uses
  %.sroa.64 = alloca [344 x i8], align 8          ; 5 uses
  %i.c = load atomic i64, ptr %1 monotonic, align 128, !noalias !11200
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 400 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 392 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 408
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 416
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 384
  br label %bb.b

bb.b:                                             ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i, %bb.a
  %.sroa.0.028.i = phi i32 [ 0, %bb.a ], [ %.sroa.0.1.i, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i ] ; 14 uses
  %.sroa.02.0.i = phi i64 [ %i.c, %bb.a ], [ %i.ao, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i ] ; 7 uses
  %i.j = load i64, ptr %i.d, align 16, !noalias !11200, !noundef !4
  %i.k = add i64 %i.j, -1
  %i.l = and i64 %i.k, %.sroa.02.0.i              ; 3 uses
  %i.m = load i64, ptr %i.e, align 8, !noalias !11200, !noundef !4
  %i.n = sub i64 0, %i.m
  %i.o = and i64 %.sroa.02.0.i, %i.n
  %i.p = load ptr, ptr %i.f, align 8, !noalias !11200, !nonnull !4, !noundef !4
  %i.q = load i64, ptr %i.g, align 32, !noalias !11200, !noundef !4
  %i.r = icmp ult i64 %i.l, %i.q
  tail call void @llvm.assume(i1 %i.r)
  %i.s = getelementptr inbounds nuw [368 x i8], ptr %i.p, i64 %i.l ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 352
  %i.u = load atomic i64, ptr %i.t acquire, align 8, !noalias !11200 ; 3 uses
  %i.v = add i64 %.sroa.02.0.i, 1
  %i.w = icmp eq i64 %i.v, %i.u
  br i1 %i.w, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.x = icmp eq i64 %i.u, %.sroa.02.0.i
  br i1 %i.x, label %bb.h, label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.y = add nuw i64 %i.l, 1
  %i.z = load i64, ptr %i.i, align 128, !noalias !11200, !noundef !4
  %i.aa = icmp ult i64 %i.y, %i.z
  br i1 %i.aa, label %bb.l, label %bb.k

bb.e:                                             ; preds = %bb.c
  %i.ab = icmp ult i32 %.sroa.0.028.i, 7
  br i1 %i.ab, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvNtNtCs2pqxYH9ZEk8_3std6thread9functions9yield_now(), !noalias !11200
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i

bb.g:                                             ; preds = %bb.e
  %.not.i.i = icmp eq i32 %.sroa.0.028.i, 0
  br i1 %.not.i.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.g
  %i.ac = mul nuw i32 %.sroa.0.028.i, %.sroa.0.028.i ; 2 uses
  %xtraiter = and i32 %i.ac, 7                    ; 3 uses
  %i.ad = icmp ult i32 %.sroa.0.028.i, 3
  br i1 %i.ad, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter = and i32 %i.ac, 56
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i.i ]
  tail call void @llvm.x86.sse2.pause(), !noalias !11200
  tail call void @llvm.x86.sse2.pause(), !noalias !11200
  tail call void @llvm.x86.sse2.pause(), !noalias !11200
  tail call void @llvm.x86.sse2.pause(), !noalias !11200
  tail call void @llvm.x86.sse2.pause(), !noalias !11200
  tail call void @llvm.x86.sse2.pause(), !noalias !11200
  tail call void @llvm.x86.sse2.pause(), !noalias !11200
  tail call void @llvm.x86.sse2.pause(), !noalias !11200
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %lcmp.mod38 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod38)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.epil ]
  tail call void @llvm.x86.sse2.pause(), !noalias !11200
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i, label %.lr.ph.i.i.epil, !llvm.loop !11203

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i: ; preds = %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %bb.g, %bb.f
  %i.ae = add i32 %.sroa.0.028.i, 1
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i

bb.h:                                             ; preds = %bb.c
  fence seq_cst
  %i.af = load atomic i64, ptr %i.h monotonic, align 128, !noalias !11200 ; 2 uses
  %i.ag = load i64, ptr %i.d, align 16, !noalias !11200, !noundef !4 ; 2 uses
  %i.ah = xor i64 %i.ag, -1
  %i.ai = and i64 %i.af, %i.ah
  %i.aj = icmp eq i64 %i.ai, %.sroa.02.0.i
  br i1 %i.aj, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not.i11.i = icmp eq i32 %.sroa.0.028.i, 0
  br i1 %.not.i11.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i, label %.lr.ph.i12.i.preheader

.lr.ph.i12.i.preheader:                           ; preds = %bb.i
  %.sroa.0.0.i.i.i = tail call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.028.i, i32 6) ; 2 uses
  %2 = mul nuw nsw i32 %.sroa.0.0.i.i.i, %.sroa.0.0.i.i.i ; 2 uses
  %xtraiter39 = and i32 %2, 5                     ; 3 uses
  %i.ak = icmp ult i32 %.sroa.0.028.i, 3
  br i1 %i.ak, label %.lr.ph.i12.i.epil.preheader, label %.lr.ph.i12.i.preheader.new

.lr.ph.i12.i.preheader.new:                       ; preds = %.lr.ph.i12.i.preheader
  %unroll_iter43 = and i32 %2, 56
  br label %.lr.ph.i12.i

._crit_edge.loopexit.i.i.unr-lcssa:               ; preds = %.lr.ph.i12.i
  %lcmp.mod41.not = icmp eq i32 %xtraiter39, 0
  br i1 %lcmp.mod41.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i12.i.epil.preheader

.lr.ph.i12.i.epil.preheader:                      ; preds = %._crit_edge.loopexit.i.i.unr-lcssa, %.lr.ph.i12.i.preheader
  %lcmp.mod42 = icmp ne i32 %xtraiter39, 0
  tail call void @llvm.assume(i1 %lcmp.mod42)
  br label %.lr.ph.i12.i.epil

.lr.ph.i12.i.epil:                                ; preds = %.lr.ph.i12.i.epil, %.lr.ph.i12.i.epil.preheader
  %epil.iter40 = phi i32 [ 0, %.lr.ph.i12.i.epil.preheader ], [ %epil.iter40.next, %.lr.ph.i12.i.epil ]
  tail call void @llvm.x86.sse2.pause(), !noalias !11200
  %epil.iter40.next = add i32 %epil.iter40, 1     ; 2 uses
  %epil.iter40.cmp.not = icmp eq i32 %epil.iter40.next, %xtraiter39
  br i1 %epil.iter40.cmp.not, label %._crit_edge.loopexit.i.i, label %.lr.ph.i12.i.epil, !llvm.loop !11204

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i12.i.epil, %._crit_edge.loopexit.i.i.unr-lcssa
  %i.al = add i32 %.sroa.0.028.i, 1
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i

.lr.ph.i12.i:                                     ; preds = %.lr.ph.i12.i, %.lr.ph.i12.i.preheader.new
  %niter44 = phi i32 [ 0, %.lr.ph.i12.i.preheader.new ], [ %niter44.next.7, %.lr.ph.i12.i ]
  tail call void @llvm.x86.sse2.pause(), !noalias !11200
  tail call void @llvm.x86.sse2.pause(), !noalias !11200
  tail call void @llvm.x86.sse2.pause(), !noalias !11200
  tail call void @llvm.x86.sse2.pause(), !noalias !11200
  tail call void @llvm.x86.sse2.pause(), !noalias !11200
  tail call void @llvm.x86.sse2.pause(), !noalias !11200
  tail call void @llvm.x86.sse2.pause(), !noalias !11200
  tail call void @llvm.x86.sse2.pause(), !noalias !11200
  %niter44.next.7 = add i32 %niter44, 8           ; 2 uses
  %niter44.ncmp.7 = icmp eq i32 %niter44.next.7, %unroll_iter43
  br i1 %niter44.ncmp.7, label %._crit_edge.loopexit.i.i.unr-lcssa, label %.lr.ph.i12.i

bb.j:                                             ; preds = %bb.h
  %i.am = and i64 %i.ag, %i.af
  %i.an = icmp eq i64 %i.am, 0
  br i1 %i.an, label %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataE10start_recvCs7p2uQeJxui2_9deltalake.exit, label %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataE4readCs7p2uQeJxui2_9deltalake.exit.thread

_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i: ; preds = %._crit_edge.loopexit.i20.i, %bb.m, %._crit_edge.loopexit.i.i, %bb.i, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i
  %.sroa.0.1.i = phi i32 [ %i.ae, %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i ], [ 1, %bb.m ], [ %i.at, %._crit_edge.loopexit.i20.i ], [ %i.al, %._crit_edge.loopexit.i.i ], [ 1, %bb.i ]
  %i.ao = load atomic i64, ptr %1 monotonic, align 128, !noalias !11200
  br label %bb.b

bb.k:                                             ; preds = %bb.d
  %i.ap = load i64, ptr %i.e, align 8, !noalias !11200, !noundef !4
  %i.aq = add i64 %i.ap, %i.o
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.d
  %.sroa.01.0.i = phi i64 [ %i.aq, %bb.k ], [ %i.u, %bb.d ]
  %i.ar = cmpxchg weak ptr %1, i64 %.sroa.02.0.i, i64 %.sroa.01.0.i seq_cst monotonic, align 8, !noalias !11200
  %.sroa.18.0.in.i.i = extractvalue { i64, i1 } %i.ar, 1
  br i1 %.sroa.18.0.in.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.not.i16.i = icmp eq i32 %.sroa.0.028.i, 0
  br i1 %.not.i16.i, label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i, label %.lr.ph.i17.i.preheader

.lr.ph.i17.i.preheader:                           ; preds = %bb.m
  %.sroa.0.0.i.i15.i = tail call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.028.i, i32 6) ; 2 uses
  %3 = mul nuw nsw i32 %.sroa.0.0.i.i15.i, %.sroa.0.0.i.i15.i ; 2 uses
  %xtraiter45 = and i32 %3, 5                     ; 3 uses
  %i.as = icmp ult i32 %.sroa.0.028.i, 3
  br i1 %i.as, label %.lr.ph.i17.i.epil.preheader, label %.lr.ph.i17.i.preheader.new

.lr.ph.i17.i.preheader.new:                       ; preds = %.lr.ph.i17.i.preheader
  %unroll_iter49 = and i32 %3, 56
  br label %.lr.ph.i17.i

._crit_edge.loopexit.i20.i.unr-lcssa:             ; preds = %.lr.ph.i17.i
  %lcmp.mod47.not = icmp eq i32 %xtraiter45, 0
  br i1 %lcmp.mod47.not, label %._crit_edge.loopexit.i20.i, label %.lr.ph.i17.i.epil.preheader

.lr.ph.i17.i.epil.preheader:                      ; preds = %._crit_edge.loopexit.i20.i.unr-lcssa, %.lr.ph.i17.i.preheader
  %lcmp.mod48 = icmp ne i32 %xtraiter45, 0
  tail call void @llvm.assume(i1 %lcmp.mod48)
  br label %.lr.ph.i17.i.epil

.lr.ph.i17.i.epil:                                ; preds = %.lr.ph.i17.i.epil, %.lr.ph.i17.i.epil.preheader
  %epil.iter46 = phi i32 [ 0, %.lr.ph.i17.i.epil.preheader ], [ %epil.iter46.next, %.lr.ph.i17.i.epil ]
  tail call void @llvm.x86.sse2.pause(), !noalias !11200
  %epil.iter46.next = add i32 %epil.iter46, 1     ; 2 uses
  %epil.iter46.cmp.not = icmp eq i32 %epil.iter46.next, %xtraiter45
  br i1 %epil.iter46.cmp.not, label %._crit_edge.loopexit.i20.i, label %.lr.ph.i17.i.epil, !llvm.loop !11205

._crit_edge.loopexit.i20.i:                       ; preds = %.lr.ph.i17.i.epil, %._crit_edge.loopexit.i20.i.unr-lcssa
  %i.at = add i32 %.sroa.0.028.i, 1
  br label %_RNvMs1_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5utilsNtB5_7Backoff10spin_light.exit22.i

.lr.ph.i17.i:                                     ; preds = %.lr.ph.i17.i, %.lr.ph.i17.i.preheader.new
  %niter50 = phi i32 [ 0, %.lr.ph.i17.i.preheader.new ], [ %niter50.next.7, %.lr.ph.i17.i ]
  tail call void @llvm.x86.sse2.pause(), !noalias !11200
  tail call void @llvm.x86.sse2.pause(), !noalias !11200
  tail call void @llvm.x86.sse2.pause(), !noalias !11200
  tail call void @llvm.x86.sse2.pause(), !noalias !11200
  tail call void @llvm.x86.sse2.pause(), !noalias !11200
  tail call void @llvm.x86.sse2.pause(), !noalias !11200
  tail call void @llvm.x86.sse2.pause(), !noalias !11200
  tail call void @llvm.x86.sse2.pause(), !noalias !11200
  %niter50.next.7 = add i32 %niter50, 8           ; 2 uses
  %niter50.ncmp.7 = icmp eq i32 %niter50.next.7, %unroll_iter49
  br i1 %niter50.ncmp.7, label %._crit_edge.loopexit.i20.i.unr-lcssa, label %.lr.ph.i17.i

_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataE10start_recvCs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.j
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.au, align 8
  store i64 -9223372036854775808, ptr %0, align 16
  br label %bb.r

_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataE4readCs7p2uQeJxui2_9deltalake.exit.thread: ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.64)
  br label %bb.s

bb.n:                                             ; preds = %bb.l
  %i.av = getelementptr inbounds nuw i8, ptr %i.s, i64 352
  %i.aw = load i64, ptr %i.e, align 8, !noalias !11200, !noundef !4
  %i.ax = add i64 %i.aw, %.sroa.02.0.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.64)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !11206
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(352) %i.a, ptr noundef nonnull align 16 dereferenceable(352) %i.s, i64 352, i1 false), !noalias !11206
  store atomic i64 %i.ax, ptr %i.av release, align 16, !noalias !11206
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(352) %i.b, ptr noundef nonnull align 16 dereferenceable(352) %i.a, i64 352, i1 false), !noalias !11206
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 256
  invoke fastcc void @_RNvMs0_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5wakerNtB5_9SyncWaker6notify(ptr noundef nonnull align 8 %i.ay)
          to label %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataE4readCs7p2uQeJxui2_9deltalake.exit unwind label %bb.o, !noalias !11206

bb.o:                                             ; preds = %bb.n
  %i.az = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 16 dereferenceable(352) %i.b) #37
          to label %bb.q unwind label %bb.p, !noalias !11206

bb.p:                                             ; preds = %bb.o
  %i.ba = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !11206
  unreachable

bb.q:                                             ; preds = %bb.o
  resume { ptr, i32 } %i.az

_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataE4readCs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.n
  %.sroa.02.0.copyload3 = load i64, ptr %i.b, align 16 ; 2 uses
  %.sroa.64.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(344) %.sroa.64, ptr noundef nonnull align 8 dereferenceable(344) %.sroa.64.0..sroa_idx5, i64 344, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !11206
  %i.bb = icmp eq i64 %.sroa.02.0.copyload3, -9223372036854775808
  br i1 %i.bb, label %bb.s, label %bb.t

bb.r:                                             ; preds = %bb.u, %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataE10start_recvCs7p2uQeJxui2_9deltalake.exit
  ret void

bb.s:                                             ; preds = %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataE4readCs7p2uQeJxui2_9deltalake.exit.thread, %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataE4readCs7p2uQeJxui2_9deltalake.exit
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.bc, align 8
  br label %bb.u

bb.t:                                             ; preds = %_RNvMs_NtNtNtCs2pqxYH9ZEk8_3std4sync4mpmc5arrayINtB4_7ChannelNtNtNtCscq8Lx7CD32J_17opentelemetry_sdk5trace6export8SpanDataE4readCs7p2uQeJxui2_9deltalake.exit
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(344) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(344) %.sroa.64, i64 344, i1 false)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.sroa.02.0.copyload3.sink = phi i64 [ %.sroa.02.0.copyload3, %bb.t ], [ -9223372036854775808, %bb.s ]
  store i64 %.sroa.02.0.copyload3.sink, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.64)
  br label %bb.r
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %1, ptr nofree readonly captures(none) %.40.val, i64 noundef range(i64 24, 225) %2, ptr noundef %3) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %.val16 = load ptr, ptr %0, align 8             ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %.val17 = load i64, ptr %i.b, align 8, !noundef !4 ; 2 uses
  %i.c = add i64 %.val17, 1                       ; 6 uses
  %.not6.i = icmp eq i64 %i.c, 0
  br i1 %.not6.i, label %_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.thread19, label %.lr.ph.i

_RNvMsa_NtCs3gpiEk3WpjL_9hashbrown3rawNtB5_13RawTableInner23prepare_rehash_in_place.exit.thread19: ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val16) ]
  %i.d = getelementptr inbounds nuw i8, ptr %.val16, i64 16
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.d, ptr nonnull align 1 %.val16, i64 %i.c, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %._crit_edge

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = lshr i64 %i.c, 4
  %i.f = and i64 %i.c, 15
  %.not10.i.i.i = icmp ne i64 %i.f, 0
  %i.g = zext i1 %.not10.i.i.i to i64
  %.sroa.05.0.i.i.i = add nuw nsw i64 %i.e, %i.g  ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val16) ]
  %xtraiter = and i64 %.sroa.05.0.i.i.i, 1
  %i.h = icmp eq i64 %.sroa.05.0.i.i.i, 1
  br i1 %i.h, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %.sroa.05.0.i.i.i, 2305843009213693950
  br label %bb.b

._crit_edge.i.unr-lcssa:                          ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph.i
  %.sroa.0.08.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.r, %._crit_edge.i.unr-lcssa ]
  %lcmp.mod38 = trunc i64 %.sroa.05.0.i.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod38)
  %i.i = getelementptr inbounds nuw i8, ptr %.val16, i64 %.sroa.0.08.i.epil.init ; 2 uses
  %.val5.i.epil = load <16 x i8>, ptr %i.i, align 16
  %.lobit.i.i.epil = ashr <16 x i8> %.val5.i.epil, splat (i8 7)
  %i.j = bitcast <16 x i8> %.lobit.i.i.epil to <2 x i64>
  %i.k = or <2 x i64> %i.j, splat (i64 -9187201950435737472)
  store <2 x i64> %i.k, ptr %i.i, align 16
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %.epil.preheader
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %. = tail call i64 @llvm.umax.i64(i64 %i.c, i64 16)
  %.27 = tail call i64 @llvm.umin.i64(i64 %i.c, i64 16)
  %i.n = getelementptr inbounds nuw i8, ptr %.val16, i64 %.
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.n, ptr nonnull align 1 %.val16, i64 %.27, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %3, ptr %i.l, align 8
  store i64 %2, ptr %i.m, align 8
  store ptr %0, ptr %i.a, align 8
  br label %.lr.ph

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.new
  %.sroa.0.08.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.r, %bb.b ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.b ]
  %i.o = getelementptr inbounds nuw i8, ptr %.val16, i64 %.sroa.0.08.i ; 2 uses
  %.val5.i = load <16 x i8>, ptr %i.o, align 16
  %.lobit.i.i = ashr <16 x i8> %.val5.i, splat (i8 7)
  %i.p = bitcast <16 x i8> %.lobit.i.i to <2 x i64>
  %i.q = or <2 x i64> %i.p, splat (i64 -9187201950435737472)
  store <2 x i64> %i.q, ptr %i.o, align 16
  %i.r = add i64 %.sroa.0.08.i, 32                ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.val16, i64 %.sroa.0.08.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  %.val5.i.1 = load <16 x i8>, ptr %i.t, align 16
  %.lobit.i.i.1 = ashr <16 x i8> %.val5.i.1, splat (i8 7)
  %i.u = bitcast <16 x i8> %.lobit.i.i.1 to <2 x i64>
  %i.v = or <2 x i64> %i.u, splat (i64 -9187201950435737472)
  store <2 x i64> %i.v, ptr %i.t, align 16
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.unr-lcssa, label %bb.b

._crit_edge.loopexit:                             ; preds = %bb.k
  %.pre = load i64, ptr %i.b, align 8             ; 2 uses
  %.pre13 = add i64 %.pre, 1
  %i.w = lshr i64 %.pre13, 3
  %i.x = mul nuw i64 %i.w, 7
  br label %._crit_edge

end_hunk_3
