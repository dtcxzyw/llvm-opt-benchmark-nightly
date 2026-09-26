Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/flac/original/metadata_object?download=true
inline.NumInlined: 94
inline.NumDeleted: 26
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 13
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.FLAC__StreamMetadata_SeekPoint = type { i64, i64, i32 }
%struct.FLAC__StreamMetadata_VorbisComment_Entry = type { i32, ptr }
%struct.set_raw_client_data = type { ptr, i32, ptr, i32, i32 }

@FLAC__STREAM_METADATA_APPLICATION_ID_LEN = external local_unnamed_addr constant i32, align 4
@FLAC__VENDOR_STRING = external local_unnamed_addr global ptr, align 8
@FLAC__STREAM_METADATA_PICTURE_TYPE_LEN = external local_unnamed_addr constant i32, align 4
@FLAC__STREAM_METADATA_PICTURE_MIME_TYPE_LENGTH_LEN = external local_unnamed_addr constant i32, align 4
@FLAC__STREAM_METADATA_PICTURE_DESCRIPTION_LENGTH_LEN = external local_unnamed_addr constant i32, align 4
@FLAC__STREAM_METADATA_PICTURE_WIDTH_LEN = external local_unnamed_addr constant i32, align 4
@FLAC__STREAM_METADATA_PICTURE_HEIGHT_LEN = external local_unnamed_addr constant i32, align 4
@FLAC__STREAM_METADATA_PICTURE_DEPTH_LEN = external local_unnamed_addr constant i32, align 4
@FLAC__STREAM_METADATA_PICTURE_COLORS_LEN = external local_unnamed_addr constant i32, align 4
@FLAC__STREAM_METADATA_PICTURE_DATA_LENGTH_LEN = external local_unnamed_addr constant i32, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@FLAC__STREAM_METADATA_LENGTH_LEN = external local_unnamed_addr constant i32, align 4
@FLAC__STREAM_METADATA_SEEKPOINT_PLACEHOLDER = external local_unnamed_addr constant i64, align 8
@FLAC__STREAM_METADATA_VORBIS_COMMENT_ENTRY_LENGTH_LEN = external local_unnamed_addr constant i32, align 4
@FLAC__STREAM_METADATA_VORBIS_COMMENT_NUM_COMMENTS_LEN = external local_unnamed_addr constant i32, align 4
@FLAC__STREAM_METADATA_CUESHEET_MEDIA_CATALOG_NUMBER_LEN = external local_unnamed_addr constant i32, align 4
@FLAC__STREAM_METADATA_CUESHEET_LEAD_IN_LEN = external local_unnamed_addr constant i32, align 4
@FLAC__STREAM_METADATA_CUESHEET_IS_CD_LEN = external local_unnamed_addr constant i32, align 4
@FLAC__STREAM_METADATA_CUESHEET_RESERVED_LEN = external local_unnamed_addr constant i32, align 4
@FLAC__STREAM_METADATA_CUESHEET_NUM_TRACKS_LEN = external local_unnamed_addr constant i32, align 4
@FLAC__STREAM_METADATA_CUESHEET_TRACK_OFFSET_LEN = external local_unnamed_addr constant i32, align 4
@FLAC__STREAM_METADATA_CUESHEET_TRACK_NUMBER_LEN = external local_unnamed_addr constant i32, align 4
@FLAC__STREAM_METADATA_CUESHEET_TRACK_ISRC_LEN = external local_unnamed_addr constant i32, align 4
@FLAC__STREAM_METADATA_CUESHEET_TRACK_TYPE_LEN = external local_unnamed_addr constant i32, align 4
@FLAC__STREAM_METADATA_CUESHEET_TRACK_PRE_EMPHASIS_LEN = external local_unnamed_addr constant i32, align 4
@FLAC__STREAM_METADATA_CUESHEET_TRACK_RESERVED_LEN = external local_unnamed_addr constant i32, align 4
@FLAC__STREAM_METADATA_CUESHEET_TRACK_NUM_INDICES_LEN = external local_unnamed_addr constant i32, align 4
@FLAC__STREAM_METADATA_CUESHEET_INDEX_OFFSET_LEN = external local_unnamed_addr constant i32, align 4
@FLAC__STREAM_METADATA_CUESHEET_INDEX_NUMBER_LEN = external local_unnamed_addr constant i32, align 4
@FLAC__STREAM_METADATA_CUESHEET_INDEX_RESERVED_LEN = external local_unnamed_addr constant i32, align 4

; Function Attrs: nounwind sspstrong memory(readwrite, target_mem: none) uwtable
define noundef ptr @FLAC__metadata_object_new(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ugt i32 %0, 126
  br i1 %i.a, label %vorbiscomment_calculate_length_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noalias dereferenceable_or_null(176) ptr @calloc(i64 noundef 1, i64 noundef 176) #28 ; 20 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %vorbiscomment_calculate_length_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 %0, ptr %i.b, align 8, !tbaa !13
  switch i32 %0, label %vorbiscomment_calculate_length_.exit [
    i32 0, label %bb.d
    i32 6, label %bb.k
    i32 2, label %bb.e
    i32 5, label %bb.j
    i32 4, label %bb.f
  ]

bb.d:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 34, ptr %i.c, align 8, !tbaa !14
  br label %vorbiscomment_calculate_length_.exit

bb.e:                                             ; preds = %bb.c
  %i.d = load i32, ptr @FLAC__STREAM_METADATA_APPLICATION_ID_LEN, align 4, !tbaa !15
  %i.e = lshr i32 %i.d, 3
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 %i.e, ptr %i.f, align 8, !tbaa !14
  br label %vorbiscomment_calculate_length_.exit

bb.f:                                             ; preds = %bb.c
  %i.g = load ptr, ptr @FLAC__VENDOR_STRING, align 8, !tbaa !18 ; 2 uses
  %i.h = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.g) #29
  %i.i = trunc i64 %i.h to i32                    ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 %i.i, ptr %i.j, align 8, !tbaa !19
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.l = add i32 %i.i, 1                          ; 2 uses
  %.not46 = icmp eq i32 %i.l, 0
  br i1 %.not46, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = zext i32 %i.l to i64                     ; 2 uses
  %i.n = tail call noalias noundef ptr @malloc(i64 noundef %i.m) #30 ; 3 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.h, label %.thread.i

.thread.i:                                        ; preds = %bb.g
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.n, ptr noundef nonnull readonly align 1 %i.g, i64 noundef %i.m, i1 noundef false) #31
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @free(ptr noundef nonnull %i.b) #31
  br label %vorbiscomment_calculate_length_.exit

bb.i:                                             ; preds = %.thread.i, %bb.f
  %.sink.i = phi ptr [ %i.n, %.thread.i ], [ null, %bb.f ]
  store ptr %.sink.i, ptr %i.k, align 8, !tbaa !18
  %i.p = load i32, ptr @FLAC__STREAM_METADATA_VORBIS_COMMENT_ENTRY_LENGTH_LEN, align 4, !tbaa !15
  %i.q = lshr i32 %i.p, 3
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.s = add i32 %i.q, %i.i
  %i.t = load i32, ptr @FLAC__STREAM_METADATA_VORBIS_COMMENT_NUM_COMMENTS_LEN, align 4, !tbaa !15
  %i.u = lshr i32 %i.t, 3
  %i.v = add i32 %i.s, %i.u
  store i32 %i.v, ptr %i.r, align 8, !tbaa !14
  br label %vorbiscomment_calculate_length_.exit

