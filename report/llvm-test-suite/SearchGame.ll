inline.NumInlined: 32
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 10
begin_hunk_0_@ab:bb.a
  %i.cy = getelementptr inbounds [4 x i8], ptr @moves, i64 %i.cx
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !4
  %i.da = sext i32 %i.cz to i64
  %i.db = getelementptr inbounds i8, ptr @height, i64 %i.da ; 2 uses
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !8
  %i.dd = add i8 %i.dc, -1                        ; 2 uses
  store i8 %i.dd, ptr %i.db, align 1, !tbaa !8
  %i.de = sext i8 %i.dd to i64
  %i.df = and i64 %i.de, 4294967295
  %i.dg = shl nuw i64 1, %i.df
  %i.dh = and i32 %i.cw, 1
  %i.di = zext nneg i32 %i.dh to i64
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr @color, i64 %i.di ; 2 uses
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !9
  %i.dl = xor i64 %i.dg, %i.dk
  store i64 %i.dl, ptr %i.dj, align 8, !tbaa !9
  br label %islegalhaswon.exit132.thread

bb.u:                                             ; preds = %bb.t
  %i.dm = zext nneg i32 %i.f to i64               ; 2 uses
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr @color, i64 %i.dm
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !9
  %i.dp = load i64, ptr @color, align 16, !tbaa !9
  %i.dq = load i64, ptr getelementptr inbounds nuw (i8, ptr @color, i64 8), align 8, !tbaa !9
  %i.dr = add i64 %i.do, 4432676798593
  %i.ds = add i64 %i.dr, %i.dp
  %i.dt = add i64 %i.ds, %i.dq                    ; 4 uses
  %i.du = icmp slt i32 %i.d, 10
  br i1 %i.du, label %.preheader.i.i, label %hash.exit.i

.preheader.i.i:                                   ; preds = %bb.u
  %.not13.i.i = icmp eq i64 %i.dt, 0
  br i1 %.not13.i.i, label %hash.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %.lr.ph.i.i
  %.015.i.i = phi i64 [ %i.dx, %.lr.ph.i.i ], [ 0, %.preheader.i.i ]
  %.01114.i.i = phi i64 [ %i.dy, %.lr.ph.i.i ], [ %i.dt, %.preheader.i.i ] ; 2 uses
  %i.dv = shl i64 %.015.i.i, 7
  %i.dw = and i64 %.01114.i.i, 127
  %i.dx = or disjoint i64 %i.dw, %i.dv            ; 2 uses
  %i.dy = lshr i64 %.01114.i.i, 7                 ; 2 uses
  %.not.i.i134 = icmp eq i64 %i.dy, 0
  br i1 %.not.i.i134, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !15

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i
  %i.dz = tail call i64 @llvm.umin.i64(i64 %i.dx, i64 %i.dt)
  br label %hash.exit.i

hash.exit.i:                                      ; preds = %._crit_edge.loopexit.i.i, %.preheader.i.i, %bb.u
  %.1.i.i = phi i64 [ %i.dt, %bb.u ], [ 0, %.preheader.i.i ], [ %i.dz, %._crit_edge.loopexit.i.i ] ; 2 uses
  %i.ea = lshr i64 %.1.i.i, 23                    ; 3 uses
  %i.eb = trunc i64 %i.ea to i32                  ; 4 uses
  store i32 %i.eb, ptr @lock, align 4, !tbaa !4
  %i.ec = urem i64 %.1.i.i, 8306069               ; 3 uses
  %i.ed = trunc nuw nsw i64 %i.ec to i32
  store i32 %i.ed, ptr @htindex, align 4, !tbaa !4
  %i.ee = load ptr, ptr @ht, align 8, !tbaa !13
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %i.ec
  %.sroa.0.0.copyload.i = load i64, ptr %i.ef, align 4, !tbaa !8 ; 4 uses
  %i.eg = trunc i64 %.sroa.0.0.copyload.i to i32
  %i.eh = and i32 %i.eg, 67108863
  %i.ei = icmp eq i32 %i.eh, %i.eb
  br i1 %i.ei, label %bb.v, label %bb.w

