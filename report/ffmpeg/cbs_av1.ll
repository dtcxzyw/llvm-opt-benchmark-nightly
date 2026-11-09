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
  %i.e = load i32, ptr %i.a, align 4, !tbaa !65
  %i.f = trunc i32 %i.e to i8                     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 229
  store i8 %i.f, ptr %i.g, align 1, !tbaa !264
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  %.not = icmp eq i8 %i.f, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 230
  store i8 4, ptr %i.h, align 2, !tbaa !265
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  %i.i = call i32 @ff_cbs_read_simple_unsigned(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 2, ptr noundef nonnull @.str.152, ptr noundef nonnull %i.b) #9 ; 2 uses
  %i.j = icmp sgt i32 %i.i, -1
  br i1 %i.j, label %.thread, label %bb.e

.thread:                                          ; preds = %bb.d
  %i.k = load i32, ptr %i.b, align 4, !tbaa !65
  %i.l = trunc i32 %i.k to i8
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 230
  store i8 %i.l, ptr %i.m, align 2, !tbaa !265
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
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !38   ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !62
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 76
  %i.o = load i32, ptr %i.n, align 4, !tbaa !215
  %i.p = add nsw i32 %i.o, 7
  %i.q = ashr i32 %i.p, 2                         ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 80
  %i.s = load i32, ptr %i.r, align 8, !tbaa !234
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 557
  %i.u = load i8, ptr %i.t, align 1, !tbaa !101
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
  br i1 %i.ad, label %bb.b, label %cbs_av1_tile_log2.exit, !llvm.loop !0

cbs_av1_tile_log2.exit:                           ; preds = %bb.b
  %i.af = tail call i32 @llvm.smin.i32(i32 %i.z, i32 64)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %cbs_av1_tile_log2.exit
  %.0.i252 = phi i32 [ 0, %cbs_av1_tile_log2.exit ], [ %i.ai, %bb.c ] ; 3 uses
  %i.ag = shl nuw i32 1, %.0.i252
  %i.ah = icmp slt i32 %i.ag, %i.af
  %i.ai = add nuw nsw i32 %.0.i252, 1
  br i1 %i.ah, label %bb.c, label %cbs_av1_tile_log2.exit253, !llvm.loop !0

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
  br i1 %i.as, label %bb.d, label %cbs_av1_tile_log2.exit255, !llvm.loop !0

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
  br i1 %i.ay, label %bb.e, label %cbs_av1_tile_log2.exit257, !llvm.loop !0

cbs_av1_tile_log2.exit257:                        ; preds = %bb.e
  %i.ba = icmp samesign ugt i32 %.0.i, %.0.i256
  br i1 %i.ba, label %cbs_av1_tile_log2.exit259, label %.preheader290

.preheader290:                                    ; preds = %cbs_av1_tile_log2.exit257, %.preheader290
  %.0.i258 = phi i32 [ %i.bd, %.preheader290 ], [ 0, %cbs_av1_tile_log2.exit257 ] ; 3 uses
  %i.bb = shl i32 %i.av, %.0.i258
  %i.bc = icmp slt i32 %i.bb, %i.aw
  %i.bd = add nuw nsw i32 %.0.i258, 1
  br i1 %i.bc, label %.preheader290, label %cbs_av1_tile_log2.exit259, !llvm.loop !0

