inline.NumInlined: 32
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 10
begin_hunk_0_@ab:bb.a
  %.not17.i.i130 = icmp eq i64 %i.bq, 0
  br i1 %.not17.i.i130, label %bb.n, label %islegalhaswon.exit132.thread

bb.n:                                             ; preds = %bb.m
  %i.br = lshr i64 %i.bh, 8
  %i.bs = and i64 %i.br, %i.bh                    ; 2 uses
  %i.bt = lshr i64 %i.bs, 16
  %i.bu = and i64 %i.bt, %i.bs
  %.not18.i.i131 = icmp eq i64 %i.bu, 0
  br i1 %.not18.i.i131, label %islegalhaswon.exit132, label %islegalhaswon.exit132.thread

islegalhaswon.exit132:                            ; preds = %bb.n
  %i.bv = lshr i64 %i.bh, 1
  %i.bw = and i64 %i.bv, %i.bh                    ; 2 uses
  %i.bx = lshr i64 %i.bw, 2
  %i.by = and i64 %i.bx, %i.bw
  %.not151 = icmp eq i64 %i.by, 0
  br i1 %.not151, label %.critedge.backedge, label %islegalhaswon.exit132.thread

.critedge.backedge:                               ; preds = %islegalhaswon.exit132, %.lr.ph178
  %exitcond192.not = icmp eq i64 %indvars.iv.next190, 6
  br i1 %exitcond192.not, label %.thread142, label %.lr.ph178, !llvm.loop !17

bb.o:                                             ; preds = %haswon.exit
  br i1 %.not118, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bz = add nsw i32 %.096160, 1
  %i.ca = sext i32 %.096160 to i64
  %i.cb = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.ca
  store i32 %i.ao, ptr %i.cb, align 4, !tbaa !4
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p, %bb.c
  %.197 = phi i32 [ %.096160, %bb.o ], [ %i.bz, %bb.p ], [ %.096160, %bb.c ] ; 7 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 7
  br i1 %exitcond.not, label %bb.r, label %bb.c, !llvm.loop !18

bb.r:                                             ; preds = %bb.q
  %i.cc = icmp eq i32 %.197, 0
  br i1 %i.cc, label %islegalhaswon.exit132.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cd = icmp eq i32 %i.d, 40
  br i1 %i.cd, label %islegalhaswon.exit132.thread, label %bb.t

.thread142:                                       ; preds = %.critedge.backedge, %bb.k
  %i.ce = icmp eq i32 %i.d, 40
  br i1 %i.ce, label %islegalhaswon.exit132.thread, label %.thread145

bb.t:                                             ; preds = %bb.s
  %i.cf = icmp eq i32 %.197, 1
  br i1 %i.cf, label %..thread145_crit_edge, label %bb.u

..thread145_crit_edge:                            ; preds = %bb.t
  %.pre220 = load i32, ptr %i.a, align 16, !tbaa !4 ; 2 uses
  %.phi.trans.insert221 = sext i32 %.pre220 to i64 ; 2 uses
  %.phi.trans.insert222 = getelementptr inbounds i8, ptr @height, i64 %.phi.trans.insert221
  %.pre223 = load i8, ptr %.phi.trans.insert222, align 1, !tbaa !8 ; 2 uses
  %.pre224 = sext i8 %.pre223 to i64
  %.pre225 = and i64 %.pre224, 4294967295
  %.pre227 = shl nuw i64 1, %.pre225
  br label %.thread145

.thread145:                                       ; preds = %.thread142, %..thread145_crit_edge
  %.pre-phi230 = phi i64 [ %.phi.trans.insert221, %..thread145_crit_edge ], [ %indvars.iv, %.thread142 ]
  %.pre-phi228 = phi i64 [ %.pre227, %..thread145_crit_edge ], [ %i.o, %.thread142 ]
  %i.cg = phi i8 [ %.pre223, %..thread145_crit_edge ], [ %i.l, %.thread142 ]
  %i.ch = phi i32 [ %.pre220, %..thread145_crit_edge ], [ %i.ao, %.thread142 ]
  %i.ci = getelementptr inbounds i8, ptr @height, i64 %.pre-phi230
  %i.cj = add i8 %i.cg, 1
  store i8 %i.cj, ptr %i.ci, align 1, !tbaa !8
  %i.ck = zext nneg i32 %i.f to i64
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr @color, i64 %i.ck ; 2 uses
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !9
  %i.cn = xor i64 %.pre-phi228, %i.cm
  store i64 %i.cn, ptr %i.cl, align 8, !tbaa !9
  %i.co = add nsw i32 %i.d, 1
  store i32 %i.co, ptr @nplies, align 4, !tbaa !4
  %i.cp = sext i32 %i.d to i64
  %i.cq = getelementptr inbounds [4 x i8], ptr @moves, i64 %i.cp
  store i32 %i.ch, ptr %i.cq, align 4, !tbaa !4
  %i.cr = sub nsw i32 6, %1
  %i.cs = sub nsw i32 6, %0
  %i.ct = tail call i32 @ab(i32 noundef %i.cr, i32 noundef %i.cs)
  %i.cu = sub nsw i32 6, %i.ct
  %i.cv = load i32, ptr @nplies, align 4, !tbaa !4
  %i.cw = add nsw i32 %i.cv, -1                   ; 3 uses
  store i32 %i.cw, ptr @nplies, align 4, !tbaa !4
  %i.cx = sext i32 %i.cw to i64
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
  %i.fa = phi i32 [ %i.d, %.lr.ph173 ], [ %i.ho, %bb.af ] ; 3 uses
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
  %spec.select125.lcssa = phi i32 [ %spec.select125.lcssa.unr, %.lr.ph.prol.loopexit ], [ %spec.select125.1, %.lr.ph ] ; 2 uses
  %.phi.trans.insert = sext i32 %spec.select125.lcssa to i64 ; 3 uses
  %.phi.trans.insert219 = getelementptr inbounds [4 x i8], ptr %i.a, i64 %.phi.trans.insert
  %.pre = load i32, ptr %.phi.trans.insert219, align 4, !tbaa !4 ; 2 uses
  %i.gs = icmp slt i64 %indvars.iv205, %.phi.trans.insert
  br i1 %i.gs, label %vector.body, label %._crit_edge168

