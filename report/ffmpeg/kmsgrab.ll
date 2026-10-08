Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/kmsgrab?download=true
inline.NumInlined: 2
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%union.anon = type { i64 }
%struct.anon = type { i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"kmsgrab\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"KMS screen capture\00", align 1
@ff_kmsgrab_demuxer = local_unnamed_addr constant { { ptr, ptr, i32, [4 x i8], ptr, ptr, ptr, ptr }, i32, i32, i32, [4 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr } { { ptr, ptr, i32, [4 x i8], ptr, ptr, ptr, ptr } { ptr @.str, ptr @.str.1, i32 1, [4 x i8] zeroinitializer, ptr null, ptr null, ptr @kmsgrab_class, ptr null }, i32 0, i32 136, i32 0, [4 x i8] zeroinitializer, ptr null, ptr @kmsgrab_read_header, ptr @kmsgrab_read_packet, ptr @kmsgrab_read_close, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8
@.str.2 = private unnamed_addr constant [14 x i8] c"kmsgrab indev\00", align 1
@kmsgrab_class = internal constant { ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str.2, ptr @av_default_item_name, ptr @options, i32 3998052, i32 0, i32 0, i32 41, ptr null, ptr null, ptr null, ptr null, i32 0, [4 x i8] zeroinitializer }, align 8
@.str.4 = private unnamed_addr constant [7 x i8] c"device\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"DRM device path\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"/dev/dri/card0\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"format\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"Pixel format for framebuffer\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"format_modifier\00", align 1
@.str.10 = private unnamed_addr constant [36 x i8] c"DRM format modifier for framebuffer\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"crtc_id\00", align 1
@.str.12 = private unnamed_addr constant [33 x i8] c"CRTC ID to define capture source\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"plane_id\00", align 1
@.str.14 = private unnamed_addr constant [34 x i8] c"Plane ID to define capture source\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"framerate\00", align 1
@.str.16 = private unnamed_addr constant [24 x i8] c"Framerate to capture at\00", align 1
@options = internal constant <{ { ptr, ptr, i32, i32, { ptr }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon, double, double, i32, [4 x i8], ptr } }> <{ { ptr, ptr, i32, i32, { ptr }, double, double, i32, [4 x i8], ptr } { ptr @.str.4, ptr @.str.5, i32 88, i32 6, { ptr } { ptr @.str.6 }, double 0.000000e+00, double 0.000000e+00, i32 2, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon, double, double, i32, [4 x i8], ptr } { ptr @.str.7, ptr @.str.8, i32 96, i32 13, %union.anon { i64 -1 }, double -1.000000e+00, double f0x41DFFFFFFFC00000, i32 2, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon, double, double, i32, [4 x i8], ptr } { ptr @.str.9, ptr @.str.10, i32 104, i32 3, %union.anon { i64 72057594037927935 }, double 0.000000e+00, double f0x43E0000000000000, i32 2, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon, double, double, i32, [4 x i8], ptr } { ptr @.str.11, ptr @.str.12, i32 120, i32 3, %union.anon zeroinitializer, double 0.000000e+00, double f0x41EFFFFFFFE00000, i32 2, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon, double, double, i32, [4 x i8], ptr } { ptr @.str.13, ptr @.str.14, i32 112, i32 3, %union.anon zeroinitializer, double 0.000000e+00, double f0x41EFFFFFFFE00000, i32 2, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, { double }, double, double, i32, [4 x i8], ptr } { ptr @.str.15, ptr @.str.16, i32 128, i32 7, { double } { double 3.000000e+01 }, double 0.000000e+00, double 1.000000e+03, i32 2, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon, double, double, i32, [4 x i8], ptr } zeroinitializer }>, align 16
@.str.18 = private unnamed_addr constant [28 x i8] c"Failed to open DRM device.\0A\00", align 1
@.str.19 = private unnamed_addr constant [79 x i8] c"Failed to set universal planes capability: primary planes will not be usable.\0A\00", align 1
@.str.20 = private unnamed_addr constant [30 x i8] c"Failed to get plane %ld: %s.\0A\00", align 1
@.str.21 = private unnamed_addr constant [50 x i8] c"Plane %ld does not have an attached framebuffer.\0A\00", align 1
@.str.22 = private unnamed_addr constant [36 x i8] c"Failed to get plane resources: %s.\0A\00", align 1
@.str.23 = private unnamed_addr constant [29 x i8] c"Failed to get plane %u: %s.\0A\00", align 1
@.str.24 = private unnamed_addr constant [26 x i8] c"Plane %u: CRTC %u FB %u.\0A\00", align 1
@.str.25 = private unnamed_addr constant [37 x i8] c"No usable planes found on CRTC %ld.\0A\00", align 1
@.str.26 = private unnamed_addr constant [25 x i8] c"No usable planes found.\0A\00", align 1
@.str.27 = private unnamed_addr constant [40 x i8] c"Using plane %u to locate framebuffers.\0A\00", align 1
@.str.28 = private unnamed_addr constant [54 x i8] c"GETFB2 not supported, will try to use GETFB instead.\0A\00", align 1
@.str.29 = private unnamed_addr constant [35 x i8] c"Failed to get framebuffer %u: %s.\0A\00", align 1
@.str.30 = private unnamed_addr constant [68 x i8] c"Template framebuffer is %u: %ux%u format %x modifier %lx flags %x.\0A\00", align 1
@.str.31 = private unnamed_addr constant [76 x i8] c"No handle set on framebuffer: maybe you need some additional capabilities?\0A\00", align 1
@kmsgrab_formats = internal unnamed_addr constant [28 x %struct.anon] [%struct.anon { i32 8, i32 538982482 }, %struct.anon { i32 30, i32 540422482 }, %struct.anon { i32 29, i32 -1607061166 }, %struct.anon { i32 17, i32 944916290 }, %struct.anon { i32 39, i32 892424792 }, %struct.anon { i32 38, i32 -1255058856 }, %struct.anon { i32 43, i32 892420696 }, %struct.anon { i32 42, i32 -1255062952 }, %struct.anon { i32 37, i32 909199186 }, %struct.anon { i32 36, i32 -1238284462 }, %struct.anon { i32 41, i32 909199170 }, %struct.anon { i32 40, i32 -1238284478 }, %struct.anon { i32 2, i32 875710290 }, %struct.anon { i32 3, i32 875710274 }, %struct.anon { i32 118, i32 875714626 }, %struct.anon { i32 120, i32 875714642 }, %struct.anon { i32 119, i32 875709016 }, %struct.anon { i32 121, i32 875713112 }, %struct.anon { i32 25, i32 875708738 }, %struct.anon { i32 27, i32 875708754 }, %struct.anon { i32 26, i32 875708993 }, %struct.anon { i32 28, i32 875713089 }, %struct.anon { i32 193, i32 808669784 }, %struct.anon { i32 194, i32 -1338813864 }, %struct.anon { i32 23, i32 842094158 }, %struct.anon { i32 1, i32 1448695129 }, %struct.anon { i32 108, i32 1431918169 }, %struct.anon { i32 15, i32 1498831189 }], align 16
@.str.32 = private unnamed_addr constant [61 x i8] c"Framebuffer pixel format %x does not match expected format.\0A\00", align 1
@.str.33 = private unnamed_addr constant [62 x i8] c"Framebuffer pixel format %x is not a known supported format.\0A\00", align 1
@.str.34 = private unnamed_addr constant [67 x i8] c"Framebuffer format modifier %lx does not match expected modifier.\0A\00", align 1
@.str.35 = private unnamed_addr constant [48 x i8] c"Format is %s, from DRM format %x modifier %lx.\0A\00", align 1
@.str.36 = private unnamed_addr constant [24 x i8] c"Unsupported format %s.\0A\00", align 1
@.str.37 = private unnamed_addr constant [52 x i8] c"Template framebuffer is %u: %ux%u %ubpp %ub depth.\0A\00", align 1
@.str.38 = private unnamed_addr constant [51 x i8] c"Failed to initialise hardware frames context: %d.\0A\00", align 1
@.str.39 = private unnamed_addr constant [51 x i8] c"Plane %u no longer has an associated framebuffer.\0A\00", align 1
@.str.40 = private unnamed_addr constant [46 x i8] c"Plane %u framebuffer format changed: now %x.\0A\00", align 1
@.str.41 = private unnamed_addr constant [53 x i8] c"Plane %u framebuffer dimensions changed: now %ux%u.\0A\00", align 1
@.str.42 = private unnamed_addr constant [31 x i8] c"No handle set on framebuffer.\0A\00", align 1
@.str.43 = private unnamed_addr constant [53 x i8] c"Failed to get PRIME fd from framebuffer handle: %s.\0A\00", align 1

; Function Attrs: cold nounwind optsize uwtable
define internal i32 @kmsgrab_read_header(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25   ; 27 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !67
  %i.f = tail call i32 @av_hwdevice_ctx_create(ptr noundef nonnull %i.c, i32 noundef 8, ptr noundef %i.e, ptr noundef null, i32 noundef 0) #7 ; 2 uses
  %i.g = icmp slt i32 %i.f, 0
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.18) #7
  br label %bb.ax

bb.c:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !68
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !71   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.j, ptr %i.k, align 8, !tbaa !72
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !74   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 5 uses
  store ptr %i.m, ptr %i.n, align 8, !tbaa !32
  %i.o = load i32, ptr %i.m, align 4, !tbaa !34
  %i.p = tail call i32 @drmSetClientCap(i32 noundef %i.o, i64 noundef 2, i64 noundef 1) #7
  %i.q = icmp slt i32 %i.p, 0
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 24, ptr noundef nonnull @.str.19) #7
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 112 ; 3 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !75   ; 2 uses
  %i.t = icmp sgt i64 %i.s, 0
  %i.u = load ptr, ptr %i.n, align 8, !tbaa !32
  %i.v = load i32, ptr %i.u, align 4, !tbaa !34   ; 2 uses
  br i1 %i.t, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.w = trunc i64 %i.s to i32
  %i.x = tail call ptr @drmModeGetPlane(i32 noundef %i.v, i32 noundef %i.w) #7 ; 4 uses
  %.not212 = icmp eq ptr %i.x, null
  br i1 %.not212, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.y = tail call ptr @__errno_location() #8
  %i.z = load i32, ptr %i.y, align 4, !tbaa !35   ; 2 uses
  %i.aa = load i64, ptr %i.r, align 8, !tbaa !75
  %i.ab = tail call ptr @strerror(i32 noundef %i.z) #7
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.20, i64 noundef %i.aa, ptr noundef %i.ab) #7
  %i.ac = sub nsw i32 0, %i.z
  br label %bb.aw

bb.h:                                             ; preds = %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !38 ; 2 uses
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %bb.i, label %bb.v

bb.i:                                             ; preds = %bb.h
  %i.ag = load i64, ptr %i.r, align 8, !tbaa !75
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.21, i64 noundef %i.ag) #7
  br label %bb.aw

