Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/xcbgrab?download=true
inline.NumInlined: 13
inline.NumDeleted: 13
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%union.anon = type { i64 }
%struct.xcb_rectangle_t = type { i16, i16, i16, i16 }
%struct.xcb_screen_iterator_t = type { ptr, i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"x11grab\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"X11 screen capture, using XCB\00", align 1
@ff_xcbgrab_demuxer = local_unnamed_addr constant { { ptr, ptr, i32, [4 x i8], ptr, ptr, ptr, ptr }, i32, i32, i32, [4 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr } { { ptr, ptr, i32, [4 x i8], ptr, ptr, ptr, ptr } { ptr @.str, ptr @.str.1, i32 1, [4 x i8] zeroinitializer, ptr null, ptr null, ptr @xcbgrab_class, ptr null }, i32 0, i32 136, i32 0, [4 x i8] zeroinitializer, ptr null, ptr @xcbgrab_read_header, ptr @xcbgrab_read_packet, ptr @xcbgrab_read_close, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8
@.str.2 = private unnamed_addr constant [14 x i8] c"xcbgrab indev\00", align 1
@xcbgrab_class = internal constant { ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str.2, ptr @av_default_item_name, ptr @options, i32 3998052, i32 0, i32 0, i32 41, ptr null, ptr null, ptr null, ptr null, i32 0, [4 x i8] zeroinitializer }, align 8
@.str.4 = private unnamed_addr constant [10 x i8] c"window_id\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"Window to capture.\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"Initial x coordinate.\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"Initial y coordinate.\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"grab_x\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"grab_y\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"video_size\00", align 1
@.str.13 = private unnamed_addr constant [58 x i8] c"A string describing frame size, such as 640x480 or hd720.\00", align 1
@.str.14 = private unnamed_addr constant [10 x i8] c"framerate\00", align 1
@.str.15 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"ntsc\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"draw_mouse\00", align 1
@.str.18 = private unnamed_addr constant [24 x i8] c"Draw the mouse pointer.\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"follow_mouse\00", align 1
@.str.20 = private unnamed_addr constant [113 x i8] c"Move the grabbing region when the mouse pointer reaches within specified amount of pixels to the edge of region.\00", align 1
@.str.21 = private unnamed_addr constant [9 x i8] c"centered\00", align 1
@.str.22 = private unnamed_addr constant [72 x i8] c"Keep the mouse pointer at the center of grabbing region when following.\00", align 1
@.str.23 = private unnamed_addr constant [12 x i8] c"show_region\00", align 1
@.str.24 = private unnamed_addr constant [26 x i8] c"Show the grabbing region.\00", align 1
@.str.25 = private unnamed_addr constant [14 x i8] c"region_border\00", align 1
@.str.26 = private unnamed_addr constant [33 x i8] c"Set the region border thickness.\00", align 1
@.str.27 = private unnamed_addr constant [14 x i8] c"select_region\00", align 1
@.str.28 = private unnamed_addr constant [58 x i8] c"Select the grabbing region graphically using the pointer.\00", align 1
@options = internal constant <{ { ptr, ptr, i32, i32, %union.anon, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, { ptr }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, { ptr }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon, double, double, i32, [4 x i8], ptr } }> <{ { ptr, ptr, i32, i32, %union.anon, double, double, i32, [4 x i8], ptr } { ptr @.str.4, ptr @.str.5, i32 64, i32 2, %union.anon zeroinitializer, double 0.000000e+00, double f0x41EFFFFFFFE00000, i32 2, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon, double, double, i32, [4 x i8], ptr } { ptr @.str.6, ptr @.str.7, i32 68, i32 2, %union.anon zeroinitializer, double 0.000000e+00, double f0x41DFFFFFFFC00000, i32 2, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon, double, double, i32, [4 x i8], ptr } { ptr @.str.8, ptr @.str.9, i32 72, i32 2, %union.anon zeroinitializer, double 0.000000e+00, double f0x41DFFFFFFFC00000, i32 2, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon, double, double, i32, [4 x i8], ptr } { ptr @.str.10, ptr @.str.7, i32 68, i32 2, %union.anon zeroinitializer, double 0.000000e+00, double f0x41DFFFFFFFC00000, i32 2, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon, double, double, i32, [4 x i8], ptr } { ptr @.str.11, ptr @.str.9, i32 72, i32 2, %union.anon zeroinitializer, double 0.000000e+00, double f0x41DFFFFFFFC00000, i32 2, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, { ptr }, double, double, i32, [4 x i8], ptr } { ptr @.str.12, ptr @.str.13, i32 76, i32 12, { ptr } zeroinitializer, double 0.000000e+00, double 0.000000e+00, i32 2, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, { ptr }, double, double, i32, [4 x i8], ptr } { ptr @.str.14, ptr @.str.15, i32 120, i32 6, { ptr } { ptr @.str.16 }, double 0.000000e+00, double 0.000000e+00, i32 2, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon, double, double, i32, [4 x i8], ptr } { ptr @.str.17, ptr @.str.18, i32 92, i32 2, %union.anon { i64 1 }, double 0.000000e+00, double 1.000000e+00, i32 2, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon, double, double, i32, [4 x i8], ptr } { ptr @.str.19, ptr @.str.20, i32 96, i32 2, %union.anon zeroinitializer, double -1.000000e+00, double f0x41DFFFFFFFC00000, i32 2, [4 x i8] zeroinitializer, ptr @.str.19 }, { ptr, ptr, i32, i32, %union.anon, double, double, i32, [4 x i8], ptr } { ptr @.str.21, ptr @.str.22, i32 0, i32 11, %union.anon { i64 -1 }, double f0xC1E0000000000000, double f0x41DFFFFFFFC00000, i32 2, [4 x i8] zeroinitializer, ptr @.str.19 }, { ptr, ptr, i32, i32, %union.anon, double, double, i32, [4 x i8], ptr } { ptr @.str.23, ptr @.str.24, i32 100, i32 2, %union.anon zeroinitializer, double 0.000000e+00, double 1.000000e+00, i32 2, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon, double, double, i32, [4 x i8], ptr } { ptr @.str.25, ptr @.str.26, i32 104, i32 2, %union.anon { i64 3 }, double 1.000000e+00, double 1.280000e+02, i32 2, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon, double, double, i32, [4 x i8], ptr } { ptr @.str.27, ptr @.str.28, i32 112, i32 18, %union.anon zeroinitializer, double 0.000000e+00, double 1.000000e+00, i32 2, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon, double, double, i32, [4 x i8], ptr } zeroinitializer }>, align 16
@.str.30 = private unnamed_addr constant [12 x i8] c"%[^+]+%d,%d\00", align 1
@.str.31 = private unnamed_addr constant [7 x i8] c"+%d,%d\00", align 1
@.str.32 = private unnamed_addr constant [19 x i8] c"Ambiguous URL: %s\0A\00", align 1
@.str.33 = private unnamed_addr constant [35 x i8] c"Cannot open display %s, error %d.\0A\00", align 1
@.str.34 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.35 = private unnamed_addr constant [31 x i8] c"The screen %d does not exist.\0A\00", align 1
@.str.36 = private unnamed_addr constant [39 x i8] c"select_region ignored with window_id.\0A\00", align 1
@.str.37 = private unnamed_addr constant [38 x i8] c"follow_mouse ignored with window_id.\0A\00", align 1
@.str.38 = private unnamed_addr constant [7 x i8] c"cursor\00", align 1
@.str.39 = private unnamed_addr constant [50 x i8] c"Failed to select region. Could not grab pointer.\0A\00", align 1
@.str.40 = private unnamed_addr constant [37 x i8] c"Can't find window '0x%x', aborting.\0A\00", align 1
@.str.41 = private unnamed_addr constant [68 x i8] c"Capture area %dx%d at position %d.%d outside the screen size %dx%d\0A\00", align 1
@.str.42 = private unnamed_addr constant [28 x i8] c"Captured area is too large\0A\00", align 1
@.str.43 = private unnamed_addr constant [27 x i8] c"Mapping this pixmap format\00", align 1
@.str.44 = private unnamed_addr constant [29 x i8] c"Failed to query xcb pointer\0A\00", align 1
@.str.45 = private unnamed_addr constant [28 x i8] c"Failed to get xcb geometry\0A\00", align 1
@.str.46 = private unnamed_addr constant [34 x i8] c"Failed to translate xcb geometry\0A\00", align 1
@.str.47 = private unnamed_addr constant [35 x i8] c"Continuing without shared memory.\0A\00", align 1
@.str.48 = private unnamed_addr constant [37 x i8] c"Could not get shared memory buffer.\0A\00", align 1
@.str.49 = private unnamed_addr constant [127 x i8] c"Cannot get the image data event_error: response_type:%u error_code:%u sequence:%u resource_id:%u minor_code:%u major_code:%u.\0A\00", align 1

; Function Attrs: cold nounwind optsize uwtable
define internal range(i32 -2147483648, 1) i32 @xcbgrab_read_header(ptr noundef %0) #0 {
bb.a:
  %i.a = alloca [5 x i32], align 16               ; 6 uses
  %1 = alloca %struct.xcb_rectangle_t, align 4    ; 5 uses
  %i.b = alloca [2 x i32], align 8                ; 4 uses
  %2 = alloca %struct.xcb_rectangle_t, align 8    ; 11 uses
  %i.c = alloca [2 x i32], align 8                ; 4 uses
  %3 = alloca %struct.xcb_screen_iterator_t, align 8 ; 7 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca ptr, align 8                      ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !9    ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #11
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 5 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !26
  %i.j = tail call noalias ptr @av_strdup(ptr noundef %i.i) #11 ; 6 uses
  store ptr %i.j, ptr %i.e, align 8, !tbaa !27
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %bb.bc, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !26
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 68 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 72 ; 2 uses
  %i.n = tail call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %i.k, ptr noundef nonnull @.str.30, ptr noundef nonnull %i.j, ptr noundef nonnull %i.l, ptr noundef nonnull %i.m) #11
  %.not50 = icmp eq i32 %i.n, 0
  br i1 %.not50, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr %i.j, align 1, !tbaa !28
  %i.o = load ptr, ptr %i.h, align 8, !tbaa !26
  %i.p = tail call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %i.o, ptr noundef nonnull @.str.31, ptr noundef nonnull %i.l, ptr noundef nonnull %i.m) #11
  %.not51 = icmp eq i32 %i.p, 2
  br i1 %.not51, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = load ptr, ptr %i.h, align 8, !tbaa !26   ; 2 uses
  %i.r = load i8, ptr %i.q, align 1, !tbaa !28
  %.not52 = icmp eq i8 %i.r, 0
  br i1 %.not52, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 24, ptr noundef nonnull @.str.32, ptr noundef nonnull %i.q) #11
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e, %bb.d, %bb.b
  %i.s = load i8, ptr %i.j, align 1, !tbaa !28
  %.not53 = icmp eq i8 %i.s, 0
  %i.t = select i1 %.not53, ptr null, ptr %i.j
  %i.u = call ptr @xcb_connect(ptr noundef %i.t, ptr noundef nonnull %i.d) #11
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 4 uses
  store ptr %i.u, ptr %i.v, align 8, !tbaa !29
  call void @av_freep(ptr noundef nonnull %i.e) #11
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !29
  %i.x = call i32 @xcb_connection_has_error(ptr noundef %i.w) #11 ; 2 uses
  %.not54 = icmp eq i32 %i.x, 0
  br i1 %.not54, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = load ptr, ptr %i.h, align 8, !tbaa !26   ; 2 uses
  %i.z = load i8, ptr %i.y, align 1, !tbaa !28
  %.not60 = icmp eq i8 %i.z, 0
  %spec.select = select i1 %.not60, ptr @.str.34, ptr %i.y
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.33, ptr noundef nonnull %spec.select, i32 noundef %i.x) #11
  br label %bb.bc

