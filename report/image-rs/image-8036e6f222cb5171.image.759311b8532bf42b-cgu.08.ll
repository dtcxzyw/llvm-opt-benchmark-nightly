Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/image-rs/original/image-8036e6f222cb5171.image.759311b8532bf42b-cgu.08?download=true
inline.NumInlined: 1824
inline.NumDeleted: 737
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5merge5mergeNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder18ExtendedXmpSegmentNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSBX_7sort_byNCNvMBZ_INtBZ_11JpegDecoderINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRINtNtB1Z_3vec3VechEEE23reassemble_extended_xmp0E0ECsa5QsYiPB8Gl_5image:bb.a
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a, %_RINvMNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder18ExtendedXmpSegmentE10merge_downNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB1a_7sort_byNCNvMB1c_INtB1c_11JpegDecoderINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRINtNtB2p_3vec3VechEEE23reassemble_extended_xmp0E0ECsa5QsYiPB8Gl_5image.exit
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5merge5mergeNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder18ExtendedXmpSegmentNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSBX_7sort_byNCNvMBZ_INtBZ_11JpegDecoderINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEE23reassemble_extended_xmp0E0ECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 captures(address) %0, i64 noundef range(i64 0, 164703072086692426) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 164703072086692426) %3, i64 noundef %4, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %5) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %4, 0
  %i.b = icmp uge i64 %4, %1
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = sub nuw nsw i64 %1, %4                   ; 2 uses
  %..i = tail call i64 @llvm.umin.i64(i64 %i.c, i64 %4) ; 2 uses
  %i.d = icmp samesign ult i64 %3, %..i
  br i1 %i.d, label %bb.c, label %.critedge

.critedge:                                        ; preds = %bb.b
  %i.e = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %4 ; 3 uses
  %i.f = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %1 ; 2 uses
  %.not = icmp samesign ugt i64 %4, %i.c          ; 2 uses
  %spec.select = select i1 %.not, ptr %i.e, ptr %0
  %i.g = mul nuw nsw i64 %..i, 56                 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %spec.select, i64 %i.g, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 %i.g ; 3 uses
  br i1 %.not, label %.preheader, label %.lr.ph.i

.preheader:                                       ; preds = %.critedge, %.preheader
  %i.i = phi ptr [ %i.u, %.preheader ], [ %i.h, %.critedge ] ; 2 uses
  %i.j = phi ptr [ %i.s, %.preheader ], [ %i.e, %.critedge ] ; 2 uses
  %.sroa.0.0.i = phi ptr [ %i.m, %.preheader ], [ %i.f, %.critedge ]
  %i.k = getelementptr inbounds i8, ptr %i.j, i64 -56 ; 2 uses
  %i.l = getelementptr inbounds i8, ptr %i.i, i64 -56 ; 2 uses
  %i.m = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -56 ; 2 uses
  %i.n = getelementptr i8, ptr %i.i, i64 -8
  %.val.i = load i32, ptr %i.n, align 8, !noalias !2775, !noundef !4
  %i.o = getelementptr i8, ptr %i.j, i64 -8
  %.val12.i = load i32, ptr %i.o, align 8, !noalias !2775, !noundef !4
  %i.p = icmp ult i32 %.val.i, %.val12.i          ; 3 uses
  %..i17 = select i1 %i.p, ptr %i.k, ptr %i.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.m, ptr noundef nonnull align 8 dereferenceable(56) %..i17, i64 56, i1 false), !noalias !2775
  %i.q = xor i1 %i.p, true
  %i.r = zext i1 %i.q to i64
  %i.s = getelementptr inbounds nuw [56 x i8], ptr %i.k, i64 %i.r ; 3 uses
  %i.t = zext i1 %i.p to i64
  %i.u = getelementptr inbounds nuw [56 x i8], ptr %i.l, i64 %i.t ; 3 uses
  %i.v = icmp eq ptr %i.s, %0
  %i.w = icmp eq ptr %i.u, %2
  %or.cond.i = select i1 %i.v, i1 true, i1 %i.w
  br i1 %or.cond.i, label %_RINvMNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder18ExtendedXmpSegmentE10merge_downNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB1a_7sort_byNCNvMB1c_INtB1c_11JpegDecoderINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEE23reassemble_extended_xmp0E0ECsa5QsYiPB8Gl_5image.exit, label %.preheader