bb.v:                                             ; preds = %hash.exit.i
  %i.ej = lshr i64 %.sroa.0.0.copyload.i, 61
  %i.ek = trunc nuw nsw i64 %i.ej to i32
  br label %transpose.exit

bb.w:                                             ; preds = %hash.exit.i
  %i.el = lshr i64 %.sroa.0.0.copyload.i, 32
  %i.em = trunc nuw i64 %i.el to i32
  %i.en = and i32 %i.em, 67108863
  %i.eo = icmp eq i32 %i.en, %i.eb
  br i1 %i.eo, label %bb.x, label %transpose.exit.thread

bb.x:                                             ; preds = %bb.w
  %i.ep = lshr i64 %.sroa.0.0.copyload.i, 58
  %i.eq = trunc nuw nsw i64 %i.ep to i32
  %i.er = and i32 %i.eq, 7
  br label %transpose.exit

transpose.exit:                                   ; preds = %bb.v, %bb.x
  %.0.i133 = phi i32 [ %i.ek, %bb.v ], [ %i.er, %bb.x ] ; 2 uses
  switch i32 %.0.i133, label %islegalhaswon.exit132.thread [
    i32 0, label %transpose.exit.thread
    i32 2, label %bb.y
    i32 4, label %bb.z
  ]

bb.y:                                             ; preds = %transpose.exit
  %i.es = icmp sgt i32 %0, 2
  br i1 %i.es, label %islegalhaswon.exit132.thread, label %transpose.exit.thread

bb.z:                                             ; preds = %transpose.exit
  %i.et = icmp slt i32 %1, 4
  br i1 %i.et, label %islegalhaswon.exit132.thread, label %transpose.exit.thread

transpose.exit.thread:                            ; preds = %bb.w, %transpose.exit, %bb.y, %bb.z
  %.0.i133148.neg = phi i32 [ 4, %bb.y ], [ 2, %bb.z ], [ 6, %transpose.exit ], [ 6, %bb.w ]
  %.090 = phi i32 [ 3, %bb.y ], [ %1, %bb.z ], [ %1, %transpose.exit ], [ %1, %bb.w ] ; 2 uses
  %.089 = phi i32 [ %0, %bb.y ], [ 3, %bb.z ], [ %0, %transpose.exit ], [ %0, %bb.w ]
  %i.eu = load i64, ptr @posed, align 8, !tbaa !9
  %i.ev = icmp sgt i32 %.197, 0
  br i1 %i.ev, label %.lr.ph173, label %.loopexit

.lr.ph173:                                        ; preds = %transpose.exit.thread
  %i.ew = getelementptr inbounds nuw [196 x i8], ptr @history, i64 %i.dm ; 8 uses
  %i.ex = sub nsw i32 6, %.090
  %scevgep200 = getelementptr i8, ptr %i.a, i64 -4
  %i.ey = zext nneg i32 %.197 to i64
  %wide.trip.count209 = zext nneg i32 %.197 to i64 ; 4 uses
  %i.ez = add nsw i64 %wide.trip.count209, -2
  br label %bb.aa

bb.aa:                                            ; preds = %.lr.ph173, %bb.af
  %indvar = phi i64 [ 0, %.lr.ph173 ], [ %indvar.next, %bb.af ] ; 3 uses
  %i.fa = phi i32 [ %i.d, %.lr.ph173 ], [ %i.hv, %bb.af ] ; 3 uses
  %indvars.iv214 = phi i32 [ 0, %.lr.ph173 ], [ %indvars.iv.next215, %bb.af ] ; 4 uses
  %indvars.iv205 = phi i64 [ 0, %.lr.ph173 ], [ %indvars.iv.next206, %bb.af ] ; 6 uses
  %indvars.iv193 = phi i64 [ 1, %.lr.ph173 ], [ %indvars.iv.next194, %bb.af ] ; 5 uses
  %.1172 = phi i32 [ %.089, %.lr.ph173 ], [ %.2, %bb.af ] ; 4 uses
  %.0105170 = phi i32 [ 1, %.lr.ph173 ], [ %.2107, %bb.af ] ; 2 uses
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv205 ; 2 uses
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !4  ; 2 uses
  %indvars.iv.next206 = add nuw nsw i64 %indvars.iv205, 1 ; 3 uses
  %i.fd = icmp samesign ult i64 %indvars.iv.next206, %i.ey
  %i.fe = trunc nuw nsw i64 %indvars.iv205 to i32 ; 4 uses
  br i1 %i.fd, label %.lr.ph.preheader, label %._crit_edge168

