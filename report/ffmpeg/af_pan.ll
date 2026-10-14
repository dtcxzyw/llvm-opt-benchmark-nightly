Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/af_pan?download=true
inline.NumInlined: 4
inline.NumDeleted: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.AVFilterPad = type { ptr, i32, i32, %union.anon, ptr, ptr, ptr }
%union.anon = type { ptr }
%union.anon.0 = type { ptr }
%union.anon.2 = type { i64 }

@.str = private unnamed_addr constant [4 x i8] c"pan\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"Remix channels with coefficients (panning).\00", align 1
@pan_inputs = internal constant [1 x %struct.AVFilterPad] [%struct.AVFilterPad { ptr @.str.2, i32 1, i32 0, %union.anon zeroinitializer, ptr @filter_frame, ptr null, ptr @config_props }], align 16
@ff_audio_default_filterpad = external constant [1 x %struct.AVFilterPad], align 16
@ff_af_pan = local_unnamed_addr constant { { ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] }, i8, i8, i8, [5 x i8], ptr, ptr, ptr, %union.anon.0, i32, i32, ptr, ptr } { { ptr, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @pan_inputs, ptr @ff_audio_default_filterpad, ptr @pan_class, i32 0, [4 x i8] zeroinitializer }, i8 1, i8 1, i8 2, [5 x i8] zeroinitializer, ptr null, ptr @init, ptr @uninit, %union.anon.0 { ptr @query_formats }, i32 33096, i32 0, ptr null, ptr null }, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.3 = private unnamed_addr constant [80 x i8] c"af_pan supports a maximum of %d channels. Feel free to ask for a higher limit.\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"uchl\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"Degenerate coefficients while renormalizing\0A\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"%s%.3g i%d\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c" + \00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"o%d = %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"Pure channel mapping detected:\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c" M\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@pan_class = internal constant { ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str, ptr @av_default_item_name, ptr @pan_options, i32 3998052, i32 0, i32 0, i32 7, ptr null, ptr null, ptr null, ptr null, i32 0, [4 x i8] zeroinitializer }, align 8
@.str.15 = private unnamed_addr constant [5 x i8] c"args\00", align 1
@pan_options = internal constant <{ { ptr, ptr, i32, i32, { ptr }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } }> <{ { ptr, ptr, i32, i32, { ptr }, double, double, i32, [4 x i8], ptr } { ptr @.str.15, ptr null, i32 8, i32 6, { ptr } zeroinitializer, double 0.000000e+00, double 0.000000e+00, i32 65544, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon.2, double, double, i32, [4 x i8], ptr } zeroinitializer }>, align 16
@.str.17 = private unnamed_addr constant [81 x i8] c"pan filter needs a channel layout and a set of channel definitions as parameter\0A\00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c"|\00", align 1
@.str.19 = private unnamed_addr constant [30 x i8] c"Channel layout not specified\0A\00", align 1
@.str.20 = private unnamed_addr constant [39 x i8] c"Expected out channel name, got \22%.8s\22\0A\00", align 1
@.str.21 = private unnamed_addr constant [52 x i8] c"Channel \22%.8s\22 does not exist in the chosen layout\0A\00", align 1
@.str.22 = private unnamed_addr constant [33 x i8] c"Invalid out channel name \22%.8s\22\0A\00", align 1
@.str.23 = private unnamed_addr constant [40 x i8] c"Can not reference out channel %d twice\0A\00", align 1
@.str.24 = private unnamed_addr constant [43 x i8] c"Syntax error after channel name in \22%.8s\22\0A\00", align 1
@.str.25 = private unnamed_addr constant [10 x i8] c"%lf%n *%n\00", align 1
@.str.26 = private unnamed_addr constant [38 x i8] c"Expected in channel name, got \22%.8s\22\0A\00", align 1
@.str.27 = private unnamed_addr constant [41 x i8] c"Can not mix named and numbered channels\0A\00", align 1
@.str.28 = private unnamed_addr constant [39 x i8] c"Can not reference in channel %d twice\0A\00", align 1
@.str.29 = private unnamed_addr constant [26 x i8] c"Syntax error near \22%.8s\22\0A\00", align 1
@.str.30 = private unnamed_addr constant [10 x i8] c"%7[A-Z]%n\00", align 1
@.str.31 = private unnamed_addr constant [6 x i8] c"c%d%n\00", align 1
@.str.32 = private unnamed_addr constant [4 x i8] c" %n\00", align 1

