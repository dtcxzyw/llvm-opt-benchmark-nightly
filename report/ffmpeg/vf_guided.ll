Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vf_guided?download=true
inline.NumInlined: 7
inline.NumDeleted: 5
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@config_output:bb.a

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

declare noalias ptr @av_calloc(i64 noundef, i64 noundef) local_unnamed_addr #1

declare i32 @ff_framesync_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal i32 @process_frame(ptr noundef %0) #2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !86   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !29
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  store ptr null, ptr %i.b, align 8, !tbaa !34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  store ptr null, ptr %i.c, align 8, !tbaa !34
  %i.i = call i32 @ff_framesync_dualinput_get(ptr noundef %0, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #8 ; 2 uses
  %i.j = icmp slt i32 %i.i, 0
  br i1 %i.j, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 104
  %i.l = load i32, ptr %i.k, align 8, !tbaa !35
  %.not = icmp eq i32 %i.l, 0
  %i.m = load ptr, ptr %i.b, align 8, !tbaa !34   ; 2 uses
  br i1 %.not, label %bb.c, label %.sink.split

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %i.c, align 8, !tbaa !34
  %i.o = call fastcc i32 @filter_frame(ptr noundef nonnull %i.e, ptr noundef %i.a, ptr noundef %i.m, ptr noundef %i.n) ; 2 uses
  %i.p = icmp slt i32 %i.o, 0
  br i1 %i.p, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @av_frame_free(ptr noundef nonnull %i.b) #8
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !34
  br label %.sink.split

.sink.split:                                      ; preds = %bb.b, %bb.d
  %.sink = phi ptr [ %i.q, %bb.d ], [ %i.m, %bb.b ]
  %i.r = call i32 @ff_filter_frame(ptr noundef %i.h, ptr noundef %.sink) #8
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %bb.c, %bb.a
  %.0 = phi i32 [ %i.i, %bb.a ], [ %i.o, %bb.c ], [ %i.r, %.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i32 %.0
}

declare i32 @ff_framesync_configure(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

declare i32 @ff_framesync_dualinput_get(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @ff_filter_frame(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -12, 1) i32 @filter_frame(ptr noundef %0, ptr nofree noundef nonnull captures(none) initializes((0, 8)) %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3) unnamed_addr #2 {
bb.a:
  %4 = alloca %struct.ThreadData, align 8         ; 14 uses
  %5 = alloca %struct.ThreadData, align 8         ; 14 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19   ; 20 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !29
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !31   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.g = load i32, ptr %i.f, align 8, !tbaa !43
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 44
  %i.i = load i32, ptr %i.h, align 4, !tbaa !44
  %i.j = tail call ptr @ff_get_video_buffer(ptr noundef %i.e, i32 noundef %i.g, i32 noundef %i.i) #8 ; 3 uses
  store ptr %i.j, ptr %1, align 8, !tbaa !34
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = tail call i32 @av_frame_copy_props(ptr noundef nonnull %i.j, ptr noundef %2) #8 ; 0 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 136 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !57
  %i.n = icmp sgt i32 %i.m, 0
  br i1 %i.n, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 124
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 140 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 108
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 160 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 116 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 176 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 184 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 192 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 200 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 208 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 216 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 224 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 232 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 240 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 248 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 256 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 264 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 28
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 6 uses
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 272 ; 12 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.aq = getelementptr inbounds nuw i8, ptr %5, i64 28
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 6 uses
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.j
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.j ] ; 17 uses
  %i.at = load i32, ptr %i.o, align 4, !tbaa !130
  %i.au = trunc nuw nsw i64 %indvars.iv to i32
  %i.av = shl nuw i32 1, %i.au
  %i.aw = and i32 %i.at, %i.av
  %.not73 = icmp eq i32 %i.aw, 0
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !36 ; 9 uses
  br i1 %.not73, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.az = load ptr, ptr %1, align 8, !tbaa !34    ; 2 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %indvars.iv
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !131
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 64
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %indvars.iv
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !36
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !131
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !36
  %i.bj = load i32, ptr %i.p, align 4, !tbaa !58
  %i.bk = add nsw i32 %i.bj, 7
  %i.bl = sdiv i32 %i.bk, 8
  %i.bm = mul nsw i32 %i.bl, %i.ay
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !36
  call void @av_image_copy_plane(ptr noundef %i.bb, i32 noundef %i.be, ptr noundef %i.bg, i32 noundef %i.bi, i32 noundef %i.bm, i32 noundef %i.bo) #8
  br label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.bp = load i32, ptr %i.p, align 4, !tbaa !58  ; 3 uses
  %i.bq = icmp slt i32 %i.bp, 9
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !131 ; 11 uses
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !131 ; 9 uses
  %i.bv = load ptr, ptr %1, align 8, !tbaa !34    ; 3 uses
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %indvars.iv
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !131 ; 2 uses
  %i.by = load float, ptr %i.q, align 4, !tbaa !132 ; 4 uses
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !36 ; 8 uses
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !36 ; 4 uses
  br i1 %i.bq, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !36 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bv, i64 64
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %indvars.iv
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !36
  %i.ci = shl nuw nsw i32 1, %i.bp
  %i.cj = uitofp nsz nneg i32 %i.ci to float
  %i.ck = fadd nsz float %i.cj, -1.000000e+00     ; 4 uses
  %i.cl = load i32, ptr %i.v, align 4, !tbaa !59  ; 8 uses
  %i.cm = srem i32 %i.ca, %i.cl
  %i.cn = icmp ne i32 %i.cm, 0
  %i.co = sdiv i32 %i.ca, %i.cl
  %i.cp = zext i1 %i.cn to i32
  %i.cq = add nsw i32 %i.co, %i.cp                ; 5 uses
  %i.cr = srem i32 %i.ay, %i.cl
  %i.cs = icmp ne i32 %i.cr, 0
  %i.ct = sdiv i32 %i.ay, %i.cl
  %i.cu = zext i1 %i.cs to i32
  %i.cv = add nsw i32 %i.ct, %i.cu                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  %i.cw = call i32 @ff_filter_get_nb_threads(ptr noundef %0) #9
  %i.cx = load ptr, ptr %i.w, align 8, !tbaa !45  ; 9 uses
  %i.cy = load ptr, ptr %i.x, align 8, !tbaa !46  ; 9 uses
  %i.cz = load ptr, ptr %i.y, align 8, !tbaa !47  ; 9 uses
  %i.da = load ptr, ptr %i.z, align 8, !tbaa !48  ; 9 uses
  %i.db = load ptr, ptr %i.aa, align 8, !tbaa !49 ; 6 uses
  %i.dc = load ptr, ptr %i.ab, align 8, !tbaa !50 ; 6 uses
  %i.dd = load ptr, ptr %i.ac, align 8, !tbaa !51 ; 6 uses
  %i.de = load ptr, ptr %i.ad, align 8, !tbaa !52 ; 6 uses
  %i.df = load ptr, ptr %i.ae, align 8, !tbaa !53 ; 9 uses
  %i.dg = load ptr, ptr %i.af, align 8, !tbaa !54 ; 9 uses
  %i.dh = load ptr, ptr %i.ag, align 8, !tbaa !55 ; 2 uses
  %i.di = load ptr, ptr %i.ah, align 8, !tbaa !56 ; 2 uses
  %i.dj = icmp sgt i32 %i.cq, 0
  %i.dk = icmp sgt i32 %i.cv, 0
  %or.cond.i = select i1 %i.dj, i1 %i.dk, i1 false ; 2 uses
  br i1 %or.cond.i, label %.preheader184.preheader.i, label %._crit_edge187.split.i

.preheader184.preheader.i:                        ; preds = %bb.f
  %i.dl = sext i32 %i.cl to i64                   ; 2 uses
  %i.dm = zext nneg i32 %i.cv to i64              ; 7 uses
  %i.dn = sext i32 %i.cc to i64                   ; 2 uses
  %i.do = sext i32 %i.ce to i64                   ; 2 uses
  %wide.trip.count202.i = zext nneg i32 %i.cq to i64 ; 3 uses
  %i.dp = add nsw i64 %wide.trip.count202.i, -1   ; 2 uses
  %i.dq = mul nsw i64 %i.dp, %i.do
  %i.dr = getelementptr i8, ptr %i.bu, i64 %i.dq
  %scevgep269 = getelementptr i8, ptr %i.dr, i64 %i.dm ; 4 uses
  %i.ds = mul nsw i64 %i.dp, %i.dn
  %i.dt = getelementptr i8, ptr %i.bs, i64 %i.ds
  %scevgep270 = getelementptr i8, ptr %i.dt, i64 %i.dm ; 4 uses
  %6 = shl nuw nsw i64 %wide.trip.count202.i, 2
  %7 = mul nuw i64 %6, %i.dm                      ; 4 uses
  %scevgep271 = getelementptr i8, ptr %i.da, i64 %7 ; 5 uses
  %scevgep272 = getelementptr i8, ptr %i.cz, i64 %7 ; 5 uses
  %scevgep273.a = getelementptr i8, ptr %i.cy, i64 %7 ; 5 uses
  %scevgep274.a = getelementptr i8, ptr %i.cx, i64 %7 ; 5 uses
  %min.iters.check276 = icmp ugt i32 %i.cv, 7
  %ident.check.not = icmp eq i32 %i.cl, 1
  %or.cond = and i1 %min.iters.check276, %ident.check.not
  %bound0278 = icmp ult ptr %i.cx, %scevgep273.a
  %bound1279 = icmp ult ptr %i.cy, %scevgep274.a
  %found.conflict280 = and i1 %bound0278, %bound1279
  %bound0281 = icmp ult ptr %i.cx, %scevgep272
  %bound1282 = icmp ult ptr %i.cz, %scevgep274.a
  %found.conflict283 = and i1 %bound0281, %bound1282
  %conflict.rdx284 = or i1 %found.conflict280, %found.conflict283
  %bound0285 = icmp ult ptr %i.cx, %scevgep271
  %bound1286 = icmp ult ptr %i.da, %scevgep274.a
  %found.conflict287 = and i1 %bound0285, %bound1286
  %conflict.rdx288 = or i1 %conflict.rdx284, %found.conflict287
  %bound0289 = icmp ult ptr %i.cx, %scevgep270
  %bound1290 = icmp ult ptr %i.bs, %scevgep274.a
  %found.conflict291 = and i1 %bound0289, %bound1290
  %stride.check = icmp slt i32 %i.cc, 0
  %i.du = or i1 %found.conflict291, %stride.check
  %conflict.rdx292 = or i1 %conflict.rdx288, %i.du
  %bound0293 = icmp ult ptr %i.cx, %scevgep269
  %bound1294 = icmp ult ptr %i.bu, %scevgep274.a
  %found.conflict295 = and i1 %bound0293, %bound1294
  %stride.check296 = icmp slt i32 %i.ce, 0
  %i.dv = or i1 %found.conflict295, %stride.check296
  %conflict.rdx297 = or i1 %conflict.rdx292, %i.dv
  %bound0298 = icmp ult ptr %i.cy, %scevgep272
  %bound1299 = icmp ult ptr %i.cz, %scevgep273.a
  %found.conflict300 = and i1 %bound0298, %bound1299
  %conflict.rdx301 = or i1 %conflict.rdx297, %found.conflict300
  %bound0302 = icmp ult ptr %i.cy, %scevgep271
  %bound1303 = icmp ult ptr %i.da, %scevgep273.a
  %found.conflict304 = and i1 %bound0302, %bound1303
  %conflict.rdx305 = or i1 %conflict.rdx301, %found.conflict304
  %bound0306 = icmp ult ptr %i.cy, %scevgep270
  %bound1307 = icmp ult ptr %i.bs, %scevgep273.a
  %found.conflict308 = and i1 %bound0306, %bound1307
  %conflict.rdx309 = or i1 %conflict.rdx305, %found.conflict308
  %bound0310 = icmp ult ptr %i.cy, %scevgep269
  %bound1311 = icmp ult ptr %i.bu, %scevgep273.a
  %found.conflict312 = and i1 %bound0310, %bound1311
  %conflict.rdx313 = or i1 %conflict.rdx309, %found.conflict312
  %bound0314 = icmp ult ptr %i.cz, %scevgep271
  %bound1315 = icmp ult ptr %i.da, %scevgep272
  %found.conflict316 = and i1 %bound0314, %bound1315
  %conflict.rdx317 = or i1 %conflict.rdx313, %found.conflict316
  %bound0318 = icmp ult ptr %i.cz, %scevgep270
  %bound1319 = icmp ult ptr %i.bs, %scevgep272
  %found.conflict320 = and i1 %bound0318, %bound1319
  %conflict.rdx321 = or i1 %conflict.rdx317, %found.conflict320
  %bound0322 = icmp ult ptr %i.cz, %scevgep269
  %bound1323 = icmp ult ptr %i.bu, %scevgep272
  %found.conflict324 = and i1 %bound0322, %bound1323
  %conflict.rdx325 = or i1 %conflict.rdx321, %found.conflict324
  %bound0326 = icmp ult ptr %i.da, %scevgep270
  %bound1327 = icmp ult ptr %i.bs, %scevgep271
  %found.conflict328 = and i1 %bound0326, %bound1327
  %conflict.rdx329 = or i1 %conflict.rdx325, %found.conflict328
  %bound0330 = icmp ult ptr %i.da, %scevgep269
  %bound1331 = icmp ult ptr %i.bu, %scevgep271
  %found.conflict332 = and i1 %bound0330, %bound1331
  %conflict.rdx333 = or i1 %conflict.rdx329, %found.conflict332
  %n.vec335 = and i64 %i.dm, 2147483644           ; 3 uses
  %broadcast.splatinsert336 = insertelement <4 x float> poison, float %i.ck, i64 0
  %broadcast.splat337 = shufflevector <4 x float> %broadcast.splatinsert336, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %cmp.n345 = icmp eq i64 %n.vec335, %i.dm
  br label %.preheader184.i

.preheader184.i:                                  ; preds = %._crit_edge.i, %.preheader184.preheader.i
  %indvars.iv199.i = phi i64 [ 0, %.preheader184.preheader.i ], [ %indvars.iv.next200.i, %._crit_edge.i ] ; 4 uses
  %i.dw = mul nuw nsw i64 %indvars.iv199.i, %i.dm ; 2 uses
  %i.dx = mul nsw i64 %indvars.iv199.i, %i.dn     ; 2 uses
  %i.dy = mul nsw i64 %indvars.iv199.i, %i.do     ; 2 uses
  %or.cond.not = xor i1 %or.cond, true
  %brmerge = select i1 %or.cond.not, i1 true, i1 %conflict.rdx333
  br i1 %brmerge, label %scalar.ph275.preheader, label %vector.ph334

vector.ph334:                                     ; preds = %.preheader184.i
  %invariant.gep526 = getelementptr i8, ptr %i.bs, i64 %i.dx
  %invariant.gep528 = getelementptr i8, ptr %i.bu, i64 %i.dy
  br label %vector.body338

vector.body338:                                   ; preds = %vector.body338, %vector.ph334
  %index339 = phi i64 [ 0, %vector.ph334 ], [ %index.next343, %vector.body338 ] ; 4 uses
  %i.dz = add nuw nsw i64 %index339, %i.dw        ; 4 uses
  %gep527 = getelementptr i8, ptr %invariant.gep526, i64 %index339
  %wide.load340 = load <4 x i8>, ptr %gep527, align 1, !tbaa !133, !alias.scope !134
  %i.ea = uitofp <4 x i8> %wide.load340 to <4 x float>
  %i.eb = fdiv nsz <4 x float> %i.ea, %broadcast.splat337 ; 3 uses
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %i.dz ; 2 uses
  store <4 x float> %i.eb, ptr %i.ec, align 4, !tbaa !60, !alias.scope !135, !noalias !136
  %i.ed = fmul nsz <4 x float> %i.eb, %i.eb
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %i.dz
  store <4 x float> %i.ed, ptr %i.ee, align 4, !tbaa !60, !alias.scope !137, !noalias !138
  %gep529 = getelementptr i8, ptr %invariant.gep528, i64 %index339
  %wide.load341 = load <4 x i8>, ptr %gep529, align 1, !tbaa !133, !alias.scope !139
  %i.ef = uitofp <4 x i8> %wide.load341 to <4 x float>
  %i.eg = fdiv nsz <4 x float> %i.ef, %broadcast.splat337 ; 2 uses
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %i.dz
  store <4 x float> %i.eg, ptr %i.eh, align 4, !tbaa !60, !alias.scope !140, !noalias !141
  %wide.load342 = load <4 x float>, ptr %i.ec, align 4, !tbaa !60, !alias.scope !135, !noalias !136
  %i.ei = fmul nsz <4 x float> %wide.load342, %i.eg
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %i.dz
  store <4 x float> %i.ei, ptr %i.ej, align 4, !tbaa !60, !alias.scope !142, !noalias !143
  %index.next343 = add nuw i64 %index339, 4       ; 2 uses
  %i.ek = icmp eq i64 %index.next343, %n.vec335
  br i1 %i.ek, label %middle.block344, label %vector.body338, !llvm.loop !94

middle.block344:                                  ; preds = %vector.body338
  br i1 %cmp.n345, label %._crit_edge.i, label %scalar.ph275.preheader

scalar.ph275.preheader:                           ; preds = %.preheader184.i, %middle.block344
  %indvars.iv.i.ph = phi i64 [ %n.vec335, %middle.block344 ], [ 0, %.preheader184.i ]
  br label %scalar.ph275

._crit_edge187.split.i:                           ; preds = %._crit_edge.i, %bb.f
  store i32 %i.cv, ptr %5, align 8, !tbaa !65
  store i32 %i.cq, ptr %i.ao, align 4, !tbaa !66
  store i32 %i.cv, ptr %i.ap, align 8, !tbaa !67
  store i32 %i.cv, ptr %i.aq, align 4, !tbaa !68
  store ptr %i.cx, ptr %i.ar, align 8, !tbaa !69
  store ptr %i.db, ptr %i.as, align 8, !tbaa !70
  %i.el = load ptr, ptr %i.an, align 8, !tbaa !71
  %i.em = call i32 @llvm.smin.i32(i32 %i.cq, i32 %i.cw) ; 6 uses
  %i.en = call i32 @ff_filter_execute(ptr noundef %0, ptr noundef %i.el, ptr noundef nonnull %5, ptr noundef null, i32 noundef %i.em) #8 ; 0 uses
  store ptr %i.cy, ptr %i.ar, align 8, !tbaa !69
  store ptr %i.dc, ptr %i.as, align 8, !tbaa !70
  %i.eo = load ptr, ptr %i.an, align 8, !tbaa !71
  %i.ep = call i32 @ff_filter_execute(ptr noundef %0, ptr noundef %i.eo, ptr noundef nonnull %5, ptr noundef null, i32 noundef %i.em) #8 ; 0 uses
  store ptr %i.cz, ptr %i.ar, align 8, !tbaa !69
  store ptr %i.dd, ptr %i.as, align 8, !tbaa !70
  %i.eq = load ptr, ptr %i.an, align 8, !tbaa !71
  %i.er = call i32 @ff_filter_execute(ptr noundef %0, ptr noundef %i.eq, ptr noundef nonnull %5, ptr noundef null, i32 noundef %i.em) #8 ; 0 uses
  store ptr %i.da, ptr %i.ar, align 8, !tbaa !69
  store ptr %i.de, ptr %i.as, align 8, !tbaa !70
  %i.es = load ptr, ptr %i.an, align 8, !tbaa !71
  %i.et = call i32 @ff_filter_execute(ptr noundef %0, ptr noundef %i.es, ptr noundef nonnull %5, ptr noundef null, i32 noundef %i.em) #8 ; 0 uses
  br i1 %or.cond.i, label %.preheader183.preheader.i, label %._crit_edge191.split.i

.preheader183.preheader.i:                        ; preds = %._crit_edge187.split.i
  %i.eu = zext nneg i32 %i.cv to i64              ; 5 uses
  %wide.trip.count212.i = zext nneg i32 %i.cq to i64 ; 2 uses
  %i.ev = shl nuw nsw i64 %wide.trip.count212.i, 2
  %8 = mul nuw i64 %i.ev, %i.eu                   ; 6 uses
  %scevgep = getelementptr i8, ptr %i.dd, i64 %8  ; 2 uses
  %scevgep165 = getelementptr i8, ptr %i.de, i64 %8 ; 2 uses
  %scevgep166 = getelementptr i8, ptr %i.db, i64 %8 ; 2 uses
  %scevgep167 = getelementptr i8, ptr %i.dc, i64 %8 ; 2 uses
  %scevgep168 = getelementptr i8, ptr %i.dg, i64 %8 ; 5 uses
  %scevgep169 = getelementptr i8, ptr %i.df, i64 %8 ; 5 uses
  %min.iters.check = icmp ult i32 %i.cv, 4
  %bound0 = icmp ult ptr %i.df, %scevgep168
  %bound1 = icmp ult ptr %i.dg, %scevgep169
  %found.conflict = and i1 %bound0, %bound1
  %bound0170 = icmp ult ptr %i.df, %scevgep167
  %bound1171 = icmp ult ptr %i.dc, %scevgep169
  %found.conflict172 = and i1 %bound0170, %bound1171
  %conflict.rdx = or i1 %found.conflict, %found.conflict172
  %bound0173 = icmp ult ptr %i.df, %scevgep166
  %bound1174 = icmp ult ptr %i.db, %scevgep169
  %found.conflict175 = and i1 %bound0173, %bound1174
  %conflict.rdx176 = or i1 %conflict.rdx, %found.conflict175
  %bound0177 = icmp ult ptr %i.df, %scevgep165
  %bound1178 = icmp ult ptr %i.de, %scevgep169
  %found.conflict179 = and i1 %bound0177, %bound1178
  %conflict.rdx180 = or i1 %conflict.rdx176, %found.conflict179
  %bound0181 = icmp ult ptr %i.df, %scevgep
  %bound1182 = icmp ult ptr %i.dd, %scevgep169
  %found.conflict183 = and i1 %bound0181, %bound1182
  %conflict.rdx184 = or i1 %conflict.rdx180, %found.conflict183
  %bound0185 = icmp ult ptr %i.dg, %scevgep167
  %bound1186 = icmp ult ptr %i.dc, %scevgep168
  %found.conflict187 = and i1 %bound0185, %bound1186
  %conflict.rdx188 = or i1 %conflict.rdx184, %found.conflict187
  %bound0189 = icmp ult ptr %i.dg, %scevgep166
  %bound1190 = icmp ult ptr %i.db, %scevgep168
  %found.conflict191 = and i1 %bound0189, %bound1190
  %conflict.rdx192 = or i1 %conflict.rdx188, %found.conflict191
  %bound0193 = icmp ult ptr %i.dg, %scevgep165
  %bound1194 = icmp ult ptr %i.de, %scevgep168
  %found.conflict195 = and i1 %bound0193, %bound1194
  %conflict.rdx196 = or i1 %conflict.rdx192, %found.conflict195
  %bound0197 = icmp ult ptr %i.dg, %scevgep
  %bound1198 = icmp ult ptr %i.dd, %scevgep168
  %found.conflict199 = and i1 %bound0197, %bound1198
  %conflict.rdx200 = or i1 %conflict.rdx196, %found.conflict199
  %n.vec = and i64 %i.eu, 2147483644              ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.by, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  %cmp.n = icmp eq i64 %n.vec, %i.eu
  br label %.preheader183.i

._crit_edge.i:                                    ; preds = %scalar.ph275, %middle.block344
  %indvars.iv.next200.i = add nuw nsw i64 %indvars.iv199.i, 1 ; 2 uses
  %exitcond203.not.i = icmp eq i64 %indvars.iv.next200.i, %wide.trip.count202.i
  br i1 %exitcond203.not.i, label %._crit_edge187.split.i, label %.preheader184.i, !llvm.loop !95

scalar.ph275:                                     ; preds = %scalar.ph275.preheader, %scalar.ph275
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph275 ], [ %indvars.iv.i.ph, %scalar.ph275.preheader ] ; 4 uses
  %i.ew = add nuw nsw i64 %indvars.iv.i, %i.dw    ; 4 uses
  %i.ex = add nsw i64 %indvars.iv.i, %i.dx
  %i.ey = mul nsw i64 %i.ex, %i.dl
  %i.ez = getelementptr inbounds i8, ptr %i.bs, i64 %i.ey
  %i.fa = load i8, ptr %i.ez, align 1, !tbaa !133
  %i.fb = uitofp i8 %i.fa to float
  %i.fc = fdiv nsz float %i.fb, %i.ck             ; 3 uses
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.cx, i64 %i.ew ; 2 uses
  store float %i.fc, ptr %i.fd, align 4, !tbaa !60
  %i.fe = fmul nsz float %i.fc, %i.fc
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %i.ew
  store float %i.fe, ptr %i.ff, align 4, !tbaa !60
  %i.fg = add nsw i64 %indvars.iv.i, %i.dy
  %i.fh = mul nsw i64 %i.fg, %i.dl
  %i.fi = getelementptr inbounds i8, ptr %i.bu, i64 %i.fh
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !133
  %i.fk = uitofp i8 %i.fj to float
  %i.fl = fdiv nsz float %i.fk, %i.ck             ; 2 uses
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %i.ew
  store float %i.fl, ptr %i.fm, align 4, !tbaa !60
  %i.fn = load float, ptr %i.fd, align 4, !tbaa !60
  %i.fo = fmul nsz float %i.fn, %i.fl
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %i.ew
  store float %i.fo, ptr %i.fp, align 4, !tbaa !60
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.dm
  br i1 %exitcond.not.i, label %._crit_edge.i, label %scalar.ph275, !llvm.loop !96

.preheader183.i:                                  ; preds = %._crit_edge189.i, %.preheader183.preheader.i
  %indvars.iv209.i = phi i64 [ 0, %.preheader183.preheader.i ], [ %indvars.iv.next210.i, %._crit_edge189.i ] ; 2 uses
  %i.fq = mul nuw nsw i64 %indvars.iv209.i, %i.eu ; 2 uses
  %brmerge530 = select i1 %min.iters.check, i1 true, i1 %conflict.rdx200
  br i1 %brmerge530, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader183.i, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader183.i ] ; 2 uses
  %i.fr = add nuw nsw i64 %index, %i.fq           ; 6 uses
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %i.fr
  %wide.load = load <4 x float>, ptr %i.fs, align 4, !tbaa !60, !alias.scope !144
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %i.fr ; 2 uses
  %wide.load201 = load <4 x float>, ptr %i.ft, align 4, !tbaa !60, !alias.scope !145 ; 2 uses
  %i.fu = fneg nsz <4 x float> %wide.load201      ; 2 uses
  %i.fv = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fu, <4 x float> %wide.load201, <4 x float> %wide.load)
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %i.fr
  %wide.load202 = load <4 x float>, ptr %i.fw, align 4, !tbaa !60, !alias.scope !146
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %i.fr
  %wide.load203 = load <4 x float>, ptr %i.fx, align 4, !tbaa !60, !alias.scope !147 ; 2 uses
  %i.fy = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fu, <4 x float> %wide.load203, <4 x float> %wide.load202)
  %i.fz = fadd nsz <4 x float> %broadcast.splat, %i.fv
  %i.ga = fdiv nsz <4 x float> %i.fy, %i.fz       ; 2 uses
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %i.fr
  store <4 x float> %i.ga, ptr %i.gb, align 4, !tbaa !60, !alias.scope !148, !noalias !149
  %wide.load205 = load <4 x float>, ptr %i.ft, align 4, !tbaa !60, !alias.scope !145
  %i.gc = fneg nsz <4 x float> %i.ga
  %i.gd = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gc, <4 x float> %wide.load205, <4 x float> %wide.load203)
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %i.fr
  store <4 x float> %i.gd, ptr %i.ge, align 4, !tbaa !60, !alias.scope !150, !noalias !151
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.gf = icmp eq i64 %index.next, %n.vec
  br i1 %i.gf, label %middle.block, label %vector.body, !llvm.loop !104

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge189.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader183.i, %middle.block
  %indvars.iv204.i.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader183.i ]
  br label %scalar.ph