.lr.ph.i:                                         ; preds = %.critedge, %.lr.ph.i
  %i.x = phi ptr [ %i.ah, %.lr.ph.i ], [ %0, %.critedge ] ; 2 uses
  %.sroa.0.02.i = phi ptr [ %i.ag, %.lr.ph.i ], [ %i.e, %.critedge ] ; 3 uses
  %i.y = phi ptr [ %i.ae, %.lr.ph.i ], [ %2, %.critedge ] ; 3 uses
  %i.z = getelementptr i8, ptr %.sroa.0.02.i, i64 48
  %.sroa.0.0.val.i = load i32, ptr %i.z, align 8, !noalias !2778, !noundef !4
  %i.aa = getelementptr i8, ptr %i.y, i64 48
  %.val.i19 = load i32, ptr %i.aa, align 8, !noalias !2778, !noundef !4
  %i.ab = icmp ult i32 %.sroa.0.0.val.i, %.val.i19 ; 3 uses
  %i.ac = xor i1 %i.ab, true
  %.sroa.05.0.i = select i1 %i.ab, ptr %.sroa.0.02.i, ptr %i.y
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.x, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.05.0.i, i64 56, i1 false), !noalias !2778
  %i.ad = zext i1 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [56 x i8], ptr %i.y, i64 %i.ad ; 3 uses
  %i.af = zext i1 %i.ab to i64
  %i.ag = getelementptr inbounds nuw [56 x i8], ptr %.sroa.0.02.i, i64 %i.af ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.x, i64 56 ; 2 uses
  %i.ai = icmp ne ptr %i.ae, %i.h
  %i.aj = icmp ne ptr %i.ag, %i.f
  %or.cond.i20 = select i1 %i.ai, i1 %i.aj, i1 false
  br i1 %or.cond.i20, label %.lr.ph.i, label %_RINvMNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder18ExtendedXmpSegmentE10merge_downNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB1a_7sort_byNCNvMB1c_INtB1c_11JpegDecoderINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEE23reassemble_extended_xmp0E0ECsa5QsYiPB8Gl_5image.exit

_RINvMNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder18ExtendedXmpSegmentE10merge_downNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB1a_7sort_byNCNvMB1c_INtB1c_11JpegDecoderINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEE23reassemble_extended_xmp0E0ECsa5QsYiPB8Gl_5image.exit: ; preds = %.lr.ph.i, %.preheader
  %.sroa.13.0 = phi ptr [ %i.s, %.preheader ], [ %i.ah, %.lr.ph.i ]
  %.sroa.7.0 = phi ptr [ %i.u, %.preheader ], [ %i.h, %.lr.ph.i ]
  %.sroa.0.0 = phi ptr [ %2, %.preheader ], [ %i.ae, %.lr.ph.i ] ; 2 uses
  %i.ak = ptrtoint ptr %.sroa.7.0 to i64
  %i.al = ptrtoint ptr %.sroa.0.0 to i64
  %i.am = sub nuw i64 %i.ak, %i.al
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.0, ptr align 8 %.sroa.0.0, i64 %i.am, i1 false), !noalias !2781
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a, %_RINvMNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder18ExtendedXmpSegmentE10merge_downNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB1a_7sort_byNCNvMB1c_INtB1c_11JpegDecoderINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEE23reassemble_extended_xmp0E0ECsa5QsYiPB8Gl_5image.exit
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5merge5mergeNtNtNtCsa5QsYiPB8Gl_5image6images4flat3DimNvYBX_NtNtBa_3cmp10PartialOrd2ltEB13_(ptr noalias nofree noundef nonnull align 8 captures(address) %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i64 noundef %4, ptr noalias nofree noundef nonnull readnone captures(none) %5) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %4, 0
  %i.b = icmp uge i64 %4, %1
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = sub nuw nsw i64 %1, %4                   ; 2 uses
  %..i = tail call i64 @llvm.umin.i64(i64 %i.c, i64 %4) ; 2 uses
  %i.d = icmp samesign ult i64 %3, %..i
  br i1 %i.d, label %bb.c, label %.critedge

.critedge:                                        ; preds = %bb.b
  %i.e = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %4 ; 3 uses
  %i.f = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %1 ; 2 uses
  %.not = icmp samesign ugt i64 %4, %i.c          ; 2 uses
  %spec.select = select i1 %.not, ptr %i.e, ptr %0
  %i.g = shl nuw nsw i64 %..i, 4                  ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr nonnull align 8 %spec.select, i64 %i.g, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 %i.g ; 3 uses
  br i1 %.not, label %.preheader, label %.lr.ph.i