bb.h:                                             ; preds = %bb.f
  %i.aa = load ptr, ptr %i.v, align 8, !tbaa !29
  %i.ab = call ptr @xcb_get_setup(ptr noundef %i.aa) #11
  %i.ac = load i32, ptr %i.d, align 4, !tbaa !35  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  %i.ad = call { ptr, i64 } @xcb_setup_roots_iterator(ptr noundef %i.ab) #11 ; 2 uses
  %i.ae = extractvalue { ptr, i64 } %i.ad, 0
  store ptr %i.ae, ptr %3, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ag = extractvalue { ptr, i64 } %i.ad, 1      ; 2 uses
  store i64 %i.ag, ptr %i.af, align 8
  %i.ah = trunc i64 %i.ag to i32
  %i.ai = icmp sgt i32 %i.ah, 0
  br i1 %i.ai, label %.lr.ph.i.preheader, label %get_screen.exit.thread

.lr.ph.i.preheader:                               ; preds = %bb.h
  %.not.i106 = icmp eq i32 %i.ac, 0
  br i1 %.not.i106, label %get_screen.exit, label %.lr.ph

.lr.ph.i:                                         ; preds = %.lr.ph
  %i.aj = add nsw i32 %.034.i107, -1              ; 2 uses
  %.not.i = icmp eq i32 %i.aj, 0
  br i1 %.not.i, label %get_screen.exit, label %.lr.ph, !llvm.loop !36

.lr.ph:                                           ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.034.i107 = phi i32 [ %i.aj, %.lr.ph.i ], [ %i.ac, %.lr.ph.i.preheader ]
  call void @xcb_screen_next(ptr noundef nonnull %3) #11
  %i.ak = load i32, ptr %i.af, align 8, !tbaa !38
  %i.al = icmp sgt i32 %i.ak, 0
  br i1 %i.al, label %.lr.ph.i, label %get_screen.exit.thread, !llvm.loop !36

get_screen.exit.thread:                           ; preds = %.lr.ph, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  %i.am = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr null, ptr %i.am, align 8, !tbaa !40
  br label %bb.i

get_screen.exit:                                  ; preds = %.lr.ph.i, %.lr.ph.i.preheader
  %i.an = load ptr, ptr %3, align 8, !tbaa !41    ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  %i.ao = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !40
  %.not55 = icmp eq ptr %i.an, null
  br i1 %.not55, label %bb.i, label %bb.j

bb.i:                                             ; preds = %get_screen.exit.thread, %get_screen.exit
  %i.ap = load i32, ptr %i.d, align 4, !tbaa !35
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.35, i32 noundef %i.ap) #11
  %i.aq = call i32 @xcbgrab_read_close(ptr noundef %0) #12 ; 0 uses
  br label %bb.bc

bb.j:                                             ; preds = %get_screen.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %i.g, i64 64 ; 2 uses
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !42
  %i.at = icmp eq i32 %i.as, 0
  br i1 %i.at, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.au = load i32, ptr %i.an, align 4, !tbaa !43
  store i32 %i.au, ptr %i.ar, align 8, !tbaa !42
  br label %bb.p

bb.l:                                             ; preds = %bb.j
  %i.av = getelementptr inbounds nuw i8, ptr %i.g, i64 112 ; 2 uses
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !46
  %.not56 = icmp eq i32 %i.aw, 0
  br i1 %.not56, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 24, ptr noundef nonnull @.str.36) #11
  store i32 0, ptr %i.av, align 8, !tbaa !46
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ax = getelementptr inbounds nuw i8, ptr %i.g, i64 96 ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !47
  %.not57 = icmp eq i32 %i.ay, 0
  br i1 %.not57, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 24, ptr noundef nonnull @.str.37) #11
  store i32 0, ptr %i.ax, align 8, !tbaa !47
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o, %bb.k
  %i.az = getelementptr inbounds nuw i8, ptr %i.g, i64 112
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !46
  %.not58 = icmp eq i32 %i.ba, 0
  br i1 %.not58, label %bb.ab, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bb = load ptr, ptr %i.f, align 8, !tbaa !9   ; 6 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !29 ; 19 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  store i64 0, ptr %2, align 8
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !43 ; 5 uses
  %i.bh = call i32 @xcb_generate_id(ptr noundef %i.bd) #11 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  store i64 4294967306, ptr %i.c, align 8
  %i.bi = call i32 @xcb_create_gc(ptr noundef %i.bd, i32 noundef %i.bh, i32 noundef %i.bg, i32 noundef 32769, ptr noundef nonnull %i.c) #11 ; 0 uses
  %i.bj = call i32 @xcb_generate_id(ptr noundef %i.bd) #11 ; 4 uses
  %i.bk = call i32 @xcb_open_font(ptr noundef %i.bd, i32 noundef %i.bj, i16 noundef zeroext 6, ptr noundef nonnull @.str.38) #11 ; 0 uses
  %i.bl = call i32 @xcb_generate_id(ptr noundef %i.bd) #11 ; 3 uses
  %i.bm = call i32 @xcb_create_glyph_cursor(ptr noundef %i.bd, i32 noundef %i.bl, i32 noundef %i.bj, i32 noundef %i.bj, i16 noundef zeroext 34, i16 noundef zeroext 35, i16 noundef zeroext 0, i16 noundef zeroext 0, i16 noundef zeroext 0, i16 noundef zeroext -1, i16 noundef zeroext -1, i16 noundef zeroext -1) #11 ; 0 uses
  %i.bn = call i32 @xcb_grab_pointer(ptr noundef %i.bd, i8 noundef zeroext 0, i32 noundef %i.bg, i16 noundef zeroext 8204, i8 noundef zeroext 1, i8 noundef zeroext 1, i32 noundef %i.bg, i32 noundef %i.bl, i32 noundef 0) #11
  %i.bo = call ptr @xcb_grab_pointer_reply(ptr noundef %i.bd, i32 %i.bn, ptr noundef null) #11 ; 4 uses
  %.not.i61 = icmp eq ptr %i.bo, null
  br i1 %.not.i61, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 1
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !48
  %.not90.i = icmp eq i8 %i.bq, 0
  br i1 %.not90.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.39) #11
  call void @free(ptr noundef %i.bo) #11
  br label %select_region.exit

bb.t:                                             ; preds = %bb.r
  call void @free(ptr noundef nonnull %i.bo) #11
  %i.br = call i32 @xcb_grab_server(ptr noundef %i.bd) #11 ; 0 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 2 ; 2 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.z, %bb.t
  %.086103.i = phi i32 [ 0, %bb.t ], [ %.187.i, %bb.z ] ; 3 uses
  %.sroa.4100.0102.i = phi i16 [ undef, %bb.t ], [ %.sroa.4100.1.i, %bb.z ] ; 6 uses
  %.sroa.099.0101.i = phi i16 [ undef, %bb.t ], [ %.sroa.099.1.i, %bb.z ] ; 6 uses
  %i.bt = call ptr @xcb_wait_for_event(ptr noundef %i.bd) #11 ; 7 uses
  %.not92.i = icmp eq ptr %i.bt, null
  br i1 %.not92.i, label %.critedge.i, label %bb.v

end_hunk_0
begin_hunk_1_@xcbgrab_read_header:bb.a
  %i.fk = getelementptr inbounds nuw i8, ptr %i.dl, i64 88 ; 2 uses
  %i.fl = load ptr, ptr %i.f, align 8, !tbaa !9
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 8
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !29
  %i.fo = call ptr @xcb_get_setup(ptr noundef %i.fn) #11 ; 7 uses
  %i.fp = call ptr @xcb_setup_pixmap_formats(ptr noundef %i.fo) #11 ; 5 uses
  %i.fq = call i32 @xcb_setup_pixmap_formats_length(ptr noundef %i.fo) #11 ; 6 uses
  store i32 0, ptr %i.fj, align 4, !tbaa !35
  %.not45.i.i = icmp eq i32 %i.fq, 0
  br i1 %.not45.i.i, label %pixfmt_from_pixmap_format.exit.thread.i, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %bb.al
  %.fr.i = freeze i8 %i.fg
  switch i8 %.fr.i, label %pixfmt_from_pixmap_format.exit.thread.i [
    i8 32, label %.lr.ph.i.us.i
    i8 24, label %.lr.ph.i.us83.i
    i8 16, label %.lr.ph.i.us92.i
    i8 15, label %.lr.ph.i.us99.i
    i8 8, label %.lr.ph.i.us106.i
  ]

