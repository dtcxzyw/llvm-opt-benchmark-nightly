Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fontc-rs/original/glyphs_reader-20725db9c81728ed.glyphs_reader.109226b79a13bccd-cgu.15?download=true
inline.NumInlined: 578
inline.NumDeleted: 359
begin_hunk_0_@_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5merge5mergeTjINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEENCINvMNtCsgCecv3eZDcN_5alloc5sliceSBX_7sort_byNCINvXs1o_NtNtNtB1U_11collections5btree3mapINtB2G_8BTreeMapjBZ_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBX_E9from_iterINtNtNtB3F_8adapters3map3MapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map8IntoIterBZ_jENCNvMsH_NtCs1qcNTItuk7F_13glyphs_reader4fontNtB67_7RawFont16v2_to_v3_metricss4_0EE0E0EB69_:bb.a
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %i.q ; 3 uses
  %i.s = zext i1 %i.o to i64
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %i.s ; 3 uses
  %i.u = icmp eq ptr %i.r, %0
  %i.v = icmp eq ptr %i.t, %2
  %or.cond.i = select i1 %i.u, i1 true, i1 %i.v
  br i1 %or.cond.i, label %_RINvMNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5mergeINtB3_10MergeStateTjINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEEE10merge_downNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB1a_7sort_byNCINvXs1o_NtNtNtB2k_11collections5btree3mapINtB37_8BTreeMapjB1c_EINtNtNtNtBb_4iter6traits7collect12FromIteratorB1a_E9from_iterINtNtNtB47_8adapters3map3MapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map8IntoIterB1c_jENCNvMsH_NtCs1qcNTItuk7F_13glyphs_reader4fontNtB6B_7RawFont16v2_to_v3_metricss4_0EE0E0EB6D_.exit, label %.preheader

.lr.ph.i:                                         ; preds = %.critedge, %.lr.ph.i
  %i.w = phi ptr [ %i.ae, %.lr.ph.i ], [ %0, %.critedge ] ; 2 uses
  %.sroa.0.02.i = phi ptr [ %i.ad, %.lr.ph.i ], [ %i.f, %.critedge ] ; 3 uses
  %i.x = phi ptr [ %i.ab, %.lr.ph.i ], [ %2, %.critedge ] ; 3 uses
  %.sroa.0.0.val.i = load i64, ptr %.sroa.0.02.i, align 8, !noalias !674, !noundef !4
  %.val.i18 = load i64, ptr %i.x, align 8, !noalias !674, !noundef !4
  %i.y = icmp ult i64 %.sroa.0.0.val.i, %.val.i18 ; 3 uses
  %i.z = xor i1 %i.y, true
  %.sroa.05.0.i = select i1 %i.y, ptr %.sroa.0.02.i, ptr %i.x
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.w, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.05.0.i, i64 16, i1 false), !noalias !674
  %i.aa = zext i1 %i.z to i64
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.x, i64 %i.aa ; 3 uses
  %i.ac = zext i1 %i.y to i64
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.02.i, i64 %i.ac ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 2 uses
  %i.af = icmp ne ptr %i.ab, %i.i
  %i.ag = icmp ne ptr %i.ad, %i.g
  %or.cond.i19 = select i1 %i.af, i1 %i.ag, i1 false
  br i1 %or.cond.i19, label %.lr.ph.i, label %_RINvMNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5mergeINtB3_10MergeStateTjINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEEE10merge_downNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB1a_7sort_byNCINvXs1o_NtNtNtB2k_11collections5btree3mapINtB37_8BTreeMapjB1c_EINtNtNtNtBb_4iter6traits7collect12FromIteratorB1a_E9from_iterINtNtNtB47_8adapters3map3MapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map8IntoIterB1c_jENCNvMsH_NtCs1qcNTItuk7F_13glyphs_reader4fontNtB6B_7RawFont16v2_to_v3_metricss4_0EE0E0EB6D_.exit

_RINvMNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5mergeINtB3_10MergeStateTjINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEEE10merge_downNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB1a_7sort_byNCINvXs1o_NtNtNtB2k_11collections5btree3mapINtB37_8BTreeMapjB1c_EINtNtNtNtBb_4iter6traits7collect12FromIteratorB1a_E9from_iterINtNtNtB47_8adapters3map3MapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map8IntoIterB1c_jENCNvMsH_NtCs1qcNTItuk7F_13glyphs_reader4fontNtB6B_7RawFont16v2_to_v3_metricss4_0EE0E0EB6D_.exit: ; preds = %.lr.ph.i, %.preheader
  %.sroa.13.0 = phi ptr [ %i.r, %.preheader ], [ %i.ae, %.lr.ph.i ]
  %.sroa.7.0 = phi ptr [ %i.t, %.preheader ], [ %i.i, %.lr.ph.i ]
  %.sroa.0.0 = phi ptr [ %2, %.preheader ], [ %i.ab, %.lr.ph.i ] ; 2 uses
  %i.ah = ptrtoint ptr %.sroa.7.0 to i64
  %i.ai = ptrtoint ptr %.sroa.0.0 to i64
  %i.aj = sub nuw i64 %i.ah, %i.ai
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.0, ptr align 8 %.sroa.0.0, i64 %i.aj, i1 false), !noalias !675
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a, %_RINvMNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5mergeINtB3_10MergeStateTjINtCsidwnrrI1Awe_13ordered_float12OrderedFloatdEEE10merge_downNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB1a_7sort_byNCINvXs1o_NtNtNtB2k_11collections5btree3mapINtB37_8BTreeMapjB1c_EINtNtNtNtBb_4iter6traits7collect12FromIteratorB1a_E9from_iterINtNtNtB47_8adapters3map3MapINtNtNtNtCs5Xr050g3D4S_3std11collections4hash3map8IntoIterB1c_jENCNvMsH_NtCs1qcNTItuk7F_13glyphs_reader4fontNtB6B_7RawFont16v2_to_v3_metricss4_0EE0E0EB6D_.exit
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5merge5mergeTjNtNtCsgCecv3eZDcN_5alloc6string6StringENCINvMNtB13_5sliceSBX_7sort_byNCINvXs1o_NtNtNtB13_11collections5btree3mapINtB2g_8BTreeMapjBZ_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBX_E9from_iterINtNtNtB3f_8adapters3map3MapINtNtB4b_9enumerate9EnumerateINtNtNtB13_3vec9into_iter8IntoIterNtNtCs1qcNTItuk7F_13glyphs_reader4font9RawMetricEENCNvXsQ_B5B_NtB5B_4FontINtNtBa_7convert7TryFromNtB5B_7RawFontE8try_froms2_0EE0E0EB5D_(ptr noalias nofree noundef nonnull align 8 captures(address) %0, i64 noundef range(i64 0, 288230376151711744) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 288230376151711744) %3, i64 noundef %4, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %5) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %4, 0
  %i.b = icmp uge i64 %4, %1
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = sub nuw nsw i64 %1, %4                   ; 2 uses
  %i.d = tail call i64 @llvm.umin.i64(i64 %4, i64 %i.c) ; 2 uses
  %i.e = icmp samesign ult i64 %3, %i.d
  br i1 %i.e, label %bb.c, label %.critedge

.critedge:                                        ; preds = %bb.b
  %i.f = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %4 ; 3 uses
  %i.g = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %1 ; 2 uses
  %.not = icmp samesign ugt i64 %4, %i.c          ; 2 uses
  %spec.select = select i1 %.not, ptr %i.f, ptr %0
  %i.h = shl nuw nsw i64 %i.d, 5                  ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %spec.select, i64 %i.h, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 %i.h ; 3 uses
  br i1 %.not, label %.preheader, label %.lr.ph.i

.preheader:                                       ; preds = %.critedge, %.preheader
  %i.j = phi ptr [ %i.t, %.preheader ], [ %i.i, %.critedge ]
  %i.k = phi ptr [ %i.r, %.preheader ], [ %i.f, %.critedge ]
  %.sroa.0.0.i = phi ptr [ %i.n, %.preheader ], [ %i.g, %.critedge ]
  %i.l = getelementptr inbounds i8, ptr %i.k, i64 -32 ; 3 uses
  %i.m = getelementptr inbounds i8, ptr %i.j, i64 -32 ; 3 uses
  %i.n = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -32 ; 2 uses
  %.val.i = load i64, ptr %i.m, align 8, !noalias !684, !noundef !4
  %.val12.i = load i64, ptr %i.l, align 8, !noalias !684, !noundef !4
  %i.o = icmp ult i64 %.val.i, %.val12.i          ; 3 uses
  %..i = select i1 %i.o, ptr %i.l, ptr %i.m
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull align 8 dereferenceable(32) %..i, i64 32, i1 false), !noalias !684
  %i.p = xor i1 %i.o, true
  %i.q = zext i1 %i.p to i64
  %i.r = getelementptr inbounds nuw [32 x i8], ptr %i.l, i64 %i.q ; 3 uses
  %i.s = zext i1 %i.o to i64
  %i.t = getelementptr inbounds nuw [32 x i8], ptr %i.m, i64 %i.s ; 3 uses
  %i.u = icmp eq ptr %i.r, %0
  %i.v = icmp eq ptr %i.t, %2
  %or.cond.i = select i1 %i.u, i1 true, i1 %i.v
  br i1 %or.cond.i, label %_RINvMNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5mergeINtB3_10MergeStateTjNtNtCsgCecv3eZDcN_5alloc6string6StringEE10merge_downNCINvMNtB1g_5sliceSB1a_7sort_byNCINvXs1o_NtNtNtB1g_11collections5btree3mapINtB2H_8BTreeMapjB1c_EINtNtNtNtBb_4iter6traits7collect12FromIteratorB1a_E9from_iterINtNtNtB3H_8adapters3map3MapINtNtB4E_9enumerate9EnumerateINtNtNtB1g_3vec9into_iter8IntoIterNtNtCs1qcNTItuk7F_13glyphs_reader4font9RawMetricEENCNvXsQ_B64_NtB64_4FontINtNtBb_7convert7TryFromNtB64_7RawFontE8try_froms2_0EE0E0EB66_.exit, label %.preheader