bb.j:                                             ; preds = %bb.e
  %i.ah = tail call ptr @drmModeGetPlaneResources(i32 noundef %i.v) #7 ; 8 uses
  %.not = icmp eq ptr %i.ah, null
  br i1 %.not, label %bb.k, label %.preheader226

.preheader226:                                    ; preds = %bb.j
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !77
  %.not239 = icmp eq i32 %i.ai, 0
  br i1 %.not239, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader226
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  br label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.al = tail call ptr @__errno_location() #8
  %i.am = load i32, ptr %i.al, align 4, !tbaa !35 ; 2 uses
  %i.an = tail call ptr @strerror(i32 noundef %i.am) #7
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.22, ptr noundef %i.an) #7
  %i.ao = sub nsw i32 0, %i.am
  br label %bb.aw

bb.l:                                             ; preds = %.lr.ph, %bb.r
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.r ] ; 4 uses
  %i.ap = load ptr, ptr %i.n, align 8, !tbaa !32
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !34
  %i.ar = load ptr, ptr %i.aj, align 8, !tbaa !78
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %indvars.iv
  %i.at = load i32, ptr %i.as, align 4, !tbaa !35
  %i.au = tail call ptr @drmModeGetPlane(i32 noundef %i.aq, i32 noundef %i.at) #7 ; 6 uses
  %.not210 = icmp eq ptr %i.au, null
  br i1 %.not210, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.av = tail call ptr @__errno_location() #8
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !35
  %i.ax = load ptr, ptr %i.aj, align 8, !tbaa !78
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %indvars.iv
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !35
  %i.ba = tail call ptr @strerror(i32 noundef %i.aw) #7
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 40, ptr noundef nonnull @.str.23, i32 noundef %i.az, ptr noundef %i.ba) #7
  br label %bb.r

