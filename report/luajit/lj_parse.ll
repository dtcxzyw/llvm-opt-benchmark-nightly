Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luajit/original/lj_parse?download=true
inline.NumInlined: 342
inline.NumDeleted: 80
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 5
begin_hunk_0_@fs_finish:bb.a
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !56 ; 2 uses
  %i.dr = icmp ult i32 %i.dq, %i.dm
  br i1 %i.dr, label %.lr.ph63.i, label %._crit_edge64.i

.lr.ph63.i:                                       ; preds = %._crit_edge.i
  %i.ds = zext i32 %i.dq to i64
  %i.dt = getelementptr inbounds nuw [24 x i8], ptr %i.cf, i64 %i.ds
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.s, %.lr.ph63.i
  %i.dv = phi ptr [ %i.dg, %.lr.ph63.i ], [ %i.fh, %bb.s ] ; 5 uses
  %.061.i = phi ptr [ %i.dt, %.lr.ph63.i ], [ %i.fi, %bb.s ] ; 5 uses
  %.05360.i = phi i32 [ 0, %.lr.ph63.i ], [ %.1.i, %bb.s ] ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.061.i, i64 17
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !96
  %i.dy = and i8 %i.dx, 6
  %.not.i83 = icmp eq i8 %i.dy, 0
  br i1 %.not.i83, label %bb.m, label %bb.s

bb.m:                                             ; preds = %bb.l
  %i.dz = load i64, ptr %.061.i, align 8, !tbaa !93 ; 3 uses
  %i.ea = icmp ult i64 %i.dz, 7
  br i1 %i.ea, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.eb = load ptr, ptr %i.du, align 8, !tbaa !169
  %i.ec = ptrtoint ptr %i.eb to i64
  %i.ed = ptrtoint ptr %i.dv to i64
  %i.ee = sub i64 %i.ec, %i.ed
  %i.ef = trunc i64 %i.ee to i32
  %i.eg = icmp ult i32 %i.ef, 11
  br i1 %i.eg, label %bb.o, label %lj_buf_more.exit56.i, !prof !170

bb.o:                                             ; preds = %bb.n
  %i.eh = tail call ptr @lj_buf_more2(ptr noundef nonnull %i.cg, i32 noundef 11) #12
  br label %lj_buf_more.exit56.i

lj_buf_more.exit56.i:                             ; preds = %bb.o, %bb.n
  %.0.i55.i = phi ptr [ %i.eh, %bb.o ], [ %i.dv, %bb.n ] ; 2 uses
  %i.ei = trunc nuw nsw i64 %i.dz to i8
  %i.ej = getelementptr inbounds nuw i8, ptr %.0.i55.i, i64 1
  store i8 %i.ei, ptr %.0.i55.i, align 1, !tbaa !33
  br label %bb.r

bb.p:                                             ; preds = %bb.m
  %i.ek = inttoptr i64 %i.dz to ptr               ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 20
  %i.em = load i32, ptr %i.el, align 4, !tbaa !100 ; 2 uses
  %i.en = add i32 %i.em, 1
  %i.eo = add i32 %i.em, 11                       ; 2 uses
  %i.ep = load ptr, ptr %i.du, align 8, !tbaa !169
  %i.eq = ptrtoint ptr %i.ep to i64
  %i.er = ptrtoint ptr %i.dv to i64
  %i.es = sub i64 %i.eq, %i.er
  %i.et = trunc i64 %i.es to i32
  %i.eu = icmp ugt i32 %i.eo, %i.et
  br i1 %i.eu, label %bb.q, label %lj_buf_more.exit.i, !prof !170

bb.q:                                             ; preds = %bb.p
  %i.ev = tail call ptr @lj_buf_more2(ptr noundef nonnull %i.cg, i32 noundef %i.eo) #12
  br label %lj_buf_more.exit.i

