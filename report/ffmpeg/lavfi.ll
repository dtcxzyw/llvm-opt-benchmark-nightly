Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/lavfi?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%union.anon = type { i64 }
%struct.AVBPrint = type { ptr, i32, i32, i32, [1 x i8], [1000 x i8] }

@.str = private unnamed_addr constant [6 x i8] c"lavfi\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Libavfilter virtual input device\00", align 1
@ff_lavfi_demuxer = local_unnamed_addr constant { { ptr, ptr, i32, [4 x i8], ptr, ptr, ptr, ptr }, i32, i32, i32, [4 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr } { { ptr, ptr, i32, [4 x i8], ptr, ptr, ptr, ptr } { ptr @.str, ptr @.str.1, i32 1, [4 x i8] zeroinitializer, ptr null, ptr null, ptr @lavfi_class, ptr null }, i32 0, i32 192, i32 1, [4 x i8] zeroinitializer, ptr null, ptr @lavfi_read_header, ptr @lavfi_read_packet, ptr @lavfi_read_close, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8
@.str.2 = private unnamed_addr constant [12 x i8] c"lavfi indev\00", align 1
@lavfi_class = internal constant { ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str.2, ptr @av_default_item_name, ptr @options, i32 3998052, i32 0, i32 0, i32 45, ptr null, ptr null, ptr null, ptr null, i32 0, [4 x i8] zeroinitializer }, align 8
@.str.4 = private unnamed_addr constant [6 x i8] c"graph\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"set libavfilter graph\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"graph_file\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"set libavfilter graph filename\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"dumpgraph\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"dump graph to stderr\00", align 1
@options = internal constant <{ { ptr, ptr, i32, i32, { ptr }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, { ptr }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, { ptr }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon, double, double, i32, [4 x i8], ptr } }> <{ { ptr, ptr, i32, i32, { ptr }, double, double, i32, [4 x i8], ptr } { ptr @.str.4, ptr @.str.5, i32 8, i32 6, { ptr } zeroinitializer, double 0.000000e+00, double 0.000000e+00, i32 2, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, { ptr }, double, double, i32, [4 x i8], ptr } { ptr @.str.6, ptr @.str.7, i32 16, i32 6, { ptr } zeroinitializer, double 0.000000e+00, double 0.000000e+00, i32 2, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, { ptr }, double, double, i32, [4 x i8], ptr } { ptr @.str.8, ptr @.str.9, i32 24, i32 6, { ptr } zeroinitializer, double 0.000000e+00, double 0.000000e+00, i32 2, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon, double, double, i32, [4 x i8], ptr } zeroinitializer }>, align 16
@.str.11 = private unnamed_addr constant [11 x i8] c"buffersink\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"abuffersink\00", align 1
@.str.13 = private unnamed_addr constant [63 x i8] c"Only one of the graph or graph_file options must be specified\0A\00", align 1
@.str.14 = private unnamed_addr constant [19 x i8] c"protocol_whitelist\00", align 1
@.str.15 = private unnamed_addr constant [51 x i8] c"Open inputs in the filtergraph are not acceptable\0A\00", align 1
@.str.16 = private unnamed_addr constant [24 x i8] c"Missing %d outpad name\0A\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"out%n%d%n\00", align 1
@.str.18 = private unnamed_addr constant [26 x i8] c"Invalid outpad name '%s'\0A\00", align 1
@.str.19 = private unnamed_addr constant [7 x i8] c"+subcc\00", align 1
@.str.20 = private unnamed_addr constant [28 x i8] c"Invalid outpad suffix '%s'\0A\00", align 1
@.str.21 = private unnamed_addr constant [79 x i8] c"Invalid index was specified in output '%s', must be a non-negative value < %d\0A\00", align 1
@.str.22 = private unnamed_addr constant [54 x i8] c"An output with stream index %d was already specified\0A\00", align 1
@.str.23 = private unnamed_addr constant [47 x i8] c"Missing required buffersink filter, aborting.\0A\00", align 1
@lavfi_read_header.sample_fmts = internal constant [5 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4], align 16
@.str.24 = private unnamed_addr constant [15 x i8] c"sample_formats\00", align 1
@.str.25 = private unnamed_addr constant [63 x i8] c"Output '%s' is not a video or audio output, not yet supported\0A\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.26 = private unnamed_addr constant [48 x i8] c"Could not find PCM codec for sample format %s.\0A\00", align 1

; Function Attrs: cold nounwind optsize uwtable
define internal i32 @lavfi_read_header(ptr noundef %0) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 9 uses
  %1 = alloca %struct.AVBPrint, align 8           ; 7 uses
  %i.c = alloca ptr, align 8                      ; 7 uses
  %i.d = alloca ptr, align 8                      ; 7 uses
  %i.e = alloca i32, align 4                      ; 7 uses
  %i.f = alloca i32, align 4                      ; 7 uses
  %i.g = alloca ptr, align 8                      ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !25   ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store ptr null, ptr %i.a, align 8, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store ptr null, ptr %i.b, align 8, !tbaa !67
  %i.j = tail call ptr @avfilter_get_by_name(ptr noundef nonnull @.str.11) #9 ; 2 uses
  %i.k = tail call ptr @avfilter_get_by_name(ptr noundef nonnull @.str.12) #9 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !68   ; 2 uses
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !69
  %.not216 = icmp eq ptr %i.o, null
  br i1 %.not216, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.13) #9
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  store ptr null, ptr %i.c, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  store ptr null, ptr %i.d, align 8, !tbaa !71
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !72   ; 2 uses
  %.not218 = icmp eq ptr %i.q, null
  br i1 %.not218, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = call i32 @av_dict_set(ptr noundef nonnull %i.d, ptr noundef nonnull @.str.14, ptr noundef nonnull %i.q, i32 noundef 0) #9 ; 2 uses
  %i.s = icmp slt i32 %i.r, 0
  br i1 %i.s, label %.thread250, label %._crit_edge356

._crit_edge356:                                   ; preds = %bb.e
  %.pre = load ptr, ptr %i.l, align 8, !tbaa !68
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge356, %bb.d
  %i.t = phi ptr [ %.pre, %._crit_edge356 ], [ %i.m, %bb.d ]
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.v = call i32 @avio_open2(ptr noundef nonnull %i.c, ptr noundef %i.t, i32 noundef 1, ptr noundef nonnull %i.u, ptr noundef nonnull %i.d) #9 ; 2 uses
  call void @av_dict_free(ptr noundef nonnull %i.d) #9
  %i.w = icmp slt i32 %i.v, 0
  br i1 %i.w, label %.thread250, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @av_bprint_init(ptr noundef nonnull %1, i32 noundef 0, i32 noundef -1) #9
  %i.x = load ptr, ptr %i.c, align 8, !tbaa !70
  %i.y = call i32 @avio_read_to_bprint(ptr noundef %i.x, ptr noundef nonnull %1, i64 noundef 2147483647) #9 ; 2 uses
  %i.z = call i32 @avio_closep(ptr noundef nonnull %i.c) #9 ; 0 uses
  %.not219 = icmp eq i32 %i.y, 0
  br i1 %.not219, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = call i32 @av_bprint_finalize(ptr noundef nonnull %1, ptr noundef null) #9 ; 0 uses
  br label %.thread250

bb.i:                                             ; preds = %bb.g
  %i.ab = call i32 @av_bprint_finalize(ptr noundef nonnull %1, ptr noundef nonnull %i.n) #9 ; 2 uses
  %.not220 = icmp eq i32 %i.ab, 0
  br i1 %.not220, label %bb.j, label %.thread250

.thread250:                                       ; preds = %bb.f, %bb.e, %bb.h, %bb.i
  %.0178.ph = phi i32 [ %i.ab, %bb.i ], [ %i.y, %bb.h ], [ %i.r, %bb.e ], [ %i.v, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #9
  br label %.loopexit

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #9
  br label %.thread

.thread:                                          ; preds = %bb.a, %bb.j
  %i.ac = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 3 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !69
  %.not221 = icmp eq ptr %i.ad, null
  br i1 %.not221, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.thread
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !73
  %i.ag = call noalias ptr @av_strdup(ptr noundef %i.af) #9
  store ptr %i.ag, ptr %i.ac, align 8, !tbaa !69
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.thread
  %i.ah = call ptr @avfilter_graph_alloc() #9     ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.i, i64 32 ; 5 uses
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !74
  %.not222 = icmp eq ptr %i.ah, null
  br i1 %.not222, label %.loopexit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aj = load ptr, ptr %i.ac, align 8, !tbaa !69
  %i.ak = call i32 @avfilter_graph_parse_ptr(ptr noundef nonnull %i.ah, ptr noundef %i.aj, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %0) #9 ; 2 uses
  %i.al = icmp slt i32 %i.ak, 0
  br i1 %i.al, label %.loopexit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.am = load ptr, ptr %i.a, align 8, !tbaa !67
  %.not223 = icmp eq ptr %i.am, null
  br i1 %.not223, label %.preheader278, label %bb.o

.preheader278:                                    ; preds = %bb.n
  %.0184297 = load ptr, ptr %i.b, align 8, !tbaa !67 ; 2 uses
  %.not224298 = icmp eq ptr %.0184297, null
  br i1 %.not224298, label %._crit_edge, label %.lr.ph

bb.o:                                             ; preds = %bb.n
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.15) #9
  br label %.loopexit

.lr.ph:                                           ; preds = %.preheader278, %.lr.ph
  %.0184300 = phi ptr [ %.0184, %.lr.ph ], [ %.0184297, %.preheader278 ]
  %.0172299 = phi i32 [ %i.an, %.lr.ph ], [ 0, %.preheader278 ]
  %i.an = add nuw nsw i32 %.0172299, 1            ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.0184300, i64 24
  %.0184 = load ptr, ptr %i.ao, align 8, !tbaa !67 ; 2 uses
  %.not224 = icmp eq ptr %.0184, null
  br i1 %.not224, label %._crit_edge, label %.lr.ph, !llvm.loop !61

._crit_edge:                                      ; preds = %.lr.ph, %.preheader278
  %.0172.lcssa = phi i32 [ 0, %.preheader278 ], [ %i.an, %.lr.ph ] ; 6 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.i, i64 80 ; 4 uses
  store i32 %.0172.lcssa, ptr %i.ap, align 8, !tbaa !35
  %i.aq = zext nneg i32 %.0172.lcssa to i64
  %i.ar = shl nuw nsw i64 %i.aq, 2                ; 4 uses
  %i.as = call noalias ptr @av_malloc(i64 noundef %i.ar) #9 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.i, i64 48 ; 2 uses
  store ptr %i.as, ptr %i.at, align 8, !tbaa !36
  %.not225 = icmp eq ptr %i.as, null
  br i1 %.not225, label %.loopexit, label %bb.p

bb.p:                                             ; preds = %._crit_edge
  %i.au = call noalias ptr @av_mallocz(i64 noundef %i.ar) #9 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  store ptr %i.au, ptr %i.av, align 8, !tbaa !37
  %.not226 = icmp eq ptr %i.au, null
  br i1 %.not226, label %.loopexit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aw = call noalias ptr @av_malloc(i64 noundef %i.ar) #9 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.i, i64 64 ; 4 uses
  store ptr %i.aw, ptr %i.ax, align 8, !tbaa !38
  %.not227 = icmp eq ptr %i.aw, null
  br i1 %.not227, label %.loopexit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ay = call noalias ptr @av_malloc(i64 noundef %i.ar) #9 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.i, i64 72 ; 2 uses
  store ptr %i.ay, ptr %i.az, align 8, !tbaa !39
  %.not228 = icmp eq ptr %i.ay, null
  br i1 %.not228, label %.loopexit, label %.preheader277

.preheader277:                                    ; preds = %bb.r
  %.not325 = icmp eq i32 %.0172.lcssa, 0
  br i1 %.not325, label %.preheader276, label %.lr.ph302

.lr.ph302:                                        ; preds = %.preheader277
  %i.ba = load ptr, ptr %i.ax, align 8, !tbaa !38
  %smax = call i32 @llvm.smax.i32(i32 %.0172.lcssa, i32 1)
  %2 = zext nneg i32 %smax to i64
  %3 = shl nuw nsw i64 %2, 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.ba, i8 -1, i64 %3, i1 false), !tbaa !40
  br label %.preheader276