.lr.ph.i.us.i:                                    ; preds = %.lr.ph.i.preheader.i, %bb.an
  %.in.i.us.i = phi i32 [ %i.fr, %bb.an ], [ %i.fq, %.lr.ph.i.preheader.i ]
  %.03146.i.us.i = phi ptr [ %i.fx, %bb.an ], [ %i.fp, %.lr.ph.i.preheader.i ] ; 3 uses
  %i.fr = add nsw i32 %.in.i.us.i, -1             ; 2 uses
  %i.fs = load i8, ptr %.03146.i.us.i, align 1, !tbaa !81
  %i.ft = icmp eq i8 %i.fs, 32
  br i1 %i.ft, label %bb.am, label %bb.an

bb.am:                                            ; preds = %.lr.ph.i.us.i
  %i.fu = getelementptr inbounds nuw i8, ptr %.03146.i.us.i, i64 1
  %i.fv = load i8, ptr %i.fu, align 1, !tbaa !83
  %i.fw = icmp eq i8 %i.fv, 32
  br i1 %i.fw, label %.split.us.i, label %bb.an

bb.an:                                            ; preds = %bb.am, %.lr.ph.i.us.i
  %i.fx = getelementptr inbounds nuw i8, ptr %.03146.i.us.i, i64 8
  %.not.i.us.i = icmp eq i32 %i.fr, 0
  br i1 %.not.i.us.i, label %pixfmt_from_pixmap_format.exit.thread.i, label %.lr.ph.i.us.i, !llvm.loop !84

.lr.ph.i.us83.i:                                  ; preds = %.lr.ph.i.preheader.i, %bb.ap
  %.in.i.us84.i = phi i32 [ %i.fy, %bb.ap ], [ %i.fq, %.lr.ph.i.preheader.i ]
  %.03146.i.us85.i = phi ptr [ %i.gd, %bb.ap ], [ %i.fp, %.lr.ph.i.preheader.i ] ; 3 uses
  %i.fy = add nsw i32 %.in.i.us84.i, -1           ; 2 uses
  %i.fz = load i8, ptr %.03146.i.us85.i, align 1, !tbaa !81
  %i.ga = icmp eq i8 %i.fz, 24
  br i1 %i.ga, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %.lr.ph.i.us83.i
  %i.gb = getelementptr inbounds nuw i8, ptr %.03146.i.us85.i, i64 1
  %i.gc = load i8, ptr %i.gb, align 1, !tbaa !83
  switch i8 %i.gc, label %bb.ap [
    i8 32, label %.split88.us.i
    i8 24, label %.split90.us.i
  ]

bb.ap:                                            ; preds = %bb.ao, %.lr.ph.i.us83.i
  %i.gd = getelementptr inbounds nuw i8, ptr %.03146.i.us85.i, i64 8
  %.not.i.us86.i = icmp eq i32 %i.fy, 0
  br i1 %.not.i.us86.i, label %pixfmt_from_pixmap_format.exit.thread.i, label %.lr.ph.i.us83.i, !llvm.loop !84

.lr.ph.i.us92.i:                                  ; preds = %.lr.ph.i.preheader.i, %bb.ar
  %.in.i.us93.i = phi i32 [ %i.ge, %bb.ar ], [ %i.fq, %.lr.ph.i.preheader.i ]
  %.03146.i.us94.i = phi ptr [ %i.gk, %bb.ar ], [ %i.fp, %.lr.ph.i.preheader.i ] ; 3 uses
  %i.ge = add nsw i32 %.in.i.us93.i, -1           ; 2 uses
  %i.gf = load i8, ptr %.03146.i.us94.i, align 1, !tbaa !81
  %i.gg = icmp eq i8 %i.gf, 16
  br i1 %i.gg, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %.lr.ph.i.us92.i
  %i.gh = getelementptr inbounds nuw i8, ptr %.03146.i.us94.i, i64 1
  %i.gi = load i8, ptr %i.gh, align 1, !tbaa !83
  %i.gj = icmp eq i8 %i.gi, 16
  br i1 %i.gj, label %.split97.us.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %.lr.ph.i.us92.i
  %i.gk = getelementptr inbounds nuw i8, ptr %.03146.i.us94.i, i64 8
  %.not.i.us95.i = icmp eq i32 %i.ge, 0
  br i1 %.not.i.us95.i, label %pixfmt_from_pixmap_format.exit.thread.i, label %.lr.ph.i.us92.i, !llvm.loop !84

.lr.ph.i.us99.i:                                  ; preds = %.lr.ph.i.preheader.i, %bb.at
  %.in.i.us100.i = phi i32 [ %i.gl, %bb.at ], [ %i.fq, %.lr.ph.i.preheader.i ]
  %.03146.i.us101.i = phi ptr [ %i.gr, %bb.at ], [ %i.fp, %.lr.ph.i.preheader.i ] ; 3 uses
  %i.gl = add nsw i32 %.in.i.us100.i, -1          ; 2 uses
  %i.gm = load i8, ptr %.03146.i.us101.i, align 1, !tbaa !81
  %i.gn = icmp eq i8 %i.gm, 15
  br i1 %i.gn, label %bb.as, label %bb.at

bb.as:                                            ; preds = %.lr.ph.i.us99.i
  %i.go = getelementptr inbounds nuw i8, ptr %.03146.i.us101.i, i64 1
  %i.gp = load i8, ptr %i.go, align 1, !tbaa !83
  %i.gq = icmp eq i8 %i.gp, 16
  br i1 %i.gq, label %.split104.us.i, label %bb.at

bb.at:                                            ; preds = %bb.as, %.lr.ph.i.us99.i
  %i.gr = getelementptr inbounds nuw i8, ptr %.03146.i.us101.i, i64 8
  %.not.i.us102.i = icmp eq i32 %i.gl, 0
  br i1 %.not.i.us102.i, label %pixfmt_from_pixmap_format.exit.thread.i, label %.lr.ph.i.us99.i, !llvm.loop !84

.lr.ph.i.us106.i:                                 ; preds = %.lr.ph.i.preheader.i, %bb.av
  %.in.i.us107.i = phi i32 [ %i.gs, %bb.av ], [ %i.fq, %.lr.ph.i.preheader.i ]
  %.03146.i.us108.i = phi ptr [ %i.gy, %bb.av ], [ %i.fp, %.lr.ph.i.preheader.i ] ; 3 uses
  %i.gs = add nsw i32 %.in.i.us107.i, -1          ; 2 uses
  %i.gt = load i8, ptr %.03146.i.us108.i, align 1, !tbaa !81
  %i.gu = icmp eq i8 %i.gt, 8
  br i1 %i.gu, label %bb.au, label %bb.av

bb.au:                                            ; preds = %.lr.ph.i.us106.i
  %i.gv = getelementptr inbounds nuw i8, ptr %.03146.i.us108.i, i64 1
  %i.gw = load i8, ptr %i.gv, align 1, !tbaa !83
  %i.gx = icmp eq i8 %i.gw, 8
  br i1 %i.gx, label %.loopexit.i, label %bb.av

bb.av:                                            ; preds = %bb.au, %.lr.ph.i.us106.i
  %i.gy = getelementptr inbounds nuw i8, ptr %.03146.i.us108.i, i64 8
  %.not.i.us109.i = icmp eq i32 %i.gs, 0
  br i1 %.not.i.us109.i, label %pixfmt_from_pixmap_format.exit.thread.i, label %.lr.ph.i.us106.i, !llvm.loop !84

.split.us.i:                                      ; preds = %bb.am
  %i.gz = getelementptr inbounds nuw i8, ptr %i.fo, i64 30
  %i.ha = load i8, ptr %i.gz, align 2, !tbaa !85
  %i.hb = icmp eq i8 %i.ha, 0
  %i.hc = select i1 %i.hb, i32 121, i32 118
  br label %.loopexit.i

.split88.us.i:                                    ; preds = %bb.ao
  %i.hd = getelementptr inbounds nuw i8, ptr %i.fo, i64 30
  %i.he = load i8, ptr %i.hd, align 2, !tbaa !85
  %i.hf = icmp eq i8 %i.he, 0
  %i.hg = select i1 %i.hf, i32 121, i32 118
  br label %.loopexit.i

.split90.us.i:                                    ; preds = %bb.ao
  %i.hh = getelementptr inbounds nuw i8, ptr %i.fo, i64 30
  %i.hi = load i8, ptr %i.hh, align 2, !tbaa !85
  %i.hj = icmp eq i8 %i.hi, 0
  %i.hk = select i1 %i.hj, i32 3, i32 2
  br label %.loopexit.i

.split97.us.i:                                    ; preds = %bb.aq
  %i.hl = getelementptr inbounds nuw i8, ptr %i.fo, i64 30
  %i.hm = load i8, ptr %i.hl, align 2, !tbaa !85
  %i.hn = icmp eq i8 %i.hm, 0
  %i.ho = select i1 %i.hn, i32 37, i32 36
  br label %.loopexit.i

.split104.us.i:                                   ; preds = %bb.as
  %i.hp = getelementptr inbounds nuw i8, ptr %i.fo, i64 30
  %i.hq = load i8, ptr %i.hp, align 2, !tbaa !85
  %i.hr = icmp eq i8 %i.hq, 0
  %i.hs = select i1 %i.hr, i32 39, i32 38
  br label %.loopexit.i

pixfmt_from_pixmap_format.exit.thread.i:          ; preds = %bb.av, %bb.at, %bb.ar, %bb.ap, %bb.an, %.lr.ph.i.preheader.i, %bb.al
  call void (ptr, ptr, ...) @avpriv_report_missing_feature(ptr noundef %0, ptr noundef nonnull @.str.43) #11
  call void @free(ptr noundef %i.dy) #11
  br label %bb.ay

