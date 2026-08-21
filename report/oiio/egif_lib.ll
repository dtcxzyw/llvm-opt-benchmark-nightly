Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/egif_lib?download=true
inline.NumInlined: 44
inline.NumDeleted: 3
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 6
begin_hunk_0_@EGifSpew:bb.a
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !46
  %i.j = tail call i32 @EGifPutScreenDesc(ptr noundef nonnull %0, i32 noundef %i.a, i32 noundef %i.c, i32 noundef %i.e, i32 noundef %i.g, ptr noundef %i.i)
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %.critedge.thread, label %.preheader73

.preheader73:                                     ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !27
  %i.n = icmp sgt i32 %i.m, 0
  br i1 %i.n, label %.lr.ph82, label %._crit_edge

.lr.ph82:                                         ; preds = %.preheader73
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 9 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 5 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph82, %.critedge
  %indvars.iv141 = phi i64 [ 0, %.lr.ph82 ], [ %indvars.iv.next142, %.critedge ] ; 2 uses
  %i.r = load ptr, ptr %i.o, align 8, !tbaa !28
  %i.s = getelementptr inbounds nuw [56 x i8], ptr %i.r, i64 %indvars.iv141 ; 9 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  %i.u = load i32, ptr %i.t, align 4, !tbaa !105  ; 18 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.w = load i32, ptr %i.v, align 8, !tbaa !106
  %.fr = freeze i32 %i.w                          ; 20 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 32 ; 10 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !107
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !32
  %i.ac = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !29
  %i.ae = tail call fastcc i32 @EGifWriteExtensions(ptr noundef nonnull %0, ptr noundef %i.ab, i32 noundef %i.ad)
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %.critedge.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ag = load i32, ptr %i.s, align 8, !tbaa !108
  %i.ah = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !109
  %i.aj = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  %i.ak = load i8, ptr %i.aj, align 8, !tbaa !110, !range !44, !noundef !45
  %i.al = trunc nuw i8 %i.ak to i1
  %i.am = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !111
  %i.ao = tail call i32 @EGifPutImageDesc(ptr noundef nonnull %0, i32 noundef %i.ag, i32 noundef %i.ai, i32 noundef %.fr, i32 noundef %i.u, i1 noundef zeroext %i.al, ptr noundef %i.an)
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %.critedge.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aq = load i8, ptr %i.aj, align 8, !tbaa !110, !range !44, !noundef !45
  %i.ar = trunc nuw i8 %i.aq to i1
  br i1 %i.ar, label %.preheader, label %.preheader70

.preheader70:                                     ; preds = %bb.e
  %i.as = icmp sgt i32 %i.u, 0
  br i1 %i.as, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %.preheader70
  %.not24.i58 = icmp eq i32 %.fr, 0
  %i.at = sext i32 %.fr to i64
  %wide.trip.count = zext nneg i32 %i.u to i64
  br label %bb.ai

.preheader:                                       ; preds = %bb.e
  %.not24.i = icmp eq i32 %.fr, 0
  %i.au = zext i32 %.fr to i64                    ; 28 uses
  %i.av = sext i32 %.fr to i64                    ; 8 uses
  %i.aw = icmp sgt i32 %.fr, 0                    ; 4 uses
  %i.ax = icmp sgt i32 %i.u, 0                    ; 2 uses
  br i1 %.not24.i, label %.preheader.split.us.preheader, label %.preheader.split.preheader

.preheader.split.preheader:                       ; preds = %.preheader
  br i1 %i.ax, label %.lr.ph77, label %.critedge

.preheader.split.us.preheader:                    ; preds = %.preheader
  br i1 %i.ax, label %.lr.ph77.us, label %.critedge

._crit_edge.split.us.us:                          ; preds = %bb.q
  %i.ay = icmp sgt i32 %i.u, 4
  br i1 %i.ay, label %.lr.ph77.us.1, label %._crit_edge.split.us.us.1

.lr.ph77.us.1:                                    ; preds = %._crit_edge.split.us.us, %bb.h
  %indvars.iv135 = phi i64 [ %indvars.iv.next136, %bb.h ], [ 4, %._crit_edge.split.us.us ]
  %i.az = load ptr, ptr %i.x, align 8, !tbaa !107 ; 4 uses
  %i.ba = load ptr, ptr %i.p, align 8, !tbaa !14  ; 3 uses
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !22
  %i.bc = and i32 %i.bb, 1
  %.not.i.us.us.1 = icmp eq i32 %i.bc, 0
  br i1 %.not.i.us.us.1, label %.split.us, label %bb.f

bb.f:                                             ; preds = %.lr.ph77.us.1
  %i.bd = load i32, ptr %i.q, align 8, !tbaa !71  ; 6 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 56 ; 2 uses
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !68 ; 2 uses
  %i.bg = zext i32 %i.bd to i64                   ; 7 uses
  %i.bh = icmp ult i64 %i.bf, %i.bg
  br i1 %i.bh, label %.split79.us, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bi = sext i32 %i.bd to i64
  %i.bj = sub i64 %i.bf, %i.bi
  store i64 %i.bj, ptr %i.be, align 8, !tbaa !68
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bl = load i32, ptr %i.bk, align 8, !tbaa !77
  %i.bm = sext i32 %i.bl to i64
  %i.bn = getelementptr inbounds i8, ptr @CodeMask, i64 %i.bm
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !60  ; 3 uses
  %i.bp = icmp sgt i32 %i.bd, 0
  br i1 %i.bp, label %iter.check268, label %EGifPutLine.exit.us.us.1

