Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/image-rs/original/image-8036e6f222cb5171.image.759311b8532bf42b-cgu.04?download=true
inline.NumInlined: 1825
inline.NumDeleted: 1039
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift4sortNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder18ExtendedXmpSegmentNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSBW_7sort_byNCNvMBY_INtBY_11JpegDecoderINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtB1Y_3vec3VechEEE23reassemble_extended_xmp0E0ECsa5QsYiPB8Gl_5image:bb.a
  %i.m = sub nuw nsw i64 %1, %.sroa.09.0          ; 11 uses
  %i.n = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %.sroa.09.0 ; 7 uses
  %.not.i31 = icmp ult i64 %i.m, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder18ExtendedXmpSegmentNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_7sort_byNCNvMB14_INtB14_11JpegDecoderINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtB24_3vec3VechEEE23reassemble_extended_xmp0E0ECsa5QsYiPB8Gl_5image.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.o = icmp samesign ult i64 %i.m, 2
  br i1 %i.o, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder18ExtendedXmpSegment7reverseCsa5QsYiPB8Gl_5image.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.p = getelementptr i8, ptr %i.n, i64 104
  %.val10.i = load i32, ptr %i.p, align 8, !alias.scope !307, !noalias !308, !noundef !7 ; 3 uses
  %i.q = getelementptr i8, ptr %i.n, i64 48
  %.val11.i = load i32, ptr %i.q, align 8, !alias.scope !307, !noalias !308, !noundef !7
  %i.r = icmp uge i32 %.val10.i, %.val11.i        ; 2 uses
  %.not32.i = icmp eq i64 %i.m, 2                 ; 2 uses
  br i1 %i.r, label %.preheader21.i, label %.preheader.i

.preheader21.i:                                   ; preds = %bb.k
  br i1 %.not32.i, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder18ExtendedXmpSegment7reverseCsa5QsYiPB8Gl_5image.exit.i, label %.lr.ph.i

.preheader.i:                                     ; preds = %bb.k
  br i1 %.not32.i, label %.lr.ph.preheader.i.i.i, label %.lr.ph27.i

.lr.ph.i:                                         ; preds = %.preheader21.i, %bb.l
  %.val9.i = phi i32 [ %.val8.i, %bb.l ], [ %.val10.i, %.preheader21.i ]
  %.sroa.01.0.i23.i = phi i64 [ %i.v, %bb.l ], [ 2, %.preheader21.i ] ; 3 uses
  %i.s = getelementptr inbounds nuw [56 x i8], ptr %i.n, i64 %.sroa.01.0.i23.i
  %i.t = getelementptr i8, ptr %i.s, i64 48
  %.val8.i = load i32, ptr %i.t, align 8, !alias.scope !307, !noalias !308, !noundef !7 ; 2 uses
  %i.u = icmp ult i32 %.val8.i, %.val9.i
  br i1 %i.u, label %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder18ExtendedXmpSegmentNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_7sort_byNCNvMB14_INtB14_11JpegDecoderINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtB24_3vec3VechEEE23reassemble_extended_xmp0E0ECsa5QsYiPB8Gl_5image.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i
  %i.v = add nuw nsw i64 %.sroa.01.0.i23.i, 1     ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.v, %i.m
  br i1 %exitcond.not.i, label %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder18ExtendedXmpSegmentNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_7sort_byNCNvMB14_INtB14_11JpegDecoderINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtB24_3vec3VechEEE23reassemble_extended_xmp0E0ECsa5QsYiPB8Gl_5image.exit.i, label %.lr.ph.i

.lr.ph27.i:                                       ; preds = %.preheader.i, %bb.m
  %.val7.i = phi i32 [ %.val.i, %bb.m ], [ %.val10.i, %.preheader.i ]
  %.sroa.01.1.i26.i = phi i64 [ %i.z, %bb.m ], [ 2, %.preheader.i ] ; 3 uses
  %i.w = getelementptr inbounds nuw [56 x i8], ptr %i.n, i64 %.sroa.01.1.i26.i
  %i.x = getelementptr i8, ptr %i.w, i64 48
  %.val.i = load i32, ptr %i.x, align 8, !alias.scope !307, !noalias !308, !noundef !7 ; 2 uses
  %i.y = icmp ult i32 %.val.i, %.val7.i
  br i1 %i.y, label %bb.m, label %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder18ExtendedXmpSegmentNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_7sort_byNCNvMB14_INtB14_11JpegDecoderINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtB24_3vec3VechEEE23reassemble_extended_xmp0E0ECsa5QsYiPB8Gl_5image.exit.i

bb.m:                                             ; preds = %.lr.ph27.i
  %i.z = add nuw nsw i64 %.sroa.01.1.i26.i, 1     ; 2 uses
  %exitcond35.not.i = icmp eq i64 %i.z, %i.m
  br i1 %exitcond35.not.i, label %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder18ExtendedXmpSegmentNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_7sort_byNCNvMB14_INtB14_11JpegDecoderINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtB24_3vec3VechEEE23reassemble_extended_xmp0E0ECsa5QsYiPB8Gl_5image.exit.i, label %.lr.ph27.i

_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder18ExtendedXmpSegmentNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_7sort_byNCNvMB14_INtB14_11JpegDecoderINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtB24_3vec3VechEEE23reassemble_extended_xmp0E0ECsa5QsYiPB8Gl_5image.exit.i: ; preds = %bb.m, %.lr.ph27.i, %bb.l, %.lr.ph.i
  %.sroa.0.0.i.i = phi i64 [ %i.m, %bb.l ], [ %.sroa.01.0.i23.i, %.lr.ph.i ], [ %.sroa.01.1.i26.i, %.lr.ph27.i ], [ %i.m, %bb.m ] ; 5 uses
  %i.aa = icmp samesign ule i64 %.sroa.0.0.i.i, %i.m
  tail call void @llvm.assume(i1 %i.aa)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

bb.n:                                             ; preds = %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder18ExtendedXmpSegmentNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_7sort_byNCNvMB14_INtB14_11JpegDecoderINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtB24_3vec3VechEEE23reassemble_extended_xmp0E0ECsa5QsYiPB8Gl_5image.exit.i
  %i.ab = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.ab, 0
  %or.cond.i = or i1 %i.r, %.not.i.i.i
  br i1 %or.cond.i, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder18ExtendedXmpSegment7reverseCsa5QsYiPB8Gl_5image.exit.i, label %.lr.ph.preheader.i.i.i

bb.o:                                             ; preds = %bb.i
  %..i.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 164703072086692426) %i.m, i64 %.sroa.01.0)
  %i.ac = shl nuw nsw i64 %..i.i, 1
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift10create_runNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder18ExtendedXmpSegmentNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB13_7sort_byNCNvMB15_INtB15_11JpegDecoderINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtB25_3vec3VechEEE23reassemble_extended_xmp0E0ECsa5QsYiPB8Gl_5image.exit

bb.p:                                             ; preds = %bb.i
  %..i12.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 164703072086692426) %i.m, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort9quicksortNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder18ExtendedXmpSegmentNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB15_7sort_byNCNvMB17_INtB17_11JpegDecoderINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtB27_3vec3VechEEE23reassemble_extended_xmp0E0ECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 %i.n, i64 noundef %..i12.i, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 164703072086692426) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(56) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #27
  %i.ad = shl nuw nsw i64 %..i12.i, 1
  %i.ae = or disjoint i64 %i.ad, 1
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift10create_runNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder18ExtendedXmpSegmentNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB13_7sort_byNCNvMB15_INtB15_11JpegDecoderINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtB25_3vec3VechEEE23reassemble_extended_xmp0E0ECsa5QsYiPB8Gl_5image.exit

_RNvMNtCsj6eKBz9Db1c_4core5sliceSNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder18ExtendedXmpSegment7reverseCsa5QsYiPB8Gl_5image.exit.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core10intrinsics25typed_swap_nonoverlappingNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder18ExtendedXmpSegmentECsa5QsYiPB8Gl_5image.exit.i.i.i, %.preheader21.i, %bb.n, %bb.j
  %.sroa.0.0.i18.i = phi i64 [ %i.m, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ 2, %.preheader21.i ], [ %.sroa.0.0.i495660.i, %_RINvNtCsj6eKBz9Db1c_4core10intrinsics25typed_swap_nonoverlappingNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder18ExtendedXmpSegmentECsa5QsYiPB8Gl_5image.exit.i.i.i ]
  %i.af = shl nuw nsw i64 %.sroa.0.0.i18.i, 1
  %i.ag = or disjoint i64 %i.af, 1
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift10create_runNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder18ExtendedXmpSegmentNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB13_7sort_byNCNvMB15_INtB15_11JpegDecoderINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtB25_3vec3VechEEE23reassemble_extended_xmp0E0ECsa5QsYiPB8Gl_5image.exit

.lr.ph.preheader.i.i.i:                           ; preds = %.preheader.i, %bb.n
  %i.ah = phi i64 [ %i.ab, %bb.n ], [ 1, %.preheader.i ]
  %.sroa.0.0.i495660.i = phi i64 [ %.sroa.0.0.i.i, %bb.n ], [ 2, %.preheader.i ] ; 2 uses
  %i.ai = getelementptr inbounds nuw [56 x i8], ptr %i.n, i64 %.sroa.0.0.i495660.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RINvNtCsj6eKBz9Db1c_4core10intrinsics25typed_swap_nonoverlappingNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder18ExtendedXmpSegmentECsa5QsYiPB8Gl_5image.exit.i.i.i, %.lr.ph.preheader.i.i.i
  %.sroa.0.017.i.i.i = phi i64 [ %i.an, %_RINvNtCsj6eKBz9Db1c_4core10intrinsics25typed_swap_nonoverlappingNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder18ExtendedXmpSegmentECsa5QsYiPB8Gl_5image.exit.i.i.i ], [ 0, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %i.aj = xor i64 %.sroa.0.017.i.i.i, -1
  %i.ak = getelementptr inbounds nuw [56 x i8], ptr %i.n, i64 %.sroa.0.017.i.i.i
  %i.al = getelementptr [56 x i8], ptr %i.ai, i64 %i.aj
  invoke void @_RINvNvNtCsj6eKBz9Db1c_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsa5QsYiPB8Gl_5image(ptr noundef nonnull %i.ak, ptr noundef nonnull %i.al, i64 noundef 7)
          to label %_RINvNtCsj6eKBz9Db1c_4core10intrinsics25typed_swap_nonoverlappingNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder18ExtendedXmpSegmentECsa5QsYiPB8Gl_5image.exit.i.i.i unwind label %bb.q, !noalias !308

bb.q:                                             ; preds = %.lr.ph.i.i.i
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking19panic_cannot_unwind() #29, !noalias !308
  unreachable

_RINvNtCsj6eKBz9Db1c_4core10intrinsics25typed_swap_nonoverlappingNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder18ExtendedXmpSegmentECsa5QsYiPB8Gl_5image.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.an = add nuw nsw i64 %.sroa.0.017.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.an, %i.ah
  br i1 %exitcond.not.i.i.i, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder18ExtendedXmpSegment7reverseCsa5QsYiPB8Gl_5image.exit.i, label %.lr.ph.i.i.i

_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift10create_runNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder18ExtendedXmpSegmentNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB13_7sort_byNCNvMB15_INtB15_11JpegDecoderINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtB25_3vec3VechEEE23reassemble_extended_xmp0E0ECsa5QsYiPB8Gl_5image.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder18ExtendedXmpSegment7reverseCsa5QsYiPB8Gl_5image.exit.i
  %.sroa.0.0.i32 = phi i64 [ %i.ag, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder18ExtendedXmpSegment7reverseCsa5QsYiPB8Gl_5image.exit.i ], [ %i.ae, %bb.p ], [ %i.ac, %bb.o ] ; 2 uses
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

.lr.ph:                                           ; preds = %bb.g, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder18ExtendedXmpSegmentNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB16_7sort_byNCNvMB18_INtB18_11JpegDecoderINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtB28_3vec3VechEEE23reassemble_extended_xmp0E0ECsa5QsYiPB8Gl_5image.exit
  %.sroa.02.136 = phi i64 [ %i.ax, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder18ExtendedXmpSegmentNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB16_7sort_byNCNvMB18_INtB18_11JpegDecoderINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtB28_3vec3VechEEE23reassemble_extended_xmp0E0ECsa5QsYiPB8Gl_5image.exit ], [ %.sroa.02.0, %bb.g ] ; 2 uses
  %.sroa.023.135 = phi i64 [ %.sroa.0.0.i, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder18ExtendedXmpSegmentNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB16_7sort_byNCNvMB18_INtB18_11JpegDecoderINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtB28_3vec3VechEEE23reassemble_extended_xmp0E0ECsa5QsYiPB8Gl_5image.exit ], [ %.sroa.023.0, %bb.g ] ; 4 uses
  %i.ax = add i64 %.sroa.02.136, -1               ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ax
  %i.az = load i8, ptr %i.ay, align 1, !noundef !7
  %.not28 = icmp ult i8 %i.az, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder18ExtendedXmpSegmentNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB16_7sort_byNCNvMB18_INtB18_11JpegDecoderINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtB28_3vec3VechEEE23reassemble_extended_xmp0E0ECsa5QsYiPB8Gl_5image.exit, %.lr.ph, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.135, %.lr.ph ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder18ExtendedXmpSegmentNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB16_7sort_byNCNvMB18_INtB18_11JpegDecoderINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtB28_3vec3VechEEE23reassemble_extended_xmp0E0ECsa5QsYiPB8Gl_5image.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.136, %.lr.ph ], [ 1, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder18ExtendedXmpSegmentNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB16_7sort_byNCNvMB18_INtB18_11JpegDecoderINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtB28_3vec3VechEEE23reassemble_extended_xmp0E0ECsa5QsYiPB8Gl_5image.exit ] ; 3 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.ba, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.bb, align 1
  br i1 %i.k, label %bb.y, label %bb.z