vector.body:                                      ; preds = %._crit_edge
  %2 = trunc i64 %indvars.iv205 to i32
  %3 = xor i32 %2, -1
  %4 = add i32 %spec.select125.lcssa, %3
  %5 = zext i32 %4 to i64                         ; 2 uses
  %6 = shl nuw nsw i64 %5, 2
  %7 = sub nsw i64 %.phi.trans.insert, %5
  %8 = shl nsw i64 %7, 2                          ; 2 uses
  %i.gt = getelementptr i8, ptr %i.a, i64 %8
  %i.gu = getelementptr i8, ptr %scevgep200, i64 %8
  %index.next = add nuw nsw i64 %6, 4
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.gt, ptr noundef nonnull align 4 dereferenceable(1) %i.gu, i64 %index.next, i1 false), !tbaa !4
  br label %._crit_edge168

._crit_edge168:                                   ; preds = %bb.aa, %vector.body, %._crit_edge
  %9 = phi i32 [ %.pre, %._crit_edge ], [ %.pre, %vector.body ], [ %i.fc, %bb.aa ] ; 3 uses
  store i32 %9, ptr %i.fb, align 4, !tbaa !4
  %i.gv = sext i32 %9 to i64                      ; 2 uses
  %i.gw = getelementptr inbounds i8, ptr @height, i64 %i.gv ; 2 uses
  %i.gx = load i8, ptr %i.gw, align 1, !tbaa !8   ; 2 uses
  %i.gy = add i8 %i.gx, 1
  store i8 %i.gy, ptr %i.gw, align 1, !tbaa !8
  %i.gz = sext i8 %i.gx to i64
  %i.ha = and i64 %i.gz, 4294967295
  %i.hb = shl nuw i64 1, %i.ha
  %i.hc = and i32 %i.fa, 1
  %i.hd = zext nneg i32 %i.hc to i64
  %i.he = getelementptr inbounds nuw [8 x i8], ptr @color, i64 %i.hd ; 2 uses
  %i.hf = load i64, ptr %i.he, align 8, !tbaa !9
  %i.hg = xor i64 %i.hf, %i.hb
  store i64 %i.hg, ptr %i.he, align 8, !tbaa !9
  %i.hh = add nsw i32 %i.fa, 1
  store i32 %i.hh, ptr @nplies, align 4, !tbaa !4
  %i.hi = sext i32 %i.fa to i64
  %i.hj = getelementptr inbounds [4 x i8], ptr @moves, i64 %i.hi
  store i32 %9, ptr %i.hj, align 4, !tbaa !4
  %i.hk = sub nsw i32 6, %.1172
  %i.hl = tail call i32 @ab(i32 noundef %i.ex, i32 noundef %i.hk) ; 2 uses
  %i.hm = sub nsw i32 6, %i.hl                    ; 7 uses
  %i.hn = load i32, ptr @nplies, align 4, !tbaa !4 ; 2 uses
  %i.ho = add nsw i32 %i.hn, -1                   ; 7 uses
  store i32 %i.ho, ptr @nplies, align 4, !tbaa !4
  %i.hp = sext i32 %i.ho to i64
  %i.hq = getelementptr inbounds [4 x i8], ptr @moves, i64 %i.hp
  %i.hr = load i32, ptr %i.hq, align 4, !tbaa !4
  %i.hs = sext i32 %i.hr to i64
  %i.ht = getelementptr inbounds i8, ptr @height, i64 %i.hs ; 2 uses
  %i.hu = load i8, ptr %i.ht, align 1, !tbaa !8
  %i.hv = add i8 %i.hu, -1                        ; 2 uses
  store i8 %i.hv, ptr %i.ht, align 1, !tbaa !8
  %i.hw = sext i8 %i.hv to i64
  %i.hx = and i64 %i.hw, 4294967295
  %i.hy = shl nuw i64 1, %i.hx
  %i.hz = and i32 %i.ho, 1
  %i.ia = zext nneg i32 %i.hz to i64
  %i.ib = getelementptr inbounds nuw [8 x i8], ptr @color, i64 %i.ia ; 2 uses
  %i.ic = load i64, ptr %i.ib, align 8, !tbaa !9
  %i.id = xor i64 %i.hy, %i.ic
  store i64 %i.id, ptr %i.ib, align 8, !tbaa !9
  %i.ie = icmp sgt i32 %i.hm, %.0105170
  br i1 %i.ie, label %bb.ab, label %bb.af

bb.ab:                                            ; preds = %._crit_edge168
  %i.if = icmp sgt i32 %i.hm, %.1172
  %i.ig = icmp sgt i32 %i.hn, 0
  %or.cond = and i1 %i.if, %i.ig
  br i1 %or.cond, label %bb.ac, label %bb.af

bb.ac:                                            ; preds = %bb.ab
  %.not121 = icmp slt i32 %i.hm, %.090
  br i1 %.not121, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ih = getelementptr inbounds i8, ptr @height, i64 %i.gv
  %i.ii = icmp eq i32 %i.hl, 3
  %i.ij = add nsw i32 %.197, -1
  %i.ik = icmp sgt i32 %i.ij, %i.fe
  %spec.select126 = select i1 %i.ik, i32 4, i32 3
  %.1106 = select i1 %i.ii, i32 %spec.select126, i32 %i.hm ; 2 uses
  %.not122 = icmp eq i64 %indvars.iv205, 0
  br i1 %.not122, label %.loopexit, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.ad
  %wide.trip.count217 = zext nneg i32 %indvars.iv214 to i64 ; 2 uses
  %xtraiter298 = and i64 %wide.trip.count217, 1
  %i.il = icmp eq i32 %indvars.iv214, 1
  br i1 %i.il, label %.preheader.epil.preheader, label %.preheader.preheader.new

.preheader.preheader.new:                         ; preds = %.preheader.preheader
  %unroll_iter = and i64 %wide.trip.count217, 2147483646
  br label %.preheader