bb.j:                                             ; preds = %bb.c
  %i.w = load i32, ptr @FLAC__STREAM_METADATA_CUESHEET_MEDIA_CATALOG_NUMBER_LEN, align 4, !tbaa !15
  %i.x = load i32, ptr @FLAC__STREAM_METADATA_CUESHEET_LEAD_IN_LEN, align 4, !tbaa !15
  %i.y = add i32 %i.x, %i.w
  %i.z = load i32, ptr @FLAC__STREAM_METADATA_CUESHEET_IS_CD_LEN, align 4, !tbaa !15
  %i.aa = add i32 %i.y, %i.z
  %i.ab = load i32, ptr @FLAC__STREAM_METADATA_CUESHEET_RESERVED_LEN, align 4, !tbaa !15
  %i.ac = add i32 %i.aa, %i.ab
  %i.ad = load i32, ptr @FLAC__STREAM_METADATA_CUESHEET_NUM_TRACKS_LEN, align 4, !tbaa !15
  %i.ae = add i32 %i.ac, %i.ad
  %i.af = lshr i32 %i.ae, 3
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 %i.af, ptr %i.ag, align 8, !tbaa !14
  br label %vorbiscomment_calculate_length_.exit

bb.k:                                             ; preds = %bb.c
  %i.ah = load i32, ptr @FLAC__STREAM_METADATA_PICTURE_TYPE_LEN, align 4, !tbaa !15
  %i.ai = load i32, ptr @FLAC__STREAM_METADATA_PICTURE_MIME_TYPE_LENGTH_LEN, align 4, !tbaa !15
  %i.aj = add i32 %i.ai, %i.ah
  %i.ak = load i32, ptr @FLAC__STREAM_METADATA_PICTURE_DESCRIPTION_LENGTH_LEN, align 4, !tbaa !15
  %i.al = add i32 %i.aj, %i.ak
  %i.am = load i32, ptr @FLAC__STREAM_METADATA_PICTURE_WIDTH_LEN, align 4, !tbaa !15
  %i.an = add i32 %i.al, %i.am
  %i.ao = load i32, ptr @FLAC__STREAM_METADATA_PICTURE_HEIGHT_LEN, align 4, !tbaa !15
  %i.ap = add i32 %i.an, %i.ao
  %i.aq = load i32, ptr @FLAC__STREAM_METADATA_PICTURE_DEPTH_LEN, align 4, !tbaa !15
  %i.ar = add i32 %i.ap, %i.aq
  %i.as = load i32, ptr @FLAC__STREAM_METADATA_PICTURE_COLORS_LEN, align 4, !tbaa !15
  %i.at = add i32 %i.ar, %i.as
  %i.au = load i32, ptr @FLAC__STREAM_METADATA_PICTURE_DATA_LENGTH_LEN, align 4, !tbaa !15
  %i.av = add i32 %i.at, %i.au
  %i.aw = lshr i32 %i.av, 3
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 %i.aw, ptr %i.ax, align 8, !tbaa !14
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.az = tail call noalias dereferenceable_or_null(1) ptr @strdup(ptr noundef nonnull @.str) #31 ; 3 uses
  %.not.i36 = icmp eq ptr %i.az, null
  br i1 %.not.i36, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  tail call void @free(ptr noundef nonnull %i.b) #31
  br label %vorbiscomment_calculate_length_.exit

bb.m:                                             ; preds = %bb.k
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.az, ptr %i.ba, align 8, !tbaa !18
  %i.bb = tail call noalias dereferenceable_or_null(1) ptr @strdup(ptr noundef nonnull @.str) #31 ; 2 uses
  %.not.i37 = icmp eq ptr %i.bb, null
  br i1 %.not.i37, label %bb.n, label %copy_cstring_.exit39

copy_cstring_.exit39:                             ; preds = %bb.m
  store ptr %i.bb, ptr %i.ay, align 8, !tbaa !18
  br label %vorbiscomment_calculate_length_.exit

bb.n:                                             ; preds = %bb.m
  tail call void @free(ptr noundef nonnull %i.az) #31
  tail call void @free(ptr noundef nonnull %i.b) #31
  br label %vorbiscomment_calculate_length_.exit

vorbiscomment_calculate_length_.exit:             ; preds = %bb.j, %bb.i, %copy_cstring_.exit39, %bb.b, %bb.c, %bb.e, %bb.d, %bb.a, %bb.n, %bb.l, %bb.h
  %.0 = phi ptr [ null, %bb.h ], [ null, %bb.a ], [ null, %bb.n ], [ null, %bb.l ], [ %i.b, %bb.d ], [ %i.b, %bb.e ], [ null, %bb.b ], [ %i.b, %bb.j ], [ %i.b, %copy_cstring_.exit39 ], [ %i.b, %bb.c ], [ %i.b, %bb.i ]
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind sspstrong uwtable
define noundef ptr @FLAC__metadata_object_clone(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !13
  %i.b = tail call ptr @FLAC__metadata_object_new(i32 noundef %i.a) ; 58 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.aq, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load <2 x i32>, ptr %0, align 8, !tbaa !15
  %i.d = load i32, ptr %0, align 8, !tbaa !13
  store <2 x i32> %i.c, ptr %i.b, align 8, !tbaa !15
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !14   ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 %i.f, ptr %i.g, align 8, !tbaa !14
  switch i32 %i.d, label %bb.an [
    i32 0, label %bb.c
    i32 1, label %bb.aq
    i32 2, label %bb.d
    i32 3, label %bb.i
    i32 4, label %bb.n
    i32 5, label %bb.z
    i32 6, label %bb.ag
  ]

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.h, ptr noundef nonnull align 8 dereferenceable(56) %i.i, i64 noundef 56, i1 noundef false) #31
  br label %bb.aq

bb.d:                                             ; preds = %bb.b
  %i.j = load i32, ptr @FLAC__STREAM_METADATA_APPLICATION_ID_LEN, align 4, !tbaa !15
  %i.k = lshr i32 %i.j, 3                         ; 4 uses
  %i.l = icmp ult i32 %i.f, %i.k
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @FLAC__metadata_object_delete_data(ptr noundef nonnull %i.b)
  tail call void @free(ptr noundef nonnull %i.b) #31
  br label %bb.aq

bb.f:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = zext nneg i32 %i.k to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 %i.m, ptr noundef nonnull align 8 %i.n, i64 noundef %i.o, i1 noundef false) #31
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !19   ; 2 uses
  %1 = load i32, ptr %i.e, align 8, !tbaa !14     ; 2 uses
  %i.s = icmp ne i32 %1, %i.k
  %i.t = icmp ne ptr %i.r, null
  %or.cond.i = and i1 %i.t, %i.s
  br i1 %or.cond.i, label %bb.g, label %copy_bytes_.exit

bb.g:                                             ; preds = %bb.f
  %i.u = sub i32 %1, %i.k
  %i.v = zext i32 %i.u to i64                     ; 2 uses
  %i.w = tail call noalias noundef ptr @malloc(i64 noundef %i.v) #30 ; 3 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.h, label %.thread.i

.thread.i:                                        ; preds = %bb.g
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.w, ptr noundef nonnull readonly align 1 %i.r, i64 noundef %i.v, i1 noundef false) #31
  br label %copy_bytes_.exit

copy_bytes_.exit:                                 ; preds = %bb.f, %.thread.i
  %.sink.i = phi ptr [ %i.w, %.thread.i ], [ null, %bb.f ]
  store ptr %.sink.i, ptr %i.p, align 8, !tbaa !18
  br label %bb.aq

bb.h:                                             ; preds = %bb.g
  tail call void @FLAC__metadata_object_delete_data(ptr noundef nonnull %i.b)
  tail call void @free(ptr noundef nonnull %i.b) #31
  br label %bb.aq