bb.r:                                             ; preds = %.lr.ph
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ax
  %i.bd = load i64, ptr %i.bc, align 8, !noundef !7 ; 3 uses
  %i.be = lshr i64 %i.bd, 1                       ; 5 uses
  %i.bf = lshr i64 %.sroa.023.135, 1              ; 3 uses
  %i.bg = add nuw i64 %i.be, %i.bf                ; 5 uses
  %i.bh = sub i64 %.sroa.09.0, %i.bg
  %i.bi = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %i.bh ; 3 uses
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
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder18ExtendedXmpSegmentNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB16_7sort_byNCNvMB18_INtB18_11JpegDecoderINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtB28_3vec3VechEEE23reassemble_extended_xmp0E0ECsa5QsYiPB8Gl_5image.exit

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.bk, label %bb.x, label %bb.w

bb.v:                                             ; preds = %bb.s
  %i.bp = or i64 %i.be, 1
  %i.bq = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.bp, i1 true)
  %i.br = trunc nuw nsw i64 %i.bq to i32
  %i.bs = shl nuw nsw i32 %i.br, 1
  %i.bt = xor i32 %i.bs, 126
  tail call void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort9quicksortNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder18ExtendedXmpSegmentNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB15_7sort_byNCNvMB17_INtB17_11JpegDecoderINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtB27_3vec3VechEEE23reassemble_extended_xmp0E0ECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 %i.bi, i64 noundef range(i64 0, 164703072086692426) %i.be, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 164703072086692426) %3, i32 noundef %i.bt, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(56) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #27
  br label %bb.u

bb.w:                                             ; preds = %bb.u
  %i.bu = getelementptr inbounds nuw [56 x i8], ptr %i.bi, i64 %i.be
  %i.bv = or i64 %i.bf, 1
  %i.bw = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.bv, i1 true)
  %i.bx = trunc nuw nsw i64 %i.bw to i32
  %i.by = shl nuw nsw i32 %i.bx, 1
  %i.bz = xor i32 %i.by, 126
  tail call void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort9quicksortNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder18ExtendedXmpSegmentNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB15_7sort_byNCNvMB17_INtB17_11JpegDecoderINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtB27_3vec3VechEEE23reassemble_extended_xmp0E0ECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 %i.bu, i64 noundef range(i64 0, 164703072086692426) %i.bf, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 164703072086692426) %3, i32 noundef %i.bz, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(56) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #27
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.u
  tail call void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5merge5mergeNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder18ExtendedXmpSegmentNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSBX_7sort_byNCNvMBZ_INtBZ_11JpegDecoderINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtB1Z_3vec3VechEEE23reassemble_extended_xmp0E0ECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 %i.bi, i64 noundef range(i64 0, 164703072086692426) %i.bg, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 164703072086692426) %3, i64 noundef %i.be, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5)
  %i.ca = shl nuw nsw i64 %i.bg, 1
  %i.cb = or disjoint i64 %i.ca, 1
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder18ExtendedXmpSegmentNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB16_7sort_byNCNvMB18_INtB18_11JpegDecoderINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtB28_3vec3VechEEE23reassemble_extended_xmp0E0ECsa5QsYiPB8Gl_5image.exit

_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder18ExtendedXmpSegmentNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB16_7sort_byNCNvMB18_INtB18_11JpegDecoderINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtB28_3vec3VechEEE23reassemble_extended_xmp0E0ECsa5QsYiPB8Gl_5image.exit: ; preds = %bb.t, %bb.x
  %.sroa.0.0.i = phi i64 [ %i.cb, %bb.x ], [ %i.bo, %bb.t ] ; 2 uses
  %i.cc = icmp ugt i64 %i.ax, 1
  br i1 %i.cc, label %.lr.ph, label %._crit_edge

bb.y:                                             ; preds = %._crit_edge
  %i.cd = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.ce = lshr i64 %.sroa.018.0, 1
  %i.cf = add nuw i64 %i.ce, %.sroa.09.0
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
  tail call void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort9quicksortNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder18ExtendedXmpSegmentNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB15_7sort_byNCNvMB17_INtB17_11JpegDecoderINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorINtNtB27_3vec3VechEEE23reassemble_extended_xmp0E0ECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 164703072086692426) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 164703072086692426) %3, i32 noundef %i.cl, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(56) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #27
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.a, %bb.ab
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift4sortNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder18ExtendedXmpSegmentNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSBW_7sort_byNCNvMBY_INtBY_11JpegDecoderINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRINtNtB1Y_3vec3VechEEE23reassemble_extended_xmp0E0ECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 164703072086692426) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 164703072086692426) %3, i1 noundef zeroext %4, ptr noalias nofree noundef align 8 dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %..i, %bb.d ], [ %i.h, %bb.c ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %bb.f

bb.f:                                             ; preds = %bb.y, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.y ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.cf, %bb.y ] ; 6 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.cd, %bb.y ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift10create_runNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder18ExtendedXmpSegmentNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB13_7sort_byNCNvMB15_INtB15_11JpegDecoderINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRINtNtB25_3vec3VechEEE23reassemble_extended_xmp0E0ECsa5QsYiPB8Gl_5image.exit
  %.sroa.021.0 = phi i8 [ %i.aw, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift10create_runNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder18ExtendedXmpSegmentNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB13_7sort_byNCNvMB15_INtB15_11JpegDecoderINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRINtNtB25_3vec3VechEEE23reassemble_extended_xmp0E0ECsa5QsYiPB8Gl_5image.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift10create_runNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder18ExtendedXmpSegmentNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB13_7sort_byNCNvMB15_INtB15_11JpegDecoderINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRINtNtB25_3vec3VechEEE23reassemble_extended_xmp0E0ECsa5QsYiPB8Gl_5image.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph, label %._crit_edge

bb.h:                                             ; preds = %bb.f
  %i.m = sub nuw nsw i64 %1, %.sroa.09.0          ; 11 uses
  %i.n = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %.sroa.09.0 ; 7 uses
  %.not.i31 = icmp ult i64 %i.m, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder18ExtendedXmpSegmentNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_7sort_byNCNvMB14_INtB14_11JpegDecoderINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRINtNtB24_3vec3VechEEE23reassemble_extended_xmp0E0ECsa5QsYiPB8Gl_5image.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.o = icmp samesign ult i64 %i.m, 2
  br i1 %i.o, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder18ExtendedXmpSegment7reverseCsa5QsYiPB8Gl_5image.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.p = getelementptr i8, ptr %i.n, i64 104
  %.val10.i = load i32, ptr %i.p, align 8, !alias.scope !313, !noalias !314, !noundef !7 ; 3 uses
  %i.q = getelementptr i8, ptr %i.n, i64 48
  %.val11.i = load i32, ptr %i.q, align 8, !alias.scope !313, !noalias !314, !noundef !7
  %i.r = icmp uge i32 %.val10.i, %.val11.i        ; 2 uses
  %.not32.i = icmp eq i64 %i.m, 2                 ; 2 uses
  br i1 %i.r, label %.preheader21.i, label %.preheader.i

.preheader21.i:                                   ; preds = %bb.k
  br i1 %.not32.i, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder18ExtendedXmpSegment7reverseCsa5QsYiPB8Gl_5image.exit.i, label %.lr.ph.i

.preheader.i:                                     ; preds = %bb.k
  br i1 %.not32.i, label %.lr.ph.preheader.i.i.i, label %.lr.ph27.i

.lr.ph.i:                                         ; preds = %.preheader21.i, %bb.l
  %.val9.i = phi i32 [ %.val8.i, %bb.l ], [ %.val10.i, %.preheader21.i ]
  %.sroa.01.0.i23.i = phi i64 [ %i.v, %bb.l ], [ 2, %.preheader21.i ] ; 3 uses
  %i.s = getelementptr inbounds nuw [56 x i8], ptr %i.n, i64 %.sroa.01.0.i23.i
  %i.t = getelementptr i8, ptr %i.s, i64 48
  %.val8.i = load i32, ptr %i.t, align 8, !alias.scope !313, !noalias !314, !noundef !7 ; 2 uses
  %i.u = icmp ult i32 %.val8.i, %.val9.i
  br i1 %i.u, label %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder18ExtendedXmpSegmentNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_7sort_byNCNvMB14_INtB14_11JpegDecoderINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRINtNtB24_3vec3VechEEE23reassemble_extended_xmp0E0ECsa5QsYiPB8Gl_5image.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i
  %i.v = add nuw nsw i64 %.sroa.01.0.i23.i, 1     ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.v, %i.m
  br i1 %exitcond.not.i, label %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder18ExtendedXmpSegmentNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_7sort_byNCNvMB14_INtB14_11JpegDecoderINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRINtNtB24_3vec3VechEEE23reassemble_extended_xmp0E0ECsa5QsYiPB8Gl_5image.exit.i, label %.lr.ph.i

.lr.ph27.i:                                       ; preds = %.preheader.i, %bb.m
  %.val7.i = phi i32 [ %.val.i, %bb.m ], [ %.val10.i, %.preheader.i ]
  %.sroa.01.1.i26.i = phi i64 [ %i.z, %bb.m ], [ 2, %.preheader.i ] ; 3 uses
  %i.w = getelementptr inbounds nuw [56 x i8], ptr %i.n, i64 %.sroa.01.1.i26.i
  %i.x = getelementptr i8, ptr %i.w, i64 48
  %.val.i = load i32, ptr %i.x, align 8, !alias.scope !313, !noalias !314, !noundef !7 ; 2 uses
  %i.y = icmp ult i32 %.val.i, %.val7.i
  br i1 %i.y, label %bb.m, label %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder18ExtendedXmpSegmentNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_7sort_byNCNvMB14_INtB14_11JpegDecoderINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRINtNtB24_3vec3VechEEE23reassemble_extended_xmp0E0ECsa5QsYiPB8Gl_5image.exit.i

bb.m:                                             ; preds = %.lr.ph27.i
  %i.z = add nuw nsw i64 %.sroa.01.1.i26.i, 1     ; 2 uses
  %exitcond35.not.i = icmp eq i64 %i.z, %i.m
  br i1 %exitcond35.not.i, label %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder18ExtendedXmpSegmentNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_7sort_byNCNvMB14_INtB14_11JpegDecoderINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRINtNtB24_3vec3VechEEE23reassemble_extended_xmp0E0ECsa5QsYiPB8Gl_5image.exit.i, label %.lr.ph27.i

_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder18ExtendedXmpSegmentNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_7sort_byNCNvMB14_INtB14_11JpegDecoderINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRINtNtB24_3vec3VechEEE23reassemble_extended_xmp0E0ECsa5QsYiPB8Gl_5image.exit.i: ; preds = %bb.m, %.lr.ph27.i, %bb.l, %.lr.ph.i
  %.sroa.0.0.i.i = phi i64 [ %i.m, %bb.l ], [ %.sroa.01.0.i23.i, %.lr.ph.i ], [ %.sroa.01.1.i26.i, %.lr.ph27.i ], [ %i.m, %bb.m ] ; 5 uses
  %i.aa = icmp samesign ule i64 %.sroa.0.0.i.i, %i.m
  tail call void @llvm.assume(i1 %i.aa)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

bb.n:                                             ; preds = %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder18ExtendedXmpSegmentNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_7sort_byNCNvMB14_INtB14_11JpegDecoderINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRINtNtB24_3vec3VechEEE23reassemble_extended_xmp0E0ECsa5QsYiPB8Gl_5image.exit.i
  %i.ab = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.ab, 0
  %or.cond.i = or i1 %i.r, %.not.i.i.i
  br i1 %or.cond.i, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder18ExtendedXmpSegment7reverseCsa5QsYiPB8Gl_5image.exit.i, label %.lr.ph.preheader.i.i.i

bb.o:                                             ; preds = %bb.i
  %..i.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 164703072086692426) %i.m, i64 %.sroa.01.0)
  %i.ac = shl nuw nsw i64 %..i.i, 1
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift10create_runNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder18ExtendedXmpSegmentNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB13_7sort_byNCNvMB15_INtB15_11JpegDecoderINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRINtNtB25_3vec3VechEEE23reassemble_extended_xmp0E0ECsa5QsYiPB8Gl_5image.exit

