inline.NumInlined: 62
inline.NumDeleted: 31
begin_hunk_0_@deflate_make_huffman_code:bb.a
  %i.en = zext i32 %.055.i to i64
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.en ; 2 uses
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !3  ; 2 uses
  %i.eq = and i32 %i.ep, -1024
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.pre79.i
  %i.es = add i32 %.pre63, %i.eq
  %i.et = trunc nuw i64 %indvars.iv.i25 to i32
  %i.eu = shl i32 %i.et, 10                       ; 2 uses
  %i.ev = and i32 %i.ep, 1023
  %i.ew = or disjoint i32 %i.ev, %i.eu
  store i32 %i.ew, ptr %i.eo, align 4, !tbaa !3
  %i.ex = and i32 %.pre, 1023
  %i.ey = or disjoint i32 %i.ex, %i.eu
  store i32 %i.ey, ptr %i.er, align 4, !tbaa !3
  br label %bb.v

bb.u:                                             ; preds = %bb.t, %._crit_edge65.i
  %.pre-phi72.i = phi i32 [ %.pre71.i, %._crit_edge65.i ], [ %.pre77.i, %bb.t ]
  %.pre-phi70.i = phi i32 [ %.pre69.i, %._crit_edge65.i ], [ %i.el, %bb.t ]
  %i.ez = zext i32 %.055.i to i64
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.ez ; 2 uses
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !3  ; 2 uses
  %i.fc = and i32 %i.fb, -1024
  %i.fd = add i32 %i.fc, %.pre-phi70.i
  %i.fe = trunc nuw i64 %indvars.iv.i25 to i32
  %i.ff = shl i32 %i.fe, 10
  %i.fg = and i32 %i.fb, 1023
  %i.fh = or disjoint i32 %i.fg, %i.ff
  store i32 %i.fh, ptr %i.fa, align 4, !tbaa !3
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %._crit_edge76.i, %._crit_edge.i
  %.157.i = phi i32 [ %i.ee, %._crit_edge.i ], [ %.056.i, %._crit_edge76.i ], [ %i.dt, %bb.u ]
  %.1.i = phi i32 [ %.055.i, %._crit_edge.i ], [ %i.ef, %._crit_edge76.i ], [ %.pre-phi72.i, %bb.u ]
  %.0.i = phi i32 [ %i.ed, %._crit_edge.i ], [ %i.es, %._crit_edge76.i ], [ %i.fd, %bb.u ]
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.i25 ; 2 uses
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !3
  %i.fk = and i32 %i.fj, 1023
  %i.fl = or i32 %i.fk, %.0.i
  store i32 %i.fl, ptr %i.fi, align 4, !tbaa !3
  %indvars.iv.next.i27 = add nuw nsw i64 %indvars.iv.i25, 1 ; 2 uses
  %exitcond.not.i28 = icmp eq i64 %indvars.iv.next.i27, %wide.trip.count.i24
  br i1 %exitcond.not.i28, label %build_tree.exit, label %bb.o, !llvm.loop !115

build_tree.exit:                                  ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #16
  %i.fm = add i32 %.lcssa103, -2
  %i.fn = shl nuw nsw i32 %1, 2
  %narrow.i = add nuw nsw i32 %i.fn, 4
  %i.fo = zext nneg i32 %narrow.i to i64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.c, i8 0, i64 %i.fo, i1 false), !tbaa !3
  %i.fp = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 2, ptr %i.fp, align 4, !tbaa !3
  %i.fq = zext i32 %i.fm to i64
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.fq ; 2 uses
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !3
  %i.ft = and i32 %i.fs, 1023
  store i32 %i.ft, ptr %i.fr, align 4, !tbaa !3
  %.03136.i = add i32 %.lcssa103, -3              ; 2 uses
  %i.fu = icmp sgt i32 %.03136.i, -1
  br i1 %i.fu, label %.lr.ph.preheader.i, label %compute_length_counts.exit

