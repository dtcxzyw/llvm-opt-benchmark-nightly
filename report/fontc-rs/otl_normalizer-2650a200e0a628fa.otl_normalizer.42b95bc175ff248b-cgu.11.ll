Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fontc-rs/original/otl_normalizer-2650a200e0a628fa.otl_normalizer.42b95bc175ff248b-cgu.11?download=true
inline.NumInlined: 200
inline.NumDeleted: 148
begin_hunk_0_@_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift4sortINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbZq13ASDQ8l_10font_types5fixed7F2Dot14ENvYBW_NtNtBa_3cmp10PartialOrd2ltECs5JazJsyow1H_14otl_normalizer:bb.a
  %i.v = icmp sgt i8 %i.u, -1
  %.sroa.0.0.i.i.not66.i = or i1 %.not.i.i.i, %i.v ; 2 uses
  %.not39.i = icmp eq i64 %i.n, 2                 ; 2 uses
  br i1 %.sroa.0.0.i.i.not66.i, label %.preheader28.i, label %.preheader.i

.preheader28.i:                                   ; preds = %bb.k
  br i1 %.not39.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbZq13ASDQ8l_10font_types5fixed7F2Dot14E7reverseCs5JazJsyow1H_14otl_normalizer.exit.i, label %.lr.ph.i

.preheader.i:                                     ; preds = %bb.k
  br i1 %.not39.i, label %.lr.ph.preheader.i.i.i, label %.lr.ph34.i

.lr.ph.i:                                         ; preds = %.preheader28.i, %bb.l
  %.sroa.01.0.i30.i = phi i64 [ %i.ad, %bb.l ], [ 2, %.preheader28.i ] ; 3 uses
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %.sroa.01.0.i30.i ; 4 uses
  %i.x = getelementptr i8, ptr %i.w, i64 8
  %.val7.i = load ptr, ptr %i.x, align 8, !alias.scope !40, !noalias !41, !nonnull !5, !noundef !5
  %i.y = getelementptr i8, ptr %i.w, i64 16
  %.val8.i = load i64, ptr %i.y, align 8, !alias.scope !40, !noalias !41, !noundef !5
  %i.z = getelementptr i8, ptr %i.w, i64 -16
  %.val9.i = load ptr, ptr %i.z, align 8, !alias.scope !40, !noalias !41, !nonnull !5, !noundef !5
  %i.aa = getelementptr i8, ptr %i.w, i64 -8
  %.val10.i = load i64, ptr %i.aa, align 8, !alias.scope !40, !noalias !41, !noundef !5
  %i.ab = tail call noundef range(i8 -2, 2) i8 @_RNvXs4_NtNtCsf3Ta7LF998c_4core5slice3cmpNtNtCsbZq13ASDQ8l_10font_types5fixed7F2Dot14NtB5_15SlicePartialOrd15partial_compareCs5JazJsyow1H_14otl_normalizer(ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %.val7.i, i64 noundef %.val8.i, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %.val9.i, i64 noundef %.val10.i), !noalias !42 ; 2 uses
  %.not.i.i15.i = icmp ne i8 %i.ab, -2
  %i.ac = icmp slt i8 %i.ab, 0
  %.sroa.0.0.i.i16.i = and i1 %.not.i.i15.i, %i.ac
  br i1 %.sroa.0.0.i.i16.i, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbZq13ASDQ8l_10font_types5fixed7F2Dot14ENvYB12_NtNtB8_3cmp10PartialOrd2ltECs5JazJsyow1H_14otl_normalizer.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i
  %i.ad = add nuw nsw i64 %.sroa.01.0.i30.i, 1    ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ad, %i.n
  br i1 %exitcond.not.i, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbZq13ASDQ8l_10font_types5fixed7F2Dot14ENvYB12_NtNtB8_3cmp10PartialOrd2ltECs5JazJsyow1H_14otl_normalizer.exit.i, label %.lr.ph.i

.lr.ph34.i:                                       ; preds = %.preheader.i, %bb.m
  %.sroa.01.1.i33.i = phi i64 [ %i.al, %bb.m ], [ 2, %.preheader.i ] ; 3 uses
  %i.ae = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %.sroa.01.1.i33.i ; 4 uses
  %i.af = getelementptr i8, ptr %i.ae, i64 8
  %.val.i = load ptr, ptr %i.af, align 8, !alias.scope !40, !noalias !41, !nonnull !5, !noundef !5
  %i.ag = getelementptr i8, ptr %i.ae, i64 16
  %.val4.i = load i64, ptr %i.ag, align 8, !alias.scope !40, !noalias !41, !noundef !5
  %i.ah = getelementptr i8, ptr %i.ae, i64 -16
  %.val5.i = load ptr, ptr %i.ah, align 8, !alias.scope !40, !noalias !41, !nonnull !5, !noundef !5
  %i.ai = getelementptr i8, ptr %i.ae, i64 -8
  %.val6.i = load i64, ptr %i.ai, align 8, !alias.scope !40, !noalias !41, !noundef !5
  %i.aj = tail call noundef range(i8 -2, 2) i8 @_RNvXs4_NtNtCsf3Ta7LF998c_4core5slice3cmpNtNtCsbZq13ASDQ8l_10font_types5fixed7F2Dot14NtB5_15SlicePartialOrd15partial_compareCs5JazJsyow1H_14otl_normalizer(ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %.val.i, i64 noundef %.val4.i, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %.val5.i, i64 noundef %.val6.i), !noalias !42 ; 2 uses
  %.not.i.i17.i = icmp ne i8 %i.aj, -2
  %i.ak = icmp slt i8 %i.aj, 0
  %.sroa.0.0.i.i18.i = and i1 %.not.i.i17.i, %i.ak
  br i1 %.sroa.0.0.i.i18.i, label %bb.m, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbZq13ASDQ8l_10font_types5fixed7F2Dot14ENvYB12_NtNtB8_3cmp10PartialOrd2ltECs5JazJsyow1H_14otl_normalizer.exit.i

bb.m:                                             ; preds = %.lr.ph34.i
  %i.al = add nuw nsw i64 %.sroa.01.1.i33.i, 1    ; 2 uses
  %exitcond42.not.i = icmp eq i64 %i.al, %i.n
  br i1 %exitcond42.not.i, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbZq13ASDQ8l_10font_types5fixed7F2Dot14ENvYB12_NtNtB8_3cmp10PartialOrd2ltECs5JazJsyow1H_14otl_normalizer.exit.i, label %.lr.ph34.i

_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbZq13ASDQ8l_10font_types5fixed7F2Dot14ENvYB12_NtNtB8_3cmp10PartialOrd2ltECs5JazJsyow1H_14otl_normalizer.exit.i: ; preds = %bb.m, %.lr.ph34.i, %bb.l, %.lr.ph.i
  %.sroa.0.0.i.i = phi i64 [ %i.n, %bb.l ], [ %.sroa.01.0.i30.i, %.lr.ph.i ], [ %.sroa.01.1.i33.i, %.lr.ph34.i ], [ %i.n, %bb.m ] ; 5 uses
  %i.am = icmp samesign ule i64 %.sroa.0.0.i.i, %i.n
  tail call void @llvm.assume(i1 %i.am)
  %.not3.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not3.i, label %bb.i, label %bb.n

bb.n:                                             ; preds = %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbZq13ASDQ8l_10font_types5fixed7F2Dot14ENvYB12_NtNtB8_3cmp10PartialOrd2ltECs5JazJsyow1H_14otl_normalizer.exit.i
  %i.an = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  %.not.i.i19.i = icmp eq i64 %i.an, 0
  %or.cond.i = or i1 %.sroa.0.0.i.i.not66.i, %.not.i.i19.i
  br i1 %or.cond.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbZq13ASDQ8l_10font_types5fixed7F2Dot14E7reverseCs5JazJsyow1H_14otl_normalizer.exit.i, label %.lr.ph.preheader.i.i.i

bb.o:                                             ; preds = %bb.i
  %i.ao = tail call i64 @llvm.umin.i64(i64 %.sroa.01.0, i64 range(i64 0, 384307168202282326) %i.n)
  %i.ap = shl nuw nsw i64 %i.ao, 1
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbZq13ASDQ8l_10font_types5fixed7F2Dot14ENvYB13_NtNtBa_3cmp10PartialOrd2ltECs5JazJsyow1H_14otl_normalizer.exit

