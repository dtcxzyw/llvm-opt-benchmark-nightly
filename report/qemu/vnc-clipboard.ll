Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/vnc-clipboard?download=true
inline.NumInlined: 11
inline.NumDeleted: 7
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.z_stream_s = type { ptr, i32, i64, ptr, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i64, i64 }

@.str = private unnamed_addr constant [85 x i8] c"vnc: malformed extended clipboard payload with text length %u exceeding available %u\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"vnc\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"1.3\00", align 1
@qemu_mutex_lock_func = external local_unnamed_addr global ptr, align 8
@.str.3 = private unnamed_addr constant [17 x i8] c"../ui/vnc-jobs.h\00", align 1

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @vnc_client_cut_text_ext(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.z_stream_s, align 8         ; 12 uses
  %i.a = and i32 %2, 16777216
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.x

bb.b:                                             ; preds = %bb.a
  %i.b = and i32 %2, 134217728
  %.not43 = icmp eq i32 %i.b, 0
  br i1 %.not43, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 103256
  %i.d = tail call ptr @qemu_clipboard_info_new(ptr noundef nonnull %i.c, i32 noundef 0) #6 ; 3 uses
  %i.e = and i32 %2, 1
  %.not52 = icmp eq i32 %i.e, 0
  br i1 %.not52, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store i8 1, ptr %i.f, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  tail call void @qemu_clipboard_update(ptr noundef %i.d) #6
  tail call void @qemu_clipboard_info_unref(ptr noundef %i.d) #6
  br label %bb.x

bb.f:                                             ; preds = %bb.b
  %i.g = and i32 %2, 268435456
  %.not44 = icmp eq i32 %i.g, 0
  br i1 %.not44, label %bb.q, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 103296 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %.not45 = icmp eq ptr %i.i, null
  br i1 %.not45, label %bb.q, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 103256 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %bb.i, label %bb.q

bb.i:                                             ; preds = %bb.h
  %i.n = add i32 %1, -4
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #6
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.o, i8 0, i64 104, i1 false)
  store ptr %3, ptr %4, align 8
  store i32 %i.n, ptr %i.o, align 8
  %i.p = tail call noalias dereferenceable_or_null(8) ptr @g_malloc(i64 noundef 8) #7 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  store ptr %i.p, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  store i32 8, ptr %i.s, align 8
  %i.t = call i32 @inflateInit_(ptr noundef nonnull %4, ptr noundef nonnull @.str.2, i32 noundef 112) #6
  %.not.i = icmp eq i32 %i.t, 0
  br i1 %.not.i, label %.preheader.i, label %inflate_buffer.exit.thread

.preheader.i:                                     ; preds = %bb.i
  %i.u = load i32, ptr %i.o, align 8
  %.not2225.i = icmp eq i32 %i.u, 0
  br i1 %.not2225.i, label %inflate_buffer.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.l
  %.027.i = phi ptr [ %.1.i, %bb.l ], [ %i.p, %.preheader.i ] ; 4 uses
  %.01826.i = phi i32 [ %.119.i, %bb.l ], [ 8, %.preheader.i ] ; 2 uses
  %i.v = call i32 @inflate(ptr noundef nonnull %4, i32 noundef 4) #6
  switch i32 %i.v, label %bb.m [
    i32 0, label %bb.l
    i32 1, label %inflate_buffer.exit
    i32 -5, label %bb.j
  ]

bb.j:                                             ; preds = %.lr.ph.i
  %i.w = shl i32 %.01826.i, 1                     ; 4 uses
  %i.x = icmp ugt i32 %i.w, 1048576
  br i1 %i.x, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.y = zext nneg i32 %i.w to i64
  %i.z = call ptr @g_realloc(ptr noundef %.027.i, i64 noundef %i.y) #6 ; 2 uses
  %i.aa = load i64, ptr %i.q, align 8             ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.aa
  store ptr %i.ab, ptr %i.r, align 8
  %i.ac = trunc i64 %i.aa to i32
  %i.ad = sub i32 %i.w, %i.ac
  store i32 %i.ad, ptr %i.s, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph.i
  %.119.i = phi i32 [ %.01826.i, %.lr.ph.i ], [ %i.w, %bb.k ]
  %.1.i = phi ptr [ %.027.i, %.lr.ph.i ], [ %i.z, %bb.k ] ; 2 uses
  %i.ae = load i32, ptr %i.o, align 8
  %.not22.i = icmp eq i32 %i.ae, 0
  br i1 %.not22.i, label %inflate_buffer.exit, label %.lr.ph.i, !llvm.loop !11