.preheader:                                       ; preds = %.critedge, %.preheader
  %i.i = phi ptr [ %i.x, %.preheader ], [ %i.h, %.critedge ] ; 2 uses
  %i.j = phi ptr [ %i.v, %.preheader ], [ %i.e, %.critedge ] ; 2 uses
  %.sroa.0.0.i = phi ptr [ %i.m, %.preheader ], [ %i.f, %.critedge ]
  %i.k = getelementptr inbounds i8, ptr %i.j, i64 -16 ; 3 uses
  %i.l = getelementptr inbounds i8, ptr %i.i, i64 -16 ; 3 uses
  %i.m = getelementptr inbounds i8, ptr %.sroa.0.0.i, i64 -16 ; 2 uses
  %.val.i = load i64, ptr %i.l, align 8, !noalias !2786, !noundef !4 ; 2 uses
  %i.n = getelementptr i8, ptr %i.i, i64 -8
  %.val12.i = load i64, ptr %i.n, align 8, !noalias !2786
  %.val13.i = load i64, ptr %i.k, align 8, !noalias !2786, !noundef !4 ; 2 uses
  %i.o = getelementptr i8, ptr %i.j, i64 -8
  %.val14.i = load i64, ptr %i.o, align 8, !noalias !2786
  %i.p = icmp eq i64 %.val.i, %.val13.i
  %i.q = icmp ult i64 %.val12.i, %.val14.i
  %i.r = icmp ult i64 %.val.i, %.val13.i
  %i.s = select i1 %i.p, i1 %i.q, i1 %i.r         ; 3 uses
  %..i17 = select i1 %i.s, ptr %i.k, ptr %i.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 8 dereferenceable(16) %..i17, i64 16, i1 false), !noalias !2786
  %i.t = xor i1 %i.s, true
  %i.u = zext i1 %i.t to i64
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %i.k, i64 %i.u ; 3 uses
  %i.w = zext i1 %i.s to i64
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %i.w ; 3 uses
  %i.y = icmp eq ptr %i.v, %0
  %i.z = icmp eq ptr %i.x, %2
  %or.cond.i = select i1 %i.y, i1 true, i1 %i.z
  br i1 %or.cond.i, label %_RINvMNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtNtCsa5QsYiPB8Gl_5image6images4flat3DimE10merge_downNvYB1a_NtNtBb_3cmp10PartialOrd2ltEB1g_.exit, label %.preheader

.lr.ph.i:                                         ; preds = %.critedge, %.lr.ph.i
  %i.aa = phi ptr [ %i.an, %.lr.ph.i ], [ %0, %.critedge ] ; 2 uses
  %.sroa.0.02.i = phi ptr [ %i.am, %.lr.ph.i ], [ %i.e, %.critedge ] ; 4 uses
  %i.ab = phi ptr [ %i.ak, %.lr.ph.i ], [ %2, %.critedge ] ; 4 uses
  %.sroa.0.0.val.i = load i64, ptr %.sroa.0.02.i, align 8, !noalias !2789, !noundef !4 ; 2 uses
  %i.ac = getelementptr i8, ptr %.sroa.0.02.i, i64 8
  %.sroa.0.0.val6.i = load i64, ptr %i.ac, align 8, !noalias !2789
  %.val.i19 = load i64, ptr %i.ab, align 8, !noalias !2789, !noundef !4 ; 2 uses
  %i.ad = getelementptr i8, ptr %i.ab, i64 8
  %.val7.i = load i64, ptr %i.ad, align 8, !noalias !2789
  %i.ae = icmp eq i64 %.sroa.0.0.val.i, %.val.i19
  %i.af = icmp ult i64 %.sroa.0.0.val6.i, %.val7.i
  %i.ag = icmp ult i64 %.sroa.0.0.val.i, %.val.i19
  %i.ah = select i1 %i.ae, i1 %i.af, i1 %i.ag     ; 3 uses
  %i.ai = xor i1 %i.ah, true
  %.sroa.05.0.i = select i1 %i.ah, ptr %.sroa.0.02.i, ptr %i.ab
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.05.0.i, i64 16, i1 false), !noalias !2789
  %i.aj = zext i1 %i.ai to i64
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %i.ab, i64 %i.aj ; 3 uses
  %i.al = zext i1 %i.ah to i64
  %i.am = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.02.i, i64 %i.al ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.aa, i64 16 ; 2 uses
  %i.ao = icmp ne ptr %i.ak, %i.h
  %i.ap = icmp ne ptr %i.am, %i.f
  %or.cond.i20 = select i1 %i.ao, i1 %i.ap, i1 false
  br i1 %or.cond.i20, label %.lr.ph.i, label %_RINvMNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtNtCsa5QsYiPB8Gl_5image6images4flat3DimE10merge_downNvYB1a_NtNtBb_3cmp10PartialOrd2ltEB1g_.exit

_RINvMNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtNtCsa5QsYiPB8Gl_5image6images4flat3DimE10merge_downNvYB1a_NtNtBb_3cmp10PartialOrd2ltEB1g_.exit: ; preds = %.lr.ph.i, %.preheader
  %.sroa.13.0 = phi ptr [ %i.v, %.preheader ], [ %i.an, %.lr.ph.i ]
  %.sroa.7.0 = phi ptr [ %i.x, %.preheader ], [ %i.h, %.lr.ph.i ]
  %.sroa.0.0 = phi ptr [ %2, %.preheader ], [ %i.ak, %.lr.ph.i ] ; 2 uses
  %i.aq = ptrtoint ptr %.sroa.7.0 to i64
  %i.ar = ptrtoint ptr %.sroa.0.0 to i64
  %i.as = sub nuw i64 %i.aq, %i.ar
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.13.0, ptr align 8 %.sroa.0.0, i64 %i.as, i1 false), !noalias !2792
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a, %_RINvMNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5mergeINtB3_10MergeStateNtNtNtCsa5QsYiPB8Gl_5image6images4flat3DimE10merge_downNvYB1a_NtNtBb_3cmp10PartialOrd2ltEB1g_.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i64 } @_RINvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters3revINtB5_3RevINtNtNtBb_3ops5range5RangejEENtNtNtB9_6traits8iterator8Iterator8try_foldjNCINvNtB7_3map12map_try_foldjINtNtB7_3zip3ZipINtB2c_3MapIBX_hENCNCINvNtCsa5QsYiPB8Gl_5image5utils13expand_packedNCNvMsO_NtNtB3g_6images6bufferINtB43_11ImageBufferINtNtB3g_5color4LumahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE14expand_palette0E00EINtNtNtB9_7sources6repeat6RepeatjEEjINtNtB11_12control_flow11ControlFlowujENCB3b_0NCINvNvMsg_NtB7_7flattenINtB7v_13FlattenCompatppE13iter_try_fold7flattenB2A_jB6A_INvNvXsi_B7v_B7I_B1p_10advance_by7advanceB2A_EE0E0B6A_EB3g_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val = load ptr, ptr %i.a, align 8             ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val1 = load ptr, ptr %i.b, align 8            ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2797)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = load i64, ptr %0, align 8, !alias.scope !2800, !noalias !2807, !noundef !4 ; 3 uses
  %.promoted.i = load i64, ptr %i.c, align 8, !alias.scope !2809 ; 2 uses
  %i.e = icmp ult i64 %i.d, %.promoted.i
  br i1 %i.e, label %.lr.ph.i, label %_RINvYINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangejENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfoldjNCINvNtNtBR_8adapters3map12map_try_foldjINtNtB1Z_3zip3ZipINtB1X_3MapIB4_hENCNCINvNtCsa5QsYiPB8Gl_5image5utils13expand_packedNCNvMsO_NtNtB3d_6images6bufferINtB40_11ImageBufferINtNtB3d_5color4LumahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE14expand_palette0E00EINtNtNtBR_7sources6repeat6RepeatjEEjINtNtB8_12control_flow11ControlFlowujENCB38_0NCINvNvMsg_NtB1Z_7flattenINtB7r_13FlattenCompatppE13iter_try_fold7flattenB2w_jB6x_INvNvXsi_B7r_B7F_NtNtBP_8iterator8Iterator10advance_by7advanceB2w_EE0E0B6x_EB3d_.exit

.lr.ph.i:                                         ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1) ]
  %.sroa.3.sroa.4.0..8.val.sroa_idx.i.i.a = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 2 uses
  %.sroa.3.sroa.5.0..8.val.sroa_idx.i.i.a = getelementptr inbounds nuw i8, ptr %.val, i64 9
  %.sroa.3.sroa.7.0..8.val.sroa_idx.i.i.a = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %.sroa.3.sroa.8.0..8.val.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.val, i64 24
  br label %bb.b

.loopexit.i:                                      ; preds = %.preheader.i.i
  %i.f = icmp ult i64 %i.d, %i.h
  br i1 %i.f, label %bb.b, label %.loopexit7.sink.split.i