bb.p:                                             ; preds = %bb.i
  %i.aq = tail call i64 @llvm.umin.i64(i64 range(i64 0, 384307168202282326) %i.n, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbZq13ASDQ8l_10font_types5fixed7F2Dot14ENvYB15_NtNtBa_3cmp10PartialOrd2ltECs5JazJsyow1H_14otl_normalizer(ptr noalias nofree noundef nonnull align 8 %i.o, i64 noundef %i.aq, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null, ptr noalias nofree noundef nonnull %5) #16
  %i.ar = shl nuw nsw i64 %i.aq, 1
  %i.as = or disjoint i64 %i.ar, 1
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbZq13ASDQ8l_10font_types5fixed7F2Dot14ENvYB13_NtNtBa_3cmp10PartialOrd2ltECs5JazJsyow1H_14otl_normalizer.exit

_RNvMNtCsf3Ta7LF998c_4core5sliceSINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbZq13ASDQ8l_10font_types5fixed7F2Dot14E7reverseCs5JazJsyow1H_14otl_normalizer.exit.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbZq13ASDQ8l_10font_types5fixed7F2Dot14EECs5JazJsyow1H_14otl_normalizer.exit.i.i.i, %.preheader28.i, %bb.n, %bb.j
  %.sroa.0.0.i25.i = phi i64 [ %i.n, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ 2, %.preheader28.i ], [ %.sroa.0.0.i515862.i, %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbZq13ASDQ8l_10font_types5fixed7F2Dot14EECs5JazJsyow1H_14otl_normalizer.exit.i.i.i ]
  %i.at = shl nuw nsw i64 %.sroa.0.0.i25.i, 1
  %i.au = or disjoint i64 %i.at, 1
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbZq13ASDQ8l_10font_types5fixed7F2Dot14ENvYB13_NtNtBa_3cmp10PartialOrd2ltECs5JazJsyow1H_14otl_normalizer.exit

.lr.ph.preheader.i.i.i:                           ; preds = %.preheader.i, %bb.n
  %i.av = phi i64 [ %i.an, %bb.n ], [ 1, %.preheader.i ]
  %.sroa.0.0.i515862.i = phi i64 [ %.sroa.0.0.i.i, %bb.n ], [ 2, %.preheader.i ] ; 2 uses
  %i.aw = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %.sroa.0.0.i515862.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbZq13ASDQ8l_10font_types5fixed7F2Dot14EECs5JazJsyow1H_14otl_normalizer.exit.i.i.i, %.lr.ph.preheader.i.i.i
  %.sroa.0.017.i.i.i = phi i64 [ %i.bb, %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbZq13ASDQ8l_10font_types5fixed7F2Dot14EECs5JazJsyow1H_14otl_normalizer.exit.i.i.i ], [ 0, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %i.ax = xor i64 %.sroa.0.017.i.i.i, -1
  %i.ay = getelementptr inbounds nuw [24 x i8], ptr %i.o, i64 %.sroa.0.017.i.i.i
  %i.az = getelementptr [24 x i8], ptr %i.aw, i64 %i.ax
  invoke void @_RINvNvNtCsf3Ta7LF998c_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs5JazJsyow1H_14otl_normalizer(ptr noundef nonnull %i.ay, ptr noundef nonnull %i.az, i64 noundef 3)
          to label %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbZq13ASDQ8l_10font_types5fixed7F2Dot14EECs5JazJsyow1H_14otl_normalizer.exit.i.i.i unwind label %bb.q, !noalias !41

bb.q:                                             ; preds = %.lr.ph.i.i.i
  %i.ba = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking19panic_cannot_unwind() #14, !noalias !41
  unreachable

_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbZq13ASDQ8l_10font_types5fixed7F2Dot14EECs5JazJsyow1H_14otl_normalizer.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.bb = add nuw nsw i64 %.sroa.0.017.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.bb, %i.av
  br i1 %exitcond.not.i.i.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbZq13ASDQ8l_10font_types5fixed7F2Dot14E7reverseCs5JazJsyow1H_14otl_normalizer.exit.i, label %.lr.ph.i.i.i

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbZq13ASDQ8l_10font_types5fixed7F2Dot14ENvYB13_NtNtBa_3cmp10PartialOrd2ltECs5JazJsyow1H_14otl_normalizer.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCsf3Ta7LF998c_4core5sliceSINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbZq13ASDQ8l_10font_types5fixed7F2Dot14E7reverseCs5JazJsyow1H_14otl_normalizer.exit.i
  %.sroa.0.0.i32 = phi i64 [ %i.au, %_RNvMNtCsf3Ta7LF998c_4core5sliceSINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbZq13ASDQ8l_10font_types5fixed7F2Dot14E7reverseCs5JazJsyow1H_14otl_normalizer.exit.i ], [ %i.as, %bb.p ], [ %i.ap, %bb.o ] ; 2 uses
  %i.bc = lshr i64 %.sroa.023.0, 1
  %i.bd = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.be = sub nsw i64 %factor, %i.bc
  %i.bf = add nuw i64 %i.bd, %factor
  %i.bg = mul i64 %i.be, %.sroa.0.0
  %i.bh = mul i64 %i.bf, %.sroa.0.0
  %i.bi = xor i64 %i.bh, %i.bg
  %i.bj = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bi, i1 false)
  %i.bk = trunc nuw nsw i64 %i.bj to i8
  br label %bb.g

.lr.ph:                                           ; preds = %bb.g, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbZq13ASDQ8l_10font_types5fixed7F2Dot14ENvYB16_NtNtBa_3cmp10PartialOrd2ltECs5JazJsyow1H_14otl_normalizer.exit
  %.sroa.02.136 = phi i64 [ %i.bl, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbZq13ASDQ8l_10font_types5fixed7F2Dot14ENvYB16_NtNtBa_3cmp10PartialOrd2ltECs5JazJsyow1H_14otl_normalizer.exit ], [ %.sroa.02.0, %bb.g ] ; 2 uses
  %.sroa.023.135 = phi i64 [ %.sroa.0.0.i, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbZq13ASDQ8l_10font_types5fixed7F2Dot14ENvYB16_NtNtBa_3cmp10PartialOrd2ltECs5JazJsyow1H_14otl_normalizer.exit ], [ %.sroa.023.0, %bb.g ] ; 4 uses
  %i.bl = add i64 %.sroa.02.136, -1               ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bl
  %i.bn = load i8, ptr %i.bm, align 1, !noundef !5
  %.not28 = icmp ult i8 %i.bn, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbZq13ASDQ8l_10font_types5fixed7F2Dot14ENvYB16_NtNtBa_3cmp10PartialOrd2ltECs5JazJsyow1H_14otl_normalizer.exit, %.lr.ph, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.135, %.lr.ph ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbZq13ASDQ8l_10font_types5fixed7F2Dot14ENvYB16_NtNtBa_3cmp10PartialOrd2ltECs5JazJsyow1H_14otl_normalizer.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.136, %.lr.ph ], [ 1, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbZq13ASDQ8l_10font_types5fixed7F2Dot14ENvYB16_NtNtBa_3cmp10PartialOrd2ltECs5JazJsyow1H_14otl_normalizer.exit ] ; 3 uses
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.bo, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.bp, align 1
  br i1 %i.l, label %bb.y, label %bb.z

bb.r:                                             ; preds = %.lr.ph
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bl
  %i.br = load i64, ptr %i.bq, align 8, !noundef !5 ; 3 uses
  %i.bs = lshr i64 %i.br, 1                       ; 5 uses
  %i.bt = lshr i64 %.sroa.023.135, 1              ; 3 uses
  %i.bu = add nuw i64 %i.bs, %i.bt                ; 5 uses
  %i.bv = sub i64 %.sroa.09.0, %i.bu
  %i.bw = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.bv ; 3 uses
  %i.bx = icmp samesign ugt i64 %i.bu, %3
  %i.by = trunc i64 %.sroa.023.135 to i1
  %i.bz = or i64 %i.br, %.sroa.023.135
  %i.ca = trunc i64 %i.bz to i1
  %or.cond3.i = or i1 %i.bx, %i.ca
  br i1 %or.cond3.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cb = trunc i64 %i.br to i1
  br i1 %i.cb, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.cc = shl nuw nsw i64 %i.bu, 1
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbZq13ASDQ8l_10font_types5fixed7F2Dot14ENvYB16_NtNtBa_3cmp10PartialOrd2ltECs5JazJsyow1H_14otl_normalizer.exit

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.by, label %bb.x, label %bb.w

bb.v:                                             ; preds = %bb.s
  %i.cd = or i64 %i.bs, 1
  %i.ce = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.cd, i1 true)
  %i.cf = trunc nuw nsw i64 %i.ce to i32
  %i.cg = shl nuw nsw i32 %i.cf, 1
  %i.ch = xor i32 %i.cg, 126
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbZq13ASDQ8l_10font_types5fixed7F2Dot14ENvYB15_NtNtBa_3cmp10PartialOrd2ltECs5JazJsyow1H_14otl_normalizer(ptr noalias nofree noundef nonnull align 8 %i.bw, i64 noundef range(i64 0, 384307168202282326) %i.bs, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, i32 noundef %i.ch, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null, ptr noalias nofree noundef nonnull %5) #16
  br label %bb.u

bb.w:                                             ; preds = %bb.u
  %i.ci = getelementptr inbounds nuw [24 x i8], ptr %i.bw, i64 %i.bs
  %i.cj = or i64 %i.bt, 1
  %i.ck = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.cj, i1 true)
  %i.cl = trunc nuw nsw i64 %i.ck to i32
  %i.cm = shl nuw nsw i32 %i.cl, 1
  %i.cn = xor i32 %i.cm, 126
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbZq13ASDQ8l_10font_types5fixed7F2Dot14ENvYB15_NtNtBa_3cmp10PartialOrd2ltECs5JazJsyow1H_14otl_normalizer(ptr noalias nofree noundef nonnull align 8 %i.ci, i64 noundef range(i64 0, 384307168202282326) %i.bt, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, i32 noundef %i.cn, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null, ptr noalias nofree noundef nonnull %5) #16
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.u
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5merge5mergeINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbZq13ASDQ8l_10font_types5fixed7F2Dot14ENvYBX_NtNtBa_3cmp10PartialOrd2ltECs5JazJsyow1H_14otl_normalizer(ptr noalias nofree noundef nonnull align 8 %i.bw, i64 noundef range(i64 0, 384307168202282326) %i.bu, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, i64 noundef %i.bs, ptr noalias nofree noundef nonnull %5)
  %i.co = shl nuw nsw i64 %i.bu, 1
  %i.cp = or disjoint i64 %i.co, 1
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbZq13ASDQ8l_10font_types5fixed7F2Dot14ENvYB16_NtNtBa_3cmp10PartialOrd2ltECs5JazJsyow1H_14otl_normalizer.exit

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbZq13ASDQ8l_10font_types5fixed7F2Dot14ENvYB16_NtNtBa_3cmp10PartialOrd2ltECs5JazJsyow1H_14otl_normalizer.exit: ; preds = %bb.t, %bb.x
  %.sroa.0.0.i = phi i64 [ %i.cp, %bb.x ], [ %i.cc, %bb.t ] ; 2 uses
  %i.cq = icmp ugt i64 %i.bl, 1
  br i1 %i.cq, label %.lr.ph, label %._crit_edge

bb.y:                                             ; preds = %._crit_edge
  %i.cr = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.cs = lshr i64 %.sroa.018.0, 1
  %i.ct = add nuw nsw i64 %i.cs, %.sroa.09.0
  br label %bb.f

bb.z:                                             ; preds = %._crit_edge
  %i.cu = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.cu, 0
  br i1 %.not30, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.cv = or i64 %1, 1
  %i.cw = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.cv, i1 true)
  %i.cx = trunc nuw nsw i64 %i.cw to i32
  %i.cy = shl nuw nsw i32 %i.cx, 1
  %i.cz = xor i32 %i.cy, 126
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbZq13ASDQ8l_10font_types5fixed7F2Dot14ENvYB15_NtNtBa_3cmp10PartialOrd2ltECs5JazJsyow1H_14otl_normalizer(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 384307168202282326) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 384307168202282326) %3, i32 noundef %i.cz, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) null, ptr noalias nofree noundef nonnull %5) #16
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.a, %bb.ab
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift4sortNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NvYBW_NtNtBa_3cmp10PartialOrd2ltECs5JazJsyow1H_14otl_normalizer(ptr noalias nofree noundef nonnull align 2 %0, i64 noundef range(i64 0, 4611686018427387904) %1, ptr noalias nofree noundef nonnull align 2 %2, i64 noundef range(i64 0, 4611686018427387904) %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull %5) unnamed_addr #0 {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.ac, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %i.k, %bb.d ], [ %i.h, %bb.c ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %bb.f