; Function Attrs: cold nounwind optsize uwtable
define internal range(i32 -2147483648, 1) i32 @init(ptr noundef %0) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 13 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 5 uses
  %i.h = alloca i32, align 4                      ; 6 uses
  %1 = alloca [2 x i32], align 8                  ; 7 uses
  %i.i = alloca [64 x i32], align 16              ; 4 uses
  %i.j = alloca double, align 8                   ; 5 uses
  %i.k = alloca [64 x i32], align 16              ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !19   ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #8
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !44
  %i.p = tail call noalias ptr @av_strdup(ptr noundef %i.o) #8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #8
  store i64 0, ptr %1, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.i, i8 0, i64 256, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #8
  %i.q = load ptr, ptr %i.n, align 8, !tbaa !44
  %.not = icmp eq ptr %i.q, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.17) #8
  br label %bb.ak

bb.c:                                             ; preds = %bb.a
  %.not49 = icmp eq ptr %i.p, null
  br i1 %.not49, label %bb.ak, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = call ptr @av_strtok(ptr noundef nonnull %i.p, ptr noundef nonnull @.str.18, ptr noundef nonnull %i.d) #8 ; 2 uses
  %.not50 = icmp eq ptr %i.r, null
  br i1 %.not50, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.19) #8
  br label %bb.aj

bb.f:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 32820 ; 3 uses
  %i.u = call i32 @ff_parse_channel_layout(ptr noundef nonnull %i.s, ptr noundef nonnull %i.t, ptr noundef nonnull %i.r, ptr noundef nonnull %0) #8 ; 2 uses
  %i.v = icmp slt i32 %i.u, 0
  br i1 %i.v, label %bb.aj, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = load i32, ptr %i.t, align 4, !tbaa !24
  %i.x = icmp sgt i32 %i.w, 64
  br i1 %i.x, label %bb.h, label %.preheader

.preheader:                                       ; preds = %bb.g
  %i.y = call ptr @av_strtok(ptr noundef null, ptr noundef nonnull @.str.18, ptr noundef nonnull %i.d) #8 ; 3 uses
  store ptr %i.y, ptr %i.c, align 8, !tbaa !25
  %.not5188 = icmp eq ptr %i.y, null
  br i1 %.not5188, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.z = getelementptr inbounds nuw i8, ptr %i.m, i64 32808 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %.sroa.gep = getelementptr inbounds nuw i8, ptr %1, i64 4
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.3, i32 noundef 64) #8
  br label %bb.aj

bb.i:                                             ; preds = %.lr.ph, %bb.ag
  %i.ab = phi ptr [ %i.y, %.lr.ph ], [ %i.bu, %bb.ag ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.k, i8 0, i64 256, i1 false)
  %i.ac = call fastcc i32 @parse_channel_name(ptr noundef %i.c, ptr noundef %i.e, ptr noundef %i.h)
  %.not52 = icmp eq i32 %i.ac, 0
  br i1 %.not52, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = load ptr, ptr %i.c, align 8, !tbaa !25
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.20, ptr noundef %i.ad) #8
  br label %.thread64

bb.k:                                             ; preds = %bb.i
  %i.ae = load i32, ptr %i.h, align 4, !tbaa !26
  %.not53 = icmp eq i32 %i.ae, 0
  %.pr = load i32, ptr %i.e, align 4, !tbaa !26   ; 3 uses
  br i1 %.not53, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.af = call i32 @av_channel_layout_index_from_channel(ptr noundef nonnull %i.s, i32 noundef %.pr) #8 ; 3 uses
  store i32 %i.af, ptr %i.e, align 4, !tbaa !26
  %i.ag = icmp slt i32 %i.af, 0
  br i1 %i.ag, label %bb.m, label %.thread

bb.m:                                             ; preds = %bb.l
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.21, ptr noundef nonnull %i.ab) #8
  br label %.thread64

