Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/archive_read_support_format_lha?download=true
inline.NumInlined: 100
inline.NumDeleted: 26
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 13
begin_hunk_0
@.str.23 = private unnamed_addr constant [21 x i8] c"LHa header CRC error\00", align 1
@.str.24 = private unnamed_addr constant [26 x i8] c"LHa header size too large\00", align 1
@.str.25 = private unnamed_addr constant [19 x i8] c"LHa data CRC error\00", align 1
@.str.26 = private unnamed_addr constant [44 x i8] c"Unsupported lzh compression method -%c%c%c-\00", align 1
@.str.27 = private unnamed_addr constant [47 x i8] c"Couldn't allocate memory for lzh decompression\00", align 1
@.str.28 = private unnamed_addr constant [24 x i8] c"Truncated LHa file body\00", align 1
@.str.29 = private unnamed_addr constant [13 x i8] c"Bad lzh data\00", align 1
@cache_masks = internal unnamed_addr constant [20 x i16] [i16 0, i16 1, i16 3, i16 7, i16 15, i16 31, i16 63, i16 127, i16 255, i16 511, i16 1023, i16 2047, i16 4095, i16 8191, i16 16383, i16 32767, i16 -1, i16 -1, i16 -1, i16 -1], align 16
@bitlen_tbl = internal unnamed_addr constant [1024 x i8] c"\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0D\0D\0D\0D\0D\0D\0D\0D\0E\0E\0E\0E\0F\0F\10\00", align 16
@.str.30 = private unnamed_addr constant [24 x i8] c"Truncated LHa file data\00", align 1
@switch.table.archive_read_format_lha_read_data = private unnamed_addr constant [3 x i8] c"\04\05\05", align 4
@switch.table.archive_read_format_lha_read_data.4 = private unnamed_addr constant [3 x i8] c"\0D\0F\10", align 4