bb.i:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.z = load i32, ptr %i.y, align 8, !tbaa !19   ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 %i.z, ptr %i.aa, align 8, !tbaa !19
  %i.ab = icmp ugt i32 %i.z, 178956970
  br i1 %i.ab, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @FLAC__metadata_object_delete_data(ptr noundef nonnull %i.b)
  tail call void @free(ptr noundef nonnull %i.b) #31
  br label %bb.aq

bb.k:                                             ; preds = %bb.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !19 ; 2 uses
  %i.af = icmp ne i32 %i.z, 0
  %i.ag = icmp ne ptr %i.ae, null
  %or.cond.i91 = and i1 %i.ag, %i.af
  br i1 %or.cond.i91, label %bb.l, label %copy_bytes_.exit96

bb.l:                                             ; preds = %bb.k
  %i.ah = mul nuw i32 %i.z, 24
  %i.ai = zext i32 %i.ah to i64                   ; 2 uses
  %i.aj = tail call noalias noundef ptr @malloc(i64 noundef %i.ai) #30 ; 3 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %bb.m, label %.thread.i95

.thread.i95:                                      ; preds = %bb.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.aj, ptr noundef nonnull readonly align 1 %i.ae, i64 noundef %i.ai, i1 noundef false) #31
  br label %copy_bytes_.exit96

copy_bytes_.exit96:                               ; preds = %bb.k, %.thread.i95
  %.sink.i93 = phi ptr [ %i.aj, %.thread.i95 ], [ null, %bb.k ]
  store ptr %.sink.i93, ptr %i.ac, align 8, !tbaa !18
  br label %bb.aq

bb.m:                                             ; preds = %bb.l
  tail call void @FLAC__metadata_object_delete_data(ptr noundef nonnull %i.b)
  tail call void @free(ptr noundef nonnull %i.b) #31
  br label %bb.aq

bb.n:                                             ; preds = %bb.b
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 4 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !19 ; 2 uses
  %.not86 = icmp eq ptr %i.an, null
  br i1 %.not86, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @free(ptr noundef nonnull %i.an) #31
  store ptr null, ptr %i.am, align 8, !tbaa !19
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !21 ; 2 uses
  store i32 %i.ap, ptr %i.al, align 8, !tbaa !21
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !22 ; 2 uses
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.at = tail call noalias noundef dereferenceable_or_null(1) ptr @malloc(i64 noundef 1) #30 ; 3 uses
  store ptr %i.at, ptr %i.am, align 8, !tbaa !22
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  store i8 0, ptr %i.at, align 1, !tbaa !19
  br label %copy_vcentry_.exit

bb.s:                                             ; preds = %bb.p
  %i.av = zext i32 %i.ap to i64                   ; 3 uses
  %i.aw = add nuw nsw i64 %i.av, 1
  %i.ax = tail call noalias noundef ptr @malloc(i64 noundef %i.aw) #30 ; 4 uses
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %bb.t, label %.thread.i97

.thread.i97:                                      ; preds = %bb.s
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.ax, ptr noundef nonnull align 1 %i.ar, i64 noundef %i.av, i1 noundef false) #31
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.av
  store i8 0, ptr %i.az, align 1, !tbaa !19
  store ptr %i.ax, ptr %i.am, align 8, !tbaa !22
  br label %copy_vcentry_.exit

bb.t:                                             ; preds = %bb.q, %bb.s
  tail call void @FLAC__metadata_object_delete_data(ptr noundef nonnull %i.b)
  tail call void @free(ptr noundef nonnull %i.b) #31
  br label %bb.aq

copy_vcentry_.exit:                               ; preds = %.thread.i97, %bb.r
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !19 ; 2 uses
  %i.bc = icmp eq i32 %i.bb, 0
  br i1 %i.bc, label %vorbiscomment_entry_array_copy_.exit.a, label %bb.u

bb.u:                                             ; preds = %copy_vcentry_.exit
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !19
  %i.bf = zext i32 %i.bb to i64                   ; 3 uses
  %i.bg = tail call noalias noundef ptr @calloc(i64 noundef range(i64 1, 4294967296) %i.bf, i64 noundef 16) #28 ; 5 uses
  %.not.i = icmp eq ptr %i.bg, null
  br i1 %.not.i, label %bb.y, label %.preheader.i

.preheader.i:                                     ; preds = %bb.u, %copy_vcentry_.exit.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %copy_vcentry_.exit.i ], [ 0, %bb.u ] ; 3 uses
  %i.bh = getelementptr inbounds nuw [16 x i8], ptr %i.bg, i64 %indvars.iv.i ; 3 uses
  %i.bi = getelementptr inbounds nuw [16 x i8], ptr %i.be, i64 %indvars.iv.i ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !21 ; 2 uses
  store i32 %i.bj, ptr %i.bh, align 8, !tbaa !21
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !22 ; 2 uses
  %i.bm = icmp eq ptr %i.bl, null
  br i1 %i.bm, label %bb.v, label %bb.x

bb.v:                                             ; preds = %.preheader.i
  %i.bn = tail call noalias noundef dereferenceable_or_null(1) ptr @malloc(i64 noundef 1) #30 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store ptr %i.bn, ptr %i.bo, align 8, !tbaa !22
  %i.bp = icmp eq ptr %i.bn, null
  br i1 %i.bp, label %.lr.ph.i.i.preheader, label %bb.w

.lr.ph.i.i.preheader:                             ; preds = %bb.x, %bb.v
  br label %.lr.ph.i.i

bb.w:                                             ; preds = %bb.v
  store i8 0, ptr %i.bn, align 1, !tbaa !19
  br label %copy_vcentry_.exit.i

bb.x:                                             ; preds = %.preheader.i
  %i.bq = zext i32 %i.bj to i64                   ; 3 uses
  %i.br = add nuw nsw i64 %i.bq, 1
  %i.bs = tail call noalias noundef ptr @malloc(i64 noundef %i.br) #30 ; 4 uses
  %i.bt = icmp eq ptr %i.bs, null
  br i1 %i.bt, label %.lr.ph.i.i.preheader, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.x
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.bs, ptr noundef nonnull align 1 %i.bl, i64 noundef %i.bq, i1 noundef false) #31
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bq
  store i8 0, ptr %i.bu, align 1, !tbaa !19
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store ptr %i.bs, ptr %i.bv, align 8, !tbaa !22
  br label %copy_vcentry_.exit.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph.i.i ], [ 0, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.bw = getelementptr inbounds nuw [16 x i8], ptr %i.bg, i64 %indvars.iv.i.i
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !22
  tail call void @free(ptr noundef %i.by) #31
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %i.bf
  br i1 %exitcond.not.i.i, label %vorbiscomment_entry_array_delete_.exit.i, label %.lr.ph.i.i, !llvm.loop !0

vorbiscomment_entry_array_delete_.exit.i:         ; preds = %.lr.ph.i.i
  tail call void @free(ptr noundef nonnull %i.bg) #31
  br label %bb.y

copy_vcentry_.exit.i:                             ; preds = %.thread.i.i, %bb.w
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.bf
  br i1 %exitcond.not.i, label %vorbiscomment_entry_array_copy_.exit.a, label %.preheader.i, !llvm.loop !59

bb.y:                                             ; preds = %vorbiscomment_entry_array_delete_.exit.i, %bb.u
  %i.bz = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr null, ptr %i.bz, align 8, !tbaa !19
  %i.ca = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i32 0, ptr %i.ca, align 8, !tbaa !19
  tail call void @FLAC__metadata_object_delete_data(ptr noundef nonnull %i.b)
  tail call void @free(ptr noundef nonnull %i.b) #31
  br label %bb.aq

vorbiscomment_entry_array_copy_.exit.a:           ; preds = %copy_vcentry_.exit.i, %copy_vcentry_.exit
  %.sink = phi ptr [ null, %copy_vcentry_.exit ], [ %i.bg, %copy_vcentry_.exit.i ]
  %2 = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr %.sink, ptr %2, align 8, !tbaa !19
  %3 = load i32, ptr %i.ba, align 8, !tbaa !19
  %i.cb = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i32 %3, ptr %i.cb, align 8, !tbaa !19
  br label %bb.aq

bb.z:                                             ; preds = %bb.b
  %i.cc = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %i.cc, ptr noundef nonnull align 8 dereferenceable(160) %i.cd, i64 noundef 160, i1 noundef false) #31
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !19 ; 2 uses
  %i.cg = icmp eq i32 %i.cf, 0
  br i1 %i.cg, label %bb.aq, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !19
  %i.cj = zext i32 %i.cf to i64                   ; 3 uses
  %i.ck = tail call noalias noundef ptr @calloc(i64 noundef range(i64 1, 4294967296) %i.cj, i64 noundef 32) #28 ; 5 uses
  %.not.i100 = icmp eq ptr %i.ck, null
  br i1 %.not.i100, label %bb.af, label %.preheader.i101