.lr.ph.i:                                         ; preds = %.critedge, %.lr.ph.i
  %i.w = phi ptr [ %i.ae, %.lr.ph.i ], [ %0, %.critedge ] ; 2 uses
  %.sroa.0.02.i = phi ptr [ %i.ad, %.lr.ph.i ], [ %i.f, %.critedge ] ; 3 uses
  %i.x = phi ptr [ %i.ab, %.lr.ph.i ], [ %2, %.critedge ] ; 3 uses
  %.sroa.0.0.val.i = load i64, ptr %.sroa.0.02.i, align 8, !noalias !685, !noundef !4
  %.val.i18 = load i64, ptr %i.x, align 8, !noalias !685, !noundef !4
  %i.y = icmp ult i64 %.sroa.0.0.val.i, %.val.i18 ; 3 uses
  %i.z = xor i1 %i.y, true
  %.sroa.05.0.i = select i1 %i.y, ptr %.sroa.0.02.i, ptr %i.x
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.w, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.05.0.i, i64 32, i1 false), !noalias !685
  %i.aa = zext i1 %i.z to i64
  %i.ab = getelementptr inbounds nuw [32 x i8], ptr %i.x, i64 %i.aa ; 3 uses
  %i.ac = zext i1 %i.y to i64
  %i.ad = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.02.i, i64 %i.ac ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.w, i64 32 ; 2 uses
  %i.af = icmp ne ptr %i.ab, %i.i
  %i.ag = icmp ne ptr %i.ad, %i.g
  %or.cond.i19 = select i1 %i.af, i1 %i.ag, i1 false
  br i1 %or.cond.i19, label %.lr.ph.i, label %_RINvMNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5mergeINtB3_10MergeStateTjNtNtCsgCecv3eZDcN_5alloc6string6StringEE10merge_downNCINvMNtB1g_5sliceSB1a_7sort_byNCINvXs1o_NtNtNtB1g_11collections5btree3mapINtB2H_8BTreeMapjB1c_EINtNtNtNtBb_4iter6traits7collect12FromIteratorB1a_E9from_iterINtNtNtB3H_8adapters3map3MapINtNtB4E_9enumerate9EnumerateINtNtNtB1g_3vec9into_iter8IntoIterNtNtCs1qcNTItuk7F_13glyphs_reader4font9RawMetricEENCNvXsQ_B64_NtB64_4FontINtNtBb_7convert7TryFromNtB64_7RawFontE8try_froms2_0EE0E0EB66_.exit

_RINvMNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5mergeINtB3_10MergeStateTjNtNtCsgCecv3eZDcN_5alloc6string6StringEE10merge_downNCINvMNtB1g_5sliceSB1a_7sort_byNCINvXs1o_NtNtNtB1g_11collections5btree3mapINtB2H_8BTreeMapjB1c_EINtNtNtNtBb_4iter6traits7collect12FromIteratorB1a_E9from_iterINtNtNtB3H_8adapters3map3MapINtNtB4E_9enumerate9EnumerateINtNtNtB1g_3vec9into_iter8IntoIterNtNtCs1qcNTItuk7F_13glyphs_reader4font9RawMetricEENCNvXsQ_B64_NtB64_4FontINtNtBb_7convert7TryFromNtB64_7RawFontE8try_froms2_0EE0E0EB66_.exit: ; preds = %.lr.ph.i, %.preheader
  %.sroa.13.0 = phi ptr [ %i.r, %.preheader ], [ %i.ae, %.lr.ph.i ]
  %.sroa.7.0 = phi ptr [ %i.t, %.preheader ], [ %i.i, %.lr.ph.i ]
  %.sroa.0.0 = phi ptr [ %2, %.preheader ], [ %i.ab, %.lr.ph.i ] ; 2 uses
  %i.ah = ptrtoint ptr %.sroa.7.0 to i64
  %i.ai = ptrtoint ptr %.sroa.0.0 to i64
  %i.aj = sub nuw i64 %i.ah, %i.ai
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.0, ptr align 8 %.sroa.0.0, i64 %i.aj, i1 false), !noalias !686
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a, %_RINvMNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5mergeINtB3_10MergeStateTjNtNtCsgCecv3eZDcN_5alloc6string6StringEE10merge_downNCINvMNtB1g_5sliceSB1a_7sort_byNCINvXs1o_NtNtNtB1g_11collections5btree3mapINtB2H_8BTreeMapjB1c_EINtNtNtNtBb_4iter6traits7collect12FromIteratorB1a_E9from_iterINtNtNtB3H_8adapters3map3MapINtNtB4E_9enumerate9EnumerateINtNtNtB1g_3vec9into_iter8IntoIterNtNtCs1qcNTItuk7F_13glyphs_reader4font9RawMetricEENCNvXsQ_B64_NtB64_4FontINtNtBb_7convert7TryFromNtB64_7RawFontE8try_froms2_0EE0E0EB66_.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5merge5mergeTlNtCs9NoVXegZYB5_8smol_str7SmolStrENvYBX_NtNtBa_3cmp10PartialOrd2ltECs1qcNTItuk7F_13glyphs_reader(ptr noalias nofree noundef nonnull align 8 captures(address, read_provenance) %0, i64 noundef range(i64 0, 288230376151711744) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 288230376151711744) %3, i64 noundef %4, ptr noalias nofree noundef nonnull readnone captures(none) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %4, 0
  %i.b = icmp uge i64 %4, %1
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = sub nuw nsw i64 %1, %4                   ; 2 uses
  %i.d = tail call i64 @llvm.umin.i64(i64 %4, i64 %i.c) ; 2 uses
  %i.e = icmp samesign ult i64 %3, %i.d
  br i1 %i.e, label %bb.g, label %.critedge