iter.check268:                                    ; preds = %bb.g
  %min.iters.check253 = icmp ult i32 %i.bd, 4
  br i1 %min.iters.check253, label %.lr.ph.i.us.us.1.preheader, label %vector.main.loop.iter.check254

vector.main.loop.iter.check254:                   ; preds = %iter.check268
  %min.iters.check255 = icmp ult i32 %i.bd, 32
  br i1 %min.iters.check255, label %vec.epilog.ph272, label %vector.ph256

vector.ph256:                                     ; preds = %vector.main.loop.iter.check254
  %i.bq = and i64 %i.bg, 28
  %n.vec257 = and i64 %i.bg, 2147483616           ; 4 uses
  %broadcast.splatinsert258 = insertelement <16 x i8> poison, i8 %i.bo, i64 0
  %broadcast.splat259 = shufflevector <16 x i8> %broadcast.splatinsert258, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  br label %vector.body260

vector.body260:                                   ; preds = %vector.body260, %vector.ph256
  %index261 = phi i64 [ 0, %vector.ph256 ], [ %index.next264, %vector.body260 ] ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.az, i64 %index261 ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16 ; 2 uses
  %wide.load262 = load <16 x i8>, ptr %i.br, align 1, !tbaa !60
  %wide.load263 = load <16 x i8>, ptr %i.bs, align 1, !tbaa !60
  %i.bt = and <16 x i8> %wide.load262, %broadcast.splat259
  %i.bu = and <16 x i8> %wide.load263, %broadcast.splat259
  store <16 x i8> %i.bt, ptr %i.br, align 1, !tbaa !60
  store <16 x i8> %i.bu, ptr %i.bs, align 1, !tbaa !60
  %index.next264 = add nuw i64 %index261, 32      ; 2 uses
  %i.bv = icmp eq i64 %index.next264, %n.vec257
  br i1 %i.bv, label %middle.block265, label %vector.body260, !llvm.loop !112

middle.block265:                                  ; preds = %vector.body260
  %cmp.n266 = icmp eq i64 %n.vec257, %i.bg
  br i1 %cmp.n266, label %EGifPutLine.exit.us.us.1, label %vec.epilog.iter.check270

vec.epilog.iter.check270:                         ; preds = %middle.block265
  %min.epilog.iters.check271 = icmp eq i64 %i.bq, 0
  br i1 %min.epilog.iters.check271, label %.lr.ph.i.us.us.1.preheader, label %vec.epilog.ph272, !prof !89

vec.epilog.ph272:                                 ; preds = %vector.main.loop.iter.check254, %vec.epilog.iter.check270
  %vec.epilog.resume.val267 = phi i64 [ %n.vec257, %vec.epilog.iter.check270 ], [ 0, %vector.main.loop.iter.check254 ]
  %n.vec273 = and i64 %i.bg, 2147483644           ; 3 uses
  %broadcast.splatinsert274 = insertelement <4 x i8> poison, i8 %i.bo, i64 0
  %broadcast.splat275 = shufflevector <4 x i8> %broadcast.splatinsert274, <4 x i8> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body276

vec.epilog.vector.body276:                        ; preds = %vec.epilog.vector.body276, %vec.epilog.ph272
  %index277 = phi i64 [ %vec.epilog.resume.val267, %vec.epilog.ph272 ], [ %index.next279, %vec.epilog.vector.body276 ] ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.az, i64 %index277 ; 2 uses
  %wide.load278 = load <4 x i8>, ptr %i.bw, align 1, !tbaa !60
  %i.bx = and <4 x i8> %wide.load278, %broadcast.splat275
  store <4 x i8> %i.bx, ptr %i.bw, align 1, !tbaa !60
  %index.next279 = add nuw i64 %index277, 4       ; 2 uses
  %i.by = icmp eq i64 %index.next279, %n.vec273
  br i1 %i.by, label %vec.epilog.middle.block280, label %vec.epilog.vector.body276, !llvm.loop !113

vec.epilog.middle.block280:                       ; preds = %vec.epilog.vector.body276
  %cmp.n281 = icmp eq i64 %n.vec273, %i.bg
  br i1 %cmp.n281, label %EGifPutLine.exit.us.us.1, label %.lr.ph.i.us.us.1.preheader

.lr.ph.i.us.us.1.preheader:                       ; preds = %iter.check268, %vec.epilog.iter.check270, %vec.epilog.middle.block280
  %indvars.iv.i.us.us.1.ph = phi i64 [ 0, %iter.check268 ], [ %n.vec257, %vec.epilog.iter.check270 ], [ %n.vec273, %vec.epilog.middle.block280 ]
  br label %.lr.ph.i.us.us.1