bb.p:                                             ; preds = %bb.i
  %..i12.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 164703072086692426) %i.m, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort9quicksortNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder18ExtendedXmpSegmentNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB15_7sort_byNCNvMB17_INtB17_11JpegDecoderINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRINtNtB27_3vec3VechEEE23reassemble_extended_xmp0E0ECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 %i.n, i64 noundef %..i12.i, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 164703072086692426) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(56) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #27
  %i.ad = shl nuw nsw i64 %..i12.i, 1
  %i.ae = or disjoint i64 %i.ad, 1
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift10create_runNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder18ExtendedXmpSegmentNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB13_7sort_byNCNvMB15_INtB15_11JpegDecoderINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRINtNtB25_3vec3VechEEE23reassemble_extended_xmp0E0ECsa5QsYiPB8Gl_5image.exit

_RNvMNtCsj6eKBz9Db1c_4core5sliceSNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder18ExtendedXmpSegment7reverseCsa5QsYiPB8Gl_5image.exit.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core10intrinsics25typed_swap_nonoverlappingNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder18ExtendedXmpSegmentECsa5QsYiPB8Gl_5image.exit.i.i.i, %.preheader21.i, %bb.n, %bb.j
  %.sroa.0.0.i18.i = phi i64 [ %i.m, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ 2, %.preheader21.i ], [ %.sroa.0.0.i495660.i, %_RINvNtCsj6eKBz9Db1c_4core10intrinsics25typed_swap_nonoverlappingNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder18ExtendedXmpSegmentECsa5QsYiPB8Gl_5image.exit.i.i.i ]
  %i.af = shl nuw nsw i64 %.sroa.0.0.i18.i, 1
  %i.ag = or disjoint i64 %i.af, 1
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift10create_runNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder18ExtendedXmpSegmentNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB13_7sort_byNCNvMB15_INtB15_11JpegDecoderINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRINtNtB25_3vec3VechEEE23reassemble_extended_xmp0E0ECsa5QsYiPB8Gl_5image.exit

.lr.ph.preheader.i.i.i:                           ; preds = %.preheader.i, %bb.n
  %i.ah = phi i64 [ %i.ab, %bb.n ], [ 1, %.preheader.i ]
  %.sroa.0.0.i495660.i = phi i64 [ %.sroa.0.0.i.i, %bb.n ], [ 2, %.preheader.i ] ; 2 uses
  %i.ai = getelementptr inbounds nuw [56 x i8], ptr %i.n, i64 %.sroa.0.0.i495660.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RINvNtCsj6eKBz9Db1c_4core10intrinsics25typed_swap_nonoverlappingNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder18ExtendedXmpSegmentECsa5QsYiPB8Gl_5image.exit.i.i.i, %.lr.ph.preheader.i.i.i
  %.sroa.0.017.i.i.i = phi i64 [ %i.an, %_RINvNtCsj6eKBz9Db1c_4core10intrinsics25typed_swap_nonoverlappingNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder18ExtendedXmpSegmentECsa5QsYiPB8Gl_5image.exit.i.i.i ], [ 0, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %i.aj = xor i64 %.sroa.0.017.i.i.i, -1
  %i.ak = getelementptr inbounds nuw [56 x i8], ptr %i.n, i64 %.sroa.0.017.i.i.i
  %i.al = getelementptr [56 x i8], ptr %i.ai, i64 %i.aj
  invoke void @_RINvNvNtCsj6eKBz9Db1c_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsa5QsYiPB8Gl_5image(ptr noundef nonnull %i.ak, ptr noundef nonnull %i.al, i64 noundef 7)
          to label %_RINvNtCsj6eKBz9Db1c_4core10intrinsics25typed_swap_nonoverlappingNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder18ExtendedXmpSegmentECsa5QsYiPB8Gl_5image.exit.i.i.i unwind label %bb.q, !noalias !314

bb.q:                                             ; preds = %.lr.ph.i.i.i
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking19panic_cannot_unwind() #29, !noalias !314
  unreachable

_RINvNtCsj6eKBz9Db1c_4core10intrinsics25typed_swap_nonoverlappingNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder18ExtendedXmpSegmentECsa5QsYiPB8Gl_5image.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.an = add nuw nsw i64 %.sroa.0.017.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.an, %i.ah
  br i1 %exitcond.not.i.i.i, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder18ExtendedXmpSegment7reverseCsa5QsYiPB8Gl_5image.exit.i, label %.lr.ph.i.i.i

_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift10create_runNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder18ExtendedXmpSegmentNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB13_7sort_byNCNvMB15_INtB15_11JpegDecoderINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRINtNtB25_3vec3VechEEE23reassemble_extended_xmp0E0ECsa5QsYiPB8Gl_5image.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder18ExtendedXmpSegment7reverseCsa5QsYiPB8Gl_5image.exit.i
  %.sroa.0.0.i32 = phi i64 [ %i.ag, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder18ExtendedXmpSegment7reverseCsa5QsYiPB8Gl_5image.exit.i ], [ %i.ae, %bb.p ], [ %i.ac, %bb.o ] ; 2 uses
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

.lr.ph:                                           ; preds = %bb.g, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder18ExtendedXmpSegmentNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB16_7sort_byNCNvMB18_INtB18_11JpegDecoderINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRINtNtB28_3vec3VechEEE23reassemble_extended_xmp0E0ECsa5QsYiPB8Gl_5image.exit
  %.sroa.02.136 = phi i64 [ %i.ax, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder18ExtendedXmpSegmentNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB16_7sort_byNCNvMB18_INtB18_11JpegDecoderINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRINtNtB28_3vec3VechEEE23reassemble_extended_xmp0E0ECsa5QsYiPB8Gl_5image.exit ], [ %.sroa.02.0, %bb.g ] ; 2 uses
  %.sroa.023.135 = phi i64 [ %.sroa.0.0.i, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder18ExtendedXmpSegmentNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB16_7sort_byNCNvMB18_INtB18_11JpegDecoderINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRINtNtB28_3vec3VechEEE23reassemble_extended_xmp0E0ECsa5QsYiPB8Gl_5image.exit ], [ %.sroa.023.0, %bb.g ] ; 4 uses
  %i.ax = add i64 %.sroa.02.136, -1               ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ax
  %i.az = load i8, ptr %i.ay, align 1, !noundef !7
  %.not28 = icmp ult i8 %i.az, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder18ExtendedXmpSegmentNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB16_7sort_byNCNvMB18_INtB18_11JpegDecoderINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRINtNtB28_3vec3VechEEE23reassemble_extended_xmp0E0ECsa5QsYiPB8Gl_5image.exit, %.lr.ph, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.135, %.lr.ph ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder18ExtendedXmpSegmentNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB16_7sort_byNCNvMB18_INtB18_11JpegDecoderINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRINtNtB28_3vec3VechEEE23reassemble_extended_xmp0E0ECsa5QsYiPB8Gl_5image.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.136, %.lr.ph ], [ 1, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder18ExtendedXmpSegmentNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB16_7sort_byNCNvMB18_INtB18_11JpegDecoderINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRINtNtB28_3vec3VechEEE23reassemble_extended_xmp0E0ECsa5QsYiPB8Gl_5image.exit ] ; 3 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.ba, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.bb, align 1
  br i1 %i.k, label %bb.y, label %bb.z

bb.r:                                             ; preds = %.lr.ph
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ax
  %i.bd = load i64, ptr %i.bc, align 8, !noundef !7 ; 3 uses
  %i.be = lshr i64 %i.bd, 1                       ; 5 uses
  %i.bf = lshr i64 %.sroa.023.135, 1              ; 3 uses
  %i.bg = add nuw i64 %i.be, %i.bf                ; 5 uses
  %i.bh = sub i64 %.sroa.09.0, %i.bg
  %i.bi = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %i.bh ; 3 uses
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
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder18ExtendedXmpSegmentNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB16_7sort_byNCNvMB18_INtB18_11JpegDecoderINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRINtNtB28_3vec3VechEEE23reassemble_extended_xmp0E0ECsa5QsYiPB8Gl_5image.exit

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.bk, label %bb.x, label %bb.w

bb.v:                                             ; preds = %bb.s
  %i.bp = or i64 %i.be, 1
  %i.bq = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.bp, i1 true)
  %i.br = trunc nuw nsw i64 %i.bq to i32
  %i.bs = shl nuw nsw i32 %i.br, 1
  %i.bt = xor i32 %i.bs, 126
  tail call void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort9quicksortNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder18ExtendedXmpSegmentNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB15_7sort_byNCNvMB17_INtB17_11JpegDecoderINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRINtNtB27_3vec3VechEEE23reassemble_extended_xmp0E0ECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 %i.bi, i64 noundef range(i64 0, 164703072086692426) %i.be, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 164703072086692426) %3, i32 noundef %i.bt, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(56) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #27
  br label %bb.u

bb.w:                                             ; preds = %bb.u
  %i.bu = getelementptr inbounds nuw [56 x i8], ptr %i.bi, i64 %i.be
  %i.bv = or i64 %i.bf, 1
  %i.bw = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.bv, i1 true)
  %i.bx = trunc nuw nsw i64 %i.bw to i32
  %i.by = shl nuw nsw i32 %i.bx, 1
  %i.bz = xor i32 %i.by, 126
  tail call void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort9quicksortNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder18ExtendedXmpSegmentNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB15_7sort_byNCNvMB17_INtB17_11JpegDecoderINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRINtNtB27_3vec3VechEEE23reassemble_extended_xmp0E0ECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 %i.bu, i64 noundef range(i64 0, 164703072086692426) %i.bf, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 164703072086692426) %3, i32 noundef %i.bz, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(56) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #27
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.u
  tail call void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5merge5mergeNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder18ExtendedXmpSegmentNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSBX_7sort_byNCNvMBZ_INtBZ_11JpegDecoderINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRINtNtB1Z_3vec3VechEEE23reassemble_extended_xmp0E0ECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 %i.bi, i64 noundef range(i64 0, 164703072086692426) %i.bg, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 164703072086692426) %3, i64 noundef %i.be, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5)
  %i.ca = shl nuw nsw i64 %i.bg, 1
  %i.cb = or disjoint i64 %i.ca, 1
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder18ExtendedXmpSegmentNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB16_7sort_byNCNvMB18_INtB18_11JpegDecoderINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRINtNtB28_3vec3VechEEE23reassemble_extended_xmp0E0ECsa5QsYiPB8Gl_5image.exit

_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder18ExtendedXmpSegmentNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB16_7sort_byNCNvMB18_INtB18_11JpegDecoderINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRINtNtB28_3vec3VechEEE23reassemble_extended_xmp0E0ECsa5QsYiPB8Gl_5image.exit: ; preds = %bb.t, %bb.x
  %.sroa.0.0.i = phi i64 [ %i.cb, %bb.x ], [ %i.bo, %bb.t ] ; 2 uses
  %i.cc = icmp ugt i64 %i.ax, 1
  br i1 %i.cc, label %.lr.ph, label %._crit_edge

