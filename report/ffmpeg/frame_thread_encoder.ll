Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/frame_thread_encoder?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [132 x i8] c"Forcing thread count to 1 for MJPEG encoding, use -thread_type slice or a constant quantizer if you want to use multiple cpu cores\0A\00", align 1
@.str.1 = private unnamed_addr constant [131 x i8] c"MJPEG CBR encoding works badly with frame multi-threading, consider using -threads 1, -thread_type slice or a constant quantizer.\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"context\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"non_deterministic\00", align 1
@.str.4 = private unnamed_addr constant [77 x i8] c"Forcing thread count to 1 for huffyuv encoding with first pass or context 1\0A\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"Assertion %s failed at %s:%d\0A\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"!avctx->internal->frame_thread_encoder\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"libavcodec/frame_thread_encoder.c\00", align 1
@thread_ctx_offsets = internal constant [7 x i32] [i32 96, i32 8, i32 2216, i32 0, i32 48, i32 2256, i32 0], align 16
@.str.8 = private unnamed_addr constant [46 x i8] c"!thread_avctx->internal->frame_thread_encoder\00", align 1
@.str.9 = private unnamed_addr constant [37 x i8] c"ff_frame_thread_encoder_init failed\0A\00", align 1

; Function Attrs: cold nounwind optsize uwtable
define i32 @ff_frame_thread_encoder_init(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 7 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store ptr null, ptr %i.a, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  store ptr null, ptr %i.b, align 8, !tbaa !51
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 660
  %i.e = load i32, ptr %i.d, align 4, !tbaa !52
  %i.f = and i32 %i.e, 1
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.ap, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !53
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load i32, ptr %i.i, align 8, !tbaa !56
  %i.k = and i32 %i.j, 4096
  %.not102 = icmp eq i32 %i.k, 0
  br i1 %.not102, label %bb.ap, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 656 ; 9 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !30   ; 2 uses
  %.not103 = icmp eq i32 %i.m, 0
  br i1 %.not103, label %bb.d, label %thread-pre-split

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load i32, ptr %i.n, align 8, !tbaa !57
  %i.p = icmp eq i32 %i.o, 7
  br i1 %i.p, label %bb.e, label %thread-pre-split.thread

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.r = load i32, ptr %i.q, align 8, !tbaa !58
  %i.s = and i32 %i.r, 2
  %.not104 = icmp eq i32 %i.s, 0
  br i1 %.not104, label %.thread, label %thread-pre-split.thread

.thread:                                          ; preds = %bb.e
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 48, ptr noundef nonnull @.str) #7
  store i32 1, ptr %i.l, align 8, !tbaa !30
  br label %thread-pre-split.thread

thread-pre-split:                                 ; preds = %bb.c
  %i.t = icmp sgt i32 %i.m, 1
  br i1 %i.t, label %bb.f, label %thread-pre-split.thread

bb.f:                                             ; preds = %thread-pre-split
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.v = load i32, ptr %i.u, align 8, !tbaa !57
  %i.w = icmp eq i32 %i.v, 7
  br i1 %i.w, label %bb.g, label %thread-pre-split.thread

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.y = load i32, ptr %i.x, align 8, !tbaa !58
  %i.z = and i32 %i.y, 2
  %.not105 = icmp eq i32 %i.z, 0
  br i1 %.not105, label %bb.h, label %thread-pre-split.thread

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 24, ptr noundef nonnull @.str.1) #7
  br label %thread-pre-split.thread

thread-pre-split.thread:                          ; preds = %bb.d, %bb.e, %.thread, %bb.h, %bb.g, %bb.f, %thread-pre-split
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !57
  switch i32 %i.ab, label %bb.l [
    i32 25, label %bb.i
    i32 67, label %bb.i
  ]

bb.i:                                             ; preds = %thread-pre-split.thread, %thread-pre-split.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !58
  %i.ae = and i32 %i.ad, 512
  %.not106 = icmp eq i32 %i.ae, 0
  br i1 %.not106, label %bb.j, label %.critedge126

