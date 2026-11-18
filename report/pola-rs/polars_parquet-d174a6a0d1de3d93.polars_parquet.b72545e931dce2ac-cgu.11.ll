Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_parquet-d174a6a0d1de3d93.polars_parquet.b72545e931dce2ac-cgu.11?download=true
inline.NumInlined: 2430
inline.NumDeleted: 564
loop-unroll.NumCompletelyUnrolled: 40
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 48
begin_hunk_0_@_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5merge5mergeTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrBY_ENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSBX_7sort_byNCINvXs1o_NtNtNtB1Z_11collections5btree3mapINtB2L_8BTreeMapBY_BY_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBX_E9from_iterINtNtNtB3M_8adapters10filter_map9FilterMapINtNtB8_4iter4IterNtNtCs1gC9x3uey1Y_21polars_parquet_format14parquet_format8KeyValueENCNCNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read6schema8metadata24parse_key_value_metadata00EE0E0EB6U_:bb.a
  %or.cond.i19 = select i1 %i.ac, i1 %i.ad, i1 false, !dbg !4996
  br i1 %or.cond.i19, label %.lr.ph.i, label %_RINvMNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5mergeINtB3_10MergeStateTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1b_EE10merge_downNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB1a_7sort_byNCINvXs1o_NtNtNtB2q_11collections5btree3mapINtB3d_8BTreeMapB1b_B1b_EINtNtNtNtBb_4iter6traits7collect12FromIteratorB1a_E9from_iterINtNtNtB4g_8adapters10filter_map9FilterMapINtNtB9_4iter4IterNtNtCs1gC9x3uey1Y_21polars_parquet_format14parquet_format8KeyValueENCNCNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read6schema8metadata24parse_key_value_metadata00EE0E0EB7p_.exit, !dbg !4996

_RINvMNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5mergeINtB3_10MergeStateTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1b_EE10merge_downNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB1a_7sort_byNCINvXs1o_NtNtNtB2q_11collections5btree3mapINtB3d_8BTreeMapB1b_B1b_EINtNtNtNtBb_4iter6traits7collect12FromIteratorB1a_E9from_iterINtNtNtB4g_8adapters10filter_map9FilterMapINtNtB9_4iter4IterNtNtCs1gC9x3uey1Y_21polars_parquet_format14parquet_format8KeyValueENCNCNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read6schema8metadata24parse_key_value_metadata00EE0E0EB7p_.exit: ; preds = %.noexc20, %.noexc
  %.sroa.13.1 = phi ptr [ %i.p, %.noexc ], [ %i.ab, %.noexc20 ], !dbg !4997
  %.sroa.7.1 = phi ptr [ %i.r, %.noexc ], [ %i.h, %.noexc20 ], !dbg !4973
  %.sroa.0.1 = phi ptr [ %2, %.noexc ], [ %i.y, %.noexc20 ], !dbg !4973 ; 2 uses
  %i.ae = ptrtoint ptr %.sroa.7.1 to i64, !dbg !4998
  %i.af = ptrtoint ptr %.sroa.0.1 to i64, !dbg !4998
  %i.ag = sub nuw i64 %i.ae, %i.af, !dbg !4998
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.1, ptr align 8 %.sroa.0.1, i64 %i.ag, i1 false), !dbg !4999, !noalias !4960
  br label %bb.c, !dbg !5000

bb.c:                                             ; preds = %bb.b, %bb.a, %_RINvMNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5mergeINtB3_10MergeStateTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1b_EE10merge_downNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB1a_7sort_byNCINvXs1o_NtNtNtB2q_11collections5btree3mapINtB3d_8BTreeMapB1b_B1b_EINtNtNtNtBb_4iter6traits7collect12FromIteratorB1a_E9from_iterINtNtNtB4g_8adapters10filter_map9FilterMapINtNtB9_4iter4IterNtNtCs1gC9x3uey1Y_21polars_parquet_format14parquet_format8KeyValueENCNCNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read6schema8metadata24parse_key_value_metadata00EE0E0EB7p_.exit
  ret void, !dbg !5000

.loopexit:                                        ; preds = %.preheader
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

.loopexit.split-lp:                               ; preds = %.lr.ph.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.d:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %.sroa.13.0 = phi ptr [ %.sroa.13.2, %.loopexit ], [ %.sroa.13.3, %.loopexit.split-lp ], !dbg !5001
  %.sroa.7.0 = phi ptr [ %.sroa.7.2, %.loopexit ], [ %i.h, %.loopexit.split-lp ], !dbg !5001
  %.sroa.0.0 = phi ptr [ %2, %.loopexit ], [ %.sroa.0.2, %.loopexit.split-lp ], !dbg !5001 ; 2 uses
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.ah = ptrtoint ptr %.sroa.7.0 to i64, !dbg !5002
  %i.ai = ptrtoint ptr %.sroa.0.0 to i64, !dbg !5002
  %i.aj = sub nuw i64 %i.ah, %i.ai, !dbg !5002
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %.sroa.13.0, ptr align 8 %.sroa.0.0, i64 %i.aj, i1 false), !dbg !5003, !noalias !4961
  resume { ptr, i32 } %lpad.phi, !dbg !5004
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5merge5mergeTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrBY_ENCINvMNtCsgZ49sUHp3tW_5alloc5sliceSBX_7sort_byNCNvXs1z_NtNtNtB1Z_11collections5btree3mapINtB2K_8BTreeMapBY_BY_EINtNtBa_7convert4FromABX_j1_E4from0E0ECsfISxE4fmY1Y_14polars_parquet(ptr noalias nofree noundef nonnull align 8 captures(address, read_provenance) %0, i64 noundef range(i64 0, 192153584101141163) %1, ptr noalias noundef nonnull align 8 %2, i64 noundef range(i64 0, 192153584101141163) %3, i64 noundef %4, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !5005 !guid !5084 {
bb.a:
  %i.a = icmp eq i64 %4, 0, !dbg !5096
  %i.b = icmp uge i64 %4, %1
  %or.cond = or i1 %i.a, %i.b, !dbg !5096
  br i1 %or.cond, label %bb.c, label %bb.b, !dbg !5096

bb.b:                                             ; preds = %bb.a
  %i.c = sub nuw nsw i64 %1, %4, !dbg !5097       ; 2 uses
  %.sroa.0.0.i = tail call i64 @llvm.umin.i64(i64 %i.c, i64 %4), !dbg !5098 ; 2 uses
  %i.d = icmp samesign ult i64 %3, %.sroa.0.0.i, !dbg !5099
  br i1 %i.d, label %bb.c, label %.critedge, !dbg !5099

.critedge:                                        ; preds = %bb.b
  %i.e = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %4, !dbg !5100 ; 3 uses
  %i.f = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %1, !dbg !5101 ; 2 uses
  %.not = icmp samesign ugt i64 %4, %i.c, !dbg !5102 ; 2 uses
  %spec.select = select i1 %.not, ptr %i.e, ptr %0, !dbg !5103
  %i.g = mul nuw nsw i64 %.sroa.0.0.i, 48, !dbg !5104 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %spec.select, i64 %i.g, i1 false), !dbg !5104
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 %i.g, !dbg !5105 ; 4 uses
  br i1 %.not, label %.preheader, label %.lr.ph.i, !dbg !5106

.preheader:                                       ; preds = %.critedge, %.noexc
  %.sroa.13.2 = phi ptr [ %i.p, %.noexc ], [ %i.e, %.critedge ], !dbg !5107 ; 2 uses
  %.sroa.7.2 = phi ptr [ %i.r, %.noexc ], [ %i.h, %.critedge ], !dbg !5107 ; 2 uses
  %.sroa.0.0.i17 = phi ptr [ %i.l, %.noexc ], [ %i.f, %.critedge ]
  %i.i = getelementptr inbounds i8, ptr %.sroa.13.2, i64 -48, !dbg !5108 ; 3 uses
  %i.j = getelementptr inbounds i8, ptr %.sroa.7.2, i64 -48, !dbg !5109 ; 3 uses
  %i.k = invoke noundef range(i8 -1, 2) i8 @_RNvXsm_Cs7VARH73bmU_11compact_strNtB5_13CompactStringNtNtCscgRAwXFJnXP_4core3cmp3Ord3cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.i)
          to label %.noexc unwind label %.loopexit, !dbg !5110

.noexc:                                           ; preds = %.preheader
  %i.l = getelementptr inbounds i8, ptr %.sroa.0.0.i17, i64 -48, !dbg !5111 ; 2 uses
  %i.m = icmp eq i8 %i.k, -1, !dbg !5112          ; 3 uses
  %..i = select i1 %i.m, ptr %i.i, ptr %i.j, !dbg !5113
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.l, ptr noundef nonnull align 8 dereferenceable(48) %..i, i64 48, i1 false), !dbg !5114, !noalias !5092
  %i.n = xor i1 %i.m, true, !dbg !5115
  %i.o = zext i1 %i.n to i64, !dbg !5115
  %i.p = getelementptr inbounds nuw [48 x i8], ptr %i.i, i64 %i.o, !dbg !5116 ; 3 uses
  %i.q = zext i1 %i.m to i64, !dbg !5117
  %i.r = getelementptr inbounds nuw [48 x i8], ptr %i.j, i64 %i.q, !dbg !5118 ; 3 uses
  %i.s = icmp eq ptr %i.p, %0, !dbg !5119
  %i.t = icmp eq ptr %i.r, %2
  %or.cond.i = select i1 %i.s, i1 true, i1 %i.t, !dbg !5119
  br i1 %or.cond.i, label %_RINvMNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5mergeINtB3_10MergeStateTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1b_EE10merge_downNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB1a_7sort_byNCNvXs1z_NtNtNtB2q_11collections5btree3mapINtB3c_8BTreeMapB1b_B1b_EINtNtBb_7convert4FromAB1a_j1_E4from0E0ECsfISxE4fmY1Y_14polars_parquet.exit, label %.preheader, !dbg !5119

.lr.ph.i:                                         ; preds = %.critedge, %.noexc20
  %.sroa.13.3 = phi ptr [ %i.ab, %.noexc20 ], [ %0, %.critedge ], !dbg !5107 ; 3 uses
  %.sroa.0.2 = phi ptr [ %i.y, %.noexc20 ], [ %2, %.critedge ], !dbg !5107 ; 4 uses
  %.sroa.0.02.i = phi ptr [ %i.aa, %.noexc20 ], [ %i.e, %.critedge ] ; 3 uses
  %i.u = invoke noundef range(i8 -1, 2) i8 @_RNvXsm_Cs7VARH73bmU_11compact_strNtB5_13CompactStringNtNtCscgRAwXFJnXP_4core3cmp3Ord3cmp(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.sroa.0.02.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.sroa.0.2)
          to label %.noexc20 unwind label %.loopexit.split-lp, !dbg !5120

.noexc20:                                         ; preds = %.lr.ph.i
  %i.v = icmp eq i8 %i.u, -1, !dbg !5121          ; 3 uses
  %i.w = xor i1 %i.v, true, !dbg !5122
  %spec.select.i = select i1 %i.v, ptr %.sroa.0.02.i, ptr %.sroa.0.2, !dbg !5123
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.13.3, ptr noundef nonnull align 8 dereferenceable(48) %spec.select.i, i64 48, i1 false), !dbg !5124, !noalias !5093
  %i.x = zext i1 %i.w to i64, !dbg !5125
  %i.y = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.2, i64 %i.x, !dbg !5126 ; 3 uses
  %i.z = zext i1 %i.v to i64, !dbg !5127
  %i.aa = getelementptr inbounds nuw [48 x i8], ptr %.sroa.0.02.i, i64 %i.z, !dbg !5128 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.13.3, i64 48, !dbg !5129 ; 2 uses
  %i.ac = icmp ne ptr %i.y, %i.h, !dbg !5130
  %i.ad = icmp ne ptr %i.aa, %i.f
  %or.cond.i19 = select i1 %i.ac, i1 %i.ad, i1 false, !dbg !5130
  br i1 %or.cond.i19, label %.lr.ph.i, label %_RINvMNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5mergeINtB3_10MergeStateTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1b_EE10merge_downNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB1a_7sort_byNCNvXs1z_NtNtNtB2q_11collections5btree3mapINtB3c_8BTreeMapB1b_B1b_EINtNtBb_7convert4FromAB1a_j1_E4from0E0ECsfISxE4fmY1Y_14polars_parquet.exit, !dbg !5130

_RINvMNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5mergeINtB3_10MergeStateTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1b_EE10merge_downNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB1a_7sort_byNCNvXs1z_NtNtNtB2q_11collections5btree3mapINtB3c_8BTreeMapB1b_B1b_EINtNtBb_7convert4FromAB1a_j1_E4from0E0ECsfISxE4fmY1Y_14polars_parquet.exit: ; preds = %.noexc20, %.noexc
  %.sroa.13.1 = phi ptr [ %i.p, %.noexc ], [ %i.ab, %.noexc20 ], !dbg !5131
  %.sroa.7.1 = phi ptr [ %i.r, %.noexc ], [ %i.h, %.noexc20 ], !dbg !5107
  %.sroa.0.1 = phi ptr [ %2, %.noexc ], [ %i.y, %.noexc20 ], !dbg !5107 ; 2 uses
  %i.ae = ptrtoint ptr %.sroa.7.1 to i64, !dbg !5132
  %i.af = ptrtoint ptr %.sroa.0.1 to i64, !dbg !5132
  %i.ag = sub nuw i64 %i.ae, %i.af, !dbg !5132
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.1, ptr align 8 %.sroa.0.1, i64 %i.ag, i1 false), !dbg !5133, !noalias !5094
  br label %bb.c, !dbg !5134

bb.c:                                             ; preds = %bb.b, %bb.a, %_RINvMNtNtNtNtCscgRAwXFJnXP_4core5slice4sort6stable5mergeINtB3_10MergeStateTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1b_EE10merge_downNCINvMNtCsgZ49sUHp3tW_5alloc5sliceSB1a_7sort_byNCNvXs1z_NtNtNtB2q_11collections5btree3mapINtB3c_8BTreeMapB1b_B1b_EINtNtBb_7convert4FromAB1a_j1_E4from0E0ECsfISxE4fmY1Y_14polars_parquet.exit
  ret void, !dbg !5134

.loopexit:                                        ; preds = %.preheader
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

.loopexit.split-lp:                               ; preds = %.lr.ph.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.d:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %.sroa.13.0 = phi ptr [ %.sroa.13.2, %.loopexit ], [ %.sroa.13.3, %.loopexit.split-lp ], !dbg !5135
  %.sroa.7.0 = phi ptr [ %.sroa.7.2, %.loopexit ], [ %i.h, %.loopexit.split-lp ], !dbg !5135
  %.sroa.0.0 = phi ptr [ %2, %.loopexit ], [ %.sroa.0.2, %.loopexit.split-lp ], !dbg !5135 ; 2 uses
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.ah = ptrtoint ptr %.sroa.7.0 to i64, !dbg !5136
  %i.ai = ptrtoint ptr %.sroa.0.0 to i64, !dbg !5136
  %i.aj = sub nuw i64 %i.ah, %i.ai, !dbg !5136
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %.sroa.13.0, ptr align 8 %.sroa.0.0, i64 %i.aj, i1 false), !dbg !5137, !noalias !5095
  resume { ptr, i32 } %lpad.phi, !dbg !5138
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize7binview20decode_plain_genericNCNvNtB2_15optional_masked6decode0EBa_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2, ptr noalias noundef align 8 dereferenceable(160) %3, i64 noundef %4, ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %5, ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %6, i1 noundef zeroext %7) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !5139 !guid !5353 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.439 = alloca [12 x i8], align 4          ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 7 uses
  %i.h = alloca [32 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [32 x i8], align 8                ; 4 uses
  %i.k = alloca [32 x i8], align 8                ; 4 uses
  %i.l = alloca [32 x i8], align 8                ; 4 uses
  %.sroa.496 = alloca [12 x i8], align 4          ; 4 uses
  %i.m = alloca [32 x i8], align 8                ; 4 uses
  %i.n = alloca [32 x i8], align 8                ; 4 uses
  %i.o = alloca [24 x i8], align 8                ; 9 uses
  %i.p = tail call noundef zeroext i1 @_RNvMs2_NtNtNtCs8774dFTUdNv_12polars_arrow5array7binview7mutableINtB5_22MutableBinaryViewArrayShE18finish_in_progressCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(160) %3), !dbg !5481 ; 0 uses
  tail call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %4), !dbg !5482
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16, !dbg !5483 ; 8 uses
  %i.r = load i64, ptr %i.q, align 8, !dbg !5483, !noundef !1309 ; 5 uses
  %i.s = icmp ult i64 %i.r, 576460752303423488, !dbg !5484
  tail call void @llvm.assume(i1 %i.s), !dbg !5485
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 40, !dbg !5486 ; 3 uses
  %i.u = load i64, ptr %i.t, align 8, !dbg !5486, !noundef !1309
  %i.v = trunc i64 %i.u to i32, !dbg !5487
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !5488
  %i.w = add nuw i64 %2, 1, !dbg !5489
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !5490
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, i64 noundef %i.w, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !dbg !5490
  %i.x = load i64, ptr %i.e, align 8, !dbg !5490, !range !1425, !noundef !1309
  %i.y = trunc nuw i64 %i.x to i1, !dbg !5491
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !5492
  %i.aa = load i64, ptr %i.z, align 8, !dbg !5492, !range !1314, !noundef !1309 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !5492 ; 2 uses
  br i1 %i.y, label %bb.b, label %bb.c, !dbg !5491, !prof !1434

.body.thread:                                     ; preds = %bb.bg, %bb.be, %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %eh.lpad-body104 = phi { ptr, i32 } [ %i.gf, %bb.bg ], [ %lpad.loopexit.split-lp347, %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.gd, %bb.be ]
  resume { ptr, i32 } %eh.lpad-body104, !dbg !5493

bb.b:                                             ; preds = %bb.a
  %i.ac = load i64, ptr %i.ab, align 8, !dbg !5494
  tail call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.aa, i64 %i.ac) #36, !dbg !5495
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.ad = load ptr, ptr %i.ab, align 8, !dbg !5496, !nonnull !1309, !noundef !1309
  %.not = icmp samesign ult i64 %2, %i.aa, !dbg !5497
  tail call void @llvm.assume(i1 %.not), !dbg !5498
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !5499
  store i64 %i.aa, ptr %i.o, align 8, !dbg !5500
  %i.ae = getelementptr inbounds nuw i8, ptr %i.o, i64 8, !dbg !5500 ; 4 uses
  store ptr %i.ad, ptr %i.ae, align 8, !dbg !5500
  %i.af = getelementptr inbounds nuw i8, ptr %i.o, i64 16, !dbg !5500 ; 7 uses
  store i64 0, ptr %i.af, align 8, !dbg !5500
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %.phi.trans.insert.i10.i = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %.promoted160 = load i64, ptr %i.ag, align 8, !alias.scope !5365
  %.sroa.439.4..sroa_idx399 = getelementptr inbounds nuw i8, ptr %.sroa.439, i64 4
  %.sroa.439.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.439, i64 8
  %.phi.trans.insert.i.i.promoted570 = load i64, ptr %.phi.trans.insert.i.i, align 8
  %.promoted572 = load i64, ptr %i.ah, align 8
  %.promoted578 = load ptr, ptr %5, align 8
  %.promoted584 = load i64, ptr %i.ai, align 8
  %.promoted = load i64, ptr %i.aj, align 8
  %.phi.trans.insert.i10.i.promoted591 = load i64, ptr %.phi.trans.insert.i10.i, align 8
  %.promoted593 = load i64, ptr %i.ak, align 8
  %.promoted599 = load ptr, ptr %6, align 8
  %.promoted605 = load i64, ptr %i.al, align 8
  br label %.outer, !dbg !5501

.outer:                                           ; preds = %bb.x, %bb.c
  %.promoted526610 = phi i64 [ %.promoted526606, %bb.x ], [ %.promoted605, %bb.c ] ; 2 uses
  %.promoted521604 = phi ptr [ %.promoted521600, %bb.x ], [ %.promoted599, %bb.c ] ; 2 uses
  %.promoted516598 = phi i64 [ %.promoted516594, %bb.x ], [ %.promoted593, %bb.c ] ; 2 uses
  %.phi.trans.insert.i10.i.promoted592 = phi i64 [ %i.bv, %bb.x ], [ %.phi.trans.insert.i10.i.promoted591, %bb.c ]
  %.promoted513590 = phi i64 [ %i.bw, %bb.x ], [ %.promoted, %bb.c ]
  %.promoted589 = phi i64 [ %.promoted585, %bb.x ], [ %.promoted584, %bb.c ] ; 2 uses
  %.promoted504583 = phi ptr [ %.promoted504579, %bb.x ], [ %.promoted578, %bb.c ] ; 2 uses
  %.promoted499577 = phi i64 [ %.promoted499573, %bb.x ], [ %.promoted572, %bb.c ] ; 2 uses
  %.phi.trans.insert.i.i.promoted571 = phi i64 [ %i.bi, %bb.x ], [ %.phi.trans.insert.i.i.promoted570, %bb.c ]
  %.promoted161 = phi i64 [ %i.bj, %bb.x ], [ %.promoted160, %bb.c ]
  %.sroa.820.0.ph = phi i64 [ %i.cm, %bb.x ], [ %2, %bb.c ]
  %.sroa.015.0.ph = phi ptr [ %i.cl, %bb.x ], [ %1, %bb.c ]
  %.sroa.07.0.ph = phi i32 [ %.sroa.07.1, %bb.x ], [ 0, %bb.c ] ; 3 uses
  %.sroa.05.0.ph = phi i64 [ %i.dn, %bb.x ], [ 0, %bb.c ] ; 2 uses
  %.sroa.03.0.ph = phi i1 [ %i.co, %bb.x ], [ true, %bb.c ]
  %.sroa.0.0.ph = phi i8 [ %i.dm, %bb.x ], [ 1, %bb.c ]
  br label %.outer341.outer, !dbg !5502

.outer341.outer:                                  ; preds = %.outer, %bb.q
  %.promoted526609 = phi i64 [ %.promoted526610, %.outer ], [ %.promoted526606, %bb.q ]
  %.promoted521603 = phi ptr [ %.promoted521604, %.outer ], [ %.promoted521600, %bb.q ]
  %.promoted516597 = phi i64 [ %.promoted516598, %.outer ], [ %.promoted516594, %bb.q ]
  %.promoted588 = phi i64 [ %.promoted589, %.outer ], [ %.promoted585, %bb.q ]
  %.promoted504582 = phi ptr [ %.promoted504583, %.outer ], [ %.promoted504579, %bb.q ]
  %.promoted499576 = phi i64 [ %.promoted499577, %.outer ], [ %.promoted499573, %bb.q ]
  %.promoted482530 = phi i64 [ %.promoted526610, %.outer ], [ %.promoted482527, %bb.q ] ; 2 uses
  %.promoted478525 = phi ptr [ %.promoted521604, %.outer ], [ %.promoted478522, %bb.q ] ; 2 uses
  %.promoted474520 = phi i64 [ %.promoted516598, %.outer ], [ %.promoted474517, %bb.q ] ; 2 uses
  %.phi.trans.insert.i10.i.promoted472515 = phi i64 [ %.phi.trans.insert.i10.i.promoted592, %.outer ], [ %i.bv, %bb.q ]
  %.promoted470514 = phi i64 [ %.promoted513590, %.outer ], [ %i.bw, %bb.q ]
  %.promoted466512 = phi i64 [ %.promoted589, %.outer ], [ %.promoted466509, %bb.q ] ; 2 uses
  %.promoted508 = phi ptr [ %.promoted504583, %.outer ], [ %.promoted505, %bb.q ] ; 2 uses
  %.promoted459503 = phi i64 [ %.promoted499577, %.outer ], [ %.promoted459500, %bb.q ] ; 2 uses
  %.phi.trans.insert.i.i.promoted457498 = phi i64 [ %.phi.trans.insert.i.i.promoted571, %.outer ], [ %i.bi, %bb.q ]
  %.ph.ph = phi i64 [ %.promoted161, %.outer ], [ %i.bj, %bb.q ]
  %.sroa.820.0.ph342.ph = phi i64 [ %.sroa.820.0.ph, %.outer ], [ %i.cm, %bb.q ]
  %.sroa.015.0.ph343.ph = phi ptr [ %.sroa.015.0.ph, %.outer ], [ %i.cl, %bb.q ]
  %.sroa.03.0.ph344.ph = phi i1 [ %.sroa.03.0.ph, %.outer ], [ %i.co, %bb.q ]
  %.sroa.0.0.ph345.ph = phi i8 [ %.sroa.0.0.ph, %.outer ], [ %i.cs, %bb.q ] ; 4 uses
  br label %.outer341, !dbg !5502

.outer341:                                        ; preds = %.outer341.outer, %.thread112
  %.promoted526608 = phi i64 [ %.promoted526606, %.thread112 ], [ %.promoted526609, %.outer341.outer ]
  %.promoted521602 = phi ptr [ %.promoted521600, %.thread112 ], [ %.promoted521603, %.outer341.outer ]
  %.promoted516596 = phi i64 [ %.promoted516594, %.thread112 ], [ %.promoted516597, %.outer341.outer ]
  %.promoted587 = phi i64 [ %.promoted585, %.thread112 ], [ %.promoted588, %.outer341.outer ]
  %.promoted504581 = phi ptr [ %.promoted504579, %.thread112 ], [ %.promoted504582, %.outer341.outer ]
  %.promoted499575 = phi i64 [ %.promoted499573, %.thread112 ], [ %.promoted499576, %.outer341.outer ]
  %.promoted482529 = phi i64 [ %.promoted482527, %.thread112 ], [ %.promoted482530, %.outer341.outer ]
  %.promoted478524 = phi ptr [ %.promoted478522, %.thread112 ], [ %.promoted478525, %.outer341.outer ]
  %.promoted474519 = phi i64 [ %.promoted474517, %.thread112 ], [ %.promoted474520, %.outer341.outer ]
  %.promoted466511 = phi i64 [ %.promoted466509, %.thread112 ], [ %.promoted466512, %.outer341.outer ]
  %.promoted507 = phi ptr [ %.promoted505, %.thread112 ], [ %.promoted508, %.outer341.outer ]
  %.promoted459502 = phi i64 [ %.promoted459500, %.thread112 ], [ %.promoted459503, %.outer341.outer ]
  %.promoted456485 = phi i64 [ %.promoted456483, %.thread112 ], [ %.promoted482530, %.outer341.outer ] ; 2 uses
  %.promoted455481 = phi ptr [ %.promoted455479, %.thread112 ], [ %.promoted478525, %.outer341.outer ] ; 2 uses
  %.promoted454477 = phi i64 [ %.promoted454475, %.thread112 ], [ %.promoted474520, %.outer341.outer ] ; 2 uses
  %.phi.trans.insert.i10.i.promoted473 = phi i64 [ %i.bv, %.thread112 ], [ %.phi.trans.insert.i10.i.promoted472515, %.outer341.outer ]
  %.promoted453471 = phi i64 [ %i.bw, %.thread112 ], [ %.promoted470514, %.outer341.outer ]
  %.promoted452469 = phi i64 [ %.promoted452467, %.thread112 ], [ %.promoted466512, %.outer341.outer ] ; 2 uses
  %.promoted451465 = phi ptr [ %.promoted451463, %.thread112 ], [ %.promoted508, %.outer341.outer ] ; 2 uses
  %.promoted462 = phi i64 [ %.promoted460, %.thread112 ], [ %.promoted459503, %.outer341.outer ] ; 2 uses
  %.phi.trans.insert.i.i.promoted458 = phi i64 [ %i.bi, %.thread112 ], [ %.phi.trans.insert.i.i.promoted457498, %.outer341.outer ]
  %.ph = phi i64 [ %i.bj, %.thread112 ], [ %.ph.ph, %.outer341.outer ]
  %.sroa.820.0.ph342 = phi i64 [ %i.cm, %.thread112 ], [ %.sroa.820.0.ph342.ph, %.outer341.outer ] ; 4 uses
  %.sroa.015.0.ph343 = phi ptr [ %i.cl, %.thread112 ], [ %.sroa.015.0.ph343.ph, %.outer341.outer ] ; 3 uses
  %.sroa.03.0.ph344 = phi i1 [ %i.co, %.thread112 ], [ %.sroa.03.0.ph344.ph, %.outer341.outer ] ; 2 uses
  br label %bb.d, !dbg !5502

bb.d:                                             ; preds = %.backedge, %.outer341
  %.promoted526607 = phi i64 [ %.promoted526608, %.outer341 ], [ %.promoted526606, %.backedge ]
  %.promoted521601 = phi ptr [ %.promoted521602, %.outer341 ], [ %.promoted521600, %.backedge ]
  %.promoted516595 = phi i64 [ %.promoted516596, %.outer341 ], [ %.promoted516594, %.backedge ]
  %.promoted586 = phi i64 [ %.promoted587, %.outer341 ], [ %.promoted585, %.backedge ]
  %.promoted504580 = phi ptr [ %.promoted504581, %.outer341 ], [ %.promoted504579, %.backedge ]
  %.promoted499574 = phi i64 [ %.promoted499575, %.outer341 ], [ %.promoted499573, %.backedge ]
  %.promoted482528 = phi i64 [ %.promoted482529, %.outer341 ], [ %.promoted482527, %.backedge ]
  %.promoted478523 = phi ptr [ %.promoted478524, %.outer341 ], [ %.promoted478522, %.backedge ]
  %.promoted474518 = phi i64 [ %.promoted474519, %.outer341 ], [ %.promoted474517, %.backedge ]
  %.promoted466510 = phi i64 [ %.promoted466511, %.outer341 ], [ %.promoted466509, %.backedge ]
  %.promoted506 = phi ptr [ %.promoted507, %.outer341 ], [ %.promoted505, %.backedge ]
  %.promoted459501 = phi i64 [ %.promoted459502, %.outer341 ], [ %.promoted459500, %.backedge ]
  %.promoted456484 = phi i64 [ %.promoted456485, %.outer341 ], [ %.promoted456483, %.backedge ]
  %.promoted455480 = phi ptr [ %.promoted455481, %.outer341 ], [ %.promoted455479, %.backedge ]
  %.promoted454476 = phi i64 [ %.promoted454477, %.outer341 ], [ %.promoted454475, %.backedge ]
  %.promoted452468 = phi i64 [ %.promoted452469, %.outer341 ], [ %.promoted452467, %.backedge ]
  %.promoted451464 = phi ptr [ %.promoted451465, %.outer341 ], [ %.promoted451463, %.backedge ]
  %.promoted461 = phi i64 [ %.promoted462, %.outer341 ], [ %.promoted460, %.backedge ]
  %i.an = phi i64 [ %.promoted456485, %.outer341 ], [ %i.bp, %.backedge ] ; 2 uses
  %i.ao = phi ptr [ %.promoted455481, %.outer341 ], [ %i.bq, %.backedge ] ; 3 uses
  %i.ap = phi i64 [ %.promoted454477, %.outer341 ], [ %i.br, %.backedge ] ; 4 uses
  %i.aq = phi i64 [ %.phi.trans.insert.i10.i.promoted473, %.outer341 ], [ %i.bv, %.backedge ]
  %i.ar = phi i64 [ %.promoted453471, %.outer341 ], [ %i.bw, %.backedge ] ; 2 uses
  %i.as = phi i64 [ %.promoted452469, %.outer341 ], [ %i.bc, %.backedge ] ; 2 uses
  %i.at = phi ptr [ %.promoted451465, %.outer341 ], [ %i.bd, %.backedge ] ; 3 uses
  %i.au = phi i64 [ %.promoted462, %.outer341 ], [ %i.be, %.backedge ] ; 4 uses
  %i.av = phi i64 [ %.phi.trans.insert.i.i.promoted458, %.outer341 ], [ %i.bi, %.backedge ]
  %i.aw = phi i64 [ %.ph, %.outer341 ], [ %i.bj, %.backedge ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5365), !dbg !5503
  %i.ax = icmp eq i64 %i.aw, 0, !dbg !5502
  br i1 %i.ax, label %bb.e, label %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i, !dbg !5502