cbs_av1_tile_log2.exit259:                        ; preds = %.preheader290, %cbs_av1_tile_log2.exit257
  %i.be = phi i32 [ %.0.i, %cbs_av1_tile_log2.exit257 ], [ %.0.i258, %.preheader290 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.bf = call i32 @ff_cbs_read_simple_unsigned(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef 1, ptr noundef nonnull @.str.153, ptr noundef nonnull %i.a) #9 ; 2 uses
  %i.bg = icmp sgt i32 %i.bf, -1
  br i1 %i.bg, label %bb.f, label %.critedge

bb.f:                                             ; preds = %cbs_av1_tile_log2.exit259
  %i.bh = load i32, ptr %i.a, align 4, !tbaa !65
  %i.bi = trunc i32 %i.bh to i8                   ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 234
  store i8 %i.bi, ptr %i.bj, align 2, !tbaa !266
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
  %i.bq = load i32, ptr %i.b, align 4, !tbaa !65  ; 2 uses
  %i.br = trunc i32 %i.bq to i8
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 235
  store i8 %i.br, ptr %i.bs, align 1, !tbaa !267
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  %i.bt = and i32 %i.bq, 255                      ; 3 uses
  %i.bu = shl nuw i32 1, %i.bt
  %i.bv = add nsw i32 %i.z, -1                    ; 2 uses
  %i.bw = add i32 %i.bv, %i.bu
  %i.bx = ashr i32 %i.bw, %i.bt                   ; 11 uses
  %i.by = icmp sgt i32 %i.z, 0
  br i1 %i.by, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %bb.i
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 237 ; 3 uses
  %i.ca = add nsw i32 %i.z, -1
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

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <16 x i8> [ %i.cl, %vector.ph ], [ %vec.ind.next.reass, %vector.body ] ; 3 uses
  %step.add = add <16 x i8> %vec.ind, %i.cj
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bz, i64 %index ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  store <16 x i8> %vec.ind, ptr %i.cm, align 1, !tbaa !26
  store <16 x i8> %step.add, ptr %i.cn, align 1, !tbaa !26
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %vec.ind.next.reass = add <16 x i8> %vec.ind, %invariant.op
  %i.co = icmp eq i64 %index.next, %n.vec
  br i1 %i.co, label %middle.block, label %vector.body, !llvm.loop !373

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cd, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ce, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !270

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
  store <4 x i8> %vec.ind385, ptr %i.cv, align 1, !tbaa !26
  %index.next386 = add nuw i64 %index384, 4       ; 2 uses
  %vec.ind.next387 = add <4 x i8> %vec.ind385, %broadcast.splat383
  %i.cw = icmp eq i64 %index.next386, %n.vec377
  br i1 %i.cw, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !374

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
  store i16 %i.cz, ptr %i.da, align 2, !tbaa !271
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
  store i8 %i.de, ptr %i.df, align 1, !tbaa !26
  %i.dg = add nsw i32 %.0218297, %i.bx            ; 2 uses
  %i.dh = icmp slt i32 %i.dg, %i.z
  br i1 %i.dh, label %vec.epilog.scalar.ph, label %._crit_edge, !llvm.loop !375

bb.j:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  br label %.thread269

bb.k:                                             ; preds = %._crit_edge
  %i.di = load i32, ptr %i.c, align 4, !tbaa !65  ; 2 uses
  %i.dj = trunc i32 %i.di to i8                   ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %2, i64 236
  store i8 %i.dj, ptr %i.dk, align 4, !tbaa !272
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  %i.dl = and i32 %i.di, 255                      ; 2 uses
  %i.dm = shl nuw i32 1, %i.dl
  %i.dn = add nsw i32 %i.ap, -1                   ; 2 uses
  %i.do = add i32 %i.dn, %i.dm
  %i.dp = ashr i32 %i.do, %i.dl                   ; 11 uses
  %i.dq = icmp sgt i32 %i.ap, 0
  br i1 %i.dq, label %iter.check408, label %._crit_edge303

iter.check408:                                    ; preds = %bb.k
  %i.dr = getelementptr inbounds nuw i8, ptr %2, i64 301 ; 3 uses
  %i.ds = add nsw i32 %i.ap, -1
  %i.dt = udiv i32 %i.ds, %i.dp                   ; 3 uses
  %i.du = zext i32 %i.dt to i64
  %i.dv = add nuw nsw i64 %i.du, 1                ; 5 uses
  %min.iters.check391 = icmp ult i32 %i.dt, 3
  br i1 %min.iters.check391, label %vec.epilog.scalar.ph410.preheader, label %vector.main.loop.iter.check392

vector.main.loop.iter.check392:                   ; preds = %iter.check408
  %min.iters.check393 = icmp ult i32 %i.dt, 31
  br i1 %min.iters.check393, label %vec.epilog.ph412, label %vector.ph394

vector.ph394:                                     ; preds = %vector.main.loop.iter.check392
  %i.dw = and i64 %i.dv, 28
  %n.vec395 = and i64 %i.dv, 8589934560           ; 5 uses
  %i.dx = trunc i64 %n.vec395 to i32
  %i.dy = mul i32 %i.dp, %i.dx                    ; 2 uses
  %i.dz = trunc i32 %i.dp to i8
  %.scalar432 = shl i8 %i.dz, 4
  %i.ea = insertelement <16 x i8> poison, i8 %.scalar432, i64 0
  %i.eb = shufflevector <16 x i8> %i.ea, <16 x i8> poison, <16 x i32> zeroinitializer ; 3 uses
  %i.ec = trunc i32 %i.dp to i8
  %broadcast.splatinsert398 = insertelement <16 x i8> poison, i8 %i.ec, i64 0
  %broadcast.splat399 = shufflevector <16 x i8> %broadcast.splatinsert398, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.ed = mul <16 x i8> %broadcast.splat399, <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15>
  %invariant.op445 = add <16 x i8> %i.eb, %i.eb
  br label %vector.body400

vector.body400:                                   ; preds = %vector.ph394, %vector.body400
  %index401 = phi i64 [ 0, %vector.ph394 ], [ %index.next404, %vector.body400 ] ; 2 uses
  %vec.ind402 = phi <16 x i8> [ %i.ed, %vector.ph394 ], [ %vec.ind.next405.reass, %vector.body400 ] ; 3 uses
  %step.add403 = add <16 x i8> %vec.ind402, %i.eb
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dr, i64 %index401 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  store <16 x i8> %vec.ind402, ptr %i.ee, align 1, !tbaa !26
  store <16 x i8> %step.add403, ptr %i.ef, align 1, !tbaa !26
  %index.next404 = add nuw i64 %index401, 32      ; 2 uses
  %vec.ind.next405.reass = add <16 x i8> %vec.ind402, %invariant.op445
  %i.eg = icmp eq i64 %index.next404, %n.vec395
  br i1 %i.eg, label %middle.block406, label %vector.body400, !llvm.loop !376

middle.block406:                                  ; preds = %vector.body400
  %cmp.n407 = icmp eq i64 %i.dv, %n.vec395
  br i1 %cmp.n407, label %._crit_edge303, label %vec.epilog.iter.check409

vec.epilog.iter.check409:                         ; preds = %middle.block406
  %min.epilog.iters.check411 = icmp eq i64 %i.dw, 0
  br i1 %min.epilog.iters.check411, label %vec.epilog.scalar.ph410.preheader, label %vec.epilog.ph412, !prof !270

vec.epilog.ph412:                                 ; preds = %vector.main.loop.iter.check392, %vec.epilog.iter.check409
  %vec.epilog.resume.val413 = phi i64 [ %n.vec395, %vec.epilog.iter.check409 ], [ 0, %vector.main.loop.iter.check392 ]
  %bc.resume.val414 = phi i32 [ %i.dy, %vec.epilog.iter.check409 ], [ 0, %vector.main.loop.iter.check392 ]
  %n.vec415 = and i64 %i.dv, 8589934588           ; 4 uses
  %i.eh = trunc i64 %n.vec415 to i32
  %i.ei = mul i32 %i.dp, %i.eh
  %i.ej = trunc i32 %i.dp to i8                   ; 2 uses
  %i.ek = trunc i32 %bc.resume.val414 to i8
  %broadcast.splatinsert416 = insertelement <4 x i8> poison, i8 %i.ek, i64 0
  %broadcast.splat417 = shufflevector <4 x i8> %broadcast.splatinsert416, <4 x i8> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert418 = insertelement <4 x i8> poison, i8 %i.ej, i64 0
  %broadcast.splat419 = shufflevector <4 x i8> %broadcast.splatinsert418, <4 x i8> poison, <4 x i32> zeroinitializer
  %i.el = mul <4 x i8> %broadcast.splat419, <i8 0, i8 1, i8 2, i8 3>
  %induction420 = add <4 x i8> %broadcast.splat417, %i.el
  %i.em = shl i8 %i.ej, 2
  %broadcast.splatinsert421 = insertelement <4 x i8> poison, i8 %i.em, i64 0
  %broadcast.splat422 = shufflevector <4 x i8> %broadcast.splatinsert421, <4 x i8> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body423

vec.epilog.vector.body423:                        ; preds = %vec.epilog.vector.body423, %vec.epilog.ph412
  %index424 = phi i64 [ %vec.epilog.resume.val413, %vec.epilog.ph412 ], [ %index.next426, %vec.epilog.vector.body423 ] ; 2 uses
  %vec.ind425 = phi <4 x i8> [ %induction420, %vec.epilog.ph412 ], [ %vec.ind.next427, %vec.epilog.vector.body423 ] ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.dr, i64 %index424
  store <4 x i8> %vec.ind425, ptr %i.en, align 1, !tbaa !26
  %index.next426 = add nuw i64 %index424, 4       ; 2 uses
  %vec.ind.next427 = add <4 x i8> %vec.ind425, %broadcast.splat422
  %i.eo = icmp eq i64 %index.next426, %n.vec415
  br i1 %i.eo, label %vec.epilog.middle.block428, label %vec.epilog.vector.body423, !llvm.loop !377

vec.epilog.middle.block428:                       ; preds = %vec.epilog.vector.body423
  %cmp.n429 = icmp eq i64 %i.dv, %n.vec415
  br i1 %cmp.n429, label %._crit_edge303, label %vec.epilog.scalar.ph410.preheader

vec.epilog.scalar.ph410.preheader:                ; preds = %iter.check408, %vec.epilog.iter.check409, %vec.epilog.middle.block428
  %indvars.iv336.ph = phi i64 [ 0, %iter.check408 ], [ %n.vec395, %vec.epilog.iter.check409 ], [ %n.vec415, %vec.epilog.middle.block428 ]
  %.0216299.ph = phi i32 [ 0, %iter.check408 ], [ %i.dy, %vec.epilog.iter.check409 ], [ %i.ei, %vec.epilog.middle.block428 ]
  br label %vec.epilog.scalar.ph410

._crit_edge303:                                   ; preds = %vec.epilog.scalar.ph410, %middle.block406, %vec.epilog.middle.block428, %bb.k
  %i.ep = add i32 %i.dn, %i.dp
  %i.eq = sdiv i32 %i.ep, %i.dp
  %i.er = trunc i32 %i.eq to i16
  %i.es = getelementptr inbounds nuw i8, ptr %2, i64 500 ; 3 uses
  store i16 %i.er, ptr %i.es, align 4, !tbaa !273
  %i.et = load i16, ptr %i.da, align 2, !tbaa !271 ; 2 uses
  %i.eu = zext nneg i16 %i.et to i32
  %i.ev = add nsw i32 %i.eu, -1
  %i.ew = icmp ugt i16 %i.et, 1
  br i1 %i.ew, label %.lr.ph306, label %._crit_edge307

.lr.ph306:                                        ; preds = %._crit_edge303
  %i.ex = trunc i32 %i.bx to i8
  %i.ey = add i8 %i.ex, -1
  %i.ez = getelementptr inbounds nuw i8, ptr %2, i64 365
  br label %bb.l

vec.epilog.scalar.ph410:                          ; preds = %vec.epilog.scalar.ph410.preheader, %vec.epilog.scalar.ph410
  %indvars.iv336 = phi i64 [ %indvars.iv.next337, %vec.epilog.scalar.ph410 ], [ %indvars.iv336.ph, %vec.epilog.scalar.ph410.preheader ] ; 2 uses
  %.0216299 = phi i32 [ %i.fc, %vec.epilog.scalar.ph410 ], [ %.0216299.ph, %vec.epilog.scalar.ph410.preheader ] ; 2 uses
  %i.fa = trunc i32 %.0216299 to i8
  %indvars.iv.next337 = add nuw nsw i64 %indvars.iv336, 1
  %i.fb = getelementptr inbounds nuw i8, ptr %i.dr, i64 %indvars.iv336
  store i8 %i.fa, ptr %i.fb, align 1, !tbaa !26
  %i.fc = add nsw i32 %.0216299, %i.dp            ; 2 uses
  %i.fd = icmp slt i32 %i.fc, %i.ap
  br i1 %i.fd, label %vec.epilog.scalar.ph410, label %._crit_edge303, !llvm.loop !378

bb.l:                                             ; preds = %.lr.ph306, %bb.l
  %indvars.iv339 = phi i64 [ 0, %.lr.ph306 ], [ %indvars.iv.next340, %bb.l ] ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ez, i64 %indvars.iv339
  store i8 %i.ey, ptr %i.fe, align 1, !tbaa !26
  %indvars.iv.next340 = add nuw nsw i64 %indvars.iv339, 1 ; 3 uses
  %i.ff = load i16, ptr %i.da, align 2, !tbaa !271
  %i.fg = zext i16 %i.ff to i32
  %i.fh = add nsw i32 %i.fg, -1                   ; 2 uses
  %i.fi = sext i32 %i.fh to i64
  %i.fj = icmp slt i64 %indvars.iv.next340, %i.fi
  br i1 %i.fj, label %bb.l, label %._crit_edge307, !llvm.loop !379

._crit_edge307:                                   ; preds = %bb.l, %._crit_edge303
  %.0213.lcssa = phi i64 [ 0, %._crit_edge303 ], [ %indvars.iv.next340, %bb.l ]
  %.lcssa296 = phi i32 [ %i.ev, %._crit_edge303 ], [ %i.fh, %bb.l ]
  %i.fk = mul nsw i32 %.lcssa296, %i.bx
  %i.fl = xor i32 %i.fk, -1
  %i.fm = add i32 %i.z, %i.fl
  %i.fn = trunc i32 %i.fm to i8
  %i.fo = getelementptr inbounds nuw i8, ptr %2, i64 365
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 %.0213.lcssa
  store i8 %i.fn, ptr %i.fp, align 1, !tbaa !26
  %i.fq = load i16, ptr %i.es, align 4, !tbaa !273 ; 2 uses
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
  store i8 %i.fv, ptr %i.fx, align 1, !tbaa !26
  %indvars.iv.next343 = add nuw nsw i64 %indvars.iv342, 1 ; 3 uses
  %i.fy = load i16, ptr %i.es, align 4, !tbaa !273
  %i.fz = zext i16 %i.fy to i32
  %i.ga = add nsw i32 %i.fz, -1                   ; 2 uses
  %i.gb = sext i32 %i.ga to i64
  %i.gc = icmp slt i64 %indvars.iv.next343, %i.gb
  br i1 %i.gc, label %bb.m, label %._crit_edge312, !llvm.loop !380

._crit_edge312:                                   ; preds = %bb.m, %._crit_edge307
  %.1214.lcssa = phi i64 [ 0, %._crit_edge307 ], [ %indvars.iv.next343, %bb.m ]
  %.lcssa295 = phi i32 [ %i.fs, %._crit_edge307 ], [ %i.ga, %bb.m ]
  %i.gd = mul nsw i32 %.lcssa295, %i.dp
  %i.ge = xor i32 %i.gd, -1
  %i.gf = add i32 %i.ap, %i.ge
  %i.gg = trunc i32 %i.gf to i8
  %i.gh = getelementptr inbounds nuw i8, ptr %2, i64 429
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 %.1214.lcssa
  store i8 %i.gg, ptr %i.gi, align 1, !tbaa !26
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
  store i8 %i.gk, ptr %i.gl, align 1, !tbaa !26
  %i.gm = sub nuw nsw i32 %i.z, %.0210316
  %i.gn = call i32 @llvm.smin.i32(i32 %i.gm, i32 %i.ab)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  store i32 1, ptr %i.e, align 4, !tbaa !65
  %i.go = trunc nuw nsw i64 %indvars.iv345 to i32
  store i32 %i.go, ptr %i.bm, align 4, !tbaa !65
  %i.gp = call fastcc i32 @cbs_av1_read_ns(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %i.gn, ptr noundef nonnull @.str.156, ptr noundef nonnull %i.e, ptr noundef %i.d) ; 2 uses
  %i.gq = icmp sgt i32 %i.gp, -1
  br i1 %i.gq, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  br label %.thread269

bb.p:                                             ; preds = %bb.n
  %i.gr = load i32, ptr %i.d, align 4, !tbaa !65  ; 2 uses
  %i.gs = trunc i32 %i.gr to i8
  %i.gt = getelementptr inbounds nuw i8, ptr %i.bn, i64 %indvars.iv345
  store i8 %i.gs, ptr %i.gt, align 1, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  %i.gu = and i32 %i.gr, 255
  %i.gv = add nuw nsw i32 %i.gu, 1                ; 2 uses
  %i.gw = call i32 @llvm.smax.i32(i32 %i.gv, i32 %.0212315) ; 2 uses
  %i.gx = add nuw nsw i32 %i.gv, %.0210316        ; 2 uses
  %indvars.iv.next346 = add nuw nsw i64 %indvars.iv345, 1 ; 2 uses
  %i.gy = icmp slt i32 %i.gx, %i.z
  %i.gz = icmp samesign ult i64 %indvars.iv345, 63
  %i.ha = select i1 %i.gy, i1 %i.gz, i1 false
  br i1 %i.ha, label %bb.n, label %.preheader288.loopexit, !llvm.loop !381

bb.q:                                             ; preds = %.preheader288, %bb.q
  %.0.i260 = phi i32 [ %i.hd, %bb.q ], [ 0, %.preheader288 ] ; 3 uses
  %i.hb = shl nuw i32 1, %.0.i260
  %i.hc = icmp slt i32 %i.hb, %.0.lcssa
  %i.hd = add nuw nsw i32 %.0.i260, 1
  br i1 %i.hc, label %bb.q, label %cbs_av1_tile_log2.exit261, !llvm.loop !0

cbs_av1_tile_log2.exit261:                        ; preds = %bb.q
  %i.he = trunc i32 %.0.i260 to i8
  %i.hf = getelementptr inbounds nuw i8, ptr %2, i64 235
  store i8 %i.he, ptr %i.hf, align 1, !tbaa !267
  %i.hg = trunc i32 %.0.lcssa to i16
  %i.hh = getelementptr inbounds nuw i8, ptr %2, i64 498
  store i16 %i.hg, ptr %i.hh, align 2, !tbaa !271
  %.not287 = icmp eq i32 %i.be, 0
  %i.hi = add nuw nsw i32 %i.be, 1
  %i.hj = select i1 %.not287, i32 0, i32 %i.hi
  %.0221 = ashr i32 %i.aw, %i.hj
  %i.hk = sdiv i32 %.0221, %.0212.lcssa
  %i.hl = call i32 @llvm.smax.i32(i32 %i.hk, i32 1)
  %i.hm = icmp sgt i32 %i.ap, 0
  br i1 %i.hm, label %.lr.ph323, label %.preheader

.lr.ph323:                                        ; preds = %cbs_av1_tile_log2.exit261
  %i.hn = getelementptr inbounds nuw i8, ptr %2, i64 301
  %i.ho = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.hp = getelementptr inbounds nuw i8, ptr %2, i64 429
  br label %bb.r

.preheader.loopexit:                              ; preds = %bb.t
  %i.hq = trunc nuw nsw i64 %indvars.iv.next349 to i32
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %cbs_av1_tile_log2.exit261
  %.1.lcssa = phi i32 [ 0, %cbs_av1_tile_log2.exit261 ], [ %i.hq, %.preheader.loopexit ] ; 2 uses
  br label %bb.u

bb.r:                                             ; preds = %.lr.ph323, %bb.t
  %indvars.iv348 = phi i64 [ 0, %.lr.ph323 ], [ %indvars.iv.next349, %bb.t ] ; 5 uses
  %.1211321 = phi i32 [ 0, %.lr.ph323 ], [ %i.id, %bb.t ] ; 3 uses
  %i.hr = trunc i32 %.1211321 to i8
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hn, i64 %indvars.iv348
  store i8 %i.hr, ptr %i.hs, align 1, !tbaa !26
  %i.ht = sub nsw i32 %i.ap, %.1211321
  %i.hu = call i32 @llvm.smin.i32(i32 %i.ht, i32 %i.hl)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #9
  store i32 1, ptr %i.g, align 4, !tbaa !65
  %i.hv = trunc nuw nsw i64 %indvars.iv348 to i32
  store i32 %i.hv, ptr %i.ho, align 4, !tbaa !65
  %i.hw = call fastcc i32 @cbs_av1_read_ns(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %i.hu, ptr noundef nonnull @.str.157, ptr noundef nonnull %i.g, ptr noundef %i.f) ; 2 uses
  %i.hx = icmp sgt i32 %i.hw, -1
  br i1 %i.hx, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #9
  br label %.thread269

bb.t:                                             ; preds = %bb.r
  %i.hy = load i32, ptr %i.f, align 4, !tbaa !65  ; 2 uses
  %i.hz = trunc i32 %i.hy to i8
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hp, i64 %indvars.iv348
  store i8 %i.hz, ptr %i.ia, align 1, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #9
  %i.ib = and i32 %i.hy, 255
  %i.ic = add nuw nsw i32 %.1211321, 1
  %i.id = add nuw nsw i32 %i.ic, %i.ib            ; 2 uses
  %indvars.iv.next349 = add nuw nsw i64 %indvars.iv348, 1 ; 2 uses
  %i.ie = icmp slt i32 %i.id, %i.ap
  %i.if = icmp samesign ult i64 %indvars.iv348, 63
  %i.ig = select i1 %i.ie, i1 %i.if, i1 false
  br i1 %i.ig, label %bb.r, label %.preheader.loopexit, !llvm.loop !382

bb.u:                                             ; preds = %.preheader, %bb.u
  %.0.i262 = phi i32 [ %i.ij, %bb.u ], [ 0, %.preheader ] ; 3 uses
  %i.ih = shl nuw i32 1, %.0.i262
  %i.ii = icmp slt i32 %i.ih, %.1.lcssa
  %i.ij = add nuw nsw i32 %.0.i262, 1
  br i1 %i.ii, label %bb.u, label %bb.v, !llvm.loop !0

bb.v:                                             ; preds = %bb.u
  %i.ik = trunc i32 %.0.i262 to i8                ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %2, i64 236
  store i8 %i.ik, ptr %i.il, align 4, !tbaa !272
  %i.im = trunc i32 %.1.lcssa to i16
  %i.in = getelementptr inbounds nuw i8, ptr %2, i64 500
  store i16 %i.im, ptr %i.in, align 4, !tbaa !273
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %._crit_edge312
  %i.io = phi i8 [ %i.ik, %bb.v ], [ %i.dj, %._crit_edge312 ] ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %2, i64 235
  %i.iq = load i8, ptr %i.ip, align 1, !tbaa !267 ; 2 uses
  %.not250 = icmp eq i8 %i.iq, 0
  %.not251 = icmp eq i8 %i.io, 0
  %or.cond = select i1 %.not250, i1 %.not251, i1 false
  br i1 %or.cond, label %bb.ab, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #9
  %i.ir = zext i8 %i.iq to i32
  %i.is = zext i8 %i.io to i32
  %i.it = add nuw nsw i32 %i.is, %i.ir
  %i.iu = call i32 @ff_cbs_read_simple_unsigned(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef %i.it, ptr noundef nonnull @.str.158, ptr noundef nonnull %i.h) #9 ; 2 uses
  %i.iv = icmp sgt i32 %i.iu, -1
  br i1 %i.iv, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #9
  br label %.thread269

bb.z:                                             ; preds = %bb.x
  %i.iw = load i32, ptr %i.h, align 4, !tbaa !65
  %i.ix = trunc i32 %i.iw to i16
  %i.iy = getelementptr inbounds nuw i8, ptr %2, i64 494
  store i16 %i.ix, ptr %i.iy, align 2, !tbaa !274
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #9
  %i.iz = call i32 @ff_cbs_read_simple_unsigned(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef 2, ptr noundef nonnull @.str.159, ptr noundef nonnull %i.i) #9 ; 2 uses
  %i.ja = icmp sgt i32 %i.iz, -1
  br i1 %i.ja, label %.thread285, label %bb.aa

.thread285:                                       ; preds = %bb.z
  %i.jb = load i32, ptr %i.i, align 4, !tbaa !65
  %i.jc = trunc i32 %i.jb to i8
  %i.jd = getelementptr inbounds nuw i8, ptr %2, i64 496
  store i8 %i.jc, ptr %i.jd, align 4, !tbaa !275
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #9
  br label %bb.ac

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #9
  br label %.thread269

bb.ab:                                            ; preds = %bb.w
  %i.je = getelementptr inbounds nuw i8, ptr %2, i64 494
  store i16 0, ptr %i.je, align 2, !tbaa !274
  br label %bb.ac

bb.ac:                                            ; preds = %.thread285, %bb.ab
  %i.jf = getelementptr inbounds nuw i8, ptr %2, i64 498
  %i.jg = getelementptr inbounds nuw i8, ptr %i.k, i64 108
  %i.jh = load <2 x i16>, ptr %i.jf, align 2, !tbaa !60
  %i.ji = zext <2 x i16> %i.jh to <2 x i32>
  store <2 x i32> %i.ji, ptr %i.jg, align 4, !tbaa !65
  br label %.thread269

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
  store i32 %i.y, ptr %i.cs, align 4, !tbaa !200
  %i.ct = getelementptr inbounds nuw i8, ptr %i.c, i64 76
  store i32 %i.y, ptr %i.ct, align 4, !tbaa !215
  %i.cu = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  store i32 %i.ah, ptr %i.cu, align 8, !tbaa !234
  %i.cv = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  store i32 %i.aq, ptr %i.cv, align 8, !tbaa !235
  %i.cw = getelementptr inbounds nuw i8, ptr %i.c, i64 92
  store i32 %i.az, ptr %i.cw, align 4, !tbaa !236
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
  %i.b = load i8, ptr %i.a, align 1, !tbaa !264
  %i.c = zext i8 %i.b to i32
  %i.d = tail call i32 @ff_cbs_write_simple_unsigned(ptr noundef %0, ptr noundef %1, i32 noundef 1, ptr noundef nonnull @.str.151, i32 noundef %i.c) #9 ; 2 uses
  %i.e = icmp slt i32 %i.d, 0
  br i1 %i.e, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i8, ptr %i.a, align 1, !tbaa !264
  %.not = icmp eq i8 %i.f, 0
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 230
  %i.h = load i8, ptr %i.g, align 2, !tbaa !265   ; 3 uses
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not16 = icmp eq i8 %i.h, 4
  br i1 %.not16, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = load ptr, ptr %0, align 8, !tbaa !25
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
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !38   ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !62
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 76
  %i.h = load i32, ptr %i.g, align 4, !tbaa !215
  %i.i = add nsw i32 %i.h, 7
  %i.j = ashr i32 %i.i, 2                         ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %i.l = load i32, ptr %i.k, align 8, !tbaa !234
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 557
  %i.n = load i8, ptr %i.m, align 1, !tbaa !101
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
  br i1 %i.w, label %bb.b, label %cbs_av1_tile_log2.exit, !llvm.loop !0

cbs_av1_tile_log2.exit:                           ; preds = %bb.b
  %i.y = tail call i32 @llvm.smin.i32(i32 %i.s, i32 64)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %cbs_av1_tile_log2.exit
  %.0.i264 = phi i32 [ 0, %cbs_av1_tile_log2.exit ], [ %i.ab, %bb.c ] ; 3 uses
  %i.z = shl nuw i32 1, %.0.i264
  %i.aa = icmp slt i32 %i.z, %i.y
  %i.ab = add nuw nsw i32 %.0.i264, 1
  br i1 %i.aa, label %bb.c, label %cbs_av1_tile_log2.exit265, !llvm.loop !0

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
  br i1 %i.al, label %bb.d, label %cbs_av1_tile_log2.exit267, !llvm.loop !0

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
  br i1 %i.ar, label %bb.e, label %cbs_av1_tile_log2.exit269, !llvm.loop !0

cbs_av1_tile_log2.exit269:                        ; preds = %bb.e
  %i.at = icmp samesign ugt i32 %.0.i, %.0.i268
  br i1 %i.at, label %cbs_av1_tile_log2.exit271, label %.preheader287

.preheader287:                                    ; preds = %cbs_av1_tile_log2.exit269, %.preheader287
  %.0.i270 = phi i32 [ %i.aw, %.preheader287 ], [ 0, %cbs_av1_tile_log2.exit269 ] ; 3 uses
  %i.au = shl i32 %i.ao, %.0.i270
  %i.av = icmp slt i32 %i.au, %i.ap
  %i.aw = add nuw nsw i32 %.0.i270, 1
  br i1 %i.av, label %.preheader287, label %cbs_av1_tile_log2.exit271, !llvm.loop !0

cbs_av1_tile_log2.exit271:                        ; preds = %.preheader287, %cbs_av1_tile_log2.exit269
  %i.ax = phi i32 [ %.0.i, %cbs_av1_tile_log2.exit269 ], [ %.0.i270, %.preheader287 ] ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 234 ; 2 uses
  %i.az = load i8, ptr %i.ay, align 2, !tbaa !266
  %i.ba = zext i8 %i.az to i32
  %i.bb = tail call i32 @ff_cbs_write_simple_unsigned(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 1, ptr noundef nonnull @.str.153, i32 noundef %i.ba) #9 ; 2 uses
  %i.bc = icmp slt i32 %i.bb, 0
  br i1 %i.bc, label %.thread, label %bb.f

bb.f:                                             ; preds = %cbs_av1_tile_log2.exit271
  %i.bd = load i8, ptr %i.ay, align 2, !tbaa !266
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
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !267
  %i.bk = zext i8 %i.bj to i32
  %i.bl = tail call fastcc i32 @cbs_av1_write_increment(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %.0.i, i32 noundef %.0.i264, ptr noundef nonnull @.str.154, i32 noundef %i.bk) ; 2 uses
  %i.bm = icmp slt i32 %i.bl, 0
  br i1 %i.bm, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bn = load i8, ptr %i.bi, align 1, !tbaa !267
  %i.bo = zext i8 %i.bn to i32                    ; 3 uses
  %i.bp = shl nuw i32 1, %i.bo
  %i.bq = add nsw i32 %i.s, -1                    ; 2 uses
  %i.br = add i32 %i.bq, %i.bp
  %i.bs = ashr i32 %i.br, %i.bo                   ; 11 uses
  %i.bt = icmp sgt i32 %i.s, 0
  br i1 %i.bt, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %bb.h
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 237 ; 3 uses
  %i.bv = add nsw i32 %i.s, -1
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

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <16 x i8> [ %i.cg, %vector.ph ], [ %vec.ind.next.reass, %vector.body ] ; 3 uses
  %step.add = add <16 x i8> %vec.ind, %i.ce
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bu, i64 %index ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  store <16 x i8> %vec.ind, ptr %i.ch, align 1, !tbaa !26
  store <16 x i8> %step.add, ptr %i.ci, align 1, !tbaa !26
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %vec.ind.next.reass = add <16 x i8> %vec.ind, %invariant.op
  %i.cj = icmp eq i64 %index.next, %n.vec
  br i1 %i.cj, label %middle.block, label %vector.body, !llvm.loop !402

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.by, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bz, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !270

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
  store <4 x i8> %vec.ind407, ptr %i.cq, align 1, !tbaa !26
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
  store i16 %i.cu, ptr %i.cv, align 2, !tbaa !271
  %i.cw = sub nsw i32 %i.ax, %i.bo
  %spec.select = tail call i32 @llvm.smax.i32(i32 %i.cw, i32 0)
  %i.cx = getelementptr inbounds nuw i8, ptr %2, i64 236 ; 2 uses
  %i.cy = load i8, ptr %i.cx, align 4, !tbaa !272
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
  store i8 %i.dc, ptr %i.dd, align 1, !tbaa !26
  %i.de = add nsw i32 %.0226302, %i.bs            ; 2 uses
  %i.df = icmp slt i32 %i.de, %i.s
  br i1 %i.df, label %vec.epilog.scalar.ph, label %._crit_edge, !llvm.loop !404

bb.i:                                             ; preds = %._crit_edge
  %i.dg = load i8, ptr %i.cx, align 4, !tbaa !272 ; 2 uses
  %i.dh = zext i8 %i.dg to i32                    ; 2 uses
  %i.di = shl nuw i32 1, %i.dh
  %i.dj = add nsw i32 %i.ai, -1                   ; 2 uses
  %i.dk = add i32 %i.dj, %i.di
  %i.dl = ashr i32 %i.dk, %i.dh                   ; 11 uses
  %i.dm = icmp sgt i32 %i.ai, 0
  br i1 %i.dm, label %iter.check430, label %._crit_edge308

iter.check430:                                    ; preds = %bb.i
  %i.dn = getelementptr inbounds nuw i8, ptr %2, i64 301 ; 3 uses
  %i.do = add nsw i32 %i.ai, -1
  %i.dp = udiv i32 %i.do, %i.dl                   ; 3 uses
  %i.dq = zext i32 %i.dp to i64
  %i.dr = add nuw nsw i64 %i.dq, 1                ; 5 uses
  %min.iters.check413 = icmp ult i32 %i.dp, 3
  br i1 %min.iters.check413, label %vec.epilog.scalar.ph432.preheader, label %vector.main.loop.iter.check414

vector.main.loop.iter.check414:                   ; preds = %iter.check430
  %min.iters.check415 = icmp ult i32 %i.dp, 31
  br i1 %min.iters.check415, label %vec.epilog.ph434, label %vector.ph416

vector.ph416:                                     ; preds = %vector.main.loop.iter.check414
  %i.ds = and i64 %i.dr, 28
  %n.vec417 = and i64 %i.dr, 8589934560           ; 5 uses
  %i.dt = trunc i64 %n.vec417 to i32
  %i.du = mul i32 %i.dl, %i.dt                    ; 2 uses
  %i.dv = trunc i32 %i.dl to i8
  %.scalar454 = shl i8 %i.dv, 4
  %i.dw = insertelement <16 x i8> poison, i8 %.scalar454, i64 0
  %i.dx = shufflevector <16 x i8> %i.dw, <16 x i8> poison, <16 x i32> zeroinitializer ; 3 uses
  %i.dy = trunc i32 %i.dl to i8
  %broadcast.splatinsert420 = insertelement <16 x i8> poison, i8 %i.dy, i64 0
  %broadcast.splat421 = shufflevector <16 x i8> %broadcast.splatinsert420, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.dz = mul <16 x i8> %broadcast.splat421, <i8 0, i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8, i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15>
  %invariant.op472 = add <16 x i8> %i.dx, %i.dx
  br label %vector.body422

vector.body422:                                   ; preds = %vector.ph416, %vector.body422
  %index423 = phi i64 [ 0, %vector.ph416 ], [ %index.next426, %vector.body422 ] ; 2 uses
  %vec.ind424 = phi <16 x i8> [ %i.dz, %vector.ph416 ], [ %vec.ind.next427.reass, %vector.body422 ] ; 3 uses
  %step.add425 = add <16 x i8> %vec.ind424, %i.dx
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dn, i64 %index423 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  store <16 x i8> %vec.ind424, ptr %i.ea, align 1, !tbaa !26
  store <16 x i8> %step.add425, ptr %i.eb, align 1, !tbaa !26
  %index.next426 = add nuw i64 %index423, 32      ; 2 uses
  %vec.ind.next427.reass = add <16 x i8> %vec.ind424, %invariant.op472
  %i.ec = icmp eq i64 %index.next426, %n.vec417
  br i1 %i.ec, label %middle.block428, label %vector.body422, !llvm.loop !405

middle.block428:                                  ; preds = %vector.body422
  %cmp.n429 = icmp eq i64 %i.dr, %n.vec417
  br i1 %cmp.n429, label %._crit_edge308, label %vec.epilog.iter.check431

vec.epilog.iter.check431:                         ; preds = %middle.block428
  %min.epilog.iters.check433 = icmp eq i64 %i.ds, 0
  br i1 %min.epilog.iters.check433, label %vec.epilog.scalar.ph432.preheader, label %vec.epilog.ph434, !prof !270

vec.epilog.ph434:                                 ; preds = %vector.main.loop.iter.check414, %vec.epilog.iter.check431
  %vec.epilog.resume.val435 = phi i64 [ %n.vec417, %vec.epilog.iter.check431 ], [ 0, %vector.main.loop.iter.check414 ]
  %bc.resume.val436 = phi i32 [ %i.du, %vec.epilog.iter.check431 ], [ 0, %vector.main.loop.iter.check414 ]
  %n.vec437 = and i64 %i.dr, 8589934588           ; 4 uses
  %i.ed = trunc i64 %n.vec437 to i32
  %i.ee = mul i32 %i.dl, %i.ed
  %i.ef = trunc i32 %i.dl to i8                   ; 2 uses
  %i.eg = trunc i32 %bc.resume.val436 to i8
  %broadcast.splatinsert438 = insertelement <4 x i8> poison, i8 %i.eg, i64 0
  %broadcast.splat439 = shufflevector <4 x i8> %broadcast.splatinsert438, <4 x i8> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert440 = insertelement <4 x i8> poison, i8 %i.ef, i64 0
  %broadcast.splat441 = shufflevector <4 x i8> %broadcast.splatinsert440, <4 x i8> poison, <4 x i32> zeroinitializer
  %i.eh = mul <4 x i8> %broadcast.splat441, <i8 0, i8 1, i8 2, i8 3>
  %induction442 = add <4 x i8> %broadcast.splat439, %i.eh
  %i.ei = shl i8 %i.ef, 2
  %broadcast.splatinsert443 = insertelement <4 x i8> poison, i8 %i.ei, i64 0
  %broadcast.splat444 = shufflevector <4 x i8> %broadcast.splatinsert443, <4 x i8> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body445

vec.epilog.vector.body445:                        ; preds = %vec.epilog.vector.body445, %vec.epilog.ph434
  %index446 = phi i64 [ %vec.epilog.resume.val435, %vec.epilog.ph434 ], [ %index.next448, %vec.epilog.vector.body445 ] ; 2 uses
  %vec.ind447 = phi <4 x i8> [ %induction442, %vec.epilog.ph434 ], [ %vec.ind.next449, %vec.epilog.vector.body445 ] ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dn, i64 %index446
  store <4 x i8> %vec.ind447, ptr %i.ej, align 1, !tbaa !26
  %index.next448 = add nuw i64 %index446, 4       ; 2 uses
  %vec.ind.next449 = add <4 x i8> %vec.ind447, %broadcast.splat444
  %i.ek = icmp eq i64 %index.next448, %n.vec437
  br i1 %i.ek, label %vec.epilog.middle.block450, label %vec.epilog.vector.body445, !llvm.loop !406

vec.epilog.middle.block450:                       ; preds = %vec.epilog.vector.body445
  %cmp.n451 = icmp eq i64 %i.dr, %n.vec437
  br i1 %cmp.n451, label %._crit_edge308, label %vec.epilog.scalar.ph432.preheader

vec.epilog.scalar.ph432.preheader:                ; preds = %iter.check430, %vec.epilog.iter.check431, %vec.epilog.middle.block450
  %indvars.iv343.ph = phi i64 [ 0, %iter.check430 ], [ %n.vec417, %vec.epilog.iter.check431 ], [ %n.vec437, %vec.epilog.middle.block450 ]
  %.0224304.ph = phi i32 [ 0, %iter.check430 ], [ %i.du, %vec.epilog.iter.check431 ], [ %i.ee, %vec.epilog.middle.block450 ]
  br label %vec.epilog.scalar.ph432

._crit_edge308:                                   ; preds = %vec.epilog.scalar.ph432, %middle.block428, %vec.epilog.middle.block450, %bb.i
  %i.el = add i32 %i.dj, %i.dl
  %i.em = sdiv i32 %i.el, %i.dl                   ; 2 uses
  %i.en = trunc i32 %i.em to i16                  ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %2, i64 500
  store i16 %i.en, ptr %i.eo, align 4, !tbaa !273
  %i.ep = load i16, ptr %i.cv, align 2, !tbaa !271 ; 2 uses
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

vec.epilog.scalar.ph432:                          ; preds = %vec.epilog.scalar.ph432.preheader, %vec.epilog.scalar.ph432
  %indvars.iv343 = phi i64 [ %indvars.iv.next344, %vec.epilog.scalar.ph432 ], [ %indvars.iv343.ph, %vec.epilog.scalar.ph432.preheader ] ; 2 uses
  %.0224304 = phi i32 [ %i.ey, %vec.epilog.scalar.ph432 ], [ %.0224304.ph, %vec.epilog.scalar.ph432.preheader ] ; 2 uses
  %i.ew = trunc i32 %.0224304 to i8
  %indvars.iv.next344 = add nuw nsw i64 %indvars.iv343, 1
  %i.ex = getelementptr inbounds nuw i8, ptr %i.dn, i64 %indvars.iv343
  store i8 %i.ew, ptr %i.ex, align 1, !tbaa !26
  %i.ey = add nsw i32 %.0224304, %i.dl            ; 2 uses
  %i.ez = icmp slt i32 %i.ey, %i.ai
  br i1 %i.ez, label %vec.epilog.scalar.ph432, label %._crit_edge308, !llvm.loop !407

bb.j:                                             ; preds = %.lr.ph311, %bb.l
  %indvars.iv346 = phi i64 [ 0, %.lr.ph311 ], [ %indvars.iv.next347, %bb.l ] ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.et, i64 %indvars.iv346
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !26  ; 2 uses
  %i.fc = zext i8 %i.fb to i32
  %.not260 = icmp eq i32 %i.eu, %i.fc
  br i1 %.not260, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.fd = load ptr, ptr %0, align 8, !tbaa !25
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
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !26  ; 2 uses
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
  %i.fu = load ptr, ptr %0, align 8, !tbaa !25
  %i.fv = zext i8 %i.fj to i64
  %i.fw = sext i32 %i.fn to i64
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.fu, i32 noundef 16, ptr noundef nonnull @.str.317, ptr noundef nonnull @.str.156, i64 noundef %i.fv, i64 noundef %i.fw) #9
  br label %.thread