.preheader:                                       ; preds = %.preheader, %.preheader.preheader.new
  %indvars.iv211 = phi i64 [ 0, %.preheader.preheader.new ], [ %indvars.iv.next212.1, %.preheader ] ; 3 uses
  %niter = phi i64 [ 0, %.preheader.preheader.new ], [ %niter.next.1, %.preheader ]
  %i.im = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv211
  %i.in = load i32, ptr %i.im, align 8, !tbaa !4
  %i.io = sext i32 %i.in to i64
  %i.ip = getelementptr inbounds i8, ptr @height, i64 %i.io
  %i.iq = load i8, ptr %i.ip, align 1, !tbaa !8
  %i.ir = sext i8 %i.iq to i64
  %i.is = getelementptr inbounds [4 x i8], ptr %i.ew, i64 %i.ir ; 2 uses
  %i.it = load i32, ptr %i.is, align 4, !tbaa !4
  %i.iu = add nsw i32 %i.it, -1
  store i32 %i.iu, ptr %i.is, align 4, !tbaa !4
  %i.iv = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv211
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 4
  %i.ix = load i32, ptr %i.iw, align 4, !tbaa !4
  %i.iy = sext i32 %i.ix to i64
  %i.iz = getelementptr inbounds i8, ptr @height, i64 %i.iy
  %i.ja = load i8, ptr %i.iz, align 1, !tbaa !8
  %i.jb = sext i8 %i.ja to i64
  %i.jc = getelementptr inbounds [4 x i8], ptr %i.ew, i64 %i.jb ; 2 uses
  %i.jd = load i32, ptr %i.jc, align 4, !tbaa !4
  %i.je = add nsw i32 %i.jd, -1
  store i32 %i.je, ptr %i.jc, align 4, !tbaa !4
  %indvars.iv.next212.1 = add nuw nsw i64 %indvars.iv211, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %.preheader, !llvm.loop !20

.unr-lcssa:                                       ; preds = %.preheader
  %lcmp.mod299.not = icmp eq i64 %xtraiter298, 0
  br i1 %lcmp.mod299.not, label %bb.ae, label %.preheader.epil.preheader

.preheader.epil.preheader:                        ; preds = %.unr-lcssa, %.preheader.preheader
  %indvars.iv211.epil.init = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next212.1, %.unr-lcssa ]
  %lcmp.mod300 = trunc i32 %indvars.iv214 to i1
  tail call void @llvm.assume(i1 %lcmp.mod300)
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv211.epil.init
  %i.jg = load i32, ptr %i.jf, align 4, !tbaa !4
  %i.jh = sext i32 %i.jg to i64
  %i.ji = getelementptr inbounds i8, ptr @height, i64 %i.jh
  %i.jj = load i8, ptr %i.ji, align 1, !tbaa !8
  %i.jk = sext i8 %i.jj to i64
  %i.jl = getelementptr inbounds [4 x i8], ptr %i.ew, i64 %i.jk ; 2 uses
  %i.jm = load i32, ptr %i.jl, align 4, !tbaa !4
  %i.jn = add nsw i32 %i.jm, -1
  store i32 %i.jn, ptr %i.jl, align 4, !tbaa !4
  br label %bb.ae

bb.ae:                                            ; preds = %.unr-lcssa, %.preheader.epil.preheader
  %i.jo = load i8, ptr %i.ih, align 1, !tbaa !8
  %i.jp = sext i8 %i.jo to i64
  %i.jq = getelementptr inbounds [4 x i8], ptr %i.ew, i64 %i.jp ; 2 uses
  %i.jr = load i32, ptr %i.jq, align 4, !tbaa !4
  %i.js = add nsw i32 %i.jr, %i.fe
  store i32 %i.js, ptr %i.jq, align 4, !tbaa !4
  br label %.loopexit

bb.af:                                            ; preds = %._crit_edge168, %bb.ac, %bb.ab
  %.2107 = phi i32 [ %i.hm, %bb.ac ], [ %i.hm, %bb.ab ], [ %.0105170, %._crit_edge168 ] ; 2 uses
  %.2 = phi i32 [ %i.hm, %bb.ac ], [ %.1172, %bb.ab ], [ %.1172, %._crit_edge168 ]
  %indvars.iv.next194 = add nuw nsw i64 %indvars.iv193, 1
  %exitcond210.not = icmp eq i64 %indvars.iv.next206, %wide.trip.count209
  %indvars.iv.next215 = add nuw nsw i32 %indvars.iv214, 1
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond210.not, label %.loopexit, label %bb.aa, !llvm.loop !21

.loopexit:                                        ; preds = %bb.af, %transpose.exit.thread, %bb.ad, %bb.ae
  %i.jt = phi i32 [ %i.ho, %bb.ae ], [ %i.ho, %bb.ad ], [ %i.d, %transpose.exit.thread ], [ %i.ho, %bb.af ]
  %.3108 = phi i32 [ %.1106, %bb.ae ], [ %.1106, %bb.ad ], [ 1, %transpose.exit.thread ], [ %.2107, %bb.af ] ; 2 uses
  %i.ju = load i64, ptr @posed, align 8, !tbaa !9 ; 2 uses
  %i.jv = sub i64 %i.ju, %i.eu
  %i.jw = lshr i64 %i.jv, 1
  %i.jx = tail call range(i64 1, 65) i64 @llvm.ctlz.i64(i64 %i.jw, i1 false)
  %i.jy = trunc nuw nsw i64 %i.jx to i32
  %i.jz = sub nuw nsw i32 64, %i.jy               ; 3 uses
  %i.ka = icmp eq i32 %.3108, %.0.i133148.neg
  %spec.store.select = select i1 %i.ka, i32 3, i32 %.3108 ; 5 uses
  %i.kb = add i64 %i.ju, 1
  store i64 %i.kb, ptr @posed, align 8, !tbaa !9
  %i.kc = load ptr, ptr @ht, align 8, !tbaa !13
  %i.kd = getelementptr inbounds nuw [8 x i8], ptr %i.kc, i64 %i.ec ; 2 uses
  %.sroa.0.0.copyload.i135 = load i64, ptr %i.kd, align 4, !tbaa !8 ; 3 uses
  %i.ke = trunc i64 %.sroa.0.0.copyload.i135 to i32 ; 2 uses
  %i.kf = and i32 %i.ke, 67108863
  %i.kg = icmp ne i32 %i.kf, %i.eb
  %i.kh = lshr i32 %i.ke, 26
  %.not.i136 = icmp samesign ult i32 %i.jz, %i.kh
  %or.cond.i = and i1 %i.kg, %.not.i136
  br i1 %or.cond.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %.loopexit
  %i.ki = and i64 %.sroa.0.0.copyload.i135, 2305843004918726656
  %i.kj = and i32 %spec.store.select, 7
  %i.kk = zext nneg i32 %i.kj to i64
  %i.kl = shl nuw i64 %i.kk, 61
  %i.km = shl nuw i32 %i.jz, 26
  %i.kn = zext i32 %i.km to i64
  %.masked16.i = and i64 %i.ea, 67108863
  %.masked.i = or disjoint i64 %.masked16.i, %i.ki
  %i.ko = or disjoint i64 %.masked.i, %i.kl
  %i.kp = or disjoint i64 %i.ko, %i.kn
  br label %transtore.exit