lj_buf_more.exit.i:                               ; preds = %bb.q, %bb.p
  %.0.i.i = phi ptr [ %i.ev, %bb.q ], [ %i.dv, %bb.p ] ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ek, i64 24
  %i.ex = zext i32 %i.en to i64                   ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0.i.i, ptr nonnull align 4 %i.ew, i64 %i.ex, i1 false)
  %i.ey = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 %i.ex
  br label %bb.r

bb.r:                                             ; preds = %lj_buf_more.exit.i, %lj_buf_more.exit56.i
  %.051.i = phi ptr [ %i.ej, %lj_buf_more.exit56.i ], [ %i.ey, %lj_buf_more.exit.i ]
  %i.ez = getelementptr inbounds nuw i8, ptr %.061.i, i64 8
  %i.fa = load i32, ptr %i.ez, align 8, !tbaa !94 ; 3 uses
  %i.fb = sub i32 %i.fa, %.05360.i
  %i.fc = tail call ptr @lj_strfmt_wuleb128(ptr noundef %.051.i, i32 noundef %i.fb) #12
  %i.fd = getelementptr inbounds nuw i8, ptr %.061.i, i64 12
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !109
  %i.ff = sub i32 %i.fe, %i.fa
  %i.fg = tail call ptr @lj_strfmt_wuleb128(ptr noundef %i.fc, i32 noundef %i.ff) #12 ; 2 uses
  store ptr %i.fg, ptr %i.cg, align 8, !tbaa !171
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.l
  %i.fh = phi ptr [ %i.dv, %bb.l ], [ %i.fg, %bb.r ] ; 3 uses
  %.1.i = phi i32 [ %.05360.i, %bb.l ], [ %i.fa, %bb.r ]
  %i.fi = getelementptr inbounds nuw i8, ptr %.061.i, i64 24 ; 2 uses
  %i.fj = icmp ult ptr %i.fi, %i.do
  br i1 %i.fj, label %bb.l, label %._crit_edge64.i.loopexit, !llvm.loop !143

._crit_edge64.i.loopexit:                         ; preds = %bb.s
  %.pre = ptrtoint ptr %i.fh to i64
  br label %._crit_edge64.i

._crit_edge64.i:                                  ; preds = %._crit_edge64.i.loopexit, %._crit_edge.i
  %.pre-phi = phi i64 [ %.pre, %._crit_edge64.i.loopexit ], [ %i.dh, %._crit_edge.i ]
  %i.fk = phi ptr [ %i.fh, %._crit_edge64.i.loopexit ], [ %i.dg, %._crit_edge.i ]
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !169
  %i.fn = ptrtoint ptr %i.fm to i64
  %i.fo = sub i64 %i.fn, %.pre-phi
  %i.fp = and i64 %i.fo, 4294967295
  %i.fq = icmp eq i64 %i.fp, 0
  br i1 %i.fq, label %bb.t, label %fs_prep_var.exit, !prof !170

bb.t:                                             ; preds = %._crit_edge64.i
  %i.fr = tail call ptr @lj_buf_more2(ptr noundef nonnull %i.cg, i32 noundef 1) #12
  br label %fs_prep_var.exit