bb.n:                                             ; preds = %bb.l
  %i.bb = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !79
  %i.bd = getelementptr inbounds nuw i8, ptr %i.au, i64 20 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !80
  %i.bf = getelementptr inbounds nuw i8, ptr %i.au, i64 24 ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !38
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 48, ptr noundef nonnull @.str.24, i32 noundef %i.bc, i32 noundef %i.be, i32 noundef %i.bg) #7
  %i.bh = load i64, ptr %i.ak, align 8, !tbaa !81 ; 2 uses
  %i.bi = icmp sgt i64 %i.bh, 0
  br i1 %i.bi, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bj = load i32, ptr %i.bd, align 4, !tbaa !80
  %i.bk = zext i32 %i.bj to i64
  %.not211 = icmp eq i64 %i.bh, %i.bk
  br i1 %.not211, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.bl = load i32, ptr %i.bf, align 8, !tbaa !38
  %i.bm = icmp eq i32 %i.bl, 0
  br i1 %i.bm, label %bb.q, label %.._crit_edge.loopexit_crit_edge

.._crit_edge.loopexit_crit_edge:                  ; preds = %bb.p
  %.pre.pre = load i32, ptr %i.ah, align 8, !tbaa !77
  br label %._crit_edge

bb.q:                                             ; preds = %bb.p, %bb.o
  tail call void @drmModeFreePlane(ptr noundef nonnull %i.au) #7
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.m
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.bn = load i32, ptr %i.ah, align 8, !tbaa !77 ; 2 uses
  %i.bo = zext i32 %i.bn to i64
  %i.bp = icmp samesign ult i64 %indvars.iv.next, %i.bo
  br i1 %i.bp, label %bb.l, label %._crit_edge, !llvm.loop !64

._crit_edge:                                      ; preds = %bb.r, %.._crit_edge.loopexit_crit_edge
  %.pre = phi i32 [ %.pre.pre, %.._crit_edge.loopexit_crit_edge ], [ %i.bn, %bb.r ]
  %.0180.lcssa.ph.in = phi i64 [ %indvars.iv, %.._crit_edge.loopexit_crit_edge ], [ %indvars.iv.next, %bb.r ]
  %.2.ph = phi ptr [ %i.au, %.._crit_edge.loopexit_crit_edge ], [ null, %bb.r ] ; 4 uses
  %.0180.lcssa.ph = trunc nuw i64 %.0180.lcssa.ph.in to i32
  %i.bq = icmp eq i32 %.pre, %.0180.lcssa.ph
  br i1 %i.bq, label %._crit_edge.thread, label %bb.u