bb.j:                                             ; preds = %bb.i
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !59
  %i.ah = call i32 @av_opt_get_int(ptr noundef %i.ag, ptr noundef nonnull @.str.2, i32 noundef 0, ptr noundef nonnull %i.c) #7
  %i.ai = icmp sgt i32 %i.ah, -1
  %i.aj = load i64, ptr %i.c, align 8
  %i.ak = icmp sgt i64 %i.aj, 0
  %or.cond = select i1 %i.ai, i1 %i.ak, i1 false
  br i1 %or.cond, label %bb.k, label %.critedge

bb.k:                                             ; preds = %bb.j
  %i.al = load ptr, ptr %i.af, align 8, !tbaa !59
  %i.am = call i32 @av_opt_get_int(ptr noundef %i.al, ptr noundef nonnull @.str.3, i32 noundef 0, ptr noundef nonnull %i.c) #7
  %i.an = icmp sgt i32 %i.am, -1
  %i.ao = load i64, ptr %i.c, align 8
  %.not107 = icmp ne i64 %i.ao, 0
  %i.ap = select i1 %i.an, i1 %.not107, i1 false
  br i1 %i.ap, label %.critedge, label %.critedge126

.critedge126:                                     ; preds = %bb.i, %bb.k
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 24, ptr noundef nonnull @.str.4) #7
  store i32 1, ptr %i.l, align 8, !tbaa !30
  br label %.critedge

.critedge:                                        ; preds = %bb.j, %.critedge126, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  br label %bb.l

bb.l:                                             ; preds = %thread-pre-split.thread, %.critedge
  %i.aq = load i32, ptr %i.l, align 8, !tbaa !30  ; 2 uses
  %.not109 = icmp eq i32 %i.aq, 0
  br i1 %.not109, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ar = call i32 @av_cpu_count() #7
  %spec.select = call i32 @llvm.smin.i32(i32 %i.ar, i32 64) ; 2 uses
  store i32 %spec.select, ptr %i.l, align 8, !tbaa !30
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.as = phi i32 [ %spec.select, %bb.m ], [ %i.aq, %bb.l ] ; 2 uses
  %i.at = icmp slt i32 %i.as, 2
  br i1 %i.at, label %bb.ap, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.au = icmp samesign ugt i32 %i.as, 64
  br i1 %i.au, label %bb.ap, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !31
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 80
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !38
  %.not110 = icmp eq ptr %i.ay, null
  br i1 %.not110, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 178) #7
  call void @abort() #8
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.az = call noalias ptr @av_mallocz(i64 noundef 2840) #7 ; 9 uses
  %i.ba = load ptr, ptr %i.av, align 8, !tbaa !31
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 80
  store ptr %i.az, ptr %i.bb, align 8, !tbaa !38
  %.not111 = icmp eq ptr %i.az, null
  br i1 %.not111, label %bb.ap, label %bb.s

bb.s:                                             ; preds = %bb.r
  store ptr %0, ptr %i.az, align 8, !tbaa !60
  %i.bc = call i32 @ff_pthread_init(ptr noundef nonnull %i.az, ptr noundef nonnull @thread_ctx_offsets) #7 ; 2 uses
  %i.bd = icmp slt i32 %i.bc, 0
  br i1 %i.bd, label %.thread127, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.be = getelementptr inbounds nuw i8, ptr %i.az, i64 2832
  store i32 0, ptr %i.be, align 8, !tbaa !61
  %i.bf = load i32, ptr %i.l, align 8, !tbaa !30
  %i.bg = add nsw i32 %i.bf, 2                    ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.az, i64 100 ; 2 uses
  store i32 %i.bg, ptr %i.bh, align 4, !tbaa !40
  %.not138 = icmp eq i32 %i.bg, 0
  br i1 %.not138, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.t
  %i.bi = getelementptr inbounds nuw i8, ptr %i.az, i64 104
  br label %bb.v