.critedge:                                        ; preds = %bb.b
  %i.f = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %4 ; 3 uses
  %i.g = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %1 ; 2 uses
  %.not = icmp samesign ugt i64 %4, %i.c          ; 2 uses
  %spec.select = select i1 %.not, ptr %i.f, ptr %0
  %i.h = shl nuw nsw i64 %i.d, 5                  ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %spec.select, i64 %i.h, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 %i.h ; 4 uses
  br i1 %.not, label %.preheader, label %.lr.ph.i

.preheader:                                       ; preds = %.critedge, %_RNvYNvYTlNtCs9NoVXegZYB5_8smol_str7SmolStrENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtBJ_3ops8function5FnMutTRB5_B1P_EE8call_mutCs1qcNTItuk7F_13glyphs_reader.exit.i
  %.sroa.13.2 = phi ptr [ %i.u, %_RNvYNvYTlNtCs9NoVXegZYB5_8smol_str7SmolStrENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtBJ_3ops8function5FnMutTRB5_B1P_EE8call_mutCs1qcNTItuk7F_13glyphs_reader.exit.i ], [ %i.f, %.critedge ] ; 3 uses
  %.sroa.7.2 = phi ptr [ %i.w, %_RNvYNvYTlNtCs9NoVXegZYB5_8smol_str7SmolStrENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtBJ_3ops8function5FnMutTRB5_B1P_EE8call_mutCs1qcNTItuk7F_13glyphs_reader.exit.i ], [ %i.i, %.critedge ] ; 3 uses
  %.sroa.0.0.i = phi ptr [ %i.l, %_RNvYNvYTlNtCs9NoVXegZYB5_8smol_str7SmolStrENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtBJ_3ops8function5FnMutTRB5_B1P_EE8call_mutCs1qcNTItuk7F_13glyphs_reader.exit.i ], [ %i.g, %.critedge ]
  %i.j = getelementptr inbounds i8, ptr %.sroa.13.2, i64 -32 ; 3 uses
  %i.k = getelementptr inbounds i8, ptr %.sroa.7.2, i64 -32 ; 3 uses
  %i.l = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !711)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !712)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !713)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !714)
  %.val.i.i.i = load i32, ptr %i.k, align 4, !alias.scope !715, !noalias !716, !noundef !4 ; 2 uses
  %.val3.i.i.i = load i32, ptr %i.j, align 4, !alias.scope !717, !noalias !716, !noundef !4 ; 2 uses
  %i.m = icmp eq i32 %.val.i.i.i, %.val3.i.i.i
  br i1 %i.m, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.preheader
  %i.n = icmp slt i32 %.val.i.i.i, %.val3.i.i.i
  br label %_RNvYNvYTlNtCs9NoVXegZYB5_8smol_str7SmolStrENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtBJ_3ops8function5FnMutTRB5_B1P_EE8call_mutCs1qcNTItuk7F_13glyphs_reader.exit.i

bb.d:                                             ; preds = %.preheader
  %i.o = getelementptr inbounds i8, ptr %.sroa.7.2, i64 -24
  %i.p = getelementptr inbounds i8, ptr %.sroa.13.2, i64 -24
  %i.q = invoke noundef i8 @_RNvXsd_Cs9NoVXegZYB5_8smol_strNtB5_7SmolStrNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd11partial_cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.o, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.p)
          to label %.noexc unwind label %.loopexit ; 2 uses

.noexc:                                           ; preds = %bb.d
  %.not.i.i.i.i = icmp ne i8 %i.q, -2
  %i.r = icmp slt i8 %i.q, 0
  %.sroa.0.0.i4.i.i.i = and i1 %.not.i.i.i.i, %i.r
  br label %_RNvYNvYTlNtCs9NoVXegZYB5_8smol_str7SmolStrENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtBJ_3ops8function5FnMutTRB5_B1P_EE8call_mutCs1qcNTItuk7F_13glyphs_reader.exit.i

_RNvYNvYTlNtCs9NoVXegZYB5_8smol_str7SmolStrENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtBJ_3ops8function5FnMutTRB5_B1P_EE8call_mutCs1qcNTItuk7F_13glyphs_reader.exit.i: ; preds = %.noexc, %bb.c
  %.sroa.0.0.i.i.i = phi i1 [ %i.n, %bb.c ], [ %.sroa.0.0.i4.i.i.i, %.noexc ] ; 3 uses
  %..i = select i1 %.sroa.0.0.i.i.i, ptr %i.j, ptr %i.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %..i, i64 32, i1 false), !noalias !716
  %i.s = xor i1 %.sroa.0.0.i.i.i, true
  %i.t = zext i1 %i.s to i64
  %i.u = getelementptr inbounds nuw [32 x i8], ptr %i.j, i64 %i.t ; 3 uses
  %i.v = zext i1 %.sroa.0.0.i.i.i to i64
  %i.w = getelementptr inbounds nuw [32 x i8], ptr %i.k, i64 %i.v ; 3 uses
  %i.x = icmp eq ptr %i.u, %0
  %i.y = icmp eq ptr %i.w, %2
  %or.cond.i = select i1 %i.x, i1 true, i1 %i.y
  br i1 %or.cond.i, label %_RINvMNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5mergeINtB3_10MergeStateTlNtCs9NoVXegZYB5_8smol_str7SmolStrEE10merge_downNvYB1a_NtNtBb_3cmp10PartialOrd2ltECs1qcNTItuk7F_13glyphs_reader.exit, label %.preheader