bb.m:                                             ; preds = %bb.j, %.lr.ph.i
  %i.af = call i32 @inflateEnd(ptr noundef nonnull %4) #6 ; 0 uses
  br label %inflate_buffer.exit.thread

inflate_buffer.exit.thread:                       ; preds = %bb.i, %bb.m
  %.2.i = phi ptr [ %i.p, %bb.i ], [ %.027.i, %bb.m ]
  call void @g_free(ptr noundef %.2.i) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  br label %bb.p

inflate_buffer.exit:                              ; preds = %bb.l, %.lr.ph.i, %.preheader.i
  %.020.i = phi ptr [ %i.p, %.preheader.i ], [ %.027.i, %.lr.ph.i ], [ %.1.i, %bb.l ] ; 6 uses
  %i.ag = load i64, ptr %i.q, align 8
  %i.ah = call i32 @inflateEnd(ptr noundef nonnull %4) #6 ; 0 uses
  %.0 = trunc i64 %i.ag to i32                    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #6
  %i.ai = trunc i32 %2 to i1
  %i.aj = icmp ne ptr %.020.i, null
  %or.cond = select i1 %i.ai, i1 %i.aj, i1 false
  %i.ak = icmp ugt i32 %.0, 3
  %or.cond3 = select i1 %or.cond, i1 %i.ak, i1 false
  br i1 %or.cond3, label %bb.n, label %bb.p

bb.n:                                             ; preds = %inflate_buffer.exit
  %i.al = call i32 @read_u32(ptr noundef nonnull %.020.i, i64 noundef 0) #6 ; 3 uses
  %i.am = add i32 %.0, -4                         ; 2 uses
  %.not46.not = icmp ugt i32 %i.al, %i.am
  br i1 %.not46.not, label %.thread, label %bb.o

.thread:                                          ; preds = %bb.n
  call void (ptr, ...) @error_report(ptr noundef nonnull @.str, i32 noundef %i.al, i32 noundef %i.am) #6
  call void @vnc_client_error(ptr noundef %0) #6
  br label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.an = getelementptr inbounds nuw i8, ptr %.020.i, i64 4
  %i.ao = load ptr, ptr %i.h, align 8
  call void @qemu_clipboard_set_data(ptr noundef nonnull %i.l, ptr noundef %i.ao, i32 noundef 0, i32 noundef %i.al, ptr noundef nonnull %i.an, i1 noundef zeroext true) #6
  br label %bb.p

bb.p:                                             ; preds = %inflate_buffer.exit, %inflate_buffer.exit.thread, %bb.o, %.thread
  %.020.i62 = phi ptr [ %.020.i, %.thread ], [ null, %inflate_buffer.exit.thread ], [ %.020.i, %bb.o ], [ %.020.i, %inflate_buffer.exit ]
  %.1 = phi i1 [ true, %.thread ], [ false, %inflate_buffer.exit.thread ], [ false, %bb.o ], [ false, %inflate_buffer.exit ]
  call void @g_free(ptr noundef %.020.i62) #6
  %i.ap = and i32 %2, 33554432
  %.not47 = icmp eq i32 %i.ap, 0
  %or.cond53 = or i1 %.not47, %.1
  br i1 %or.cond53, label %bb.x, label %bb.r

bb.q:                                             ; preds = %bb.h, %bb.g, %bb.f
  %.old = and i32 %2, 33554432
  %.not47.old = icmp eq i32 %.old, 0
  br i1 %.not47.old, label %bb.x, label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 103296
  %i.ar = load ptr, ptr %i.aq, align 8            ; 6 uses
  %.not48 = icmp eq ptr %i.ar, null
  br i1 %.not48, label %bb.x, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 103256
  %.not49 = icmp eq ptr %i.at, %i.au
  %i.av = and i32 %2, 1
  %.not50 = icmp eq i32 %i.av, 0
  %or.cond55 = or i1 %.not50, %.not49
  br i1 %or.cond55, label %bb.x, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  %i.ax = load i8, ptr %i.aw, align 8, !range !9, !noundef !10
  %i.ay = trunc nuw i8 %i.ax to i1
  br i1 %i.ay, label %bb.u, label %bb.x