bb.n:                                             ; preds = %bb.k
  %i.ah = icmp slt i32 %.pr, 0
  br i1 %i.ah, label %bb.o, label %.thread

.thread:                                          ; preds = %bb.l, %bb.n
  %i.ai = phi i32 [ %.pr, %bb.n ], [ %i.af, %bb.l ] ; 3 uses
  %i.aj = load i32, ptr %i.t, align 4, !tbaa !24
  %.not54 = icmp slt i32 %i.ai, %i.aj
  br i1 %.not54, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.thread, %bb.n
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.22, ptr noundef nonnull %i.ab) #8
  br label %.thread64

bb.p:                                             ; preds = %.thread
  %i.ak = zext nneg i32 %i.ai to i64              ; 3 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.ak ; 2 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !26
  %.not55 = icmp eq i32 %i.am, 0
  br i1 %.not55, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.23, i32 noundef %i.ai) #8
  br label %.thread64

bb.r:                                             ; preds = %bb.p
  store i32 1, ptr %i.al, align 4, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  store i32 0, ptr %i.b, align 4, !tbaa !26
  %i.an = load ptr, ptr %i.c, align 8, !tbaa !25  ; 2 uses
  %i.ao = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %i.an, ptr noundef nonnull @.str.32, ptr noundef nonnull %i.b) #8 ; 0 uses
  %i.ap = load i32, ptr %i.b, align 4, !tbaa !26
  %i.aq = sext i32 %i.ap to i64
  %i.ar = getelementptr inbounds i8, ptr %i.an, i64 %i.aq ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !45
  switch i8 %i.as, label %bb.t [
    i8 61, label %bb.u
    i8 60, label %bb.s
  ]

bb.s:                                             ; preds = %bb.r
  %i.at = shl nuw i64 1, %i.ak
  %i.au = load i64, ptr %i.z, align 8, !tbaa !27
  %i.av = or i64 %i.au, %i.at
  store i64 %i.av, ptr %i.z, align 8, !tbaa !27
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.24, ptr noundef nonnull %i.ab) #8
  br label %.thread64

bb.u:                                             ; preds = %bb.r, %bb.s
  %i.aw = getelementptr inbounds nuw [512 x i8], ptr %i.aa, i64 %i.ak
  br label %bb.v

bb.v:                                             ; preds = %.backedge, %bb.u
  %.pn.pn = phi ptr [ %i.ar, %bb.u ], [ %i.bs, %.backedge ]
  %.036 = phi double [ 1.000000e+00, %bb.u ], [ %.036.be, %.backedge ]
  %storemerge56 = getelementptr inbounds nuw i8, ptr %.pn.pn, i64 1 ; 3 uses
  store ptr %storemerge56, ptr %i.c, align 8, !tbaa !25
  store double 1.000000e+00, ptr %i.j, align 8, !tbaa !29
  %i.ax = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %storemerge56, ptr noundef nonnull @.str.25, ptr noundef nonnull %i.j, ptr noundef nonnull %i.g, ptr noundef nonnull %i.g) #8
  %i.ay = icmp sgt i32 %i.ax, 0
  br i1 %i.ay, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.az = load i32, ptr %i.g, align 4, !tbaa !26
  %i.ba = sext i32 %i.az to i64
  %i.bb = getelementptr inbounds i8, ptr %storemerge56, i64 %i.ba
  store ptr %i.bb, ptr %i.c, align 8, !tbaa !25
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.bc = call fastcc i32 @parse_channel_name(ptr noundef %i.c, ptr noundef %i.f, ptr noundef %i.h)
  %.not57 = icmp eq i32 %i.bc, 0
  br i1 %.not57, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bd = load ptr, ptr %i.c, align 8, !tbaa !25
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.26, ptr noundef %i.bd) #8
  br label %.thread64

bb.z:                                             ; preds = %bb.x
  %i.be = load i32, ptr %i.h, align 4, !tbaa !26  ; 2 uses
  %2 = sext i32 %i.be to i64
  %3 = getelementptr inbounds [4 x i8], ptr %1, i64 %2 ; 2 uses
  %4 = load i32, ptr %3, align 4, !tbaa !26
  %i.bf = add nsw i32 %4, 1
  store i32 %i.bf, ptr %3, align 4, !tbaa !26
  %.not58 = icmp eq i32 %i.be, 0
  %.sroa.gep.val = load i32, ptr %.sroa.gep, align 4
  %.val = load i32, ptr %1, align 8
  %i.bg = select i1 %.not58, i32 %.sroa.gep.val, i32 %.val
  %.not59 = icmp eq i32 %i.bg, 0
  br i1 %.not59, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.27) #8
  br label %.thread64