bb.n:                                             ; preds = %.lr.ph315, %bb.p
  %indvars.iv349 = phi i64 [ 0, %.lr.ph315 ], [ %indvars.iv.next350, %bb.p ] ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fr, i64 %indvars.iv349
  %i.fy = load i8, ptr %i.fx, align 1, !tbaa !26  ; 2 uses
  %i.fz = zext i8 %i.fy to i32
  %.not259 = icmp eq i32 %i.fs, %i.fz
  br i1 %.not259, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ga = load ptr, ptr %0, align 8, !tbaa !25
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
  %i.gg = load i8, ptr %i.gf, align 1, !tbaa !26  ; 2 uses
  %i.gh = zext i8 %i.gg to i32
  %i.gi = mul nsw i32 %i.fp, %i.dl
  %i.gj = xor i32 %i.gi, -1
  %i.gk = add i32 %i.ai, %i.gj                    ; 2 uses
  %.not258 = icmp eq i32 %i.gk, %i.gh
  br i1 %.not258, label %bb.y, label %bb.q

bb.q:                                             ; preds = %._crit_edge316
  %i.gl = load ptr, ptr %0, align 8, !tbaa !25
  %i.gm = zext i8 %i.gg to i64
  %i.gn = sext i32 %i.gk to i64
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.gl, i32 noundef 16, ptr noundef nonnull @.str.317, ptr noundef nonnull @.str.157, i64 noundef %i.gm, i64 noundef %i.gn) #9
  br label %.thread

