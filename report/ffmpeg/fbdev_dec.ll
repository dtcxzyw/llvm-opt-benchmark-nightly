Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/fbdev_dec?download=true
inline.NumInlined: 7
inline.NumDeleted: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%union.anon = type { i64 }
%struct.timespec = type { i64, i64 }

@.str = private unnamed_addr constant [6 x i8] c"fbdev\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"Linux framebuffer\00", align 1
@ff_fbdev_demuxer = local_unnamed_addr constant { { ptr, ptr, i32, [4 x i8], ptr, ptr, ptr, ptr }, i32, i32, i32, [4 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr } { { ptr, ptr, i32, [4 x i8], ptr, ptr, ptr, ptr } { ptr @.str, ptr @.str.1, i32 1, [4 x i8] zeroinitializer, ptr null, ptr null, ptr @fbdev_class, ptr null }, i32 0, i32 304, i32 0, [4 x i8] zeroinitializer, ptr null, ptr @fbdev_read_header, ptr @fbdev_read_packet, ptr @fbdev_read_close, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fbdev_get_device_list }, align 8
@.str.2 = private unnamed_addr constant [12 x i8] c"fbdev indev\00", align 1
@fbdev_class = internal constant { ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str.2, ptr @av_default_item_name, ptr @options, i32 3998052, i32 0, i32 0, i32 41, ptr null, ptr null, ptr null, ptr null, i32 0, [4 x i8] zeroinitializer }, align 8
@.str.4 = private unnamed_addr constant [10 x i8] c"framerate\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"25\00", align 1
@options = internal constant <{ { ptr, ptr, i32, i32, { ptr }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon, double, double, i32, [4 x i8], ptr } }> <{ { ptr, ptr, i32, i32, { ptr }, double, double, i32, [4 x i8], ptr } { ptr @.str.4, ptr @.str.5, i32 12, i32 15, { ptr } { ptr @.str.6 }, double 0.000000e+00, double f0x41DFFFFFFFC00000, i32 2, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon, double, double, i32, [4 x i8], ptr } zeroinitializer }>, align 16
@.str.8 = private unnamed_addr constant [44 x i8] c"Could not open framebuffer device '%s': %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"FBIOGET_VSCREENINFO: %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c"FBIOGET_FSCREENINFO: %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [41 x i8] c"Framebuffer pixel format not supported.\0A\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"Error in mmap(): %s\0A\00", align 1
@.str.13 = private unnamed_addr constant [51 x i8] c"w:%d h:%d bpp:%d pixfmt:%s fps:%d/%d bit_rate:%ld\0A\00", align 1
@.str.14 = private unnamed_addr constant [38 x i8] c"time_frame:%ld curtime:%ld delay:%ld\0A\00", align 1
@.str.15 = private unnamed_addr constant [36 x i8] c"Error refreshing variable info: %s\0A\00", align 1

; Function Attrs: cold nounwind optsize uwtable
define internal range(i32 -2147483647, -2147483648) i32 @fbdev_read_header(ptr noundef %0) #0 {
bb.a:
  %i.a = alloca [64 x i8], align 1                ; 3 uses
  %i.b = alloca [64 x i8], align 1                ; 3 uses
  %i.c = alloca [64 x i8], align 1                ; 3 uses
  %i.d = alloca [64 x i8], align 1                ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !9    ; 15 uses
  %i.g = tail call ptr @avformat_new_stream(ptr noundef %0, ptr noundef null) #7 ; 4 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.p, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @avpriv_set_pts_info(ptr noundef nonnull %i.g, i32 noundef 64, i32 noundef 1, i32 noundef 1000000) #7
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.i = load i32, ptr %i.h, align 8, !tbaa !26
  %i.j = shl i32 %i.i, 9
  %spec.select = and i32 %i.j, 2048
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !27   ; 2 uses
  %i.m = load i8, ptr %i.l, align 1, !tbaa !28
  %.not76 = icmp eq i8 %i.m, 0
  br i1 %.not76, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.n = tail call ptr @ff_fbdev_default_device() #7
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.0 = phi ptr [ %i.n, %bb.c ], [ %i.l, %bb.b ]  ; 2 uses
  %i.o = tail call i32 (ptr, i32, ...) @avpriv_open(ptr noundef %.0, i32 noundef %spec.select) #7 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 4 uses
  store i32 %i.o, ptr %i.p, align 8, !tbaa !29
  %i.q = icmp eq i32 %i.o, -1
  br i1 %i.q, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.r = tail call ptr @__errno_location() #8
  %i.s = load i32, ptr %i.r, align 4, !tbaa !36
  %i.t = sub nsw i32 0, %i.s                      ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.a, i8 0, i64 64, i1 false)
  %i.u = call i32 @av_strerror(i32 noundef range(i32 -2147483647, -2147483648) %i.t, ptr noundef nonnull %i.a, i64 noundef 64) #7 ; 0 uses
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.8, ptr noundef %.0, ptr noundef nonnull %i.a) #7
  br label %bb.p