bb.ab:                                            ; preds = %bb.z
  %i.bh = load i32, ptr %i.f, align 4, !tbaa !26  ; 2 uses
  %i.bi = sext i32 %i.bh to i64                   ; 2 uses
  %i.bj = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.bi ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !26
  %.not60.a = icmp eq i32 %i.bk, 0
  br i1 %.not60.a, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.28, i32 noundef %i.bh) #8
  br label %.thread64

bb.ad:                                            ; preds = %bb.ab
  store i32 1, ptr %i.bj, align 4, !tbaa !26
  %i.bl = load double, ptr %i.j, align 8, !tbaa !29
  %i.bm = fmul nsz double %i.bl, %.036
  %i.bn = getelementptr inbounds [8 x i8], ptr %i.aw, i64 %i.bi
  store double %i.bm, ptr %i.bn, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store i32 0, ptr %i.a, align 4, !tbaa !26
  %i.bo = load ptr, ptr %i.c, align 8, !tbaa !25  ; 2 uses
  %i.bp = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %i.bo, ptr noundef nonnull @.str.32, ptr noundef nonnull %i.a) #8 ; 0 uses
  %i.bq = load i32, ptr %i.a, align 4, !tbaa !26
  %i.br = sext i32 %i.bq to i64
  %i.bs = getelementptr inbounds i8, ptr %i.bo, i64 %i.br ; 4 uses
  store ptr %i.bs, ptr %i.c, align 8, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !45
  switch i8 %i.bt, label %bb.ae [
    i8 0, label %bb.ag
    i8 45, label %.backedge
    i8 43, label %bb.af
  ]

.backedge:                                        ; preds = %bb.ad, %bb.af
  %.036.be = phi double [ -1.000000e+00, %bb.ad ], [ 1.000000e+00, %bb.af ]
  br label %bb.v

bb.ae:                                            ; preds = %bb.ad
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.29, ptr noundef nonnull %i.bs) #8
  br label %.thread64

bb.af:                                            ; preds = %bb.ad
  br label %.backedge

.thread64:                                        ; preds = %bb.j, %bb.m, %bb.o, %bb.q, %bb.y, %bb.aa, %bb.ac, %bb.ae, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #8
  br label %bb.aj

bb.ag:                                            ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #8
  %i.bu = call ptr @av_strtok(ptr noundef null, ptr noundef nonnull @.str.18, ptr noundef nonnull %i.d) #8 ; 3 uses
  store ptr %i.bu, ptr %i.c, align 8, !tbaa !25
  %.not51 = icmp eq ptr %i.bu, null
  br i1 %.not51, label %._crit_edge.loopexit, label %bb.i

._crit_edge.loopexit:                             ; preds = %bb.ag
  %.sroa.gep.le.le = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.pre = load i32, ptr %.sroa.gep.le.le, align 4, !tbaa !26
  %i.bv = icmp ne i32 %.pre, 0
  %i.bw = zext i1 %i.bv to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.bx = phi i32 [ %i.bw, %._crit_edge.loopexit ], [ 0, %.preheader ]
  %i.by = getelementptr inbounds nuw i8, ptr %i.m, i64 32816
  store i32 %i.bx, ptr %i.by, align 8, !tbaa !30
  %i.bz = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  br label %.preheader.i