.lr.ph.preheader:                                 ; preds = %bb.aa
  %i.ff = sext i32 %i.fc to i64
  %i.fg = getelementptr inbounds i8, ptr @height, i64 %i.ff
  %i.fh = load i8, ptr %i.fg, align 1, !tbaa !8
  %i.fi = sext i8 %i.fh to i64
  %i.fj = getelementptr inbounds [4 x i8], ptr %i.ew, i64 %i.fi
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !4  ; 3 uses
  %i.fl = sub i64 %indvar, %wide.trip.count209
  %i.fm = and i64 %i.fl, 1
  %lcmp.mod.not.not = icmp eq i64 %i.fm, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.prol, label %.lr.ph.prol.loopexit

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv193
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !4
  %i.fp = sext i32 %i.fo to i64
  %i.fq = getelementptr inbounds i8, ptr @height, i64 %i.fp
  %i.fr = load i8, ptr %i.fq, align 1, !tbaa !8
  %i.fs = sext i8 %i.fr to i64
  %i.ft = getelementptr inbounds [4 x i8], ptr %i.ew, i64 %i.fs
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !4  ; 2 uses
  %i.fv = icmp sgt i32 %i.fu, %i.fk
  %spec.select.prol = tail call i32 @llvm.smax.i32(i32 %i.fu, i32 %i.fk)
  %i.fw = trunc nuw nsw i64 %indvars.iv193 to i32
  %spec.select125.prol = select i1 %i.fv, i32 %i.fw, i32 %i.fe ; 2 uses
  %indvars.iv.next196.prol = add nuw nsw i64 %indvars.iv193, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %spec.select125.lcssa.unr = phi i32 [ poison, %.lr.ph.preheader ], [ %spec.select125.prol, %.lr.ph.prol ]
  %indvars.iv195.unr = phi i64 [ %indvars.iv193, %.lr.ph.preheader ], [ %indvars.iv.next196.prol, %.lr.ph.prol ]
  %.0100163.unr = phi i32 [ %i.fe, %.lr.ph.preheader ], [ %spec.select125.prol, %.lr.ph.prol ]
  %.0103162.unr = phi i32 [ %i.fk, %.lr.ph.preheader ], [ %spec.select.prol, %.lr.ph.prol ]
  %i.fx = icmp eq i64 %i.ez, %indvar
  br i1 %i.fx, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv195 = phi i64 [ %indvars.iv.next196.1, %.lr.ph ], [ %indvars.iv195.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %.0100163 = phi i32 [ %spec.select125.1, %.lr.ph ], [ %.0100163.unr, %.lr.ph.prol.loopexit ]
  %.0103162 = phi i32 [ %spec.select.1, %.lr.ph ], [ %.0103162.unr, %.lr.ph.prol.loopexit ] ; 2 uses
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv195
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !4
  %i.ga = sext i32 %i.fz to i64
  %i.gb = getelementptr inbounds i8, ptr @height, i64 %i.ga
  %i.gc = load i8, ptr %i.gb, align 1, !tbaa !8
  %i.gd = sext i8 %i.gc to i64
  %i.ge = getelementptr inbounds [4 x i8], ptr %i.ew, i64 %i.gd
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !4  ; 2 uses
  %i.gg = icmp sgt i32 %i.gf, %.0103162
  %spec.select = tail call i32 @llvm.smax.i32(i32 %i.gf, i32 %.0103162) ; 2 uses
  %i.gh = trunc nuw nsw i64 %indvars.iv195 to i32
  %spec.select125 = select i1 %i.gg, i32 %i.gh, i32 %.0100163
  %indvars.iv.next196 = add nuw nsw i64 %indvars.iv195, 1 ; 2 uses
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next196
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !4
  %i.gk = sext i32 %i.gj to i64
  %i.gl = getelementptr inbounds i8, ptr @height, i64 %i.gk
  %i.gm = load i8, ptr %i.gl, align 1, !tbaa !8
  %i.gn = sext i8 %i.gm to i64
  %i.go = getelementptr inbounds [4 x i8], ptr %i.ew, i64 %i.gn
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !4  ; 2 uses
  %i.gq = icmp sgt i32 %i.gp, %spec.select
  %spec.select.1 = tail call i32 @llvm.smax.i32(i32 %i.gp, i32 %spec.select)
  %i.gr = trunc nuw nsw i64 %indvars.iv.next196 to i32
  %spec.select125.1 = select i1 %i.gq, i32 %i.gr, i32 %spec.select125 ; 2 uses
  %indvars.iv.next196.1 = add nuw nsw i64 %indvars.iv195, 2 ; 2 uses
  %exitcond199.not.1 = icmp eq i64 %indvars.iv.next196.1, %wide.trip.count209
  br i1 %exitcond199.not.1, label %._crit_edge, label %.lr.ph, !llvm.loop !19

._crit_edge:                                      ; preds = %.lr.ph, %.lr.ph.prol.loopexit
  %spec.select125.lcssa = phi i32 [ %spec.select125.lcssa.unr, %.lr.ph.prol.loopexit ], [ %spec.select125.1, %.lr.ph ] ; 3 uses
  %.phi.trans.insert = sext i32 %spec.select125.lcssa to i64 ; 2 uses
  %.phi.trans.insert219 = getelementptr inbounds [4 x i8], ptr %i.a, i64 %.phi.trans.insert
  %.pre = load i32, ptr %.phi.trans.insert219, align 4, !tbaa !4 ; 2 uses
  %i.gs = icmp slt i64 %indvars.iv205, %.phi.trans.insert
  br i1 %i.gs, label %.lr.ph167.preheader, label %._crit_edge168

.lr.ph167.preheader:                              ; preds = %._crit_edge
  %2 = zext i32 %spec.select125.lcssa to i64
  %i.gt = trunc i64 %indvars.iv205 to i32
  %i.gu = xor i32 %i.gt, -1
  %i.gv = add i32 %spec.select125.lcssa, %i.gu
  %i.gw = zext i32 %i.gv to i64                   ; 2 uses
  %i.gx = shl nuw nsw i64 %i.gw, 2
  %i.gy = sub nsw i64 %2, %i.gw
  %i.gz = shl nsw i64 %i.gy, 2                    ; 2 uses
  %scevgep = getelementptr i8, ptr %i.a, i64 %i.gz
  %scevgep201 = getelementptr i8, ptr %scevgep200, i64 %i.gz
  %i.ha = add nuw nsw i64 %i.gx, 4
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, ptr noundef nonnull align 4 dereferenceable(1) %scevgep201, i64 %i.ha, i1 false), !tbaa !4
  br label %._crit_edge168