.lr.ph.i.us.us.1:                                 ; preds = %.lr.ph.i.us.us.1.preheader, %.lr.ph.i.us.us.1
  %indvars.iv.i.us.us.1 = phi i64 [ %indvars.iv.next.i.us.us.1, %.lr.ph.i.us.us.1 ], [ %indvars.iv.i.us.us.1.ph, %.lr.ph.i.us.us.1.preheader ] ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.az, i64 %indvars.iv.i.us.us.1 ; 2 uses
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !60
  %i.cb = and i8 %i.ca, %i.bo
  store i8 %i.cb, ptr %i.bz, align 1, !tbaa !60
  %indvars.iv.next.i.us.us.1 = add nuw nsw i64 %indvars.iv.i.us.us.1, 1 ; 2 uses
  %exitcond.not.i.us.us.1 = icmp eq i64 %indvars.iv.next.i.us.us.1, %i.bg
  br i1 %exitcond.not.i.us.us.1, label %EGifPutLine.exit.us.us.1, label %.lr.ph.i.us.us.1, !llvm.loop !114

EGifPutLine.exit.us.us.1:                         ; preds = %.lr.ph.i.us.us.1, %middle.block265, %vec.epilog.middle.block280, %bb.g
  %i.cc = tail call fastcc i32 @EGifCompressLine(ptr noundef nonnull %0, ptr noundef %i.az, i32 noundef %i.bd)
  %i.cd = icmp eq i32 %i.cc, 0
  br i1 %i.cd, label %.critedge.thread, label %bb.h

bb.h:                                             ; preds = %EGifPutLine.exit.us.us.1
  %indvars.iv.next136 = add nuw nsw i64 %indvars.iv135, 8 ; 2 uses
  %i.ce = trunc nuw i64 %indvars.iv.next136 to i32
  %i.cf = icmp sgt i32 %i.u, %i.ce
  br i1 %i.cf, label %.lr.ph77.us.1, label %._crit_edge.split.us.us.1, !llvm.loop !115

._crit_edge.split.us.us.1:                        ; preds = %bb.h, %._crit_edge.split.us.us
  %i.cg = icmp sgt i32 %i.u, 2
  br i1 %i.cg, label %.lr.ph77.us.2.a, label %._crit_edge.split.us.us.2

.lr.ph77.us.2.a:                                  ; preds = %._crit_edge.split.us.us.1, %bb.k
  %indvars.iv132 = phi i64 [ %indvars.iv.next133, %bb.k ], [ 2, %._crit_edge.split.us.us.1 ]
  %i.ch = load ptr, ptr %i.x, align 8, !tbaa !107 ; 4 uses
  %i.ci = load ptr, ptr %i.p, align 8, !tbaa !14  ; 3 uses
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !22
  %i.ck = and i32 %i.cj, 1
  %.not.i.us.us.2 = icmp eq i32 %i.ck, 0
  br i1 %.not.i.us.us.2, label %.split.us, label %bb.i

bb.i:                                             ; preds = %.lr.ph77.us.2.a
  %i.cl = load i32, ptr %i.q, align 8, !tbaa !71  ; 6 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ci, i64 56 ; 2 uses
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !68 ; 2 uses
  %i.co = zext i32 %i.cl to i64                   ; 7 uses
  %i.cp = icmp ult i64 %i.cn, %i.co
  br i1 %i.cp, label %.split79.us, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cq = sext i32 %i.cl to i64
  %i.cr = sub i64 %i.cn, %i.cq
  store i64 %i.cr, ptr %i.cm, align 8, !tbaa !68
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.ct = load i32, ptr %i.cs, align 8, !tbaa !77
  %i.cu = sext i32 %i.ct to i64
  %i.cv = getelementptr inbounds i8, ptr @CodeMask, i64 %i.cu
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !60  ; 3 uses
  %i.cx = icmp sgt i32 %i.cl, 0
  br i1 %i.cx, label %iter.check238, label %EGifPutLine.exit.us.us.2

iter.check238:                                    ; preds = %bb.j
  %min.iters.check223 = icmp ult i32 %i.cl, 4
  br i1 %min.iters.check223, label %.lr.ph.i.us.us.2.preheader, label %vector.main.loop.iter.check224

vector.main.loop.iter.check224:                   ; preds = %iter.check238
  %min.iters.check225 = icmp ult i32 %i.cl, 32
  br i1 %min.iters.check225, label %vec.epilog.ph242, label %vector.ph226

vector.ph226:                                     ; preds = %vector.main.loop.iter.check224
  %i.cy = and i64 %i.co, 28
  %n.vec227 = and i64 %i.co, 2147483616           ; 4 uses
  %broadcast.splatinsert228 = insertelement <16 x i8> poison, i8 %i.cw, i64 0
  %broadcast.splat229 = shufflevector <16 x i8> %broadcast.splatinsert228, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  br label %vector.body230