.preheader283.loopexit:                           ; preds = %bb.s
  %i.go = trunc nuw nsw i64 %indvars.iv.next355 to i32
  br label %.preheader283

.preheader283:                                    ; preds = %.preheader283.loopexit, %.preheader284
  %.0220.lcssa = phi i32 [ 0, %.preheader284 ], [ %i.hc, %.preheader283.loopexit ]
  %.0.lcssa = phi i32 [ 0, %.preheader284 ], [ %i.go, %.preheader283.loopexit ] ; 2 uses
  br label %bb.t

bb.r:                                             ; preds = %.lr.ph322, %bb.s
  %indvars.iv354 = phi i64 [ 0, %.lr.ph322 ], [ %indvars.iv.next355, %bb.s ] ; 5 uses
  %.0218320 = phi i32 [ 0, %.lr.ph322 ], [ %i.hd, %bb.s ] ; 3 uses
  %.0220319 = phi i32 [ 0, %.lr.ph322 ], [ %i.hc, %bb.s ]
  %i.gp = trunc i32 %.0218320 to i8
  %i.gq = getelementptr inbounds nuw i8, ptr %i.bf, i64 %indvars.iv354
  store i8 %i.gp, ptr %i.gq, align 1, !tbaa !26
  %i.gr = sub nuw nsw i32 %i.s, %.0218320
  %i.gs = call i32 @llvm.smin.i32(i32 %i.gr, i32 %i.u)
  store i32 1, ptr %i.a, align 4, !tbaa !65
  %i.gt = trunc nuw nsw i64 %indvars.iv354 to i32
  store i32 %i.gt, ptr %i.bg, align 4, !tbaa !65
  %i.gu = getelementptr inbounds nuw i8, ptr %i.bh, i64 %indvars.iv354 ; 2 uses
  %i.gv = load i8, ptr %i.gu, align 1, !tbaa !26
  %i.gw = zext i8 %i.gv to i32
  %i.gx = call fastcc i32 @cbs_av1_write_ns(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %i.gs, ptr noundef nonnull @.str.156, ptr noundef nonnull %i.a, i32 noundef %i.gw) ; 2 uses
  %i.gy = icmp slt i32 %i.gx, 0
  br i1 %i.gy, label %.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.gz = load i8, ptr %i.gu, align 1, !tbaa !26
  %i.ha = zext i8 %i.gz to i32
  %i.hb = add nuw nsw i32 %i.ha, 1                ; 2 uses
  %i.hc = call i32 @llvm.smax.i32(i32 %i.hb, i32 %.0220319) ; 2 uses
  %i.hd = add nuw nsw i32 %i.hb, %.0218320        ; 2 uses
  %indvars.iv.next355 = add nuw nsw i64 %indvars.iv354, 1 ; 2 uses
  %i.he = icmp slt i32 %i.hd, %i.s
  %i.hf = icmp samesign ult i64 %indvars.iv354, 63
  %i.hg = select i1 %i.he, i1 %i.hf, i1 false
  br i1 %i.hg, label %bb.r, label %.preheader283.loopexit, !llvm.loop !410