._crit_edge.thread:                               ; preds = %.preheader226, %._crit_edge
  %.2283 = phi ptr [ %.2.ph, %._crit_edge ], [ null, %.preheader226 ] ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !81 ; 2 uses
  %i.bt = icmp sgt i64 %i.bs, 0
  br i1 %i.bt, label %bb.s, label %bb.t

bb.s:                                             ; preds = %._crit_edge.thread
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.25, i64 noundef %i.bs) #7
  br label %bb.aw

bb.t:                                             ; preds = %._crit_edge.thread
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.26) #7
  br label %bb.aw

bb.u:                                             ; preds = %._crit_edge
  %i.bu = getelementptr inbounds nuw i8, ptr %.2.ph, i64 16
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !79
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 32, ptr noundef nonnull @.str.27, i32 noundef %i.bv) #7
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.2.ph, i64 24
  %.pre254.a = load i32, ptr %.phi.trans.insert, align 8, !tbaa !38
  br label %bb.v

bb.v:                                             ; preds = %bb.h, %bb.u
  %i.bw = phi i32 [ %i.ae, %bb.h ], [ %.pre254.a, %bb.u ]
  %.3 = phi ptr [ %i.x, %bb.h ], [ %.2.ph, %bb.u ] ; 13 uses
  %.0177 = phi ptr [ null, %bb.h ], [ %i.ah, %bb.u ] ; 11 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.3, i64 16
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !79
  %i.bz = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i32 %i.by, ptr %i.bz, align 8, !tbaa !40
  %i.ca = load ptr, ptr %i.n, align 8, !tbaa !32
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !34
  %i.cc = getelementptr inbounds nuw i8, ptr %.3, i64 24 ; 3 uses
  %i.cd = tail call ptr @drmModeGetFB2(i32 noundef %i.cb, i32 noundef %i.bw) #7 ; 18 uses
  %.not213 = icmp eq ptr %i.cd, null
  br i1 %.not213, label %bb.w, label %.critedge

bb.w:                                             ; preds = %bb.v
  %i.ce = tail call ptr @__errno_location() #8
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !35 ; 3 uses
  %i.cg = icmp eq i32 %i.cf, 38
  br i1 %i.cg, label %bb.ag, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ch = load i32, ptr %i.cc, align 8, !tbaa !38
  %i.ci = tail call ptr @strerror(i32 noundef %i.cf) #7
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.29, i32 noundef %i.ch, ptr noundef %i.ci) #7
  %i.cj = sub nsw i32 0, %i.cf
  br label %bb.aw

.critedge:                                        ; preds = %bb.v
  %i.ck = load i32, ptr %i.cd, align 8, !tbaa !82
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cd, i64 4 ; 2 uses
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !42
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !43
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cd, i64 12 ; 2 uses
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !44
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cd, i64 16 ; 2 uses
  %i.cs = load i64, ptr %i.cr, align 8, !tbaa !45
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cd, i64 24 ; 2 uses
  %i.cu = load i32, ptr %i.ct, align 8, !tbaa !46
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 32, ptr noundef nonnull @.str.30, i32 noundef %i.ck, i32 noundef %i.cm, i32 noundef %i.co, i32 noundef %i.cq, i64 noundef %i.cs, i32 noundef %i.cu) #7
  %i.cv = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.cw = load <2 x i32>, ptr %i.cl, align 4, !tbaa !35
  store <2 x i32> %i.cw, ptr %i.cv, align 8, !tbaa !35
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cd, i64 28
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !35
  %.not214 = icmp eq i32 %i.cy, 0
  br i1 %.not214, label %bb.y, label %.preheader

.preheader:                                       ; preds = %.critedge
  %i.cz = load i32, ptr %i.cp, align 4, !tbaa !44 ; 4 uses
  br label %bb.z

bb.y:                                             ; preds = %.critedge
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.31) #7
  br label %bb.aw

bb.z:                                             ; preds = %.preheader, %2
  %indvars.iv245 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next246, %2 ] ; 2 uses
  %i.da = getelementptr inbounds nuw [8 x i8], ptr @kmsgrab_formats, i64 %indvars.iv245 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 4
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !84
  %i.dd = icmp eq i32 %i.dc, %i.cz
  br i1 %i.dd, label %bb.aa, label %2

bb.aa:                                            ; preds = %bb.z
  %i.de = getelementptr inbounds nuw i8, ptr %i.b, i64 96 ; 2 uses
  %i.df = load i32, ptr %i.de, align 8, !tbaa !85 ; 2 uses
  %.not215 = icmp eq i32 %i.df, -1
  %.pre256.a = load i32, ptr %i.da, align 8, !tbaa !86 ; 2 uses
  %.not216 = icmp eq i32 %i.df, %.pre256.a
  %or.cond = select i1 %.not215, i1 true, i1 %.not216
  br i1 %or.cond, label %bb.ac, label %1

1:                                                ; preds = %bb.aa
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.32, i32 noundef %i.cz) #7
  br label %bb.aw