.loopexit.i:                                      ; preds = %bb.au, %.split104.us.i, %.split97.us.i, %.split90.us.i, %.split88.us.i, %.split.us.i
  %.sink.i.i = phi i32 [ %i.hc, %.split.us.i ], [ %i.hs, %.split104.us.i ], [ %i.ho, %.split97.us.i ], [ %i.hg, %.split88.us.i ], [ %i.hk, %.split90.us.i ], [ 20, %bb.au ]
  %i.ht = phi i32 [ 32, %.split.us.i ], [ 16, %.split104.us.i ], [ 16, %.split97.us.i ], [ 32, %.split88.us.i ], [ 24, %.split90.us.i ], [ 8, %bb.au ]
  store i32 %.sink.i.i, ptr %i.fj, align 4, !tbaa !35
  store i32 %i.ht, ptr %i.fk, align 8, !tbaa !35
  call void @free(ptr noundef %i.dy) #11
  %i.hu = load i32, ptr %i.ea, align 4, !tbaa !63
  %i.hv = sext i32 %i.hu to i64
  %i.hw = load i32, ptr %i.er, align 8, !tbaa !65
  %i.hx = sext i32 %i.hw to i64
  %i.hy = mul nsw i64 %i.hx, %i.hv
  %i.hz = load i32, ptr %i.fk, align 8, !tbaa !87
  %i.ia = sext i32 %i.hz to i64
  %i.ib = mul nsw i64 %i.hy, %i.ia                ; 3 uses
  %i.ic = icmp sgt i64 %i.ib, 17179868671
  br i1 %i.ic, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %.loopexit.i
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.42) #11
  br label %bb.ay

bb.ax:                                            ; preds = %.loopexit.i
  %i.id = sdiv i64 %i.ib, 8                       ; 2 uses
  %i.ie = trunc i64 %i.id to i32
  %i.if = getelementptr inbounds nuw i8, ptr %i.dl, i64 84
  store i32 %i.ie, ptr %i.if, align 4, !tbaa !88
  %i.ig = shl i64 %i.id, 32
  %sext.i = add i64 %i.ig, 274877906944
  %i.ih = ashr exact i64 %sext.i, 32
  %i.ii = load ptr, ptr %i.ds, align 8, !tbaa !29
  %i.ij = call ptr @av_buffer_pool_init2(i64 noundef %i.ih, ptr noundef %i.ii, ptr noundef nonnull @allocate_shm_buffer, ptr noundef null) #11 ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.dl, i64 32
  store ptr %i.ij, ptr %i.ik, align 8, !tbaa !89
  %.not80.i = icmp eq ptr %i.ij, null
  br i1 %.not80.i, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ab, %bb.ak, %bb.ac, %bb.aw, %pixfmt_from_pixmap_format.exit.thread.i, %bb.ae, %bb.ax
  %.0.i64.ph = phi i32 [ -12, %bb.ax ], [ -542398533, %bb.ae ], [ -1163346256, %pixfmt_from_pixmap_format.exit.thread.i ], [ -1163346256, %bb.aw ], [ %i.dq, %bb.ac ], [ -22, %bb.ak ], [ -12, %bb.ab ]
  %i.il = call i32 @xcbgrab_read_close(ptr noundef %0) #12 ; 0 uses
  br label %bb.bc

bb.az:                                            ; preds = %bb.ax
  %i.im = load ptr, ptr %i.fh, align 8, !tbaa !75 ; 3 uses
  store <2 x i32> <i32 0, i32 13>, ptr %i.im, align 8, !tbaa !35
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 72
  %i.io = load <2 x i32>, ptr %i.ea, align 4, !tbaa !35
  store <2 x i32> %i.io, ptr %i.in, align 8, !tbaa !35
  %i.ip = load i32, ptr %i.dn, align 8, !tbaa !90
  %i.iq = sext i32 %i.ip to i64
  %i.ir = load i32, ptr %i.ey, align 4, !tbaa !91
  %i.is = sext i32 %i.ir to i64
  %i.it = call i64 @av_rescale(i64 noundef %i.ib, i64 noundef %i.iq, i64 noundef %i.is) #13
  %i.iu = getelementptr inbounds nuw i8, ptr %i.im, i64 48
  store i64 %i.it, ptr %i.iu, align 8, !tbaa !92
  %i.iv = load ptr, ptr %i.v, align 8, !tbaa !29  ; 2 uses
  %i.iw = call i32 @xcb_shm_query_version(ptr noundef %i.iv) #11
  %i.ix = call ptr @xcb_shm_query_version_reply(ptr noundef %i.iv, i32 %i.iw, ptr noundef null) #11 ; 2 uses
  %.not.i65 = icmp eq ptr %i.ix, null
  br i1 %.not.i65, label %check_shm.exit, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  call void @free(ptr noundef nonnull %i.ix) #11
  br label %check_shm.exit

check_shm.exit:                                   ; preds = %bb.az, %bb.ba
  %.0.i66 = phi i32 [ 1, %bb.ba ], [ 0, %bb.az ]
  %i.iy = getelementptr inbounds nuw i8, ptr %i.g, i64 128
  store i32 %.0.i66, ptr %i.iy, align 8, !tbaa !95
  %i.iz = getelementptr inbounds nuw i8, ptr %i.g, i64 100
  %i.ja = load i32, ptr %i.iz, align 4, !tbaa !96
  %.not59 = icmp eq i32 %i.ja, 0
  br i1 %.not59, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %check_shm.exit
  %i.jb = load ptr, ptr %i.f, align 8, !tbaa !9   ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  store i64 703687441776641, ptr %i.b, align 8
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 76
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jb, i64 80
  %i.je = getelementptr inbounds nuw i8, ptr %i.jb, i64 8 ; 3 uses
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !29
  %i.jg = call i32 @xcb_generate_id(ptr noundef %i.jf) #11 ; 2 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jb, i64 24 ; 2 uses
  store i32 %i.jg, ptr %i.jh, align 8, !tbaa !97
  %i.ji = load ptr, ptr %i.je, align 8, !tbaa !29
  %i.jj = getelementptr inbounds nuw i8, ptr %i.jb, i64 16
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !40
  %i.jl = load i32, ptr %i.jk, align 4, !tbaa !43
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jb, i64 68
  %i.jn = load i32, ptr %i.jm, align 4, !tbaa !66
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jb, i64 104
  %i.jp = load i32, ptr %i.jo, align 8, !tbaa !98 ; 3 uses
  %i.jq = sub nsw i32 %i.jn, %i.jp
  %i.jr = trunc i32 %i.jq to i16
  %i.js = getelementptr inbounds nuw i8, ptr %i.jb, i64 72
  %i.jt = load i32, ptr %i.js, align 8, !tbaa !67
  %i.ju = sub nsw i32 %i.jt, %i.jp
  %i.jv = trunc i32 %i.ju to i16
  %i.jw = load i32, ptr %i.jc, align 4, !tbaa !63
  %i.jx = shl nsw i32 %i.jp, 1                    ; 2 uses
  %i.jy = add nsw i32 %i.jw, %i.jx
  %i.jz = trunc i32 %i.jy to i16
  %i.ka = load i32, ptr %i.jd, align 8, !tbaa !65
  %i.kb = add nsw i32 %i.ka, %i.jx
  %i.kc = trunc i32 %i.kb to i16
  %i.kd = call i32 @xcb_create_window(ptr noundef %i.ji, i8 noundef zeroext 0, i32 noundef %i.jg, i32 noundef %i.jl, i16 noundef signext %i.jr, i16 noundef signext %i.jv, i16 noundef zeroext %i.jz, i16 noundef zeroext %i.kc, i16 noundef zeroext 0, i16 noundef zeroext 1, i32 noundef 0, i32 noundef 2560, ptr noundef nonnull %i.b) #11 ; 0 uses
  %i.ke = load ptr, ptr %i.je, align 8, !tbaa !29
  %i.kf = load i32, ptr %i.jh, align 8, !tbaa !97
  %i.kg = call i32 @xcb_map_window(ptr noundef %i.ke, i32 noundef %i.kf) #11 ; 0 uses
  %.val.i = load ptr, ptr %i.f, align 8, !tbaa !9 ; 5 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %.val.i, i64 8 ; 3 uses
  %i.ki = load ptr, ptr %i.kh, align 8, !tbaa !29
  %i.kj = call i32 @xcb_generate_id(ptr noundef %i.ki) #11 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.kk = getelementptr inbounds nuw i8, ptr %.val.i, i64 16
  %i.kl = load ptr, ptr %i.kk, align 8, !tbaa !40
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 8
  %i.kn = load <2 x i32>, ptr %i.km, align 4, !tbaa !35
  %i.ko = shufflevector <2 x i32> %i.kn, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %i.ko, ptr %i.a, align 16, !tbaa !35
  %i.kp = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.kq = getelementptr inbounds nuw i8, ptr %.val.i, i64 104
  %i.kr = load i32, ptr %i.kq, align 8, !tbaa !98 ; 2 uses
  store i32 %i.kr, ptr %i.kp, align 8, !tbaa !35
  %i.ks = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store <2 x i32> <i32 2, i32 0>, ptr %i.ks, align 4, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #11
  store <2 x i16> splat (i16 1), ptr %1, align 4, !tbaa !99
  %i.kt = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ku = getelementptr inbounds nuw i8, ptr %.val.i, i64 76
  %i.kv = shl nsw i32 %i.kr, 1
  %i.kw = load <2 x i32>, ptr %i.ku, align 4, !tbaa !35
  %i.kx = insertelement <2 x i32> poison, i32 %i.kv, i64 0
  %i.ky = shufflevector <2 x i32> %i.kx, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.kz = add nsw <2 x i32> %i.kw, %i.ky
  %i.la = trunc <2 x i32> %i.kz to <2 x i16>
  %i.lb = add <2 x i16> %i.la, splat (i16 -3)
  store <2 x i16> %i.lb, ptr %i.kt, align 4, !tbaa !99
  %i.lc = load ptr, ptr %i.kh, align 8, !tbaa !29
  %i.ld = getelementptr inbounds nuw i8, ptr %.val.i, i64 24 ; 2 uses
  %i.le = load i32, ptr %i.ld, align 8, !tbaa !97
  %i.lf = call i32 @xcb_create_gc(ptr noundef %i.lc, i32 noundef %i.kj, i32 noundef %i.le, i32 noundef 316, ptr noundef nonnull %i.a) #11 ; 0 uses
  %i.lg = load ptr, ptr %i.kh, align 8, !tbaa !29
  %i.lh = load i32, ptr %i.ld, align 8, !tbaa !97
  %i.li = call i32 @xcb_poly_rectangle(ptr noundef %i.lg, i32 noundef %i.lh, i32 noundef %i.kj, i32 noundef 1, ptr noundef nonnull %1) #11 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  br label %bb.bc