bb.f:                                             ; preds = %bb.y, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.y ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.cl, %bb.y ] ; 6 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.cj, %bb.y ] ; 3 uses
  %i.l = icmp samesign ult i64 %.sroa.09.0, %1    ; 2 uses
  br i1 %i.l, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NvYB13_NtNtBa_3cmp10PartialOrd2ltECs5JazJsyow1H_14otl_normalizer.exit
  %.sroa.021.0 = phi i8 [ %i.bc, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NvYB13_NtNtBa_3cmp10PartialOrd2ltECs5JazJsyow1H_14otl_normalizer.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NvYB13_NtNtBa_3cmp10PartialOrd2ltECs5JazJsyow1H_14otl_normalizer.exit ], [ 1, %bb.f ] ; 2 uses
  %i.m = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.m, label %.lr.ph, label %._crit_edge

bb.h:                                             ; preds = %bb.f
  %i.n = sub nuw nsw i64 %1, %.sroa.09.0          ; 11 uses
  %i.o = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.sroa.09.0 ; 8 uses
  %.not.i31 = icmp ult i64 %i.n, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NvYB12_NtNtB8_3cmp10PartialOrd2ltECs5JazJsyow1H_14otl_normalizer.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.p = icmp samesign ult i64 %i.n, 2
  br i1 %i.p, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId167reverseCs5JazJsyow1H_14otl_normalizer.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 2
  %.val7.i = load i16, ptr %i.q, align 2, !alias.scope !54, !noalias !55, !noundef !5 ; 3 uses
  %.val8.i = load i16, ptr %i.o, align 2, !alias.scope !54, !noalias !55, !noundef !5
  %i.r = icmp ult i16 %.val7.i, %.val8.i          ; 2 uses
  %.not28.i = icmp eq i64 %i.n, 2                 ; 2 uses
  br i1 %i.r, label %.preheader.i, label %.preheader17.i

.preheader17.i:                                   ; preds = %bb.k
  br i1 %.not28.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId167reverseCs5JazJsyow1H_14otl_normalizer.exit.i, label %.lr.ph.i

.preheader.i:                                     ; preds = %bb.k
  br i1 %.not28.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId1612split_at_mutCs5JazJsyow1H_14otl_normalizer.exit11.preheader.i.i.i, label %.lr.ph23.i

.lr.ph.i:                                         ; preds = %.preheader17.i, %bb.l
  %.val6.i = phi i16 [ %.val5.i, %bb.l ], [ %.val7.i, %.preheader17.i ]
  %.sroa.01.0.i19.i = phi i64 [ %i.u, %bb.l ], [ 2, %.preheader17.i ] ; 3 uses
  %i.s = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %.sroa.01.0.i19.i
  %.val5.i = load i16, ptr %i.s, align 2, !alias.scope !54, !noalias !55, !noundef !5 ; 2 uses
  %i.t = icmp ult i16 %.val5.i, %.val6.i
  br i1 %i.t, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NvYB12_NtNtB8_3cmp10PartialOrd2ltECs5JazJsyow1H_14otl_normalizer.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i
  %i.u = add nuw nsw i64 %.sroa.01.0.i19.i, 1     ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.u, %i.n
  br i1 %exitcond.not.i, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NvYB12_NtNtB8_3cmp10PartialOrd2ltECs5JazJsyow1H_14otl_normalizer.exit.i, label %.lr.ph.i

.lr.ph23.i:                                       ; preds = %.preheader.i, %bb.m
  %.val4.i = phi i16 [ %.val.i, %bb.m ], [ %.val7.i, %.preheader.i ]
  %.sroa.01.1.i22.i = phi i64 [ %i.x, %bb.m ], [ 2, %.preheader.i ] ; 3 uses
  %i.v = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %.sroa.01.1.i22.i
  %.val.i = load i16, ptr %i.v, align 2, !alias.scope !54, !noalias !55, !noundef !5 ; 2 uses
  %i.w = icmp ult i16 %.val.i, %.val4.i
  br i1 %i.w, label %bb.m, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NvYB12_NtNtB8_3cmp10PartialOrd2ltECs5JazJsyow1H_14otl_normalizer.exit.i

bb.m:                                             ; preds = %.lr.ph23.i
  %i.x = add nuw nsw i64 %.sroa.01.1.i22.i, 1     ; 2 uses
  %exitcond31.not.i = icmp eq i64 %i.x, %i.n
  br i1 %exitcond31.not.i, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NvYB12_NtNtB8_3cmp10PartialOrd2ltECs5JazJsyow1H_14otl_normalizer.exit.i, label %.lr.ph23.i

_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NvYB12_NtNtB8_3cmp10PartialOrd2ltECs5JazJsyow1H_14otl_normalizer.exit.i: ; preds = %bb.l, %.lr.ph.i, %bb.m, %.lr.ph23.i
  %.sroa.0.0.i.i = phi i64 [ %i.n, %bb.m ], [ %.sroa.01.1.i22.i, %.lr.ph23.i ], [ %.sroa.01.0.i19.i, %.lr.ph.i ], [ %i.n, %bb.l ] ; 6 uses
  %i.y = icmp samesign ule i64 %.sroa.0.0.i.i, %i.n
  tail call void @llvm.assume(i1 %i.y)
  %.not3.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not3.i, label %bb.i, label %bb.n

bb.n:                                             ; preds = %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NvYB12_NtNtB8_3cmp10PartialOrd2ltECs5JazJsyow1H_14otl_normalizer.exit.i
  br i1 %i.r, label %bb.q, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId167reverseCs5JazJsyow1H_14otl_normalizer.exit.i

bb.o:                                             ; preds = %bb.i
  %i.z = tail call i64 @llvm.umin.i64(i64 %.sroa.01.0, i64 range(i64 0, 4611686018427387904) %i.n)
  %i.aa = shl nuw nsw i64 %i.z, 1
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NvYB13_NtNtBa_3cmp10PartialOrd2ltECs5JazJsyow1H_14otl_normalizer.exit

bb.p:                                             ; preds = %bb.i
  %i.ab = tail call i64 @llvm.umin.i64(i64 range(i64 0, 4611686018427387904) %i.n, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NvYB15_NtNtBa_3cmp10PartialOrd2ltECs5JazJsyow1H_14otl_normalizer(ptr noalias nofree noundef nonnull align 2 %i.o, i64 noundef %i.ab, ptr noalias nofree noundef nonnull align 2 %2, i64 noundef range(i64 0, 4611686018427387904) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 2 captures(address, read_provenance) dereferenceable_or_null(2) null, ptr noalias nofree noundef nonnull %5) #16
  %i.ac = shl nuw nsw i64 %i.ab, 1
  %i.ad = or disjoint i64 %i.ac, 1
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NvYB13_NtNtBa_3cmp10PartialOrd2ltECs5JazJsyow1H_14otl_normalizer.exit

_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId167reverseCs5JazJsyow1H_14otl_normalizer.exit.i: ; preds = %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId1612split_at_mutCs5JazJsyow1H_14otl_normalizer.exit11.i.i.i, %middle.block, %.preheader17.i, %bb.q, %bb.n, %bb.j
  %.sroa.0.0.i14.i = phi i64 [ %i.n, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ %.sroa.0.0.i.i, %bb.q ], [ 2, %.preheader17.i ], [ %.sroa.0.0.i424953.i, %middle.block ], [ %.sroa.0.0.i424953.i, %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId1612split_at_mutCs5JazJsyow1H_14otl_normalizer.exit11.i.i.i ]
  %i.ae = shl nuw nsw i64 %.sroa.0.0.i14.i, 1
  %i.af = or disjoint i64 %i.ae, 1
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NvYB13_NtNtBa_3cmp10PartialOrd2ltECs5JazJsyow1H_14otl_normalizer.exit

bb.q:                                             ; preds = %bb.n
  %i.ag = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !56)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !57)
  %.not.i.i.i = icmp eq i64 %i.ag, 0
  br i1 %.not.i.i.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId167reverseCs5JazJsyow1H_14otl_normalizer.exit.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId1612split_at_mutCs5JazJsyow1H_14otl_normalizer.exit11.preheader.i.i.i

_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId1612split_at_mutCs5JazJsyow1H_14otl_normalizer.exit11.preheader.i.i.i: ; preds = %.preheader.i, %bb.q
  %i.ah = phi i64 [ %i.ag, %bb.q ], [ 1, %.preheader.i ] ; 4 uses
  %.sroa.0.0.i424953.i = phi i64 [ %.sroa.0.0.i.i, %bb.q ], [ 2, %.preheader.i ] ; 3 uses
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %.sroa.0.0.i424953.i ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.ah, 8
  br i1 %min.iters.check, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId1612split_at_mutCs5JazJsyow1H_14otl_normalizer.exit11.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId1612split_at_mutCs5JazJsyow1H_14otl_normalizer.exit11.preheader.i.i.i
  %n.vec = and i64 %i.ah, 9223372036854775800     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.aj = xor i64 %index, -1
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %index ; 2 uses
  %i.al = getelementptr [2 x i8], ptr %i.ai, i64 %i.aj
  %wide.load = load <8 x i16>, ptr %i.ak, align 2, !alias.scope !58, !noalias !59
  %i.am = getelementptr i8, ptr %i.al, i64 -14    ; 2 uses
  %wide.load54 = load <8 x i16>, ptr %i.am, align 2, !alias.scope !60, !noalias !61
  %reverse = shufflevector <8 x i16> %wide.load54, <8 x i16> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i16> %reverse, ptr %i.ak, align 2, !alias.scope !58, !noalias !59
  %reverse55 = shufflevector <8 x i16> %wide.load, <8 x i16> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i16> %reverse55, ptr %i.am, align 2, !alias.scope !60, !noalias !61
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.an = icmp eq i64 %index.next, %n.vec
  br i1 %i.an, label %middle.block, label %vector.body, !llvm.loop !52

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ah, %n.vec
  br i1 %cmp.n, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId167reverseCs5JazJsyow1H_14otl_normalizer.exit.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId1612split_at_mutCs5JazJsyow1H_14otl_normalizer.exit11.i.i.i.preheader