bb.y:                                             ; preds = %._crit_edge
  %i.cd = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.ce = lshr i64 %.sroa.018.0, 1
  %i.cf = add nuw i64 %i.ce, %.sroa.09.0
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
  tail call void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort9quicksortNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder18ExtendedXmpSegmentNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB15_7sort_byNCNvMB17_INtB17_11JpegDecoderINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRINtNtB27_3vec3VechEEE23reassemble_extended_xmp0E0ECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 164703072086692426) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 164703072086692426) %3, i32 noundef %i.cl, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(56) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #27
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.a, %bb.ab
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift4sortNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder18ExtendedXmpSegmentNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSBW_7sort_byNCNvMBY_INtBY_11JpegDecoderINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEE23reassemble_extended_xmp0E0ECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 164703072086692426) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 164703072086692426) %3, i1 noundef zeroext %4, ptr noalias nofree noundef align 8 dereferenceable(8) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %..i, %bb.d ], [ %i.h, %bb.c ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %bb.f

bb.f:                                             ; preds = %bb.y, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.y ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.cf, %bb.y ] ; 6 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.cd, %bb.y ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift10create_runNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder18ExtendedXmpSegmentNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB13_7sort_byNCNvMB15_INtB15_11JpegDecoderINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEE23reassemble_extended_xmp0E0ECsa5QsYiPB8Gl_5image.exit
  %.sroa.021.0 = phi i8 [ %i.aw, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift10create_runNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder18ExtendedXmpSegmentNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB13_7sort_byNCNvMB15_INtB15_11JpegDecoderINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEE23reassemble_extended_xmp0E0ECsa5QsYiPB8Gl_5image.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift10create_runNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder18ExtendedXmpSegmentNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB13_7sort_byNCNvMB15_INtB15_11JpegDecoderINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEE23reassemble_extended_xmp0E0ECsa5QsYiPB8Gl_5image.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph, label %._crit_edge

bb.h:                                             ; preds = %bb.f
  %i.m = sub nuw nsw i64 %1, %.sroa.09.0          ; 11 uses
  %i.n = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %.sroa.09.0 ; 7 uses
  %.not.i31 = icmp ult i64 %i.m, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder18ExtendedXmpSegmentNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_7sort_byNCNvMB14_INtB14_11JpegDecoderINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEE23reassemble_extended_xmp0E0ECsa5QsYiPB8Gl_5image.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.o = icmp samesign ult i64 %i.m, 2
  br i1 %i.o, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder18ExtendedXmpSegment7reverseCsa5QsYiPB8Gl_5image.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.p = getelementptr i8, ptr %i.n, i64 104
  %.val10.i = load i32, ptr %i.p, align 8, !alias.scope !319, !noalias !320, !noundef !7 ; 3 uses
  %i.q = getelementptr i8, ptr %i.n, i64 48
  %.val11.i = load i32, ptr %i.q, align 8, !alias.scope !319, !noalias !320, !noundef !7
  %i.r = icmp uge i32 %.val10.i, %.val11.i        ; 2 uses
  %.not32.i = icmp eq i64 %i.m, 2                 ; 2 uses
  br i1 %i.r, label %.preheader21.i, label %.preheader.i

.preheader21.i:                                   ; preds = %bb.k
  br i1 %.not32.i, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder18ExtendedXmpSegment7reverseCsa5QsYiPB8Gl_5image.exit.i, label %.lr.ph.i

.preheader.i:                                     ; preds = %bb.k
  br i1 %.not32.i, label %.lr.ph.preheader.i.i.i, label %.lr.ph27.i

.lr.ph.i:                                         ; preds = %.preheader21.i, %bb.l
  %.val9.i = phi i32 [ %.val8.i, %bb.l ], [ %.val10.i, %.preheader21.i ]
  %.sroa.01.0.i23.i = phi i64 [ %i.v, %bb.l ], [ 2, %.preheader21.i ] ; 3 uses
  %i.s = getelementptr inbounds nuw [56 x i8], ptr %i.n, i64 %.sroa.01.0.i23.i
  %i.t = getelementptr i8, ptr %i.s, i64 48
  %.val8.i = load i32, ptr %i.t, align 8, !alias.scope !319, !noalias !320, !noundef !7 ; 2 uses
  %i.u = icmp ult i32 %.val8.i, %.val9.i
  br i1 %i.u, label %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder18ExtendedXmpSegmentNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_7sort_byNCNvMB14_INtB14_11JpegDecoderINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEE23reassemble_extended_xmp0E0ECsa5QsYiPB8Gl_5image.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i
  %i.v = add nuw nsw i64 %.sroa.01.0.i23.i, 1     ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.v, %i.m
  br i1 %exitcond.not.i, label %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder18ExtendedXmpSegmentNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_7sort_byNCNvMB14_INtB14_11JpegDecoderINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEE23reassemble_extended_xmp0E0ECsa5QsYiPB8Gl_5image.exit.i, label %.lr.ph.i

.lr.ph27.i:                                       ; preds = %.preheader.i, %bb.m
  %.val7.i = phi i32 [ %.val.i, %bb.m ], [ %.val10.i, %.preheader.i ]
  %.sroa.01.1.i26.i = phi i64 [ %i.z, %bb.m ], [ 2, %.preheader.i ] ; 3 uses
  %i.w = getelementptr inbounds nuw [56 x i8], ptr %i.n, i64 %.sroa.01.1.i26.i
  %i.x = getelementptr i8, ptr %i.w, i64 48
  %.val.i = load i32, ptr %i.x, align 8, !alias.scope !319, !noalias !320, !noundef !7 ; 2 uses
  %i.y = icmp ult i32 %.val.i, %.val7.i
  br i1 %i.y, label %bb.m, label %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder18ExtendedXmpSegmentNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_7sort_byNCNvMB14_INtB14_11JpegDecoderINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEE23reassemble_extended_xmp0E0ECsa5QsYiPB8Gl_5image.exit.i

bb.m:                                             ; preds = %.lr.ph27.i
  %i.z = add nuw nsw i64 %.sroa.01.1.i26.i, 1     ; 2 uses
  %exitcond35.not.i = icmp eq i64 %i.z, %i.m
  br i1 %exitcond35.not.i, label %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder18ExtendedXmpSegmentNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_7sort_byNCNvMB14_INtB14_11JpegDecoderINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEE23reassemble_extended_xmp0E0ECsa5QsYiPB8Gl_5image.exit.i, label %.lr.ph27.i

_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder18ExtendedXmpSegmentNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_7sort_byNCNvMB14_INtB14_11JpegDecoderINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEE23reassemble_extended_xmp0E0ECsa5QsYiPB8Gl_5image.exit.i: ; preds = %bb.m, %.lr.ph27.i, %bb.l, %.lr.ph.i
  %.sroa.0.0.i.i = phi i64 [ %i.m, %bb.l ], [ %.sroa.01.0.i23.i, %.lr.ph.i ], [ %.sroa.01.1.i26.i, %.lr.ph27.i ], [ %i.m, %bb.m ] ; 5 uses
  %i.aa = icmp samesign ule i64 %.sroa.0.0.i.i, %i.m
  tail call void @llvm.assume(i1 %i.aa)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

bb.n:                                             ; preds = %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder18ExtendedXmpSegmentNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB12_7sort_byNCNvMB14_INtB14_11JpegDecoderINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEE23reassemble_extended_xmp0E0ECsa5QsYiPB8Gl_5image.exit.i
  %i.ab = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.ab, 0
  %or.cond.i = or i1 %i.r, %.not.i.i.i
  br i1 %or.cond.i, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder18ExtendedXmpSegment7reverseCsa5QsYiPB8Gl_5image.exit.i, label %.lr.ph.preheader.i.i.i

bb.o:                                             ; preds = %bb.i
  %..i.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 164703072086692426) %i.m, i64 %.sroa.01.0)
  %i.ac = shl nuw nsw i64 %..i.i, 1
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift10create_runNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder18ExtendedXmpSegmentNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB13_7sort_byNCNvMB15_INtB15_11JpegDecoderINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEE23reassemble_extended_xmp0E0ECsa5QsYiPB8Gl_5image.exit

bb.p:                                             ; preds = %bb.i
  %..i12.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 164703072086692426) %i.m, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort9quicksortNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder18ExtendedXmpSegmentNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB15_7sort_byNCNvMB17_INtB17_11JpegDecoderINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEE23reassemble_extended_xmp0E0ECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 %i.n, i64 noundef %..i12.i, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 164703072086692426) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(56) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #27
  %i.ad = shl nuw nsw i64 %..i12.i, 1
  %i.ae = or disjoint i64 %i.ad, 1
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift10create_runNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder18ExtendedXmpSegmentNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB13_7sort_byNCNvMB15_INtB15_11JpegDecoderINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEE23reassemble_extended_xmp0E0ECsa5QsYiPB8Gl_5image.exit

_RNvMNtCsj6eKBz9Db1c_4core5sliceSNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder18ExtendedXmpSegment7reverseCsa5QsYiPB8Gl_5image.exit.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core10intrinsics25typed_swap_nonoverlappingNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder18ExtendedXmpSegmentECsa5QsYiPB8Gl_5image.exit.i.i.i, %.preheader21.i, %bb.n, %bb.j
  %.sroa.0.0.i18.i = phi i64 [ %i.m, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ 2, %.preheader21.i ], [ %.sroa.0.0.i495660.i, %_RINvNtCsj6eKBz9Db1c_4core10intrinsics25typed_swap_nonoverlappingNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder18ExtendedXmpSegmentECsa5QsYiPB8Gl_5image.exit.i.i.i ]
  %i.af = shl nuw nsw i64 %.sroa.0.0.i18.i, 1
  %i.ag = or disjoint i64 %i.af, 1
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift10create_runNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder18ExtendedXmpSegmentNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB13_7sort_byNCNvMB15_INtB15_11JpegDecoderINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEE23reassemble_extended_xmp0E0ECsa5QsYiPB8Gl_5image.exit

.lr.ph.preheader.i.i.i:                           ; preds = %.preheader.i, %bb.n
  %i.ah = phi i64 [ %i.ab, %bb.n ], [ 1, %.preheader.i ]
  %.sroa.0.0.i495660.i = phi i64 [ %.sroa.0.0.i.i, %bb.n ], [ 2, %.preheader.i ] ; 2 uses
  %i.ai = getelementptr inbounds nuw [56 x i8], ptr %i.n, i64 %.sroa.0.0.i495660.i
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RINvNtCsj6eKBz9Db1c_4core10intrinsics25typed_swap_nonoverlappingNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder18ExtendedXmpSegmentECsa5QsYiPB8Gl_5image.exit.i.i.i, %.lr.ph.preheader.i.i.i
  %.sroa.0.017.i.i.i = phi i64 [ %i.an, %_RINvNtCsj6eKBz9Db1c_4core10intrinsics25typed_swap_nonoverlappingNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder18ExtendedXmpSegmentECsa5QsYiPB8Gl_5image.exit.i.i.i ], [ 0, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %i.aj = xor i64 %.sroa.0.017.i.i.i, -1
  %i.ak = getelementptr inbounds nuw [56 x i8], ptr %i.n, i64 %.sroa.0.017.i.i.i
  %i.al = getelementptr [56 x i8], ptr %i.ai, i64 %i.aj
  invoke void @_RINvNvNtCsj6eKBz9Db1c_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsa5QsYiPB8Gl_5image(ptr noundef nonnull %i.ak, ptr noundef nonnull %i.al, i64 noundef 7)
          to label %_RINvNtCsj6eKBz9Db1c_4core10intrinsics25typed_swap_nonoverlappingNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder18ExtendedXmpSegmentECsa5QsYiPB8Gl_5image.exit.i.i.i unwind label %bb.q, !noalias !320

bb.q:                                             ; preds = %.lr.ph.i.i.i
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking19panic_cannot_unwind() #29, !noalias !320
  unreachable

_RINvNtCsj6eKBz9Db1c_4core10intrinsics25typed_swap_nonoverlappingNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder18ExtendedXmpSegmentECsa5QsYiPB8Gl_5image.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.an = add nuw nsw i64 %.sroa.0.017.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.an, %i.ah
  br i1 %exitcond.not.i.i.i, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder18ExtendedXmpSegment7reverseCsa5QsYiPB8Gl_5image.exit.i, label %.lr.ph.i.i.i

_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift10create_runNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder18ExtendedXmpSegmentNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB13_7sort_byNCNvMB15_INtB15_11JpegDecoderINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEE23reassemble_extended_xmp0E0ECsa5QsYiPB8Gl_5image.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder18ExtendedXmpSegment7reverseCsa5QsYiPB8Gl_5image.exit.i
  %.sroa.0.0.i32 = phi i64 [ %i.ag, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder18ExtendedXmpSegment7reverseCsa5QsYiPB8Gl_5image.exit.i ], [ %i.ae, %bb.p ], [ %i.ac, %bb.o ] ; 2 uses
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

.lr.ph:                                           ; preds = %bb.g, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder18ExtendedXmpSegmentNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB16_7sort_byNCNvMB18_INtB18_11JpegDecoderINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEE23reassemble_extended_xmp0E0ECsa5QsYiPB8Gl_5image.exit
  %.sroa.02.136 = phi i64 [ %i.ax, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder18ExtendedXmpSegmentNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB16_7sort_byNCNvMB18_INtB18_11JpegDecoderINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEE23reassemble_extended_xmp0E0ECsa5QsYiPB8Gl_5image.exit ], [ %.sroa.02.0, %bb.g ] ; 2 uses
  %.sroa.023.135 = phi i64 [ %.sroa.0.0.i, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder18ExtendedXmpSegmentNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB16_7sort_byNCNvMB18_INtB18_11JpegDecoderINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEE23reassemble_extended_xmp0E0ECsa5QsYiPB8Gl_5image.exit ], [ %.sroa.023.0, %bb.g ] ; 4 uses
  %i.ax = add i64 %.sroa.02.136, -1               ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ax
  %i.az = load i8, ptr %i.ay, align 1, !noundef !7
  %.not28 = icmp ult i8 %i.az, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder18ExtendedXmpSegmentNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB16_7sort_byNCNvMB18_INtB18_11JpegDecoderINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEE23reassemble_extended_xmp0E0ECsa5QsYiPB8Gl_5image.exit, %.lr.ph, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.135, %.lr.ph ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder18ExtendedXmpSegmentNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB16_7sort_byNCNvMB18_INtB18_11JpegDecoderINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEE23reassemble_extended_xmp0E0ECsa5QsYiPB8Gl_5image.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.136, %.lr.ph ], [ 1, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder18ExtendedXmpSegmentNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB16_7sort_byNCNvMB18_INtB18_11JpegDecoderINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEE23reassemble_extended_xmp0E0ECsa5QsYiPB8Gl_5image.exit ] ; 3 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.ba, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.bb, align 1
  br i1 %i.k, label %bb.y, label %bb.z