bb.bc:                                            ; preds = %check_shm.exit, %bb.bb, %bb.a, %bb.ay, %bb.aa, %bb.i, %bb.g
  %.0 = phi i32 [ -5, %bb.g ], [ %.0.i62, %bb.aa ], [ %.0.i64.ph, %bb.ay ], [ -12, %bb.a ], [ -5, %bb.i ], [ 0, %bb.bb ], [ 0, %check_shm.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 -542398533, 1) i32 @xcbgrab_read_packet(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1) #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 7 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = alloca [2 x i32], align 4                ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !9    ; 11 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 56 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !72
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 40 ; 4 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !73
  %i.k = add nsw i64 %i.j, %i.h
  store i64 %i.k, ptr %i.i, align 8, !tbaa !73
  %i.l = tail call i64 @av_gettime_relative() #11
  %i.m = load i64, ptr %i.i, align 8, !tbaa !73
  %i.n = sub nsw i64 %i.m, %i.l                   ; 2 uses
  %i.o = icmp slt i64 %i.n, 1
  br i1 %i.o, label %wait_frame.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %i.p = phi i64 [ %i.u, %.lr.ph.i ], [ %i.n, %bb.a ]
  %i.q = trunc i64 %i.p to i32
  %i.r = tail call i32 @av_usleep(i32 noundef %i.q) #11 ; 0 uses
  %i.s = tail call i64 @av_gettime_relative() #11
  %i.t = load i64, ptr %i.i, align 8, !tbaa !73
  %i.u = sub nsw i64 %i.t, %i.s                   ; 2 uses
  %i.v = icmp slt i64 %i.u, 1
  br i1 %i.v, label %wait_frame.exit, label %.lr.ph.i

wait_frame.exit:                                  ; preds = %.lr.ph.i, %bb.a
  %i.w = tail call i64 @av_gettime() #11          ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.f, i64 96 ; 2 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !47
  %.not = icmp eq i32 %i.y, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %wait_frame.exit
  %i.z = getelementptr inbounds nuw i8, ptr %i.f, i64 92
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !100
  %.not69 = icmp eq i32 %i.aa, 0
  br i1 %.not69, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b, %wait_frame.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 4 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !29
  %i.ad = getelementptr inbounds nuw i8, ptr %i.f, i64 64 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !42
  %i.af = tail call i32 @xcb_query_pointer(ptr noundef %i.ac, i32 noundef %i.ae) #11
  %i.ag = load ptr, ptr %i.ab, align 8, !tbaa !29
  %i.ah = load i32, ptr %i.ad, align 8, !tbaa !42
  %i.ai = tail call i32 @xcb_get_geometry(ptr noundef %i.ag, i32 noundef %i.ah) #11
  %i.aj = load ptr, ptr %i.ab, align 8, !tbaa !29
  %i.ak = tail call ptr @xcb_query_pointer_reply(ptr noundef %i.aj, i32 %i.af, ptr noundef null) #11 ; 3 uses
  %.not70 = icmp eq ptr %i.ak, null
  br i1 %.not70, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.44) #11
  br label %bb.ak

bb.e:                                             ; preds = %bb.c
  %i.al = load ptr, ptr %i.ab, align 8, !tbaa !29
  %i.am = tail call ptr @xcb_get_geometry_reply(ptr noundef %i.al, i32 %i.ai, ptr noundef null) #11 ; 2 uses
  %.not71 = icmp eq ptr %i.am, null
  br i1 %.not71, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.45) #11
  tail call void @free(ptr noundef nonnull %i.ak) #11
  br label %bb.ak

bb.g:                                             ; preds = %bb.e, %bb.b
  %.063 = phi ptr [ %i.ak, %bb.e ], [ null, %bb.b ] ; 5 uses
  %.062 = phi ptr [ %i.am, %bb.e ], [ null, %bb.b ] ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !42 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !40
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !43 ; 2 uses
  %.not72 = icmp eq i32 %i.ao, %i.ar
  br i1 %.not72, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.as = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !29
  %i.au = tail call i32 @xcb_translate_coordinates(ptr noundef %i.at, i32 noundef %i.ao, i32 noundef %i.ar, i16 noundef signext 0, i16 noundef signext 0) #11
  %i.av = load ptr, ptr %i.as, align 8, !tbaa !29
  %i.aw = tail call ptr @xcb_translate_coordinates_reply(ptr noundef %i.av, i32 %i.au, ptr noundef null) #11 ; 4 uses
  %.not73 = icmp eq ptr %i.aw, null
  br i1 %.not73, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void @free(ptr noundef %.063) #11
  tail call void @free(ptr noundef %.062) #11
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.46) #11
  br label %bb.ak

bb.j:                                             ; preds = %bb.h
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 12
  %i.ay = load i16, ptr %i.ax, align 4, !tbaa !101
  %i.az = sext i16 %i.ay to i32
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 14
  %i.bb = load i16, ptr %i.ba, align 2, !tbaa !103
  %i.bc = sext i16 %i.bb to i32
  tail call void @free(ptr noundef nonnull %i.aw) #11
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.g
  %.060 = phi i32 [ %i.az, %bb.j ], [ 0, %bb.g ]
  %.059 = phi i32 [ %i.bc, %bb.j ], [ 0, %bb.g ]
  %i.bd = load i32, ptr %i.x, align 8, !tbaa !47
  %.not74 = icmp eq i32 %i.bd, 0
  br i1 %.not74, label %xcbgrab_reposition.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.be = getelementptr inbounds nuw i8, ptr %.063, i64 1
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !104
  %.not75 = icmp eq i8 %i.bf, 0
  br i1 %.not75, label %xcbgrab_reposition.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.val79 = load ptr, ptr %i.e, align 8, !tbaa !9 ; 5 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.val79, i64 68 ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !66 ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.val79, i64 72 ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !67 ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.val79, i64 76
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !63 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.val79, i64 80
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !65 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.val79, i64 96
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !47 ; 7 uses
  %.not85 = icmp eq ptr %.062, null
  br i1 %.not85, label %xcbgrab_reposition.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bq = getelementptr inbounds nuw i8, ptr %.063, i64 20
  %i.br = load i16, ptr %i.bq, align 4, !tbaa !106
  %i.bs = sext i16 %i.br to i32                   ; 5 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.063, i64 22
  %i.bu = load i16, ptr %i.bt, align 2, !tbaa !107
  %i.bv = sext i16 %i.bu to i32                   ; 5 uses
  %i.bw = icmp eq i32 %i.bp, -1
  br i1 %i.bw, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %.neg83.i = sdiv i32 %i.bl, -2
  %i.bx = add nsw i32 %.neg83.i, %i.bs
  %.neg84.i = sdiv i32 %i.bn, -2
  %i.by = add nsw i32 %.neg84.i, %i.bv
  br label %bb.v

bb.p:                                             ; preds = %bb.n
  %i.bz = add nsw i32 %i.bl, %i.bh
  %i.ca = sub i32 %i.bz, %i.bp                    ; 2 uses
  %i.cb = add nsw i32 %i.bp, %i.bj
  %i.cc = add nsw i32 %i.bn, %i.bj
  %i.cd = sub i32 %i.cc, %i.bp                    ; 2 uses
  %i.ce = icmp slt i32 %i.ca, %i.bs
  br i1 %i.ce, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.cf = sub i32 %i.bh, %i.ca
  %i.cg = add i32 %i.cf, %i.bs
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.ch = add nsw i32 %i.bp, %i.bh
  %i.ci = icmp sgt i32 %i.ch, %i.bs
  %i.cj = sub i32 %i.bs, %i.bp
  %spec.select.i = select i1 %i.ci, i32 %i.cj, i32 %i.bh
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.064.i = phi i32 [ %i.cg, %bb.q ], [ %spec.select.i, %bb.r ] ; 2 uses
  %i.ck = icmp slt i32 %i.cd, %i.bv
  br i1 %i.ck, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.cl = sub i32 %i.bj, %i.cd
  %i.cm = add i32 %i.cl, %i.bv
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.cn = icmp sgt i32 %i.cb, %i.bv
  %i.co = sub i32 %i.bv, %i.bp
  %spec.select14.i = select i1 %i.cn, i32 %i.co, i32 %i.bj
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.o
  %.165.i = phi i32 [ %i.bx, %bb.o ], [ %.064.i, %bb.u ], [ %.064.i, %bb.t ]
  %.1.i = phi i32 [ %i.by, %bb.o ], [ %spec.select14.i, %bb.u ], [ %i.cm, %bb.t ]
  %i.cp = tail call i32 @llvm.smax.i32(i32 %.165.i, i32 0)
  %i.cq = getelementptr inbounds nuw i8, ptr %.062, i64 16
  %i.cr = load i16, ptr %i.cq, align 4, !tbaa !69
  %i.cs = zext i16 %i.cr to i32
  %i.ct = sub nsw i32 %i.cs, %i.bl
  %..i = tail call i32 @llvm.smin.i32(i32 %i.cp, i32 %i.ct)
  store i32 %..i, ptr %i.bg, align 4, !tbaa !66
  %i.cu = tail call i32 @llvm.smax.i32(i32 %.1.i, i32 0)
  %i.cv = getelementptr inbounds nuw i8, ptr %.062, i64 18
  %i.cw = load i16, ptr %i.cv, align 2, !tbaa !71
  %i.cx = zext i16 %i.cw to i32
  %i.cy = sub nsw i32 %i.cx, %i.bn
  %i.cz = tail call i32 @llvm.smin.i32(i32 %i.cu, i32 %i.cy)
  store i32 %i.cz, ptr %i.bi, align 8, !tbaa !67
  br label %xcbgrab_reposition.exit

