inline.NumInlined: 8
inline.NumDeleted: 8
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@WebPDequantizeLevels:bb.a
  %i.ed = getelementptr inbounds nuw [2 x i8], ptr %.sroa.36.097, i64 %indvars.iv.i ; 2 uses
  %i.ee = load i16, ptr %i.ed, align 2, !tbaa !12
  %i.ef = sub i16 %i.ec, %i.ee
  %i.eg = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %indvars.iv.i
  store i16 %i.ef, ptr %i.eg, align 2, !tbaa !12
  store i16 %i.ec, ptr %i.ed, align 2, !tbaa !12
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 4 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.sroa.20.095, i64 %indvars.iv.next.i
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !7
  %i.ej = zext i8 %i.ei to i16
  %i.ek = add i16 %i.dz, %i.ej                    ; 3 uses
  %i.el = getelementptr inbounds nuw [2 x i8], ptr %.sroa.43.098, i64 %indvars.iv.next.i
  %i.em = load i16, ptr %i.el, align 2, !tbaa !12
  %i.en = add i16 %i.ek, %i.em                    ; 2 uses
  %i.eo = getelementptr inbounds nuw [2 x i8], ptr %.sroa.36.097, i64 %indvars.iv.next.i ; 2 uses
  %i.ep = load i16, ptr %i.eo, align 2, !tbaa !12
  %i.eq = sub i16 %i.en, %i.ep
  %i.er = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %indvars.iv.next.i
  store i16 %i.eq, ptr %i.er, align 2, !tbaa !12
  store i16 %i.en, ptr %i.eo, align 2, !tbaa !12
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !15

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %.lr.ph.i
  br i1 %lcmp.mod.not, label %._crit_edge.i.loopexit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.1, %._crit_edge.i.loopexit.unr-lcssa ] ; 4 uses
  %.038.i.epil.init = phi i16 [ 0, %.lr.ph.preheader.i ], [ %i.ek, %._crit_edge.i.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod181)
  %i.es = getelementptr inbounds nuw i8, ptr %.sroa.20.095, i64 %indvars.iv.i.epil.init
  %i.et = load i8, ptr %i.es, align 1, !tbaa !7
  %i.eu = zext i8 %i.et to i16
  %i.ev = add i16 %.038.i.epil.init, %i.eu
  %i.ew = getelementptr inbounds nuw [2 x i8], ptr %.sroa.43.098, i64 %indvars.iv.i.epil.init
  %i.ex = load i16, ptr %i.ew, align 2, !tbaa !12
  %i.ey = add i16 %i.ev, %i.ex                    ; 2 uses
  %i.ez = getelementptr inbounds nuw [2 x i8], ptr %.sroa.36.097, i64 %indvars.iv.i.epil.init ; 2 uses
  %i.fa = load i16, ptr %i.ez, align 2, !tbaa !12
  %i.fb = sub i16 %i.ey, %i.fa
  %i.fc = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %indvars.iv.i.epil.init
  store i16 %i.fb, ptr %i.fc, align 2, !tbaa !12
  store i16 %i.ey, ptr %i.ez, align 2, !tbaa !12
  br label %._crit_edge.i.loopexit

._crit_edge.i.loopexit:                           ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.i.epil.preheader
  %i.fd = getelementptr inbounds nuw [2 x i8], ptr %.sroa.36.097, i64 %i.s ; 2 uses
  %i.fe = icmp eq ptr %i.fd, %i.ab
  %spec.select86 = select i1 %i.fe, ptr %i.w, ptr %i.fd
  %i.ff = icmp sgt i32 %.sroa.14.094, -1
  %i.fg = icmp slt i32 %.sroa.14.094, %i.j
  %or.cond88 = select i1 %i.ff, i1 %i.fg, i1 false
  %.sroa.20.2.idx = select i1 %or.cond88, i64 %i.ae, i64 0
  %.sroa.20.2 = getelementptr inbounds i8, ptr %.sroa.20.095, i64 %.sroa.20.2.idx
  %.not32 = icmp slt i32 %.sroa.14.094, %.1
  br i1 %.not32, label %bb.t, label %.lr.ph.i35.preheader