bb.e:                                             ; preds = %bb.d
  %i.ay = icmp eq i64 %i.au, 0, !dbg !5504
  br i1 %i.ay, label %bb.g, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsfISxE4fmY1Y_14polars_parquet.exit.i.i, !dbg !5504

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsfISxE4fmY1Y_14polars_parquet.exit.i.i: ; preds = %bb.e
  %.sroa.0.0.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.au, i64 64), !dbg !5505 ; 2 uses
  %i.az = sub nuw i64 %i.au, %.sroa.0.0.i.i.i, !dbg !5506 ; 5 uses
  store i64 %i.az, ptr %i.ah, align 8, !dbg !5506, !alias.scope !5365
  %.sroa.02.0.copyload.i.i = load i64, ptr %i.at, align 1, !dbg !5507, !noalias !5365
  %i.ba = add i64 %i.as, -8, !dbg !5508           ; 5 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.at, i64 8, !dbg !5509 ; 5 uses
  store ptr %i.bb, ptr %5, align 8, !dbg !5510, !alias.scope !5365
  store i64 %i.ba, ptr %i.ai, align 8, !dbg !5510, !alias.scope !5365
  br label %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i, !dbg !5511

_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i: ; preds = %bb.d, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsfISxE4fmY1Y_14polars_parquet.exit.i.i
  %.promoted585 = phi i64 [ %i.ba, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsfISxE4fmY1Y_14polars_parquet.exit.i.i ], [ %.promoted586, %bb.d ] ; 4 uses
  %.promoted504579 = phi ptr [ %i.bb, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsfISxE4fmY1Y_14polars_parquet.exit.i.i ], [ %.promoted504580, %bb.d ] ; 4 uses
  %.promoted499573 = phi i64 [ %i.az, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsfISxE4fmY1Y_14polars_parquet.exit.i.i ], [ %.promoted499574, %bb.d ] ; 4 uses
  %.promoted466509 = phi i64 [ %i.ba, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsfISxE4fmY1Y_14polars_parquet.exit.i.i ], [ %.promoted466510, %bb.d ] ; 3 uses
  %.promoted505 = phi ptr [ %i.bb, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsfISxE4fmY1Y_14polars_parquet.exit.i.i ], [ %.promoted506, %bb.d ] ; 3 uses
  %.promoted459500 = phi i64 [ %i.az, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsfISxE4fmY1Y_14polars_parquet.exit.i.i ], [ %.promoted459501, %bb.d ] ; 3 uses
  %.promoted452467 = phi i64 [ %i.ba, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsfISxE4fmY1Y_14polars_parquet.exit.i.i ], [ %.promoted452468, %bb.d ] ; 2 uses
  %.promoted451463 = phi ptr [ %i.bb, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsfISxE4fmY1Y_14polars_parquet.exit.i.i ], [ %.promoted451464, %bb.d ] ; 2 uses
  %.promoted460 = phi i64 [ %i.az, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsfISxE4fmY1Y_14polars_parquet.exit.i.i ], [ %.promoted461, %bb.d ] ; 2 uses
  %i.bc = phi i64 [ %i.ba, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsfISxE4fmY1Y_14polars_parquet.exit.i.i ], [ %i.as, %bb.d ]
  %i.bd = phi ptr [ %i.bb, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsfISxE4fmY1Y_14polars_parquet.exit.i.i ], [ %i.at, %bb.d ]
  %i.be = phi i64 [ %i.az, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsfISxE4fmY1Y_14polars_parquet.exit.i.i ], [ %i.au, %bb.d ]
  %i.bf = phi i64 [ %.sroa.0.0.i.i.i, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsfISxE4fmY1Y_14polars_parquet.exit.i.i ], [ %i.aw, %bb.d ], !dbg !5512
  %i.bg = phi i64 [ %.sroa.02.0.copyload.i.i, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsfISxE4fmY1Y_14polars_parquet.exit.i.i ], [ %i.av, %bb.d ], !dbg !5513 ; 2 uses
  %i.bh = trunc i64 %i.bg to i1, !dbg !5513
  %i.bi = lshr i64 %i.bg, 1, !dbg !5514           ; 5 uses
  store i64 %i.bi, ptr %.phi.trans.insert.i.i, align 8, !dbg !5514, !alias.scope !5365
  %i.bj = add i64 %i.bf, -1, !dbg !5512           ; 5 uses
  store i64 %i.bj, ptr %i.ag, align 8, !dbg !5512, !alias.scope !5365
  call void @llvm.experimental.noalias.scope.decl(metadata !5369), !dbg !5515
  %i.bk = icmp eq i64 %i.ar, 0, !dbg !5516
  br i1 %i.bk, label %bb.f, label %._crit_edge.i9.i, !dbg !5516

bb.f:                                             ; preds = %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i
  %i.bl = icmp eq i64 %i.ap, 0, !dbg !5517
  br i1 %i.bl, label %bb.g, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsfISxE4fmY1Y_14polars_parquet.exit.i13.i, !dbg !5517

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsfISxE4fmY1Y_14polars_parquet.exit.i13.i: ; preds = %bb.f
  %.sroa.0.0.i.i14.i = call noundef i64 @llvm.umin.i64(i64 %i.ap, i64 64), !dbg !5518 ; 2 uses
  %i.bm = sub nuw i64 %i.ap, %.sroa.0.0.i.i14.i, !dbg !5519 ; 5 uses
  store i64 %i.bm, ptr %i.ak, align 8, !dbg !5519, !alias.scope !5369
  %.sroa.02.0.copyload.i15.i = load i64, ptr %i.ao, align 1, !dbg !5520, !noalias !5369
  %i.bn = add i64 %i.an, -8, !dbg !5521           ; 5 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ao, i64 8, !dbg !5522 ; 5 uses
  store ptr %i.bo, ptr %6, align 8, !dbg !5523, !alias.scope !5369
  store i64 %i.bn, ptr %i.al, align 8, !dbg !5523, !alias.scope !5369
  br label %._crit_edge.i9.i, !dbg !5524

._crit_edge.i9.i:                                 ; preds = %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsfISxE4fmY1Y_14polars_parquet.exit.i13.i
  %.promoted526606 = phi i64 [ %i.bn, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsfISxE4fmY1Y_14polars_parquet.exit.i13.i ], [ %.promoted526607, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i ] ; 4 uses
  %.promoted521600 = phi ptr [ %i.bo, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsfISxE4fmY1Y_14polars_parquet.exit.i13.i ], [ %.promoted521601, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i ] ; 4 uses
  %.promoted516594 = phi i64 [ %i.bm, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsfISxE4fmY1Y_14polars_parquet.exit.i13.i ], [ %.promoted516595, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i ] ; 4 uses
  %.promoted482527 = phi i64 [ %i.bn, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsfISxE4fmY1Y_14polars_parquet.exit.i13.i ], [ %.promoted482528, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i ] ; 3 uses
  %.promoted478522 = phi ptr [ %i.bo, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsfISxE4fmY1Y_14polars_parquet.exit.i13.i ], [ %.promoted478523, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i ] ; 3 uses
  %.promoted474517 = phi i64 [ %i.bm, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsfISxE4fmY1Y_14polars_parquet.exit.i13.i ], [ %.promoted474518, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i ] ; 3 uses
  %.promoted456483 = phi i64 [ %i.bn, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsfISxE4fmY1Y_14polars_parquet.exit.i13.i ], [ %.promoted456484, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i ] ; 2 uses
  %.promoted455479 = phi ptr [ %i.bo, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsfISxE4fmY1Y_14polars_parquet.exit.i13.i ], [ %.promoted455480, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i ] ; 2 uses
  %.promoted454475 = phi i64 [ %i.bm, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsfISxE4fmY1Y_14polars_parquet.exit.i13.i ], [ %.promoted454476, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i ] ; 2 uses
  %i.bp = phi i64 [ %i.bn, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsfISxE4fmY1Y_14polars_parquet.exit.i13.i ], [ %i.an, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i ]
  %i.bq = phi ptr [ %i.bo, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsfISxE4fmY1Y_14polars_parquet.exit.i13.i ], [ %i.ao, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i ]
  %i.br = phi i64 [ %i.bm, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsfISxE4fmY1Y_14polars_parquet.exit.i13.i ], [ %i.ap, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i ]
  %i.bs = phi i64 [ %.sroa.0.0.i.i14.i, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsfISxE4fmY1Y_14polars_parquet.exit.i13.i ], [ %i.ar, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i ], !dbg !5525
  %i.bt = phi i64 [ %.sroa.02.0.copyload.i15.i, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsfISxE4fmY1Y_14polars_parquet.exit.i13.i ], [ %i.aq, %_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.i ], !dbg !5526 ; 2 uses
  %i.bu = trunc i64 %i.bt to i1, !dbg !5526       ; 3 uses
  %i.bv = lshr i64 %i.bt, 1, !dbg !5527           ; 5 uses
  store i64 %i.bv, ptr %.phi.trans.insert.i10.i, align 8, !dbg !5527, !alias.scope !5369
  %i.bw = add i64 %i.bs, -1, !dbg !5525           ; 5 uses
  store i64 %i.bw, ptr %i.aj, align 8, !dbg !5525, !alias.scope !5369
  br i1 %i.bh, label %bb.i, label %bb.h, !dbg !5528

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 144, !dbg !5529 ; 2 uses
  %i.by = load i64, ptr %i.bx, align 8, !dbg !5529, !noundef !1309
  %i.bz = add i64 %i.by, %.sroa.05.0.ph, !dbg !5530
  store i64 %i.bz, ptr %i.bx, align 8, !dbg !5531
  br i1 %7, label %bb.ac, label %.critedge, !dbg !5532

bb.h:                                             ; preds = %._crit_edge.i9.i
  br i1 %i.bu, label %bb.j, label %.backedge, !dbg !5533

bb.i:                                             ; preds = %._crit_edge.i9.i
  %i.ca = icmp ult i64 %.sroa.820.0.ph342, 4, !dbg !5534
  br i1 %i.ca, label %bb.m, label %bb.n, !dbg !5534, !prof !1434

bb.j:                                             ; preds = %bb.h
  %i.cb = load i64, ptr %i.q, align 8, !dbg !5535, !alias.scope !5372, !noundef !1309 ; 3 uses
  %i.cc = load i64, ptr %3, align 8, !dbg !5536, !range !1361, !alias.scope !5372, !noundef !1309
  %i.cd = icmp eq i64 %i.cb, %i.cc, !dbg !5537
  br i1 %i.cd, label %bb.k, label %bb.l, !dbg !5537

bb.k:                                             ; preds = %bb.j
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewE8grow_oneBU_(ptr noalias noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.l unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !5538

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.ce = load ptr, ptr %i.am, align 8, !dbg !5539, !alias.scope !5372, !nonnull !1309, !noundef !1309
  %i.cf = getelementptr inbounds nuw [16 x i8], ptr %i.ce, i64 %i.cb, !dbg !5540
  %i.cg = add i64 %i.cb, 1, !dbg !5541
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.cf, i8 0, i64 16, i1 false), !dbg !5542
  store i64 %i.cg, ptr %i.q, align 8, !dbg !5541, !alias.scope !5372
  br label %.backedge, !dbg !5543

.backedge:                                        ; preds = %bb.l, %bb.h
  br label %bb.d, !dbg !5503

bb.m:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !5544
  invoke void @_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize7binview17invalid_input_err(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.n)
          to label %bb.aa unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !5544

bb.n:                                             ; preds = %bb.i
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.015.0.ph343, i64 4, !dbg !5545 ; 5 uses
  %i.ci = add nsw i64 %.sroa.820.0.ph342, -4, !dbg !5546 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.015.0.ph343) ], !dbg !5547
  %.sroa.014.0.copyload = load i32, ptr %.sroa.015.0.ph343, align 1, !dbg !5548 ; 6 uses
  %i.cj = zext i32 %.sroa.014.0.copyload to i64, !dbg !5549 ; 8 uses
  %i.ck = icmp ult i64 %i.ci, %i.cj, !dbg !5550
  br i1 %i.ck, label %bb.o, label %bb.p, !dbg !5550, !prof !1434

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !5551
  invoke void @_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize7binview17invalid_input_err(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.m)
          to label %bb.z unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !5551

bb.p:                                             ; preds = %bb.n
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.cj, !dbg !5552 ; 3 uses
  %i.cm = sub nuw nsw i64 %i.ci, %i.cj, !dbg !5553 ; 3 uses
  %i.cn = icmp ult i32 %.sroa.014.0.copyload, 128, !dbg !5554
  %i.co = select i1 %i.cn, i1 %.sroa.03.0.ph344, i1 false, !dbg !5555 ; 3 uses
  %i.cp = icmp eq i32 %.sroa.014.0.copyload, 0, !dbg !5556
  br i1 %i.cp, label %.thread112, label %bb.q, !dbg !5556

bb.q:                                             ; preds = %bb.p
  %i.cq = load i8, ptr %i.ch, align 1, !dbg !5557, !noundef !1309
  %i.cr = icmp sgt i8 %i.cq, -65, !dbg !5557
  %i.cs = select i1 %i.cr, i8 %.sroa.0.0.ph345.ph, i8 0, !dbg !5558 ; 3 uses
  br i1 %i.bu, label %bb.r, label %.outer341.outer, !dbg !5559

.thread112:                                       ; preds = %bb.p
  br i1 %i.bu, label %.thread114.a, label %.outer341, !dbg !5559

bb.r:                                             ; preds = %bb.q
  %i.ct = load i64, ptr %i.af, align 8, !dbg !5560, !noundef !1309 ; 2 uses
  %i.cu = icmp sgt i64 %i.ct, -1, !dbg !5561
  call void @llvm.assume(i1 %i.cu), !dbg !5562
  %i.cv = trunc i64 %i.ct to i32, !dbg !5563
  %i.cw = icmp ult i32 %.sroa.014.0.copyload, 13, !dbg !5564
  br i1 %i.cw, label %.thread114.a, label %bb.s, !dbg !5564

bb.s:                                             ; preds = %bb.r
  invoke void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o, i64 noundef %i.cj)
          to label %bb.u unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !5565

.thread114.a:                                     ; preds = %.thread112, %bb.r
  %i.cx = phi i8 [ %i.cs, %bb.r ], [ %.sroa.0.0.ph345.ph, %.thread112 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.496), !dbg !5566
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.439), !dbg !5567
  store i32 0, ptr %.sroa.439, align 4, !dbg !5568
  store i32 0, ptr %.sroa.439.4..sroa_idx399, align 4, !dbg !5568
  store i32 0, ptr %.sroa.439.8..sroa_idx, align 4, !dbg !5568
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.439, ptr nonnull align 1 %i.ch, i64 %i.cj, i1 false), !dbg !5569
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.496, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.439, i64 12, i1 false), !dbg !5570
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.439), !dbg !5571
  %i.cy = load i64, ptr %i.q, align 8, !dbg !5572, !alias.scope !5381, !noundef !1309 ; 3 uses
  %i.cz = load i64, ptr %3, align 8, !dbg !5573, !range !1361, !alias.scope !5381, !noundef !1309
  %i.da = icmp eq i64 %i.cy, %i.cz, !dbg !5574
  br i1 %i.da, label %bb.t, label %bb.y, !dbg !5574

bb.t:                                             ; preds = %.thread114.a
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewE8grow_oneBU_(ptr noalias noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.y unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !5575

bb.u:                                             ; preds = %bb.s
  %i.db = load i64, ptr %i.af, align 8, !dbg !5576, !alias.scope !5383, !noundef !1309 ; 2 uses
  %i.dc = icmp sgt i64 %i.db, -1, !dbg !5577
  call void @llvm.assume(i1 %i.dc), !dbg !5578
  %i.dd = load ptr, ptr %i.ae, align 8, !dbg !5579, !alias.scope !5383, !nonnull !1309, !noundef !1309
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.db, !dbg !5580
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.de, ptr nonnull readonly align 1 %i.ch, i64 %i.cj, i1 false), !dbg !5581
  %.pre.i = load i64, ptr %i.af, align 8, !dbg !5582, !alias.scope !5383
  %i.df = add i64 %.pre.i, %i.cj, !dbg !5582
  store i64 %i.df, ptr %i.af, align 8, !dbg !5582, !alias.scope !5383
  %.sroa.041.0.copyload = load i32, ptr %i.ch, align 1, !dbg !5583
  %i.dg = load i64, ptr %i.q, align 8, !dbg !5584, !alias.scope !5389, !noundef !1309 ; 3 uses
  %i.dh = load i64, ptr %3, align 8, !dbg !5585, !range !1361, !alias.scope !5389, !noundef !1309
  %i.di = icmp eq i64 %i.dg, %i.dh, !dbg !5586
  br i1 %i.di, label %bb.v, label %bb.w, !dbg !5586

bb.v:                                             ; preds = %bb.u
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewE8grow_oneBU_(ptr noalias noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.w unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !5587

bb.w:                                             ; preds = %bb.u, %bb.v
  %i.dj = load ptr, ptr %i.am, align 8, !dbg !5588, !alias.scope !5389, !nonnull !1309, !noundef !1309
  %i.dk = getelementptr inbounds nuw [16 x i8], ptr %i.dj, i64 %i.dg, !dbg !5589 ; 4 uses
  store i32 %.sroa.014.0.copyload, ptr %i.dk, align 4, !dbg !5590
  %.sroa.498.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dk, i64 4, !dbg !5590
  store i32 %.sroa.041.0.copyload, ptr %.sroa.498.0..sroa_idx, align 4, !dbg !5590
  %.sroa.599.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dk, i64 8, !dbg !5590
  store i32 %i.v, ptr %.sroa.599.0..sroa_idx, align 4, !dbg !5590
  %.sroa.6100.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dk, i64 12, !dbg !5590
  store i32 %i.cv, ptr %.sroa.6100.0..sroa_idx, align 4, !dbg !5590
  %i.dl = add i64 %i.dg, 1, !dbg !5591
  store i64 %i.dl, ptr %i.q, align 8, !dbg !5591, !alias.scope !5389
  br label %bb.x, !dbg !5592

bb.x:                                             ; preds = %bb.y, %bb.w
  %i.dm = phi i8 [ %i.cx, %bb.y ], [ %i.cs, %bb.w ]
  %.sroa.07.1 = phi i32 [ %i.dr, %bb.y ], [ %.sroa.07.0.ph, %bb.w ], !dbg !5593
  %i.dn = add i64 %.sroa.05.0.ph, %i.cj, !dbg !5594
  br label %.outer, !dbg !5501

bb.y:                                             ; preds = %.thread114.a, %bb.t
  %i.do = load ptr, ptr %i.am, align 8, !dbg !5595, !alias.scope !5381, !nonnull !1309, !noundef !1309
  %i.dp = getelementptr inbounds nuw [16 x i8], ptr %i.do, i64 %i.cy, !dbg !5596 ; 2 uses
  store i32 %.sroa.014.0.copyload, ptr %i.dp, align 4, !dbg !5597
  %.sroa.496.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dp, i64 4, !dbg !5597
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.496.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.496, i64 12, i1 false), !dbg !5597
  %i.dq = add i64 %i.cy, 1, !dbg !5598
  store i64 %i.dq, ptr %i.q, align 8, !dbg !5598, !alias.scope !5381
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.496), !dbg !5599
  %i.dr = add i32 %.sroa.07.0.ph, 1, !dbg !5600
  br label %bb.x, !dbg !5592

bb.z:                                             ; preds = %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.m, i64 32, i1 false), !dbg !5601
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !5602
  br label %bb.ab, !dbg !5603

bb.aa:                                            ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.n, i64 32, i1 false), !dbg !5604
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !5605
  br label %bb.ab, !dbg !5603

bb.ab:                                            ; preds = %bb.z, %bb.aa, %bb.aw, %bb.ax, %bb.bk, %bb.aj
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef align 8 dereferenceable(24) %i.o), !dbg !5606
  br label %bb.bj, !dbg !5607

.critedge:                                        ; preds = %bb.ar, %.noexc82, %.noexc75, %_RNvNtNtCsh1AXECKMxZe_8simdutf814implementation3x8619validate_utf8_basic.exit83, %._crit_edge, %._crit_edge172, %_RNvNtNtCsh1AXECKMxZe_8simdutf814implementation3x8619validate_utf8_basic.exit, %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !5608
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !5608
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false), !dbg !5608
  %i.ds = call noundef nonnull ptr @_RNvMs5_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehE8from_vecCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.f), !dbg !5609
  call void @_RNvMs6_NtCsknLZRuU4977_13polars_buffer6bufferINtB5_6BufferhE12from_storageCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, ptr noundef nonnull %i.ds), !dbg !5610
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !5611
  call void @llvm.experimental.noalias.scope.decl(metadata !5395), !dbg !5612
  call void @llvm.experimental.noalias.scope.decl(metadata !5396), !dbg !5612
  %i.dt = invoke noundef zeroext i1 @_RNvMs2_NtNtNtCs8774dFTUdNv_12polars_arrow5array7binview7mutableINtB5_22MutableBinaryViewArrayShE18finish_in_progressCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(160) %3)
          to label %bb.bc unwind label %bb.bg, !dbg !5613, !noalias !5396 ; 0 uses

bb.ac:                                            ; preds = %bb.g
  %i.du = icmp eq i32 %.sroa.07.0.ph, 0, !dbg !5614
  br i1 %i.du, label %bb.ad, label %bb.ae, !dbg !5614

bb.ad:                                            ; preds = %bb.ac
  %i.dv = trunc nuw i8 %.sroa.0.0.ph345.ph to i1, !dbg !5615
  br i1 %i.dv, label %bb.ag, label %bb.af, !dbg !5615, !prof !1498

bb.ae:                                            ; preds = %bb.ac
  br i1 %.sroa.03.0.ph344, label %bb.al, label %bb.ak, !dbg !5616

bb.af:                                            ; preds = %.noexc75, %_RNvNtNtCsh1AXECKMxZe_8simdutf814implementation3x8619validate_utf8_basic.exit, %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !5617
  invoke void @_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize7binview16invalid_utf8_err(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.l)
          to label %bb.aj unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !5617

bb.ag:                                            ; preds = %bb.ad
  %i.dw = load ptr, ptr %i.ae, align 8, !dbg !5618, !nonnull !1309, !noundef !1309 ; 2 uses
  %i.dx = load i64, ptr %i.af, align 8, !dbg !5619, !noundef !1309 ; 3 uses
  %i.dy = icmp samesign ult i64 %i.dx, 64, !dbg !5620
  br i1 %i.dy, label %bb.ai, label %bb.ah, !dbg !5620

bb.ah:                                            ; preds = %bb.ag
  %i.dz = load atomic ptr, ptr @_RNvNvNtNtCsh1AXECKMxZe_8simdutf814implementation3x8619validate_utf8_basic2FN monotonic, align 8, !dbg !5621, !noalias !5410, !nonnull !1309, !noundef !1309
  %i.ea = invoke noundef zeroext i1 %i.dz(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.dw, i64 noundef range(i64 0, -9223372036854775808) %i.dx)
          to label %_RNvNtNtCsh1AXECKMxZe_8simdutf814implementation3x8619validate_utf8_basic.exit unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !5622, !inline_history !265

bb.ai:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !5623, !noalias !5410
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core3str8converts9from_utf8(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.dw, i64 noundef range(i64 0, -9223372036854775808) %i.dx)
          to label %.noexc75 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !5623

.noexc75:                                         ; preds = %bb.ai
  %i.eb = load i64, ptr %i.d, align 8, !dbg !5623, !range !1425, !noalias !5410, !noundef !1309
  %i.ec = trunc nuw i64 %i.eb to i1, !dbg !5624
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !5625, !noalias !5410
  br i1 %i.ec, label %bb.af, label %.critedge, !dbg !5626, !prof !1434

_RNvNtNtCsh1AXECKMxZe_8simdutf814implementation3x8619validate_utf8_basic.exit: ; preds = %bb.ah
  br i1 %i.ea, label %bb.af, label %.critedge, !dbg !5626, !prof !1434

bb.aj:                                            ; preds = %bb.af
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.l, i64 32, i1 false), !dbg !5627
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !5628
  br label %bb.ab, !dbg !5629

bb.ak:                                            ; preds = %bb.ae
  %i.ed = trunc nuw i8 %.sroa.0.0.ph345.ph to i1, !dbg !5630
  br i1 %i.ed, label %bb.an, label %bb.am, !dbg !5630, !prof !1498

bb.al:                                            ; preds = %bb.ae
  %i.ee = sub nsw i64 %2, %.sroa.820.0.ph342, !dbg !5631 ; 4 uses
  %.not58 = icmp ugt i64 %.sroa.820.0.ph342, %2
  br i1 %.not58, label %.invoke, label %bb.ay, !dbg !5632, !prof !1507

bb.am:                                            ; preds = %.noexc78, %_RNvNtNtCsh1AXECKMxZe_8simdutf814implementation3x8619validate_utf8_basic.exit79, %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !5633
  invoke void @_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize7binview16invalid_utf8_err(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.j)
          to label %bb.ax unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !5633

bb.an:                                            ; preds = %bb.ak
  %i.ef = load ptr, ptr %i.ae, align 8, !dbg !5634, !nonnull !1309, !noundef !1309 ; 2 uses
  %i.eg = load i64, ptr %i.af, align 8, !dbg !5635, !noundef !1309 ; 3 uses
  %i.eh = icmp samesign ult i64 %i.eg, 64, !dbg !5636
  br i1 %i.eh, label %bb.ap, label %bb.ao, !dbg !5636

bb.ao:                                            ; preds = %bb.an
  %i.ei = load atomic ptr, ptr @_RNvNvNtNtCsh1AXECKMxZe_8simdutf814implementation3x8619validate_utf8_basic2FN monotonic, align 8, !dbg !5637, !noalias !5434, !nonnull !1309, !noundef !1309
  %i.ej = invoke noundef zeroext i1 %i.ei(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ef, i64 noundef range(i64 0, -9223372036854775808) %i.eg)
          to label %_RNvNtNtCsh1AXECKMxZe_8simdutf814implementation3x8619validate_utf8_basic.exit79 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !5638, !inline_history !265

bb.ap:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !5639, !noalias !5434
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core3str8converts9from_utf8(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ef, i64 noundef range(i64 0, -9223372036854775808) %i.eg)
          to label %.noexc78 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !5639

.noexc78:                                         ; preds = %bb.ap
  %i.ek = load i64, ptr %i.c, align 8, !dbg !5639, !range !1425, !noalias !5434, !noundef !1309
  %i.el = trunc nuw i64 %i.ek to i1, !dbg !5640
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !5641, !noalias !5434
  br i1 %i.el, label %bb.am, label %bb.aq, !dbg !5642, !prof !1434

_RNvNtNtCsh1AXECKMxZe_8simdutf814implementation3x8619validate_utf8_basic.exit79: ; preds = %bb.ao
  br i1 %i.ej, label %bb.am, label %bb.aq, !dbg !5642, !prof !1434

bb.aq:                                            ; preds = %.noexc78, %_RNvNtNtCsh1AXECKMxZe_8simdutf814implementation3x8619validate_utf8_basic.exit79
  %i.em = load i64, ptr %i.q, align 8, !dbg !5643, !noundef !1309 ; 5 uses
  %i.en = icmp ugt i64 %i.r, %i.em, !dbg !5644
  br i1 %i.en, label %.invoke, label %bb.ar, !dbg !5644, !prof !1434

bb.ar:                                            ; preds = %bb.aq
  %i.eo = load ptr, ptr %i.am, align 8, !dbg !5645, !nonnull !1309, !noundef !1309 ; 2 uses
  %i.ep = getelementptr inbounds nuw [16 x i8], ptr %i.eo, i64 %i.r, !dbg !5646 ; 2 uses
  %i.eq = getelementptr inbounds nuw [16 x i8], ptr %i.eo, i64 %i.em, !dbg !5647 ; 2 uses
  %i.er = icmp samesign eq i64 %i.r, %i.em, !dbg !5648
  br i1 %i.er, label %.critedge, label %.lr.ph, !dbg !5461

.lr.ph:                                           ; preds = %bb.ar, %.lr.ph
  %.sroa.026.0168 = phi i1 [ %i.ey, %.lr.ph ], [ true, %bb.ar ]
  %.sroa.028.0167 = phi ptr [ %i.es, %.lr.ph ], [ %i.ep, %bb.ar ] ; 3 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.sroa.028.0167, i64 16, !dbg !5649 ; 2 uses
  %i.et = load i32, ptr %.sroa.028.0167, align 4, !dbg !5650, !noundef !1309
  %i.eu = icmp ugt i32 %i.et, 12, !dbg !5651
  %.sroa.030.0.copyload = load i128, ptr %.sroa.028.0167, align 4, !dbg !5652
  %i.ev = and i128 %.sroa.030.0.copyload, 39769430595395432203818139776, !dbg !5652
end_hunk_0
begin_hunk_1_@_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize7binview20decode_plain_genericNCNvNtB2_15optional_masked6decode0EBa_:bb.a
          to label %bb.au unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !5662

bb.au:                                            ; preds = %bb.at
  %i.fg = load i64, ptr %i.i, align 8, !dbg !5665, !range !1425, !noundef !1309
  %i.fh = trunc nuw i64 %i.fg to i1, !dbg !5666
  %i.fi = xor i1 %i.fh, true, !dbg !5666
  %i.fj = and i1 %.sroa.031.0170, %i.fi, !dbg !5666
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !5667
  br label %bb.as, !dbg !5668

bb.av:                                            ; preds = %._crit_edge172
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !5669
  invoke void @_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize7binview16invalid_utf8_err(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.h)
          to label %bb.aw unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !5669

bb.aw:                                            ; preds = %bb.av
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 32, i1 false), !dbg !5670
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !5671
  br label %bb.ab, !dbg !5629

bb.ax:                                            ; preds = %bb.am
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.j, i64 32, i1 false), !dbg !5672
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !5673
  br label %bb.ab, !dbg !5629

.invoke:                                          ; preds = %bb.al, %bb.aq
  %i.fk = phi i64 [ %i.r, %bb.aq ], [ 0, %bb.al ]
  %i.fl = phi i64 [ %i.em, %bb.aq ], [ %i.ee, %bb.al ]
  %i.fm = phi i64 [ %i.em, %bb.aq ], [ %2, %bb.al ]
  %i.fn = phi ptr [ @2, %bb.aq ], [ @3, %bb.al ]
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.fk, i64 noundef %i.fl, i64 noundef %i.fm, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.fn) #36
          to label %.cont unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !5674

.cont:                                            ; preds = %.invoke
  unreachable

bb.ay:                                            ; preds = %bb.al
  %i.fo = icmp samesign ult i64 %i.ee, 64, !dbg !5675
  br i1 %i.fo, label %bb.ba, label %bb.az, !dbg !5675

bb.az:                                            ; preds = %bb.ay
  %i.fp = load atomic ptr, ptr @_RNvNvNtNtCsh1AXECKMxZe_8simdutf814implementation3x8619validate_utf8_basic2FN monotonic, align 8, !dbg !5676, !noalias !5475, !nonnull !1309, !noundef !1309
  %i.fq = invoke noundef zeroext i1 %i.fp(ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %i.ee)
          to label %_RNvNtNtCsh1AXECKMxZe_8simdutf814implementation3x8619validate_utf8_basic.exit83 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !5677, !inline_history !265

bb.ba:                                            ; preds = %bb.ay
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !5678, !noalias !5475
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core3str8converts9from_utf8(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %i.ee)
          to label %.noexc82 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !5678

.noexc82:                                         ; preds = %bb.ba
  %i.fr = load i64, ptr %i.b, align 8, !dbg !5678, !range !1425, !noalias !5475, !noundef !1309
  %i.fs = trunc nuw i64 %i.fr to i1, !dbg !5679
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !5680, !noalias !5475
  br i1 %i.fs, label %bb.bb, label %.critedge, !dbg !5681, !prof !1434

_RNvNtNtCsh1AXECKMxZe_8simdutf814implementation3x8619validate_utf8_basic.exit83: ; preds = %bb.az
  br i1 %i.fq, label %bb.bb, label %.critedge, !dbg !5681, !prof !1434

bb.bb:                                            ; preds = %.noexc82, %_RNvNtNtCsh1AXECKMxZe_8simdutf814implementation3x8619validate_utf8_basic.exit83
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !5682
  invoke void @_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize7binview16invalid_utf8_err(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.k)
          to label %bb.bk unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !5682