_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId1612split_at_mutCs5JazJsyow1H_14otl_normalizer.exit11.i.i.i.preheader: ; preds = %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId1612split_at_mutCs5JazJsyow1H_14otl_normalizer.exit11.preheader.i.i.i, %middle.block
  %.sroa.0.016.i.i.i.ph = phi i64 [ 0, %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId1612split_at_mutCs5JazJsyow1H_14otl_normalizer.exit11.preheader.i.i.i ], [ %n.vec, %middle.block ]
  br label %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId1612split_at_mutCs5JazJsyow1H_14otl_normalizer.exit11.i.i.i

_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId1612split_at_mutCs5JazJsyow1H_14otl_normalizer.exit11.i.i.i: ; preds = %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId1612split_at_mutCs5JazJsyow1H_14otl_normalizer.exit11.i.i.i.preheader, %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId1612split_at_mutCs5JazJsyow1H_14otl_normalizer.exit11.i.i.i
  %.sroa.0.016.i.i.i = phi i64 [ %i.at, %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId1612split_at_mutCs5JazJsyow1H_14otl_normalizer.exit11.i.i.i ], [ %.sroa.0.016.i.i.i.ph, %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId1612split_at_mutCs5JazJsyow1H_14otl_normalizer.exit11.i.i.i.preheader ] ; 3 uses
  %i.ao = xor i64 %.sroa.0.016.i.i.i, -1
  %i.ap = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %.sroa.0.016.i.i.i ; 2 uses
  %i.aq = getelementptr [2 x i8], ptr %i.ai, i64 %i.ao ; 2 uses
  %i.ar = load i16, ptr %i.ap, align 2, !alias.scope !58, !noalias !59, !noundef !5
  %i.as = load i16, ptr %i.aq, align 2, !alias.scope !60, !noalias !61
  store i16 %i.as, ptr %i.ap, align 2, !alias.scope !58, !noalias !59
  store i16 %i.ar, ptr %i.aq, align 2, !alias.scope !60, !noalias !61
  %i.at = add nuw nsw i64 %.sroa.0.016.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.at, %i.ah
  br i1 %exitcond.not.i.i.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId167reverseCs5JazJsyow1H_14otl_normalizer.exit.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId1612split_at_mutCs5JazJsyow1H_14otl_normalizer.exit11.i.i.i, !llvm.loop !53

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NvYB13_NtNtBa_3cmp10PartialOrd2ltECs5JazJsyow1H_14otl_normalizer.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId167reverseCs5JazJsyow1H_14otl_normalizer.exit.i
  %.sroa.0.0.i32 = phi i64 [ %i.af, %_RNvMNtCsf3Ta7LF998c_4core5sliceSNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId167reverseCs5JazJsyow1H_14otl_normalizer.exit.i ], [ %i.ad, %bb.p ], [ %i.aa, %bb.o ] ; 2 uses
  %i.au = lshr i64 %.sroa.023.0, 1
  %i.av = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.aw = sub nsw i64 %factor, %i.au
  %i.ax = add nuw i64 %i.av, %factor
  %i.ay = mul i64 %i.aw, %.sroa.0.0
  %i.az = mul i64 %i.ax, %.sroa.0.0
  %i.ba = xor i64 %i.az, %i.ay
  %i.bb = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ba, i1 false)
  %i.bc = trunc nuw nsw i64 %i.bb to i8
  br label %bb.g

.lr.ph:                                           ; preds = %bb.g, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NvYB16_NtNtBa_3cmp10PartialOrd2ltECs5JazJsyow1H_14otl_normalizer.exit
  %.sroa.02.136 = phi i64 [ %i.bd, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NvYB16_NtNtBa_3cmp10PartialOrd2ltECs5JazJsyow1H_14otl_normalizer.exit ], [ %.sroa.02.0, %bb.g ] ; 2 uses
  %.sroa.023.135 = phi i64 [ %.sroa.0.0.i, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NvYB16_NtNtBa_3cmp10PartialOrd2ltECs5JazJsyow1H_14otl_normalizer.exit ], [ %.sroa.023.0, %bb.g ] ; 4 uses
  %i.bd = add i64 %.sroa.02.136, -1               ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !noundef !5
  %.not28 = icmp ult i8 %i.bf, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NvYB16_NtNtBa_3cmp10PartialOrd2ltECs5JazJsyow1H_14otl_normalizer.exit, %.lr.ph, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.135, %.lr.ph ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NvYB16_NtNtBa_3cmp10PartialOrd2ltECs5JazJsyow1H_14otl_normalizer.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.136, %.lr.ph ], [ 1, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NvYB16_NtNtBa_3cmp10PartialOrd2ltECs5JazJsyow1H_14otl_normalizer.exit ] ; 3 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.bg, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.bh, align 1
  br i1 %i.l, label %bb.y, label %bb.z

bb.r:                                             ; preds = %.lr.ph
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bd
  %i.bj = load i64, ptr %i.bi, align 8, !noundef !5 ; 3 uses
  %i.bk = lshr i64 %i.bj, 1                       ; 5 uses
  %i.bl = lshr i64 %.sroa.023.135, 1              ; 3 uses
  %i.bm = add nuw i64 %i.bk, %i.bl                ; 5 uses
  %i.bn = sub i64 %.sroa.09.0, %i.bm
  %i.bo = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.bn ; 3 uses
  %i.bp = icmp samesign ugt i64 %i.bm, %3
  %i.bq = trunc i64 %.sroa.023.135 to i1
  %i.br = or i64 %i.bj, %.sroa.023.135
  %i.bs = trunc i64 %i.br to i1
  %or.cond3.i = or i1 %i.bp, %i.bs
  br i1 %or.cond3.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bt = trunc i64 %i.bj to i1
  br i1 %i.bt, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.bu = shl nuw nsw i64 %i.bm, 1
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NvYB16_NtNtBa_3cmp10PartialOrd2ltECs5JazJsyow1H_14otl_normalizer.exit

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.bq, label %bb.x, label %bb.w

bb.v:                                             ; preds = %bb.s
  %i.bv = or i64 %i.bk, 1
  %i.bw = tail call range(i64 2, 64) i64 @llvm.ctlz.i64(i64 %i.bv, i1 true)
  %i.bx = trunc nuw nsw i64 %i.bw to i32
  %i.by = shl nuw nsw i32 %i.bx, 1
  %i.bz = xor i32 %i.by, 126
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NvYB15_NtNtBa_3cmp10PartialOrd2ltECs5JazJsyow1H_14otl_normalizer(ptr noalias nofree noundef nonnull align 2 %i.bo, i64 noundef range(i64 0, 4611686018427387904) %i.bk, ptr noalias nofree noundef nonnull align 2 %2, i64 noundef range(i64 0, 4611686018427387904) %3, i32 noundef %i.bz, ptr noalias nofree noundef readonly align 2 captures(address, read_provenance) dereferenceable_or_null(2) null, ptr noalias nofree noundef nonnull %5) #16
  br label %bb.u

bb.w:                                             ; preds = %bb.u
  %i.ca = getelementptr inbounds nuw [2 x i8], ptr %i.bo, i64 %i.bk
  %i.cb = or i64 %i.bl, 1
  %i.cc = tail call range(i64 2, 64) i64 @llvm.ctlz.i64(i64 %i.cb, i1 true)
  %i.cd = trunc nuw nsw i64 %i.cc to i32
  %i.ce = shl nuw nsw i32 %i.cd, 1
  %i.cf = xor i32 %i.ce, 126
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NvYB15_NtNtBa_3cmp10PartialOrd2ltECs5JazJsyow1H_14otl_normalizer(ptr noalias nofree noundef nonnull align 2 %i.ca, i64 noundef range(i64 0, 4611686018427387904) %i.bl, ptr noalias nofree noundef nonnull align 2 %2, i64 noundef range(i64 0, 4611686018427387904) %3, i32 noundef %i.cf, ptr noalias nofree noundef readonly align 2 captures(address, read_provenance) dereferenceable_or_null(2) null, ptr noalias nofree noundef nonnull %5) #16
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.u
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5merge5mergeNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NvYBX_NtNtBa_3cmp10PartialOrd2ltECs5JazJsyow1H_14otl_normalizer(ptr noalias nofree noundef nonnull align 2 %i.bo, i64 noundef range(i64 0, 4611686018427387904) %i.bm, ptr noalias nofree noundef nonnull align 2 %2, i64 noundef range(i64 0, 4611686018427387904) %3, i64 noundef %i.bk, ptr noalias nofree noundef nonnull %5)
  %i.cg = shl nuw nsw i64 %i.bm, 1
  %i.ch = or disjoint i64 %i.cg, 1
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NvYB16_NtNtBa_3cmp10PartialOrd2ltECs5JazJsyow1H_14otl_normalizer.exit

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NvYB16_NtNtBa_3cmp10PartialOrd2ltECs5JazJsyow1H_14otl_normalizer.exit: ; preds = %bb.t, %bb.x
  %.sroa.0.0.i = phi i64 [ %i.ch, %bb.x ], [ %i.bu, %bb.t ] ; 2 uses
  %i.ci = icmp ugt i64 %i.bd, 1
  br i1 %i.ci, label %.lr.ph, label %._crit_edge

bb.y:                                             ; preds = %._crit_edge
  %i.cj = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.ck = lshr i64 %.sroa.018.0, 1
  %i.cl = add nuw nsw i64 %i.ck, %.sroa.09.0
  br label %bb.f