.preheader276:                                    ; preds = %.lr.ph302, %.preheader277
  %.1185303 = load ptr, ptr %i.b, align 8, !tbaa !67 ; 2 uses
  %.not229304 = icmp eq ptr %.1185303, null
  br i1 %.not229304, label %._crit_edge313, label %.lr.ph307

.preheader274:                                    ; preds = %bb.ac
  %.2186308.pre = load ptr, ptr %i.b, align 8, !tbaa !67 ; 2 uses
  %.not230309 = icmp eq ptr %.2186308.pre, null
  br i1 %.not230309, label %._crit_edge313, label %.lr.ph312

.lr.ph307:                                        ; preds = %.preheader276, %bb.ac
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.ac ], [ 0, %.preheader276 ] ; 5 uses
  %.1185306 = phi ptr [ %.1185, %bb.ac ], [ %.1185303, %.preheader276 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #9
  store i32 0, ptr %i.e, align 4, !tbaa !40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #9
  store i32 0, ptr %i.f, align 4, !tbaa !40
  %i.bb = load ptr, ptr %.1185306, align 8, !tbaa !76 ; 2 uses
  %.not237 = icmp eq ptr %i.bb, null
  br i1 %.not237, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.lr.ph307
  %i.bc = trunc nuw nsw i64 %indvars.iv to i32
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.16, i32 noundef %i.bc) #9
  br label %.thread254