.preheader.i101:                                  ; preds = %bb.aa, %bb.ae
  %indvars.iv.i102 = phi i64 [ %indvars.iv.next.i104, %bb.ae ], [ 0, %bb.aa ] ; 3 uses
  %i.cl = getelementptr inbounds nuw [32 x i8], ptr %i.ck, i64 %indvars.iv.i102 ; 2 uses
  %i.cm = getelementptr inbounds nuw [32 x i8], ptr %i.ci, i64 %indvars.iv.i102 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.cl, ptr noundef nonnull readonly align 1 dereferenceable(32) %i.cm, i64 noundef 32, i1 noundef false) #31
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 24 ; 2 uses
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !26
  %i.cp = icmp eq ptr %i.co, null
  br i1 %i.cp, label %bb.ae, label %bb.ab

bb.ab:                                            ; preds = %.preheader.i101
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cm, i64 23 ; 2 uses
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !27
  %i.cs = zext i8 %i.cr to i64
  %i.ct = tail call ptr @safe_malloc_mul_2op_p(i64 noundef %i.cs, i64 noundef 16) #31 ; 3 uses
  %i.cu = icmp eq ptr %i.ct, null
  br i1 %i.cu, label %.lr.ph.i.i107, label %.thread.i.i103

.thread.i.i103:                                   ; preds = %bb.ab
  %i.cv = load ptr, ptr %i.cn, align 8, !tbaa !26
  %i.cw = load i8, ptr %i.cq, align 1, !tbaa !27
  %i.cx = zext i8 %i.cw to i64
  %i.cy = shl nuw nsw i64 %i.cx, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.ct, ptr noundef nonnull align 1 %i.cv, i64 noundef %i.cy, i1 noundef false) #31
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cl, i64 24
  store ptr %i.ct, ptr %i.cz, align 8, !tbaa !26
  br label %bb.ae

.lr.ph.i.i107:                                    ; preds = %bb.ab, %bb.ad
  %indvars.iv.i.i108 = phi i64 [ %indvars.iv.next.i.i109, %bb.ad ], [ 0, %bb.ab ] ; 2 uses
  %i.da = getelementptr inbounds nuw [32 x i8], ptr %i.ck, i64 %indvars.iv.i.i108
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 24
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !26 ; 2 uses
  %.not.i.i = icmp eq ptr %i.dc, null
  br i1 %.not.i.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph.i.i107
  tail call void @free(ptr noundef nonnull %i.dc) #31
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %.lr.ph.i.i107
  %indvars.iv.next.i.i109 = add nuw nsw i64 %indvars.iv.i.i108, 1 ; 2 uses
  %exitcond.not.i.i110 = icmp eq i64 %indvars.iv.next.i.i109, %i.cj
  br i1 %exitcond.not.i.i110, label %cuesheet_track_array_delete_.exit.i, label %.lr.ph.i.i107, !llvm.loop !1

cuesheet_track_array_delete_.exit.i:              ; preds = %bb.ad
  tail call void @free(ptr noundef nonnull %i.ck) #31
  br label %bb.af

bb.ae:                                            ; preds = %.thread.i.i103, %.preheader.i101
  %indvars.iv.next.i104 = add nuw nsw i64 %indvars.iv.i102, 1 ; 2 uses
  %exitcond.not.i105 = icmp eq i64 %indvars.iv.next.i104, %i.cj
  br i1 %exitcond.not.i105, label %cuesheet_track_array_copy_.exit, label %.preheader.i101, !llvm.loop !60

cuesheet_track_array_copy_.exit:                  ; preds = %bb.ae
  %i.dd = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  store ptr %i.ck, ptr %i.dd, align 8, !tbaa !19
  br label %bb.aq

bb.af:                                            ; preds = %cuesheet_track_array_delete_.exit.i, %bb.aa
  %i.de = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  store ptr null, ptr %i.de, align 8, !tbaa !19
  tail call void @FLAC__metadata_object_delete_data(ptr noundef nonnull %i.b)
  tail call void @free(ptr noundef nonnull %i.b) #31
  br label %bb.aq

bb.ag:                                            ; preds = %bb.b
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dg = load i32, ptr %i.df, align 8, !tbaa !19
  %i.dh = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 %i.dg, ptr %i.dh, align 8, !tbaa !19
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !19
  %i.dk = tail call noalias ptr @strdup(ptr noundef readonly %i.dj) #31 ; 2 uses
  %.not.i111 = icmp eq ptr %i.dk, null
  br i1 %.not.i111, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  tail call void @FLAC__metadata_object_delete_data(ptr noundef nonnull %i.b)
  tail call void @free(ptr noundef nonnull %i.b) #31
  br label %bb.aq

bb.ai:                                            ; preds = %bb.ag
  %i.dl = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !18
  tail call void @free(ptr noundef %i.dm) #31
  store ptr %i.dk, ptr %i.dl, align 8, !tbaa !18
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !19
  %i.dp = tail call noalias ptr @strdup(ptr noundef readonly %i.do) #31 ; 2 uses
  %.not.i112 = icmp eq ptr %i.dp, null
  br i1 %.not.i112, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  tail call void @FLAC__metadata_object_delete_data(ptr noundef nonnull %i.b)
  tail call void @free(ptr noundef nonnull %i.b) #31
  br label %bb.aq

bb.ak:                                            ; preds = %bb.ai
  %i.dq = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !18
  tail call void @free(ptr noundef %i.dr) #31
  store ptr %i.dp, ptr %i.dq, align 8, !tbaa !18
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 40
  %4 = load i32, ptr %i.ds, align 8, !tbaa !19
  %i.dt = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i32 %4, ptr %i.dt, align 8, !tbaa !19
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 44
  %6 = load i32, ptr %5, align 4, !tbaa !19
  %7 = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  store i32 %6, ptr %7, align 4, !tbaa !19
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %9 = load i32, ptr %8, align 8, !tbaa !19
  %10 = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i32 %9, ptr %10, align 8, !tbaa !19
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 52
  %12 = load i32, ptr %11, align 4, !tbaa !19
  %13 = getelementptr inbounds nuw i8, ptr %i.b, i64 52
  store i32 %12, ptr %13, align 4, !tbaa !19
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.dv = load i32, ptr %i.du, align 8, !tbaa !19 ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i32 %i.dv, ptr %i.dw, align 8, !tbaa !19
  %i.dx = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !19 ; 2 uses
  %i.ea = icmp ne i32 %i.dv, 0
  %i.eb = icmp ne ptr %i.dz, null
  %or.cond.i115 = and i1 %i.eb, %i.ea
  br i1 %or.cond.i115, label %bb.al, label %copy_bytes_.exit120