.preheader.i:                                     ; preds = %.critedge.i, %._crit_edge
  %indvars.iv29.i = phi i64 [ 0, %._crit_edge ], [ %indvars.iv.next30.i, %.critedge.i ] ; 2 uses
  %i.ca = getelementptr inbounds nuw [512 x i8], ptr %i.bz, i64 %indvars.iv29.i
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ai, %.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next.i, %bb.ai ] ; 2 uses
  %.01525.i = phi i32 [ 0, %.preheader.i ], [ %.2.i, %bb.ai ] ; 2 uses
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %indvars.iv.i
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !29 ; 2 uses
  %i.cd = fcmp nsz une double %i.cc, 0.000000e+00 ; 2 uses
  %i.ce = fcmp nsz une double %i.cc, 1.000000e+00 ; 2 uses
  %or.cond.i = and i1 %i.cd, %i.ce
  %.not22.i = xor i1 %i.cd, true
  %brmerge.i = or i1 %i.ce, %.not22.i             ; 2 uses
  %not.or.cond.i = xor i1 %or.cond.i, true
  %.not.i = icmp eq i32 %.01525.i, 0
  %cond1.i = select i1 %brmerge.i, i1 %not.or.cond.i, i1 %.not.i
  br i1 %cond1.i, label %bb.ai, label %are_gains_pure.exit

bb.ai:                                            ; preds = %bb.ah
  %not.brmerge.i = xor i1 %brmerge.i, true
  %i.cf = zext i1 %not.brmerge.i to i32
  %.2.i = add nuw nsw i32 %.01525.i, %i.cf
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.i = icmp eq i64 %indvars.iv.next.i, 64
  br i1 %exitcond.i, label %.critedge.i, label %bb.ah, !llvm.loop !42

.critedge.i:                                      ; preds = %bb.ai
  %indvars.iv.next30.i = add nuw nsw i64 %indvars.iv29.i, 1 ; 2 uses
  %exitcond32.not.i = icmp eq i64 %indvars.iv.next30.i, 64
  br i1 %exitcond32.not.i, label %are_gains_pure.exit, label %.preheader.i, !llvm.loop !43

are_gains_pure.exit:                              ; preds = %.critedge.i, %bb.ah
  %.4.i = phi i32 [ 0, %bb.ah ], [ 1, %.critedge.i ]
  %i.cg = getelementptr inbounds nuw i8, ptr %i.m, i64 32824
  store i32 %.4.i, ptr %i.cg, align 8, !tbaa !32
  br label %bb.aj

bb.aj:                                            ; preds = %.thread64, %bb.f, %are_gains_pure.exit, %bb.h, %bb.e
  %.2 = phi i32 [ %i.u, %bb.f ], [ -1163346256, %bb.h ], [ -22, %.thread64 ], [ 0, %are_gains_pure.exit ], [ -22, %bb.e ]
  call void @av_free(ptr noundef nonnull %i.p) #8
  br label %bb.ak

bb.ak:                                            ; preds = %bb.c, %bb.aj, %bb.b
  %.039 = phi i32 [ %.2, %bb.aj ], [ -12, %bb.c ], [ -22, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  ret i32 %.039
}