bb.z:                                             ; preds = %._crit_edge
  %i.cm = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.cm, 0
  br i1 %.not30, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.cn = or i64 %1, 1
  %i.co = tail call range(i64 2, 64) i64 @llvm.ctlz.i64(i64 %i.cn, i1 true)
  %i.cp = trunc nuw nsw i64 %i.co to i32
  %i.cq = shl nuw nsw i32 %i.cp, 1
  %i.cr = xor i32 %i.cq, 126
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NvYB15_NtNtBa_3cmp10PartialOrd2ltECs5JazJsyow1H_14otl_normalizer(ptr noalias nofree noundef nonnull align 2 %0, i64 noundef range(i64 0, 4611686018427387904) %1, ptr noalias nofree noundef nonnull align 2 %2, i64 noundef range(i64 0, 4611686018427387904) %3, i32 noundef %i.cr, ptr noalias nofree noundef readonly align 2 captures(address, read_provenance) dereferenceable_or_null(2) null, ptr noalias nofree noundef nonnull %5) #16
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.a, %bb.ab
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift4sortTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameENCINvMNtCsgCecv3eZDcN_5alloc5sliceSBW_7sort_byNCINvXs1o_NtNtNtB2D_11collections5btree3mapINtB3p_8BTreeMapBX_B1K_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBW_E9from_iterINtNtNtB4r_8adapters3map3MapINtNtNtBa_3ops5range5RangetENCNvMNtCs5JazJsyow1H_14otl_normalizer11glyph_namesNtB6h_7NameMap9from_fonts_0EE0E0EB6j_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 288230376151711744) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 288230376151711744) %3, i1 noundef zeroext %4, ptr noalias nofree noundef align 8 dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [66 x i8], align 1                ; 4 uses
  %i.b = alloca [528 x i8], align 8               ; 4 uses
  %i.c = icmp samesign ult i64 %1, 2
  br i1 %i.c, label %bb.ac, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = udiv i64 4611686018427387904, %1
  %i.e = urem i64 4611686018427387904, %1
  %.not = icmp ne i64 %i.e, 0
  %i.f = zext i1 %.not to i64
  %.sroa.0.0 = add nuw nsw i64 %i.d, %i.f         ; 2 uses
  %i.g = icmp samesign ult i64 %1, 4097
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %i.k, %bb.d ], [ %i.h, %bb.c ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %bb.f

bb.f:                                             ; preds = %bb.y, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.y ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.cf, %bb.y ] ; 6 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.cd, %bb.y ] ; 3 uses
  %i.l = icmp samesign ult i64 %.sroa.09.0, %1    ; 2 uses
  br i1 %i.l, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB13_7sort_byNCINvXs1o_NtNtNtB2K_11collections5btree3mapINtB3x_8BTreeMapB14_B1R_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB4A_8adapters3map3MapINtNtNtBa_3ops5range5RangetENCNvMNtCs5JazJsyow1H_14otl_normalizer11glyph_namesNtB6r_7NameMap9from_fonts_0EE0E0EB6t_.exit
  %.sroa.021.0 = phi i8 [ %i.aw, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB13_7sort_byNCINvXs1o_NtNtNtB2K_11collections5btree3mapINtB3x_8BTreeMapB14_B1R_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB4A_8adapters3map3MapINtNtNtBa_3ops5range5RangetENCNvMNtCs5JazJsyow1H_14otl_normalizer11glyph_namesNtB6r_7NameMap9from_fonts_0EE0E0EB6t_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB13_7sort_byNCINvXs1o_NtNtNtB2K_11collections5btree3mapINtB3x_8BTreeMapB14_B1R_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB4A_8adapters3map3MapINtNtNtBa_3ops5range5RangetENCNvMNtCs5JazJsyow1H_14otl_normalizer11glyph_namesNtB6r_7NameMap9from_fonts_0EE0E0EB6t_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.m = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.m, label %.lr.ph, label %._crit_edge

bb.h:                                             ; preds = %bb.f
  %i.n = sub nuw nsw i64 %1, %.sroa.09.0          ; 11 uses
  %i.o = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %.sroa.09.0 ; 7 uses
  %.not.i31 = icmp ult i64 %i.n, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB2J_11collections5btree3mapINtB3w_8BTreeMapB13_B1Q_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB4z_8adapters3map3MapINtNtNtB8_3ops5range5RangetENCNvMNtCs5JazJsyow1H_14otl_normalizer11glyph_namesNtB6q_7NameMap9from_fonts_0EE0E0EB6s_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.p = icmp samesign ult i64 %i.n, 2
  br i1 %i.p, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameE7reverseCs5JazJsyow1H_14otl_normalizer.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %.val7.i = load i16, ptr %i.q, align 8, !alias.scope !68, !noalias !69, !noundef !5 ; 3 uses
  %.val8.i = load i16, ptr %i.o, align 8, !alias.scope !68, !noalias !69, !noundef !5
  %i.r = icmp uge i16 %.val7.i, %.val8.i          ; 2 uses
  %.not28.i = icmp eq i64 %i.n, 2                 ; 2 uses
  br i1 %i.r, label %.preheader17.i, label %.preheader.i

.preheader17.i:                                   ; preds = %bb.k
  br i1 %.not28.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameE7reverseCs5JazJsyow1H_14otl_normalizer.exit.i, label %.lr.ph.i

.preheader.i:                                     ; preds = %bb.k
  br i1 %.not28.i, label %.lr.ph.preheader.i.i.i, label %.lr.ph23.i

.lr.ph.i:                                         ; preds = %.preheader17.i, %bb.l
  %.val6.i = phi i16 [ %.val5.i, %bb.l ], [ %.val7.i, %.preheader17.i ]
  %.sroa.01.0.i19.i = phi i64 [ %i.u, %bb.l ], [ 2, %.preheader17.i ] ; 3 uses
  %i.s = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %.sroa.01.0.i19.i
  %.val5.i = load i16, ptr %i.s, align 8, !alias.scope !68, !noalias !69, !noundef !5 ; 2 uses
  %i.t = icmp ult i16 %.val5.i, %.val6.i
  br i1 %i.t, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB2J_11collections5btree3mapINtB3w_8BTreeMapB13_B1Q_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB4z_8adapters3map3MapINtNtNtB8_3ops5range5RangetENCNvMNtCs5JazJsyow1H_14otl_normalizer11glyph_namesNtB6q_7NameMap9from_fonts_0EE0E0EB6s_.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i
  %i.u = add nuw nsw i64 %.sroa.01.0.i19.i, 1     ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.u, %i.n
  br i1 %exitcond.not.i, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB2J_11collections5btree3mapINtB3w_8BTreeMapB13_B1Q_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB4z_8adapters3map3MapINtNtNtB8_3ops5range5RangetENCNvMNtCs5JazJsyow1H_14otl_normalizer11glyph_namesNtB6q_7NameMap9from_fonts_0EE0E0EB6s_.exit.i, label %.lr.ph.i

.lr.ph23.i:                                       ; preds = %.preheader.i, %bb.m
  %.val4.i = phi i16 [ %.val.i, %bb.m ], [ %.val7.i, %.preheader.i ]
  %.sroa.01.1.i22.i = phi i64 [ %i.x, %bb.m ], [ 2, %.preheader.i ] ; 3 uses
  %i.v = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %.sroa.01.1.i22.i
  %.val.i = load i16, ptr %i.v, align 8, !alias.scope !68, !noalias !69, !noundef !5 ; 2 uses
  %i.w = icmp ult i16 %.val.i, %.val4.i
  br i1 %i.w, label %bb.m, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB2J_11collections5btree3mapINtB3w_8BTreeMapB13_B1Q_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB4z_8adapters3map3MapINtNtNtB8_3ops5range5RangetENCNvMNtCs5JazJsyow1H_14otl_normalizer11glyph_namesNtB6q_7NameMap9from_fonts_0EE0E0EB6s_.exit.i

bb.m:                                             ; preds = %.lr.ph23.i
  %i.x = add nuw nsw i64 %.sroa.01.1.i22.i, 1     ; 2 uses
  %exitcond31.not.i = icmp eq i64 %i.x, %i.n
  br i1 %exitcond31.not.i, label %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB2J_11collections5btree3mapINtB3w_8BTreeMapB13_B1Q_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB4z_8adapters3map3MapINtNtNtB8_3ops5range5RangetENCNvMNtCs5JazJsyow1H_14otl_normalizer11glyph_namesNtB6q_7NameMap9from_fonts_0EE0E0EB6s_.exit.i, label %.lr.ph23.i

_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB2J_11collections5btree3mapINtB3w_8BTreeMapB13_B1Q_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB4z_8adapters3map3MapINtNtNtB8_3ops5range5RangetENCNvMNtCs5JazJsyow1H_14otl_normalizer11glyph_namesNtB6q_7NameMap9from_fonts_0EE0E0EB6s_.exit.i: ; preds = %bb.m, %.lr.ph23.i, %bb.l, %.lr.ph.i
  %.sroa.0.0.i.i = phi i64 [ %i.n, %bb.l ], [ %.sroa.01.0.i19.i, %.lr.ph.i ], [ %.sroa.01.1.i22.i, %.lr.ph23.i ], [ %i.n, %bb.m ] ; 5 uses
  %i.y = icmp samesign ule i64 %.sroa.0.0.i.i, %i.n
  tail call void @llvm.assume(i1 %i.y)
  %.not3.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not3.i, label %bb.i, label %bb.n

bb.n:                                             ; preds = %_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort6shared17find_existing_runTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB12_7sort_byNCINvXs1o_NtNtNtB2J_11collections5btree3mapINtB3w_8BTreeMapB13_B1Q_EINtNtNtNtB8_4iter6traits7collect12FromIteratorB12_E9from_iterINtNtNtB4z_8adapters3map3MapINtNtNtB8_3ops5range5RangetENCNvMNtCs5JazJsyow1H_14otl_normalizer11glyph_namesNtB6q_7NameMap9from_fonts_0EE0E0EB6s_.exit.i
  %i.z = lshr i64 %.sroa.0.0.i.i, 1               ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.z, 0
  %or.cond.i = or i1 %i.r, %.not.i.i.i
  br i1 %or.cond.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameE7reverseCs5JazJsyow1H_14otl_normalizer.exit.i, label %.lr.ph.preheader.i.i.i

bb.o:                                             ; preds = %bb.i
  %i.aa = tail call i64 @llvm.umin.i64(i64 %.sroa.01.0, i64 range(i64 0, 288230376151711744) %i.n)
  %i.ab = shl nuw nsw i64 %i.aa, 1
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB13_7sort_byNCINvXs1o_NtNtNtB2K_11collections5btree3mapINtB3x_8BTreeMapB14_B1R_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB4A_8adapters3map3MapINtNtNtBa_3ops5range5RangetENCNvMNtCs5JazJsyow1H_14otl_normalizer11glyph_namesNtB6r_7NameMap9from_fonts_0EE0E0EB6t_.exit

bb.p:                                             ; preds = %bb.i
  %i.ac = tail call i64 @llvm.umin.i64(i64 range(i64 0, 288230376151711744) %i.n, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB15_7sort_byNCINvXs1o_NtNtNtB2M_11collections5btree3mapINtB3z_8BTreeMapB16_B1T_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB4C_8adapters3map3MapINtNtNtBa_3ops5range5RangetENCNvMNtCs5JazJsyow1H_14otl_normalizer11glyph_namesNtB6t_7NameMap9from_fonts_0EE0E0EB6v_(ptr noalias nofree noundef nonnull align 8 %i.o, i64 noundef %i.ac, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 288230376151711744) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #16
  %i.ad = shl nuw nsw i64 %i.ac, 1
  %i.ae = or disjoint i64 %i.ad, 1
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB13_7sort_byNCINvXs1o_NtNtNtB2K_11collections5btree3mapINtB3x_8BTreeMapB14_B1R_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB4A_8adapters3map3MapINtNtNtBa_3ops5range5RangetENCNvMNtCs5JazJsyow1H_14otl_normalizer11glyph_namesNtB6r_7NameMap9from_fonts_0EE0E0EB6t_.exit

_RNvMNtCsf3Ta7LF998c_4core5sliceSTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameE7reverseCs5JazJsyow1H_14otl_normalizer.exit.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEECs5JazJsyow1H_14otl_normalizer.exit.i.i.i, %.preheader17.i, %bb.n, %bb.j
  %.sroa.0.0.i14.i = phi i64 [ %i.n, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ 2, %.preheader17.i ], [ %.sroa.0.0.i435054.i, %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEECs5JazJsyow1H_14otl_normalizer.exit.i.i.i ]
  %i.af = shl nuw nsw i64 %.sroa.0.0.i14.i, 1
  %i.ag = or disjoint i64 %i.af, 1
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB13_7sort_byNCINvXs1o_NtNtNtB2K_11collections5btree3mapINtB3x_8BTreeMapB14_B1R_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB4A_8adapters3map3MapINtNtNtBa_3ops5range5RangetENCNvMNtCs5JazJsyow1H_14otl_normalizer11glyph_namesNtB6r_7NameMap9from_fonts_0EE0E0EB6t_.exit

.lr.ph.preheader.i.i.i:                           ; preds = %.preheader.i, %bb.n
  %i.ah = phi i64 [ %i.z, %bb.n ], [ 1, %.preheader.i ]
  %.sroa.0.0.i435054.i = phi i64 [ %.sroa.0.0.i.i, %bb.n ], [ 2, %.preheader.i ] ; 2 uses
  %i.ai = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %.sroa.0.0.i435054.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEECs5JazJsyow1H_14otl_normalizer.exit.i.i.i, %.lr.ph.preheader.i.i.i
  %.sroa.0.017.i.i.i = phi i64 [ %i.an, %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEECs5JazJsyow1H_14otl_normalizer.exit.i.i.i ], [ 0, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %i.aj = xor i64 %.sroa.0.017.i.i.i, -1
  %i.ak = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %.sroa.0.017.i.i.i
  %i.al = getelementptr [32 x i8], ptr %i.ai, i64 %i.aj
  invoke void @_RINvNvNtCsf3Ta7LF998c_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs5JazJsyow1H_14otl_normalizer(ptr noundef nonnull %i.ak, ptr noundef nonnull %i.al, i64 noundef 4)
          to label %_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEECs5JazJsyow1H_14otl_normalizer.exit.i.i.i unwind label %bb.q, !noalias !69

bb.q:                                             ; preds = %.lr.ph.i.i.i
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking19panic_cannot_unwind() #14, !noalias !69
  unreachable

_RINvNtCsf3Ta7LF998c_4core10intrinsics25typed_swap_nonoverlappingTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameEECs5JazJsyow1H_14otl_normalizer.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.an = add nuw nsw i64 %.sroa.0.017.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.an, %i.ah
  br i1 %exitcond.not.i.i.i, label %_RNvMNtCsf3Ta7LF998c_4core5sliceSTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameE7reverseCs5JazJsyow1H_14otl_normalizer.exit.i, label %.lr.ph.i.i.i

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift10create_runTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB13_7sort_byNCINvXs1o_NtNtNtB2K_11collections5btree3mapINtB3x_8BTreeMapB14_B1R_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB13_E9from_iterINtNtNtB4A_8adapters3map3MapINtNtNtBa_3ops5range5RangetENCNvMNtCs5JazJsyow1H_14otl_normalizer11glyph_namesNtB6r_7NameMap9from_fonts_0EE0E0EB6t_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCsf3Ta7LF998c_4core5sliceSTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameE7reverseCs5JazJsyow1H_14otl_normalizer.exit.i
  %.sroa.0.0.i32 = phi i64 [ %i.ag, %_RNvMNtCsf3Ta7LF998c_4core5sliceSTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameE7reverseCs5JazJsyow1H_14otl_normalizer.exit.i ], [ %i.ae, %bb.p ], [ %i.ab, %bb.o ] ; 2 uses
  %i.ao = lshr i64 %.sroa.023.0, 1
  %i.ap = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.aq = sub nsw i64 %factor, %i.ao
  %i.ar = add nuw i64 %i.ap, %factor
  %i.as = mul i64 %i.aq, %.sroa.0.0
  %i.at = mul i64 %i.ar, %.sroa.0.0
  %i.au = xor i64 %i.at, %i.as
  %i.av = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.au, i1 false)
  %i.aw = trunc nuw nsw i64 %i.av to i8
  br label %bb.g

.lr.ph:                                           ; preds = %bb.g, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_7sort_byNCINvXs1o_NtNtNtB2N_11collections5btree3mapINtB3A_8BTreeMapB17_B1U_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB4D_8adapters3map3MapINtNtNtBa_3ops5range5RangetENCNvMNtCs5JazJsyow1H_14otl_normalizer11glyph_namesNtB6u_7NameMap9from_fonts_0EE0E0EB6w_.exit
  %.sroa.02.136 = phi i64 [ %i.ax, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_7sort_byNCINvXs1o_NtNtNtB2N_11collections5btree3mapINtB3A_8BTreeMapB17_B1U_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB4D_8adapters3map3MapINtNtNtBa_3ops5range5RangetENCNvMNtCs5JazJsyow1H_14otl_normalizer11glyph_namesNtB6u_7NameMap9from_fonts_0EE0E0EB6w_.exit ], [ %.sroa.02.0, %bb.g ] ; 2 uses
  %.sroa.023.135 = phi i64 [ %.sroa.0.0.i, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_7sort_byNCINvXs1o_NtNtNtB2N_11collections5btree3mapINtB3A_8BTreeMapB17_B1U_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB4D_8adapters3map3MapINtNtNtBa_3ops5range5RangetENCNvMNtCs5JazJsyow1H_14otl_normalizer11glyph_namesNtB6u_7NameMap9from_fonts_0EE0E0EB6w_.exit ], [ %.sroa.023.0, %bb.g ] ; 4 uses
  %i.ax = add i64 %.sroa.02.136, -1               ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ax
  %i.az = load i8, ptr %i.ay, align 1, !noundef !5
  %.not28 = icmp ult i8 %i.az, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_7sort_byNCINvXs1o_NtNtNtB2N_11collections5btree3mapINtB3A_8BTreeMapB17_B1U_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB4D_8adapters3map3MapINtNtNtBa_3ops5range5RangetENCNvMNtCs5JazJsyow1H_14otl_normalizer11glyph_namesNtB6u_7NameMap9from_fonts_0EE0E0EB6w_.exit, %.lr.ph, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.135, %.lr.ph ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_7sort_byNCINvXs1o_NtNtNtB2N_11collections5btree3mapINtB3A_8BTreeMapB17_B1U_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB4D_8adapters3map3MapINtNtNtBa_3ops5range5RangetENCNvMNtCs5JazJsyow1H_14otl_normalizer11glyph_namesNtB6u_7NameMap9from_fonts_0EE0E0EB6w_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.136, %.lr.ph ], [ 1, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_7sort_byNCINvXs1o_NtNtNtB2N_11collections5btree3mapINtB3A_8BTreeMapB17_B1U_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB4D_8adapters3map3MapINtNtNtBa_3ops5range5RangetENCNvMNtCs5JazJsyow1H_14otl_normalizer11glyph_namesNtB6u_7NameMap9from_fonts_0EE0E0EB6w_.exit ] ; 3 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.ba, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.bb, align 1
  br i1 %i.l, label %bb.y, label %bb.z

bb.r:                                             ; preds = %.lr.ph
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ax
  %i.bd = load i64, ptr %i.bc, align 8, !noundef !5 ; 3 uses
  %i.be = lshr i64 %i.bd, 1                       ; 5 uses
  %i.bf = lshr i64 %.sroa.023.135, 1              ; 3 uses
  %i.bg = add nuw i64 %i.be, %i.bf                ; 5 uses
  %i.bh = sub i64 %.sroa.09.0, %i.bg
  %i.bi = getelementptr inbounds nuw [32 x i8], ptr %0, i64 %i.bh ; 3 uses
  %i.bj = icmp samesign ugt i64 %i.bg, %3
  %i.bk = trunc i64 %.sroa.023.135 to i1
  %i.bl = or i64 %i.bd, %.sroa.023.135
  %i.bm = trunc i64 %i.bl to i1
  %or.cond3.i = or i1 %i.bj, %i.bm
  br i1 %or.cond3.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bn = trunc i64 %i.bd to i1
  br i1 %i.bn, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.bo = shl nuw nsw i64 %i.bg, 1
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_7sort_byNCINvXs1o_NtNtNtB2N_11collections5btree3mapINtB3A_8BTreeMapB17_B1U_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB4D_8adapters3map3MapINtNtNtBa_3ops5range5RangetENCNvMNtCs5JazJsyow1H_14otl_normalizer11glyph_namesNtB6u_7NameMap9from_fonts_0EE0E0EB6w_.exit

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.bk, label %bb.x, label %bb.w

bb.v:                                             ; preds = %bb.s
  %i.bp = or i64 %i.be, 1
  %i.bq = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.bp, i1 true)
  %i.br = trunc nuw nsw i64 %i.bq to i32
  %i.bs = shl nuw nsw i32 %i.br, 1
  %i.bt = xor i32 %i.bs, 126
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB15_7sort_byNCINvXs1o_NtNtNtB2M_11collections5btree3mapINtB3z_8BTreeMapB16_B1T_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB4C_8adapters3map3MapINtNtNtBa_3ops5range5RangetENCNvMNtCs5JazJsyow1H_14otl_normalizer11glyph_namesNtB6t_7NameMap9from_fonts_0EE0E0EB6v_(ptr noalias nofree noundef nonnull align 8 %i.bi, i64 noundef range(i64 0, 288230376151711744) %i.be, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 288230376151711744) %3, i32 noundef %i.bt, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #16
  br label %bb.u