._crit_edge191.split.i:                           ; preds = %._crit_edge189.i, %._crit_edge187.split.i
  store ptr %i.df, ptr %i.ar, align 8, !tbaa !69
  store ptr %i.dh, ptr %i.as, align 8, !tbaa !70
  %i.gg = load ptr, ptr %i.an, align 8, !tbaa !71
  %i.gh = call i32 @ff_filter_execute(ptr noundef %0, ptr noundef %i.gg, ptr noundef nonnull %5, ptr noundef null, i32 noundef %i.em) #8 ; 0 uses
  store ptr %i.dg, ptr %i.ar, align 8, !tbaa !69
  store ptr %i.di, ptr %i.as, align 8, !tbaa !70
  %i.gi = load ptr, ptr %i.an, align 8, !tbaa !71
  %i.gj = call i32 @ff_filter_execute(ptr noundef %0, ptr noundef %i.gi, ptr noundef nonnull %5, ptr noundef null, i32 noundef %i.em) #8 ; 0 uses
  %i.gk = icmp sgt i32 %i.ca, 0
  %i.gl = icmp sgt i32 %i.ay, 0
  %or.cond197.i = and i1 %i.gl, %i.gk
  br i1 %or.cond197.i, label %.preheader.preheader.i, label %guided_byte.exit