bb.al:                                            ; preds = %bb.ak
  %i.ec = zext i32 %i.dv to i64                   ; 2 uses
  %i.ed = tail call noalias noundef ptr @malloc(i64 noundef %i.ec) #30 ; 3 uses
  %i.ee = icmp eq ptr %i.ed, null
  br i1 %i.ee, label %bb.am, label %.thread.i119

.thread.i119:                                     ; preds = %bb.al
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.ed, ptr noundef nonnull readonly align 1 %i.dz, i64 noundef %i.ec, i1 noundef false) #31
  br label %copy_bytes_.exit120

copy_bytes_.exit120:                              ; preds = %bb.ak, %.thread.i119
  %.sink.i117 = phi ptr [ %i.ed, %.thread.i119 ], [ null, %bb.ak ]
  store ptr %.sink.i117, ptr %i.dx, align 8, !tbaa !18
  br label %bb.aq

bb.am:                                            ; preds = %bb.al
  tail call void @FLAC__metadata_object_delete_data(ptr noundef nonnull %i.b)
  tail call void @free(ptr noundef nonnull %i.b) #31
  br label %bb.aq

bb.an:                                            ; preds = %bb.b
  %i.ef = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !19 ; 2 uses
  %i.ei = icmp ne i32 %i.f, 0
  %i.ej = icmp ne ptr %i.eh, null
  %or.cond.i121 = and i1 %i.ej, %i.ei
  br i1 %or.cond.i121, label %bb.ao, label %copy_bytes_.exit126

bb.ao:                                            ; preds = %bb.an
  %i.ek = zext i32 %i.f to i64                    ; 2 uses
  %i.el = tail call noalias noundef ptr @malloc(i64 noundef %i.ek) #30 ; 3 uses
  %i.em = icmp eq ptr %i.el, null
  br i1 %i.em, label %bb.ap, label %.thread.i125

.thread.i125:                                     ; preds = %bb.ao
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.el, ptr noundef nonnull readonly align 1 %i.eh, i64 noundef %i.ek, i1 noundef false) #31
  br label %copy_bytes_.exit126

copy_bytes_.exit126:                              ; preds = %bb.an, %.thread.i125
  %.sink.i123 = phi ptr [ %i.el, %.thread.i125 ], [ null, %bb.an ]
  store ptr %.sink.i123, ptr %i.ef, align 8, !tbaa !18
  br label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  tail call void @FLAC__metadata_object_delete_data(ptr noundef nonnull %i.b)
  tail call void @free(ptr noundef nonnull %i.b) #31
  br label %bb.aq

bb.aq:                                            ; preds = %copy_bytes_.exit126, %copy_bytes_.exit120, %cuesheet_track_array_copy_.exit, %copy_bytes_.exit96, %copy_bytes_.exit, %bb.a, %bb.z, %vorbiscomment_entry_array_copy_.exit.a, %bb.c, %bb.b, %bb.ap, %bb.am, %bb.aj, %bb.ah, %bb.af, %bb.y, %bb.t, %bb.m, %bb.j, %bb.h, %bb.e
  %.0 = phi ptr [ null, %bb.ah ], [ null, %bb.ap ], [ null, %bb.e ], [ null, %bb.h ], [ null, %bb.j ], [ null, %bb.m ], [ null, %bb.y ], [ null, %bb.t ], [ null, %bb.af ], [ null, %bb.am ], [ null, %bb.aj ], [ %i.b, %bb.b ], [ %i.b, %bb.c ], [ %i.b, %vorbiscomment_entry_array_copy_.exit.a ], [ %i.b, %copy_bytes_.exit ], [ %i.b, %copy_bytes_.exit96 ], [ %i.b, %cuesheet_track_array_copy_.exit ], [ %i.b, %bb.z ], [ %i.b, %copy_bytes_.exit120 ], [ %i.b, %copy_bytes_.exit126 ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nounwind sspstrong memory(readwrite, target_mem: none) uwtable
define void @FLAC__metadata_object_delete(ptr noundef captures(none) %0) local_unnamed_addr #6 {
bb.a:
  tail call void @FLAC__metadata_object_delete_data(ptr noundef %0)
  tail call void @free(ptr noundef %0) #31
  ret void
}

; Function Attrs: nounwind sspstrong memory(readwrite, target_mem: none) uwtable
define hidden void @FLAC__metadata_object_delete_data(ptr nofree noundef captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !13
  switch i32 %i.a, label %bb.t [
    i32 0, label %bb.v
    i32 1, label %bb.v
    i32 2, label %bb.b
    i32 3, label %bb.d
    i32 4, label %bb.f
    i32 5, label %bb.j
    i32 6, label %bb.n
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !19   ; 2 uses
  %.not46 = icmp eq ptr %i.c, null
  br i1 %.not46, label %bb.v, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @free(ptr noundef nonnull %i.c) #31
  store ptr null, ptr %i.b, align 8, !tbaa !19
  br label %bb.v

bb.d:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !19   ; 2 uses
  %.not45 = icmp eq ptr %i.e, null
  br i1 %.not45, label %bb.v, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @free(ptr noundef nonnull %i.e) #31
  store ptr null, ptr %i.d, align 8, !tbaa !19
  br label %bb.v

bb.f:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !19   ; 2 uses
  %.not43 = icmp eq ptr %i.g, null
  br i1 %.not43, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @free(ptr noundef nonnull %i.g) #31
  store ptr null, ptr %i.f, align 8, !tbaa !19
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !19   ; 3 uses
  %.not44 = icmp eq ptr %i.i, null
  br i1 %.not44, label %bb.v, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !19   ; 2 uses
  %.not.i = icmp eq i32 %i.k, 0
  br i1 %.not.i, label %vorbiscomment_entry_array_delete_.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.i
  %wide.trip.count.i = zext i32 %i.k to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i ] ; 2 uses
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %indvars.iv.i
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !22
  tail call void @free(ptr noundef %i.n) #31
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %vorbiscomment_entry_array_delete_.exit, label %.lr.ph.i, !llvm.loop !0

vorbiscomment_entry_array_delete_.exit:           ; preds = %.lr.ph.i, %bb.i
  tail call void @free(ptr noundef nonnull %i.i) #31
  store ptr null, ptr %i.h, align 8, !tbaa !19
  store i32 0, ptr %i.j, align 8, !tbaa !19
  br label %bb.v

bb.j:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !19   ; 3 uses
  %.not42 = icmp eq ptr %i.p, null
  br i1 %.not42, label %bb.v, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 164 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !19   ; 2 uses
  %.not9.i = icmp eq i32 %i.r, 0
  br i1 %.not9.i, label %cuesheet_track_array_delete_.exit, label %.lr.ph.preheader.i48

.lr.ph.preheader.i48:                             ; preds = %bb.k
  %wide.trip.count.i49 = zext i32 %i.r to i64
  br label %.lr.ph.i50

.lr.ph.i50:                                       ; preds = %bb.m, %.lr.ph.preheader.i48
  %indvars.iv.i51 = phi i64 [ 0, %.lr.ph.preheader.i48 ], [ %indvars.iv.next.i53, %bb.m ] ; 2 uses
  %i.s = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %indvars.iv.i51
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !26   ; 2 uses
  %.not.i52 = icmp eq ptr %i.u, null
  br i1 %.not.i52, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i50
  tail call void @free(ptr noundef nonnull %i.u) #31
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.lr.ph.i50
  %indvars.iv.next.i53 = add nuw nsw i64 %indvars.iv.i51, 1 ; 2 uses
  %exitcond.not.i54 = icmp eq i64 %indvars.iv.next.i53, %wide.trip.count.i49
  br i1 %exitcond.not.i54, label %cuesheet_track_array_delete_.exit, label %.lr.ph.i50, !llvm.loop !1

cuesheet_track_array_delete_.exit:                ; preds = %bb.m, %bb.k
  tail call void @free(ptr noundef nonnull %i.p) #31
  store ptr null, ptr %i.o, align 8, !tbaa !19
  store i32 0, ptr %i.q, align 4, !tbaa !19
  br label %bb.v

bb.n:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !19   ; 2 uses
  %.not = icmp eq ptr %i.w, null
  br i1 %.not, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @free(ptr noundef nonnull %i.w) #31
  store ptr null, ptr %i.v, align 8, !tbaa !19
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !19   ; 2 uses
  %.not40 = icmp eq ptr %i.y, null
  br i1 %.not40, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @free(ptr noundef nonnull %i.y) #31
  store ptr null, ptr %i.x, align 8, !tbaa !19
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !19  ; 2 uses
  %.not41 = icmp eq ptr %i.aa, null
  br i1 %.not41, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void @free(ptr noundef nonnull %i.aa) #31
  store ptr null, ptr %i.z, align 8, !tbaa !19
  br label %bb.v

bb.t:                                             ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !19 ; 2 uses
  %.not47 = icmp eq ptr %i.ac, null
  br i1 %.not47, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  tail call void @free(ptr noundef nonnull %i.ac) #31
  store ptr null, ptr %i.ab, align 8, !tbaa !19
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u, %bb.r, %bb.s, %bb.j, %cuesheet_track_array_delete_.exit, %bb.h, %vorbiscomment_entry_array_delete_.exit, %bb.d, %bb.e, %bb.b, %bb.c, %bb.a, %bb.a
  ret void
}
end_hunk_0
begin_hunk_1_@FLAC__metadata_object_vorbiscomment_find_entry_from:bb.a
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %indvars.iv.i ; 2 uses
  %i.k = load i32, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.m = load ptr, ptr %i.l, align 8              ; 3 uses
  %i.n = zext i32 %i.k to i64
  %i.o = tail call ptr @memchr(ptr noundef %i.m, i32 noundef 61, i64 noundef %i.n) #29 ; 2 uses
  %.not.i.i = icmp ne ptr %i.o, null
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.m to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = trunc i64 %i.r to i32
  %i.t = icmp eq i32 %i.b, %i.s
  %or.cond.i.i = and i1 %.not.i.i, %i.t
  br i1 %or.cond.i.i, label %FLAC__metadata_object_vorbiscomment_entry_matches.exit.i, label %FLAC__metadata_object_vorbiscomment_entry_matches.exit.thread.i

