Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/cbs_av1?download=true
inline.NumInlined: 154
inline.NumDeleted: 53
loop-unroll.NumCompletelyUnrolled: 51
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 52
begin_hunk_0_@cbs_av1_read_frame_size_with_refs:bb.a

bb.y:                                             ; preds = %cbs_av1_read_superres_params.exit, %bb.r
  br label %cbs_av1_read_superres_params.exit.thread

cbs_av1_read_superres_params.exit.thread:         ; preds = %.critedge.i, %bb.w, %.thread67, %bb.b, %bb.r, %bb.q, %bb.y
  %.3 = phi i32 [ %.lcssa, %bb.b ], [ %i.ba, %bb.q ], [ 0, %bb.y ], [ %i.bc, %bb.r ], [ -1094995529, %.thread67 ], [ %i.ci, %.critedge.i ], [ %i.cp, %bb.w ]
  ret i32 %.3
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -2147483648, 1) i32 @cbs_av1_read_interpolation_filter(ptr noundef %0, ptr noundef nonnull %1, ptr nofree noundef writeonly captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.c = call i32 @ff_cbs_read_simple_unsigned(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 1, ptr noundef nonnull @.str.151, ptr noundef nonnull %i.a) #9 ; 2 uses
  %i.d = icmp sgt i32 %i.c, -1
  br i1 %i.d, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.e = load i32, ptr %i.a, align 4, !tbaa !68
  %i.f = trunc i32 %i.e to i8                     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 229
  store i8 %i.f, ptr %i.g, align 1, !tbaa !313
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  %.not = icmp eq i8 %i.f, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 230
  store i8 4, ptr %i.h, align 2, !tbaa !314
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  %i.i = call i32 @ff_cbs_read_simple_unsigned(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 2, ptr noundef nonnull @.str.152, ptr noundef nonnull %i.b) #9 ; 2 uses
  %i.j = icmp sgt i32 %i.i, -1
  br i1 %i.j, label %.thread, label %bb.e

.thread:                                          ; preds = %bb.d
  %i.k = load i32, ptr %i.b, align 4, !tbaa !68
  %i.l = trunc i32 %i.k to i8
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 230
  store i8 %i.l, ptr %i.m, align 2, !tbaa !314
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  br label %bb.f

.critedge:                                        ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %.thread, %bb.e, %.critedge
  %.2 = phi i32 [ %i.c, %.critedge ], [ %i.i, %bb.e ], [ 0, %.thread ], [ 0, %bb.c ]
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -2147483648, 1) i32 @cbs_av1_read_tile_info(ptr noundef %0, ptr noundef nonnull %1, ptr nofree noundef captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca [2 x i32], align 4                ; 3 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %i.g = alloca [2 x i32], align 4                ; 3 uses
  %i.h = alloca i32, align 4                      ; 5 uses
  %i.i = alloca i32, align 4                      ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !34   ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !61
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 76
  %i.o = load i32, ptr %i.n, align 4, !tbaa !248
  %i.p = add nsw i32 %i.o, 7
  %i.q = ashr i32 %i.p, 2                         ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 80
  %i.s = load i32, ptr %i.r, align 8, !tbaa !268
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 557
  %i.u = load i8, ptr %i.t, align 1, !tbaa !110
  %.not = icmp eq i8 %i.u, 0                      ; 3 uses
  %i.v = add nsw i32 %i.q, 30
  %i.w = ashr i32 %i.v, 5
  %i.x = add nsw i32 %i.q, 14
  %i.y = ashr i32 %i.x, 4
  %i.z = select i1 %.not, i32 %i.y, i32 %i.w      ; 11 uses
  %i.aa = select i1 %.not, i32 6, i32 7           ; 2 uses
  %i.ab = lshr exact i32 4096, %i.aa              ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.0.i = phi i32 [ 0, %bb.a ], [ %i.ae, %bb.b ]  ; 5 uses
  %i.ac = shl i32 %i.ab, %.0.i
  %i.ad = icmp slt i32 %i.ac, %i.z
  %i.ae = add nuw nsw i32 %.0.i, 1
  br i1 %i.ad, label %bb.b, label %cbs_av1_tile_log2.exit, !llvm.loop !137

cbs_av1_tile_log2.exit:                           ; preds = %bb.b
  %i.af = tail call i32 @llvm.smin.i32(i32 %i.z, i32 64)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %cbs_av1_tile_log2.exit
  %.0.i252 = phi i32 [ 0, %cbs_av1_tile_log2.exit ], [ %i.ai, %bb.c ] ; 3 uses
  %i.ag = shl nuw i32 1, %.0.i252
  %i.ah = icmp slt i32 %i.ag, %i.af
  %i.ai = add nuw nsw i32 %.0.i252, 1
  br i1 %i.ah, label %bb.c, label %cbs_av1_tile_log2.exit253, !llvm.loop !137

cbs_av1_tile_log2.exit253:                        ; preds = %bb.c
  %i.aj = add nsw i32 %i.s, 7
  %i.ak = ashr i32 %i.aj, 2                       ; 2 uses
  %i.al = add nsw i32 %i.ak, 30
  %i.am = ashr i32 %i.al, 5
  %i.an = add nsw i32 %i.ak, 14
  %i.ao = ashr i32 %i.an, 4
  %i.ap = select i1 %.not, i32 %i.ao, i32 %i.am   ; 10 uses
  %i.aq = tail call i32 @llvm.smin.i32(i32 %i.ap, i32 64)
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %cbs_av1_tile_log2.exit253
  %.0.i254 = phi i32 [ 0, %cbs_av1_tile_log2.exit253 ], [ %i.at, %bb.d ] ; 3 uses
  %i.ar = shl nuw i32 1, %.0.i254
  %i.as = icmp slt i32 %i.ar, %i.aq
  %i.at = add nuw nsw i32 %.0.i254, 1
  br i1 %i.as, label %bb.d, label %cbs_av1_tile_log2.exit255, !llvm.loop !137

cbs_av1_tile_log2.exit255:                        ; preds = %bb.d
  %i.au = shl nuw nsw i32 %i.aa, 1
  %i.av = lshr exact i32 9437184, %i.au           ; 2 uses
  %i.aw = mul nsw i32 %i.ap, %i.z                 ; 3 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %cbs_av1_tile_log2.exit255
  %.0.i256 = phi i32 [ 0, %cbs_av1_tile_log2.exit255 ], [ %i.az, %bb.e ] ; 3 uses
  %i.ax = shl i32 %i.av, %.0.i256
  %i.ay = icmp slt i32 %i.ax, %i.aw
  %i.az = add nuw nsw i32 %.0.i256, 1
  br i1 %i.ay, label %bb.e, label %cbs_av1_tile_log2.exit257, !llvm.loop !137

cbs_av1_tile_log2.exit257:                        ; preds = %bb.e
  %i.ba = icmp samesign ugt i32 %.0.i, %.0.i256
  br i1 %i.ba, label %cbs_av1_tile_log2.exit259, label %.preheader290

.preheader290:                                    ; preds = %cbs_av1_tile_log2.exit257, %.preheader290
  %.0.i258 = phi i32 [ %i.bd, %.preheader290 ], [ 0, %cbs_av1_tile_log2.exit257 ] ; 3 uses
  %i.bb = shl i32 %i.av, %.0.i258
  %i.bc = icmp slt i32 %i.bb, %i.aw
  %i.bd = add nuw nsw i32 %.0.i258, 1
  br i1 %i.bc, label %.preheader290, label %cbs_av1_tile_log2.exit259, !llvm.loop !137

cbs_av1_tile_log2.exit259:                        ; preds = %.preheader290, %cbs_av1_tile_log2.exit257
  %i.be = phi i32 [ %.0.i, %cbs_av1_tile_log2.exit257 ], [ %.0.i258, %.preheader290 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.bf = call i32 @ff_cbs_read_simple_unsigned(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef 1, ptr noundef nonnull @.str.153, ptr noundef nonnull %i.a) #9 ; 2 uses
  %i.bg = icmp sgt i32 %i.bf, -1
  br i1 %i.bg, label %bb.f, label %.critedge

bb.f:                                             ; preds = %cbs_av1_tile_log2.exit259
  %i.bh = load i32, ptr %i.a, align 4, !tbaa !68
  %i.bi = trunc i32 %i.bh to i8                   ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 234
  store i8 %i.bi, ptr %i.bj, align 2, !tbaa !315
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  %.not249 = icmp eq i8 %i.bi, 0
  br i1 %.not249, label %.preheader289, label %bb.g

.preheader289:                                    ; preds = %bb.f
  %i.bk = icmp sgt i32 %i.z, 0
  br i1 %i.bk, label %.lr.ph318, label %.preheader288

.lr.ph318:                                        ; preds = %.preheader289
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 237
  %i.bm = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 365
  br label %bb.n

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  %i.bo = call fastcc i32 @cbs_av1_read_increment(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %.0.i, i32 noundef %.0.i252, ptr noundef nonnull @.str.154, ptr noundef %i.b) ; 2 uses
  %i.bp = icmp sgt i32 %i.bo, -1
  br i1 %i.bp, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  br label %.thread269

bb.i:                                             ; preds = %bb.g
  %i.bq = load i32, ptr %i.b, align 4, !tbaa !68  ; 2 uses
  %i.br = trunc i32 %i.bq to i8
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 235
  store i8 %i.br, ptr %i.bs, align 1, !tbaa !316
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  %i.bt = and i32 %i.bq, 255                      ; 3 uses
  %i.bu = shl nuw i32 1, %i.bt
  %i.bv = add nsw i32 %i.z, -1                    ; 2 uses
  %i.bw = add i32 %i.bv, %i.bu
  %i.bx = ashr i32 %i.bw, %i.bt                   ; 12 uses
  %i.by = icmp sgt i32 %i.z, 0
  br i1 %i.by, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %bb.i
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 237 ; 3 uses
  %smax = call i32 @llvm.smax.i32(i32 %i.z, i32 %i.bx)
  %i.ca = add nsw i32 %smax, -1
  %i.cb = udiv i32 %i.ca, %i.bx                   ; 3 uses
  %i.cc = zext i32 %i.cb to i64
  %i.cd = add nuw nsw i64 %i.cc, 1                ; 5 uses
  %min.iters.check = icmp ult i32 %i.cb, 3
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check374 = icmp ult i32 %i.cb, 31
  br i1 %min.iters.check374, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ce = and i64 %i.cd, 28
  %n.vec = and i64 %i.cd, 8589934560              ; 5 uses
  %i.cf = trunc i64 %n.vec to i32
  %i.cg = mul i32 %i.bx, %i.cf                    ; 2 uses
  %i.ch = trunc i32 %i.bx to i8
  %.scalar = shl i8 %i.ch, 4
  %i.ci = insertelement <16 x i8> poison, i8 %.scalar, i64 0
  %i.cj = shufflevector <16 x i8> %i.ci, <16 x i8> poison, <16 x i32> zeroinitializer ; 3 uses
  %i.ck = trunc i32 %i.bx to i8
  %broadcast.splatinsert375 = insertelement <16 x i8> poison, i8 %i.ck, i64 0
  %broadcast.splat376 = shufflevector <16 x i8> %broadcast.splatinsert375, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.cl = mul <16 x i8> %broadcast.splat376, <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15>
  %invariant.op = add <16 x i8> %i.cj, %i.cj
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <16 x i8> [ %i.cl, %vector.ph ], [ %vec.ind.next.reass, %vector.body ] ; 3 uses
  %step.add = add <16 x i8> %vec.ind, %i.cj
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bz, i64 %index ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  store <16 x i8> %vec.ind, ptr %i.cm, align 1, !tbaa !22
  store <16 x i8> %step.add, ptr %i.cn, align 1, !tbaa !22
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %vec.ind.next.reass = add <16 x i8> %vec.ind, %invariant.op
  %i.co = icmp eq i64 %index.next, %n.vec
  br i1 %i.co, label %middle.block, label %vector.body, !llvm.loop !317

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cd, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ce, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !320

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.resume.val = phi i32 [ %i.cg, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec377 = and i64 %i.cd, 8589934588           ; 4 uses
  %i.cp = trunc i64 %n.vec377 to i32
  %i.cq = mul i32 %i.bx, %i.cp
  %i.cr = trunc i32 %i.bx to i8                   ; 2 uses
  %i.cs = trunc i32 %bc.resume.val to i8
  %broadcast.splatinsert378 = insertelement <4 x i8> poison, i8 %i.cs, i64 0
  %broadcast.splat379 = shufflevector <4 x i8> %broadcast.splatinsert378, <4 x i8> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert380 = insertelement <4 x i8> poison, i8 %i.cr, i64 0
  %broadcast.splat381 = shufflevector <4 x i8> %broadcast.splatinsert380, <4 x i8> poison, <4 x i32> zeroinitializer
  %i.ct = mul <4 x i8> %broadcast.splat381, <i8 0, i8 1, i8 2, i8 3>
  %induction = add <4 x i8> %broadcast.splat379, %i.ct
  %i.cu = shl i8 %i.cr, 2
  %broadcast.splatinsert382 = insertelement <4 x i8> poison, i8 %i.cu, i64 0
  %broadcast.splat383 = shufflevector <4 x i8> %broadcast.splatinsert382, <4 x i8> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index384 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next386, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind385 = phi <4 x i8> [ %induction, %vec.epilog.ph ], [ %vec.ind.next387, %vec.epilog.vector.body ] ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bz, i64 %index384
  store <4 x i8> %vec.ind385, ptr %i.cv, align 1, !tbaa !22
  %index.next386 = add nuw i64 %index384, 4       ; 2 uses
  %vec.ind.next387 = add <4 x i8> %vec.ind385, %broadcast.splat383
  %i.cw = icmp eq i64 %index.next386, %n.vec377
  br i1 %i.cw, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !321

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n388 = icmp eq i64 %i.cd, %n.vec377
  br i1 %cmp.n388, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec377, %vec.epilog.middle.block ]
  %.0218297.ph = phi i32 [ 0, %iter.check ], [ %i.cg, %vec.epilog.iter.check ], [ %i.cq, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.i
  %i.cx = add i32 %i.bv, %i.bx
  %i.cy = sdiv i32 %i.cx, %i.bx
  %i.cz = trunc i32 %i.cy to i16
  %i.da = getelementptr inbounds nuw i8, ptr %2, i64 498 ; 3 uses
  store i16 %i.cz, ptr %i.da, align 2, !tbaa !322
  %i.db = sub nsw i32 %i.be, %i.bt
  %spec.select = call i32 @llvm.smax.i32(i32 %i.db, i32 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  %i.dc = call fastcc i32 @cbs_av1_read_increment(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %spec.select, i32 noundef %.0.i254, ptr noundef nonnull @.str.155, ptr noundef %i.c) ; 2 uses
  %i.dd = icmp sgt i32 %i.dc, -1
  br i1 %i.dd, label %bb.k, label %bb.j

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.0218297 = phi i32 [ %i.dg, %vec.epilog.scalar.ph ], [ %.0218297.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.de = trunc i32 %.0218297 to i8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.df = getelementptr inbounds nuw i8, ptr %i.bz, i64 %indvars.iv
  store i8 %i.de, ptr %i.df, align 1, !tbaa !22
  %i.dg = add nsw i32 %.0218297, %i.bx            ; 2 uses
  %i.dh = icmp slt i32 %i.dg, %i.z
  br i1 %i.dh, label %vec.epilog.scalar.ph, label %._crit_edge, !llvm.loop !323

bb.j:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  br label %.thread269

bb.k:                                             ; preds = %._crit_edge
  %i.di = load i32, ptr %i.c, align 4, !tbaa !68  ; 2 uses
  %i.dj = trunc i32 %i.di to i8                   ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %2, i64 236
  store i8 %i.dj, ptr %i.dk, align 4, !tbaa !324
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  %i.dl = and i32 %i.di, 255                      ; 2 uses
  %i.dm = shl nuw i32 1, %i.dl
  %i.dn = add nsw i32 %i.ap, -1                   ; 2 uses
  %i.do = add i32 %i.dn, %i.dm
  %i.dp = ashr i32 %i.do, %i.dl                   ; 12 uses
  %i.dq = icmp sgt i32 %i.ap, 0
  br i1 %i.dq, label %iter.check411, label %._crit_edge303

iter.check411:                                    ; preds = %bb.k
  %i.dr = getelementptr inbounds nuw i8, ptr %2, i64 301 ; 3 uses
  %smax391 = call i32 @llvm.smax.i32(i32 %i.ap, i32 %i.dp)
  %i.ds = add nsw i32 %smax391, -1
  %i.dt = udiv i32 %i.ds, %i.dp                   ; 3 uses
  %i.du = zext i32 %i.dt to i64
  %i.dv = add nuw nsw i64 %i.du, 1                ; 5 uses
  %min.iters.check392 = icmp ult i32 %i.dt, 3
  br i1 %min.iters.check392, label %vec.epilog.scalar.ph412.preheader, label %vector.main.loop.iter.check393

vector.main.loop.iter.check393:                   ; preds = %iter.check411
  %min.iters.check394 = icmp ult i32 %i.dt, 31
  br i1 %min.iters.check394, label %vec.epilog.ph415, label %vector.ph395

vector.ph395:                                     ; preds = %vector.main.loop.iter.check393
  %i.dw = and i64 %i.dv, 28
  %n.vec396 = and i64 %i.dv, 8589934560           ; 5 uses
  %i.dx = trunc i64 %n.vec396 to i32
  %i.dy = mul i32 %i.dp, %i.dx                    ; 2 uses
  %i.dz = trunc i32 %i.dp to i8
  %.scalar433 = shl i8 %i.dz, 4
  %i.ea = insertelement <16 x i8> poison, i8 %.scalar433, i64 0
  %i.eb = shufflevector <16 x i8> %i.ea, <16 x i8> poison, <16 x i32> zeroinitializer ; 3 uses
  %i.ec = trunc i32 %i.dp to i8
  %broadcast.splatinsert399 = insertelement <16 x i8> poison, i8 %i.ec, i64 0
  %broadcast.splat400 = shufflevector <16 x i8> %broadcast.splatinsert399, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.ed = mul <16 x i8> %broadcast.splat400, <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15>
  %invariant.op446 = add <16 x i8> %i.eb, %i.eb
  br label %vector.body401

vector.body401:                                   ; preds = %vector.body401, %vector.ph395
  %index402 = phi i64 [ 0, %vector.ph395 ], [ %index.next405, %vector.body401 ] ; 2 uses
  %vec.ind403 = phi <16 x i8> [ %i.ed, %vector.ph395 ], [ %vec.ind.next406.reass, %vector.body401 ] ; 3 uses
  %step.add404 = add <16 x i8> %vec.ind403, %i.eb
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dr, i64 %index402 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  store <16 x i8> %vec.ind403, ptr %i.ee, align 1, !tbaa !22
  store <16 x i8> %step.add404, ptr %i.ef, align 1, !tbaa !22
  %index.next405 = add nuw i64 %index402, 32      ; 2 uses
  %vec.ind.next406.reass = add <16 x i8> %vec.ind403, %invariant.op446
  %i.eg = icmp eq i64 %index.next405, %n.vec396
  br i1 %i.eg, label %middle.block407, label %vector.body401, !llvm.loop !325

middle.block407:                                  ; preds = %vector.body401
  %cmp.n408 = icmp eq i64 %i.dv, %n.vec396
  br i1 %cmp.n408, label %._crit_edge303, label %vec.epilog.iter.check413

vec.epilog.iter.check413:                         ; preds = %middle.block407
  %min.epilog.iters.check414 = icmp eq i64 %i.dw, 0
  br i1 %min.epilog.iters.check414, label %vec.epilog.scalar.ph412.preheader, label %vec.epilog.ph415, !prof !320

vec.epilog.ph415:                                 ; preds = %vector.main.loop.iter.check393, %vec.epilog.iter.check413
  %vec.epilog.resume.val409 = phi i64 [ %n.vec396, %vec.epilog.iter.check413 ], [ 0, %vector.main.loop.iter.check393 ]
  %bc.resume.val410 = phi i32 [ %i.dy, %vec.epilog.iter.check413 ], [ 0, %vector.main.loop.iter.check393 ]
  %n.vec416 = and i64 %i.dv, 8589934588           ; 4 uses
  %i.eh = trunc i64 %n.vec416 to i32
  %i.ei = mul i32 %i.dp, %i.eh
  %i.ej = trunc i32 %i.dp to i8                   ; 2 uses
  %i.ek = trunc i32 %bc.resume.val410 to i8
  %broadcast.splatinsert417 = insertelement <4 x i8> poison, i8 %i.ek, i64 0
  %broadcast.splat418 = shufflevector <4 x i8> %broadcast.splatinsert417, <4 x i8> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert419 = insertelement <4 x i8> poison, i8 %i.ej, i64 0
  %broadcast.splat420 = shufflevector <4 x i8> %broadcast.splatinsert419, <4 x i8> poison, <4 x i32> zeroinitializer
  %i.el = mul <4 x i8> %broadcast.splat420, <i8 0, i8 1, i8 2, i8 3>
  %induction421 = add <4 x i8> %broadcast.splat418, %i.el
  %i.em = shl i8 %i.ej, 2
  %broadcast.splatinsert422 = insertelement <4 x i8> poison, i8 %i.em, i64 0
  %broadcast.splat423 = shufflevector <4 x i8> %broadcast.splatinsert422, <4 x i8> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body424

vec.epilog.vector.body424:                        ; preds = %vec.epilog.vector.body424, %vec.epilog.ph415
  %index425 = phi i64 [ %vec.epilog.resume.val409, %vec.epilog.ph415 ], [ %index.next427, %vec.epilog.vector.body424 ] ; 2 uses
  %vec.ind426 = phi <4 x i8> [ %induction421, %vec.epilog.ph415 ], [ %vec.ind.next428, %vec.epilog.vector.body424 ] ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.dr, i64 %index425
  store <4 x i8> %vec.ind426, ptr %i.en, align 1, !tbaa !22
  %index.next427 = add nuw i64 %index425, 4       ; 2 uses
  %vec.ind.next428 = add <4 x i8> %vec.ind426, %broadcast.splat423
  %i.eo = icmp eq i64 %index.next427, %n.vec416
  br i1 %i.eo, label %vec.epilog.middle.block429, label %vec.epilog.vector.body424, !llvm.loop !326

vec.epilog.middle.block429:                       ; preds = %vec.epilog.vector.body424
  %cmp.n430 = icmp eq i64 %i.dv, %n.vec416
  br i1 %cmp.n430, label %._crit_edge303, label %vec.epilog.scalar.ph412.preheader

vec.epilog.scalar.ph412.preheader:                ; preds = %iter.check411, %vec.epilog.iter.check413, %vec.epilog.middle.block429
  %indvars.iv336.ph = phi i64 [ 0, %iter.check411 ], [ %n.vec396, %vec.epilog.iter.check413 ], [ %n.vec416, %vec.epilog.middle.block429 ]
  %.0216299.ph = phi i32 [ 0, %iter.check411 ], [ %i.dy, %vec.epilog.iter.check413 ], [ %i.ei, %vec.epilog.middle.block429 ]
  br label %vec.epilog.scalar.ph412

._crit_edge303:                                   ; preds = %vec.epilog.scalar.ph412, %middle.block407, %vec.epilog.middle.block429, %bb.k
  %i.ep = add i32 %i.dn, %i.dp
  %i.eq = sdiv i32 %i.ep, %i.dp
  %i.er = trunc i32 %i.eq to i16
  %i.es = getelementptr inbounds nuw i8, ptr %2, i64 500 ; 3 uses
  store i16 %i.er, ptr %i.es, align 4, !tbaa !327
  %i.et = load i16, ptr %i.da, align 2, !tbaa !322 ; 2 uses
  %i.eu = zext nneg i16 %i.et to i32
  %i.ev = add nsw i32 %i.eu, -1
  %i.ew = icmp ugt i16 %i.et, 1
  br i1 %i.ew, label %.lr.ph306, label %._crit_edge307

.lr.ph306:                                        ; preds = %._crit_edge303
  %i.ex = trunc i32 %i.bx to i8
  %i.ey = add i8 %i.ex, -1
  %i.ez = getelementptr inbounds nuw i8, ptr %2, i64 365
  br label %bb.l

vec.epilog.scalar.ph412:                          ; preds = %vec.epilog.scalar.ph412.preheader, %vec.epilog.scalar.ph412
  %indvars.iv336 = phi i64 [ %indvars.iv.next337, %vec.epilog.scalar.ph412 ], [ %indvars.iv336.ph, %vec.epilog.scalar.ph412.preheader ] ; 2 uses
  %.0216299 = phi i32 [ %i.fc, %vec.epilog.scalar.ph412 ], [ %.0216299.ph, %vec.epilog.scalar.ph412.preheader ] ; 2 uses
  %i.fa = trunc i32 %.0216299 to i8
  %indvars.iv.next337 = add nuw nsw i64 %indvars.iv336, 1
  %i.fb = getelementptr inbounds nuw i8, ptr %i.dr, i64 %indvars.iv336
  store i8 %i.fa, ptr %i.fb, align 1, !tbaa !22
  %i.fc = add nsw i32 %.0216299, %i.dp            ; 2 uses
  %i.fd = icmp slt i32 %i.fc, %i.ap
  br i1 %i.fd, label %vec.epilog.scalar.ph412, label %._crit_edge303, !llvm.loop !328

bb.l:                                             ; preds = %.lr.ph306, %bb.l
  %indvars.iv339 = phi i64 [ 0, %.lr.ph306 ], [ %indvars.iv.next340, %bb.l ] ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ez, i64 %indvars.iv339
  store i8 %i.ey, ptr %i.fe, align 1, !tbaa !22
  %indvars.iv.next340 = add nuw nsw i64 %indvars.iv339, 1 ; 3 uses
  %i.ff = load i16, ptr %i.da, align 2, !tbaa !322
  %i.fg = zext i16 %i.ff to i32
  %i.fh = add nsw i32 %i.fg, -1                   ; 2 uses
  %i.fi = sext i32 %i.fh to i64
  %i.fj = icmp slt i64 %indvars.iv.next340, %i.fi
  br i1 %i.fj, label %bb.l, label %._crit_edge307, !llvm.loop !329

._crit_edge307:                                   ; preds = %bb.l, %._crit_edge303
  %.0213.lcssa = phi i64 [ 0, %._crit_edge303 ], [ %indvars.iv.next340, %bb.l ]
  %.lcssa296 = phi i32 [ %i.ev, %._crit_edge303 ], [ %i.fh, %bb.l ]
  %i.fk = mul nsw i32 %.lcssa296, %i.bx
  %i.fl = xor i32 %i.fk, -1
  %i.fm = add i32 %i.z, %i.fl
  %i.fn = trunc i32 %i.fm to i8
  %i.fo = getelementptr inbounds nuw i8, ptr %2, i64 365
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 %.0213.lcssa
  store i8 %i.fn, ptr %i.fp, align 1, !tbaa !22
  %i.fq = load i16, ptr %i.es, align 4, !tbaa !327 ; 2 uses
  %i.fr = zext nneg i16 %i.fq to i32
  %i.fs = add nsw i32 %i.fr, -1
  %i.ft = icmp ugt i16 %i.fq, 1
  br i1 %i.ft, label %.lr.ph311, label %._crit_edge312

.lr.ph311:                                        ; preds = %._crit_edge307
  %i.fu = trunc i32 %i.dp to i8
  %i.fv = add i8 %i.fu, -1
  %i.fw = getelementptr inbounds nuw i8, ptr %2, i64 429
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph311, %bb.m
  %indvars.iv342 = phi i64 [ 0, %.lr.ph311 ], [ %indvars.iv.next343, %bb.m ] ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 %indvars.iv342
  store i8 %i.fv, ptr %i.fx, align 1, !tbaa !22
  %indvars.iv.next343 = add nuw nsw i64 %indvars.iv342, 1 ; 3 uses
  %i.fy = load i16, ptr %i.es, align 4, !tbaa !327
  %i.fz = zext i16 %i.fy to i32
  %i.ga = add nsw i32 %i.fz, -1                   ; 2 uses
  %i.gb = sext i32 %i.ga to i64
  %i.gc = icmp slt i64 %indvars.iv.next343, %i.gb
  br i1 %i.gc, label %bb.m, label %._crit_edge312, !llvm.loop !330

._crit_edge312:                                   ; preds = %bb.m, %._crit_edge307
  %.1214.lcssa = phi i64 [ 0, %._crit_edge307 ], [ %indvars.iv.next343, %bb.m ]
  %.lcssa295 = phi i32 [ %i.fs, %._crit_edge307 ], [ %i.ga, %bb.m ]
  %i.gd = mul nsw i32 %.lcssa295, %i.dp
  %i.ge = xor i32 %i.gd, -1
  %i.gf = add i32 %i.ap, %i.ge
  %i.gg = trunc i32 %i.gf to i8
  %i.gh = getelementptr inbounds nuw i8, ptr %2, i64 429
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 %.1214.lcssa
  store i8 %i.gg, ptr %i.gi, align 1, !tbaa !22
  br label %bb.w

.preheader288.loopexit:                           ; preds = %bb.p
  %i.gj = trunc nuw nsw i64 %indvars.iv.next346 to i32
  br label %.preheader288

.preheader288:                                    ; preds = %.preheader288.loopexit, %.preheader289
  %.0212.lcssa = phi i32 [ 0, %.preheader289 ], [ %i.gw, %.preheader288.loopexit ]
  %.0.lcssa = phi i32 [ 0, %.preheader289 ], [ %i.gj, %.preheader288.loopexit ] ; 2 uses
  br label %bb.q

bb.n:                                             ; preds = %.lr.ph318, %bb.p
  %indvars.iv345 = phi i64 [ 0, %.lr.ph318 ], [ %indvars.iv.next346, %bb.p ] ; 5 uses
  %.0210316 = phi i32 [ 0, %.lr.ph318 ], [ %i.gx, %bb.p ] ; 3 uses
  %.0212315 = phi i32 [ 0, %.lr.ph318 ], [ %i.gw, %bb.p ]
  %i.gk = trunc i32 %.0210316 to i8
  %i.gl = getelementptr inbounds nuw i8, ptr %i.bl, i64 %indvars.iv345
  store i8 %i.gk, ptr %i.gl, align 1, !tbaa !22
  %i.gm = sub nsw i32 %i.z, %.0210316
  %i.gn = call i32 @llvm.smin.i32(i32 %i.gm, i32 %i.ab)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  store i32 1, ptr %i.e, align 4, !tbaa !68
  %i.go = trunc nuw nsw i64 %indvars.iv345 to i32
  store i32 %i.go, ptr %i.bm, align 4, !tbaa !68
  %i.gp = call fastcc i32 @cbs_av1_read_ns(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %i.gn, ptr noundef nonnull @.str.156, ptr noundef nonnull %i.e, ptr noundef %i.d) ; 2 uses
  %i.gq = icmp sgt i32 %i.gp, -1
  br i1 %i.gq, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
end_hunk_0
begin_hunk_1_@cbs_av1_write_frame_size_with_refs:bb.a

bb.y:                                             ; preds = %bb.x
  %i.co = call fastcc i32 @cbs_av1_write_frame_size(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %2) ; 2 uses
  %i.cp = icmp slt i32 %i.co, 0
  br i1 %i.cp, label %.critedge, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cq = call fastcc i32 @cbs_av1_write_render_size(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %2) ; 2 uses
  %i.cr = icmp slt i32 %i.cq, 0
  br i1 %i.cr, label %.critedge, label %bb.ab

bb.aa:                                            ; preds = %bb.k
  %i.cs = getelementptr inbounds nuw i8, ptr %i.c, i64 84
  store i32 %i.y, ptr %i.cs, align 4, !tbaa !232
  %i.ct = getelementptr inbounds nuw i8, ptr %i.c, i64 76
  store i32 %i.y, ptr %i.ct, align 4, !tbaa !248
  %i.cu = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  store i32 %i.ah, ptr %i.cu, align 8, !tbaa !268
  %i.cv = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  store i32 %i.aq, ptr %i.cv, align 8, !tbaa !269
  %i.cw = getelementptr inbounds nuw i8, ptr %i.c, i64 92
  store i32 %i.az, ptr %i.cw, align 4, !tbaa !270
  %i.cx = call fastcc i32 @cbs_av1_write_superres_params(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %2) ; 2 uses
  %i.cy = icmp slt i32 %i.cx, 0
  br i1 %i.cy, label %.critedge, label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  br label %.critedge

.critedge:                                        ; preds = %bb.a, %bb.m, %bb.o, %bb.q, %bb.s, %bb.u, %bb.w, %bb.f, %bb.h, %bb.j, %bb.l, %bb.d, %bb.aa, %bb.z, %bb.y, %bb.ab
  %.1 = phi i32 [ %i.cx, %bb.aa ], [ -1094995529, %bb.f ], [ %i.co, %bb.y ], [ 0, %bb.ab ], [ %i.cq, %bb.z ], [ -1094995529, %bb.d ], [ -1094995529, %bb.l ], [ -1094995529, %bb.j ], [ -1094995529, %bb.h ], [ %i.h, %bb.a ], [ %i.bh, %bb.m ], [ %i.bn, %bb.o ], [ %i.bt, %bb.q ], [ %i.bz, %bb.s ], [ %i.cf, %bb.u ], [ %i.cl, %bb.w ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -2147483648, 1) i32 @cbs_av1_write_interpolation_filter(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 229 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !313
  %i.c = zext i8 %i.b to i32
  %i.d = tail call i32 @ff_cbs_write_simple_unsigned(ptr noundef %0, ptr noundef %1, i32 noundef 1, ptr noundef nonnull @.str.151, i32 noundef %i.c) #9 ; 2 uses
  %i.e = icmp slt i32 %i.d, 0
  br i1 %i.e, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i8, ptr %i.a, align 1, !tbaa !313
  %.not = icmp eq i8 %i.f, 0
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 230
  %i.h = load i8, ptr %i.g, align 2, !tbaa !314   ; 3 uses
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not16 = icmp eq i8 %i.h, 4
  br i1 %.not16, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = load ptr, ptr %0, align 8, !tbaa !21
  %i.j = zext i8 %i.h to i64
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.i, i32 noundef 16, ptr noundef nonnull @.str.317, ptr noundef nonnull @.str.152, i64 noundef %i.j, i64 noundef 4) #9
  br label %bb.g

bb.e:                                             ; preds = %bb.b
  %i.k = zext i8 %i.h to i32
  %i.l = tail call i32 @ff_cbs_write_simple_unsigned(ptr noundef %0, ptr noundef %1, i32 noundef 2, ptr noundef nonnull @.str.152, i32 noundef %i.k) #9 ; 2 uses
  %i.m = icmp slt i32 %i.l, 0
  br i1 %i.m, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.a, %bb.f, %bb.d
  %.0 = phi i32 [ %i.d, %bb.a ], [ -1094995529, %bb.d ], [ 0, %bb.f ], [ %i.l, %bb.e ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -2147483648, 1) i32 @cbs_av1_write_tile_info(ptr noundef %0, ptr noundef %1, ptr nofree noundef captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [2 x i32], align 4                ; 3 uses
  %i.b = alloca [2 x i32], align 4                ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !34   ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !61
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 76
  %i.h = load i32, ptr %i.g, align 4, !tbaa !248
  %i.i = add nsw i32 %i.h, 7
  %i.j = ashr i32 %i.i, 2                         ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %i.l = load i32, ptr %i.k, align 8, !tbaa !268
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 557
  %i.n = load i8, ptr %i.m, align 1, !tbaa !110
  %.not = icmp eq i8 %i.n, 0                      ; 3 uses
  %i.o = add nsw i32 %i.j, 30
  %i.p = ashr i32 %i.o, 5
  %i.q = add nsw i32 %i.j, 14
  %i.r = ashr i32 %i.q, 4
  %i.s = select i1 %.not, i32 %i.r, i32 %i.p      ; 11 uses
  %i.t = select i1 %.not, i32 6, i32 7            ; 2 uses
  %i.u = lshr exact i32 4096, %i.t                ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.0.i = phi i32 [ 0, %bb.a ], [ %i.x, %bb.b ]   ; 5 uses
  %i.v = shl i32 %i.u, %.0.i
  %i.w = icmp slt i32 %i.v, %i.s
  %i.x = add nuw nsw i32 %.0.i, 1
  br i1 %i.w, label %bb.b, label %cbs_av1_tile_log2.exit, !llvm.loop !137

cbs_av1_tile_log2.exit:                           ; preds = %bb.b
  %i.y = tail call i32 @llvm.smin.i32(i32 %i.s, i32 64)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %cbs_av1_tile_log2.exit
  %.0.i264 = phi i32 [ 0, %cbs_av1_tile_log2.exit ], [ %i.ab, %bb.c ] ; 3 uses
  %i.z = shl nuw i32 1, %.0.i264
  %i.aa = icmp slt i32 %i.z, %i.y
  %i.ab = add nuw nsw i32 %.0.i264, 1
  br i1 %i.aa, label %bb.c, label %cbs_av1_tile_log2.exit265, !llvm.loop !137

cbs_av1_tile_log2.exit265:                        ; preds = %bb.c
  %i.ac = add nsw i32 %i.l, 7
  %i.ad = ashr i32 %i.ac, 2                       ; 2 uses
  %i.ae = add nsw i32 %i.ad, 30
  %i.af = ashr i32 %i.ae, 5
  %i.ag = add nsw i32 %i.ad, 14
  %i.ah = ashr i32 %i.ag, 4
  %i.ai = select i1 %.not, i32 %i.ah, i32 %i.af   ; 10 uses
  %i.aj = tail call i32 @llvm.smin.i32(i32 %i.ai, i32 64)
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %cbs_av1_tile_log2.exit265
  %.0.i266 = phi i32 [ 0, %cbs_av1_tile_log2.exit265 ], [ %i.am, %bb.d ] ; 3 uses
  %i.ak = shl nuw i32 1, %.0.i266
  %i.al = icmp slt i32 %i.ak, %i.aj
  %i.am = add nuw nsw i32 %.0.i266, 1
  br i1 %i.al, label %bb.d, label %cbs_av1_tile_log2.exit267, !llvm.loop !137

cbs_av1_tile_log2.exit267:                        ; preds = %bb.d
  %i.an = shl nuw nsw i32 %i.t, 1
  %i.ao = lshr exact i32 9437184, %i.an           ; 2 uses
  %i.ap = mul nsw i32 %i.ai, %i.s                 ; 3 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %cbs_av1_tile_log2.exit267
  %.0.i268 = phi i32 [ 0, %cbs_av1_tile_log2.exit267 ], [ %i.as, %bb.e ] ; 3 uses
  %i.aq = shl i32 %i.ao, %.0.i268
  %i.ar = icmp slt i32 %i.aq, %i.ap
  %i.as = add nuw nsw i32 %.0.i268, 1
  br i1 %i.ar, label %bb.e, label %cbs_av1_tile_log2.exit269, !llvm.loop !137

cbs_av1_tile_log2.exit269:                        ; preds = %bb.e
  %i.at = icmp samesign ugt i32 %.0.i, %.0.i268
  br i1 %i.at, label %cbs_av1_tile_log2.exit271, label %.preheader287

.preheader287:                                    ; preds = %cbs_av1_tile_log2.exit269, %.preheader287
  %.0.i270 = phi i32 [ %i.aw, %.preheader287 ], [ 0, %cbs_av1_tile_log2.exit269 ] ; 3 uses
  %i.au = shl i32 %i.ao, %.0.i270
  %i.av = icmp slt i32 %i.au, %i.ap
  %i.aw = add nuw nsw i32 %.0.i270, 1
  br i1 %i.av, label %.preheader287, label %cbs_av1_tile_log2.exit271, !llvm.loop !137

cbs_av1_tile_log2.exit271:                        ; preds = %.preheader287, %cbs_av1_tile_log2.exit269
  %i.ax = phi i32 [ %.0.i, %cbs_av1_tile_log2.exit269 ], [ %.0.i270, %.preheader287 ] ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 234 ; 2 uses
  %i.az = load i8, ptr %i.ay, align 2, !tbaa !315
  %i.ba = zext i8 %i.az to i32
  %i.bb = tail call i32 @ff_cbs_write_simple_unsigned(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 1, ptr noundef nonnull @.str.153, i32 noundef %i.ba) #9 ; 2 uses
  %i.bc = icmp slt i32 %i.bb, 0
  br i1 %i.bc, label %.thread, label %bb.f

bb.f:                                             ; preds = %cbs_av1_tile_log2.exit271
  %i.bd = load i8, ptr %i.ay, align 2, !tbaa !315
  %.not256 = icmp eq i8 %i.bd, 0
  br i1 %.not256, label %.preheader284, label %bb.g

.preheader284:                                    ; preds = %bb.f
  %i.be = icmp sgt i32 %i.s, 0
  br i1 %i.be, label %.lr.ph322, label %.preheader283

.lr.ph322:                                        ; preds = %.preheader284
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 237
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 365
  br label %bb.r

bb.g:                                             ; preds = %bb.f
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 235 ; 2 uses
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !316
  %i.bk = zext i8 %i.bj to i32
  %i.bl = tail call fastcc i32 @cbs_av1_write_increment(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %.0.i, i32 noundef %.0.i264, ptr noundef nonnull @.str.154, i32 noundef %i.bk) ; 2 uses
  %i.bm = icmp slt i32 %i.bl, 0
  br i1 %i.bm, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bn = load i8, ptr %i.bi, align 1, !tbaa !316
  %i.bo = zext i8 %i.bn to i32                    ; 3 uses
  %i.bp = shl nuw i32 1, %i.bo
  %i.bq = add nsw i32 %i.s, -1                    ; 2 uses
  %i.br = add i32 %i.bq, %i.bp
  %i.bs = ashr i32 %i.br, %i.bo                   ; 12 uses
  %i.bt = icmp sgt i32 %i.s, 0
  br i1 %i.bt, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %bb.h
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 237 ; 3 uses
  %smax = tail call i32 @llvm.smax.i32(i32 %i.s, i32 %i.bs)
  %i.bv = add nsw i32 %smax, -1
  %i.bw = udiv i32 %i.bv, %i.bs                   ; 3 uses
  %i.bx = zext i32 %i.bw to i64
  %i.by = add nuw nsw i64 %i.bx, 1                ; 5 uses
  %min.iters.check = icmp ult i32 %i.bw, 3
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check396 = icmp ult i32 %i.bw, 31
  br i1 %min.iters.check396, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bz = and i64 %i.by, 28
  %n.vec = and i64 %i.by, 8589934560              ; 5 uses
  %i.ca = trunc i64 %n.vec to i32
  %i.cb = mul i32 %i.bs, %i.ca                    ; 2 uses
  %i.cc = trunc i32 %i.bs to i8
  %.scalar = shl i8 %i.cc, 4
  %i.cd = insertelement <16 x i8> poison, i8 %.scalar, i64 0
  %i.ce = shufflevector <16 x i8> %i.cd, <16 x i8> poison, <16 x i32> zeroinitializer ; 3 uses
  %i.cf = trunc i32 %i.bs to i8
  %broadcast.splatinsert397 = insertelement <16 x i8> poison, i8 %i.cf, i64 0
  %broadcast.splat398 = shufflevector <16 x i8> %broadcast.splatinsert397, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.cg = mul <16 x i8> %broadcast.splat398, <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15>
  %invariant.op = add <16 x i8> %i.ce, %i.ce
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <16 x i8> [ %i.cg, %vector.ph ], [ %vec.ind.next.reass, %vector.body ] ; 3 uses
  %step.add = add <16 x i8> %vec.ind, %i.ce
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bu, i64 %index ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  store <16 x i8> %vec.ind, ptr %i.ch, align 1, !tbaa !22
  store <16 x i8> %step.add, ptr %i.ci, align 1, !tbaa !22
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %vec.ind.next.reass = add <16 x i8> %vec.ind, %invariant.op
  %i.cj = icmp eq i64 %index.next, %n.vec
  br i1 %i.cj, label %middle.block, label %vector.body, !llvm.loop !402

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.by, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bz, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !320

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.resume.val = phi i32 [ %i.cb, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec399 = and i64 %i.by, 8589934588           ; 4 uses
  %i.ck = trunc i64 %n.vec399 to i32
  %i.cl = mul i32 %i.bs, %i.ck
  %i.cm = trunc i32 %i.bs to i8                   ; 2 uses
  %i.cn = trunc i32 %bc.resume.val to i8
  %broadcast.splatinsert400 = insertelement <4 x i8> poison, i8 %i.cn, i64 0
  %broadcast.splat401 = shufflevector <4 x i8> %broadcast.splatinsert400, <4 x i8> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert402 = insertelement <4 x i8> poison, i8 %i.cm, i64 0
  %broadcast.splat403 = shufflevector <4 x i8> %broadcast.splatinsert402, <4 x i8> poison, <4 x i32> zeroinitializer
  %i.co = mul <4 x i8> %broadcast.splat403, <i8 0, i8 1, i8 2, i8 3>
  %induction = add <4 x i8> %broadcast.splat401, %i.co
  %i.cp = shl i8 %i.cm, 2
  %broadcast.splatinsert404 = insertelement <4 x i8> poison, i8 %i.cp, i64 0
  %broadcast.splat405 = shufflevector <4 x i8> %broadcast.splatinsert404, <4 x i8> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index406 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next408, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind407 = phi <4 x i8> [ %induction, %vec.epilog.ph ], [ %vec.ind.next409, %vec.epilog.vector.body ] ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bu, i64 %index406
  store <4 x i8> %vec.ind407, ptr %i.cq, align 1, !tbaa !22
  %index.next408 = add nuw i64 %index406, 4       ; 2 uses
  %vec.ind.next409 = add <4 x i8> %vec.ind407, %broadcast.splat405
  %i.cr = icmp eq i64 %index.next408, %n.vec399
  br i1 %i.cr, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !403

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n410 = icmp eq i64 %i.by, %n.vec399
  br i1 %cmp.n410, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec399, %vec.epilog.middle.block ]
  %.0226302.ph = phi i32 [ 0, %iter.check ], [ %i.cb, %vec.epilog.iter.check ], [ %i.cl, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.h
  %i.cs = add i32 %i.bq, %i.bs
  %i.ct = sdiv i32 %i.cs, %i.bs
  %i.cu = trunc i32 %i.ct to i16
  %i.cv = getelementptr inbounds nuw i8, ptr %2, i64 498 ; 2 uses
  store i16 %i.cu, ptr %i.cv, align 2, !tbaa !322
  %i.cw = sub nsw i32 %i.ax, %i.bo
  %spec.select = tail call i32 @llvm.smax.i32(i32 %i.cw, i32 0)
  %i.cx = getelementptr inbounds nuw i8, ptr %2, i64 236 ; 2 uses
  %i.cy = load i8, ptr %i.cx, align 4, !tbaa !324
  %i.cz = zext i8 %i.cy to i32
  %i.da = tail call fastcc i32 @cbs_av1_write_increment(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %spec.select, i32 noundef %.0.i266, ptr noundef nonnull @.str.155, i32 noundef %i.cz) ; 2 uses
  %i.db = icmp slt i32 %i.da, 0
  br i1 %i.db, label %.thread, label %bb.i

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.0226302 = phi i32 [ %i.de, %vec.epilog.scalar.ph ], [ %.0226302.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.dc = trunc i32 %.0226302 to i8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.dd = getelementptr inbounds nuw i8, ptr %i.bu, i64 %indvars.iv
  store i8 %i.dc, ptr %i.dd, align 1, !tbaa !22
  %i.de = add nsw i32 %.0226302, %i.bs            ; 2 uses
  %i.df = icmp slt i32 %i.de, %i.s
  br i1 %i.df, label %vec.epilog.scalar.ph, label %._crit_edge, !llvm.loop !404

bb.i:                                             ; preds = %._crit_edge
  %i.dg = load i8, ptr %i.cx, align 4, !tbaa !324 ; 2 uses
  %i.dh = zext i8 %i.dg to i32                    ; 2 uses
  %i.di = shl nuw i32 1, %i.dh
  %i.dj = add nsw i32 %i.ai, -1                   ; 2 uses
  %i.dk = add i32 %i.dj, %i.di
  %i.dl = ashr i32 %i.dk, %i.dh                   ; 12 uses
  %i.dm = icmp sgt i32 %i.ai, 0
  br i1 %i.dm, label %iter.check433, label %._crit_edge308

iter.check433:                                    ; preds = %bb.i
  %i.dn = getelementptr inbounds nuw i8, ptr %2, i64 301 ; 3 uses
  %smax413 = tail call i32 @llvm.smax.i32(i32 %i.ai, i32 %i.dl)
  %i.do = add nsw i32 %smax413, -1
  %i.dp = udiv i32 %i.do, %i.dl                   ; 3 uses
  %i.dq = zext i32 %i.dp to i64
  %i.dr = add nuw nsw i64 %i.dq, 1                ; 5 uses
  %min.iters.check414 = icmp ult i32 %i.dp, 3
  br i1 %min.iters.check414, label %vec.epilog.scalar.ph434.preheader, label %vector.main.loop.iter.check415

vector.main.loop.iter.check415:                   ; preds = %iter.check433
  %min.iters.check416 = icmp ult i32 %i.dp, 31
  br i1 %min.iters.check416, label %vec.epilog.ph437, label %vector.ph417

vector.ph417:                                     ; preds = %vector.main.loop.iter.check415
  %i.ds = and i64 %i.dr, 28
  %n.vec418 = and i64 %i.dr, 8589934560           ; 5 uses
  %i.dt = trunc i64 %n.vec418 to i32
  %i.du = mul i32 %i.dl, %i.dt                    ; 2 uses
  %i.dv = trunc i32 %i.dl to i8
  %.scalar455 = shl i8 %i.dv, 4
  %i.dw = insertelement <16 x i8> poison, i8 %.scalar455, i64 0
  %i.dx = shufflevector <16 x i8> %i.dw, <16 x i8> poison, <16 x i32> zeroinitializer ; 3 uses
  %i.dy = trunc i32 %i.dl to i8
  %broadcast.splatinsert421 = insertelement <16 x i8> poison, i8 %i.dy, i64 0
  %broadcast.splat422 = shufflevector <16 x i8> %broadcast.splatinsert421, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.dz = mul <16 x i8> %broadcast.splat422, <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15>
  %invariant.op473 = add <16 x i8> %i.dx, %i.dx
  br label %vector.body423

vector.body423:                                   ; preds = %vector.body423, %vector.ph417
  %index424 = phi i64 [ 0, %vector.ph417 ], [ %index.next427, %vector.body423 ] ; 2 uses
  %vec.ind425 = phi <16 x i8> [ %i.dz, %vector.ph417 ], [ %vec.ind.next428.reass, %vector.body423 ] ; 3 uses
  %step.add426 = add <16 x i8> %vec.ind425, %i.dx
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dn, i64 %index424 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  store <16 x i8> %vec.ind425, ptr %i.ea, align 1, !tbaa !22
  store <16 x i8> %step.add426, ptr %i.eb, align 1, !tbaa !22
  %index.next427 = add nuw i64 %index424, 32      ; 2 uses
  %vec.ind.next428.reass = add <16 x i8> %vec.ind425, %invariant.op473
  %i.ec = icmp eq i64 %index.next427, %n.vec418
  br i1 %i.ec, label %middle.block429, label %vector.body423, !llvm.loop !405

middle.block429:                                  ; preds = %vector.body423
  %cmp.n430 = icmp eq i64 %i.dr, %n.vec418
  br i1 %cmp.n430, label %._crit_edge308, label %vec.epilog.iter.check435

vec.epilog.iter.check435:                         ; preds = %middle.block429
  %min.epilog.iters.check436 = icmp eq i64 %i.ds, 0
  br i1 %min.epilog.iters.check436, label %vec.epilog.scalar.ph434.preheader, label %vec.epilog.ph437, !prof !320

vec.epilog.ph437:                                 ; preds = %vector.main.loop.iter.check415, %vec.epilog.iter.check435
  %vec.epilog.resume.val431 = phi i64 [ %n.vec418, %vec.epilog.iter.check435 ], [ 0, %vector.main.loop.iter.check415 ]
  %bc.resume.val432 = phi i32 [ %i.du, %vec.epilog.iter.check435 ], [ 0, %vector.main.loop.iter.check415 ]
  %n.vec438 = and i64 %i.dr, 8589934588           ; 4 uses
  %i.ed = trunc i64 %n.vec438 to i32
  %i.ee = mul i32 %i.dl, %i.ed
  %i.ef = trunc i32 %i.dl to i8                   ; 2 uses
  %i.eg = trunc i32 %bc.resume.val432 to i8
  %broadcast.splatinsert439 = insertelement <4 x i8> poison, i8 %i.eg, i64 0
  %broadcast.splat440 = shufflevector <4 x i8> %broadcast.splatinsert439, <4 x i8> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert441 = insertelement <4 x i8> poison, i8 %i.ef, i64 0
  %broadcast.splat442 = shufflevector <4 x i8> %broadcast.splatinsert441, <4 x i8> poison, <4 x i32> zeroinitializer
  %i.eh = mul <4 x i8> %broadcast.splat442, <i8 0, i8 1, i8 2, i8 3>
  %induction443 = add <4 x i8> %broadcast.splat440, %i.eh
  %i.ei = shl i8 %i.ef, 2
  %broadcast.splatinsert444 = insertelement <4 x i8> poison, i8 %i.ei, i64 0
  %broadcast.splat445 = shufflevector <4 x i8> %broadcast.splatinsert444, <4 x i8> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body446

vec.epilog.vector.body446:                        ; preds = %vec.epilog.vector.body446, %vec.epilog.ph437
  %index447 = phi i64 [ %vec.epilog.resume.val431, %vec.epilog.ph437 ], [ %index.next449, %vec.epilog.vector.body446 ] ; 2 uses
  %vec.ind448 = phi <4 x i8> [ %induction443, %vec.epilog.ph437 ], [ %vec.ind.next450, %vec.epilog.vector.body446 ] ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dn, i64 %index447
  store <4 x i8> %vec.ind448, ptr %i.ej, align 1, !tbaa !22
  %index.next449 = add nuw i64 %index447, 4       ; 2 uses
  %vec.ind.next450 = add <4 x i8> %vec.ind448, %broadcast.splat445
  %i.ek = icmp eq i64 %index.next449, %n.vec438
  br i1 %i.ek, label %vec.epilog.middle.block451, label %vec.epilog.vector.body446, !llvm.loop !406

vec.epilog.middle.block451:                       ; preds = %vec.epilog.vector.body446
  %cmp.n452 = icmp eq i64 %i.dr, %n.vec438
  br i1 %cmp.n452, label %._crit_edge308, label %vec.epilog.scalar.ph434.preheader

vec.epilog.scalar.ph434.preheader:                ; preds = %iter.check433, %vec.epilog.iter.check435, %vec.epilog.middle.block451
  %indvars.iv343.ph = phi i64 [ 0, %iter.check433 ], [ %n.vec418, %vec.epilog.iter.check435 ], [ %n.vec438, %vec.epilog.middle.block451 ]
  %.0224304.ph = phi i32 [ 0, %iter.check433 ], [ %i.du, %vec.epilog.iter.check435 ], [ %i.ee, %vec.epilog.middle.block451 ]
  br label %vec.epilog.scalar.ph434

._crit_edge308:                                   ; preds = %vec.epilog.scalar.ph434, %middle.block429, %vec.epilog.middle.block451, %bb.i
  %i.el = add i32 %i.dj, %i.dl
  %i.em = sdiv i32 %i.el, %i.dl                   ; 2 uses
  %i.en = trunc i32 %i.em to i16                  ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %2, i64 500
  store i16 %i.en, ptr %i.eo, align 4, !tbaa !327
  %i.ep = load i16, ptr %i.cv, align 2, !tbaa !322 ; 2 uses
  %i.eq = zext i16 %i.ep to i32                   ; 2 uses
  %i.er = add nsw i32 %i.eq, -1                   ; 2 uses
  %i.es = icmp ugt i16 %i.ep, 1
  br i1 %i.es, label %.lr.ph311, label %._crit_edge312

.lr.ph311:                                        ; preds = %._crit_edge308
  %i.et = getelementptr inbounds nuw i8, ptr %2, i64 365
  %i.eu = add nsw i32 %i.bs, -1                   ; 2 uses
  %i.ev = add nsw i32 %i.eq, -1
  %wide.trip.count = zext i32 %i.er to i64
  br label %bb.j

vec.epilog.scalar.ph434:                          ; preds = %vec.epilog.scalar.ph434.preheader, %vec.epilog.scalar.ph434
  %indvars.iv343 = phi i64 [ %indvars.iv.next344, %vec.epilog.scalar.ph434 ], [ %indvars.iv343.ph, %vec.epilog.scalar.ph434.preheader ] ; 2 uses
  %.0224304 = phi i32 [ %i.ey, %vec.epilog.scalar.ph434 ], [ %.0224304.ph, %vec.epilog.scalar.ph434.preheader ] ; 2 uses
  %i.ew = trunc i32 %.0224304 to i8
  %indvars.iv.next344 = add nuw nsw i64 %indvars.iv343, 1
  %i.ex = getelementptr inbounds nuw i8, ptr %i.dn, i64 %indvars.iv343
  store i8 %i.ew, ptr %i.ex, align 1, !tbaa !22
  %i.ey = add nsw i32 %.0224304, %i.dl            ; 2 uses
  %i.ez = icmp slt i32 %i.ey, %i.ai
  br i1 %i.ez, label %vec.epilog.scalar.ph434, label %._crit_edge308, !llvm.loop !407

bb.j:                                             ; preds = %.lr.ph311, %bb.l
  %indvars.iv346 = phi i64 [ 0, %.lr.ph311 ], [ %indvars.iv.next347, %bb.l ] ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.et, i64 %indvars.iv346
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !22  ; 2 uses
  %i.fc = zext i8 %i.fb to i32
  %.not260 = icmp eq i32 %i.eu, %i.fc
  br i1 %.not260, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.fd = load ptr, ptr %0, align 8, !tbaa !21
  %i.fe = zext i8 %i.fb to i64
  %i.ff = sext i32 %i.eu to i64
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.fd, i32 noundef 16, ptr noundef nonnull @.str.317, ptr noundef nonnull @.str.156, i64 noundef %i.fe, i64 noundef %i.ff) #9
  br label %.thread

bb.l:                                             ; preds = %bb.j
  %indvars.iv.next347 = add nuw nsw i64 %indvars.iv346, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next347, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge312.loopexit, label %bb.j, !llvm.loop !408

._crit_edge312.loopexit:                          ; preds = %bb.l
  %i.fg = zext nneg i32 %i.ev to i64
  br label %._crit_edge312

._crit_edge312:                                   ; preds = %._crit_edge312.loopexit, %._crit_edge308
  %.0221.lcssa = phi i64 [ 0, %._crit_edge308 ], [ %i.fg, %._crit_edge312.loopexit ]
  %i.fh = getelementptr inbounds nuw i8, ptr %2, i64 365
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 %.0221.lcssa
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !22  ; 2 uses
  %i.fk = zext i8 %i.fj to i32
  %i.fl = mul nsw i32 %i.er, %i.bs
  %i.fm = xor i32 %i.fl, -1
  %i.fn = add i32 %i.s, %i.fm                     ; 2 uses
  %.not257 = icmp eq i32 %i.fn, %i.fk
  br i1 %.not257, label %.preheader286, label %bb.m

.preheader286:                                    ; preds = %._crit_edge312
  %i.fo = and i32 %i.em, 65535                    ; 3 uses
  %i.fp = add nsw i32 %i.fo, -1                   ; 2 uses
  %i.fq = icmp samesign ugt i32 %i.fo, 1
  br i1 %i.fq, label %.lr.ph315, label %._crit_edge316

.lr.ph315:                                        ; preds = %.preheader286
  %i.fr = getelementptr inbounds nuw i8, ptr %2, i64 429
  %i.fs = add nsw i32 %i.dl, -1                   ; 2 uses
  %i.ft = add nsw i32 %i.fo, -1
  %wide.trip.count352 = zext nneg i32 %i.fp to i64
  br label %bb.n

bb.m:                                             ; preds = %._crit_edge312
  %i.fu = load ptr, ptr %0, align 8, !tbaa !21
  %i.fv = zext i8 %i.fj to i64
  %i.fw = sext i32 %i.fn to i64
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.fu, i32 noundef 16, ptr noundef nonnull @.str.317, ptr noundef nonnull @.str.156, i64 noundef %i.fv, i64 noundef %i.fw) #9
  br label %.thread

bb.n:                                             ; preds = %.lr.ph315, %bb.p
  %indvars.iv349 = phi i64 [ 0, %.lr.ph315 ], [ %indvars.iv.next350, %bb.p ] ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fr, i64 %indvars.iv349
  %i.fy = load i8, ptr %i.fx, align 1, !tbaa !22  ; 2 uses
  %i.fz = zext i8 %i.fy to i32
  %.not259 = icmp eq i32 %i.fs, %i.fz
  br i1 %.not259, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ga = load ptr, ptr %0, align 8, !tbaa !21
  %i.gb = zext i8 %i.fy to i64
  %i.gc = sext i32 %i.fs to i64
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.ga, i32 noundef 16, ptr noundef nonnull @.str.317, ptr noundef nonnull @.str.157, i64 noundef %i.gb, i64 noundef %i.gc) #9
  br label %.thread

bb.p:                                             ; preds = %bb.n
  %indvars.iv.next350 = add nuw nsw i64 %indvars.iv349, 1 ; 2 uses
  %exitcond353.not = icmp eq i64 %indvars.iv.next350, %wide.trip.count352
  br i1 %exitcond353.not, label %._crit_edge316.loopexit, label %bb.n, !llvm.loop !409

._crit_edge316.loopexit:                          ; preds = %bb.p
  %i.gd = zext nneg i32 %i.ft to i64
  br label %._crit_edge316

._crit_edge316:                                   ; preds = %._crit_edge316.loopexit, %.preheader286
  %.1222.lcssa = phi i64 [ 0, %.preheader286 ], [ %i.gd, %._crit_edge316.loopexit ]
  %i.ge = getelementptr inbounds nuw i8, ptr %2, i64 429
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 %.1222.lcssa
  %i.gg = load i8, ptr %i.gf, align 1, !tbaa !22  ; 2 uses
end_hunk_1
