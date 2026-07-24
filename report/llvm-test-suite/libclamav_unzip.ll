inline.NumInlined: 5
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
@.str.5 = private unnamed_addr constant [55 x i8] c"Unzip: zip_file_read: Unknown compression method (%d)\0A\00", align 1
@.str.6 = private unnamed_addr constant [49 x i8] c"Unzip: zip_file_open: Can't lseek descriptor %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [66 x i8] c"Unzip: zip_file_open: Can't read zip header (only read %d bytes)\0A\00", align 1
@.str.8 = private unnamed_addr constant [53 x i8] c"Unzip: zip_file_read: fp == NULL || fp->dir == NULL\0A\00", align 1
@.str.9 = private unnamed_addr constant [43 x i8] c"Unzip: zip_file_read: Can't read %d bytes\0A\00", align 1
@.str.10 = private unnamed_addr constant [53 x i8] c"Unzip: zip_file_read: Can't read %d bytes (read %d)\0A\00", align 1
@.str.11 = private unnamed_addr constant [61 x i8] c"Unzip: zip_file_read: Not supported compression method (%u)\0A\00", align 1
@.str.12 = private unnamed_addr constant [56 x i8] c"Unzip: __zip_dir_parse: Can't fstat file descriptor %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [48 x i8] c"Unzip: __zip_find_disk_trailer: File too short\0A\00", align 1
@.str.15 = private unnamed_addr constant [61 x i8] c"Unzip: __zip_find_disk_trailer: Central directory not found\0A\00", align 1
@.str.16 = private unnamed_addr constant [59 x i8] c"Unzip: __zip_find_disk_trailer: Can't lseek descriptor %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [53 x i8] c"Unzip: __zip_find_disk_trailer: Can't read %u bytes\0A\00", align 1
@.str.18 = private unnamed_addr constant [72 x i8] c"Unzip: __zip_find_disk_trailer: u_rootseek > filesize, continue search\0A\00", align 1
@.str.19 = private unnamed_addr constant [67 x i8] c"Unzip: __zip_find_disk_trailer: found file header at %u, shift %u\0A\00", align 1
@.str.20 = private unnamed_addr constant [67 x i8] c"Unzip: __zip_parse_root_directory: Can't fstat file descriptor %d\0A\00", align 1
@.str.21 = private unnamed_addr constant [61 x i8] c"Unzip: __zip_parse_root_directory: File contains no entries\0A\00", align 1
@.str.22 = private unnamed_addr constant [56 x i8] c"Unzip: __zip_parse_root_directory: Incorrect root size\0A\00", align 1
@.str.23 = private unnamed_addr constant [62 x i8] c"Unzip: __zip_parse_root_directory: Can't lseek descriptor %d\0A\00", align 1
@.str.24 = private unnamed_addr constant [56 x i8] c"Unzip: __zip_parse_root_directory: Can't read %d bytes\0A\00", align 1
@.str.25 = private unnamed_addr constant [71 x i8] c"Unzip: __zip_parse_root_directory: Entry %d outside of root directory\0A\00", align 1
@.str.26 = private unnamed_addr constant [59 x i8] c"Unzip: __zip_parse_root_directory: Entry %d name too long\0A\00", align 1
@.str.27 = private unnamed_addr constant [80 x i8] c"Unzip: __zip_parse_root_directory: File claims to be stored but csize != usize\0A\00", align 1
@.str.28 = private unnamed_addr constant [72 x i8] c"Unzip: __zip_parse_root_directory: Also checking for method 'deflated'\0A\00", align 1
@.str.29 = private unnamed_addr constant [82 x i8] c"Unzip: __zip_parse_root_directory: File claims to be deflated but csize == usize\0A\00", align 1
@.str.30 = private unnamed_addr constant [70 x i8] c"Unzip: __zip_parse_root_directory: Also checking for method 'stored'\0A\00", align 1
@.str.31 = private unnamed_addr constant [79 x i8] c"Unzip: __zip_parse_root_directory: Name of entry %d outside of root directory\0A\00", align 1
@.str.32 = private unnamed_addr constant [64 x i8] c"Unzip: __zip_parse_root_directory: Can't read name of entry %d\0A\00", align 1
@.str.33 = private unnamed_addr constant [78 x i8] c"Unzip: __zip_parse_root_directory: End of entry %d outside of root directory\0A\00", align 1
@.str.34 = private unnamed_addr constant [7 x i8] c"1.2.11\00", align 1
@.str.35 = private unnamed_addr constant [48 x i8] c"Unzip: __zip_inflate_init: inflateInit2 failed\0A\00", align 1

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define dso_local noundef i32 @zip_dir_close(ptr noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8    ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef nonnull %i.b) #11
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !17   ; 2 uses
  %.not9 = icmp eq ptr %i.d, null
  br i1 %.not9, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @free(ptr noundef nonnull %i.d) #11
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !18   ; 2 uses
  %.not10 = icmp eq ptr %i.f, null
  br i1 %.not10, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @free(ptr noundef nonnull %i.f) #11
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  tail call void @free(ptr noundef nonnull %0) #11
  ret i32 0
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local ptr @zip_dir_open(i32 noundef %0, i64 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call ptr @cli_calloc(i64 noundef 1, i64 noundef 72) #11 ; 10 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.not25 = icmp eq ptr %2, null
  br i1 %.not25, label %bb.m, label %.sink.split

bb.c:                                             ; preds = %bb.a
  %.not26 = icmp eq i64 %1, 0
  br i1 %.not26, label %.split, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.b = tail call i64 @lseek(i32 noundef %0, i64 noundef %1, i32 noundef 0) #11
  %i.c = icmp eq i64 %i.b, -1
  br i1 %i.c, label %bb.e, label %.split

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str, i32 noundef %0) #11
  %.not30 = icmp eq ptr %2, null
  br i1 %.not30, label %bb.m, label %.sink.split