.lr.ph.preheader.i:                               ; preds = %build_tree.exit
  %i.fv = zext nneg i32 %.03136.i to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.loopexit.i, %.lr.ph.preheader.i
  %indvars.iv.i30 = phi i64 [ %i.fv, %.lr.ph.preheader.i ], [ %indvars.iv.next.i34, %.loopexit.i ] ; 3 uses
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.i30 ; 2 uses
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !3  ; 2 uses
  %i.fy = lshr i32 %i.fx, 10
  %i.fz = zext nneg i32 %i.fy to i64
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.fz
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !3
  %i.gc = lshr i32 %i.gb, 10                      ; 2 uses
  %i.gd = add nuw nsw i32 %i.gc, 1                ; 3 uses
  %i.ge = and i32 %i.fx, 1023
  %i.gf = shl i32 %i.gd, 10
  %i.gg = or disjoint i32 %i.gf, %i.ge
  store i32 %i.gg, ptr %i.fw, align 4, !tbaa !3
  %.not34.i = icmp samesign ult i32 %i.gd, %1
  br i1 %.not34.i, label %.lr.ph..loopexit_crit_edge.i, label %.preheader.i31

.lr.ph..loopexit_crit_edge.i:                     ; preds = %.lr.ph.i
  %.phi.trans.insert.i35 = zext nneg i32 %i.gd to i64 ; 2 uses
  %.phi.trans.insert40.i = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.phi.trans.insert.i35
  %.pre.i36 = load i32, ptr %.phi.trans.insert40.i, align 4, !tbaa !3
  %i.gh = add nuw nsw i32 %i.gc, 2
  br label %.loopexit.i

.preheader.i31:                                   ; preds = %.lr.ph.i, %.preheader.i31
  %.0.i32 = phi i32 [ %i.gi, %.preheader.i31 ], [ %1, %.lr.ph.i ] ; 2 uses
  %i.gi = add i32 %.0.i32, -1                     ; 2 uses
  %i.gj = zext i32 %i.gi to i64                   ; 2 uses
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.gj
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !3  ; 2 uses
  %i.gm = icmp eq i32 %i.gl, 0
  br i1 %i.gm, label %.preheader.i31, label %.loopexit.i, !llvm.loop !116

.loopexit.i:                                      ; preds = %.preheader.i31, %.lr.ph..loopexit_crit_edge.i
  %.pre-phi.i = phi i64 [ %.phi.trans.insert.i35, %.lr.ph..loopexit_crit_edge.i ], [ %i.gj, %.preheader.i31 ]
  %i.gn = phi i32 [ %.pre.i36, %.lr.ph..loopexit_crit_edge.i ], [ %i.gl, %.preheader.i31 ]
  %.1.i33 = phi i32 [ %i.gh, %.lr.ph..loopexit_crit_edge.i ], [ %.0.i32, %.preheader.i31 ]
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %.pre-phi.i
  %i.gp = add i32 %i.gn, -1
  store i32 %i.gp, ptr %i.go, align 4, !tbaa !3
  %i.gq = zext i32 %.1.i33 to i64
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.gq ; 2 uses
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !3
  %i.gt = add i32 %i.gs, 2
  store i32 %i.gt, ptr %i.gr, align 4, !tbaa !3
  %indvars.iv.next.i34 = add nsw i64 %indvars.iv.i30, -1
  %i.gu = icmp sgt i64 %indvars.iv.i30, 0
  br i1 %i.gu, label %.lr.ph.i, label %compute_length_counts.exit, !llvm.loop !117

compute_length_counts.exit:                       ; preds = %.loopexit.i, %build_tree.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.gv = zext nneg i32 %1 to i64                 ; 2 uses
  br label %bb.w

bb.w:                                             ; preds = %._crit_edge.i39, %compute_length_counts.exit
  %indvars.iv.i37 = phi i64 [ %i.gv, %compute_length_counts.exit ], [ %indvars.iv.next.i40, %._crit_edge.i39 ] ; 3 uses
  %.02734.i = phi i32 [ 0, %compute_length_counts.exit ], [ %.128.lcssa.i, %._crit_edge.i39 ] ; 3 uses
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.i37
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !3  ; 5 uses
  %.not3031.i = icmp eq i32 %i.gx, 0
  br i1 %.not3031.i, label %._crit_edge.i39, label %.lr.ph.i38