bb.ah:                                            ; preds = %.loopexit
  %i.kq = shl i64 %i.ea, 32
  %i.kr = and i64 %i.kq, 288230371856744448
  %i.ks = and i64 %.sroa.0.0.copyload.i135, -2305843004918726657
  %i.kt = or disjoint i64 %i.kr, %i.ks
  %i.ku = and i32 %spec.store.select, 7
  %i.kv = zext nneg i32 %i.ku to i64
  %i.kw = shl nuw nsw i64 %i.kv, 58
  %i.kx = or disjoint i64 %i.kt, %i.kw
  br label %transtore.exit

transtore.exit:                                   ; preds = %bb.ag, %bb.ah
  %.sroa.0.0.i = phi i64 [ %i.kp, %bb.ag ], [ %i.kx, %bb.ah ]
  store i64 %.sroa.0.0.i, ptr %i.kd, align 4, !tbaa !8
  %i.ky = icmp slt i32 %i.jt, 0
  br i1 %i.ky, label %bb.ai, label %islegalhaswon.exit132.thread

bb.ai:                                            ; preds = %transtore.exit
  tail call void @printMoves()
  %i.kz = zext nneg i32 %spec.store.select to i64
  %i.la = getelementptr inbounds nuw i8, ptr @.str.3, i64 %i.kz
  %i.lb = load i8, ptr %i.la, align 1, !tbaa !8
  %i.lc = sext i8 %i.lb to i32
  %i.ld = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %i.lc, i32 noundef %i.jz) ; 0 uses
  br label %islegalhaswon.exit132.thread

islegalhaswon.exit132.thread:                     ; preds = %bb.n, %bb.m, %bb.l, %islegalhaswon.exit132, %.thread142, %transtore.exit, %bb.ai, %transpose.exit, %bb.z, %bb.y, %bb.s, %bb.r, %haswon.exit.thread, %bb.a, %.thread145
  %.0 = phi i32 [ 4, %bb.z ], [ 3, %bb.a ], [ 1, %haswon.exit.thread ], [ 3, %.thread142 ], [ 1, %bb.r ], [ %i.cu, %.thread145 ], [ 3, %bb.s ], [ %.0.i133, %transpose.exit ], [ 2, %bb.y ], [ %spec.store.select, %bb.ai ], [ %spec.store.select, %transtore.exit ], [ 1, %islegalhaswon.exit132 ], [ 1, %bb.l ], [ 1, %bb.m ], [ 1, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret i32 %.0
}

; Function Attrs: nofree nounwind uwtable
define dso_local range(i32 -1, 8) i32 @solve() local_unnamed_addr #3 {
bb.a:
  %i.a = load i32, ptr @nplies, align 4, !tbaa !4
  %i.b = and i32 %i.a, 1                          ; 2 uses
  %i.c = xor i32 %i.b, 1
  store i64 0, ptr @nodes, align 8, !tbaa !9
  store i64 1, ptr @msecs, align 8, !tbaa !9
  %i.d = zext nneg i32 %i.c to i64
  %i.e = getelementptr inbounds nuw [8 x i8], ptr @color, i64 %i.d
  %i.f = load i64, ptr %i.e, align 8, !tbaa !9    ; 8 uses
  %i.g = lshr i64 %i.f, 6
  %i.h = and i64 %i.g, %i.f                       ; 2 uses
  %i.i = lshr i64 %i.h, 12
  %i.j = and i64 %i.i, %i.h
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %bb.b, label %haswon.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.k = lshr i64 %i.f, 7
  %i.l = and i64 %i.k, %i.f                       ; 2 uses
  %i.m = lshr i64 %i.l, 14
  %i.n = and i64 %i.m, %i.l
  %.not17.i = icmp eq i64 %i.n, 0
  br i1 %.not17.i, label %bb.c, label %haswon.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.o = lshr i64 %i.f, 8
  %i.p = and i64 %i.o, %i.f                       ; 2 uses
  %i.q = lshr i64 %i.p, 16
  %i.r = and i64 %i.q, %i.p
  %.not18.i = icmp eq i64 %i.r, 0
  br i1 %.not18.i, label %haswon.exit, label %haswon.exit.thread

haswon.exit:                                      ; preds = %bb.c
  %i.s = lshr i64 %i.f, 1
  %i.t = and i64 %i.s, %i.f                       ; 2 uses
  %i.u = lshr i64 %i.t, 2
  %i.v = and i64 %i.u, %i.t
  %.not16 = icmp eq i64 %i.v, 0
  br i1 %.not16, label %.preheader, label %haswon.exit.thread

.preheader:                                       ; preds = %haswon.exit
  %i.w = zext nneg i32 %i.b to i64
  %i.x = getelementptr inbounds nuw [8 x i8], ptr @color, i64 %i.w
  %i.y = load i64, ptr %i.x, align 8, !tbaa !9    ; 7 uses
  %i.z = load i8, ptr @height, align 4, !tbaa !8
  %i.aa = sext i8 %i.z to i64
  %i.ab = and i64 %i.aa, 4294967295
  %i.ac = shl nuw i64 1, %i.ab
  %i.ad = or i64 %i.ac, %i.y                      ; 9 uses
  %i.ae = and i64 %i.ad, 283691315109952
  %.not.i10 = icmp eq i64 %i.ae, 0
  br i1 %.not.i10, label %bb.d, label %islegalhaswon.exit.thread14

bb.d:                                             ; preds = %.preheader
  %i.af = lshr i64 %i.ad, 6
  %i.ag = and i64 %i.af, %i.ad                    ; 2 uses
  %i.ah = lshr i64 %i.ag, 12
  %i.ai = and i64 %i.ah, %i.ag
  %.not.i.i = icmp eq i64 %i.ai, 0
  br i1 %.not.i.i, label %bb.e, label %haswon.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.aj = lshr i64 %i.ad, 7
  %i.ak = and i64 %i.aj, %i.ad                    ; 2 uses
  %i.al = lshr i64 %i.ak, 14
  %i.am = and i64 %i.al, %i.ak
  %.not17.i.i = icmp eq i64 %i.am, 0
  br i1 %.not17.i.i, label %bb.f, label %haswon.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.an = lshr i64 %i.ad, 8
  %i.ao = and i64 %i.an, %i.ad                    ; 2 uses
  %i.ap = lshr i64 %i.ao, 16
  %i.aq = and i64 %i.ap, %i.ao
  %.not18.i.i = icmp eq i64 %i.aq, 0
  br i1 %.not18.i.i, label %islegalhaswon.exit, label %haswon.exit.thread