bb.bc:                                            ; preds = %.critedge
  %i.ft = getelementptr inbounds nuw i8, ptr %3, i64 24, !dbg !5683 ; 2 uses
  %i.fu = load i64, ptr %i.t, align 8, !dbg !5683, !alias.scope !5395, !noundef !1309 ; 4 uses
  %i.fv = icmp ult i64 %i.fu, 384307168202282326, !dbg !5684
  call void @llvm.assume(i1 %i.fv), !dbg !5685
  %i.fw = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !5686
  %i.fx = load i64, ptr %i.fw, align 8, !dbg !5686, !alias.scope !5396, !noundef !1309
  %i.fy = getelementptr inbounds nuw i8, ptr %3, i64 152, !dbg !5687 ; 2 uses
  %i.fz = load i64, ptr %i.fy, align 8, !dbg !5687, !alias.scope !5395, !noundef !1309
  %i.ga = add i64 %i.fz, %i.fx, !dbg !5687
  store i64 %i.ga, ptr %i.fy, align 8, !dbg !5687, !alias.scope !5395
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !5688, !noalias !5478
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !dbg !5688, !noalias !5395
  %i.gb = load i64, ptr %i.ft, align 8, !dbg !5689, !range !1361, !alias.scope !5479, !noundef !1309
  %i.gc = icmp eq i64 %i.fu, %i.gb, !dbg !5690
  br i1 %i.gc, label %bb.bd, label %bb.bi, !dbg !5690

bb.bd:                                            ; preds = %bb.bc
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEE8grow_oneCs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ft)
          to label %bb.bi unwind label %bb.be, !dbg !5691, !noalias !5480

bb.be:                                            ; preds = %bb.bd
  %i.gd = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.body.thread unwind label %bb.bf, !dbg !5692, !noalias !5396

bb.bf:                                            ; preds = %bb.be
  %i.ge = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #33, !dbg !5693, !noalias !5396
  unreachable, !dbg !5693

bb.bg:                                            ; preds = %.critedge
  %i.gf = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %.body.thread unwind label %bb.bh, !dbg !5694

bb.bh:                                            ; preds = %bb.bg
  %i.gg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #33, !dbg !5695
  unreachable, !dbg !5695

bb.bi:                                            ; preds = %bb.bd, %bb.bc
  %i.gh = getelementptr inbounds nuw i8, ptr %3, i64 32, !dbg !5696
  %i.gi = load ptr, ptr %i.gh, align 8, !dbg !5696, !alias.scope !5479, !nonnull !1309, !noundef !1309
  %i.gj = getelementptr inbounds nuw [24 x i8], ptr %i.gi, i64 %i.fu, !dbg !5697
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gj, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !dbg !5698
  %i.gk = add nuw nsw i64 %i.fu, 1, !dbg !5699
  store i64 %i.gk, ptr %i.t, align 8, !dbg !5699, !alias.scope !5479
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !5700, !noalias !5478
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !5701
  store i64 -9223372036854775803, ptr %0, align 8, !dbg !5702
  br label %bb.bj, !dbg !5607

bb.bj:                                            ; preds = %bb.ab, %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !5606
  ret void, !dbg !5703

bb.bk:                                            ; preds = %bb.bb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.k, i64 32, i1 false), !dbg !5704
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !5705
  br label %bb.ab, !dbg !5629

.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.k, %bb.at, %bb.s, %bb.v, %bb.t, %.invoke, %bb.m, %bb.o, %bb.ap, %bb.af, %bb.az, %bb.ai, %bb.bb, %bb.ba, %bb.am, %bb.av, %bb.ah, %bb.ao
  %lpad.loopexit.split-lp347 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef align 8 dereferenceable(24) %i.o) #32
          to label %.body.thread unwind label %bb.bl, !dbg !5606

bb.bl:                                            ; preds = %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.gl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #33, !dbg !5493
  unreachable, !dbg !5493
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize7binview20decode_plain_genericNCNvNtB2_15required_masked6decode0EBa_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2, ptr noalias noundef align 8 dereferenceable(160) %3, i64 noundef %4, ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %5, i1 noundef zeroext %6) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !5706 !guid !5901 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.439 = alloca [12 x i8], align 4          ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 7 uses
  %i.h = alloca [32 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [32 x i8], align 8                ; 4 uses
  %i.k = alloca [32 x i8], align 8                ; 4 uses
  %i.l = alloca [32 x i8], align 8                ; 4 uses
  %.sroa.487 = alloca [12 x i8], align 4          ; 4 uses
  %i.m = alloca [32 x i8], align 8                ; 4 uses
  %i.n = alloca [32 x i8], align 8                ; 4 uses
  %i.o = alloca [24 x i8], align 8                ; 11 uses
  %i.p = tail call noundef zeroext i1 @_RNvMs2_NtNtNtCs8774dFTUdNv_12polars_arrow5array7binview7mutableINtB5_22MutableBinaryViewArrayShE18finish_in_progressCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(160) %3), !dbg !6026 ; 0 uses
  tail call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %4), !dbg !6027
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16, !dbg !6028 ; 6 uses
  %i.r = load i64, ptr %i.q, align 8, !dbg !6028, !noundef !1309 ; 5 uses
  %i.s = icmp ult i64 %i.r, 576460752303423488, !dbg !6029
  tail call void @llvm.assume(i1 %i.s), !dbg !6030
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 40, !dbg !6031 ; 3 uses
  %i.u = load i64, ptr %i.t, align 8, !dbg !6031, !noundef !1309
  %i.v = trunc i64 %i.u to i32, !dbg !6032
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !6033
  %i.w = add nuw i64 %2, 1, !dbg !6034
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !6035
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, i64 noundef %i.w, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !dbg !6035
  %i.x = load i64, ptr %i.e, align 8, !dbg !6035, !range !1425, !noundef !1309
  %i.y = trunc nuw i64 %i.x to i1, !dbg !6036
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !6037
  %i.aa = load i64, ptr %i.z, align 8, !dbg !6037, !range !1314, !noundef !1309 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !6037 ; 2 uses
  br i1 %i.y, label %bb.b, label %bb.c, !dbg !6036, !prof !1434

common.resume:                                    ; preds = %bb.w, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.ba, %bb.bc
  %common.resume.op = phi { ptr, i32 } [ %i.fc, %bb.bc ], [ %i.cp, %bb.w ], [ %lpad.loopexit.split-lp322, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.fa, %bb.ba ]
  resume { ptr, i32 } %common.resume.op, !dbg !6038

bb.b:                                             ; preds = %bb.a
  %i.ac = load i64, ptr %i.ab, align 8, !dbg !6039
  tail call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.aa, i64 %i.ac) #36, !dbg !6040
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.ad = load ptr, ptr %i.ab, align 8, !dbg !6041, !nonnull !1309, !noundef !1309
  %.not = icmp samesign ult i64 %2, %i.aa, !dbg !6042
  tail call void @llvm.assume(i1 %.not), !dbg !6043
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !6044
  store i64 %i.aa, ptr %i.o, align 8, !dbg !6045
  %i.ae = getelementptr inbounds nuw i8, ptr %i.o, i64 8, !dbg !6045 ; 4 uses
  store ptr %i.ad, ptr %i.ae, align 8, !dbg !6045
  %i.af = getelementptr inbounds nuw i8, ptr %i.o, i64 16, !dbg !6045 ; 7 uses
  store i64 0, ptr %i.af, align 8, !dbg !6045
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %.promoted = load i64, ptr %i.ag, align 8, !alias.scope !5913
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %.sroa.439.4..sroa_idx366 = getelementptr inbounds nuw i8, ptr %.sroa.439, i64 4
  %.sroa.439.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.439, i64 8
  %.phi.trans.insert.i.i.promoted = load i64, ptr %.phi.trans.insert.i.i, align 8
  %.promoted440 = load i64, ptr %i.ah, align 8
  %.promoted445 = load ptr, ptr %5, align 8
  %.promoted450 = load i64, ptr %i.ai, align 8
  br label %.outer, !dbg !6046

.outer:                                           ; preds = %bb.r, %bb.c
  %.promoted422454 = phi i64 [ %.promoted422451, %bb.r ], [ %.promoted450, %bb.c ] ; 2 uses
  %.promoted418449 = phi ptr [ %.promoted418446, %bb.r ], [ %.promoted445, %bb.c ] ; 2 uses
  %.promoted414444 = phi i64 [ %.promoted414441, %bb.r ], [ %.promoted440, %bb.c ] ; 2 uses
  %.phi.trans.insert.i.i.promoted412439 = phi i64 [ %i.ba, %bb.r ], [ %.phi.trans.insert.i.i.promoted, %bb.c ]
  %.promoted153159 = phi i64 [ %i.bb, %bb.r ], [ %.promoted, %bb.c ]
  %.sroa.820.0.ph = phi i64 [ %i.bl, %bb.r ], [ %2, %bb.c ]
  %.sroa.015.0.ph = phi ptr [ %i.bk, %bb.r ], [ %1, %bb.c ]
  %.sroa.07.0.ph = phi i32 [ %.sroa.07.1, %bb.r ], [ 0, %bb.c ] ; 3 uses
  %.sroa.05.0.ph = phi i64 [ %i.ck, %bb.r ], [ 0, %bb.c ] ; 2 uses
  %.sroa.03.0.shrunk.ph = phi i1 [ %i.bn, %bb.r ], [ true, %bb.c ]
  %.sroa.0.0.shrunk.ph = phi i1 [ %.sroa.025.0103106, %bb.r ], [ true, %bb.c ]
  br label %.outer111, !dbg !6047

.outer111:                                        ; preds = %.outer, %bb.k
  %.promoted422453 = phi i64 [ %.promoted422454, %.outer ], [ %.promoted422451, %bb.k ]
  %.promoted418448 = phi ptr [ %.promoted418449, %.outer ], [ %.promoted418446, %bb.k ]
  %.promoted414443 = phi i64 [ %.promoted414444, %.outer ], [ %.promoted414441, %bb.k ]
  %.promoted411425 = phi i64 [ %.promoted422454, %.outer ], [ %.promoted411423, %bb.k ] ; 2 uses
  %.promoted410421 = phi ptr [ %.promoted418449, %.outer ], [ %.promoted410419, %bb.k ] ; 2 uses
  %.promoted409417 = phi i64 [ %.promoted414444, %.outer ], [ %.promoted409415, %bb.k ] ; 2 uses
  %.phi.trans.insert.i.i.promoted413 = phi i64 [ %.phi.trans.insert.i.i.promoted412439, %.outer ], [ %i.ba, %bb.k ]
  %.promoted154 = phi i64 [ %.promoted153159, %.outer ], [ %i.bb, %bb.k ]
  %.sroa.820.0.ph112 = phi i64 [ %.sroa.820.0.ph, %.outer ], [ %i.bl, %bb.k ]
  %.sroa.015.0.ph113 = phi ptr [ %.sroa.015.0.ph, %.outer ], [ %i.bk, %bb.k ]
  %.sroa.03.0.shrunk.ph114 = phi i1 [ %.sroa.03.0.shrunk.ph, %.outer ], [ %i.bn, %bb.k ]
  %.sroa.0.0.shrunk.ph115 = phi i1 [ %.sroa.0.0.shrunk.ph, %.outer ], [ %i.br, %bb.k ] ; 4 uses
  br label %bb.d, !dbg !6047

bb.d:                                             ; preds = %.outer111, %.thread101
  %.promoted422452 = phi i64 [ %.promoted422451, %.thread101 ], [ %.promoted422453, %.outer111 ]
  %.promoted418447 = phi ptr [ %.promoted418446, %.thread101 ], [ %.promoted418448, %.outer111 ]
  %.promoted414442 = phi i64 [ %.promoted414441, %.thread101 ], [ %.promoted414443, %.outer111 ]
  %.promoted411424 = phi i64 [ %.promoted411423, %.thread101 ], [ %.promoted411425, %.outer111 ]
  %.promoted410420 = phi ptr [ %.promoted410419, %.thread101 ], [ %.promoted410421, %.outer111 ]
  %.promoted409416 = phi i64 [ %.promoted409415, %.thread101 ], [ %.promoted409417, %.outer111 ]
  %i.ak = phi i64 [ %i.au, %.thread101 ], [ %.promoted411425, %.outer111 ] ; 2 uses
  %i.al = phi ptr [ %i.av, %.thread101 ], [ %.promoted410421, %.outer111 ] ; 3 uses
  %i.am = phi i64 [ %i.aw, %.thread101 ], [ %.promoted409417, %.outer111 ] ; 4 uses
  %i.an = phi i64 [ %i.ba, %.thread101 ], [ %.phi.trans.insert.i.i.promoted413, %.outer111 ]
  %i.ao = phi i64 [ %i.bb, %.thread101 ], [ %.promoted154, %.outer111 ] ; 2 uses
  %.sroa.820.0 = phi i64 [ %i.bl, %.thread101 ], [ %.sroa.820.0.ph112, %.outer111 ], !dbg !6048 ; 4 uses
  %.sroa.015.0 = phi ptr [ %i.bk, %.thread101 ], [ %.sroa.015.0.ph113, %.outer111 ], !dbg !6048 ; 3 uses
  %.sroa.03.0.shrunk = phi i1 [ %i.bn, %.thread101 ], [ %.sroa.03.0.shrunk.ph114, %.outer111 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5913), !dbg !6049
  %i.ap = icmp eq i64 %i.ao, 0, !dbg !6047
  br i1 %i.ap, label %bb.e, label %._crit_edge.i.i, !dbg !6047

bb.e:                                             ; preds = %bb.d
  %i.aq = icmp eq i64 %i.am, 0, !dbg !6050
  br i1 %i.aq, label %bb.f, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsfISxE4fmY1Y_14polars_parquet.exit.i.i, !dbg !6050

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsfISxE4fmY1Y_14polars_parquet.exit.i.i: ; preds = %bb.e
  %.sroa.0.0.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.am, i64 64), !dbg !6051 ; 2 uses
  %i.ar = sub nuw i64 %i.am, %.sroa.0.0.i.i.i, !dbg !6052 ; 4 uses
  store i64 %i.ar, ptr %i.ah, align 8, !dbg !6052, !alias.scope !5913
  %.sroa.02.0.copyload.i.i = load i64, ptr %i.al, align 1, !dbg !6053, !noalias !5913
  %i.as = add i64 %i.ak, -8, !dbg !6054           ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.al, i64 8, !dbg !6055 ; 4 uses
  store ptr %i.at, ptr %5, align 8, !dbg !6056, !alias.scope !5913
  store i64 %i.as, ptr %i.ai, align 8, !dbg !6056, !alias.scope !5913
  br label %._crit_edge.i.i, !dbg !6057

._crit_edge.i.i:                                  ; preds = %bb.d, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsfISxE4fmY1Y_14polars_parquet.exit.i.i
  %.promoted422451 = phi i64 [ %i.as, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsfISxE4fmY1Y_14polars_parquet.exit.i.i ], [ %.promoted422452, %bb.d ] ; 3 uses
  %.promoted418446 = phi ptr [ %i.at, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsfISxE4fmY1Y_14polars_parquet.exit.i.i ], [ %.promoted418447, %bb.d ] ; 3 uses
  %.promoted414441 = phi i64 [ %i.ar, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsfISxE4fmY1Y_14polars_parquet.exit.i.i ], [ %.promoted414442, %bb.d ] ; 3 uses
  %.promoted411423 = phi i64 [ %i.as, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsfISxE4fmY1Y_14polars_parquet.exit.i.i ], [ %.promoted411424, %bb.d ] ; 2 uses
  %.promoted410419 = phi ptr [ %i.at, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsfISxE4fmY1Y_14polars_parquet.exit.i.i ], [ %.promoted410420, %bb.d ] ; 2 uses
  %.promoted409415 = phi i64 [ %i.ar, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsfISxE4fmY1Y_14polars_parquet.exit.i.i ], [ %.promoted409416, %bb.d ] ; 2 uses
  %i.au = phi i64 [ %i.as, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsfISxE4fmY1Y_14polars_parquet.exit.i.i ], [ %i.ak, %bb.d ]
  %i.av = phi ptr [ %i.at, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsfISxE4fmY1Y_14polars_parquet.exit.i.i ], [ %i.al, %bb.d ]
  %i.aw = phi i64 [ %i.ar, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsfISxE4fmY1Y_14polars_parquet.exit.i.i ], [ %i.am, %bb.d ]
  %i.ax = phi i64 [ %.sroa.0.0.i.i.i, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsfISxE4fmY1Y_14polars_parquet.exit.i.i ], [ %i.ao, %bb.d ], !dbg !6058
  %i.ay = phi i64 [ %.sroa.02.0.copyload.i.i, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsfISxE4fmY1Y_14polars_parquet.exit.i.i ], [ %i.an, %bb.d ], !dbg !6059 ; 2 uses
  %i.az = trunc i64 %i.ay to i1, !dbg !6059       ; 2 uses
  %i.ba = lshr i64 %i.ay, 1, !dbg !6060           ; 4 uses
  store i64 %i.ba, ptr %.phi.trans.insert.i.i, align 8, !dbg !6060, !alias.scope !5913
  %i.bb = add i64 %i.ax, -1, !dbg !6058           ; 4 uses
  store i64 %i.bb, ptr %i.ag, align 8, !dbg !6058, !alias.scope !5913
  %i.bc = icmp ult i64 %.sroa.820.0, 4, !dbg !6061
  br i1 %i.bc, label %bb.g, label %bb.h, !dbg !6061, !prof !1434

bb.f:                                             ; preds = %bb.e
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 144, !dbg !6062 ; 2 uses
  %i.be = load i64, ptr %i.bd, align 8, !dbg !6062, !noundef !1309
  %i.bf = add i64 %i.be, %.sroa.05.0.ph, !dbg !6063
  store i64 %i.bf, ptr %i.bd, align 8, !dbg !6064
  br i1 %6, label %bb.y, label %.critedge, !dbg !6065

bb.g:                                             ; preds = %._crit_edge.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !6066
  invoke void @_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize7binview17invalid_input_err(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.n)
          to label %bb.u unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !6066

bb.h:                                             ; preds = %._crit_edge.i.i
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.015.0, i64 4, !dbg !6067 ; 5 uses
  %i.bh = add nsw i64 %.sroa.820.0, -4, !dbg !6068 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.015.0) ], !dbg !6069
  %.sroa.014.0.copyload = load i32, ptr %.sroa.015.0, align 1, !dbg !6070 ; 6 uses
  %i.bi = zext i32 %.sroa.014.0.copyload to i64, !dbg !6071 ; 8 uses
  %i.bj = icmp ult i64 %i.bh, %i.bi, !dbg !6072
  br i1 %i.bj, label %bb.i, label %bb.j, !dbg !6072, !prof !1434

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !6073
  invoke void @_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize7binview17invalid_input_err(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.m)
          to label %bb.t unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !6073

bb.j:                                             ; preds = %bb.h
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bi, !dbg !6074 ; 3 uses
  %i.bl = sub nuw nsw i64 %i.bh, %i.bi, !dbg !6075 ; 3 uses
  %i.bm = icmp ult i32 %.sroa.014.0.copyload, 128, !dbg !6076
  %i.bn = and i1 %.sroa.03.0.shrunk, %i.bm, !dbg !6077 ; 3 uses
  %i.bo = icmp eq i32 %.sroa.014.0.copyload, 0, !dbg !6078
  br i1 %i.bo, label %.thread101, label %bb.k, !dbg !6078

bb.k:                                             ; preds = %bb.j
  %i.bp = load i8, ptr %i.bg, align 1, !dbg !6079, !noundef !1309
  %i.bq = icmp sgt i8 %i.bp, -65, !dbg !6079
  %i.br = and i1 %.sroa.0.0.shrunk.ph115, %i.bq, !dbg !6080 ; 3 uses
  br i1 %i.az, label %bb.l, label %.outer111, !dbg !6081

.thread101:                                       ; preds = %bb.j
  br i1 %i.az, label %.thread104.a, label %bb.d, !dbg !6081

bb.l:                                             ; preds = %bb.k
  %i.bs = load i64, ptr %i.af, align 8, !dbg !6082, !noundef !1309 ; 2 uses
  %i.bt = icmp sgt i64 %i.bs, -1, !dbg !6083
  call void @llvm.assume(i1 %i.bt), !dbg !6084
  %i.bu = trunc i64 %i.bs to i32, !dbg !6085
  %i.bv = icmp ult i32 %.sroa.014.0.copyload, 13, !dbg !6086
  br i1 %i.bv, label %.thread104.a, label %bb.m, !dbg !6086

bb.m:                                             ; preds = %bb.l
  invoke void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o, i64 noundef %i.bi)
          to label %bb.o unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !6087

.thread104.a:                                     ; preds = %.thread101, %bb.l
  %.sroa.025.0103107 = phi i1 [ %i.br, %bb.l ], [ %.sroa.0.0.shrunk.ph115, %.thread101 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.487), !dbg !6088
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.439), !dbg !6089
  store i32 0, ptr %.sroa.439, align 4, !dbg !6090
  store i32 0, ptr %.sroa.439.4..sroa_idx366, align 4, !dbg !6090
  store i32 0, ptr %.sroa.439.8..sroa_idx, align 4, !dbg !6090
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.439, ptr nonnull align 1 %i.bg, i64 %i.bi, i1 false), !dbg !6091
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.487, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.439, i64 12, i1 false), !dbg !6092
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.439), !dbg !6093
  %i.bw = load i64, ptr %i.q, align 8, !dbg !6094, !alias.scope !5926, !noundef !1309 ; 3 uses
  %i.bx = load i64, ptr %3, align 8, !dbg !6095, !range !1361, !alias.scope !5926, !noundef !1309
  %i.by = icmp eq i64 %i.bw, %i.bx, !dbg !6096
  br i1 %i.by, label %bb.n, label %bb.s, !dbg !6096

bb.n:                                             ; preds = %.thread104.a
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewE8grow_oneBU_(ptr noalias noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.s unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !6097

bb.o:                                             ; preds = %bb.m
  %i.bz = load i64, ptr %i.af, align 8, !dbg !6098, !alias.scope !5928, !noundef !1309 ; 2 uses
  %i.ca = icmp sgt i64 %i.bz, -1, !dbg !6099
  call void @llvm.assume(i1 %i.ca), !dbg !6100
  %i.cb = load ptr, ptr %i.ae, align 8, !dbg !6101, !alias.scope !5928, !nonnull !1309, !noundef !1309
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.bz, !dbg !6102
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cc, ptr nonnull readonly align 1 %i.bg, i64 %i.bi, i1 false), !dbg !6103
  %.pre.i = load i64, ptr %i.af, align 8, !dbg !6104, !alias.scope !5928
  %i.cd = add i64 %.pre.i, %i.bi, !dbg !6104
  store i64 %i.cd, ptr %i.af, align 8, !dbg !6104, !alias.scope !5928
  %.sroa.041.0.copyload = load i32, ptr %i.bg, align 1, !dbg !6105
  %i.ce = load i64, ptr %i.q, align 8, !dbg !6106, !alias.scope !5934, !noundef !1309 ; 3 uses
  %i.cf = load i64, ptr %3, align 8, !dbg !6107, !range !1361, !alias.scope !5934, !noundef !1309
  %i.cg = icmp eq i64 %i.ce, %i.cf, !dbg !6108
  br i1 %i.cg, label %bb.p, label %bb.q, !dbg !6108

bb.p:                                             ; preds = %bb.o
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewE8grow_oneBU_(ptr noalias noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.q unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !6109

bb.q:                                             ; preds = %bb.o, %bb.p
  %i.ch = load ptr, ptr %i.aj, align 8, !dbg !6110, !alias.scope !5934, !nonnull !1309, !noundef !1309
  %i.ci = getelementptr inbounds nuw [16 x i8], ptr %i.ch, i64 %i.ce, !dbg !6111 ; 4 uses
  store i32 %.sroa.014.0.copyload, ptr %i.ci, align 4, !dbg !6112
  %.sroa.489.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ci, i64 4, !dbg !6112
  store i32 %.sroa.041.0.copyload, ptr %.sroa.489.0..sroa_idx, align 4, !dbg !6112
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ci, i64 8, !dbg !6112
  store i32 %i.v, ptr %.sroa.5.0..sroa_idx, align 4, !dbg !6112
  %.sroa.690.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ci, i64 12, !dbg !6112
  store i32 %i.bu, ptr %.sroa.690.0..sroa_idx, align 4, !dbg !6112
  %i.cj = add i64 %i.ce, 1, !dbg !6113
  store i64 %i.cj, ptr %i.q, align 8, !dbg !6113, !alias.scope !5934
  br label %bb.r, !dbg !6114

bb.r:                                             ; preds = %bb.s, %bb.q
  %.sroa.025.0103106 = phi i1 [ %.sroa.025.0103107, %bb.s ], [ %i.br, %bb.q ]
  %.sroa.07.1 = phi i32 [ %i.co, %bb.s ], [ %.sroa.07.0.ph, %bb.q ], !dbg !6115
  %i.ck = add i64 %.sroa.05.0.ph, %i.bi, !dbg !6116
  br label %.outer, !dbg !6046

bb.s:                                             ; preds = %.thread104.a, %bb.n
  %i.cl = load ptr, ptr %i.aj, align 8, !dbg !6117, !alias.scope !5926, !nonnull !1309, !noundef !1309
  %i.cm = getelementptr inbounds nuw [16 x i8], ptr %i.cl, i64 %i.bw, !dbg !6118 ; 2 uses
  store i32 %.sroa.014.0.copyload, ptr %i.cm, align 4, !dbg !6119
  %.sroa.487.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cm, i64 4, !dbg !6119
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.487.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.487, i64 12, i1 false), !dbg !6119
  %i.cn = add i64 %i.bw, 1, !dbg !6120
  store i64 %i.cn, ptr %i.q, align 8, !dbg !6120, !alias.scope !5926
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.487), !dbg !6121
  %i.co = add i32 %.sroa.07.0.ph, 1, !dbg !6122
  br label %bb.r, !dbg !6114

bb.t:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.m, i64 32, i1 false), !dbg !6123
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !6124
  br label %bb.v, !dbg !6125

bb.u:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.n, i64 32, i1 false), !dbg !6126
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !6127
  br label %bb.v, !dbg !6125

bb.v:                                             ; preds = %bb.t, %bb.u, %bb.as, %bb.at, %bb.bg, %bb.af
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECsfISxE4fmY1Y_14polars_parquet.exit unwind label %bb.w, !dbg !6128

bb.w:                                             ; preds = %bb.v
  %i.cp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %common.resume unwind label %bb.x, !dbg !6129

bb.x:                                             ; preds = %bb.w
  %i.cq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #33, !dbg !6128
  unreachable, !dbg !6128

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECsfISxE4fmY1Y_14polars_parquet.exit: ; preds = %bb.v
  call void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o), !dbg !6130
  br label %bb.bf, !dbg !6131

.critedge:                                        ; preds = %bb.an, %.noexc79, %.noexc72, %_RNvNtNtCsh1AXECKMxZe_8simdutf814implementation3x8619validate_utf8_basic.exit80, %._crit_edge, %._crit_edge169, %_RNvNtNtCsh1AXECKMxZe_8simdutf814implementation3x8619validate_utf8_basic.exit, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !6132
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !6132
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false), !dbg !6132
  %i.cr = call noundef nonnull ptr @_RNvMs5_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehE8from_vecCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.f), !dbg !6133
  call void @_RNvMs6_NtCsknLZRuU4977_13polars_buffer6bufferINtB5_6BufferhE12from_storageCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, ptr noundef nonnull %i.cr), !dbg !6134
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !6135
  call void @llvm.experimental.noalias.scope.decl(metadata !5940), !dbg !6136
  call void @llvm.experimental.noalias.scope.decl(metadata !5941), !dbg !6136
  %i.cs = invoke noundef zeroext i1 @_RNvMs2_NtNtNtCs8774dFTUdNv_12polars_arrow5array7binview7mutableINtB5_22MutableBinaryViewArrayShE18finish_in_progressCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(160) %3)
          to label %bb.ay unwind label %bb.bc, !dbg !6137, !noalias !5941 ; 0 uses

bb.y:                                             ; preds = %bb.f
  %i.ct = icmp eq i32 %.sroa.07.0.ph, 0, !dbg !6138
  br i1 %i.ct, label %bb.z, label %bb.aa, !dbg !6138

bb.z:                                             ; preds = %bb.y
  br i1 %.sroa.0.0.shrunk.ph115, label %bb.ac, label %bb.ab, !dbg !6139, !prof !1498

bb.aa:                                            ; preds = %bb.y
  br i1 %.sroa.03.0.shrunk, label %bb.ah, label %bb.ag, !dbg !6140

bb.ab:                                            ; preds = %.noexc72, %_RNvNtNtCsh1AXECKMxZe_8simdutf814implementation3x8619validate_utf8_basic.exit, %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !6141
  invoke void @_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize7binview16invalid_utf8_err(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.l)
          to label %bb.af unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !6141

bb.ac:                                            ; preds = %bb.z
  %i.cu = load ptr, ptr %i.ae, align 8, !dbg !6142, !nonnull !1309, !noundef !1309 ; 2 uses
  %i.cv = load i64, ptr %i.af, align 8, !dbg !6143, !noundef !1309 ; 3 uses
  %i.cw = icmp samesign ult i64 %i.cv, 64, !dbg !6144
  br i1 %i.cw, label %bb.ae, label %bb.ad, !dbg !6144

bb.ad:                                            ; preds = %bb.ac
  %i.cx = load atomic ptr, ptr @_RNvNvNtNtCsh1AXECKMxZe_8simdutf814implementation3x8619validate_utf8_basic2FN monotonic, align 8, !dbg !6145, !noalias !5955, !nonnull !1309, !noundef !1309
  %i.cy = invoke noundef zeroext i1 %i.cx(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.cu, i64 noundef range(i64 0, -9223372036854775808) %i.cv)
          to label %_RNvNtNtCsh1AXECKMxZe_8simdutf814implementation3x8619validate_utf8_basic.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !6146, !inline_history !265

bb.ae:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !6147, !noalias !5955
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core3str8converts9from_utf8(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.cu, i64 noundef range(i64 0, -9223372036854775808) %i.cv)
          to label %.noexc72 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !6147

.noexc72:                                         ; preds = %bb.ae
  %i.cz = load i64, ptr %i.d, align 8, !dbg !6147, !range !1425, !noalias !5955, !noundef !1309
  %i.da = trunc nuw i64 %i.cz to i1, !dbg !6148
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !6149, !noalias !5955
  br i1 %i.da, label %bb.ab, label %.critedge, !dbg !6150, !prof !1434

_RNvNtNtCsh1AXECKMxZe_8simdutf814implementation3x8619validate_utf8_basic.exit: ; preds = %bb.ad
  br i1 %i.cy, label %bb.ab, label %.critedge, !dbg !6150, !prof !1434

bb.af:                                            ; preds = %bb.ab
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.l, i64 32, i1 false), !dbg !6151
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !6152
  br label %bb.v, !dbg !6153

bb.ag:                                            ; preds = %bb.aa
  br i1 %.sroa.0.0.shrunk.ph115, label %bb.aj, label %bb.ai, !dbg !6154, !prof !1498

bb.ah:                                            ; preds = %bb.aa
  %i.db = sub nsw i64 %2, %.sroa.820.0, !dbg !6155 ; 4 uses
  %.not58 = icmp ugt i64 %.sroa.820.0, %2
  br i1 %.not58, label %.invoke, label %bb.au, !dbg !6156, !prof !1507

bb.ai:                                            ; preds = %.noexc75, %_RNvNtNtCsh1AXECKMxZe_8simdutf814implementation3x8619validate_utf8_basic.exit76, %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !6157
  invoke void @_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize7binview16invalid_utf8_err(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.j)
          to label %bb.at unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !6157

bb.aj:                                            ; preds = %bb.ag
  %i.dc = load ptr, ptr %i.ae, align 8, !dbg !6158, !nonnull !1309, !noundef !1309 ; 2 uses
  %i.dd = load i64, ptr %i.af, align 8, !dbg !6159, !noundef !1309 ; 3 uses
  %i.de = icmp samesign ult i64 %i.dd, 64, !dbg !6160
  br i1 %i.de, label %bb.al, label %bb.ak, !dbg !6160