bb.b:                                             ; preds = %.loopexit.i, %.lr.ph.i
  %.sroa.01.09.i = phi i64 [ %1, %.lr.ph.i ], [ %.sroa.01.0.i.i.i.i.i.i.i.i, %.loopexit.i ] ; 2 uses
  %i.g = phi i64 [ %.promoted.i, %.lr.ph.i ], [ %i.h, %.loopexit.i ]
  %i.h = add i64 %i.g, -1                         ; 6 uses
  %.val.i.i = load ptr, ptr %.val1, align 8, !noalias !2797, !nonnull !4, !noundef !4 ; 2 uses
  %i.i = load i8, ptr %.val.i.i, align 1, !noalias !2810, !noundef !4 ; 2 uses
  %i.j = icmp eq i8 %i.i, 0
  br i1 %i.j, label %bb.c, label %_RNCINvNtCsa5QsYiPB8Gl_5image5utils13expand_packedNCNvMsO_NtNtB6_6images6bufferINtBT_11ImageBufferINtNtB6_5color4LumahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE14expand_palette0E0B6_.exit.i.i

bb.c:                                             ; preds = %bb.b
  store i64 %i.h, ptr %i.c, align 8, !alias.scope !2809
  tail call void @_RNvNtNtCsj6eKBz9Db1c_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @132) #20, !noalias !2810
  unreachable

_RNCINvNtCsa5QsYiPB8Gl_5image5utils13expand_packedNCNvMsO_NtNtB6_6images6bufferINtBT_11ImageBufferINtNtB6_5color4LumahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE14expand_palette0E0B6_.exit.i.i: ; preds = %bb.b
  %i.k = udiv i8 8, %i.i                          ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  store ptr %.val.i.i, ptr %.val, align 8, !alias.scope !2813, !noalias !2797
  store i8 0, ptr %.sroa.3.sroa.4.0..8.val.sroa_idx.i.i.a, align 8, !alias.scope !2813, !noalias !2797
  store i8 %i.k, ptr %.sroa.3.sroa.5.0..8.val.sroa_idx.i.i.a, align 1, !alias.scope !2813, !noalias !2797
  store i64 %i.h, ptr %.sroa.3.sroa.7.0..8.val.sroa_idx.i.i.a, align 8, !alias.scope !2813, !noalias !2797
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3.sroa.8.0..8.val.sroa_idx.i.i, i8 0, i64 16, i1 false), !noalias !2797
  %.not.i.i.i.i.i.i.i = icmp eq i64 %.sroa.01.09.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %.loopexit7.sink.split.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %_RNCINvNtCsa5QsYiPB8Gl_5image5utils13expand_packedNCNvMsO_NtNtB6_6images6bufferINtBT_11ImageBufferINtNtB6_5color4LumahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE14expand_palette0E0B6_.exit.i.i, %bb.d
  %i.l = phi i8 [ %i.m, %bb.d ], [ 0, %_RNCINvNtCsa5QsYiPB8Gl_5image5utils13expand_packedNCNvMsO_NtNtB6_6images6bufferINtBT_11ImageBufferINtNtB6_5color4LumahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE14expand_palette0E0B6_.exit.i.i ] ; 2 uses
  %.sroa.01.0.i.i.i.i.i.i.i.i = phi i64 [ %i.n, %bb.d ], [ %.sroa.01.09.i, %_RNCINvNtCsa5QsYiPB8Gl_5image5utils13expand_packedNCNvMsO_NtNtB6_6images6bufferINtBT_11ImageBufferINtNtB6_5color4LumahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE14expand_palette0E0B6_.exit.i.i ] ; 3 uses
  %exitcond.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.l, %i.k
  br i1 %exitcond.not.i.i.i.i.i.i.i.i, label %.loopexit.i, label %bb.d

bb.d:                                             ; preds = %.preheader.i.i
  %i.m = add nuw nsw i8 %i.l, 1                   ; 2 uses
  store i8 %i.m, ptr %.sroa.3.sroa.4.0..8.val.sroa_idx.i.i.a, align 8, !alias.scope !2817, !noalias !2838
  %i.n = add i64 %.sroa.01.0.i.i.i.i.i.i.i.i, -1  ; 2 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %.loopexit7.sink.split.i, label %.preheader.i.i