bb.r:                                             ; preds = %.lr.ph
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.ax
  %i.bd = load i64, ptr %i.bc, align 8, !noundef !7 ; 3 uses
  %i.be = lshr i64 %i.bd, 1                       ; 5 uses
  %i.bf = lshr i64 %.sroa.023.135, 1              ; 3 uses
  %i.bg = add nuw i64 %i.be, %i.bf                ; 5 uses
  %i.bh = sub i64 %.sroa.09.0, %i.bg
  %i.bi = getelementptr inbounds nuw [56 x i8], ptr %0, i64 %i.bh ; 3 uses
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
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder18ExtendedXmpSegmentNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB16_7sort_byNCNvMB18_INtB18_11JpegDecoderINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEE23reassemble_extended_xmp0E0ECsa5QsYiPB8Gl_5image.exit

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.bk, label %bb.x, label %bb.w

bb.v:                                             ; preds = %bb.s
  %i.bp = or i64 %i.be, 1
  %i.bq = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.bp, i1 true)
  %i.br = trunc nuw nsw i64 %i.bq to i32
  %i.bs = shl nuw nsw i32 %i.br, 1
  %i.bt = xor i32 %i.bs, 126
  tail call void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort9quicksortNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder18ExtendedXmpSegmentNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB15_7sort_byNCNvMB17_INtB17_11JpegDecoderINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEE23reassemble_extended_xmp0E0ECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 %i.bi, i64 noundef range(i64 0, 164703072086692426) %i.be, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 164703072086692426) %3, i32 noundef %i.bt, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(56) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #27
  br label %bb.u

bb.w:                                             ; preds = %bb.u
  %i.bu = getelementptr inbounds nuw [56 x i8], ptr %i.bi, i64 %i.be
  %i.bv = or i64 %i.bf, 1
  %i.bw = tail call range(i64 6, 64) i64 @llvm.ctlz.i64(i64 %i.bv, i1 true)
  %i.bx = trunc nuw nsw i64 %i.bw to i32
  %i.by = shl nuw nsw i32 %i.bx, 1
  %i.bz = xor i32 %i.by, 126
  tail call void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort9quicksortNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder18ExtendedXmpSegmentNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB15_7sort_byNCNvMB17_INtB17_11JpegDecoderINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEE23reassemble_extended_xmp0E0ECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 %i.bu, i64 noundef range(i64 0, 164703072086692426) %i.bf, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 164703072086692426) %3, i32 noundef %i.bz, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(56) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #27
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.u
  tail call void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5merge5mergeNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder18ExtendedXmpSegmentNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSBX_7sort_byNCNvMBZ_INtBZ_11JpegDecoderINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEE23reassemble_extended_xmp0E0ECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 %i.bi, i64 noundef range(i64 0, 164703072086692426) %i.bg, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 164703072086692426) %3, i64 noundef %i.be, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5)
  %i.ca = shl nuw nsw i64 %i.bg, 1
  %i.cb = or disjoint i64 %i.ca, 1
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder18ExtendedXmpSegmentNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB16_7sort_byNCNvMB18_INtB18_11JpegDecoderINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEE23reassemble_extended_xmp0E0ECsa5QsYiPB8Gl_5image.exit

_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder18ExtendedXmpSegmentNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB16_7sort_byNCNvMB18_INtB18_11JpegDecoderINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEE23reassemble_extended_xmp0E0ECsa5QsYiPB8Gl_5image.exit: ; preds = %bb.t, %bb.x
  %.sroa.0.0.i = phi i64 [ %i.cb, %bb.x ], [ %i.bo, %bb.t ] ; 2 uses
  %i.cc = icmp ugt i64 %i.ax, 1
  br i1 %i.cc, label %.lr.ph, label %._crit_edge

bb.y:                                             ; preds = %._crit_edge
  %i.cd = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.ce = lshr i64 %.sroa.018.0, 1
  %i.cf = add nuw i64 %i.ce, %.sroa.09.0
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
  tail call void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort9quicksortNtNtCsaXAyoiiLu3Y_9zune_jpeg7decoder18ExtendedXmpSegmentNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB15_7sort_byNCNvMB17_INtB17_11JpegDecoderINtNtNtNtCslN0b76tEcC3_9zune_core10bytestream6reader14no_std_readers7ZCursorRShEE23reassemble_extended_xmp0E0ECsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 164703072086692426) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 164703072086692426) %3, i32 noundef %i.cl, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(56) null, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %5) #27
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.a, %bb.ab
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift4sortNtNtNtCsa5QsYiPB8Gl_5image6images4flat3DimNvYBW_NtNtBa_3cmp10PartialOrd2ltEB12_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i1 noundef zeroext %4, ptr noalias nofree noundef nonnull %5) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  %i.h = tail call noundef i64 @_RNvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift11sqrt_approx(i64 noundef %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = lshr i64 %1, 1
  %i.j = sub nuw nsw i64 %1, %i.i
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %i.j, i64 64)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sroa.01.0 = phi i64 [ %..i, %bb.d ], [ %i.h, %bb.c ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %bb.f

bb.f:                                             ; preds = %bb.y, %bb.e
  %.sroa.023.0 = phi i64 [ 1, %bb.e ], [ %.sroa.018.0, %bb.y ] ; 3 uses
  %.sroa.09.0 = phi i64 [ 0, %bb.e ], [ %i.cz, %bb.y ] ; 6 uses
  %.sroa.02.0 = phi i64 [ 0, %bb.e ], [ %i.cx, %bb.y ] ; 3 uses
  %i.k = icmp ult i64 %.sroa.09.0, %1             ; 2 uses
  br i1 %i.k, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift10create_runNtNtNtCsa5QsYiPB8Gl_5image6images4flat3DimNvYB13_NtNtBa_3cmp10PartialOrd2ltEB19_.exit
  %.sroa.021.0 = phi i8 [ %i.bq, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift10create_runNtNtNtCsa5QsYiPB8Gl_5image6images4flat3DimNvYB13_NtNtBa_3cmp10PartialOrd2ltEB19_.exit ], [ 0, %bb.f ] ; 2 uses
  %.sroa.018.0 = phi i64 [ %.sroa.0.0.i32, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift10create_runNtNtNtCsa5QsYiPB8Gl_5image6images4flat3DimNvYB13_NtNtBa_3cmp10PartialOrd2ltEB19_.exit ], [ 1, %bb.f ] ; 2 uses
  %i.l = icmp ugt i64 %.sroa.02.0, 1
  br i1 %i.l, label %.lr.ph, label %._crit_edge

bb.h:                                             ; preds = %bb.f
  %i.m = sub nuw nsw i64 %1, %.sroa.09.0          ; 11 uses
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.09.0 ; 11 uses
  %.not.i31 = icmp ult i64 %i.m, %.sroa.01.0
  br i1 %.not.i31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runNtNtNtCsa5QsYiPB8Gl_5image6images4flat3DimNvYB12_NtNtB8_3cmp10PartialOrd2ltEB18_.exit.i, %bb.h
  br i1 %4, label %bb.p, label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.o = icmp samesign ult i64 %i.m, 2
  br i1 %i.o, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSNtNtNtCsa5QsYiPB8Gl_5image6images4flat3Dim7reverseBA_.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.val14.i = load i64, ptr %i.p, align 8, !alias.scope !330, !noalias !331, !noundef !7 ; 4 uses
  %i.q = getelementptr i8, ptr %i.n, i64 24
  %.val15.i = load i64, ptr %i.q, align 8, !alias.scope !330, !noalias !331 ; 3 uses
  %.val16.i = load i64, ptr %i.n, align 8, !alias.scope !330, !noalias !331, !noundef !7 ; 2 uses
  %i.r = getelementptr i8, ptr %i.n, i64 8
  %.val17.i = load i64, ptr %i.r, align 8, !alias.scope !330, !noalias !331
  %i.s = icmp eq i64 %.val14.i, %.val16.i
  %i.t = icmp ult i64 %.val15.i, %.val17.i
  %i.u = icmp ult i64 %.val14.i, %.val16.i
  %i.v = select i1 %i.s, i1 %i.t, i1 %i.u         ; 2 uses
  %.not38.i = icmp eq i64 %i.m, 2                 ; 2 uses
  br i1 %i.v, label %.preheader.i, label %.preheader27.i

.preheader27.i:                                   ; preds = %bb.k
  br i1 %.not38.i, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSNtNtNtCsa5QsYiPB8Gl_5image6images4flat3Dim7reverseBA_.exit.i, label %.lr.ph.i

.preheader.i:                                     ; preds = %bb.k
  br i1 %.not38.i, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSNtNtNtCsa5QsYiPB8Gl_5image6images4flat3Dim12split_at_mutBA_.exit11.preheader.i.i.i, label %.lr.ph33.i

.lr.ph.i:                                         ; preds = %.preheader27.i, %bb.l
  %.val13.i = phi i64 [ %.val11.i, %bb.l ], [ %.val15.i, %.preheader27.i ]
  %.val12.i = phi i64 [ %.val10.i, %bb.l ], [ %.val14.i, %.preheader27.i ] ; 2 uses
  %.sroa.01.0.i29.i = phi i64 [ %i.ac, %bb.l ], [ 2, %.preheader27.i ] ; 3 uses
  %i.w = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %.sroa.01.0.i29.i ; 2 uses
  %.val10.i = load i64, ptr %i.w, align 8, !alias.scope !330, !noalias !331, !noundef !7 ; 3 uses
  %i.x = getelementptr i8, ptr %i.w, i64 8
  %.val11.i = load i64, ptr %i.x, align 8, !alias.scope !330, !noalias !331 ; 2 uses
  %i.y = icmp eq i64 %.val10.i, %.val12.i
  %i.z = icmp ult i64 %.val11.i, %.val13.i
  %i.aa = icmp ult i64 %.val10.i, %.val12.i
  %i.ab = select i1 %i.y, i1 %i.z, i1 %i.aa
  br i1 %i.ab, label %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runNtNtNtCsa5QsYiPB8Gl_5image6images4flat3DimNvYB12_NtNtB8_3cmp10PartialOrd2ltEB18_.exit.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i
  %i.ac = add nuw nsw i64 %.sroa.01.0.i29.i, 1    ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ac, %i.m
  br i1 %exitcond.not.i, label %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runNtNtNtCsa5QsYiPB8Gl_5image6images4flat3DimNvYB12_NtNtB8_3cmp10PartialOrd2ltEB18_.exit.i, label %.lr.ph.i

.lr.ph33.i:                                       ; preds = %.preheader.i, %bb.m
  %.val9.i = phi i64 [ %.val7.i, %bb.m ], [ %.val15.i, %.preheader.i ]
  %.val8.i = phi i64 [ %.val.i, %bb.m ], [ %.val14.i, %.preheader.i ] ; 2 uses
  %.sroa.01.1.i32.i = phi i64 [ %i.aj, %bb.m ], [ 2, %.preheader.i ] ; 3 uses
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %.sroa.01.1.i32.i ; 2 uses
  %.val.i = load i64, ptr %i.ad, align 8, !alias.scope !330, !noalias !331, !noundef !7 ; 3 uses
  %i.ae = getelementptr i8, ptr %i.ad, i64 8
  %.val7.i = load i64, ptr %i.ae, align 8, !alias.scope !330, !noalias !331 ; 2 uses
  %i.af = icmp eq i64 %.val.i, %.val8.i
  %i.ag = icmp ult i64 %.val7.i, %.val9.i
  %i.ah = icmp ult i64 %.val.i, %.val8.i
  %i.ai = select i1 %i.af, i1 %i.ag, i1 %i.ah
  br i1 %i.ai, label %bb.m, label %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runNtNtNtCsa5QsYiPB8Gl_5image6images4flat3DimNvYB12_NtNtB8_3cmp10PartialOrd2ltEB18_.exit.i

bb.m:                                             ; preds = %.lr.ph33.i
  %i.aj = add nuw nsw i64 %.sroa.01.1.i32.i, 1    ; 2 uses
  %exitcond41.not.i = icmp eq i64 %i.aj, %i.m
  br i1 %exitcond41.not.i, label %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runNtNtNtCsa5QsYiPB8Gl_5image6images4flat3DimNvYB12_NtNtB8_3cmp10PartialOrd2ltEB18_.exit.i, label %.lr.ph33.i

_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runNtNtNtCsa5QsYiPB8Gl_5image6images4flat3DimNvYB12_NtNtB8_3cmp10PartialOrd2ltEB18_.exit.i: ; preds = %bb.l, %.lr.ph.i, %bb.m, %.lr.ph33.i
  %.sroa.0.0.i.i = phi i64 [ %i.m, %bb.m ], [ %.sroa.01.1.i32.i, %.lr.ph33.i ], [ %.sroa.01.0.i29.i, %.lr.ph.i ], [ %i.m, %bb.l ] ; 6 uses
  %i.ak = icmp samesign ule i64 %.sroa.0.0.i.i, %i.m
  tail call void @llvm.assume(i1 %i.ak)
  %.not5.i = icmp ult i64 %.sroa.0.0.i.i, %.sroa.01.0
  br i1 %.not5.i, label %bb.i, label %bb.n

bb.n:                                             ; preds = %_RINvNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared17find_existing_runNtNtNtCsa5QsYiPB8Gl_5image6images4flat3DimNvYB12_NtNtB8_3cmp10PartialOrd2ltEB18_.exit.i
  br i1 %i.v, label %bb.q, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSNtNtNtCsa5QsYiPB8Gl_5image6images4flat3Dim7reverseBA_.exit.i

bb.o:                                             ; preds = %bb.i
  %..i.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 576460752303423488) %i.m, i64 %.sroa.01.0)
  %i.al = shl nuw nsw i64 %..i.i, 1
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift10create_runNtNtNtCsa5QsYiPB8Gl_5image6images4flat3DimNvYB13_NtNtBa_3cmp10PartialOrd2ltEB19_.exit