bb.ak:                                            ; preds = %bb.aj
  %i.df = load atomic ptr, ptr @_RNvNvNtNtCsh1AXECKMxZe_8simdutf814implementation3x8619validate_utf8_basic2FN monotonic, align 8, !dbg !6161, !noalias !5979, !nonnull !1309, !noundef !1309
  %i.dg = invoke noundef zeroext i1 %i.df(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.dc, i64 noundef range(i64 0, -9223372036854775808) %i.dd)
          to label %_RNvNtNtCsh1AXECKMxZe_8simdutf814implementation3x8619validate_utf8_basic.exit76 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !6162, !inline_history !265

bb.al:                                            ; preds = %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !6163, !noalias !5979
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core3str8converts9from_utf8(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.dc, i64 noundef range(i64 0, -9223372036854775808) %i.dd)
          to label %.noexc75 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !6163

.noexc75:                                         ; preds = %bb.al
  %i.dh = load i64, ptr %i.c, align 8, !dbg !6163, !range !1425, !noalias !5979, !noundef !1309
  %i.di = trunc nuw i64 %i.dh to i1, !dbg !6164
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !6165, !noalias !5979
  br i1 %i.di, label %bb.ai, label %bb.am, !dbg !6166, !prof !1434

_RNvNtNtCsh1AXECKMxZe_8simdutf814implementation3x8619validate_utf8_basic.exit76: ; preds = %bb.ak
  br i1 %i.dg, label %bb.ai, label %bb.am, !dbg !6166, !prof !1434

bb.am:                                            ; preds = %.noexc75, %_RNvNtNtCsh1AXECKMxZe_8simdutf814implementation3x8619validate_utf8_basic.exit76
  %i.dj = load i64, ptr %i.q, align 8, !dbg !6167, !noundef !1309 ; 5 uses
  %i.dk = icmp ugt i64 %i.r, %i.dj, !dbg !6168
  br i1 %i.dk, label %.invoke, label %bb.an, !dbg !6168, !prof !1434

bb.an:                                            ; preds = %bb.am
end_hunk_1
begin_hunk_2_@_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize7binview20decode_plain_genericNCNvNtB2_15required_masked6decode0EBa_:bb.a
          to label %bb.aq unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !6186

bb.aq:                                            ; preds = %bb.ap
  %i.ed = load i64, ptr %i.i, align 8, !dbg !6189, !range !1425, !noundef !1309
  %i.ee = trunc nuw i64 %i.ed to i1, !dbg !6190
  %i.ef = xor i1 %i.ee, true, !dbg !6190
  %i.eg = and i1 %.sroa.031.0167, %i.ef, !dbg !6190
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !6191
  br label %bb.ao, !dbg !6192

bb.ar:                                            ; preds = %._crit_edge169
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !6193
  invoke void @_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize7binview16invalid_utf8_err(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.h)
          to label %bb.as unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !6193

bb.as:                                            ; preds = %bb.ar
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 32, i1 false), !dbg !6194
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !6195
  br label %bb.v, !dbg !6153

bb.at:                                            ; preds = %bb.ai
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.j, i64 32, i1 false), !dbg !6196
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !6197
  br label %bb.v, !dbg !6153

.invoke:                                          ; preds = %bb.ah, %bb.am
  %i.eh = phi i64 [ %i.r, %bb.am ], [ 0, %bb.ah ]
  %i.ei = phi i64 [ %i.dj, %bb.am ], [ %i.db, %bb.ah ]
  %i.ej = phi i64 [ %i.dj, %bb.am ], [ %2, %bb.ah ]
  %i.ek = phi ptr [ @2, %bb.am ], [ @3, %bb.ah ]
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.eh, i64 noundef %i.ei, i64 noundef %i.ej, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ek) #36
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !6198

.cont:                                            ; preds = %.invoke
  unreachable

bb.au:                                            ; preds = %bb.ah
  %i.el = icmp samesign ult i64 %i.db, 64, !dbg !6199
  br i1 %i.el, label %bb.aw, label %bb.av, !dbg !6199

bb.av:                                            ; preds = %bb.au
  %i.em = load atomic ptr, ptr @_RNvNvNtNtCsh1AXECKMxZe_8simdutf814implementation3x8619validate_utf8_basic2FN monotonic, align 8, !dbg !6200, !noalias !6020, !nonnull !1309, !noundef !1309
  %i.en = invoke noundef zeroext i1 %i.em(ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %i.db)
          to label %_RNvNtNtCsh1AXECKMxZe_8simdutf814implementation3x8619validate_utf8_basic.exit80 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !6201, !inline_history !265

bb.aw:                                            ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !6202, !noalias !6020
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core3str8converts9from_utf8(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %i.db)
          to label %.noexc79 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !6202

.noexc79:                                         ; preds = %bb.aw
  %i.eo = load i64, ptr %i.b, align 8, !dbg !6202, !range !1425, !noalias !6020, !noundef !1309
  %i.ep = trunc nuw i64 %i.eo to i1, !dbg !6203
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !6204, !noalias !6020
  br i1 %i.ep, label %bb.ax, label %.critedge, !dbg !6205, !prof !1434

_RNvNtNtCsh1AXECKMxZe_8simdutf814implementation3x8619validate_utf8_basic.exit80: ; preds = %bb.av
  br i1 %i.en, label %bb.ax, label %.critedge, !dbg !6205, !prof !1434

bb.ax:                                            ; preds = %.noexc79, %_RNvNtNtCsh1AXECKMxZe_8simdutf814implementation3x8619validate_utf8_basic.exit80
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !6206
  invoke void @_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize7binview16invalid_utf8_err(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.k)
          to label %bb.bg unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !6206

bb.ay:                                            ; preds = %.critedge
  %i.eq = getelementptr inbounds nuw i8, ptr %3, i64 24, !dbg !6207 ; 2 uses
  %i.er = load i64, ptr %i.t, align 8, !dbg !6207, !alias.scope !5940, !noundef !1309 ; 4 uses
  %i.es = icmp ult i64 %i.er, 384307168202282326, !dbg !6208
  call void @llvm.assume(i1 %i.es), !dbg !6209
  %i.et = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !6210
  %i.eu = load i64, ptr %i.et, align 8, !dbg !6210, !alias.scope !5941, !noundef !1309
  %i.ev = getelementptr inbounds nuw i8, ptr %3, i64 152, !dbg !6211 ; 2 uses
  %i.ew = load i64, ptr %i.ev, align 8, !dbg !6211, !alias.scope !5940, !noundef !1309
  %i.ex = add i64 %i.ew, %i.eu, !dbg !6211
  store i64 %i.ex, ptr %i.ev, align 8, !dbg !6211, !alias.scope !5940
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !6212, !noalias !6023
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !dbg !6212, !noalias !5940
  %i.ey = load i64, ptr %i.eq, align 8, !dbg !6213, !range !1361, !alias.scope !6024, !noundef !1309
  %i.ez = icmp eq i64 %i.er, %i.ey, !dbg !6214
  br i1 %i.ez, label %bb.az, label %bb.be, !dbg !6214

bb.az:                                            ; preds = %bb.ay
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEE8grow_oneCs8774dFTUdNv_12polars_arrow(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.eq)
          to label %bb.be unwind label %bb.ba, !dbg !6215, !noalias !6025

bb.ba:                                            ; preds = %bb.az
  %i.fa = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %common.resume unwind label %bb.bb, !dbg !6216, !noalias !5941

bb.bb:                                            ; preds = %bb.ba
  %i.fb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #33, !dbg !6217, !noalias !5941
  unreachable, !dbg !6217

bb.bc:                                            ; preds = %.critedge
  %i.fc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %common.resume unwind label %bb.bd, !dbg !6218

bb.bd:                                            ; preds = %bb.bc
  %i.fd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #33, !dbg !6219
  unreachable, !dbg !6219

bb.be:                                            ; preds = %bb.az, %bb.ay
  %i.fe = getelementptr inbounds nuw i8, ptr %3, i64 32, !dbg !6220
  %i.ff = load ptr, ptr %i.fe, align 8, !dbg !6220, !alias.scope !6024, !nonnull !1309, !noundef !1309
  %i.fg = getelementptr inbounds nuw [24 x i8], ptr %i.ff, i64 %i.er, !dbg !6221
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fg, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !dbg !6222
  %i.fh = add nuw nsw i64 %i.er, 1, !dbg !6223
  store i64 %i.fh, ptr %i.t, align 8, !dbg !6223, !alias.scope !6024
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !6224, !noalias !6023
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !6225
  store i64 -9223372036854775803, ptr %0, align 8, !dbg !6226
  br label %bb.bf, !dbg !6131

bb.bf:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECsfISxE4fmY1Y_14polars_parquet.exit, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !6227
  ret void, !dbg !6228

bb.bg:                                            ; preds = %bb.ax
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.k, i64 32, i1 false), !dbg !6229
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !6230
  br label %bb.v, !dbg !6153

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ap, %bb.n, %bb.p, %bb.m, %.invoke, %bb.g, %bb.i, %bb.al, %bb.ab, %bb.av, %bb.ae, %bb.ax, %bb.aw, %bb.ai, %bb.ar, %bb.ad, %bb.ak
  %lpad.loopexit.split-lp322 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef align 8 dereferenceable(24) %i.o) #32
          to label %common.resume unwind label %bb.bh, !dbg !6227

bb.bh:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.fi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #33, !dbg !6231
  unreachable, !dbg !6231
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize7binview20decode_plain_genericNCNvNtB2_8optional6decode0EBa_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2, ptr noalias noundef align 8 dereferenceable(160) %3, i64 noundef %4, ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %5, i1 noundef zeroext %6) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !6232 !guid !6438 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.439 = alloca [12 x i8], align 4          ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 7 uses
  %i.h = alloca [32 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [32 x i8], align 8                ; 4 uses
  %i.k = alloca [32 x i8], align 8                ; 4 uses
  %i.l = alloca [32 x i8], align 8                ; 4 uses
  %.sroa.495 = alloca [12 x i8], align 4          ; 4 uses
  %i.m = alloca [32 x i8], align 8                ; 4 uses
  %i.n = alloca [32 x i8], align 8                ; 4 uses
  %i.o = alloca [24 x i8], align 8                ; 11 uses
  %i.p = tail call noundef zeroext i1 @_RNvMs2_NtNtNtCs8774dFTUdNv_12polars_arrow5array7binview7mutableINtB5_22MutableBinaryViewArrayShE18finish_in_progressCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(160) %3), !dbg !6565 ; 0 uses
  tail call void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %4), !dbg !6566
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16, !dbg !6567 ; 8 uses
  %i.r = load i64, ptr %i.q, align 8, !dbg !6567, !noundef !1309 ; 5 uses
  %i.s = icmp ult i64 %i.r, 576460752303423488, !dbg !6568
  tail call void @llvm.assume(i1 %i.s), !dbg !6569
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 40, !dbg !6570 ; 3 uses
  %i.u = load i64, ptr %i.t, align 8, !dbg !6570, !noundef !1309
  %i.v = trunc i64 %i.u to i32, !dbg !6571
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !6572
  %i.w = add nuw i64 %2, 1, !dbg !6573
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !6574
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, i64 noundef %i.w, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !dbg !6574
  %i.x = load i64, ptr %i.e, align 8, !dbg !6574, !range !1425, !noundef !1309
  %i.y = trunc nuw i64 %i.x to i1, !dbg !6575
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !6576
  %i.aa = load i64, ptr %i.z, align 8, !dbg !6576, !range !1314, !noundef !1309 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !6576 ; 2 uses
  br i1 %i.y, label %bb.b, label %bb.c, !dbg !6575, !prof !1434

common.resume:                                    ; preds = %bb.y, %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.bc, %bb.be
  %common.resume.op = phi { ptr, i32 } [ %i.fm, %bb.be ], [ %i.cx, %bb.y ], [ %lpad.loopexit.split-lp246, %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.fk, %bb.bc ]
  resume { ptr, i32 } %common.resume.op, !dbg !6577

bb.b:                                             ; preds = %bb.a
  %i.ac = load i64, ptr %i.ab, align 8, !dbg !6578
  tail call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.aa, i64 %i.ac) #36, !dbg !6579
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.ad = load ptr, ptr %i.ab, align 8, !dbg !6580, !nonnull !1309, !noundef !1309
  %.not = icmp samesign ult i64 %2, %i.aa, !dbg !6581
  tail call void @llvm.assume(i1 %.not), !dbg !6582
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !6583
  store i64 %i.aa, ptr %i.o, align 8, !dbg !6584
  %i.ae = getelementptr inbounds nuw i8, ptr %i.o, i64 8, !dbg !6584 ; 4 uses
  store ptr %i.ad, ptr %i.ae, align 8, !dbg !6584
  %i.af = getelementptr inbounds nuw i8, ptr %i.o, i64 16, !dbg !6584 ; 7 uses
  store i64 0, ptr %i.af, align 8, !dbg !6584
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %.promoted137 = load i64, ptr %i.ag, align 8, !alias.scope !6450
  %.sroa.439.4..sroa_idx270 = getelementptr inbounds nuw i8, ptr %.sroa.439, i64 4
  %.sroa.439.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.439, i64 8
  %.phi.trans.insert.i.i.promoted295 = load i64, ptr %.phi.trans.insert.i.i, align 8
  %.promoted297 = load i64, ptr %i.ah, align 8
  %.promoted = load ptr, ptr %5, align 8
  %.promoted304 = load i64, ptr %i.ai, align 8
  br label %.outer, !dbg !6585

.outer:                                           ; preds = %bb.t, %bb.c
  %.promoted294307 = phi i64 [ %.promoted294305, %bb.t ], [ %.promoted304, %bb.c ] ; 2 uses
  %.promoted293303 = phi ptr [ %.promoted293301, %bb.t ], [ %.promoted, %bb.c ] ; 2 uses
  %.promoted300 = phi i64 [ %.promoted298, %bb.t ], [ %.promoted297, %bb.c ] ; 2 uses
  %.phi.trans.insert.i.i.promoted296 = phi i64 [ %i.az, %bb.t ], [ %.phi.trans.insert.i.i.promoted295, %bb.c ]
  %.promoted138 = phi i64 [ %i.ba, %bb.t ], [ %.promoted137, %bb.c ]
  %.sroa.820.0.ph = phi i64 [ %i.br, %bb.t ], [ %2, %bb.c ] ; 4 uses
  %.sroa.015.0.ph = phi ptr [ %i.bq, %bb.t ], [ %1, %bb.c ] ; 3 uses
  %.sroa.07.0.ph = phi i32 [ %.sroa.07.1, %bb.t ], [ 0, %bb.c ] ; 3 uses
  %.sroa.05.0.ph = phi i64 [ %i.cs, %bb.t ], [ 0, %bb.c ] ; 2 uses
  %.sroa.03.0.ph = phi i1 [ %i.bt, %bb.t ], [ true, %bb.c ] ; 2 uses
  %.sroa.0.0.ph = phi i8 [ %i.cr, %bb.t ], [ 1, %bb.c ] ; 4 uses
  br label %bb.d, !dbg !6586

bb.d:                                             ; preds = %.outer, %bb.i
  %.promoted294306 = phi i64 [ %.promoted294307, %.outer ], [ %.promoted294305, %bb.i ]
  %.promoted293302 = phi ptr [ %.promoted293303, %.outer ], [ %.promoted293301, %bb.i ]
  %.promoted299 = phi i64 [ %.promoted300, %.outer ], [ %.promoted298, %bb.i ]
  %i.ak = phi i64 [ %.promoted294307, %.outer ], [ %i.au, %bb.i ] ; 2 uses
  %i.al = phi ptr [ %.promoted293303, %.outer ], [ %i.av, %bb.i ] ; 3 uses
  %i.am = phi i64 [ %.promoted300, %.outer ], [ %i.aw, %bb.i ] ; 4 uses
  %i.an = phi i64 [ %.phi.trans.insert.i.i.promoted296, %.outer ], [ %i.az, %bb.i ]
  %i.ao = phi i64 [ %.promoted138, %.outer ], [ %i.ba, %bb.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6450), !dbg !6587
  %i.ap = icmp eq i64 %i.ao, 0, !dbg !6586
  br i1 %i.ap, label %bb.e, label %._crit_edge.i.i, !dbg !6586

bb.e:                                             ; preds = %bb.d
  %i.aq = icmp eq i64 %i.am, 0, !dbg !6588
  br i1 %i.aq, label %.thread, label %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsfISxE4fmY1Y_14polars_parquet.exit.i.i, !dbg !6588

_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsfISxE4fmY1Y_14polars_parquet.exit.i.i: ; preds = %bb.e
  %.sroa.0.0.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.am, i64 64), !dbg !6589 ; 2 uses
  %i.ar = sub nuw i64 %i.am, %.sroa.0.0.i.i.i, !dbg !6590 ; 3 uses
  store i64 %i.ar, ptr %i.ah, align 8, !dbg !6590, !alias.scope !6450
  %.sroa.02.0.copyload.i.i = load i64, ptr %i.al, align 1, !dbg !6591, !noalias !6450
  %i.as = add i64 %i.ak, -8, !dbg !6592           ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.al, i64 8, !dbg !6593 ; 3 uses
  store ptr %i.at, ptr %5, align 8, !dbg !6594, !alias.scope !6450
  store i64 %i.as, ptr %i.ai, align 8, !dbg !6594, !alias.scope !6450
  br label %._crit_edge.i.i, !dbg !6595

._crit_edge.i.i:                                  ; preds = %bb.d, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsfISxE4fmY1Y_14polars_parquet.exit.i.i
  %.promoted294305 = phi i64 [ %i.as, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsfISxE4fmY1Y_14polars_parquet.exit.i.i ], [ %.promoted294306, %bb.d ] ; 2 uses
  %.promoted293301 = phi ptr [ %i.at, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsfISxE4fmY1Y_14polars_parquet.exit.i.i ], [ %.promoted293302, %bb.d ] ; 2 uses
  %.promoted298 = phi i64 [ %i.ar, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsfISxE4fmY1Y_14polars_parquet.exit.i.i ], [ %.promoted299, %bb.d ] ; 2 uses
  %i.au = phi i64 [ %i.as, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsfISxE4fmY1Y_14polars_parquet.exit.i.i ], [ %i.ak, %bb.d ]
  %i.av = phi ptr [ %i.at, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsfISxE4fmY1Y_14polars_parquet.exit.i.i ], [ %i.al, %bb.d ]
  %i.aw = phi i64 [ %i.ar, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsfISxE4fmY1Y_14polars_parquet.exit.i.i ], [ %i.am, %bb.d ]
  %i.ax = phi i64 [ %.sroa.0.0.i.i.i, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsfISxE4fmY1Y_14polars_parquet.exit.i.i ], [ %i.ao, %bb.d ], !dbg !6596
  %i.ay = phi i64 [ %.sroa.02.0.copyload.i.i, %_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultAhj8_NtNtB4_5array17TryFromSliceErrorE6unwrapCsfISxE4fmY1Y_14polars_parquet.exit.i.i ], [ %i.an, %bb.d ], !dbg !6597 ; 2 uses
  %i.az = lshr i64 %i.ay, 1, !dbg !6598           ; 3 uses
  store i64 %i.az, ptr %.phi.trans.insert.i.i, align 8, !dbg !6598, !alias.scope !6450
  %i.ba = add i64 %i.ax, -1, !dbg !6596           ; 3 uses
  store i64 %i.ba, ptr %i.ag, align 8, !dbg !6596, !alias.scope !6450
  %i.bb = and i64 %i.ay, 1, !dbg !6599
  %cond = icmp eq i64 %i.bb, 0, !dbg !6599
  br i1 %cond, label %bb.g, label %bb.f, !dbg !6599

.thread:                                          ; preds = %bb.e
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 144, !dbg !6600 ; 2 uses
  %i.bd = load i64, ptr %i.bc, align 8, !dbg !6600, !noundef !1309
  %i.be = add i64 %i.bd, %.sroa.05.0.ph, !dbg !6601
  store i64 %i.be, ptr %i.bc, align 8, !dbg !6602
  br i1 %6, label %bb.aa, label %.critedge, !dbg !6603

bb.f:                                             ; preds = %._crit_edge.i.i
  %i.bf = icmp ult i64 %.sroa.820.0.ph, 4, !dbg !6604
  br i1 %i.bf, label %bb.j, label %bb.k, !dbg !6604, !prof !1434

bb.g:                                             ; preds = %._crit_edge.i.i
  %i.bg = load i64, ptr %i.q, align 8, !dbg !6605, !alias.scope !6456, !noundef !1309 ; 3 uses
  %i.bh = load i64, ptr %3, align 8, !dbg !6606, !range !1361, !alias.scope !6456, !noundef !1309
  %i.bi = icmp eq i64 %i.bg, %i.bh, !dbg !6607
  br i1 %i.bi, label %bb.h, label %bb.i, !dbg !6607

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewE8grow_oneBU_(ptr noalias noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.i unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !6608

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.bj = load ptr, ptr %i.aj, align 8, !dbg !6609, !alias.scope !6456, !nonnull !1309, !noundef !1309
  %i.bk = getelementptr inbounds nuw [16 x i8], ptr %i.bj, i64 %i.bg, !dbg !6610
  %i.bl = add i64 %i.bg, 1, !dbg !6611
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.bk, i8 0, i64 16, i1 false), !dbg !6612
  store i64 %i.bl, ptr %i.q, align 8, !dbg !6611, !alias.scope !6456
  br label %bb.d, !dbg !6613

bb.j:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !6614
  invoke void @_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize7binview17invalid_input_err(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.n)
          to label %bb.w unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !6614

bb.k:                                             ; preds = %bb.f
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.015.0.ph, i64 4, !dbg !6615 ; 5 uses
  %i.bn = add nsw i64 %.sroa.820.0.ph, -4, !dbg !6616 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.015.0.ph) ], !dbg !6617
  %.sroa.014.0.copyload = load i32, ptr %.sroa.015.0.ph, align 1, !dbg !6618 ; 6 uses
  %i.bo = zext i32 %.sroa.014.0.copyload to i64, !dbg !6619 ; 8 uses
  %i.bp = icmp ult i64 %i.bn, %i.bo, !dbg !6620
  br i1 %i.bp, label %bb.l, label %bb.m, !dbg !6620, !prof !1434

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !6621
  invoke void @_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize7binview17invalid_input_err(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.m)
          to label %bb.v unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !6621

bb.m:                                             ; preds = %bb.k
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bo, !dbg !6622
  %i.br = sub nuw nsw i64 %i.bn, %i.bo, !dbg !6623
  %i.bs = icmp ult i32 %.sroa.014.0.copyload, 128, !dbg !6624
  %i.bt = select i1 %i.bs, i1 %.sroa.03.0.ph, i1 false, !dbg !6625
  %i.bu = icmp eq i32 %.sroa.014.0.copyload, 0, !dbg !6626
  br i1 %i.bu, label %.thread109.a, label %bb.n, !dbg !6626

bb.n:                                             ; preds = %bb.m
  %i.bv = load i8, ptr %i.bm, align 1, !dbg !6627, !noundef !1309
  %i.bw = icmp sgt i8 %i.bv, -65, !dbg !6627
  %i.bx = select i1 %i.bw, i8 %.sroa.0.0.ph, i8 0, !dbg !6628 ; 2 uses
  %i.by = load i64, ptr %i.af, align 8, !dbg !6629, !noundef !1309 ; 2 uses
  %i.bz = icmp sgt i64 %i.by, -1, !dbg !6630
  call void @llvm.assume(i1 %i.bz), !dbg !6631
  %i.ca = trunc i64 %i.by to i32, !dbg !6632
  %i.cb = icmp ult i32 %.sroa.014.0.copyload, 13, !dbg !6633
  br i1 %i.cb, label %.thread109.a, label %bb.o, !dbg !6633

bb.o:                                             ; preds = %bb.n
  invoke void @_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE7reserveCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o, i64 noundef %i.bo)
          to label %bb.q unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !6634

.thread109.a:                                     ; preds = %bb.m, %bb.n
  %i.cc = phi i8 [ %i.bx, %bb.n ], [ %.sroa.0.0.ph, %bb.m ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.495), !dbg !6635
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.439), !dbg !6636
  store i32 0, ptr %.sroa.439, align 4, !dbg !6637
  store i32 0, ptr %.sroa.439.4..sroa_idx270, align 4, !dbg !6637
  store i32 0, ptr %.sroa.439.8..sroa_idx, align 4, !dbg !6637
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.439, ptr nonnull align 1 %i.bm, i64 %i.bo, i1 false), !dbg !6638
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.495, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.439, i64 12, i1 false), !dbg !6639
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.439), !dbg !6640
  %i.cd = load i64, ptr %i.q, align 8, !dbg !6641, !alias.scope !6466, !noundef !1309 ; 3 uses
  %i.ce = load i64, ptr %3, align 8, !dbg !6642, !range !1361, !alias.scope !6466, !noundef !1309
  %i.cf = icmp eq i64 %i.cd, %i.ce, !dbg !6643
  br i1 %i.cf, label %bb.p, label %bb.u, !dbg !6643

bb.p:                                             ; preds = %.thread109.a
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewE8grow_oneBU_(ptr noalias noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.u unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !6644

bb.q:                                             ; preds = %bb.o
  %i.cg = load i64, ptr %i.af, align 8, !dbg !6645, !alias.scope !6468, !noundef !1309 ; 2 uses
  %i.ch = icmp sgt i64 %i.cg, -1, !dbg !6646
  call void @llvm.assume(i1 %i.ch), !dbg !6647
  %i.ci = load ptr, ptr %i.ae, align 8, !dbg !6648, !alias.scope !6468, !nonnull !1309, !noundef !1309
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.cg, !dbg !6649
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cj, ptr nonnull readonly align 1 %i.bm, i64 %i.bo, i1 false), !dbg !6650
  %.pre.i = load i64, ptr %i.af, align 8, !dbg !6651, !alias.scope !6468
  %i.ck = add i64 %.pre.i, %i.bo, !dbg !6651
  store i64 %i.ck, ptr %i.af, align 8, !dbg !6651, !alias.scope !6468
  %.sroa.041.0.copyload = load i32, ptr %i.bm, align 1, !dbg !6652
  %i.cl = load i64, ptr %i.q, align 8, !dbg !6653, !alias.scope !6474, !noundef !1309 ; 3 uses
  %i.cm = load i64, ptr %3, align 8, !dbg !6654, !range !1361, !alias.scope !6474, !noundef !1309
  %i.cn = icmp eq i64 %i.cl, %i.cm, !dbg !6655
  br i1 %i.cn, label %bb.r, label %bb.s, !dbg !6655

bb.r:                                             ; preds = %bb.q
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewE8grow_oneBU_(ptr noalias noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.s unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !6656

bb.s:                                             ; preds = %bb.q, %bb.r
  %i.co = load ptr, ptr %i.aj, align 8, !dbg !6657, !alias.scope !6474, !nonnull !1309, !noundef !1309
  %i.cp = getelementptr inbounds nuw [16 x i8], ptr %i.co, i64 %i.cl, !dbg !6658 ; 4 uses
  store i32 %.sroa.014.0.copyload, ptr %i.cp, align 4, !dbg !6659
  %.sroa.497.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cp, i64 4, !dbg !6659
  store i32 %.sroa.041.0.copyload, ptr %.sroa.497.0..sroa_idx, align 4, !dbg !6659
  %.sroa.598.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cp, i64 8, !dbg !6659
  store i32 %i.v, ptr %.sroa.598.0..sroa_idx, align 4, !dbg !6659
  %.sroa.699.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cp, i64 12, !dbg !6659
  store i32 %i.ca, ptr %.sroa.699.0..sroa_idx, align 4, !dbg !6659
  %i.cq = add i64 %i.cl, 1, !dbg !6660
  store i64 %i.cq, ptr %i.q, align 8, !dbg !6660, !alias.scope !6474
  br label %bb.t, !dbg !6661

bb.t:                                             ; preds = %bb.u, %bb.s
  %i.cr = phi i8 [ %i.cc, %bb.u ], [ %i.bx, %bb.s ]
  %.sroa.07.1 = phi i32 [ %i.cw, %bb.u ], [ %.sroa.07.0.ph, %bb.s ], !dbg !6662
  %i.cs = add i64 %.sroa.05.0.ph, %i.bo, !dbg !6663
  br label %.outer, !dbg !6585

bb.u:                                             ; preds = %.thread109.a, %bb.p
  %i.ct = load ptr, ptr %i.aj, align 8, !dbg !6664, !alias.scope !6466, !nonnull !1309, !noundef !1309
  %i.cu = getelementptr inbounds nuw [16 x i8], ptr %i.ct, i64 %i.cd, !dbg !6665 ; 2 uses
  store i32 %.sroa.014.0.copyload, ptr %i.cu, align 4, !dbg !6666
  %.sroa.495.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cu, i64 4, !dbg !6666
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.495.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.495, i64 12, i1 false), !dbg !6666
  %i.cv = add i64 %i.cd, 1, !dbg !6667
  store i64 %i.cv, ptr %i.q, align 8, !dbg !6667, !alias.scope !6466
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.495), !dbg !6668
  %i.cw = add i32 %.sroa.07.0.ph, 1, !dbg !6669
  br label %bb.t, !dbg !6661

bb.v:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.m, i64 32, i1 false), !dbg !6670
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !6671
  br label %bb.x, !dbg !6672

bb.w:                                             ; preds = %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.n, i64 32, i1 false), !dbg !6673
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !6674
  br label %bb.x, !dbg !6672

bb.x:                                             ; preds = %bb.v, %bb.w, %bb.au, %bb.av, %bb.bi, %bb.ah
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECsfISxE4fmY1Y_14polars_parquet.exit unwind label %bb.y, !dbg !6675

bb.y:                                             ; preds = %bb.x
  %i.cx = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o)
          to label %common.resume unwind label %bb.z, !dbg !6676

bb.z:                                             ; preds = %bb.y
  %i.cy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #33, !dbg !6675
  unreachable, !dbg !6675

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECsfISxE4fmY1Y_14polars_parquet.exit: ; preds = %bb.x
  call void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o), !dbg !6677
  br label %bb.bh, !dbg !6678

.critedge:                                        ; preds = %bb.ap, %.noexc81, %.noexc74, %_RNvNtNtCsh1AXECKMxZe_8simdutf814implementation3x8619validate_utf8_basic.exit82, %._crit_edge, %._crit_edge145, %_RNvNtNtCsh1AXECKMxZe_8simdutf814implementation3x8619validate_utf8_basic.exit, %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !6679
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !6679
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false), !dbg !6679
  %i.cz = call noundef nonnull ptr @_RNvMs5_NtCsknLZRuU4977_13polars_buffer7storageINtB5_13SharedStoragehE8from_vecCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.f), !dbg !6680
  call void @_RNvMs6_NtCsknLZRuU4977_13polars_buffer6bufferINtB5_6BufferhE12from_storageCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, ptr noundef nonnull %i.cz), !dbg !6681
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !6682
  call void @llvm.experimental.noalias.scope.decl(metadata !6480), !dbg !6683
  call void @llvm.experimental.noalias.scope.decl(metadata !6481), !dbg !6683
  %i.da = invoke noundef zeroext i1 @_RNvMs2_NtNtNtCs8774dFTUdNv_12polars_arrow5array7binview7mutableINtB5_22MutableBinaryViewArrayShE18finish_in_progressCsfISxE4fmY1Y_14polars_parquet(ptr noalias noundef nonnull align 8 dereferenceable(160) %3)
          to label %bb.ba unwind label %bb.be, !dbg !6684, !noalias !6481 ; 0 uses

bb.aa:                                            ; preds = %.thread
  %i.db = icmp eq i32 %.sroa.07.0.ph, 0, !dbg !6685
  br i1 %i.db, label %bb.ab, label %bb.ac, !dbg !6685

bb.ab:                                            ; preds = %bb.aa
  %i.dc = trunc nuw i8 %.sroa.0.0.ph to i1, !dbg !6686
  br i1 %i.dc, label %bb.ae, label %bb.ad, !dbg !6686, !prof !1498