vector.body230:                                   ; preds = %vector.body230, %vector.ph226
  %index231 = phi i64 [ 0, %vector.ph226 ], [ %index.next234, %vector.body230 ] ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ch, i64 %index231 ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 16 ; 2 uses
  %wide.load232 = load <16 x i8>, ptr %i.cz, align 1, !tbaa !60
  %wide.load233 = load <16 x i8>, ptr %i.da, align 1, !tbaa !60
  %i.db = and <16 x i8> %wide.load232, %broadcast.splat229
  %i.dc = and <16 x i8> %wide.load233, %broadcast.splat229
  store <16 x i8> %i.db, ptr %i.cz, align 1, !tbaa !60
  store <16 x i8> %i.dc, ptr %i.da, align 1, !tbaa !60
  %index.next234 = add nuw i64 %index231, 32      ; 2 uses
  %i.dd = icmp eq i64 %index.next234, %n.vec227
  br i1 %i.dd, label %middle.block235, label %vector.body230, !llvm.loop !116

middle.block235:                                  ; preds = %vector.body230
  %cmp.n236 = icmp eq i64 %n.vec227, %i.co
  br i1 %cmp.n236, label %EGifPutLine.exit.us.us.2, label %vec.epilog.iter.check240

vec.epilog.iter.check240:                         ; preds = %middle.block235
  %min.epilog.iters.check241 = icmp eq i64 %i.cy, 0
  br i1 %min.epilog.iters.check241, label %.lr.ph.i.us.us.2.preheader, label %vec.epilog.ph242, !prof !89

vec.epilog.ph242:                                 ; preds = %vector.main.loop.iter.check224, %vec.epilog.iter.check240
  %vec.epilog.resume.val237 = phi i64 [ %n.vec227, %vec.epilog.iter.check240 ], [ 0, %vector.main.loop.iter.check224 ]
  %n.vec243 = and i64 %i.co, 2147483644           ; 3 uses
  %broadcast.splatinsert244 = insertelement <4 x i8> poison, i8 %i.cw, i64 0
  %broadcast.splat245 = shufflevector <4 x i8> %broadcast.splatinsert244, <4 x i8> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body246

vec.epilog.vector.body246:                        ; preds = %vec.epilog.vector.body246, %vec.epilog.ph242
  %index247 = phi i64 [ %vec.epilog.resume.val237, %vec.epilog.ph242 ], [ %index.next249, %vec.epilog.vector.body246 ] ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.ch, i64 %index247 ; 2 uses
  %wide.load248 = load <4 x i8>, ptr %i.de, align 1, !tbaa !60
  %i.df = and <4 x i8> %wide.load248, %broadcast.splat245
  store <4 x i8> %i.df, ptr %i.de, align 1, !tbaa !60
  %index.next249 = add nuw i64 %index247, 4       ; 2 uses
  %i.dg = icmp eq i64 %index.next249, %n.vec243
  br i1 %i.dg, label %vec.epilog.middle.block250, label %vec.epilog.vector.body246, !llvm.loop !117

vec.epilog.middle.block250:                       ; preds = %vec.epilog.vector.body246
  %cmp.n251 = icmp eq i64 %n.vec243, %i.co
  br i1 %cmp.n251, label %EGifPutLine.exit.us.us.2, label %.lr.ph.i.us.us.2.preheader

.lr.ph.i.us.us.2.preheader:                       ; preds = %iter.check238, %vec.epilog.iter.check240, %vec.epilog.middle.block250
  %indvars.iv.i.us.us.2.ph = phi i64 [ 0, %iter.check238 ], [ %n.vec227, %vec.epilog.iter.check240 ], [ %n.vec243, %vec.epilog.middle.block250 ]
  br label %.lr.ph.i.us.us.2

.lr.ph.i.us.us.2:                                 ; preds = %.lr.ph.i.us.us.2.preheader, %.lr.ph.i.us.us.2
  %indvars.iv.i.us.us.2 = phi i64 [ %indvars.iv.next.i.us.us.2, %.lr.ph.i.us.us.2 ], [ %indvars.iv.i.us.us.2.ph, %.lr.ph.i.us.us.2.preheader ] ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.ch, i64 %indvars.iv.i.us.us.2 ; 2 uses
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !60
  %i.dj = and i8 %i.di, %i.cw
  store i8 %i.dj, ptr %i.dh, align 1, !tbaa !60
  %indvars.iv.next.i.us.us.2 = add nuw nsw i64 %indvars.iv.i.us.us.2, 1 ; 2 uses
  %exitcond.not.i.us.us.2 = icmp eq i64 %indvars.iv.next.i.us.us.2, %i.co
  br i1 %exitcond.not.i.us.us.2, label %EGifPutLine.exit.us.us.2, label %.lr.ph.i.us.us.2, !llvm.loop !118

EGifPutLine.exit.us.us.2:                         ; preds = %.lr.ph.i.us.us.2, %middle.block235, %vec.epilog.middle.block250, %bb.j
  %i.dk = tail call fastcc i32 @EGifCompressLine(ptr noundef nonnull %0, ptr noundef %i.ch, i32 noundef %i.cl)
  %i.dl = icmp eq i32 %i.dk, 0
  br i1 %i.dl, label %.critedge.thread, label %bb.k

bb.k:                                             ; preds = %EGifPutLine.exit.us.us.2
  %indvars.iv.next133 = add nuw nsw i64 %indvars.iv132, 4 ; 2 uses
  %1 = trunc nuw i64 %indvars.iv.next133 to i32
  %2 = icmp sgt i32 %i.u, %1
  br i1 %2, label %.lr.ph77.us.2.a, label %._crit_edge.split.us.us.2, !llvm.loop !115