._crit_edge168:                                   ; preds = %bb.aa, %.lr.ph167.preheader, %._crit_edge
  %i.hb = phi i32 [ %.pre, %._crit_edge ], [ %.pre, %.lr.ph167.preheader ], [ %i.fc, %bb.aa ] ; 3 uses
  store i32 %i.hb, ptr %i.fb, align 4, !tbaa !4
  %i.hc = sext i32 %i.hb to i64                   ; 2 uses
  %i.hd = getelementptr inbounds i8, ptr @height, i64 %i.hc ; 2 uses
  %i.he = load i8, ptr %i.hd, align 1, !tbaa !8   ; 2 uses
  %i.hf = add i8 %i.he, 1
  store i8 %i.hf, ptr %i.hd, align 1, !tbaa !8
  %i.hg = sext i8 %i.he to i64
  %i.hh = and i64 %i.hg, 4294967295
  %i.hi = shl nuw i64 1, %i.hh
  %i.hj = and i32 %i.fa, 1
  %i.hk = zext nneg i32 %i.hj to i64
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr @color, i64 %i.hk ; 2 uses
  %i.hm = load i64, ptr %i.hl, align 8, !tbaa !9
  %i.hn = xor i64 %i.hm, %i.hi
  store i64 %i.hn, ptr %i.hl, align 8, !tbaa !9
  %i.ho = add nsw i32 %i.fa, 1
  store i32 %i.ho, ptr @nplies, align 4, !tbaa !4
  %i.hp = sext i32 %i.fa to i64
  %i.hq = getelementptr inbounds [4 x i8], ptr @moves, i64 %i.hp
  store i32 %i.hb, ptr %i.hq, align 4, !tbaa !4
  %i.hr = sub nsw i32 6, %.1172
  %i.hs = tail call i32 @ab(i32 noundef %i.ex, i32 noundef %i.hr) ; 2 uses
  %i.ht = sub nsw i32 6, %i.hs                    ; 7 uses
  %i.hu = load i32, ptr @nplies, align 4, !tbaa !4 ; 2 uses
  %i.hv = add nsw i32 %i.hu, -1                   ; 7 uses
  store i32 %i.hv, ptr @nplies, align 4, !tbaa !4
  %i.hw = sext i32 %i.hv to i64
  %i.hx = getelementptr inbounds [4 x i8], ptr @moves, i64 %i.hw
  %i.hy = load i32, ptr %i.hx, align 4, !tbaa !4
  %i.hz = sext i32 %i.hy to i64
  %i.ia = getelementptr inbounds i8, ptr @height, i64 %i.hz ; 2 uses
  %i.ib = load i8, ptr %i.ia, align 1, !tbaa !8
  %i.ic = add i8 %i.ib, -1                        ; 2 uses
  store i8 %i.ic, ptr %i.ia, align 1, !tbaa !8
  %i.id = sext i8 %i.ic to i64
  %i.ie = and i64 %i.id, 4294967295
  %i.if = shl nuw i64 1, %i.ie
  %i.ig = and i32 %i.hv, 1
  %i.ih = zext nneg i32 %i.ig to i64
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr @color, i64 %i.ih ; 2 uses
  %i.ij = load i64, ptr %i.ii, align 8, !tbaa !9
  %i.ik = xor i64 %i.if, %i.ij
  store i64 %i.ik, ptr %i.ii, align 8, !tbaa !9
  %i.il = icmp sgt i32 %i.ht, %.0105170
  br i1 %i.il, label %bb.ab, label %bb.af