fs_prep_var.exit:                                 ; preds = %._crit_edge64.i, %bb.t
  %.0.i.i.i = phi ptr [ %i.fr, %bb.t ], [ %i.fk, %._crit_edge64.i ] ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 1 ; 2 uses
  store i8 0, ptr %.0.i.i.i, align 1, !tbaa !33
  store ptr %i.fs, ptr %i.cg, align 8, !tbaa !168
  %i.ft = load ptr, ptr %i.ch, align 8, !tbaa !172
  %i.fu = ptrtoint ptr %i.fs to i64
  %i.fv = ptrtoint ptr %i.ft to i64
  %i.fw = sub i64 %i.fu, %i.fv
  %i.fx = add i64 %i.fw, %i.cd                    ; 2 uses
  %i.fy = trunc i64 %i.fx to i32
  %i.fz = and i64 %i.fx, 4294967295
  %i.ga = tail call ptr @lj_mem_newgco(ptr noundef %i.b, i64 noundef %i.fz) #12 ; 33 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 9
  store i8 7, ptr %i.gb, align 1, !tbaa !174
  %i.gc = getelementptr inbounds nuw i8, ptr %i.ga, i64 56
  store i32 %i.fy, ptr %i.gc, align 8, !tbaa !175
  %i.gd = getelementptr inbounds nuw i8, ptr %i.ga, i64 62
  store i16 0, ptr %i.gd, align 2, !tbaa !176
  %i.ge = load i8, ptr %i.ac, align 8, !tbaa !63  ; 2 uses
  %i.gf = and i8 %i.ge, -97
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ga, i64 61
  store i8 %i.gf, ptr %i.gg, align 1, !tbaa !177
  %i.gh = getelementptr inbounds nuw i8, ptr %i.c, i64 89
  %i.gi = load i8, ptr %i.gh, align 1, !tbaa !65
  %i.gj = getelementptr inbounds nuw i8, ptr %i.ga, i64 10
  store i8 %i.gi, ptr %i.gj, align 2, !tbaa !178
  %i.gk = getelementptr inbounds nuw i8, ptr %i.c, i64 90
  %i.gl = load i8, ptr %i.gk, align 2, !tbaa !64  ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.ga, i64 11
  store i8 %i.gl, ptr %i.gm, align 1, !tbaa !179
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !49
  %i.gp = ptrtoint ptr %i.go to i64
  %i.gq = getelementptr inbounds nuw i8, ptr %i.ga, i64 64
  store i64 %i.gp, ptr %i.gq, align 8, !tbaa !180
  %i.gr = getelementptr inbounds nuw i8, ptr %i.ga, i64 %i.bj ; 5 uses
  %i.gs = load i32, ptr %i.bd, align 8, !tbaa !107
  %i.gt = add i32 %i.gs, 1
  %i.gu = zext i32 %i.gt to i64
  %.neg = mul nsw i64 %i.gu, -8
  %i.gv = getelementptr inbounds i8, ptr %i.gr, i64 %.neg
  store i32 0, ptr %i.gv, align 4, !tbaa !88
  %i.gw = getelementptr inbounds nuw i8, ptr %i.ga, i64 104 ; 7 uses
  %i.gx = load i32, ptr %i.g, align 8, !tbaa !58  ; 4 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.c, i64 72 ; 2 uses
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !74 ; 9 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.ga, i64 12
  store i32 %i.gx, ptr %i.ha, align 4, !tbaa !181
  %i.hb = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !54
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 180
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !99
  %.not.i84 = icmp eq i32 %i.he, 1
  %i.hf = and i8 %i.ge, 2
  %.not15.i = icmp eq i8 %i.hf, 0
  %..i = select i1 %.not15.i, i32 96, i32 99
  %.0.i = select i1 %.not.i84, i32 %..i, i32 19
  %i.hg = zext i8 %i.gl to i32
  %i.hh = shl nuw nsw i32 %i.hg, 8
  %i.hi = or disjoint i32 %.0.i, %i.hh
  store i32 %i.hi, ptr %i.gw, align 8, !tbaa !88
  %i.hj = icmp ugt i32 %i.gx, 1
  br i1 %i.hj, label %.lr.ph.preheader.i, label %fs_fixup_bc.exit