xcbgrab_reposition.exit:                          ; preds = %bb.v, %bb.m, %bb.l, %bb.k
  %i.da = getelementptr inbounds nuw i8, ptr %i.f, i64 100
  %i.db = load i32, ptr %i.da, align 4, !tbaa !96
  %.not76 = icmp eq i32 %i.db, 0
  br i1 %.not76, label %bb.x, label %bb.w

bb.w:                                             ; preds = %xcbgrab_reposition.exit
  %.val80 = load ptr, ptr %i.e, align 8, !tbaa !9 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #11
  %i.dc = getelementptr inbounds nuw i8, ptr %.val80, i64 68
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !66
  %i.de = add nsw i32 %i.dd, %.060
  %i.df = getelementptr inbounds nuw i8, ptr %.val80, i64 104
  %i.dg = load i32, ptr %i.df, align 8, !tbaa !98 ; 2 uses
  %i.dh = sub i32 %i.de, %i.dg
  store i32 %i.dh, ptr %i.d, align 4, !tbaa !35
  %i.di = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.dj = getelementptr inbounds nuw i8, ptr %.val80, i64 72
  %i.dk = load i32, ptr %i.dj, align 8, !tbaa !67
  %i.dl = sub i32 %.059, %i.dg
  %i.dm = add i32 %i.dl, %i.dk
  store i32 %i.dm, ptr %i.di, align 4, !tbaa !35
  %i.dn = getelementptr inbounds nuw i8, ptr %.val80, i64 8
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !29
  %i.dp = getelementptr inbounds nuw i8, ptr %.val80, i64 24
  %i.dq = load i32, ptr %i.dp, align 8, !tbaa !97
  %i.dr = call i32 @xcb_configure_window(ptr noundef %i.do, i32 noundef %i.dq, i16 noundef zeroext 3, ptr noundef nonnull %i.d) #11 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %xcbgrab_reposition.exit
  %i.ds = getelementptr inbounds nuw i8, ptr %i.f, i64 128 ; 3 uses
  %i.dt = load i32, ptr %i.ds, align 8, !tbaa !95
  %.not77 = icmp eq i32 %i.dt, 0
  br i1 %.not77, label %.thread, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.du = load ptr, ptr %i.e, align 8, !tbaa !9   ; 8 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 64
  %i.dw = load i32, ptr %i.dv, align 8, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  store ptr null, ptr %i.b, align 8, !tbaa !108
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  %i.dx = getelementptr inbounds nuw i8, ptr %i.du, i64 32
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !89
  %i.dz = call ptr @av_buffer_pool_get(ptr noundef %i.dy) #11 ; 5 uses
  store ptr %i.dz, ptr %i.c, align 8, !tbaa !109
  %.not.i = icmp eq ptr %i.dz, null
  br i1 %.not.i, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.48) #11
  br label %bb.ac

bb.aa:                                            ; preds = %bb.y
  %i.ea = call ptr @av_buffer_pool_buffer_get_opaque(ptr noundef nonnull %i.dz) #11
  %i.eb = ptrtoint ptr %i.ea to i64
  %i.ec = trunc i64 %i.eb to i32
  %i.ed = getelementptr inbounds nuw i8, ptr %i.du, i64 8 ; 3 uses
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !29
  %i.ef = getelementptr inbounds nuw i8, ptr %i.du, i64 68
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !66
  %i.eh = trunc i32 %i.eg to i16
  %i.ei = getelementptr inbounds nuw i8, ptr %i.du, i64 72
  %i.ej = load i32, ptr %i.ei, align 8, !tbaa !67
  %i.ek = trunc i32 %i.ej to i16
  %i.el = getelementptr inbounds nuw i8, ptr %i.du, i64 76
  %i.em = load i32, ptr %i.el, align 4, !tbaa !63
  %i.en = trunc i32 %i.em to i16
  %i.eo = getelementptr inbounds nuw i8, ptr %i.du, i64 80
  %i.ep = load i32, ptr %i.eo, align 8, !tbaa !65
  %i.eq = trunc i32 %i.ep to i16
  %i.er = call i32 @xcb_shm_get_image(ptr noundef %i.ee, i32 noundef %i.dw, i16 noundef signext %i.eh, i16 noundef signext %i.ek, i16 noundef zeroext %i.en, i16 noundef zeroext %i.eq, i32 noundef -1, i8 noundef zeroext 2, i32 noundef %i.ec, i32 noundef 0) #11
  %i.es = load ptr, ptr %i.ed, align 8, !tbaa !29
  %i.et = call ptr @xcb_shm_get_image_reply(ptr noundef %i.es, i32 %i.er, ptr noundef nonnull %i.b) #11
  %i.eu = load ptr, ptr %i.ed, align 8, !tbaa !29
  %i.ev = call i32 @xcb_flush(ptr noundef %i.eu) #11 ; 0 uses
  %i.ew = load ptr, ptr %i.b, align 8, !tbaa !108 ; 7 uses
  %.not22.i = icmp eq ptr %i.ew, null
  br i1 %.not22.i, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ex = load i8, ptr %i.ew, align 4, !tbaa !110
  %i.ey = zext i8 %i.ex to i32
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ew, i64 1
  %i.fa = load i8, ptr %i.ez, align 1, !tbaa !112
  %i.fb = zext i8 %i.fa to i32
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ew, i64 2
  %i.fd = load i16, ptr %i.fc, align 2, !tbaa !113
  %i.fe = zext i16 %i.fd to i32
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ew, i64 4
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !114
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %i.fi = load i16, ptr %i.fh, align 4, !tbaa !115
  %i.fj = zext i16 %i.fi to i32
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ew, i64 10
  %i.fl = load i8, ptr %i.fk, align 2, !tbaa !116
  %i.fm = zext i8 %i.fl to i32
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.49, i32 noundef %i.ey, i32 noundef %i.fb, i32 noundef %i.fe, i32 noundef %i.fg, i32 noundef %i.fj, i32 noundef %i.fm) #11
  %i.fn = load ptr, ptr %i.b, align 8, !tbaa !108
  call void @free(ptr noundef %i.fn) #11
  call void @av_buffer_unref(ptr noundef nonnull %i.c) #11
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 24, ptr noundef nonnull @.str.47) #11
  store i32 0, ptr %i.ds, align 8, !tbaa !95
  br label %.thread

bb.ad:                                            ; preds = %bb.aa
  call void @free(ptr noundef %i.et) #11
  store ptr %i.dz, ptr %1, align 8, !tbaa !117
  %i.fo = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !118
  %i.fq = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %i.fp, ptr %i.fq, align 8, !tbaa !121
  %i.fr = getelementptr inbounds nuw i8, ptr %i.du, i64 84
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !88
  %i.ft = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i32 %i.fs, ptr %i.ft, align 8, !tbaa !122
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  %.pr = load i32, ptr %i.ds, align 8, !tbaa !95
  %.not78 = icmp eq i32 %.pr, 0
  br i1 %.not78, label %.thread, label %bb.aj

.thread:                                          ; preds = %bb.x, %bb.ac, %bb.ad
  %i.fu = load ptr, ptr %i.e, align 8, !tbaa !9   ; 6 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 64
  %i.fw = load i32, ptr %i.fv, align 8, !tbaa !42
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store ptr null, ptr %i.a, align 8, !tbaa !108
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fu, i64 8 ; 2 uses
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !29
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fu, i64 68
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !66
  %i.gb = trunc i32 %i.ga to i16
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fu, i64 72
  %i.gd = load i32, ptr %i.gc, align 8, !tbaa !67
  %i.ge = trunc i32 %i.gd to i16
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fu, i64 76
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !63
  %i.gh = trunc i32 %i.gg to i16
  %i.gi = getelementptr inbounds nuw i8, ptr %i.fu, i64 80
  %i.gj = load i32, ptr %i.gi, align 8, !tbaa !65
  %i.gk = trunc i32 %i.gj to i16
  %i.gl = call i32 @xcb_get_image(ptr noundef %i.fy, i8 noundef zeroext 2, i32 noundef %i.fw, i16 noundef signext %i.gb, i16 noundef signext %i.ge, i16 noundef zeroext %i.gh, i16 noundef zeroext %i.gk, i32 noundef -1) #11
  %i.gm = load ptr, ptr %i.fx, align 8, !tbaa !29
  %i.gn = call ptr @xcb_get_image_reply(ptr noundef %i.gm, i32 %i.gl, ptr noundef nonnull %i.a) #11 ; 5 uses
  %i.go = load ptr, ptr %i.a, align 8, !tbaa !108 ; 7 uses
  %.not.i81 = icmp eq ptr %i.go, null
  br i1 %.not.i81, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %.thread
  %i.gp = load i8, ptr %i.go, align 4, !tbaa !110
  %i.gq = zext i8 %i.gp to i32
  %i.gr = getelementptr inbounds nuw i8, ptr %i.go, i64 1
  %i.gs = load i8, ptr %i.gr, align 1, !tbaa !112
  %i.gt = zext i8 %i.gs to i32
  %i.gu = getelementptr inbounds nuw i8, ptr %i.go, i64 2
  %i.gv = load i16, ptr %i.gu, align 2, !tbaa !113
  %i.gw = zext i16 %i.gv to i32
  %i.gx = getelementptr inbounds nuw i8, ptr %i.go, i64 4
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !114
  %i.gz = getelementptr inbounds nuw i8, ptr %i.go, i64 8
  %i.ha = load i16, ptr %i.gz, align 4, !tbaa !115
  %i.hb = zext i16 %i.ha to i32
  %i.hc = getelementptr inbounds nuw i8, ptr %i.go, i64 10
  %i.hd = load i8, ptr %i.hc, align 2, !tbaa !116
  %i.he = zext i8 %i.hd to i32
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.49, i32 noundef %i.gq, i32 noundef %i.gt, i32 noundef %i.gw, i32 noundef %i.gy, i32 noundef %i.hb, i32 noundef %i.he) #11
  %i.hf = load ptr, ptr %i.a, align 8, !tbaa !108
  call void @free(ptr noundef %i.hf) #11
  br label %xcbgrab_frame.exit