islegalhaswon.exit:                               ; preds = %bb.f
  %i.ar = lshr i64 %i.ad, 1
  %i.as = and i64 %i.ar, %i.ad                    ; 2 uses
  %i.at = lshr i64 %i.as, 2
  %i.au = and i64 %i.at, %i.as
  %.not = icmp eq i64 %i.au, 0
  br i1 %.not, label %islegalhaswon.exit.thread14, label %haswon.exit.thread

islegalhaswon.exit.thread14:                      ; preds = %.preheader, %islegalhaswon.exit
  %i.av = load i8, ptr getelementptr inbounds nuw (i8, ptr @height, i64 1), align 1, !tbaa !8
  %i.aw = sext i8 %i.av to i64
  %i.ax = and i64 %i.aw, 4294967295
  %i.ay = shl nuw i64 1, %i.ax
  %i.az = or i64 %i.ay, %i.y                      ; 9 uses
  %i.ba = and i64 %i.az, 283691315109952
  %.not.i10.1 = icmp eq i64 %i.ba, 0
  br i1 %.not.i10.1, label %bb.g, label %islegalhaswon.exit.thread14.1

bb.g:                                             ; preds = %islegalhaswon.exit.thread14
  %i.bb = lshr i64 %i.az, 6
  %i.bc = and i64 %i.bb, %i.az                    ; 2 uses
  %i.bd = lshr i64 %i.bc, 12
  %i.be = and i64 %i.bd, %i.bc
  %.not.i.i.1 = icmp eq i64 %i.be, 0
  br i1 %.not.i.i.1, label %bb.h, label %haswon.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.bf = lshr i64 %i.az, 7
  %i.bg = and i64 %i.bf, %i.az                    ; 2 uses
  %i.bh = lshr i64 %i.bg, 14
  %i.bi = and i64 %i.bh, %i.bg
  %.not17.i.i.1 = icmp eq i64 %i.bi, 0
  br i1 %.not17.i.i.1, label %bb.i, label %haswon.exit.thread

bb.i:                                             ; preds = %bb.h
  %i.bj = lshr i64 %i.az, 8
  %i.bk = and i64 %i.bj, %i.az                    ; 2 uses
  %i.bl = lshr i64 %i.bk, 16
  %i.bm = and i64 %i.bl, %i.bk
  %.not18.i.i.1 = icmp eq i64 %i.bm, 0
  br i1 %.not18.i.i.1, label %islegalhaswon.exit.1, label %haswon.exit.thread

islegalhaswon.exit.1:                             ; preds = %bb.i
  %i.bn = lshr i64 %i.az, 1
  %i.bo = and i64 %i.bn, %i.az                    ; 2 uses
  %i.bp = lshr i64 %i.bo, 2
  %i.bq = and i64 %i.bp, %i.bo
  %.not.1 = icmp eq i64 %i.bq, 0
  br i1 %.not.1, label %islegalhaswon.exit.thread14.1, label %haswon.exit.thread

islegalhaswon.exit.thread14.1:                    ; preds = %islegalhaswon.exit.1, %islegalhaswon.exit.thread14
end_hunk_0
begin_hunk_1_@solve:bb.a
  %i.co = sext i8 %i.cn to i64
  %i.cp = and i64 %i.co, 4294967295
  %i.cq = shl nuw i64 1, %i.cp
  %i.cr = or i64 %i.cq, %i.y                      ; 9 uses
  %i.cs = and i64 %i.cr, 283691315109952
  %.not.i10.3 = icmp eq i64 %i.cs, 0
  br i1 %.not.i10.3, label %bb.m, label %islegalhaswon.exit.thread14.3

bb.m:                                             ; preds = %islegalhaswon.exit.thread14.2
  %i.ct = lshr i64 %i.cr, 6
  %i.cu = and i64 %i.ct, %i.cr                    ; 2 uses
  %i.cv = lshr i64 %i.cu, 12
  %i.cw = and i64 %i.cv, %i.cu
  %.not.i.i.3 = icmp eq i64 %i.cw, 0
  br i1 %.not.i.i.3, label %bb.n, label %haswon.exit.thread

bb.n:                                             ; preds = %bb.m
  %i.cx = lshr i64 %i.cr, 7
  %i.cy = and i64 %i.cx, %i.cr                    ; 2 uses
  %i.cz = lshr i64 %i.cy, 14
  %i.da = and i64 %i.cz, %i.cy
  %.not17.i.i.3 = icmp eq i64 %i.da, 0
  br i1 %.not17.i.i.3, label %bb.o, label %haswon.exit.thread

bb.o:                                             ; preds = %bb.n
  %i.db = lshr i64 %i.cr, 8
  %i.dc = and i64 %i.db, %i.cr                    ; 2 uses
  %i.dd = lshr i64 %i.dc, 16
  %i.de = and i64 %i.dd, %i.dc
  %.not18.i.i.3 = icmp eq i64 %i.de, 0
  br i1 %.not18.i.i.3, label %islegalhaswon.exit.3, label %haswon.exit.thread

islegalhaswon.exit.3:                             ; preds = %bb.o
  %i.df = lshr i64 %i.cr, 1
  %i.dg = and i64 %i.df, %i.cr                    ; 2 uses
  %i.dh = lshr i64 %i.dg, 2
  %i.di = and i64 %i.dh, %i.dg
  %.not.3 = icmp eq i64 %i.di, 0
  br i1 %.not.3, label %islegalhaswon.exit.thread14.3, label %haswon.exit.thread