.lr.ph.i35.preheader:                             ; preds = %._crit_edge.i.loopexit
  %brmerge = select i1 %min.iters.check161, i1 true, i1 %conflict.rdx159
  br i1 %brmerge, label %.lr.ph.i35.preheader179, label %vector.body167

vector.body167:                                   ; preds = %.lr.ph.i35.preheader, %vector.body167
  %index168 = phi i64 [ %index.next172, %vector.body167 ], [ 0, %.lr.ph.i35.preheader ] ; 4 uses
  %i.fh = getelementptr [2 x i8], ptr %invariant.gep.i, i64 %index168
  %i.fi = getelementptr i8, ptr %i.fh, i64 -2
  %wide.load169.a = load <8 x i16>, ptr %i.fi, align 2, !tbaa !12, !alias.scope !16
  %i.fj = sub nsw i64 %i.ch, %index168
  %i.fk = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %i.fj
  %i.fl = getelementptr inbounds i8, ptr %i.fk, i64 -14
  %wide.load170 = load <8 x i16>, ptr %i.fl, align 2, !tbaa !12, !alias.scope !19
  %reverse171 = shufflevector <8 x i16> %wide.load170, <8 x i16> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.fm = add <8 x i16> %reverse171, %wide.load169.a
  %i.fn = zext <8 x i16> %i.fm to <8 x i32>
  %i.fo = mul nuw <8 x i32> %broadcast.splat166, %i.fn
  %i.fp = lshr <8 x i32> %i.fo, splat (i32 16)
  %i.fq = trunc nuw <8 x i32> %i.fp to <8 x i16>
  %i.fr = getelementptr inbounds nuw [2 x i8], ptr %i.bi, i64 %index168
  store <8 x i16> %i.fq, ptr %i.fr, align 2, !tbaa !12, !alias.scope !21, !noalias !23
  %index.next172 = add nuw i64 %index168, 8       ; 2 uses
  %i.fs = icmp eq i64 %index.next172, %n.vec164
  br i1 %i.fs, label %middle.block173, label %vector.body167, !llvm.loop !24

middle.block173:                                  ; preds = %vector.body167
  br i1 %cmp.n174, label %.preheader53.i, label %.lr.ph.i35.preheader179

.lr.ph.i35.preheader179:                          ; preds = %.lr.ph.i35.preheader, %middle.block173
  %indvars.iv.i36.ph = phi i64 [ %n.vec164, %middle.block173 ], [ 0, %.lr.ph.i35.preheader ] ; 6 uses
  br i1 %lcmp.mod183.not, label %.lr.ph.i35.prol.loopexit, label %.lr.ph.i35.prol