bb.t:                                             ; preds = %.lr.ph307
  %i.bd = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %i.bb, ptr noundef nonnull @.str.17, ptr noundef nonnull %i.f, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f) #9 ; 0 uses
  %i.be = load i32, ptr %i.f, align 4, !tbaa !40  ; 2 uses
  %.not238 = icmp eq i32 %i.be, 0
  %i.bf = load ptr, ptr %.1185306, align 8, !tbaa !76 ; 4 uses
  br i1 %.not238, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.18, ptr noundef %i.bf) #9
  br label %.thread254

bb.v:                                             ; preds = %bb.t
  %i.bg = sext i32 %i.be to i64
  %i.bh = getelementptr inbounds i8, ptr %i.bf, i64 %i.bg ; 2 uses
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !77
  %.not239 = icmp ne i8 %i.bi, 0                  ; 2 uses
  br i1 %.not239, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.bj = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.bh, ptr noundef nonnull dereferenceable(7) @.str.19) #10
  %.not240 = icmp eq i32 %i.bj, 0
  br i1 %.not240, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.20, ptr noundef nonnull %i.bf) #9
  br label %.thread254

bb.y:                                             ; preds = %bb.w, %bb.v
  %i.bk = load i32, ptr %i.e, align 4, !tbaa !40  ; 4 uses
  %.not241 = icmp ult i32 %i.bk, %.0172.lcssa
  br i1 %.not241, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.21, ptr noundef nonnull %i.bf, i32 noundef %.0172.lcssa) #9
  br label %.thread254