islegalhaswon.exit.thread14.3:                    ; preds = %islegalhaswon.exit.3, %islegalhaswon.exit.thread14.2
  %i.dj = load i8, ptr getelementptr inbounds nuw (i8, ptr @height, i64 4), align 4, !tbaa !8
  %i.dk = sext i8 %i.dj to i64
  %i.dl = and i64 %i.dk, 4294967295
  %i.dm = shl nuw i64 1, %i.dl
  %i.dn = or i64 %i.dm, %i.y                      ; 9 uses
  %i.do = and i64 %i.dn, 283691315109952
  %.not.i10.4 = icmp eq i64 %i.do, 0
  br i1 %.not.i10.4, label %bb.p, label %islegalhaswon.exit.thread14.4

bb.p:                                             ; preds = %islegalhaswon.exit.thread14.3
  %i.dp = lshr i64 %i.dn, 6
  %i.dq = and i64 %i.dp, %i.dn                    ; 2 uses
  %i.dr = lshr i64 %i.dq, 12
  %i.ds = and i64 %i.dr, %i.dq
  %.not.i.i.4 = icmp eq i64 %i.ds, 0
  br i1 %.not.i.i.4, label %bb.q, label %haswon.exit.thread

bb.q:                                             ; preds = %bb.p
  %i.dt = lshr i64 %i.dn, 7
  %i.du = and i64 %i.dt, %i.dn                    ; 2 uses
  %i.dv = lshr i64 %i.du, 14
  %i.dw = and i64 %i.dv, %i.du
  %.not17.i.i.4 = icmp eq i64 %i.dw, 0
  br i1 %.not17.i.i.4, label %bb.r, label %haswon.exit.thread

bb.r:                                             ; preds = %bb.q
  %i.dx = lshr i64 %i.dn, 8
  %i.dy = and i64 %i.dx, %i.dn                    ; 2 uses
  %i.dz = lshr i64 %i.dy, 16
  %i.ea = and i64 %i.dz, %i.dy
  %.not18.i.i.4 = icmp eq i64 %i.ea, 0
  br i1 %.not18.i.i.4, label %islegalhaswon.exit.4, label %haswon.exit.thread

islegalhaswon.exit.4:                             ; preds = %bb.r
  %i.eb = lshr i64 %i.dn, 1
  %i.ec = and i64 %i.eb, %i.dn                    ; 2 uses
  %i.ed = lshr i64 %i.ec, 2
  %i.ee = and i64 %i.ed, %i.ec
  %.not.4 = icmp eq i64 %i.ee, 0
  br i1 %.not.4, label %islegalhaswon.exit.thread14.4, label %haswon.exit.thread

islegalhaswon.exit.thread14.4:                    ; preds = %islegalhaswon.exit.4, %islegalhaswon.exit.thread14.3
  %i.ef = load i8, ptr getelementptr inbounds nuw (i8, ptr @height, i64 5), align 1, !tbaa !8
  %i.eg = sext i8 %i.ef to i64
  %i.eh = and i64 %i.eg, 4294967295
  %i.ei = shl nuw i64 1, %i.eh
  %i.ej = or i64 %i.ei, %i.y                      ; 9 uses
  %i.ek = and i64 %i.ej, 283691315109952
  %.not.i10.5 = icmp eq i64 %i.ek, 0
  br i1 %.not.i10.5, label %bb.s, label %islegalhaswon.exit.thread14.5

bb.s:                                             ; preds = %islegalhaswon.exit.thread14.4
  %i.el = lshr i64 %i.ej, 6
  %i.em = and i64 %i.el, %i.ej                    ; 2 uses
  %i.en = lshr i64 %i.em, 12
  %i.eo = and i64 %i.en, %i.em
  %.not.i.i.5 = icmp eq i64 %i.eo, 0
  br i1 %.not.i.i.5, label %bb.t, label %haswon.exit.thread

bb.t:                                             ; preds = %bb.s
  %i.ep = lshr i64 %i.ej, 7
  %i.eq = and i64 %i.ep, %i.ej                    ; 2 uses
  %i.er = lshr i64 %i.eq, 14
  %i.es = and i64 %i.er, %i.eq
  %.not17.i.i.5 = icmp eq i64 %i.es, 0
  br i1 %.not17.i.i.5, label %bb.u, label %haswon.exit.thread

bb.u:                                             ; preds = %bb.t
  %i.et = lshr i64 %i.ej, 8
  %i.eu = and i64 %i.et, %i.ej                    ; 2 uses
  %i.ev = lshr i64 %i.eu, 16
  %i.ew = and i64 %i.ev, %i.eu
  %.not18.i.i.5 = icmp eq i64 %i.ew, 0
  br i1 %.not18.i.i.5, label %islegalhaswon.exit.5, label %haswon.exit.thread

islegalhaswon.exit.5:                             ; preds = %bb.u
  %i.ex = lshr i64 %i.ej, 1
  %i.ey = and i64 %i.ex, %i.ej                    ; 2 uses
  %i.ez = lshr i64 %i.ey, 2
  %i.fa = and i64 %i.ez, %i.ey
  %.not.5 = icmp eq i64 %i.fa, 0
  br i1 %.not.5, label %islegalhaswon.exit.thread14.5, label %haswon.exit.thread

islegalhaswon.exit.thread14.5:                    ; preds = %islegalhaswon.exit.5, %islegalhaswon.exit.thread14.4
  %i.fb = load i8, ptr getelementptr inbounds nuw (i8, ptr @height, i64 6), align 2, !tbaa !8
  %i.fc = sext i8 %i.fb to i64
  %i.fd = and i64 %i.fc, 4294967295
  %i.fe = shl nuw i64 1, %i.fd
  %i.ff = or i64 %i.fe, %i.y                      ; 9 uses
  %i.fg = and i64 %i.ff, 283691315109952
  %.not.i10.6 = icmp eq i64 %i.fg, 0
  br i1 %.not.i10.6, label %bb.v, label %islegalhaswon.exit.thread14.6

bb.v:                                             ; preds = %islegalhaswon.exit.thread14.5
  %i.fh = lshr i64 %i.ff, 6
  %i.fi = and i64 %i.fh, %i.ff                    ; 2 uses
  %i.fj = lshr i64 %i.fi, 12
  %i.fk = and i64 %i.fj, %i.fi
  %.not.i.i.6 = icmp eq i64 %i.fk, 0
  br i1 %.not.i.i.6, label %bb.w, label %haswon.exit.thread

bb.w:                                             ; preds = %bb.v
  %i.fl = lshr i64 %i.ff, 7
  %i.fm = and i64 %i.fl, %i.ff                    ; 2 uses
  %i.fn = lshr i64 %i.fm, 14
  %i.fo = and i64 %i.fn, %i.fm
  %.not17.i.i.6 = icmp eq i64 %i.fo, 0
  br i1 %.not17.i.i.6, label %bb.x, label %haswon.exit.thread