.lr.ph.i38:                                       ; preds = %bb.w
  %i.gy = trunc i64 %indvars.iv.i37 to i8         ; 5 uses
  %xtraiter111 = and i32 %i.gx, 3                 ; 2 uses
  %lcmp.mod112.not = icmp eq i32 %xtraiter111, 0
  br i1 %lcmp.mod112.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.i38, %.prol.preheader
  %.033.i.prol = phi i32 [ %i.gz, %.prol.preheader ], [ %i.gx, %.lr.ph.i38 ]
  %.12832.i.prol = phi i32 [ %i.ha, %.prol.preheader ], [ %.02734.i, %.lr.ph.i38 ] ; 2 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph.i38 ]
  %i.gz = add i32 %.033.i.prol, -1                ; 2 uses
  %i.ha = add i32 %.12832.i.prol, 1               ; 3 uses
  %i.hb = zext i32 %.12832.i.prol to i64
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.hb
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !3
  %i.he = and i32 %i.hd, 1023
  %i.hf = zext nneg i32 %i.he to i64
  %i.hg = getelementptr inbounds nuw i8, ptr %3, i64 %i.hf
  store i8 %i.gy, ptr %i.hg, align 1, !tbaa !20
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter111
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !118

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph.i38
  %.lcssa.unr = phi i32 [ poison, %.lr.ph.i38 ], [ %i.ha, %.prol.preheader ]
  %.033.i.unr = phi i32 [ %i.gx, %.lr.ph.i38 ], [ %i.gz, %.prol.preheader ]
  %.12832.i.unr = phi i32 [ %.02734.i, %.lr.ph.i38 ], [ %i.ha, %.prol.preheader ]
  %i.hh = icmp ult i32 %i.gx, 4
  br i1 %i.hh, label %._crit_edge.i39, label %.lr.ph.i38.new

.lr.ph.i38.new:                                   ; preds = %.prol.loopexit, %.lr.ph.i38.new
  %.033.i = phi i32 [ %i.id, %.lr.ph.i38.new ], [ %.033.i.unr, %.prol.loopexit ]
  %.12832.i = phi i32 [ %i.ie, %.lr.ph.i38.new ], [ %.12832.i.unr, %.prol.loopexit ] ; 5 uses
  %i.hi = add i32 %.12832.i, 1
  %i.hj = zext i32 %.12832.i to i64
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.hj
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !3
  %i.hm = and i32 %i.hl, 1023
  %i.hn = zext nneg i32 %i.hm to i64
  %i.ho = getelementptr inbounds nuw i8, ptr %3, i64 %i.hn
  store i8 %i.gy, ptr %i.ho, align 1, !tbaa !20
  %i.hp = add i32 %.12832.i, 2
  %i.hq = zext i32 %i.hi to i64
  %i.hr = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.hq
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !3
  %i.ht = and i32 %i.hs, 1023
  %i.hu = zext nneg i32 %i.ht to i64
  %i.hv = getelementptr inbounds nuw i8, ptr %3, i64 %i.hu
  store i8 %i.gy, ptr %i.hv, align 1, !tbaa !20
  %i.hw = add i32 %.12832.i, 3
  %i.hx = zext i32 %i.hp to i64
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.hx
  %i.hz = load i32, ptr %i.hy, align 4, !tbaa !3
  %i.ia = and i32 %i.hz, 1023
  %i.ib = zext nneg i32 %i.ia to i64
  %i.ic = getelementptr inbounds nuw i8, ptr %3, i64 %i.ib
  store i8 %i.gy, ptr %i.ic, align 1, !tbaa !20
  %i.id = add i32 %.033.i, -4                     ; 2 uses
  %i.ie = add i32 %.12832.i, 4                    ; 2 uses
  %i.if = zext i32 %i.hw to i64
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.if
  %i.ih = load i32, ptr %i.ig, align 4, !tbaa !3
  %i.ii = and i32 %i.ih, 1023
  %i.ij = zext nneg i32 %i.ii to i64
  %i.ik = getelementptr inbounds nuw i8, ptr %3, i64 %i.ij
  store i8 %i.gy, ptr %i.ik, align 1, !tbaa !20
  %.not30.i.3 = icmp eq i32 %i.id, 0
  br i1 %.not30.i.3, label %._crit_edge.i39, label %.lr.ph.i38.new, !llvm.loop !119

