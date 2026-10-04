Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stb/original/stb_vorbis?download=true
inline.NumInlined: 339
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 35
loop-unroll.NumUnrolled: 47
begin_hunk_0_@inverse_mdct:bb.a
  %i.ws = getelementptr inbounds i8, ptr %.pn414486, i64 -12
  %i.wt = load float, ptr %i.ws, align 4, !tbaa !63 ; 2 uses
  %i.wu = getelementptr inbounds i8, ptr %.pn485, i64 -16
  %i.wv = load float, ptr %i.wu, align 4, !tbaa !63 ; 2 uses
  %i.ww = fneg float %i.wv
  %i.wx = fmul float %i.wt, %i.ww
  %i.wy = call float @llvm.fmuladd.f32(float %i.wp, float %i.wr, float %i.wx) ; 2 uses
  %i.wz = fneg float %i.wp
  %i.xa = fneg float %i.wr
  %i.xb = fmul float %i.wt, %i.xa
  %i.xc = call float @llvm.fmuladd.f32(float %i.wz, float %i.wv, float %i.xb) ; 2 uses
  %i.xd = getelementptr inbounds nuw i8, ptr %.0384481, i64 4
  store float %i.wy, ptr %i.xd, align 4, !tbaa !63
  %i.xe = fneg float %i.wy
  %i.xf = getelementptr inbounds nuw i8, ptr %.0383482, i64 8
  store float %i.xe, ptr %i.xf, align 4, !tbaa !63
  %i.xg = getelementptr inbounds nuw i8, ptr %.0382483, i64 4
  store float %i.xc, ptr %i.xg, align 4, !tbaa !63
  %i.xh = getelementptr i8, ptr %.pn415484, i64 -8
  store float %i.xc, ptr %i.xh, align 4, !tbaa !63
  %i.xi = getelementptr inbounds i8, ptr %.pn414486, i64 -24
  %i.xj = load float, ptr %i.xi, align 4, !tbaa !63 ; 2 uses
  %i.xk = getelementptr inbounds i8, ptr %.pn485, i64 -20
  %i.xl = load float, ptr %i.xk, align 4, !tbaa !63 ; 2 uses
  %i.xm = getelementptr inbounds i8, ptr %.pn414486, i64 -20
  %i.xn = load float, ptr %i.xm, align 4, !tbaa !63 ; 2 uses
  %i.xo = getelementptr inbounds i8, ptr %.pn485, i64 -24
  %i.xp = load float, ptr %i.xo, align 4, !tbaa !63 ; 2 uses
  %i.xq = fneg float %i.xp
  %i.xr = fmul float %i.xn, %i.xq
  %i.xs = call float @llvm.fmuladd.f32(float %i.xj, float %i.xl, float %i.xr) ; 2 uses
  %i.xt = fneg float %i.xj
  %i.xu = fneg float %i.xl
  %i.xv = fmul float %i.xn, %i.xu
  %i.xw = call float @llvm.fmuladd.f32(float %i.xt, float %i.xp, float %i.xv) ; 2 uses
  %i.xx = getelementptr inbounds nuw i8, ptr %.0384481, i64 8
  store float %i.xs, ptr %i.xx, align 4, !tbaa !63
  %i.xy = fneg float %i.xs
  %i.xz = getelementptr inbounds nuw i8, ptr %.0383482, i64 4
  store float %i.xy, ptr %i.xz, align 4, !tbaa !63
  %i.ya = getelementptr inbounds nuw i8, ptr %.0382483, i64 8
  store float %i.xw, ptr %i.ya, align 4, !tbaa !63
  %i.yb = getelementptr i8, ptr %.pn415484, i64 -12
  store float %i.xw, ptr %i.yb, align 4, !tbaa !63
  %i.yc = load float, ptr %.0379487, align 4, !tbaa !63 ; 2 uses
  %i.yd = getelementptr inbounds i8, ptr %.pn485, i64 -28
  %i.ye = load float, ptr %i.yd, align 4, !tbaa !63 ; 2 uses
  %i.yf = getelementptr inbounds i8, ptr %.pn414486, i64 -28
  %i.yg = load float, ptr %i.yf, align 4, !tbaa !63 ; 2 uses
  %i.yh = load float, ptr %.0380, align 4, !tbaa !63 ; 2 uses
  %i.yi = fneg float %i.yh
  %i.yj = fmul float %i.yg, %i.yi
  %i.yk = call float @llvm.fmuladd.f32(float %i.yc, float %i.ye, float %i.yj) ; 2 uses
  %i.yl = fneg float %i.yc
  %i.ym = fneg float %i.ye
  %i.yn = fmul float %i.yg, %i.ym
  %i.yo = call float @llvm.fmuladd.f32(float %i.yl, float %i.yh, float %i.yn) ; 2 uses
  %i.yp = getelementptr inbounds nuw i8, ptr %.0384481, i64 12
  store float %i.yk, ptr %i.yp, align 4, !tbaa !63
  %i.yq = fneg float %i.yk
  store float %i.yq, ptr %.0383482, align 4, !tbaa !63
  %i.yr = getelementptr inbounds nuw i8, ptr %.0382483, i64 12
  store float %i.yo, ptr %i.yr, align 4, !tbaa !63
  store float %i.yo, ptr %.0381, align 4, !tbaa !63
  %i.ys = getelementptr inbounds nuw i8, ptr %.0384481, i64 16
  %i.yt = getelementptr inbounds nuw i8, ptr %.0382483, i64 16
  %i.yu = getelementptr inbounds i8, ptr %.0383482, i64 -16
  %.0379 = getelementptr inbounds i8, ptr %.0379487, i64 -32 ; 2 uses
  %.not413 = icmp ult ptr %.0379, %i.t
  br i1 %.not413, label %._crit_edge490, label %.lr.ph489, !llvm.loop !254