bb.f:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 52 ; 3 uses
  %i.w = tail call i32 (i32, i64, ...) @ioctl(i32 noundef %i.o, i64 noundef 17920, ptr noundef nonnull %i.v) #7
  %i.x = icmp slt i32 %i.w, 0
  br i1 %i.x, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.y = tail call ptr @__errno_location() #8
  %i.z = load i32, ptr %i.y, align 4, !tbaa !36
  %i.aa = sub nsw i32 0, %i.z                     ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.b, i8 0, i64 64, i1 false)
  %i.ab = call i32 @av_strerror(i32 noundef range(i32 -2147483647, -2147483648) %i.aa, ptr noundef nonnull %i.b, i64 noundef 64) #7 ; 0 uses
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.9, ptr noundef nonnull %i.b) #7
  br label %bb.o

bb.h:                                             ; preds = %bb.f
  %i.ac = load i32, ptr %i.p, align 8, !tbaa !29
  %i.ad = getelementptr inbounds nuw i8, ptr %i.f, i64 216
  %i.ae = tail call i32 (i32, i64, ...) @ioctl(i32 noundef %i.ac, i64 noundef 17922, ptr noundef nonnull %i.ad) #7
  %i.af = icmp slt i32 %i.ae, 0
  br i1 %i.af, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ag = tail call ptr @__errno_location() #8
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !36
  %i.ai = sub nsw i32 0, %i.ah                    ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.c, i8 0, i64 64, i1 false)
  %i.aj = call i32 @av_strerror(i32 noundef range(i32 -2147483647, -2147483648) %i.ai, ptr noundef nonnull %i.c, i64 noundef 64) #7 ; 0 uses
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.10, ptr noundef nonnull %i.c) #7
  br label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.ak = tail call i32 @ff_get_pixfmt_from_fb_varinfo(ptr noundef nonnull %i.v) #7 ; 3 uses
  %i.al = icmp eq i32 %i.ak, -1
  br i1 %i.al, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.11) #7
  br label %bb.o