.lr.ph.preheader.i:                               ; preds = %fs_prep_var.exit
  %wide.trip.count.i86 = zext i32 %i.gx to i64    ; 6 uses
  %i.hk = add nsw i64 %wide.trip.count.i86, -1    ; 2 uses
  %min.iters.check = icmp ult i32 %i.gx, 22
  br i1 %min.iters.check, label %.lr.ph.i87.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader.i
  %scevgep = getelementptr i8, ptr %i.ga, i64 108
  %i.hl = shl nuw nsw i64 %wide.trip.count.i86, 2
  %i.hm = getelementptr i8, ptr %i.ga, i64 %i.hl
  %scevgep127 = getelementptr i8, ptr %i.hm, i64 104
  %scevgep128 = getelementptr i8, ptr %i.gz, i64 8
  %i.hn = shl nuw nsw i64 %wide.trip.count.i86, 3
  %i.ho = getelementptr i8, ptr %i.gz, i64 %i.hn
  %scevgep129 = getelementptr i8, ptr %i.ho, i64 -4
  %bound0 = icmp ult ptr %scevgep, %scevgep129
  %bound1 = icmp ult ptr %scevgep128, %scevgep127
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i87.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.hp = and i64 %i.hk, 7                        ; 2 uses
  %i.hq = icmp eq i64 %i.hp, 0
  %i.hr = select i1 %i.hq, i64 8, i64 %i.hp
  %n.vec = sub nsw i64 %i.hk, %i.hr               ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.hs = or disjoint i64 %index, 1               ; 2 uses
  %i.ht = getelementptr inbounds nuw [8 x i8], ptr %i.gz, i64 %i.hs
  %i.hu = getelementptr inbounds nuw [8 x i8], ptr %i.gz, i64 %index
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 40
  %wide.vec = load <8 x i32>, ptr %i.ht, align 4, !tbaa !76, !alias.scope !182
  %strided.vec = shufflevector <8 x i32> %wide.vec, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %wide.vec130 = load <8 x i32>, ptr %i.hv, align 4, !tbaa !76, !alias.scope !182
  %strided.vec131 = shufflevector <8 x i32> %wide.vec130, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %i.gw, i64 %i.hs ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 16
  store <4 x i32> %strided.vec, ptr %i.hw, align 4, !tbaa !88, !alias.scope !183, !noalias !182
  store <4 x i32> %strided.vec131, ptr %i.hx, align 4, !tbaa !88, !alias.scope !183, !noalias !182
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.hy = icmp eq i64 %index.next, %n.vec
  br i1 %i.hy, label %.lr.ph.i87.preheader.loopexit, label %vector.body, !llvm.loop !147

.lr.ph.i87.preheader.loopexit:                    ; preds = %vector.body
  %2 = add nsw i64 %n.vec, 1
  br label %.lr.ph.i87.preheader

.lr.ph.i87.preheader:                             ; preds = %.lr.ph.i87.preheader.loopexit, %vector.memcheck, %.lr.ph.preheader.i
  %indvars.iv.i88.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %.lr.ph.preheader.i ], [ %2, %.lr.ph.i87.preheader.loopexit ] ; 4 uses
  %i.hz = sub nsw i64 %wide.trip.count.i86, %indvars.iv.i88.ph
  %xtraiter = and i64 %i.hz, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i87.prol.loopexit, label %.lr.ph.i87.prol

.lr.ph.i87.prol:                                  ; preds = %.lr.ph.i87.preheader, %.lr.ph.i87.prol
  %indvars.iv.i88.prol = phi i64 [ %indvars.iv.next.i89.prol, %.lr.ph.i87.prol ], [ %indvars.iv.i88.ph, %.lr.ph.i87.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i87.prol ], [ 0, %.lr.ph.i87.preheader ]
  %i.ia = getelementptr inbounds nuw [8 x i8], ptr %i.gz, i64 %indvars.iv.i88.prol
  %i.ib = load i32, ptr %i.ia, align 4, !tbaa !76
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %i.gw, i64 %indvars.iv.i88.prol
  store i32 %i.ib, ptr %i.ic, align 4, !tbaa !88
  %indvars.iv.next.i89.prol = add nuw nsw i64 %indvars.iv.i88.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i87.prol.loopexit, label %.lr.ph.i87.prol, !llvm.loop !148