._crit_edge490:                                   ; preds = %.lr.ph489, %._crit_edge478
  store i32 %i.e, ptr %i.d, align 4, !tbaa !45
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define ptr @get_window(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #15 {
bb.a:
  %i.a = shl i32 %1, 1                            ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.c = load i32, ptr %i.b, align 8, !tbaa !106
  %i.d = icmp eq i32 %i.a, %i.c
  br i1 %i.d, label %.sink.split, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 172
  %i.f = load i32, ptr %i.e, align 4, !tbaa !107
  %i.g = icmp eq i32 %i.a, %i.f
  br i1 %i.g, label %.sink.split, label %bb.c

.sink.split:                                      ; preds = %bb.b, %bb.a
  %.sink9 = phi i64 [ 1464, %bb.a ], [ 1472, %bb.b ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 %.sink9
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !64
  br label %bb.c

bb.c:                                             ; preds = %.sink.split, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ %i.i, %.sink.split ]
  ret ptr %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 2) i32 @do_floor(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef captures(none) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree readnone captures(none) %6) local_unnamed_addr #14 {
bb.a:
  %i.a = ashr i32 %3, 1                           ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !109
  %i.d = sext i32 %2 to i64
  %i.e = getelementptr inbounds [3 x i8], ptr %i.c, i64 %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  %i.g = load i8, ptr %i.f, align 1, !tbaa !111
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 17
  %i.i = zext i8 %i.g to i64
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.i
  %i.k = load i8, ptr %i.j, align 1, !tbaa !49
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 196
  %i.m = zext i8 %i.k to i64                      ; 2 uses
  %i.n = getelementptr inbounds nuw [2 x i8], ptr %i.l, i64 %i.m
  %i.o = load i16, ptr %i.n, align 2, !tbaa !58
  %i.p = icmp eq i16 %i.o, 0
  br i1 %i.p, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 156
  store i32 21, ptr %i.q, align 4
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !112
  %i.t = getelementptr inbounds nuw [1596 x i8], ptr %i.s, i64 %i.m ; 4 uses
  %i.u = load i16, ptr %5, align 2, !tbaa !58
  %i.v = sext i16 %i.u to i32
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 1588
  %i.x = load i8, ptr %i.w, align 4, !tbaa !114
  %i.y = zext i8 %i.x to i32                      ; 2 uses
  %i.z = mul nsw i32 %i.y, %i.v                   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 1592
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !115 ; 2 uses
  %i.ac = icmp sgt i32 %i.ab, 1
  br i1 %i.ac, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %i.t, i64 838
  %i.ae = getelementptr inbounds nuw i8, ptr %i.t, i64 338
  %wide.trip.count = zext nneg i32 %i.ab to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %draw_line.exit
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %draw_line.exit ] ; 2 uses
  %.053 = phi i32 [ %i.z, %.lr.ph ], [ %.1, %draw_line.exit ] ; 4 uses
  %.04352 = phi i32 [ 0, %.lr.ph ], [ %.144, %draw_line.exit ] ; 7 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 %indvars.iv
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !49
  %i.ah = zext i8 %i.ag to i64                    ; 2 uses
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %5, i64 %i.ah
  %i.aj = load i16, ptr %i.ai, align 2, !tbaa !58 ; 2 uses
  %i.ak = icmp sgt i16 %i.aj, -1
  br i1 %i.ak, label %bb.e, label %draw_line.exit