bb.l:                                             ; preds = %bb.j
  %i.am = load i32, ptr %i.v, align 4, !tbaa !37  ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.f, i64 36 ; 3 uses
  store i32 %i.am, ptr %i.an, align 4, !tbaa !38
  %i.ao = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !39 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.f, i64 40 ; 2 uses
  store i32 %i.ap, ptr %i.aq, align 8, !tbaa !40
  %i.ar = getelementptr inbounds nuw i8, ptr %i.f, i64 76 ; 2 uses
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !41
  %i.at = add i32 %i.as, 7
  %i.au = lshr i32 %i.at, 3                       ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.f, i64 48 ; 2 uses
  store i32 %i.au, ptr %i.av, align 8, !tbaa !42
  %i.aw = mul nsw i32 %i.au, %i.am                ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.f, i64 44
  store i32 %i.aw, ptr %i.ax, align 4, !tbaa !43
  %i.ay = mul nsw i32 %i.aw, %i.ap
  %i.az = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i32 %i.ay, ptr %i.az, align 8, !tbaa !44
  %i.ba = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i64 -9223372036854775808, ptr %i.ba, align 8, !tbaa !45
  %i.bb = getelementptr inbounds nuw i8, ptr %i.f, i64 240
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !46
  %i.bd = zext i32 %i.bc to i64
  %i.be = load i32, ptr %i.p, align 8, !tbaa !29
  %i.bf = tail call ptr @mmap64(ptr noundef null, i64 noundef %i.bd, i32 noundef 1, i32 noundef 1, i32 noundef %i.be, i64 noundef 0) #7 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.f, i64 296
  store ptr %i.bf, ptr %i.bg, align 8, !tbaa !47
  %i.bh = icmp eq ptr %i.bf, inttoptr (i64 -1 to ptr)
  br i1 %i.bh, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bi = tail call ptr @__errno_location() #8
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !36
  %i.bk = sub nsw i32 0, %i.bj                    ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.d, i8 0, i64 64, i1 false)
  %i.bl = call i32 @av_strerror(i32 noundef range(i32 -2147483647, -2147483648) %i.bk, ptr noundef nonnull %i.d, i64 noundef 64) #7 ; 0 uses
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.12, ptr noundef nonnull %i.d) #7
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.bm = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !48 ; 4 uses
  store <2 x i32> <i32 0, i32 13>, ptr %i.bn, align 8, !tbaa !36
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 72
  %i.bp = load <2 x i32>, ptr %i.an, align 4, !tbaa !36
  store <2 x i32> %i.bp, ptr %i.bo, align 8, !tbaa !36
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 44
  store i32 %i.ak, ptr %i.bq, align 4, !tbaa !54
  %i.br = getelementptr inbounds nuw i8, ptr %i.g, i64 88
  %i.bs = getelementptr inbounds nuw i8, ptr %i.f, i64 12 ; 3 uses
  %i.bt = load i64, ptr %i.bs, align 4
  store i64 %i.bt, ptr %i.br, align 8
  %i.bu = load i32, ptr %i.an, align 4, !tbaa !38 ; 2 uses
  %i.bv = load i32, ptr %i.aq, align 8, !tbaa !40 ; 2 uses
  %i.bw = mul nsw i32 %i.bv, %i.bu
  %i.bx = load i32, ptr %i.av, align 8, !tbaa !42
  %i.by = mul nsw i32 %i.bw, %i.bx
  %i.bz = sitofp nsz i32 %i.by to double
  %i.ca = load i64, ptr %i.bs, align 4            ; 2 uses
  %.sroa.0.0.extract.trunc.i = trunc i64 %i.ca to i32
  %.sroa.2.0.extract.shift.i = lshr i64 %i.ca, 32
  %.sroa.2.0.extract.trunc.i = trunc nuw i64 %.sroa.2.0.extract.shift.i to i32
  %i.cb = sitofp nsz i32 %.sroa.0.0.extract.trunc.i to double
  %i.cc = sitofp nsz i32 %.sroa.2.0.extract.trunc.i to double
  %i.cd = fdiv nsz double %i.cb, %i.cc
  %i.ce = fmul nsz double %i.cd, %i.bz
  %i.cf = fmul nsz double %i.ce, 8.000000e+00
  %i.cg = fptosi double %i.cf to i64
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bn, i64 48
  store i64 %i.cg, ptr %i.ch, align 8, !tbaa !57
  %i.ci = load i32, ptr %i.ar, align 4, !tbaa !41
  %i.cj = tail call ptr @av_get_pix_fmt_name(i32 noundef %i.ak) #7
  %i.ck = load i32, ptr %i.bs, align 4, !tbaa !58
  %i.cl = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.cm = load i32, ptr %i.cl, align 8, !tbaa !59
  %i.cn = load ptr, ptr %i.bm, align 8, !tbaa !48
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 48
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !57
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 32, ptr noundef nonnull @.str.13, i32 noundef %i.bu, i32 noundef %i.bv, i32 noundef %i.ci, ptr noundef %i.cj, i32 noundef %i.ck, i32 noundef %i.cm, i64 noundef %i.cp) #7
  br label %bb.p

bb.o:                                             ; preds = %bb.m, %bb.k, %bb.i, %bb.g
  %.070 = phi i32 [ %i.aa, %bb.g ], [ %i.ai, %bb.i ], [ -22, %bb.k ], [ %i.bk, %bb.m ]
  %i.cq = load i32, ptr %i.p, align 8, !tbaa !29
  %i.cr = call i32 @close(i32 noundef %i.cq) #7   ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.a, %bb.o, %bb.n, %bb.e
  %.071 = phi i32 [ %i.t, %bb.e ], [ %.070, %bb.o ], [ 0, %bb.n ], [ -12, %bb.a ]
  ret i32 %.071
}

; Function Attrs: nounwind uwtable
define internal i32 @fbdev_read_packet(ptr noundef %0, ptr noundef %1) #1 {
bb.a:
  %2 = alloca %struct.timespec, align 8           ; 6 uses
  %i.a = alloca [64 x i8], align 1                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !9    ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 6 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !45
  %i.f = icmp eq i64 %i.e, -9223372036854775808
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = tail call i64 @av_gettime_relative() #7
  store i64 %i.g, ptr %i.d, align 8, !tbaa !45
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = tail call i64 @av_gettime_relative() #7  ; 2 uses
  %i.i = load i64, ptr %i.d, align 8, !tbaa !45   ; 2 uses
  %i.j = sub nsw i64 %i.i, %i.h                   ; 3 uses
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 56, ptr noundef nonnull @.str.14, i64 noundef %i.i, i64 noundef %i.h, i64 noundef %i.j) #7
  %i.k = icmp slt i64 %i.j, 1
  br i1 %i.k, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.d