.preheader.preheader.i:                           ; preds = %._crit_edge191.split.i
  %i.gm = sext i32 %i.cc to i64
  %i.gn = sext i32 %i.ch to i64
  %wide.trip.count222.i = zext nneg i32 %i.ca to i64
  %wide.trip.count217.i = zext nneg i32 %i.ay to i64
  br label %.preheader.i

._crit_edge189.i:                                 ; preds = %scalar.ph, %middle.block
  %indvars.iv.next210.i = add nuw nsw i64 %indvars.iv209.i, 1 ; 2 uses
  %exitcond213.not.i = icmp eq i64 %indvars.iv.next210.i, %wide.trip.count212.i
  br i1 %exitcond213.not.i, label %._crit_edge191.split.i, label %.preheader183.i, !llvm.loop !105

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv204.i = phi i64 [ %indvars.iv.next205.i, %scalar.ph ], [ %indvars.iv204.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.go = add nuw nsw i64 %indvars.iv204.i, %i.fq ; 6 uses
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %i.go
  %i.gq = load float, ptr %i.gp, align 4, !tbaa !60
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %i.go ; 2 uses
  %i.gs = load float, ptr %i.gr, align 4, !tbaa !60 ; 2 uses
  %i.gt = fneg nsz float %i.gs                    ; 2 uses
  %i.gu = call nsz float @llvm.fmuladd.f32(float %i.gt, float %i.gs, float %i.gq)
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.de, i64 %i.go
  %i.gw = load float, ptr %i.gv, align 4, !tbaa !60
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %i.go ; 2 uses
  %i.gy = load float, ptr %i.gx, align 4, !tbaa !60
  %i.gz = call nsz float @llvm.fmuladd.f32(float %i.gt, float %i.gy, float %i.gw)
  %i.ha = fadd nsz float %i.by, %i.gu
  %i.hb = fdiv nsz float %i.gz, %i.ha             ; 2 uses
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %i.df, i64 %i.go
  store float %i.hb, ptr %i.hc, align 4, !tbaa !60
  %i.hd = load float, ptr %i.gx, align 4, !tbaa !60
  %i.he = load float, ptr %i.gr, align 4, !tbaa !60
  %i.hf = fneg nsz float %i.hb
  %i.hg = call nsz float @llvm.fmuladd.f32(float %i.hf, float %i.he, float %i.hd)
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %i.dg, i64 %i.go
  store float %i.hg, ptr %i.hh, align 4, !tbaa !60
  %indvars.iv.next205.i = add nuw nsw i64 %indvars.iv204.i, 1 ; 2 uses
  %exitcond208.not.i = icmp eq i64 %indvars.iv.next205.i, %i.eu
  br i1 %exitcond208.not.i, label %._crit_edge189.i, label %scalar.ph, !llvm.loop !106

.preheader.i:                                     ; preds = %._crit_edge193.i, %.preheader.preheader.i
  %indvars.iv219.i = phi i64 [ 0, %.preheader.preheader.i ], [ %indvars.iv.next220.i, %._crit_edge193.i ] ; 4 uses
  %i.hi = trunc nuw nsw i64 %indvars.iv219.i to i32
  %i.hj = sdiv i32 %i.hi, %i.cl
  %i.hk = mul nsw i32 %i.hj, %i.cv
  %i.hl = mul nsw i64 %indvars.iv219.i, %i.gm
  %i.hm = mul nsw i64 %indvars.iv219.i, %i.gn
  %invariant.gep.i = getelementptr i8, ptr %i.bs, i64 %i.hl
  %invariant.gep228.i = getelementptr i8, ptr %i.bx, i64 %i.hm
  br label %bb.g

._crit_edge193.i:                                 ; preds = %bb.g
  %indvars.iv.next220.i = add nuw nsw i64 %indvars.iv219.i, 1 ; 2 uses
  %exitcond223.not.i = icmp eq i64 %indvars.iv.next220.i, %wide.trip.count222.i
  br i1 %exitcond223.not.i, label %guided_byte.exit, label %.preheader.i, !llvm.loop !107

bb.g:                                             ; preds = %bb.g, %.preheader.i
  %indvars.iv214.i = phi i64 [ 0, %.preheader.i ], [ %indvars.iv.next215.i, %bb.g ] ; 4 uses
  %i.hn = trunc nuw nsw i64 %indvars.iv214.i to i32
  %i.ho = sdiv i32 %i.hn, %i.cl
  %i.hp = add nsw i32 %i.ho, %i.hk
  %i.hq = sext i32 %i.hp to i64                   ; 2 uses
  %i.hr = getelementptr inbounds [4 x i8], ptr %i.dh, i64 %i.hq
  %i.hs = load float, ptr %i.hr, align 4, !tbaa !60
  %gep.i = getelementptr i8, ptr %invariant.gep.i, i64 %indvars.iv214.i
  %i.ht = load i8, ptr %gep.i, align 1, !tbaa !133
  %i.hu = uitofp i8 %i.ht to float
  %i.hv = getelementptr inbounds [4 x i8], ptr %i.di, i64 %i.hq
  %i.hw = load float, ptr %i.hv, align 4, !tbaa !60
  %i.hx = fmul nsz float %i.ck, %i.hw
  %i.hy = call nsz float @llvm.fmuladd.f32(float %i.hs, float %i.hu, float %i.hx)
  %i.hz = fptoui float %i.hy to i8
  %gep229.i = getelementptr i8, ptr %invariant.gep228.i, i64 %indvars.iv214.i
  store i8 %i.hz, ptr %gep229.i, align 1, !tbaa !133
  %indvars.iv.next215.i = add nuw nsw i64 %indvars.iv214.i, 1 ; 2 uses
  %exitcond218.not.i = icmp eq i64 %indvars.iv.next215.i, %wide.trip.count217.i
  br i1 %exitcond218.not.i, label %._crit_edge193.i, label %bb.g, !llvm.loop !108

guided_byte.exit:                                 ; preds = %._crit_edge193.i, %._crit_edge191.split.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  br label %bb.j

bb.h:                                             ; preds = %bb.e
  %i.ia = sdiv i32 %i.cc, 2                       ; 2 uses
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv
  %i.ic = load i32, ptr %i.ib, align 4, !tbaa !36
  %i.id = getelementptr inbounds nuw i8, ptr %i.bv, i64 64
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %i.id, i64 %indvars.iv
  %i.if = load i32, ptr %i.ie, align 4, !tbaa !36
  %i.ig = sdiv i32 %i.if, 2
  %i.ih = shl nuw i32 1, %i.bp
  %i.ii = sitofp nsz i32 %i.ih to float
  %i.ij = fadd nsz float %i.ii, -1.000000e+00     ; 3 uses
  %i.ik = load i32, ptr %i.v, align 4, !tbaa !59  ; 8 uses
  %i.il = srem i32 %i.ca, %i.ik
  %i.im = icmp ne i32 %i.il, 0
  %i.in = sdiv i32 %i.ca, %i.ik
  %i.io = zext i1 %i.im to i32
  %i.ip = add nsw i32 %i.in, %i.io                ; 5 uses
  %i.iq = srem i32 %i.ay, %i.ik
  %i.ir = icmp ne i32 %i.iq, 0
  %i.is = sdiv i32 %i.ay, %i.ik
  %i.it = zext i1 %i.ir to i32
  %i.iu = add nsw i32 %i.is, %i.it                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  %i.iv = call i32 @ff_filter_get_nb_threads(ptr noundef %0) #9
  %i.iw = load ptr, ptr %i.w, align 8, !tbaa !45  ; 7 uses
  %i.ix = load ptr, ptr %i.x, align 8, !tbaa !46  ; 7 uses
  %i.iy = load ptr, ptr %i.y, align 8, !tbaa !47  ; 7 uses
  %i.iz = load ptr, ptr %i.z, align 8, !tbaa !48  ; 7 uses
  %i.ja = load ptr, ptr %i.aa, align 8, !tbaa !49 ; 6 uses
  %i.jb = load ptr, ptr %i.ab, align 8, !tbaa !50 ; 6 uses
  %i.jc = load ptr, ptr %i.ac, align 8, !tbaa !51 ; 6 uses
  %i.jd = load ptr, ptr %i.ad, align 8, !tbaa !52 ; 6 uses
  %i.je = load ptr, ptr %i.ae, align 8, !tbaa !53 ; 9 uses
  %i.jf = load ptr, ptr %i.af, align 8, !tbaa !54 ; 9 uses
  %i.jg = load ptr, ptr %i.ag, align 8, !tbaa !55 ; 2 uses
  %i.jh = load ptr, ptr %i.ah, align 8, !tbaa !56 ; 2 uses
  %i.ji = icmp sgt i32 %i.ip, 0
  %i.jj = icmp sgt i32 %i.iu, 0
  %or.cond.i74 = select i1 %i.ji, i1 %i.jj, i1 false ; 2 uses
  br i1 %or.cond.i74, label %.preheader184.preheader.i103, label %._crit_edge187.split.i75

.preheader184.preheader.i103:                     ; preds = %bb.h
  %i.jk = sdiv i32 %i.ic, 2
  %i.jl = sext i32 %i.ik to i64                   ; 2 uses
  %i.jm = zext nneg i32 %i.iu to i64              ; 5 uses
  %i.jn = sext i32 %i.ia to i64
  %i.jo = sext i32 %i.jk to i64
  %wide.trip.count202.i104 = zext nneg i32 %i.ip to i64 ; 2 uses
  %i.jp = shl nuw nsw i64 %wide.trip.count202.i104, 2
  %9 = mul nuw i64 %i.jp, %i.jm                   ; 4 uses
  %scevgep479 = getelementptr i8, ptr %i.iz, i64 %9 ; 3 uses
  %scevgep480 = getelementptr i8, ptr %i.iy, i64 %9 ; 3 uses
  %scevgep481 = getelementptr i8, ptr %i.ix, i64 %9 ; 3 uses
  %scevgep482 = getelementptr i8, ptr %i.iw, i64 %9 ; 3 uses
  %min.iters.check484 = icmp ugt i32 %i.iu, 3
  %ident.check450.not = icmp eq i32 %i.ik, 1
  %or.cond522 = and i1 %min.iters.check484, %ident.check450.not
  %bound0486 = icmp ult ptr %i.iw, %scevgep481
  %bound1487 = icmp ult ptr %i.ix, %scevgep482
  %found.conflict488 = and i1 %bound0486, %bound1487
  %bound0489 = icmp ult ptr %i.iw, %scevgep480
  %bound1490 = icmp ult ptr %i.iy, %scevgep482
  %found.conflict491 = and i1 %bound0489, %bound1490
  %conflict.rdx492 = or i1 %found.conflict488, %found.conflict491
  %bound0493 = icmp ult ptr %i.iw, %scevgep479
  %bound1494 = icmp ult ptr %i.iz, %scevgep482
  %found.conflict495 = and i1 %bound0493, %bound1494
  %conflict.rdx496 = or i1 %conflict.rdx492, %found.conflict495
  %bound0497 = icmp ult ptr %i.ix, %scevgep480
  %bound1498 = icmp ult ptr %i.iy, %scevgep481
  %found.conflict499 = and i1 %bound0497, %bound1498
  %conflict.rdx500 = or i1 %conflict.rdx496, %found.conflict499
  %bound0501 = icmp ult ptr %i.ix, %scevgep479
  %bound1502 = icmp ult ptr %i.iz, %scevgep481
  %found.conflict503 = and i1 %bound0501, %bound1502
  %conflict.rdx504 = or i1 %conflict.rdx500, %found.conflict503
  %bound0505 = icmp ult ptr %i.iy, %scevgep479
  %bound1506 = icmp ult ptr %i.iz, %scevgep480
  %found.conflict507 = and i1 %bound0505, %bound1506
  %conflict.rdx508 = or i1 %conflict.rdx504, %found.conflict507
  %n.vec510 = and i64 %i.jm, 2147483644           ; 3 uses
  %broadcast.splatinsert511 = insertelement <4 x float> poison, float %i.ij, i64 0
  %broadcast.splat512 = shufflevector <4 x float> %broadcast.splatinsert511, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %cmp.n520 = icmp eq i64 %n.vec510, %i.jm
  %i.jq = insertelement <2 x float> poison, float %i.ij, i64 0
  %i.jr = shufflevector <2 x float> %i.jq, <2 x float> poison, <2 x i32> zeroinitializer
  br label %.preheader184.i106

.preheader184.i106:                               ; preds = %._crit_edge.i111, %.preheader184.preheader.i103
  %indvars.iv199.i107 = phi i64 [ 0, %.preheader184.preheader.i103 ], [ %indvars.iv.next200.i112, %._crit_edge.i111 ] ; 4 uses
  %i.js = mul nuw nsw i64 %indvars.iv199.i107, %i.jm ; 2 uses
  %i.jt = mul nsw i64 %indvars.iv199.i107, %i.jn  ; 2 uses
  %i.ju = mul nsw i64 %indvars.iv199.i107, %i.jo  ; 2 uses
  %or.cond522.not = xor i1 %or.cond522, true
  %brmerge531 = select i1 %or.cond522.not, i1 true, i1 %conflict.rdx508
  br i1 %brmerge531, label %scalar.ph483.preheader, label %vector.ph509

vector.ph509:                                     ; preds = %.preheader184.i106
  %invariant.gep = getelementptr [2 x i8], ptr %i.bs, i64 %i.jt
  %invariant.gep524 = getelementptr [2 x i8], ptr %i.bu, i64 %i.ju
  br label %vector.body513

vector.body513:                                   ; preds = %vector.body513, %vector.ph509
  %index514 = phi i64 [ 0, %vector.ph509 ], [ %index.next518, %vector.body513 ] ; 4 uses
  %i.jv = add nuw nsw i64 %index514, %i.js        ; 4 uses
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %index514
  %wide.load515 = load <4 x i16>, ptr %gep, align 2, !tbaa !153
  %i.jw = uitofp <4 x i16> %wide.load515 to <4 x float>
  %i.jx = fdiv nsz <4 x float> %i.jw, %broadcast.splat512 ; 3 uses
  %i.jy = getelementptr inbounds nuw [4 x i8], ptr %i.iw, i64 %i.jv ; 2 uses
  store <4 x float> %i.jx, ptr %i.jy, align 4, !tbaa !60, !alias.scope !154, !noalias !155
  %i.jz = fmul nsz <4 x float> %i.jx, %i.jx
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %i.ix, i64 %i.jv
  store <4 x float> %i.jz, ptr %i.ka, align 4, !tbaa !60, !alias.scope !156, !noalias !157
  %gep525 = getelementptr [2 x i8], ptr %invariant.gep524, i64 %index514
  %wide.load516 = load <4 x i16>, ptr %gep525, align 2, !tbaa !153
  %i.kb = uitofp <4 x i16> %wide.load516 to <4 x float>
  %i.kc = fdiv nsz <4 x float> %i.kb, %broadcast.splat512 ; 2 uses
  %i.kd = getelementptr inbounds nuw [4 x i8], ptr %i.iy, i64 %i.jv
  store <4 x float> %i.kc, ptr %i.kd, align 4, !tbaa !60, !alias.scope !158, !noalias !159
  %wide.load517 = load <4 x float>, ptr %i.jy, align 4, !tbaa !60, !alias.scope !154, !noalias !155
  %i.ke = fmul nsz <4 x float> %wide.load517, %i.kc
  %i.kf = getelementptr inbounds nuw [4 x i8], ptr %i.iz, i64 %i.jv
  store <4 x float> %i.ke, ptr %i.kf, align 4, !tbaa !60, !alias.scope !159
  %index.next518 = add nuw i64 %index514, 4       ; 2 uses
  %i.kg = icmp eq i64 %index.next518, %n.vec510
  br i1 %i.kg, label %middle.block519, label %vector.body513, !llvm.loop !114

middle.block519:                                  ; preds = %vector.body513
  br i1 %cmp.n520, label %._crit_edge.i111, label %scalar.ph483.preheader

scalar.ph483.preheader:                           ; preds = %.preheader184.i106, %middle.block519
  %indvars.iv.i108.ph = phi i64 [ %n.vec510, %middle.block519 ], [ 0, %.preheader184.i106 ]
  br label %scalar.ph483

._crit_edge187.split.i75:                         ; preds = %._crit_edge.i111, %bb.h
  store i32 %i.iu, ptr %4, align 8, !tbaa !65
  store i32 %i.ip, ptr %i.ai, align 4, !tbaa !66
  store i32 %i.iu, ptr %i.aj, align 8, !tbaa !67
  store i32 %i.iu, ptr %i.ak, align 4, !tbaa !68
  store ptr %i.iw, ptr %i.al, align 8, !tbaa !69
  store ptr %i.ja, ptr %i.am, align 8, !tbaa !70
  %i.kh = load ptr, ptr %i.an, align 8, !tbaa !71
  %i.ki = call i32 @llvm.smin.i32(i32 %i.ip, i32 %i.iv) ; 6 uses
  %i.kj = call i32 @ff_filter_execute(ptr noundef %0, ptr noundef %i.kh, ptr noundef nonnull %4, ptr noundef null, i32 noundef %i.ki) #8 ; 0 uses
  store ptr %i.ix, ptr %i.al, align 8, !tbaa !69
  store ptr %i.jb, ptr %i.am, align 8, !tbaa !70
  %i.kk = load ptr, ptr %i.an, align 8, !tbaa !71
  %i.kl = call i32 @ff_filter_execute(ptr noundef %0, ptr noundef %i.kk, ptr noundef nonnull %4, ptr noundef null, i32 noundef %i.ki) #8 ; 0 uses
  store ptr %i.iy, ptr %i.al, align 8, !tbaa !69
  store ptr %i.jc, ptr %i.am, align 8, !tbaa !70
  %i.km = load ptr, ptr %i.an, align 8, !tbaa !71
  %i.kn = call i32 @ff_filter_execute(ptr noundef %0, ptr noundef %i.km, ptr noundef nonnull %4, ptr noundef null, i32 noundef %i.ki) #8 ; 0 uses
  store ptr %i.iz, ptr %i.al, align 8, !tbaa !69
  store ptr %i.jd, ptr %i.am, align 8, !tbaa !70
  %i.ko = load ptr, ptr %i.an, align 8, !tbaa !71
  %i.kp = call i32 @ff_filter_execute(ptr noundef %0, ptr noundef %i.ko, ptr noundef nonnull %4, ptr noundef null, i32 noundef %i.ki) #8 ; 0 uses
  br i1 %or.cond.i74, label %.preheader183.preheader.i93, label %._crit_edge191.split.i76

.preheader183.preheader.i93:                      ; preds = %._crit_edge187.split.i75
  %i.kq = zext nneg i32 %i.iu to i64              ; 5 uses
  %wide.trip.count212.i94 = zext nneg i32 %i.ip to i64 ; 2 uses
  %i.kr = shl nuw nsw i64 %wide.trip.count212.i94, 2
  %10 = mul nuw i64 %i.kr, %i.kq                  ; 6 uses
  %scevgep389 = getelementptr i8, ptr %i.jc, i64 %10 ; 2 uses
  %scevgep390 = getelementptr i8, ptr %i.jd, i64 %10 ; 2 uses
  %scevgep391 = getelementptr i8, ptr %i.ja, i64 %10 ; 2 uses
  %scevgep392 = getelementptr i8, ptr %i.jb, i64 %10 ; 2 uses
  %scevgep393 = getelementptr i8, ptr %i.jf, i64 %10 ; 5 uses
  %scevgep394 = getelementptr i8, ptr %i.je, i64 %10 ; 5 uses
  %min.iters.check396 = icmp ult i32 %i.iu, 4
  %bound0398 = icmp ult ptr %i.je, %scevgep393
  %bound1399 = icmp ult ptr %i.jf, %scevgep394
  %found.conflict400 = and i1 %bound0398, %bound1399
  %bound0401 = icmp ult ptr %i.je, %scevgep392
  %bound1402 = icmp ult ptr %i.jb, %scevgep394
  %found.conflict403 = and i1 %bound0401, %bound1402
  %conflict.rdx404 = or i1 %found.conflict400, %found.conflict403
  %bound0405 = icmp ult ptr %i.je, %scevgep391
  %bound1406 = icmp ult ptr %i.ja, %scevgep394
  %found.conflict407 = and i1 %bound0405, %bound1406
  %conflict.rdx408 = or i1 %conflict.rdx404, %found.conflict407
  %bound0409 = icmp ult ptr %i.je, %scevgep390
  %bound1410 = icmp ult ptr %i.jd, %scevgep394
  %found.conflict411 = and i1 %bound0409, %bound1410
  %conflict.rdx412 = or i1 %conflict.rdx408, %found.conflict411
  %bound0413 = icmp ult ptr %i.je, %scevgep389
  %bound1414 = icmp ult ptr %i.jc, %scevgep394
  %found.conflict415 = and i1 %bound0413, %bound1414
  %conflict.rdx416 = or i1 %conflict.rdx412, %found.conflict415
  %bound0417 = icmp ult ptr %i.jf, %scevgep392
  %bound1418 = icmp ult ptr %i.jb, %scevgep393
  %found.conflict419 = and i1 %bound0417, %bound1418
  %conflict.rdx420 = or i1 %conflict.rdx416, %found.conflict419
  %bound0421 = icmp ult ptr %i.jf, %scevgep391
  %bound1422 = icmp ult ptr %i.ja, %scevgep393
  %found.conflict423 = and i1 %bound0421, %bound1422
  %conflict.rdx424 = or i1 %conflict.rdx420, %found.conflict423
  %bound0425 = icmp ult ptr %i.jf, %scevgep390
  %bound1426 = icmp ult ptr %i.jd, %scevgep393
  %found.conflict427 = and i1 %bound0425, %bound1426
  %conflict.rdx428 = or i1 %conflict.rdx424, %found.conflict427
  %bound0429 = icmp ult ptr %i.jf, %scevgep389
  %bound1430 = icmp ult ptr %i.jc, %scevgep393
  %found.conflict431 = and i1 %bound0429, %bound1430
  %conflict.rdx432 = or i1 %conflict.rdx428, %found.conflict431
  %n.vec434 = and i64 %i.kq, 2147483644           ; 3 uses
  %broadcast.splatinsert435 = insertelement <4 x float> poison, float %i.by, i64 0
  %broadcast.splat436 = shufflevector <4 x float> %broadcast.splatinsert435, <4 x float> poison, <4 x i32> zeroinitializer
  %cmp.n447 = icmp eq i64 %n.vec434, %i.kq
  br label %.preheader183.i95

._crit_edge.i111:                                 ; preds = %scalar.ph483, %middle.block519
  %indvars.iv.next200.i112 = add nuw nsw i64 %indvars.iv199.i107, 1 ; 2 uses
  %exitcond203.not.i113 = icmp eq i64 %indvars.iv.next200.i112, %wide.trip.count202.i104
  br i1 %exitcond203.not.i113, label %._crit_edge187.split.i75, label %.preheader184.i106, !llvm.loop !115

scalar.ph483:                                     ; preds = %scalar.ph483.preheader, %scalar.ph483
  %indvars.iv.i108 = phi i64 [ %indvars.iv.next.i109, %scalar.ph483 ], [ %indvars.iv.i108.ph, %scalar.ph483.preheader ] ; 4 uses
  %i.ks = add nuw nsw i64 %indvars.iv.i108, %i.js ; 4 uses
  %i.kt = add nsw i64 %indvars.iv.i108, %i.jt
  %i.ku = mul nsw i64 %i.kt, %i.jl
  %i.kv = getelementptr inbounds [2 x i8], ptr %i.bs, i64 %i.ku
  %i.kw = load i16, ptr %i.kv, align 2, !tbaa !153
  %i.kx = getelementptr inbounds nuw [4 x i8], ptr %i.iw, i64 %i.ks ; 2 uses
  %i.ky = getelementptr inbounds nuw [4 x i8], ptr %i.ix, i64 %i.ks
  %i.kz = add nsw i64 %indvars.iv.i108, %i.ju
  %i.la = mul nsw i64 %i.kz, %i.jl
  %i.lb = getelementptr inbounds [2 x i8], ptr %i.bu, i64 %i.la
  %i.lc = load i16, ptr %i.lb, align 2, !tbaa !153
  %i.ld = insertelement <2 x i16> poison, i16 %i.kw, i64 0
  %i.le = insertelement <2 x i16> %i.ld, i16 %i.lc, i64 1
  %i.lf = uitofp <2 x i16> %i.le to <2 x float>
  %i.lg = fdiv nsz <2 x float> %i.lf, %i.jr       ; 4 uses
  %i.lh = extractelement <2 x float> %i.lg, i64 0
  store float %i.lh, ptr %i.kx, align 4, !tbaa !60
  %foldExtExtBinop = fmul nsz <2 x float> %i.lg, %i.lg
  %i.li = extractelement <2 x float> %foldExtExtBinop, i64 0
  store float %i.li, ptr %i.ky, align 4, !tbaa !60
  %i.lj = getelementptr inbounds nuw [4 x i8], ptr %i.iy, i64 %i.ks
  %i.lk = extractelement <2 x float> %i.lg, i64 1 ; 2 uses
  store float %i.lk, ptr %i.lj, align 4, !tbaa !60
  %i.ll = load float, ptr %i.kx, align 4, !tbaa !60
  %i.lm = fmul nsz float %i.ll, %i.lk
  %i.ln = getelementptr inbounds nuw [4 x i8], ptr %i.iz, i64 %i.ks
  store float %i.lm, ptr %i.ln, align 4, !tbaa !60
  %indvars.iv.next.i109 = add nuw nsw i64 %indvars.iv.i108, 1 ; 2 uses
  %exitcond.not.i110 = icmp eq i64 %indvars.iv.next.i109, %i.jm
  br i1 %exitcond.not.i110, label %._crit_edge.i111, label %scalar.ph483, !llvm.loop !116

.preheader183.i95:                                ; preds = %._crit_edge189.i100, %.preheader183.preheader.i93
  %indvars.iv209.i96 = phi i64 [ 0, %.preheader183.preheader.i93 ], [ %indvars.iv.next210.i101, %._crit_edge189.i100 ] ; 2 uses
  %i.lo = mul nuw nsw i64 %indvars.iv209.i96, %i.kq ; 2 uses
  %brmerge532 = select i1 %min.iters.check396, i1 true, i1 %conflict.rdx432
  br i1 %brmerge532, label %scalar.ph395.preheader, label %vector.body437

vector.body437:                                   ; preds = %.preheader183.i95, %vector.body437
  %index438 = phi i64 [ %index.next445, %vector.body437 ], [ 0, %.preheader183.i95 ] ; 2 uses
  %i.lp = add nuw nsw i64 %index438, %i.lo        ; 6 uses
  %i.lq = getelementptr inbounds nuw [4 x i8], ptr %i.jb, i64 %i.lp
  %wide.load439 = load <4 x float>, ptr %i.lq, align 4, !tbaa !60, !alias.scope !160
  %i.lr = getelementptr inbounds nuw [4 x i8], ptr %i.ja, i64 %i.lp ; 2 uses
  %wide.load440 = load <4 x float>, ptr %i.lr, align 4, !tbaa !60, !alias.scope !161 ; 2 uses
  %i.ls = fneg nsz <4 x float> %wide.load440      ; 2 uses
  %i.lt = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ls, <4 x float> %wide.load440, <4 x float> %wide.load439)
  %i.lu = getelementptr inbounds nuw [4 x i8], ptr %i.jd, i64 %i.lp
  %wide.load441 = load <4 x float>, ptr %i.lu, align 4, !tbaa !60, !alias.scope !162
  %i.lv = getelementptr inbounds nuw [4 x i8], ptr %i.jc, i64 %i.lp
  %wide.load442 = load <4 x float>, ptr %i.lv, align 4, !tbaa !60, !alias.scope !163 ; 2 uses
  %i.lw = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ls, <4 x float> %wide.load442, <4 x float> %wide.load441)
  %i.lx = fadd nsz <4 x float> %broadcast.splat436, %i.lt
  %i.ly = fdiv nsz <4 x float> %i.lw, %i.lx       ; 2 uses
  %i.lz = getelementptr inbounds nuw [4 x i8], ptr %i.je, i64 %i.lp
  store <4 x float> %i.ly, ptr %i.lz, align 4, !tbaa !60, !alias.scope !164, !noalias !165
  %wide.load444 = load <4 x float>, ptr %i.lr, align 4, !tbaa !60, !alias.scope !161
  %i.ma = fneg nsz <4 x float> %i.ly
  %i.mb = call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ma, <4 x float> %wide.load444, <4 x float> %wide.load442)
  %i.mc = getelementptr inbounds nuw [4 x i8], ptr %i.jf, i64 %i.lp
  store <4 x float> %i.mb, ptr %i.mc, align 4, !tbaa !60, !alias.scope !166, !noalias !167
  %index.next445 = add nuw i64 %index438, 4       ; 2 uses
  %i.md = icmp eq i64 %index.next445, %n.vec434
  br i1 %i.md, label %middle.block446, label %vector.body437, !llvm.loop !124