.lr.ph.i87.prol.loopexit:                         ; preds = %.lr.ph.i87.prol, %.lr.ph.i87.preheader
  %indvars.iv.i88.unr = phi i64 [ %indvars.iv.i88.ph, %.lr.ph.i87.preheader ], [ %indvars.iv.next.i89.prol, %.lr.ph.i87.prol ]
  %i.id = sub nsw i64 %indvars.iv.i88.ph, %wide.trip.count.i86
  %i.ie = icmp ugt i64 %i.id, -4
  br i1 %i.ie, label %fs_fixup_bc.exit, label %.lr.ph.i87

.lr.ph.i87:                                       ; preds = %.lr.ph.i87.prol.loopexit, %.lr.ph.i87
  %indvars.iv.i88 = phi i64 [ %indvars.iv.next.i89.3, %.lr.ph.i87 ], [ %indvars.iv.i88.unr, %.lr.ph.i87.prol.loopexit ] ; 6 uses
  %i.if = getelementptr inbounds nuw [8 x i8], ptr %i.gz, i64 %indvars.iv.i88
  %i.ig = load i32, ptr %i.if, align 4, !tbaa !76
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %i.gw, i64 %indvars.iv.i88
  store i32 %i.ig, ptr %i.ih, align 4, !tbaa !88
  %indvars.iv.next.i89 = add nuw nsw i64 %indvars.iv.i88, 1 ; 2 uses
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr %i.gz, i64 %indvars.iv.next.i89
  %i.ij = load i32, ptr %i.ii, align 4, !tbaa !76
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %i.gw, i64 %indvars.iv.next.i89
  store i32 %i.ij, ptr %i.ik, align 4, !tbaa !88
  %indvars.iv.next.i89.1 = add nuw nsw i64 %indvars.iv.i88, 2 ; 2 uses
  %i.il = getelementptr inbounds nuw [8 x i8], ptr %i.gz, i64 %indvars.iv.next.i89.1
  %i.im = load i32, ptr %i.il, align 4, !tbaa !76
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %i.gw, i64 %indvars.iv.next.i89.1
  store i32 %i.im, ptr %i.in, align 4, !tbaa !88
  %indvars.iv.next.i89.2 = add nuw nsw i64 %indvars.iv.i88, 3 ; 2 uses
  %i.io = getelementptr inbounds nuw [8 x i8], ptr %i.gz, i64 %indvars.iv.next.i89.2
  %i.ip = load i32, ptr %i.io, align 4, !tbaa !76
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %i.gw, i64 %indvars.iv.next.i89.2
  store i32 %i.ip, ptr %i.iq, align 4, !tbaa !88
  %indvars.iv.next.i89.3 = add nuw nsw i64 %indvars.iv.i88, 4 ; 2 uses
  %exitcond.not.i90.3 = icmp eq i64 %indvars.iv.next.i89.3, %wide.trip.count.i86
  br i1 %exitcond.not.i90.3, label %fs_fixup_bc.exit, label %.lr.ph.i87, !llvm.loop !149

fs_fixup_bc.exit:                                 ; preds = %.lr.ph.i87.prol.loopexit, %.lr.ph.i87, %fs_prep_var.exit
  %i.ir = load i32, ptr %i.bk, align 4, !tbaa !108 ; 2 uses
  %i.is = icmp ugt i32 %i.ir, 65536
  br i1 %i.is, label %bb.u, label %bb.v

bb.u:                                             ; preds = %fs_fixup_bc.exit
  tail call fastcc void @err_limit(ptr noundef nonnull readonly %i.c, i32 noundef 65536, ptr noundef nonnull @.str.10) #14
  unreachable

bb.v:                                             ; preds = %fs_fixup_bc.exit
  %i.it = load i32, ptr %i.bd, align 8, !tbaa !107 ; 2 uses
  %i.iu = icmp ugt i32 %i.it, 65536
  br i1 %i.iu, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  tail call fastcc void @err_limit(ptr noundef nonnull readonly %i.c, i32 noundef 65536, ptr noundef nonnull @.str.10) #14
  unreachable