bb.ab:                                            ; preds = %._crit_edge168
  %i.im = icmp sgt i32 %i.ht, %.1172
  %i.in = icmp sgt i32 %i.hu, 0
  %or.cond = and i1 %i.im, %i.in
  br i1 %or.cond, label %bb.ac, label %bb.af

bb.ac:                                            ; preds = %bb.ab
  %.not121 = icmp slt i32 %i.ht, %.090
  br i1 %.not121, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.io = getelementptr inbounds i8, ptr @height, i64 %i.hc
  %i.ip = icmp eq i32 %i.hs, 3
  %i.iq = add nsw i32 %.197, -1
  %i.ir = icmp sgt i32 %i.iq, %i.fe
  %spec.select126 = select i1 %i.ir, i32 4, i32 3
  %.1106 = select i1 %i.ip, i32 %spec.select126, i32 %i.ht ; 2 uses
  %.not122 = icmp eq i64 %indvars.iv205, 0
  br i1 %.not122, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.ad
  %wide.trip.count217 = zext nneg i32 %indvars.iv214 to i64 ; 2 uses
  %xtraiter297 = and i64 %wide.trip.count217, 1
  %i.is = icmp eq i32 %indvars.iv214, 1
  br i1 %i.is, label %.preheader.epil.preheader, label %.preheader.preheader.new

.preheader.preheader.new:                         ; preds = %.preheader.preheader
  %unroll_iter = and i64 %wide.trip.count217, 2147483646
  br label %.preheader