bb.p:                                             ; preds = %bb.i
  %..i18.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 576460752303423488) %i.m, i64 32) ; 2 uses
  tail call void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort9quicksortNtNtNtCsa5QsYiPB8Gl_5image6images4flat3DimNvYB15_NtNtBa_3cmp10PartialOrd2ltEB1b_(ptr noalias nofree noundef nonnull align 8 %i.n, i64 noundef %..i18.i, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias nofree noundef nonnull %5) #27
  %i.am = shl nuw nsw i64 %..i18.i, 1
  %i.an = or disjoint i64 %i.am, 1
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift10create_runNtNtNtCsa5QsYiPB8Gl_5image6images4flat3DimNvYB13_NtNtBa_3cmp10PartialOrd2ltEB19_.exit

_RNvMNtCsj6eKBz9Db1c_4core5sliceSNtNtNtCsa5QsYiPB8Gl_5image6images4flat3Dim7reverseBA_.exit.i.loopexit.unr-lcssa: ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSNtNtNtCsa5QsYiPB8Gl_5image6images4flat3Dim12split_at_mutBA_.exit11.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSNtNtNtCsa5QsYiPB8Gl_5image6images4flat3Dim7reverseBA_.exit.i, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSNtNtNtCsa5QsYiPB8Gl_5image6images4flat3Dim12split_at_mutBA_.exit11.i.i.i.epil.preheader

_RNvMNtCsj6eKBz9Db1c_4core5sliceSNtNtNtCsa5QsYiPB8Gl_5image6images4flat3Dim12split_at_mutBA_.exit11.i.i.i.epil.preheader: ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSNtNtNtCsa5QsYiPB8Gl_5image6images4flat3Dim7reverseBA_.exit.i.loopexit.unr-lcssa, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSNtNtNtCsa5QsYiPB8Gl_5image6images4flat3Dim12split_at_mutBA_.exit11.preheader.i.i.i
  %.sroa.0.016.i.i.i.epil.init = phi i64 [ 0, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSNtNtNtCsa5QsYiPB8Gl_5image6images4flat3Dim12split_at_mutBA_.exit11.preheader.i.i.i ], [ %i.bh, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSNtNtNtCsa5QsYiPB8Gl_5image6images4flat3Dim7reverseBA_.exit.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod56 = trunc i64 %i.av to i1
  tail call void @llvm.assume(i1 %lcmp.mod56)
  %i.ao = xor i64 %.sroa.0.016.i.i.i.epil.init, -1
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %.sroa.0.016.i.i.i.epil.init ; 2 uses
  %i.aq = getelementptr [16 x i8], ptr %i.aw, i64 %i.ao ; 2 uses
  %i.ar = load <2 x i64>, ptr %i.ap, align 8, !alias.scope !332, !noalias !333
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ap, ptr noundef nonnull align 8 dereferenceable(16) %i.aq, i64 16, i1 false), !alias.scope !334, !noalias !331
  store <2 x i64> %i.ar, ptr %i.aq, align 8, !alias.scope !335, !noalias !336
  br label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSNtNtNtCsa5QsYiPB8Gl_5image6images4flat3Dim7reverseBA_.exit.i

_RNvMNtCsj6eKBz9Db1c_4core5sliceSNtNtNtCsa5QsYiPB8Gl_5image6images4flat3Dim7reverseBA_.exit.i: ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSNtNtNtCsa5QsYiPB8Gl_5image6images4flat3Dim12split_at_mutBA_.exit11.i.i.i.epil.preheader, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSNtNtNtCsa5QsYiPB8Gl_5image6images4flat3Dim7reverseBA_.exit.i.loopexit.unr-lcssa, %.preheader27.i, %bb.q, %bb.n, %bb.j
  %.sroa.0.0.i24.i = phi i64 [ %i.m, %bb.j ], [ %.sroa.0.0.i.i, %bb.n ], [ %.sroa.0.0.i.i, %bb.q ], [ 2, %.preheader27.i ], [ %.sroa.0.0.i566367.i, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSNtNtNtCsa5QsYiPB8Gl_5image6images4flat3Dim7reverseBA_.exit.i.loopexit.unr-lcssa ], [ %.sroa.0.0.i566367.i, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSNtNtNtCsa5QsYiPB8Gl_5image6images4flat3Dim12split_at_mutBA_.exit11.i.i.i.epil.preheader ]
  %i.as = shl nuw nsw i64 %.sroa.0.0.i24.i, 1
  %i.at = or disjoint i64 %i.as, 1
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift10create_runNtNtNtCsa5QsYiPB8Gl_5image6images4flat3DimNvYB13_NtNtBa_3cmp10PartialOrd2ltEB19_.exit

bb.q:                                             ; preds = %bb.n
  %i.au = lshr i64 %.sroa.0.0.i.i, 1              ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !337)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !338)
  %.not.i.i.i = icmp eq i64 %i.au, 0
  br i1 %.not.i.i.i, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSNtNtNtCsa5QsYiPB8Gl_5image6images4flat3Dim7reverseBA_.exit.i, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSNtNtNtCsa5QsYiPB8Gl_5image6images4flat3Dim12split_at_mutBA_.exit11.preheader.i.i.i

_RNvMNtCsj6eKBz9Db1c_4core5sliceSNtNtNtCsa5QsYiPB8Gl_5image6images4flat3Dim12split_at_mutBA_.exit11.preheader.i.i.i: ; preds = %.preheader.i, %bb.q
  %i.av = phi i64 [ %i.au, %bb.q ], [ 1, %.preheader.i ] ; 4 uses
  %.sroa.0.0.i566367.i = phi i64 [ %.sroa.0.0.i.i, %bb.q ], [ 2, %.preheader.i ] ; 3 uses
  %i.aw = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %.sroa.0.0.i566367.i ; 3 uses
  %xtraiter = and i64 %i.av, 1
  %i.ax = icmp eq i64 %i.av, 1
  br i1 %i.ax, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSNtNtNtCsa5QsYiPB8Gl_5image6images4flat3Dim12split_at_mutBA_.exit11.i.i.i.epil.preheader, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSNtNtNtCsa5QsYiPB8Gl_5image6images4flat3Dim12split_at_mutBA_.exit11.preheader.i.i.i.new

_RNvMNtCsj6eKBz9Db1c_4core5sliceSNtNtNtCsa5QsYiPB8Gl_5image6images4flat3Dim12split_at_mutBA_.exit11.preheader.i.i.i.new: ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSNtNtNtCsa5QsYiPB8Gl_5image6images4flat3Dim12split_at_mutBA_.exit11.preheader.i.i.i
  %unroll_iter = and i64 %i.av, 9223372036854775806
  br label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSNtNtNtCsa5QsYiPB8Gl_5image6images4flat3Dim12split_at_mutBA_.exit11.i.i.i

_RNvMNtCsj6eKBz9Db1c_4core5sliceSNtNtNtCsa5QsYiPB8Gl_5image6images4flat3Dim12split_at_mutBA_.exit11.i.i.i: ; preds = %_RNvMNtCsj6eKBz9Db1c_4core5sliceSNtNtNtCsa5QsYiPB8Gl_5image6images4flat3Dim12split_at_mutBA_.exit11.i.i.i, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSNtNtNtCsa5QsYiPB8Gl_5image6images4flat3Dim12split_at_mutBA_.exit11.preheader.i.i.i.new
  %.sroa.0.016.i.i.i = phi i64 [ 0, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSNtNtNtCsa5QsYiPB8Gl_5image6images4flat3Dim12split_at_mutBA_.exit11.preheader.i.i.i.new ], [ %i.bh, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSNtNtNtCsa5QsYiPB8Gl_5image6images4flat3Dim12split_at_mutBA_.exit11.i.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSNtNtNtCsa5QsYiPB8Gl_5image6images4flat3Dim12split_at_mutBA_.exit11.preheader.i.i.i.new ], [ %niter.next.1, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSNtNtNtCsa5QsYiPB8Gl_5image6images4flat3Dim12split_at_mutBA_.exit11.i.i.i ]
  %i.ay = xor i64 %.sroa.0.016.i.i.i, -1
  %i.az = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %.sroa.0.016.i.i.i ; 2 uses
  %i.ba = getelementptr [16 x i8], ptr %i.aw, i64 %i.ay ; 2 uses
  %i.bb = load <2 x i64>, ptr %i.az, align 8, !alias.scope !332, !noalias !333
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.az, ptr noundef nonnull align 8 dereferenceable(16) %i.ba, i64 16, i1 false), !alias.scope !334, !noalias !331
  store <2 x i64> %i.bb, ptr %i.ba, align 8, !alias.scope !335, !noalias !336
  %i.bc = xor i64 %.sroa.0.016.i.i.i, -2
  %i.bd = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %.sroa.0.016.i.i.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16 ; 2 uses
  %i.bf = getelementptr [16 x i8], ptr %i.aw, i64 %i.bc ; 2 uses
  %i.bg = load <2 x i64>, ptr %i.be, align 8, !alias.scope !332, !noalias !333
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.be, ptr noundef nonnull align 8 dereferenceable(16) %i.bf, i64 16, i1 false), !alias.scope !334, !noalias !331
  store <2 x i64> %i.bg, ptr %i.bf, align 8, !alias.scope !335, !noalias !336
  %i.bh = add nuw nsw i64 %.sroa.0.016.i.i.i, 2   ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSNtNtNtCsa5QsYiPB8Gl_5image6images4flat3Dim7reverseBA_.exit.i.loopexit.unr-lcssa, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSNtNtNtCsa5QsYiPB8Gl_5image6images4flat3Dim12split_at_mutBA_.exit11.i.i.i