bb.aa:                                            ; preds = %bb.y
  %i.bl = load ptr, ptr %i.ax, align 8, !tbaa !38 ; 2 uses
  %i.bm = sext i32 %i.bk to i64
  %i.bn = getelementptr inbounds [4 x i8], ptr %i.bl, i64 %i.bm
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !40
  %.not242 = icmp eq i32 %i.bo, -1
  br i1 %.not242, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.22, i32 noundef %i.bk) #9
  br label %.thread254

.thread254:                                       ; preds = %bb.x, %bb.z, %bb.ab, %bb.u, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #9
  br label %.loopexit

bb.ac:                                            ; preds = %bb.aa
  %i.bp = load ptr, ptr %i.at, align 8, !tbaa !36
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %indvars.iv
  store i32 %i.bk, ptr %i.bq, align 4, !tbaa !40
  %i.br = load i32, ptr %i.e, align 4, !tbaa !40
  %i.bs = sext i32 %i.br to i64
  %i.bt = getelementptr inbounds [4 x i8], ptr %i.bl, i64 %i.bs
  %i.bu = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.bu, ptr %i.bt, align 4, !tbaa !40
  %i.bv = zext i1 %.not239 to i32
  %i.bw = load ptr, ptr %i.az, align 8, !tbaa !39
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %indvars.iv
  store i32 %i.bv, ptr %i.bx, align 4, !tbaa !40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.by = getelementptr inbounds nuw i8, ptr %.1185306, i64 24
  %.1185 = load ptr, ptr %i.by, align 8, !tbaa !67 ; 2 uses
  %.not229 = icmp eq ptr %.1185, null
  br i1 %.not229, label %.preheader274, label %.lr.ph307, !llvm.loop !62

.lr.ph312:                                        ; preds = %.preheader274, %bb.ad
  %.2186311 = phi ptr [ %.2186, %bb.ad ], [ %.2186308.pre, %.preheader274 ]
  %.2175310 = phi i32 [ %i.cb, %bb.ad ], [ 0, %.preheader274 ] ; 2 uses
  %i.bz = call ptr @avformat_new_stream(ptr noundef nonnull %0, ptr noundef null) #9 ; 2 uses
  %.not236 = icmp eq ptr %i.bz, null
  br i1 %.not236, label %.loopexit, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph312
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 12
  store i32 %.2175310, ptr %i.ca, align 4, !tbaa !78
  %i.cb = add nuw nsw i32 %.2175310, 1
  %i.cc = getelementptr inbounds nuw i8, ptr %.2186311, i64 24
  %.2186 = load ptr, ptr %i.cc, align 8, !tbaa !67 ; 2 uses
  %.not230 = icmp eq ptr %.2186, null
  br i1 %.not230, label %._crit_edge313, label %.lr.ph312, !llvm.loop !63

._crit_edge313:                                   ; preds = %bb.ad, %.preheader276, %.preheader274
  %i.cd = load i32, ptr %i.ap, align 8, !tbaa !35
  %i.ce = sext i32 %i.cd to i64
  %i.cf = call ptr @av_malloc_array(i64 noundef %i.ce, i64 noundef 8) #9 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.i, i64 40 ; 3 uses
  store ptr %i.cf, ptr %i.cg, align 8, !tbaa !44
  %.not231 = icmp eq ptr %i.cf, null
  br i1 %.not231, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %._crit_edge313
  %.3187314 = load ptr, ptr %i.b, align 8, !tbaa !67 ; 2 uses
  %.not232315 = icmp eq ptr %.3187314, null
  br i1 %.not232315, label %._crit_edge319, label %.lr.ph318

.lr.ph318:                                        ; preds = %.preheader
  %i.ch = icmp ne ptr %i.j, null
  %i.ci = icmp ne ptr %i.k, null
  br label %bb.ae