bb.u:                                             ; preds = %bb.w
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bj = load i32, ptr %i.bh, align 4, !tbaa !40
  %i.bk = zext i32 %i.bj to i64
  %i.bl = icmp samesign ult i64 %indvars.iv.next, %i.bk
  br i1 %i.bl, label %bb.v, label %._crit_edge, !llvm.loop !48

bb.v:                                             ; preds = %.lr.ph, %bb.u
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.u ] ; 2 uses
  %i.bm = call ptr @av_frame_alloc() #7           ; 2 uses
  %i.bn = getelementptr inbounds nuw [32 x i8], ptr %i.bi, i64 %indvars.iv ; 2 uses
  store ptr %i.bm, ptr %i.bn, align 8, !tbaa !43
  %.not112 = icmp eq ptr %i.bm, null
  br i1 %.not112, label %.thread127, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bo = call ptr @av_packet_alloc() #7          ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  store ptr %i.bo, ptr %i.bp, align 8, !tbaa !44
  %.not113 = icmp eq ptr %i.bo, null
  br i1 %.not113, label %.thread127, label %bb.u

._crit_edge:                                      ; preds = %bb.u, %bb.t
  %i.bq = call ptr @avcodec_parameters_alloc() #7 ; 3 uses
  store ptr %i.bq, ptr %i.b, align 8, !tbaa !51
  %.not114 = icmp eq ptr %i.bq, null
  br i1 %.not114, label %.thread127, label %bb.x

bb.x:                                             ; preds = %._crit_edge
  %i.br = call i32 @avcodec_parameters_from_context(ptr noundef nonnull %i.bq, ptr noundef %0) #7 ; 2 uses
  %i.bs = icmp slt i32 %i.br, 0
  br i1 %i.bs, label %.thread127, label %.preheader

.preheader:                                       ; preds = %bb.x
  %i.bt = load i32, ptr %i.l, align 8, !tbaa !30
  %i.bu = icmp sgt i32 %i.bt, 0
  br i1 %i.bu, label %.lr.ph136, label %._crit_edge137

.lr.ph136:                                        ; preds = %.preheader
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 816
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.cd = getelementptr inbounds nuw i8, ptr %i.az, i64 2320
  br label %bb.y

