Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fftw3/original/hc2hc-generic?download=true
begin_hunk_0_@apply_dit:bb.a
.preheader.lr.ph.i:                               ; preds = %bytwiddle.exit
  %i.dv = icmp sgt i64 %i.dl, 2
  %i.dw = mul i64 %i.dn, %i.dr
  %factor.op.mul.i.reass.i = sub i64 0, %i.dw     ; 2 uses
  %i.dx = sub i64 0, %i.dn                        ; 36 uses
  %i.dy = add i64 %i.dl, -1                       ; 2 uses
  %i.dz = lshr i64 %i.dy, 1
  br i1 %i.dv, label %.preheader.lr.ph.split.us.i, label %.preheader.lr.ph.split.i

.preheader.lr.ph.split.us.i:                      ; preds = %.preheader.lr.ph.i
  %i.ea = icmp sgt i64 %i.ds, 0
  br i1 %i.ea, label %.preheader.us.us.us.preheader.i, label %reorder_dit.exit

.preheader.us.us.us.preheader.i:                  ; preds = %.preheader.lr.ph.split.us.i
  %i.eb = add nsw i64 %i.dl, -3
  %i.ec = lshr i64 %i.eb, 1                       ; 3 uses
  %i.ed = add nuw nsw i64 %i.ec, 1
  %i.ee = shl i64 %i.dr, 3                        ; 3 uses
  %i.ef = shl i64 %i.dm, 3                        ; 6 uses
  %i.eg = shl i64 %i.dp, 3
  %i.eh = mul i64 %i.dm, %i.ec
  %i.ei = add i64 %i.dr, 1
  %smax = tail call i64 @llvm.smax.i64(i64 %i.dt, i64 %i.ei) ; 2 uses
  %i.ej = add i64 %i.dm, %smax
  %i.ek = add i64 %i.eh, %i.ej
  %i.el = shl i64 %i.ek, 3
  %i.em = mul i64 %i.dl, %i.dm
  %i.en = shl i64 %i.em, 3
  %i.eo = add i64 %i.en, 8
  %i.ep = shl i64 %smax, 3                        ; 3 uses
  %i.eq = sub i64 %i.eo, %i.ep
  %i.er = shl i64 %i.dl, 3                        ; 2 uses
  %i.es = shl i64 %i.ec, 3                        ; 3 uses
  %i.et = sub i64 %i.er, %i.es
  %i.eu = mul i64 %i.dm, %i.et
  %i.ev = add i64 %i.eu, 8
  %i.ew = sub i64 %i.ev, %i.ee
  %i.ex = mul i64 %i.dm, -8                       ; 5 uses
  %i.ey = mul i64 %i.dm, %i.dy
  %i.ez = add i64 %i.ey, %i.dr
  %i.fa = shl i64 %i.ez, 3
  %i.fb = add i64 %i.er, -8
  %i.fc = sub i64 %i.fb, %i.es
  %i.fd = mul i64 %i.dm, %i.fc
  %i.fe = shl i64 %i.dm, 4
  %i.ff = or disjoint i64 %i.fe, 8
  %i.fg = sub i64 %i.ff, %i.ep
  %i.fh = add i64 %i.es, 16
  %i.fi = mul i64 %i.dm, %i.fh
  %i.fj = add i64 %i.fi, 8
  %i.fk = sub i64 %i.fj, %i.ee
  %i.fl = getelementptr i8, ptr %1, i64 %i.ee
  %i.fm = getelementptr i8, ptr %i.fl, i64 %i.ef
  %i.fn = getelementptr i8, ptr %1, i64 %i.el
  %i.fo = getelementptr i8, ptr %1, i64 %i.eq
  %i.fp = getelementptr i8, ptr %1, i64 %i.ew
  %i.fq = getelementptr i8, ptr %1, i64 %i.fa
  %i.fr = getelementptr i8, ptr %1, i64 %i.fd
  %i.fs = getelementptr i8, ptr %i.fr, i64 %i.ep
  %i.ft = getelementptr i8, ptr %1, i64 %i.fg
  %i.fu = getelementptr i8, ptr %1, i64 %i.fk
  %i.fv = add i64 %i.dr, 1
  %i.fw = tail call i64 @llvm.smax.i64(i64 %i.dt, i64 %i.fv)
  %i.fx = sub i64 %i.fw, %i.dr                    ; 3 uses
  %min.iters.check = icmp ugt i64 %i.fx, 13
  %ident.check.not = icmp eq i64 %i.dn, 1
  %or.cond = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  %i.fy = or i64 %i.ex, %i.ef
  %i.fz = icmp slt i64 %i.fy, 0
  %i.ga = or i64 %i.ex, %i.ef
  %i.gb = icmp slt i64 %i.ga, 0
  %stride.check48 = icmp slt i64 %i.ef, 0
  %stride.check54 = icmp slt i64 %i.ex, 0
  %i.gc = or i64 %i.ef, %i.ex
  %i.gd = icmp slt i64 %i.gc, 0
  %i.ge = or i64 %i.ef, %i.ex
  %i.gf = icmp slt i64 %i.ge, 0
  %n.vec = and i64 %i.fx, -2                      ; 3 uses
  %i.gg = add i64 %i.dr, %n.vec
  %cmp.n = icmp eq i64 %i.fx, %n.vec
  %xtraiter82 = and i64 %i.ds, 7                  ; 2 uses
  %lcmp.mod83.not = icmp eq i64 %xtraiter82, 0
  %i.gh = icmp ult i64 %i.ds, 8
  br label %.preheader.us.us.us.i

.preheader.us.us.us.i:                            ; preds = %swapri.exit.us.us.us.i.loopexit, %.preheader.us.us.us.preheader.i
  %.080.us.us.us.i = phi ptr [ %i.jo, %swapri.exit.us.us.us.i.loopexit ], [ %1, %.preheader.us.us.us.preheader.i ] ; 4 uses
  %.07179.us.us.us.i = phi i64 [ %i.jn, %swapri.exit.us.us.us.i.loopexit ], [ 0, %.preheader.us.us.us.preheader.i ] ; 2 uses
  %i.gi = mul i64 %i.eg, %.07179.us.us.us.i       ; 8 uses
  %scevgep = getelementptr i8, ptr %i.fm, i64 %i.gi ; 3 uses
  %scevgep32 = getelementptr i8, ptr %i.fn, i64 %i.gi ; 3 uses
  %scevgep33 = getelementptr i8, ptr %i.fo, i64 %i.gi ; 3 uses
  %scevgep34 = getelementptr i8, ptr %i.fp, i64 %i.gi ; 3 uses
  %scevgep35 = getelementptr i8, ptr %i.fq, i64 %i.gi ; 3 uses
  %scevgep36 = getelementptr i8, ptr %i.fs, i64 %i.gi ; 3 uses
  %scevgep37 = getelementptr i8, ptr %i.ft, i64 %i.gi ; 3 uses
  %scevgep38 = getelementptr i8, ptr %i.fu, i64 %i.gi ; 3 uses
  %bound0 = icmp ult ptr %scevgep, %scevgep34
  %bound1 = icmp ult ptr %scevgep33, %scevgep32
  %found.conflict = and i1 %bound0, %bound1
  %i.gj = or i1 %found.conflict, %i.fz
  %bound040 = icmp ult ptr %scevgep, %scevgep36
  %bound141 = icmp ult ptr %scevgep35, %scevgep32
  %found.conflict42 = and i1 %bound040, %bound141
  %i.gk = or i1 %found.conflict42, %i.gb
  %conflict.rdx = or i1 %i.gj, %i.gk
  %bound045 = icmp ult ptr %scevgep, %scevgep38
  %bound146 = icmp ult ptr %scevgep37, %scevgep32
  %found.conflict47 = and i1 %bound045, %bound146
  %i.gl = or i1 %found.conflict47, %stride.check48
  %conflict.rdx50 = or i1 %conflict.rdx, %i.gl
  %bound051 = icmp ult ptr %scevgep33, %scevgep36
  %bound152 = icmp ult ptr %scevgep35, %scevgep34
  %found.conflict53 = and i1 %bound051, %bound152
  %i.gm = or i1 %found.conflict53, %stride.check54
  %conflict.rdx56 = or i1 %conflict.rdx50, %i.gm
  %bound057 = icmp ult ptr %scevgep33, %scevgep38
  %bound158 = icmp ult ptr %scevgep37, %scevgep34
  %found.conflict59 = and i1 %bound057, %bound158
  %i.gn = or i1 %found.conflict59, %i.gd
  %conflict.rdx62 = or i1 %conflict.rdx56, %i.gn
  %bound063 = icmp ult ptr %scevgep35, %scevgep38
  %bound164 = icmp ult ptr %scevgep37, %scevgep36
  %found.conflict65 = and i1 %bound063, %bound164
  %i.go = or i1 %found.conflict65, %i.gf
  %conflict.rdx68 = or i1 %conflict.rdx62, %i.go
  br label %.lr.ph.us.us.us.i