bb.t:                                             ; preds = %.preheader283, %bb.t
  %.0.i272 = phi i32 [ %i.hj, %bb.t ], [ 0, %.preheader283 ] ; 3 uses
  %i.hh = shl nuw i32 1, %.0.i272
  %i.hi = icmp slt i32 %i.hh, %.0.lcssa
  %i.hj = add nuw nsw i32 %.0.i272, 1
  br i1 %i.hi, label %bb.t, label %cbs_av1_tile_log2.exit273, !llvm.loop !0

cbs_av1_tile_log2.exit273:                        ; preds = %bb.t
  %i.hk = trunc i32 %.0.i272 to i8
  %i.hl = getelementptr inbounds nuw i8, ptr %2, i64 235
  store i8 %i.hk, ptr %i.hl, align 1, !tbaa !267
  %i.hm = trunc i32 %.0.lcssa to i16
  %i.hn = getelementptr inbounds nuw i8, ptr %2, i64 498
  store i16 %i.hm, ptr %i.hn, align 2, !tbaa !271
  %.not282 = icmp eq i32 %i.ax, 0
  %i.ho = add nuw nsw i32 %i.ax, 1
  %i.hp = select i1 %.not282, i32 0, i32 %i.ho
  %.0229 = ashr i32 %i.ap, %i.hp
  %i.hq = sdiv i32 %.0229, %.0220.lcssa
  %i.hr = call i32 @llvm.smax.i32(i32 %i.hq, i32 1)
  %i.hs = icmp sgt i32 %i.ai, 0
  br i1 %i.hs, label %.lr.ph327, label %.preheader