._crit_edge:                                      ; preds = %.critedge, %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.o = load i64, ptr %i.n, align 4              ; 2 uses
  %.sroa.0.0.extract.trunc.i = trunc i64 %i.o to i32
  %.sroa.2.0.extract.shift.i = lshr i64 %i.o, 32
  %.sroa.2.0.extract.trunc.i = trunc nuw i64 %.sroa.2.0.extract.shift.i to i32
  %i.p = sitofp nsz i32 %.sroa.0.0.extract.trunc.i to double
  %i.q = sitofp nsz i32 %.sroa.2.0.extract.trunc.i to double
  %i.r = fdiv nsz double %i.p, %i.q
  %i.s = fdiv nsz double 1.000000e+06, %i.r
  %i.t = load i64, ptr %i.d, align 8, !tbaa !45
  %i.u = sitofp nsz i64 %i.t to double
  %i.v = fadd nsz double %i.s, %i.u
  %i.w = fptosi double %i.v to i64
  store i64 %i.w, ptr %i.d, align 8, !tbaa !45
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.y = load i32, ptr %i.x, align 8, !tbaa !44
  %i.z = call i32 @av_new_packet(ptr noundef %1, i32 noundef %i.y) #7 ; 2 uses
  %i.aa = icmp slt i32 %i.z, 0
  br i1 %i.aa, label %.loopexit, label %bb.h

bb.d:                                             ; preds = %.lr.ph, %.critedge
  %i.ab = phi i64 [ %i.j, %.lr.ph ], [ %i.ao, %.critedge ] ; 2 uses
  %i.ac = load i32, ptr %i.l, align 8, !tbaa !26
  %i.ad = and i32 %i.ac, 4
  %.not = icmp eq i32 %i.ad, 0
  br i1 %.not, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d
  %i.ae = udiv i64 %i.ab, 1000000
  store i64 %i.ae, ptr %2, align 8, !tbaa !60
  %i.af = urem i64 %i.ab, 1000000
  %i.ag = mul nuw nsw i64 %i.af, 1000
  store i64 %i.ag, ptr %i.m, align 8, !tbaa !62
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e
  %i.ah = call i32 @nanosleep(ptr noundef nonnull %2, ptr noundef nonnull %2) #7
  %i.ai = icmp slt i32 %i.ah, 0
  br i1 %i.ai, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.aj = tail call ptr @__errno_location() #8
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !36
  %i.al = icmp eq i32 %i.ak, 4
  br i1 %i.al, label %bb.f, label %.critedge, !llvm.loop !63

.critedge:                                        ; preds = %bb.f, %bb.g
  %i.am = call i64 @av_gettime_relative() #7      ; 2 uses
  %i.an = load i64, ptr %i.d, align 8, !tbaa !45  ; 2 uses
  %i.ao = sub nsw i64 %i.an, %i.am                ; 3 uses
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 56, ptr noundef nonnull @.str.14, i64 noundef %i.an, i64 noundef %i.am, i64 noundef %i.ao) #7
  %i.ap = icmp slt i64 %i.ao, 1
  br i1 %i.ap, label %._crit_edge, label %bb.d

bb.h:                                             ; preds = %._crit_edge
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !29
  %i.as = getelementptr inbounds nuw i8, ptr %i.c, i64 52
  %i.at = call i32 (i32, i64, ...) @ioctl(i32 noundef %i.ar, i64 noundef 17920, ptr noundef nonnull %i.as) #7
  %i.au = icmp slt i32 %i.at, 0
  br i1 %i.au, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.a, i8 0, i64 64, i1 false)
  %i.av = tail call ptr @__errno_location() #8
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !36
  %i.ax = sub nsw i32 0, %i.aw
  %i.ay = call i32 @av_strerror(i32 noundef range(i32 -2147483647, -2147483648) %i.ax, ptr noundef nonnull %i.a, i64 noundef 64) #7 ; 0 uses
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 24, ptr noundef nonnull @.str.15, ptr noundef nonnull %i.a) #7
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.az = call i64 @av_gettime() #7
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.az, ptr %i.ba, align 8, !tbaa !65
  %i.bb = getelementptr inbounds nuw i8, ptr %i.c, i64 264 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !40
  %i.be = icmp sgt i32 %i.bd, 0
  br i1 %i.be, label %.lr.ph48, label %._crit_edge49