._crit_edge.split.us.us.2:                        ; preds = %bb.k, %._crit_edge.split.us.us.1
  %.not188 = icmp eq i32 %i.u, 1
  br i1 %.not188, label %.critedge, label %.lr.ph77.us.3.a

.lr.ph77.us.3.a:                                  ; preds = %._crit_edge.split.us.us.2, %bb.n
  %indvars.iv129 = phi i64 [ %indvars.iv.next130, %bb.n ], [ 1, %._crit_edge.split.us.us.2 ]
  %i.dm = load ptr, ptr %i.x, align 8, !tbaa !107 ; 4 uses
  %i.dn = load ptr, ptr %i.p, align 8, !tbaa !14  ; 3 uses
  %i.do = load i32, ptr %i.dn, align 8, !tbaa !22
  %i.dp = and i32 %i.do, 1
  %.not.i.us.us.3 = icmp eq i32 %i.dp, 0
  br i1 %.not.i.us.us.3, label %.split.us, label %bb.l

bb.l:                                             ; preds = %.lr.ph77.us.3.a
  %i.dq = load i32, ptr %i.q, align 8, !tbaa !71  ; 6 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dn, i64 56 ; 2 uses
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !68 ; 2 uses
  %i.dt = zext i32 %i.dq to i64                   ; 7 uses
  %i.du = icmp ult i64 %i.ds, %i.dt
  br i1 %i.du, label %.split79.us, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dv = sext i32 %i.dq to i64
  %i.dw = sub i64 %i.ds, %i.dv
  store i64 %i.dw, ptr %i.dr, align 8, !tbaa !68
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %i.dy = load i32, ptr %i.dx, align 8, !tbaa !77
  %i.dz = sext i32 %i.dy to i64
  %i.ea = getelementptr inbounds i8, ptr @CodeMask, i64 %i.dz
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !60  ; 3 uses
  %i.ec = icmp sgt i32 %i.dq, 0
  br i1 %i.ec, label %iter.check, label %EGifPutLine.exit.us.us.3

iter.check:                                       ; preds = %bb.m
  %min.iters.check = icmp ult i32 %i.dq, 4
  br i1 %min.iters.check, label %.lr.ph.i.us.us.3.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check214 = icmp ult i32 %i.dq, 32
  br i1 %min.iters.check214, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ed = and i64 %i.dt, 28
  %n.vec = and i64 %i.dt, 2147483616              ; 4 uses
  %broadcast.splatinsert = insertelement <16 x i8> poison, i8 %i.eb, i64 0
  %broadcast.splat = shufflevector <16 x i8> %broadcast.splatinsert, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dm, i64 %index ; 3 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 16 ; 2 uses
  %wide.load = load <16 x i8>, ptr %i.ee, align 1, !tbaa !60
  %wide.load215 = load <16 x i8>, ptr %i.ef, align 1, !tbaa !60
  %i.eg = and <16 x i8> %wide.load, %broadcast.splat
  %i.eh = and <16 x i8> %wide.load215, %broadcast.splat
  store <16 x i8> %i.eg, ptr %i.ee, align 1, !tbaa !60
  store <16 x i8> %i.eh, ptr %i.ef, align 1, !tbaa !60
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ei = icmp eq i64 %index.next, %n.vec
  br i1 %i.ei, label %middle.block, label %vector.body, !llvm.loop !119

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.dt
  br i1 %cmp.n, label %EGifPutLine.exit.us.us.3, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ed, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.us.us.3.preheader, label %vec.epilog.ph, !prof !89

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec216 = and i64 %i.dt, 2147483644           ; 3 uses
  %broadcast.splatinsert217 = insertelement <4 x i8> poison, i8 %i.eb, i64 0
  %broadcast.splat218 = shufflevector <4 x i8> %broadcast.splatinsert217, <4 x i8> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index219 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next221, %vec.epilog.vector.body ] ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dm, i64 %index219 ; 2 uses
  %wide.load220 = load <4 x i8>, ptr %i.ej, align 1, !tbaa !60
  %i.ek = and <4 x i8> %wide.load220, %broadcast.splat218
  store <4 x i8> %i.ek, ptr %i.ej, align 1, !tbaa !60
  %index.next221 = add nuw i64 %index219, 4       ; 2 uses
  %i.el = icmp eq i64 %index.next221, %n.vec216
  br i1 %i.el, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !120

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n222 = icmp eq i64 %n.vec216, %i.dt
  br i1 %cmp.n222, label %EGifPutLine.exit.us.us.3, label %.lr.ph.i.us.us.3.preheader

.lr.ph.i.us.us.3.preheader:                       ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.us.us.3.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec216, %vec.epilog.middle.block ]
  br label %.lr.ph.i.us.us.3