.lr.ph327:                                        ; preds = %cbs_av1_tile_log2.exit273
  %i.ht = getelementptr inbounds nuw i8, ptr %2, i64 301
  %i.hu = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.hv = getelementptr inbounds nuw i8, ptr %2, i64 429
  br label %bb.u

.preheader.loopexit:                              ; preds = %bb.v
  %i.hw = trunc nuw nsw i64 %indvars.iv.next358 to i32
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %cbs_av1_tile_log2.exit273
  %.1.lcssa = phi i32 [ 0, %cbs_av1_tile_log2.exit273 ], [ %i.hw, %.preheader.loopexit ] ; 2 uses
  br label %bb.w

bb.u:                                             ; preds = %.lr.ph327, %bb.v
  %indvars.iv357 = phi i64 [ 0, %.lr.ph327 ], [ %indvars.iv.next358, %bb.v ] ; 5 uses
  %.1219325 = phi i32 [ 0, %.lr.ph327 ], [ %i.ik, %bb.v ] ; 3 uses
  %i.hx = trunc i32 %.1219325 to i8
  %i.hy = getelementptr inbounds nuw i8, ptr %i.ht, i64 %indvars.iv357
  store i8 %i.hx, ptr %i.hy, align 1, !tbaa !26
  %i.hz = sub nsw i32 %i.ai, %.1219325
  %i.ia = call i32 @llvm.smin.i32(i32 %i.hz, i32 %i.hr)
  store i32 1, ptr %i.b, align 4, !tbaa !65
  %i.ib = trunc nuw nsw i64 %indvars.iv357 to i32
  store i32 %i.ib, ptr %i.hu, align 4, !tbaa !65
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hv, i64 %indvars.iv357 ; 2 uses
  %i.id = load i8, ptr %i.ic, align 1, !tbaa !26
  %i.ie = zext i8 %i.id to i32
  %i.if = call fastcc i32 @cbs_av1_write_ns(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %i.ia, ptr noundef nonnull @.str.157, ptr noundef nonnull %i.b, i32 noundef %i.ie) ; 2 uses
  %i.ig = icmp slt i32 %i.if, 0
  br i1 %i.ig, label %.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ih = load i8, ptr %i.ic, align 1, !tbaa !26
  %i.ii = zext i8 %i.ih to i32
  %i.ij = add nuw nsw i32 %.1219325, 1
  %i.ik = add nuw nsw i32 %i.ij, %i.ii            ; 2 uses
  %indvars.iv.next358 = add nuw nsw i64 %indvars.iv357, 1 ; 2 uses
  %i.il = icmp slt i32 %i.ik, %i.ai
  %i.im = icmp samesign ult i64 %indvars.iv357, 63
  %i.in = select i1 %i.il, i1 %i.im, i1 false
  br i1 %i.in, label %bb.u, label %.preheader.loopexit, !llvm.loop !411

bb.w:                                             ; preds = %.preheader, %bb.w
  %.0.i274 = phi i32 [ %i.iq, %bb.w ], [ 0, %.preheader ] ; 3 uses
  %i.io = shl nuw i32 1, %.0.i274
  %i.ip = icmp slt i32 %i.io, %.1.lcssa
  %i.iq = add nuw nsw i32 %.0.i274, 1
  br i1 %i.ip, label %bb.w, label %bb.x, !llvm.loop !0

bb.x:                                             ; preds = %bb.w
  %i.ir = trunc i32 %.0.i274 to i8                ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %2, i64 236
  store i8 %i.ir, ptr %i.is, align 4, !tbaa !272
  %i.it = trunc i32 %.1.lcssa to i16              ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %2, i64 500
  store i16 %i.it, ptr %i.iu, align 4, !tbaa !273
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %._crit_edge316
  %i.iv = phi i16 [ %i.it, %bb.x ], [ %i.en, %._crit_edge316 ]
  %i.iw = phi i8 [ %i.ir, %bb.x ], [ %i.dg, %._crit_edge316 ] ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %2, i64 235
  %i.iy = load i8, ptr %i.ix, align 1, !tbaa !267 ; 2 uses
  %.not261 = icmp eq i8 %i.iy, 0
  %.not262 = icmp eq i8 %i.iw, 0
  %or.cond = select i1 %.not261, i1 %.not262, i1 false
  br i1 %or.cond, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.iz = zext i8 %i.iy to i32
  %i.ja = zext i8 %i.iw to i32
  %i.jb = add nuw nsw i32 %i.ja, %i.iz
  %i.jc = getelementptr inbounds nuw i8, ptr %2, i64 494
  %i.jd = load i16, ptr %i.jc, align 2, !tbaa !274
  %i.je = zext i16 %i.jd to i32
  %i.jf = call i32 @ff_cbs_write_simple_unsigned(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %i.jb, ptr noundef nonnull @.str.158, i32 noundef %i.je) #9 ; 2 uses
  %i.jg = icmp slt i32 %i.jf, 0
  br i1 %i.jg, label %.thread, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.jh = getelementptr inbounds nuw i8, ptr %2, i64 496
  %i.ji = load i8, ptr %i.jh, align 4, !tbaa !275
  %i.jj = zext i8 %i.ji to i32
  %i.jk = call i32 @ff_cbs_write_simple_unsigned(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 2, ptr noundef nonnull @.str.159, i32 noundef %i.jj) #9 ; 2 uses
  %i.jl = icmp slt i32 %i.jk, 0
  br i1 %i.jl, label %.thread, label %._crit_edge360

._crit_edge360:                                   ; preds = %bb.aa
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 500
  %.pre = load i16, ptr %.phi.trans.insert, align 4, !tbaa !273
  br label %bb.ad

bb.ab:                                            ; preds = %bb.y
  %i.jm = getelementptr inbounds nuw i8, ptr %2, i64 494
  %i.jn = load i16, ptr %i.jm, align 2, !tbaa !274 ; 2 uses
  %.not263 = icmp eq i16 %i.jn, 0
  br i1 %.not263, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.jo = load ptr, ptr %0, align 8, !tbaa !25
  %i.jp = zext i16 %i.jn to i64
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.jo, i32 noundef 16, ptr noundef nonnull @.str.317, ptr noundef nonnull @.str.158, i64 noundef %i.jp, i64 noundef 0) #9
  br label %.thread

bb.ad:                                            ; preds = %._crit_edge360, %bb.ab
  %i.jq = phi i16 [ %.pre, %._crit_edge360 ], [ %i.iv, %bb.ab ]
  %i.jr = getelementptr inbounds nuw i8, ptr %2, i64 498
  %i.js = load i16, ptr %i.jr, align 2, !tbaa !271
  %i.jt = zext i16 %i.js to i32
  %i.ju = getelementptr inbounds nuw i8, ptr %i.d, i64 108
  store i32 %i.jt, ptr %i.ju, align 4, !tbaa !120
  %i.jv = zext i16 %i.jq to i32
  %i.jw = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  store i32 %i.jv, ptr %i.jw, align 8, !tbaa !121
  br label %.thread

.thread:                                          ; preds = %bb.r, %bb.u, %bb.q, %bb.o, %bb.m, %bb.k, %bb.g, %._crit_edge, %bb.aa, %bb.z, %cbs_av1_tile_log2.exit271, %bb.ad, %bb.ac
  %.3 = phi i32 [ %i.da, %._crit_edge ], [ %i.bb, %cbs_av1_tile_log2.exit271 ], [ %i.jf, %bb.z ], [ 0, %bb.ad ], [ -1094995529, %bb.ac ], [ %i.jk, %bb.aa ], [ -1094995529, %bb.k ], [ -1094995529, %bb.m ], [ -1094995529, %bb.o ], [ -1094995529, %bb.q ], [ %i.bl, %bb.g ], [ %i.if, %bb.u ], [ %i.gx, %bb.r ]
  ret i32 %.3
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -2147483648, 1) i32 @cbs_av1_write_quantization_params(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #0 {
bb.a:
end_hunk_1
begin_hunk_2_@cbs_av1_write_ns:bb.a
bb.aa:                                            ; preds = %put_bits.exit, %bb.z, %bb.e, %bb.d
  %.041 = phi i32 [ -1094995529, %bb.d ], [ -28, %bb.e ], [ 0, %bb.z ], [ 0, %put_bits.exit ]
  ret i32 %.041
}

declare i32 @ff_cbs_write_signed(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -2147483648, 1) i32 @cbs_av1_write_global_motion_param(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef range(i32 1, 4) %3, i32 noundef range(i32 -2147483648, 8) %4, i32 noundef range(i32 0, 6) %5) unnamed_addr #0 {
bb.a:
  %6 = alloca %struct.PutBitContext, align 8      ; 8 uses
  %i.a = alloca [3 x i32], align 4                ; 4 uses
  %i.b = icmp samesign ult i32 %5, 2
  %i.c = icmp eq i32 %3, 1
  %or.cond = and i1 %i.c, %i.b
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 228
  %i.e = load i8, ptr %i.d, align 4, !tbaa !220
  %.not = icmp eq i8 %i.e, 0
  %i.f = select i1 %.not, i32 8, i32 9
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.f, %bb.b ], [ 12, %bb.a ]
  %i.g = shl nuw nsw i32 2, %.0                   ; 2 uses
  %i.h = or disjoint i32 %i.g, 1                  ; 3 uses
  store i32 2, ptr %i.a, align 4, !tbaa !65
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %4, ptr %i.i, align 4, !tbaa !65
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %5, ptr %i.j, align 4, !tbaa !65
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 812
  %i.l = sext i32 %4 to i64
  %i.m = getelementptr inbounds [24 x i8], ptr %i.k, i64 %i.l
  %i.n = zext nneg i32 %5 to i64
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.n
  %i.p = load i32, ptr %i.o, align 4, !tbaa !65   ; 9 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !19
  %.not.i = icmp eq i32 %i.r, 0
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !78
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !80
  %i.w = ptrtoint ptr %i.t to i64
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !76
  %.tr.i.i = trunc i64 %i.y to i32
  %i.ab = shl i32 %.tr.i.i, 3
  %reass.sub = sub i32 %i.ab, %i.aa
  %i.ac = add i32 %reass.sub, 32
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i32 [ %i.ac, %bb.d ], [ undef, %bb.c ] ; 4 uses
  %i.ad = icmp ugt i32 %i.p, %i.h
  br i1 %i.ad, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ae = load ptr, ptr %0, align 8, !tbaa !25
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.ae, i32 noundef 16, ptr noundef nonnull @.str.324, ptr noundef nonnull @.str.217, i32 noundef %i.p, i32 noundef range(i32 513, 8194) %i.h) #9
  br label %cbs_av1_write_subexp.exit