.lr.ph48:                                         ; preds = %bb.j
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !66
  %i.bh = getelementptr inbounds nuw i8, ptr %i.c, i64 296
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !47
  %i.bj = getelementptr inbounds nuw i8, ptr %i.c, i64 68
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !67
  %i.bl = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.bm = load i32, ptr %i.bl, align 8, !tbaa !42
  %i.bn = mul i32 %i.bk, %i.bm
  %i.bo = zext i32 %i.bn to i64
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bo
  %i.bq = load i32, ptr %i.bb, align 8, !tbaa !68
  %i.br = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !69
  %i.bt = mul i32 %i.bq, %i.bs
  %i.bu = zext i32 %i.bt to i64
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.bu
  %i.bw = getelementptr inbounds nuw i8, ptr %i.c, i64 44 ; 2 uses
  %.pre = load i32, ptr %i.bw, align 4, !tbaa !43
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph48, %bb.k
  %i.bx = phi i32 [ %.pre, %.lr.ph48 ], [ %i.cc, %bb.k ]
  %.046 = phi ptr [ %i.bg, %.lr.ph48 ], [ %i.ce, %bb.k ] ; 2 uses
  %.03945 = phi ptr [ %i.bv, %.lr.ph48 ], [ %i.cb, %bb.k ] ; 2 uses
  %.04044 = phi i32 [ 0, %.lr.ph48 ], [ %i.cf, %bb.k ]
  %i.by = sext i32 %i.bx to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.046, ptr align 1 %.03945, i64 %i.by, i1 false)
  %i.bz = load i32, ptr %i.bb, align 8, !tbaa !68
  %i.ca = zext i32 %i.bz to i64
  %i.cb = getelementptr inbounds nuw i8, ptr %.03945, i64 %i.ca
  %i.cc = load i32, ptr %i.bw, align 4, !tbaa !43 ; 2 uses
  %i.cd = sext i32 %i.cc to i64
  %i.ce = getelementptr inbounds i8, ptr %.046, i64 %i.cd
  %i.cf = add nuw nsw i32 %.04044, 1              ; 2 uses
  %i.cg = load i32, ptr %i.bc, align 8, !tbaa !40
  %i.ch = icmp slt i32 %i.cf, %i.cg
  br i1 %i.ch, label %bb.k, label %._crit_edge49, !llvm.loop !70

._crit_edge49:                                    ; preds = %bb.k, %bb.j
  %i.ci = load i32, ptr %i.x, align 8, !tbaa !44
  br label %.loopexit

.loopexit:                                        ; preds = %bb.d, %._crit_edge, %._crit_edge49
  %.041 = phi i32 [ %i.z, %._crit_edge ], [ %i.ci, %._crit_edge49 ], [ -11, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  ret i32 %.041
}

; Function Attrs: cold nounwind optsize uwtable
define internal noundef i32 @fbdev_read_close(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 296
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !47
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 240
  %i.f = load i32, ptr %i.e, align 8, !tbaa !46
  %i.g = zext i32 %i.f to i64
  %i.h = tail call i32 @munmap(ptr noundef %i.d, i64 noundef %i.g) #7 ; 0 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.j = load i32, ptr %i.i, align 8, !tbaa !29
  %i.k = tail call i32 @close(i32 noundef %i.j) #7 ; 0 uses
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal i32 @fbdev_get_device_list(ptr nofree readnone captures(none) %0, ptr noundef %1) #1 {
bb.a:
  %i.a = tail call i32 @ff_fbdev_get_device_list(ptr noundef %1) #7
  ret i32 %i.a
}