.lr.ph.i.us.us.3:                                 ; preds = %.lr.ph.i.us.us.3.preheader, %.lr.ph.i.us.us.3
  %indvars.iv.i.us.us.3 = phi i64 [ %indvars.iv.next.i.us.us.3, %.lr.ph.i.us.us.3 ], [ %indvars.iv.i.us.us.3.ph, %.lr.ph.i.us.us.3.preheader ] ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.dm, i64 %indvars.iv.i.us.us.3 ; 2 uses
  %i.en = load i8, ptr %i.em, align 1, !tbaa !60
  %i.eo = and i8 %i.en, %i.eb
  store i8 %i.eo, ptr %i.em, align 1, !tbaa !60
  %indvars.iv.next.i.us.us.3 = add nuw nsw i64 %indvars.iv.i.us.us.3, 1 ; 2 uses
  %exitcond.not.i.us.us.3 = icmp eq i64 %indvars.iv.next.i.us.us.3, %i.dt
  br i1 %exitcond.not.i.us.us.3, label %EGifPutLine.exit.us.us.3, label %.lr.ph.i.us.us.3, !llvm.loop !121

EGifPutLine.exit.us.us.3:                         ; preds = %.lr.ph.i.us.us.3, %middle.block, %vec.epilog.middle.block, %bb.m
  %i.ep = tail call fastcc i32 @EGifCompressLine(ptr noundef nonnull %0, ptr noundef %i.dm, i32 noundef %i.dq)
  %i.eq = icmp eq i32 %i.ep, 0
  br i1 %i.eq, label %.critedge.thread, label %bb.n

bb.n:                                             ; preds = %EGifPutLine.exit.us.us.3
  %indvars.iv.next130 = add nuw nsw i64 %indvars.iv129, 2 ; 2 uses
  %3 = trunc nuw i64 %indvars.iv.next130 to i32
  %4 = icmp sgt i32 %i.u, %3
  br i1 %4, label %.lr.ph77.us.3.a, label %.critedge, !llvm.loop !115

.lr.ph77.us:                                      ; preds = %.preheader.split.us.preheader, %bb.q
  %indvars.iv138 = phi i64 [ %indvars.iv.next139, %bb.q ], [ 0, %.preheader.split.us.preheader ]
  %i.er = load ptr, ptr %i.x, align 8, !tbaa !107 ; 4 uses
  %i.es = load ptr, ptr %i.p, align 8, !tbaa !14  ; 3 uses
  %i.et = load i32, ptr %i.es, align 8, !tbaa !22
  %i.eu = and i32 %i.et, 1
  %.not.i.us.us = icmp eq i32 %i.eu, 0
  br i1 %.not.i.us.us, label %.split.us, label %bb.o

bb.o:                                             ; preds = %.lr.ph77.us
  %i.ev = load i32, ptr %i.q, align 8, !tbaa !71  ; 6 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.es, i64 56 ; 2 uses
  %i.ex = load i64, ptr %i.ew, align 8, !tbaa !68 ; 2 uses
  %i.ey = zext i32 %i.ev to i64                   ; 7 uses
  %i.ez = icmp ult i64 %i.ex, %i.ey
  br i1 %i.ez, label %.split79.us, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.fa = sext i32 %i.ev to i64
  %i.fb = sub i64 %i.ex, %i.fa
  store i64 %i.fb, ptr %i.ew, align 8, !tbaa !68
  %i.fc = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  %i.fd = load i32, ptr %i.fc, align 8, !tbaa !77
  %i.fe = sext i32 %i.fd to i64
  %i.ff = getelementptr inbounds i8, ptr @CodeMask, i64 %i.fe
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !60  ; 3 uses
  %i.fh = icmp sgt i32 %i.ev, 0
  br i1 %i.fh, label %iter.check298, label %EGifPutLine.exit.us.us

iter.check298:                                    ; preds = %bb.p
  %min.iters.check283 = icmp ult i32 %i.ev, 4
  br i1 %min.iters.check283, label %.lr.ph.i.us.us.preheader, label %vector.main.loop.iter.check284

vector.main.loop.iter.check284:                   ; preds = %iter.check298
  %min.iters.check285 = icmp ult i32 %i.ev, 32
  br i1 %min.iters.check285, label %vec.epilog.ph302, label %vector.ph286

vector.ph286:                                     ; preds = %vector.main.loop.iter.check284
  %i.fi = and i64 %i.ey, 28
  %n.vec287 = and i64 %i.ey, 2147483616           ; 4 uses
  %broadcast.splatinsert288 = insertelement <16 x i8> poison, i8 %i.fg, i64 0
  %broadcast.splat289 = shufflevector <16 x i8> %broadcast.splatinsert288, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  br label %vector.body290

vector.body290:                                   ; preds = %vector.body290, %vector.ph286
  %index291 = phi i64 [ 0, %vector.ph286 ], [ %index.next294, %vector.body290 ] ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.er, i64 %index291 ; 3 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 16 ; 2 uses
  %wide.load292 = load <16 x i8>, ptr %i.fj, align 1, !tbaa !60
  %wide.load293 = load <16 x i8>, ptr %i.fk, align 1, !tbaa !60
  %i.fl = and <16 x i8> %wide.load292, %broadcast.splat289
  %i.fm = and <16 x i8> %wide.load293, %broadcast.splat289
  store <16 x i8> %i.fl, ptr %i.fj, align 1, !tbaa !60
  store <16 x i8> %i.fm, ptr %i.fk, align 1, !tbaa !60
  %index.next294 = add nuw i64 %index291, 32      ; 2 uses
  %i.fn = icmp eq i64 %index.next294, %n.vec287
  br i1 %i.fn, label %middle.block295, label %vector.body290, !llvm.loop !122