.lr.ph.i35.prol:                                  ; preds = %.lr.ph.i35.preheader179
  %gep.i.prol = getelementptr [2 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i36.ph
  %i.ft = getelementptr i8, ptr %gep.i.prol, i64 -2
  %i.fu = load i16, ptr %i.ft, align 2, !tbaa !12
  %i.fv = sub nsw i64 %i.ch, %indvars.iv.i36.ph
  %i.fw = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %i.fv
  %i.fx = load i16, ptr %i.fw, align 2, !tbaa !12
  %i.fy = add i16 %i.fx, %i.fu
  %i.fz = zext i16 %i.fy to i32
  %i.ga = mul nuw i32 %i.ce, %i.fz
  %i.gb = lshr i32 %i.ga, 16
  %i.gc = trunc nuw i32 %i.gb to i16
  %i.gd = getelementptr inbounds nuw [2 x i8], ptr %i.bi, i64 %indvars.iv.i36.ph
  store i16 %i.gc, ptr %i.gd, align 2, !tbaa !12
  %indvars.iv.next.i37.prol = or disjoint i64 %indvars.iv.i36.ph, 1
  br label %.lr.ph.i35.prol.loopexit

.lr.ph.i35.prol.loopexit:                         ; preds = %.lr.ph.i35.prol, %.lr.ph.i35.preheader179
  %indvars.iv.i36.unr = phi i64 [ %indvars.iv.i36.ph, %.lr.ph.i35.preheader179 ], [ %indvars.iv.next.i37.prol, %.lr.ph.i35.prol ]
  %i.ge = icmp eq i64 %indvars.iv.i36.ph, %i.dn
  br i1 %i.ge, label %.preheader53.i, label %.lr.ph.i35

.preheader53.i:                                   ; preds = %.lr.ph.i35.prol.loopexit, %.lr.ph.i35, %middle.block173
  br i1 %i.ck, label %.lr.ph57.i.preheader, label %.preheader.i

.lr.ph57.i.preheader:                             ; preds = %.preheader53.i
  %or.cond177.not = xor i1 %or.cond177, true
  %brmerge186 = select i1 %or.cond177.not, i1 true, i1 %conflict.rdx131
  br i1 %brmerge186, label %.lr.ph57.i.preheader178, label %vector.body139

vector.body139:                                   ; preds = %.lr.ph57.i.preheader, %vector.body139
  %index140 = phi i64 [ %index.next143, %vector.body139 ], [ 0, %.lr.ph57.i.preheader ] ; 2 uses
  %i.gf = add nuw i64 %index140, %wide.trip.count.i34 ; 3 uses
  %i.gg = getelementptr [2 x i8], ptr %invariant.gep.i, i64 %i.gf
  %wide.load141.a = load <8 x i16>, ptr %i.gg, align 2, !tbaa !12
  %i.gh = trunc nuw nsw i64 %i.gf to i32
  %i.gi = add i32 %i.gh, %i.cl
  %i.gj = sext i32 %i.gi to i64
  %i.gk = getelementptr inbounds [2 x i8], ptr %i.ab, i64 %i.gj
  %wide.load142 = load <8 x i16>, ptr %i.gk, align 2, !tbaa !12
  %i.gl = sub <8 x i16> %wide.load141.a, %wide.load142
  %i.gm = zext <8 x i16> %i.gl to <8 x i32>
  %i.gn = mul nuw <8 x i32> %broadcast.splat138, %i.gm
  %i.go = lshr <8 x i32> %i.gn, splat (i32 16)
  %i.gp = trunc nuw <8 x i32> %i.go to <8 x i16>
  %i.gq = getelementptr inbounds nuw [2 x i8], ptr %i.bi, i64 %i.gf
  store <8 x i16> %i.gp, ptr %i.gq, align 2, !tbaa !12
  %index.next143 = add nuw i64 %index140, 8       ; 2 uses
  %i.gr = icmp eq i64 %index.next143, %n.vec136
  br i1 %i.gr, label %middle.block144, label %vector.body139, !llvm.loop !27

middle.block144:                                  ; preds = %vector.body139
  br i1 %cmp.n145, label %.preheader.loopexit.i, label %.lr.ph57.i.preheader178

.lr.ph57.i.preheader178:                          ; preds = %.lr.ph57.i.preheader, %middle.block144
  %indvars.iv63.i.ph = phi i64 [ %i.dv, %middle.block144 ], [ %wide.trip.count.i34, %.lr.ph57.i.preheader ]
  br label %.lr.ph57.i

.lr.ph.i35:                                       ; preds = %.lr.ph.i35.prol.loopexit, %.lr.ph.i35
  %indvars.iv.i36 = phi i64 [ %indvars.iv.next.i37.1, %.lr.ph.i35 ], [ %indvars.iv.i36.unr, %.lr.ph.i35.prol.loopexit ] ; 5 uses
  %gep.i = getelementptr [2 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i36
  %i.gs = getelementptr i8, ptr %gep.i, i64 -2
  %i.gt = load i16, ptr %i.gs, align 2, !tbaa !12
  %i.gu = sub nsw i64 %i.ch, %indvars.iv.i36
  %i.gv = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %i.gu
  %i.gw = load i16, ptr %i.gv, align 2, !tbaa !12
  %i.gx = add i16 %i.gw, %i.gt
  %i.gy = zext i16 %i.gx to i32
  %i.gz = mul nuw i32 %i.ce, %i.gy
  %i.ha = lshr i32 %i.gz, 16
  %i.hb = trunc nuw i32 %i.ha to i16
  %i.hc = getelementptr inbounds nuw [2 x i8], ptr %i.bi, i64 %indvars.iv.i36
  store i16 %i.hb, ptr %i.hc, align 2, !tbaa !12
  %indvars.iv.next.i37 = add nuw nsw i64 %indvars.iv.i36, 1 ; 3 uses
  %gep.i.1 = getelementptr [2 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i37
  %i.hd = getelementptr i8, ptr %gep.i.1, i64 -2
  %i.he = load i16, ptr %i.hd, align 2, !tbaa !12
  %i.hf = sub nsw i64 %i.ch, %indvars.iv.next.i37
  %i.hg = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %i.hf
  %i.hh = load i16, ptr %i.hg, align 2, !tbaa !12
  %i.hi = add i16 %i.hh, %i.he
  %i.hj = zext i16 %i.hi to i32
  %i.hk = mul nuw i32 %i.ce, %i.hj
  %i.hl = lshr i32 %i.hk, 16
  %i.hm = trunc nuw i32 %i.hl to i16
  %i.hn = getelementptr inbounds nuw [2 x i8], ptr %i.bi, i64 %indvars.iv.next.i37
  store i16 %i.hm, ptr %i.hn, align 2, !tbaa !12
  %indvars.iv.next.i37.1 = add nuw nsw i64 %indvars.iv.i36, 2 ; 2 uses
  %exitcond.not.i38.1 = icmp eq i64 %indvars.iv.next.i37.1, %wide.trip.count.i34
  br i1 %exitcond.not.i38.1, label %.preheader53.i, label %.lr.ph.i35, !llvm.loop !28

.preheader.loopexit.i:                            ; preds = %.lr.ph57.i, %middle.block144
  %indvars.iv.next64.i.lcssa = phi i64 [ %i.dv, %middle.block144 ], [ %indvars.iv.next64.i, %.lr.ph57.i ]
  %i.ho = trunc nuw nsw i64 %indvars.iv.next64.i.lcssa to i32
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.loopexit.i, %.preheader53.i
  %.1.lcssa.i = phi i32 [ %i.ci, %.preheader53.i ], [ %i.ho, %.preheader.loopexit.i ] ; 6 uses
  %i.hp = icmp slt i32 %.1.lcssa.i, %1
  br i1 %i.hp, label %.lr.ph60.i, label %.lr.ph.i41.preheader

.lr.ph60.i:                                       ; preds = %.preheader.i
  %i.hq = zext i32 %.1.lcssa.i to i64             ; 10 uses
  %i.hr = sub nsw i64 %i.s, %i.hq                 ; 3 uses
  %min.iters.check = icmp ult i64 %i.hr, 16
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph60.i
  %i.hs = xor i64 %i.hq, -1
  %i.ht = add nsw i64 %i.hs, %i.s                 ; 3 uses
  %i.hu = add i32 %.1, %.1.lcssa.i
  %i.hv = sub i32 %i.cq, %i.hu                    ; 2 uses
  %i.hw = trunc i64 %i.ht to i32
  %i.hx = sub i32 %i.hv, %i.hw
  %i.hy = icmp sgt i32 %i.hx, %i.hv
  %i.hz = add i32 %.1.lcssa.i, %i.cr              ; 2 uses
  %5 = trunc i64 %i.ht to i32
  %i.ia = add i32 %i.hz, %5
  %i.ib = icmp slt i32 %i.ia, %i.hz
  %i.ic = icmp ugt i64 %i.ht, 4294967295
  %i.id = or i1 %i.ib, %i.ic
  %i.ie = or i1 %i.hy, %i.id
  br i1 %i.ie, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.if = shl nuw nsw i64 %i.hq, 1
  %scevgep110 = getelementptr i8, ptr %scevgep, i64 %i.if ; 3 uses
  %i.ig = add i32 %.1, %.1.lcssa.i
  %i.ih = sub i32 %i.ct, %i.ig
  %i.ii = sext i32 %i.ih to i64                   ; 2 uses
  %i.ij = add nsw i64 %i.aa, %i.ii
  %i.ik = add nsw i64 %i.ij, %i.hq
  %i.il = shl nsw i64 %i.ik, 1
  %scevgep112 = getelementptr i8, ptr %scevgep111.a, i64 %i.il
  %i.im = shl nsw i64 %i.ii, 1
  %scevgep114 = getelementptr i8, ptr %scevgep113.a, i64 %i.im
  %i.in = add i32 %.1.lcssa.i, %i.cw
  %i.io = sext i32 %i.in to i64                   ; 2 uses
  %i.ip = shl nsw i64 %i.io, 1
  %scevgep116.a = getelementptr i8, ptr %scevgep115.a, i64 %i.ip
  %i.iq = add nsw i64 %i.cx, %i.io
  %i.ir = sub nsw i64 %i.iq, %i.hq
  %i.is = shl nsw i64 %i.ir, 1
  %scevgep117 = getelementptr i8, ptr %i.w, i64 %i.is
  %bound0 = icmp ult ptr %scevgep110, %i.cn
  %found.conflict = and i1 %bound0, %bound1
  %bound0118 = icmp ult ptr %scevgep110, %scevgep114
  %bound1119 = icmp ult ptr %scevgep112, %i.bj
  %found.conflict120 = and i1 %bound0118, %bound1119
  %conflict.rdx = or i1 %found.conflict, %found.conflict120
  %bound0121 = icmp ult ptr %scevgep110, %scevgep117
  %bound1122 = icmp ult ptr %scevgep116.a, %i.bj
  %found.conflict123 = and i1 %bound0121, %bound1122
  %conflict.rdx124 = or i1 %conflict.rdx, %found.conflict123
  br i1 %conflict.rdx124, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.hr, -8                      ; 3 uses
  %i.it = add nsw i64 %n.vec, %i.hq
  %i.iu = load i16, ptr %i.co, align 2, !tbaa !12, !alias.scope !29
  %i.iv = shl i16 %i.iu, 1
  %broadcast.splatinsert126 = insertelement <8 x i16> poison, i16 %i.iv, i64 0
  %broadcast.splat127 = shufflevector <8 x i16> %broadcast.splatinsert126, <8 x i16> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.iw = add nuw i64 %index, %i.hq               ; 2 uses
  %i.ix = trunc nsw i64 %i.iw to i32              ; 2 uses
  %i.iy = add i32 %.1, %i.ix
  %i.iz = sub i32 %i.cp, %i.iy
  %i.ja = sext i32 %i.iz to i64
  %i.jb = getelementptr inbounds [2 x i8], ptr %i.ab, i64 %i.ja
  %i.jc = getelementptr inbounds i8, ptr %i.jb, i64 -14
  %wide.load = load <8 x i16>, ptr %i.jc, align 2, !tbaa !12, !alias.scope !32
  %reverse = shufflevector <8 x i16> %wide.load, <8 x i16> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.jd = add i32 %i.ix, %i.cl
  %i.je = sext i32 %i.jd to i64
  %i.jf = getelementptr inbounds [2 x i8], ptr %i.ab, i64 %i.je
  %wide.load125 = load <8 x i16>, ptr %i.jf, align 2, !tbaa !12, !alias.scope !34
  %i.jg = add <8 x i16> %reverse, %wide.load125
  %i.jh = sub <8 x i16> %broadcast.splat127, %i.jg
  %i.ji = zext <8 x i16> %i.jh to <8 x i32>
  %i.jj = mul nuw <8 x i32> %broadcast.splat, %i.ji
  %i.jk = lshr <8 x i32> %i.jj, splat (i32 16)
  %i.jl = trunc nuw <8 x i32> %i.jk to <8 x i16>
  %i.jm = getelementptr inbounds nuw [2 x i8], ptr %i.bi, i64 %i.iw
  store <8 x i16> %i.jl, ptr %i.jm, align 2, !tbaa !12, !alias.scope !36, !noalias !38
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.jn = icmp eq i64 %index.next, %n.vec
  br i1 %i.jn, label %middle.block, label %vector.body, !llvm.loop !39

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.hr, %n.vec
  br i1 %cmp.n, label %.lr.ph.i41.preheader, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph60.i, %middle.block
  %indvars.iv66.i.ph = phi i64 [ %i.hq, %vector.memcheck ], [ %i.hq, %vector.scevcheck ], [ %i.hq, %.lr.ph60.i ], [ %i.it, %middle.block ]
  br label %scalar.ph

.lr.ph57.i:                                       ; preds = %.lr.ph57.i.preheader178, %.lr.ph57.i
  %indvars.iv63.i = phi i64 [ %indvars.iv.next64.i, %.lr.ph57.i ], [ %indvars.iv63.i.ph, %.lr.ph57.i.preheader178 ] ; 4 uses
  %gep74.i = getelementptr [2 x i8], ptr %invariant.gep.i, i64 %indvars.iv63.i
  %i.jo = load i16, ptr %gep74.i, align 2, !tbaa !12
  %i.jp = trunc nuw nsw i64 %indvars.iv63.i to i32
  %i.jq = add i32 %i.jp, %i.cl
  %i.jr = sext i32 %i.jq to i64
  %i.js = getelementptr inbounds [2 x i8], ptr %i.ab, i64 %i.jr
  %i.jt = load i16, ptr %i.js, align 2, !tbaa !12
  %i.ju = sub i16 %i.jo, %i.jt
  %i.jv = zext i16 %i.ju to i32
  %i.jw = mul nuw i32 %i.ce, %i.jv
  %i.jx = lshr i32 %i.jw, 16
  %i.jy = trunc nuw i32 %i.jx to i16
  %i.jz = getelementptr inbounds nuw [2 x i8], ptr %i.bi, i64 %indvars.iv63.i
  store i16 %i.jy, ptr %i.jz, align 2, !tbaa !12
  %indvars.iv.next64.i = add nuw nsw i64 %indvars.iv63.i, 1 ; 3 uses
  %i.ka = icmp samesign ult i64 %indvars.iv.next64.i, %i.cm
  br i1 %i.ka, label %.lr.ph57.i, label %.preheader.loopexit.i, !llvm.loop !40

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv66.i = phi i64 [ %indvars.iv.next67.i, %scalar.ph ], [ %indvars.iv66.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.kb = load i16, ptr %i.co, align 2, !tbaa !12
  %i.kc = shl i16 %i.kb, 1
  %i.kd = trunc nsw i64 %indvars.iv66.i to i32    ; 2 uses
  %i.ke = add i32 %.1, %i.kd
  %i.kf = sub i32 %i.cp, %i.ke
  %i.kg = sext i32 %i.kf to i64
  %i.kh = getelementptr inbounds [2 x i8], ptr %i.ab, i64 %i.kg
  %i.ki = load i16, ptr %i.kh, align 2, !tbaa !12
  %i.kj = add i32 %i.kd, %i.cl
  %i.kk = sext i32 %i.kj to i64
  %i.kl = getelementptr inbounds [2 x i8], ptr %i.ab, i64 %i.kk
  %i.km = load i16, ptr %i.kl, align 2, !tbaa !12
  %i.kn = add i16 %i.ki, %i.km
  %i.ko = sub i16 %i.kc, %i.kn
  %i.kp = zext i16 %i.ko to i32
  %i.kq = mul nuw i32 %i.ce, %i.kp
  %i.kr = lshr i32 %i.kq, 16
  %i.ks = trunc nuw i32 %i.kr to i16
  %i.kt = getelementptr inbounds nuw [2 x i8], ptr %i.bi, i64 %indvars.iv66.i
  store i16 %i.ks, ptr %i.kt, align 2, !tbaa !12
  %indvars.iv.next67.i = add nuw nsw i64 %indvars.iv66.i, 1 ; 2 uses
  %exitcond70.not.i = icmp eq i64 %indvars.iv.next67.i, %i.s
  br i1 %exitcond70.not.i, label %.lr.ph.i41.preheader, label %scalar.ph, !llvm.loop !41

.lr.ph.i41.preheader:                             ; preds = %scalar.ph, %middle.block, %.preheader.i
  br label %.lr.ph.i41

.lr.ph.i41:                                       ; preds = %.lr.ph.i41.preheader, %bb.s
  %indvars.iv.i43 = phi i64 [ %indvars.iv.next.i44, %bb.s ], [ 0, %.lr.ph.i41.preheader ] ; 3 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %.sroa.23.096, i64 %indvars.iv.i43 ; 2 uses
  %i.kv = load i8, ptr %i.ku, align 1, !tbaa !7
  %i.kw = zext i8 %i.kv to i32                    ; 4 uses
  %i.kx = icmp sgt i32 %.sroa.55.2, %i.kw
  %i.ky = icmp slt i32 %.sroa.52.2, %i.kw
  %or.cond89 = select i1 %i.kx, i1 %i.ky, i1 false
  br i1 %or.cond89, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.lr.ph.i41
  %i.kz = getelementptr inbounds nuw [2 x i8], ptr %i.bi, i64 %indvars.iv.i43
  %i.la = load i16, ptr %i.kz, align 2, !tbaa !12
  %i.lb = zext i16 %i.la to i32
  %i.lc = shl nuw nsw i32 %i.kw, 2
  %i.ld = sub nsw i32 %i.lb, %i.lc
  %i.le = sext i32 %i.ld to i64
  %i.lf = getelementptr inbounds [2 x i8], ptr %i.bk, i64 %i.le
  %i.lg = load i16, ptr %i.lf, align 2, !tbaa !12
  %i.lh = sext i16 %i.lg to i32
  %i.li = add nsw i32 %i.lh, %i.kw
  %i.lj = tail call i32 @llvm.smax.i32(i32 range(i32 -32768, 33023) %i.li, i32 0)
  %i.lk = tail call i32 @llvm.umin.i32(i32 %i.lj, i32 255)
  %i.ll = trunc nuw i32 %i.lk to i8
  store i8 %i.ll, ptr %i.ku, align 1, !tbaa !7
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.lr.ph.i41
  %indvars.iv.next.i44 = add nuw nsw i64 %indvars.iv.i43, 1 ; 2 uses
  %exitcond.not.i45 = icmp eq i64 %indvars.iv.next.i44, %i.s
  br i1 %exitcond.not.i45, label %ApplyFilter.exit.loopexit, label %.lr.ph.i41, !llvm.loop !42

ApplyFilter.exit.loopexit:                        ; preds = %bb.s
  %i.lm = getelementptr inbounds i8, ptr %.sroa.23.096, i64 %i.ae
  br label %bb.t

bb.t:                                             ; preds = %._crit_edge.i.loopexit, %ApplyFilter.exit.loopexit
  %.sroa.23.1 = phi ptr [ %.sroa.23.096, %._crit_edge.i.loopexit ], [ %i.lm, %ApplyFilter.exit.loopexit ]
  %i.ln = add nsw i32 %.sroa.14.094, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.ln, %2
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph.preheader.i, !llvm.loop !43

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
end_hunk_0