bb.x:                                             ; preds = %bb.v
  %i.iv = ptrtoint ptr %i.gr to i64
  %i.iw = getelementptr inbounds nuw i8, ptr %i.ga, i64 32
  store i64 %i.iv, ptr %i.iw, align 8, !tbaa !187
  %i.ix = getelementptr inbounds nuw i8, ptr %i.ga, i64 52
  store i32 %i.ir, ptr %i.ix, align 4, !tbaa !188
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ga, i64 48
  store i32 %i.it, ptr %i.iy, align 8, !tbaa !189
  %i.iz = load ptr, ptr %i.c, align 8, !tbaa !32  ; 4 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 16
  %i.jb = load i64, ptr %i.ja, align 8, !tbaa !190
  %i.jc = inttoptr i64 %i.jb to ptr
  %i.jd = getelementptr inbounds nuw i8, ptr %i.iz, i64 48 ; 2 uses
  %i.je = load i32, ptr %i.jd, align 8, !tbaa !111 ; 2 uses
  %.not53.i = icmp eq i32 %i.je, 0
  br i1 %.not53.i, label %._crit_edge.i94, label %.lr.ph.i91

.lr.ph.i91:                                       ; preds = %bb.x, %bb.z
  %i.jf = phi i32 [ %i.jp, %bb.z ], [ %i.je, %bb.x ]
  %indvars.iv.i92 = phi i64 [ %indvars.iv.next.i93, %bb.z ], [ 0, %bb.x ] ; 3 uses
  %i.jg = getelementptr inbounds nuw [8 x i8], ptr %i.jc, i64 %indvars.iv.i92 ; 2 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 4
  %i.ji = load i32, ptr %i.jh, align 4, !tbaa !33
  %i.jj = icmp eq i32 %i.ji, 0
  br i1 %i.jj, label %bb.y, label %bb.z

bb.y:                                             ; preds = %.lr.ph.i91
  %i.jk = load i32, ptr %i.jg, align 8, !tbaa !33
  %i.jl = zext i32 %i.jk to i64
  %i.jm = getelementptr inbounds nuw [8 x i8], ptr %i.gr, i64 %i.jl
  %i.jn = trunc nuw i64 %indvars.iv.i92 to i32
  %i.jo = uitofp i32 %i.jn to double
  store double %i.jo, ptr %i.jm, align 8, !tbaa !33
  %.pre.i96 = load i32, ptr %i.jd, align 8, !tbaa !111
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %.lr.ph.i91
  %i.jp = phi i32 [ %i.jf, %.lr.ph.i91 ], [ %.pre.i96, %bb.y ] ; 2 uses
  %indvars.iv.next.i93 = add nuw nsw i64 %indvars.iv.i92, 1 ; 2 uses
  %i.jq = zext i32 %i.jp to i64
  %i.jr = icmp samesign ult i64 %indvars.iv.next.i93, %i.jq
  br i1 %i.jr, label %.lr.ph.i91, label %._crit_edge.i94, !llvm.loop !150

._crit_edge.i94:                                  ; preds = %bb.z, %bb.x
  %i.js = getelementptr inbounds nuw i8, ptr %i.iz, i64 40
  %i.jt = load i64, ptr %i.js, align 8, !tbaa !191
  %i.ju = inttoptr i64 %i.jt to ptr
  %i.jv = getelementptr inbounds nuw i8, ptr %i.iz, i64 52
  %i.jw = load i32, ptr %i.jv, align 4, !tbaa !192
  %i.jx = getelementptr inbounds nuw i8, ptr %i.ga, i64 8
  %i.jy = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  br label %bb.aa

bb.aa:                                            ; preds = %fs_fixup_uv2.exit.i, %._crit_edge.i94
  %.152.i = phi i32 [ 0, %._crit_edge.i94 ], [ %i.lr, %fs_fixup_uv2.exit.i ] ; 2 uses
  %i.jz = zext i32 %.152.i to i64
  %i.ka = getelementptr inbounds nuw [24 x i8], ptr %i.ju, i64 %i.jz ; 3 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 4
  %i.kc = load i32, ptr %i.kb, align 4, !tbaa !33
  %i.kd = icmp eq i32 %i.kc, 0
  br i1 %i.kd, label %bb.ab, label %fs_fixup_uv2.exit.i

