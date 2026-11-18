Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libwebp/original/quant_levels_dec_utils?download=true
inline.NumInlined: 8
inline.NumDeleted: 8
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@WebPDequantizeLevels:bb.a
  %i.eq = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %indvars.iv.next.i
  store i16 %i.ep, ptr %i.eq, align 2, !tbaa !33
  store i16 %i.em, ptr %i.en, align 2, !tbaa !33
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !12

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %.lr.ph.i
  br i1 %lcmp.mod.not, label %._crit_edge.i.loopexit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.1, %._crit_edge.i.loopexit.unr-lcssa ] ; 4 uses
  %.03437.i.epil.init = phi i16 [ 0, %.lr.ph.preheader.i ], [ %i.ej, %._crit_edge.i.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod203)
  %i.er = getelementptr inbounds nuw i8, ptr %.sroa.20.096, i64 %indvars.iv.i.epil.init
  %i.es = load i8, ptr %i.er, align 1, !tbaa !30
  %i.et = zext i8 %i.es to i16
  %i.eu = add i16 %.03437.i.epil.init, %i.et
  %i.ev = getelementptr inbounds nuw [2 x i8], ptr %.sroa.43.099, i64 %indvars.iv.i.epil.init
  %i.ew = load i16, ptr %i.ev, align 2, !tbaa !33
  %i.ex = add i16 %i.eu, %i.ew                    ; 2 uses
  %i.ey = getelementptr inbounds nuw [2 x i8], ptr %.sroa.36.098, i64 %indvars.iv.i.epil.init ; 2 uses
  %i.ez = load i16, ptr %i.ey, align 2, !tbaa !33
  %i.fa = sub i16 %i.ex, %i.ez
  %i.fb = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %indvars.iv.i.epil.init
  store i16 %i.fa, ptr %i.fb, align 2, !tbaa !33
  store i16 %i.ex, ptr %i.ey, align 2, !tbaa !33
  br label %._crit_edge.i.loopexit

._crit_edge.i.loopexit:                           ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.i.epil.preheader
  %i.fc = getelementptr inbounds nuw [2 x i8], ptr %.sroa.36.098, i64 %i.s ; 2 uses
  %i.fd = icmp eq ptr %i.fc, %i.ab
  %spec.select87 = select i1 %i.fd, ptr %i.w, ptr %i.fc
  %i.fe = icmp sgt i32 %.sroa.14.095, -1
  %i.ff = icmp slt i32 %.sroa.14.095, %i.j
  %or.cond89 = select i1 %i.fe, i1 %i.ff, i1 false
  %.sroa.20.2.idx = select i1 %or.cond89, i64 %i.ae, i64 0
  %.sroa.20.2 = getelementptr inbounds i8, ptr %.sroa.20.096, i64 %.sroa.20.2.idx
  %.not32 = icmp slt i32 %.sroa.14.095, %.1
  br i1 %.not32, label %bb.t, label %.lr.ph.i35.preheader

.lr.ph.i35.preheader:                             ; preds = %._crit_edge.i.loopexit
  %brmerge = select i1 %min.iters.check176, i1 true, i1 %conflict.rdx184
  br i1 %brmerge, label %.lr.ph.i35.preheader201, label %vector.body189