bb.g:                                             ; preds = %bb.e
  %i.af = lshr exact i32 %i.g, 8
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.ag
  %i.ai = load i8, ptr %i.ah, align 2, !tbaa !26
  %i.aj = zext i8 %i.ai to i32                    ; 3 uses
  %i.ak = add nuw nsw i32 %i.aj, 8
  %i.al = add nuw nsw i32 %i.aj, 5                ; 4 uses
  %i.am = icmp samesign ult i32 %i.p, 8
  br i1 %i.am, label %bb.m, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not11.i.i = icmp samesign ult i32 %i.p, 256   ; 2 uses
  %i.an = lshr i32 %i.p, 8
  %.110.i.i = select i1 %.not11.i.i, i32 %i.p, i32 %i.an
  %.1.i.i = select i1 %.not11.i.i, i32 0, i32 8
  %i.ao = zext nneg i32 %.110.i.i to i64
  %i.ap = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.ao
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !26
  %i.ar = zext i8 %i.aq to i32
  %i.as = add nuw nsw i32 %.1.i.i, %i.ar          ; 3 uses
  %i.at = add nsw i32 %i.as, -2                   ; 2 uses
  %i.au = icmp ugt i32 %i.at, %i.al
  br i1 %i.au, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.av = icmp eq i32 %i.as, %i.ak
  br i1 %i.av, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.341, ptr noundef nonnull @.str.10, i32 noundef 412) #9
  tail call void @abort() #10
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.aw = add nuw nsw i32 %i.aj, 7
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.h
  %.055.i = phi i32 [ %i.al, %bb.k ], [ %i.at, %bb.h ]
  %.053.i = phi i32 [ %i.aw, %bb.k ], [ %i.as, %bb.h ] ; 2 uses
  %i.ax = shl nuw i32 1, %.053.i
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.g
  %.156.i = phi i32 [ %.055.i, %bb.l ], [ 0, %bb.g ] ; 2 uses
  %.054.i = phi i32 [ %i.ax, %bb.l ], [ 0, %bb.g ] ; 3 uses
  %.1.i = phi i32 [ %.053.i, %bb.l ], [ 3, %bb.g ]
  %i.ay = tail call fastcc i32 @cbs_av1_write_increment(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 0, i32 noundef %i.al, ptr noundef nonnull @.str.219, i32 noundef %.156.i) ; 2 uses
  %i.az = icmp slt i32 %i.ay, 0
  br i1 %i.az, label %cbs_av1_write_subexp.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ba = icmp samesign ult i32 %.156.i, %i.al
  br i1 %i.ba, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bb = sub i32 %i.p, %.054.i
  %i.bc = tail call i32 @ff_cbs_write_simple_unsigned(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %.1.i, ptr noundef nonnull @.str.220, i32 noundef %i.bb) #9 ; 2 uses
  %i.bd = icmp slt i32 %i.bc, 0
  br i1 %i.bd, label %cbs_av1_write_subexp.exit, label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.be = sub i32 %i.h, %.054.i
  %i.bf = sub i32 %i.p, %.054.i
  %i.bg = tail call fastcc i32 @cbs_av1_write_ns(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %i.be, ptr noundef nonnull @.str.221, ptr noundef null, i32 noundef %i.bf) ; 2 uses
  %i.bh = icmp slt i32 %i.bg, 0
  br i1 %i.bh, label %cbs_av1_write_subexp.exit, label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.bi = load i32, ptr %i.q, align 4, !tbaa !19
  %.not71.i = icmp eq i32 %i.bi, 0
  br i1 %.not71.i, label %cbs_av1_write_subexp.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #9
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !80
  %i.bl = icmp slt i32 %.0.i, 0
  %spec.select.i78.i = select i1 %i.bl, ptr null, ptr %i.bk ; 3 uses
  %spec.select11.i.i = tail call i32 @llvm.smax.i32(i32 %.0.i, i32 0)
  %i.bm = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %spec.select.i78.i, ptr %i.bm, align 8, !tbaa !80
  %i.bn = zext nneg i32 %spec.select11.i.i to i64
  %i.bo = getelementptr inbounds nuw i8, ptr %spec.select.i78.i, i64 %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %i.bo, ptr %i.bp, align 8, !tbaa !77
  %i.bq = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.br = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 0, ptr %6, align 8, !tbaa !75
  %i.bs = lshr i32 %.0.i, 3
  %i.bt = and i32 %i.bs, 536870908
  %i.bu = zext nneg i32 %i.bt to i64
  %i.bv = getelementptr inbounds nuw i8, ptr %spec.select.i78.i, i64 %i.bu
  store ptr %i.bv, ptr %i.bq, align 8, !tbaa !78
  %i.bw = and i32 %.0.i, 31
  %i.bx = sub nuw nsw i32 32, %i.bw
  store i32 %i.bx, ptr %i.br, align 4, !tbaa !76
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !91
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !92
  %i.cc = zext nneg i32 %i.p to i64
  call void %i.bz(ptr noundef %i.cb, ptr noundef nonnull %6, i32 noundef 0, ptr noundef nonnull @.str.217, ptr noundef nonnull %i.a, i64 noundef %i.cc) #9, !inline_history !425
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  br label %cbs_av1_write_subexp.exit