middle.block446:                                  ; preds = %vector.body437
  br i1 %cmp.n447, label %._crit_edge189.i100, label %scalar.ph395.preheader

scalar.ph395.preheader:                           ; preds = %.preheader183.i95, %middle.block446
  %indvars.iv204.i97.ph = phi i64 [ %n.vec434, %middle.block446 ], [ 0, %.preheader183.i95 ]
  br label %scalar.ph395

._crit_edge191.split.i76:                         ; preds = %._crit_edge189.i100, %._crit_edge187.split.i75
  store ptr %i.je, ptr %i.al, align 8, !tbaa !69
  store ptr %i.jg, ptr %i.am, align 8, !tbaa !70
  %i.me = load ptr, ptr %i.an, align 8, !tbaa !71
  %i.mf = call i32 @ff_filter_execute(ptr noundef %0, ptr noundef %i.me, ptr noundef nonnull %4, ptr noundef null, i32 noundef %i.ki) #8 ; 0 uses
  store ptr %i.jf, ptr %i.al, align 8, !tbaa !69
  store ptr %i.jh, ptr %i.am, align 8, !tbaa !70
  %i.mg = load ptr, ptr %i.an, align 8, !tbaa !71
  %i.mh = call i32 @ff_filter_execute(ptr noundef %0, ptr noundef %i.mg, ptr noundef nonnull %4, ptr noundef null, i32 noundef %i.ki) #8 ; 0 uses
  %i.mi = icmp sgt i32 %i.ca, 0
  %i.mj = icmp sgt i32 %i.ay, 0
  %or.cond197.i77 = and i1 %i.mj, %i.mi
  br i1 %or.cond197.i77, label %.preheader.preheader.i78, label %guided_word.exit