bb.e:                                             ; preds = %bb.d
  %i.al = zext nneg i16 %i.aj to i32
  %i.am = mul nuw nsw i32 %i.al, %i.y             ; 5 uses
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %i.ae, i64 %i.ah
  %i.ao = load i16, ptr %i.an, align 2, !tbaa !58
  %i.ap = zext i16 %i.ao to i32                   ; 6 uses
  %.not = icmp eq i32 %.04352, %i.ap
  br i1 %.not, label %draw_line.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aq = sub nsw i32 %i.am, %.053                ; 3 uses
  %i.ar = sub nsw i32 %i.ap, %.04352              ; 4 uses
  %i.as = tail call i32 @llvm.abs.i32(i32 %i.aq, i1 true)
  %i.at = sdiv i32 %i.aq, %i.ar                   ; 2 uses
  %.inv.i = icmp sgt i32 %i.aq, -1
  %.0.v.i = select i1 %.inv.i, i32 1, i32 -1
  %i.au = tail call i32 @llvm.abs.i32(i32 %i.at, i1 true)
  %i.av = mul nsw i32 %i.au, %i.ar
  %i.aw = sub nsw i32 %i.as, %i.av
  %.043.i = tail call i32 @llvm.smin.i32(i32 %i.ap, i32 %i.a) ; 3 uses
  %i.ax = icmp slt i32 %.04352, %.043.i
  br i1 %i.ax, label %bb.g, label %draw_line.exit

bb.g:                                             ; preds = %bb.f
  %i.ay = and i32 %.053, 255
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr @inverse_db_table, i64 %i.az
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !63
  %i.bc = zext nneg i32 %.04352 to i64            ; 2 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.bc ; 2 uses
  %i.be = load float, ptr %i.bd, align 4, !tbaa !63
  %i.bf = fmul float %i.bb, %i.be
  store float %i.bf, ptr %i.bd, align 4, !tbaa !63
  %.04250.i = add nuw nsw i32 %.04352, 1
  %i.bg = icmp slt i32 %.04250.i, %.043.i
  br i1 %i.bg, label %.lr.ph.preheader.i, label %draw_line.exit

.lr.ph.preheader.i:                               ; preds = %bb.g
  %i.bh = add nuw nsw i64 %i.bc, 1
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ %i.bh, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i ] ; 2 uses
  %.03952.i = phi i32 [ 0, %.lr.ph.preheader.i ], [ %.1.i, %.lr.ph.i ]
  %.04051.i = phi i32 [ %.053, %.lr.ph.preheader.i ], [ %.141.i, %.lr.ph.i ]
  %i.bi = add nsw i32 %.03952.i, %i.aw            ; 2 uses
  %.not.i = icmp slt i32 %i.bi, %i.ar             ; 2 uses
  %.0.i = select i1 %.not.i, i32 0, i32 %.0.v.i
  %i.bj = select i1 %.not.i, i32 0, i32 %i.ar
  %.1.i = sub nsw i32 %i.bi, %i.bj
  %.0.pn.i = add i32 %.04051.i, %i.at
  %.141.i = add i32 %.0.pn.i, %.0.i               ; 2 uses
  %i.bk = and i32 %.141.i, 255
  %i.bl = zext nneg i32 %i.bk to i64
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr @inverse_db_table, i64 %i.bl
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !63
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.i ; 2 uses
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !63
  %i.bq = fmul float %i.bn, %i.bp
  store float %i.bq, ptr %i.bo, align 4, !tbaa !63
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next.i to i32
  %exitcond.not.i = icmp eq i32 %.043.i, %lftr.wideiv.i
  br i1 %exitcond.not.i, label %draw_line.exit, label %.lr.ph.i, !llvm.loop !259