bb.u:                                             ; preds = %bb.t
  %i.az = getelementptr inbounds nuw i8, ptr %i.ar, i64 40
  %i.ba = load ptr, ptr %i.az, align 8
  %.not51 = icmp eq ptr %i.ba, null
  br i1 %.not51, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  call fastcc void @vnc_clipboard_provide(ptr noundef nonnull %0, ptr noundef nonnull %i.ar)
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 103304 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 8
  %i.bd = or i32 %i.bc, 1
  store i32 %i.bd, ptr %i.bb, align 8
  call void @qemu_clipboard_request(ptr noundef nonnull %i.ar, i32 noundef 0) #6
  br label %bb.x

bb.x:                                             ; preds = %bb.p, %bb.t, %bb.w, %bb.v, %bb.a, %bb.s, %bb.r, %bb.q, %bb.e
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @qemu_clipboard_info_new(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @qemu_clipboard_update(ptr noundef) local_unnamed_addr #2

declare void @qemu_clipboard_info_unref(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare i32 @read_u32(ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @qemu_clipboard_set_data(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

declare void @error_report(ptr noundef, ...) local_unnamed_addr #2

declare void @vnc_client_error(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @vnc_clipboard_provide(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.z_stream_s, align 8         ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4
  %i.c = add i32 %i.b, 4
  %i.d = zext i32 %i.c to i64
  %i.e = tail call noalias ptr @g_malloc(i64 noundef %i.d) #7 ; 4 uses
  %i.f = load i32, ptr %i.a, align 4              ; 3 uses
  %3 = tail call i32 @llvm.bswap.i32(i32 %i.f)
  store i32 %3, ptr %i.e, align 1
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = zext i32 %i.f to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.g, ptr noundef nonnull align 1 %i.i, i64 noundef range(i64 0, 4294967296) %i.j, i1 noundef false) #6
  %i.k = add i32 %i.f, 4
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #6
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.l, i8 0, i64 104, i1 false)
  store ptr %i.e, ptr %2, align 8
  store i32 %i.k, ptr %i.l, align 8
  %i.m = tail call noalias dereferenceable_or_null(8) ptr @g_malloc(i64 noundef 8) #7 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store ptr %i.m, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  store i32 8, ptr %i.p, align 8
  %i.q = call i32 @deflateInit_(ptr noundef nonnull %2, i32 noundef -1, ptr noundef nonnull @.str.2, i32 noundef 112) #6
  %.not.i = icmp eq i32 %i.q, 0
  br i1 %.not.i, label %.preheader.i, label %deflate_buffer.exit.thread

.preheader.i:                                     ; preds = %bb.a, %bb.d
  %.01726.i = phi ptr [ %.1.i, %bb.d ], [ %i.m, %bb.a ] ; 4 uses
  %.01825.i = phi i32 [ %.119.i, %bb.d ], [ 8, %bb.a ] ; 3 uses
  %i.r = call i32 @deflate(ptr noundef nonnull %2, i32 noundef 4) #6 ; 2 uses
  switch i32 %i.r, label %bb.e [
    i32 0, label %bb.d
    i32 1, label %bb.d
    i32 -5, label %bb.b
  ]

bb.b:                                             ; preds = %.preheader.i
  %i.s = shl i32 %.01825.i, 1                     ; 4 uses
  %i.t = icmp ugt i32 %i.s, 1048576
  br i1 %i.t, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = zext nneg i32 %i.s to i64
  %i.v = call ptr @g_realloc(ptr noundef %.01726.i, i64 noundef %i.u) #6 ; 2 uses
  %i.w = load i64, ptr %i.n, align 8              ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.w
  store ptr %i.x, ptr %i.o, align 8
  %i.y = trunc i64 %i.w to i32
  %i.z = sub i32 %i.s, %i.y
  store i32 %i.z, ptr %i.p, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.preheader.i, %.preheader.i
  %.119.i = phi i32 [ %.01825.i, %.preheader.i ], [ %.01825.i, %.preheader.i ], [ %i.s, %bb.c ]
  %.1.i = phi ptr [ %.01726.i, %.preheader.i ], [ %.01726.i, %.preheader.i ], [ %i.v, %bb.c ] ; 4 uses
  %.not23.i = icmp eq i32 %i.r, 1
  br i1 %.not23.i, label %deflate_buffer.exit, label %.preheader.i, !llvm.loop !12

bb.e:                                             ; preds = %bb.b, %.preheader.i
  %i.aa = call i32 @deflateEnd(ptr noundef nonnull %2) #6 ; 0 uses
  br label %deflate_buffer.exit.thread

deflate_buffer.exit.thread:                       ; preds = %bb.a, %bb.e
  %.2.i = phi ptr [ %i.m, %bb.a ], [ %.01726.i, %bb.e ]
  call void @g_free(ptr noundef %.2.i) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #6
  br label %bb.g

deflate_buffer.exit:                              ; preds = %bb.d
  %i.ab = load i64, ptr %i.n, align 8             ; 2 uses
  %i.ac = call i32 @deflateEnd(ptr noundef nonnull %2) #6 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #6
  %.not = icmp eq ptr %.1.i, null
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %deflate_buffer.exit
  %i.ad = trunc i64 %i.ab to i32
  %i.ae = load atomic ptr, ptr @qemu_mutex_lock_func monotonic, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 86744 ; 2 uses
  call void %i.ae(ptr noundef nonnull %i.af, ptr noundef nonnull @.str.3, i32 noundef 61) #6, !inline_history !0
  call void @vnc_write_u8(ptr noundef %0, i8 noundef zeroext 3) #6
  call void @vnc_write_u8(ptr noundef %0, i8 noundef zeroext 0) #6
  call void @vnc_write_u8(ptr noundef %0, i8 noundef zeroext 0) #6
  call void @vnc_write_u8(ptr noundef %0, i8 noundef zeroext 0) #6
  %i.ag = sub i32 -4, %i.ad
  call void @vnc_write_s32(ptr noundef %0, i32 noundef %i.ag) #6
  call void @vnc_write_u32(ptr noundef %0, i32 noundef 268435457) #6
  %i.ah = and i64 %i.ab, 4294967295
  call void @vnc_write(ptr noundef %0, ptr noundef nonnull %.1.i, i64 noundef %i.ah) #6
  call void @qemu_mutex_unlock_impl(ptr noundef nonnull %i.af, ptr noundef nonnull @.str.3, i32 noundef 66) #6
  call void @vnc_flush(ptr noundef %0) #6
  br label %bb.g

bb.g:                                             ; preds = %deflate_buffer.exit.thread, %deflate_buffer.exit, %bb.f
  %.020.i39 = phi ptr [ null, %deflate_buffer.exit.thread ], [ null, %deflate_buffer.exit ], [ %.1.i, %bb.f ]
  call void @g_free(ptr noundef %.020.i39) #6
  call void @g_free(ptr noundef nonnull %i.e) #6
  ret void
}

declare void @qemu_clipboard_request(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @vnc_client_cut_text(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 103256 ; 2 uses
  %i.b = tail call ptr @qemu_clipboard_info_new(ptr noundef nonnull %i.a, i32 noundef 0) #6 ; 2 uses
  %i.c = trunc i64 %1 to i32
  tail call void @qemu_clipboard_set_data(ptr noundef nonnull %i.a, ptr noundef %i.b, i32 noundef 0, i32 noundef %i.c, ptr noundef %2, i1 noundef zeroext true) #6
  tail call void @qemu_clipboard_info_unref(ptr noundef %i.b) #6
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @vnc_server_cut_text_caps(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [2 x i32], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.b = getelementptr i8, ptr %0, i64 86452
  %.val = load i32, ptr %i.b, align 4
  %i.c = and i32 %.val, 16384
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 452984833, ptr %i.a, align 8, !annotation !13
  call fastcc void @vnc_clipboard_send(ptr noundef nonnull %0, i32 noundef 2, ptr noundef %i.a)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 103264 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8
  %.not7 = icmp eq ptr %i.e, null
  br i1 %.not7, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 103256 ; 2 uses
  store ptr @.str.1, ptr %i.f, align 8
  store ptr @vnc_clipboard_notify, ptr %i.d, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 103288
  store ptr @vnc_clipboard_request, ptr %i.g, align 8
  tail call void @qemu_clipboard_peer_register(ptr noundef nonnull %i.f) #6
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @vnc_clipboard_send(ptr noundef %0, i32 noundef range(i32 1, 3) %1, ptr nofree noundef nonnull readonly captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = load atomic ptr, ptr @qemu_mutex_lock_func monotonic, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 86744 ; 2 uses
  tail call void %i.a(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.3, i32 noundef 61) #6, !inline_history !0
  tail call void @vnc_write_u8(ptr noundef %0, i8 noundef zeroext 3) #6
  tail call void @vnc_write_u8(ptr noundef %0, i8 noundef zeroext 0) #6
  tail call void @vnc_write_u8(ptr noundef %0, i8 noundef zeroext 0) #6
  tail call void @vnc_write_u8(ptr noundef %0, i8 noundef zeroext 0) #6
  %.neg = mul nsw i32 %1, -4
  tail call void @vnc_write_s32(ptr noundef %0, i32 noundef %.neg) #6
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.b
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.d = load i32, ptr %i.c, align 4
  tail call void @vnc_write_u32(ptr noundef nonnull %0, i32 noundef %i.d) #6
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %bb.c, label %bb.b, !llvm.loop !14

bb.c:                                             ; preds = %bb.b
  tail call void @qemu_mutex_unlock_impl(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.3, i32 noundef 66) #6
  tail call void @vnc_flush(ptr noundef nonnull %0) #6
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @vnc_clipboard_notify(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = load i32, ptr %1, align 8
  %cond = icmp eq i32 %i.b, 0
  br i1 %cond, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds i8, ptr %0, i64 -103264 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8              ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds i8, ptr %0, i64 -8
  %i.i = icmp eq ptr %i.g, %i.h                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.e, %i.k
  br i1 %.not.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @qemu_clipboard_info_unref(ptr noundef %i.k) #6
  %i.l = tail call ptr @qemu_clipboard_info_ref(ptr noundef nonnull %i.e) #6
  store ptr %i.l, ptr %i.j, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 0, ptr %i.m, align 8
  br i1 %i.i, label %vnc_clipboard_update_info.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.o = load i8, ptr %i.n, align 8, !range !9, !noundef !10
  %i.p = trunc nuw i8 %i.o to i1
  %spec.select.i = select i1 %i.p, i32 134217729, i32 134217728
  store i32 %spec.select.i, ptr %i.a, align 4
  call fastcc void @vnc_clipboard_send(ptr noundef nonnull %i.c, i32 noundef 1, ptr noundef %i.a)
  br label %vnc_clipboard_update_info.exit

bb.e:                                             ; preds = %bb.b
  br i1 %i.i, label %vnc_clipboard_update_info.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.r = load i32, ptr %i.q, align 8              ; 2 uses
  %i.s = and i32 %i.r, 1
  %.not22.i = icmp eq i32 %i.s, 0
  br i1 %.not22.i, label %vnc_clipboard_update_info.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = and i32 %i.r, -2
  store i32 %i.t, ptr %i.q, align 8
  tail call fastcc void @vnc_clipboard_provide(ptr noundef nonnull %i.c, ptr noundef nonnull %i.e)
  br label %vnc_clipboard_update_info.exit

vnc_clipboard_update_info.exit:                   ; preds = %bb.c, %bb.d, %bb.e, %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %vnc_clipboard_update_info.exit
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @vnc_clipboard_request(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -103256
  store i32 33554433, ptr %i.a, align 4
  call fastcc void @vnc_clipboard_send(ptr noundef nonnull %i.d, i32 noundef 1, ptr noundef %i.a)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret void
}

declare void @qemu_clipboard_peer_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: allocsize(0)
declare noalias ptr @g_malloc(i64 noundef) local_unnamed_addr #4

declare i32 @inflateInit_(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @inflate(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @inflateEnd(ptr noundef) local_unnamed_addr #2

declare ptr @g_realloc(ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @g_free(ptr noundef) local_unnamed_addr #2

declare void @vnc_write_u8(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

declare void @vnc_write_s32(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @vnc_write_u32(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @vnc_write(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @vnc_flush(ptr noundef) local_unnamed_addr #2

declare i32 @deflateInit_(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @deflate(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @deflateEnd(ptr noundef) local_unnamed_addr #2

declare void @qemu_mutex_unlock_impl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @qemu_clipboard_info_ref(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #5

attributes #0 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }
attributes #7 = { nounwind allocsize(0) }

!llvm.module.flags = !{!1, !2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = distinct !{null}
!1 = !{i32 7, !"Dwarf Version", i32 5}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"PIE Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!7 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!8 = !{!"llvm.loop.mustprogress"}
!9 = !{i8 0, i8 2}
!10 = !{}
!11 = distinct !{!11, !8}
!12 = distinct !{!12, !8}
!13 = !{!"auto-init"}
!14 = distinct !{!14, !8}
end_hunk_0