2:                                                ; preds = %bb.z
  %indvars.iv.next246 = add nuw nsw i64 %indvars.iv245, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next246, 28
  br i1 %exitcond.not, label %bb.ab, label %bb.z, !llvm.loop !65

bb.ab:                                            ; preds = %2
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.33, i32 noundef %i.cz) #7
  br label %bb.aw

bb.ac:                                            ; preds = %bb.aa
  %i.dg = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  store i32 %i.cz, ptr %i.dg, align 4, !tbaa !47
  store i32 %.pre256.a, ptr %i.de, align 8, !tbaa !85
  %i.dh = load i32, ptr %i.ct, align 8, !tbaa !46
  %i.di = and i32 %i.dh, 2
  %.not217 = icmp eq i32 %i.di, 0
  br i1 %.not217, label %.thread284, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dj = getelementptr inbounds nuw i8, ptr %i.b, i64 104 ; 2 uses
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !48 ; 2 uses
  %.not218 = icmp eq i64 %i.dk, 72057594037927935
  %.pre257 = load i64, ptr %i.cr, align 8, !tbaa !45 ; 3 uses
  %.not219 = icmp eq i64 %i.dk, %.pre257
  %or.cond293 = select i1 %.not218, i1 true, i1 %.not219
  br i1 %or.cond293, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.34, i64 noundef %.pre257) #7
  br label %bb.aw

bb.af:                                            ; preds = %bb.ad
  store i64 %.pre257, ptr %i.dj, align 8, !tbaa !48
  br label %.thread284

.thread284:                                       ; preds = %bb.ac, %bb.af
  %3 = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %4 = load i32, ptr %3, align 8, !tbaa !85
  %i.dl = tail call ptr @av_get_pix_fmt_name(i32 noundef %4) #7
  %5 = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  %i.dm = load i32, ptr %5, align 4, !tbaa !47
  %i.dn = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !48
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 40, ptr noundef nonnull @.str.35, ptr noundef %i.dl, i32 noundef %i.dm, i64 noundef %i.do) #7
  %i.dp = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i32 1, ptr %i.dp, align 8, !tbaa !49
  br label %bb.ar

bb.ag:                                            ; preds = %bb.w
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 32, ptr noundef nonnull @.str.28) #7
  %.phi.trans.insert258 = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.pre259 = load i32, ptr %.phi.trans.insert258, align 8, !tbaa !49
  %i.dq = icmp eq i32 %.pre259, 0
  br i1 %i.dq, label %bb.ah, label %bb.ar

bb.ah:                                            ; preds = %bb.ag
  %i.dr = getelementptr inbounds nuw i8, ptr %i.b, i64 96 ; 2 uses
  %i.ds = load i32, ptr %i.dr, align 8, !tbaa !85 ; 2 uses
  %i.dt = icmp eq i32 %i.ds, -1
  br i1 %i.dt, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  store i32 121, ptr %i.dr, align 8, !tbaa !85
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.du = phi i32 [ 121, %bb.ai ], [ %i.ds, %bb.ah ] ; 2 uses
  br label %bb.al

bb.ak:                                            ; preds = %bb.al
  %indvars.iv.next250 = add nuw nsw i64 %indvars.iv249, 1 ; 2 uses
  %exitcond253.not = icmp eq i64 %indvars.iv.next250, 28
  br i1 %exitcond253.not, label %bb.am, label %bb.al, !llvm.loop !66

bb.al:                                            ; preds = %bb.aj, %bb.ak
  %indvars.iv249 = phi i64 [ 0, %bb.aj ], [ %indvars.iv.next250, %bb.ak ] ; 3 uses
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr @kmsgrab_formats, i64 %indvars.iv249
  %i.dw = load i32, ptr %i.dv, align 8, !tbaa !86
  %i.dx = icmp eq i32 %i.dw, %i.du
  br i1 %i.dx, label %bb.an, label %bb.ak

bb.am:                                            ; preds = %bb.ak
  %i.dy = tail call ptr @av_get_pix_fmt_name(i32 noundef %i.du) #7
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.36, ptr noundef %i.dy) #7
  br label %bb.ax

bb.an:                                            ; preds = %bb.al
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr @kmsgrab_formats, i64 %indvars.iv249
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 4
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !84
  %i.ec = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  store i32 %i.eb, ptr %i.ec, align 4, !tbaa !47
  %i.ed = load ptr, ptr %i.n, align 8, !tbaa !32
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !34
  %i.ef = load i32, ptr %i.cc, align 8, !tbaa !38
  %i.eg = tail call ptr @drmModeGetFB(i32 noundef %i.ee, i32 noundef %i.ef) #7 ; 9 uses
  %.not221 = icmp eq ptr %i.eg, null
  br i1 %.not221, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.eh = tail call ptr @__errno_location() #8
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !35 ; 2 uses
  %i.ej = load i32, ptr %i.cc, align 8, !tbaa !38
  %i.ek = tail call ptr @strerror(i32 noundef %i.ei) #7
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.29, i32 noundef %i.ej, ptr noundef %i.ek) #7
  %i.el = sub nsw i32 0, %i.ei
  br label %bb.aw