bb.w:                                             ; preds = %bb.u
  %i.bu = getelementptr inbounds nuw [32 x i8], ptr %i.bi, i64 %i.be
  %i.bv = or i64 %i.bf, 1
  %i.bw = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.bv, i1 true)
  %i.bx = trunc nuw nsw i64 %i.bw to i32
  %i.by = shl nuw nsw i32 %i.bx, 1
  %i.bz = xor i32 %i.by, 126
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB15_7sort_byNCINvXs1o_NtNtNtB2M_11collections5btree3mapINtB3z_8BTreeMapB16_B1T_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB4C_8adapters3map3MapINtNtNtBa_3ops5range5RangetENCNvMNtCs5JazJsyow1H_14otl_normalizer11glyph_namesNtB6t_7NameMap9from_fonts_0EE0E0EB6v_(ptr noalias nofree noundef nonnull align 8 %i.bu, i64 noundef range(i64 0, 288230376151711744) %i.bf, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 288230376151711744) %3, i32 noundef %i.bz, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #16
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.u
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5merge5mergeTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameENCINvMNtCsgCecv3eZDcN_5alloc5sliceSBX_7sort_byNCINvXs1o_NtNtNtB2E_11collections5btree3mapINtB3q_8BTreeMapBY_B1L_EINtNtNtNtBa_4iter6traits7collect12FromIteratorBX_E9from_iterINtNtNtB4s_8adapters3map3MapINtNtNtBa_3ops5range5RangetENCNvMNtCs5JazJsyow1H_14otl_normalizer11glyph_namesNtB6i_7NameMap9from_fonts_0EE0E0EB6k_(ptr noalias nofree noundef nonnull align 8 %i.bi, i64 noundef range(i64 0, 288230376151711744) %i.bg, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 288230376151711744) %3, i64 noundef %i.be, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5)
  %i.ca = shl nuw nsw i64 %i.bg, 1
  %i.cb = or disjoint i64 %i.ca, 1
  br label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_7sort_byNCINvXs1o_NtNtNtB2N_11collections5btree3mapINtB3A_8BTreeMapB17_B1U_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB4D_8adapters3map3MapINtNtNtBa_3ops5range5RangetENCNvMNtCs5JazJsyow1H_14otl_normalizer11glyph_namesNtB6u_7NameMap9from_fonts_0EE0E0EB6w_.exit

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable5drift13logical_mergeTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB16_7sort_byNCINvXs1o_NtNtNtB2N_11collections5btree3mapINtB3A_8BTreeMapB17_B1U_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB16_E9from_iterINtNtNtB4D_8adapters3map3MapINtNtNtBa_3ops5range5RangetENCNvMNtCs5JazJsyow1H_14otl_normalizer11glyph_namesNtB6u_7NameMap9from_fonts_0EE0E0EB6w_.exit: ; preds = %bb.t, %bb.x
  %.sroa.0.0.i = phi i64 [ %i.cb, %bb.x ], [ %i.bo, %bb.t ] ; 2 uses
  %i.cc = icmp ugt i64 %i.ax, 1
  br i1 %i.cc, label %.lr.ph, label %._crit_edge