.preheader:                                       ; preds = %.preheader, %.preheader.preheader.new
  %indvars.iv211 = phi i64 [ 0, %.preheader.preheader.new ], [ %indvars.iv.next212.1, %.preheader ] ; 3 uses
  %niter = phi i64 [ 0, %.preheader.preheader.new ], [ %niter.next.1, %.preheader ]
  %i.it = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv211
  %i.iu = load i32, ptr %i.it, align 8, !tbaa !4
  %i.iv = sext i32 %i.iu to i64
  %i.iw = getelementptr inbounds i8, ptr @height, i64 %i.iv
  %i.ix = load i8, ptr %i.iw, align 1, !tbaa !8
  %i.iy = sext i8 %i.ix to i64
  %i.iz = getelementptr inbounds [4 x i8], ptr %i.ew, i64 %i.iy ; 2 uses
  %i.ja = load i32, ptr %i.iz, align 4, !tbaa !4
  %i.jb = add nsw i32 %i.ja, -1
  store i32 %i.jb, ptr %i.iz, align 4, !tbaa !4
  %i.jc = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv211
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 4
  %i.je = load i32, ptr %i.jd, align 4, !tbaa !4
  %i.jf = sext i32 %i.je to i64
  %i.jg = getelementptr inbounds i8, ptr @height, i64 %i.jf
  %i.jh = load i8, ptr %i.jg, align 1, !tbaa !8
  %i.ji = sext i8 %i.jh to i64
  %i.jj = getelementptr inbounds [4 x i8], ptr %i.ew, i64 %i.ji ; 2 uses
  %i.jk = load i32, ptr %i.jj, align 4, !tbaa !4
  %i.jl = add nsw i32 %i.jk, -1
  store i32 %i.jl, ptr %i.jj, align 4, !tbaa !4
  %indvars.iv.next212.1 = add nuw nsw i64 %indvars.iv211, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %.preheader, !llvm.loop !20

.unr-lcssa:                                       ; preds = %.preheader
  %lcmp.mod298.not = icmp eq i64 %xtraiter297, 0
  br i1 %lcmp.mod298.not, label %bb.ae, label %.preheader.epil.preheader

.preheader.epil.preheader:                        ; preds = %.unr-lcssa, %.preheader.preheader
  %indvars.iv211.epil.init = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next212.1, %.unr-lcssa ]
  %lcmp.mod299 = trunc i32 %indvars.iv214 to i1
  tail call void @llvm.assume(i1 %lcmp.mod299)
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv211.epil.init
  %i.jn = load i32, ptr %i.jm, align 4, !tbaa !4
  %i.jo = sext i32 %i.jn to i64
  %i.jp = getelementptr inbounds i8, ptr @height, i64 %i.jo
  %i.jq = load i8, ptr %i.jp, align 1, !tbaa !8
  %i.jr = sext i8 %i.jq to i64
  %i.js = getelementptr inbounds [4 x i8], ptr %i.ew, i64 %i.jr ; 2 uses
  %i.jt = load i32, ptr %i.js, align 4, !tbaa !4
  %i.ju = add nsw i32 %i.jt, -1
  store i32 %i.ju, ptr %i.js, align 4, !tbaa !4
  br label %bb.ae

bb.ae:                                            ; preds = %.unr-lcssa, %.preheader.epil.preheader
  %i.jv = load i8, ptr %i.io, align 1, !tbaa !8
  %i.jw = sext i8 %i.jv to i64
  %i.jx = getelementptr inbounds [4 x i8], ptr %i.ew, i64 %i.jw ; 2 uses
  %i.jy = load i32, ptr %i.jx, align 4, !tbaa !4
  %i.jz = add nsw i32 %i.jy, %i.fe
  store i32 %i.jz, ptr %i.jx, align 4, !tbaa !4
  br label %.loopexit