bb.y:                                             ; preds = %.lr.ph136, %bb.ao
  %indvars.iv145 = phi i64 [ 0, %.lr.ph136 ], [ %indvars.iv.next146, %bb.ao ] ; 4 uses
  %i.ce = load ptr, ptr %i.g, align 8, !tbaa !53
  %i.cf = call ptr @avcodec_alloc_context3(ptr noundef %i.ce) #7 ; 18 uses
  %.not115 = icmp eq ptr %i.cf, null
  br i1 %.not115, label %.thread127.loopexit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cg = load ptr, ptr %i.b, align 8, !tbaa !51
  %i.ch = call i32 @avcodec_parameters_to_context(ptr noundef nonnull %i.cf, ptr noundef %i.cg) #7 ; 2 uses
  %i.ci = icmp slt i32 %i.ch, 0
  br i1 %i.ci, label %.thread127.loopexit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cj = call i32 @av_opt_copy(ptr noundef nonnull %i.cf, ptr noundef nonnull %0) #7 ; 2 uses
  %i.ck = icmp slt i32 %i.cj, 0
  br i1 %i.ck, label %.thread127.loopexit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cl = load ptr, ptr %i.g, align 8, !tbaa !53
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 32
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !62
  %.not116 = icmp eq ptr %i.cn, null
  br i1 %.not116, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.co = getelementptr inbounds nuw i8, ptr %i.cf, i64 32
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !59
  %i.cq = load ptr, ptr %i.bv, align 8, !tbaa !59
  %i.cr = call i32 @av_opt_copy(ptr noundef %i.cp, ptr noundef %i.cq) #7 ; 2 uses
  %i.cs = icmp slt i32 %i.cr, 0
  br i1 %i.cs, label %.thread127.loopexit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cf, i64 656
  store i32 1, ptr %i.ct, align 8, !tbaa !30
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cf, i64 664 ; 2 uses
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !63
  %i.cw = and i32 %i.cv, -2
  store i32 %i.cw, ptr %i.cu, align 8, !tbaa !63
  %i.cx = load ptr, ptr %i.bw, align 8, !tbaa !64 ; 2 uses
  %.not117 = icmp eq ptr %i.cx, null
  br i1 %.not117, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cy = call ptr @av_memdup(ptr noundef nonnull %i.cx, i64 noundef 128) #7 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cf, i64 288
  store ptr %i.cy, ptr %i.cz, align 8, !tbaa !64
  %.not118 = icmp eq ptr %i.cy, null
  br i1 %.not118, label %.thread127.loopexit, label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.da = load ptr, ptr %i.bx, align 8, !tbaa !65 ; 2 uses
  %.not119 = icmp eq ptr %i.da, null
  br i1 %.not119, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.db = call ptr @av_memdup(ptr noundef nonnull %i.da, i64 noundef 128) #7 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cf, i64 304
  store ptr %i.db, ptr %i.dc, align 8, !tbaa !65
  %.not120 = icmp eq ptr %i.db, null
  br i1 %.not120, label %.thread127.loopexit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.dd = load ptr, ptr %i.by, align 8, !tbaa !66 ; 2 uses
  %.not121 = icmp eq ptr %i.dd, null
  br i1 %.not121, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.de = call ptr @av_memdup(ptr noundef nonnull %i.dd, i64 noundef 128) #7 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.cf, i64 296
  store ptr %i.de, ptr %i.df, align 8, !tbaa !66
  %.not122 = icmp eq ptr %i.de, null
  br i1 %.not122, label %.thread127.loopexit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.dg = load ptr, ptr %i.bz, align 8, !tbaa !67
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cf, i64 48
  store ptr %i.dg, ptr %i.dh, align 8, !tbaa !67
  %i.di = load ptr, ptr %i.ca, align 8, !tbaa !68
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cf, i64 816
  store ptr %i.di, ptr %i.dj, align 8, !tbaa !68
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cf, i64 672
  %i.dl = load <2 x ptr>, ptr %i.cb, align 8, !tbaa !69
  store <2 x ptr> %i.dl, ptr %i.dk, align 8, !tbaa !69
  %i.dm = load ptr, ptr %i.cc, align 8, !tbaa !70
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cf, i64 504
  store ptr %i.dm, ptr %i.dn, align 8, !tbaa !70
  %i.do = load ptr, ptr %i.g, align 8, !tbaa !53
  %i.dp = call i32 @avcodec_open2(ptr noundef nonnull %i.cf, ptr noundef %i.do, ptr noundef null) #7 ; 2 uses
  %i.dq = icmp slt i32 %i.dp, 0
  br i1 %i.dq, label %.thread127.loopexit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.dr = getelementptr inbounds nuw i8, ptr %i.cf, i64 40
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !31
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 80 ; 2 uses
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !38
  %.not123 = icmp eq ptr %i.du, null
  br i1 %.not123, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.7, i32 noundef 253) #7
  call void @abort() #8
  unreachable

bb.am:                                            ; preds = %bb.ak
  store ptr %i.az, ptr %i.dt, align 8, !tbaa !38
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %indvars.iv145
  %i.dw = call i32 @pthread_create(ptr noundef nonnull %i.dv, ptr noundef null, ptr noundef nonnull @worker, ptr noundef nonnull %i.cf) #7 ; 2 uses
  %.not124 = icmp eq i32 %i.dw, 0
  br i1 %.not124, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.dx = trunc nuw nsw i64 %indvars.iv145 to i32
  store ptr %i.cf, ptr %i.a, align 8
  %i.dy = sub nsw i32 0, %i.dw
  br label %.thread127

bb.ao:                                            ; preds = %bb.am
  %indvars.iv.next146 = add nuw nsw i64 %indvars.iv145, 1 ; 2 uses
  %i.dz = load i32, ptr %i.l, align 8, !tbaa !30
  %i.ea = sext i32 %i.dz to i64
  %i.eb = icmp slt i64 %indvars.iv.next146, %i.ea
  br i1 %i.eb, label %bb.y, label %._crit_edge137, !llvm.loop !49