bb.ac:                                            ; preds = %bb.aa
  br i1 %.sroa.03.0.ph, label %bb.aj, label %bb.ai, !dbg !6687

bb.ad:                                            ; preds = %.noexc74, %_RNvNtNtCsh1AXECKMxZe_8simdutf814implementation3x8619validate_utf8_basic.exit, %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !6688
  invoke void @_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize7binview16invalid_utf8_err(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.l)
          to label %bb.ah unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !6688

bb.ae:                                            ; preds = %bb.ab
  %i.dd = load ptr, ptr %i.ae, align 8, !dbg !6689, !nonnull !1309, !noundef !1309 ; 2 uses
  %i.de = load i64, ptr %i.af, align 8, !dbg !6690, !noundef !1309 ; 3 uses
  %i.df = icmp samesign ult i64 %i.de, 64, !dbg !6691
  br i1 %i.df, label %bb.ag, label %bb.af, !dbg !6691

bb.af:                                            ; preds = %bb.ae
  %i.dg = load atomic ptr, ptr @_RNvNvNtNtCsh1AXECKMxZe_8simdutf814implementation3x8619validate_utf8_basic2FN monotonic, align 8, !dbg !6692, !noalias !6495, !nonnull !1309, !noundef !1309
  %i.dh = invoke noundef zeroext i1 %i.dg(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.dd, i64 noundef range(i64 0, -9223372036854775808) %i.de)
          to label %_RNvNtNtCsh1AXECKMxZe_8simdutf814implementation3x8619validate_utf8_basic.exit unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !6693, !inline_history !265

bb.ag:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !6694, !noalias !6495
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core3str8converts9from_utf8(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.dd, i64 noundef range(i64 0, -9223372036854775808) %i.de)
          to label %.noexc74 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !6694

.noexc74:                                         ; preds = %bb.ag
  %i.di = load i64, ptr %i.d, align 8, !dbg !6694, !range !1425, !noalias !6495, !noundef !1309
  %i.dj = trunc nuw i64 %i.di to i1, !dbg !6695
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !6696, !noalias !6495
  br i1 %i.dj, label %bb.ad, label %.critedge, !dbg !6697, !prof !1434

_RNvNtNtCsh1AXECKMxZe_8simdutf814implementation3x8619validate_utf8_basic.exit: ; preds = %bb.af
  br i1 %i.dh, label %bb.ad, label %.critedge, !dbg !6697, !prof !1434

bb.ah:                                            ; preds = %bb.ad
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.l, i64 32, i1 false), !dbg !6698
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !6699
  br label %bb.x, !dbg !6613

bb.ai:                                            ; preds = %bb.ac
  %i.dk = trunc nuw i8 %.sroa.0.0.ph to i1, !dbg !6700
  br i1 %i.dk, label %bb.al, label %bb.ak, !dbg !6700, !prof !1498

bb.aj:                                            ; preds = %bb.ac
  %i.dl = sub nsw i64 %2, %.sroa.820.0.ph, !dbg !6701 ; 4 uses
  %.not58 = icmp ugt i64 %.sroa.820.0.ph, %2
  br i1 %.not58, label %.invoke, label %bb.aw, !dbg !6702, !prof !1507

bb.ak:                                            ; preds = %.noexc77, %_RNvNtNtCsh1AXECKMxZe_8simdutf814implementation3x8619validate_utf8_basic.exit78, %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !6703
  invoke void @_RNvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize7binview16invalid_utf8_err(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.j)
          to label %bb.av unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !6703

bb.al:                                            ; preds = %bb.ai
  %i.dm = load ptr, ptr %i.ae, align 8, !dbg !6704, !nonnull !1309, !noundef !1309 ; 2 uses
  %i.dn = load i64, ptr %i.af, align 8, !dbg !6705, !noundef !1309 ; 3 uses
  %i.do = icmp samesign ult i64 %i.dn, 64, !dbg !6706
  br i1 %i.do, label %bb.an, label %bb.am, !dbg !6706

bb.am:                                            ; preds = %bb.al
  %i.dp = load atomic ptr, ptr @_RNvNvNtNtCsh1AXECKMxZe_8simdutf814implementation3x8619validate_utf8_basic2FN monotonic, align 8, !dbg !6707, !noalias !6518, !nonnull !1309, !noundef !1309
  %i.dq = invoke noundef zeroext i1 %i.dp(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.dm, i64 noundef range(i64 0, -9223372036854775808) %i.dn)
          to label %_RNvNtNtCsh1AXECKMxZe_8simdutf814implementation3x8619validate_utf8_basic.exit78 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !6708, !inline_history !265

bb.an:                                            ; preds = %bb.al
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !6709, !noalias !6518
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core3str8converts9from_utf8(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.dm, i64 noundef range(i64 0, -9223372036854775808) %i.dn)
          to label %.noexc77 unwind label %.loopexit.split-lp.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !6709

.noexc77:                                         ; preds = %bb.an
  %i.dr = load i64, ptr %i.c, align 8, !dbg !6709, !range !1425, !noalias !6518, !noundef !1309
  %i.ds = trunc nuw i64 %i.dr to i1, !dbg !6710
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !6711, !noalias !6518
  br i1 %i.ds, label %bb.ak, label %bb.ao, !dbg !6712, !prof !1434

_RNvNtNtCsh1AXECKMxZe_8simdutf814implementation3x8619validate_utf8_basic.exit78: ; preds = %bb.am
  br i1 %i.dq, label %bb.ak, label %bb.ao, !dbg !6712, !prof !1434

bb.ao:                                            ; preds = %.noexc77, %_RNvNtNtCsh1AXECKMxZe_8simdutf814implementation3x8619validate_utf8_basic.exit78
  %i.dt = load i64, ptr %i.q, align 8, !dbg !6713, !noundef !1309 ; 5 uses
  %i.du = icmp ugt i64 %i.r, %i.dt, !dbg !6714
  br i1 %i.du, label %.invoke, label %bb.ap, !dbg !6714, !prof !1434