._crit_edge.i39:                                  ; preds = %.prol.loopexit, %.lr.ph.i38.new, %bb.w
  %.128.lcssa.i = phi i32 [ %.02734.i, %bb.w ], [ %.lcssa.unr, %.prol.loopexit ], [ %i.ie, %.lr.ph.i38.new ]
  %indvars.iv.next.i40 = add nsw i64 %indvars.iv.i37, -1 ; 2 uses
  %.not.i41 = icmp eq i64 %indvars.iv.next.i40, 0
  br i1 %.not.i41, label %.new113, label %bb.w, !llvm.loop !120

.new113:                                          ; preds = %._crit_edge.i39
  store i32 0, ptr %i.a, align 16, !tbaa !3
  %i.il = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 0, ptr %i.il, align 4, !tbaa !3
  %i.im = add nsw i64 %i.gv, -1                   ; 2 uses
  %xtraiter115 = and i64 %i.im, 3                 ; 3 uses
  %unroll_iter119 = and i64 %i.im, -4
  br label %bb.x

bb.x:                                             ; preds = %bb.x, %.new113
  %i.in = phi i32 [ 0, %.new113 ], [ %i.jk, %bb.x ]
  %indvars.iv39.i = phi i64 [ 2, %.new113 ], [ %indvars.iv.next40.i.3, %bb.x ] ; 6 uses
  %niter120 = phi i64 [ 0, %.new113 ], [ %niter120.next.3, %bb.x ]
  %i.io = getelementptr [4 x i8], ptr %i.c, i64 %indvars.iv39.i
  %i.ip = getelementptr i8, ptr %i.io, i64 -4
  %i.iq = load i32, ptr %i.ip, align 4, !tbaa !3
  %i.ir = add i32 %i.iq, %i.in
  %i.is = shl i32 %i.ir, 1                        ; 2 uses
  %i.it = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv39.i
  store i32 %i.is, ptr %i.it, align 8, !tbaa !3
  %indvars.iv.next40.i = or disjoint i64 %indvars.iv39.i, 1 ; 2 uses
  %i.iu = getelementptr [4 x i8], ptr %i.c, i64 %indvars.iv.next40.i
  %i.iv = getelementptr i8, ptr %i.iu, i64 -4
  %i.iw = load i32, ptr %i.iv, align 8, !tbaa !3
  %i.ix = add i32 %i.iw, %i.is
  %i.iy = shl i32 %i.ix, 1                        ; 2 uses
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next40.i
  store i32 %i.iy, ptr %i.iz, align 4, !tbaa !3
  %indvars.iv.next40.i.1 = add nuw nsw i64 %indvars.iv39.i, 2 ; 2 uses
  %i.ja = getelementptr [4 x i8], ptr %i.c, i64 %indvars.iv.next40.i.1
  %i.jb = getelementptr i8, ptr %i.ja, i64 -4
  %i.jc = load i32, ptr %i.jb, align 4, !tbaa !3
  %i.jd = add i32 %i.jc, %i.iy
  %i.je = shl i32 %i.jd, 1                        ; 2 uses
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next40.i.1
  store i32 %i.je, ptr %i.jf, align 8, !tbaa !3
  %indvars.iv.next40.i.2 = add nuw nsw i64 %indvars.iv39.i, 3 ; 2 uses
  %i.jg = getelementptr [4 x i8], ptr %i.c, i64 %indvars.iv.next40.i.2
  %i.jh = getelementptr i8, ptr %i.jg, i64 -4
  %i.ji = load i32, ptr %i.jh, align 8, !tbaa !3
  %i.jj = add i32 %i.ji, %i.je
  %i.jk = shl i32 %i.jj, 1                        ; 3 uses
  %i.jl = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next40.i.2
  store i32 %i.jk, ptr %i.jl, align 4, !tbaa !3
  %indvars.iv.next40.i.3 = add nuw nsw i64 %indvars.iv39.i, 4 ; 2 uses
  %niter120.next.3 = add i64 %niter120, 4         ; 2 uses
  %niter120.ncmp.3 = icmp eq i64 %niter120.next.3, %unroll_iter119
  br i1 %niter120.ncmp.3, label %.preheader.i44.preheader.unr-lcssa, label %bb.x, !llvm.loop !121