draw_line.exit:                                   ; preds = %.lr.ph.i, %bb.g, %bb.f, %bb.e, %bb.d
  %.144 = phi i32 [ %.04352, %bb.d ], [ %.04352, %bb.e ], [ %i.ap, %bb.f ], [ %i.ap, %bb.g ], [ %i.ap, %.lr.ph.i ] ; 2 uses
  %.1 = phi i32 [ %.053, %bb.d ], [ %i.am, %bb.e ], [ %i.am, %bb.f ], [ %i.am, %bb.g ], [ %i.am, %.lr.ph.i ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !260

._crit_edge:                                      ; preds = %draw_line.exit, %bb.c
  %.043.lcssa = phi i32 [ 0, %bb.c ], [ %.144, %draw_line.exit ] ; 2 uses
  %.0.lcssa = phi i32 [ %i.z, %bb.c ], [ %.1, %draw_line.exit ]
  %i.br = icmp slt i32 %.043.lcssa, %i.a
  br i1 %i.br, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %._crit_edge
  %i.bs = sext i32 %.0.lcssa to i64               ; 2 uses
  %i.bt = getelementptr inbounds [4 x i8], ptr @inverse_db_table, i64 %i.bs ; 7 uses
  %i.bu = zext i32 %.043.lcssa to i64             ; 6 uses
  %wide.trip.count60 = zext nneg i32 %i.a to i64  ; 5 uses
  %i.bv = sub nsw i64 %wide.trip.count60, %i.bu   ; 3 uses
  %min.iters.check = icmp ult i64 %i.bv, 12
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader
  %i.bw = shl nuw nsw i64 %i.bu, 2
  %i.bx = getelementptr i8, ptr %4, i64 %i.bw
  %i.by = shl nuw nsw i64 %wide.trip.count60, 2
  %i.bz = getelementptr i8, ptr %4, i64 %i.by
  %i.ca = shl nsw i64 %i.bs, 2
  %i.cb = getelementptr i8, ptr @inverse_db_table, i64 %i.ca
  %i.cc = getelementptr i8, ptr %i.cb, i64 4
  %bound0 = icmp ult ptr %i.bx, %i.cc
  %bound1 = icmp ult ptr %i.bt, %i.bz
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bv, -8                      ; 3 uses
  %i.cd = add nsw i64 %n.vec, %i.bu
  %i.ce = load float, ptr %i.bt, align 4, !tbaa !63, !alias.scope !267
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.ce, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %4, i64 %i.bu
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %gep, i64 16 ; 2 uses
  %wide.load = load <4 x float>, ptr %gep, align 4, !tbaa !63, !alias.scope !268, !noalias !267
  %wide.load67 = load <4 x float>, ptr %i.cf, align 4, !tbaa !63, !alias.scope !268, !noalias !267
  %i.cg = fmul <4 x float> %broadcast.splat, %wide.load
  %i.ch = fmul <4 x float> %broadcast.splat, %wide.load67
  store <4 x float> %i.cg, ptr %gep, align 4, !tbaa !63, !alias.scope !268, !noalias !267
  store <4 x float> %i.ch, ptr %i.cf, align 4, !tbaa !63, !alias.scope !268, !noalias !267
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ci = icmp eq i64 %index.next, %n.vec
  br i1 %i.ci, label %middle.block, label %vector.body, !llvm.loop !264

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bv, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader, %middle.block
  %indvars.iv57.ph = phi i64 [ %i.bu, %vector.memcheck ], [ %i.bu, %.preheader ], [ %i.cd, %middle.block ] ; 4 uses
  %i.cj = sub nsw i64 %wide.trip.count60, %indvars.iv57.ph
  %xtraiter = and i64 %i.cj, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv57.prol = phi i64 [ %indvars.iv.next58.prol, %scalar.ph.prol ], [ %indvars.iv57.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ck = load float, ptr %i.bt, align 4, !tbaa !63
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv57.prol ; 2 uses
  %i.cm = load float, ptr %i.cl, align 4, !tbaa !63
  %i.cn = fmul float %i.ck, %i.cm
  store float %i.cn, ptr %i.cl, align 4, !tbaa !63
  %indvars.iv.next58.prol = add nuw nsw i64 %indvars.iv57.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !265

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv57.unr = phi i64 [ %indvars.iv57.ph, %scalar.ph.preheader ], [ %indvars.iv.next58.prol, %scalar.ph.prol ]
  %i.co = sub nsw i64 %indvars.iv57.ph, %wide.trip.count60
  %i.cp = icmp ugt i64 %i.co, -4
  br i1 %i.cp, label %.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv57 = phi i64 [ %indvars.iv.next58.3, %scalar.ph ], [ %indvars.iv57.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.cq = load float, ptr %i.bt, align 4, !tbaa !63
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv57 ; 2 uses
  %i.cs = load float, ptr %i.cr, align 4, !tbaa !63
  %i.ct = fmul float %i.cq, %i.cs
  store float %i.ct, ptr %i.cr, align 4, !tbaa !63
  %i.cu = load float, ptr %i.bt, align 4, !tbaa !63
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv57
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 4 ; 2 uses
  %i.cx = load float, ptr %i.cw, align 4, !tbaa !63
  %i.cy = fmul float %i.cu, %i.cx
  store float %i.cy, ptr %i.cw, align 4, !tbaa !63
  %i.cz = load float, ptr %i.bt, align 4, !tbaa !63
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv57
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8 ; 2 uses
  %i.dc = load float, ptr %i.db, align 4, !tbaa !63
  %i.dd = fmul float %i.cz, %i.dc
  store float %i.dd, ptr %i.db, align 4, !tbaa !63
  %i.de = load float, ptr %i.bt, align 4, !tbaa !63
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv57
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 12 ; 2 uses
  %i.dh = load float, ptr %i.dg, align 4, !tbaa !63
  %i.di = fmul float %i.de, %i.dh
  store float %i.di, ptr %i.dg, align 4, !tbaa !63
  %indvars.iv.next58.3 = add nuw nsw i64 %indvars.iv57, 4 ; 2 uses
  %exitcond61.not.3 = icmp eq i64 %indvars.iv.next58.3, %wide.trip.count60
  br i1 %exitcond61.not.3, label %.loopexit, label %scalar.ph, !llvm.loop !266

.loopexit:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %._crit_edge, %bb.b
  %.047 = phi i32 [ 0, %bb.b ], [ 1, %._crit_edge ], [ 1, %middle.block ], [ 1, %scalar.ph ], [ 1, %scalar.ph.prol.loopexit ]
  ret i32 %.047
}

; Function Attrs: nofree nounwind uwtable
define range(i32 0, 2) i32 @vorbis_decode_initial(ptr nofree noundef captures(none) initializes((1892, 1900)) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef writeonly captures(none) %4, ptr nofree noundef writeonly captures(none) %5) local_unnamed_addr #16 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1896
  store i32 0, ptr %i.a, align 8, !tbaa !116
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1892
  store i32 0, ptr %i.b, align 4, !tbaa !117
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 4 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !71
  %.not89 = icmp eq i32 %i.d, 0
  br i1 %.not89, label %.lr.ph, label %.loopexit79

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1784 ; 16 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1780 ; 14 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1764 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1772 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1768 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1504 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1776 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1763
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1508
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1788 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 156 ; 3 uses
  br label %bb.b

.critedge:                                        ; preds = %next_segment.exit.i, %bb.i, %.loopexit, %bb.m
  store i32 0, ptr %i.e, align 8, !tbaa !83
  %i.t = load i32, ptr %i.c, align 8, !tbaa !71
  %.not = icmp eq i32 %i.t, 0
  br i1 %.not, label %bb.b, label %.loopexit79

bb.b:                                             ; preds = %.lr.ph, %.critedge
  %i.u = tail call i32 @maybe_start_packet(ptr noundef nonnull %0)
  %.not54 = icmp eq i32 %i.u, 0
  br i1 %.not54, label %.loopexit79, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = load i32, ptr %i.e, align 8, !tbaa !83   ; 3 uses
  %i.w = icmp slt i32 %i.v, 0
  br i1 %i.w, label %get_bits.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = icmp eq i32 %i.v, 0
  br i1 %i.x, label %.lr.ph.i, label %.get_bits.exit_crit_edge

.get_bits.exit_crit_edge:                         ; preds = %bb.d
  %.pre = load i32, ptr %i.f, align 4, !tbaa !87
  br label %get_bits.exit

.lr.ph.i:                                         ; preds = %bb.d
  store i32 0, ptr %i.f, align 4, !tbaa !87
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %.lr.ph.i
  %i.y = tail call i32 @get8_packet_raw(ptr noundef nonnull %0), !inline_history !88 ; 2 uses
  %.not.i = icmp eq i32 %i.y, -1
  br i1 %.not.i, label %.critedge.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = load i32, ptr %i.e, align 8, !tbaa !83   ; 3 uses
  %i.aa = shl i32 %i.y, %i.z
  %i.ab = load i32, ptr %i.f, align 4, !tbaa !87
  %i.ac = add i32 %i.ab, %i.aa                    ; 2 uses
  store i32 %i.ac, ptr %i.f, align 4, !tbaa !87
  %i.ad = add nsw i32 %i.z, 8                     ; 2 uses
  store i32 %i.ad, ptr %i.e, align 8, !tbaa !83
  %i.ae = icmp slt i32 %i.z, -7
  br i1 %i.ae, label %bb.e, label %get_bits.exit, !llvm.loop !7

.critedge.i:                                      ; preds = %bb.e
  store i32 -1, ptr %i.e, align 8, !tbaa !83
end_hunk_0