end_hunk_2
begin_hunk_3_@llvm.memmove.p0.p0.i64
!5363 = !DILocation(line: 438, column: 50, scope: !5154, inlinedAt: !5362)
!5364 = !DILocation(line: 438, column: 21, scope: !5154, inlinedAt: !5362)
!5365 = !{!5157}
!5366 = !DIFile(filename: "crates/polars-parquet/src/arrow/read/deserialize/binview/optional_masked.rs", directory: "/opt-bench/work/pola-rs/polars", checksumkind: CSK_MD5, checksum: "4409d7f4a4f9355151520c9814651d16")
!5367 = !DINamespace(name: "optional_masked", scope: !1469)
!5368 = !DINamespace(name: "decode", scope: !5367)
!5369 = !{!5177}
!5370 = !DILocation(line: 418, column: 43, scope: !5163)
!5371 = !DILocation(line: 418, column: 16, scope: !5163)
!5372 = !{!5190}
!5373 = !DILocation(line: 373, column: 47, scope: !5165)
!5374 = !DILocation(line: 384, column: 59, scope: !5201)
!5375 = !DILocation(line: 403, column: 29, scope: !5209)
!5376 = !DILocation(line: 409, column: 20, scope: !5216)
!5377 = !DILocation(line: 3527, column: 14, scope: !5219, inlinedAt: !5376)
!5378 = !DILocation(line: 406, column: 57, scope: !5216)
!5379 = !DILexicalBlockFile(scope: !5225, file: !1489, discriminator: 2)
!5380 = !DILocation(line: 92, column: 13, scope: !5379, inlinedAt: !5378)
!5381 = !{!5227}
!5382 = !DILocation(line: 406, column: 43, scope: !5216)
!5383 = !{!5232}
!5384 = !DILexicalBlockFile(scope: !5242, file: !1358, discriminator: 2)
!5385 = !DILocation(line: 411, column: 32, scope: !5216)
!5386 = !DILocation(line: 119, column: 62, scope: !5241, inlinedAt: !5385)
!5387 = !DILocation(line: 819, column: 9, scope: !5384, inlinedAt: !5386)
!5388 = !DILocation(line: 259, column: 34, scope: !5243, inlinedAt: !5387)
!5389 = !{!5245}
!5390 = !DILocation(line: 411, column: 18, scope: !5216)
!5391 = !DILexicalBlockFile(scope: !5165, file: !1492, discriminator: 0)
!5392 = !DILocation(line: 478, column: 31, scope: !5163)
!5393 = !DILocation(line: 778, column: 9, scope: !5262, inlinedAt: !5392)
!5394 = !DILocation(line: 400, column: 9, scope: !5263, inlinedAt: !5393)
!5395 = !{!5265}
!5396 = !{!5266}
!5397 = !DILexicalBlockFile(scope: !5273, file: !1343, discriminator: 2)
!5398 = !DILexicalBlockFile(scope: !5272, file: !1343, discriminator: 2)
!5399 = !DILexicalBlockFile(scope: !5271, file: !1339, discriminator: 2)
!5400 = !DILexicalBlockFile(scope: !5270, file: !1339, discriminator: 2)
!5401 = !DILexicalBlockFile(scope: !5269, file: !1339, discriminator: 2)
!5402 = !DILocation(line: 428, column: 84, scope: !5163)
!5403 = !DILocation(line: 3756, column: 14, scope: !5401, inlinedAt: !5402)
!5404 = !DILocation(line: 1841, column: 76, scope: !5400, inlinedAt: !5403)
!5405 = !DILocation(line: 1942, column: 18, scope: !5399, inlinedAt: !5404)
!5406 = !DILocation(line: 296, column: 20, scope: !5398, inlinedAt: !5405)
!5407 = !DILocation(line: 609, column: 14, scope: !5397, inlinedAt: !5406)
!5408 = !DILocation(line: 428, column: 57, scope: !5163)
!5409 = !DILocation(line: 38, column: 9, scope: !5275, inlinedAt: !5408)
!5410 = !{!5278}
!5411 = !DILexicalBlockFile(scope: !5275, file: !1504, discriminator: 2)
!5412 = !DILocation(line: 38, column: 9, scope: !5411, inlinedAt: !5408)
!5413 = !DILexicalBlockFile(scope: !5163, file: !1492, discriminator: 0)
!5414 = !DILexicalBlockFile(scope: !5286, file: !1480, discriminator: 2)
!5415 = !DILexicalBlockFile(scope: !5284, file: !1480, discriminator: 2)
!5416 = !DILocation(line: 441, column: 50, scope: !5163)
!5417 = !DILocation(line: 19, column: 15, scope: !5415, inlinedAt: !5416)
!5418 = !DILocation(line: 529, column: 23, scope: !5285, inlinedAt: !5417)
!5419 = !DILocation(line: 437, column: 32, scope: !5414, inlinedAt: !5418)
!5420 = !DILexicalBlockFile(scope: !5273, file: !1343, discriminator: 4)
!5421 = !DILexicalBlockFile(scope: !5272, file: !1343, discriminator: 4)
!5422 = !DILexicalBlockFile(scope: !5271, file: !1339, discriminator: 4)
!5423 = !DILexicalBlockFile(scope: !5270, file: !1339, discriminator: 4)
!5424 = !DILexicalBlockFile(scope: !5269, file: !1339, discriminator: 4)
!5425 = !DILocation(line: 446, column: 84, scope: !5163)
!5426 = !DILocation(line: 3756, column: 14, scope: !5424, inlinedAt: !5425)
!5427 = !DILocation(line: 1841, column: 76, scope: !5423, inlinedAt: !5426)
!5428 = !DILocation(line: 1942, column: 18, scope: !5422, inlinedAt: !5427)
!5429 = !DILocation(line: 296, column: 20, scope: !5421, inlinedAt: !5428)
!5430 = !DILocation(line: 609, column: 14, scope: !5420, inlinedAt: !5429)
!5431 = !DILexicalBlockFile(scope: !5275, file: !1504, discriminator: 12)
!5432 = !DILocation(line: 446, column: 57, scope: !5163)
!5433 = !DILocation(line: 38, column: 9, scope: !5431, inlinedAt: !5432)
!5434 = !{!5289}
!5435 = !DILexicalBlockFile(scope: !5275, file: !1504, discriminator: 14)
!5436 = !DILocation(line: 38, column: 9, scope: !5435, inlinedAt: !5432)
!5437 = !DILexicalBlockFile(scope: !5296, file: !1339, discriminator: 6)
!5438 = !DILocation(line: 455, column: 33, scope: !5294)
!5439 = !DILocation(line: 139, column: 9, scope: !5295, inlinedAt: !5438)
!5440 = !DILocation(line: 3756, column: 14, scope: !5437, inlinedAt: !5439)
!5441 = !DILexicalBlockFile(scope: !5298, file: !1480, discriminator: 4)
!5442 = !DILocation(line: 455, column: 40, scope: !5294)
!5443 = !DILocation(line: 19, column: 15, scope: !5441, inlinedAt: !5442)
!5444 = !DILexicalBlockFile(scope: !5302, file: !1343, discriminator: 6)
!5445 = !DILexicalBlockFile(scope: !5301, file: !1343, discriminator: 6)
!5446 = !DILexicalBlockFile(scope: !5300, file: !1339, discriminator: 6)
!5447 = !DILexicalBlockFile(scope: !5293, file: !1339, discriminator: 6)
!5448 = !DILocation(line: 1841, column: 76, scope: !5447, inlinedAt: !5440)
!5449 = !DILocation(line: 1942, column: 18, scope: !5446, inlinedAt: !5448)
!5450 = !DILocation(line: 296, column: 20, scope: !5445, inlinedAt: !5449)
!5451 = !DILocation(line: 609, column: 14, scope: !5444, inlinedAt: !5450)
!5452 = !DILocation(line: 574, column: 15, scope: !5305, inlinedAt: !5443)
!5453 = !DILexicalBlockFile(scope: !5311, file: !1510, discriminator: 2)
!5454 = !DILexicalBlockFile(scope: !5308, file: !1353, discriminator: 2)
!5455 = !DILocation(line: 455, column: 25, scope: !5294)
!5456 = !DILocation(line: 26, column: 14, scope: !5307, inlinedAt: !5455)
!5457 = !DILocation(line: 1041, column: 9, scope: !5454, inlinedAt: !5456)
!5458 = !DILocation(line: 102, column: 78, scope: !5453, inlinedAt: !5457)
!5459 = !DILexicalBlockFile(scope: !5313, file: !1464, discriminator: 2)
!5460 = !DILocation(line: 455, column: 25, scope: !5459)
!5461 = !DILocation(line: 180, column: 28, scope: !5316, inlinedAt: !5460)
!5462 = !DILocation(line: 185, column: 40, scope: !5316, inlinedAt: !5460)
!5463 = !DILexicalBlockFile(scope: !5322, file: !1515, discriminator: 2)
!5464 = !DILexicalBlockFile(scope: !5320, file: !1464, discriminator: 2)
!5465 = !DILocation(line: 463, column: 29, scope: !5464)
!5466 = !DILocation(line: 185, column: 40, scope: !5463, inlinedAt: !5465)
!5467 = !DILocation(line: 180, column: 28, scope: !5463, inlinedAt: !5465)
!5468 = !DILocation(line: 466, column: 63, scope: !5323)
!5469 = !DILocation(line: 237, column: 49, scope: !5326, inlinedAt: !5468)
!5470 = !DILexicalBlockFile(scope: !5328, file: !1396, discriminator: 0)
!5471 = !DILocation(line: 467, column: 34, scope: !5323)
!5472 = !DILexicalBlockFile(scope: !5275, file: !1504, discriminator: 6)
!5473 = !DILocation(line: 441, column: 16, scope: !5163)
!5474 = !DILocation(line: 38, column: 9, scope: !5472, inlinedAt: !5473)
!5475 = !{!5331}
!5476 = !DILexicalBlockFile(scope: !5275, file: !1504, discriminator: 8)
!5477 = !DILocation(line: 38, column: 9, scope: !5476, inlinedAt: !5473)
!5478 = !{!5265, !5266}
!5479 = !{!5338, !5265}
!5480 = !{!5343, !5266}
!5481 = !DILocation(line: 354, column: 12, scope: !5139)
!5482 = !DILocation(line: 355, column: 35, scope: !5139)
!5483 = !DILocation(line: 3024, column: 19, scope: !5140, inlinedAt: !5355)
!5484 = !DILocation(line: 3029, column: 37, scope: !5142, inlinedAt: !5355)
!5485 = !DILocation(line: 3029, column: 18, scope: !5142, inlinedAt: !5355)
!5486 = !DILocation(line: 1841, column: 86, scope: !5143, inlinedAt: !5358)
!5487 = !DILocation(line: 359, column: 22, scope: !5144)
!5488 = !DILocation(line: 360, column: 9, scope: !5147)
!5489 = !DILocation(line: 360, column: 41, scope: !5147)
!5490 = !DILocation(line: 434, column: 15, scope: !5148, inlinedAt: !5362)
!5491 = !DILocation(line: 434, column: 9, scope: !5148, inlinedAt: !5362)
!5492 = !DILocation(line: 0, scope: !5148, inlinedAt: !5362)
!5493 = !DILocation(line: 328, column: 1, scope: !5139)
!5494 = !DILocation(line: 442, column: 17, scope: !5148, inlinedAt: !5362)
!5495 = !DILocation(line: 442, column: 25, scope: !5152, inlinedAt: !5362)
!5496 = !DILocation(line: 435, column: 16, scope: !5148, inlinedAt: !5362)
!5497 = !DILocation(line: 767, column: 9, scope: !5153, inlinedAt: !5363)
!5498 = !DILocation(line: 210, column: 9, scope: !5155, inlinedAt: !5364)
!5499 = !DILocation(line: 443, column: 9, scope: !5148, inlinedAt: !5362)
!5500 = !DILocation(line: 977, column: 9, scope: !5150, inlinedAt: !5360)
!5501 = !DILocation(line: 370, column: 5, scope: !5163)
!5502 = !DILocation(line: 213, column: 12, scope: !232, inlinedAt: !5167)
!5503 = !DILocation(line: 44, column: 32, scope: !5164, inlinedAt: !5166)
!5504 = !DILocation(line: 214, column: 16, scope: !232, inlinedAt: !5167)
!5505 = !DILocation(line: 1077, column: 12, scope: !222, inlinedAt: !5168)
!5506 = !DILocation(line: 219, column: 13, scope: !232, inlinedAt: !5167)
!5507 = !DILocation(line: 1718, column: 17, scope: !233, inlinedAt: !5171)
!5508 = !DILocation(line: 410, column: 27, scope: !236, inlinedAt: !5174)
!5509 = !DILocation(line: 89, column: 24, scope: !241, inlinedAt: !5175)
!5510 = !DILocation(line: 224, column: 17, scope: !239, inlinedAt: !5167)
!5511 = !DILocation(line: 213, column: 9, scope: !232, inlinedAt: !5167)
!5512 = !DILocation(line: 230, column: 9, scope: !243, inlinedAt: !5167)
!5513 = !DILocation(line: 228, column: 19, scope: !232, inlinedAt: !5167)
!5514 = !DILocation(line: 229, column: 9, scope: !243, inlinedAt: !5167)
!5515 = !DILocation(line: 44, column: 51, scope: !5164, inlinedAt: !5166)
!5516 = !DILocation(line: 213, column: 12, scope: !232, inlinedAt: !5178)
!5517 = !DILocation(line: 214, column: 16, scope: !232, inlinedAt: !5178)
!5518 = !DILocation(line: 1077, column: 12, scope: !222, inlinedAt: !5179)
!5519 = !DILocation(line: 219, column: 13, scope: !232, inlinedAt: !5178)
!5520 = !DILocation(line: 1718, column: 17, scope: !233, inlinedAt: !5182)
!5521 = !DILocation(line: 410, column: 27, scope: !236, inlinedAt: !5185)
!5522 = !DILocation(line: 89, column: 24, scope: !241, inlinedAt: !5186)
!5523 = !DILocation(line: 224, column: 17, scope: !239, inlinedAt: !5178)
!5524 = !DILocation(line: 213, column: 9, scope: !232, inlinedAt: !5178)
!5525 = !DILocation(line: 230, column: 9, scope: !243, inlinedAt: !5178)
!5526 = !DILocation(line: 228, column: 19, scope: !232, inlinedAt: !5178)
!5527 = !DILocation(line: 229, column: 9, scope: !243, inlinedAt: !5178)
!5528 = !DILocation(line: 371, column: 13, scope: !5165)
!5529 = !DILocation(line: 130, column: 9, scope: !5187, inlinedAt: !5370)
!5530 = !DILocation(line: 418, column: 36, scope: !5163)
!5531 = !DILocation(line: 126, column: 9, scope: !5188, inlinedAt: !5371)
!5532 = !DILocation(line: 421, column: 8, scope: !5163)
!5533 = !DILocation(line: 372, column: 16, scope: !5165)
!5534 = !DILocation(line: 378, column: 12, scope: !5165)
!5535 = !DILocation(line: 1037, column: 19, scope: !26, inlinedAt: !5192)
!5536 = !DILocation(line: 619, column: 49, scope: !27, inlinedAt: !5194)
!5537 = !DILocation(line: 1040, column: 12, scope: !29, inlinedAt: !5192)
!5538 = !DILocation(line: 1041, column: 22, scope: !29, inlinedAt: !5192)
!5539 = !DILocation(line: 614, column: 9, scope: !30, inlinedAt: !5198)
!5540 = !DILocation(line: 961, column: 18, scope: !34, inlinedAt: !5199)
!5541 = !DILocation(line: 1046, column: 13, scope: !36, inlinedAt: !5192)
!5542 = !DILocation(line: 1921, column: 41, scope: !35, inlinedAt: !5200)
!5543 = !DILocation(line: 372, column: 13, scope: !5165)
!5544 = !DILocation(line: 379, column: 24, scope: !5165)
!5545 = !DILocation(line: 863, column: 18, scope: !244, inlinedAt: !5205)
!5546 = !DILocation(line: 2053, column: 74, scope: !247, inlinedAt: !5204)
!5547 = !DILocation(line: 1651, column: 9, scope: !5206, inlinedAt: !5374)
!5548 = !DILocation(line: 385, column: 41, scope: !5207)
!5549 = !DILocation(line: 387, column: 28, scope: !5208)
!5550 = !DILocation(line: 387, column: 12, scope: !5208)
!5551 = !DILocation(line: 388, column: 24, scope: !5208)
!5552 = !DILocation(line: 863, column: 18, scope: !244, inlinedAt: !5213)
!5553 = !DILocation(line: 2053, column: 74, scope: !247, inlinedAt: !5212)
!5554 = !DILocation(line: 394, column: 30, scope: !5209)
!5555 = !DILocation(line: 394, column: 9, scope: !5209)
!5556 = !DILocation(line: 397, column: 13, scope: !5209)
!5557 = !DILocation(line: 397, column: 33, scope: !5209)
!5558 = !DILocation(line: 396, column: 9, scope: !5209)
!5559 = !DILocation(line: 399, column: 13, scope: !5209)
!5560 = !DILocation(line: 3024, column: 19, scope: !5214, inlinedAt: !5375)
!5561 = !DILocation(line: 3029, column: 37, scope: !5215, inlinedAt: !5375)
!5562 = !DILocation(line: 3029, column: 18, scope: !5215, inlinedAt: !5375)
!5563 = !DILocation(line: 403, column: 22, scope: !5209)
!5564 = !DILocation(line: 405, column: 12, scope: !5216)
!5565 = !DILocation(line: 2906, column: 14, scope: !251, inlinedAt: !5220)
!5566 = !DILocation(line: 406, column: 48, scope: !5216)
!5567 = !DILocation(line: 77, column: 13, scope: !5221, inlinedAt: !5378)
!5568 = !DILocation(line: 77, column: 24, scope: !5221, inlinedAt: !5378)
!5569 = !DILocation(line: 552, column: 14, scope: !5222, inlinedAt: !5380)
!5570 = !DILocation(line: 94, column: 9, scope: !5224, inlinedAt: !5378)
!5571 = !DILocation(line: 95, column: 5, scope: !5221, inlinedAt: !5378)
!5572 = !DILocation(line: 1037, column: 19, scope: !26, inlinedAt: !5228)
!5573 = !DILocation(line: 619, column: 49, scope: !27, inlinedAt: !5230)
!5574 = !DILocation(line: 1040, column: 12, scope: !29, inlinedAt: !5228)
!5575 = !DILocation(line: 1041, column: 22, scope: !29, inlinedAt: !5228)
!5576 = !DILocation(line: 3024, column: 19, scope: !252, inlinedAt: !5233)
!5577 = !DILocation(line: 3029, column: 37, scope: !253, inlinedAt: !5233)
!5578 = !DILocation(line: 3029, column: 18, scope: !253, inlinedAt: !5233)
!5579 = !DILocation(line: 614, column: 9, scope: !254, inlinedAt: !5237)
!5580 = !DILocation(line: 961, column: 18, scope: !259, inlinedAt: !5238)
!5581 = !DILocation(line: 552, column: 14, scope: !260, inlinedAt: !5239)
!5582 = !DILocation(line: 2913, column: 9, scope: !258, inlinedAt: !5220)
!5583 = !DILocation(line: 1718, column: 17, scope: !5240, inlinedAt: !5388)
!5584 = !DILocation(line: 1037, column: 19, scope: !26, inlinedAt: !5246)
!5585 = !DILocation(line: 619, column: 49, scope: !27, inlinedAt: !5248)
!5586 = !DILocation(line: 1040, column: 12, scope: !29, inlinedAt: !5246)
!5587 = !DILocation(line: 1041, column: 22, scope: !29, inlinedAt: !5246)
!5588 = !DILocation(line: 614, column: 9, scope: !30, inlinedAt: !5252)
!5589 = !DILocation(line: 961, column: 18, scope: !34, inlinedAt: !5253)
!5590 = !DILocation(line: 1921, column: 41, scope: !35, inlinedAt: !5254)
!5591 = !DILocation(line: 1046, column: 13, scope: !36, inlinedAt: !5246)
!5592 = !DILocation(line: 405, column: 9, scope: !5216)
!5593 = !DILocation(line: 0, scope: !5161)
!5594 = !DILocation(line: 414, column: 9, scope: !5216)
!5595 = !DILocation(line: 614, column: 9, scope: !30, inlinedAt: !5258)
!5596 = !DILocation(line: 961, column: 18, scope: !34, inlinedAt: !5259)
!5597 = !DILocation(line: 1921, column: 41, scope: !35, inlinedAt: !5260)
!5598 = !DILocation(line: 1046, column: 13, scope: !36, inlinedAt: !5228)
!5599 = !DILocation(line: 406, column: 92, scope: !5216)
!5600 = !DILocation(line: 407, column: 13, scope: !5216)
!5601 = !DILocation(line: 388, column: 20, scope: !5208)
!5602 = !DILocation(line: 388, column: 43, scope: !5208)
!5603 = !DILocation(line: 0, scope: !5391)
!5604 = !DILocation(line: 379, column: 20, scope: !5165)
!5605 = !DILocation(line: 379, column: 43, scope: !5165)
!5606 = !DILocation(line: 481, column: 1, scope: !5147)
!5607 = !DILocation(line: 481, column: 1, scope: !5139)
!5608 = !DILocation(line: 478, column: 24, scope: !5163)
!5609 = !DILocation(line: 117, column: 28, scope: !5261, inlinedAt: !5394)
!5610 = !DILocation(line: 117, column: 9, scope: !5261, inlinedAt: !5394)
!5611 = !DILocation(line: 478, column: 36, scope: !5163)
!5612 = !DILocation(line: 478, column: 12, scope: !5163)
!5613 = !DILocation(line: 265, column: 14, scope: !261, inlinedAt: !5267)
!5614 = !DILocation(line: 427, column: 12, scope: !5163)
!5615 = !DILocation(line: 428, column: 17, scope: !5163)
!5616 = !DILocation(line: 440, column: 19, scope: !5163)
!5617 = !DILocation(line: 430, column: 28, scope: !5163)
!5618 = !DILocation(line: 614, column: 9, scope: !5268, inlinedAt: !5407)
!5619 = !DILocation(line: 1841, column: 86, scope: !5270, inlinedAt: !5403)
!5620 = !DILocation(line: 30, column: 8, scope: !262, inlinedAt: !5276)
!5621 = !DILocation(line: 3904, column: 24, scope: !263, inlinedAt: !5280)
!5622 = !DILocation(line: 35, column: 5, scope: !266, inlinedAt: !5276)
!5623 = !DILocation(line: 86, column: 11, scope: !267, inlinedAt: !5281)
!5624 = !DILocation(line: 86, column: 5, scope: !267, inlinedAt: !5281)
!5625 = !DILocation(line: 90, column: 1, scope: !267, inlinedAt: !5281)
!5626 = !DILocation(line: 2173, column: 9, scope: !5282, inlinedAt: !5412)
!5627 = !DILocation(line: 430, column: 24, scope: !5163)
!5628 = !DILocation(line: 430, column: 46, scope: !5163)
!5629 = !DILocation(line: 0, scope: !5413)
!5630 = !DILocation(line: 446, column: 17, scope: !5163)
!5631 = !DILocation(line: 441, column: 53, scope: !5163)
!5632 = !DILocation(line: 977, column: 16, scope: !5283, inlinedAt: !5419)
!5633 = !DILocation(line: 448, column: 28, scope: !5163)
!5634 = !DILocation(line: 614, column: 9, scope: !5268, inlinedAt: !5430)
!5635 = !DILocation(line: 1841, column: 86, scope: !5270, inlinedAt: !5426)
!5636 = !DILocation(line: 30, column: 8, scope: !262, inlinedAt: !5287)
!5637 = !DILocation(line: 3904, column: 24, scope: !263, inlinedAt: !5291)
!5638 = !DILocation(line: 35, column: 5, scope: !266, inlinedAt: !5287)
!5639 = !DILocation(line: 86, column: 11, scope: !267, inlinedAt: !5292)
!5640 = !DILocation(line: 86, column: 5, scope: !267, inlinedAt: !5292)
!5641 = !DILocation(line: 90, column: 1, scope: !267, inlinedAt: !5292)
!5642 = !DILocation(line: 2173, column: 9, scope: !5282, inlinedAt: !5436)
!5643 = !DILocation(line: 1841, column: 86, scope: !5293, inlinedAt: !5440)
!5644 = !DILocation(line: 568, column: 12, scope: !5297, inlinedAt: !5443)
!5645 = !DILocation(line: 614, column: 9, scope: !5299, inlinedAt: !5451)
!5646 = !DILocation(line: 89, column: 24, scope: !5304, inlinedAt: !5452)
!5647 = !DILocation(line: 961, column: 18, scope: !5306, inlinedAt: !5458)
!5648 = !DILocation(line: 1717, column: 9, scope: !5312, inlinedAt: !5461)
!5649 = !DILocation(line: 659, column: 28, scope: !5317, inlinedAt: !5462)
!5650 = !DILocation(line: 456, column: 43, scope: !5318)
!5651 = !DILocation(line: 456, column: 42, scope: !5318)
!5652 = !DILocation(line: 457, column: 24, scope: !5318)
!5653 = !DILocation(line: 457, column: 23, scope: !5318)
!5654 = !DILocation(line: 456, column: 17, scope: !5318)
!5655 = !DILocation(line: 461, column: 17, scope: !5294)
!5656 = !DILocation(line: 659, column: 28, scope: !5317, inlinedAt: !5466)
!5657 = !DILocation(line: 464, column: 24, scope: !5323)
!5658 = !DILocation(line: 471, column: 21, scope: !5319)
!5659 = !DILocation(line: 0, scope: !5294)
!5660 = !DILocation(line: 1717, column: 9, scope: !5312, inlinedAt: !5467)
!5661 = !DILocation(line: 180, column: 28, scope: !5322, inlinedAt: !5465)
!5662 = !DILocation(line: 466, column: 29, scope: !5323)
!5663 = !DILocation(line: 863, column: 18, scope: !5324, inlinedAt: !5469)
!5664 = !DILocation(line: 237, column: 57, scope: !5326, inlinedAt: !5468)
!5665 = !DILocation(line: 594, column: 18, scope: !5470, inlinedAt: !5471)
!5666 = !DILocation(line: 465, column: 25, scope: !5323)
!5667 = !DILocation(line: 467, column: 41, scope: !5323)
!5668 = !DILocation(line: 464, column: 21, scope: !5323)
!5669 = !DILocation(line: 472, column: 32, scope: !5319)
!5670 = !DILocation(line: 472, column: 28, scope: !5319)
!5671 = !DILocation(line: 472, column: 50, scope: !5319)
!5672 = !DILocation(line: 448, column: 24, scope: !5163)
!5673 = !DILocation(line: 448, column: 46, scope: !5163)
!5674 = !DILocation(line: 0, scope: !5163)
!5675 = !DILocation(line: 30, column: 8, scope: !262, inlinedAt: !5329)
!5676 = !DILocation(line: 3904, column: 24, scope: !263, inlinedAt: !5333)
!5677 = !DILocation(line: 35, column: 5, scope: !266, inlinedAt: !5329)
!5678 = !DILocation(line: 86, column: 11, scope: !267, inlinedAt: !5334)
!5679 = !DILocation(line: 86, column: 5, scope: !267, inlinedAt: !5334)
!5680 = !DILocation(line: 90, column: 1, scope: !267, inlinedAt: !5334)
!5681 = !DILocation(line: 2173, column: 9, scope: !5282, inlinedAt: !5477)
!5682 = !DILocation(line: 442, column: 28, scope: !5163)
!5683 = !DILocation(line: 3024, column: 19, scope: !268, inlinedAt: !5335)
!5684 = !DILocation(line: 3029, column: 37, scope: !269, inlinedAt: !5335)
!5685 = !DILocation(line: 3029, column: 18, scope: !269, inlinedAt: !5335)
!5686 = !DILocation(line: 148, column: 9, scope: !270, inlinedAt: !5336)
!5687 = !DILocation(line: 268, column: 9, scope: !271, inlinedAt: !5267)
!5688 = !DILocation(line: 269, column: 37, scope: !271, inlinedAt: !5267)
!5689 = !DILocation(line: 619, column: 49, scope: !272, inlinedAt: !5342)
!5690 = !DILocation(line: 1040, column: 12, scope: !275, inlinedAt: !5340)
!5691 = !DILocation(line: 1041, column: 22, scope: !275, inlinedAt: !5340)
!5692 = !DILocation(line: 810, column: 1, scope: !52, inlinedAt: !5345)
!5693 = !DILocation(line: 1035, column: 5, scope: !274, inlinedAt: !5340)
!5694 = !DILocation(line: 810, column: 1, scope: !52, inlinedAt: !5347)
!5695 = !DILocation(line: 264, column: 5, scope: !261, inlinedAt: !5267)
!5696 = !DILocation(line: 614, column: 9, scope: !277, inlinedAt: !5351)
!5697 = !DILocation(line: 961, column: 18, scope: !281, inlinedAt: !5352)
!5698 = !DILocation(line: 1045, column: 29, scope: !282, inlinedAt: !5340)
!5699 = !DILocation(line: 1046, column: 13, scope: !282, inlinedAt: !5340)
!5700 = !DILocation(line: 269, column: 43, scope: !271, inlinedAt: !5267)
!5701 = !DILocation(line: 478, column: 37, scope: !5163)
!5702 = !DILocation(line: 480, column: 5, scope: !5163)
!5703 = !DILocation(line: 481, column: 2, scope: !5139)
!5704 = !DILocation(line: 442, column: 24, scope: !5163)
!5705 = !DILocation(line: 442, column: 46, scope: !5163)
!5706 = distinct !DISubprogram(name: "decode_plain_generic<polars_parquet::arrow::read::deserialize::binview::required_masked::decode::{closure_env#0}>", linkageName: "_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize7binview20decode_plain_genericNCNvNtB2_15required_masked6decode0EBa_", scope: !1469, file: !1464, line: 328, type: !1310, scopeLine: 328, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1309)
!5707 = distinct !DISubprogram(name: "len<polars_arrow::array::binview::view::View, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewE3lenCsfISxE4fmY1Y_14polars_parquet", scope: !1342, file: !1339, line: 3023, type: !1310, scopeLine: 3023, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1309)
!5708 = distinct !DISubprogram(name: "len<[u8]>", linkageName: "_RNvMs2_NtNtNtCs8774dFTUdNv_12polars_arrow5array7binview7mutableINtB5_22MutableBinaryViewArrayShE3lenCsfISxE4fmY1Y_14polars_parquet", scope: !1313, file: !1311, line: 157, type: !1310, scopeLine: 157, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1309)
!5709 = distinct !DILexicalBlock(scope: !5707, file: !1339, line: 3024, column: 9)
!5710 = distinct !DISubprogram(name: "as_slice<polars_buffer::buffer::Buffer<u8>, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEE8as_sliceCsfISxE4fmY1Y_14polars_parquet", scope: !1342, file: !1339, line: 1824, type: !1310, scopeLine: 1824, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1309)
!5711 = distinct !DILexicalBlock(scope: !5706, file: !1464, line: 357, column: 5)
!5712 = distinct !DISubprogram(name: "completed_buffers<[u8]>", linkageName: "_RNvMs2_NtNtNtCs8774dFTUdNv_12polars_arrow5array7binview7mutableINtB5_22MutableBinaryViewArrayShE17completed_buffersCsfISxE4fmY1Y_14polars_parquet", scope: !1313, file: !1311, line: 143, type: !1310, scopeLine: 143, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1309)
!5713 = distinct !DISubprogram(name: "deref<polars_buffer::buffer::Buffer<u8>, alloc::alloc::Global>", linkageName: "_RNvXs7_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEENtNtNtCscgRAwXFJnXP_4core3ops5deref5Deref5derefCsfISxE4fmY1Y_14polars_parquet", scope: !1470, file: !1339, line: 3755, type: !1310, scopeLine: 3755, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1309)
!5714 = distinct !DILexicalBlock(scope: !5711, file: !1464, line: 359, column: 5)
!5715 = distinct !DISubprogram(name: "with_capacity_in<alloc::alloc::Global>", linkageName: "_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfISxE4fmY1Y_14polars_parquet", scope: !1345, file: !1343, line: 433, type: !1310, scopeLine: 433, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1309)
!5716 = distinct !DISubprogram(name: "with_capacity<u8>", linkageName: "_RNvMNtCsgZ49sUHp3tW_5alloc3vecINtB2_3VechE13with_capacityCsfISxE4fmY1Y_14polars_parquet", scope: !1342, file: !1339, line: 523, type: !1310, scopeLine: 523, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1309)
!5717 = distinct !DISubprogram(name: "with_capacity_in<u8, alloc::alloc::Global>", linkageName: "_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE16with_capacity_inCsfISxE4fmY1Y_14polars_parquet", scope: !1342, file: !1339, line: 976, type: !1310, scopeLine: 976, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1309)
!5718 = distinct !DISubprogram(name: "with_capacity_in<u8, alloc::alloc::Global>", linkageName: "_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechE16with_capacity_inCsfISxE4fmY1Y_14polars_parquet", scope: !1346, file: !1343, line: 175, type: !1310, scopeLine: 175, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1309)
!5719 = distinct !DILexicalBlock(scope: !5715, file: !1343, line: 442, column: 13)
!5720 = distinct !DISubprogram(name: "needs_to_grow<alloc::alloc::Global>", linkageName: "_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner13needs_to_growCsfISxE4fmY1Y_14polars_parquet", scope: !1345, file: !1343, line: 766, type: !1310, scopeLine: 766, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1309)
!5721 = distinct !DILexicalBlock(scope: !5715, file: !1343, line: 435, column: 13)
!5722 = distinct !DISubprogram(name: "assert_unchecked", linkageName: "_RNvNtCscgRAwXFJnXP_4core4hint16assert_unchecked", scope: !1472, file: !1471, line: 202, type: !1310, scopeLine: 202, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1309)
!5723 = distinct !{!5723, i1 true, !"_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next"}
!5724 = distinct !{!5724, !5723, !"_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next: argument 0"}
!5725 = distinct !DILexicalBlock(scope: !5714, file: !1464, line: 360, column: 5)
!5726 = distinct !DILexicalBlock(scope: !5725, file: !1464, line: 361, column: 5)
!5727 = distinct !DILexicalBlock(scope: !5726, file: !1464, line: 363, column: 5)
!5728 = distinct !DILexicalBlock(scope: !5727, file: !1464, line: 366, column: 5)
!5729 = distinct !DILexicalBlock(scope: !5728, file: !1464, line: 367, column: 5)
!5730 = distinct !DILexicalBlock(scope: !5729, file: !1464, line: 369, column: 5)
!5731 = distinct !DISubprogram(name: "{closure#0}", linkageName: "_RNCNvNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize7binview15required_masked6decode0Bd_", scope: !5916, file: !5914, line: 31, type: !1321, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1309)
!5732 = distinct !DILexicalBlock(scope: !5730, file: !1464, line: 370, column: 54)
!5733 = distinct !DILocation(line: 370, column: 47, scope: !5732)
!5734 = distinct !DILocation(line: 31, column: 34, scope: !5731, inlinedAt: !5733)
!5735 = distinct !DILocation(line: 218, column: 43, scope: !232, inlinedAt: !5734)
!5736 = distinct !DILocation(line: 222, column: 59, scope: !232, inlinedAt: !5734)
!5737 = distinct !DILocation(line: 819, column: 9, scope: !235, inlinedAt: !5736)
!5738 = distinct !DILocation(line: 259, column: 34, scope: !234, inlinedAt: !5737)
!5739 = distinct !DILocation(line: 224, column: 41, scope: !239, inlinedAt: !5734)
!5740 = distinct !DILocation(line: 646, column: 26, scope: !1484, inlinedAt: !5739)
!5741 = distinct !DILocation(line: 557, column: 44, scope: !237, inlinedAt: !5740)
!5742 = distinct !DILocation(line: 411, column: 13, scope: !1485, inlinedAt: !5741)
!5743 = distinct !DISubprogram(name: "total_bytes_len<[u8]>", linkageName: "_RNvMs2_NtNtNtCs8774dFTUdNv_12polars_arrow5array7binview7mutableINtB5_22MutableBinaryViewArrayShE15total_bytes_lenCsfISxE4fmY1Y_14polars_parquet", scope: !1313, file: !1311, line: 129, type: !1310, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1309)
!5744 = distinct !DISubprogram(name: "set_total_bytes_len<[u8]>", linkageName: "_RNvMs2_NtNtNtCs8774dFTUdNv_12polars_arrow5array7binview7mutableINtB5_22MutableBinaryViewArrayShE19set_total_bytes_lenCsfISxE4fmY1Y_14polars_parquet", scope: !1313, file: !1311, line: 119, type: !1310, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1309)
!5745 = distinct !DILexicalBlock(scope: !5732, file: !1464, line: 382, column: 9)
!5746 = distinct !DILocation(line: 383, column: 37, scope: !5745)
!5747 = distinct !DILocation(line: 1953, column: 20, scope: !249, inlinedAt: !5746)
!5748 = distinct !DILocation(line: 2157, column: 32, scope: !248, inlinedAt: !5747)
!5749 = distinct !DILocation(line: 2053, column: 64, scope: !247, inlinedAt: !5748)
!5750 = distinct !DISubprogram(name: "unwrap_unchecked<&[u8; 4], core::array::TryFromSliceError>", linkageName: "_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultRAhj4_NtNtB4_5array17TryFromSliceErrorE16unwrap_uncheckedCsfISxE4fmY1Y_14polars_parquet", scope: !1398, file: !1396, line: 1650, type: !1310, scopeLine: 1650, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1309)
!5751 = distinct !DILexicalBlock(scope: !5745, file: !1464, line: 384, column: 9)
!5752 = distinct !DILexicalBlock(scope: !5751, file: !1464, line: 385, column: 9)
!5753 = distinct !DILexicalBlock(scope: !5752, file: !1464, line: 391, column: 9)
!5754 = distinct !DILocation(line: 392, column: 36, scope: !5753)
!5755 = distinct !DILocation(line: 1953, column: 20, scope: !249, inlinedAt: !5754)
!5756 = distinct !DILocation(line: 2157, column: 32, scope: !248, inlinedAt: !5755)
!5757 = distinct !DILocation(line: 2053, column: 64, scope: !247, inlinedAt: !5756)
!5758 = distinct !DISubprogram(name: "len<u8, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VechE3lenCsfISxE4fmY1Y_14polars_parquet", scope: !1342, file: !1339, line: 3023, type: !1310, scopeLine: 3023, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1309)
!5759 = distinct !DILexicalBlock(scope: !5758, file: !1339, line: 3024, column: 9)
!5760 = distinct !DILexicalBlock(scope: !5753, file: !1464, line: 403, column: 9)
!5761 = distinct !DISubprogram(name: "spec_extend<u8, alloc::alloc::Global>", linkageName: "_RNvXs2_NtNtCsgZ49sUHp3tW_5alloc3vec11spec_extendINtB7_3VechEINtB5_10SpecExtendRhINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterhEE11spec_extendCsfISxE4fmY1Y_14polars_parquet", scope: !1488, file: !1486, line: 54, type: !1310, scopeLine: 54, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1309)
!5762 = distinct !DILexicalBlock(scope: !5761, file: !1486, line: 55, column: 9)
!5763 = distinct !DISubprogram(name: "extend_from_slice<u8, alloc::alloc::Global>", linkageName: "_RNvMs1_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE17extend_from_sliceCsfISxE4fmY1Y_14polars_parquet", scope: !1342, file: !1339, line: 3526, type: !1310, scopeLine: 3526, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1309)
!5764 = distinct !DILocation(line: 56, column: 23, scope: !5762, inlinedAt: !5922)
end_hunk_3
begin_hunk_4_@llvm.memmove.p0.p0.i64
!5885 = distinct !{!5885, i1 true, !"_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEE8push_mutCsfISxE4fmY1Y_14polars_parquet"}
!5886 = distinct !{!5886, !5885, !"_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEE8push_mutCsfISxE4fmY1Y_14polars_parquet: argument 0"}
!5887 = distinct !DILocation(line: 269, column: 32, scope: !271, inlinedAt: !5815)
!5888 = distinct !DILocation(line: 1004, column: 22, scope: !276, inlinedAt: !5887)
!5889 = distinct !DILocation(line: 1040, column: 28, scope: !275, inlinedAt: !5888)
!5890 = distinct !DILocation(line: 309, column: 20, scope: !273, inlinedAt: !5889)
!5891 = distinct !{!5891, !5885, !"_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEE8push_mutCsfISxE4fmY1Y_14polars_parquet: argument 1"}
!5892 = distinct !DILocation(line: 1050, column: 5, scope: !274, inlinedAt: !5888)
!5893 = distinct !DILocation(line: 810, column: 1, scope: !60, inlinedAt: !5892)
!5894 = distinct !DILocation(line: 271, column: 5, scope: !261, inlinedAt: !5815)
!5895 = distinct !DILocation(line: 810, column: 1, scope: !60, inlinedAt: !5894)
!5896 = distinct !DILocation(line: 1044, column: 28, scope: !275, inlinedAt: !5888)
!5897 = distinct !DILocation(line: 2026, column: 18, scope: !280, inlinedAt: !5896)
!5898 = distinct !DILocation(line: 296, column: 20, scope: !279, inlinedAt: !5897)
!5899 = distinct !DILocation(line: 609, column: 14, scope: !278, inlinedAt: !5898)
!5900 = distinct !DILocation(line: 1044, column: 41, scope: !275, inlinedAt: !5888)
!5901 = !{i64 7766929270493655353}
!5902 = !DILocation(line: 357, column: 38, scope: !5706)
!5903 = !DILocation(line: 158, column: 20, scope: !5708, inlinedAt: !5902)
!5904 = !DILocation(line: 359, column: 29, scope: !5711)
!5905 = !DILocation(line: 144, column: 9, scope: !5712, inlinedAt: !5904)
!5906 = !DILocation(line: 3756, column: 14, scope: !5713, inlinedAt: !5905)
!5907 = !DILocation(line: 360, column: 22, scope: !5714)
!5908 = !DILocation(line: 524, column: 9, scope: !5716, inlinedAt: !5907)
!5909 = !DILocation(line: 977, column: 20, scope: !5717, inlinedAt: !5908)
!5910 = !DILocation(line: 177, column: 20, scope: !5718, inlinedAt: !5909)
!5911 = !DILocation(line: 438, column: 50, scope: !5721, inlinedAt: !5910)
!5912 = !DILocation(line: 438, column: 21, scope: !5721, inlinedAt: !5910)
!5913 = !{!5724}
!5914 = !DIFile(filename: "crates/polars-parquet/src/arrow/read/deserialize/binview/required_masked.rs", directory: "/opt-bench/work/pola-rs/polars", checksumkind: CSK_MD5, checksum: "a7da15c22cd48f2c4c3197c6ab2eaca4")
!5915 = !DINamespace(name: "required_masked", scope: !1469)
!5916 = !DINamespace(name: "decode", scope: !5915)
!5917 = !DILocation(line: 418, column: 43, scope: !5730)
!5918 = !DILocation(line: 418, column: 16, scope: !5730)
!5919 = !DILocation(line: 384, column: 59, scope: !5745)
!5920 = !DILocation(line: 403, column: 29, scope: !5753)
!5921 = !DILocation(line: 409, column: 20, scope: !5760)
!5922 = !DILocation(line: 3527, column: 14, scope: !5763, inlinedAt: !5921)
!5923 = !DILocation(line: 406, column: 57, scope: !5760)
!5924 = !DILexicalBlockFile(scope: !5769, file: !1489, discriminator: 2)
!5925 = !DILocation(line: 92, column: 13, scope: !5924, inlinedAt: !5923)
!5926 = !{!5771}
!5927 = !DILocation(line: 406, column: 43, scope: !5760)
!5928 = !{!5777}
!5929 = !DILexicalBlockFile(scope: !5787, file: !1358, discriminator: 2)
!5930 = !DILocation(line: 411, column: 32, scope: !5760)
!5931 = !DILocation(line: 119, column: 62, scope: !5786, inlinedAt: !5930)
!5932 = !DILocation(line: 819, column: 9, scope: !5929, inlinedAt: !5931)
!5933 = !DILocation(line: 259, column: 34, scope: !5788, inlinedAt: !5932)
!5934 = !{!5790}
!5935 = !DILocation(line: 411, column: 18, scope: !5760)
!5936 = !DILexicalBlockFile(scope: !5732, file: !1492, discriminator: 0)
!5937 = !DILocation(line: 478, column: 31, scope: !5730)
!5938 = !DILocation(line: 778, column: 9, scope: !5810, inlinedAt: !5937)
!5939 = !DILocation(line: 400, column: 9, scope: !5811, inlinedAt: !5938)
!5940 = !{!5813}
!5941 = !{!5814}
!5942 = !DILexicalBlockFile(scope: !5821, file: !1343, discriminator: 2)
!5943 = !DILexicalBlockFile(scope: !5820, file: !1343, discriminator: 2)
!5944 = !DILexicalBlockFile(scope: !5819, file: !1339, discriminator: 2)
!5945 = !DILexicalBlockFile(scope: !5818, file: !1339, discriminator: 2)
!5946 = !DILexicalBlockFile(scope: !5817, file: !1339, discriminator: 2)
!5947 = !DILocation(line: 428, column: 84, scope: !5730)
!5948 = !DILocation(line: 3756, column: 14, scope: !5946, inlinedAt: !5947)
!5949 = !DILocation(line: 1841, column: 76, scope: !5945, inlinedAt: !5948)
!5950 = !DILocation(line: 1942, column: 18, scope: !5944, inlinedAt: !5949)
!5951 = !DILocation(line: 296, column: 20, scope: !5943, inlinedAt: !5950)
!5952 = !DILocation(line: 609, column: 14, scope: !5942, inlinedAt: !5951)
!5953 = !DILocation(line: 428, column: 57, scope: !5730)
!5954 = !DILocation(line: 38, column: 9, scope: !5823, inlinedAt: !5953)
!5955 = !{!5826}
!5956 = !DILexicalBlockFile(scope: !5823, file: !1504, discriminator: 2)
!5957 = !DILocation(line: 38, column: 9, scope: !5956, inlinedAt: !5953)
!5958 = !DILexicalBlockFile(scope: !5730, file: !1492, discriminator: 0)
!5959 = !DILexicalBlockFile(scope: !5834, file: !1480, discriminator: 2)
!5960 = !DILexicalBlockFile(scope: !5832, file: !1480, discriminator: 2)
!5961 = !DILocation(line: 441, column: 50, scope: !5730)
!5962 = !DILocation(line: 19, column: 15, scope: !5960, inlinedAt: !5961)
!5963 = !DILocation(line: 529, column: 23, scope: !5833, inlinedAt: !5962)
!5964 = !DILocation(line: 437, column: 32, scope: !5959, inlinedAt: !5963)
!5965 = !DILexicalBlockFile(scope: !5821, file: !1343, discriminator: 4)
!5966 = !DILexicalBlockFile(scope: !5820, file: !1343, discriminator: 4)
!5967 = !DILexicalBlockFile(scope: !5819, file: !1339, discriminator: 4)
!5968 = !DILexicalBlockFile(scope: !5818, file: !1339, discriminator: 4)
!5969 = !DILexicalBlockFile(scope: !5817, file: !1339, discriminator: 4)
!5970 = !DILocation(line: 446, column: 84, scope: !5730)
!5971 = !DILocation(line: 3756, column: 14, scope: !5969, inlinedAt: !5970)
!5972 = !DILocation(line: 1841, column: 76, scope: !5968, inlinedAt: !5971)
!5973 = !DILocation(line: 1942, column: 18, scope: !5967, inlinedAt: !5972)
!5974 = !DILocation(line: 296, column: 20, scope: !5966, inlinedAt: !5973)
!5975 = !DILocation(line: 609, column: 14, scope: !5965, inlinedAt: !5974)
!5976 = !DILexicalBlockFile(scope: !5823, file: !1504, discriminator: 12)
!5977 = !DILocation(line: 446, column: 57, scope: !5730)
!5978 = !DILocation(line: 38, column: 9, scope: !5976, inlinedAt: !5977)
!5979 = !{!5837}
!5980 = !DILexicalBlockFile(scope: !5823, file: !1504, discriminator: 14)
!5981 = !DILocation(line: 38, column: 9, scope: !5980, inlinedAt: !5977)
!5982 = !DILexicalBlockFile(scope: !5844, file: !1339, discriminator: 6)
!5983 = !DILocation(line: 455, column: 33, scope: !5842)
!5984 = !DILocation(line: 139, column: 9, scope: !5843, inlinedAt: !5983)
!5985 = !DILocation(line: 3756, column: 14, scope: !5982, inlinedAt: !5984)
!5986 = !DILexicalBlockFile(scope: !5846, file: !1480, discriminator: 4)
!5987 = !DILocation(line: 455, column: 40, scope: !5842)
!5988 = !DILocation(line: 19, column: 15, scope: !5986, inlinedAt: !5987)
!5989 = !DILexicalBlockFile(scope: !5850, file: !1343, discriminator: 6)
!5990 = !DILexicalBlockFile(scope: !5849, file: !1343, discriminator: 6)
!5991 = !DILexicalBlockFile(scope: !5848, file: !1339, discriminator: 6)
!5992 = !DILexicalBlockFile(scope: !5841, file: !1339, discriminator: 6)
!5993 = !DILocation(line: 1841, column: 76, scope: !5992, inlinedAt: !5985)
!5994 = !DILocation(line: 1942, column: 18, scope: !5991, inlinedAt: !5993)
!5995 = !DILocation(line: 296, column: 20, scope: !5990, inlinedAt: !5994)
!5996 = !DILocation(line: 609, column: 14, scope: !5989, inlinedAt: !5995)
!5997 = !DILocation(line: 574, column: 15, scope: !5853, inlinedAt: !5988)
!5998 = !DILexicalBlockFile(scope: !5859, file: !1510, discriminator: 2)
!5999 = !DILexicalBlockFile(scope: !5856, file: !1353, discriminator: 2)
!6000 = !DILocation(line: 455, column: 25, scope: !5842)
!6001 = !DILocation(line: 26, column: 14, scope: !5855, inlinedAt: !6000)
!6002 = !DILocation(line: 1041, column: 9, scope: !5999, inlinedAt: !6001)
!6003 = !DILocation(line: 102, column: 78, scope: !5998, inlinedAt: !6002)
!6004 = !DILexicalBlockFile(scope: !5861, file: !1464, discriminator: 2)
!6005 = !DILocation(line: 455, column: 25, scope: !6004)
!6006 = !DILocation(line: 180, column: 28, scope: !5864, inlinedAt: !6005)
!6007 = !DILocation(line: 185, column: 40, scope: !5864, inlinedAt: !6005)
!6008 = !DILexicalBlockFile(scope: !5870, file: !1515, discriminator: 2)
!6009 = !DILexicalBlockFile(scope: !5868, file: !1464, discriminator: 2)
!6010 = !DILocation(line: 463, column: 29, scope: !6009)
!6011 = !DILocation(line: 185, column: 40, scope: !6008, inlinedAt: !6010)
!6012 = !DILocation(line: 180, column: 28, scope: !6008, inlinedAt: !6010)
!6013 = !DILocation(line: 466, column: 63, scope: !5871)
!6014 = !DILocation(line: 237, column: 49, scope: !5874, inlinedAt: !6013)
!6015 = !DILexicalBlockFile(scope: !5876, file: !1396, discriminator: 0)
!6016 = !DILocation(line: 467, column: 34, scope: !5871)
!6017 = !DILexicalBlockFile(scope: !5823, file: !1504, discriminator: 6)
!6018 = !DILocation(line: 441, column: 16, scope: !5730)
!6019 = !DILocation(line: 38, column: 9, scope: !6017, inlinedAt: !6018)
!6020 = !{!5879}
!6021 = !DILexicalBlockFile(scope: !5823, file: !1504, discriminator: 8)
!6022 = !DILocation(line: 38, column: 9, scope: !6021, inlinedAt: !6018)
!6023 = !{!5813, !5814}
!6024 = !{!5886, !5813}
!6025 = !{!5891, !5814}
!6026 = !DILocation(line: 354, column: 12, scope: !5706)
!6027 = !DILocation(line: 355, column: 35, scope: !5706)
!6028 = !DILocation(line: 3024, column: 19, scope: !5707, inlinedAt: !5903)
!6029 = !DILocation(line: 3029, column: 37, scope: !5709, inlinedAt: !5903)
!6030 = !DILocation(line: 3029, column: 18, scope: !5709, inlinedAt: !5903)
!6031 = !DILocation(line: 1841, column: 86, scope: !5710, inlinedAt: !5906)
!6032 = !DILocation(line: 359, column: 22, scope: !5711)
!6033 = !DILocation(line: 360, column: 9, scope: !5714)
!6034 = !DILocation(line: 360, column: 41, scope: !5714)
!6035 = !DILocation(line: 434, column: 15, scope: !5715, inlinedAt: !5910)
!6036 = !DILocation(line: 434, column: 9, scope: !5715, inlinedAt: !5910)
!6037 = !DILocation(line: 0, scope: !5715, inlinedAt: !5910)
!6038 = !DILocation(line: 0, scope: !5706)
!6039 = !DILocation(line: 442, column: 17, scope: !5715, inlinedAt: !5910)
!6040 = !DILocation(line: 442, column: 25, scope: !5719, inlinedAt: !5910)
!6041 = !DILocation(line: 435, column: 16, scope: !5715, inlinedAt: !5910)
!6042 = !DILocation(line: 767, column: 9, scope: !5720, inlinedAt: !5911)
!6043 = !DILocation(line: 210, column: 9, scope: !5722, inlinedAt: !5912)
!6044 = !DILocation(line: 443, column: 9, scope: !5715, inlinedAt: !5910)
!6045 = !DILocation(line: 977, column: 9, scope: !5717, inlinedAt: !5908)
!6046 = !DILocation(line: 370, column: 5, scope: !5730)
!6047 = !DILocation(line: 213, column: 12, scope: !232, inlinedAt: !5734)
!6048 = !DILocation(line: 0, scope: !5729)
!6049 = !DILocation(line: 31, column: 34, scope: !5731, inlinedAt: !5733)
!6050 = !DILocation(line: 214, column: 16, scope: !232, inlinedAt: !5734)
!6051 = !DILocation(line: 1077, column: 12, scope: !222, inlinedAt: !5735)
!6052 = !DILocation(line: 219, column: 13, scope: !232, inlinedAt: !5734)
!6053 = !DILocation(line: 1718, column: 17, scope: !233, inlinedAt: !5738)
!6054 = !DILocation(line: 410, column: 27, scope: !236, inlinedAt: !5741)
!6055 = !DILocation(line: 89, column: 24, scope: !241, inlinedAt: !5742)
!6056 = !DILocation(line: 224, column: 17, scope: !239, inlinedAt: !5734)
!6057 = !DILocation(line: 213, column: 9, scope: !232, inlinedAt: !5734)
!6058 = !DILocation(line: 230, column: 9, scope: !243, inlinedAt: !5734)
!6059 = !DILocation(line: 228, column: 19, scope: !232, inlinedAt: !5734)
!6060 = !DILocation(line: 229, column: 9, scope: !243, inlinedAt: !5734)
!6061 = !DILocation(line: 378, column: 12, scope: !5732)
!6062 = !DILocation(line: 130, column: 9, scope: !5743, inlinedAt: !5917)
!6063 = !DILocation(line: 418, column: 36, scope: !5730)
!6064 = !DILocation(line: 126, column: 9, scope: !5744, inlinedAt: !5918)
!6065 = !DILocation(line: 421, column: 8, scope: !5730)
!6066 = !DILocation(line: 379, column: 24, scope: !5732)
!6067 = !DILocation(line: 863, column: 18, scope: !244, inlinedAt: !5749)
!6068 = !DILocation(line: 2053, column: 74, scope: !247, inlinedAt: !5748)
!6069 = !DILocation(line: 1651, column: 9, scope: !5750, inlinedAt: !5919)
!6070 = !DILocation(line: 385, column: 41, scope: !5751)
!6071 = !DILocation(line: 387, column: 28, scope: !5752)
!6072 = !DILocation(line: 387, column: 12, scope: !5752)
!6073 = !DILocation(line: 388, column: 24, scope: !5752)
!6074 = !DILocation(line: 863, column: 18, scope: !244, inlinedAt: !5757)
!6075 = !DILocation(line: 2053, column: 74, scope: !247, inlinedAt: !5756)
!6076 = !DILocation(line: 394, column: 30, scope: !5753)
!6077 = !DILocation(line: 394, column: 9, scope: !5753)
!6078 = !DILocation(line: 397, column: 13, scope: !5753)
!6079 = !DILocation(line: 397, column: 33, scope: !5753)
!6080 = !DILocation(line: 396, column: 9, scope: !5753)
!6081 = !DILocation(line: 399, column: 13, scope: !5753)
!6082 = !DILocation(line: 3024, column: 19, scope: !5758, inlinedAt: !5920)
!6083 = !DILocation(line: 3029, column: 37, scope: !5759, inlinedAt: !5920)
!6084 = !DILocation(line: 3029, column: 18, scope: !5759, inlinedAt: !5920)
!6085 = !DILocation(line: 403, column: 22, scope: !5753)
!6086 = !DILocation(line: 405, column: 12, scope: !5760)
!6087 = !DILocation(line: 2906, column: 14, scope: !251, inlinedAt: !5764)
!6088 = !DILocation(line: 406, column: 48, scope: !5760)
!6089 = !DILocation(line: 77, column: 13, scope: !5765, inlinedAt: !5923)
!6090 = !DILocation(line: 77, column: 24, scope: !5765, inlinedAt: !5923)
!6091 = !DILocation(line: 552, column: 14, scope: !5766, inlinedAt: !5925)
!6092 = !DILocation(line: 94, column: 9, scope: !5768, inlinedAt: !5923)
!6093 = !DILocation(line: 95, column: 5, scope: !5765, inlinedAt: !5923)
!6094 = !DILocation(line: 1037, column: 19, scope: !26, inlinedAt: !5773)
!6095 = !DILocation(line: 619, column: 49, scope: !27, inlinedAt: !5775)
!6096 = !DILocation(line: 1040, column: 12, scope: !29, inlinedAt: !5773)
!6097 = !DILocation(line: 1041, column: 22, scope: !29, inlinedAt: !5773)
!6098 = !DILocation(line: 3024, column: 19, scope: !252, inlinedAt: !5778)
!6099 = !DILocation(line: 3029, column: 37, scope: !253, inlinedAt: !5778)
!6100 = !DILocation(line: 3029, column: 18, scope: !253, inlinedAt: !5778)
!6101 = !DILocation(line: 614, column: 9, scope: !254, inlinedAt: !5782)
!6102 = !DILocation(line: 961, column: 18, scope: !259, inlinedAt: !5783)
!6103 = !DILocation(line: 552, column: 14, scope: !260, inlinedAt: !5784)
!6104 = !DILocation(line: 2913, column: 9, scope: !258, inlinedAt: !5764)
!6105 = !DILocation(line: 1718, column: 17, scope: !5785, inlinedAt: !5933)
!6106 = !DILocation(line: 1037, column: 19, scope: !26, inlinedAt: !5791)
!6107 = !DILocation(line: 619, column: 49, scope: !27, inlinedAt: !5793)
!6108 = !DILocation(line: 1040, column: 12, scope: !29, inlinedAt: !5791)
!6109 = !DILocation(line: 1041, column: 22, scope: !29, inlinedAt: !5791)
!6110 = !DILocation(line: 614, column: 9, scope: !30, inlinedAt: !5797)
!6111 = !DILocation(line: 961, column: 18, scope: !34, inlinedAt: !5798)
!6112 = !DILocation(line: 1921, column: 41, scope: !35, inlinedAt: !5799)
!6113 = !DILocation(line: 1046, column: 13, scope: !36, inlinedAt: !5791)
!6114 = !DILocation(line: 405, column: 9, scope: !5760)
!6115 = !DILocation(line: 0, scope: !5728)
!6116 = !DILocation(line: 414, column: 9, scope: !5760)
!6117 = !DILocation(line: 614, column: 9, scope: !30, inlinedAt: !5803)
!6118 = !DILocation(line: 961, column: 18, scope: !34, inlinedAt: !5804)
!6119 = !DILocation(line: 1921, column: 41, scope: !35, inlinedAt: !5805)
!6120 = !DILocation(line: 1046, column: 13, scope: !36, inlinedAt: !5773)
!6121 = !DILocation(line: 406, column: 92, scope: !5760)
!6122 = !DILocation(line: 407, column: 13, scope: !5760)
!6123 = !DILocation(line: 388, column: 20, scope: !5752)
!6124 = !DILocation(line: 388, column: 43, scope: !5752)
!6125 = !DILocation(line: 0, scope: !5936)
!6126 = !DILocation(line: 379, column: 20, scope: !5732)
!6127 = !DILocation(line: 379, column: 43, scope: !5732)
!6128 = !DILocation(line: 810, column: 1, scope: !39, inlinedAt: !5806)
!6129 = !DILocation(line: 810, column: 1, scope: !40, inlinedAt: !5807)
!6130 = !DILocation(line: 810, column: 1, scope: !40, inlinedAt: !5808)
!6131 = !DILocation(line: 481, column: 1, scope: !5706)
!6132 = !DILocation(line: 478, column: 24, scope: !5730)
!6133 = !DILocation(line: 117, column: 28, scope: !5809, inlinedAt: !5939)
!6134 = !DILocation(line: 117, column: 9, scope: !5809, inlinedAt: !5939)
!6135 = !DILocation(line: 478, column: 36, scope: !5730)
!6136 = !DILocation(line: 478, column: 12, scope: !5730)
!6137 = !DILocation(line: 265, column: 14, scope: !261, inlinedAt: !5815)
!6138 = !DILocation(line: 427, column: 12, scope: !5730)
!6139 = !DILocation(line: 428, column: 17, scope: !5730)
!6140 = !DILocation(line: 440, column: 19, scope: !5730)
!6141 = !DILocation(line: 430, column: 28, scope: !5730)
!6142 = !DILocation(line: 614, column: 9, scope: !5816, inlinedAt: !5952)
!6143 = !DILocation(line: 1841, column: 86, scope: !5818, inlinedAt: !5948)
!6144 = !DILocation(line: 30, column: 8, scope: !262, inlinedAt: !5824)
!6145 = !DILocation(line: 3904, column: 24, scope: !263, inlinedAt: !5828)
!6146 = !DILocation(line: 35, column: 5, scope: !266, inlinedAt: !5824)
!6147 = !DILocation(line: 86, column: 11, scope: !267, inlinedAt: !5829)
!6148 = !DILocation(line: 86, column: 5, scope: !267, inlinedAt: !5829)
!6149 = !DILocation(line: 90, column: 1, scope: !267, inlinedAt: !5829)
!6150 = !DILocation(line: 2173, column: 9, scope: !5830, inlinedAt: !5957)
!6151 = !DILocation(line: 430, column: 24, scope: !5730)
!6152 = !DILocation(line: 430, column: 46, scope: !5730)
!6153 = !DILocation(line: 0, scope: !5958)
!6154 = !DILocation(line: 446, column: 17, scope: !5730)
!6155 = !DILocation(line: 441, column: 53, scope: !5730)
!6156 = !DILocation(line: 977, column: 16, scope: !5831, inlinedAt: !5964)
!6157 = !DILocation(line: 448, column: 28, scope: !5730)
!6158 = !DILocation(line: 614, column: 9, scope: !5816, inlinedAt: !5975)
!6159 = !DILocation(line: 1841, column: 86, scope: !5818, inlinedAt: !5971)
!6160 = !DILocation(line: 30, column: 8, scope: !262, inlinedAt: !5835)
!6161 = !DILocation(line: 3904, column: 24, scope: !263, inlinedAt: !5839)
!6162 = !DILocation(line: 35, column: 5, scope: !266, inlinedAt: !5835)
!6163 = !DILocation(line: 86, column: 11, scope: !267, inlinedAt: !5840)
!6164 = !DILocation(line: 86, column: 5, scope: !267, inlinedAt: !5840)
!6165 = !DILocation(line: 90, column: 1, scope: !267, inlinedAt: !5840)
!6166 = !DILocation(line: 2173, column: 9, scope: !5830, inlinedAt: !5981)
!6167 = !DILocation(line: 1841, column: 86, scope: !5841, inlinedAt: !5985)
!6168 = !DILocation(line: 568, column: 12, scope: !5845, inlinedAt: !5988)
!6169 = !DILocation(line: 614, column: 9, scope: !5847, inlinedAt: !5996)
!6170 = !DILocation(line: 89, column: 24, scope: !5852, inlinedAt: !5997)
!6171 = !DILocation(line: 961, column: 18, scope: !5854, inlinedAt: !6003)
!6172 = !DILocation(line: 1717, column: 9, scope: !5860, inlinedAt: !6006)
!6173 = !DILocation(line: 659, column: 28, scope: !5865, inlinedAt: !6007)
!6174 = !DILocation(line: 456, column: 43, scope: !5866)
!6175 = !DILocation(line: 456, column: 42, scope: !5866)
!6176 = !DILocation(line: 457, column: 24, scope: !5866)
!6177 = !DILocation(line: 457, column: 23, scope: !5866)
!6178 = !DILocation(line: 456, column: 17, scope: !5866)
!6179 = !DILocation(line: 461, column: 17, scope: !5842)
!6180 = !DILocation(line: 659, column: 28, scope: !5865, inlinedAt: !6011)
!6181 = !DILocation(line: 464, column: 24, scope: !5871)
!6182 = !DILocation(line: 471, column: 21, scope: !5867)
!6183 = !DILocation(line: 0, scope: !5842)
!6184 = !DILocation(line: 1717, column: 9, scope: !5860, inlinedAt: !6012)
!6185 = !DILocation(line: 180, column: 28, scope: !5870, inlinedAt: !6010)
!6186 = !DILocation(line: 466, column: 29, scope: !5871)
!6187 = !DILocation(line: 863, column: 18, scope: !5872, inlinedAt: !6014)
!6188 = !DILocation(line: 237, column: 57, scope: !5874, inlinedAt: !6013)
!6189 = !DILocation(line: 594, column: 18, scope: !6015, inlinedAt: !6016)
!6190 = !DILocation(line: 465, column: 25, scope: !5871)
!6191 = !DILocation(line: 467, column: 41, scope: !5871)
!6192 = !DILocation(line: 464, column: 21, scope: !5871)
!6193 = !DILocation(line: 472, column: 32, scope: !5867)
!6194 = !DILocation(line: 472, column: 28, scope: !5867)
!6195 = !DILocation(line: 472, column: 50, scope: !5867)
!6196 = !DILocation(line: 448, column: 24, scope: !5730)
!6197 = !DILocation(line: 448, column: 46, scope: !5730)
!6198 = !DILocation(line: 0, scope: !5730)
!6199 = !DILocation(line: 30, column: 8, scope: !262, inlinedAt: !5877)
!6200 = !DILocation(line: 3904, column: 24, scope: !263, inlinedAt: !5881)
!6201 = !DILocation(line: 35, column: 5, scope: !266, inlinedAt: !5877)
!6202 = !DILocation(line: 86, column: 11, scope: !267, inlinedAt: !5882)
!6203 = !DILocation(line: 86, column: 5, scope: !267, inlinedAt: !5882)
!6204 = !DILocation(line: 90, column: 1, scope: !267, inlinedAt: !5882)
!6205 = !DILocation(line: 2173, column: 9, scope: !5830, inlinedAt: !6022)
!6206 = !DILocation(line: 442, column: 28, scope: !5730)
!6207 = !DILocation(line: 3024, column: 19, scope: !268, inlinedAt: !5883)
!6208 = !DILocation(line: 3029, column: 37, scope: !269, inlinedAt: !5883)
!6209 = !DILocation(line: 3029, column: 18, scope: !269, inlinedAt: !5883)
!6210 = !DILocation(line: 148, column: 9, scope: !270, inlinedAt: !5884)
!6211 = !DILocation(line: 268, column: 9, scope: !271, inlinedAt: !5815)
!6212 = !DILocation(line: 269, column: 37, scope: !271, inlinedAt: !5815)
!6213 = !DILocation(line: 619, column: 49, scope: !272, inlinedAt: !5890)
!6214 = !DILocation(line: 1040, column: 12, scope: !275, inlinedAt: !5888)
!6215 = !DILocation(line: 1041, column: 22, scope: !275, inlinedAt: !5888)
!6216 = !DILocation(line: 810, column: 1, scope: !52, inlinedAt: !5893)
!6217 = !DILocation(line: 1035, column: 5, scope: !274, inlinedAt: !5888)
!6218 = !DILocation(line: 810, column: 1, scope: !52, inlinedAt: !5895)
!6219 = !DILocation(line: 264, column: 5, scope: !261, inlinedAt: !5815)
!6220 = !DILocation(line: 614, column: 9, scope: !277, inlinedAt: !5899)
!6221 = !DILocation(line: 961, column: 18, scope: !281, inlinedAt: !5900)
!6222 = !DILocation(line: 1045, column: 29, scope: !282, inlinedAt: !5888)
!6223 = !DILocation(line: 1046, column: 13, scope: !282, inlinedAt: !5888)
!6224 = !DILocation(line: 269, column: 43, scope: !271, inlinedAt: !5815)
!6225 = !DILocation(line: 478, column: 37, scope: !5730)
!6226 = !DILocation(line: 480, column: 5, scope: !5730)
!6227 = !DILocation(line: 481, column: 1, scope: !5714)
!6228 = !DILocation(line: 481, column: 2, scope: !5706)
!6229 = !DILocation(line: 442, column: 24, scope: !5730)
!6230 = !DILocation(line: 442, column: 46, scope: !5730)
!6231 = !DILocation(line: 328, column: 1, scope: !5706)
!6232 = distinct !DISubprogram(name: "decode_plain_generic<polars_parquet::arrow::read::deserialize::binview::optional::decode::{closure_env#0}>", linkageName: "_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize7binview20decode_plain_genericNCNvNtB2_8optional6decode0EBa_", scope: !1469, file: !1464, line: 328, type: !1310, scopeLine: 328, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1309)
!6233 = distinct !DISubprogram(name: "len<polars_arrow::array::binview::view::View, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewE3lenCsfISxE4fmY1Y_14polars_parquet", scope: !1342, file: !1339, line: 3023, type: !1310, scopeLine: 3023, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1309)
!6234 = distinct !DISubprogram(name: "len<[u8]>", linkageName: "_RNvMs2_NtNtNtCs8774dFTUdNv_12polars_arrow5array7binview7mutableINtB5_22MutableBinaryViewArrayShE3lenCsfISxE4fmY1Y_14polars_parquet", scope: !1313, file: !1311, line: 157, type: !1310, scopeLine: 157, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1309)
!6235 = distinct !DILexicalBlock(scope: !6233, file: !1339, line: 3024, column: 9)
!6236 = distinct !DISubprogram(name: "as_slice<polars_buffer::buffer::Buffer<u8>, alloc::alloc::Global>", linkageName: "_RNvMs_NtCsgZ49sUHp3tW_5alloc3vecINtB4_3VecINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEE8as_sliceCsfISxE4fmY1Y_14polars_parquet", scope: !1342, file: !1339, line: 1824, type: !1310, scopeLine: 1824, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1309)
!6237 = distinct !DILexicalBlock(scope: !6232, file: !1464, line: 357, column: 5)
!6238 = distinct !DISubprogram(name: "completed_buffers<[u8]>", linkageName: "_RNvMs2_NtNtNtCs8774dFTUdNv_12polars_arrow5array7binview7mutableINtB5_22MutableBinaryViewArrayShE17completed_buffersCsfISxE4fmY1Y_14polars_parquet", scope: !1313, file: !1311, line: 143, type: !1310, scopeLine: 143, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1309)
!6239 = distinct !DISubprogram(name: "deref<polars_buffer::buffer::Buffer<u8>, alloc::alloc::Global>", linkageName: "_RNvXs7_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEENtNtNtCscgRAwXFJnXP_4core3ops5deref5Deref5derefCsfISxE4fmY1Y_14polars_parquet", scope: !1470, file: !1339, line: 3755, type: !1310, scopeLine: 3755, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1309)
!6240 = distinct !DILexicalBlock(scope: !6237, file: !1464, line: 359, column: 5)
!6241 = distinct !DISubprogram(name: "with_capacity_in<alloc::alloc::Global>", linkageName: "_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsfISxE4fmY1Y_14polars_parquet", scope: !1345, file: !1343, line: 433, type: !1310, scopeLine: 433, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1309)
!6242 = distinct !DISubprogram(name: "with_capacity<u8>", linkageName: "_RNvMNtCsgZ49sUHp3tW_5alloc3vecINtB2_3VechE13with_capacityCsfISxE4fmY1Y_14polars_parquet", scope: !1342, file: !1339, line: 523, type: !1310, scopeLine: 523, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1309)
!6243 = distinct !DISubprogram(name: "with_capacity_in<u8, alloc::alloc::Global>", linkageName: "_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE16with_capacity_inCsfISxE4fmY1Y_14polars_parquet", scope: !1342, file: !1339, line: 976, type: !1310, scopeLine: 976, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1309)
!6244 = distinct !DISubprogram(name: "with_capacity_in<u8, alloc::alloc::Global>", linkageName: "_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechE16with_capacity_inCsfISxE4fmY1Y_14polars_parquet", scope: !1346, file: !1343, line: 175, type: !1310, scopeLine: 175, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1309)
!6245 = distinct !DILexicalBlock(scope: !6241, file: !1343, line: 442, column: 13)
!6246 = distinct !DISubprogram(name: "needs_to_grow<alloc::alloc::Global>", linkageName: "_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner13needs_to_growCsfISxE4fmY1Y_14polars_parquet", scope: !1345, file: !1343, line: 766, type: !1310, scopeLine: 766, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1309)
!6247 = distinct !DILexicalBlock(scope: !6241, file: !1343, line: 435, column: 13)
!6248 = distinct !DISubprogram(name: "assert_unchecked", linkageName: "_RNvNtCscgRAwXFJnXP_4core4hint16assert_unchecked", scope: !1472, file: !1471, line: 202, type: !1310, scopeLine: 202, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1309)
!6249 = distinct !{!6249, i1 true, !"_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next"}
!6250 = distinct !{!6250, !6249, !"_RNvXs_NtNtNtCs8774dFTUdNv_12polars_arrow6bitmap5utils8iteratorNtB4_10BitmapIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next: argument 0"}
!6251 = distinct !DILexicalBlock(scope: !6240, file: !1464, line: 360, column: 5)
!6252 = distinct !DILexicalBlock(scope: !6251, file: !1464, line: 361, column: 5)
!6253 = distinct !DILexicalBlock(scope: !6252, file: !1464, line: 363, column: 5)
!6254 = distinct !DILexicalBlock(scope: !6253, file: !1464, line: 366, column: 5)
!6255 = distinct !DILexicalBlock(scope: !6254, file: !1464, line: 367, column: 5)
!6256 = distinct !DILexicalBlock(scope: !6255, file: !1464, line: 369, column: 5)
!6257 = distinct !DISubprogram(name: "{closure#0}", linkageName: "_RNCNvNtNtNtNtNtCsfISxE4fmY1Y_14polars_parquet5arrow4read11deserialize7binview8optional6decode0Bd_", scope: !6453, file: !6451, line: 30, type: !1321, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1309)
!6258 = distinct !DILexicalBlock(scope: !6256, file: !1464, line: 370, column: 54)
!6259 = distinct !DILocation(line: 370, column: 47, scope: !6258)
!6260 = distinct !DILocation(line: 30, column: 32, scope: !6257, inlinedAt: !6259)
!6261 = distinct !DILocation(line: 218, column: 43, scope: !232, inlinedAt: !6260)
!6262 = distinct !DILocation(line: 222, column: 59, scope: !232, inlinedAt: !6260)
!6263 = distinct !DILocation(line: 819, column: 9, scope: !235, inlinedAt: !6262)
!6264 = distinct !DILocation(line: 259, column: 34, scope: !234, inlinedAt: !6263)
!6265 = distinct !DILocation(line: 224, column: 41, scope: !239, inlinedAt: !6260)
!6266 = distinct !DILocation(line: 646, column: 26, scope: !1484, inlinedAt: !6265)
!6267 = distinct !DILocation(line: 557, column: 44, scope: !237, inlinedAt: !6266)
!6268 = distinct !DILocation(line: 411, column: 13, scope: !1485, inlinedAt: !6267)
!6269 = distinct !DISubprogram(name: "total_bytes_len<[u8]>", linkageName: "_RNvMs2_NtNtNtCs8774dFTUdNv_12polars_arrow5array7binview7mutableINtB5_22MutableBinaryViewArrayShE15total_bytes_lenCsfISxE4fmY1Y_14polars_parquet", scope: !1313, file: !1311, line: 129, type: !1310, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1309)
!6270 = distinct !DISubprogram(name: "set_total_bytes_len<[u8]>", linkageName: "_RNvMs2_NtNtNtCs8774dFTUdNv_12polars_arrow5array7binview7mutableINtB5_22MutableBinaryViewArrayShE19set_total_bytes_lenCsfISxE4fmY1Y_14polars_parquet", scope: !1313, file: !1311, line: 119, type: !1310, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1309)
!6271 = distinct !{!6271, i1 true, !"_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewE8push_mutCsfISxE4fmY1Y_14polars_parquet"}
!6272 = distinct !{!6272, !6271, !"_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewE8push_mutCsfISxE4fmY1Y_14polars_parquet: argument 0"}
!6273 = distinct !DISubprogram(name: "push<polars_arrow::array::binview::view::View, alloc::alloc::Global>", linkageName: "_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtNtCs8774dFTUdNv_12polars_arrow5array7binview4view4ViewE4pushCsfISxE4fmY1Y_14polars_parquet", scope: !1342, file: !1339, line: 1003, type: !1310, scopeLine: 1003, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1309)
!6274 = distinct !DILocation(line: 1004, column: 22, scope: !6273, inlinedAt: !6457)
!6275 = distinct !DILocation(line: 1040, column: 28, scope: !29, inlinedAt: !6274)
!6276 = distinct !DILocation(line: 309, column: 20, scope: !28, inlinedAt: !6275)
!6277 = distinct !DILocation(line: 1044, column: 28, scope: !29, inlinedAt: !6274)
!6278 = distinct !DILocation(line: 2026, column: 18, scope: !33, inlinedAt: !6277)
!6279 = distinct !DILocation(line: 296, column: 20, scope: !32, inlinedAt: !6278)
!6280 = distinct !DILocation(line: 609, column: 14, scope: !31, inlinedAt: !6279)
!6281 = distinct !DILocation(line: 1044, column: 41, scope: !29, inlinedAt: !6274)
!6282 = distinct !DILocation(line: 1045, column: 13, scope: !36, inlinedAt: !6274)
!6283 = distinct !DILexicalBlock(scope: !6258, file: !1464, line: 382, column: 9)
!6284 = distinct !DILocation(line: 383, column: 37, scope: !6283)
!6285 = distinct !DILocation(line: 1953, column: 20, scope: !249, inlinedAt: !6284)
!6286 = distinct !DILocation(line: 2157, column: 32, scope: !248, inlinedAt: !6285)
end_hunk_4
begin_hunk_5_@llvm.memmove.p0.p0.i64
!6427 = distinct !DILocation(line: 309, column: 20, scope: !273, inlinedAt: !6426)
!6428 = distinct !{!6428, !6422, !"_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEE8push_mutCsfISxE4fmY1Y_14polars_parquet: argument 1"}
!6429 = distinct !DILocation(line: 1050, column: 5, scope: !274, inlinedAt: !6425)
!6430 = distinct !DILocation(line: 810, column: 1, scope: !60, inlinedAt: !6429)
!6431 = distinct !DILocation(line: 271, column: 5, scope: !261, inlinedAt: !6352)
!6432 = distinct !DILocation(line: 810, column: 1, scope: !60, inlinedAt: !6431)
!6433 = distinct !DILocation(line: 1044, column: 28, scope: !275, inlinedAt: !6425)
!6434 = distinct !DILocation(line: 2026, column: 18, scope: !280, inlinedAt: !6433)
!6435 = distinct !DILocation(line: 296, column: 20, scope: !279, inlinedAt: !6434)
!6436 = distinct !DILocation(line: 609, column: 14, scope: !278, inlinedAt: !6435)
!6437 = distinct !DILocation(line: 1044, column: 41, scope: !275, inlinedAt: !6425)
!6438 = !{i64 -773945594508064150}
!6439 = !DILocation(line: 357, column: 38, scope: !6232)
!6440 = !DILocation(line: 158, column: 20, scope: !6234, inlinedAt: !6439)
!6441 = !DILocation(line: 359, column: 29, scope: !6237)
!6442 = !DILocation(line: 144, column: 9, scope: !6238, inlinedAt: !6441)
!6443 = !DILocation(line: 3756, column: 14, scope: !6239, inlinedAt: !6442)
!6444 = !DILocation(line: 360, column: 22, scope: !6240)
!6445 = !DILocation(line: 524, column: 9, scope: !6242, inlinedAt: !6444)
!6446 = !DILocation(line: 977, column: 20, scope: !6243, inlinedAt: !6445)
!6447 = !DILocation(line: 177, column: 20, scope: !6244, inlinedAt: !6446)
!6448 = !DILocation(line: 438, column: 50, scope: !6247, inlinedAt: !6447)
!6449 = !DILocation(line: 438, column: 21, scope: !6247, inlinedAt: !6447)
!6450 = !{!6250}
!6451 = !DIFile(filename: "crates/polars-parquet/src/arrow/read/deserialize/binview/optional.rs", directory: "/opt-bench/work/pola-rs/polars", checksumkind: CSK_MD5, checksum: "e37bd77bcf4c255c81825781255464af")
!6452 = !DINamespace(name: "optional", scope: !1469)
!6453 = !DINamespace(name: "decode", scope: !6452)
!6454 = !DILocation(line: 418, column: 43, scope: !6256)
!6455 = !DILocation(line: 418, column: 16, scope: !6256)
!6456 = !{!6272}
!6457 = !DILocation(line: 373, column: 47, scope: !6258)
!6458 = !DILexicalBlockFile(scope: !6256, file: !1492, discriminator: 0)
!6459 = !DILocation(line: 384, column: 59, scope: !6283)
!6460 = !DILocation(line: 403, column: 29, scope: !6291)
!6461 = !DILocation(line: 409, column: 20, scope: !6298)
!6462 = !DILocation(line: 3527, column: 14, scope: !6301, inlinedAt: !6461)
!6463 = !DILocation(line: 406, column: 57, scope: !6298)
!6464 = !DILexicalBlockFile(scope: !6307, file: !1489, discriminator: 2)
!6465 = !DILocation(line: 92, column: 13, scope: !6464, inlinedAt: !6463)
!6466 = !{!6309}
!6467 = !DILocation(line: 406, column: 43, scope: !6298)
!6468 = !{!6314}
!6469 = !DILexicalBlockFile(scope: !6324, file: !1358, discriminator: 2)
!6470 = !DILocation(line: 411, column: 32, scope: !6298)
!6471 = !DILocation(line: 119, column: 62, scope: !6323, inlinedAt: !6470)
!6472 = !DILocation(line: 819, column: 9, scope: !6469, inlinedAt: !6471)
!6473 = !DILocation(line: 259, column: 34, scope: !6325, inlinedAt: !6472)
!6474 = !{!6327}
!6475 = !DILocation(line: 411, column: 18, scope: !6298)
!6476 = !DILexicalBlockFile(scope: !6258, file: !1492, discriminator: 0)
!6477 = !DILocation(line: 478, column: 31, scope: !6256)
!6478 = !DILocation(line: 778, column: 9, scope: !6347, inlinedAt: !6477)
!6479 = !DILocation(line: 400, column: 9, scope: !6348, inlinedAt: !6478)
!6480 = !{!6350}
!6481 = !{!6351}
!6482 = !DILexicalBlockFile(scope: !6358, file: !1343, discriminator: 2)
!6483 = !DILexicalBlockFile(scope: !6357, file: !1343, discriminator: 2)
!6484 = !DILexicalBlockFile(scope: !6356, file: !1339, discriminator: 2)
!6485 = !DILexicalBlockFile(scope: !6355, file: !1339, discriminator: 2)
!6486 = !DILexicalBlockFile(scope: !6354, file: !1339, discriminator: 2)
!6487 = !DILocation(line: 428, column: 84, scope: !6256)
!6488 = !DILocation(line: 3756, column: 14, scope: !6486, inlinedAt: !6487)
!6489 = !DILocation(line: 1841, column: 76, scope: !6485, inlinedAt: !6488)
!6490 = !DILocation(line: 1942, column: 18, scope: !6484, inlinedAt: !6489)
!6491 = !DILocation(line: 296, column: 20, scope: !6483, inlinedAt: !6490)
!6492 = !DILocation(line: 609, column: 14, scope: !6482, inlinedAt: !6491)
!6493 = !DILocation(line: 428, column: 57, scope: !6256)
!6494 = !DILocation(line: 38, column: 9, scope: !6360, inlinedAt: !6493)
!6495 = !{!6363}
!6496 = !DILexicalBlockFile(scope: !6360, file: !1504, discriminator: 2)
!6497 = !DILocation(line: 38, column: 9, scope: !6496, inlinedAt: !6493)
!6498 = !DILexicalBlockFile(scope: !6371, file: !1480, discriminator: 2)
!6499 = !DILexicalBlockFile(scope: !6369, file: !1480, discriminator: 2)
!6500 = !DILocation(line: 441, column: 50, scope: !6256)
!6501 = !DILocation(line: 19, column: 15, scope: !6499, inlinedAt: !6500)
!6502 = !DILocation(line: 529, column: 23, scope: !6370, inlinedAt: !6501)
!6503 = !DILocation(line: 437, column: 32, scope: !6498, inlinedAt: !6502)
!6504 = !DILexicalBlockFile(scope: !6358, file: !1343, discriminator: 4)
!6505 = !DILexicalBlockFile(scope: !6357, file: !1343, discriminator: 4)
!6506 = !DILexicalBlockFile(scope: !6356, file: !1339, discriminator: 4)
!6507 = !DILexicalBlockFile(scope: !6355, file: !1339, discriminator: 4)
!6508 = !DILexicalBlockFile(scope: !6354, file: !1339, discriminator: 4)
!6509 = !DILocation(line: 446, column: 84, scope: !6256)
!6510 = !DILocation(line: 3756, column: 14, scope: !6508, inlinedAt: !6509)
!6511 = !DILocation(line: 1841, column: 76, scope: !6507, inlinedAt: !6510)
!6512 = !DILocation(line: 1942, column: 18, scope: !6506, inlinedAt: !6511)
!6513 = !DILocation(line: 296, column: 20, scope: !6505, inlinedAt: !6512)
!6514 = !DILocation(line: 609, column: 14, scope: !6504, inlinedAt: !6513)
!6515 = !DILexicalBlockFile(scope: !6360, file: !1504, discriminator: 12)
!6516 = !DILocation(line: 446, column: 57, scope: !6256)
!6517 = !DILocation(line: 38, column: 9, scope: !6515, inlinedAt: !6516)
!6518 = !{!6374}
!6519 = !DILexicalBlockFile(scope: !6360, file: !1504, discriminator: 14)
!6520 = !DILocation(line: 38, column: 9, scope: !6519, inlinedAt: !6516)
!6521 = !DILexicalBlockFile(scope: !6381, file: !1339, discriminator: 6)
!6522 = !DILocation(line: 455, column: 33, scope: !6379)
!6523 = !DILocation(line: 139, column: 9, scope: !6380, inlinedAt: !6522)
!6524 = !DILocation(line: 3756, column: 14, scope: !6521, inlinedAt: !6523)
!6525 = !DILexicalBlockFile(scope: !6383, file: !1480, discriminator: 4)
!6526 = !DILocation(line: 455, column: 40, scope: !6379)
!6527 = !DILocation(line: 19, column: 15, scope: !6525, inlinedAt: !6526)
!6528 = !DILexicalBlockFile(scope: !6387, file: !1343, discriminator: 6)
!6529 = !DILexicalBlockFile(scope: !6386, file: !1343, discriminator: 6)
!6530 = !DILexicalBlockFile(scope: !6385, file: !1339, discriminator: 6)
!6531 = !DILexicalBlockFile(scope: !6378, file: !1339, discriminator: 6)
!6532 = !DILocation(line: 1841, column: 76, scope: !6531, inlinedAt: !6524)
!6533 = !DILocation(line: 1942, column: 18, scope: !6530, inlinedAt: !6532)
!6534 = !DILocation(line: 296, column: 20, scope: !6529, inlinedAt: !6533)
!6535 = !DILocation(line: 609, column: 14, scope: !6528, inlinedAt: !6534)
!6536 = !DILocation(line: 574, column: 15, scope: !6390, inlinedAt: !6527)
!6537 = !DILexicalBlockFile(scope: !6396, file: !1510, discriminator: 2)
!6538 = !DILexicalBlockFile(scope: !6393, file: !1353, discriminator: 2)
!6539 = !DILocation(line: 455, column: 25, scope: !6379)
!6540 = !DILocation(line: 26, column: 14, scope: !6392, inlinedAt: !6539)
!6541 = !DILocation(line: 1041, column: 9, scope: !6538, inlinedAt: !6540)
!6542 = !DILocation(line: 102, column: 78, scope: !6537, inlinedAt: !6541)
!6543 = !DILexicalBlockFile(scope: !6398, file: !1464, discriminator: 2)
!6544 = !DILocation(line: 455, column: 25, scope: !6543)
!6545 = !DILocation(line: 180, column: 28, scope: !6401, inlinedAt: !6544)
!6546 = !DILocation(line: 185, column: 40, scope: !6401, inlinedAt: !6544)
!6547 = !DILexicalBlockFile(scope: !6407, file: !1515, discriminator: 2)
!6548 = !DILexicalBlockFile(scope: !6405, file: !1464, discriminator: 2)
!6549 = !DILocation(line: 463, column: 29, scope: !6548)
!6550 = !DILocation(line: 185, column: 40, scope: !6547, inlinedAt: !6549)
!6551 = !DILocation(line: 180, column: 28, scope: !6547, inlinedAt: !6549)
!6552 = !DILocation(line: 466, column: 63, scope: !6408)
!6553 = !DILocation(line: 237, column: 49, scope: !6411, inlinedAt: !6552)
!6554 = !DILexicalBlockFile(scope: !6413, file: !1396, discriminator: 0)
!6555 = !DILocation(line: 467, column: 34, scope: !6408)
!6556 = !DILexicalBlockFile(scope: !6360, file: !1504, discriminator: 6)
!6557 = !DILocation(line: 441, column: 16, scope: !6256)
!6558 = !DILocation(line: 38, column: 9, scope: !6556, inlinedAt: !6557)
!6559 = !{!6416}
!6560 = !DILexicalBlockFile(scope: !6360, file: !1504, discriminator: 8)
!6561 = !DILocation(line: 38, column: 9, scope: !6560, inlinedAt: !6557)
!6562 = !{!6350, !6351}
!6563 = !{!6423, !6350}
!6564 = !{!6428, !6351}
!6565 = !DILocation(line: 354, column: 12, scope: !6232)
!6566 = !DILocation(line: 355, column: 35, scope: !6232)
!6567 = !DILocation(line: 3024, column: 19, scope: !6233, inlinedAt: !6440)
!6568 = !DILocation(line: 3029, column: 37, scope: !6235, inlinedAt: !6440)
!6569 = !DILocation(line: 3029, column: 18, scope: !6235, inlinedAt: !6440)
!6570 = !DILocation(line: 1841, column: 86, scope: !6236, inlinedAt: !6443)
!6571 = !DILocation(line: 359, column: 22, scope: !6237)
!6572 = !DILocation(line: 360, column: 9, scope: !6240)
!6573 = !DILocation(line: 360, column: 41, scope: !6240)
!6574 = !DILocation(line: 434, column: 15, scope: !6241, inlinedAt: !6447)
!6575 = !DILocation(line: 434, column: 9, scope: !6241, inlinedAt: !6447)
!6576 = !DILocation(line: 0, scope: !6241, inlinedAt: !6447)
!6577 = !DILocation(line: 0, scope: !6232)
!6578 = !DILocation(line: 442, column: 17, scope: !6241, inlinedAt: !6447)
!6579 = !DILocation(line: 442, column: 25, scope: !6245, inlinedAt: !6447)
!6580 = !DILocation(line: 435, column: 16, scope: !6241, inlinedAt: !6447)
!6581 = !DILocation(line: 767, column: 9, scope: !6246, inlinedAt: !6448)
!6582 = !DILocation(line: 210, column: 9, scope: !6248, inlinedAt: !6449)
!6583 = !DILocation(line: 443, column: 9, scope: !6241, inlinedAt: !6447)
!6584 = !DILocation(line: 977, column: 9, scope: !6243, inlinedAt: !6445)
!6585 = !DILocation(line: 370, column: 5, scope: !6256)
!6586 = !DILocation(line: 213, column: 12, scope: !232, inlinedAt: !6260)
!6587 = !DILocation(line: 30, column: 32, scope: !6257, inlinedAt: !6259)
!6588 = !DILocation(line: 214, column: 16, scope: !232, inlinedAt: !6260)
!6589 = !DILocation(line: 1077, column: 12, scope: !222, inlinedAt: !6261)
!6590 = !DILocation(line: 219, column: 13, scope: !232, inlinedAt: !6260)
!6591 = !DILocation(line: 1718, column: 17, scope: !233, inlinedAt: !6264)
!6592 = !DILocation(line: 410, column: 27, scope: !236, inlinedAt: !6267)
!6593 = !DILocation(line: 89, column: 24, scope: !241, inlinedAt: !6268)
!6594 = !DILocation(line: 224, column: 17, scope: !239, inlinedAt: !6260)
!6595 = !DILocation(line: 213, column: 9, scope: !232, inlinedAt: !6260)
!6596 = !DILocation(line: 230, column: 9, scope: !243, inlinedAt: !6260)
!6597 = !DILocation(line: 228, column: 19, scope: !232, inlinedAt: !6260)
!6598 = !DILocation(line: 229, column: 9, scope: !243, inlinedAt: !6260)
!6599 = !DILocation(line: 370, column: 15, scope: !6258)
!6600 = !DILocation(line: 130, column: 9, scope: !6269, inlinedAt: !6454)
!6601 = !DILocation(line: 418, column: 36, scope: !6256)
!6602 = !DILocation(line: 126, column: 9, scope: !6270, inlinedAt: !6455)
!6603 = !DILocation(line: 421, column: 8, scope: !6256)
!6604 = !DILocation(line: 378, column: 12, scope: !6258)
!6605 = !DILocation(line: 1037, column: 19, scope: !26, inlinedAt: !6274)
!6606 = !DILocation(line: 619, column: 49, scope: !27, inlinedAt: !6276)
!6607 = !DILocation(line: 1040, column: 12, scope: !29, inlinedAt: !6274)
!6608 = !DILocation(line: 1041, column: 22, scope: !29, inlinedAt: !6274)
!6609 = !DILocation(line: 614, column: 9, scope: !30, inlinedAt: !6280)
!6610 = !DILocation(line: 961, column: 18, scope: !34, inlinedAt: !6281)
!6611 = !DILocation(line: 1046, column: 13, scope: !36, inlinedAt: !6274)
!6612 = !DILocation(line: 1921, column: 41, scope: !35, inlinedAt: !6282)
!6613 = !DILocation(line: 0, scope: !6458)
!6614 = !DILocation(line: 379, column: 24, scope: !6258)
!6615 = !DILocation(line: 863, column: 18, scope: !244, inlinedAt: !6287)
!6616 = !DILocation(line: 2053, column: 74, scope: !247, inlinedAt: !6286)
!6617 = !DILocation(line: 1651, column: 9, scope: !6288, inlinedAt: !6459)
!6618 = !DILocation(line: 385, column: 41, scope: !6289)
!6619 = !DILocation(line: 387, column: 28, scope: !6290)
!6620 = !DILocation(line: 387, column: 12, scope: !6290)
!6621 = !DILocation(line: 388, column: 24, scope: !6290)
!6622 = !DILocation(line: 863, column: 18, scope: !244, inlinedAt: !6295)
!6623 = !DILocation(line: 2053, column: 74, scope: !247, inlinedAt: !6294)
!6624 = !DILocation(line: 394, column: 30, scope: !6291)
!6625 = !DILocation(line: 394, column: 9, scope: !6291)
!6626 = !DILocation(line: 397, column: 13, scope: !6291)
!6627 = !DILocation(line: 397, column: 33, scope: !6291)
!6628 = !DILocation(line: 396, column: 9, scope: !6291)
!6629 = !DILocation(line: 3024, column: 19, scope: !6296, inlinedAt: !6460)
!6630 = !DILocation(line: 3029, column: 37, scope: !6297, inlinedAt: !6460)
!6631 = !DILocation(line: 3029, column: 18, scope: !6297, inlinedAt: !6460)
!6632 = !DILocation(line: 403, column: 22, scope: !6291)
!6633 = !DILocation(line: 405, column: 12, scope: !6298)
!6634 = !DILocation(line: 2906, column: 14, scope: !251, inlinedAt: !6302)
!6635 = !DILocation(line: 406, column: 48, scope: !6298)
!6636 = !DILocation(line: 77, column: 13, scope: !6303, inlinedAt: !6463)
!6637 = !DILocation(line: 77, column: 24, scope: !6303, inlinedAt: !6463)
!6638 = !DILocation(line: 552, column: 14, scope: !6304, inlinedAt: !6465)
!6639 = !DILocation(line: 94, column: 9, scope: !6306, inlinedAt: !6463)
!6640 = !DILocation(line: 95, column: 5, scope: !6303, inlinedAt: !6463)
!6641 = !DILocation(line: 1037, column: 19, scope: !26, inlinedAt: !6310)
!6642 = !DILocation(line: 619, column: 49, scope: !27, inlinedAt: !6312)
!6643 = !DILocation(line: 1040, column: 12, scope: !29, inlinedAt: !6310)
!6644 = !DILocation(line: 1041, column: 22, scope: !29, inlinedAt: !6310)
!6645 = !DILocation(line: 3024, column: 19, scope: !252, inlinedAt: !6315)
!6646 = !DILocation(line: 3029, column: 37, scope: !253, inlinedAt: !6315)
!6647 = !DILocation(line: 3029, column: 18, scope: !253, inlinedAt: !6315)
!6648 = !DILocation(line: 614, column: 9, scope: !254, inlinedAt: !6319)
!6649 = !DILocation(line: 961, column: 18, scope: !259, inlinedAt: !6320)
!6650 = !DILocation(line: 552, column: 14, scope: !260, inlinedAt: !6321)
!6651 = !DILocation(line: 2913, column: 9, scope: !258, inlinedAt: !6302)
!6652 = !DILocation(line: 1718, column: 17, scope: !6322, inlinedAt: !6473)
!6653 = !DILocation(line: 1037, column: 19, scope: !26, inlinedAt: !6328)
!6654 = !DILocation(line: 619, column: 49, scope: !27, inlinedAt: !6330)
!6655 = !DILocation(line: 1040, column: 12, scope: !29, inlinedAt: !6328)
!6656 = !DILocation(line: 1041, column: 22, scope: !29, inlinedAt: !6328)
!6657 = !DILocation(line: 614, column: 9, scope: !30, inlinedAt: !6334)
!6658 = !DILocation(line: 961, column: 18, scope: !34, inlinedAt: !6335)
!6659 = !DILocation(line: 1921, column: 41, scope: !35, inlinedAt: !6336)
!6660 = !DILocation(line: 1046, column: 13, scope: !36, inlinedAt: !6328)
!6661 = !DILocation(line: 405, column: 9, scope: !6298)
!6662 = !DILocation(line: 0, scope: !6254)
!6663 = !DILocation(line: 414, column: 9, scope: !6298)
!6664 = !DILocation(line: 614, column: 9, scope: !30, inlinedAt: !6340)
!6665 = !DILocation(line: 961, column: 18, scope: !34, inlinedAt: !6341)
!6666 = !DILocation(line: 1921, column: 41, scope: !35, inlinedAt: !6342)
!6667 = !DILocation(line: 1046, column: 13, scope: !36, inlinedAt: !6310)
!6668 = !DILocation(line: 406, column: 92, scope: !6298)
!6669 = !DILocation(line: 407, column: 13, scope: !6298)
!6670 = !DILocation(line: 388, column: 20, scope: !6290)
!6671 = !DILocation(line: 388, column: 43, scope: !6290)
!6672 = !DILocation(line: 0, scope: !6476)
!6673 = !DILocation(line: 379, column: 20, scope: !6258)
!6674 = !DILocation(line: 379, column: 43, scope: !6258)
!6675 = !DILocation(line: 810, column: 1, scope: !39, inlinedAt: !6343)
!6676 = !DILocation(line: 810, column: 1, scope: !40, inlinedAt: !6344)
!6677 = !DILocation(line: 810, column: 1, scope: !40, inlinedAt: !6345)
!6678 = !DILocation(line: 481, column: 1, scope: !6232)
!6679 = !DILocation(line: 478, column: 24, scope: !6256)
!6680 = !DILocation(line: 117, column: 28, scope: !6346, inlinedAt: !6479)
!6681 = !DILocation(line: 117, column: 9, scope: !6346, inlinedAt: !6479)
!6682 = !DILocation(line: 478, column: 36, scope: !6256)
!6683 = !DILocation(line: 478, column: 12, scope: !6256)
!6684 = !DILocation(line: 265, column: 14, scope: !261, inlinedAt: !6352)
!6685 = !DILocation(line: 427, column: 12, scope: !6256)
!6686 = !DILocation(line: 428, column: 17, scope: !6256)
!6687 = !DILocation(line: 440, column: 19, scope: !6256)
!6688 = !DILocation(line: 430, column: 28, scope: !6256)
!6689 = !DILocation(line: 614, column: 9, scope: !6353, inlinedAt: !6492)
!6690 = !DILocation(line: 1841, column: 86, scope: !6355, inlinedAt: !6488)
!6691 = !DILocation(line: 30, column: 8, scope: !262, inlinedAt: !6361)
!6692 = !DILocation(line: 3904, column: 24, scope: !263, inlinedAt: !6365)
!6693 = !DILocation(line: 35, column: 5, scope: !266, inlinedAt: !6361)
!6694 = !DILocation(line: 86, column: 11, scope: !267, inlinedAt: !6366)
!6695 = !DILocation(line: 86, column: 5, scope: !267, inlinedAt: !6366)
!6696 = !DILocation(line: 90, column: 1, scope: !267, inlinedAt: !6366)
!6697 = !DILocation(line: 2173, column: 9, scope: !6367, inlinedAt: !6497)
!6698 = !DILocation(line: 430, column: 24, scope: !6256)
!6699 = !DILocation(line: 430, column: 46, scope: !6256)
!6700 = !DILocation(line: 446, column: 17, scope: !6256)
!6701 = !DILocation(line: 441, column: 53, scope: !6256)
!6702 = !DILocation(line: 977, column: 16, scope: !6368, inlinedAt: !6503)
!6703 = !DILocation(line: 448, column: 28, scope: !6256)
!6704 = !DILocation(line: 614, column: 9, scope: !6353, inlinedAt: !6514)
!6705 = !DILocation(line: 1841, column: 86, scope: !6355, inlinedAt: !6510)
!6706 = !DILocation(line: 30, column: 8, scope: !262, inlinedAt: !6372)
!6707 = !DILocation(line: 3904, column: 24, scope: !263, inlinedAt: !6376)
!6708 = !DILocation(line: 35, column: 5, scope: !266, inlinedAt: !6372)
!6709 = !DILocation(line: 86, column: 11, scope: !267, inlinedAt: !6377)
!6710 = !DILocation(line: 86, column: 5, scope: !267, inlinedAt: !6377)
!6711 = !DILocation(line: 90, column: 1, scope: !267, inlinedAt: !6377)
!6712 = !DILocation(line: 2173, column: 9, scope: !6367, inlinedAt: !6520)
!6713 = !DILocation(line: 1841, column: 86, scope: !6378, inlinedAt: !6524)
!6714 = !DILocation(line: 568, column: 12, scope: !6382, inlinedAt: !6527)
!6715 = !DILocation(line: 614, column: 9, scope: !6384, inlinedAt: !6535)
!6716 = !DILocation(line: 89, column: 24, scope: !6389, inlinedAt: !6536)
!6717 = !DILocation(line: 961, column: 18, scope: !6391, inlinedAt: !6542)
!6718 = !DILocation(line: 1717, column: 9, scope: !6397, inlinedAt: !6545)
!6719 = !DILocation(line: 659, column: 28, scope: !6402, inlinedAt: !6546)
!6720 = !DILocation(line: 456, column: 43, scope: !6403)
!6721 = !DILocation(line: 456, column: 42, scope: !6403)
!6722 = !DILocation(line: 457, column: 24, scope: !6403)
!6723 = !DILocation(line: 457, column: 23, scope: !6403)
!6724 = !DILocation(line: 456, column: 17, scope: !6403)
!6725 = !DILocation(line: 461, column: 17, scope: !6379)
!6726 = !DILocation(line: 659, column: 28, scope: !6402, inlinedAt: !6550)
!6727 = !DILocation(line: 464, column: 24, scope: !6408)
!6728 = !DILocation(line: 471, column: 21, scope: !6404)
!6729 = !DILocation(line: 0, scope: !6379)
!6730 = !DILocation(line: 1717, column: 9, scope: !6397, inlinedAt: !6551)
!6731 = !DILocation(line: 180, column: 28, scope: !6407, inlinedAt: !6549)
!6732 = !DILocation(line: 466, column: 29, scope: !6408)
!6733 = !DILocation(line: 863, column: 18, scope: !6409, inlinedAt: !6553)
!6734 = !DILocation(line: 237, column: 57, scope: !6411, inlinedAt: !6552)
!6735 = !DILocation(line: 594, column: 18, scope: !6554, inlinedAt: !6555)
!6736 = !DILocation(line: 465, column: 25, scope: !6408)
!6737 = !DILocation(line: 467, column: 41, scope: !6408)
!6738 = !DILocation(line: 464, column: 21, scope: !6408)
!6739 = !DILocation(line: 472, column: 32, scope: !6404)
!6740 = !DILocation(line: 472, column: 28, scope: !6404)
!6741 = !DILocation(line: 472, column: 50, scope: !6404)
!6742 = !DILocation(line: 448, column: 24, scope: !6256)
!6743 = !DILocation(line: 448, column: 46, scope: !6256)
!6744 = !DILocation(line: 0, scope: !6256)
!6745 = !DILocation(line: 30, column: 8, scope: !262, inlinedAt: !6414)
!6746 = !DILocation(line: 3904, column: 24, scope: !263, inlinedAt: !6418)
!6747 = !DILocation(line: 35, column: 5, scope: !266, inlinedAt: !6414)
!6748 = !DILocation(line: 86, column: 11, scope: !267, inlinedAt: !6419)
!6749 = !DILocation(line: 86, column: 5, scope: !267, inlinedAt: !6419)
!6750 = !DILocation(line: 90, column: 1, scope: !267, inlinedAt: !6419)
!6751 = !DILocation(line: 2173, column: 9, scope: !6367, inlinedAt: !6561)
!6752 = !DILocation(line: 442, column: 28, scope: !6256)
!6753 = !DILocation(line: 3024, column: 19, scope: !268, inlinedAt: !6420)
!6754 = !DILocation(line: 3029, column: 37, scope: !269, inlinedAt: !6420)
!6755 = !DILocation(line: 3029, column: 18, scope: !269, inlinedAt: !6420)
!6756 = !DILocation(line: 148, column: 9, scope: !270, inlinedAt: !6421)
!6757 = !DILocation(line: 268, column: 9, scope: !271, inlinedAt: !6352)
!6758 = !DILocation(line: 269, column: 37, scope: !271, inlinedAt: !6352)
!6759 = !DILocation(line: 619, column: 49, scope: !272, inlinedAt: !6427)
!6760 = !DILocation(line: 1040, column: 12, scope: !275, inlinedAt: !6425)
!6761 = !DILocation(line: 1041, column: 22, scope: !275, inlinedAt: !6425)
!6762 = !DILocation(line: 810, column: 1, scope: !52, inlinedAt: !6430)
!6763 = !DILocation(line: 1035, column: 5, scope: !274, inlinedAt: !6425)
!6764 = !DILocation(line: 810, column: 1, scope: !52, inlinedAt: !6432)
!6765 = !DILocation(line: 264, column: 5, scope: !261, inlinedAt: !6352)
!6766 = !DILocation(line: 614, column: 9, scope: !277, inlinedAt: !6436)
!6767 = !DILocation(line: 961, column: 18, scope: !281, inlinedAt: !6437)
!6768 = !DILocation(line: 1045, column: 29, scope: !282, inlinedAt: !6425)
!6769 = !DILocation(line: 1046, column: 13, scope: !282, inlinedAt: !6425)
!6770 = !DILocation(line: 269, column: 43, scope: !271, inlinedAt: !6352)
!6771 = !DILocation(line: 478, column: 37, scope: !6256)
!6772 = !DILocation(line: 480, column: 5, scope: !6256)
!6773 = !DILocation(line: 481, column: 1, scope: !6240)
!6774 = !DILocation(line: 481, column: 2, scope: !6232)
!6775 = !DILocation(line: 442, column: 24, scope: !6256)
!6776 = !DILocation(line: 442, column: 46, scope: !6256)
!6777 = !DILocation(line: 328, column: 1, scope: !6232)
!6778 = distinct !DISubprogram(name: "encode<u64>", linkageName: "_RINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding9bitpacked6encode6encodeyEBa_", scope: !6983, file: !6981, line: 9, type: !1310, scopeLine: 9, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1309)
!6779 = distinct !DISubprogram(name: "new<u64>", linkageName: "_RNvMs1o_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_11ChunksExactyE3newCsfISxE4fmY1Y_14polars_parquet", scope: !6985, file: !1510, line: 1851, type: !1310, scopeLine: 1851, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1309)
!6780 = distinct !DILexicalBlock(scope: !6779, file: !1510, line: 1852, column: 9)
!6781 = distinct !DISubprogram(name: "chunks_exact<u64>", linkageName: "_RNvMNtCscgRAwXFJnXP_4core5sliceSy12chunks_exactCsfISxE4fmY1Y_14polars_parquet", scope: !1355, file: !1353, line: 1242, type: !1321, scopeLine: 1242, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1309)
!6782 = distinct !DILocation(line: 10, column: 27, scope: !6778)
!6783 = distinct !DILocation(line: 1244, column: 9, scope: !6781, inlinedAt: !6782)
!6784 = distinct !DISubprogram(name: "add<u64>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr9const_ptrPy3addCsfISxE4fmY1Y_14polars_parquet", scope: !1449, file: !1447, line: 829, type: !1310, scopeLine: 829, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1309)
!6785 = distinct !DISubprogram(name: "split_at_unchecked<u64>", linkageName: "_RNvMNtCscgRAwXFJnXP_4core5sliceSy18split_at_uncheckedCsfISxE4fmY1Y_14polars_parquet", scope: !1355, file: !1353, line: 2038, type: !1321, scopeLine: 2038, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1309)
!6786 = distinct !DILexicalBlock(scope: !6785, file: !1353, line: 2043, column: 9)
!6787 = distinct !DILexicalBlock(scope: !6786, file: !1353, line: 2044, column: 9)
!6788 = distinct !DILexicalBlock(scope: !6780, file: !1510, line: 1853, column: 9)
!6789 = distinct !DILocation(line: 1855, column: 41, scope: !6788, inlinedAt: !6783)
!6790 = distinct !DILocation(line: 2053, column: 64, scope: !6787, inlinedAt: !6789)
!6791 = distinct !DISubprogram(name: "div_ceil", linkageName: "_RNvMs9_NtCscgRAwXFJnXP_4core3numj8div_ceil", scope: !1338, file: !1336, line: 3711, type: !1310, scopeLine: 3711, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1309)
!6792 = distinct !DILexicalBlock(scope: !6778, file: !6981, line: 10, column: 5)
!6793 = distinct !DILexicalBlock(scope: !6792, file: !6981, line: 12, column: 5)
!6794 = distinct !DILexicalBlock(scope: !6793, file: !6981, line: 14, column: 5)
!6795 = distinct !DISubprogram(name: "chunks_exact_mut<u8>", linkageName: "_RNvMNtCscgRAwXFJnXP_4core5sliceSh16chunks_exact_mutCsfISxE4fmY1Y_14polars_parquet", scope: !1355, file: !1353, line: 1290, type: !1321, scopeLine: 1290, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1309)
!6796 = distinct !DILocation(line: 29, column: 36, scope: !6794)
!6797 = distinct !{!6797, i1 true, !"_RNvMNtCscgRAwXFJnXP_4core5sliceSh16chunks_exact_mutCsfISxE4fmY1Y_14polars_parquet"}
!6798 = distinct !{!6798, !6797, !"_RNvMNtCscgRAwXFJnXP_4core5sliceSh16chunks_exact_mutCsfISxE4fmY1Y_14polars_parquet: argument 1"}
!6799 = distinct !{!6799, !6797, !"_RNvMNtCscgRAwXFJnXP_4core5sliceSh16chunks_exact_mutCsfISxE4fmY1Y_14polars_parquet: argument 0"}
!6800 = distinct !DISubprogram(name: "new<u8>", linkageName: "_RNvMs1x_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_14ChunksExactMuthE3newCsfISxE4fmY1Y_14polars_parquet", scope: !6988, file: !1510, line: 2028, type: !1310, scopeLine: 2028, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1309)
!6801 = distinct !DILocation(line: 1292, column: 9, scope: !6795, inlinedAt: !6796)
!6802 = distinct !DILexicalBlock(scope: !6800, file: !1510, line: 2029, column: 9)
!6803 = distinct !DISubprogram(name: "add<u8>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr7mut_ptrOh3addCsfISxE4fmY1Y_14polars_parquet", scope: !1350, file: !1347, line: 927, type: !1310, scopeLine: 927, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1309)
!6804 = distinct !DISubprogram(name: "split_at_mut_unchecked<u8>", linkageName: "_RNvMNtCscgRAwXFJnXP_4core5sliceSh22split_at_mut_uncheckedCsfISxE4fmY1Y_14polars_parquet", scope: !1355, file: !1353, line: 2092, type: !1321, scopeLine: 2092, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1309)
!6805 = distinct !DILexicalBlock(scope: !6804, file: !1353, line: 2093, column: 9)
!6806 = distinct !DILexicalBlock(scope: !6805, file: !1353, line: 2094, column: 9)
!6807 = distinct !DILexicalBlock(scope: !6802, file: !1510, line: 2030, column: 9)
!6808 = distinct !DILocation(line: 2032, column: 41, scope: !6807, inlinedAt: !6801)
!6809 = distinct !DILocation(line: 2109, column: 40, scope: !6806, inlinedAt: !6808)
!6810 = distinct !DILexicalBlock(scope: !6794, file: !6981, line: 29, column: 9)
!6811 = distinct !{!6811, i1 true, !"_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter11ChunksExactyENtNtNtNtBa_4iter6traits8iterator8Iterator3zipINtB6_14ChunksExactMuthEECsfISxE4fmY1Y_14polars_parquet"}
!6812 = distinct !{!6812, !6811, !"_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter11ChunksExactyENtNtNtNtBa_4iter6traits8iterator8Iterator3zipINtB6_14ChunksExactMuthEECsfISxE4fmY1Y_14polars_parquet: argument 2"}
!6813 = distinct !{!6813, !6811, !"_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter11ChunksExactyENtNtNtNtBa_4iter6traits8iterator8Iterator3zipINtB6_14ChunksExactMuthEECsfISxE4fmY1Y_14polars_parquet: argument 1"}
!6814 = distinct !{!6814, !6811, !"_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter11ChunksExactyENtNtNtNtBa_4iter6traits8iterator8Iterator3zipINtB6_14ChunksExactMuthEECsfISxE4fmY1Y_14polars_parquet: argument 0"}
!6815 = distinct !DISubprogram(name: "zip<core::slice::iter::ChunksExact<u64>, core::slice::iter::ChunksExactMut<u8>>", linkageName: "_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter11ChunksExactyENtNtNtNtBa_4iter6traits8iterator8Iterator3zipINtB6_14ChunksExactMuthEECsfISxE4fmY1Y_14polars_parquet", scope: !1523, file: !1520, line: 626, type: !1310, scopeLine: 626, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1309)
!6816 = distinct !DILocation(line: 30, column: 16, scope: !6810)
!6817 = distinct !{!6817, i1 true, !"_RNvXNtNtNtCscgRAwXFJnXP_4core4iter6traits7collectINtNtNtB8_5slice4iter14ChunksExactMuthENtB2_12IntoIterator9into_iterCsfISxE4fmY1Y_14polars_parquet"}
!6818 = distinct !{!6818, !6817, !"_RNvXNtNtNtCscgRAwXFJnXP_4core4iter6traits7collectINtNtNtB8_5slice4iter14ChunksExactMuthENtB2_12IntoIterator9into_iterCsfISxE4fmY1Y_14polars_parquet: argument 1"}
!6819 = distinct !{!6819, !6817, !"_RNvXNtNtNtCscgRAwXFJnXP_4core4iter6traits7collectINtNtNtB8_5slice4iter14ChunksExactMuthENtB2_12IntoIterator9into_iterCsfISxE4fmY1Y_14polars_parquet: argument 0"}
!6820 = distinct !DISubprogram(name: "into_iter<core::slice::iter::ChunksExactMut<u8>>", linkageName: "_RNvXNtNtNtCscgRAwXFJnXP_4core4iter6traits7collectINtNtNtB8_5slice4iter14ChunksExactMuthENtB2_12IntoIterator9into_iterCsfISxE4fmY1Y_14polars_parquet", scope: !6995, file: !6993, line: 322, type: !1310, scopeLine: 322, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1309)
!6821 = distinct !DILocation(line: 631, column: 30, scope: !6815, inlinedAt: !6816)
!6822 = distinct !DISubprogram(name: "new<core::slice::iter::ChunksExact<u64>, core::slice::iter::ChunksExactMut<u8>>", linkageName: "_RNvMNtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB2_3ZipINtNtNtB8_5slice4iter11ChunksExactyEINtBW_14ChunksExactMuthEE3newCsfISxE4fmY1Y_14polars_parquet", scope: !6999, file: !6997, line: 23, type: !1310, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1309)
!6823 = distinct !DILocation(line: 631, column: 9, scope: !6815, inlinedAt: !6816)
!6824 = distinct !{!6824, i1 true, !"_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter11ChunksExactyEINtB10_14ChunksExactMuthEEINtB6_7ZipImplBX_B1x_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRSyQShENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding9bitpacked6encode6encodeyEs_0E0EB3D_"}
!6825 = distinct !{!6825, !6824, !"_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter11ChunksExactyEINtB10_14ChunksExactMuthEEINtB6_7ZipImplBX_B1x_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRSyQShENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding9bitpacked6encode6encodeyEs_0E0EB3D_: argument 0"}
!6826 = distinct !DISubprogram(name: "fold<core::slice::iter::ChunksExact<u64>, core::slice::iter::ChunksExactMut<u8>, (), core::iter::traits::iterator::Iterator::for_each::call::{closure_env#0}<(&[u64], &mut [u8]), polars_parquet::parquet::encoding::bitpacked::encode::encode::{closure_env#1}<u64>>>", linkageName: "_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter11ChunksExactyEINtBZ_14ChunksExactMuthEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvB1V_8for_each4callTRSyQShENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding9bitpacked6encode6encodeyEs_0E0EB3j_", scope: !7001, file: !6997, line: 99, type: !1310, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1309)
!6827 = distinct !DISubprogram(name: "for_each<core::iter::adapters::zip::Zip<core::slice::iter::ChunksExact<u64>, core::slice::iter::ChunksExactMut<u8>>, polars_parquet::parquet::encoding::bitpacked::encode::encode::{closure_env#1}<u64>>", linkageName: "_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3zip3ZipINtNtNtBc_5slice4iter11ChunksExactyEINtBU_14ChunksExactMuthEENtNtNtBa_6traits8iterator8Iterator8for_eachNCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding9bitpacked6encode6encodeyEs_0EB2K_", scope: !1523, file: !1520, line: 877, type: !1310, scopeLine: 877, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1309)
!6828 = distinct !DISubprogram(name: "fold<core::slice::iter::ChunksExact<u64>, core::slice::iter::ChunksExactMut<u8>, (), core::iter::traits::iterator::Iterator::for_each::call::{closure_env#0}<(&[u64], &mut [u8]), polars_parquet::parquet::encoding::bitpacked::encode::encode::{closure_env#1}<u64>>>", linkageName: "_RINvXs2_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB6_3ZipINtNtNtBc_5slice4iter11ChunksExactyEINtB10_14ChunksExactMuthEEINtB6_7ZipImplBX_B1x_E4folduNCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callTRSyQShENCINvNtNtNtNtCsfISxE4fmY1Y_14polars_parquet7parquet8encoding9bitpacked6encode6encodeyEs_0E0EB3D_", scope: !7005, file: !6997, line: 275, type: !1310, scopeLine: 275, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1309)
!6829 = distinct !DILexicalBlock(scope: !6828, file: !6997, line: 279, column: 9)
!6830 = distinct !DILocation(line: 103, column: 9, scope: !6826, inlinedAt: !7004)
!6831 = distinct !DISubprogram(name: "size_hint<core::slice::iter::ChunksExact<u64>, core::slice::iter::ChunksExactMut<u8>>", linkageName: "_RNvXs3_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter11ChunksExactyEINtBZ_14ChunksExactMuthEEINtB5_7ZipImplBW_B1w_E9size_hintCsfISxE4fmY1Y_14polars_parquet", scope: !7006, file: !6997, line: 321, type: !1321, scopeLine: 321, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1309)
!6832 = distinct !DILocation(line: 280, column: 19, scope: !6829, inlinedAt: !6830)
!6833 = distinct !DISubprogram(name: "lt", linkageName: "_RNvXsU_NtNtCscgRAwXFJnXP_4core3cmp5implsjNtB7_10PartialOrd2lt", scope: !1525, file: !1441, line: 1917, type: !1310, scopeLine: 1917, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1309)
end_hunk_5