bb.y:                                             ; preds = %._crit_edge
  %i.cd = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.ce = lshr i64 %.sroa.018.0, 1
  %i.cf = add nuw nsw i64 %i.ce, %.sroa.09.0
  br label %bb.f

bb.z:                                             ; preds = %._crit_edge
  %i.cg = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.cg, 0
  br i1 %.not30, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.ch = or i64 %1, 1
  %i.ci = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.ch, i1 true)
  %i.cj = trunc nuw nsw i64 %i.ci to i32
  %i.ck = shl nuw nsw i32 %i.cj, 1
  %i.cl = xor i32 %i.ck, 126
  tail call void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort6stable9quicksort9quicksortTNtNtCsbZq13ASDQ8l_10font_types8glyph_id9GlyphId16NtNtCsgdm2QMcbaeA_10fontdrasil5types9GlyphNameENCINvMNtCsgCecv3eZDcN_5alloc5sliceSB15_7sort_byNCINvXs1o_NtNtNtB2M_11collections5btree3mapINtB3z_8BTreeMapB16_B1T_EINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB4C_8adapters3map3MapINtNtNtBa_3ops5range5RangetENCNvMNtCs5JazJsyow1H_14otl_normalizer11glyph_namesNtB6t_7NameMap9from_fonts_0EE0E0EB6v_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 288230376151711744) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 288230376151711744) %3, i32 noundef %i.cl, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #16
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.a, %bb.ab
  ret void
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable8heapsort8heapsortINtNtCs5JazJsyow1H_14otl_normalizer6common10SingleRuleNtNtNtB1a_4gpos5marks18MarkAttachmentRuleENvYB15_NtNtBa_3cmp10PartialOrd2ltEB1a_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 76861433640456466) %1, ptr noalias nofree noundef nonnull readnone captures(none) %2) unnamed_addr #1 {
bb.a:
  %i.a = lshr i64 %1, 1
  %i.b = add nuw nsw i64 %i.a, %1                 ; 2 uses
  %.not11 = icmp eq i64 %i.b, 0
  br i1 %.not11, label %._crit_edge, label %.lr.ph13

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable8heapsort9sift_downINtNtCs5JazJsyow1H_14otl_normalizer6common10SingleRuleNtNtNtB1b_4gpos5marks18MarkAttachmentRuleENvYB16_NtNtBa_3cmp10PartialOrd2ltEB1b_.exit, %bb.a
  ret void

.lr.ph13:                                         ; preds = %bb.a, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable8heapsort9sift_downINtNtCs5JazJsyow1H_14otl_normalizer6common10SingleRuleNtNtNtB1b_4gpos5marks18MarkAttachmentRuleENvYB16_NtNtBa_3cmp10PartialOrd2ltEB1b_.exit
  %.sroa.2.012 = phi i64 [ %i.c, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable8heapsort9sift_downINtNtCs5JazJsyow1H_14otl_normalizer6common10SingleRuleNtNtNtB1b_4gpos5marks18MarkAttachmentRuleENvYB16_NtNtBa_3cmp10PartialOrd2ltEB1b_.exit ], [ %i.b, %bb.a ]
  %i.c = add nsw i64 %.sroa.2.012, -1             ; 6 uses
  %.not7 = icmp ult i64 %i.c, %1
  br i1 %.not7, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph13
  %i.d = sub nuw nsw i64 %i.c, %1
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph13
  tail call void @_RNvMNtCsf3Ta7LF998c_4core5sliceSINtNtCs5JazJsyow1H_14otl_normalizer6common10SingleRuleNtNtNtBz_4gpos5marks18MarkAttachmentRuleE14swap_uncheckedBz_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef %1, i64 noundef 0, i64 noundef %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.sroa.04.0 = phi i64 [ %i.d, %bb.b ], [ 0, %bb.c ] ; 3 uses
  %i.e = tail call i64 @llvm.umin.i64(i64 %i.c, i64 %1) ; 4 uses
  %i.f = icmp ule i64 %.sroa.04.0, %i.e
  tail call void @llvm.assume(i1 %i.f)
  %i.g = shl nuw nsw i64 %.sroa.04.0, 1           ; 2 uses
  %i.h = or disjoint i64 %i.g, 1                  ; 2 uses
  %.not.i8 = icmp samesign ult i64 %i.h, %i.e
  br i1 %.not.i8, label %.lr.ph, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable8heapsort9sift_downINtNtCs5JazJsyow1H_14otl_normalizer6common10SingleRuleNtNtNtB1b_4gpos5marks18MarkAttachmentRuleENvYB16_NtNtBa_3cmp10PartialOrd2ltEB1b_.exit

.lr.ph:                                           ; preds = %bb.d, %bb.g
  %i.i = phi i64 [ %i.v, %bb.g ], [ %i.h, %bb.d ] ; 3 uses
  %i.j = phi i64 [ %i.u, %bb.g ], [ %i.g, %bb.d ]
  %.sroa.0.0.i9 = phi i64 [ %.sroa.04.0.i, %bb.g ], [ %.sroa.04.0, %bb.d ]
  %i.k = add nuw nsw i64 %i.j, 2                  ; 2 uses
  %i.l = icmp samesign ult i64 %i.k, %i.e
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph
  %i.m = getelementptr inbounds nuw [120 x i8], ptr %0, i64 %i.i
  %i.n = getelementptr inbounds nuw [120 x i8], ptr %0, i64 %i.k
  %i.o = tail call fastcc noundef zeroext i1 @_RNvYNvYINtNtCs5JazJsyow1H_14otl_normalizer6common10SingleRuleNtNtNtBa_4gpos5marks18MarkAttachmentRuleENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB1G_3ops8function5FnMutTRB5_B2N_EE8call_mutBa_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.m, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.n) #17
  %i.p = zext i1 %i.o to i64
  %i.q = add nuw nsw i64 %i.i, %i.p
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph
  %.sroa.04.0.i = phi i64 [ %i.q, %bb.e ], [ %i.i, %.lr.ph ] ; 3 uses
  %i.r = getelementptr inbounds nuw [120 x i8], ptr %0, i64 %.sroa.0.0.i9 ; 2 uses
  %i.s = getelementptr inbounds nuw [120 x i8], ptr %0, i64 %.sroa.04.0.i ; 2 uses
  %i.t = tail call fastcc noundef zeroext i1 @_RNvYNvYINtNtCs5JazJsyow1H_14otl_normalizer6common10SingleRuleNtNtNtBa_4gpos5marks18MarkAttachmentRuleENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB1G_3ops8function5FnMutTRB5_B2N_EE8call_mutBa_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.r, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.s) #17
  br i1 %i.t, label %bb.g, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable8heapsort9sift_downINtNtCs5JazJsyow1H_14otl_normalizer6common10SingleRuleNtNtNtB1b_4gpos5marks18MarkAttachmentRuleENvYB16_NtNtBa_3cmp10PartialOrd2ltEB1b_.exit