bb.x:                                             ; preds = %bb.w
  %i.fp = lshr i64 %i.ff, 8
  %i.fq = and i64 %i.fp, %i.ff                    ; 2 uses
  %i.fr = lshr i64 %i.fq, 16
  %i.fs = and i64 %i.fr, %i.fq
  %.not18.i.i.6 = icmp eq i64 %i.fs, 0
  br i1 %.not18.i.i.6, label %islegalhaswon.exit.6, label %haswon.exit.thread

islegalhaswon.exit.6:                             ; preds = %bb.x
  %i.ft = lshr i64 %i.ff, 1
  %i.fu = and i64 %i.ft, %i.ff                    ; 2 uses
  %i.fv = lshr i64 %i.fu, 2
  %i.fw = and i64 %i.fv, %i.fu
  %.not.6 = icmp eq i64 %i.fw, 0
  br i1 %.not.6, label %islegalhaswon.exit.thread14.6, label %haswon.exit.thread

islegalhaswon.exit.thread14.6:                    ; preds = %islegalhaswon.exit.6, %islegalhaswon.exit.thread14.5
  tail call void @inithistory()
  %i.fx = load i64, ptr @millisecs.Time, align 8, !tbaa !9 ; 2 uses
  %i.fy = add nsw i64 %i.fx, 1
  store i64 %i.fy, ptr @millisecs.Time, align 8, !tbaa !9
  store i64 %i.fx, ptr @msecs, align 8, !tbaa !9
  %i.fz = tail call i32 @ab(i32 noundef 1, i32 noundef 5)
  %i.ga = load i64, ptr @millisecs.Time, align 8, !tbaa !9
  %i.gb = add i64 %i.ga, 1                        ; 2 uses
  store i64 %i.gb, ptr @millisecs.Time, align 8, !tbaa !9
  %i.gc = load i64, ptr @msecs, align 8, !tbaa !9
  %i.gd = sub i64 %i.gb, %i.gc
  store i64 %i.gd, ptr @msecs, align 8, !tbaa !9
  br label %haswon.exit.thread

haswon.exit.thread:                               ; preds = %bb.f, %bb.e, %bb.d, %islegalhaswon.exit, %bb.g, %bb.h, %bb.i, %islegalhaswon.exit.1, %bb.j, %bb.k, %bb.l, %islegalhaswon.exit.2, %bb.m, %bb.n, %bb.o, %islegalhaswon.exit.3, %bb.p, %bb.q, %bb.r, %islegalhaswon.exit.4, %bb.s, %bb.t, %bb.u, %islegalhaswon.exit.5, %bb.v, %bb.w, %bb.x, %islegalhaswon.exit.6, %bb.c, %bb.b, %bb.a, %haswon.exit, %islegalhaswon.exit.thread14.6
  %.0 = phi i32 [ %i.fz, %islegalhaswon.exit.thread14.6 ], [ 1, %haswon.exit ], [ 1, %bb.b ], [ 1, %bb.c ], [ 1, %bb.a ], [ 5, %islegalhaswon.exit.6 ], [ 5, %bb.x ], [ 5, %bb.w ], [ 5, %bb.v ], [ 5, %islegalhaswon.exit.5 ], [ 5, %bb.u ], [ 5, %bb.t ], [ 5, %bb.s ], [ 5, %islegalhaswon.exit.4 ], [ 5, %bb.r ], [ 5, %bb.q ], [ 5, %bb.p ], [ 5, %islegalhaswon.exit.3 ], [ 5, %bb.o ], [ 5, %bb.n ], [ 5, %bb.m ], [ 5, %islegalhaswon.exit.2 ], [ 5, %bb.l ], [ 5, %bb.k ], [ 5, %bb.j ], [ 5, %islegalhaswon.exit.1 ], [ 5, %bb.i ], [ 5, %bb.h ], [ 5, %bb.g ], [ 5, %islegalhaswon.exit ], [ 5, %bb.d ], [ 5, %bb.e ], [ 5, %bb.f ]
  ret i32 %.0
}

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #3 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(66448552) ptr @calloc(i64 noundef 8306069, i64 noundef 8) #17
  store ptr %i.a, ptr @ht, align 8, !tbaa !13
  %i.b = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) @.str.4) ; 0 uses
  %i.c = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, i32 noundef 7, i32 noundef 6) ; 0 uses
  %i.d = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, i32 noundef 8306069) ; 0 uses
  store i32 0, ptr @nplies, align 4, !tbaa !4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) @color, i8 0, i64 16, i1 false)
  store <4 x i8> <i8 0, i8 7, i8 14, i8 21>, ptr @height, align 4, !tbaa !8
  store i8 28, ptr getelementptr inbounds nuw (i8, ptr @height, i64 4), align 4, !tbaa !8
  store i8 35, ptr getelementptr inbounds nuw (i8, ptr @height, i64 5), align 1, !tbaa !8
  store i8 42, ptr getelementptr inbounds nuw (i8, ptr @height, i64 6), align 2, !tbaa !8
  %i.e = load ptr, ptr @stdin, align 8, !tbaa !22
  %i.f = tail call i32 @getc(ptr noundef %i.e), !inline_history !24 ; 2 uses
  %cond1820 = icmp eq i32 %i.f, -1
  br i1 %cond1820, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph.backedge
  %i.g = phi i32 [ %.be, %.lr.ph.backedge ], [ %i.f, %bb.a ] ; 2 uses
  %i.h = add i32 %i.g, -49                        ; 3 uses
  %or.cond = icmp ult i32 %i.h, 7
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.i = zext nneg i32 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr @height, i64 %i.i ; 2 uses
  %i.k = load i8, ptr %i.j, align 1, !tbaa !8     ; 2 uses
  %i.l = add i8 %i.k, 1
  store i8 %i.l, ptr %i.j, align 1, !tbaa !8
  %i.m = sext i8 %i.k to i64
  %i.n = and i64 %i.m, 4294967295
  %i.o = shl nuw i64 1, %i.n
  %i.p = load i32, ptr @nplies, align 4, !tbaa !4 ; 3 uses
  %i.q = and i32 %i.p, 1
  %i.r = zext nneg i32 %i.q to i64
  %i.s = getelementptr inbounds nuw [8 x i8], ptr @color, i64 %i.r ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !9
  %i.u = xor i64 %i.t, %i.o
  store i64 %i.u, ptr %i.s, align 8, !tbaa !9
  %i.v = add nsw i32 %i.p, 1
  store i32 %i.v, ptr @nplies, align 4, !tbaa !4
  %i.w = sext i32 %i.p to i64
  %i.x = getelementptr inbounds [4 x i8], ptr @moves, i64 %i.w
  store i32 %i.h, ptr %i.x, align 4, !tbaa !4
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph
  %cond15 = icmp eq i32 %i.g, 10
  br i1 %cond15, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.y = load ptr, ptr @stdin, align 8, !tbaa !22
  %i.z = tail call i32 @getc(ptr noundef %i.y), !inline_history !24 ; 2 uses
  %cond = icmp eq i32 %i.z, -1
  br i1 %cond, label %._crit_edge, label %.lr.ph.backedge