vector.body189:                                   ; preds = %.lr.ph.i35.preheader, %vector.body189
  %index190 = phi i64 [ %index.next194, %vector.body189 ], [ 0, %.lr.ph.i35.preheader ] ; 4 uses
  %i.fg = getelementptr [2 x i8], ptr %invariant.gep.i, i64 %index190
  %i.fh = getelementptr i8, ptr %i.fg, i64 -2
  %wide.load191 = load <8 x i16>, ptr %i.fh, align 2, !tbaa !33, !alias.scope !34
  %i.fi = sub nuw nsw i64 %i.ch, %index190
  %i.fj = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %i.fi
  %i.fk = getelementptr inbounds i8, ptr %i.fj, i64 -14
  %wide.load192 = load <8 x i16>, ptr %i.fk, align 2, !tbaa !33, !alias.scope !35
  %reverse193 = shufflevector <8 x i16> %wide.load192, <8 x i16> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.fl = add <8 x i16> %reverse193, %wide.load191
  %i.fm = zext <8 x i16> %i.fl to <8 x i32>
  %i.fn = mul nuw nsw <8 x i32> %broadcast.splat188, %i.fm
  %i.fo = lshr <8 x i32> %i.fn, splat (i32 16)
  %i.fp = trunc nuw nsw <8 x i32> %i.fo to <8 x i16>
  %i.fq = getelementptr inbounds nuw [2 x i8], ptr %i.bi, i64 %index190
  store <8 x i16> %i.fp, ptr %i.fq, align 2, !tbaa !33, !alias.scope !36, !noalias !37
  %index.next194 = add nuw i64 %index190, 8       ; 2 uses
  %i.fr = icmp eq i64 %index.next194, %n.vec186
  br i1 %i.fr, label %middle.block195, label %vector.body189, !llvm.loop !17

middle.block195:                                  ; preds = %vector.body189
  br i1 %cmp.n196, label %.preheader53.i, label %.lr.ph.i35.preheader201

.lr.ph.i35.preheader201:                          ; preds = %.lr.ph.i35.preheader, %middle.block195
  %indvars.iv.i36.ph = phi i64 [ %n.vec186, %middle.block195 ], [ 0, %.lr.ph.i35.preheader ] ; 6 uses
  br i1 %lcmp.mod205.not, label %.lr.ph.i35.prol.loopexit, label %.lr.ph.i35.prol