.split:                                           ; preds = %bb.d, %bb.c
  %.sink = phi i64 [ 0, %bb.c ], [ %1, %bb.d ]
  store i32 %0, ptr %i.a, align 8, !tbaa !19
  %i.d = tail call fastcc i32 @__zip_dir_parse(ptr noundef %i.a, i64 noundef %.sink)
  %.not27 = icmp eq i32 %i.d, 0
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !8    ; 3 uses
  br i1 %.not27, label %bb.l, label %bb.f

bb.f:                                             ; preds = %.split
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @free(ptr noundef nonnull %i.f) #11
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !17   ; 2 uses
  %.not9.i = icmp eq ptr %i.h, null
  br i1 %.not9.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @free(ptr noundef nonnull %i.h) #11
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !18   ; 2 uses
  %.not10.i = icmp eq ptr %i.j, null
  br i1 %.not10.i, label %zip_dir_close.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @free(ptr noundef nonnull %i.j) #11
  br label %zip_dir_close.exit

zip_dir_close.exit:                               ; preds = %bb.j, %bb.k
  tail call void @free(ptr noundef nonnull %i.a) #11
  %.not29 = icmp eq ptr %2, null
  br i1 %.not29, label %bb.m, label %.sink.split

bb.l:                                             ; preds = %.split
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.f, ptr %i.k, align 8, !tbaa !20
  %.not28 = icmp eq ptr %2, null
  br i1 %.not28, label %bb.m, label %.sink.split

.sink.split:                                      ; preds = %bb.l, %zip_dir_close.exit, %bb.e, %bb.b
  %.sink37 = phi i32 [ -114, %zip_dir_close.exit ], [ -123, %bb.e ], [ -114, %bb.b ], [ 0, %bb.l ]
  %.0.ph = phi ptr [ null, %zip_dir_close.exit ], [ null, %bb.e ], [ null, %bb.b ], [ %i.a, %bb.l ]
  store i32 %.sink37, ptr %2, align 4, !tbaa !4
  br label %bb.m

bb.m:                                             ; preds = %.sink.split, %bb.l, %zip_dir_close.exit, %bb.e, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ null, %bb.e ], [ null, %zip_dir_close.exit ], [ %i.a, %bb.l ], [ %.0.ph, %.sink.split ]
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

declare ptr @cli_calloc(i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #5

declare void @cli_errmsg(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -124, 1) i32 @__zip_dir_parse(ptr nofree noundef nonnull captures(none) %0, i64 noundef %1) unnamed_addr #2 {
bb.a:
  %2 = alloca %struct.zip_root_dirent, align 1    ; 12 uses
  %3 = alloca %struct.stat, align 8               ; 4 uses
  %4 = alloca %struct.zip_root_dirent, align 4    ; 7 uses
  %5 = alloca %struct.stat, align 8               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  %i.a = load i32, ptr %0, align 8, !tbaa !19
  %i.b = call i32 @fstat(i32 noundef %i.a, ptr noundef nonnull %5) #11
  %i.c = icmp eq i32 %i.b, -1
  %i.d = load i32, ptr %0, align 8, !tbaa !19     ; 9 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.12, i32 noundef %i.d) #11
  br label %bb.ap

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.f = load i64, ptr %i.e, align 8, !tbaa !21   ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  %i.g = icmp slt i64 %i.f, 22
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.14) #11
  br label %__zip_find_disk_trailer.exit.thread