bb.ap:                                            ; preds = %bb.an
  %i.em = load i32, ptr %i.eg, align 4, !tbaa !87
  %i.en = getelementptr inbounds nuw i8, ptr %i.eg, i64 4 ; 2 uses
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !51
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !52
  %i.er = getelementptr inbounds nuw i8, ptr %i.eg, i64 16
  %i.es = load i32, ptr %i.er, align 4, !tbaa !88
  %i.et = getelementptr inbounds nuw i8, ptr %i.eg, i64 20
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !89
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 32, ptr noundef nonnull @.str.37, i32 noundef %i.em, i32 noundef %i.eo, i32 noundef %i.eq, i32 noundef %i.es, i32 noundef %i.eu) #7
  %i.ev = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.ew = load <2 x i32>, ptr %i.en, align 4, !tbaa !35
  store <2 x i32> %i.ew, ptr %i.ev, align 8, !tbaa !35
  %i.ex = getelementptr inbounds nuw i8, ptr %i.eg, i64 24
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !53
  %.not222 = icmp eq i32 %i.ey, 0
  br i1 %.not222, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.31) #7
  br label %bb.aw

bb.ar:                                            ; preds = %.thread284, %bb.ap, %bb.ag
  %.0185 = phi ptr [ null, %bb.ag ], [ %i.eg, %bb.ap ], [ null, %.thread284 ] ; 4 uses
  %i.ez = tail call ptr @avformat_new_stream(ptr noundef %0, ptr noundef null) #7 ; 3 uses
  %.not223 = icmp eq ptr %i.ez, null
  br i1 %.not223, label %bb.aw, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 16
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !92 ; 3 uses
  store <2 x i32> <i32 0, i32 135169>, ptr %i.fb, align 8, !tbaa !35
  %i.fc = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fb, i64 72
  %i.fe = load <2 x i32>, ptr %i.fc, align 8, !tbaa !35
  store <2 x i32> %i.fe, ptr %i.fd, align 8, !tbaa !35
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fb, i64 44
  store i32 178, ptr %i.ff, align 4, !tbaa !94
  tail call void @avpriv_set_pts_info(ptr noundef nonnull %i.ez, i32 noundef 64, i32 noundef 1, i32 noundef 1000000) #7
  %i.fg = load ptr, ptr %i.c, align 8, !tbaa !68
  %i.fh = tail call ptr @av_hwframe_ctx_alloc(ptr noundef %i.fg) #7 ; 4 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr %i.fh, ptr %i.fi, align 8, !tbaa !57
  %.not224 = icmp eq ptr %i.fh, null
  br i1 %.not224, label %bb.aw, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !71 ; 4 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store ptr %i.fk, ptr %i.fl, align 8, !tbaa !95
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fk, i64 60
  store i32 178, ptr %i.fm, align 4, !tbaa !98
  %i.fn = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.fo = load i32, ptr %i.fn, align 8, !tbaa !85
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fk, i64 64
  store i32 %i.fo, ptr %i.fp, align 8, !tbaa !99
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fk, i64 68
  %i.fr = load <2 x i32>, ptr %i.fc, align 8, !tbaa !35
  store <2 x i32> %i.fr, ptr %i.fq, align 4, !tbaa !35
  %i.fs = tail call i32 @av_hwframe_ctx_init(ptr noundef nonnull %i.fh) #7 ; 3 uses
  %i.ft = icmp slt i32 %i.fs, 0
  br i1 %i.ft, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.38, i32 noundef %i.fs) #7
  br label %bb.aw

bb.av:                                            ; preds = %bb.at
  %i.fu = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  %i.fv = getelementptr inbounds nuw i8, ptr %i.b, i64 132
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !100
  %i.fx = load i32, ptr %i.fu, align 8, !tbaa !101
  %.sroa.22.0.insert.ext = zext i32 %i.fx to i64
  %.sroa.22.0.insert.shift = shl nuw i64 %.sroa.22.0.insert.ext, 32
  %.sroa.01.0.insert.ext = zext i32 %i.fw to i64
  %.sroa.01.0.insert.insert = or disjoint i64 %.sroa.22.0.insert.shift, %.sroa.01.0.insert.ext
  %i.fy = tail call i64 @av_rescale_q(i64 noundef 1, i64 %.sroa.01.0.insert.insert, i64 4294967296000001) #8
  %i.fz = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store i64 %i.fy, ptr %i.fz, align 8, !tbaa !58
  br label %bb.aw