bb.ab:                                            ; preds = %bb.aa
  %i.ke = load i32, ptr %i.ka, align 8, !tbaa !33
  %i.kf = zext i32 %i.ke to i64                   ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %i.ka, i64 8 ; 2 uses
  %i.kh = load i64, ptr %i.kg, align 8, !tbaa !33 ; 3 uses
  %i.ki = icmp ult i64 %i.kh, -1970324836974592
  br i1 %i.ki, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.kj = getelementptr inbounds nuw [8 x i8], ptr %i.gr, i64 %i.kf
  store i64 %i.kh, ptr %i.kj, align 8, !tbaa !33
  br label %fs_fixup_uv2.exit.i

bb.ad:                                            ; preds = %bb.ab
  %i.kk = and i64 %i.kh, 140737488355327          ; 2 uses
  %i.kl = inttoptr i64 %i.kk to ptr               ; 4 uses
  %i.km = xor i64 %i.kf, -1
  %i.kn = getelementptr inbounds [8 x i8], ptr %i.gr, i64 %i.km
  store i64 %i.kk, ptr %i.kn, align 8, !tbaa !193
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kl, i64 8
  %i.kp = load i8, ptr %i.ko, align 8, !tbaa !33
  %i.kq = and i8 %i.kp, 3
  %.not47.i = icmp eq i8 %i.kq, 0
  br i1 %.not47.i, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.kr = load i8, ptr %i.jx, align 8, !tbaa !33
  %i.ks = and i8 %i.kr, 4
  %.not48.i = icmp eq i8 %i.ks, 0
  br i1 %.not48.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.kt = load ptr, ptr %i.jy, align 8, !tbaa !57
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 16
  %i.kv = load i64, ptr %i.ku, align 8, !tbaa !37
  %i.kw = inttoptr i64 %i.kv to ptr
  tail call void @lj_gc_barrierf(ptr noundef %i.kw, ptr noundef nonnull %i.ga, ptr noundef nonnull %i.kl) #12
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ad
  %i.kx = load i64, ptr %i.kg, align 8, !tbaa !33
  %.mask.i = and i64 %i.kx, -140737488355328
  %i.ky = icmp eq i64 %.mask.i, -1125899906842624
  br i1 %i.ky, label %bb.ah, label %fs_fixup_uv2.exit.i

bb.ah:                                            ; preds = %bb.ag
  %.val.i = load ptr, ptr %i.hb, align 8, !tbaa !54
  %i.kz = getelementptr i8, ptr %i.kl, i64 40
  %.val49.i = load i64, ptr %i.kz, align 8, !tbaa !194
  %i.la = getelementptr i8, ptr %i.kl, i64 60
  %.val50.i = load i8, ptr %i.la, align 4, !tbaa !195 ; 2 uses
  %i.lb = getelementptr i8, ptr %.val.i, i64 144
  %.val.val.i = load ptr, ptr %i.lb, align 8, !tbaa !91
  %i.lc = inttoptr i64 %.val49.i to ptr
  %.not2.i.i = icmp eq i8 %.val50.i, 0
  br i1 %.not2.i.i, label %fs_fixup_uv2.exit.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.ah
  %wide.trip.count.i.i = zext i8 %.val50.i to i64
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.am, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %bb.am ] ; 2 uses
  %i.ld = getelementptr inbounds nuw [2 x i8], ptr %i.lc, i64 %indvars.iv.i.i ; 2 uses
  %i.le = load i16, ptr %i.ld, align 2, !tbaa !78 ; 3 uses
  %i.lf = icmp ugt i16 %i.le, -61
  br i1 %i.lf, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %.lr.ph.i.i
  %i.lg = add nsw i16 %i.le, 60
  br label %bb.am

end_hunk_0