bb.e:                                             ; preds = %bb.c
  %i.h = tail call ptr @cli_malloc(i64 noundef 1024) #11 ; 11 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %__zip_find_disk_trailer.exit.thread, label %.lr.ph102.i

.lr.ph102.i:                                      ; preds = %bb.e
  %6 = icmp sgt i64 %i.f, 1023
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = trunc i64 %i.f to i32
  %i.k = and i64 %i.f, 4294967295                 ; 2 uses
  %i.l = trunc i64 %1 to i32                      ; 4 uses
  br label %bb.f

.loopexit81.i:                                    ; preds = %.loopexit.i
  %i.m = icmp slt i64 %.272.i, 1
  br i1 %i.m, label %._crit_edge.i, label %bb.f

._crit_edge.i:                                    ; preds = %.loopexit81.i
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.15) #11
  call void @free(ptr noundef %i.h) #11
  br label %__zip_find_disk_trailer.exit.thread

bb.f:                                             ; preds = %.loopexit81.i, %.lr.ph102.i
  %.066101.i = phi i32 [ 0, %.lr.ph102.i ], [ %.4.i, %.loopexit81.i ]
  %.070100.i = phi i64 [ %i.f, %.lr.ph102.i ], [ %.171.i, %.loopexit81.i ] ; 4 uses
  %i.n = icmp samesign ugt i64 %.070100.i, 1023   ; 2 uses
  %i.o = icmp eq i64 %.070100.i, %i.f
  %.171.v.i = select i1 %i.o, i64 -1024, i64 -1002
  %.171.i = add nsw i64 %.171.v.i, %.070100.i     ; 2 uses
  %.272.i = select i1 %i.n, i64 %.171.i, i64 0    ; 3 uses
  %7 = or i1 %6, %i.n
  %.169.i = select i1 %7, i64 1024, i64 %.070100.i ; 3 uses
  %i.p = call i64 @lseek(i32 noundef %i.d, i64 noundef %.272.i, i32 noundef 0) #11
  %i.q = icmp slt i64 %i.p, 0
  br i1 %i.q, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.16, i32 noundef %i.d) #11
  call void @free(ptr noundef %i.h) #11
  br label %__zip_find_disk_trailer.exit.thread

bb.h:                                             ; preds = %bb.f
  %i.r = trunc nuw nsw i64 %.169.i to i32         ; 3 uses
  %i.s = call i32 @cli_readn(i32 noundef %i.d, ptr noundef nonnull %i.h, i32 noundef %i.r) #11
  %i.t = sext i32 %i.s to i64
  %i.u = icmp sgt i64 %.169.i, %i.t
  br i1 %i.u, label %bb.i, label %.lr.ph.i

bb.i:                                             ; preds = %bb.h
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.17, i32 noundef %i.r) #11
  call void @free(ptr noundef nonnull %i.h) #11
  br label %__zip_find_disk_trailer.exit.thread

.lr.ph.i:                                         ; preds = %bb.h
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 %.169.i ; 2 uses
  %.07396.i = getelementptr inbounds i8, ptr %i.v, i64 -1
  %i.w = ptrtoint ptr %i.v to i64
  br label %bb.j

bb.j:                                             ; preds = %.loopexit.i, %.lr.ph.i
  %.07399.i = phi ptr [ %.07396.i, %.lr.ph.i ], [ %.073.i, %.loopexit.i ] ; 8 uses
  %.198.i = phi i32 [ %.066101.i, %.lr.ph.i ], [ %.4.i, %.loopexit.i ] ; 6 uses
  %i.x = load i8, ptr %.07399.i, align 1, !tbaa !25
  %i.y = icmp eq i8 %i.x, 80
  %i.z = ptrtoint ptr %.07399.i to i64
  %i.aa = sub i64 %i.w, %i.z
  %i.ab = icmp sgt i64 %i.aa, 19
  %or.cond = select i1 %i.y, i1 %i.ab, i1 false
  br i1 %or.cond, label %bb.k, label %.loopexit.i