bb.g:                                             ; preds = %bb.f
  tail call void @_RINvNvNtCsf3Ta7LF998c_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECs5JazJsyow1H_14otl_normalizer(ptr noundef nonnull %i.r, ptr noundef nonnull %i.s, i64 noundef 15)
  %i.u = shl nuw nsw i64 %.sroa.04.0.i, 1         ; 2 uses
  %i.v = or disjoint i64 %i.u, 1                  ; 2 uses
  %.not.i = icmp samesign ult i64 %i.v, %i.e
  br i1 %.not.i, label %.lr.ph, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable8heapsort9sift_downINtNtCs5JazJsyow1H_14otl_normalizer6common10SingleRuleNtNtNtB1b_4gpos5marks18MarkAttachmentRuleENvYB16_NtNtBa_3cmp10PartialOrd2ltEB1b_.exit

_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable8heapsort9sift_downINtNtCs5JazJsyow1H_14otl_normalizer6common10SingleRuleNtNtNtB1b_4gpos5marks18MarkAttachmentRuleENvYB16_NtNtBa_3cmp10PartialOrd2ltEB1b_.exit: ; preds = %bb.f, %bb.g, %bb.d
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph13
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable8heapsort8heapsortINtNtCs5JazJsyow1H_14otl_normalizer6common10SingleRuleNtNtNtB1a_4gpos7pairpos11PairPosRuleENvYB15_NtNtBa_3cmp10PartialOrd2ltEB1a_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 25063510969714065) %1, ptr noalias nofree noundef nonnull readnone captures(none) %2) unnamed_addr #1 {
bb.a:
  %i.a = lshr i64 %1, 1
  %i.b = add nuw nsw i64 %i.a, %1                 ; 2 uses
  %.not21 = icmp eq i64 %i.b, 0
  br i1 %.not21, label %._crit_edge, label %.lr.ph23

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable8heapsort9sift_downINtNtCs5JazJsyow1H_14otl_normalizer6common10SingleRuleNtNtNtB1b_4gpos7pairpos11PairPosRuleENvYB16_NtNtBa_3cmp10PartialOrd2ltEB1b_.exit, %bb.a
  ret void

.lr.ph23:                                         ; preds = %bb.a, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable8heapsort9sift_downINtNtCs5JazJsyow1H_14otl_normalizer6common10SingleRuleNtNtNtB1b_4gpos7pairpos11PairPosRuleENvYB16_NtNtBa_3cmp10PartialOrd2ltEB1b_.exit
  %.sroa.2.022 = phi i64 [ %i.c, %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable8heapsort9sift_downINtNtCs5JazJsyow1H_14otl_normalizer6common10SingleRuleNtNtNtB1b_4gpos7pairpos11PairPosRuleENvYB16_NtNtBa_3cmp10PartialOrd2ltEB1b_.exit ], [ %i.b, %bb.a ]
  %i.c = add nsw i64 %.sroa.2.022, -1             ; 6 uses
  %.not7 = icmp ult i64 %i.c, %1
  br i1 %.not7, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph23
  %i.d = sub nuw nsw i64 %i.c, %1
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph23
  tail call void @_RNvMNtCsf3Ta7LF998c_4core5sliceSINtNtCs5JazJsyow1H_14otl_normalizer6common10SingleRuleNtNtNtBz_4gpos7pairpos11PairPosRuleE14swap_uncheckedBz_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef %1, i64 noundef 0, i64 noundef %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.sroa.04.0 = phi i64 [ %i.d, %bb.b ], [ 0, %bb.c ] ; 3 uses
  %i.e = tail call i64 @llvm.umin.i64(i64 %i.c, i64 %1) ; 4 uses
  %i.f = icmp ule i64 %.sroa.04.0, %i.e
  tail call void @llvm.assume(i1 %i.f)
  %i.g = shl nuw nsw i64 %.sroa.04.0, 1           ; 2 uses
  %i.h = or disjoint i64 %i.g, 1                  ; 2 uses
  %.not.i18 = icmp samesign ult i64 %i.h, %i.e
  br i1 %.not.i18, label %.lr.ph, label %_RINvNtNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable8heapsort9sift_downINtNtCs5JazJsyow1H_14otl_normalizer6common10SingleRuleNtNtNtB1b_4gpos7pairpos11PairPosRuleENvYB16_NtNtBa_3cmp10PartialOrd2ltEB1b_.exit

.lr.ph:                                           ; preds = %bb.d, %bb.y
  %i.i = phi i64 [ %i.dg, %bb.y ], [ %i.h, %bb.d ] ; 3 uses
  %i.j = phi i64 [ %i.df, %bb.y ], [ %i.g, %bb.d ]
  %.sroa.0.0.i19 = phi i64 [ %.sroa.04.0.i, %bb.y ], [ %.sroa.04.0, %bb.d ]
  %i.k = add nuw nsw i64 %i.j, 2                  ; 2 uses
  %i.l = icmp samesign ult i64 %i.k, %i.e
  br i1 %i.l, label %bb.e, label %bb.o

bb.e:                                             ; preds = %.lr.ph
  %i.m = getelementptr inbounds nuw [368 x i8], ptr %0, i64 %i.i ; 7 uses
  %i.n = getelementptr inbounds nuw [368 x i8], ptr %0, i64 %i.k ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !106)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !107)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !108)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !109)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !110)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !111)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !112)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !113)
  %i.o = load i64, ptr %i.m, align 8, !range !6, !alias.scope !114, !noalias !115, !noundef !5
  %.not.i.i.i.i = icmp eq i64 %i.o, -3
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !114, !noalias !115, !nonnull !5, !align !7
  %.sroa.0.0.i.i.i.i = select i1 %.not.i.i.i.i, ptr %i.q, ptr %i.m ; 4 uses
  %i.r = load i64, ptr %i.n, align 8, !range !6, !alias.scope !115, !noalias !114, !noundef !5
  %.not2.i.i.i.i = icmp eq i64 %i.r, -3
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !115, !noalias !114, !nonnull !5, !align !7
  %.sroa.01.0.i.i.i.i = select i1 %.not2.i.i.i.i, ptr %i.t, ptr %i.n ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !116)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !117)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !118)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !119)
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 352
  %i.v = load i16, ptr %i.u, align 8, !alias.scope !120, !noalias !121, !noundef !5 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i.i, i64 352
  %i.x = load i16, ptr %i.w, align 8, !alias.scope !122, !noalias !123, !noundef !5 ; 2 uses
  %i.y = tail call i8 @llvm.ucmp.i8.i16(i16 %i.v, i16 %i.x)
  %i.z = icmp eq i16 %i.v, %i.x
  br i1 %i.z, label %bb.f, label %_RNvXs9_NtCsgCecv3eZDcN_5alloc6borrowINtB5_3CowNtNtNtCs5JazJsyow1H_14otl_normalizer4gpos7pairpos11PairPosRuleENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd11partial_cmpBO_.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 320
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i.i, i64 320
  %i.ac = tail call noundef i8 @_RNvXs5_NtCs5JazJsyow1H_14otl_normalizer6commonNtB5_8GlyphSetNtNtCsf3Ta7LF998c_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.aa, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ab) ; 2 uses
  %i.ad = icmp eq i8 %i.ac, 0
  br i1 %i.ad, label %bb.g, label %_RNvXs9_NtCsgCecv3eZDcN_5alloc6borrowINtB5_3CowNtNtNtCs5JazJsyow1H_14otl_normalizer4gpos7pairpos11PairPosRuleENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd11partial_cmpBO_.exit.i.i.i

bb.g:                                             ; preds = %bb.f
  %i.ae = tail call fastcc noundef i8 @_RNvXsk_NtCs5JazJsyow1H_14otl_normalizer4gposNtB5_19ResolvedValueRecordNtNtCsf3Ta7LF998c_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(360) %.sroa.0.0.i.i.i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(360) %.sroa.01.0.i.i.i.i) #17 ; 2 uses
  %i.af = icmp eq i8 %i.ae, 0
  br i1 %i.af, label %bb.h, label %_RNvXs9_NtCsgCecv3eZDcN_5alloc6borrowINtB5_3CowNtNtNtCs5JazJsyow1H_14otl_normalizer4gpos7pairpos11PairPosRuleENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd11partial_cmpBO_.exit.i.i.i

bb.h:                                             ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i, i64 160
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i.i, i64 160
  %i.ai = tail call fastcc noundef i8 @_RNvXsk_NtCs5JazJsyow1H_14otl_normalizer4gposNtB5_19ResolvedValueRecordNtNtCsf3Ta7LF998c_4core3cmp3Ord3cmp(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(160) %i.ag, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(160) %i.ah) #17
  br label %_RNvXs9_NtCsgCecv3eZDcN_5alloc6borrowINtB5_3CowNtNtNtCs5JazJsyow1H_14otl_normalizer4gpos7pairpos11PairPosRuleENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd11partial_cmpBO_.exit.i.i.i

_RNvXs9_NtCsgCecv3eZDcN_5alloc6borrowINtB5_3CowNtNtNtCs5JazJsyow1H_14otl_normalizer4gpos7pairpos11PairPosRuleENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd11partial_cmpBO_.exit.i.i.i: ; preds = %bb.h, %bb.g, %bb.f, %bb.e
  %.sroa.0.0.i.i.i.i.i.i = phi i8 [ %i.ai, %bb.h ], [ %i.ae, %bb.g ], [ %i.ac, %bb.f ], [ %i.y, %bb.e ] ; 2 uses
  %i.aj = icmp eq i8 %.sroa.0.0.i.i.i.i.i.i, 0
  br i1 %i.aj, label %bb.i, label %_RNvYNvYINtNtCs5JazJsyow1H_14otl_normalizer6common10SingleRuleNtNtNtBa_4gpos7pairpos11PairPosRuleENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd2ltINtNtNtB1B_3ops8function5FnMutTRB5_B2I_EE8call_mutBa_.exit

bb.i:                                             ; preds = %_RNvXs9_NtCsgCecv3eZDcN_5alloc6borrowINtB5_3CowNtNtNtCs5JazJsyow1H_14otl_normalizer4gpos7pairpos11PairPosRuleENtNtCsf3Ta7LF998c_4core3cmp10PartialOrd11partial_cmpBO_.exit.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.m, i64 364
  %i.al = load i16, ptr %i.ak, align 4, !alias.scope !124, !noalias !125, !noundef !5 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.n, i64 364
end_hunk_0