bb.aw:                                            ; preds = %bb.as, %bb.ar, %bb.s, %bb.t, %bb.av, %bb.au, %bb.aq, %bb.ao, %bb.ae, %bb.ab, %1, %bb.y, %bb.x, %bb.k, %bb.i, %bb.g
  %.1186 = phi ptr [ null, %bb.i ], [ null, %1 ], [ null, %bb.ab ], [ null, %bb.ae ], [ %.0185, %bb.au ], [ %.0185, %bb.av ], [ %.0185, %bb.ar ], [ null, %bb.s ], [ %i.eg, %bb.aq ], [ null, %bb.ao ], [ null, %bb.y ], [ null, %bb.x ], [ null, %bb.g ], [ null, %bb.k ], [ null, %bb.t ], [ %.0185, %bb.as ]
  %.0184 = phi ptr [ null, %bb.i ], [ %i.cd, %1 ], [ %i.cd, %bb.ab ], [ %i.cd, %bb.ae ], [ %i.cd, %bb.au ], [ %i.cd, %bb.av ], [ %i.cd, %bb.ar ], [ null, %bb.s ], [ %i.cd, %bb.aq ], [ %i.cd, %bb.ao ], [ %i.cd, %bb.y ], [ null, %bb.x ], [ null, %bb.g ], [ null, %bb.k ], [ null, %bb.t ], [ %i.cd, %bb.as ]
  %.0183 = phi i32 [ -22, %bb.i ], [ -22, %1 ], [ -22, %bb.ab ], [ -22, %bb.ae ], [ %i.fs, %bb.au ], [ 0, %bb.av ], [ -12, %bb.ar ], [ -22, %bb.s ], [ -22, %bb.aq ], [ %i.el, %bb.ao ], [ -22, %bb.y ], [ %i.cj, %bb.x ], [ %i.ac, %bb.g ], [ %i.ao, %bb.k ], [ -22, %bb.t ], [ -12, %bb.as ]
  %.4 = phi ptr [ %i.x, %bb.i ], [ %.3, %1 ], [ %.3, %bb.ab ], [ %.3, %bb.ae ], [ %.3, %bb.au ], [ %.3, %bb.av ], [ %.3, %bb.ar ], [ %.2283, %bb.s ], [ %.3, %bb.aq ], [ %.3, %bb.ao ], [ %.3, %bb.y ], [ %.3, %bb.x ], [ null, %bb.g ], [ null, %bb.k ], [ %.2283, %bb.t ], [ %.3, %bb.as ]
  %.1 = phi ptr [ null, %bb.i ], [ %.0177, %1 ], [ %.0177, %bb.ab ], [ %.0177, %bb.ae ], [ %.0177, %bb.au ], [ %.0177, %bb.av ], [ %.0177, %bb.ar ], [ %i.ah, %bb.s ], [ %.0177, %bb.aq ], [ %.0177, %bb.ao ], [ %.0177, %bb.y ], [ %.0177, %bb.x ], [ null, %bb.g ], [ null, %bb.k ], [ %i.ah, %bb.t ], [ %.0177, %bb.as ]
  tail call void @drmModeFreePlaneResources(ptr noundef %.1) #7
  tail call void @drmModeFreePlane(ptr noundef %.4) #7
  tail call void @drmModeFreeFB(ptr noundef %.1186) #7
  tail call void @drmModeFreeFB2(ptr noundef %.0184) #7
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.am, %bb.b
  %.0 = phi i32 [ %i.f, %bb.b ], [ %.0183, %bb.aw ], [ -22, %bb.am ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 -2147483647, -2147483648) i32 @kmsgrab_read_packet(ptr noundef %0, ptr nofree noundef captures(none) %1) #1 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 17 uses
  %i.c = alloca ptr, align 8                      ; 6 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !25   ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  store ptr null, ptr %i.c, align 8, !tbaa !103
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  store ptr null, ptr %i.d, align 8, !tbaa !60
  %i.g = tail call i64 @av_gettime_relative() #7  ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 80 ; 3 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !104  ; 2 uses
  %.not = icmp eq i64 %i.i, 0
  br i1 %.not, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 72 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !58
  %i.l = sub i64 %i.i, %i.g
  %i.m = add i64 %i.l, %i.k                       ; 2 uses
  %i.n = icmp slt i64 %i.m, 1
  br i1 %i.n, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %i.o = phi i64 [ %i.v, %.lr.ph ], [ %i.m, %.preheader ]
  %i.p = trunc i64 %i.o to i32
  %i.q = tail call i32 @av_usleep(i32 noundef %i.p) #7 ; 0 uses
  %i.r = tail call i64 @av_gettime_relative() #7  ; 2 uses
  %i.s = load i64, ptr %i.h, align 8, !tbaa !104
  %i.t = load i64, ptr %i.j, align 8, !tbaa !58
  %i.u = sub i64 %i.s, %i.r
  %i.v = add i64 %i.u, %i.t                       ; 2 uses
  %i.w = icmp slt i64 %i.v, 1
  br i1 %i.w, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %.lr.ph, %.preheader, %bb.a
  %.141 = phi i64 [ %i.g, %bb.a ], [ %i.g, %.preheader ], [ %i.r, %.lr.ph ]
  store i64 %.141, ptr %i.h, align 8, !tbaa !104
  %i.x = tail call i64 @av_gettime() #7
  %i.y = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !32
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !34
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 56 ; 3 uses
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !40
  %i.ad = tail call ptr @drmModeGetPlane(i32 noundef %i.aa, i32 noundef %i.ac) #7 ; 9 uses
  %.not48 = icmp eq ptr %i.ad, null
  br i1 %.not48, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.loopexit
  %i.ae = tail call ptr @__errno_location() #8
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !35 ; 2 uses
  %i.ag = load i32, ptr %i.ab, align 8, !tbaa !40
  %i.ah = tail call ptr @strerror(i32 noundef %i.af) #7
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.23, i32 noundef %i.ag, ptr noundef %i.ah) #7
  %i.ai = sub nsw i32 0, %i.af
  br label %bb.aq