._crit_edge137:                                   ; preds = %bb.ao, %.preheader
  call void @avcodec_parameters_free(ptr noundef nonnull %i.b) #7
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 664
  store i32 1, ptr %i.ec, align 8, !tbaa !63
  br label %bb.ap

.thread127.loopexit:                              ; preds = %bb.z, %bb.aa, %bb.ac, %bb.aj, %bb.y, %bb.ae, %bb.ag, %bb.ai
  %.1.ph = phi i32 [ %i.ch, %bb.z ], [ %i.cj, %bb.aa ], [ %i.cr, %bb.ac ], [ %i.dp, %bb.aj ], [ -12, %bb.y ], [ -12, %bb.ae ], [ -12, %bb.ag ], [ -12, %bb.ai ]
  %i.ed = trunc nuw nsw i64 %indvars.iv145 to i32
  store ptr %i.cf, ptr %i.a, align 8
  br label %.thread127

.thread127:                                       ; preds = %bb.v, %bb.w, %.thread127.loopexit, %._crit_edge, %bb.x, %bb.s, %bb.an
  %.183 = phi i32 [ 0, %bb.s ], [ 0, %bb.x ], [ %i.dx, %bb.an ], [ 0, %._crit_edge ], [ %i.ed, %.thread127.loopexit ], [ 0, %bb.w ], [ 0, %bb.v ]
  %.1 = phi i32 [ %i.bc, %bb.s ], [ %i.br, %bb.x ], [ %i.dy, %bb.an ], [ -12, %._crit_edge ], [ %.1.ph, %.thread127.loopexit ], [ -12, %bb.w ], [ -12, %bb.v ]
  call void @avcodec_parameters_free(ptr noundef nonnull %i.b) #7
  call void @avcodec_free_context(ptr noundef nonnull %i.a) #7
  store i32 %.183, ptr %i.l, align 8, !tbaa !30
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.9) #7
  call void @ff_frame_thread_encoder_free(ptr noundef %0)
  br label %bb.ap