.preheader.i44.preheader.unr-lcssa:               ; preds = %bb.x
  %lcmp.mod117.not = icmp eq i64 %xtraiter115, 0
  br i1 %lcmp.mod117.not, label %.preheader.i44.preheader, label %.epil.preheader114

.epil.preheader114:                               ; preds = %.preheader.i44.preheader.unr-lcssa
  %lcmp.mod118 = icmp ne i64 %xtraiter115, 0
  tail call void @llvm.assume(i1 %lcmp.mod118)
  br label %bb.y

bb.y:                                             ; preds = %bb.y, %.epil.preheader114
  %i.jm = phi i32 [ %i.jk, %.epil.preheader114 ], [ %i.jr, %bb.y ]
  %indvars.iv39.i.epil = phi i64 [ %indvars.iv.next40.i.3, %.epil.preheader114 ], [ %indvars.iv.next40.i.epil, %bb.y ] ; 3 uses
  %epil.iter116 = phi i64 [ 0, %.epil.preheader114 ], [ %epil.iter116.next, %bb.y ]
  %i.jn = getelementptr [4 x i8], ptr %i.c, i64 %indvars.iv39.i.epil
  %i.jo = getelementptr i8, ptr %i.jn, i64 -4
  %i.jp = load i32, ptr %i.jo, align 4, !tbaa !3
  %i.jq = add i32 %i.jp, %i.jm
  %i.jr = shl i32 %i.jq, 1                        ; 2 uses
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv39.i.epil
  store i32 %i.jr, ptr %i.js, align 4, !tbaa !3
  %indvars.iv.next40.i.epil = add nuw nsw i64 %indvars.iv39.i.epil, 1
  %epil.iter116.next = add i64 %epil.iter116, 1   ; 2 uses
  %epil.iter116.cmp.not = icmp eq i64 %epil.iter116.next, %xtraiter115
  br i1 %epil.iter116.cmp.not, label %.preheader.i44.preheader, label %bb.y, !llvm.loop !122

.preheader.i44.preheader:                         ; preds = %bb.y, %.preheader.i44.preheader.unr-lcssa
  br label %.preheader.i44

.preheader.i44:                                   ; preds = %.preheader.i44.preheader, %.preheader.i44
  %indvars.iv43.i = phi i64 [ %indvars.iv.next44.i, %.preheader.i44 ], [ 0, %.preheader.i44.preheader ] ; 3 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv43.i
  %i.ju = load i8, ptr %i.jt, align 1, !tbaa !20  ; 2 uses
  %i.jv = zext i8 %i.ju to i64
  %i.jw = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.jv ; 2 uses
  %i.jx = load i32, ptr %i.jw, align 4, !tbaa !3  ; 3 uses
  %i.jy = add i32 %i.jx, 1
  store i32 %i.jy, ptr %i.jw, align 4, !tbaa !3
  %i.jz = and i32 %i.jx, 255
  %i.ka = zext nneg i32 %i.jz to i64
  %i.kb = getelementptr inbounds nuw i8, ptr @bitreverse_tab, i64 %i.ka
  %i.kc = load i8, ptr %i.kb, align 1, !tbaa !20
  %i.kd = zext i8 %i.kc to i32
  %i.ke = shl nuw nsw i32 %i.kd, 8
  %i.kf = lshr i32 %i.jx, 8
  %i.kg = zext nneg i32 %i.kf to i64
  %i.kh = getelementptr inbounds nuw i8, ptr @bitreverse_tab, i64 %i.kg
  %i.ki = load i8, ptr %i.kh, align 1, !tbaa !20
  %i.kj = zext i8 %i.ki to i32
  %i.kk = or disjoint i32 %i.ke, %i.kj
  %i.kl = zext i8 %i.ju to i32
  %i.km = sub nsw i32 16, %i.kl
  %i.kn = lshr i32 %i.kk, %i.km
  %i.ko = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv43.i
  store i32 %i.kn, ptr %i.ko, align 4, !tbaa !3
  %indvars.iv.next44.i = add nuw nsw i64 %indvars.iv43.i, 1 ; 2 uses
  %exitcond48.not.i = icmp eq i64 %indvars.iv.next44.i, %wide.trip.count.i
  br i1 %exitcond48.not.i, label %gen_codewords.exit, label %.preheader.i44, !llvm.loop !123