bb.k:                                             ; preds = %bb.j
  %.073.val.i = load i32, ptr %.07399.i, align 1
  %i.ac = icmp eq i32 %.073.val.i, 101010256
  br i1 %i.ac, label %__fixup_rootseek.exit.i, label %.loopexit.i

__fixup_rootseek.exit.i:                          ; preds = %bb.k
  %.sroa.4.3.in = getelementptr inbounds nuw i8, ptr %.07399.i, i64 8
  %.sroa.4.3 = load i16, ptr %.sroa.4.3.in, align 1 ; 3 uses
  %.sroa.516.3.in = getelementptr inbounds nuw i8, ptr %.07399.i, i64 12
  %.sroa.516.3 = load i32, ptr %.sroa.516.3.in, align 1 ; 3 uses
  %.sroa.7.3.in = getelementptr inbounds nuw i8, ptr %.07399.i, i64 16
  %.sroa.7.3 = load i32, ptr %.sroa.7.3.in, align 1 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.07399.i, i64 %.272.i
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = sub i64 %i.ae, %i.i                     ; 2 uses
  %i.ag = zext i32 %.sroa.7.3 to i64
  %i.ah = zext i32 %.sroa.516.3 to i64            ; 5 uses
  %i.ai = sub nsw i64 %i.af, %i.ah                ; 2 uses
  %i.aj = icmp slt i64 %i.ai, %i.ag
  %i.ak = icmp sgt i64 %i.af, %i.ah
  %or.cond.i.i = and i1 %i.ak, %i.aj
  %i.al = trunc i64 %i.ai to i32
  %spec.select32 = select i1 %or.cond.i.i, i32 %i.al, i32 %.sroa.7.3 ; 3 uses
  %i.am = icmp ugt i32 %spec.select32, %i.j
  br i1 %i.am, label %bb.l, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %__fixup_rootseek.exit.i
  %i.an = add i32 %spec.select32, %.198.i         ; 2 uses
  %i.ao = zext i32 %i.an to i64                   ; 2 uses
  %i.ap = add nuw nsw i64 %i.ao, 46
  %i.aq = icmp samesign ult i64 %i.ap, %i.k
  br i1 %i.aq, label %bb.m, label %.loopexit.i

bb.l:                                             ; preds = %__fixup_rootseek.exit.i
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.18) #11
  br label %.loopexit.i

bb.m:                                             ; preds = %.preheader.preheader.i
  %i.ar = call i64 @lseek(i32 noundef %i.d, i64 noundef %i.ao, i32 noundef 0) #11
  %i.as = icmp slt i64 %i.ar, 0
  br i1 %i.as, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.r, %bb.m
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.16, i32 noundef %i.d) #11
  call void @free(ptr noundef %i.h) #11
  br label %__zip_find_disk_trailer.exit.thread

bb.o:                                             ; preds = %bb.m
  %i.at = call i32 @cli_readn(i32 noundef %i.d, ptr noundef nonnull %4, i32 noundef 46) #11
  %i.au = icmp slt i32 %i.at, 46
  br i1 %i.au, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.s, %bb.o
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.17, i32 noundef %i.r) #11
  call void @free(ptr noundef %i.h) #11
  br label %__zip_find_disk_trailer.exit.thread

bb.q:                                             ; preds = %bb.o
  %i.av = load i32, ptr %4, align 4, !tbaa !26
  %i.aw = icmp eq i32 %i.av, 33639248
  br i1 %i.aw, label %bb.u, label %.preheader.1.i

.preheader.1.i:                                   ; preds = %bb.q
  %.pre.i = add i32 %spec.select32, %i.l          ; 2 uses
  %.pre113.i = zext i32 %.pre.i to i64            ; 2 uses
  %.pre115.i = add nuw nsw i64 %.pre113.i, 46
  %i.ax = icmp samesign ult i64 %.pre115.i, %i.k
  br i1 %i.ax, label %bb.r, label %.loopexit.i