bb.af:                                            ; preds = %._crit_edge168, %bb.ac, %bb.ab
  %.2107 = phi i32 [ %i.ht, %bb.ac ], [ %i.ht, %bb.ab ], [ %.0105170, %._crit_edge168 ] ; 2 uses
  %.2 = phi i32 [ %i.ht, %bb.ac ], [ %.1172, %bb.ab ], [ %.1172, %._crit_edge168 ]
  %indvars.iv.next194 = add nuw nsw i64 %indvars.iv193, 1
  %exitcond210.not = icmp eq i64 %indvars.iv.next206, %wide.trip.count209
  %indvars.iv.next215 = add nuw nsw i32 %indvars.iv214, 1
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond210.not, label %.loopexit, label %bb.aa, !llvm.loop !21

.loopexit:                                        ; preds = %bb.af, %transpose.exit.thread, %bb.ad, %bb.ae
  %i.ka = phi i32 [ %i.hv, %bb.ae ], [ %i.hv, %bb.ad ], [ %i.d, %transpose.exit.thread ], [ %i.hv, %bb.af ]
  %.3108 = phi i32 [ %.1106, %bb.ae ], [ %.1106, %bb.ad ], [ 1, %transpose.exit.thread ], [ %.2107, %bb.af ] ; 2 uses
  %i.kb = load i64, ptr @posed, align 8, !tbaa !9 ; 2 uses
  %i.kc = sub i64 %i.kb, %i.eu
  %i.kd = lshr i64 %i.kc, 1
  %i.ke = tail call range(i64 1, 65) i64 @llvm.ctlz.i64(i64 %i.kd, i1 false)
  %i.kf = trunc nuw nsw i64 %i.ke to i32
  %i.kg = sub nuw nsw i32 64, %i.kf               ; 3 uses
  %i.kh = icmp eq i32 %.3108, %.0.i133148.neg
  %spec.store.select = select i1 %i.kh, i32 3, i32 %.3108 ; 5 uses
  %i.ki = add i64 %i.kb, 1
  store i64 %i.ki, ptr @posed, align 8, !tbaa !9
  %i.kj = load ptr, ptr @ht, align 8, !tbaa !13
  %i.kk = getelementptr inbounds nuw [8 x i8], ptr %i.kj, i64 %i.ec ; 2 uses
  %.sroa.0.0.copyload.i135 = load i64, ptr %i.kk, align 4, !tbaa !8 ; 3 uses
  %i.kl = trunc i64 %.sroa.0.0.copyload.i135 to i32 ; 2 uses
  %i.km = and i32 %i.kl, 67108863
  %i.kn = icmp ne i32 %i.km, %i.eb
  %i.ko = lshr i32 %i.kl, 26
  %.not.i136 = icmp samesign ult i32 %i.kg, %i.ko
  %or.cond.i = and i1 %i.kn, %.not.i136
  br i1 %or.cond.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %.loopexit
  %i.kp = and i64 %.sroa.0.0.copyload.i135, 2305843004918726656
  %i.kq = and i32 %spec.store.select, 7
  %i.kr = zext nneg i32 %i.kq to i64
  %i.ks = shl nuw i64 %i.kr, 61
  %i.kt = shl nuw i32 %i.kg, 26
  %i.ku = zext i32 %i.kt to i64
  %.masked16.i = and i64 %i.ea, 67108863
  %.masked.i = or disjoint i64 %.masked16.i, %i.kp
  %i.kv = or disjoint i64 %.masked.i, %i.ks
  %i.kw = or disjoint i64 %i.kv, %i.ku
  br label %transtore.exit

bb.ah:                                            ; preds = %.loopexit
  %i.kx = shl i64 %i.ea, 32
  %i.ky = and i64 %i.kx, 288230371856744448
  %i.kz = and i64 %.sroa.0.0.copyload.i135, -2305843004918726657
  %i.la = or disjoint i64 %i.ky, %i.kz
  %i.lb = and i32 %spec.store.select, 7
  %i.lc = zext nneg i32 %i.lb to i64
  %i.ld = shl nuw nsw i64 %i.lc, 58
  %i.le = or disjoint i64 %i.la, %i.ld
  br label %transtore.exit

end_hunk_0