gen_codewords.exit:                               ; preds = %.preheader.i44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  br label %bb.z

bb.z:                                             ; preds = %sort_symbols.exit, %gen_codewords.exit, %bb.m
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @deflate_precompute_huffman_header(ptr noundef initializes((6052, 6060)) %0) unnamed_addr #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4600 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 6052 ; 34 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2680 ; 4 uses
  store i32 288, ptr %i.b, align 4, !tbaa !20
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2967
  %i.e = load i8, ptr %i.d, align 1, !tbaa !20
  %.not.not = icmp eq i8 %i.e, 0                  ; 2 uses
  br i1 %.not.not, label %bb.b, label %bb.af

bb.b:                                             ; preds = %bb.a
  store i32 287, ptr %i.b, align 4, !tbaa !20
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2966
  %i.g = load i8, ptr %i.f, align 2, !tbaa !20
  %.not.1 = icmp eq i8 %i.g, 0
  br i1 %.not.1, label %bb.c, label %bb.af

bb.c:                                             ; preds = %bb.b
  store i32 286, ptr %i.b, align 4, !tbaa !20
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 2965
  %i.i = load i8, ptr %i.h, align 1, !tbaa !20
  %.not.2 = icmp eq i8 %i.i, 0
  br i1 %.not.2, label %bb.d, label %bb.af

bb.d:                                             ; preds = %bb.c
  store i32 285, ptr %i.b, align 4, !tbaa !20
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 2964
  %i.k = load i8, ptr %i.j, align 4, !tbaa !20
  %.not.3 = icmp eq i8 %i.k, 0
  br i1 %.not.3, label %bb.e, label %bb.af

bb.e:                                             ; preds = %bb.d
  store i32 284, ptr %i.b, align 4, !tbaa !20
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 2963
  %i.m = load i8, ptr %i.l, align 1, !tbaa !20
  %.not.4 = icmp eq i8 %i.m, 0
  br i1 %.not.4, label %bb.f, label %bb.af

bb.f:                                             ; preds = %bb.e
  store i32 283, ptr %i.b, align 4, !tbaa !20
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 2962
  %i.o = load i8, ptr %i.n, align 2, !tbaa !20
  %.not.5 = icmp eq i8 %i.o, 0
  br i1 %.not.5, label %bb.g, label %bb.af

bb.g:                                             ; preds = %bb.f
  store i32 282, ptr %i.b, align 4, !tbaa !20
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 2961
  %i.q = load i8, ptr %i.p, align 1, !tbaa !20
  %.not.6 = icmp eq i8 %i.q, 0
  br i1 %.not.6, label %bb.h, label %bb.af

bb.h:                                             ; preds = %bb.g
  store i32 281, ptr %i.b, align 4, !tbaa !20
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 2960
  %i.s = load i8, ptr %i.r, align 4, !tbaa !20
  %.not.7 = icmp eq i8 %i.s, 0
  br i1 %.not.7, label %bb.i, label %bb.af

bb.i:                                             ; preds = %bb.h
  store i32 280, ptr %i.b, align 4, !tbaa !20
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 2959
  %i.u = load i8, ptr %i.t, align 1, !tbaa !20
  %.not.8 = icmp eq i8 %i.u, 0
  br i1 %.not.8, label %bb.j, label %bb.af

bb.j:                                             ; preds = %bb.i
  store i32 279, ptr %i.b, align 4, !tbaa !20
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 2958
  %i.w = load i8, ptr %i.v, align 2, !tbaa !20
  %.not.9 = icmp eq i8 %i.w, 0
  br i1 %.not.9, label %bb.k, label %bb.af

bb.k:                                             ; preds = %bb.j
  store i32 278, ptr %i.b, align 4, !tbaa !20
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 2957
  %i.y = load i8, ptr %i.x, align 1, !tbaa !20
  %.not.10 = icmp eq i8 %i.y, 0
  br i1 %.not.10, label %bb.l, label %bb.af

end_hunk_0