.preheader.preheader.i78:                         ; preds = %._crit_edge191.split.i76
  %i.mk = sext i32 %i.ia to i64
  %i.ml = sext i32 %i.ig to i64
  %wide.trip.count222.i79 = zext nneg i32 %i.ca to i64
  %wide.trip.count217.i80 = zext nneg i32 %i.ay to i64
  br label %.preheader.i81

._crit_edge189.i100:                              ; preds = %scalar.ph395, %middle.block446
  %indvars.iv.next210.i101 = add nuw nsw i64 %indvars.iv209.i96, 1 ; 2 uses
  %exitcond213.not.i102 = icmp eq i64 %indvars.iv.next210.i101, %wide.trip.count212.i94
  br i1 %exitcond213.not.i102, label %._crit_edge191.split.i76, label %.preheader183.i95, !llvm.loop !125

scalar.ph395:                                     ; preds = %scalar.ph395.preheader, %scalar.ph395
  %indvars.iv204.i97 = phi i64 [ %indvars.iv.next205.i98, %scalar.ph395 ], [ %indvars.iv204.i97.ph, %scalar.ph395.preheader ] ; 2 uses
  %i.mm = add nuw nsw i64 %indvars.iv204.i97, %i.lo ; 6 uses
  %i.mn = getelementptr inbounds nuw [4 x i8], ptr %i.jb, i64 %i.mm
  %i.mo = load float, ptr %i.mn, align 4, !tbaa !60
  %i.mp = getelementptr inbounds nuw [4 x i8], ptr %i.ja, i64 %i.mm ; 2 uses
  %i.mq = load float, ptr %i.mp, align 4, !tbaa !60 ; 2 uses
  %i.mr = fneg nsz float %i.mq                    ; 2 uses
  %i.ms = call nsz float @llvm.fmuladd.f32(float %i.mr, float %i.mq, float %i.mo)
  %i.mt = getelementptr inbounds nuw [4 x i8], ptr %i.jd, i64 %i.mm
  %i.mu = load float, ptr %i.mt, align 4, !tbaa !60
  %i.mv = getelementptr inbounds nuw [4 x i8], ptr %i.jc, i64 %i.mm ; 2 uses
  %i.mw = load float, ptr %i.mv, align 4, !tbaa !60
  %i.mx = call nsz float @llvm.fmuladd.f32(float %i.mr, float %i.mw, float %i.mu)
  %i.my = fadd nsz float %i.by, %i.ms
  %i.mz = fdiv nsz float %i.mx, %i.my             ; 2 uses
  %i.na = getelementptr inbounds nuw [4 x i8], ptr %i.je, i64 %i.mm
  store float %i.mz, ptr %i.na, align 4, !tbaa !60
  %i.nb = load float, ptr %i.mv, align 4, !tbaa !60
  %i.nc = load float, ptr %i.mp, align 4, !tbaa !60
  %i.nd = fneg nsz float %i.mz
  %i.ne = call nsz float @llvm.fmuladd.f32(float %i.nd, float %i.nc, float %i.nb)
  %i.nf = getelementptr inbounds nuw [4 x i8], ptr %i.jf, i64 %i.mm
  store float %i.ne, ptr %i.nf, align 4, !tbaa !60
  %indvars.iv.next205.i98 = add nuw nsw i64 %indvars.iv204.i97, 1 ; 2 uses
  %exitcond208.not.i99 = icmp eq i64 %indvars.iv.next205.i98, %i.kq
  br i1 %exitcond208.not.i99, label %._crit_edge189.i100, label %scalar.ph395, !llvm.loop !126