; Function Attrs: cold nounwind optsize uwtable
define internal void @uninit(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 33088
  tail call void @swr_free(ptr noundef nonnull %i.c) #8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  tail call void @av_channel_layout_uninit(ptr noundef nonnull %i.d) #8
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @query_formats(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.d = tail call ptr @ff_all_channel_counts() #8
  %i.e = load ptr, ptr %1, align 8, !tbaa !47
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = tail call i32 @ff_channel_layouts_ref(ptr noundef %i.d, ptr noundef nonnull %i.f) #8 ; 2 uses
  %i.h = icmp slt i32 %i.g, 0
  br i1 %i.h, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %i.a, align 8, !tbaa !48
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.j = call i32 @ff_add_channel_layout(ptr noundef nonnull %i.a, ptr noundef nonnull %i.i) #8 ; 2 uses
  %i.k = icmp slt i32 %i.j, 0
  br i1 %i.k, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !48
  %i.m = load ptr, ptr %2, align 8, !tbaa !47
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = call i32 @ff_channel_layouts_ref(ptr noundef %i.l, ptr noundef nonnull %i.n) #8
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i32 [ %i.o, %bb.c ], [ %i.g, %bb.a ], [ %i.j, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal i32 @filter_frame(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !50
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.d = load i32, ptr %i.c, align 8, !tbaa !55   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !40
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !56
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !58   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %i.j = tail call ptr @ff_get_audio_buffer(ptr noundef %i.i, i32 noundef %i.d) #8 ; 6 uses
  store ptr %i.j, ptr %i.b, align 8, !tbaa !50
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @av_frame_free(ptr noundef nonnull %i.a) #8
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !40
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 72
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !19
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 33088
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !41
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 96
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !59
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !59
  %i.t = tail call i32 @swr_convert(ptr noundef %i.o, ptr noundef %i.q, i32 noundef %i.d, ptr noundef %i.s, i32 noundef %i.d) #8 ; 0 uses
  %i.u = tail call i32 @av_frame_copy_props(ptr noundef nonnull %i.j, ptr noundef nonnull %1) #8 ; 0 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.j, i64 384
  %i.w = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  %i.x = tail call i32 @av_channel_layout_copy(ptr noundef nonnull %i.v, ptr noundef nonnull %i.w) #8 ; 2 uses
  %i.y = icmp slt i32 %i.x, 0
  br i1 %i.y, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @av_frame_free(ptr noundef nonnull %i.b) #8
  call void @av_frame_free(ptr noundef nonnull %i.a) #8
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @av_frame_free(ptr noundef nonnull %i.a) #8
  %i.z = call i32 @ff_filter_frame(ptr noundef nonnull %i.i, ptr noundef nonnull %i.j) #8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
  %.0 = phi i32 [ %i.x, %bb.d ], [ %i.z, %bb.e ], [ -12, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 -2147483648, 1) i32 @config_props(ptr noundef %0) #1 {
bb.a:
  %i.a = alloca [1024 x i8], align 16             ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !40   ; 9 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !19   ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32816
  %i.g = load i32, ptr %i.f, align 8, !tbaa !30
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %.loopexit134, label %.preheader133

.preheader133:                                    ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32820
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 40 ; 5 uses
  br label %bb.b

bb.b:                                             ; preds = %.preheader133, %bb.e
  %indvars.iv168 = phi i64 [ 0, %.preheader133 ], [ %indvars.iv.next169, %bb.e ] ; 7 uses
  %.0112138 = phi i32 [ 0, %.preheader133 ], [ %.1, %bb.e ] ; 3 uses
  %i.k = trunc nuw nsw i64 %indvars.iv168 to i32
  %i.l = tail call i32 @av_channel_layout_index_from_channel(ptr noundef nonnull %i.h, i32 noundef %i.k) #8
  %i.m = icmp sgt i32 %i.l, -1
  br i1 %i.m, label %.preheader132, label %bb.e

.preheader132:                                    ; preds = %bb.b
  %i.n = load i32, ptr %i.i, align 4, !tbaa !24   ; 3 uses
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader132
  %i.p = sext i32 %.0112138 to i64                ; 5 uses
  %wide.trip.count = zext nneg i32 %i.n to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.q = icmp ult i32 %i.n, 4
  br i1 %i.q, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.3, %bb.c ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.c ]
  %i.r = getelementptr inbounds nuw [512 x i8], ptr %i.j, i64 %indvars.iv ; 2 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv168
  %i.t = load double, ptr %i.s, align 8, !tbaa !29
  %i.u = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.p
  store double %i.t, ptr %i.u, align 8, !tbaa !29
  %i.v = getelementptr inbounds nuw [512 x i8], ptr %i.j, i64 %indvars.iv
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 512 ; 2 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv168
  %i.y = load double, ptr %i.x, align 8, !tbaa !29
  %i.z = getelementptr inbounds [8 x i8], ptr %i.w, i64 %i.p
  store double %i.y, ptr %i.z, align 8, !tbaa !29
  %i.aa = getelementptr inbounds nuw [512 x i8], ptr %i.j, i64 %indvars.iv
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 1024 ; 2 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %indvars.iv168
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !29
  %i.ae = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.p
  store double %i.ad, ptr %i.ae, align 8, !tbaa !29
  %i.af = getelementptr inbounds nuw [512 x i8], ptr %i.j, i64 %indvars.iv
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 1536 ; 2 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv168
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !29
  %i.aj = getelementptr inbounds [8 x i8], ptr %i.ag, i64 %i.p
  store double %i.ai, ptr %i.aj, align 8, !tbaa !29
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %bb.c, !llvm.loop !60

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.c
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod221 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod221)
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.d ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.d ]
end_hunk_0