declare ptr @av_default_item_name(ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

declare ptr @avformat_new_stream(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @avpriv_set_pts_info(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @ff_fbdev_default_device() local_unnamed_addr #2

declare i32 @avpriv_open(ptr noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #4

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nounwind
declare i32 @ioctl(i32 noundef, i64 noundef, ...) local_unnamed_addr #6

declare i32 @ff_get_pixfmt_from_fb_varinfo(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare ptr @mmap64(ptr noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

declare ptr @av_get_pix_fmt_name(i32 noundef) local_unnamed_addr #2

declare i32 @close(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

declare i32 @av_strerror(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i64 @av_gettime_relative() local_unnamed_addr #2

declare i32 @nanosleep(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @av_new_packet(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i64 @av_gettime() local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @munmap(ptr noundef, i64 noundef) local_unnamed_addr #6

declare i32 @ff_fbdev_get_device_list(ptr noundef) local_unnamed_addr #2

attributes #0 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }
attributes #8 = { nounwind willreturn memory(none) }

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
!26 = !{!10, !6, i64 128}
!27 = !{!10, !20, i64 88}
!28 = !{!7, !7, i64 0}
!29 = !{!30, !6, i64 32}
!30 = !{!"FBDevContext", !11, i64 0, !6, i64 8, !31, i64 12, !21, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !6, i64 48, !32, i64 52, !34, i64 216, !20, i64 296}
!31 = !{!"AVRational", !6, i64 0, !6, i64 4}
!32 = !{!"fb_var_screeninfo", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !33, i64 32, !33, i64 44, !33, i64 56, !33, i64 68, !6, i64 80, !6, i64 84, !6, i64 88, !6, i64 92, !6, i64 96, !6, i64 100, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !6, i64 128, !6, i64 132, !6, i64 136, !6, i64 140, !7, i64 144}
!33 = !{!"fb_bitfield", !6, i64 0, !6, i64 4, !6, i64 8}
!34 = !{!"fb_fix_screeninfo", !7, i64 0, !21, i64 16, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !35, i64 40, !35, i64 42, !35, i64 44, !6, i64 48, !21, i64 56, !6, i64 64, !6, i64 68, !35, i64 72, !7, i64 74}
!35 = !{!"short", !7, i64 0}
!36 = !{!6, !6, i64 0}
!37 = !{!30, !6, i64 52}
!38 = !{!30, !6, i64 36}
!39 = !{!30, !6, i64 56}
!40 = !{!30, !6, i64 40}
!41 = !{!30, !6, i64 76}
!42 = !{!30, !6, i64 48}
!43 = !{!30, !6, i64 44}
!44 = !{!30, !6, i64 8}
!45 = !{!30, !21, i64 24}
!46 = !{!30, !6, i64 240}
!47 = !{!30, !20, i64 296}
!48 = !{!49, !50, i64 16}
!49 = !{!"AVStream", !11, i64 0, !6, i64 8, !6, i64 12, !50, i64 16, !12, i64 24, !31, i64 32, !21, i64 40, !21, i64 48, !21, i64 56, !6, i64 64, !6, i64 68, !31, i64 72, !23, i64 80, !31, i64 88, !51, i64 96, !6, i64 200, !31, i64 204, !6, i64 212}
!50 = !{!"p1 _ZTS17AVCodecParameters", !12, i64 0}
!51 = !{!"AVPacket", !52, i64 0, !21, i64 8, !21, i64 16, !20, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !53, i64 48, !6, i64 56, !21, i64 64, !21, i64 72, !12, i64 80, !52, i64 88, !31, i64 96}
!52 = !{!"p1 _ZTS11AVBufferRef", !12, i64 0}
!53 = !{!"p1 _ZTS16AVPacketSideData", !12, i64 0}
!54 = !{!55, !6, i64 44}
!55 = !{!"AVCodecParameters", !6, i64 0, !6, i64 4, !6, i64 8, !20, i64 16, !6, i64 24, !53, i64 32, !6, i64 40, !6, i64 44, !21, i64 48, !6, i64 56, !6, i64 60, !6, i64 64, !6, i64 68, !6, i64 72, !6, i64 76, !31, i64 80, !31, i64 88, !6, i64 96, !6, i64 100, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !56, i64 128, !6, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !6, i64 168, !6, i64 172, !6, i64 176}
!56 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !7, i64 8, !12, i64 16}
!57 = !{!55, !21, i64 48}
!58 = !{!30, !6, i64 12}
!59 = !{!30, !6, i64 16}
!60 = !{!61, !21, i64 0}
!61 = !{!"timespec", !21, i64 0, !21, i64 8}
!62 = !{!61, !21, i64 8}
!63 = distinct !{!63, !64}
!64 = !{!"llvm.loop.mustprogress"}
!65 = !{!51, !21, i64 8}
!66 = !{!51, !20, i64 24}
!67 = !{!30, !6, i64 68}
!68 = !{!30, !6, i64 264}
!69 = !{!30, !6, i64 72}
!70 = distinct !{!70, !64}
end_hunk_0