.preheader.i81:                                   ; preds = %._crit_edge193.i90, %.preheader.preheader.i78
  %indvars.iv219.i82 = phi i64 [ 0, %.preheader.preheader.i78 ], [ %indvars.iv.next220.i91, %._crit_edge193.i90 ] ; 4 uses
  %i.ng = trunc nuw nsw i64 %indvars.iv219.i82 to i32
  %i.nh = sdiv i32 %i.ng, %i.ik
  %i.ni = mul nsw i32 %i.nh, %i.iu
  %i.nj = mul nsw i64 %indvars.iv219.i82, %i.mk
  %i.nk = mul nsw i64 %indvars.iv219.i82, %i.ml
  %invariant.gep.i83 = getelementptr [2 x i8], ptr %i.bs, i64 %i.nj
  %invariant.gep228.i84 = getelementptr [2 x i8], ptr %i.bx, i64 %i.nk
  br label %bb.i

._crit_edge193.i90:                               ; preds = %bb.i
  %indvars.iv.next220.i91 = add nuw nsw i64 %indvars.iv219.i82, 1 ; 2 uses
  %exitcond223.not.i92 = icmp eq i64 %indvars.iv.next220.i91, %wide.trip.count222.i79
  br i1 %exitcond223.not.i92, label %guided_word.exit, label %.preheader.i81, !llvm.loop !127

bb.i:                                             ; preds = %bb.i, %.preheader.i81
  %indvars.iv214.i85 = phi i64 [ 0, %.preheader.i81 ], [ %indvars.iv.next215.i88, %bb.i ] ; 4 uses
  %i.nl = trunc nuw nsw i64 %indvars.iv214.i85 to i32
  %i.nm = sdiv i32 %i.nl, %i.ik
  %i.nn = add nsw i32 %i.nm, %i.ni
  %i.no = sext i32 %i.nn to i64                   ; 2 uses
  %i.np = getelementptr inbounds [4 x i8], ptr %i.jg, i64 %i.no
  %i.nq = load float, ptr %i.np, align 4, !tbaa !60
  %gep.i86 = getelementptr [2 x i8], ptr %invariant.gep.i83, i64 %indvars.iv214.i85
  %i.nr = load i16, ptr %gep.i86, align 2, !tbaa !153
end_hunk_0