_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift10create_runNtNtNtCsa5QsYiPB8Gl_5image6images4flat3DimNvYB13_NtNtBa_3cmp10PartialOrd2ltEB19_.exit: ; preds = %bb.o, %bb.p, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSNtNtNtCsa5QsYiPB8Gl_5image6images4flat3Dim7reverseBA_.exit.i
  %.sroa.0.0.i32 = phi i64 [ %i.at, %_RNvMNtCsj6eKBz9Db1c_4core5sliceSNtNtNtCsa5QsYiPB8Gl_5image6images4flat3Dim7reverseBA_.exit.i ], [ %i.an, %bb.p ], [ %i.al, %bb.o ] ; 2 uses
  %i.bi = lshr i64 %.sroa.023.0, 1
  %i.bj = lshr i64 %.sroa.0.0.i32, 1
  %factor = shl nuw nsw i64 %.sroa.09.0, 1        ; 2 uses
  %i.bk = sub nsw i64 %factor, %i.bi
  %i.bl = add nuw nsw i64 %i.bj, %factor
  %i.bm = mul i64 %i.bk, %.sroa.0.0
  %i.bn = mul i64 %i.bl, %.sroa.0.0
  %i.bo = xor i64 %i.bn, %i.bm
  %i.bp = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bo, i1 false)
  %i.bq = trunc nuw nsw i64 %i.bp to i8
  br label %bb.g

.lr.ph:                                           ; preds = %bb.g, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeNtNtNtCsa5QsYiPB8Gl_5image6images4flat3DimNvYB16_NtNtBa_3cmp10PartialOrd2ltEB1c_.exit
  %.sroa.02.136 = phi i64 [ %i.br, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeNtNtNtCsa5QsYiPB8Gl_5image6images4flat3DimNvYB16_NtNtBa_3cmp10PartialOrd2ltEB1c_.exit ], [ %.sroa.02.0, %bb.g ] ; 2 uses
  %.sroa.023.135 = phi i64 [ %.sroa.0.0.i, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeNtNtNtCsa5QsYiPB8Gl_5image6images4flat3DimNvYB16_NtNtBa_3cmp10PartialOrd2ltEB1c_.exit ], [ %.sroa.023.0, %bb.g ] ; 4 uses
  %i.br = add i64 %.sroa.02.136, -1               ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.br
  %i.bt = load i8, ptr %i.bs, align 1, !noundef !7
  %.not28 = icmp ult i8 %i.bt, %.sroa.021.0
  br i1 %.not28, label %._crit_edge, label %bb.r

._crit_edge:                                      ; preds = %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeNtNtNtCsa5QsYiPB8Gl_5image6images4flat3DimNvYB16_NtNtBa_3cmp10PartialOrd2ltEB1c_.exit, %.lr.ph, %bb.g
  %.sroa.023.1.lcssa = phi i64 [ %.sroa.023.0, %bb.g ], [ %.sroa.023.135, %.lr.ph ], [ %.sroa.0.0.i, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeNtNtNtCsa5QsYiPB8Gl_5image6images4flat3DimNvYB16_NtNtBa_3cmp10PartialOrd2ltEB1c_.exit ] ; 2 uses
  %.sroa.02.1.lcssa = phi i64 [ %.sroa.02.0, %bb.g ], [ %.sroa.02.136, %.lr.ph ], [ 1, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeNtNtNtCsa5QsYiPB8Gl_5image6images4flat3DimNvYB16_NtNtBa_3cmp10PartialOrd2ltEB1c_.exit ] ; 3 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.02.1.lcssa
  store i64 %.sroa.023.1.lcssa, ptr %i.bu, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.a, i64 %.sroa.02.1.lcssa
  store i8 %.sroa.021.0, ptr %i.bv, align 1
  br i1 %i.k, label %bb.y, label %bb.z

bb.r:                                             ; preds = %.lr.ph
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.br
  %i.bx = load i64, ptr %i.bw, align 8, !noundef !7 ; 3 uses
  %i.by = lshr i64 %i.bx, 1                       ; 5 uses
  %i.bz = lshr i64 %.sroa.023.135, 1              ; 3 uses
  %i.ca = add nuw i64 %i.by, %i.bz                ; 5 uses
  %i.cb = sub i64 %.sroa.09.0, %i.ca
  %i.cc = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.cb ; 3 uses
  %i.cd = icmp samesign ugt i64 %i.ca, %3
  %i.ce = trunc i64 %.sroa.023.135 to i1
  %i.cf = or i64 %i.bx, %.sroa.023.135
  %i.cg = trunc i64 %i.cf to i1
  %or.cond3.i = or i1 %i.cd, %i.cg
  br i1 %or.cond3.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ch = trunc i64 %i.bx to i1
  br i1 %i.ch, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.ci = shl nuw nsw i64 %i.ca, 1
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeNtNtNtCsa5QsYiPB8Gl_5image6images4flat3DimNvYB16_NtNtBa_3cmp10PartialOrd2ltEB1c_.exit

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.ce, label %bb.x, label %bb.w

bb.v:                                             ; preds = %bb.s
  %i.cj = or i64 %i.by, 1
  %i.ck = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.cj, i1 true)
  %i.cl = trunc nuw nsw i64 %i.ck to i32
  %i.cm = shl nuw nsw i32 %i.cl, 1
  %i.cn = xor i32 %i.cm, 126
  tail call void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort9quicksortNtNtNtCsa5QsYiPB8Gl_5image6images4flat3DimNvYB15_NtNtBa_3cmp10PartialOrd2ltEB1b_(ptr noalias nofree noundef nonnull align 8 %i.cc, i64 noundef range(i64 0, 576460752303423488) %i.by, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef %i.cn, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias nofree noundef nonnull %5) #27
  br label %bb.u

bb.w:                                             ; preds = %bb.u
  %i.co = getelementptr inbounds nuw [16 x i8], ptr %i.cc, i64 %i.by
  %i.cp = or i64 %i.bz, 1
  %i.cq = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.cp, i1 true)
  %i.cr = trunc nuw nsw i64 %i.cq to i32
  %i.cs = shl nuw nsw i32 %i.cr, 1
  %i.ct = xor i32 %i.cs, 126
  tail call void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort9quicksortNtNtNtCsa5QsYiPB8Gl_5image6images4flat3DimNvYB15_NtNtBa_3cmp10PartialOrd2ltEB1b_(ptr noalias nofree noundef nonnull align 8 %i.co, i64 noundef range(i64 0, 576460752303423488) %i.bz, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef %i.ct, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias nofree noundef nonnull %5) #27
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.u
  tail call void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5merge5mergeNtNtNtCsa5QsYiPB8Gl_5image6images4flat3DimNvYBX_NtNtBa_3cmp10PartialOrd2ltEB13_(ptr noalias nofree noundef nonnull align 8 %i.cc, i64 noundef range(i64 0, 576460752303423488) %i.ca, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i64 noundef %i.by, ptr noalias nofree noundef nonnull %5)
  %i.cu = shl nuw nsw i64 %i.ca, 1
  %i.cv = or disjoint i64 %i.cu, 1
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeNtNtNtCsa5QsYiPB8Gl_5image6images4flat3DimNvYB16_NtNtBa_3cmp10PartialOrd2ltEB1c_.exit

_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift13logical_mergeNtNtNtCsa5QsYiPB8Gl_5image6images4flat3DimNvYB16_NtNtBa_3cmp10PartialOrd2ltEB1c_.exit: ; preds = %bb.t, %bb.x
  %.sroa.0.0.i = phi i64 [ %i.cv, %bb.x ], [ %i.ci, %bb.t ] ; 2 uses
  %i.cw = icmp ugt i64 %i.br, 1
  br i1 %i.cw, label %.lr.ph, label %._crit_edge

bb.y:                                             ; preds = %._crit_edge
  %i.cx = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.cy = lshr i64 %.sroa.018.0, 1
  %i.cz = add nuw i64 %i.cy, %.sroa.09.0
  br label %bb.f

bb.z:                                             ; preds = %._crit_edge
  %i.da = and i64 %.sroa.023.1.lcssa, 1
  %.not30 = icmp eq i64 %i.da, 0
  br i1 %.not30, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.db = or i64 %1, 1
  %i.dc = tail call range(i64 5, 64) i64 @llvm.ctlz.i64(i64 %i.db, i1 true)
  %i.dd = trunc nuw nsw i64 %i.dc to i32
  %i.de = shl nuw nsw i32 %i.dd, 1
  %i.df = xor i32 %i.de, 126
  tail call void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort9quicksortNtNtNtCsa5QsYiPB8Gl_5image6images4flat3DimNvYB15_NtNtBa_3cmp10PartialOrd2ltEB1b_(ptr noalias nofree noundef nonnull align 8 %0, i64 noundef range(i64 0, 576460752303423488) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i32 noundef %i.df, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) null, ptr noalias nofree noundef nonnull %5) #27
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.a, %bb.ab
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_elemINtNtNtCsdsTQD3x2eOp_3exr5image9recursive9RecursiveIBM_IBM_IBM_NtBO_8NoneMorefEfEfEfENtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECsa5QsYiPB8Gl_5image(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 4 captures(none) dead_on_return dereferenceable(16) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsa5QsYiPB8Gl_5image(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %2, i1 noundef zeroext false, i64 noundef 4, i64 noundef 16)
  %i.b = load i64, ptr %i.a, align 8, !range !12, !noundef !7
  %i.c = trunc nuw i64 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = load i64, ptr %i.d, align 8, !range !16, !noundef !7 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.c, label %bb.b, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecINtNtNtCsdsTQD3x2eOp_3exr5image9recursive9RecursiveIBF_IBF_IBF_NtBH_8NoneMorefEfEfEfEE7reserveCsa5QsYiPB8Gl_5image.exit.i, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %i.f, align 8
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.e, i64 %i.g) #28
  unreachable

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecINtNtNtCsdsTQD3x2eOp_3exr5image9recursive9RecursiveIBF_IBF_IBF_NtBH_8NoneMorefEfEfEfEE7reserveCsa5QsYiPB8Gl_5image.exit.i: ; preds = %bb.a
  %i.h = load ptr, ptr %i.f, align 8, !nonnull !7, !noundef !7 ; 4 uses
  %i.i = icmp ule i64 %2, %i.e
  tail call void @llvm.assume(i1 %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.j = load <4 x float>, ptr %1, align 4        ; 10 uses
  %i.k = icmp ugt i64 %2, 1
  br i1 %i.k, label %.lr.ph.i.preheader, label %._crit_edge.i

.lr.ph.i.preheader:                               ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecINtNtNtCsdsTQD3x2eOp_3exr5image9recursive9RecursiveIBF_IBF_IBF_NtBH_8NoneMorefEfEfEfEE7reserveCsa5QsYiPB8Gl_5image.exit.i
  %i.l = add i64 %2, -1                           ; 2 uses
  %i.m = add i64 %2, -2
  %xtraiter = and i64 %i.l, 7                     ; 3 uses
  %i.n = icmp ult i64 %i.m, 7
  br i1 %i.n, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %i.l, -8
  br label %.lr.ph.i

._crit_edge.i:                                    ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecINtNtNtCsdsTQD3x2eOp_3exr5image9recursive9RecursiveIBF_IBF_IBF_NtBH_8NoneMorefEfEfEfEE7reserveCsa5QsYiPB8Gl_5image.exit.i
  %.not.i = icmp eq i64 %2, 0
  br i1 %.not.i, label %bb.c, label %._crit_edge.thread.i

._crit_edge.thread.i.loopexit.unr-lcssa:          ; preds = %.lr.ph.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.thread.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %._crit_edge.thread.i.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.sroa.0.021.i.epil.init = phi ptr [ %i.h, %.lr.ph.i.preheader ], [ %i.w, %._crit_edge.thread.i.loopexit.unr-lcssa ]
  %lcmp.mod11 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod11)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.sroa.0.021.i.epil = phi ptr [ %i.o, %.lr.ph.i.epil ], [ %.sroa.0.021.i.epil.init, %.lr.ph.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  store <4 x float> %i.j, ptr %.sroa.0.021.i.epil, align 4, !noalias !342
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.021.i.epil, i64 16 ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.thread.i, label %.lr.ph.i.epil, !llvm.loop !341

._crit_edge.thread.i:                             ; preds = %._crit_edge.thread.i.loopexit.unr-lcssa, %.lr.ph.i.epil, %._crit_edge.i
  %.sroa.0.0.lcssa28.i = phi ptr [ %i.h, %._crit_edge.i ], [ %i.w, %._crit_edge.thread.i.loopexit.unr-lcssa ], [ %i.o, %.lr.ph.i.epil ]
  store <4 x float> %i.j, ptr %.sroa.0.0.lcssa28.i, align 4
  br label %bb.c

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.sroa.0.021.i = phi ptr [ %i.h, %.lr.ph.i.preheader.new ], [ %i.w, %.lr.ph.i ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.7, %.lr.ph.i ]
  store <4 x float> %i.j, ptr %.sroa.0.021.i, align 4, !noalias !342
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.0.021.i, i64 16
  store <4 x float> %i.j, ptr %i.p, align 4, !noalias !342
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.021.i, i64 32
  store <4 x float> %i.j, ptr %i.q, align 4, !noalias !342
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.021.i, i64 48
  store <4 x float> %i.j, ptr %i.r, align 4, !noalias !342
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.021.i, i64 64
  store <4 x float> %i.j, ptr %i.s, align 4, !noalias !342
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.021.i, i64 80
  store <4 x float> %i.j, ptr %i.t, align 4, !noalias !342
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.021.i, i64 96
  store <4 x float> %i.j, ptr %i.u, align 4, !noalias !342
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.021.i, i64 112
  store <4 x float> %i.j, ptr %i.v, align 4, !noalias !342
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.0.021.i, i64 128 ; 3 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.thread.i.loopexit.unr-lcssa, label %.lr.ph.i

bb.c:                                             ; preds = %._crit_edge.thread.i, %._crit_edge.i
  store i64 %i.e, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %.sroa.6.0..sroa_idx8, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i64 } @_RINvXs0_NtNtNtCsj6eKBz9Db1c_4core4iter6traits8iteratorQINtNtNtBc_5slice4iter14ChunksExactMuthENtB6_8Iterator8try_foldjNCINvNvXs7_NtNtBa_8adapters4takeINtB23_4TakepENtB23_8SpecTake13spec_for_each5checkQShNCNvMs5_NtNtNtCsa5QsYiPB8Gl_5image6codecs3bmp7decoderINtB3n_10BmpDecoderINtNtNtBc_2io6cursor6CursorRB3d_EE13read_rle_datas2_0E0INtNtBc_6option6OptionjEEB3t_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, i64 noundef %1, ptr noalias nofree noundef readonly captures(none) dereferenceable(3) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !7, !align !18, !noundef !7 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !354)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !355)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !356)
  %i.a = getelementptr inbounds nuw i8, ptr %.val, i64 24 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 32
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !357, !noalias !358, !noundef !7 ; 8 uses
  %.promoted.i.i = load i64, ptr %i.a, align 8, !alias.scope !357, !noalias !358 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.val, i64 16 ; 3 uses
  %i.e = icmp ugt i64 %i.c, 2
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.g = load i8, ptr %i.f, align 1, !alias.scope !358, !noalias !355
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.i = load i8, ptr %i.h, align 1, !alias.scope !358, !noalias !355
  %i.j = load i8, ptr %2, align 1, !alias.scope !358, !noalias !355
  %.promoted14.i.i = load ptr, ptr %i.d, align 8, !alias.scope !355, !noalias !358 ; 2 uses
  br i1 %i.e, label %.split.us.i.i, label %.split.i.i