.lr.ph.i:                                         ; preds = %.critedge, %_RNvYNvYTlNtCs9NoVXegZYB5_8smol_str7SmolStrENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtBJ_3ops8function5FnMutTRB5_B1P_EE8call_mutCs1qcNTItuk7F_13glyphs_reader.exit.i20
  %.sroa.13.3 = phi ptr [ %i.ak, %_RNvYNvYTlNtCs9NoVXegZYB5_8smol_str7SmolStrENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtBJ_3ops8function5FnMutTRB5_B1P_EE8call_mutCs1qcNTItuk7F_13glyphs_reader.exit.i20 ], [ %0, %.critedge ] ; 3 uses
  %.sroa.0.2 = phi ptr [ %i.ah, %_RNvYNvYTlNtCs9NoVXegZYB5_8smol_str7SmolStrENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtBJ_3ops8function5FnMutTRB5_B1P_EE8call_mutCs1qcNTItuk7F_13glyphs_reader.exit.i20 ], [ %2, %.critedge ] ; 5 uses
  %.sroa.0.02.i = phi ptr [ %i.aj, %_RNvYNvYTlNtCs9NoVXegZYB5_8smol_str7SmolStrENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtBJ_3ops8function5FnMutTRB5_B1P_EE8call_mutCs1qcNTItuk7F_13glyphs_reader.exit.i20 ], [ %i.f, %.critedge ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !718)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !719)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !720)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !721)
  %.val.i.i.i18 = load i32, ptr %.sroa.0.02.i, align 8, !alias.scope !722, !noalias !723, !noundef !4 ; 2 uses
  %.val3.i.i.i19 = load i32, ptr %.sroa.0.2, align 8, !alias.scope !724, !noalias !723, !noundef !4 ; 2 uses
  %i.z = icmp eq i32 %.val.i.i.i18, %.val3.i.i.i19
  br i1 %i.z, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i
  %i.aa = icmp slt i32 %.val.i.i.i18, %.val3.i.i.i19
  br label %_RNvYNvYTlNtCs9NoVXegZYB5_8smol_str7SmolStrENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtBJ_3ops8function5FnMutTRB5_B1P_EE8call_mutCs1qcNTItuk7F_13glyphs_reader.exit.i20

bb.f:                                             ; preds = %.lr.ph.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.2, i64 8
  %i.ad = invoke noundef i8 @_RNvXsd_Cs9NoVXegZYB5_8smol_strNtB5_7SmolStrNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd11partial_cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ab, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ac)
          to label %.noexc25 unwind label %.loopexit.split-lp ; 2 uses

.noexc25:                                         ; preds = %bb.f
  %.not.i.i.i.i23 = icmp ne i8 %i.ad, -2
  %i.ae = icmp slt i8 %i.ad, 0
  %.sroa.0.0.i4.i.i.i24 = and i1 %.not.i.i.i.i23, %i.ae
  br label %_RNvYNvYTlNtCs9NoVXegZYB5_8smol_str7SmolStrENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtBJ_3ops8function5FnMutTRB5_B1P_EE8call_mutCs1qcNTItuk7F_13glyphs_reader.exit.i20

_RNvYNvYTlNtCs9NoVXegZYB5_8smol_str7SmolStrENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtBJ_3ops8function5FnMutTRB5_B1P_EE8call_mutCs1qcNTItuk7F_13glyphs_reader.exit.i20: ; preds = %.noexc25, %bb.e
  %.sroa.0.0.i.i.i21 = phi i1 [ %i.aa, %bb.e ], [ %.sroa.0.0.i4.i.i.i24, %.noexc25 ] ; 3 uses
  %i.af = xor i1 %.sroa.0.0.i.i.i21, true
  %.sroa.05.0.i = select i1 %.sroa.0.0.i.i.i21, ptr %.sroa.0.02.i, ptr %.sroa.0.2
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.13.3, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.05.0.i, i64 32, i1 false), !noalias !723
  %i.ag = zext i1 %i.af to i64
  %i.ah = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.2, i64 %i.ag ; 3 uses
  %i.ai = zext i1 %.sroa.0.0.i.i.i21 to i64
  %i.aj = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.02.i, i64 %i.ai ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.13.3, i64 32 ; 2 uses
  %i.al = icmp ne ptr %i.ah, %i.i
  %i.am = icmp ne ptr %i.aj, %i.g
  %or.cond.i22 = select i1 %i.al, i1 %i.am, i1 false
  br i1 %or.cond.i22, label %.lr.ph.i, label %_RINvMNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5mergeINtB3_10MergeStateTlNtCs9NoVXegZYB5_8smol_str7SmolStrEE10merge_downNvYB1a_NtNtBb_3cmp10PartialOrd2ltECs1qcNTItuk7F_13glyphs_reader.exit

_RINvMNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5mergeINtB3_10MergeStateTlNtCs9NoVXegZYB5_8smol_str7SmolStrEE10merge_downNvYB1a_NtNtBb_3cmp10PartialOrd2ltECs1qcNTItuk7F_13glyphs_reader.exit: ; preds = %_RNvYNvYTlNtCs9NoVXegZYB5_8smol_str7SmolStrENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtBJ_3ops8function5FnMutTRB5_B1P_EE8call_mutCs1qcNTItuk7F_13glyphs_reader.exit.i20, %_RNvYNvYTlNtCs9NoVXegZYB5_8smol_str7SmolStrENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtBJ_3ops8function5FnMutTRB5_B1P_EE8call_mutCs1qcNTItuk7F_13glyphs_reader.exit.i
  %.sroa.13.1 = phi ptr [ %i.u, %_RNvYNvYTlNtCs9NoVXegZYB5_8smol_str7SmolStrENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtBJ_3ops8function5FnMutTRB5_B1P_EE8call_mutCs1qcNTItuk7F_13glyphs_reader.exit.i ], [ %i.ak, %_RNvYNvYTlNtCs9NoVXegZYB5_8smol_str7SmolStrENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtBJ_3ops8function5FnMutTRB5_B1P_EE8call_mutCs1qcNTItuk7F_13glyphs_reader.exit.i20 ]
  %.sroa.7.1 = phi ptr [ %i.w, %_RNvYNvYTlNtCs9NoVXegZYB5_8smol_str7SmolStrENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtBJ_3ops8function5FnMutTRB5_B1P_EE8call_mutCs1qcNTItuk7F_13glyphs_reader.exit.i ], [ %i.i, %_RNvYNvYTlNtCs9NoVXegZYB5_8smol_str7SmolStrENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtBJ_3ops8function5FnMutTRB5_B1P_EE8call_mutCs1qcNTItuk7F_13glyphs_reader.exit.i20 ]
  %.sroa.0.1 = phi ptr [ %2, %_RNvYNvYTlNtCs9NoVXegZYB5_8smol_str7SmolStrENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtBJ_3ops8function5FnMutTRB5_B1P_EE8call_mutCs1qcNTItuk7F_13glyphs_reader.exit.i ], [ %i.ah, %_RNvYNvYTlNtCs9NoVXegZYB5_8smol_str7SmolStrENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtBJ_3ops8function5FnMutTRB5_B1P_EE8call_mutCs1qcNTItuk7F_13glyphs_reader.exit.i20 ] ; 2 uses
  %i.an = ptrtoint ptr %.sroa.7.1 to i64
  %i.ao = ptrtoint ptr %.sroa.0.1 to i64
  %i.ap = sub nuw i64 %i.an, %i.ao
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.1, ptr align 8 %.sroa.0.1, i64 %i.ap, i1 false), !noalias !725
  br label %bb.g

bb.g:                                             ; preds = %bb.b, %bb.a, %_RINvMNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5mergeINtB3_10MergeStateTlNtCs9NoVXegZYB5_8smol_str7SmolStrEE10merge_downNvYB1a_NtNtBb_3cmp10PartialOrd2ltECs1qcNTItuk7F_13glyphs_reader.exit
  ret void

.loopexit:                                        ; preds = %bb.d
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

.loopexit.split-lp:                               ; preds = %bb.f
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.h:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %.sroa.13.0 = phi ptr [ %.sroa.13.2, %.loopexit ], [ %.sroa.13.3, %.loopexit.split-lp ]
  %.sroa.7.0 = phi ptr [ %.sroa.7.2, %.loopexit ], [ %i.i, %.loopexit.split-lp ]
  %.sroa.0.0 = phi ptr [ %2, %.loopexit ], [ %.sroa.0.2, %.loopexit.split-lp ] ; 2 uses
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.aq = ptrtoint ptr %.sroa.7.0 to i64
  %i.ar = ptrtoint ptr %.sroa.0.0 to i64
  %i.as = sub nuw i64 %i.aq, %i.ar
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %.sroa.13.0, ptr nonnull align 8 %.sroa.0.0, i64 %i.as, i1 false), !noalias !726
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5merge5mergeTxxENCINvMNtCsgCecv3eZDcN_5alloc5sliceSBX_7sort_byNCINvXs1o_NtNtNtB19_11collections5btree3mapINtB1V_8BTreeMapxxEINtNtNtNtBa_4iter6traits7collect12FromIteratorBX_E9from_iterINtNtNtB2S_8adapters10filter_map9FilterMapINtB1V_4IterNtCs9NoVXegZYB5_8smol_str7SmolStrNtNtCs1qcNTItuk7F_13glyphs_reader5plist5PlistENCNvXsl_NtB5c_4fontB58_NtB60_14PlistParamsExt13as_gasp_table0EE0E0EB5c_(ptr noalias nofree noundef nonnull align 8 captures(address) %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i64 noundef %4, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %5) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %4, 0
  %i.b = icmp uge i64 %4, %1
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = sub nuw nsw i64 %1, %4                   ; 2 uses
  %i.d = tail call i64 @llvm.umin.i64(i64 %4, i64 %i.c) ; 2 uses
  %i.e = icmp samesign ult i64 %3, %i.d
  br i1 %i.e, label %bb.c, label %.critedge

.critedge:                                        ; preds = %bb.b
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %4 ; 3 uses
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %1 ; 2 uses
  %.not = icmp samesign ugt i64 %4, %i.c          ; 2 uses
  %spec.select = select i1 %.not, ptr %i.f, ptr %0
  %i.h = shl nuw nsw i64 %i.d, 4                  ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %spec.select, i64 %i.h, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 %i.h ; 3 uses
  br i1 %.not, label %.preheader, label %.lr.ph.i