bb.af:                                            ; preds = %.thread
  %.not26.i = icmp eq ptr %i.gn, null
  br i1 %.not26.i, label %xcbgrab_frame.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.hg = call ptr @xcb_get_image_data(ptr noundef nonnull %i.gn) #11 ; 2 uses
  %i.hh = call i32 @xcb_get_image_data_length(ptr noundef nonnull %i.gn) #11 ; 2 uses
  %i.hi = sext i32 %i.hh to i64
  %i.hj = call ptr @av_buffer_create(ptr noundef %i.hg, i64 noundef %i.hi, ptr noundef nonnull @xcbgrab_image_reply_free, ptr noundef nonnull %i.gn, i32 noundef 0) #11 ; 2 uses
  store ptr %i.hj, ptr %1, align 8, !tbaa !117
  %.not27.i = icmp eq ptr %i.hj, null
  br i1 %.not27.i, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  call void @free(ptr noundef nonnull %i.gn) #11
  br label %xcbgrab_frame.exit

bb.ai:                                            ; preds = %bb.ag
  %i.hk = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %i.hg, ptr %i.hk, align 8, !tbaa !121
  %i.hl = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i32 %i.hh, ptr %i.hl, align 8, !tbaa !122
  br label %xcbgrab_frame.exit

xcbgrab_frame.exit:                               ; preds = %bb.ae, %bb.af, %bb.ah, %bb.ai
  %.0.i82 = phi i32 [ -13, %bb.ae ], [ 0, %bb.ai ], [ -12, %bb.ah ], [ -11, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %bb.aj

bb.aj:                                            ; preds = %xcbgrab_frame.exit, %bb.ad
  %.061 = phi i32 [ 0, %bb.ad ], [ %.0.i82, %xcbgrab_frame.exit ]
  %i.hm = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.w, ptr %i.hm, align 8, !tbaa !123
  %i.hn = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %i.w, ptr %i.hn, align 8, !tbaa !124
  %i.ho = load i64, ptr %i.g, align 8, !tbaa !72
  %i.hp = getelementptr inbounds nuw i8, ptr %1, i64 64
  store i64 %i.ho, ptr %i.hp, align 8, !tbaa !125
  call void @free(ptr noundef %.063) #11
  call void @free(ptr noundef %.062) #11
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.i, %bb.f, %bb.d
  %.0 = phi i32 [ %.061, %bb.aj ], [ -542398533, %bb.i ], [ -542398533, %bb.f ], [ -542398533, %bb.d ]
  ret i32 %.0
}

; Function Attrs: cold nounwind optsize uwtable
define internal noundef i32 @xcbgrab_read_close(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  tail call void @av_buffer_pool_uninit(ptr noundef nonnull %i.c) #11
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !29
  tail call void @xcb_disconnect(ptr noundef %i.e) #11
  ret i32 0
}