.split.us.i.i:                                    ; preds = %bb.a, %_RNCINvNvXs7_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4takeINtBa_4TakepENtBa_8SpecTake13spec_for_each5checkQShNCNvMs5_NtNtNtCsa5QsYiPB8Gl_5image6codecs3bmp7decoderINtB1P_10BmpDecoderINtNtNtBg_2io6cursor6CursorRB1F_EE13read_rle_datas2_0E0B1V_.exit.us.i.i
  %i.k = phi ptr [ %i.m, %_RNCINvNvXs7_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4takeINtBa_4TakepENtBa_8SpecTake13spec_for_each5checkQShNCNvMs5_NtNtNtCsa5QsYiPB8Gl_5image6codecs3bmp7decoderINtB1P_10BmpDecoderINtNtNtBg_2io6cursor6CursorRB1F_EE13read_rle_datas2_0E0B1V_.exit.us.i.i ], [ %.promoted14.i.i, %bb.a ] ; 4 uses
  %i.l = phi i64 [ %i.n, %_RNCINvNvXs7_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4takeINtBa_4TakepENtBa_8SpecTake13spec_for_each5checkQShNCNvMs5_NtNtNtCsa5QsYiPB8Gl_5image6codecs3bmp7decoderINtB1P_10BmpDecoderINtNtNtBg_2io6cursor6CursorRB1F_EE13read_rle_datas2_0E0B1V_.exit.us.i.i ], [ %.promoted.i.i, %bb.a ] ; 2 uses
  %.sroa.01.0.us.i.i = phi i64 [ %i.r, %_RNCINvNvXs7_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4takeINtBa_4TakepENtBa_8SpecTake13spec_for_each5checkQShNCNvMs5_NtNtNtCsa5QsYiPB8Gl_5image6codecs3bmp7decoderINtB1P_10BmpDecoderINtNtNtBg_2io6cursor6CursorRB1F_EE13read_rle_datas2_0E0B1V_.exit.us.i.i ], [ %1, %bb.a ] ; 3 uses
  %.not.i.us.i.i = icmp ugt i64 %i.c, %i.l
  br i1 %.not.i.us.i.i, label %_RINvXs2_NtNtNtCsj6eKBz9Db1c_4core4iter6traits8iteratorQINtNtNtBc_5slice4iter14ChunksExactMuthENtB6_15IteratorRefSpec13spec_try_foldjNCINvNvXs7_NtNtBa_8adapters4takeINtB2h_4TakepENtB2h_8SpecTake13spec_for_each5checkQShNCNvMs5_NtNtNtCsa5QsYiPB8Gl_5image6codecs3bmp7decoderINtB3B_10BmpDecoderINtNtNtBc_2io6cursor6CursorRB3r_EE13read_rle_datas2_0E0INtNtBc_6option6OptionjEEB3H_.exit, label %_RNCINvNvXs7_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4takeINtBa_4TakepENtBa_8SpecTake13spec_for_each5checkQShNCNvMs5_NtNtNtCsa5QsYiPB8Gl_5image6codecs3bmp7decoderINtB1P_10BmpDecoderINtNtNtBg_2io6cursor6CursorRB1F_EE13read_rle_datas2_0E0B1V_.exit.us.i.i

_RNCINvNvXs7_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4takeINtBa_4TakepENtBa_8SpecTake13spec_for_each5checkQShNCNvMs5_NtNtNtCsa5QsYiPB8Gl_5image6codecs3bmp7decoderINtB1P_10BmpDecoderINtNtNtBg_2io6cursor6CursorRB1F_EE13read_rle_datas2_0E0B1V_.exit.us.i.i: ; preds = %.split.us.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.c ; 2 uses
  %i.n = sub nuw i64 %i.l, %i.c                   ; 2 uses
  store ptr %i.m, ptr %i.d, align 8, !alias.scope !357, !noalias !358
  store i64 %i.n, ptr %i.a, align 8, !alias.scope !357, !noalias !358
  tail call void @llvm.experimental.noalias.scope.decl(metadata !359)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !360)
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 2
  store i8 %i.g, ptr %i.o, align 1, !alias.scope !361, !noalias !362
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 1
  store i8 %i.i, ptr %i.p, align 1, !alias.scope !361, !noalias !362
  store i8 %i.j, ptr %i.k, align 1, !alias.scope !361, !noalias !362
  %i.q = icmp eq i64 %.sroa.01.0.us.i.i, 0
  %i.r = add i64 %.sroa.01.0.us.i.i, -1
  br i1 %i.q, label %_RINvXs2_NtNtNtCsj6eKBz9Db1c_4core4iter6traits8iteratorQINtNtNtBc_5slice4iter14ChunksExactMuthENtB6_15IteratorRefSpec13spec_try_foldjNCINvNvXs7_NtNtBa_8adapters4takeINtB2h_4TakepENtB2h_8SpecTake13spec_for_each5checkQShNCNvMs5_NtNtNtCsa5QsYiPB8Gl_5image6codecs3bmp7decoderINtB3B_10BmpDecoderINtNtNtBc_2io6cursor6CursorRB3r_EE13read_rle_datas2_0E0INtNtBc_6option6OptionjEEB3H_.exit, label %.split.us.i.i

.split.i.i:                                       ; preds = %bb.a
  %.not.i.i.i = icmp ugt i64 %i.c, %.promoted.i.i
  br i1 %.not.i.i.i, label %_RINvXs2_NtNtNtCsj6eKBz9Db1c_4core4iter6traits8iteratorQINtNtNtBc_5slice4iter14ChunksExactMuthENtB6_15IteratorRefSpec13spec_try_foldjNCINvNvXs7_NtNtBa_8adapters4takeINtB2h_4TakepENtB2h_8SpecTake13spec_for_each5checkQShNCNvMs5_NtNtNtCsa5QsYiPB8Gl_5image6codecs3bmp7decoderINtB3B_10BmpDecoderINtNtNtBc_2io6cursor6CursorRB3r_EE13read_rle_datas2_0E0INtNtBc_6option6OptionjEEB3H_.exit, label %bb.b

bb.b:                                             ; preds = %.split.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %.promoted14.i.i, i64 %i.c
  %i.t = sub nuw i64 %.promoted.i.i, %i.c
  store ptr %i.s, ptr %i.d, align 8, !alias.scope !357, !noalias !358
  store i64 %i.t, ptr %i.a, align 8, !alias.scope !357, !noalias !358
  tail call void @llvm.experimental.noalias.scope.decl(metadata !359)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !360)
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef 2, i64 noundef range(i64 0, -9223372036854775808) %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #26, !noalias !363
  unreachable

_RINvXs2_NtNtNtCsj6eKBz9Db1c_4core4iter6traits8iteratorQINtNtNtBc_5slice4iter14ChunksExactMuthENtB6_15IteratorRefSpec13spec_try_foldjNCINvNvXs7_NtNtBa_8adapters4takeINtB2h_4TakepENtB2h_8SpecTake13spec_for_each5checkQShNCNvMs5_NtNtNtCsa5QsYiPB8Gl_5image6codecs3bmp7decoderINtB3B_10BmpDecoderINtNtNtBc_2io6cursor6CursorRB3r_EE13read_rle_datas2_0E0INtNtBc_6option6OptionjEEB3H_.exit: ; preds = %.split.us.i.i, %_RNCINvNvXs7_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4takeINtBa_4TakepENtBa_8SpecTake13spec_for_each5checkQShNCNvMs5_NtNtNtCsa5QsYiPB8Gl_5image6codecs3bmp7decoderINtB1P_10BmpDecoderINtNtNtBg_2io6cursor6CursorRB1F_EE13read_rle_datas2_0E0B1V_.exit.us.i.i, %.split.i.i
  %.us-phi.i.i = phi i64 [ %1, %.split.i.i ], [ %.sroa.01.0.us.i.i, %.split.us.i.i ], [ undef, %_RNCINvNvXs7_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4takeINtBa_4TakepENtBa_8SpecTake13spec_for_each5checkQShNCNvMs5_NtNtNtCsa5QsYiPB8Gl_5image6codecs3bmp7decoderINtB1P_10BmpDecoderINtNtNtBg_2io6cursor6CursorRB1F_EE13read_rle_datas2_0E0B1V_.exit.us.i.i ]
  %.us-phi17.i.i = phi i64 [ 1, %.split.i.i ], [ 1, %.split.us.i.i ], [ 0, %_RNCINvNvXs7_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters4takeINtBa_4TakepENtBa_8SpecTake13spec_for_each5checkQShNCNvMs5_NtNtNtCsa5QsYiPB8Gl_5image6codecs3bmp7decoderINtB1P_10BmpDecoderINtNtNtBg_2io6cursor6CursorRB1F_EE13read_rle_datas2_0E0B1V_.exit.us.i.i ]
  %i.u = insertvalue { i64, i64 } poison, i64 %.us-phi17.i.i, 0
  %i.v = insertvalue { i64, i64 } %i.u, i64 %.us-phi.i.i, 1
  ret { i64, i64 } %i.v
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs8_NtNtNtCsdsTQD3x2eOp_3exr5image4read17specific_channelsINtNtBa_9recursive9RecursiveIBZ_IBZ_IBZ_NtB11_8NoneMoreINtB6_12SampleReaderfEEB1R_EB1R_EINtB6_20OptionalSampleReaderfEENtB6_20RecursivePixelReader11read_pixelsIBZ_IBZ_IBZ_IBZ_B1C_fEfEfEfENCNvXs1_B6_INtB6_22SpecificChannelsReaderINtNtCs4wP2HXfJTCR_5alloc3vec3VecfERNCNvXs_NtNtCsa5QsYiPB8Gl_5image6codecs7openexrINtB5l_14OpenExrDecoderINtNtNtCsj6eKBz9Db1c_4core2io6cursor6CursorRShEENtNtNtB5p_2io7decoder12ImageDecoder10read_images1_0BY_TffffEENtNtB8_6layers14ChannelsReader10read_block0EB5p_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(296) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2, ptr noalias nofree noundef nonnull align 4 %3, i64 noundef range(i64 0, 576460752303423488) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.f = load i8, ptr %i.e, align 8, !range !15, !noundef !7
end_hunk_0