.lr.ph.i35.prol:                                  ; preds = %.lr.ph.i35.preheader201
  %gep.i.prol = getelementptr [2 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i36.ph
  %i.fs = getelementptr i8, ptr %gep.i.prol, i64 -2
  %i.ft = load i16, ptr %i.fs, align 2, !tbaa !33
  %i.fu = sub nuw nsw i64 %i.ch, %indvars.iv.i36.ph
  %i.fv = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %i.fu
  %i.fw = load i16, ptr %i.fv, align 2, !tbaa !33
  %i.fx = add i16 %i.fw, %i.ft
  %i.fy = zext i16 %i.fx to i32
  %i.fz = mul nuw nsw i32 %i.ce, %i.fy
  %i.ga = lshr i32 %i.fz, 16
  %i.gb = trunc nuw nsw i32 %i.ga to i16
  %i.gc = getelementptr inbounds nuw [2 x i8], ptr %i.bi, i64 %indvars.iv.i36.ph
  store i16 %i.gb, ptr %i.gc, align 2, !tbaa !33
  %indvars.iv.next.i37.prol = or disjoint i64 %indvars.iv.i36.ph, 1
  br label %.lr.ph.i35.prol.loopexit

.lr.ph.i35.prol.loopexit:                         ; preds = %.lr.ph.i35.prol, %.lr.ph.i35.preheader201
  %indvars.iv.i36.unr = phi i64 [ %indvars.iv.i36.ph, %.lr.ph.i35.preheader201 ], [ %indvars.iv.next.i37.prol, %.lr.ph.i35.prol ]
  %i.gd = icmp eq i64 %indvars.iv.i36.ph, %i.dm
  br i1 %i.gd, label %.preheader53.i, label %.lr.ph.i35

.preheader53.i:                                   ; preds = %.lr.ph.i35.prol.loopexit, %.lr.ph.i35, %middle.block195
  br i1 %i.ck, label %.lr.ph57.i.preheader, label %.preheader.i

.lr.ph57.i.preheader:                             ; preds = %.preheader53.i
  %or.cond199.not = xor i1 %or.cond199, true
  %brmerge208 = select i1 %or.cond199.not, i1 true, i1 %conflict.rdx144
  br i1 %brmerge208, label %.lr.ph57.i.preheader200, label %vector.body149

vector.body149:                                   ; preds = %.lr.ph57.i.preheader, %vector.body149
  %index150 = phi i64 [ %index.next153, %vector.body149 ], [ 0, %.lr.ph57.i.preheader ] ; 2 uses
  %i.ge = add nuw i64 %index150, %wide.trip.count.i34 ; 3 uses
  %i.gf = getelementptr [2 x i8], ptr %invariant.gep.i, i64 %i.ge
  %wide.load151 = load <8 x i16>, ptr %i.gf, align 2, !tbaa !33
  %i.gg = trunc nuw nsw i64 %i.ge to i32
  %i.gh = add i32 %i.gg, %i.cl
  %i.gi = sext i32 %i.gh to i64
  %i.gj = getelementptr inbounds [2 x i8], ptr %i.ab, i64 %i.gi
  %wide.load152 = load <8 x i16>, ptr %i.gj, align 2, !tbaa !33
  %i.gk = sub <8 x i16> %wide.load151, %wide.load152
  %i.gl = zext <8 x i16> %i.gk to <8 x i32>
  %i.gm = mul nuw nsw <8 x i32> %broadcast.splat148, %i.gl
  %i.gn = lshr <8 x i32> %i.gm, splat (i32 16)
  %i.go = trunc nuw nsw <8 x i32> %i.gn to <8 x i16>
  %i.gp = getelementptr inbounds nuw [2 x i8], ptr %i.bi, i64 %i.ge
  store <8 x i16> %i.go, ptr %i.gp, align 2, !tbaa !33
  %index.next153 = add nuw i64 %index150, 8       ; 2 uses
  %i.gq = icmp eq i64 %index.next153, %n.vec146
  br i1 %i.gq, label %middle.block154, label %vector.body149, !llvm.loop !18

middle.block154:                                  ; preds = %vector.body149
  br i1 %cmp.n155, label %.preheader.loopexit.i, label %.lr.ph57.i.preheader200

.lr.ph57.i.preheader200:                          ; preds = %.lr.ph57.i.preheader, %middle.block154
  %indvars.iv63.i.ph = phi i64 [ %i.du, %middle.block154 ], [ %wide.trip.count.i34, %.lr.ph57.i.preheader ]
  br label %.lr.ph57.i

.lr.ph.i35:                                       ; preds = %.lr.ph.i35.prol.loopexit, %.lr.ph.i35
  %indvars.iv.i36 = phi i64 [ %indvars.iv.next.i37.1, %.lr.ph.i35 ], [ %indvars.iv.i36.unr, %.lr.ph.i35.prol.loopexit ] ; 5 uses
  %gep.i = getelementptr [2 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i36
  %i.gr = getelementptr i8, ptr %gep.i, i64 -2
  %i.gs = load i16, ptr %i.gr, align 2, !tbaa !33
  %i.gt = sub nuw nsw i64 %i.ch, %indvars.iv.i36
  %i.gu = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %i.gt
  %i.gv = load i16, ptr %i.gu, align 2, !tbaa !33
  %i.gw = add i16 %i.gv, %i.gs
  %i.gx = zext i16 %i.gw to i32
  %i.gy = mul nuw nsw i32 %i.ce, %i.gx
  %i.gz = lshr i32 %i.gy, 16
  %i.ha = trunc nuw nsw i32 %i.gz to i16
  %i.hb = getelementptr inbounds nuw [2 x i8], ptr %i.bi, i64 %indvars.iv.i36
  store i16 %i.ha, ptr %i.hb, align 2, !tbaa !33
  %indvars.iv.next.i37 = add nuw nsw i64 %indvars.iv.i36, 1 ; 3 uses
  %gep.i.1 = getelementptr [2 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i37
  %i.hc = getelementptr i8, ptr %gep.i.1, i64 -2
  %i.hd = load i16, ptr %i.hc, align 2, !tbaa !33
  %i.he = sub nuw nsw i64 %i.ch, %indvars.iv.next.i37
  %i.hf = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %i.he
  %i.hg = load i16, ptr %i.hf, align 2, !tbaa !33
  %i.hh = add i16 %i.hg, %i.hd
  %i.hi = zext i16 %i.hh to i32
  %i.hj = mul nuw nsw i32 %i.ce, %i.hi
  %i.hk = lshr i32 %i.hj, 16
  %i.hl = trunc nuw nsw i32 %i.hk to i16
  %i.hm = getelementptr inbounds nuw [2 x i8], ptr %i.bi, i64 %indvars.iv.next.i37
  store i16 %i.hl, ptr %i.hm, align 2, !tbaa !33
  %indvars.iv.next.i37.1 = add nuw nsw i64 %indvars.iv.i36, 2 ; 2 uses
  %exitcond.not.i38.1 = icmp eq i64 %indvars.iv.next.i37.1, %wide.trip.count.i34
  br i1 %exitcond.not.i38.1, label %.preheader53.i, label %.lr.ph.i35, !llvm.loop !19

.preheader.loopexit.i:                            ; preds = %.lr.ph57.i, %middle.block154
  %indvars.iv.next64.i.lcssa = phi i64 [ %i.du, %middle.block154 ], [ %indvars.iv.next64.i, %.lr.ph57.i ]
  %i.hn = trunc nuw nsw i64 %indvars.iv.next64.i.lcssa to i32
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.loopexit.i, %.preheader53.i
  %.1.lcssa.i = phi i32 [ %i.ci, %.preheader53.i ], [ %i.hn, %.preheader.loopexit.i ] ; 6 uses
  %i.ho = icmp slt i32 %.1.lcssa.i, %1
  br i1 %i.ho, label %.lr.ph60.i, label %.lr.ph.i41.preheader

.lr.ph60.i:                                       ; preds = %.preheader.i
  %i.hp = zext i32 %.1.lcssa.i to i64             ; 10 uses
  %i.hq = sub nsw i64 %i.s, %i.hp                 ; 3 uses
  %min.iters.check = icmp ult i64 %i.hq, 16
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph60.i
  %i.hr = xor i64 %i.hp, -1
  %i.hs = add nsw i64 %i.hr, %i.s                 ; 2 uses
  %i.ht = add i32 %.1, %.1.lcssa.i
  %i.hu = sub i32 %i.cq, %i.ht                    ; 2 uses
  %i.hv = trunc i64 %i.hs to i32                  ; 2 uses
  %i.hw = sub i32 %i.hu, %i.hv
  %i.hx = icmp sgt i32 %i.hw, %i.hu
  %i.hy = add i32 %.1.lcssa.i, %i.cr              ; 2 uses
  %i.hz = add i32 %i.hy, %i.hv
  %i.ia = icmp slt i32 %i.hz, %i.hy
  %i.ib = icmp ugt i64 %i.hs, 4294967295
  %i.ic = or i1 %i.ia, %i.ib
  %i.id = or i1 %i.hx, %i.ic
  br i1 %i.id, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.ie = shl nuw nsw i64 %i.hp, 1
  %i.if = getelementptr i8, ptr %i.bi, i64 %i.ie  ; 3 uses
  %i.ig = add i32 %.1, %.1.lcssa.i
  %i.ih = sub i32 %i.cp, %i.ig
  %i.ii = sext i32 %i.ih to i64                   ; 2 uses
  %i.ij = add nsw i64 %i.ii, %i.hp
  %i.ik = add nsw i64 %i.ij, %i.aa
  %i.il = shl nsw i64 %i.ik, 1
  %i.im = getelementptr i8, ptr %scevgep125, i64 %i.il
  %i.in = shl nsw i64 %i.ii, 1
  %i.io = getelementptr i8, ptr %scevgep, i64 %i.in
  %5 = add i32 %.1.lcssa.i, %i.cl
  %6 = sext i32 %5 to i64                         ; 2 uses
  %7 = shl nsw i64 %6, 1
  %8 = getelementptr i8, ptr %i.ab, i64 %7
  %9 = add nsw i64 %i.cs, %6
  %10 = sub nsw i64 %9, %i.hp
  %i.ip = shl nsw i64 %10, 1
  %i.iq = getelementptr i8, ptr %i.w, i64 %i.ip
  %bound0 = icmp ult ptr %i.if, %i.cn
  %found.conflict = and i1 %bound0, %bound1
  %bound0126 = icmp ult ptr %i.if, %i.io
  %bound1127 = icmp ult ptr %i.im, %i.bj
  %found.conflict128 = and i1 %bound0126, %bound1127
  %conflict.rdx = or i1 %found.conflict, %found.conflict128
  %bound0129 = icmp ult ptr %i.if, %i.iq
  %bound1130 = icmp ult ptr %8, %i.bj
  %found.conflict131 = and i1 %bound0129, %bound1130
  %conflict.rdx132 = or i1 %conflict.rdx, %found.conflict131
  br i1 %conflict.rdx132, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.hq, -8                      ; 3 uses
  %i.ir = add nsw i64 %n.vec, %i.hp
  %i.is = load i16, ptr %i.co, align 2, !tbaa !33, !alias.scope !40
  %i.it = shl i16 %i.is, 1
  %broadcast.splatinsert134 = insertelement <8 x i16> poison, i16 %i.it, i64 0
  %broadcast.splat135 = shufflevector <8 x i16> %broadcast.splatinsert134, <8 x i16> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.iu = add nuw i64 %index, %i.hp               ; 2 uses
  %i.iv = trunc nuw nsw i64 %i.iu to i32          ; 2 uses
  %i.iw = add i32 %.1, %i.iv
  %i.ix = sub i32 %i.cp, %i.iw
  %i.iy = sext i32 %i.ix to i64
  %i.iz = getelementptr inbounds [2 x i8], ptr %i.ab, i64 %i.iy
  %i.ja = getelementptr inbounds i8, ptr %i.iz, i64 -14
  %wide.load = load <8 x i16>, ptr %i.ja, align 2, !tbaa !33, !alias.scope !41
  %reverse = shufflevector <8 x i16> %wide.load, <8 x i16> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.jb = add i32 %i.iv, %i.cl
  %i.jc = sext i32 %i.jb to i64
  %i.jd = getelementptr inbounds [2 x i8], ptr %i.ab, i64 %i.jc
  %wide.load133 = load <8 x i16>, ptr %i.jd, align 2, !tbaa !33, !alias.scope !42
  %i.je = add <8 x i16> %reverse, %wide.load133
  %i.jf = sub <8 x i16> %broadcast.splat135, %i.je
  %i.jg = zext <8 x i16> %i.jf to <8 x i32>
  %i.jh = mul nuw nsw <8 x i32> %broadcast.splat, %i.jg
  %i.ji = lshr <8 x i32> %i.jh, splat (i32 16)
  %i.jj = trunc nuw nsw <8 x i32> %i.ji to <8 x i16>
  %i.jk = getelementptr inbounds nuw [2 x i8], ptr %i.bi, i64 %i.iu
  store <8 x i16> %i.jj, ptr %i.jk, align 2, !tbaa !33, !alias.scope !43, !noalias !44
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.jl = icmp eq i64 %index.next, %n.vec
  br i1 %i.jl, label %middle.block, label %vector.body, !llvm.loop !25

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.hq, %n.vec
  br i1 %cmp.n, label %.lr.ph.i41.preheader, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph60.i, %middle.block
  %indvars.iv66.i.ph = phi i64 [ %i.hp, %vector.memcheck ], [ %i.hp, %vector.scevcheck ], [ %i.hp, %.lr.ph60.i ], [ %i.ir, %middle.block ]
  br label %scalar.ph

.lr.ph57.i:                                       ; preds = %.lr.ph57.i.preheader200, %.lr.ph57.i
  %indvars.iv63.i = phi i64 [ %indvars.iv.next64.i, %.lr.ph57.i ], [ %indvars.iv63.i.ph, %.lr.ph57.i.preheader200 ] ; 4 uses
  %gep74.i = getelementptr [2 x i8], ptr %invariant.gep.i, i64 %indvars.iv63.i
  %i.jm = load i16, ptr %gep74.i, align 2, !tbaa !33
  %i.jn = trunc nuw nsw i64 %indvars.iv63.i to i32
  %i.jo = add i32 %i.jn, %i.cl
  %i.jp = sext i32 %i.jo to i64
  %i.jq = getelementptr inbounds [2 x i8], ptr %i.ab, i64 %i.jp
  %i.jr = load i16, ptr %i.jq, align 2, !tbaa !33
  %i.js = sub i16 %i.jm, %i.jr
  %i.jt = zext i16 %i.js to i32
  %i.ju = mul nuw nsw i32 %i.ce, %i.jt
  %i.jv = lshr i32 %i.ju, 16
  %i.jw = trunc nuw nsw i32 %i.jv to i16
  %i.jx = getelementptr inbounds nuw [2 x i8], ptr %i.bi, i64 %indvars.iv63.i
  store i16 %i.jw, ptr %i.jx, align 2, !tbaa !33
  %indvars.iv.next64.i = add nuw nsw i64 %indvars.iv63.i, 1 ; 3 uses
  %i.jy = icmp samesign ult i64 %indvars.iv.next64.i, %i.cm
  br i1 %i.jy, label %.lr.ph57.i, label %.preheader.loopexit.i, !llvm.loop !26

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv66.i = phi i64 [ %indvars.iv.next67.i, %scalar.ph ], [ %indvars.iv66.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.jz = load i16, ptr %i.co, align 2, !tbaa !33
  %i.ka = shl i16 %i.jz, 1
  %i.kb = trunc nuw nsw i64 %indvars.iv66.i to i32 ; 2 uses
  %i.kc = add i32 %.1, %i.kb
  %i.kd = sub i32 %i.cp, %i.kc
  %i.ke = sext i32 %i.kd to i64
  %i.kf = getelementptr inbounds [2 x i8], ptr %i.ab, i64 %i.ke
  %i.kg = load i16, ptr %i.kf, align 2, !tbaa !33
  %i.kh = add i32 %i.kb, %i.cl
  %i.ki = sext i32 %i.kh to i64
  %i.kj = getelementptr inbounds [2 x i8], ptr %i.ab, i64 %i.ki
  %i.kk = load i16, ptr %i.kj, align 2, !tbaa !33
  %i.kl = add i16 %i.kg, %i.kk
  %i.km = sub i16 %i.ka, %i.kl
  %i.kn = zext i16 %i.km to i32
  %i.ko = mul nuw nsw i32 %i.ce, %i.kn
  %i.kp = lshr i32 %i.ko, 16
  %i.kq = trunc nuw nsw i32 %i.kp to i16
  %i.kr = getelementptr inbounds nuw [2 x i8], ptr %i.bi, i64 %indvars.iv66.i
  store i16 %i.kq, ptr %i.kr, align 2, !tbaa !33
  %indvars.iv.next67.i = add nuw nsw i64 %indvars.iv66.i, 1 ; 2 uses
  %exitcond70.not.i = icmp eq i64 %indvars.iv.next67.i, %i.s
  br i1 %exitcond70.not.i, label %.lr.ph.i41.preheader, label %scalar.ph, !llvm.loop !27

.lr.ph.i41.preheader:                             ; preds = %scalar.ph, %middle.block, %.preheader.i
  br label %.lr.ph.i41

.lr.ph.i41:                                       ; preds = %.lr.ph.i41.preheader, %bb.s
  %indvars.iv.i43 = phi i64 [ %indvars.iv.next.i44, %bb.s ], [ 0, %.lr.ph.i41.preheader ] ; 3 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %.sroa.23.097, i64 %indvars.iv.i43 ; 2 uses
  %i.kt = load i8, ptr %i.ks, align 1, !tbaa !30
  %i.ku = zext i8 %i.kt to i32                    ; 4 uses
  %i.kv = icmp sgt i32 %.sroa.55.2, %i.ku
  %i.kw = icmp slt i32 %.sroa.52.2, %i.ku
  %or.cond90 = select i1 %i.kv, i1 %i.kw, i1 false
  br i1 %or.cond90, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.lr.ph.i41
  %i.kx = getelementptr inbounds nuw [2 x i8], ptr %i.bi, i64 %indvars.iv.i43
  %i.ky = load i16, ptr %i.kx, align 2, !tbaa !33
  %i.kz = zext i16 %i.ky to i32
  %i.la = shl nuw nsw i32 %i.ku, 2
  %i.lb = sub nsw i32 %i.kz, %i.la
  %i.lc = sext i32 %i.lb to i64
  %i.ld = getelementptr inbounds [2 x i8], ptr %i.bo, i64 %i.lc
  %i.le = load i16, ptr %i.ld, align 2, !tbaa !33
  %i.lf = sext i16 %i.le to i32
  %i.lg = add nsw i32 %i.lf, %i.ku
  %i.lh = tail call i32 @llvm.smax.i32(i32 range(i32 -32768, 33023) %i.lg, i32 0)
  %i.li = tail call i32 @llvm.umin.i32(i32 %i.lh, i32 255)
  %i.lj = trunc nuw i32 %i.li to i8
  store i8 %i.lj, ptr %i.ks, align 1, !tbaa !30
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.lr.ph.i41
  %indvars.iv.next.i44 = add nuw nsw i64 %indvars.iv.i43, 1 ; 2 uses
  %exitcond.not.i45 = icmp eq i64 %indvars.iv.next.i44, %i.s
  br i1 %exitcond.not.i45, label %ApplyFilter.exit.loopexit, label %.lr.ph.i41, !llvm.loop !28

ApplyFilter.exit.loopexit:                        ; preds = %bb.s
  %i.lk = getelementptr inbounds i8, ptr %.sroa.23.097, i64 %i.ae
  br label %bb.t

bb.t:                                             ; preds = %._crit_edge.i.loopexit, %ApplyFilter.exit.loopexit
  %.sroa.23.1 = phi ptr [ %.sroa.23.097, %._crit_edge.i.loopexit ], [ %i.lk, %ApplyFilter.exit.loopexit ]
  %i.ll = add nsw i32 %.sroa.14.095, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.ll, %2
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph.preheader.i, !llvm.loop !29

.loopexit:                                        ; preds = %bb.t, %bb.q
  tail call void @WebPSafeFree(ptr noundef nonnull %i.w) #6
  br label %.critedge

.critedge:                                        ; preds = %bb.d, %bb.c, %.loopexit, %bb.b, %bb.a
  %.126 = phi i32 [ 1, %bb.c ], [ 0, %bb.a ], [ 0, %bb.b ], [ 1, %.loopexit ], [ 0, %bb.d ]
  ret i32 %.126
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare ptr @WebPSafeMalloc(i64 noundef, i64 noundef) local_unnamed_addr #3

declare void @WebPSafeFree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = distinct !{!8, !31}
!9 = distinct !{!9, !31}
!10 = distinct !{!10, !31}
!11 = distinct !{!11, !31}
end_hunk_0