declare ptr @av_default_item_name(ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

declare noalias ptr @av_strdup(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @__isoc99_sscanf(ptr noundef readonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #4

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @xcb_connect(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @av_freep(ptr noundef) local_unnamed_addr #2

declare i32 @xcb_connection_has_error(ptr noundef) local_unnamed_addr #2

declare ptr @xcb_get_setup(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

declare { ptr, i64 } @xcb_setup_roots_iterator(ptr noundef) local_unnamed_addr #2

declare void @xcb_screen_next(ptr noundef) local_unnamed_addr #2

declare i32 @xcb_generate_id(ptr noundef) local_unnamed_addr #2

declare i32 @xcb_create_gc(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @xcb_open_font(ptr noundef, i32 noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

declare i32 @xcb_create_glyph_cursor(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

declare i32 @xcb_grab_pointer(ptr noundef, i8 noundef zeroext, i32 noundef, i16 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @xcb_grab_pointer_reply(ptr noundef, i32, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #5

declare i32 @xcb_grab_server(ptr noundef) local_unnamed_addr #2

declare ptr @xcb_wait_for_event(ptr noundef) local_unnamed_addr #2

declare i32 @xcb_poly_rectangle(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @xcb_flush(ptr noundef) local_unnamed_addr #2

declare i32 @xcb_ungrab_server(ptr noundef) local_unnamed_addr #2

declare i32 @xcb_ungrab_pointer(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @xcb_free_cursor(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @xcb_close_font(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @xcb_free_gc(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @avformat_new_stream(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @av_parse_video_rate(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @avpriv_set_pts_info(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @xcb_get_geometry(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @xcb_get_geometry_reply(ptr noundef, i32, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i64 @av_rescale_q(i64 noundef, i64, i64) local_unnamed_addr #6

declare i64 @av_gettime_relative() local_unnamed_addr #2

declare ptr @av_buffer_pool_init2(i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal ptr @allocate_shm_buffer(ptr noundef %0, i64 noundef %1) #1 {
bb.a:
  %i.a = tail call i32 @shmget(i32 noundef 0, i64 noundef %1, i32 noundef 1023) #11 ; 4 uses
  %i.b = icmp eq i32 %i.a, -1
  br i1 %i.b, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @xcb_generate_id(ptr noundef %0) #11 ; 2 uses
  %i.d = tail call i32 @xcb_shm_attach(ptr noundef %0, i32 noundef %i.c, i32 noundef %i.a, i8 noundef zeroext 0) #11 ; 0 uses
  %i.e = tail call ptr @shmat(i32 noundef %i.a, ptr noundef null, i32 noundef 0) #11 ; 3 uses
  %i.f = tail call i32 @shmctl(i32 noundef %i.a, i32 noundef 0, ptr noundef null) #11 ; 0 uses
  %magicptr = ptrtoint ptr %i.e to i64
  %magicptr.off = add i64 %magicptr, -1
  %switch = icmp ult i64 %magicptr.off, -2
  br i1 %switch, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.g = zext i32 %i.c to i64
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = tail call ptr @av_buffer_create(ptr noundef nonnull %i.e, i64 noundef %1, ptr noundef nonnull @free_shm_buffer, ptr noundef %i.h, i32 noundef 0) #11 ; 2 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = tail call i32 @shmdt(ptr noundef nonnull %i.e) #11 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.c, %bb.d, %bb.a
  %.0 = phi ptr [ null, %bb.a ], [ %i.i, %bb.c ], [ null, %bb.b ], [ null, %bb.d ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i64 @av_rescale(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #6

declare ptr @xcb_setup_pixmap_formats(ptr noundef) local_unnamed_addr #2

declare i32 @xcb_setup_pixmap_formats_length(ptr noundef) local_unnamed_addr #2

declare void @avpriv_report_missing_feature(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @shmget(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #7

declare i32 @xcb_shm_attach(ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind
declare ptr @shmat(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare i32 @shmctl(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #7

declare ptr @av_buffer_create(ptr noundef, i64 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @free_shm_buffer(ptr nofree readnone captures(none) %0, ptr noundef %1) #1 {
bb.a:
  %i.a = tail call i32 @shmdt(ptr noundef %1) #11 ; 0 uses
  ret void
}

; Function Attrs: nounwind
declare i32 @shmdt(ptr noundef) local_unnamed_addr #7

declare i32 @xcb_shm_query_version(ptr noundef) local_unnamed_addr #2

declare ptr @xcb_shm_query_version_reply(ptr noundef, i32, ptr noundef) local_unnamed_addr #2

declare i32 @xcb_create_window(ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @xcb_map_window(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i64 @av_gettime() local_unnamed_addr #2

declare i32 @xcb_query_pointer(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @xcb_query_pointer_reply(ptr noundef, i32, ptr noundef) local_unnamed_addr #2

declare i32 @xcb_translate_coordinates(ptr noundef, i32 noundef, i32 noundef, i16 noundef signext, i16 noundef signext) local_unnamed_addr #2

declare ptr @xcb_translate_coordinates_reply(ptr noundef, i32, ptr noundef) local_unnamed_addr #2

declare i32 @av_usleep(i32 noundef) local_unnamed_addr #2

declare i32 @xcb_configure_window(ptr noundef, i32 noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #2

declare ptr @av_buffer_pool_get(ptr noundef) local_unnamed_addr #2

declare ptr @av_buffer_pool_buffer_get_opaque(ptr noundef) local_unnamed_addr #2

declare i32 @xcb_shm_get_image(ptr noundef, i32 noundef, i16 noundef signext, i16 noundef signext, i16 noundef zeroext, i16 noundef zeroext, i32 noundef, i8 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @xcb_shm_get_image_reply(ptr noundef, i32, ptr noundef) local_unnamed_addr #2

declare void @av_buffer_unref(ptr noundef) local_unnamed_addr #2

declare i32 @xcb_get_image(ptr noundef, i8 noundef zeroext, i32 noundef, i16 noundef signext, i16 noundef signext, i16 noundef zeroext, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

declare ptr @xcb_get_image_reply(ptr noundef, i32, ptr noundef) local_unnamed_addr #2

declare ptr @xcb_get_image_data(ptr noundef) local_unnamed_addr #2

declare i32 @xcb_get_image_data_length(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal void @xcbgrab_image_reply_free(ptr noundef captures(none) %0, ptr nofree readnone captures(none) %1) #8 {
bb.a:
  tail call void @free(ptr noundef %0) #11
  ret void
}

declare void @av_buffer_pool_uninit(ptr noundef) local_unnamed_addr #2

declare void @xcb_disconnect(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.smin.i16(i16, i16) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #10

attributes #0 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nofree nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind }
attributes #12 = { cold }
attributes #13 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !12, i64 24}
!10 = !{!"AVFormatContext", !11, i64 0, !13, i64 8, !14, i64 16, !12, i64 24, !15, i64 32, !6, i64 40, !6, i64 44, !16, i64 48, !6, i64 56, !18, i64 64, !6, i64 72, !19, i64 80, !20, i64 88, !21, i64 96, !21, i64 104, !21, i64 112, !6, i64 120, !6, i64 124, !6, i64 128, !21, i64 136, !21, i64 144, !20, i64 152, !6, i64 160, !6, i64 164, !22, i64 168, !6, i64 176, !6, i64 180, !6, i64 184, !6, i64 188, !23, i64 192, !21, i64 200, !6, i64 208, !6, i64 212, !24, i64 216, !6, i64 232, !6, i64 236, !6, i64 240, !6, i64 244, !21, i64 248, !6, i64 256, !6, i64 260, !6, i64 264, !6, i64 268, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !6, i64 296, !6, i64 300, !21, i64 304, !6, i64 312, !6, i64 316, !6, i64 320, !6, i64 324, !6, i64 328, !20, i64 336, !20, i64 344, !20, i64 352, !20, i64 360, !6, i64 368, !25, i64 376, !25, i64 384, !25, i64 392, !25, i64 400, !6, i64 408, !12, i64 416, !12, i64 424, !21, i64 432, !20, i64 440, !12, i64 448, !12, i64 456, !21, i64 464, !20, i64 472}
!11 = !{!"p1 _ZTS7AVClass", !12, i64 0}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{!"p1 _ZTS13AVInputFormat", !12, i64 0}
!14 = !{!"p1 _ZTS14AVOutputFormat", !12, i64 0}
!15 = !{!"p1 _ZTS11AVIOContext", !12, i64 0}
!16 = !{!"p2 _ZTS8AVStream", !17, i64 0}
!17 = !{!"any p2 pointer", !12, i64 0}
!18 = !{!"p2 _ZTS13AVStreamGroup", !17, i64 0}
!19 = !{!"p2 _ZTS9AVChapter", !17, i64 0}
!20 = !{!"p1 omnipotent char", !12, i64 0}
!21 = !{!"long", !7, i64 0}
!22 = !{!"p2 _ZTS9AVProgram", !17, i64 0}
!23 = !{!"p1 _ZTS12AVDictionary", !12, i64 0}
!24 = !{!"AVIOInterruptCB", !12, i64 0, !12, i64 8}
!25 = !{!"p1 _ZTS7AVCodec", !12, i64 0}
!26 = !{!10, !20, i64 88}
!27 = !{!20, !20, i64 0}
!28 = !{!7, !7, i64 0}
!29 = !{!30, !31, i64 8}
!30 = !{!"XCBGrabContext", !11, i64 0, !31, i64 8, !32, i64 16, !6, i64 24, !33, i64 32, !21, i64 40, !34, i64 48, !21, i64 56, !6, i64 64, !6, i64 68, !6, i64 72, !6, i64 76, !6, i64 80, !6, i64 84, !6, i64 88, !6, i64 92, !6, i64 96, !6, i64 100, !6, i64 104, !6, i64 108, !6, i64 112, !20, i64 120, !6, i64 128}
!31 = !{!"p1 _ZTS16xcb_connection_t", !12, i64 0}
!32 = !{!"p1 _ZTS12xcb_screen_t", !12, i64 0}
!33 = !{!"p1 _ZTS12AVBufferPool", !12, i64 0}
!34 = !{!"AVRational", !6, i64 0, !6, i64 4}
!35 = !{!6, !6, i64 0}
!36 = distinct !{!36, !37}
!37 = !{!"llvm.loop.mustprogress"}
!38 = !{!39, !6, i64 8}
!39 = !{!"xcb_screen_iterator_t", !32, i64 0, !6, i64 8, !6, i64 12}
!40 = !{!30, !32, i64 16}
!41 = !{!39, !32, i64 0}
!42 = !{!30, !6, i64 64}
!43 = !{!44, !6, i64 0}
!44 = !{!"xcb_screen_t", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !45, i64 20, !45, i64 22, !45, i64 24, !45, i64 26, !45, i64 28, !45, i64 30, !6, i64 32, !7, i64 36, !7, i64 37, !7, i64 38, !7, i64 39}
!45 = !{!"short", !7, i64 0}
!46 = !{!30, !6, i64 112}
!47 = !{!30, !6, i64 96}
!48 = !{!49, !7, i64 1}
!49 = !{!"xcb_grab_pointer_reply_t", !7, i64 0, !7, i64 1, !45, i64 2, !6, i64 4}
!50 = !{!51, !7, i64 0}
!51 = !{!"", !7, i64 0, !7, i64 1, !45, i64 2, !7, i64 4, !6, i64 32}
!52 = !{!53, !45, i64 24}
!53 = !{!"xcb_button_press_event_t", !7, i64 0, !7, i64 1, !45, i64 2, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !45, i64 20, !45, i64 22, !45, i64 24, !45, i64 26, !45, i64 28, !7, i64 30, !7, i64 31}
!54 = !{!53, !45, i64 26}
!55 = !{!56, !45, i64 0}
!56 = !{!"xcb_rectangle_t", !45, i64 0, !45, i64 2, !45, i64 4, !45, i64 6}
!57 = !{!56, !45, i64 2}
!58 = !{!59, !45, i64 24}
!59 = !{!"xcb_motion_notify_event_t", !7, i64 0, !7, i64 1, !45, i64 2, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !45, i64 20, !45, i64 22, !45, i64 24, !45, i64 26, !45, i64 28, !7, i64 30, !7, i64 31}
!60 = !{!59, !45, i64 26}
!61 = distinct !{!61, !37}
!62 = !{!56, !45, i64 4}
!63 = !{!30, !6, i64 76}
!64 = !{!56, !45, i64 6}
!65 = !{!30, !6, i64 80}
!66 = !{!30, !6, i64 68}
!67 = !{!30, !6, i64 72}
!68 = !{!30, !20, i64 120}
!69 = !{!70, !45, i64 16}
!70 = !{!"xcb_get_geometry_reply_t", !7, i64 0, !7, i64 1, !45, i64 2, !6, i64 4, !6, i64 8, !45, i64 12, !45, i64 14, !45, i64 16, !45, i64 18, !45, i64 20, !7, i64 22}
!71 = !{!70, !45, i64 18}
!72 = !{!30, !21, i64 56}
!73 = !{!30, !21, i64 40}
!74 = !{!70, !7, i64 1}
!75 = !{!76, !77, i64 16}
!76 = !{!"AVStream", !11, i64 0, !6, i64 8, !6, i64 12, !77, i64 16, !12, i64 24, !34, i64 32, !21, i64 40, !21, i64 48, !21, i64 56, !6, i64 64, !6, i64 68, !34, i64 72, !23, i64 80, !34, i64 88, !78, i64 96, !6, i64 200, !34, i64 204, !6, i64 212}
!77 = !{!"p1 _ZTS17AVCodecParameters", !12, i64 0}
!78 = !{!"AVPacket", !79, i64 0, !21, i64 8, !21, i64 16, !20, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !80, i64 48, !6, i64 56, !21, i64 64, !21, i64 72, !12, i64 80, !79, i64 88, !34, i64 96}
!79 = !{!"p1 _ZTS11AVBufferRef", !12, i64 0}
!80 = !{!"p1 _ZTS16AVPacketSideData", !12, i64 0}
!81 = !{!82, !7, i64 0}
!82 = !{!"xcb_format_t", !7, i64 0, !7, i64 1, !7, i64 2, !7, i64 3}
!83 = !{!82, !7, i64 1}
!84 = distinct !{!84, !37}
!85 = !{!86, !7, i64 30}
!86 = !{!"xcb_setup_t", !7, i64 0, !7, i64 1, !45, i64 2, !45, i64 4, !45, i64 6, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !45, i64 24, !45, i64 26, !7, i64 28, !7, i64 29, !7, i64 30, !7, i64 31, !7, i64 32, !7, i64 33, !7, i64 34, !7, i64 35, !7, i64 36}
!87 = !{!30, !6, i64 88}
!88 = !{!30, !6, i64 84}
!89 = !{!30, !33, i64 32}
!90 = !{!76, !6, i64 88}
!91 = !{!76, !6, i64 92}
!92 = !{!93, !21, i64 48}
!93 = !{!"AVCodecParameters", !6, i64 0, !6, i64 4, !6, i64 8, !20, i64 16, !6, i64 24, !80, i64 32, !6, i64 40, !6, i64 44, !21, i64 48, !6, i64 56, !6, i64 60, !6, i64 64, !6, i64 68, !6, i64 72, !6, i64 76, !34, i64 80, !34, i64 88, !6, i64 96, !6, i64 100, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !94, i64 128, !6, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !6, i64 168, !6, i64 172, !6, i64 176}
!94 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !7, i64 8, !12, i64 16}
!95 = !{!30, !6, i64 128}
!96 = !{!30, !6, i64 100}
!97 = !{!30, !6, i64 24}
!98 = !{!30, !6, i64 104}
!99 = !{!45, !45, i64 0}
!100 = !{!30, !6, i64 92}
!101 = !{!102, !45, i64 12}
!102 = !{!"xcb_translate_coordinates_reply_t", !7, i64 0, !7, i64 1, !45, i64 2, !6, i64 4, !6, i64 8, !45, i64 12, !45, i64 14}
!103 = !{!102, !45, i64 14}
!104 = !{!105, !7, i64 1}
!105 = !{!"xcb_query_pointer_reply_t", !7, i64 0, !7, i64 1, !45, i64 2, !6, i64 4, !6, i64 8, !6, i64 12, !45, i64 16, !45, i64 18, !45, i64 20, !45, i64 22, !45, i64 24, !7, i64 26}
!106 = !{!105, !45, i64 20}
!107 = !{!105, !45, i64 22}
!108 = !{!12, !12, i64 0}
!109 = !{!79, !79, i64 0}
!110 = !{!111, !7, i64 0}
!111 = !{!"", !7, i64 0, !7, i64 1, !45, i64 2, !6, i64 4, !45, i64 8, !7, i64 10, !7, i64 11, !7, i64 12, !6, i64 32}
!112 = !{!111, !7, i64 1}
!113 = !{!111, !45, i64 2}
!114 = !{!111, !6, i64 4}
!115 = !{!111, !45, i64 8}
!116 = !{!111, !7, i64 10}
!117 = !{!78, !79, i64 0}
!118 = !{!119, !20, i64 8}
!119 = !{!"AVBufferRef", !120, i64 0, !20, i64 8, !21, i64 16}
!120 = !{!"p1 _ZTS8AVBuffer", !12, i64 0}
!121 = !{!78, !20, i64 24}
!122 = !{!78, !6, i64 32}
!123 = !{!78, !21, i64 8}
!124 = !{!78, !21, i64 16}
!125 = !{!78, !21, i64 64}
end_hunk_1