FLAC__metadata_object_vorbiscomment_entry_matches.exit.i: ; preds = %bb.b
  %i.u = tail call i32 @strncasecmp(ptr noundef nonnull readonly %2, ptr noundef %i.m, i64 noundef %i.c) #29
  %.not.i = icmp eq i32 %i.u, 0
  br i1 %.not.i, label %._crit_edge.loopexit.split.loop.exit15.i, label %FLAC__metadata_object_vorbiscomment_entry_matches.exit.thread.i

FLAC__metadata_object_vorbiscomment_entry_matches.exit.thread.i: ; preds = %FLAC__metadata_object_vorbiscomment_entry_matches.exit.i, %bb.b
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next.i to i32
  %exitcond.not.i = icmp eq i32 %i.e, %lftr.wideiv.i
  br i1 %exitcond.not.i, label %vorbiscomment_find_entry_from_.exit, label %bb.b, !llvm.loop !2

._crit_edge.loopexit.split.loop.exit15.i:         ; preds = %FLAC__metadata_object_vorbiscomment_entry_matches.exit.i
  %i.v = trunc nuw i64 %indvars.iv.i to i32
  br label %vorbiscomment_find_entry_from_.exit

vorbiscomment_find_entry_from_.exit:              ; preds = %FLAC__metadata_object_vorbiscomment_entry_matches.exit.thread.i, %bb.a, %._crit_edge.loopexit.split.loop.exit15.i
  %.09.i = phi i32 [ -1, %bb.a ], [ %i.v, %._crit_edge.loopexit.split.loop.exit15.i ], [ -1, %FLAC__metadata_object_vorbiscomment_entry_matches.exit.thread.i ]
  ret i32 %.09.i
}

; Function Attrs: nounwind sspstrong uwtable
define range(i32 -1, 2) i32 @FLAC__metadata_object_vorbiscomment_remove_entry_matching(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #5 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #29 ; 2 uses
  %i.b = trunc i64 %i.a to i32
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !19   ; 2 uses
  %.not19 = icmp eq i32 %i.d, 0
  br i1 %.not19, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !19
  %i.g = and i64 %i.a, 4294967295
  %wide.trip.count = zext i32 %i.d to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %FLAC__metadata_object_vorbiscomment_entry_matches.exit.thread
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %FLAC__metadata_object_vorbiscomment_entry_matches.exit.thread ] ; 5 uses
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %indvars.iv ; 2 uses
  %i.i = load i32, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.k = load ptr, ptr %i.j, align 8              ; 4 uses
  %i.l = zext i32 %i.i to i64
  %i.m = tail call ptr @memchr(ptr noundef %i.k, i32 noundef 61, i64 noundef %i.l) #29 ; 2 uses
  %.not.i = icmp ne ptr %i.m, null
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = trunc i64 %i.p to i32
  %i.r = icmp eq i32 %i.b, %i.q
  %or.cond.i = and i1 %.not.i, %i.r
  br i1 %or.cond.i, label %FLAC__metadata_object_vorbiscomment_entry_matches.exit, label %FLAC__metadata_object_vorbiscomment_entry_matches.exit.thread

FLAC__metadata_object_vorbiscomment_entry_matches.exit: ; preds = %bb.b
  %i.s = tail call i32 @strncasecmp(ptr noundef nonnull readonly %1, ptr noundef %i.k, i64 noundef %i.g) #29
  %.not = icmp eq i32 %i.s, 0
  br i1 %.not, label %bb.c, label %FLAC__metadata_object_vorbiscomment_entry_matches.exit.thread

bb.c:                                             ; preds = %FLAC__metadata_object_vorbiscomment_entry_matches.exit
  %i.t = trunc nuw i64 %indvars.iv to i32
  tail call void @free(ptr noundef %i.k) #31
  %i.u = load ptr, ptr %i.e, align 8, !tbaa !37   ; 2 uses
  %i.v = getelementptr inbounds nuw [16 x i8], ptr %i.u, i64 %indvars.iv
  %i.w = add nuw i64 %indvars.iv, 1
  %i.x = and i64 %i.w, 4294967295
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.u, i64 %i.x
  %i.z = load i32, ptr %i.c, align 8, !tbaa !36
  %i.aa = xor i32 %i.t, -1
  %i.ab = add i32 %i.z, %i.aa
  %i.ac = zext i32 %i.ab to i64
  %i.ad = shl nuw nsw i64 %i.ac, 4
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 %i.v, ptr noundef nonnull align 1 %i.y, i64 noundef range(i64 0, 137438953441) %i.ad, i1 noundef false) #31
  %i.ae = load ptr, ptr %i.e, align 8, !tbaa !37
  %i.af = load i32, ptr %i.c, align 8, !tbaa !36
  %i.ag = add i32 %i.af, -1                       ; 2 uses
  %i.ah = zext i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %i.ae, i64 %i.ah ; 2 uses
  store i32 0, ptr %i.ai, align 8, !tbaa !21
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr null, ptr %i.aj, align 8, !tbaa !22
  %i.ak = tail call range(i32 0, 2) i32 @FLAC__metadata_object_vorbiscomment_resize_comments(ptr noundef nonnull %0, i32 noundef %i.ag)
  %.not11 = icmp eq i32 %i.ak, 0
  %. = select i1 %.not11, i32 -1, i32 1
  br label %.loopexit

