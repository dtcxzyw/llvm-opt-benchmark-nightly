Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/flac/original/format?download=true
inline.NumInlined: 4
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
@FLAC__STREAM_METADATA_CUESHEET_IS_CD_LEN = local_unnamed_addr constant i32 1, align 4
@FLAC__STREAM_METADATA_CUESHEET_RESERVED_LEN = local_unnamed_addr constant i32 2071, align 4
@FLAC__STREAM_METADATA_CUESHEET_NUM_TRACKS_LEN = local_unnamed_addr constant i32 8, align 4
@FLAC__STREAM_METADATA_PICTURE_TYPE_LEN = local_unnamed_addr constant i32 32, align 4
@FLAC__STREAM_METADATA_PICTURE_MIME_TYPE_LENGTH_LEN = local_unnamed_addr constant i32 32, align 4
@FLAC__STREAM_METADATA_PICTURE_DESCRIPTION_LENGTH_LEN = local_unnamed_addr constant i32 32, align 4
@FLAC__STREAM_METADATA_PICTURE_WIDTH_LEN = local_unnamed_addr constant i32 32, align 4
@FLAC__STREAM_METADATA_PICTURE_HEIGHT_LEN = local_unnamed_addr constant i32 32, align 4
@FLAC__STREAM_METADATA_PICTURE_DEPTH_LEN = local_unnamed_addr constant i32 32, align 4
@FLAC__STREAM_METADATA_PICTURE_COLORS_LEN = local_unnamed_addr constant i32 32, align 4
@FLAC__STREAM_METADATA_PICTURE_DATA_LENGTH_LEN = local_unnamed_addr constant i32 32, align 4
@FLAC__STREAM_METADATA_IS_LAST_LEN = local_unnamed_addr constant i32 1, align 4
@FLAC__STREAM_METADATA_TYPE_LEN = local_unnamed_addr constant i32 7, align 4
@FLAC__STREAM_METADATA_LENGTH_LEN = local_unnamed_addr constant i32 24, align 4
@FLAC__FRAME_HEADER_SYNC = local_unnamed_addr constant i32 16382, align 4
@FLAC__FRAME_HEADER_SYNC_LEN = local_unnamed_addr constant i32 14, align 4
@FLAC__FRAME_HEADER_RESERVED_LEN = local_unnamed_addr constant i32 1, align 4
@FLAC__FRAME_HEADER_BLOCKING_STRATEGY_LEN = local_unnamed_addr constant i32 1, align 4
@FLAC__FRAME_HEADER_BLOCK_SIZE_LEN = local_unnamed_addr constant i32 4, align 4
@FLAC__FRAME_HEADER_SAMPLE_RATE_LEN = local_unnamed_addr constant i32 4, align 4
@FLAC__FRAME_HEADER_CHANNEL_ASSIGNMENT_LEN = local_unnamed_addr constant i32 4, align 4
@FLAC__FRAME_HEADER_BITS_PER_SAMPLE_LEN = local_unnamed_addr constant i32 3, align 4
@FLAC__FRAME_HEADER_ZERO_PAD_LEN = local_unnamed_addr constant i32 1, align 4
@FLAC__FRAME_HEADER_CRC_LEN = local_unnamed_addr constant i32 8, align 4
@FLAC__FRAME_FOOTER_CRC_LEN = local_unnamed_addr constant i32 16, align 4
@FLAC__ENTROPY_CODING_METHOD_TYPE_LEN = local_unnamed_addr constant i32 2, align 4
@FLAC__ENTROPY_CODING_METHOD_PARTITIONED_RICE_ORDER_LEN = local_unnamed_addr constant i32 4, align 4
@FLAC__ENTROPY_CODING_METHOD_PARTITIONED_RICE_PARAMETER_LEN = local_unnamed_addr constant i32 4, align 4
@FLAC__ENTROPY_CODING_METHOD_PARTITIONED_RICE2_PARAMETER_LEN = local_unnamed_addr constant i32 5, align 4
@FLAC__ENTROPY_CODING_METHOD_PARTITIONED_RICE_RAW_LEN = local_unnamed_addr constant i32 5, align 4
@FLAC__ENTROPY_CODING_METHOD_PARTITIONED_RICE_ESCAPE_PARAMETER = local_unnamed_addr constant i32 15, align 4
@FLAC__ENTROPY_CODING_METHOD_PARTITIONED_RICE2_ESCAPE_PARAMETER = local_unnamed_addr constant i32 31, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"PARTITIONED_RICE\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"PARTITIONED_RICE2\00", align 1
@FLAC__EntropyCodingMethodTypeString = local_unnamed_addr constant [2 x ptr] [ptr @.str.2, ptr @.str.3], align 16
@FLAC__SUBFRAME_LPC_QLP_COEFF_PRECISION_LEN = local_unnamed_addr constant i32 4, align 4
@FLAC__SUBFRAME_LPC_QLP_SHIFT_LEN = local_unnamed_addr constant i32 5, align 4
@FLAC__SUBFRAME_ZERO_PAD_LEN = local_unnamed_addr constant i32 1, align 4
@FLAC__SUBFRAME_TYPE_LEN = local_unnamed_addr constant i32 6, align 4
@FLAC__SUBFRAME_WASTED_BITS_FLAG_LEN = local_unnamed_addr constant i32 1, align 4
@FLAC__SUBFRAME_TYPE_CONSTANT_BYTE_ALIGNED_MASK = local_unnamed_addr constant i32 0, align 4
@FLAC__SUBFRAME_TYPE_VERBATIM_BYTE_ALIGNED_MASK = local_unnamed_addr constant i32 2, align 4
@FLAC__SUBFRAME_TYPE_FIXED_BYTE_ALIGNED_MASK = local_unnamed_addr constant i32 16, align 4
@FLAC__SUBFRAME_TYPE_LPC_BYTE_ALIGNED_MASK = local_unnamed_addr constant i32 64, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"CONSTANT\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"VERBATIM\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"FIXED\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"LPC\00", align 1
@FLAC__SubframeTypeString = local_unnamed_addr constant [4 x ptr] [ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7], align 16
@.str.8 = private unnamed_addr constant [12 x i8] c"INDEPENDENT\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"LEFT_SIDE\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"RIGHT_SIDE\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"MID_SIDE\00", align 1
@FLAC__ChannelAssignmentString = local_unnamed_addr constant [4 x ptr] [ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11], align 16
@.str.12 = private unnamed_addr constant [31 x i8] c"FRAME_NUMBER_TYPE_FRAME_NUMBER\00", align 1
@.str.13 = private unnamed_addr constant [32 x i8] c"FRAME_NUMBER_TYPE_SAMPLE_NUMBER\00", align 1
@FLAC__FrameNumberTypeString = local_unnamed_addr constant [2 x ptr] [ptr @.str.12, ptr @.str.13], align 16
@.str.14 = private unnamed_addr constant [11 x i8] c"STREAMINFO\00", align 1
@.str.15 = private unnamed_addr constant [8 x i8] c"PADDING\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"APPLICATION\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"SEEKTABLE\00", align 1
@.str.18 = private unnamed_addr constant [15 x i8] c"VORBIS_COMMENT\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"CUESHEET\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"PICTURE\00", align 1
@FLAC__MetadataTypeString = local_unnamed_addr constant [7 x ptr] [ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20], align 16
@.str.21 = private unnamed_addr constant [6 x i8] c"Other\00", align 1
@.str.22 = private unnamed_addr constant [36 x i8] c"32x32 pixels 'file icon' (PNG only)\00", align 1
@.str.23 = private unnamed_addr constant [16 x i8] c"Other file icon\00", align 1
@.str.24 = private unnamed_addr constant [14 x i8] c"Cover (front)\00", align 1
@.str.25 = private unnamed_addr constant [13 x i8] c"Cover (back)\00", align 1
@.str.26 = private unnamed_addr constant [13 x i8] c"Leaflet page\00", align 1
@.str.27 = private unnamed_addr constant [30 x i8] c"Media (e.g. label side of CD)\00", align 1
@.str.28 = private unnamed_addr constant [35 x i8] c"Lead artist/lead performer/soloist\00", align 1
@.str.29 = private unnamed_addr constant [17 x i8] c"Artist/performer\00", align 1
@.str.30 = private unnamed_addr constant [10 x i8] c"Conductor\00", align 1
@.str.31 = private unnamed_addr constant [15 x i8] c"Band/Orchestra\00", align 1
@.str.32 = private unnamed_addr constant [9 x i8] c"Composer\00", align 1
@.str.33 = private unnamed_addr constant [21 x i8] c"Lyricist/text writer\00", align 1
@.str.34 = private unnamed_addr constant [19 x i8] c"Recording Location\00", align 1
@.str.35 = private unnamed_addr constant [17 x i8] c"During recording\00", align 1
@.str.36 = private unnamed_addr constant [19 x i8] c"During performance\00", align 1
@.str.37 = private unnamed_addr constant [27 x i8] c"Movie/video screen capture\00", align 1
@.str.38 = private unnamed_addr constant [23 x i8] c"A bright coloured fish\00", align 1
@.str.39 = private unnamed_addr constant [13 x i8] c"Illustration\00", align 1
@.str.40 = private unnamed_addr constant [21 x i8] c"Band/artist logotype\00", align 1
@.str.41 = private unnamed_addr constant [26 x i8] c"Publisher/Studio logotype\00", align 1
@FLAC__StreamMetadata_Picture_TypeString = local_unnamed_addr constant [21 x ptr] [ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41], align 16
@.str.42 = private unnamed_addr constant [65 x i8] c"CD-DA cue sheet must have a lead-in length of at least 2 seconds\00", align 1
@.str.43 = private unnamed_addr constant [71 x i8] c"CD-DA cue sheet lead-in length must be evenly divisible by 588 samples\00", align 1
@.str.44 = private unnamed_addr constant [54 x i8] c"cue sheet must have at least one track (the lead-out)\00", align 1
@.str.45 = private unnamed_addr constant [61 x i8] c"CD-DA cue sheet must have a lead-out track number 170 (0xAA)\00", align 1
@.str.46 = private unnamed_addr constant [40 x i8] c"cue sheet may not have a track number 0\00", align 1
@.str.47 = private unnamed_addr constant [49 x i8] c"CD-DA cue sheet track number must be 1-99 or 170\00", align 1
@.str.48 = private unnamed_addr constant [72 x i8] c"CD-DA cue sheet lead-out offset must be evenly divisible by 588 samples\00", align 1
@.str.49 = private unnamed_addr constant [69 x i8] c"CD-DA cue sheet track offset must be evenly divisible by 588 samples\00", align 1
@.str.50 = private unnamed_addr constant [51 x i8] c"cue sheet track must have at least one index point\00", align 1
@.str.51 = private unnamed_addr constant [52 x i8] c"cue sheet track's first index number must be 0 or 1\00", align 1
@.str.52 = private unnamed_addr constant [75 x i8] c"CD-DA cue sheet track index offset must be evenly divisible by 588 samples\00", align 1
@.str.53 = private unnamed_addr constant [49 x i8] c"cue sheet track index numbers must increase by 1\00", align 1
@.str.54 = private unnamed_addr constant [74 x i8] c"MIME type string must contain only printable ASCII characters (0x20-0x7e)\00", align 1
@.str.55 = private unnamed_addr constant [39 x i8] c"description string must be valid UTF-8\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define noundef range(i32 0, 2) i32 @FLAC__format_sample_rate_is_valid(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ult i32 %0, 1048576
  %. = zext i1 %i.a to i32
  ret i32 %.
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define noundef range(i32 0, 2) i32 @FLAC__format_blocksize_is_subset(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ult i32 %0, 16385
  %i.b = icmp ugt i32 %1, 48000
  %i.c = icmp ult i32 %0, 4609
  %or.cond.not = or i1 %i.c, %i.b
  %narrow = and i1 %i.a, %or.cond.not
  %.0 = zext i1 %narrow to i32
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define range(i32 0, 2) i32 @FLAC__format_sample_rate_is_subset(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ugt i32 %0, 655359
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp samesign ult i32 %0, 65536
  %i.c = urem i32 %0, 10
  %.not = icmp eq i32 %i.c, 0
  %or.cond7 = or i1 %i.b, %.not
  %spec.select = zext i1 %or.cond7 to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ %spec.select, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(read, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 2) i32 @FLAC__format_seektable_is_legal(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !10     ; 4 uses
  %i.b = icmp ugt i32 %i.a, 932067
  br i1 %i.b, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %.preheader
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %wide.trip.count = zext nneg i32 %i.a to i64
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !11  ; 2 uses
  %exitcond.peel.not = icmp eq i32 %i.a, 1
  br i1 %exitcond.peel.not, label %.loopexit, label %.peel.next.preheader

.peel.next.preheader:                             ; preds = %bb.b
  %.pre24 = load i64, ptr %.pre, align 8, !tbaa !14
  br label %.peel.next

.peel.next:                                       ; preds = %.peel.next.preheader, %bb.c
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.c ], [ 1, %.peel.next.preheader ] ; 2 uses
  %.01219 = phi i64 [ %i.e, %bb.c ], [ %.pre24, %.peel.next.preheader ]
  %i.d = getelementptr inbounds nuw [24 x i8], ptr %.pre, i64 %indvars.iv
  %i.e = load i64, ptr %i.d, align 8, !tbaa !14   ; 3 uses
  %.not16 = icmp eq i64 %i.e, -1
  %.not17 = icmp ugt i64 %i.e, %.01219
  %or.cond = select i1 %.not16, i1 true, i1 %.not17
  br i1 %or.cond, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %.peel.next
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.peel.next, !llvm.loop !24

.loopexit:                                        ; preds = %.peel.next, %bb.c, %bb.b, %.preheader, %bb.a
  %.014 = phi i32 [ 0, %bb.a ], [ 1, %.preheader ], [ 1, %bb.b ], [ 1, %bb.c ], [ 0, %.peel.next ]
  ret i32 %.014
}

; Function Attrs: nofree nounwind sspstrong uwtable
define i32 @FLAC__format_seektable_sort(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !10     ; 2 uses
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !11
  %i.e = zext i32 %i.a to i64
  tail call void @qsort(ptr noundef %i.d, i64 noundef %i.e, i64 noundef 24, ptr noundef nonnull @seekpoint_compare_) #16
  %i.f = load i32, ptr %0, align 8, !tbaa !10
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.pre = load i32, ptr %0, align 8, !tbaa !10    ; 3 uses
  %i.g = icmp ugt i32 %.pre, 1
  br i1 %i.g, label %.lr.ph, label %.preheader

.preheader:                                       ; preds = %bb.f, %bb.c
  %.029.lcssa = phi i32 [ 1, %bb.c ], [ %.130, %bb.f ] ; 5 uses
  %.lcssa = phi i32 [ %.pre, %bb.c ], [ %i.ad, %bb.f ] ; 2 uses
  %i.h = icmp ult i32 %.029.lcssa, %.lcssa
  br i1 %i.h, label %.lr.ph40, label %.loopexit

.lr.ph40:                                         ; preds = %.preheader
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !11   ; 5 uses
  %i.j = zext i32 %.029.lcssa to i64              ; 4 uses
  %wide.trip.count = zext i32 %.lcssa to i64      ; 3 uses
  %i.k = sub nsw i64 %wide.trip.count, %i.j
  %xtraiter = and i64 %i.k, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph40, %.prol.preheader
  %indvars.iv43.prol = phi i64 [ %indvars.iv.next44.prol, %.prol.preheader ], [ %i.j, %.lr.ph40 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph40 ]
  %i.l = getelementptr inbounds nuw [24 x i8], ptr %i.i, i64 %indvars.iv43.prol ; 3 uses
  store i64 -1, ptr %i.l, align 8, !tbaa !14
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 0, ptr %i.m, align 8, !tbaa !28
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i32 0, ptr %i.n, align 8, !tbaa !29
  %indvars.iv.next44.prol = add nuw nsw i64 %indvars.iv43.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !25

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph40
  %indvars.iv43.unr = phi i64 [ %i.j, %.lr.ph40 ], [ %indvars.iv.next44.prol, %.prol.preheader ]
  %i.o = sub nsw i64 %i.j, %wide.trip.count
  %i.p = icmp ugt i64 %i.o, -4
  br i1 %i.p, label %.loopexit, label %.lr.ph40.new

.lr.ph:                                           ; preds = %bb.c, %bb.f
  %i.q = phi i32 [ %i.ad, %bb.f ], [ %.pre, %bb.c ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.f ], [ 1, %bb.c ] ; 2 uses
  %.02937 = phi i32 [ %.130, %bb.f ], [ 1, %bb.c ] ; 4 uses
  %i.r = load ptr, ptr %i.c, align 8, !tbaa !11   ; 3 uses
  %i.s = getelementptr inbounds nuw [24 x i8], ptr %i.r, i64 %indvars.iv ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !14   ; 2 uses
  %i.u = icmp eq i64 %i.t, -1
  br i1 %i.u, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.v = add i32 %.02937, -1
  %i.w = zext i32 %i.v to i64
  %i.x = getelementptr inbounds nuw [24 x i8], ptr %i.r, i64 %i.w
  %i.y = load i64, ptr %i.x, align 8, !tbaa !14
  %i.z = icmp eq i64 %i.t, %i.y
  br i1 %i.z, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph
  %i.aa = add i32 %.02937, 1
  %i.ab = zext i32 %.02937 to i64
  %i.ac = getelementptr inbounds nuw [24 x i8], ptr %i.r, i64 %i.ab
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false), !tbaa.struct !33
  %.pre47 = load i32, ptr %0, align 8, !tbaa !10
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.ad = phi i32 [ %.pre47, %bb.e ], [ %i.q, %bb.d ] ; 3 uses
  %.130 = phi i32 [ %i.aa, %bb.e ], [ %.02937, %bb.d ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ae = zext i32 %i.ad to i64
  %i.af = icmp samesign ult i64 %indvars.iv.next, %i.ae
  br i1 %i.af, label %.lr.ph, label %.preheader, !llvm.loop !26

.lr.ph40.new:                                     ; preds = %.prol.loopexit, %.lr.ph40.new
  %indvars.iv43 = phi i64 [ %indvars.iv.next44.3, %.lr.ph40.new ], [ %indvars.iv43.unr, %.prol.loopexit ] ; 5 uses
  %i.ag = getelementptr inbounds nuw [24 x i8], ptr %i.i, i64 %indvars.iv43 ; 3 uses
  store i64 -1, ptr %i.ag, align 8, !tbaa !14
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store i64 0, ptr %i.ah, align 8, !tbaa !28
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store i32 0, ptr %i.ai, align 8, !tbaa !29
  %i.aj = getelementptr inbounds nuw [24 x i8], ptr %i.i, i64 %indvars.iv43 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  store i64 -1, ptr %i.ak, align 8, !tbaa !14
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  store i64 0, ptr %i.al, align 8, !tbaa !28
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 40
  store i32 0, ptr %i.am, align 8, !tbaa !29
  %i.an = getelementptr inbounds nuw [24 x i8], ptr %i.i, i64 %indvars.iv43 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 48
  store i64 -1, ptr %i.ao, align 8, !tbaa !14
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 56
  store i64 0, ptr %i.ap, align 8, !tbaa !28
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 64
  store i32 0, ptr %i.aq, align 8, !tbaa !29
  %i.ar = getelementptr inbounds nuw [24 x i8], ptr %i.i, i64 %indvars.iv43 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 72
  store i64 -1, ptr %i.as, align 8, !tbaa !14
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 80
  store i64 0, ptr %i.at, align 8, !tbaa !28
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 88
  store i32 0, ptr %i.au, align 8, !tbaa !29
  %indvars.iv.next44.3 = add nuw nsw i64 %indvars.iv43, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next44.3, %wide.trip.count
  br i1 %exitcond.not.3, label %.loopexit, label %.lr.ph40.new, !llvm.loop !27

.loopexit:                                        ; preds = %.prol.loopexit, %.lr.ph40.new, %bb.b, %.preheader, %bb.a
  %.033 = phi i32 [ 0, %bb.a ], [ %.029.lcssa, %.preheader ], [ 0, %bb.b ], [ %.029.lcssa, %.lr.ph40.new ], [ %.029.lcssa, %.prol.loopexit ]
  ret i32 %.033
}

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define internal range(i32 -1, 2) i32 @seekpoint_compare_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #4 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !14
  %i.b = load i64, ptr %1, align 8, !tbaa !14
  %.0 = tail call i32 @llvm.ucmp.i32.i64(i64 %i.a, i64 %i.b)
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(argmem: read) uwtable
define range(i32 0, 2) i32 @FLAC__format_vorbiscomment_entry_name_is_legal(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %.013 = load i8, ptr %0, align 1, !tbaa !17     ; 2 uses
  %.not14 = icmp eq i8 %.013, 0
  br i1 %.not14, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.a = getelementptr inbounds nuw i8, ptr %.01115, i64 1 ; 2 uses
  %.0 = load i8, ptr %i.a, align 1, !tbaa !17     ; 2 uses
  %.not = icmp eq i8 %.0, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !34

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.016 = phi i8 [ %.0, %bb.b ], [ %.013, %bb.a ] ; 2 uses
  %.01115 = phi ptr [ %i.a, %bb.b ], [ %0, %bb.a ]
  %i.b = icmp eq i8 %.016, 61
  %i.c = add i8 %.016, -126
  %i.d = icmp ult i8 %i.c, -94
  %or.cond5 = or i1 %i.b, %i.d
  br i1 %or.cond5, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %.lr.ph, %bb.b, %bb.a
  %.012 = phi i32 [ 1, %bb.a ], [ 1, %bb.b ], [ 0, %.lr.ph ]
  ret i32 %.012
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(argmem: read) uwtable
define range(i32 0, 2) i32 @FLAC__format_vorbiscomment_entry_value_is_legal(ptr nofree noundef readonly captures(address) %0, i32 noundef %1) local_unnamed_addr #6 {
bb.a:
  %i.a = icmp eq i32 %1, -1
  br i1 %i.a, label %.preheader, label %bb.c

.preheader:                                       ; preds = %bb.a, %bb.b
  %.022 = phi ptr [ %i.e, %bb.b ], [ %0, %bb.a ]  ; 3 uses
  %i.b = load i8, ptr %.022, align 1, !tbaa !17
  %.not31 = icmp eq i8 %i.b, 0
  br i1 %.not31, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %.preheader
  %i.c = tail call fastcc i32 @utf8len_(ptr noundef nonnull %.022) ; 2 uses
  %.not33 = icmp eq i32 %i.c, 0
  %i.d = zext nneg i32 %i.c to i64
  %i.e = getelementptr inbounds nuw i8, ptr %.022, i64 %i.d
  br i1 %.not33, label %.loopexit, label %.preheader

bb.c:                                             ; preds = %bb.a
  %i.f = zext i32 %1 to i64
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 %i.f ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %.224 = phi ptr [ %0, %bb.c ], [ %i.k, %bb.e ]  ; 4 uses
  %i.h = icmp ult ptr %.224, %i.g
  br i1 %i.h, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.i = tail call fastcc i32 @utf8len_(ptr noundef %.224) ; 2 uses
  %.not30 = icmp eq i32 %i.i, 0
  %i.j = zext nneg i32 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr %.224, i64 %i.j
  br i1 %.not30, label %.thread, label %bb.d, !llvm.loop !35

bb.f:                                             ; preds = %bb.d
  %.not = icmp eq ptr %.224, %i.g
  br i1 %.not, label %.loopexit, label %.thread

.thread:                                          ; preds = %bb.e, %bb.f
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader, %bb.b, %bb.f, %.thread
  %.5 = phi i32 [ 1, %bb.f ], [ 0, %.thread ], [ 1, %.preheader ], [ 0, %bb.b ]
  ret i32 %.5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define internal fastcc range(i32 0, 7) i32 @utf8len_(ptr nofree noundef readonly captures(none) %0) unnamed_addr #4 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !17      ; 11 uses
  %i.b = zext i8 %i.a to i32                      ; 2 uses
  %i.c = icmp sgt i8 %i.a, -1
  br i1 %i.c, label %bb.ad, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = and i32 %i.b, 224
  %i.e = icmp eq i32 %i.d, 192
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.g = load i8, ptr %i.f, align 1, !tbaa !17
  %i.h = icmp slt i8 %i.g, -64
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = and i32 %i.b, 222
  %i.j = icmp eq i32 %i.i, 192
  %. = select i1 %i.j, i32 0, i32 2
  br label %bb.ad

bb.e:                                             ; preds = %bb.c, %bb.b
  %i.k = and i8 %i.a, -16
  %i.l = icmp eq i8 %i.k, -32
  br i1 %i.l, label %bb.f, label %bb.l

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.n = load i8, ptr %i.m, align 1, !tbaa !17    ; 3 uses
  %i.o = zext i8 %i.n to i32                      ; 2 uses
  %i.p = and i32 %i.o, 192
  %i.q = icmp eq i32 %i.p, 128
  br i1 %i.q, label %bb.g, label %bb.l

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.s = load i8, ptr %i.r, align 1, !tbaa !17    ; 2 uses
  %i.t = icmp slt i8 %i.s, -64
  br i1 %i.t, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.u = icmp eq i8 %i.a, -32
  %i.v = and i32 %i.o, 160
  %i.w = icmp eq i32 %i.v, 128
  %or.cond = and i1 %i.u, %i.w
  br i1 %or.cond, label %bb.ad, label %bb.i

bb.i:                                             ; preds = %bb.h
  switch i8 %i.a, label %.thread [
    i8 -19, label %bb.j
    i8 -17, label %bb.k
  ]

bb.j:                                             ; preds = %bb.i
  %i.x = and i8 %i.n, -32
  %i.y = icmp eq i8 %i.x, -96
  br i1 %i.y, label %bb.ad, label %.thread

bb.k:                                             ; preds = %bb.i
  %i.z = icmp eq i8 %i.n, -65
  %i.aa = and i8 %i.s, -66
  %i.ab = icmp eq i8 %i.aa, -66
  %or.cond45 = and i1 %i.z, %i.ab
  br i1 %or.cond45, label %bb.ad, label %.thread

.thread:                                          ; preds = %bb.i, %bb.j, %bb.k
  br label %bb.ad

bb.l:                                             ; preds = %bb.g, %bb.f, %bb.e
  %i.ac = and i8 %i.a, -8
  %i.ad = icmp eq i8 %i.ac, -16
  br i1 %i.ad, label %bb.m, label %bb.q

bb.m:                                             ; preds = %bb.l
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !17
  %i.ag = zext i8 %i.af to i32                    ; 2 uses
  %i.ah = and i32 %i.ag, 192
  %i.ai = icmp eq i32 %i.ah, 128
  br i1 %i.ai, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !17
  %i.al = icmp slt i8 %i.ak, -64
  br i1 %i.al, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.an = load i8, ptr %i.am, align 1, !tbaa !17
  %i.ao = icmp slt i8 %i.an, -64
  br i1 %i.ao, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ap = icmp eq i8 %i.a, -16
  %i.aq = and i32 %i.ag, 176
  %i.ar = icmp eq i32 %i.aq, 128
  %or.cond37 = and i1 %i.ap, %i.ar
  %spec.select = select i1 %or.cond37, i32 0, i32 4
  br label %bb.ad

bb.q:                                             ; preds = %bb.o, %bb.n, %bb.m, %bb.l
  %i.as = and i8 %i.a, -4
end_hunk_0