.lr.ph.us.us.us.i:                                ; preds = %._crit_edge.us.us.us.i, %.preheader.us.us.us.i
  %.07276.us.us.us.i = phi i64 [ 1, %.preheader.us.us.us.i ], [ %2, %._crit_edge.us.us.us.i ] ; 4 uses
  %i.gp = mul nsw i64 %.07276.us.us.us.i, %i.dq
  %i.gq = getelementptr inbounds [8 x i8], ptr %.080.us.us.us.i, i64 %i.gp ; 4 uses
  %i.gr = sub nuw nsw i64 %i.dl, %.07276.us.us.us.i
  %i.gs = mul nsw i64 %i.gr, %i.dq
  %i.gt = getelementptr inbounds [8 x i8], ptr %.080.us.us.us.i, i64 %i.gs ; 4 uses
  %or.cond.not = xor i1 %or.cond, true
  %brmerge = select i1 %or.cond.not, i1 true, i1 %conflict.rdx68
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.lr.ph.us.us.us.i, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph.us.us.us.i ] ; 2 uses
  %i.gu = add i64 %i.dr, %index                   ; 3 uses
  %i.gv = getelementptr inbounds [8 x i8], ptr %i.gq, i64 %i.gu ; 2 uses
  %wide.load = load <2 x double>, ptr %i.gv, align 8, !tbaa !33, !alias.scope !60, !noalias !61 ; 2 uses
  %i.gw = sub nsw i64 %i.dq, %i.gu                ; 2 uses
  %i.gx = getelementptr inbounds [8 x i8], ptr %i.gt, i64 %i.gw
  %i.gy = getelementptr inbounds i8, ptr %i.gx, i64 -8 ; 2 uses
  %wide.load69 = load <2 x double>, ptr %i.gy, align 8, !tbaa !33, !alias.scope !62, !noalias !63 ; 2 uses
  %reverse = shufflevector <2 x double> %wide.load69, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.gz = getelementptr inbounds [8 x i8], ptr %i.gt, i64 %i.gu ; 2 uses
  %wide.load70 = load <2 x double>, ptr %i.gz, align 8, !tbaa !33, !alias.scope !64, !noalias !65 ; 2 uses
  %i.ha = getelementptr inbounds [8 x i8], ptr %i.gq, i64 %i.gw
  %i.hb = getelementptr inbounds i8, ptr %i.ha, i64 -8 ; 2 uses
  %wide.load71 = load <2 x double>, ptr %i.hb, align 8, !tbaa !33, !alias.scope !65 ; 2 uses
  %reverse72 = shufflevector <2 x double> %wide.load71, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.hc = fsub <2 x double> %wide.load, %reverse
  store <2 x double> %i.hc, ptr %i.gv, align 8, !tbaa !33, !alias.scope !60, !noalias !61
  %i.hd = shufflevector <2 x double> %wide.load, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %reverse73 = fadd <2 x double> %i.hd, %wide.load69
  store <2 x double> %reverse73, ptr %i.gy, align 8, !tbaa !33, !alias.scope !62, !noalias !63
  %i.he = fsub <2 x double> %wide.load70, %reverse72
  store <2 x double> %i.he, ptr %i.gz, align 8, !tbaa !33, !alias.scope !64, !noalias !65
  %i.hf = shufflevector <2 x double> %wide.load70, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %reverse74 = fadd <2 x double> %i.hf, %wide.load71
  store <2 x double> %reverse74, ptr %i.hb, align 8, !tbaa !33, !alias.scope !65
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.hg = icmp eq i64 %index.next, %n.vec
  br i1 %i.hg, label %middle.block, label %vector.body, !llvm.loop !54

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us.us.us.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.us.us.us.i, %middle.block
  %.07375.us.us.us.i.ph = phi i64 [ %i.gg, %middle.block ], [ %i.dr, %.lr.ph.us.us.us.i ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.07375.us.us.us.i = phi i64 [ %i.hv, %scalar.ph ], [ %.07375.us.us.us.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.hh = mul nsw i64 %.07375.us.us.us.i, %i.dn   ; 3 uses
  %i.hi = getelementptr inbounds [8 x i8], ptr %i.gq, i64 %i.hh ; 2 uses
  %i.hj = load double, ptr %i.hi, align 8, !tbaa !33 ; 2 uses
  %i.hk = sub nsw i64 %i.dq, %i.hh                ; 2 uses
  %i.hl = getelementptr inbounds [8 x i8], ptr %i.gt, i64 %i.hk ; 2 uses
  %i.hm = load double, ptr %i.hl, align 8, !tbaa !33 ; 2 uses
  %i.hn = getelementptr inbounds [8 x i8], ptr %i.gt, i64 %i.hh ; 2 uses
  %i.ho = load double, ptr %i.hn, align 8, !tbaa !33 ; 2 uses
  %i.hp = getelementptr inbounds [8 x i8], ptr %i.gq, i64 %i.hk ; 2 uses
  %i.hq = load double, ptr %i.hp, align 8, !tbaa !33 ; 2 uses
  %i.hr = fsub double %i.hj, %i.hm
  store double %i.hr, ptr %i.hi, align 8, !tbaa !33
  %i.hs = fadd double %i.hj, %i.hm
  store double %i.hs, ptr %i.hl, align 8, !tbaa !33
  %i.ht = fsub double %i.ho, %i.hq
  store double %i.ht, ptr %i.hn, align 8, !tbaa !33
  %i.hu = fadd double %i.ho, %i.hq
  store double %i.hu, ptr %i.hp, align 8, !tbaa !33
  %i.hv = add nsw i64 %.07375.us.us.us.i, 1       ; 2 uses
  %i.hw = icmp slt i64 %i.hv, %i.dt
  br i1 %i.hw, label %scalar.ph, label %._crit_edge.us.us.us.i, !llvm.loop !55

.lr.ph.i.us.us.us.i:                              ; preds = %._crit_edge78.us.us.us.i, %..loopexit_crit_edge.i.us.us.us.i
  %.036.i.us.us.us.i = phi i64 [ %i.hx, %..loopexit_crit_edge.i.us.us.us.i ], [ 0, %._crit_edge78.us.us.us.i ] ; 3 uses
  %i.hx = add nuw nsw i64 %.036.i.us.us.us.i, 1   ; 2 uses
  %i.hy = mul nsw i64 %i.hx, %i.dq
  %gep.i.us.us.us.i = getelementptr [8 x i8], ptr %invariant.gep.i.us.us.us.i, i64 %i.hy ; 2 uses
  %i.hz = sub nuw nsw i64 %i.dl, %.036.i.us.us.us.i
  %i.ia = mul nsw i64 %i.hz, %i.dq
  %gep39.i.us.us.us.i = getelementptr [8 x i8], ptr %invariant.gep.i.us.us.us.i, i64 %i.ia ; 2 uses
  br i1 %lcmp.mod83.not, label %.prol.loopexit81, label %.prol.preheader80

.prol.preheader80:                                ; preds = %.lr.ph.i.us.us.us.i, %.prol.preheader80
  %.02935.i.us.us.us.i.prol = phi i64 [ %i.id, %.prol.preheader80 ], [ %i.dr, %.lr.ph.i.us.us.us.i ]
  %.03034.i.us.us.us.i.prol = phi ptr [ %i.if, %.prol.preheader80 ], [ %gep39.i.us.us.us.i, %.lr.ph.i.us.us.us.i ] ; 3 uses
  %.03133.i.us.us.us.i.prol = phi ptr [ %i.ie, %.prol.preheader80 ], [ %gep.i.us.us.us.i, %.lr.ph.i.us.us.us.i ] ; 3 uses
  %prol.iter84 = phi i64 [ %prol.iter84.next, %.prol.preheader80 ], [ 0, %.lr.ph.i.us.us.us.i ]
  %i.ib = load double, ptr %.03133.i.us.us.us.i.prol, align 8, !tbaa !33
  %i.ic = load double, ptr %.03034.i.us.us.us.i.prol, align 8, !tbaa !33
  store double %i.ic, ptr %.03133.i.us.us.us.i.prol, align 8, !tbaa !33
  store double %i.ib, ptr %.03034.i.us.us.us.i.prol, align 8, !tbaa !33
  %i.id = add nsw i64 %.02935.i.us.us.us.i.prol, 1 ; 2 uses
  %i.ie = getelementptr inbounds [8 x i8], ptr %.03133.i.us.us.us.i.prol, i64 %i.dx ; 2 uses
  %i.if = getelementptr inbounds [8 x i8], ptr %.03034.i.us.us.us.i.prol, i64 %i.dx ; 2 uses
  %prol.iter84.next = add i64 %prol.iter84, 1     ; 2 uses
  %prol.iter84.cmp.not = icmp eq i64 %prol.iter84.next, %xtraiter82
  br i1 %prol.iter84.cmp.not, label %.prol.loopexit81, label %.prol.preheader80, !llvm.loop !56

.prol.loopexit81:                                 ; preds = %.prol.preheader80, %.lr.ph.i.us.us.us.i
  %.02935.i.us.us.us.i.unr = phi i64 [ %i.dr, %.lr.ph.i.us.us.us.i ], [ %i.id, %.prol.preheader80 ]
  %.03034.i.us.us.us.i.unr = phi ptr [ %gep39.i.us.us.us.i, %.lr.ph.i.us.us.us.i ], [ %i.if, %.prol.preheader80 ]
  %.03133.i.us.us.us.i.unr = phi ptr [ %gep.i.us.us.us.i, %.lr.ph.i.us.us.us.i ], [ %i.ie, %.prol.preheader80 ]
  br i1 %i.gh, label %..loopexit_crit_edge.i.us.us.us.i, label %.lr.ph.i.us.us.us.i.new

.lr.ph.i.us.us.us.i.new:                          ; preds = %.prol.loopexit81, %.lr.ph.i.us.us.us.i.new
  %.02935.i.us.us.us.i = phi i64 [ %i.jk, %.lr.ph.i.us.us.us.i.new ], [ %.02935.i.us.us.us.i.unr, %.prol.loopexit81 ]
  %.03034.i.us.us.us.i = phi ptr [ %i.jm, %.lr.ph.i.us.us.us.i.new ], [ %.03034.i.us.us.us.i.unr, %.prol.loopexit81 ] ; 3 uses
  %.03133.i.us.us.us.i = phi ptr [ %i.jl, %.lr.ph.i.us.us.us.i.new ], [ %.03133.i.us.us.us.i.unr, %.prol.loopexit81 ] ; 3 uses
  %i.ig = load double, ptr %.03133.i.us.us.us.i, align 8, !tbaa !33
  %i.ih = load double, ptr %.03034.i.us.us.us.i, align 8, !tbaa !33
  store double %i.ih, ptr %.03133.i.us.us.us.i, align 8, !tbaa !33
  store double %i.ig, ptr %.03034.i.us.us.us.i, align 8, !tbaa !33
  %i.ii = getelementptr inbounds [8 x i8], ptr %.03133.i.us.us.us.i, i64 %i.dx ; 3 uses
  %i.ij = getelementptr inbounds [8 x i8], ptr %.03034.i.us.us.us.i, i64 %i.dx ; 3 uses
  %i.ik = load double, ptr %i.ii, align 8, !tbaa !33
  %i.il = load double, ptr %i.ij, align 8, !tbaa !33
  store double %i.il, ptr %i.ii, align 8, !tbaa !33
  store double %i.ik, ptr %i.ij, align 8, !tbaa !33
  %i.im = getelementptr inbounds [8 x i8], ptr %i.ii, i64 %i.dx ; 3 uses
  %i.in = getelementptr inbounds [8 x i8], ptr %i.ij, i64 %i.dx ; 3 uses
  %i.io = load double, ptr %i.im, align 8, !tbaa !33
  %i.ip = load double, ptr %i.in, align 8, !tbaa !33
  store double %i.ip, ptr %i.im, align 8, !tbaa !33
  store double %i.io, ptr %i.in, align 8, !tbaa !33
  %i.iq = getelementptr inbounds [8 x i8], ptr %i.im, i64 %i.dx ; 3 uses
  %i.ir = getelementptr inbounds [8 x i8], ptr %i.in, i64 %i.dx ; 3 uses
  %i.is = load double, ptr %i.iq, align 8, !tbaa !33
  %i.it = load double, ptr %i.ir, align 8, !tbaa !33
  store double %i.it, ptr %i.iq, align 8, !tbaa !33
  store double %i.is, ptr %i.ir, align 8, !tbaa !33
  %i.iu = getelementptr inbounds [8 x i8], ptr %i.iq, i64 %i.dx ; 3 uses
  %i.iv = getelementptr inbounds [8 x i8], ptr %i.ir, i64 %i.dx ; 3 uses
  %i.iw = load double, ptr %i.iu, align 8, !tbaa !33
  %i.ix = load double, ptr %i.iv, align 8, !tbaa !33
  store double %i.ix, ptr %i.iu, align 8, !tbaa !33
  store double %i.iw, ptr %i.iv, align 8, !tbaa !33
  %i.iy = getelementptr inbounds [8 x i8], ptr %i.iu, i64 %i.dx ; 3 uses
  %i.iz = getelementptr inbounds [8 x i8], ptr %i.iv, i64 %i.dx ; 3 uses
  %i.ja = load double, ptr %i.iy, align 8, !tbaa !33
  %i.jb = load double, ptr %i.iz, align 8, !tbaa !33
  store double %i.jb, ptr %i.iy, align 8, !tbaa !33
  store double %i.ja, ptr %i.iz, align 8, !tbaa !33
  %i.jc = getelementptr inbounds [8 x i8], ptr %i.iy, i64 %i.dx ; 3 uses
  %i.jd = getelementptr inbounds [8 x i8], ptr %i.iz, i64 %i.dx ; 3 uses
  %i.je = load double, ptr %i.jc, align 8, !tbaa !33
  %i.jf = load double, ptr %i.jd, align 8, !tbaa !33
  store double %i.jf, ptr %i.jc, align 8, !tbaa !33
  store double %i.je, ptr %i.jd, align 8, !tbaa !33
  %i.jg = getelementptr inbounds [8 x i8], ptr %i.jc, i64 %i.dx ; 3 uses
  %i.jh = getelementptr inbounds [8 x i8], ptr %i.jd, i64 %i.dx ; 3 uses
  %i.ji = load double, ptr %i.jg, align 8, !tbaa !33
  %i.jj = load double, ptr %i.jh, align 8, !tbaa !33
  store double %i.jj, ptr %i.jg, align 8, !tbaa !33
  store double %i.ji, ptr %i.jh, align 8, !tbaa !33
  %i.jk = add nsw i64 %.02935.i.us.us.us.i, 8     ; 2 uses
  %i.jl = getelementptr inbounds [8 x i8], ptr %i.jg, i64 %i.dx
  %i.jm = getelementptr inbounds [8 x i8], ptr %i.jh, i64 %i.dx
  %exitcond.not.i.us.us.us.i.7 = icmp eq i64 %i.jk, %i.dt
  br i1 %exitcond.not.i.us.us.us.i.7, label %..loopexit_crit_edge.i.us.us.us.i, label %.lr.ph.i.us.us.us.i.new, !llvm.loop !3

..loopexit_crit_edge.i.us.us.us.i:                ; preds = %.lr.ph.i.us.us.us.i.new, %.prol.loopexit81
  %exitcond40.not.i.us.us.us.i = icmp eq i64 %.036.i.us.us.us.i, %i.dz
  br i1 %exitcond40.not.i.us.us.us.i, label %swapri.exit.us.us.us.i.loopexit, label %.lr.ph.i.us.us.us.i, !llvm.loop !4

swapri.exit.us.us.us.i.loopexit:                  ; preds = %..loopexit_crit_edge.i.us.us.us.i
  %i.jn = add nuw nsw i64 %.07179.us.us.us.i, 1   ; 2 uses
  %i.jo = getelementptr inbounds [8 x i8], ptr %.080.us.us.us.i, i64 %i.dp
  %exitcond93.not.i = icmp eq i64 %i.jn, %i.do
  br i1 %exitcond93.not.i, label %reorder_dit.exit, label %.preheader.us.us.us.i, !llvm.loop !57

._crit_edge.us.us.us.i:                           ; preds = %scalar.ph, %middle.block
  %2 = add nuw nsw i64 %.07276.us.us.us.i, 1
  %exitcond92.not.i = icmp eq i64 %.07276.us.us.us.i, %i.ed
  br i1 %exitcond92.not.i, label %._crit_edge78.us.us.us.i, label %.lr.ph.us.us.us.i, !llvm.loop !58

._crit_edge78.us.us.us.i:                         ; preds = %._crit_edge.us.us.us.i
  %invariant.gep.i.us.us.us.i = getelementptr [8 x i8], ptr %.080.us.us.us.i, i64 %factor.op.mul.i.reass.i ; 2 uses
  br label %.lr.ph.i.us.us.us.i

.preheader.lr.ph.split.i:                         ; preds = %.preheader.lr.ph.i
  %i.jp = icmp slt i64 %i.ds, 1
  %i.jq = icmp slt i64 %i.dl, 1
  %brmerge87.i = select i1 %i.jq, i1 true, i1 %i.jp
  br i1 %brmerge87.i, label %reorder_dit.exit, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %.preheader.lr.ph.split.i
  %i.jr = mul nsw i64 %i.dq, %i.dl
  %i.js = add nsw i64 %i.ds, -1
  %xtraiter78 = and i64 %i.ds, 7                  ; 2 uses
  %lcmp.mod79.not = icmp eq i64 %xtraiter78, 0
  %i.jt = icmp ult i64 %i.js, 7
  br label %.preheader.i

.preheader.i:                                     ; preds = %..loopexit_crit_edge.i.i, %.preheader.preheader.i
  %.080.i = phi ptr [ %i.ka, %..loopexit_crit_edge.i.i ], [ %1, %.preheader.preheader.i ] ; 2 uses
  %.07179.i = phi i64 [ %i.jz, %..loopexit_crit_edge.i.i ], [ 0, %.preheader.preheader.i ]
  %invariant.gep.i.i = getelementptr [8 x i8], ptr %.080.i, i64 %factor.op.mul.i.reass.i ; 2 uses
  %gep.i.i = getelementptr [8 x i8], ptr %invariant.gep.i.i, i64 %i.dq ; 2 uses
  %gep39.i.i = getelementptr [8 x i8], ptr %invariant.gep.i.i, i64 %i.jr ; 2 uses
  br i1 %lcmp.mod79.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.preheader.i, %.prol.preheader
  %.02935.i.i.prol = phi i64 [ %i.jw, %.prol.preheader ], [ %i.dr, %.preheader.i ]
  %.03034.i.i.prol = phi ptr [ %i.jy, %.prol.preheader ], [ %gep39.i.i, %.preheader.i ] ; 3 uses
  %.03133.i.i.prol = phi ptr [ %i.jx, %.prol.preheader ], [ %gep.i.i, %.preheader.i ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.preheader.i ]
  %i.ju = load double, ptr %.03133.i.i.prol, align 8, !tbaa !33
  %i.jv = load double, ptr %.03034.i.i.prol, align 8, !tbaa !33
  store double %i.jv, ptr %.03133.i.i.prol, align 8, !tbaa !33
  store double %i.ju, ptr %.03034.i.i.prol, align 8, !tbaa !33
  %i.jw = add nsw i64 %.02935.i.i.prol, 1         ; 2 uses
  %i.jx = getelementptr inbounds [8 x i8], ptr %.03133.i.i.prol, i64 %i.dx ; 2 uses
  %i.jy = getelementptr inbounds [8 x i8], ptr %.03034.i.i.prol, i64 %i.dx ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter78
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !59

.prol.loopexit:                                   ; preds = %.prol.preheader, %.preheader.i
  %.02935.i.i.unr = phi i64 [ %i.dr, %.preheader.i ], [ %i.jw, %.prol.preheader ]
  %.03034.i.i.unr = phi ptr [ %gep39.i.i, %.preheader.i ], [ %i.jy, %.prol.preheader ]
  %.03133.i.i.unr = phi ptr [ %gep.i.i, %.preheader.i ], [ %i.jx, %.prol.preheader ]
  br i1 %i.jt, label %..loopexit_crit_edge.i.i, label %.preheader.i.new

..loopexit_crit_edge.i.i:                         ; preds = %.preheader.i.new, %.prol.loopexit
  %i.jz = add nuw nsw i64 %.07179.i, 1            ; 2 uses
  %i.ka = getelementptr inbounds [8 x i8], ptr %.080.i, i64 %i.dp
  %exitcond.not.i18 = icmp eq i64 %i.jz, %i.do
  br i1 %exitcond.not.i18, label %reorder_dit.exit, label %.preheader.i, !llvm.loop !57

.preheader.i.new:                                 ; preds = %.prol.loopexit, %.preheader.i.new
  %.02935.i.i = phi i64 [ %i.lf, %.preheader.i.new ], [ %.02935.i.i.unr, %.prol.loopexit ]
  %.03034.i.i = phi ptr [ %i.lh, %.preheader.i.new ], [ %.03034.i.i.unr, %.prol.loopexit ] ; 3 uses
  %.03133.i.i = phi ptr [ %i.lg, %.preheader.i.new ], [ %.03133.i.i.unr, %.prol.loopexit ] ; 3 uses
  %i.kb = load double, ptr %.03133.i.i, align 8, !tbaa !33
  %i.kc = load double, ptr %.03034.i.i, align 8, !tbaa !33
  store double %i.kc, ptr %.03133.i.i, align 8, !tbaa !33
  store double %i.kb, ptr %.03034.i.i, align 8, !tbaa !33
  %i.kd = getelementptr inbounds [8 x i8], ptr %.03133.i.i, i64 %i.dx ; 3 uses
  %i.ke = getelementptr inbounds [8 x i8], ptr %.03034.i.i, i64 %i.dx ; 3 uses
  %i.kf = load double, ptr %i.kd, align 8, !tbaa !33
  %i.kg = load double, ptr %i.ke, align 8, !tbaa !33
  store double %i.kg, ptr %i.kd, align 8, !tbaa !33
  store double %i.kf, ptr %i.ke, align 8, !tbaa !33
  %i.kh = getelementptr inbounds [8 x i8], ptr %i.kd, i64 %i.dx ; 3 uses
  %i.ki = getelementptr inbounds [8 x i8], ptr %i.ke, i64 %i.dx ; 3 uses
  %i.kj = load double, ptr %i.kh, align 8, !tbaa !33
  %i.kk = load double, ptr %i.ki, align 8, !tbaa !33
  store double %i.kk, ptr %i.kh, align 8, !tbaa !33
  store double %i.kj, ptr %i.ki, align 8, !tbaa !33
  %i.kl = getelementptr inbounds [8 x i8], ptr %i.kh, i64 %i.dx ; 3 uses
  %i.km = getelementptr inbounds [8 x i8], ptr %i.ki, i64 %i.dx ; 3 uses
  %i.kn = load double, ptr %i.kl, align 8, !tbaa !33
  %i.ko = load double, ptr %i.km, align 8, !tbaa !33
  store double %i.ko, ptr %i.kl, align 8, !tbaa !33
  store double %i.kn, ptr %i.km, align 8, !tbaa !33
  %i.kp = getelementptr inbounds [8 x i8], ptr %i.kl, i64 %i.dx ; 3 uses
  %i.kq = getelementptr inbounds [8 x i8], ptr %i.km, i64 %i.dx ; 3 uses
  %i.kr = load double, ptr %i.kp, align 8, !tbaa !33
  %i.ks = load double, ptr %i.kq, align 8, !tbaa !33
  store double %i.ks, ptr %i.kp, align 8, !tbaa !33
  store double %i.kr, ptr %i.kq, align 8, !tbaa !33
  %i.kt = getelementptr inbounds [8 x i8], ptr %i.kp, i64 %i.dx ; 3 uses
  %i.ku = getelementptr inbounds [8 x i8], ptr %i.kq, i64 %i.dx ; 3 uses
  %i.kv = load double, ptr %i.kt, align 8, !tbaa !33
  %i.kw = load double, ptr %i.ku, align 8, !tbaa !33
  store double %i.kw, ptr %i.kt, align 8, !tbaa !33
  store double %i.kv, ptr %i.ku, align 8, !tbaa !33
  %i.kx = getelementptr inbounds [8 x i8], ptr %i.kt, i64 %i.dx ; 3 uses
  %i.ky = getelementptr inbounds [8 x i8], ptr %i.ku, i64 %i.dx ; 3 uses
  %i.kz = load double, ptr %i.kx, align 8, !tbaa !33
  %i.la = load double, ptr %i.ky, align 8, !tbaa !33
  store double %i.la, ptr %i.kx, align 8, !tbaa !33
  store double %i.kz, ptr %i.ky, align 8, !tbaa !33
  %i.lb = getelementptr inbounds [8 x i8], ptr %i.kx, i64 %i.dx ; 3 uses
  %i.lc = getelementptr inbounds [8 x i8], ptr %i.ky, i64 %i.dx ; 3 uses
  %i.ld = load double, ptr %i.lb, align 8, !tbaa !33
  %i.le = load double, ptr %i.lc, align 8, !tbaa !33
  store double %i.le, ptr %i.lb, align 8, !tbaa !33
  store double %i.ld, ptr %i.lc, align 8, !tbaa !33
  %i.lf = add nsw i64 %.02935.i.i, 8              ; 2 uses
  %i.lg = getelementptr inbounds [8 x i8], ptr %i.lb, i64 %i.dx
  %i.lh = getelementptr inbounds [8 x i8], ptr %i.lc, i64 %i.dx
  %exitcond.not.i.i.7 = icmp eq i64 %i.lf, %i.dt
  br i1 %exitcond.not.i.i.7, label %..loopexit_crit_edge.i.i, label %.preheader.i.new, !llvm.loop !3

reorder_dit.exit:                                 ; preds = %..loopexit_crit_edge.i.i, %swapri.exit.us.us.us.i.loopexit, %bytwiddle.exit, %.preheader.lr.ph.split.us.i, %.preheader.lr.ph.split.i
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @apply_dif(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !25   ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !26   ; 10 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !27   ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !28   ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !29   ; 3 uses
  %i.k = mul nsw i64 %i.f, %i.d                   ; 10 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !31   ; 13 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !32   ; 13 uses
  %i.p = add i64 %i.o, %i.m                       ; 3 uses
  %i.q = icmp sgt i64 %i.h, 0
  br i1 %i.q, label %.lr.ph82.i, label %reorder_dif.exit

.lr.ph82.i:                                       ; preds = %bb.a
  %i.r = mul i64 %i.f, %i.m
  %factor.op.mul.i.reass.i = sub i64 0, %i.r      ; 2 uses
  %i.s = sub i64 0, %i.f                          ; 36 uses
  %i.t = add i64 %i.b, -1                         ; 2 uses
  %i.u = lshr i64 %i.t, 1
  %i.v = icmp sgt i64 %i.b, 2
  br i1 %i.v, label %.lr.ph82.split.us.i, label %.lr.ph82.split.i

.lr.ph82.split.us.i:                              ; preds = %.lr.ph82.i
  %i.w = icmp sgt i64 %i.o, 0
  br i1 %i.w, label %.lr.ph37.i.us.us.us.preheader.i, label %reorder_dif.exit

.lr.ph37.i.us.us.us.preheader.i:                  ; preds = %.lr.ph82.split.us.i
  %i.x = add nsw i64 %i.b, -3
  %i.y = lshr i64 %i.x, 1                         ; 2 uses
  %i.z = add nuw nsw i64 %i.y, 1
  %i.aa = shl i64 %i.m, 3                         ; 7 uses
  %i.ab = shl i64 %i.d, 3                         ; 6 uses
  %i.ac = shl i64 %i.j, 3
  %i.ad = shl i64 %i.y, 3                         ; 4 uses
  %i.ae = add i64 %i.ad, 8
  %i.af = mul i64 %i.d, %i.ae
  %i.ag = shl i64 %i.o, 3                         ; 4 uses
  %i.ah = mul i64 %i.b, %i.d
  %i.ai = shl i64 %i.ah, 3
  %i.aj = add i64 %i.ai, 8
  %i.ak = add i64 %i.aa, %i.ag
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = shl i64 %i.b, 3                         ; 2 uses
  %i.an = sub i64 %i.am, %i.ad
  %i.ao = mul i64 %i.d, %i.an
  %i.ap = add i64 %i.ao, 8
  %i.aq = sub i64 %i.ap, %i.aa
  %i.ar = mul i64 %i.d, -8                        ; 5 uses
  %i.as = mul i64 %i.d, %i.t
  %i.at = add i64 %i.as, %i.m
  %i.au = shl i64 %i.at, 3
  %i.av = add i64 %i.am, -8
  %i.aw = sub i64 %i.av, %i.ad
  %i.ax = mul i64 %i.d, %i.aw
  %i.ay = shl i64 %i.d, 4
  %i.az = or disjoint i64 %i.ay, 8
  %i.ba = add i64 %i.aa, %i.ag
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = add i64 %i.ad, 16
  %i.bd = mul i64 %i.d, %i.bc
  %i.be = add i64 %i.bd, 8
  %i.bf = sub i64 %i.be, %i.aa
  %i.bg = add i64 %i.o, %i.m
  %i.bh = add i64 %i.o, %i.m
  %i.bi = getelementptr i8, ptr %1, i64 %i.aa
  %i.bj = getelementptr i8, ptr %i.bi, i64 %i.ab
  %i.bk = getelementptr i8, ptr %1, i64 %i.af
  %i.bl = getelementptr i8, ptr %i.bk, i64 %i.aa
  %i.bm = getelementptr i8, ptr %i.bl, i64 %i.ag
  %i.bn = getelementptr i8, ptr %1, i64 %i.al
  %i.bo = getelementptr i8, ptr %1, i64 %i.aq
  %i.bp = getelementptr i8, ptr %1, i64 %i.au
  %i.bq = getelementptr i8, ptr %1, i64 %i.ax
  %i.br = getelementptr i8, ptr %i.bq, i64 %i.aa
  %i.bs = getelementptr i8, ptr %i.br, i64 %i.ag
  %i.bt = getelementptr i8, ptr %1, i64 %i.bb
  %i.bu = getelementptr i8, ptr %1, i64 %i.bf
  %xtraiter78 = and i64 %i.o, 7                   ; 2 uses
  %lcmp.mod79.not = icmp eq i64 %xtraiter78, 0
  %i.bv = icmp ult i64 %i.o, 8
  %min.iters.check = icmp ugt i64 %i.o, 9
  %ident.check.not = icmp eq i64 %i.f, 1
  %or.cond = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  %i.bw = or i64 %i.ar, %i.ab
  %i.bx = icmp slt i64 %i.bw, 0
  %i.by = or i64 %i.ar, %i.ab
  %i.bz = icmp slt i64 %i.by, 0
  %stride.check48 = icmp slt i64 %i.ab, 0
  %stride.check54 = icmp slt i64 %i.ar, 0
  %i.ca = or i64 %i.ab, %i.ar
  %i.cb = icmp slt i64 %i.ca, 0
  %i.cc = or i64 %i.ab, %i.ar
  %i.cd = icmp slt i64 %i.cc, 0
  %n.vec = and i64 %i.o, 9223372036854775806      ; 3 uses
  %i.ce = add i64 %i.m, %n.vec
  %cmp.n = icmp eq i64 %i.o, %n.vec
  br label %.lr.ph37.i.us.us.us.i

.lr.ph37.i.us.us.us.i:                            ; preds = %._crit_edge78.us.us.us.i, %.lr.ph37.i.us.us.us.preheader.i
  %.080.us.us.us.i = phi ptr [ %i.hh, %._crit_edge78.us.us.us.i ], [ %1, %.lr.ph37.i.us.us.us.preheader.i ] ; 4 uses
  %.07179.us.us.us.i = phi i64 [ %i.hg, %._crit_edge78.us.us.us.i ], [ 0, %.lr.ph37.i.us.us.us.preheader.i ] ; 2 uses
  %i.cf = mul i64 %i.ac, %.07179.us.us.us.i       ; 8 uses
  %scevgep = getelementptr i8, ptr %i.bj, i64 %i.cf ; 3 uses
  %scevgep32 = getelementptr i8, ptr %i.bm, i64 %i.cf ; 3 uses
  %scevgep33 = getelementptr i8, ptr %i.bn, i64 %i.cf ; 3 uses
  %scevgep34 = getelementptr i8, ptr %i.bo, i64 %i.cf ; 3 uses
  %scevgep35 = getelementptr i8, ptr %i.bp, i64 %i.cf ; 3 uses
  %scevgep36 = getelementptr i8, ptr %i.bs, i64 %i.cf ; 3 uses
  %scevgep37 = getelementptr i8, ptr %i.bt, i64 %i.cf ; 3 uses
  %scevgep38 = getelementptr i8, ptr %i.bu, i64 %i.cf ; 3 uses
  %invariant.gep.i.us.us.us.i = getelementptr [8 x i8], ptr %.080.us.us.us.i, i64 %factor.op.mul.i.reass.i ; 2 uses
  br label %.lr.ph.i.us.us.us.i

.lr.ph.i.us.us.us.i:                              ; preds = %.lr.ph37.i.us.us.us.i, %..loopexit_crit_edge.i.us.us.us.i
  %.036.i.us.us.us.i = phi i64 [ %i.cg, %..loopexit_crit_edge.i.us.us.us.i ], [ 0, %.lr.ph37.i.us.us.us.i ] ; 3 uses
  %i.cg = add nuw nsw i64 %.036.i.us.us.us.i, 1   ; 2 uses
  %i.ch = mul nsw i64 %i.cg, %i.k
  %gep.i.us.us.us.i = getelementptr [8 x i8], ptr %invariant.gep.i.us.us.us.i, i64 %i.ch ; 2 uses
  %i.ci = sub nuw nsw i64 %i.b, %.036.i.us.us.us.i
  %i.cj = mul nsw i64 %i.ci, %i.k
  %gep39.i.us.us.us.i = getelementptr [8 x i8], ptr %invariant.gep.i.us.us.us.i, i64 %i.cj ; 2 uses
  br i1 %lcmp.mod79.not, label %.prol.loopexit77, label %.prol.preheader76

.prol.preheader76:                                ; preds = %.lr.ph.i.us.us.us.i, %.prol.preheader76
  %.02935.i.us.us.us.i.prol = phi i64 [ %i.cm, %.prol.preheader76 ], [ %i.m, %.lr.ph.i.us.us.us.i ]
  %.03034.i.us.us.us.i.prol = phi ptr [ %i.co, %.prol.preheader76 ], [ %gep39.i.us.us.us.i, %.lr.ph.i.us.us.us.i ] ; 3 uses
  %.03133.i.us.us.us.i.prol = phi ptr [ %i.cn, %.prol.preheader76 ], [ %gep.i.us.us.us.i, %.lr.ph.i.us.us.us.i ] ; 3 uses
  %prol.iter80 = phi i64 [ %prol.iter80.next, %.prol.preheader76 ], [ 0, %.lr.ph.i.us.us.us.i ]
  %i.ck = load double, ptr %.03133.i.us.us.us.i.prol, align 8, !tbaa !33
  %i.cl = load double, ptr %.03034.i.us.us.us.i.prol, align 8, !tbaa !33
end_hunk_0
begin_hunk_1_@apply_dif:bb.a
.lr.ph.i:                                         ; preds = %._crit_edge.i, %.lr.ph71.i
  %.05969.i = phi i64 [ 1, %.lr.ph71.i ], [ %i.kp, %._crit_edge.i ] ; 2 uses
  %.06268.i = phi ptr [ %i.ke, %.lr.ph71.i ], [ %i.nb, %._crit_edge.i ] ; 2 uses
  %i.kn = mul nsw i64 %.05969.i, %i.js
  %i.ko = getelementptr inbounds [8 x i8], ptr %i.kl, i64 %i.kn ; 2 uses
  %i.kp = add nuw nsw i64 %.05969.i, 1            ; 3 uses
  %i.kq = mul nsw i64 %i.kp, %i.js
  %i.kr = getelementptr inbounds [8 x i8], ptr %i.km, i64 %i.kq ; 2 uses
  br i1 %i.kk, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i, %.lr.ph.i.new
  %.06066.i = phi ptr [ %i.mh, %.lr.ph.i.new ], [ %i.kr, %.lr.ph.i ] ; 3 uses
  %.06165.i = phi ptr [ %i.mg, %.lr.ph.i.new ], [ %i.ko, %.lr.ph.i ] ; 3 uses
  %.164.i = phi ptr [ %i.mf, %.lr.ph.i.new ], [ %.06268.i, %.lr.ph.i ] ; 5 uses
  %niter = phi i64 [ %niter.next.1, %.lr.ph.i.new ], [ 0, %.lr.ph.i ]
  %i.ks = load double, ptr %.06165.i, align 8, !tbaa !33 ; 2 uses
  %i.kt = load double, ptr %.06066.i, align 8, !tbaa !33 ; 2 uses
  %i.ku = load double, ptr %.164.i, align 8, !tbaa !33
  %i.kv = getelementptr inbounds nuw i8, ptr %.164.i, i64 8
  %i.kw = load double, ptr %i.kv, align 8, !tbaa !33 ; 2 uses
  %i.kx = fneg double %i.kw
  %i.ky = insertelement <2 x double> poison, double %i.ks, i64 0
  %i.kz = insertelement <2 x double> %i.ky, double %i.kt, i64 1
  %i.la = insertelement <2 x double> poison, double %i.kw, i64 0
  %i.lb = insertelement <2 x double> %i.la, double %i.kx, i64 1
  %i.lc = fmul <2 x double> %i.kz, %i.lb
  %i.ld = insertelement <2 x double> poison, double %i.kt, i64 0
  %i.le = insertelement <2 x double> %i.ld, double %i.ks, i64 1
  %i.lf = insertelement <2 x double> poison, double %i.ku, i64 0
  %i.lg = shufflevector <2 x double> %i.lf, <2 x double> poison, <2 x i32> zeroinitializer
  %i.lh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.le, <2 x double> %i.lg, <2 x double> %i.lc) ; 2 uses
  %i.li = extractelement <2 x double> %i.lh, i64 1
  store double %i.li, ptr %.06165.i, align 8, !tbaa !33
  %i.lj = extractelement <2 x double> %i.lh, i64 0
  store double %i.lj, ptr %.06066.i, align 8, !tbaa !33
  %i.lk = getelementptr inbounds nuw i8, ptr %.164.i, i64 16
  %i.ll = getelementptr inbounds [8 x i8], ptr %.06165.i, i64 %i.jp ; 3 uses
  %i.lm = getelementptr inbounds [8 x i8], ptr %.06066.i, i64 %i.kj ; 3 uses
  %i.ln = load double, ptr %i.ll, align 8, !tbaa !33 ; 2 uses
  %i.lo = load double, ptr %i.lm, align 8, !tbaa !33 ; 2 uses
  %i.lp = load double, ptr %i.lk, align 8, !tbaa !33
  %i.lq = getelementptr inbounds nuw i8, ptr %.164.i, i64 24
  %i.lr = load double, ptr %i.lq, align 8, !tbaa !33 ; 2 uses
  %i.ls = fneg double %i.lr
  %i.lt = insertelement <2 x double> poison, double %i.ln, i64 0
  %i.lu = insertelement <2 x double> %i.lt, double %i.lo, i64 1
  %i.lv = insertelement <2 x double> poison, double %i.lr, i64 0
  %i.lw = insertelement <2 x double> %i.lv, double %i.ls, i64 1
  %i.lx = fmul <2 x double> %i.lu, %i.lw
  %i.ly = insertelement <2 x double> poison, double %i.lo, i64 0
  %i.lz = insertelement <2 x double> %i.ly, double %i.ln, i64 1
  %i.ma = insertelement <2 x double> poison, double %i.lp, i64 0
  %i.mb = shufflevector <2 x double> %i.ma, <2 x double> poison, <2 x i32> zeroinitializer
  %i.mc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lz, <2 x double> %i.mb, <2 x double> %i.lx) ; 2 uses
  %i.md = extractelement <2 x double> %i.mc, i64 1
  store double %i.md, ptr %i.ll, align 8, !tbaa !33
  %i.me = extractelement <2 x double> %i.mc, i64 0
  store double %i.me, ptr %i.lm, align 8, !tbaa !33
  %i.mf = getelementptr inbounds nuw i8, ptr %.164.i, i64 32 ; 3 uses
  %i.mg = getelementptr inbounds [8 x i8], ptr %i.ll, i64 %i.jp ; 2 uses
  %i.mh = getelementptr inbounds [8 x i8], ptr %i.lm, i64 %i.kj ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.unr-lcssa, label %.lr.ph.i.new, !llvm.loop !0

._crit_edge.i.unr-lcssa:                          ; preds = %.lr.ph.i.new
  br i1 %lcmp.mod85.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph.i
  %.06066.i.epil.init = phi ptr [ %i.kr, %.lr.ph.i ], [ %i.mh, %._crit_edge.i.unr-lcssa ] ; 2 uses
  %.06165.i.epil.init = phi ptr [ %i.ko, %.lr.ph.i ], [ %i.mg, %._crit_edge.i.unr-lcssa ] ; 2 uses
  %.164.i.epil.init = phi ptr [ %.06268.i, %.lr.ph.i ], [ %i.mf, %._crit_edge.i.unr-lcssa ] ; 3 uses
  tail call void @llvm.assume(i1 %lcmp.mod87)
  %i.mi = load double, ptr %.06165.i.epil.init, align 8, !tbaa !33 ; 2 uses
  %i.mj = load double, ptr %.06066.i.epil.init, align 8, !tbaa !33 ; 2 uses
  %i.mk = load double, ptr %.164.i.epil.init, align 8, !tbaa !33
  %i.ml = getelementptr inbounds nuw i8, ptr %.164.i.epil.init, i64 8
  %i.mm = load double, ptr %i.ml, align 8, !tbaa !33 ; 2 uses
  %i.mn = fneg double %i.mm
  %i.mo = insertelement <2 x double> poison, double %i.mi, i64 0
  %i.mp = insertelement <2 x double> %i.mo, double %i.mj, i64 1
  %i.mq = insertelement <2 x double> poison, double %i.mm, i64 0
  %i.mr = insertelement <2 x double> %i.mq, double %i.mn, i64 1
  %i.ms = fmul <2 x double> %i.mp, %i.mr
  %i.mt = insertelement <2 x double> poison, double %i.mj, i64 0
  %i.mu = insertelement <2 x double> %i.mt, double %i.mi, i64 1
  %i.mv = insertelement <2 x double> poison, double %i.mk, i64 0
  %i.mw = shufflevector <2 x double> %i.mv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.mx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mu, <2 x double> %i.mw, <2 x double> %i.ms) ; 2 uses
  %i.my = extractelement <2 x double> %i.mx, i64 1
  store double %i.my, ptr %.06165.i.epil.init, align 8, !tbaa !33
  %i.mz = extractelement <2 x double> %i.mx, i64 0
  store double %i.mz, ptr %.06066.i.epil.init, align 8, !tbaa !33
  %i.na = getelementptr inbounds nuw i8, ptr %.164.i.epil.init, i64 16
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %.epil.preheader
  %.lcssa = phi ptr [ %i.mf, %._crit_edge.i.unr-lcssa ], [ %i.na, %.epil.preheader ]
  %i.nb = getelementptr inbounds i8, ptr %.lcssa, i64 %.idx63.i
  %exitcond80.not.i = icmp eq i64 %i.kp, %i.jn
  br i1 %exitcond80.not.i, label %._crit_edge72.i, label %.lr.ph.i, !llvm.loop !1