bb.ae:                                            ; preds = %.lr.ph318, %bb.an
  %indvars.iv350 = phi i64 [ 0, %.lr.ph318 ], [ %indvars.iv.next351, %bb.an ] ; 2 uses
  %.3187317 = phi ptr [ %.3187314, %.lr.ph318 ], [ %.3187, %bb.an ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #9
  %i.cj = getelementptr inbounds nuw i8, ptr %.3187317, i64 8 ; 2 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !79
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 48
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !84
  %i.cn = getelementptr inbounds nuw i8, ptr %.3187317, i64 16 ; 2 uses
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !85
  %i.cp = call i32 @avfilter_pad_get_type(ptr noundef %i.cm, i32 noundef %i.co) #9 ; 3 uses
  %i.cq = icmp ne i32 %i.cp, 0
  %or.cond = select i1 %i.cq, i1 true, i1 %i.ch
  %i.cr = icmp ne i32 %i.cp, 1
  %or.cond3 = select i1 %i.cr, i1 true, i1 %i.ci
  %or.cond324 = select i1 %or.cond, i1 %or.cond3, i1 false
  br i1 %or.cond324, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.23) #9
  br label %.thread263

bb.ag:                                            ; preds = %bb.ae
  switch i32 %i.cp, label %bb.al [
    i32 0, label %bb.ah
    i32 1, label %bb.ai
  ]

bb.ah:                                            ; preds = %bb.ag
  %i.cs = load ptr, ptr %.3187317, align 8, !tbaa !76
  %i.ct = load ptr, ptr %i.ai, align 8, !tbaa !74
  %i.cu = call i32 @avfilter_graph_create_filter(ptr noundef nonnull %i.g, ptr noundef %i.j, ptr noundef %i.cs, ptr noundef null, ptr noundef null, ptr noundef %i.ct) #9 ; 2 uses
  %i.cv = icmp slt i32 %i.cu, 0
  br i1 %i.cv, label %.thread263, label %bb.am

bb.ai:                                            ; preds = %bb.ag
  %i.cw = load ptr, ptr %i.ai, align 8, !tbaa !74
  %i.cx = load ptr, ptr %.3187317, align 8, !tbaa !76
  %i.cy = call ptr @avfilter_graph_alloc_filter(ptr noundef %i.cw, ptr noundef %i.k, ptr noundef %i.cx) #9 ; 3 uses
  store ptr %i.cy, ptr %i.g, align 8, !tbaa !45
  %.not235 = icmp eq ptr %i.cy, null
  br i1 %.not235, label %.thread263, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.cz = call i32 @av_opt_set_array(ptr noundef nonnull %i.cy, ptr noundef nonnull @.str.24, i32 noundef 1, i32 noundef 0, i32 noundef 5, i32 noundef 14, ptr noundef nonnull @lavfi_read_header.sample_fmts) #9 ; 2 uses
  %i.da = icmp slt i32 %i.cz, 0
  br i1 %i.da, label %.thread263, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.db = load ptr, ptr %i.g, align 8, !tbaa !45
  %i.dc = call i32 @avfilter_init_dict(ptr noundef %i.db, ptr noundef null) #9 ; 2 uses
  %i.dd = icmp slt i32 %i.dc, 0
  br i1 %i.dd, label %.thread263, label %bb.am

bb.al:                                            ; preds = %bb.ag
  %i.de = load ptr, ptr %.3187317, align 8, !tbaa !76
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.25, ptr noundef %i.de) #9
  br label %.thread263