bb.c:                                             ; preds = %.loopexit
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 24 ; 5 uses
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !38
  %.not49 = icmp eq i32 %i.ak, 0
  br i1 %.not49, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.al = load i32, ptr %i.ab, align 8, !tbaa !40
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.39, i32 noundef %i.al) #7
  br label %bb.aq

bb.e:                                             ; preds = %bb.c
  %i.am = tail call noalias ptr @av_mallocz(i64 noundef 528) #7 ; 62 uses
  store ptr %i.am, ptr %i.c, align 8, !tbaa !103
  %.not50 = icmp eq ptr %i.am, null
  br i1 %.not50, label %bb.aq, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.an = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !49
  %.not51 = icmp eq i32 %i.ao, 0
  %i.ap = load ptr, ptr %i.e, align 8, !tbaa !25  ; 13 uses
  br i1 %.not51, label %bb.ac, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 104
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !48
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 24 ; 5 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !32
  %i.au = load i32, ptr %i.at, align 4, !tbaa !34
  %i.av = load i32, ptr %i.aj, align 8, !tbaa !38
  %i.aw = tail call ptr @drmModeGetFB2(i32 noundef %i.au, i32 noundef %i.av) #7 ; 19 uses
  %.not.i = icmp eq ptr %i.aw, null
  br i1 %.not.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ax = tail call ptr @__errno_location() #8
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !35 ; 2 uses
  %i.az = load i32, ptr %i.aj, align 8, !tbaa !38
  %i.ba = tail call ptr @strerror(i32 noundef %i.ay) #7
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.29, i32 noundef %i.az, ptr noundef %i.ba) #7
  %i.bb = sub nsw i32 0, %i.ay
  br label %kmsgrab_get_fb2.exit

bb.i:                                             ; preds = %bb.g
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aw, i64 12
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !44 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.ap, i64 60
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !47
  %.not115.i = icmp eq i32 %i.bd, %i.bf
  br i1 %.not115.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ap, i64 56
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !40
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.40, i32 noundef %i.bh, i32 noundef %i.bd) #7
  br label %bb.ab

bb.k:                                             ; preds = %bb.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.aw, i64 4
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !42 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ap, i64 64
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !105
  %.not116.i = icmp eq i32 %i.bj, %i.bl
  %i.bm = getelementptr inbounds nuw i8, ptr %i.aw, i64 8 ; 5 uses
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !43 ; 2 uses
  br i1 %.not116.i, label %bb.l, label %._crit_edge.i

bb.l:                                             ; preds = %bb.k
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ap, i64 68
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !106
  %.not117.i = icmp eq i32 %i.bn, %i.bp
  br i1 %.not117.i, label %bb.m, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.l, %bb.k
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ap, i64 56
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !40
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.41, i32 noundef %i.br, i32 noundef %i.bj, i32 noundef %i.bn) #7
  br label %bb.ab

bb.m:                                             ; preds = %bb.l
  %i.bs = getelementptr inbounds nuw i8, ptr %i.aw, i64 28 ; 5 uses
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !35
  %.not118.i = icmp eq i32 %i.bt, 0
  br i1 %.not118.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.42) #7
  br label %bb.ab

bb.o:                                             ; preds = %bb.m
  %i.bu = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !46
  %i.bw = and i32 %i.bv, 2
  %.not119.i = icmp eq i32 %i.bw, 0
  br i1 %.not119.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bx = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !45
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.0106.i = phi i64 [ %i.by, %bb.p ], [ %i.ar, %bb.o ] ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.am, i8 0, i64 104, i1 false)
  %.sroa.425.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.am, i64 116 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(412) %.sroa.425.0..sroa_idx.i, i8 0, i64 412, i1 false)
  %.sroa.222.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.am, i64 104
  store i32 1, ptr %.sroa.222.0..sroa_idx.i, align 8, !tbaa !35
  %.sroa.323.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.am, i64 108
  store i32 0, ptr %.sroa.323.0..sroa_idx.i, align 4
  %.sroa.324.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.am, i64 112
  store i32 %i.bd, ptr %.sroa.324.0..sroa_idx.i, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.aw, i64 60 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.aw, i64 44 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.am, i64 120 ; 3 uses
  %i.cd = load i32, ptr %i.bs, align 4, !tbaa !35 ; 2 uses
  %.not120.i = icmp eq i32 %i.cd, 0
  br i1 %.not120.i, label %.critedge.i, label %.critedge124.i

.critedge124.i:                                   ; preds = %bb.q
  %i.ce = load i32, ptr %i.bz, align 4, !tbaa !35
  %i.cf = load i32, ptr %i.bm, align 8, !tbaa !43
  %i.cg = load i32, ptr %i.ca, align 4, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  %i.ch = load ptr, ptr %i.as, align 8, !tbaa !32
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !34
end_hunk_0