FLAC__metadata_object_vorbiscomment_entry_matches.exit.thread: ; preds = %bb.b, %FLAC__metadata_object_vorbiscomment_entry_matches.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.b, !llvm.loop !110

.loopexit:                                        ; preds = %FLAC__metadata_object_vorbiscomment_entry_matches.exit.thread, %bb.a, %bb.c
  %.010 = phi i32 [ %., %bb.c ], [ 0, %bb.a ], [ 0, %FLAC__metadata_object_vorbiscomment_entry_matches.exit.thread ]
  ret i32 %.010
}

; Function Attrs: nounwind sspstrong uwtable
define i32 @FLAC__metadata_object_vorbiscomment_remove_entries_matching(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #5 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #29 ; 2 uses
  %i.b = trunc i64 %i.a to i32
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !19   ; 2 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.g = and i64 %i.a, 4294967295
  %i.h = zext nneg i32 %i.d to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %FLAC__metadata_object_vorbiscomment_entry_matches.exit.thread
  %indvars.iv = phi i64 [ %i.h, %.lr.ph ], [ %indvars.iv.next, %FLAC__metadata_object_vorbiscomment_entry_matches.exit.thread ] ; 4 uses
  %.01419 = phi i32 [ 0, %.lr.ph ], [ %.1, %FLAC__metadata_object_vorbiscomment_entry_matches.exit.thread ] ; 3 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 3 uses
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !19
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %indvars.iv.next ; 2 uses
  %i.k = load i32, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.m = load ptr, ptr %i.l, align 8              ; 4 uses
  %i.n = zext i32 %i.k to i64
  %i.o = tail call ptr @memchr(ptr noundef %i.m, i32 noundef 61, i64 noundef %i.n) #29 ; 2 uses
  %.not.i = icmp ne ptr %i.o, null
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.m to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = trunc i64 %i.r to i32
  %i.t = icmp eq i32 %i.b, %i.s
  %or.cond.i = and i1 %.not.i, %i.t
  br i1 %or.cond.i, label %FLAC__metadata_object_vorbiscomment_entry_matches.exit, label %FLAC__metadata_object_vorbiscomment_entry_matches.exit.thread

FLAC__metadata_object_vorbiscomment_entry_matches.exit: ; preds = %bb.b
  %i.u = tail call i32 @strncasecmp(ptr noundef nonnull readonly %1, ptr noundef %i.m, i64 noundef %i.g) #29
  %.not = icmp eq i32 %i.u, 0
  br i1 %.not, label %bb.c, label %FLAC__metadata_object_vorbiscomment_entry_matches.exit.thread

bb.c:                                             ; preds = %FLAC__metadata_object_vorbiscomment_entry_matches.exit
  %i.v = add i32 %.01419, 1
  tail call void @free(ptr noundef %i.m) #31
  %i.w = load ptr, ptr %i.f, align 8, !tbaa !37   ; 2 uses
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %i.w, i64 %indvars.iv.next
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.w, i64 %indvars.iv
  %i.z = load i32, ptr %i.c, align 8, !tbaa !36
  %i.aa = trunc nuw nsw i64 %indvars.iv to i32
  %i.ab = sub i32 %i.z, %i.aa
  %i.ac = zext i32 %i.ab to i64
  %i.ad = shl nuw nsw i64 %i.ac, 4
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 %i.x, ptr noundef nonnull align 1 %i.y, i64 noundef range(i64 0, 137438953441) %i.ad, i1 noundef false) #31
  %i.ae = load ptr, ptr %i.f, align 8, !tbaa !37
  %i.af = load i32, ptr %i.c, align 8, !tbaa !36
  %i.ag = add i32 %i.af, -1                       ; 2 uses
  %i.ah = zext i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %i.ae, i64 %i.ah ; 2 uses
  store i32 0, ptr %i.ai, align 8, !tbaa !21
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr null, ptr %i.aj, align 8, !tbaa !22
  %i.ak = tail call range(i32 0, 2) i32 @FLAC__metadata_object_vorbiscomment_resize_comments(ptr noundef nonnull %0, i32 noundef %i.ag)
  %i.al = icmp ne i32 %i.ak, 0
  br label %FLAC__metadata_object_vorbiscomment_entry_matches.exit.thread

FLAC__metadata_object_vorbiscomment_entry_matches.exit.thread: ; preds = %bb.b, %FLAC__metadata_object_vorbiscomment_entry_matches.exit, %bb.c
  %.116 = phi i1 [ %i.al, %bb.c ], [ true, %FLAC__metadata_object_vorbiscomment_entry_matches.exit ], [ true, %bb.b ] ; 2 uses
  %.1 = phi i32 [ %i.v, %bb.c ], [ %.01419, %FLAC__metadata_object_vorbiscomment_entry_matches.exit ], [ %.01419, %bb.b ] ; 2 uses
  %i.am = icmp samesign ugt i64 %indvars.iv, 1
  %i.an = and i1 %.116, %i.am
  br i1 %i.an, label %bb.b, label %._crit_edge.loopexit, !llvm.loop !111

._crit_edge.loopexit:                             ; preds = %FLAC__metadata_object_vorbiscomment_entry_matches.exit.thread
  %i.ao = select i1 %.116, i32 %.1, i32 -1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.lcssa = phi i32 [ 0, %bb.a ], [ %i.ao, %._crit_edge.loopexit ]
  ret i32 %.lcssa
}

; Function Attrs: mustprogress nofree nounwind sspstrong willreturn memory(inaccessiblemem: readwrite, errnomem: write) uwtable
define noalias noundef ptr @FLAC__metadata_object_cuesheet_track_new() local_unnamed_addr #17 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(32) ptr @calloc(i64 noundef 1, i64 noundef 32) #28
  ret ptr %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define noundef ptr @FLAC__metadata_object_cuesheet_track_clone(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = tail call noalias noundef dereferenceable_or_null(32) ptr @calloc(i64 noundef 1, i64 noundef 32) #28 ; 7 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %copy_track_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.a, ptr noundef nonnull readonly align 1 dereferenceable(32) %0, i64 noundef 32, i1 noundef false) #31
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !26
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %copy_track_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 23 ; 2 uses
  %i.f = load i8, ptr %i.e, align 1, !tbaa !27
  %i.g = zext i8 %i.f to i64
  %i.h = tail call ptr @safe_malloc_mul_2op_p(i64 noundef %i.g, i64 noundef 16) #31 ; 3 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %copy_track_.exit, label %.thread.i

.thread.i:                                        ; preds = %bb.c
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !26
  %i.k = load i8, ptr %i.e, align 1, !tbaa !27
  %i.l = zext i8 %i.k to i64
  %i.m = shl nuw nsw i64 %i.l, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.h, ptr noundef nonnull align 1 %i.j, i64 noundef %i.m, i1 noundef false) #31
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.h, ptr %i.n, align 8, !tbaa !26
  br label %copy_track_.exit.thread

copy_track_.exit:                                 ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !26   ; 2 uses
  %.not.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i, label %FLAC__metadata_object_cuesheet_track_delete.exit, label %bb.d

bb.d:                                             ; preds = %copy_track_.exit
  tail call void @free(ptr noundef nonnull %i.p) #31
  br label %FLAC__metadata_object_cuesheet_track_delete.exit

FLAC__metadata_object_cuesheet_track_delete.exit: ; preds = %copy_track_.exit, %bb.d
  tail call void @free(ptr noundef nonnull %i.a) #31
  br label %copy_track_.exit.thread