middle.block295:                                  ; preds = %vector.body290
  %cmp.n296 = icmp eq i64 %n.vec287, %i.ey
  br i1 %cmp.n296, label %EGifPutLine.exit.us.us, label %vec.epilog.iter.check300

vec.epilog.iter.check300:                         ; preds = %middle.block295
  %min.epilog.iters.check301 = icmp eq i64 %i.fi, 0
  br i1 %min.epilog.iters.check301, label %.lr.ph.i.us.us.preheader, label %vec.epilog.ph302, !prof !89

vec.epilog.ph302:                                 ; preds = %vector.main.loop.iter.check284, %vec.epilog.iter.check300
  %vec.epilog.resume.val297 = phi i64 [ %n.vec287, %vec.epilog.iter.check300 ], [ 0, %vector.main.loop.iter.check284 ]
  %n.vec303 = and i64 %i.ey, 2147483644           ; 3 uses
  %broadcast.splatinsert304 = insertelement <4 x i8> poison, i8 %i.fg, i64 0
  %broadcast.splat305 = shufflevector <4 x i8> %broadcast.splatinsert304, <4 x i8> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body306

vec.epilog.vector.body306:                        ; preds = %vec.epilog.vector.body306, %vec.epilog.ph302
  %index307 = phi i64 [ %vec.epilog.resume.val297, %vec.epilog.ph302 ], [ %index.next309, %vec.epilog.vector.body306 ] ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.er, i64 %index307 ; 2 uses
  %wide.load308 = load <4 x i8>, ptr %i.fo, align 1, !tbaa !60
  %i.fp = and <4 x i8> %wide.load308, %broadcast.splat305
  store <4 x i8> %i.fp, ptr %i.fo, align 1, !tbaa !60
  %index.next309 = add nuw i64 %index307, 4       ; 2 uses
  %i.fq = icmp eq i64 %index.next309, %n.vec303
  br i1 %i.fq, label %vec.epilog.middle.block310, label %vec.epilog.vector.body306, !llvm.loop !123

vec.epilog.middle.block310:                       ; preds = %vec.epilog.vector.body306
  %cmp.n311 = icmp eq i64 %n.vec303, %i.ey
  br i1 %cmp.n311, label %EGifPutLine.exit.us.us, label %.lr.ph.i.us.us.preheader

.lr.ph.i.us.us.preheader:                         ; preds = %iter.check298, %vec.epilog.iter.check300, %vec.epilog.middle.block310
  %indvars.iv.i.us.us.ph = phi i64 [ 0, %iter.check298 ], [ %n.vec287, %vec.epilog.iter.check300 ], [ %n.vec303, %vec.epilog.middle.block310 ]
  br label %.lr.ph.i.us.us

.lr.ph.i.us.us:                                   ; preds = %.lr.ph.i.us.us.preheader, %.lr.ph.i.us.us
  %indvars.iv.i.us.us = phi i64 [ %indvars.iv.next.i.us.us, %.lr.ph.i.us.us ], [ %indvars.iv.i.us.us.ph, %.lr.ph.i.us.us.preheader ] ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.er, i64 %indvars.iv.i.us.us ; 2 uses
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !60
  %i.ft = and i8 %i.fs, %i.fg
  store i8 %i.ft, ptr %i.fr, align 1, !tbaa !60
  %indvars.iv.next.i.us.us = add nuw nsw i64 %indvars.iv.i.us.us, 1 ; 2 uses
  %exitcond.not.i.us.us = icmp eq i64 %indvars.iv.next.i.us.us, %i.ey
  br i1 %exitcond.not.i.us.us, label %EGifPutLine.exit.us.us, label %.lr.ph.i.us.us, !llvm.loop !124

EGifPutLine.exit.us.us:                           ; preds = %.lr.ph.i.us.us, %middle.block295, %vec.epilog.middle.block310, %bb.p
  %i.fu = tail call fastcc i32 @EGifCompressLine(ptr noundef nonnull %0, ptr noundef %i.er, i32 noundef %i.ev)
  %i.fv = icmp eq i32 %i.fu, 0
  br i1 %i.fv, label %.critedge.thread, label %bb.q

bb.q:                                             ; preds = %EGifPutLine.exit.us.us
  %indvars.iv.next139 = add nuw nsw i64 %indvars.iv138, 8 ; 2 uses
  %i.fw = trunc nuw i64 %indvars.iv.next139 to i32
  %i.fx = icmp sgt i32 %i.u, %i.fw
  br i1 %i.fx, label %.lr.ph77.us, label %._crit_edge.split.us.us, !llvm.loop !115