.lr.ph.backedge:                                  ; preds = %bb.d, %emptyTT.exit
  %.be = phi i32 [ %i.z, %bb.d ], [ %i.bj, %emptyTT.exit ]
  br label %.lr.ph, !llvm.loop !25

bb.e:                                             ; preds = %bb.c
  %i.aa = load i32, ptr @nplies, align 4, !tbaa !4
  %i.ab = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %i.aa) ; 0 uses
  %i.ac = load i32, ptr @nplies, align 4, !tbaa !4
  %i.ad = icmp sgt i32 %i.ac, 0
  br i1 %i.ad, label %.lr.ph.i, label %printMoves.exit

.lr.ph.i:                                         ; preds = %bb.e, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 0, %bb.e ] ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr @moves, i64 %indvars.iv.i
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !4
  %i.ag = add nsw i32 %i.af, 1
  %i.ah = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %i.ag) ; 0 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ai = load i32, ptr @nplies, align 4, !tbaa !4
  %i.aj = sext i32 %i.ai to i64
  %i.ak = icmp slt i64 %indvars.iv.next.i, %i.aj
  br i1 %i.ak, label %.lr.ph.i, label %printMoves.exit, !llvm.loop !11

printMoves.exit:                                  ; preds = %.lr.ph.i, %bb.e
  %i.al = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) @.str.8) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %printMoves.exit
  %indvars.iv.i16 = phi i64 [ 0, %printMoves.exit ], [ %indvars.iv.next.i17.3, %bb.g ] ; 6 uses
  %i.am = load ptr, ptr @ht, align 8, !tbaa !13
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %indvars.iv.i16
  store i64 0, ptr %i.an, align 4, !tbaa !8
  %exitcond.not.i = icmp eq i64 %indvars.iv.i16, 8306068
  br i1 %exitcond.not.i, label %emptyTT.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ao = load ptr, ptr @ht, align 8, !tbaa !13
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %indvars.iv.i16
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  store i64 0, ptr %i.aq, align 4, !tbaa !8
  %i.ar = load ptr, ptr @ht, align 8, !tbaa !13
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %indvars.iv.i16
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  store i64 0, ptr %i.at, align 4, !tbaa !8
  %i.au = load ptr, ptr @ht, align 8, !tbaa !13
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %indvars.iv.i16
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  store i64 0, ptr %i.aw, align 4, !tbaa !8
  %indvars.iv.next.i17.3 = add nuw nsw i64 %indvars.iv.i16, 4
  br label %bb.f

emptyTT.exit:                                     ; preds = %bb.f
  store i64 0, ptr @posed, align 8, !tbaa !9
  %i.ax = tail call i32 @solve()                  ; 2 uses
  %i.ay = load i64, ptr @posed, align 8, !tbaa !9
  %i.az = lshr i64 %i.ay, 1
  %i.ba = tail call range(i64 1, 65) i64 @llvm.ctlz.i64(i64 %i.az, i1 false)
  %i.bb = trunc nuw nsw i64 %i.ba to i32
  %i.bc = sub nuw nsw i32 64, %i.bb
  %i.bd = sext i32 %i.ax to i64
  %i.be = getelementptr inbounds i8, ptr @.str.3, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !8
  %i.bg = sext i8 %i.bf to i32
  %i.bh = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, i32 noundef %i.ax, i32 noundef %i.bg, i32 noundef %i.bc) ; 0 uses
  tail call void @htstat()
  store i32 0, ptr @nplies, align 4, !tbaa !4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) @color, i8 0, i64 16, i1 false)
  store <4 x i8> <i8 0, i8 7, i8 14, i8 21>, ptr @height, align 4, !tbaa !8
  store i8 28, ptr getelementptr inbounds nuw (i8, ptr @height, i64 4), align 4, !tbaa !8
  store i8 35, ptr getelementptr inbounds nuw (i8, ptr @height, i64 5), align 1, !tbaa !8
  store i8 42, ptr getelementptr inbounds nuw (i8, ptr @height, i64 6), align 2, !tbaa !8
  %i.bi = load ptr, ptr @stdin, align 8, !tbaa !22
  %i.bj = tail call i32 @getc(ptr noundef %i.bi), !inline_history !24 ; 2 uses
  %cond18 = icmp eq i32 %i.bj, -1
  br i1 %cond18, label %._crit_edge, label %.lr.ph.backedge

._crit_edge:                                      ; preds = %emptyTT.exit, %bb.d, %bb.a
  ret i32 0
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn memory(write, argmem: none, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree norecurse nosync nounwind memory(readwrite, argmem: write, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree norecurse nosync nounwind memory(readwrite, argmem: read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #15 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { nounwind allocsize(0,1) }
attributes #18 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!6, !6, i64 0}
!9 = !{!10, !10, i64 0}
!10 = !{!"long", !6, i64 0}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!14, !14, i64 0}
!14 = !{!"any pointer", !6, i64 0}
!15 = distinct !{!15, !12}
!16 = distinct !{!16, !12}
!17 = distinct !{!17, !12}
!18 = distinct !{!18, !12}
!19 = distinct !{!19, !12}
!20 = distinct !{!20, !12}
!21 = distinct !{!21, !12}
!22 = !{!23, !23, i64 0}
!23 = !{!"p1 _ZTS8_IO_FILE", !14, i64 0}
!24 = distinct !{null}
!25 = distinct !{!25, !12}
end_hunk_1