.preheader:                                       ; preds = %.critedge, %.preheader
  %i.j = phi ptr [ %i.t, %.preheader ], [ %i.i, %.critedge ]
  %i.k = phi ptr [ %i.r, %.preheader ], [ %i.f, %.critedge ]
  %.sroa.0.0.i = phi ptr [ %i.n, %.preheader ], [ %i.g, %.critedge ]
  %i.l = getelementptr inbounds i8, ptr %i.k, i64 -16 ; 3 uses
  %i.m = getelementptr inbounds i8, ptr %i.j, i64 -16 ; 3 uses
  %i.n = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -16 ; 2 uses
  %.val.i = load i64, ptr %i.m, align 8, !noalias !735, !noundef !4
  %.val12.i = load i64, ptr %i.l, align 8, !noalias !735, !noundef !4
  %i.o = icmp slt i64 %.val.i, %.val12.i          ; 3 uses
  %..i = select i1 %i.o, ptr %i.l, ptr %i.m
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull align 8 dereferenceable(16) %..i, i64 16, i1 false), !noalias !735
  %i.p = xor i1 %i.o, true
  %i.q = zext i1 %i.p to i64
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %i.q ; 3 uses
  %i.s = zext i1 %i.o to i64
  %i.t = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %i.s ; 3 uses
  %i.u = icmp eq ptr %i.r, %0
  %i.v = icmp eq ptr %i.t, %2
  %or.cond.i = select i1 %i.u, i1 true, i1 %i.v
  br i1 %or.cond.i, label %_RINvMNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5mergeINtB3_10MergeStateTxxEE10merge_downNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB1a_7sort_byNCINvXs1o_NtNtNtB1z_11collections5btree3mapINtB2m_8BTreeMapxxEINtNtNtNtBb_4iter6traits7collect12FromIteratorB1a_E9from_iterINtNtNtB3j_8adapters10filter_map9FilterMapINtB2m_4IterNtCs9NoVXegZYB5_8smol_str7SmolStrNtNtCs1qcNTItuk7F_13glyphs_reader5plist5PlistENCNvXsl_NtB5E_4fontB5A_NtB6s_14PlistParamsExt13as_gasp_table0EE0E0EB5E_.exit, label %.preheader

.lr.ph.i:                                         ; preds = %.critedge, %.lr.ph.i
  %i.w = phi ptr [ %i.ae, %.lr.ph.i ], [ %0, %.critedge ] ; 2 uses
  %.sroa.0.02.i = phi ptr [ %i.ad, %.lr.ph.i ], [ %i.f, %.critedge ] ; 3 uses
  %i.x = phi ptr [ %i.ab, %.lr.ph.i ], [ %2, %.critedge ] ; 3 uses
  %.sroa.0.0.val.i = load i64, ptr %.sroa.0.02.i, align 8, !noalias !736, !noundef !4
  %.val.i18 = load i64, ptr %i.x, align 8, !noalias !736, !noundef !4
  %i.y = icmp slt i64 %.sroa.0.0.val.i, %.val.i18 ; 3 uses
  %i.z = xor i1 %i.y, true
  %.sroa.05.0.i = select i1 %i.y, ptr %.sroa.0.02.i, ptr %i.x
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.w, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.05.0.i, i64 16, i1 false), !noalias !736
  %i.aa = zext i1 %i.z to i64
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.x, i64 %i.aa ; 3 uses
  %i.ac = zext i1 %i.y to i64
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.02.i, i64 %i.ac ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 2 uses
  %i.af = icmp ne ptr %i.ab, %i.i
  %i.ag = icmp ne ptr %i.ad, %i.g
  %or.cond.i19 = select i1 %i.af, i1 %i.ag, i1 false
  br i1 %or.cond.i19, label %.lr.ph.i, label %_RINvMNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5mergeINtB3_10MergeStateTxxEE10merge_downNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB1a_7sort_byNCINvXs1o_NtNtNtB1z_11collections5btree3mapINtB2m_8BTreeMapxxEINtNtNtNtBb_4iter6traits7collect12FromIteratorB1a_E9from_iterINtNtNtB3j_8adapters10filter_map9FilterMapINtB2m_4IterNtCs9NoVXegZYB5_8smol_str7SmolStrNtNtCs1qcNTItuk7F_13glyphs_reader5plist5PlistENCNvXsl_NtB5E_4fontB5A_NtB6s_14PlistParamsExt13as_gasp_table0EE0E0EB5E_.exit

_RINvMNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5mergeINtB3_10MergeStateTxxEE10merge_downNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB1a_7sort_byNCINvXs1o_NtNtNtB1z_11collections5btree3mapINtB2m_8BTreeMapxxEINtNtNtNtBb_4iter6traits7collect12FromIteratorB1a_E9from_iterINtNtNtB3j_8adapters10filter_map9FilterMapINtB2m_4IterNtCs9NoVXegZYB5_8smol_str7SmolStrNtNtCs1qcNTItuk7F_13glyphs_reader5plist5PlistENCNvXsl_NtB5E_4fontB5A_NtB6s_14PlistParamsExt13as_gasp_table0EE0E0EB5E_.exit: ; preds = %.lr.ph.i, %.preheader
  %.sroa.13.0 = phi ptr [ %i.r, %.preheader ], [ %i.ae, %.lr.ph.i ]
  %.sroa.7.0 = phi ptr [ %i.t, %.preheader ], [ %i.i, %.lr.ph.i ]
  %.sroa.0.0 = phi ptr [ %2, %.preheader ], [ %i.ab, %.lr.ph.i ] ; 2 uses
  %i.ah = ptrtoint ptr %.sroa.7.0 to i64
  %i.ai = ptrtoint ptr %.sroa.0.0 to i64
  %i.aj = sub nuw i64 %i.ah, %i.ai
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.0, ptr align 8 %.sroa.0.0, i64 %i.aj, i1 false), !noalias !737
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a, %_RINvMNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5mergeINtB3_10MergeStateTxxEE10merge_downNCINvMNtCsgCecv3eZDcN_5alloc5sliceSB1a_7sort_byNCINvXs1o_NtNtNtB1z_11collections5btree3mapINtB2m_8BTreeMapxxEINtNtNtNtBb_4iter6traits7collect12FromIteratorB1a_E9from_iterINtNtNtB3j_8adapters10filter_map9FilterMapINtB2m_4IterNtCs9NoVXegZYB5_8smol_str7SmolStrNtNtCs1qcNTItuk7F_13glyphs_reader5plist5PlistENCNvXsl_NtB5E_4fontB5A_NtB6s_14PlistParamsExt13as_gasp_table0EE0E0EB5E_.exit
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define hidden void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5merge5mergemNvYmNtNtBa_3cmp10PartialOrd2ltECs1qcNTItuk7F_13glyphs_reader(ptr noalias nofree noundef nonnull align 4 captures(address) %0, i64 noundef range(i64 0, 2305843009213693952) %1, ptr noalias nofree noundef nonnull align 4 %2, i64 noundef range(i64 0, 2305843009213693952) %3, i64 noundef %4, ptr noalias nofree noundef nonnull readnone captures(none) %5) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %4, 0
  %i.b = icmp uge i64 %4, %1
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = sub nuw nsw i64 %1, %4                   ; 2 uses
  %i.d = tail call i64 @llvm.umin.i64(i64 %4, i64 %i.c) ; 2 uses
  %i.e = icmp samesign ult i64 %3, %i.d
  br i1 %i.e, label %bb.c, label %.critedge

.critedge:                                        ; preds = %bb.b
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %4 ; 3 uses
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %1 ; 2 uses
  %.not = icmp samesign ugt i64 %4, %i.c          ; 2 uses
  %spec.select = select i1 %.not, ptr %i.f, ptr %0
  %i.h = shl nuw nsw i64 %i.d, 2                  ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %2, ptr nonnull align 4 %spec.select, i64 %i.h, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 %i.h ; 3 uses
  br i1 %.not, label %.preheader, label %.lr.ph.i

.preheader:                                       ; preds = %.critedge, %.preheader
  %i.j = phi ptr [ %i.u, %.preheader ], [ %i.i, %.critedge ]
  %i.k = phi ptr [ %i.s, %.preheader ], [ %i.f, %.critedge ]
  %.sroa.0.0.i = phi ptr [ %i.n, %.preheader ], [ %i.g, %.critedge ]
  %i.l = getelementptr inbounds i8, ptr %i.k, i64 -4 ; 2 uses
  %i.m = getelementptr inbounds i8, ptr %i.j, i64 -4 ; 2 uses
  %i.n = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -4 ; 2 uses
  %.val.i = load i32, ptr %i.m, align 4, !alias.scope !752, !noalias !753, !noundef !4 ; 2 uses
  %.val12.i = load i32, ptr %i.l, align 4, !alias.scope !754, !noalias !753, !noundef !4 ; 2 uses
  %i.o = icmp ult i32 %.val.i, %.val12.i          ; 2 uses
  %i.p = tail call i32 @llvm.umax.i32(i32 %.val.i, i32 %.val12.i)
  store i32 %i.p, ptr %i.n, align 4, !noalias !753
  %i.q = xor i1 %i.o, true
  %i.r = zext i1 %i.q to i64
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.r ; 3 uses
  %i.t = zext i1 %i.o to i64
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.t ; 3 uses
  %i.v = icmp eq ptr %i.s, %0
  %i.w = icmp eq ptr %i.u, %2
  %or.cond.i = select i1 %i.v, i1 true, i1 %i.w
  br i1 %or.cond.i, label %_RINvMNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5mergeINtB3_10MergeStatemE10merge_downNvYmNtNtBb_3cmp10PartialOrd2ltECs1qcNTItuk7F_13glyphs_reader.exit, label %.preheader

.lr.ph.i:                                         ; preds = %.critedge, %.lr.ph.i
  %i.x = phi ptr [ %i.ag, %.lr.ph.i ], [ %0, %.critedge ] ; 2 uses
  %.sroa.0.04.i = phi ptr [ %i.af, %.lr.ph.i ], [ %i.f, %.critedge ] ; 2 uses
  %i.y = phi ptr [ %i.ad, %.lr.ph.i ], [ %2, %.critedge ] ; 2 uses
  %.sroa.0.0.val.i = load i32, ptr %.sroa.0.04.i, align 4, !alias.scope !755, !noalias !756, !noundef !4 ; 2 uses
end_hunk_0