.lr.ph77:                                         ; preds = %.preheader.split.preheader
  %i.fy = zext nneg i32 %i.u to i64
  %min.iters.check403 = icmp ult i32 %.fr, 4
  %min.iters.check405 = icmp ult i32 %.fr, 32
  %i.fz = and i64 %i.au, 28
  %n.vec407 = and i64 %i.au, 2147483616           ; 4 uses
  %cmp.n416 = icmp eq i64 %n.vec407, %i.au
  %min.epilog.iters.check421 = icmp eq i64 %i.fz, 0
  %n.vec423 = and i64 %i.au, 2147483644           ; 3 uses
  %cmp.n431 = icmp eq i64 %n.vec423, %i.au
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph77, %bb.u
  %indvars.iv113 = phi i64 [ 0, %.lr.ph77 ], [ %indvars.iv.next114, %bb.u ] ; 2 uses
  %i.ga = load ptr, ptr %i.x, align 8, !tbaa !107
  %i.gb = mul nsw i64 %indvars.iv113, %i.av
  %i.gc = getelementptr inbounds i8, ptr %i.ga, i64 %i.gb ; 4 uses
  %i.gd = load ptr, ptr %i.p, align 8, !tbaa !14  ; 3 uses
  %i.ge = load i32, ptr %i.gd, align 8, !tbaa !22
  %i.gf = and i32 %i.ge, 1
  %.not.i = icmp eq i32 %i.gf, 0
  br i1 %.not.i, label %.split.us, label %bb.s

.split.us:                                        ; preds = %bb.r, %bb.v, %bb.z, %bb.ad, %.lr.ph77.us, %.lr.ph77.us.1, %.lr.ph77.us.2.a, %.lr.ph77.us.3.a
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 10, ptr %i.gg, align 8, !tbaa !26
  br label %.critedge.thread

bb.s:                                             ; preds = %bb.r
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gd, i64 56 ; 2 uses
  %i.gi = load i64, ptr %i.gh, align 8, !tbaa !68 ; 2 uses
  %i.gj = icmp ult i64 %i.gi, %i.au
  br i1 %i.gj, label %.split79.us, label %bb.t

.split79.us:                                      ; preds = %bb.s, %bb.w, %bb.aa, %bb.ae, %bb.o, %bb.f, %bb.i, %bb.l
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 6, ptr %i.gk, align 8, !tbaa !26
  br label %.critedge.thread

bb.t:                                             ; preds = %bb.s
  %i.gl = sub i64 %i.gi, %i.av
  store i64 %i.gl, ptr %i.gh, align 8, !tbaa !68
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  %i.gn = load i32, ptr %i.gm, align 8, !tbaa !77
  %i.go = sext i32 %i.gn to i64
  %i.gp = getelementptr inbounds i8, ptr @CodeMask, i64 %i.go
  %i.gq = load i8, ptr %i.gp, align 1, !tbaa !60  ; 3 uses
  br i1 %i.aw, label %iter.check418, label %EGifPutLine.exit

iter.check418:                                    ; preds = %bb.t
  br i1 %min.iters.check403, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check404

vector.main.loop.iter.check404:                   ; preds = %iter.check418
  br i1 %min.iters.check405, label %vec.epilog.ph422, label %vector.ph406

vector.ph406:                                     ; preds = %vector.main.loop.iter.check404
  %broadcast.splatinsert408 = insertelement <16 x i8> poison, i8 %i.gq, i64 0
  %broadcast.splat409 = shufflevector <16 x i8> %broadcast.splatinsert408, <16 x i8> poison, <16 x i32> zeroinitializer ; 2 uses
  br label %vector.body410

vector.body410:                                   ; preds = %vector.body410, %vector.ph406
  %index411 = phi i64 [ 0, %vector.ph406 ], [ %index.next414, %vector.body410 ] ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gc, i64 %index411 ; 3 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 16 ; 2 uses
  %wide.load412 = load <16 x i8>, ptr %i.gr, align 1, !tbaa !60
  %wide.load413 = load <16 x i8>, ptr %i.gs, align 1, !tbaa !60
  %i.gt = and <16 x i8> %wide.load412, %broadcast.splat409
  %i.gu = and <16 x i8> %wide.load413, %broadcast.splat409
  store <16 x i8> %i.gt, ptr %i.gr, align 1, !tbaa !60
  store <16 x i8> %i.gu, ptr %i.gs, align 1, !tbaa !60
  %index.next414 = add nuw i64 %index411, 32      ; 2 uses
  %i.gv = icmp eq i64 %index.next414, %n.vec407
  br i1 %i.gv, label %middle.block415, label %vector.body410, !llvm.loop !125

middle.block415:                                  ; preds = %vector.body410
  br i1 %cmp.n416, label %EGifPutLine.exit, label %vec.epilog.iter.check420

vec.epilog.iter.check420:                         ; preds = %middle.block415
  br i1 %min.epilog.iters.check421, label %.lr.ph.i.preheader, label %vec.epilog.ph422, !prof !89

vec.epilog.ph422:                                 ; preds = %vector.main.loop.iter.check404, %vec.epilog.iter.check420
  %vec.epilog.resume.val417 = phi i64 [ %n.vec407, %vec.epilog.iter.check420 ], [ 0, %vector.main.loop.iter.check404 ]
  %broadcast.splatinsert424 = insertelement <4 x i8> poison, i8 %i.gq, i64 0
  %broadcast.splat425 = shufflevector <4 x i8> %broadcast.splatinsert424, <4 x i8> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body426

vec.epilog.vector.body426:                        ; preds = %vec.epilog.vector.body426, %vec.epilog.ph422
end_hunk_0