; Function Attrs: nounwind uwtable
define dso_local range(i32 -30, 1) i32 @archive_read_support_format_lha(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @__archive_check_magic(ptr noundef %0, i32 noundef 14594245, i32 noundef 1, ptr noundef nonnull @.str) #16
  %.not = icmp eq i32 %i.a, -30
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noalias dereferenceable_or_null(416) ptr @calloc(i64 noundef 1, i64 noundef 416) #17 ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef %0, i32 noundef 12, ptr noundef nonnull @.str.1) #16
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.d = tail call i32 @__archive_read_register_format(ptr noundef %0, ptr noundef nonnull %i.b, ptr noundef nonnull @.str.2, ptr noundef nonnull @archive_read_format_lha_bid, ptr noundef nonnull @archive_read_format_lha_options, ptr noundef nonnull @archive_read_format_lha_read_header, ptr noundef nonnull @archive_read_format_lha_read_data, ptr noundef nonnull @archive_read_format_lha_read_data_skip, ptr noundef null, ptr noundef nonnull @archive_read_format_lha_cleanup, ptr noundef null, ptr noundef null) #16
  %.not15 = icmp eq i32 %i.d, 0
  br i1 %.not15, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @free(ptr noundef nonnull %i.b) #16
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.a, %bb.c
  %.1 = phi i32 [ -30, %bb.c ], [ -30, %bb.a ], [ 0, %bb.e ], [ 0, %bb.d ]
  ret i32 %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @__archive_check_magic(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #3

declare void @archive_set_error(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare i32 @__archive_read_register_format(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 31) i32 @archive_read_format_lha_bid(ptr noundef %0, i32 noundef %1) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.b = icmp sgt i32 %1, 30
  br i1 %i.b, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__archive_read_ahead(ptr noundef %0, i64 noundef 22, ptr noundef null) #16 ; 4 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call fastcc i64 @lha_check_header_format(ptr noundef %i.c)
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = load i8, ptr %i.c, align 1, !tbaa !10
  %i.h = icmp eq i8 %i.g, 77
  br i1 %i.h, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.j = load i8, ptr %i.i, align 1, !tbaa !10
  %i.k = icmp eq i8 %i.j, 90
  br i1 %i.k, label %.outer.split.preheader, label %.loopexit

.outer.split.preheader:                           ; preds = %bb.e, %._crit_edge
  %.0.ph51 = phi i64 [ %.0, %._crit_edge ], [ 4096, %bb.e ]
  %.021.ph50 = phi i64 [ %i.ac, %._crit_edge ], [ 0, %bb.e ] ; 3 uses
  br label %.outer.split

.outer.split:                                     ; preds = %.outer.split.preheader, %bb.f
  %.0 = phi i64 [ %i.o, %bb.f ], [ %.0.ph51, %.outer.split.preheader ] ; 4 uses
  %i.l = add nsw i64 %.0, %.021.ph50
  %i.m = call ptr @__archive_read_ahead(ptr noundef %0, i64 noundef %i.l, ptr noundef nonnull %i.a) #16 ; 4 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.outer.split
  %i.o = lshr i64 %.0, 1
  %i.p = icmp samesign ult i64 %.0, 50
  br i1 %i.p, label %.loopexit, label %.outer.split, !llvm.loop !94

bb.g:                                             ; preds = %.outer.split
  %i.q = getelementptr inbounds i8, ptr %i.m, i64 %.021.ph50 ; 2 uses
  %i.r = load i64, ptr %i.a, align 8, !tbaa !13   ; 2 uses
  %i.s = getelementptr inbounds i8, ptr %i.m, i64 %i.r
  %i.t = add nsw i64 %.021.ph50, 22
  %i.u = icmp slt i64 %i.t, %i.r
  br i1 %i.u, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.g, %bb.h
  %.02231 = phi ptr [ %i.x, %bb.h ], [ %i.q, %bb.g ] ; 2 uses
  %i.v = call fastcc i64 @lha_check_header_format(ptr noundef %.02231) ; 2 uses
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %.lr.ph
  %i.x = getelementptr inbounds nuw i8, ptr %.02231, i64 %i.v ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 22
  %i.z = icmp ult ptr %i.y, %i.s
  br i1 %i.z, label %.lr.ph, label %._crit_edge, !llvm.loop !95

._crit_edge:                                      ; preds = %bb.h, %bb.g
  %.022.lcssa = phi ptr [ %i.q, %bb.g ], [ %i.x, %bb.h ]
  %i.aa = ptrtoint ptr %.022.lcssa to i64
  %i.ab = ptrtoint ptr %i.m to i64
  %i.ac = sub i64 %i.aa, %i.ab                    ; 2 uses
  %i.ad = icmp slt i64 %i.ac, 20480
  br i1 %i.ad, label %.outer.split.preheader, label %.loopexit, !llvm.loop !94

.loopexit:                                        ; preds = %._crit_edge, %bb.f, %.lr.ph, %bb.d, %bb.e, %bb.c, %bb.b, %bb.a
  %.023 = phi i32 [ 0, %bb.d ], [ -1, %bb.a ], [ -1, %bb.b ], [ 30, %bb.c ], [ 0, %bb.e ], [ 30, %.lr.ph ], [ 0, %bb.f ], [ 0, %._crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret i32 %.023
}

; Function Attrs: nounwind uwtable
define internal range(i32 -30, 1) i32 @archive_read_format_lha_options(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2072
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !31
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !33
  %i.d = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(11) @.str.3) #18
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.f = icmp eq ptr %2, null
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i8, ptr %2, align 1, !tbaa !10
  %i.h = icmp eq i8 %i.g, 0
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  tail call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef nonnull @.str.4) #16
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.i = tail call ptr @archive_string_conversion_from_charset(ptr noundef nonnull %0, ptr noundef nonnull %2, i32 noundef 0) #16 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 208
  store ptr %i.i, ptr %i.j, align 8, !tbaa !40
  %.not = icmp eq ptr %i.i, null
  %. = select i1 %.not, i32 -30, i32 0
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.d, %bb.e
  %.010 = phi i32 [ %., %bb.e ], [ -25, %bb.d ], [ -20, %bb.a ]
  ret i32 %.010
}

; Function Attrs: nounwind uwtable
define internal range(i32 -30, 2) i32 @archive_read_format_lha_read_header(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  %i.b = alloca i16, align 2                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i16, align 2                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 4 uses
  %i.f = alloca i64, align 8                      ; 27 uses
  %2 = alloca %struct.archive_wstring, align 8    ; 10 uses
  %3 = alloca %struct.archive_wstring, align 8    ; 12 uses
  %4 = alloca %struct.archive_mstring, align 8    ; 15 uses
  %i.g = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #16
  %.b.i = load i1, ptr @lha_crc16_init.crc16init, align 4
  br i1 %.b.i, label %lha_crc16_init.exit, label %vector.ph

vector.ph:                                        ; preds = %bb.a
  store i1 true, ptr @lha_crc16_init.crc16init, align 4
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %5 = lshr <4 x i64> %vec.ind, splat (i64 1)
  %6 = trunc <4 x i64> %5 to <4 x i32>
  %i.h = and <4 x i32> %6, splat (i32 32767)
  %i.i = xor <4 x i32> %i.h, <i32 0, i32 40961, i32 0, i32 40961> ; 2 uses
  %i.j = lshr <4 x i32> %i.i, splat (i32 1)
  %i.k = trunc <4 x i32> %i.i to <4 x i1>
  %i.l = select <4 x i1> %i.k, <4 x i32> splat (i32 40961), <4 x i32> zeroinitializer
  %i.m = xor <4 x i32> %i.l, %i.j                 ; 2 uses
  %i.n = lshr <4 x i32> %i.m, splat (i32 1)
  %i.o = trunc <4 x i32> %i.m to <4 x i1>
  %i.p = select <4 x i1> %i.o, <4 x i32> splat (i32 40961), <4 x i32> zeroinitializer
  %i.q = xor <4 x i32> %i.p, %i.n                 ; 2 uses
  %i.r = lshr <4 x i32> %i.q, splat (i32 1)
  %i.s = trunc <4 x i32> %i.q to <4 x i1>
  %i.t = select <4 x i1> %i.s, <4 x i32> splat (i32 40961), <4 x i32> zeroinitializer
  %i.u = xor <4 x i32> %i.t, %i.r                 ; 2 uses
  %i.v = lshr <4 x i32> %i.u, splat (i32 1)
  %i.w = trunc <4 x i32> %i.u to <4 x i1>
  %i.x = select <4 x i1> %i.w, <4 x i32> splat (i32 40961), <4 x i32> zeroinitializer
  %i.y = xor <4 x i32> %i.x, %i.v                 ; 2 uses
  %i.z = lshr <4 x i32> %i.y, splat (i32 1)
  %i.aa = trunc <4 x i32> %i.y to <4 x i1>
  %i.ab = select <4 x i1> %i.aa, <4 x i32> splat (i32 40961), <4 x i32> zeroinitializer
  %i.ac = xor <4 x i32> %i.ab, %i.z               ; 2 uses
  %i.ad = lshr <4 x i32> %i.ac, splat (i32 1)
  %i.ae = trunc <4 x i32> %i.ac to <4 x i1>
  %i.af = select <4 x i1> %i.ae, <4 x i32> splat (i32 40961), <4 x i32> zeroinitializer
  %i.ag = xor <4 x i32> %i.af, %i.ad              ; 2 uses
  %i.ah = lshr <4 x i32> %i.ag, splat (i32 1)
  %i.ai = trunc <4 x i32> %i.ag to <4 x i1>
  %i.aj = select <4 x i1> %i.ai, <4 x i32> splat (i32 40961), <4 x i32> zeroinitializer
  %i.ak = xor <4 x i32> %i.aj, %i.ah
  %i.al = trunc nuw <4 x i32> %i.ak to <4 x i16>
  %i.am = getelementptr inbounds nuw [2 x i8], ptr @crc16tbl, i64 %index
  store <4 x i16> %i.al, ptr %i.am, align 8, !tbaa !41
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw nsw <4 x i64> %vec.ind, splat (i64 4)
  %i.an = icmp eq i64 %index.next, 256
  br i1 %i.an, label %.preheader.i, label %vector.body, !llvm.loop !96

.preheader.i:                                     ; preds = %vector.body, %.preheader.i
  %indvars.iv22.i = phi i64 [ %indvars.iv.next23.i.1, %.preheader.i ], [ 0, %vector.body ] ; 4 uses
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr @crc16tbl, i64 %indvars.iv22.i
  %i.ap = load i16, ptr %i.ao, align 4, !tbaa !41 ; 2 uses
  %i.aq = lshr i16 %i.ap, 8
  %i.ar = and i16 %i.ap, 255
  %i.as = zext nneg i16 %i.ar to i64
  %i.at = getelementptr inbounds nuw [2 x i8], ptr @crc16tbl, i64 %i.as
  %i.au = load i16, ptr %i.at, align 2, !tbaa !41
  %i.av = xor i16 %i.aq, %i.au
  %i.aw = getelementptr inbounds nuw [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @crc16tbl, i64 512), i64 %indvars.iv22.i
  store i16 %i.av, ptr %i.aw, align 4, !tbaa !41
  %indvars.iv.next23.i = or disjoint i64 %indvars.iv22.i, 1 ; 2 uses
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr @crc16tbl, i64 %indvars.iv.next23.i
  %i.ay = load i16, ptr %i.ax, align 2, !tbaa !41 ; 2 uses
  %i.az = lshr i16 %i.ay, 8
  %i.ba = and i16 %i.ay, 255
  %i.bb = zext nneg i16 %i.ba to i64
  %i.bc = getelementptr inbounds nuw [2 x i8], ptr @crc16tbl, i64 %i.bb
  %i.bd = load i16, ptr %i.bc, align 2, !tbaa !41
  %i.be = xor i16 %i.az, %i.bd
  %i.bf = getelementptr inbounds nuw [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @crc16tbl, i64 512), i64 %indvars.iv.next23.i
  store i16 %i.be, ptr %i.bf, align 2, !tbaa !41
  %indvars.iv.next23.i.1 = add nuw nsw i64 %indvars.iv22.i, 2 ; 2 uses
  %exitcond25.not.i.1 = icmp eq i64 %indvars.iv.next23.i.1, 256
  br i1 %exitcond25.not.i.1, label %lha_crc16_init.exit, label %.preheader.i, !llvm.loop !97

lha_crc16_init.exit:                              ; preds = %.preheader.i, %bb.a
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 720896, ptr %i.bg, align 8, !tbaa !106
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !107
  %i.bj = icmp eq ptr %i.bi, null
  br i1 %i.bj, label %bb.b, label %bb.c

bb.b:                                             ; preds = %lha_crc16_init.exit
  store ptr @.str.2, ptr %i.bh, align 8, !tbaa !107
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %lha_crc16_init.exit
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 2072
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !31
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !33 ; 50 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 291
  store i8 0, ptr %i.bn, align 1, !tbaa !44
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 292 ; 2 uses
  store i8 0, ptr %i.bo, align 4, !tbaa !45
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bm, i64 293
  store i8 0, ptr %i.bp, align 1, !tbaa !46
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  store i64 0, ptr %i.bq, align 8, !tbaa !47
  %i.br = tail call ptr @__archive_read_ahead(ptr noundef nonnull %0, i64 noundef 22, ptr noundef null) #16 ; 6 uses
  %i.bs = icmp eq ptr %i.br, null
  br i1 %i.bs, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.bt = tail call ptr @__archive_read_ahead(ptr noundef nonnull %0, i64 noundef 1, ptr noundef null) #16 ; 2 uses
  %i.bu = icmp eq ptr %i.bt, null
  br i1 %i.bu, label %lha_read_file_header_0.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bv = load i8, ptr %i.bt, align 1, !tbaa !10
  %i.bw = icmp eq i8 %i.bv, 0
  br i1 %i.bw, label %lha_read_file_header_0.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, i32, ptr, ...) @archive_set_error(ptr noundef nonnull %0, i32 noundef 84, ptr noundef nonnull @.str.14) #16
  br label %lha_read_file_header_0.exit.thread

bb.g:                                             ; preds = %bb.c
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bm, i64 289 ; 2 uses
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !108
  %i.bz = icmp eq i8 %i.by, 0
  br i1 %i.bz, label %bb.h, label %thread-pre-split

bb.h:                                             ; preds = %bb.g
  %i.ca = load i8, ptr %i.br, align 1, !tbaa !10  ; 2 uses
  %i.cb = icmp eq i8 %i.ca, 77
  br i1 %i.cb, label %bb.i, label %bb.ab

bb.i:                                             ; preds = %bb.h
  %i.cc = getelementptr inbounds nuw i8, ptr %i.br, i64 1
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !10
  %i.ce = icmp eq i8 %i.cd, 90
  br i1 %i.ce, label %bb.j, label %thread-pre-split

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #16
  %i.cf = call ptr @__archive_read_ahead(ptr noundef nonnull %0, i64 noundef 4096, ptr noundef nonnull %i.f) #16 ; 2 uses
  %i.cg = icmp eq ptr %i.cf, null
  br i1 %i.cg, label %._crit_edge33.i, label %.lr.ph32.i

._crit_edge33.i:                                  ; preds = %._crit_edge.i, %bb.j
  %i.ch = call ptr @__archive_read_ahead(ptr noundef %0, i64 noundef 2048, ptr noundef nonnull %i.f) #16 ; 2 uses
  %i.ci = icmp eq ptr %i.ch, null
  br i1 %i.ci, label %._crit_edge33.1.i, label %.lr.ph32.1.i

.lr.ph32.1.i:                                     ; preds = %._crit_edge33.i, %._crit_edge.1.i
  %i.cj = phi ptr [ %i.cw, %._crit_edge.1.i ], [ %i.ch, %._crit_edge33.i ] ; 5 uses
  %i.ck = load i64, ptr %i.f, align 8, !tbaa !13  ; 3 uses
  %i.cl = icmp slt i64 %i.ck, 22
  br i1 %i.cl, label %lha_skip_sfx.exit.thread, label %bb.k

bb.k:                                             ; preds = %.lr.ph32.1.i
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.ck
  %.not.1.i = icmp eq i64 %i.ck, 22
  br i1 %.not.1.i, label %._crit_edge.1.i, label %.lr.ph.1.i

.lr.ph.1.i:                                       ; preds = %bb.k, %bb.l
  %.02131.1.i = phi ptr [ %i.cp, %bb.l ], [ %i.cj, %bb.k ] ; 3 uses
  %i.cn = call fastcc i64 @lha_check_header_format(ptr noundef %.02131.1.i) ; 2 uses
  %i.co = icmp eq i64 %i.cn, 0
  br i1 %i.co, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %.lr.ph.1.i
  %i.cp = getelementptr inbounds nuw i8, ptr %.02131.1.i, i64 %i.cn ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 22
  %i.cr = icmp ult ptr %i.cq, %i.cm
  br i1 %i.cr, label %.lr.ph.1.i, label %._crit_edge.1.i, !llvm.loop !98

._crit_edge.1.i:                                  ; preds = %bb.l, %bb.k
  %.021.lcssa.1.i = phi ptr [ %i.cj, %bb.k ], [ %i.cp, %bb.l ]
  %i.cs = ptrtoint ptr %.021.lcssa.1.i to i64
  %i.ct = ptrtoint ptr %i.cj to i64
  %i.cu = sub i64 %i.cs, %i.ct
  %i.cv = call i64 @__archive_read_consume(ptr noundef %0, i64 noundef %i.cu) #16 ; 0 uses
  %i.cw = call ptr @__archive_read_ahead(ptr noundef %0, i64 noundef 2048, ptr noundef nonnull %i.f) #16 ; 2 uses
  %i.cx = icmp eq ptr %i.cw, null
  br i1 %i.cx, label %._crit_edge33.1.i, label %.lr.ph32.1.i

._crit_edge33.1.i:                                ; preds = %._crit_edge.1.i, %._crit_edge33.i
  %i.cy = call ptr @__archive_read_ahead(ptr noundef %0, i64 noundef 1024, ptr noundef nonnull %i.f) #16 ; 2 uses
  %i.cz = icmp eq ptr %i.cy, null
  br i1 %i.cz, label %._crit_edge33.2.i, label %.lr.ph32.2.i

.lr.ph32.2.i:                                     ; preds = %._crit_edge33.1.i, %._crit_edge.2.i
  %i.da = phi ptr [ %i.dn, %._crit_edge.2.i ], [ %i.cy, %._crit_edge33.1.i ] ; 5 uses
  %i.db = load i64, ptr %i.f, align 8, !tbaa !13  ; 3 uses
  %i.dc = icmp slt i64 %i.db, 22
  br i1 %i.dc, label %lha_skip_sfx.exit.thread, label %bb.m

bb.m:                                             ; preds = %.lr.ph32.2.i
  %i.dd = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.db
  %.not.2.i = icmp eq i64 %i.db, 22
  br i1 %.not.2.i, label %._crit_edge.2.i, label %.lr.ph.2.i

.lr.ph.2.i:                                       ; preds = %bb.m, %bb.n
  %.02131.2.i = phi ptr [ %i.dg, %bb.n ], [ %i.da, %bb.m ] ; 3 uses
  %i.de = call fastcc i64 @lha_check_header_format(ptr noundef %.02131.2.i) ; 2 uses
  %i.df = icmp eq i64 %i.de, 0
  br i1 %i.df, label %.loopexit, label %bb.n

bb.n:                                             ; preds = %.lr.ph.2.i
  %i.dg = getelementptr inbounds nuw i8, ptr %.02131.2.i, i64 %i.de ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 22
  %i.di = icmp ult ptr %i.dh, %i.dd
  br i1 %i.di, label %.lr.ph.2.i, label %._crit_edge.2.i, !llvm.loop !98

._crit_edge.2.i:                                  ; preds = %bb.n, %bb.m
  %.021.lcssa.2.i = phi ptr [ %i.da, %bb.m ], [ %i.dg, %bb.n ]
  %i.dj = ptrtoint ptr %.021.lcssa.2.i to i64
  %i.dk = ptrtoint ptr %i.da to i64
  %i.dl = sub i64 %i.dj, %i.dk
  %i.dm = call i64 @__archive_read_consume(ptr noundef %0, i64 noundef %i.dl) #16 ; 0 uses
  %i.dn = call ptr @__archive_read_ahead(ptr noundef %0, i64 noundef 1024, ptr noundef nonnull %i.f) #16 ; 2 uses
  %i.do = icmp eq ptr %i.dn, null
  br i1 %i.do, label %._crit_edge33.2.i, label %.lr.ph32.2.i

._crit_edge33.2.i:                                ; preds = %._crit_edge.2.i, %._crit_edge33.1.i
  %i.dp = call ptr @__archive_read_ahead(ptr noundef %0, i64 noundef 512, ptr noundef nonnull %i.f) #16 ; 2 uses
  %i.dq = icmp eq ptr %i.dp, null
  br i1 %i.dq, label %._crit_edge33.3.i, label %.lr.ph32.3.i

.lr.ph32.3.i:                                     ; preds = %._crit_edge33.2.i, %._crit_edge.3.i
  %i.dr = phi ptr [ %i.ee, %._crit_edge.3.i ], [ %i.dp, %._crit_edge33.2.i ] ; 5 uses
  %i.ds = load i64, ptr %i.f, align 8, !tbaa !13  ; 3 uses
  %i.dt = icmp slt i64 %i.ds, 22
  br i1 %i.dt, label %lha_skip_sfx.exit.thread, label %bb.o

bb.o:                                             ; preds = %.lr.ph32.3.i
  %i.du = getelementptr inbounds nuw i8, ptr %i.dr, i64 %i.ds
  %.not.3.i = icmp eq i64 %i.ds, 22
  br i1 %.not.3.i, label %._crit_edge.3.i, label %.lr.ph.3.i

.lr.ph.3.i:                                       ; preds = %bb.o, %bb.p
  %.02131.3.i = phi ptr [ %i.dx, %bb.p ], [ %i.dr, %bb.o ] ; 3 uses
  %i.dv = call fastcc i64 @lha_check_header_format(ptr noundef %.02131.3.i) ; 2 uses
  %i.dw = icmp eq i64 %i.dv, 0
  br i1 %i.dw, label %.loopexit, label %bb.p

bb.p:                                             ; preds = %.lr.ph.3.i
  %i.dx = getelementptr inbounds nuw i8, ptr %.02131.3.i, i64 %i.dv ; 3 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 22
  %i.dz = icmp ult ptr %i.dy, %i.du
  br i1 %i.dz, label %.lr.ph.3.i, label %._crit_edge.3.i, !llvm.loop !98

._crit_edge.3.i:                                  ; preds = %bb.p, %bb.o
end_hunk_0