copy_track_.exit.thread:                          ; preds = %bb.b, %.thread.i, %bb.a, %FLAC__metadata_object_cuesheet_track_delete.exit
  %.0 = phi ptr [ null, %FLAC__metadata_object_cuesheet_track_delete.exit ], [ null, %bb.a ], [ %i.a, %.thread.i ], [ %i.a, %bb.b ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind sspstrong willreturn memory(readwrite, target_mem: none) uwtable
define void @FLAC__metadata_object_cuesheet_track_delete(ptr noundef captures(none) %0) local_unnamed_addr #18 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %FLAC__metadata_object_cuesheet_track_delete_data.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef nonnull %i.b) #31
  br label %FLAC__metadata_object_cuesheet_track_delete_data.exit

FLAC__metadata_object_cuesheet_track_delete_data.exit: ; preds = %bb.a, %bb.b
  tail call void @free(ptr noundef nonnull %0) #31
  ret void
}

; Function Attrs: mustprogress nounwind sspstrong willreturn memory(readwrite, target_mem: none) uwtable
define hidden void @FLAC__metadata_object_cuesheet_track_delete_data(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #18 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !26   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef nonnull %i.b) #31
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind sspstrong memory(readwrite, target_mem: none) uwtable
define range(i32 0, 2) i32 @FLAC__metadata_object_cuesheet_track_resize_indices(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.c = zext i32 %1 to i64
  %i.d = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %i.c ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !26   ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.h = icmp eq i32 %2, 0
  br i1 %i.h, label %.critedge36, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = zext i32 %2 to i64
  %i.j = tail call noalias noundef ptr @calloc(i64 noundef range(i64 1, 4294967296) %i.i, i64 noundef 16) #28 ; 2 uses
  store ptr %i.j, ptr %i.e, align 8, !tbaa !26
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %.critedge36, label %.critedge

bb.d:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 23 ; 2 uses
  %i.m = load i8, ptr %i.l, align 1, !tbaa !27
  %i.n = zext i8 %i.m to i64
  %i.o = shl nuw nsw i64 %i.n, 4                  ; 2 uses
  %i.p = zext i32 %2 to i64
  %i.q = shl nuw nsw i64 %i.p, 4                  ; 3 uses
  %i.r = icmp ugt i32 %2, 268435455
  br i1 %i.r, label %.critedge36, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = icmp eq i32 %2, 0
  br i1 %i.s, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @free(ptr noundef nonnull %i.f) #31
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.t = tail call ptr @realloc(ptr noundef nonnull %i.f, i64 noundef %i.q) #32 ; 2 uses
  %.not = icmp eq ptr %i.t, null
  br i1 %.not, label %.critedge36, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.u = phi ptr [ null, %bb.f ], [ %i.t, %bb.g ] ; 2 uses
  store ptr %i.u, ptr %i.e, align 8, !tbaa !26
  %i.v = icmp samesign ugt i64 %i.q, %i.o
  br i1 %i.v, label %bb.i, label %.critedge

bb.i:                                             ; preds = %bb.h
  %i.w = load i8, ptr %i.l, align 1, !tbaa !27
  %i.x = zext i8 %i.w to i64
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.u, i64 %i.x
  %i.z = sub nuw nsw i64 %i.q, %i.o
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %i.y, i8 noundef 0, i64 noundef range(i64 -137438953438, 137438953441) %i.z, i1 noundef false) #31
  br label %.critedge

.critedge:                                        ; preds = %bb.i, %bb.h, %bb.c
  %i.aa = trunc i32 %2 to i8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 23
  store i8 %i.aa, ptr %i.ab, align 1, !tbaa !27
  %i.ac = load i32, ptr @FLAC__STREAM_METADATA_CUESHEET_MEDIA_CATALOG_NUMBER_LEN, align 4, !tbaa !15
  %i.ad = load i32, ptr @FLAC__STREAM_METADATA_CUESHEET_LEAD_IN_LEN, align 4, !tbaa !15
  %i.ae = add i32 %i.ad, %i.ac
  %i.af = load i32, ptr @FLAC__STREAM_METADATA_CUESHEET_IS_CD_LEN, align 4, !tbaa !15
  %i.ag = add i32 %i.ae, %i.af
  %i.ah = load i32, ptr @FLAC__STREAM_METADATA_CUESHEET_RESERVED_LEN, align 4, !tbaa !15
  %i.ai = add i32 %i.ag, %i.ah
  %i.aj = load i32, ptr @FLAC__STREAM_METADATA_CUESHEET_NUM_TRACKS_LEN, align 4, !tbaa !15
  %i.ak = add i32 %i.ai, %i.aj
  %i.al = lshr i32 %i.ak, 3
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !19 ; 4 uses
  %i.ap = load i32, ptr @FLAC__STREAM_METADATA_CUESHEET_TRACK_OFFSET_LEN, align 4, !tbaa !15
  %i.aq = load i32, ptr @FLAC__STREAM_METADATA_CUESHEET_TRACK_NUMBER_LEN, align 4, !tbaa !15
  %i.ar = add i32 %i.aq, %i.ap
  %i.as = load i32, ptr @FLAC__STREAM_METADATA_CUESHEET_TRACK_ISRC_LEN, align 4, !tbaa !15
  %i.at = add i32 %i.ar, %i.as
  %i.au = load i32, ptr @FLAC__STREAM_METADATA_CUESHEET_TRACK_TYPE_LEN, align 4, !tbaa !15
  %i.av = add i32 %i.at, %i.au
  %i.aw = load i32, ptr @FLAC__STREAM_METADATA_CUESHEET_TRACK_PRE_EMPHASIS_LEN, align 4, !tbaa !15
  %i.ax = add i32 %i.av, %i.aw
  %i.ay = load i32, ptr @FLAC__STREAM_METADATA_CUESHEET_TRACK_RESERVED_LEN, align 4, !tbaa !15
  %i.az = add i32 %i.ax, %i.ay
  %i.ba = load i32, ptr @FLAC__STREAM_METADATA_CUESHEET_TRACK_NUM_INDICES_LEN, align 4, !tbaa !15
  %i.bb = add i32 %i.az, %i.ba
  %i.bc = mul i32 %i.bb, %i.ao
  %i.bd = lshr i32 %i.bc, 3
  %i.be = add nuw nsw i32 %i.bd, %i.al            ; 3 uses
  store i32 %i.be, ptr %i.am, align 8, !tbaa !14
  %.not.i = icmp eq i32 %i.ao, 0
  br i1 %.not.i, label %.critedge36, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.critedge
  %i.bf = load ptr, ptr %i.a, align 8, !tbaa !19  ; 5 uses
  %i.bg = load i32, ptr @FLAC__STREAM_METADATA_CUESHEET_INDEX_OFFSET_LEN, align 4, !tbaa !15
  %i.bh = load i32, ptr @FLAC__STREAM_METADATA_CUESHEET_INDEX_NUMBER_LEN, align 4, !tbaa !15
  %i.bi = add i32 %i.bh, %i.bg
  %i.bj = load i32, ptr @FLAC__STREAM_METADATA_CUESHEET_INDEX_RESERVED_LEN, align 4, !tbaa !15
  %i.bk = add i32 %i.bi, %i.bj                    ; 5 uses
  %wide.trip.count.i = zext i32 %i.ao to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 3 uses
  %i.bl = icmp ult i32 %i.ao, 4
  br i1 %i.bl, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %wide.trip.count.i, 4294967292
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.3, %bb.j ] ; 5 uses
  %i.bm = phi i32 [ %i.be, %.lr.ph.i.new ], [ %i.co, %bb.j ]
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.3, %bb.j ]
  %i.bn = getelementptr inbounds nuw [32 x i8], ptr %i.bf, i64 %indvars.iv.i
end_hunk_1