._crit_edge72.i:                                  ; preds = %._crit_edge.i
  %i.nc = add nuw nsw i64 %.05773.i, 1            ; 2 uses
  %i.nd = getelementptr inbounds [8 x i8], ptr %.074.i, i64 %i.jr
  %exitcond81.not.i = icmp eq i64 %i.nc, %i.jq
  br i1 %exitcond81.not.i, label %bytwiddle.exit, label %.lr.ph71.i, !llvm.loop !2

bytwiddle.exit:                                   ; preds = %._crit_edge72.i, %reorder_dif.exit, %.lr.ph76.i
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

declare void @fftw_plan_destroy_internal(ptr noundef) local_unnamed_addr #1

declare void @fftw_plan_awake(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @fftw_twiddle_awake(i32 noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="icelake-server" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="icelake-server" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!5, !6, !7}
!llvm.ident = !{!8}
!llvm.errno.tbaa = !{!13}

!0 = distinct !{!0, !37}
!1 = distinct !{!1, !37}
!2 = distinct !{!2, !37}
!3 = distinct !{!3, !37}
!4 = distinct !{!4, !37}
!5 = !{i32 8, !"PIC Level", i32 2}
!6 = !{i32 7, !"PIE Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 2}
!8 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"omnipotent char", !9, i64 0}
!11 = !{!"int", !10, i64 0}
!12 = !{!"__libc_errno", !11, i64 0}
!13 = !{!12, !11, i64 0}
!14 = !{!"any pointer", !10, i64 0}
!15 = !{!"double", !10, i64 0}
!16 = !{!"", !15, i64 0, !15, i64 8, !15, i64 16, !15, i64 24}
!17 = !{!"plan_s", !14, i64 0, !16, i64 8, !15, i64 40, !11, i64 48, !11, i64 52}
!18 = !{!"", !17, i64 0, !14, i64 56}
!19 = !{!"long", !10, i64 0}
!20 = !{!"p1 _ZTS6plan_s", !14, i64 0}
!21 = !{!"p1 _ZTS6twid_s", !14, i64 0}
!22 = !{!"", !18, i64 0, !19, i64 64, !19, i64 72, !19, i64 80, !19, i64 88, !19, i64 96, !19, i64 104, !19, i64 112, !20, i64 120, !20, i64 128, !21, i64 136}
!23 = !{!22, !20, i64 128}
!24 = !{!22, !20, i64 120}
!25 = !{!22, !19, i64 64}
!26 = !{!22, !19, i64 72}
!27 = !{!22, !19, i64 80}
!28 = !{!22, !19, i64 88}
!29 = !{!22, !19, i64 96}
!30 = !{!22, !21, i64 136}
!31 = !{!22, !19, i64 104}
!32 = !{!22, !19, i64 112}
!33 = !{!15, !15, i64 0}
!34 = !{!"p1 double", !14, i64 0}
!35 = !{!"twid_s", !34, i64 0, !19, i64 8, !19, i64 16, !19, i64 24, !11, i64 32, !14, i64 40, !21, i64 48, !11, i64 56}
!36 = !{!35, !34, i64 0}
!37 = !{!"llvm.loop.mustprogress"}
!38 = !{!18, !14, i64 56}
!39 = !{!"llvm.loop.isvectorized", i32 1}
!40 = !{!"llvm.loop.unroll.runtime.disable"}
!41 = !{!"llvm.loop.unroll.disable"}
!42 = distinct !{null}
!43 = !{!14, !14, i64 0}
!44 = !{i64 0, i64 8, !33, i64 8, i64 8, !33, i64 16, i64 8, !33, i64 24, i64 8, !33}
!45 = !{!22, !15, i64 32}
!46 = !{!"printer_s", !14, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !11, i64 32, !11, i64 36}
!47 = !{!46, !14, i64 0}
!48 = !{!22, !14, i64 56}
!49 = distinct !{!49, !"LVerDomain"}
!50 = distinct !{!50, !49}
!51 = distinct !{!51, !49}
!52 = distinct !{!52, !49}
!53 = distinct !{!53, !49}
!54 = distinct !{!54, !37, !39, !40}
!55 = distinct !{!55, !37, !39}
!56 = distinct !{!56, !41}
!57 = distinct !{!57, !37}
!58 = distinct !{!58, !37}
!59 = distinct !{!59, !41}
!60 = !{!50}
!61 = !{!53, !52, !51}
!62 = !{!53}
!63 = !{!52, !51}
!64 = !{!52}
!65 = !{!51}
!66 = distinct !{!66, !41}
!67 = distinct !{!67, !"LVerDomain"}
!68 = distinct !{!68, !67}
!69 = distinct !{!69, !67}
!70 = distinct !{!70, !67}
!71 = distinct !{!71, !67}
!72 = distinct !{!72, !37, !39, !40}
!73 = distinct !{!73, !37, !39}
!74 = distinct !{!74, !37}
!75 = distinct !{!75, !37}
!76 = distinct !{!76, !41}
!77 = !{!68}
!78 = !{!71, !70, !69}
!79 = !{!71}
!80 = !{!70, !69}
!81 = !{!70}
!82 = !{!69}
end_hunk_1