bb.am:                                            ; preds = %bb.ak, %bb.ah
  %i.df = load ptr, ptr %i.g, align 8, !tbaa !45  ; 2 uses
  %i.dg = load ptr, ptr %i.cg, align 8, !tbaa !44
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.dg, i64 %indvars.iv350
end_hunk_0
begin_hunk_1_@avfilter_init_dict
declare i32 @avfilter_init_dict(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @avfilter_link(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @avfilter_graph_config(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @avfilter_graph_dump(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fputs(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr noundef captures(none)) local_unnamed_addr #4

declare void @av_free(ptr noundef) local_unnamed_addr #2

declare i64 @av_buffersink_get_time_base(ptr noundef) local_unnamed_addr #2

declare i64 @av_buffersink_get_frame_rate(ptr noundef) local_unnamed_addr #2

declare void @avpriv_set_pts_info(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @av_buffersink_get_type(ptr noundef) local_unnamed_addr #2

declare i32 @av_buffersink_get_format(ptr noundef) local_unnamed_addr #2

declare i32 @av_buffersink_get_w(ptr noundef) local_unnamed_addr #2

declare i32 @av_buffersink_get_h(ptr noundef) local_unnamed_addr #2

declare i64 @av_buffersink_get_sample_aspect_ratio(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

declare i32 @av_buffersink_get_sample_rate(ptr noundef) local_unnamed_addr #2

declare i32 @av_buffersink_get_ch_layout(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @av_get_pcm_codec(i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @av_get_sample_fmt_name(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -12, 1) i32 @create_subcc_streams(ptr noundef %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 80 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !35
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 3 uses
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !38
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv
  %i.l = load i32, ptr %i.k, align 4, !tbaa !40
  %i.m = load ptr, ptr %i.h, align 8, !tbaa !39
  %i.n = sext i32 %i.l to i64
  %i.o = getelementptr inbounds [4 x i8], ptr %i.m, i64 %i.n ; 3 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !40
  %.not = icmp eq i32 %i.p, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = load i32, ptr %i.c, align 4, !tbaa !113
  store i32 %i.q, ptr %i.o, align 4, !tbaa !40
  %i.r = tail call ptr @avformat_new_stream(ptr noundef %0, ptr noundef null) #9 ; 3 uses
  %.not24 = icmp eq ptr %i.r, null
  br i1 %.not24, label %._crit_edge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !49   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  store i32 94218, ptr %i.u, align 4, !tbaa !53
  store i32 3, ptr %i.t, align 8, !tbaa !52
  %i.v = load ptr, ptr %i.i, align 8, !tbaa !46
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !48
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.z = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.aa = load <2 x i32>, ptr %i.y, align 4, !tbaa !40
  store <2 x i32> %i.aa, ptr %i.z, align 8, !tbaa !40
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  store i32 -1, ptr %i.o, align 4, !tbaa !40
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ab = load i32, ptr %i.d, align 8, !tbaa !35
  %i.ac = sext i32 %i.ab to i64
  %i.ad = icmp slt i64 %indvars.iv.next, %i.ac
  br i1 %i.ad, label %bb.b, label %._crit_edge, !llvm.loop !112

._crit_edge:                                      ; preds = %bb.c, %bb.f, %bb.a
  %.022 = phi i32 [ 0, %bb.a ], [ 0, %bb.f ], [ -12, %bb.c ]
  ret i32 %.022
}

declare void @avfilter_inout_free(ptr noundef) local_unnamed_addr #2

declare void @av_packet_move_ref(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @av_frame_alloc() local_unnamed_addr #2

declare i32 @av_buffersink_get_frame_flags(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i64 @av_rescale_q_rnd(i64 noundef, i64, i64, i32 noundef) local_unnamed_addr #6

declare void @av_frame_unref(ptr noundef) local_unnamed_addr #2

declare ptr @av_buffer_create(ptr noundef, i64 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @lavfi_free_frame(ptr nofree readnone captures(none) %0, ptr noundef %1) #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store ptr %1, ptr %i.a, align 8, !tbaa !55
  call void @av_frame_free(ptr noundef nonnull %i.a) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret void
}

declare i32 @av_get_bytes_per_sample(i32 noundef) local_unnamed_addr #2

declare i32 @av_new_packet(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @av_packet_pack_dictionary(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @av_packet_add_side_data(ptr noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @av_freep(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -2147483648, 1) i32 @create_subcc_packet(ptr %.24.val, ptr noundef nonnull %0, i32 noundef %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %.24.val, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !39
  %i.c = sext i32 %1 to i64
  %i.d = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.c
  %i.e = load i32, ptr %i.d, align 4, !tbaa !40   ; 2 uses
  %i.f = icmp slt i32 %i.e, 0
  br i1 %i.f, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call ptr @av_frame_get_side_data(ptr noundef nonnull %0, i32 noundef 1) #9 ; 3 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %.24.val, i64 88
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !115
  %i.k = trunc i64 %i.j to i32
  %i.l = tail call i32 @av_new_packet(ptr noundef nonnull %i.h, i32 noundef %i.k) #9 ; 2 uses
  %i.m = icmp slt i32 %i.l, 0
  br i1 %i.m, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %.24.val, i64 112
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !116
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !117
  %i.r = load i64, ptr %i.i, align 8, !tbaa !115
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.o, ptr align 1 %i.q, i64 %i.r, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %.24.val, i64 124
  store i32 %i.e, ptr %i.s, align 4, !tbaa !118
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.u = load i64, ptr %i.t, align 8, !tbaa !60
  %i.v = getelementptr inbounds nuw i8, ptr %.24.val, i64 96
  store i64 %i.u, ptr %i.v, align 8, !tbaa !119
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.a, %bb.d
  %.0 = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %bb.d ], [ %i.l, %bb.c ]
  ret i32 %.0
}

declare void @av_frame_free(ptr noundef) local_unnamed_addr #2

declare ptr @av_frame_get_side_data(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @avfilter_graph_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

attributes #0 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nofree nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { nounwind }
attributes #10 = { nounwind willreturn memory(read) }
attributes #11 = { cold }
attributes #12 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 _ZTS7AVClass", !9, i64 0}
!11 = !{!"p1 _ZTS13AVInputFormat", !9, i64 0}
!12 = !{!"p1 _ZTS14AVOutputFormat", !9, i64 0}
!13 = !{!"p1 _ZTS11AVIOContext", !9, i64 0}
!14 = !{!"any p2 pointer", !9, i64 0}
!15 = !{!"p2 _ZTS8AVStream", !14, i64 0}
!16 = !{!"p2 _ZTS13AVStreamGroup", !14, i64 0}
!17 = !{!"p2 _ZTS9AVChapter", !14, i64 0}
!18 = !{!"p1 omnipotent char", !9, i64 0}
!19 = !{!"long", !5, i64 0}
!20 = !{!"p2 _ZTS9AVProgram", !14, i64 0}
!21 = !{!"p1 _ZTS12AVDictionary", !9, i64 0}
!22 = !{!"AVIOInterruptCB", !9, i64 0, !9, i64 8}
!23 = !{!"p1 _ZTS7AVCodec", !9, i64 0}
!24 = !{!"AVFormatContext", !10, i64 0, !11, i64 8, !12, i64 16, !9, i64 24, !13, i64 32, !6, i64 40, !6, i64 44, !15, i64 48, !6, i64 56, !16, i64 64, !6, i64 72, !17, i64 80, !18, i64 88, !19, i64 96, !19, i64 104, !19, i64 112, !6, i64 120, !6, i64 124, !6, i64 128, !19, i64 136, !19, i64 144, !18, i64 152, !6, i64 160, !6, i64 164, !20, i64 168, !6, i64 176, !6, i64 180, !6, i64 184, !6, i64 188, !21, i64 192, !19, i64 200, !6, i64 208, !6, i64 212, !22, i64 216, !6, i64 232, !6, i64 236, !6, i64 240, !6, i64 244, !19, i64 248, !6, i64 256, !6, i64 260, !6, i64 264, !6, i64 268, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !6, i64 296, !6, i64 300, !19, i64 304, !6, i64 312, !6, i64 316, !6, i64 320, !6, i64 324, !6, i64 328, !18, i64 336, !18, i64 344, !18, i64 352, !18, i64 360, !6, i64 368, !23, i64 376, !23, i64 384, !23, i64 392, !23, i64 400, !6, i64 408, !9, i64 416, !9, i64 424, !19, i64 432, !18, i64 440, !9, i64 448, !9, i64 456, !19, i64 464, !18, i64 472}
!25 = !{!24, !9, i64 24}
!26 = !{!"p1 _ZTS13AVFilterGraph", !9, i64 0}
!27 = !{!"p2 _ZTS15AVFilterContext", !14, i64 0}
!28 = !{!"p1 int", !9, i64 0}
!29 = !{!"p1 _ZTS11AVBufferRef", !9, i64 0}
!30 = !{!"p1 _ZTS16AVPacketSideData", !9, i64 0}
!31 = !{!"AVRational", !6, i64 0, !6, i64 4}
!32 = !{!"AVPacket", !29, i64 0, !19, i64 8, !19, i64 16, !18, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !30, i64 48, !6, i64 56, !19, i64 64, !19, i64 72, !9, i64 80, !29, i64 88, !31, i64 96}
!33 = !{!"", !10, i64 0, !18, i64 8, !18, i64 16, !18, i64 24, !26, i64 32, !27, i64 40, !28, i64 48, !28, i64 56, !28, i64 64, !28, i64 72, !6, i64 80, !32, i64 88}
!34 = !{!"llvm.loop.mustprogress"}
!35 = !{!33, !6, i64 80}
!36 = !{!33, !28, i64 48}
!37 = !{!33, !28, i64 56}
!38 = !{!33, !28, i64 64}
!39 = !{!33, !28, i64 72}
!40 = !{!6, !6, i64 0}
!41 = !{!"p1 _ZTS15AVFilterContext", !9, i64 0}
!42 = !{!"p1 _ZTS17AVCodecParameters", !9, i64 0}
!43 = !{!"AVStream", !10, i64 0, !6, i64 8, !6, i64 12, !42, i64 16, !9, i64 24, !31, i64 32, !19, i64 40, !19, i64 48, !19, i64 56, !6, i64 64, !6, i64 68, !31, i64 72, !21, i64 80, !31, i64 88, !32, i64 96, !6, i64 200, !31, i64 204, !6, i64 212}
!44 = !{!33, !27, i64 40}
!45 = !{!41, !41, i64 0}
!46 = !{!24, !15, i64 48}
!47 = !{!"p1 _ZTS8AVStream", !9, i64 0}
!48 = !{!47, !47, i64 0}
!49 = !{!43, !42, i64 16}
!50 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !5, i64 8, !9, i64 16}
!51 = !{!"AVCodecParameters", !6, i64 0, !6, i64 4, !6, i64 8, !18, i64 16, !6, i64 24, !30, i64 32, !6, i64 40, !6, i64 44, !19, i64 48, !6, i64 56, !6, i64 60, !6, i64 64, !6, i64 68, !6, i64 72, !6, i64 76, !31, i64 80, !31, i64 88, !6, i64 96, !6, i64 100, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !50, i64 128, !6, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !6, i64 168, !6, i64 172, !6, i64 176}
!52 = !{!51, !6, i64 0}
!53 = !{!51, !6, i64 4}
!54 = !{!"p1 _ZTS7AVFrame", !9, i64 0}
!55 = !{!54, !54, i64 0}
!56 = !{!"p2 omnipotent char", !14, i64 0}
!57 = !{!"p2 _ZTS11AVBufferRef", !14, i64 0}
!58 = !{!"p2 _ZTS15AVFrameSideData", !14, i64 0}
!59 = !{!"AVFrame", !5, i64 0, !5, i64 64, !56, i64 96, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !31, i64 124, !19, i64 136, !19, i64 144, !31, i64 152, !6, i64 160, !9, i64 168, !6, i64 176, !6, i64 180, !5, i64 184, !57, i64 248, !6, i64 256, !58, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !6, i64 296, !19, i64 304, !21, i64 312, !6, i64 320, !29, i64 328, !29, i64 336, !19, i64 344, !19, i64 352, !19, i64 360, !19, i64 368, !9, i64 376, !50, i64 384, !19, i64 408, !6, i64 416}
!60 = !{!59, !19, i64 136}
!61 = distinct !{!61, !34}
!62 = distinct !{!62, !34}
!63 = distinct !{!63, !34}
!64 = distinct !{!64, !34}
!65 = distinct !{!65, !34}
!66 = !{!"p1 _ZTS13AVFilterInOut", !9, i64 0}
!67 = !{!66, !66, i64 0}
!68 = !{!33, !18, i64 16}
!69 = !{!33, !18, i64 8}
!70 = !{!13, !13, i64 0}
!71 = !{!21, !21, i64 0}
!72 = !{!24, !18, i64 352}
!73 = !{!24, !18, i64 88}
!74 = !{!33, !26, i64 32}
!75 = !{!"AVFilterInOut", !18, i64 0, !41, i64 8, !6, i64 16, !66, i64 24}
!76 = !{!75, !18, i64 0}
!77 = !{!5, !5, i64 0}
!78 = !{!43, !6, i64 12}
!79 = !{!75, !41, i64 8}
!80 = !{!"p1 _ZTS8AVFilter", !9, i64 0}
!81 = !{!"p1 _ZTS11AVFilterPad", !9, i64 0}
!82 = !{!"p2 _ZTS12AVFilterLink", !14, i64 0}
!83 = !{!"AVFilterContext", !10, i64 0, !80, i64 8, !18, i64 16, !81, i64 24, !82, i64 32, !6, i64 40, !81, i64 48, !82, i64 56, !6, i64 64, !9, i64 72, !26, i64 80, !6, i64 88, !6, i64 92, !18, i64 96, !6, i64 104, !29, i64 112, !6, i64 120}
!84 = !{!83, !81, i64 48}
!85 = !{!75, !6, i64 16}
!86 = !{!33, !18, i64 24}
!87 = !{!"p1 _ZTS8_IO_FILE", !9, i64 0}
!88 = !{!87, !87, i64 0}
!89 = !{!51, !6, i64 44}
!90 = !{!51, !6, i64 72}
!91 = !{!51, !6, i64 76}
!92 = !{!24, !19, i64 136}
!93 = !{!51, !6, i64 152}
!94 = distinct !{!94, !34}
!95 = !{!33, !6, i64 120}
!96 = !{!32, !6, i64 32}
!97 = !{!32, !29, i64 0}
!98 = !{!"p1 _ZTS8AVBuffer", !9, i64 0}
!99 = !{!"AVBufferRef", !98, i64 0, !18, i64 8, !19, i64 16}
!100 = !{!99, !18, i64 8}
!101 = !{!32, !18, i64 24}
!102 = !{!99, !19, i64 16}
!103 = !{!32, !6, i64 40}
!104 = !{!59, !6, i64 112}
!105 = !{!59, !6, i64 116}
!106 = !{!59, !6, i64 388}
!107 = !{!18, !18, i64 0}
!108 = !{!59, !21, i64 312}
!109 = !{!19, !19, i64 0}
!110 = !{!32, !6, i64 36}
!111 = !{!32, !19, i64 8}
!112 = distinct !{!112, !34}
!113 = !{!24, !6, i64 44}
!114 = !{!"AVFrameSideData", !6, i64 0, !18, i64 8, !19, i64 16, !21, i64 24, !29, i64 32}
!115 = !{!114, !19, i64 16}
!116 = !{!33, !18, i64 112}
!117 = !{!114, !18, i64 8}
!118 = !{!33, !6, i64 124}
!119 = !{!33, !19, i64 96}
end_hunk_1