cbs_av1_write_subexp.exit:                        ; preds = %bb.p, %bb.m, %bb.o, %bb.f, %bb.r, %bb.q
  %i.cd = phi i32 [ 0, %bb.r ], [ 0, %bb.q ], [ %i.bg, %bb.p ], [ %i.ay, %bb.m ], [ %i.bc, %bb.o ], [ -1094995529, %bb.f ]
  ret i32 %i.cd
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { cold nofree noreturn nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { nounwind }
attributes #10 = { noreturn nounwind }

!llvm.module.flags = !{!4, !5, !6}
!llvm.ident = !{!7}
!llvm.errno.tbaa = !{!12}

!0 = distinct !{!0, !79}
!1 = distinct !{!1, !79}
!2 = distinct !{!2, !79}
!3 = distinct !{!3, !79}
!4 = !{i32 8, !"PIC Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{i32 1, !"override-stack-alignment", i32 16}
!7 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"omnipotent char", !8, i64 0}
!10 = !{!"int", !9, i64 0}
!11 = !{!"__libc_errno", !10, i64 0}
!12 = !{!11, !10, i64 0}
!13 = !{!"any pointer", !9, i64 0}
!14 = !{!"p1 _ZTS18CodedBitstreamType", !13, i64 0}
!15 = !{!"p1 int", !13, i64 0}
!16 = !{!"p1 omnipotent char", !13, i64 0}
!17 = !{!"long", !9, i64 0}
!18 = !{!"CodedBitstreamContext", !13, i64 0, !14, i64 8, !13, i64 16, !15, i64 24, !10, i64 32, !10, i64 36, !10, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !16, i64 72, !17, i64 80}
!19 = !{!18, !10, i64 36}
!20 = !{!"p1 _ZTS11AVBufferRef", !13, i64 0}
!21 = !{!"p1 _ZTS18CodedBitstreamUnit", !13, i64 0}
!22 = !{!"CodedBitstreamFragment", !16, i64 0, !17, i64 8, !17, i64 16, !20, i64 24, !10, i64 32, !10, i64 36, !21, i64 40}
!23 = !{!22, !16, i64 0}
!24 = !{!22, !17, i64 8}
!25 = !{!18, !13, i64 0}
!26 = !{!9, !9, i64 0}
!27 = !{!"GetBitContext", !16, i64 0, !10, i64 8, !10, i64 12, !10, i64 16}
!28 = !{!27, !16, i64 0}
!29 = !{!27, !10, i64 12}
!30 = !{!27, !10, i64 16}
!31 = !{!27, !10, i64 8}
!32 = !{!"AV1RawOBUHeader", !9, i64 0, !9, i64 1, !9, i64 2, !9, i64 3, !9, i64 4, !9, i64 5, !9, i64 6, !9, i64 7}
!33 = !{!32, !9, i64 3}
!34 = !{!32, !9, i64 2}
!35 = !{!17, !17, i64 0}
!36 = !{!32, !9, i64 1}
!37 = !{!22, !20, i64 24}
!38 = !{!18, !13, i64 16}
!39 = !{!"CodedBitstreamUnit", !10, i64 0, !16, i64 8, !17, i64 16, !17, i64 24, !20, i64 32, !13, i64 40, !13, i64 48}
!40 = !{!39, !13, i64 40}
!41 = !{!39, !16, i64 8}
!42 = !{!39, !17, i64 16}
!43 = !{!"AV1RawOBU", !32, i64 0, !17, i64 8, !9, i64 16}
!44 = !{!43, !9, i64 1}
!45 = !{!43, !9, i64 3}
!46 = !{!43, !17, i64 8}
!47 = !{!"p1 _ZTS7AVClass", !13, i64 0}
!48 = !{!"p1 _ZTS20AV1RawSequenceHeader", !13, i64 0}
!49 = !{!"p1 _ZTS9AV1RawOBU", !13, i64 0}
!50 = !{!"CodedBitstreamAV1Context", !47, i64 0, !48, i64 8, !49, i64 16, !10, i64 24, !20, i64 32, !16, i64 40, !17, i64 48, !10, i64 56, !10, i64 60, !10, i64 64, !10, i64 68, !10, i64 72, !10, i64 76, !10, i64 80, !10, i64 84, !10, i64 88, !10, i64 92, !10, i64 96, !10, i64 100, !10, i64 104, !10, i64 108, !10, i64 112, !10, i64 116, !9, i64 120, !9, i64 152, !9, i64 184, !10, i64 2456, !10, i64 2460, !9, i64 2464, !9, i64 2472, !9, i64 2474, !9, i64 2538}
!51 = !{!50, !10, i64 64}
!52 = !{!50, !10, i64 56}
!53 = !{!50, !10, i64 60}
!54 = !{!"AV1RawTimingInfo", !10, i64 0, !10, i64 4, !9, i64 8, !10, i64 12}
!55 = !{!"AV1RawDecoderModelInfo", !9, i64 0, !10, i64 4, !9, i64 8, !9, i64 9}
!56 = !{!"short", !9, i64 0}
!57 = !{!"AV1RawColorConfig", !9, i64 0, !9, i64 1, !9, i64 2, !9, i64 3, !9, i64 4, !9, i64 5, !9, i64 6, !9, i64 7, !9, i64 8, !9, i64 9, !9, i64 10, !9, i64 11}
!58 = !{!"AV1RawSequenceHeader", !9, i64 0, !9, i64 1, !9, i64 2, !9, i64 3, !9, i64 4, !9, i64 5, !9, i64 6, !54, i64 8, !55, i64 24, !9, i64 36, !9, i64 100, !9, i64 132, !9, i64 164, !9, i64 196, !9, i64 324, !9, i64 452, !9, i64 484, !9, i64 516, !9, i64 548, !9, i64 549, !56, i64 550, !56, i64 552, !9, i64 554, !9, i64 555, !9, i64 556, !9, i64 557, !9, i64 558, !9, i64 559, !9, i64 560, !9, i64 561, !9, i64 562, !9, i64 563, !9, i64 564, !9, i64 565, !9, i64 566, !9, i64 567, !9, i64 568, !9, i64 569, !9, i64 570, !9, i64 571, !9, i64 572, !9, i64 573, !9, i64 574, !57, i64 575, !9, i64 587}
!59 = !{!58, !9, i64 6}
!60 = !{!56, !56, i64 0}
!61 = !{!39, !13, i64 48}
!62 = !{!50, !48, i64 8}
!63 = !{!50, !10, i64 24}
!64 = !{!39, !20, i64 32}
!65 = !{!10, !10, i64 0}
!66 = !{!20, !20, i64 0}
!67 = !{!16, !16, i64 0}
!68 = !{!50, !20, i64 32}
!69 = !{!32, !9, i64 0}
!70 = !{!32, !9, i64 4}
!71 = !{!32, !9, i64 5}
!72 = !{!32, !9, i64 6}
!73 = !{!32, !9, i64 7}
!74 = !{!"PutBitContext", !10, i64 0, !10, i64 4, !16, i64 8, !16, i64 16, !16, i64 24}
!75 = !{!74, !10, i64 0}
!76 = !{!74, !10, i64 4}
!77 = !{!74, !16, i64 24}
!78 = !{!74, !16, i64 16}
!79 = !{!"llvm.loop.mustprogress"}
!80 = !{!74, !16, i64 8}
!81 = !{!58, !9, i64 0}
!82 = !{!58, !9, i64 1}
!83 = !{!58, !9, i64 2}
!84 = !{!58, !9, i64 3}
!85 = !{!58, !9, i64 4}
!86 = !{!58, !9, i64 5}
!87 = !{!54, !10, i64 0}
!88 = !{!54, !10, i64 4}
!89 = !{!54, !9, i64 8}
!90 = !{!54, !10, i64 12}
!91 = !{!18, !13, i64 64}
!92 = !{!18, !13, i64 48}
!93 = !{!58, !9, i64 24}
!94 = !{!58, !9, i64 548}
!95 = !{!58, !9, i64 549}
!96 = !{!58, !56, i64 550}
!97 = !{!58, !56, i64 552}
!98 = !{!58, !9, i64 554}
!99 = !{!58, !9, i64 555}
!100 = !{!58, !9, i64 556}
!101 = !{!58, !9, i64 557}
!102 = !{!58, !9, i64 558}
!103 = !{!58, !9, i64 559}
!104 = !{!58, !9, i64 560}
!105 = !{!58, !9, i64 561}
!106 = !{!58, !9, i64 562}
!107 = !{!58, !9, i64 563}
!108 = !{!58, !9, i64 564}
!109 = !{!58, !9, i64 565}
!110 = !{!58, !9, i64 566}
!111 = !{!58, !9, i64 568}
!112 = !{!58, !9, i64 570}
!113 = !{!58, !9, i64 567}
!114 = !{!58, !9, i64 569}
!115 = !{!58, !9, i64 571}
!116 = !{!58, !9, i64 572}
!117 = !{!58, !9, i64 573}
!118 = !{!58, !9, i64 574}
!119 = !{!58, !9, i64 587}
!120 = !{!50, !10, i64 108}
!121 = !{!50, !10, i64 112}
!122 = !{!"AV1RawTileData", !16, i64 0, !20, i64 8, !17, i64 16}
!123 = !{!"AV1RawTileGroup", !16, i64 0, !20, i64 8, !17, i64 16, !9, i64 24, !56, i64 26, !56, i64 28, !122, i64 32}
!124 = !{!123, !9, i64 24}
!125 = !{!123, !56, i64 26}
!126 = !{!123, !56, i64 28}
!127 = !{!50, !10, i64 116}
!128 = !{!"AV1RawTileList", !9, i64 0, !9, i64 1, !56, i64 2, !122, i64 8}
!129 = !{!128, !9, i64 0}
!130 = !{!128, !9, i64 1}
!131 = !{!128, !56, i64 2}
!132 = !{!"AV1RawMetadata", !17, i64 0, !9, i64 8}
!133 = !{!132, !17, i64 0}
!134 = !{!"AV1RawMetadataHDRCLL", !56, i64 0, !56, i64 2}
!135 = !{!134, !56, i64 0}
!136 = !{!134, !56, i64 2}
!137 = !{!"AV1RawMetadataHDRMDCV", !9, i64 0, !9, i64 6, !56, i64 12, !56, i64 14, !10, i64 16, !10, i64 20}
!138 = !{!137, !56, i64 12}
!139 = !{!137, !56, i64 14}
!140 = !{!137, !10, i64 16}
!141 = !{!137, !10, i64 20}
!142 = !{!"AV1RawMetadataScalability", !9, i64 0, !9, i64 1, !9, i64 2, !9, i64 3, !9, i64 4, !9, i64 5, !9, i64 6, !9, i64 14, !9, i64 22, !9, i64 26, !9, i64 27, !9, i64 282, !9, i64 537, !9, i64 792, !9, i64 1047}
!143 = !{!142, !9, i64 0}
!144 = !{!142, !9, i64 1}
!145 = !{!142, !9, i64 2}
!146 = !{!142, !9, i64 3}
!147 = !{!142, !9, i64 4}
!148 = !{!142, !9, i64 5}
!149 = !{!142, !9, i64 26}
!150 = !{!"AV1RawMetadataITUTT35", !9, i64 0, !9, i64 1, !16, i64 8, !20, i64 16, !17, i64 24}
!151 = !{!150, !9, i64 0}
!152 = !{!150, !9, i64 1}
!153 = !{!150, !17, i64 24}
!154 = !{!150, !16, i64 8}
!155 = !{!"AV1RawMetadataTimecode", !9, i64 0, !9, i64 1, !9, i64 2, !9, i64 3, !56, i64 4, !9, i64 6, !9, i64 7, !9, i64 8, !9, i64 9, !9, i64 10, !9, i64 11, !9, i64 12, !10, i64 16}
!156 = !{!155, !9, i64 0}
!157 = !{!155, !9, i64 1}
!158 = !{!155, !9, i64 2}
!159 = !{!155, !9, i64 3}
!160 = !{!155, !56, i64 4}
!161 = !{!155, !9, i64 6}
!162 = !{!155, !9, i64 7}
!163 = !{!155, !9, i64 8}
!164 = !{!155, !9, i64 9}
!165 = !{!155, !9, i64 10}
!166 = !{!155, !9, i64 11}
!167 = !{!155, !9, i64 12}
!168 = !{!155, !10, i64 16}
!169 = !{!"AV1RawMetadataUnknown", !16, i64 0, !20, i64 8, !17, i64 16}
!170 = !{!169, !17, i64 16}
!171 = !{!169, !16, i64 0}
!172 = !{!"AV1RawPadding", !16, i64 0, !20, i64 8, !17, i64 16}
!173 = !{!172, !17, i64 16}
!174 = !{!172, !16, i64 0}
!175 = !{!"p1 _ZTS8AVBuffer", !13, i64 0}
!176 = !{!"AVBufferRef", !175, i64 0, !16, i64 8, !17, i64 16}
!177 = !{!176, !16, i64 8}
!178 = !{!50, !16, i64 40}
!179 = !{i64 0, i64 8, !67, i64 8, i64 4, !65, i64 12, i64 4, !65, i64 16, i64 4, !65}
!180 = !{!18, !13, i64 56}
!181 = !{!50, !17, i64 48}
!182 = !{!"AV1RawFilmGrainParams", !9, i64 0, !56, i64 2, !9, i64 4, !9, i64 5, !9, i64 6, !9, i64 7, !9, i64 21, !9, i64 35, !9, i64 36, !9, i64 37, !9, i64 47, !9, i64 57, !9, i64 58, !9, i64 68, !9, i64 78, !9, i64 79, !9, i64 80, !9, i64 104, !9, i64 129, !9, i64 154, !9, i64 155, !9, i64 156, !9, i64 157, !56, i64 158, !9, i64 160, !9, i64 161, !56, i64 162, !9, i64 164, !9, i64 165}
!183 = !{!"AV1RawFrameHeader", !9, i64 0, !9, i64 1, !10, i64 4, !10, i64 8, !9, i64 12, !9, i64 13, !9, i64 14, !9, i64 15, !9, i64 16, !9, i64 17, !9, i64 18, !10, i64 20, !9, i64 24, !9, i64 25, !9, i64 26, !9, i64 28, !9, i64 156, !56, i64 158, !56, i64 160, !9, i64 162, !9, i64 163, !9, i64 164, !56, i64 166, !56, i64 168, !9, i64 170, !9, i64 177, !9, i64 178, !9, i64 179, !9, i64 187, !9, i64 188, !9, i64 189, !9, i64 190, !9, i64 200, !9, i64 228, !9, i64 229, !9, i64 230, !9, i64 231, !9, i64 232, !9, i64 233, !9, i64 234, !9, i64 235, !9, i64 236, !9, i64 237, !9, i64 301, !9, i64 365, !9, i64 429, !56, i64 494, !9, i64 496, !56, i64 498, !56, i64 500, !9, i64 502, !9, i64 503, !9, i64 504, !9, i64 505, !9, i64 506, !9, i64 507, !9, i64 508, !9, i64 509, !9, i64 510, !9, i64 511, !9, i64 512, !9, i64 513, !9, i64 514, !9, i64 515, !9, i64 516, !9, i64 517, !9, i64 582, !9, i64 710, !9, i64 711, !9, i64 712, !9, i64 713, !9, i64 714, !9, i64 715, !9, i64 719, !9, i64 720, !9, i64 721, !9, i64 722, !9, i64 730, !9, i64 738, !9, i64 740, !9, i64 742, !9, i64 743, !9, i64 744, !9, i64 752, !9, i64 760, !9, i64 768, !9, i64 776, !9, i64 779, !9, i64 780, !9, i64 781, !9, i64 782, !9, i64 783, !9, i64 784, !9, i64 785, !9, i64 786, !9, i64 794, !9, i64 802, !9, i64 812, !182, i64 1004}
end_hunk_2