bb.ap:                                            ; preds = %bb.r, %bb.o, %bb.n, %bb.a, %bb.b, %.thread127, %._crit_edge137
  %.084 = phi i32 [ 0, %bb.a ], [ 0, %bb.n ], [ %.1, %.thread127 ], [ -22, %bb.o ], [ 0, %._crit_edge137 ], [ 0, %bb.b ], [ -12, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 %.084
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare i32 @av_opt_get_int(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare i32 @av_cpu_count() local_unnamed_addr #2

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #3

declare noalias ptr @av_mallocz(i64 noundef) local_unnamed_addr #2

declare i32 @ff_pthread_init(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @av_frame_alloc() local_unnamed_addr #2

declare ptr @av_packet_alloc() local_unnamed_addr #2

declare ptr @avcodec_parameters_alloc() local_unnamed_addr #2

declare i32 @avcodec_parameters_from_context(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @avcodec_alloc_context3(ptr noundef) local_unnamed_addr #2

declare i32 @avcodec_parameters_to_context(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @av_opt_copy(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @av_memdup(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @avcodec_open2(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @pthread_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal noalias noundef ptr @worker(ptr noundef %0) #5 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store ptr %0, ptr %i.a, align 8, !tbaa !11
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !31
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !38   ; 9 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 2832 ; 4 uses
  %i.g = load atomic i32, ptr %i.f seq_cst, align 8
  %.not37 = icmp eq i32 %i.g, 0
  br i1 %.not37, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 2304 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 2308
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 100
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 104
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 2216 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 2256
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %i.p = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.h) #7 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.b
  %i.q = load i32, ptr %i.i, align 8, !tbaa !72
  %i.r = load i32, ptr %i.j, align 4, !tbaa !45
  %i.s = icmp eq i32 %i.q, %i.r
  br i1 %i.s, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = load atomic i32, ptr %i.f seq_cst, align 8
  %.not32 = icmp eq i32 %i.t, 0
  br i1 %.not32, label %bb.f, label %.critedge

.critedge:                                        ; preds = %bb.c, %bb.d
  %i.u = load atomic i32, ptr %i.f seq_cst, align 8
  %.not33 = icmp eq i32 %i.u, 0
  br i1 %.not33, label %bb.e, label %.thread

.thread:                                          ; preds = %.critedge
  %i.v = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.h) #7 ; 0 uses
  br label %.loopexit

bb.e:                                             ; preds = %.critedge
  %i.w = tail call i32 @pthread_cond_wait(ptr noundef nonnull %i.k, ptr noundef nonnull %i.h) #7 ; 0 uses
  br label %bb.c, !llvm.loop !71

bb.f:                                             ; preds = %bb.d
  %i.x = load i32, ptr %i.i, align 8, !tbaa !72   ; 2 uses
  %i.y = add i32 %i.x, 1
  %i.z = load i32, ptr %i.l, align 4, !tbaa !40
  %i.aa = urem i32 %i.y, %i.z
  store i32 %i.aa, ptr %i.i, align 8, !tbaa !72
  %i.ab = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.h) #7 ; 0 uses
  %i.ac = zext i32 %i.x to i64
  %i.ad = getelementptr inbounds nuw [32 x i8], ptr %i.m, i64 %i.ac ; 5 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !43
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !44
  %i.ah = load ptr, ptr %i.a, align 8, !tbaa !11
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.aj = tail call i32 @ff_encode_encode_cb(ptr noundef %i.ah, ptr noundef %i.ag, ptr noundef %i.ae, ptr noundef nonnull %i.ai) #7
  %i.ak = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.n) #7 ; 0 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store i32 %i.aj, ptr %i.al, align 8, !tbaa !46
  %i.am = getelementptr inbounds nuw i8, ptr %i.ad, i64 20
  store i32 1, ptr %i.am, align 4, !tbaa !47
  %i.an = tail call i32 @pthread_cond_signal(ptr noundef nonnull %i.o) #7 ; 0 uses
  %i.ao = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.n) #7 ; 0 uses
  %i.ap = load atomic i32, ptr %i.f seq_cst, align 8
  %.not = icmp eq i32 %i.ap, 0
  br i1 %.not, label %bb.b, label %.loopexit

.loopexit:                                        ; preds = %bb.f, %bb.a, %.thread
  call void @avcodec_free_context(ptr noundef nonnull %i.a) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret ptr null
}

declare void @avcodec_parameters_free(ptr noundef) local_unnamed_addr #2

declare void @avcodec_free_context(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind optsize uwtable
define void @ff_frame_thread_encoder_free(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !31
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !38   ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 656 ; 3 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !30
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.i = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %i.h) #7 ; 0 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 2832
  store atomic i32 1, ptr %i.j seq_cst, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.l = tail call i32 @pthread_cond_broadcast(ptr noundef nonnull %i.k) #7 ; 0 uses
  %i.m = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %i.h) #7 ; 0 uses
  %i.n = load i32, ptr %i.e, align 8, !tbaa !30
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 2320
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv
  %i.r = load i64, ptr %i.q, align 8, !tbaa !75
  %i.s = tail call i32 @pthread_join(i64 noundef %i.r, ptr noundef null) #7 ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.t = load i32, ptr %i.e, align 8, !tbaa !30
  %i.u = sext i32 %i.t to i64
  %i.v = icmp slt i64 %indvars.iv.next, %i.u
  br i1 %i.v, label %bb.c, label %.loopexit, !llvm.loop !73

.loopexit:                                        ; preds = %bb.c, %bb.b, %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 100 ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !40
  %.not = icmp eq i32 %i.x, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph23

.lr.ph23:                                         ; preds = %.loopexit
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  br label %bb.d

._crit_edge:                                      ; preds = %bb.d, %.loopexit
  tail call void @ff_pthread_free(ptr noundef nonnull %i.d, ptr noundef nonnull @thread_ctx_offsets) #7
end_hunk_0