bb.r:                                             ; preds = %.preheader.1.i
  %i.ay = call i64 @lseek(i32 noundef %i.d, i64 noundef %.pre113.i, i32 noundef 0) #11
  %i.az = icmp slt i64 %i.ay, 0
  br i1 %i.az, label %bb.n, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ba = call i32 @cli_readn(i32 noundef %i.d, ptr noundef nonnull %4, i32 noundef 46) #11
  %i.bb = icmp slt i32 %i.ba, 46
  br i1 %i.bb, label %bb.p, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bc = load i32, ptr %4, align 4, !tbaa !26
  %i.bd = icmp eq i32 %i.bc, 33639248
  br i1 %i.bd, label %bb.u, label %.loopexit.i

.loopexit.i:                                      ; preds = %bb.t, %.preheader.1.i, %bb.l, %.preheader.preheader.i, %bb.k, %bb.j
  %.4.i = phi i32 [ %.198.i, %bb.l ], [ %.198.i, %bb.j ], [ %.198.i, %bb.k ], [ %i.l, %bb.t ], [ %.198.i, %.preheader.preheader.i ], [ %i.l, %.preheader.1.i ] ; 2 uses
  %.073.i = getelementptr inbounds i8, ptr %.07399.i, i64 -1 ; 2 uses
  %.not80.i = icmp ult ptr %.073.i, %i.h
  br i1 %.not80.i, label %.loopexit81.i, label %bb.j, !llvm.loop !28

__zip_find_disk_trailer.exit.thread:              ; preds = %bb.d, %._crit_edge.i, %bb.g, %bb.i, %bb.n, %bb.p, %bb.e
  %.067.i.ph = phi i32 [ -114, %bb.e ], [ -123, %bb.p ], [ -123, %bb.n ], [ -123, %bb.i ], [ -123, %bb.g ], [ -124, %._crit_edge.i ], [ -124, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  br label %bb.ap

bb.u:                                             ; preds = %bb.t, %bb.q
  %.pre-phi = phi i32 [ %.pre.i, %bb.t ], [ %i.an, %bb.q ] ; 2 uses
  %.294.lcssa107.i = phi i32 [ %i.l, %bb.t ], [ %.198.i, %bb.q ] ; 2 uses
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.19, i32 noundef %.pre-phi, i32 noundef %.294.lcssa107.i) #11
  call void @free(ptr noundef %i.h) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  %i.be = load i32, ptr %0, align 8, !tbaa !19    ; 6 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  %i.bg = call i32 @fstat(i32 noundef %i.be, ptr noundef nonnull %3) #11
  %i.bh = icmp eq i32 %i.bg, -1
  br i1 %i.bh, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.20, i32 noundef %i.be) #11
  br label %__zip_parse_root_directory.exit

bb.w:                                             ; preds = %bb.u
  %.not.i10 = icmp eq i16 %.sroa.4.3, 0
  br i1 %.not.i10, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.21) #11
  br label %__zip_parse_root_directory.exit

bb.y:                                             ; preds = %bb.w
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !21
  %i.bk = trunc i64 %i.bj to i32
  %i.bl = icmp ugt i32 %.sroa.516.3, %i.bk
  br i1 %i.bl, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.22) #11
  br label %__zip_parse_root_directory.exit

bb.aa:                                            ; preds = %bb.y
  %i.bm = call ptr @cli_malloc(i64 noundef %i.ah) #11 ; 6 uses
  %.not113.i = icmp eq ptr %i.bm, null
  br i1 %.not113.i, label %__zip_parse_root_directory.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.aa
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 30
  %i.bo = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 42
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 10
  br label %bb.ab

bb.ab:                                            ; preds = %bb.an, %.preheader.i
  %.0100151.i = phi ptr [ %i.bm, %.preheader.i ], [ %i.ea, %bb.an ] ; 13 uses
  %.0101150.i = phi ptr [ null, %.preheader.i ], [ %i.dz, %bb.an ] ; 2 uses
  %.0102149.i = phi i16 [ %.sroa.4.3, %.preheader.i ], [ %i.eb, %bb.an ] ; 3 uses
  %.0103148.i = phi i32 [ 0, %.preheader.i ], [ %i.dm, %bb.an ] ; 3 uses
  %i.bw = add i32 %.pre-phi, %.0103148.i
  %i.bx = zext i32 %i.bw to i64
  %i.by = call i64 @lseek(i32 noundef %i.be, i64 noundef %i.bx, i32 noundef 0) #11
  %i.bz = icmp slt i64 %i.by, 0
  br i1 %i.bz, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  call void @free(ptr noundef %i.bm) #11
end_hunk_0
