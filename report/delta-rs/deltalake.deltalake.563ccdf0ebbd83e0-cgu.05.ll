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
  %.val.i = load ptr, ptr %i.n, align 8, !noalias !8578, !nonnull !11, !noundef !11
  %i.o = getelementptr i8, ptr %i.i, i64 -40
  %.val10.i = load i64, ptr %i.o, align 8, !noalias !8578, !noundef !11 ; 2 uses
  %i.p = getelementptr i8, ptr %i.j, i64 -48
  %.val11.i = load ptr, ptr %i.p, align 8, !noalias !8578, !nonnull !11, !noundef !11
  %i.q = getelementptr i8, ptr %i.j, i64 -40
  %.val12.i = load i64, ptr %i.q, align 8, !noalias !8578, !noundef !11 ; 2 uses
  %spec.store.select.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %.val10.i, i64 range(i64 0, -9223372036854775808) %.val12.i)
  %i.r = tail call i32 @memcmp(ptr nonnull readonly %.val.i, ptr nonnull readonly %.val11.i, i64 %spec.store.select.i.i.i.i.i.i), !alias.scope !8579, !noalias !8578 ; 2 uses
  %i.s = sext i32 %i.r to i64
  %i.t = icmp eq i32 %i.r, 0
  %i.u = sub nsw i64 %.val10.i, %.val12.i
  %spec.select.i.i.i.i.i.i = select i1 %i.t, i64 %i.u, i64 %i.s ; 2 uses
  %i.v = icmp sgt i64 %spec.select.i.i.i.i.i.i, -1 ; 2 uses
  %..i = select i1 %i.v, ptr %i.l, ptr %i.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.m, ptr noundef nonnull align 8 dereferenceable(56) %..i, i64 56, i1 false), !noalias !8578
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
  %.sroa.0.0.val.i = load ptr, ptr %i.ad, align 8, !noalias !8580, !nonnull !11, !noundef !11
  %i.ae = getelementptr i8, ptr %.sroa.0.02.i, i64 16
  %.sroa.0.0.val6.i = load i64, ptr %i.ae, align 8, !noalias !8580, !noundef !11 ; 2 uses
  %i.af = getelementptr i8, ptr %i.ac, i64 8
  %.val.i19 = load ptr, ptr %i.af, align 8, !noalias !8580, !nonnull !11, !noundef !11
  %i.ag = getelementptr i8, ptr %i.ac, i64 16
  %.val7.i = load i64, ptr %i.ag, align 8, !noalias !8580, !noundef !11 ; 2 uses
  %spec.store.select.i.i.i.i.i.i20 = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %.sroa.0.0.val6.i, i64 range(i64 0, -9223372036854775808) %.val7.i)
  %i.ah = tail call i32 @memcmp(ptr nonnull readonly %.sroa.0.0.val.i, ptr nonnull readonly %.val.i19, i64 %spec.store.select.i.i.i.i.i.i20), !alias.scope !8581, !noalias !8580 ; 2 uses
  %i.ai = sext i32 %i.ah to i64
  %i.aj = icmp eq i32 %i.ah, 0
  %i.ak = sub nsw i64 %.sroa.0.0.val6.i, %.val7.i
  %spec.select.i.i.i.i.i.i21 = select i1 %i.aj, i64 %i.ak, i64 %i.ai ; 2 uses
  %i.al = icmp sgt i64 %spec.select.i.i.i.i.i.i21, -1 ; 2 uses
  %spec.select.i = select i1 %i.al, ptr %i.ac, ptr %.sroa.0.02.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ab, ptr noundef nonnull align 8 dereferenceable(56) %spec.select.i, i64 56, i1 false), !noalias !8580
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
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.0, ptr align 8 %.sroa.0.0, i64 %i.au, i1 false), !noalias !8582
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
  %.val.i = load ptr, ptr %i.n, align 8, !noalias !8597, !nonnull !11, !noundef !11
  %i.o = getelementptr i8, ptr %i.i, i64 -40
  %.val10.i = load i64, ptr %i.o, align 8, !noalias !8597, !noundef !11 ; 2 uses
  %i.p = getelementptr i8, ptr %i.j, i64 -48
  %.val11.i = load ptr, ptr %i.p, align 8, !noalias !8597, !nonnull !11, !noundef !11
  %i.q = getelementptr i8, ptr %i.j, i64 -40
  %.val12.i = load i64, ptr %i.q, align 8, !noalias !8597, !noundef !11 ; 2 uses
  %spec.store.select.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %.val10.i, i64 range(i64 0, -9223372036854775808) %.val12.i)
  %i.r = tail call i32 @memcmp(ptr nonnull readonly %.val.i, ptr nonnull readonly %.val11.i, i64 %spec.store.select.i.i.i.i.i.i), !alias.scope !8598, !noalias !8597 ; 2 uses
  %i.s = sext i32 %i.r to i64
  %i.t = icmp eq i32 %i.r, 0
  %i.u = sub nsw i64 %.val10.i, %.val12.i
  %spec.select.i.i.i.i.i.i = select i1 %i.t, i64 %i.u, i64 %i.s ; 2 uses
  %i.v = icmp sgt i64 %spec.select.i.i.i.i.i.i, -1 ; 2 uses
  %..i = select i1 %i.v, ptr %i.l, ptr %i.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.m, ptr noundef nonnull align 8 dereferenceable(56) %..i, i64 56, i1 false), !noalias !8597
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
  %.sroa.0.0.val.i = load ptr, ptr %i.ad, align 8, !noalias !8599, !nonnull !11, !noundef !11
  %i.ae = getelementptr i8, ptr %.sroa.0.02.i, i64 16
  %.sroa.0.0.val6.i = load i64, ptr %i.ae, align 8, !noalias !8599, !noundef !11 ; 2 uses
  %i.af = getelementptr i8, ptr %i.ac, i64 8
  %.val.i19 = load ptr, ptr %i.af, align 8, !noalias !8599, !nonnull !11, !noundef !11
  %i.ag = getelementptr i8, ptr %i.ac, i64 16
  %.val7.i = load i64, ptr %i.ag, align 8, !noalias !8599, !noundef !11 ; 2 uses
  %spec.store.select.i.i.i.i.i.i20 = tail call i64 @llvm.umin.i64(i64 range(i64 0, -9223372036854775808) %.sroa.0.0.val6.i, i64 range(i64 0, -9223372036854775808) %.val7.i)
  %i.ah = tail call i32 @memcmp(ptr nonnull readonly %.sroa.0.0.val.i, ptr nonnull readonly %.val.i19, i64 %spec.store.select.i.i.i.i.i.i20), !alias.scope !8600, !noalias !8599 ; 2 uses
  %i.ai = sext i32 %i.ah to i64
  %i.aj = icmp eq i32 %i.ah, 0
  %i.ak = sub nsw i64 %.sroa.0.0.val6.i, %.val7.i
  %spec.select.i.i.i.i.i.i21 = select i1 %i.aj, i64 %i.ak, i64 %i.ai ; 2 uses
  %i.al = icmp sgt i64 %spec.select.i.i.i.i.i.i21, -1 ; 2 uses
  %spec.select.i = select i1 %i.al, ptr %i.ac, ptr %.sroa.0.02.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ab, ptr noundef nonnull align 8 dereferenceable(56) %spec.select.i, i64 56, i1 false), !noalias !8599
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
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.0, ptr align 8 %.sroa.0.0, i64 %i.au, i1 false), !noalias !8601
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
  %.val = load ptr, ptr %i.p, align 8, !nonnull !11, !noundef !11
  %i.q = getelementptr i8, ptr %i.n, i64 16
  %.val11 = load i64, ptr %i.q, align 8, !noundef !11 ; 2 uses
  %i.r = getelementptr i8, ptr %i.o, i64 8
  %.val12 = load ptr, ptr %i.r, align 8, !nonnull !11, !noundef !11
  %i.s = getelementptr i8, ptr %i.o, i64 16
  %.val13 = load i64, ptr %i.s, align 8, !noundef !11 ; 2 uses
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
  %.val14 = load ptr, ptr %i.aa, align 8, !nonnull !11, !noundef !11
  %i.ab = getelementptr i8, ptr %i.y, i64 16
  %.val15 = load i64, ptr %i.ab, align 8, !noundef !11 ; 2 uses
  %i.ac = getelementptr i8, ptr %i.z, i64 8
  %.val16 = load ptr, ptr %i.ac, align 8, !nonnull !11, !noundef !11
  %i.ad = getelementptr i8, ptr %i.z, i64 16
  %.val17 = load i64, ptr %i.ad, align 8, !noundef !11 ; 2 uses
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
  %.val = load ptr, ptr %i.p, align 8, !nonnull !11, !noundef !11
  %i.q = getelementptr i8, ptr %i.n, i64 16
  %.val11 = load i64, ptr %i.q, align 8, !noundef !11 ; 2 uses
  %i.r = getelementptr i8, ptr %i.o, i64 8
  %.val12 = load ptr, ptr %i.r, align 8, !nonnull !11, !noundef !11
  %i.s = getelementptr i8, ptr %i.o, i64 16
  %.val13 = load i64, ptr %i.s, align 8, !noundef !11 ; 2 uses
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
  %.val14 = load ptr, ptr %i.aa, align 8, !nonnull !11, !noundef !11
  %i.ab = getelementptr i8, ptr %i.y, i64 16
  %.val15 = load i64, ptr %i.ab, align 8, !noundef !11 ; 2 uses
  %i.ac = getelementptr i8, ptr %i.z, i64 8
  %.val16 = load ptr, ptr %i.ac, align 8, !nonnull !11, !noundef !11
  %i.ad = getelementptr i8, ptr %i.z, i64 16
  %.val17 = load i64, ptr %i.ad, align 8, !noundef !11 ; 2 uses
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8623)
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
  %.val10.i = load ptr, ptr %i.m, align 8, !alias.scope !8623, !noalias !8624, !nonnull !11, !noundef !11 ; 2 uses
  %i.n = getelementptr i8, ptr %.sroa.0.081121, i64 16
  %.val11.i = load i64, ptr %i.n, align 8, !alias.scope !8623, !noalias !8624, !noundef !11 ; 4 uses
  %i.o = getelementptr i8, ptr %i.i, i64 8
  %.val12.i = load ptr, ptr %i.o, align 8, !alias.scope !8623, !noalias !8624, !nonnull !11, !noundef !11 ; 2 uses
  %i.p = getelementptr i8, ptr %i.i, i64 16
  %.val13.i = load i64, ptr %i.p, align 8, !alias.scope !8623, !noalias !8624, !noundef !11 ; 4 uses
  %spec.store.select.i.i.i = tail call i64 @llvm.umin.i64(i64 %.val13.i, i64 %.val11.i)
  %i.q = tail call i32 @memcmp(ptr nonnull readonly %.val12.i, ptr nonnull readonly %.val10.i, i64 %spec.store.select.i.i.i), !noalias !8625 ; 2 uses
  %i.r = sext i32 %i.q to i64
  %i.s = icmp eq i32 %i.q, 0
  %i.t = sub i64 %.val13.i, %.val11.i
  %spec.select.i.i.i = select i1 %i.s, i64 %i.t, i64 %i.r ; 2 uses
  %i.u = getelementptr i8, ptr %i.j, i64 8
  %.val8.i = load ptr, ptr %i.u, align 8, !alias.scope !8623, !noalias !8624, !nonnull !11, !noundef !11 ; 2 uses
  %i.v = getelementptr i8, ptr %i.j, i64 16
  %.val9.i = load i64, ptr %i.v, align 8, !alias.scope !8623, !noalias !8624, !noundef !11 ; 4 uses
  %spec.store.select.i.i14.i = tail call i64 @llvm.umin.i64(i64 %.val9.i, i64 %.val11.i)
  %i.w = tail call i32 @memcmp(ptr nonnull readonly %.val8.i, ptr nonnull readonly %.val10.i, i64 %spec.store.select.i.i14.i), !noalias !8625 ; 2 uses
  %i.x = sext i32 %i.w to i64
  %i.y = icmp eq i32 %i.w, 0
  %i.z = sub i64 %.val9.i, %.val11.i
  %spec.select.i.i15.i = select i1 %i.y, i64 %i.z, i64 %i.x
  %i.aa = xor i64 %spec.select.i.i15.i, %spec.select.i.i.i
  %i.ab = icmp slt i64 %i.aa, 0
  br i1 %i.ab, label %_RINvNtNtNtNtCsbvkFyIu7lgC_4core5slice4sort6shared5pivot12choose_pivotNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNCINvMB8_SB15_16sort_unstable_byNCNCNvMNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshotNtB2o_8Snapshot12commit_infos0s_0E0ECs7p2uQeJxui2_9deltalake.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %spec.store.select.i.i16.i = tail call i64 @llvm.umin.i64(i64 %.val9.i, i64 %.val13.i)
  %i.ac = tail call i32 @memcmp(ptr nonnull readonly %.val8.i, ptr nonnull readonly %.val12.i, i64 %spec.store.select.i.i16.i), !noalias !8625 ; 2 uses
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8626)
  tail call void @_RNvMNtCsbvkFyIu7lgC_4core5sliceSNtCsjyY8HP3IvQ6_12object_store10ObjectMeta14swap_uncheckedCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 %.sroa.0.081121, i64 noundef range(i64 17, 96076792050570582) %.sroa.15.080122, i64 noundef 0, i64 noundef range(i64 0, 96076792050570581) %.sroa.0.0.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @27)
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.0.081121, i64 96 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8627)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8628)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !8629
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.b, ptr noundef nonnull align 8 dereferenceable(96) %i.am, i64 96, i1 false), !noalias !8628
  %i.an = mul nuw nsw i64 %.sroa.15.080122, 96
  %i.ao = getelementptr i8, ptr %.sroa.0.081121, i64 %i.an ; 2 uses
  %.sroa.11.033.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.081121, i64 192
end_hunk_0