.loopexit7.sink.split.i:                          ; preds = %_RNCINvNtCsa5QsYiPB8Gl_5image5utils13expand_packedNCNvMsO_NtNtB6_6images6bufferINtBT_11ImageBufferINtNtB6_5color4LumahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE14expand_palette0E0B6_.exit.i.i, %.loopexit.i, %bb.d
  %.lcssa25.sink.i = phi i64 [ %i.h, %bb.d ], [ %i.h, %_RNCINvNtCsa5QsYiPB8Gl_5image5utils13expand_packedNCNvMsO_NtNtB6_6images6bufferINtBT_11ImageBufferINtNtB6_5color4LumahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE14expand_palette0E0B6_.exit.i.i ], [ %i.d, %.loopexit.i ]
  %.sroa.3.0.ph.i = phi i64 [ undef, %bb.d ], [ undef, %_RNCINvNtCsa5QsYiPB8Gl_5image5utils13expand_packedNCNvMsO_NtNtB6_6images6bufferINtBT_11ImageBufferINtNtB6_5color4LumahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE14expand_palette0E0B6_.exit.i.i ], [ %.sroa.01.0.i.i.i.i.i.i.i.i, %.loopexit.i ]
  %.sroa.0.0.ph.i = phi i64 [ 1, %bb.d ], [ 1, %_RNCINvNtCsa5QsYiPB8Gl_5image5utils13expand_packedNCNvMsO_NtNtB6_6images6bufferINtBT_11ImageBufferINtNtB6_5color4LumahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE14expand_palette0E0B6_.exit.i.i ], [ 0, %.loopexit.i ]
  store i64 %.lcssa25.sink.i, ptr %i.c, align 8, !alias.scope !2809
  br label %_RINvYINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangejENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfoldjNCINvNtNtBR_8adapters3map12map_try_foldjINtNtB1Z_3zip3ZipINtB1X_3MapIB4_hENCNCINvNtCsa5QsYiPB8Gl_5image5utils13expand_packedNCNvMsO_NtNtB3d_6images6bufferINtB40_11ImageBufferINtNtB3d_5color4LumahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE14expand_palette0E00EINtNtNtBR_7sources6repeat6RepeatjEEjINtNtB8_12control_flow11ControlFlowujENCB38_0NCINvNvMsg_NtB1Z_7flattenINtB7r_13FlattenCompatppE13iter_try_fold7flattenB2w_jB6x_INvNvXsi_B7r_B7F_NtNtBP_8iterator8Iterator10advance_by7advanceB2w_EE0E0B6x_EB3d_.exit

_RINvYINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangejENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator9try_rfoldjNCINvNtNtBR_8adapters3map12map_try_foldjINtNtB1Z_3zip3ZipINtB1X_3MapIB4_hENCNCINvNtCsa5QsYiPB8Gl_5image5utils13expand_packedNCNvMsO_NtNtB3d_6images6bufferINtB40_11ImageBufferINtNtB3d_5color4LumahEINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE14expand_palette0E00EINtNtNtBR_7sources6repeat6RepeatjEEjINtNtB8_12control_flow11ControlFlowujENCB38_0NCINvNvMsg_NtB1Z_7flattenINtB7r_13FlattenCompatppE13iter_try_fold7flattenB2w_jB6x_INvNvXsi_B7r_B7F_NtNtBP_8iterator8Iterator10advance_by7advanceB2w_EE0E0B6x_EB3d_.exit: ; preds = %bb.a, %.loopexit7.sink.split.i
  %.sroa.3.0.i = phi i64 [ %1, %bb.a ], [ %.sroa.3.0.ph.i, %.loopexit7.sink.split.i ]
  %.sroa.0.0.i = phi i64 [ 0, %bb.a ], [ %.sroa.0.0.ph.i, %.loopexit7.sink.split.i ]
  %i.p = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.i, 0
  %i.q = insertvalue { i64, i64 } %i.p, i64 %.sroa.3.0.i, 1
  ret { i64, i64 } %i.q
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RINvXsc_NtNtCsa5QsYiPB8Gl_5image6traits7privatehNtB6_21HelpDispatchTransform12transform_onINtNtBa_5color3RgbhEEBa_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(792) %0, i8 noundef range(i8 0, 4) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RINvMs7_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpINtB6_13RgbTransformshE16select_transformINtNtBa_5color3RgbhEEBa_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %0, i8 noundef %1) ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !4, !align !237, !noundef !4 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load i64, ptr %i.e, align 8, !range !2723, !invariant.load !4
  %i.g = add nsw i64 %i.f, -1
  %i.h = and i64 %i.g, -16
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = insertvalue { ptr, ptr } poison, ptr %i.j, 0
  %i.l = insertvalue { ptr, ptr } %i.k, ptr %i.d, 1
  ret { ptr, ptr } %i.l
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RINvXsc_NtNtCsa5QsYiPB8Gl_5image6traits7privatehNtB6_21HelpDispatchTransform12transform_onINtNtBa_5color4RgbahEEBa_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(792) %0, i8 noundef range(i8 0, 4) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RINvMs7_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpINtB6_13RgbTransformshE16select_transformINtNtBa_5color4RgbahEEBa_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %0, i8 noundef %1) ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !4, !align !237, !noundef !4 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load i64, ptr %i.e, align 8, !range !2723, !invariant.load !4
  %i.g = add nsw i64 %i.f, -1
  %i.h = and i64 %i.g, -16
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = insertvalue { ptr, ptr } poison, ptr %i.j, 0
  %i.l = insertvalue { ptr, ptr } %i.k, ptr %i.d, 1
  ret { ptr, ptr } %i.l
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RINvXsd_NtNtCsa5QsYiPB8Gl_5image6traits7privatetNtB6_21HelpDispatchTransform12transform_onINtNtBa_5color3RgbtEEBa_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(792) %0, i8 noundef range(i8 0, 4) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.b = tail call noundef nonnull align 8 ptr @_RINvMs7_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpINtB6_13RgbTransformstE16select_transformINtNtBa_5color3RgbtEEBa_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %i.a, i8 noundef %1) ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !4, !align !237, !noundef !4 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load i64, ptr %i.f, align 8, !range !2723, !invariant.load !4
  %i.h = add nsw i64 %i.g, -1
  %i.i = and i64 %i.h, -16
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = insertvalue { ptr, ptr } poison, ptr %i.k, 0
  %i.m = insertvalue { ptr, ptr } %i.l, ptr %i.e, 1
  ret { ptr, ptr } %i.m
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RINvXsd_NtNtCsa5QsYiPB8Gl_5image6traits7privatetNtB6_21HelpDispatchTransform12transform_onINtNtBa_5color4RgbatEEBa_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(792) %0, i8 noundef range(i8 0, 4) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.b = tail call noundef nonnull align 8 ptr @_RINvMs7_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpINtB6_13RgbTransformstE16select_transformINtNtBa_5color4RgbatEEBa_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %i.a, i8 noundef %1) ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !4, !align !237, !noundef !4 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load i64, ptr %i.f, align 8, !range !2723, !invariant.load !4
  %i.h = add nsw i64 %i.g, -1
  %i.i = and i64 %i.h, -16
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = insertvalue { ptr, ptr } poison, ptr %i.k, 0
  %i.m = insertvalue { ptr, ptr } %i.l, ptr %i.e, 1
  ret { ptr, ptr } %i.m
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RINvXse_NtNtCsa5QsYiPB8Gl_5image6traits7privatefNtB6_21HelpDispatchTransform12transform_onINtNtBa_5color3RgbfEEBa_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(792) %0, i8 noundef range(i8 0, 4) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.b = tail call noundef nonnull align 8 ptr @_RINvMs7_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpINtB6_13RgbTransformsfE16select_transformINtNtBa_5color3RgbfEEBa_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %i.a, i8 noundef %1) ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !4, !align !237, !noundef !4 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load i64, ptr %i.f, align 8, !range !2723, !invariant.load !4
  %i.h = add nsw i64 %i.g, -1
  %i.i = and i64 %i.h, -16
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = insertvalue { ptr, ptr } poison, ptr %i.k, 0
  %i.m = insertvalue { ptr, ptr } %i.l, ptr %i.e, 1
  ret { ptr, ptr } %i.m
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RINvXse_NtNtCsa5QsYiPB8Gl_5image6traits7privatefNtB6_21HelpDispatchTransform12transform_onINtNtBa_5color4RgbafEEBa_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(792) %0, i8 noundef range(i8 0, 4) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.b = tail call noundef nonnull align 8 ptr @_RINvMs7_NtNtCsa5QsYiPB8Gl_5image8metadata4cicpINtB6_13RgbTransformsfE16select_transformINtNtBa_5color4RgbafEEBa_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(256) %i.a, i8 noundef %1) ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !4, !align !237, !noundef !4 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load i64, ptr %i.f, align 8, !range !2723, !invariant.load !4
  %i.h = add nsw i64 %i.g, -1
  %i.i = and i64 %i.h, -16
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = insertvalue { ptr, ptr } poison, ptr %i.k, 0
  %i.m = insertvalue { ptr, ptr } %i.l, ptr %i.e, 1
  ret { ptr, ptr } %i.m
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYINtNtNtCsa5QsYiPB8Gl_5image6images6buffer11ImageBufferINtNtBa_5color3RgbfEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEENtNtB8_13generic_image12GenericImage9copy_fromB3_EBa_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 4                 ; 4 uses
  %i.c = alloca [8 x i8], align 4                 ; 4 uses
  %i.d = alloca [16 x i8], align 4                ; 8 uses
  %i.e = alloca [64 x i8], align 8                ; 6 uses
  %i.f = alloca [72 x i8], align 8                ; 7 uses
  %i.g = alloca [72 x i8], align 8                ; 11 uses
  %i.h = alloca [12 x i8], align 4                ; 5 uses
  %i.i = alloca [16 x i8], align 4                ; 8 uses
  %i.j = alloca [64 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2843)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !2846
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2846
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2848)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2851)
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.l = load i32, ptr %i.k, align 8, !alias.scope !2853, !noalias !2854, !noundef !4 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.n = load i32, ptr %i.m, align 4, !alias.scope !2853, !noalias !2854, !noundef !4 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  call void @_RNvMNtNtCsa5QsYiPB8Gl_5image6images4flatNtB2_12SampleLayout16row_major_packed(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.o, i8 noundef 3, i32 noundef %i.l, i32 noundef %i.n), !noalias !2855
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val.i.i = load ptr, ptr %i.p, align 8, !alias.scope !2853, !noalias !2854, !nonnull !4, !noundef !4 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val1.i.i = load i64, ptr %i.q, align 8, !alias.scope !2853, !noalias !2854, !noundef !4 ; 4 uses
  store ptr %.val.i.i, ptr %i.f, align 8, !alias.scope !2848, !noalias !2855
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %.val1.i.i, ptr %i.r, align 8, !alias.scope !2848, !noalias !2855
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  store i8 -1, ptr %i.s, align 8, !alias.scope !2848, !noalias !2855
  call void @_RINvMs0_NtNtCsa5QsYiPB8Gl_5image6images4flatINtB6_11FlatSamplesRSfE9into_viewINtNtBa_5color3RgbfEEBa_(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(72) %i.f), !noalias !2846
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2846
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.u = load i8, ptr %i.t, align 8, !range !2856, !noalias !2846, !noundef !4
  %i.v = icmp eq i8 %i.u, -2
  br i1 %i.v, label %bb.x, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.0.sroa.0.0.copyload = load ptr, ptr %i.g, align 8, !noalias !2843 ; 3 uses
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.0.sroa.5.0.copyload = load i64, ptr %.sroa.0.sroa.5.0..sroa_idx, align 8, !noalias !2843 ; 8 uses
  %.sroa.0.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %.sroa.0.sroa.7.0.copyload = load i32, ptr %.sroa.0.sroa.7.0..sroa_idx, align 8, !noalias !2843 ; 3 uses
  %.sroa.0.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %.sroa.0.sroa.9.0.copyload = load i64, ptr %.sroa.0.sroa.9.0..sroa_idx, align 8, !noalias !2843 ; 2 uses
  %.sroa.0.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %.sroa.0.sroa.10.0.copyload = load i32, ptr %.sroa.0.sroa.10.0..sroa_idx, align 8, !noalias !2843 ; 3 uses
  %.sroa.0.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %.sroa.0.sroa.12.0.copyload = load i64, ptr %.sroa.0.sroa.12.0..sroa_idx, align 8, !noalias !2843 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !2846
  call void @llvm.experimental.noalias.scope.decl(metadata !2857)
  call void @llvm.experimental.noalias.scope.decl(metadata !2860)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2862
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2862
  store i32 %3, ptr %i.d, align 4, !noalias !2862
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  store i32 %4, ptr %i.w, align 4, !noalias !2862
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i32 %.sroa.0.sroa.7.0.copyload, ptr %i.x, align 4, !noalias !2862
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  store i32 %.sroa.0.sroa.10.0.copyload, ptr %i.y, align 4, !noalias !2862
  call void @_RINvMNtNtCsa5QsYiPB8Gl_5image4math4rectNtB3_4Rect14test_in_boundsINtNtNtB7_6images6buffer11ImageBufferINtNtB7_5color3RgbfEINtNtCs4wP2HXfJTCR_5alloc3vec3VecfEEEB7_(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.e, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %1), !noalias !2864
  %i.z = load i8, ptr %i.e, align 8, !range !236, !noalias !2862, !noundef !4
  %.not.i = icmp eq i8 %i.z, -1
  br i1 %.not.i, label %bb.d, label %bb.c

end_hunk_0
