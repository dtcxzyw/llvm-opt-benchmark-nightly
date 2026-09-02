Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quickjs/original/libunicode?download=true
inline.NumInlined: 121
inline.NumDeleted: 24
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 12
begin_hunk_0_@unicode_normalize:bb.a
  %i.cy = zext i8 %i.cx to i32
  %i.cz = sub i32 %i.aj, %.037.i.i
  %i.da = add i32 %i.cz, %i.cy
  br label %unicode_get_cc.exit.i

.unreachabledefault:                              ; preds = %bb.k
  unreachable

default.unreachable:                              ; preds = %bb.t
  unreachable

unicode_get_cc.exit.i:                            ; preds = %bb.m, %bb.l
  %.031.i.i = phi i32 [ %i.da, %bb.m ], [ %i.cv, %bb.l ] ; 2 uses
  %i.db = icmp eq i32 %.031.i.i, 0
  br i1 %i.db, label %unicode_get_cc.exit.thread.loopexit.split.loop.exit111.i, label %.preheader.i

.preheader.i:                                     ; preds = %unicode_get_cc.exit.i, %bb.k
  %.031.i100.i = phi i32 [ %.031.i.i, %unicode_get_cc.exit.i ], [ 230, %bb.k ]
  %.not3362.i = icmp slt i32 %indvars.iv.i, %.03076.i
  br i1 %.not3362.i, label %unicode_get_cc.exit55._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.x
  %indvars.iv81.i = phi i64 [ %indvars.iv.next82.i, %bb.x ], [ %i.ah, %.preheader.i ] ; 4 uses
  %i.dc = getelementptr inbounds [4 x i8], ptr %i.t, i64 %indvars.iv81.i ; 2 uses
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !14 ; 6 uses
  %i.de = icmp ult i32 %i.dd, 845
  br i1 %i.de, label %get_index_pos.exit.thread41.i45.i, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i
  %.not.i.i35.i = icmp ult i32 %i.dd, 125259
  br i1 %.not.i.i35.i, label %.lr.ph.i.i37.i, label %unicode_get_cc.exit55.i

.lr.ph.i.i37.i:                                   ; preds = %bb.n, %.lr.ph.i.i37.i
  %.034.i.i38.i = phi i32 [ %..0.i.i42.i, %.lr.ph.i.i37.i ], [ 29, %bb.n ] ; 2 uses
  %.02733.i.i39.i = phi i32 [ %.027..i.i41.i, %.lr.ph.i.i37.i ], [ 0, %bb.n ] ; 2 uses
  %i.df = add nsw i32 %.02733.i.i39.i, %.034.i.i38.i
  %i.dg = sdiv i32 %i.df, 2                       ; 3 uses
  %i.dh = mul nsw i32 %i.dg, 3
  %i.di = sext i32 %i.dh to i64
  %i.dj = getelementptr inbounds i8, ptr @unicode_cc_index, i64 %i.di ; 2 uses
  %i.dk = load i16, ptr %i.dj, align 1
  %i.dl = zext i16 %i.dk to i32
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dj, i64 2
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !16
  %i.do = zext i8 %i.dn to i32
  %i.dp = shl nuw nsw i32 %i.do, 16
  %.masked32.i.i40.i = and i32 %i.dp, 2031616
  %i.dq = or disjoint i32 %.masked32.i.i40.i, %i.dl
  %i.dr = icmp samesign ult i32 %i.dd, %i.dq      ; 2 uses
  %.027..i.i41.i = select i1 %i.dr, i32 %.02733.i.i39.i, i32 %i.dg ; 4 uses
  %..0.i.i42.i = select i1 %i.dr, i32 %i.dg, i32 %.034.i.i38.i ; 2 uses
  %i.ds = sub nsw i32 %..0.i.i42.i, %.027..i.i41.i
  %i.dt = icmp sgt i32 %i.ds, 1
  br i1 %i.dt, label %.lr.ph.i.i37.i, label %get_index_pos.exit.i43.i, !llvm.loop !0

get_index_pos.exit.i43.i:                         ; preds = %.lr.ph.i.i37.i
  %i.du = mul nsw i32 %.027..i.i41.i, 3
  %i.dv = sext i32 %i.du to i64
  %i.dw = getelementptr inbounds i8, ptr @unicode_cc_index, i64 %i.dv ; 2 uses
  %i.dx = load i16, ptr %i.dw, align 1
  %i.dy = zext i16 %i.dx to i32
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dw, i64 2
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !16
  %i.eb = zext i8 %i.ea to i32                    ; 2 uses
  %i.ec = shl nuw nsw i32 %i.eb, 16
  %.masked31.i.i44.i = and i32 %i.ec, 2031616
  %i.ed = or disjoint i32 %.masked31.i.i44.i, %i.dy
  %i.ee = shl i32 %.027..i.i41.i, 5
  %i.ef = add i32 %i.ee, 32                       ; 2 uses
  %i.eg = lshr i32 %i.eb, 5
  %i.eh = or disjoint i32 %i.eg, %i.ef
  %i.ei = icmp slt i32 %i.ef, 0
  br i1 %i.ei, label %unicode_get_cc.exit55.i, label %get_index_pos.exit.thread41.i45.i

get_index_pos.exit.thread41.i45.i:                ; preds = %get_index_pos.exit.i43.i, %.lr.ph.i
  %.029.i45.i46.i = phi i32 [ %i.eh, %get_index_pos.exit.i43.i ], [ 0, %.lr.ph.i ]
  %.13844.i47.i = phi i32 [ %i.ed, %get_index_pos.exit.i43.i ], [ 0, %.lr.ph.i ]
  %i.ej = zext nneg i32 %.029.i45.i46.i to i64
  %i.ek = getelementptr inbounds nuw i8, ptr @unicode_cc_table, i64 %i.ej
  br label %bb.o

bb.o:                                             ; preds = %bb.s, %get_index_pos.exit.thread41.i45.i
  %.037.i48.i = phi i32 [ %.13844.i47.i, %get_index_pos.exit.thread41.i45.i ], [ %i.fk, %bb.s ] ; 2 uses
  %.0.i49.i = phi ptr [ %i.ek, %get_index_pos.exit.thread41.i45.i ], [ %spec.select.i53.i, %bb.s ] ; 5 uses
  %i.el = getelementptr inbounds nuw i8, ptr %.0.i49.i, i64 1 ; 3 uses
  %i.em = load i8, ptr %.0.i49.i, align 1, !tbaa !16 ; 2 uses
  %i.en = zext i8 %i.em to i32                    ; 2 uses
  %i.eo = and i32 %i.en, 63                       ; 5 uses
  %i.ep = icmp samesign ult i32 %i.eo, 48
  br i1 %i.ep, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.eq = icmp samesign ult i32 %i.eo, 56
  br i1 %i.eq, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.er = shl nuw nsw i32 %i.eo, 8
  %i.es = getelementptr inbounds nuw i8, ptr %.0.i49.i, i64 2
  %i.et = load i8, ptr %i.el, align 1, !tbaa !16
  %i.eu = zext i8 %i.et to i32
  %i.ev = add nsw i32 %i.er, -12240
  %i.ew = add nuw nsw i32 %i.ev, %i.eu
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.ex = getelementptr inbounds nuw i8, ptr %.0.i49.i, i64 2
  %i.ey = load i8, ptr %i.el, align 1, !tbaa !16
  %i.ez = zext i8 %i.ey to i32
  %i.fa = add nuw nsw i32 %i.eo, 16777160
  %i.fb = or i32 %i.fa, %i.ez
  %i.fc = shl i32 %i.fb, 8
  %i.fd = getelementptr inbounds nuw i8, ptr %.0.i49.i, i64 3
  %i.fe = load i8, ptr %i.ex, align 1, !tbaa !16
  %i.ff = zext i8 %i.fe to i32
  %i.fg = add nuw nsw i32 %i.ff, 2096
  %i.fh = add nuw nsw i32 %i.fg, %i.fc
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.o
  %.030.i50.i = phi i32 [ %i.eo, %bb.o ], [ %i.ew, %bb.q ], [ %i.fh, %bb.r ]
  %.1.i51.i = phi ptr [ %i.el, %bb.o ], [ %i.es, %bb.q ], [ %i.fd, %bb.r ]
  %i.fi = icmp sgt i8 %i.em, -1
  %spec.select.idx.i52.i = zext i1 %i.fi to i64
  %spec.select.i53.i = getelementptr inbounds nuw i8, ptr %.1.i51.i, i64 %spec.select.idx.i52.i ; 3 uses
  %i.fj = add i32 %.037.i48.i, 1
  %i.fk = add i32 %i.fj, %.030.i50.i              ; 2 uses
  %i.fl = icmp ult i32 %i.dd, %i.fk
  br i1 %i.fl, label %bb.t, label %bb.o

bb.t:                                             ; preds = %bb.s
  %i.fm = lshr i32 %i.en, 6
  switch i32 %i.fm, label %default.unreachable [
    i32 0, label %bb.u
    i32 1, label %bb.v
    i32 2, label %unicode_get_cc.exit55.i
    i32 3, label %bb.w
  ]

bb.u:                                             ; preds = %bb.t
  %i.fn = getelementptr inbounds i8, ptr %spec.select.i53.i, i64 -1
  %i.fo = load i8, ptr %i.fn, align 1, !tbaa !16
  %i.fp = zext i8 %i.fo to i32
  br label %unicode_get_cc.exit55.i

bb.v:                                             ; preds = %bb.t
  %i.fq = getelementptr inbounds i8, ptr %spec.select.i53.i, i64 -1
  %i.fr = load i8, ptr %i.fq, align 1, !tbaa !16
  %i.fs = zext i8 %i.fr to i32
  %i.ft = sub i32 %i.dd, %.037.i48.i
  %i.fu = add i32 %i.ft, %i.fs
  br label %unicode_get_cc.exit55.i

bb.w:                                             ; preds = %bb.t
  br label %unicode_get_cc.exit55.i

unicode_get_cc.exit55.i:                          ; preds = %bb.w, %bb.v, %bb.u, %bb.t, %get_index_pos.exit.i43.i, %bb.n
  %.031.i36.i = phi i32 [ 0, %get_index_pos.exit.i43.i ], [ 230, %bb.w ], [ %i.fp, %bb.u ], [ %i.fu, %bb.v ], [ 0, %bb.t ], [ 0, %bb.n ]
  %.not34.i = icmp sgt i32 %.031.i36.i, %.031.i100.i
  br i1 %.not34.i, label %bb.x, label %unicode_get_cc.exit55._crit_edge.i

bb.x:                                             ; preds = %unicode_get_cc.exit55.i
  %i.fv = getelementptr i8, ptr %i.dc, i64 4
  store i32 %i.dd, ptr %i.fv, align 4, !tbaa !14
  %indvars.iv.next82.i = add nsw i64 %indvars.iv81.i, -1
  %.not33.not.i = icmp sgt i64 %indvars.iv81.i, %i.z
  br i1 %.not33.not.i, label %.lr.ph.i, label %unicode_get_cc.exit55._crit_edge.i, !llvm.loop !56

unicode_get_cc.exit55._crit_edge.i:               ; preds = %unicode_get_cc.exit55.i, %bb.x, %.preheader.i
  %.pre-phi.i = phi i64 [ %i.ah, %.preheader.i ], [ %i.ag, %bb.x ], [ %indvars.iv81.i, %unicode_get_cc.exit55.i ]
  %i.fw = getelementptr [4 x i8], ptr %i.t, i64 %.pre-phi.i
  %i.fx = getelementptr i8, ptr %i.fw, i64 4
  store i32 %i.aj, ptr %i.fx, align 4, !tbaa !14
  %indvars.iv.next85.i = add nsw i64 %indvars.iv84.i, 1 ; 2 uses
  %indvars.iv.next.i = add i32 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i64 %indvars.iv.next85.i, %i.y
  br i1 %exitcond.not.i, label %unicode_get_cc.exit.thread.i, label %.lr.ph68.i, !llvm.loop !57

unicode_get_cc.exit.thread.loopexit.split.loop.exit.i: ; preds = %bb.e
  %i.fy = trunc nsw i64 %indvars.iv84.i to i32
  br label %unicode_get_cc.exit.thread.i

unicode_get_cc.exit.thread.loopexit.split.loop.exit105.i: ; preds = %bb.k
  %i.fz = trunc nsw i64 %indvars.iv84.i to i32
  br label %unicode_get_cc.exit.thread.i

unicode_get_cc.exit.thread.loopexit.split.loop.exit107.i: ; preds = %get_index_pos.exit.i.i
  %i.ga = trunc nsw i64 %indvars.iv84.i to i32
  br label %unicode_get_cc.exit.thread.i

unicode_get_cc.exit.thread.loopexit.split.loop.exit111.i: ; preds = %unicode_get_cc.exit.i
  %i.gb = trunc nsw i64 %indvars.iv84.i to i32
  br label %unicode_get_cc.exit.thread.i

unicode_get_cc.exit.thread.i:                     ; preds = %unicode_get_cc.exit55._crit_edge.i, %unicode_get_cc.exit.thread.loopexit.split.loop.exit111.i, %unicode_get_cc.exit.thread.loopexit.split.loop.exit107.i, %unicode_get_cc.exit.thread.loopexit.split.loop.exit105.i, %unicode_get_cc.exit.thread.loopexit.split.loop.exit.i, %.preheader57.i, %.lr.ph78.i
  %.1.i = phi i32 [ %.03076.i, %.lr.ph78.i ], [ %.02965.i, %.preheader57.i ], [ %i.gb, %unicode_get_cc.exit.thread.loopexit.split.loop.exit111.i ], [ %i.ga, %unicode_get_cc.exit.thread.loopexit.split.loop.exit107.i ], [ %i.fz, %unicode_get_cc.exit.thread.loopexit.split.loop.exit105.i ], [ %i.fy, %unicode_get_cc.exit.thread.loopexit.split.loop.exit.i ], [ %i.w, %unicode_get_cc.exit55._crit_edge.i ]
  %i.gc = add nsw i32 %.1.i, 1                    ; 2 uses
  %i.gd = icmp slt i32 %i.gc, %i.w
  br i1 %i.gd, label %.lr.ph78.i, label %sort_cc.exit, !llvm.loop !58

sort_cc.exit:                                     ; preds = %unicode_get_cc.exit.thread.i
  %7 = icmp eq i32 %i.w, 1
  %8 = trunc i32 %3 to i1
  %or.cond = or i1 %7, %8
  br i1 %or.cond, label %dbuf_claim.exit.thread, label %.lr.ph108

.lr.ph108:                                        ; preds = %sort_cc.exit
  %i.ge = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %wide.trip.count133 = and i64 %i.v, 2147483647
  br label %.peel.begin

.peel.begin:                                      ; preds = %.lr.ph108, %bb.am
  %indvars.iv130 = phi i64 [ 1, %.lr.ph108 ], [ %indvars.iv.next131, %bb.am ] ; 2 uses
  %.0107 = phi i32 [ 1, %.lr.ph108 ], [ %.1, %bb.am ] ; 5 uses
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv130
  %i.gg = load i32, ptr %i.gf, align 4, !tbaa !14 ; 6 uses
  %i.gh = tail call fastcc i32 @unicode_get_cc(i32 noundef %i.gg)
  %i.gi = zext i32 %.0107 to i64                  ; 2 uses
  %i.gj = add nsw i64 %i.gi, -1                   ; 3 uses
  %i.gk = icmp sgt i32 %.0107, 0
  br i1 %i.gk, label %bb.y, label %.critedge

bb.y:                                             ; preds = %.peel.begin
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.gj
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !14 ; 2 uses
  %i.gn = tail call fastcc i32 @unicode_get_cc(i32 noundef %i.gm) ; 2 uses
  %i.go = icmp eq i32 %i.gn, 0
  br i1 %i.go, label %.loopexit129, label %bb.z

bb.z:                                             ; preds = %bb.y
  %.not72.peel = icmp slt i32 %i.gn, %i.gh
  %i.gp = trunc nuw i64 %i.gj to i32
  %i.gq = icmp sgt i32 %i.gp, 0
  %or.cond187 = select i1 %.not72.peel, i1 %i.gq, i1 false
  br i1 %or.cond187, label %.lr.ph185, label %.critedge

.lr.ph185:                                        ; preds = %bb.z
  %i.gr = add nsw i64 %i.gi, -2
  br label %bb.aa

.peel.next:                                       ; preds = %bb.ab
  %i.gs = add nsw i64 %i.gv, -1
  %i.gt = trunc nuw i64 %i.gv to i32
  %i.gu = icmp sgt i32 %i.gt, 0
  br i1 %i.gu, label %bb.aa, label %.critedge, !llvm.loop !59

bb.aa:                                            ; preds = %.lr.ph185, %.peel.next
  %i.gv = phi i64 [ %i.gr, %.lr.ph185 ], [ %i.gs, %.peel.next ] ; 4 uses
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.gv
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !14 ; 2 uses
  %i.gy = tail call fastcc i32 @unicode_get_cc(i32 noundef %i.gx) ; 2 uses
  %i.gz = icmp eq i32 %i.gy, 0
  br i1 %i.gz, label %.loopexit129, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %.not72 = icmp slt i32 %i.gy, 256
  br i1 %.not72, label %.peel.next, label %..critedge.loopexit_crit_edge, !llvm.loop !59

.loopexit129:                                     ; preds = %bb.aa, %bb.y
  %.lcssa110 = phi i64 [ %i.gj, %bb.y ], [ %i.gv, %bb.aa ]
  %.lcssa = phi i32 [ %i.gm, %bb.y ], [ %i.gx, %bb.aa ] ; 6 uses
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %.lcssa110
  %i.hb = add i32 %.lcssa, -4352
  %or.cond.i = icmp ult i32 %i.hb, 19
  %i.hc = add i32 %i.gg, -4449
  %i.hd = icmp ult i32 %i.hc, 21
  %or.cond5.i = and i1 %i.hd, %or.cond.i
  br i1 %or.cond5.i, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %.loopexit129
  %i.he = mul nuw nsw i32 %.lcssa, 588
  %i.hf = mul nuw nsw i32 %i.gg, 28
  %i.hg = add nuw nsw i32 %i.hf, -2639516
  %i.hh = add nsw i32 %i.hg, %i.he
  br label %compose_pair.exit.thread

bb.ad:                                            ; preds = %.loopexit129
  %i.hi = add i32 %.lcssa, -44032                 ; 2 uses
  %or.cond7.i = icmp ult i32 %i.hi, 11172
  br i1 %or.cond7.i, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  %.lhs.trunc.i = trunc nuw nsw i32 %i.hi to i16
  %i.hj = urem i16 %.lhs.trunc.i, 28
  %i.hk = icmp eq i16 %i.hj, 0
  %i.hl = add i32 %i.gg, -4519                    ; 2 uses
  %i.hm = icmp ult i32 %i.hl, 28
  %or.cond11.i = and i1 %i.hm, %i.hk
  br i1 %or.cond11.i, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.hn = add nuw nsw i32 %.lcssa, %i.hl
  br label %compose_pair.exit.thread

bb.ag:                                            ; preds = %bb.ae, %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  br label %bb.ah

bb.ah:                                            ; preds = %bb.al, %bb.ag
  %.02734.i.i = phi i32 [ 964, %bb.ag ], [ %.1.i.i77, %bb.al ] ; 2 uses
  %.02833.i.i = phi i32 [ 0, %bb.ag ], [ %.129.i.i, %bb.al ] ; 2 uses
  %i.ho = add nuw nsw i32 %.02833.i.i, %.02734.i.i
  %i.hp = lshr i32 %i.ho, 1                       ; 3 uses
  %i.hq = zext nneg i32 %i.hp to i64
  %i.hr = getelementptr inbounds nuw [2 x i8], ptr @unicode_comp_table, i64 %i.hq
  %i.hs = load i16, ptr %i.hr, align 2, !tbaa !18
  %i.ht = zext i16 %i.hs to i32                   ; 2 uses
  %i.hu = lshr i32 %i.ht, 6                       ; 2 uses
  %i.hv = and i32 %i.ht, 63
  %i.hw = zext nneg i32 %i.hu to i64
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr @unicode_decomp_table1, i64 %i.hw
  %i.hy = load i32, ptr %i.hx, align 4, !tbaa !14 ; 3 uses
  %i.hz = lshr i32 %i.hy, 14                      ; 2 uses
  %i.ia = lshr i32 %i.hy, 7
  %i.ib = and i32 %i.ia, 127
  %i.ic = lshr i32 %i.hy, 1
  %i.id = and i32 %i.ic, 63
  %i.ie = add nuw nsw i32 %i.hz, %i.hv            ; 3 uses
  %i.if = call fastcc i32 @unicode_decomp_entry(ptr noundef %i.a, i32 noundef %i.ie, i32 noundef %i.hu, i32 noundef %i.hz, i32 noundef %i.ib, i32 noundef %i.id) ; 0 uses
  %i.ig = load i32, ptr %i.a, align 4, !tbaa !14  ; 2 uses
  %i.ih = sub i32 %.lcssa, %i.ig
  %i.ii = icmp eq i32 %.lcssa, %i.ig
  %i.ij = load i32, ptr %i.ge, align 4
  %i.ik = sub i32 %i.gg, %i.ij
  %.0.i.i76 = select i1 %i.ii, i32 %i.ik, i32 %i.ih ; 2 uses
  %i.il = icmp slt i32 %.0.i.i76, 0
  br i1 %i.il, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.im = add nsw i32 %i.hp, -1
  br label %bb.al

bb.aj:                                            ; preds = %bb.ah
  %.not32.i.i = icmp eq i32 %.0.i.i76, 0
  br i1 %.not32.i.i, label %compose_pair.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.in = add nuw nsw i32 %i.hp, 1
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.ai
  %.129.i.i = phi i32 [ %.02833.i.i, %bb.ai ], [ %i.in, %bb.ak ] ; 2 uses
  %.1.i.i77 = phi i32 [ %i.im, %bb.ai ], [ %.02734.i.i, %bb.ak ] ; 2 uses
  %.not.i.i = icmp sgt i32 %.129.i.i, %.1.i.i77
  br i1 %.not.i.i, label %compose_pair.exit.thread87, label %bb.ah, !llvm.loop !60

compose_pair.exit.thread87:                       ; preds = %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %.critedge

compose_pair.exit:                                ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %.not73 = icmp eq i32 %i.ie, 0
  br i1 %.not73, label %.critedge, label %compose_pair.exit.thread

compose_pair.exit.thread:                         ; preds = %bb.af, %bb.ac, %compose_pair.exit
  %.0.i7986 = phi i32 [ %i.ie, %compose_pair.exit ], [ %i.hn, %bb.af ], [ %i.hh, %bb.ac ]
  store i32 %.0.i7986, ptr %i.ha, align 4, !tbaa !14
  br label %bb.am

..critedge.loopexit_crit_edge:                    ; preds = %bb.ab
  br label %.critedge, !llvm.loop !59

.critedge:                                        ; preds = %.peel.next, %..critedge.loopexit_crit_edge, %.peel.begin, %bb.z, %compose_pair.exit.thread87, %compose_pair.exit
  %i.io = add nsw i32 %.0107, 1
  %i.ip = sext i32 %.0107 to i64
  %i.iq = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.ip
  store i32 %i.gg, ptr %i.iq, align 4, !tbaa !14
  br label %bb.am

bb.am:                                            ; preds = %.critedge, %compose_pair.exit.thread
  %.1 = phi i32 [ %.0107, %compose_pair.exit.thread ], [ %i.io, %.critedge ] ; 2 uses
  %indvars.iv.next131 = add nuw nsw i64 %indvars.iv130, 1 ; 2 uses
  %exitcond134.not = icmp eq i64 %indvars.iv.next131, %wide.trip.count133
  br i1 %exitcond134.not, label %dbuf_claim.exit.thread, label %.peel.begin, !llvm.loop !61

dbuf_claim.exit.thread:                           ; preds = %bb.am, %sort_cc.exit, %bb.d, %.loopexit, %bb.b, %._crit_edge
  %.sink = phi ptr [ %i.t, %sort_cc.exit ], [ null, %.loopexit ], [ %i.p, %._crit_edge ], [ null, %bb.b ], [ %i.t, %bb.d ], [ %i.t, %bb.am ]
  %.066 = phi i32 [ %i.w, %sort_cc.exit ], [ -1, %.loopexit ], [ %2, %._crit_edge ], [ -1, %bb.b ], [ %i.w, %bb.d ], [ %.1, %bb.am ]
  store ptr %.sink, ptr %0, align 8, !tbaa !28
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  ret i32 %.066
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @dbuf_claim(ptr nofree noundef nonnull captures(none) %0, i64 noundef range(i64 -8589934592, 8589934589) %1) unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !42
  %i.c = add i64 %i.b, %1                         ; 4 uses
  %i.d = icmp ult i64 %i.c, %1
  br i1 %i.d, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !38   ; 4 uses
  %i.g = icmp ugt i64 %i.c, %i.f
  br i1 %i.g, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = load i8, ptr %i.h, align 8, !tbaa !39, !range !40, !noundef !41
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.g, label %bb.d

end_hunk_0
begin_hunk_1_@cr_regexp_canonicalize:bb.a
  %.265.lcssa = phi i32 [ %.16499, %.preheader ], [ %i.cn, %.lr.ph ] ; 2 uses
  %.262.lcssa = phi i32 [ %.161100, %.preheader ], [ %i.cp, %.lr.ph ] ; 2 uses
  %.258.lcssa = phi i32 [ %.157101, %.preheader ], [ %i.cj, %.lr.ph ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  br i1 %1, label %bb.g, label %bb.l

bb.g:                                             ; preds = %._crit_edge
  %i.cs = call fastcc i32 @lre_case_conv_entry(ptr noundef nonnull %i.a, i32 noundef range(i32 0, 131198) %.055102, i32 noundef 2, i32 noundef %.258.lcssa, i32 noundef %.268.lcssa)
  %i.ct = icmp eq i32 %i.cs, 1
  br i1 %i.ct, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.cu = load i32, ptr %i.a, align 4, !tbaa !14
  br label %lre_case_folding_entry.exit

bb.i:                                             ; preds = %bb.g
  switch i32 %.055102, label %bb.k [
    i32 64262, label %lre_case_folding_entry.exit
    i32 8147, label %bb.j
    i32 8163, label %switch.edge.i
  ]

bb.j:                                             ; preds = %bb.i
  br label %lre_case_folding_entry.exit

switch.edge.i:                                    ; preds = %bb.i
  br label %lre_case_folding_entry.exit

bb.k:                                             ; preds = %bb.i
  br label %lre_case_folding_entry.exit

bb.l:                                             ; preds = %._crit_edge
  %i.cv = icmp samesign ult i32 %.055102, 128
  br i1 %i.cv, label %bb.m, label %bb.n, !prof !71

bb.m:                                             ; preds = %bb.l
  %i.cw = add nsw i32 %.055102, -97
  %or.cond.i = icmp ult i32 %i.cw, 26
  %i.cx = add nsw i32 %.055102, -32
  %spec.select.i = select i1 %or.cond.i, i32 %i.cx, i32 %.055102
  br label %lre_case_folding_entry.exit

bb.n:                                             ; preds = %bb.l
  %i.cy = call fastcc i32 @lre_case_conv_entry(ptr noundef nonnull %i.a, i32 noundef range(i32 0, 131198) %.055102, i32 noundef 0, i32 noundef %.258.lcssa, i32 noundef %.268.lcssa)
  %i.cz = icmp eq i32 %i.cy, 1
  %i.da = load i32, ptr %i.a, align 4             ; 2 uses
  %i.db = icmp ugt i32 %i.da, 127
  %or.cond4.i = select i1 %i.cz, i1 %i.db, i1 false
  %spec.select23.i = select i1 %or.cond4.i, i32 %i.da, i32 %.055102
  br label %lre_case_folding_entry.exit

lre_case_folding_entry.exit:                      ; preds = %bb.h, %bb.i, %bb.j, %switch.edge.i, %bb.k, %bb.m, %bb.n
  %.0.i82 = phi i32 [ %i.cu, %bb.h ], [ 64261, %bb.i ], [ 912, %bb.j ], [ %.055102, %bb.k ], [ 944, %switch.edge.i ], [ %spec.select23.i, %bb.n ], [ %spec.select.i, %bb.m ] ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.dc = icmp eq i32 %.153103, -1
  br i1 %i.dc, label %cr_add_interval.exit, label %bb.o

bb.o:                                             ; preds = %lre_case_folding_entry.exit
  %i.dd = icmp eq i32 %.1104, %.0.i82
  br i1 %i.dd, label %cr_add_interval.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.de = add nsw i32 %i.cg, 2                    ; 3 uses
  %i.df = icmp sgt i32 %i.de, %..i.i.i87116
  br i1 %i.df, label %bb.q, label %._crit_edge.i83

bb.q:                                             ; preds = %bb.p
  %i.dg = mul nsw i32 %..i.i.i87116, 3
  %i.dh = sdiv i32 %i.dg, 2
  %..i.i.i87 = tail call range(i32 -1073741824, -2147483648) i32 @llvm.smax.i32(i32 %i.de, i32 range(i32 -1073741824, 1073741824) %i.dh) ; 2 uses
  %i.di = sext i32 %..i.i.i87 to i64
  %i.dj = shl nsw i64 %i.di, 2
  %i.dk = tail call ptr %i.g(ptr noundef %i.c, ptr noundef %.pre.i85119, i64 noundef %i.dj) #21, !inline_history !44 ; 2 uses
  %.not.i.i88 = icmp eq ptr %i.dk, null
  br i1 %.not.i.i88, label %cr_add_interval.exit, label %._crit_edge.i83

._crit_edge.i83:                                  ; preds = %bb.q, %bb.p
  %.pre.i85117 = phi ptr [ %.pre.i85119, %bb.p ], [ %i.dk, %bb.q ] ; 2 uses
  %..i.i.i87114 = phi i32 [ %..i.i.i87116, %bb.p ], [ %..i.i.i87, %bb.q ]
  %i.dl = sext i32 %i.cg to i64
  %i.dm = getelementptr [4 x i8], ptr %.pre.i85117, i64 %i.dl ; 2 uses
  store i32 %.153103, ptr %i.dm, align 4, !tbaa !14
  %i.dn = getelementptr i8, ptr %i.dm, i64 4
  store i32 %.1104, ptr %i.dn, align 4, !tbaa !14
  br label %cr_add_interval.exit

cr_add_interval.exit:                             ; preds = %._crit_edge.i83, %bb.q, %bb.o, %lre_case_folding_entry.exit
  %.pre.i85118 = phi ptr [ %.pre.i85119, %bb.o ], [ %.pre.i85119, %lre_case_folding_entry.exit ], [ %.pre.i85119, %bb.q ], [ %.pre.i85117, %._crit_edge.i83 ] ; 3 uses
  %..i.i.i87115 = phi i32 [ %..i.i.i87116, %bb.o ], [ %..i.i.i87116, %lre_case_folding_entry.exit ], [ %..i.i.i87116, %bb.q ], [ %..i.i.i87114, %._crit_edge.i83 ] ; 3 uses
  %i.do = phi i32 [ %i.cg, %bb.o ], [ %i.cg, %lre_case_folding_entry.exit ], [ %i.cg, %bb.q ], [ %i.de, %._crit_edge.i83 ] ; 2 uses
  %.254 = phi i32 [ %.153103, %bb.o ], [ %.0.i82, %lre_case_folding_entry.exit ], [ %.0.i82, %bb.q ], [ %.0.i82, %._crit_edge.i83 ] ; 2 uses
  %.2.in = phi i32 [ %.1104, %bb.o ], [ %.0.i82, %lre_case_folding_entry.exit ], [ %.0.i82, %bb.q ], [ %.0.i82, %._crit_edge.i83 ]
  %.2 = add i32 %.2.in, 1                         ; 2 uses
  %i.dp = add i32 %.055102, 1                     ; 2 uses
  %exitcond.not = icmp eq i32 %i.dp, %i.ce
  br i1 %exitcond.not, label %._crit_edge105, label %.preheader, !llvm.loop !69

._crit_edge105:                                   ; preds = %cr_add_interval.exit
  store i32 %..i.i.i87115, ptr %i.bw, align 4
  store ptr %.pre.i85118, ptr %.phi.trans.insert.i84, align 8
  %.pre = load i32, ptr %2, align 8, !tbaa !26
  br label %bb.r

bb.r:                                             ; preds = %._crit_edge105, %bb.f
  %i.dq = phi i32 [ %.pre, %._crit_edge105 ], [ %i.bx, %bb.f ] ; 2 uses
  %.phi.trans.insert.i84.promoted141 = phi ptr [ %.pre.i85118, %._crit_edge105 ], [ %.phi.trans.insert.i84.promoted, %bb.f ]
  %.promoted113139 = phi i32 [ %..i.i.i87115, %._crit_edge105 ], [ %.promoted113, %bb.f ]
  %.lcssa = phi i32 [ %i.do, %._crit_edge105 ], [ %.promoted, %bb.f ] ; 2 uses
  %.167.lcssa = phi i32 [ %.268.lcssa, %._crit_edge105 ], [ %.066120, %bb.f ]
  %.164.lcssa = phi i32 [ %.265.lcssa, %._crit_edge105 ], [ %.063121, %bb.f ]
  %.161.lcssa = phi i32 [ %.262.lcssa, %._crit_edge105 ], [ %.060122, %bb.f ]
  %.157.lcssa = phi i32 [ %.258.lcssa, %._crit_edge105 ], [ %.056124, %bb.f ]
  %.153.lcssa = phi i32 [ %.254, %._crit_edge105 ], [ %.052125, %bb.f ] ; 3 uses
  %.1.lcssa = phi i32 [ %.2, %._crit_edge105 ], [ %.0126, %bb.f ] ; 2 uses
  store i32 %.lcssa, ptr %4, align 8
  %i.dr = add i32 %.059123, 2                     ; 2 uses
  %i.ds = icmp ult i32 %i.dr, %i.dq
  br i1 %i.ds, label %bb.f, label %._crit_edge128, !llvm.loop !70

._crit_edge128:                                   ; preds = %bb.r
  %.not74 = icmp eq i32 %.153.lcssa, -1
  br i1 %.not74, label %._crit_edge128.thread, label %bb.s

bb.s:                                             ; preds = %._crit_edge128
  %i.dt = call fastcc i32 @cr_add_interval(ptr noundef nonnull %4, i32 noundef %.153.lcssa, i32 noundef %.1.lcssa)
  %.not75 = icmp eq i32 %i.dt, 0
  br i1 %.not75, label %._crit_edge128.thread, label %.cr_invert.exit_crit_edge143

.cr_invert.exit_crit_edge143:                     ; preds = %bb.s
  %.phi.trans.insert144 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.pre145 = load ptr, ptr %.phi.trans.insert144, align 8, !tbaa !24
  br label %cr_invert.exit

._crit_edge128.thread:                            ; preds = %.preheader91, %bb.s, %._crit_edge128
  call fastcc void @cr_sort_and_remove_overlap(ptr noundef %4)
  store i32 0, ptr %0, align 8, !tbaa !26
  %i.du = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !24 ; 3 uses
  %i.dw = load i32, ptr %4, align 8, !tbaa !26
  %i.dx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !24 ; 2 uses
  %i.dz = load i32, ptr %5, align 8, !tbaa !26
  %i.ea = tail call i32 @cr_op(ptr noundef nonnull %0, ptr noundef %i.dv, i32 noundef %i.dw, ptr noundef %i.dy, i32 noundef %i.dz, i32 noundef 0)
  %.not76 = icmp eq i32 %i.ea, 0
  br i1 %.not76, label %bb.t, label %cr_invert.exit

bb.t:                                             ; preds = %._crit_edge128.thread
  %i.eb = load ptr, ptr %i.j, align 8, !tbaa !23
  %i.ec = load ptr, ptr %i.i, align 8, !tbaa !22
  %i.ed = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !24
  %i.ef = tail call ptr %i.eb(ptr noundef %i.ec, ptr noundef %i.ee, i64 noundef 0) #21, !inline_history !30 ; 0 uses
  %i.eg = load ptr, ptr %i.h, align 8, !tbaa !23
  %i.eh = load ptr, ptr %i.f, align 8, !tbaa !22
  %i.ei = tail call ptr %i.eg(ptr noundef %i.eh, ptr noundef nonnull %i.ai, i64 noundef 0) #21, !inline_history !30 ; 0 uses
  %i.ej = load ptr, ptr %i.l, align 8, !tbaa !23
  %i.ek = load ptr, ptr %i.k, align 8, !tbaa !22
  %i.el = tail call ptr %i.ej(ptr noundef %i.ek, ptr noundef %i.dv, i64 noundef 0) #21, !inline_history !30 ; 0 uses
  %i.em = load ptr, ptr %i.n, align 8, !tbaa !23
  %i.en = load ptr, ptr %i.m, align 8, !tbaa !22
  %i.eo = tail call ptr %i.em(ptr noundef %i.en, ptr noundef %i.dy, i64 noundef 0) #21, !inline_history !30 ; 0 uses
  br label %bb.u

cr_invert.exit:                                   ; preds = %bb.a, %.cr_invert.exit_crit_edge143, %bb.d, %._crit_edge128.thread, %.loopexit, %bb.b
  %i.ep = phi ptr [ null, %bb.b ], [ null, %bb.d ], [ %i.dv, %._crit_edge128.thread ], [ %.pre145, %.cr_invert.exit_crit_edge143 ], [ null, %.loopexit ], [ null, %bb.a ]
  %i.eq = phi ptr [ %i.r, %bb.b ], [ %i.r, %bb.d ], [ %i.ai, %._crit_edge128.thread ], [ %i.ai, %.cr_invert.exit_crit_edge143 ], [ %i.ai, %.loopexit ], [ %i.r, %bb.a ]
  %i.er = load ptr, ptr %i.j, align 8, !tbaa !23
  %i.es = load ptr, ptr %i.i, align 8, !tbaa !22
  %i.et = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !24
  %i.ev = tail call ptr %i.er(ptr noundef %i.es, ptr noundef %i.eu, i64 noundef 0) #21, !inline_history !30 ; 0 uses
  %i.ew = load ptr, ptr %i.h, align 8, !tbaa !23
  %i.ex = load ptr, ptr %i.f, align 8, !tbaa !22
  %i.ey = tail call ptr %i.ew(ptr noundef %i.ex, ptr noundef %i.eq, i64 noundef 0) #21, !inline_history !30 ; 0 uses
  %i.ez = load ptr, ptr %i.l, align 8, !tbaa !23
  %i.fa = load ptr, ptr %i.k, align 8, !tbaa !22
  %i.fb = tail call ptr %i.ez(ptr noundef %i.fa, ptr noundef %i.ep, i64 noundef 0) #21, !inline_history !30 ; 0 uses
  %i.fc = load ptr, ptr %i.n, align 8, !tbaa !23
  %i.fd = load ptr, ptr %i.m, align 8, !tbaa !22
  %i.fe = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !24
  %i.fg = tail call ptr %i.fc(ptr noundef %i.fd, ptr noundef %i.ff, i64 noundef 0) #21, !inline_history !30 ; 0 uses
  br label %bb.u

bb.u:                                             ; preds = %cr_invert.exit, %bb.t
  %.069 = phi i32 [ -1, %cr_invert.exit ], [ 0, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  ret i32 %.069
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @unicode_case1(ptr nofree noundef captures(none) %0, i32 noundef %1) unnamed_addr #7 {
bb.a:
  %i.a = icmp eq i32 %1, 0
  br i1 %i.a, label %cr_add_interval.exit, label %.preheader109.preheader

.preheader109.preheader:                          ; preds = %bb.a
  %2 = trunc i32 %1 to i1                         ; 4 uses
  %spec.select = select i1 %2, i32 11253, i32 0   ; 2 uses
  %i.b = and i32 %1, 2
  %.not59.1 = icmp eq i32 %i.b, 0
  %i.c = or i32 %spec.select, 5242
  %.147.1 = select i1 %.not59.1, i32 %spec.select, i32 %i.c ; 2 uses
  %i.d = and i32 %1, 4
  %.not59.2 = icmp eq i32 %i.d, 0
  %i.e = or i32 %.147.1, 15868
  %.147.2 = select i1 %.not59.2, i32 %.147.1, i32 %i.e
  %i.f = and i32 %1, 6
  %.not51 = icmp ne i32 %i.f, 0
  %or.cond60.not = and i1 %.not51, %2             ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 10 uses
  %.phi.trans.insert.i63 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 13 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %3 = and i32 %1, 1
  br label %bb.b

bb.b:                                             ; preds = %.preheader109.preheader, %.loopexit
  %indvars.iv = phi i64 [ 0, %.preheader109.preheader ], [ %indvars.iv.next, %.loopexit ] ; 2 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr @case_conv_table1, i64 %indvars.iv
  %i.k = load i32, ptr %i.j, align 4, !tbaa !14   ; 3 uses
  %i.l = lshr i32 %i.k, 4
  %i.m = and i32 %i.l, 15                         ; 2 uses
  %i.n = lshr i32 %i.k, 15                        ; 8 uses
  %i.o = lshr i32 %i.k, 8
  %i.p = and i32 %i.o, 127                        ; 3 uses
  %4 = lshr i32 %.147.2, %i.m
  %5 = trunc i32 %4 to i1
  br i1 %5, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  switch i32 %i.m, label %bb.p [
    i32 4, label %bb.d
    i32 5, label %bb.h
  ]

bb.d:                                             ; preds = %bb.c
  br i1 %or.cond60.not, label %bb.p, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = add nuw nsw i32 %i.n, %3
  %.not114 = icmp eq i32 %i.p, 0
  br i1 %.not114, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e, %bb.g
  %.1112 = phi i32 [ %i.ao, %bb.g ], [ 0, %bb.e ] ; 2 uses
  %i.r = add nuw nsw i32 %i.q, %.1112             ; 2 uses
  %i.s = add nuw nsw i32 %i.r, 1
  %i.t = load i32, ptr %0, align 8, !tbaa !26     ; 2 uses
  %i.u = add nsw i32 %i.t, 2                      ; 2 uses
  %i.v = load i32, ptr %i.g, align 4, !tbaa !25   ; 2 uses
  %i.w = icmp sgt i32 %i.u, %i.v
  br i1 %i.w, label %bb.f, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph
  %.pre.i = load ptr, ptr %.phi.trans.insert.i63, align 8, !tbaa !24
  br label %bb.g

bb.f:                                             ; preds = %.lr.ph
  %i.x = mul nsw i32 %i.v, 3
  %i.y = sdiv i32 %i.x, 2
  %..i.i.i = tail call range(i32 -1073741824, -2147483648) i32 @llvm.smax.i32(i32 %i.u, i32 range(i32 -1073741824, 1073741824) %i.y) ; 2 uses
  %i.z = load ptr, ptr %i.h, align 8, !tbaa !23
  %i.aa = load ptr, ptr %i.i, align 8, !tbaa !22
  %i.ab = load ptr, ptr %.phi.trans.insert.i63, align 8, !tbaa !24
  %i.ac = sext i32 %..i.i.i to i64
  %i.ad = shl nsw i64 %i.ac, 2
  %i.ae = tail call ptr %i.z(ptr noundef %i.aa, ptr noundef %i.ab, i64 noundef %i.ad) #21, !inline_history !44 ; 3 uses
  %.not.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i, label %cr_add_interval.exit, label %cr_realloc.exit.thread.i

cr_realloc.exit.thread.i:                         ; preds = %bb.f
  store ptr %i.ae, ptr %.phi.trans.insert.i63, align 8, !tbaa !24
  store i32 %..i.i.i, ptr %i.g, align 4, !tbaa !25
  %.pre13.i = load i32, ptr %0, align 8, !tbaa !26
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge.i, %cr_realloc.exit.thread.i
  %i.af = phi i32 [ %i.t, %._crit_edge.i ], [ %.pre13.i, %cr_realloc.exit.thread.i ] ; 2 uses
  %i.ag = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.ae, %cr_realloc.exit.thread.i ] ; 2 uses
  %i.ah = add nsw i32 %i.af, 1
  store i32 %i.ah, ptr %0, align 8, !tbaa !26
  %i.ai = sext i32 %i.af to i64
  %i.aj = getelementptr inbounds [4 x i8], ptr %i.ag, i64 %i.ai
  store i32 %i.r, ptr %i.aj, align 4, !tbaa !14
  %i.ak = load i32, ptr %0, align 8, !tbaa !26    ; 2 uses
  %i.al = add nsw i32 %i.ak, 1
  store i32 %i.al, ptr %0, align 8, !tbaa !26
  %i.am = sext i32 %i.ak to i64
  %i.an = getelementptr inbounds [4 x i8], ptr %i.ag, i64 %i.am
  store i32 %i.s, ptr %i.an, align 4, !tbaa !14
  %i.ao = add nuw nsw i32 %.1112, 2               ; 2 uses
  %i.ap = icmp samesign ult i32 %i.ao, %i.p
  br i1 %i.ap, label %.lr.ph, label %.loopexit, !llvm.loop !72

bb.h:                                             ; preds = %bb.c
  br i1 %or.cond60.not, label %bb.p, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aq = add nuw nsw i32 %i.n, 1                 ; 2 uses
  br i1 %2, label %._crit_edge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ar = load i32, ptr %0, align 8, !tbaa !26    ; 2 uses
  %i.as = add nsw i32 %i.ar, 2                    ; 2 uses
  %i.at = load i32, ptr %i.g, align 4, !tbaa !25  ; 2 uses
  %i.au = icmp sgt i32 %i.as, %i.at
  br i1 %i.au, label %bb.k, label %._crit_edge.i62

._crit_edge.i62:                                  ; preds = %bb.j
  %.pre.i64 = load ptr, ptr %.phi.trans.insert.i63, align 8, !tbaa !24
  br label %cr_add_interval.exit70.thread

bb.k:                                             ; preds = %bb.j
  %i.av = mul nsw i32 %i.at, 3
  %i.aw = sdiv i32 %i.av, 2
  %..i.i.i66 = tail call range(i32 -1073741824, -2147483648) i32 @llvm.smax.i32(i32 %i.as, i32 range(i32 -1073741824, 1073741824) %i.aw) ; 2 uses
  %i.ax = load ptr, ptr %i.h, align 8, !tbaa !23
  %i.ay = load ptr, ptr %i.i, align 8, !tbaa !22
  %i.az = load ptr, ptr %.phi.trans.insert.i63, align 8, !tbaa !24
  %i.ba = sext i32 %..i.i.i66 to i64
  %i.bb = shl nsw i64 %i.ba, 2
  %i.bc = tail call ptr %i.ax(ptr noundef %i.ay, ptr noundef %i.az, i64 noundef %i.bb) #21, !inline_history !44 ; 3 uses
  %.not.i.i67 = icmp eq ptr %i.bc, null
  br i1 %.not.i.i67, label %cr_add_interval.exit, label %cr_realloc.exit.thread.i68

cr_realloc.exit.thread.i68:                       ; preds = %bb.k
  store ptr %i.bc, ptr %.phi.trans.insert.i63, align 8, !tbaa !24
  store i32 %..i.i.i66, ptr %i.g, align 4, !tbaa !25
  %.pre13.i69 = load i32, ptr %0, align 8, !tbaa !26
  br label %cr_add_interval.exit70.thread

cr_add_interval.exit70.thread:                    ; preds = %._crit_edge.i62, %cr_realloc.exit.thread.i68
  %i.bd = phi i32 [ %i.ar, %._crit_edge.i62 ], [ %.pre13.i69, %cr_realloc.exit.thread.i68 ] ; 2 uses
  %i.be = phi ptr [ %.pre.i64, %._crit_edge.i62 ], [ %i.bc, %cr_realloc.exit.thread.i68 ] ; 2 uses
  %i.bf = add nsw i32 %i.bd, 1
  store i32 %i.bf, ptr %0, align 8, !tbaa !26
  %i.bg = sext i32 %i.bd to i64
  %i.bh = getelementptr inbounds [4 x i8], ptr %i.be, i64 %i.bg
  store i32 %i.n, ptr %i.bh, align 4, !tbaa !14
  %i.bi = load i32, ptr %0, align 8, !tbaa !26    ; 2 uses
  %i.bj = add nsw i32 %i.bi, 1
  store i32 %i.bj, ptr %0, align 8, !tbaa !26
  %i.bk = sext i32 %i.bi to i64
  %i.bl = getelementptr inbounds [4 x i8], ptr %i.be, i64 %i.bk
  store i32 %i.aq, ptr %i.bl, align 4, !tbaa !14
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.i, %cr_add_interval.exit70.thread
  %i.bm = add nuw nsw i32 %i.n, 2                 ; 3 uses
  %i.bn = load i32, ptr %0, align 8, !tbaa !26    ; 2 uses
  %i.bo = add nsw i32 %i.bn, 2                    ; 2 uses
  %i.bp = load i32, ptr %i.g, align 4, !tbaa !25  ; 2 uses
  %i.bq = icmp sgt i32 %i.bo, %i.bp
  br i1 %i.bq, label %bb.l, label %._crit_edge.i71

._crit_edge.i71:                                  ; preds = %._crit_edge
  %.pre.i73 = load ptr, ptr %.phi.trans.insert.i63, align 8, !tbaa !24
  br label %bb.m

bb.l:                                             ; preds = %._crit_edge
  %i.br = mul nsw i32 %i.bp, 3
  %i.bs = sdiv i32 %i.br, 2
  %..i.i.i75 = tail call range(i32 -1073741824, -2147483648) i32 @llvm.smax.i32(i32 %i.bo, i32 range(i32 -1073741824, 1073741824) %i.bs) ; 2 uses
  %i.bt = load ptr, ptr %i.h, align 8, !tbaa !23
  %i.bu = load ptr, ptr %i.i, align 8, !tbaa !22
  %i.bv = load ptr, ptr %.phi.trans.insert.i63, align 8, !tbaa !24
  %i.bw = sext i32 %..i.i.i75 to i64
  %i.bx = shl nsw i64 %i.bw, 2
  %i.by = tail call ptr %i.bt(ptr noundef %i.bu, ptr noundef %i.bv, i64 noundef %i.bx) #21, !inline_history !44 ; 3 uses
  %.not.i.i76 = icmp eq ptr %i.by, null
  br i1 %.not.i.i76, label %cr_add_interval.exit, label %cr_realloc.exit.thread.i77

cr_realloc.exit.thread.i77:                       ; preds = %bb.l
  store ptr %i.by, ptr %.phi.trans.insert.i63, align 8, !tbaa !24
  store i32 %..i.i.i75, ptr %i.g, align 4, !tbaa !25
  %.pre13.i78 = load i32, ptr %0, align 8, !tbaa !26
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge.i71, %cr_realloc.exit.thread.i77
  %i.bz = phi i32 [ %i.bn, %._crit_edge.i71 ], [ %.pre13.i78, %cr_realloc.exit.thread.i77 ] ; 2 uses
  %i.ca = phi ptr [ %.pre.i73, %._crit_edge.i71 ], [ %i.by, %cr_realloc.exit.thread.i77 ] ; 4 uses
  %i.cb = add nsw i32 %i.bz, 1
  store i32 %i.cb, ptr %0, align 8, !tbaa !26
  %i.cc = sext i32 %i.bz to i64
  %i.cd = getelementptr inbounds [4 x i8], ptr %i.ca, i64 %i.cc
  store i32 %i.aq, ptr %i.cd, align 4, !tbaa !14
  %i.ce = load i32, ptr %0, align 8, !tbaa !26    ; 2 uses
  %i.cf = add nsw i32 %i.ce, 1
  store i32 %i.cf, ptr %0, align 8, !tbaa !26
  %i.cg = sext i32 %i.ce to i64
  %i.ch = getelementptr inbounds [4 x i8], ptr %i.ca, i64 %i.cg
  store i32 %i.bm, ptr %i.ch, align 4, !tbaa !14
  br i1 %2, label %bb.n, label %.loopexit

bb.n:                                             ; preds = %bb.m
  %i.ci = add nuw nsw i32 %i.n, 3                 ; 2 uses
  %i.cj = load i32, ptr %0, align 8, !tbaa !26    ; 2 uses
  %i.ck = add nsw i32 %i.cj, 2                    ; 2 uses
  %i.cl = load i32, ptr %i.g, align 4, !tbaa !25  ; 2 uses
  %i.cm = icmp sgt i32 %i.ck, %i.cl
  br i1 %i.cm, label %bb.o, label %.loopexit.sink.split

bb.o:                                             ; preds = %bb.n
  %i.cn = mul nsw i32 %i.cl, 3
  %i.co = sdiv i32 %i.cn, 2
  %..i.i.i84 = tail call range(i32 -1073741824, -2147483648) i32 @llvm.smax.i32(i32 %i.ck, i32 range(i32 -1073741824, 1073741824) %i.co) ; 2 uses
  %i.cp = load ptr, ptr %i.h, align 8, !tbaa !23
  %i.cq = load ptr, ptr %i.i, align 8, !tbaa !22
  %i.cr = sext i32 %..i.i.i84 to i64
  %i.cs = shl nsw i64 %i.cr, 2
  %i.ct = tail call ptr %i.cp(ptr noundef %i.cq, ptr noundef nonnull %i.ca, i64 noundef %i.cs) #21, !inline_history !44 ; 3 uses
  %.not.i.i85 = icmp eq ptr %i.ct, null
  br i1 %.not.i.i85, label %cr_add_interval.exit, label %cr_realloc.exit.thread.i86

cr_realloc.exit.thread.i86:                       ; preds = %bb.o
  store ptr %i.ct, ptr %.phi.trans.insert.i63, align 8, !tbaa !24
  store i32 %..i.i.i84, ptr %i.g, align 4, !tbaa !25
  %.pre13.i87 = load i32, ptr %0, align 8, !tbaa !26
  br label %.loopexit.sink.split

bb.p:                                             ; preds = %bb.h, %bb.d, %bb.c
  %i.cu = add nuw nsw i32 %i.p, %i.n              ; 2 uses
  %i.cv = load i32, ptr %0, align 8, !tbaa !26    ; 2 uses
  %i.cw = add nsw i32 %i.cv, 2                    ; 2 uses
  %i.cx = load i32, ptr %i.g, align 4, !tbaa !25  ; 2 uses
  %i.cy = icmp sgt i32 %i.cw, %i.cx
  br i1 %i.cy, label %bb.q, label %._crit_edge.i89

._crit_edge.i89:                                  ; preds = %bb.p
  %.pre.i91 = load ptr, ptr %.phi.trans.insert.i63, align 8, !tbaa !24
  br label %.loopexit.sink.split

bb.q:                                             ; preds = %bb.p
  %i.cz = mul nsw i32 %i.cx, 3
  %i.da = sdiv i32 %i.cz, 2
  %..i.i.i93 = tail call range(i32 -1073741824, -2147483648) i32 @llvm.smax.i32(i32 %i.cw, i32 range(i32 -1073741824, 1073741824) %i.da) ; 2 uses
  %i.db = load ptr, ptr %i.h, align 8, !tbaa !23
  %i.dc = load ptr, ptr %i.i, align 8, !tbaa !22
  %i.dd = load ptr, ptr %.phi.trans.insert.i63, align 8, !tbaa !24
  %i.de = sext i32 %..i.i.i93 to i64
  %i.df = shl nsw i64 %i.de, 2
  %i.dg = tail call ptr %i.db(ptr noundef %i.dc, ptr noundef %i.dd, i64 noundef %i.df) #21, !inline_history !44 ; 3 uses
  %.not.i.i94 = icmp eq ptr %i.dg, null
  br i1 %.not.i.i94, label %cr_add_interval.exit, label %cr_realloc.exit.thread.i95

cr_realloc.exit.thread.i95:                       ; preds = %bb.q
  store ptr %i.dg, ptr %.phi.trans.insert.i63, align 8, !tbaa !24
  store i32 %..i.i.i93, ptr %i.g, align 4, !tbaa !25
  %.pre13.i96 = load i32, ptr %0, align 8, !tbaa !26
  br label %.loopexit.sink.split

.loopexit.sink.split:                             ; preds = %cr_realloc.exit.thread.i95, %._crit_edge.i89, %cr_realloc.exit.thread.i86, %bb.n
  %.sink148 = phi i32 [ %i.cj, %bb.n ], [ %.pre13.i87, %cr_realloc.exit.thread.i86 ], [ %i.cv, %._crit_edge.i89 ], [ %.pre13.i96, %cr_realloc.exit.thread.i95 ] ; 2 uses
  %.sink144 = phi ptr [ %i.ca, %bb.n ], [ %i.ct, %cr_realloc.exit.thread.i86 ], [ %.pre.i91, %._crit_edge.i89 ], [ %i.dg, %cr_realloc.exit.thread.i95 ] ; 2 uses
  %.sink142 = phi i32 [ %i.bm, %bb.n ], [ %i.bm, %cr_realloc.exit.thread.i86 ], [ %i.n, %._crit_edge.i89 ], [ %i.n, %cr_realloc.exit.thread.i95 ]
  %.sink = phi i32 [ %i.ci, %bb.n ], [ %i.ci, %cr_realloc.exit.thread.i86 ], [ %i.cu, %._crit_edge.i89 ], [ %i.cu, %cr_realloc.exit.thread.i95 ]
  %i.dh = add nsw i32 %.sink148, 1
  store i32 %i.dh, ptr %0, align 8, !tbaa !26
  %i.di = sext i32 %.sink148 to i64
  %i.dj = getelementptr inbounds [4 x i8], ptr %.sink144, i64 %i.di
  store i32 %.sink142, ptr %i.dj, align 4, !tbaa !14
  %i.dk = load i32, ptr %0, align 8, !tbaa !26    ; 2 uses
  %i.dl = add nsw i32 %i.dk, 1
  store i32 %i.dl, ptr %0, align 8, !tbaa !26
  %i.dm = sext i32 %i.dk to i64
  %i.dn = getelementptr inbounds [4 x i8], ptr %.sink144, i64 %i.dm
  store i32 %.sink, ptr %i.dn, align 4, !tbaa !14
  br label %.loopexit

.loopexit:                                        ; preds = %bb.g, %.loopexit.sink.split, %bb.e, %bb.b, %bb.m
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 378
  br i1 %exitcond.not, label %cr_add_interval.exit, label %bb.b, !llvm.loop !4

cr_add_interval.exit:                             ; preds = %bb.q, %bb.o, %bb.l, %bb.k, %.loopexit, %bb.f, %bb.a
  %.048 = phi i32 [ 0, %bb.a ], [ -1, %bb.f ], [ 0, %.loopexit ], [ -1, %bb.k ], [ -1, %bb.q ], [ -1, %bb.l ], [ -1, %bb.o ]
  ret i32 %.048
}

; Function Attrs: nounwind uwtable
define internal fastcc void @cr_sort_and_remove_overlap(ptr nofree noundef nonnull captures(none) %0) unnamed_addr #7 {
bb.a:
  %1 = alloca [50 x %struct.anon], align 16       ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24   ; 2 uses
  %i.c = load i32, ptr %0, align 8, !tbaa !26     ; 2 uses
  %i.d = sdiv i32 %i.c, 2                         ; 2 uses
  %i.e = sext i32 %i.d to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = and i64 %i.f, 7
  %i.h = or disjoint i64 %i.g, 8                  ; 2 uses
  switch i64 %i.h, label %bb.b [
    i64 14, label %exchange_func.exit.i
    i64 8, label %exchange_func.exit.thread.i
    i64 10, label %exchange_func.exit.i
    i64 12, label %exchange_func.exit210.i
  ]

exchange_func.exit.thread.i:                      ; preds = %bb.a
  br label %exchange_func.exit210.i

bb.b:                                             ; preds = %bb.a
  br label %exchange_func.exit.i

exchange_func.exit.i:                             ; preds = %bb.b, %bb.a, %bb.a
  %.0.i.i = phi ptr [ @exchange_bytes, %bb.b ], [ @exchange_int16s, %bb.a ], [ @exchange_int16s, %bb.a ] ; 4 uses
  switch i64 %i.h, label %bb.e [
    i64 14, label %bb.d
    i64 8, label %bb.c
    i64 10, label %bb.d
    i64 12, label %exchange_func.exit210.i
  ]

bb.c:                                             ; preds = %exchange_func.exit.i
  br label %exchange_func.exit210.i

bb.d:                                             ; preds = %exchange_func.exit.i, %exchange_func.exit.i
  br label %exchange_func.exit210.i

bb.e:                                             ; preds = %exchange_func.exit.i
  br label %exchange_func.exit210.i

exchange_func.exit210.i:                          ; preds = %bb.e, %bb.d, %bb.c, %exchange_func.exit.i, %exchange_func.exit.thread.i, %bb.a
  %.0.i104.i = phi ptr [ %.0.i.i, %bb.c ], [ %.0.i.i, %bb.e ], [ %.0.i.i, %exchange_func.exit.i ], [ %.0.i.i, %bb.d ], [ @exchange_one_int64, %exchange_func.exit.thread.i ], [ @exchange_int32s, %bb.a ] ; 5 uses
  %.0.i209.i = phi ptr [ @exchange_int64s, %bb.c ], [ @exchange_bytes, %bb.e ], [ @exchange_int32s, %exchange_func.exit.i ], [ @exchange_int16s, %bb.d ], [ @exchange_int64s, %exchange_func.exit.thread.i ], [ @exchange_int32s, %bb.a ] ; 2 uses
  %i.i = icmp ult i32 %i.d, 2
  br i1 %i.i, label %rqsort.exit, label %bb.f

bb.f:                                             ; preds = %exchange_func.exit210.i
  store ptr %i.b, ptr %1, align 16, !tbaa !88
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.e, ptr %i.j, align 8, !tbaa !89
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 0, ptr %i.k, align 16, !tbaa !90
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %bb.g

.loopexit.i:                                      ; preds = %.critedge5.i.loopexit, %._crit_edge11.i.i, %heapsortx.exit.i, %.preheader.i.i
  %.118910111.i = phi ptr [ %.118910.i, %heapsortx.exit.i ], [ %.118940.i.lcssa, %._crit_edge11.i.i ], [ %.118940.i.lcssa, %.preheader.i.i ], [ %.118910.i, %.critedge5.i.loopexit ] ; 2 uses
  %i.m = icmp ugt ptr %.118910111.i, %1
  br i1 %i.m, label %bb.g, label %rqsort.exit.loopexit, !llvm.loop !73

bb.g:                                             ; preds = %.loopexit.i, %bb.f
  %.018852.i = phi ptr [ %i.l, %bb.f ], [ %.118910111.i, %.loopexit.i ] ; 3 uses
  %i.n = getelementptr inbounds i8, ptr %.018852.i, i64 -24 ; 4 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !88   ; 3 uses
  %i.p = getelementptr inbounds i8, ptr %.018852.i, i64 -16
  %i.q = load i64, ptr %i.p, align 8, !tbaa !89   ; 4 uses
  %i.r = icmp ugt i64 %i.q, 6
  br i1 %i.r, label %.lr.ph43.preheader.i, label %heapsortx.exit.i

.lr.ph43.preheader.i:                             ; preds = %bb.g
  %i.s = getelementptr inbounds i8, ptr %.018852.i, i64 -8
  %i.t = load i32, ptr %i.s, align 8, !tbaa !90   ; 3 uses
  %smax.i = call i32 @llvm.smax.i32(i32 %i.t, i32 50)
  %exitcond.i155 = icmp sgt i32 %i.t, 49
  br i1 %exitcond.i155, label %.lr.ph43.i._crit_edge, label %.lr.ph159

.lr.ph43.i:                                       ; preds = %bb.ab
  %exitcond.i = icmp eq i32 %i.bm, %smax.i
  br i1 %exitcond.i, label %.lr.ph43.i._crit_edge, label %.lr.ph159, !llvm.loop !74

.lr.ph43.i._crit_edge:                            ; preds = %.lr.ph43.i, %.lr.ph43.preheader.i
  %.018641.i.lcssa = phi ptr [ %i.o, %.lr.ph43.preheader.i ], [ %.1187.i, %.lr.ph43.i ] ; 9 uses
  %.118940.i.lcssa = phi ptr [ %i.n, %.lr.ph43.preheader.i ], [ %.2190.i, %.lr.ph43.i ] ; 2 uses
  %.019139.i.lcssa = phi i64 [ %i.q, %.lr.ph43.preheader.i ], [ %.1192.i, %.lr.ph43.i ] ; 2 uses
  %i.u = ptrtoint ptr %.018641.i.lcssa to i64
  %i.v = and i64 %i.u, 7                          ; 2 uses
  %.not162 = icmp eq i64 %i.v, 7
  br i1 %.not162, label %exchange_func.exit.i.i, label %switch.lookup

switch.lookup:                                    ; preds = %.lr.ph43.i._crit_edge
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.cr_sort_and_remove_overlap, i64 %i.v
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %exchange_func.exit.i.i

exchange_func.exit.i.i:                           ; preds = %.lr.ph43.i._crit_edge, %switch.lookup
  %.0.i.i.i = phi ptr [ %switch.load, %switch.lookup ], [ @exchange_bytes, %.lr.ph43.i._crit_edge ] ; 3 uses
  %i.w = shl i64 %.019139.i.lcssa, 2
  %i.x = and i64 %i.w, -8                         ; 2 uses
  %i.y = shl i64 %.019139.i.lcssa, 3              ; 4 uses
  %.not5.i.i = icmp eq i64 %i.x, 0
  %.pre.i.i = add i64 %i.y, -8                    ; 3 uses
  br i1 %.not5.i.i, label %.preheader.i.i, label %.lr.ph7.i.i

.preheader.i.i:                                   ; preds = %._crit_edge.i.i, %exchange_func.exit.i.i
  %.not8514.i.i = icmp eq i64 %.pre.i.i, 0
  br i1 %.not8514.i.i, label %.loopexit.i, label %.lr.ph17.i.i

.lr.ph7.i.i:                                      ; preds = %exchange_func.exit.i.i, %._crit_edge.i.i
  %.0796.i.i = phi i64 [ %i.z, %._crit_edge.i.i ], [ %i.x, %exchange_func.exit.i.i ]
  %i.z = add i64 %.0796.i.i, -8                   ; 4 uses
end_hunk_1
begin_hunk_2_@unicode_general_category:bb.a
.preheader.i:                                     ; preds = %bb.h, %bb.a
  %.01829.i = phi i32 [ %i.j, %bb.h ], [ 0, %bb.a ] ; 3 uses
  %.01928.i = phi ptr [ %i.i, %bb.h ], [ @unicode_gc_name_table, %bb.a ]
  br label %bb.b

bb.b:                                             ; preds = %bb.g, %.preheader.i
  %.1.i = phi ptr [ %i.i, %bb.g ], [ %.01928.i, %.preheader.i ] ; 5 uses
  %i.b = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %.1.i, i32 noundef 44) #24 ; 2 uses
  %.not23.i = icmp eq ptr %i.b, null              ; 2 uses
  br i1 %.not23.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.1.i) #24
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %.1.i to i64
  %i.f = sub i64 %i.d, %i.e
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i64 [ %i.f, %bb.d ], [ %i.c, %bb.c ] ; 2 uses
  %i.g = icmp eq i64 %.0.i, %i.a
  br i1 %i.g, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %bcmp.i = tail call i32 @bcmp(ptr nonnull %.1.i, ptr nonnull readonly %1, i64 %i.a)
  %.not24.i = icmp eq i32 %bcmp.i, 0
  br i1 %.not24.i, label %unicode_find_name.exit, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.h = getelementptr i8, ptr %.1.i, i64 %.0.i
  %i.i = getelementptr i8, ptr %i.h, i64 1        ; 3 uses
  br i1 %.not23.i, label %bb.h, label %bb.b

bb.h:                                             ; preds = %bb.g
  %i.j = add nuw nsw i32 %.01829.i, 1
  %i.k = load i8, ptr %i.i, align 1, !tbaa !16
  %.not.i = icmp eq i8 %i.k, 0
  br i1 %.not.i, label %unicode_find_name.exit.thread, label %.preheader.i, !llvm.loop !3

unicode_find_name.exit:                           ; preds = %bb.f
  %i.l = icmp samesign ult i32 %.01829.i, 30
  %i.m = zext nneg i32 %.01829.i to i64           ; 2 uses
  br i1 %i.l, label %bb.i, label %bb.j

bb.i:                                             ; preds = %unicode_find_name.exit
  %i.n = shl nuw nsw i64 1, %i.m
  %i.o = trunc nuw nsw i64 %i.n to i32
  br label %bb.k

bb.j:                                             ; preds = %unicode_find_name.exit
  %i.p = getelementptr [4 x i8], ptr @unicode_gc_mask_table, i64 %i.m
  %i.q = getelementptr i8, ptr %i.p, i64 -120
  %i.r = load i32, ptr %i.q, align 4, !tbaa !14
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.0 = phi i32 [ %i.o, %bb.i ], [ %i.r, %bb.j ]
  %i.s = tail call fastcc i32 @unicode_general_category1(ptr noundef %0, i32 noundef %.0)
  br label %unicode_find_name.exit.thread

unicode_find_name.exit.thread:                    ; preds = %bb.h, %bb.k
  %.07 = phi i32 [ %i.s, %bb.k ], [ -2, %bb.h ]
  ret i32 %.07
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @unicode_general_category1(ptr nofree noundef captures(none) %0, i32 noundef %1) unnamed_addr #7 {
bb.a:
  %i.a = and i32 %1, 6
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %.phi.trans.insert.i60 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = lshr i32 %1, 2
  %.lobit = and i32 %i.e, 1
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %.loopexit
  %.04175 = phi i32 [ 0, %bb.a ], [ %i.ac, %.loopexit ] ; 3 uses
  %.042.idx74 = phi i64 [ 0, %bb.a ], [ %.1.idx, %.loopexit ] ; 5 uses
  %.042.ptr = getelementptr inbounds nuw i8, ptr @unicode_gc_table, i64 %.042.idx74 ; 2 uses
  %.042.add = add nuw nsw i64 %.042.idx74, 1      ; 2 uses
  %i.f = load i8, ptr %.042.ptr, align 1, !tbaa !16
  %i.g = zext i8 %i.f to i32                      ; 2 uses
  %i.h = lshr i32 %i.g, 5                         ; 2 uses
  %i.i = and i32 %i.g, 31                         ; 2 uses
  %i.j = icmp eq i32 %i.h, 7
  br i1 %i.j, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %.ptr = getelementptr inbounds nuw i8, ptr @unicode_gc_table, i64 %.042.add
  %.add = add nuw nsw i64 %.042.idx74, 2          ; 2 uses
  %i.k = load i8, ptr %.ptr, align 1, !tbaa !16   ; 3 uses
  %i.l = zext i8 %i.k to i32                      ; 3 uses
  %i.m = icmp sgt i8 %i.k, -1
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = add nuw nsw i32 %i.l, 7
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %.ptr52 = getelementptr inbounds nuw i8, ptr @unicode_gc_table, i64 %.add
  %i.o = icmp samesign ult i8 %i.k, -64
  %i.p = load i8, ptr %.ptr52, align 1, !tbaa !16
  %i.q = zext i8 %i.p to i32                      ; 2 uses
  br i1 %i.o, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.r = shl nuw nsw i32 %i.l, 8
  %.add51 = add nuw nsw i64 %.042.idx74, 3
  %i.s = add nsw i32 %i.r, -32633
  %i.t = add nuw nsw i32 %i.s, %i.q
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.u = shl nuw nsw i32 %i.l, 16
  %.ptr53 = getelementptr inbounds nuw i8, ptr %.042.ptr, i64 3
  %i.v = shl nuw nsw i32 %i.q, 8
  %.add50 = add nuw nsw i64 %.042.idx74, 4
  %i.w = load i8, ptr %.ptr53, align 1, !tbaa !16
  %i.x = zext i8 %i.w to i32
  %i.y = add nsw i32 %i.u, -12566393
  %i.z = add nuw nsw i32 %i.y, %i.x
  %i.aa = add nuw nsw i32 %i.z, %i.v
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %bb.g, %bb.f, %bb.b
  %.1.idx = phi i64 [ %.add, %bb.d ], [ %.add51, %bb.f ], [ %.add50, %bb.g ], [ %.042.add, %bb.b ] ; 2 uses
  %.0 = phi i32 [ %i.n, %bb.d ], [ %i.t, %bb.f ], [ %i.aa, %bb.g ], [ %i.h, %bb.b ]
  %i.ab = add i32 %.04175, 1
  %i.ac = add i32 %i.ab, %.0                      ; 4 uses
  %i.ad = icmp eq i32 %i.i, 31
  br i1 %i.ad, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h
  switch i32 %i.a, label %bb.j [
    i32 0, label %.loopexit
    i32 6, label %bb.n
  ]

bb.j:                                             ; preds = %bb.i
  %i.ae = add i32 %.04175, %.lobit                ; 2 uses
  %i.af = icmp ult i32 %i.ae, %i.ac
  br i1 %i.af, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.j, %bb.l
  %.04073 = phi i32 [ %i.bc, %bb.l ], [ %i.ae, %bb.j ] ; 3 uses
  %i.ag = add nuw i32 %.04073, 1
  %i.ah = load i32, ptr %0, align 8, !tbaa !26    ; 2 uses
  %i.ai = add nsw i32 %i.ah, 2                    ; 2 uses
  %i.aj = load i32, ptr %i.b, align 4, !tbaa !25  ; 2 uses
  %i.ak = icmp sgt i32 %i.ai, %i.aj
  br i1 %i.ak, label %bb.k, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph
  %.pre.i = load ptr, ptr %.phi.trans.insert.i60, align 8, !tbaa !24
  br label %bb.l

bb.k:                                             ; preds = %.lr.ph
  %i.al = mul nsw i32 %i.aj, 3
  %i.am = sdiv i32 %i.al, 2
  %..i.i.i = tail call range(i32 -1073741824, -2147483648) i32 @llvm.smax.i32(i32 %i.ai, i32 range(i32 -1073741824, 1073741824) %i.am) ; 2 uses
  %i.an = load ptr, ptr %i.c, align 8, !tbaa !23
  %i.ao = load ptr, ptr %i.d, align 8, !tbaa !22
  %i.ap = load ptr, ptr %.phi.trans.insert.i60, align 8, !tbaa !24
  %i.aq = sext i32 %..i.i.i to i64
  %i.ar = shl nsw i64 %i.aq, 2
  %i.as = tail call ptr %i.an(ptr noundef %i.ao, ptr noundef %i.ap, i64 noundef %i.ar) #21, !inline_history !44 ; 3 uses
  %.not.i.i = icmp eq ptr %i.as, null
  br i1 %.not.i.i, label %cr_add_interval.exit, label %cr_realloc.exit.thread.i

cr_realloc.exit.thread.i:                         ; preds = %bb.k
  store ptr %i.as, ptr %.phi.trans.insert.i60, align 8, !tbaa !24
  store i32 %..i.i.i, ptr %i.b, align 4, !tbaa !25
  %.pre13.i = load i32, ptr %0, align 8, !tbaa !26
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge.i, %cr_realloc.exit.thread.i
  %i.at = phi i32 [ %i.ah, %._crit_edge.i ], [ %.pre13.i, %cr_realloc.exit.thread.i ] ; 2 uses
  %i.au = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.as, %cr_realloc.exit.thread.i ] ; 2 uses
  %i.av = add nsw i32 %i.at, 1
  store i32 %i.av, ptr %0, align 8, !tbaa !26
  %i.aw = sext i32 %i.at to i64
  %i.ax = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.aw
  store i32 %.04073, ptr %i.ax, align 4, !tbaa !14
  %i.ay = load i32, ptr %0, align 8, !tbaa !26    ; 2 uses
  %i.az = add nsw i32 %i.ay, 1
  store i32 %i.az, ptr %0, align 8, !tbaa !26
  %i.ba = sext i32 %i.ay to i64
  %i.bb = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.ba
  store i32 %i.ag, ptr %i.bb, align 4, !tbaa !14
  %i.bc = add i32 %.04073, 2                      ; 2 uses
  %i.bd = icmp ult i32 %i.bc, %i.ac
  br i1 %i.bd, label %.lr.ph, label %.loopexit, !llvm.loop !91

bb.m:                                             ; preds = %bb.h
  %2 = lshr i32 %1, %i.i
  %3 = trunc i32 %2 to i1
  br i1 %3, label %bb.n, label %.loopexit

bb.n:                                             ; preds = %bb.i, %bb.m
  %i.be = load i32, ptr %0, align 8, !tbaa !26    ; 2 uses
  %i.bf = add nsw i32 %i.be, 2                    ; 2 uses
  %i.bg = load i32, ptr %i.b, align 4, !tbaa !25  ; 2 uses
  %i.bh = icmp sgt i32 %i.bf, %i.bg
  br i1 %i.bh, label %bb.o, label %._crit_edge.i59

._crit_edge.i59:                                  ; preds = %bb.n
  %.pre.i61 = load ptr, ptr %.phi.trans.insert.i60, align 8, !tbaa !24
  br label %cr_add_interval.exit67.thread

bb.o:                                             ; preds = %bb.n
  %i.bi = mul nsw i32 %i.bg, 3
  %i.bj = sdiv i32 %i.bi, 2
  %..i.i.i63 = tail call range(i32 -1073741824, -2147483648) i32 @llvm.smax.i32(i32 %i.bf, i32 range(i32 -1073741824, 1073741824) %i.bj) ; 2 uses
  %i.bk = load ptr, ptr %i.c, align 8, !tbaa !23
  %i.bl = load ptr, ptr %i.d, align 8, !tbaa !22
  %i.bm = load ptr, ptr %.phi.trans.insert.i60, align 8, !tbaa !24
  %i.bn = sext i32 %..i.i.i63 to i64
  %i.bo = shl nsw i64 %i.bn, 2
  %i.bp = tail call ptr %i.bk(ptr noundef %i.bl, ptr noundef %i.bm, i64 noundef %i.bo) #21, !inline_history !44 ; 3 uses
  %.not.i.i64 = icmp eq ptr %i.bp, null
  br i1 %.not.i.i64, label %cr_add_interval.exit, label %cr_realloc.exit.thread.i65

cr_realloc.exit.thread.i65:                       ; preds = %bb.o
  store ptr %i.bp, ptr %.phi.trans.insert.i60, align 8, !tbaa !24
  store i32 %..i.i.i63, ptr %i.b, align 4, !tbaa !25
  %.pre13.i66 = load i32, ptr %0, align 8, !tbaa !26
  br label %cr_add_interval.exit67.thread

cr_add_interval.exit67.thread:                    ; preds = %._crit_edge.i59, %cr_realloc.exit.thread.i65
  %i.bq = phi i32 [ %i.be, %._crit_edge.i59 ], [ %.pre13.i66, %cr_realloc.exit.thread.i65 ] ; 2 uses
  %i.br = phi ptr [ %.pre.i61, %._crit_edge.i59 ], [ %i.bp, %cr_realloc.exit.thread.i65 ] ; 2 uses
  %i.bs = add nsw i32 %i.bq, 1
  store i32 %i.bs, ptr %0, align 8, !tbaa !26
  %i.bt = sext i32 %i.bq to i64
  %i.bu = getelementptr inbounds [4 x i8], ptr %i.br, i64 %i.bt
  store i32 %.04175, ptr %i.bu, align 4, !tbaa !14
  %i.bv = load i32, ptr %0, align 8, !tbaa !26    ; 2 uses
  %i.bw = add nsw i32 %i.bv, 1
  store i32 %i.bw, ptr %0, align 8, !tbaa !26
  %i.bx = sext i32 %i.bv to i64
  %i.by = getelementptr inbounds [4 x i8], ptr %i.br, i64 %i.bx
  store i32 %i.ac, ptr %i.by, align 4, !tbaa !14
  br label %.loopexit

.loopexit:                                        ; preds = %bb.l, %bb.j, %cr_add_interval.exit67.thread, %bb.i, %bb.m
  %i.bz = icmp slt i64 %.1.idx, 4122
  br i1 %i.bz, label %bb.b, label %cr_add_interval.exit, !llvm.loop !92

cr_add_interval.exit:                             ; preds = %bb.o, %.loopexit, %bb.k
  %.043 = phi i32 [ -1, %bb.k ], [ -1, %bb.o ], [ 0, %.loopexit ]
  ret i32 %.043
}

; Function Attrs: nounwind uwtable
define hidden range(i32 -2147483648, 1) i32 @unicode_sequence_prop(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #7 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %0) #24 ; 2 uses
  br label %.preheader.i

.preheader.i:                                     ; preds = %bb.h, %bb.a
  %.01829.i = phi i32 [ %i.j, %bb.h ], [ 0, %bb.a ] ; 2 uses
  %.01928.i = phi ptr [ %i.i, %bb.h ], [ @unicode_sequence_prop_name_table, %bb.a ]
  br label %bb.b

bb.b:                                             ; preds = %bb.g, %.preheader.i
  %.1.i = phi ptr [ %i.i, %bb.g ], [ %.01928.i, %.preheader.i ] ; 5 uses
  %i.b = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %.1.i, i32 noundef 44) #24 ; 2 uses
  %.not23.i = icmp eq ptr %i.b, null              ; 2 uses
  br i1 %.not23.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.1.i) #24
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %.1.i to i64
  %i.f = sub i64 %i.d, %i.e
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i64 [ %i.f, %bb.d ], [ %i.c, %bb.c ] ; 2 uses
  %i.g = icmp eq i64 %.0.i, %i.a
  br i1 %i.g, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %bcmp.i = tail call i32 @bcmp(ptr nonnull %.1.i, ptr nonnull readonly %0, i64 %i.a)
  %.not24.i = icmp eq i32 %bcmp.i, 0
  br i1 %.not24.i, label %unicode_find_name.exit, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.h = getelementptr i8, ptr %.1.i, i64 %.0.i
  %i.i = getelementptr i8, ptr %i.h, i64 1        ; 3 uses
  br i1 %.not23.i, label %bb.h, label %bb.b

bb.h:                                             ; preds = %bb.g
  %i.j = add nuw nsw i32 %.01829.i, 1
  %i.k = load i8, ptr %i.i, align 1, !tbaa !16
  %.not.i = icmp eq i8 %i.k, 0
  br i1 %.not.i, label %unicode_find_name.exit.thread, label %.preheader.i, !llvm.loop !3

unicode_find_name.exit:                           ; preds = %bb.f
  %i.l = tail call fastcc i32 @unicode_sequence_prop1(i32 noundef %.01829.i, ptr noundef %1, ptr noundef %2, ptr noundef %3)
  br label %unicode_find_name.exit.thread

unicode_find_name.exit.thread:                    ; preds = %bb.h, %unicode_find_name.exit
  %.0 = phi i32 [ %i.l, %unicode_find_name.exit ], [ -2, %bb.h ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -2147483648, 1) i32 @unicode_sequence_prop1(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr nofree noundef captures(none) %3) unnamed_addr #7 {
bb.a:
  %i.a = alloca [16 x i32], align 16              ; 53 uses
  %i.b = alloca [2 x i32], align 4                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  switch i32 %0, label %.loopexit [
    i32 0, label %bb.b
    i32 2, label %bb.e
    i32 3, label %bb.g
    i32 5, label %bb.i
    i32 4, label %.preheader200
    i32 1, label %bb.v
    i32 6, label %.preheader204.preheader
  ]

.preheader204.preheader:                          ; preds = %bb.a
  %i.c = tail call fastcc i32 @unicode_sequence_prop1(i32 noundef 0, ptr noundef %1, ptr noundef %2, ptr noundef %3) ; 2 uses
  %i.d = icmp sgt i32 %i.c, -1
  br i1 %i.d, label %.preheader204.1, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.e = tail call fastcc i32 @unicode_prop1(ptr noundef %3, i32 noundef 16)
  %i.f = icmp slt i32 %i.e, 0
  br i1 %i.f, label %.loopexit, label %.preheader192.a

.preheader192.a:                                  ; preds = %bb.b
  %i.g = load i32, ptr %3, align 8, !tbaa !26     ; 2 uses
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %.lr.ph276, label %._crit_edge277

.lr.ph276:                                        ; preds = %.preheader192.a
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %.pre344.a = load ptr, ptr %i.i, align 8, !tbaa !24
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph276, %._crit_edge274
  %i.j = phi i32 [ %i.g, %.lr.ph276 ], [ %i.w, %._crit_edge274 ]
  %i.k = phi ptr [ %.pre344.a, %.lr.ph276 ], [ %i.x, %._crit_edge274 ] ; 2 uses
  %indvars.iv333.a = phi i64 [ 0, %.lr.ph276 ], [ %indvars.iv.next334.a, %._crit_edge274 ] ; 3 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv333.a ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !14   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !14
  %i.p = icmp ult i32 %i.m, %i.o
  br i1 %i.p, label %.lr.ph273, label %._crit_edge274

.lr.ph273:                                        ; preds = %bb.c, %.lr.ph273
  %.0170271 = phi i32 [ %i.q, %.lr.ph273 ], [ %i.m, %bb.c ] ; 2 uses
  store i32 %.0170271, ptr %i.a, align 16, !tbaa !14
  call void %1(ptr noundef %2, ptr noundef nonnull %i.a, i32 noundef 1) #21
  %i.q = add nuw nsw i32 %.0170271, 1             ; 2 uses
  %i.r = load ptr, ptr %i.i, align 8, !tbaa !24   ; 2 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv333.a
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %i.u = load i32, ptr %i.t, align 4, !tbaa !14
  %i.v = icmp ult i32 %i.q, %i.u
  br i1 %i.v, label %.lr.ph273, label %._crit_edge274.loopexit, !llvm.loop !93

._crit_edge274.loopexit:                          ; preds = %.lr.ph273
  %.pre345 = load i32, ptr %3, align 8, !tbaa !26
  br label %._crit_edge274

._crit_edge274:                                   ; preds = %._crit_edge274.loopexit, %bb.c
  %i.w = phi i32 [ %.pre345, %._crit_edge274.loopexit ], [ %i.j, %bb.c ] ; 2 uses
  %i.x = phi ptr [ %i.r, %._crit_edge274.loopexit ], [ %i.k, %bb.c ]
  %indvars.iv.next334.a = add nuw nsw i64 %indvars.iv333.a, 2 ; 2 uses
  %i.y = trunc nuw i64 %indvars.iv.next334.a to i32
  %i.z = icmp sgt i32 %i.w, %i.y
  br i1 %i.z, label %bb.c, label %._crit_edge277, !llvm.loop !94

._crit_edge277:                                   ; preds = %._crit_edge274, %.preheader192.a
  store i32 0, ptr %3, align 8, !tbaa !26
  %i.aa = call fastcc i32 @unicode_prop1(ptr noundef nonnull %3, i32 noundef 17)
  %i.ab = icmp slt i32 %i.aa, 0
  br i1 %i.ab, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %._crit_edge277
  %i.ac = load i32, ptr %3, align 8, !tbaa !26    ; 2 uses
  %i.ad = icmp sgt i32 %i.ac, 0
  br i1 %i.ad, label %.lr.ph283, label %.loopexit

.lr.ph283:                                        ; preds = %.preheader
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %.pre346 = load ptr, ptr %i.ae, align 8, !tbaa !24
  br label %bb.d
end_hunk_2
begin_hunk_3_@unicode_sequence_prop1:bb.a
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.1158 = phi i32 [ %i.dv, %bb.l ], [ %i.dp, %bb.k ] ; 3 uses
  %.1156 = phi i32 [ %i.dl, %bb.l ], [ %.0155221, %bb.k ] ; 3 uses
  %.1154 = phi i32 [ %i.ds, %bb.l ], [ %.0153222, %bb.k ]
  %.not187 = icmp sgt i8 %i.dh, -1
  br i1 %.not187, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dy = add nsw i32 %.1158, 1
  %i.dz = sext i32 %.1158 to i64
  %i.ea = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.dz
  store i32 65039, ptr %i.ea, align 4, !tbaa !14
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.2 = phi i32 [ %i.dy, %bb.n ], [ %.1158, %bb.m ] ; 3 uses
  %i.eb = icmp slt i32 %.1168218, %i.db
  br i1 %i.eb, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ec = add nsw i32 %.2, 1
  %i.ed = sext i32 %.2 to i64
  %i.ee = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.ed
  store i32 8205, ptr %i.ee, align 4, !tbaa !14
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p
  %.3 = phi i32 [ %i.ec, %bb.p ], [ %.2, %bb.o ]  ; 15 uses
  %i.ef = add nuw nsw i32 %.1168218, 1            ; 2 uses
  %indvars.iv.next307 = add nuw nsw i64 %indvars.iv306, 2
  %exitcond.not = icmp eq i32 %i.ef, %i.da
  br i1 %exitcond.not, label %._crit_edge227, label %bb.k, !llvm.loop !102

._crit_edge227:                                   ; preds = %bb.q
  %i.eg = shl nsw i32 %i.db, 1
  %i.eh = add nsw i32 %i.eg, 3
  %i.ei = add i32 %i.eh, %.4259                   ; 6 uses
  switch i32 %.1156, label %default.unreachable [
    i32 1, label %.split241.us
    i32 2, label %.split241.us246
    i32 3, label %bb.r
    i32 0, label %.split241.us250
  ]

bb.r:                                             ; preds = %._crit_edge227
  br label %.split241.us246

default.unreachable:                              ; preds = %._crit_edge227
  unreachable

.split241.us:                                     ; preds = %._crit_edge227
  %i.ej = icmp sgt i32 %.1, -1                    ; 2 uses
  %. = select i1 %i.ej, i32 4, i32 1              ; 2 uses
  %i.ek = zext nneg i32 %.1 to i64
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ek ; 5 uses
  %i.em = load i32, ptr %i.b, align 4
  %i.en = sext i32 %i.em to i64
  %i.eo = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.en ; 10 uses
  br i1 %i.ej, label %.preheader198.us.us, label %.preheader198.us

.preheader198.us.us:                              ; preds = %.split241.us, %.preheader198.us.us
  %.0148240.us.us = phi i32 [ %i.eq, %.preheader198.us.us ], [ 0, %.split241.us ] ; 2 uses
  %i.ep = add nuw nsw i32 %.0148240.us.us, 129456 ; 5 uses
  store i32 %i.ep, ptr %i.el, align 4, !tbaa !14
  store i32 127995, ptr %i.eo, align 4, !tbaa !14
  call void %1(ptr noundef %2, ptr noundef nonnull %i.a, i32 noundef %.3) #21
  store i32 %i.ep, ptr %i.el, align 4, !tbaa !14
  store i32 127996, ptr %i.eo, align 4, !tbaa !14
  call void %1(ptr noundef %2, ptr noundef nonnull %i.a, i32 noundef %.3) #21
  store i32 %i.ep, ptr %i.el, align 4, !tbaa !14
  store i32 127997, ptr %i.eo, align 4, !tbaa !14
  call void %1(ptr noundef %2, ptr noundef nonnull %i.a, i32 noundef %.3) #21
  store i32 %i.ep, ptr %i.el, align 4, !tbaa !14
  store i32 127998, ptr %i.eo, align 4, !tbaa !14
  call void %1(ptr noundef %2, ptr noundef nonnull %i.a, i32 noundef %.3) #21
  store i32 %i.ep, ptr %i.el, align 4, !tbaa !14
  store i32 127999, ptr %i.eo, align 4, !tbaa !14
  call void %1(ptr noundef %2, ptr noundef nonnull %i.a, i32 noundef %.3) #21
  %i.eq = add nuw nsw i32 %.0148240.us.us, 1      ; 2 uses
  %exitcond325.not = icmp eq i32 %i.eq, %.
  br i1 %exitcond325.not, label %.loopexit199, label %.preheader198.us.us, !llvm.loop !103

.preheader198.us:                                 ; preds = %.split241.us, %.preheader198.us
  %.0148240.us = phi i32 [ %i.er, %.preheader198.us ], [ 0, %.split241.us ]
  store i32 127995, ptr %i.eo, align 4, !tbaa !14
  call void %1(ptr noundef %2, ptr noundef nonnull %i.a, i32 noundef %.3) #21
  store i32 127996, ptr %i.eo, align 4, !tbaa !14
  call void %1(ptr noundef %2, ptr noundef nonnull %i.a, i32 noundef %.3) #21
  store i32 127997, ptr %i.eo, align 4, !tbaa !14
  call void %1(ptr noundef %2, ptr noundef nonnull %i.a, i32 noundef %.3) #21
  store i32 127998, ptr %i.eo, align 4, !tbaa !14
  call void %1(ptr noundef %2, ptr noundef nonnull %i.a, i32 noundef %.3) #21
  store i32 127999, ptr %i.eo, align 4, !tbaa !14
  call void %1(ptr noundef %2, ptr noundef nonnull %i.a, i32 noundef %.3) #21
  %i.er = add nuw nsw i32 %.0148240.us, 1         ; 2 uses
  %exitcond323.not = icmp eq i32 %i.er, %.
  br i1 %exitcond323.not, label %.loopexit199, label %.preheader198.us, !llvm.loop !103

.split241.us246:                                  ; preds = %._crit_edge227, %bb.r
  %.0151.ph = phi i32 [ 20, %bb.r ], [ 25, %._crit_edge227 ] ; 2 uses
  %i.es = icmp sgt i32 %.1, -1                    ; 2 uses
  %.393 = select i1 %i.es, i32 4, i32 1           ; 2 uses
  %i.et = zext nneg i32 %.1 to i64
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.et
  %i.ev = icmp eq i32 %.1156, 3                   ; 2 uses
  %i.ew = load i32, ptr %i.b, align 4
  %i.ex = sext i32 %i.ew to i64
  %i.ey = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.ex ; 2 uses
  %i.ez = load i32, ptr %i.cv, align 4
  %i.fa = sext i32 %i.ez to i64
  %i.fb = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.fa ; 2 uses
  br i1 %i.es, label %.preheader198.us247.us, label %.preheader198.us247

.preheader198.us247.us:                           ; preds = %.split241.us246, %.split.split.us.us.split.us.us
  %.0148240.us248.us = phi i32 [ %i.fj, %.split.split.us.us.split.us.us ], [ 0, %.split241.us246 ] ; 2 uses
  %i.fc = add nuw nsw i32 %.0148240.us248.us, 129456
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %.preheader198.us247.us
  %.0149232.us234.us.us.us = phi i32 [ 0, %.preheader198.us247.us ], [ %i.fi, %bb.s ] ; 3 uses
  store i32 %i.fc, ptr %i.eu, align 4, !tbaa !14
  %i.fd = udiv i32 %.0149232.us234.us.us.us, 5    ; 2 uses
  %i.fe = urem i32 %.0149232.us234.us.us.us, 5    ; 2 uses
  %.not185.us.us.us.us = icmp samesign uge i32 %i.fd, %i.fe
  %or.cond.not.us.us.us.us = select i1 %i.ev, i1 %.not185.us.us.us.us, i1 false
  %i.ff = zext i1 %or.cond.not.us.us.us.us to i32
  %.0.us.us.us.us = add nuw nsw i32 %i.fd, 127995
  %i.fg = add nuw nsw i32 %.0.us.us.us.us, %i.ff
  store i32 %i.fg, ptr %i.ey, align 4, !tbaa !14
  %i.fh = add nuw nsw i32 %i.fe, 127995
  store i32 %i.fh, ptr %i.fb, align 4, !tbaa !14
  call void %1(ptr noundef %2, ptr noundef nonnull %i.a, i32 noundef %.3) #21
  %i.fi = add nuw nsw i32 %.0149232.us234.us.us.us, 1 ; 2 uses
  %exitcond320.not = icmp eq i32 %i.fi, %.0151.ph
  br i1 %exitcond320.not, label %.split.split.us.us.split.us.us, label %bb.s, !llvm.loop !104

.split.split.us.us.split.us.us:                   ; preds = %bb.s
  %i.fj = add nuw nsw i32 %.0148240.us248.us, 1   ; 2 uses
  %exitcond321.not = icmp eq i32 %i.fj, %.393
  br i1 %exitcond321.not, label %.loopexit199, label %.preheader198.us247.us, !llvm.loop !103

.preheader198.us247:                              ; preds = %.split241.us246, %.split.split.us.us.split
  %.0148240.us248 = phi i32 [ %i.fq, %.split.split.us.us.split ], [ 0, %.split241.us246 ]
  br label %bb.t

bb.t:                                             ; preds = %bb.t, %.preheader198.us247
  %.0149232.us234.us = phi i32 [ 0, %.preheader198.us247 ], [ %i.fp, %bb.t ] ; 3 uses
  %i.fk = udiv i32 %.0149232.us234.us, 5          ; 2 uses
  %i.fl = urem i32 %.0149232.us234.us, 5          ; 2 uses
  %.not185.us.us = icmp samesign uge i32 %i.fk, %i.fl
  %or.cond.not.us.us = select i1 %i.ev, i1 %.not185.us.us, i1 false
  %i.fm = zext i1 %or.cond.not.us.us to i32
  %.0.us.us = add nuw nsw i32 %i.fk, 127995
  %i.fn = add nuw nsw i32 %.0.us.us, %i.fm
  store i32 %i.fn, ptr %i.ey, align 4, !tbaa !14
  %i.fo = add nuw nsw i32 %i.fl, 127995
  store i32 %i.fo, ptr %i.fb, align 4, !tbaa !14
  call void %1(ptr noundef %2, ptr noundef nonnull %i.a, i32 noundef %.3) #21
  %i.fp = add nuw nsw i32 %.0149232.us234.us, 1   ; 2 uses
  %exitcond318.not = icmp eq i32 %i.fp, %.0151.ph
  br i1 %exitcond318.not, label %.split.split.us.us.split, label %bb.t, !llvm.loop !104

.split.split.us.us.split:                         ; preds = %bb.t
  %i.fq = add nuw nsw i32 %.0148240.us248, 1      ; 2 uses
  %exitcond319.not = icmp eq i32 %i.fq, %.393
  br i1 %exitcond319.not, label %.loopexit199, label %.preheader198.us247, !llvm.loop !103

.split241.us250:                                  ; preds = %._crit_edge227
  %i.fr = icmp sgt i32 %.1, -1                    ; 2 uses
  %.406 = select i1 %i.fr, i32 4, i32 1
  %i.fs = zext nneg i32 %.1 to i64
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.fs
  br i1 %i.fr, label %.preheader198.us251.us, label %.preheader198.us251

.preheader198.us251.us:                           ; preds = %.split241.us250, %.preheader198.us251.us
  %.0148240.us252.us = phi i32 [ %i.fv, %.preheader198.us251.us ], [ 0, %.split241.us250 ] ; 2 uses
  %i.fu = add nuw nsw i32 %.0148240.us252.us, 129456
  store i32 %i.fu, ptr %i.ft, align 4, !tbaa !14
  call void %1(ptr noundef %2, ptr noundef nonnull %i.a, i32 noundef %.3) #21
  %i.fv = add nuw nsw i32 %.0148240.us252.us, 1   ; 2 uses
  %exitcond317.not = icmp eq i32 %i.fv, %.406
  br i1 %exitcond317.not, label %.loopexit199, label %.preheader198.us251.us, !llvm.loop !103

.preheader198.us251:                              ; preds = %bb.j, %.split241.us250
  %.0157.lcssa381.ph416 = phi i32 [ %.3, %.split241.us250 ], [ 0, %bb.j ]
  %.5.lcssa387.ph415 = phi i32 [ %i.ei, %.split241.us250 ], [ %.5217, %bb.j ]
  call void %1(ptr noundef %2, ptr noundef nonnull %i.a, i32 noundef %.0157.lcssa381.ph416) #21
  br label %.loopexit199

bb.u:                                             ; preds = %.loopexit199
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  br label %.loopexit

.preheader200:                                    ; preds = %bb.a, %._crit_edge214
  %.6216 = phi i32 [ %.lcssa, %._crit_edge214 ], [ 0, %bb.a ] ; 2 uses
  store i32 127988, ptr %i.a, align 16, !tbaa !14
  %i.fw = add nuw nsw i32 %.6216, 1
  %i.fx = zext nneg i32 %.6216 to i64             ; 3 uses
  %4 = lshr i64 133152, %i.fx
  %5 = trunc i64 %4 to i1
  br i1 %5, label %._crit_edge214, label %.lr.ph213.preheader

.lr.ph213.preheader:                              ; preds = %.preheader200
  %i.fy = add nuw nsw i64 %i.fx, 1
  br label %.lr.ph213

.lr.ph213:                                        ; preds = %.lr.ph213.preheader, %.lr.ph213
  %indvars.iv301 = phi i64 [ 1, %.lr.ph213.preheader ], [ %indvars.iv.next302, %.lr.ph213 ] ; 2 uses
  %indvars.iv299 = phi i64 [ %i.fy, %.lr.ph213.preheader ], [ %indvars.iv.next300, %.lr.ph213 ] ; 3 uses
  %i.fz = phi i64 [ %i.fx, %.lr.ph213.preheader ], [ %indvars.iv299, %.lr.ph213 ]
  %i.ga = getelementptr inbounds nuw i8, ptr @unicode_rgi_emoji_tag_sequence, i64 %i.fz
  %i.gb = load i8, ptr %i.ga, align 1, !tbaa !16
  %i.gc = zext i8 %i.gb to i32
  %i.gd = or disjoint i32 %i.gc, 917504
  %indvars.iv.next302 = add nuw nsw i64 %indvars.iv301, 1 ; 2 uses
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv301
  store i32 %i.gd, ptr %i.ge, align 4, !tbaa !14
  %indvars.iv.next300 = add nuw nsw i64 %indvars.iv299, 1 ; 2 uses
  %6 = lshr i64 133152, %indvars.iv299
  %7 = trunc i64 %6 to i1
  br i1 %7, label %._crit_edge214.loopexit, label %.lr.ph213

._crit_edge214.loopexit:                          ; preds = %.lr.ph213
  %i.gf = trunc nuw i64 %indvars.iv.next302 to i32
  %i.gg = trunc nuw i64 %indvars.iv.next300 to i32
  br label %._crit_edge214

._crit_edge214:                                   ; preds = %._crit_edge214.loopexit, %.preheader200
  %.2169.lcssa = phi i32 [ 1, %.preheader200 ], [ %i.gf, %._crit_edge214.loopexit ] ; 2 uses
  %.lcssa = phi i32 [ %i.fw, %.preheader200 ], [ %i.gg, %._crit_edge214.loopexit ] ; 2 uses
  %i.gh = add nuw nsw i32 %.2169.lcssa, 1
  %i.gi = zext nneg i32 %.2169.lcssa to i64
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.gi
  store i32 917631, ptr %i.gj, align 4, !tbaa !14
  call void %1(ptr noundef %2, ptr noundef nonnull %i.a, i32 noundef %i.gh) #21
  %i.gk = icmp ult i32 %.lcssa, 18
  br i1 %i.gk, label %.preheader200, label %.loopexit, !llvm.loop !105

bb.v:                                             ; preds = %bb.a
  %i.gl = tail call fastcc i32 @unicode_prop1(ptr noundef %3, i32 noundef 19)
  %i.gm = icmp slt i32 %i.gl, 0
  br i1 %i.gm, label %.loopexit, label %.preheader202

.preheader202:                                    ; preds = %bb.v
  %i.gn = load i32, ptr %3, align 8, !tbaa !26    ; 2 uses
  %i.go = icmp sgt i32 %i.gn, 0
  br i1 %i.go, label %.lr.ph209, label %.loopexit

.lr.ph209:                                        ; preds = %.preheader202
  %i.gp = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.gr = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.pre = load ptr, ptr %i.gp, align 8, !tbaa !24
  br label %bb.w

bb.w:                                             ; preds = %.lr.ph209, %._crit_edge
  %i.gs = phi i32 [ %i.gn, %.lr.ph209 ], [ %i.hf, %._crit_edge ]
  %i.gt = phi ptr [ %.pre, %.lr.ph209 ], [ %i.hg, %._crit_edge ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph209 ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %i.gt, i64 %indvars.iv ; 2 uses
  %i.gv = load i32, ptr %i.gu, align 4, !tbaa !14 ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gu, i64 4
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !14
  %i.gy = icmp ult i32 %i.gv, %i.gx
  br i1 %i.gy, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.w, %.lr.ph
  %.5175207 = phi i32 [ %i.gz, %.lr.ph ], [ %i.gv, %bb.w ] ; 2 uses
  store i32 %.5175207, ptr %i.a, align 16, !tbaa !14
  store i32 65039, ptr %i.gq, align 4, !tbaa !14
  store i32 8419, ptr %i.gr, align 8, !tbaa !14
  call void %1(ptr noundef %2, ptr noundef nonnull %i.a, i32 noundef 3) #21
  %i.gz = add nuw nsw i32 %.5175207, 1            ; 2 uses
  %i.ha = load ptr, ptr %i.gp, align 8, !tbaa !24 ; 2 uses
  %i.hb = getelementptr inbounds nuw [4 x i8], ptr %i.ha, i64 %indvars.iv
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 4
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !14
  %i.he = icmp ult i32 %i.gz, %i.hd
  br i1 %i.he, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !106

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre339 = load i32, ptr %3, align 8, !tbaa !26
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.w
  %i.hf = phi i32 [ %.pre339, %._crit_edge.loopexit ], [ %i.gs, %bb.w ] ; 2 uses
  %i.hg = phi ptr [ %i.ha, %._crit_edge.loopexit ], [ %i.gt, %bb.w ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.hh = trunc nuw i64 %indvars.iv.next to i32
  %i.hi = icmp sgt i32 %i.hf, %i.hh
  br i1 %i.hi, label %bb.w, label %.loopexit, !llvm.loop !107

.preheader204.1:                                  ; preds = %.preheader204.preheader
  store i32 0, ptr %3, align 8, !tbaa !26
  %i.hj = tail call fastcc i32 @unicode_sequence_prop1(i32 noundef 1, ptr noundef %1, ptr noundef %2, ptr noundef %3) ; 2 uses
  %i.hk = icmp sgt i32 %i.hj, -1
  br i1 %i.hk, label %.preheader204.2, label %.loopexit

.preheader204.2:                                  ; preds = %.preheader204.1
  store i32 0, ptr %3, align 8, !tbaa !26
  %i.hl = tail call fastcc i32 @unicode_sequence_prop1(i32 noundef 2, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3) ; 2 uses
  %i.hm = icmp sgt i32 %i.hl, -1
  br i1 %i.hm, label %.preheader204.3, label %.loopexit

.preheader204.3:                                  ; preds = %.preheader204.2
  store i32 0, ptr %3, align 8, !tbaa !26
  %i.hn = tail call fastcc i32 @unicode_sequence_prop1(i32 noundef 3, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3) ; 2 uses
  %i.ho = icmp sgt i32 %i.hn, -1
  br i1 %i.ho, label %.preheader204.4, label %.loopexit

.preheader204.4:                                  ; preds = %.preheader204.3
  store i32 0, ptr %3, align 8, !tbaa !26
  %i.hp = tail call fastcc i32 @unicode_sequence_prop1(i32 noundef 4, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3) ; 2 uses
  %i.hq = icmp sgt i32 %i.hp, -1
  br i1 %i.hq, label %.preheader204.5, label %.loopexit

.preheader204.5:                                  ; preds = %.preheader204.4
  store i32 0, ptr %3, align 8, !tbaa !26
  %i.hr = tail call fastcc i32 @unicode_sequence_prop1(i32 noundef 5, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3) ; 2 uses
  %i.hs = icmp sgt i32 %i.hr, -1
  br i1 %i.hs, label %bb.x, label %.loopexit

bb.x:                                             ; preds = %.preheader204.5
  store i32 0, ptr %3, align 8, !tbaa !26
  br label %.loopexit

.loopexit:                                        ; preds = %._crit_edge, %._crit_edge214, %._crit_edge263, %._crit_edge268, %._crit_edge281, %.preheader204.preheader, %.preheader204.1, %.preheader204.2, %.preheader204.3, %.preheader204.4, %.preheader204.5, %bb.x, %.preheader202, %.preheader196, %.preheader194, %.preheader, %bb.u, %bb.a, %bb.v, %bb.g, %bb.e, %._crit_edge277, %bb.b
  %.2161 = phi i32 [ -1, %bb.v ], [ 0, %bb.u ], [ -1, %bb.b ], [ -2, %bb.a ], [ -1, %._crit_edge277 ], [ -1, %bb.e ], [ -1, %bb.g ], [ 0, %._crit_edge214 ], [ 0, %.preheader196 ], [ 0, %.preheader194 ], [ 0, %.preheader ], [ 0, %.preheader202 ], [ 0, %._crit_edge268 ], [ 0, %._crit_edge263 ], [ %i.hn, %.preheader204.3 ], [ 0, %._crit_edge281 ], [ %i.c, %.preheader204.preheader ], [ 0, %bb.x ], [ %i.hj, %.preheader204.1 ], [ %i.hr, %.preheader204.5 ], [ %i.hl, %.preheader204.2 ], [ %i.hp, %.preheader204.4 ], [ 0, %._crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret i32 %.2161
}

; Function Attrs: nounwind uwtable
define hidden range(i32 -2, 1) i32 @unicode_prop(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #7 {
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %1) #24 ; 2 uses
  br label %.preheader.i

.preheader.i:                                     ; preds = %bb.h, %bb.a
  %.01829.i = phi i32 [ %i.j, %bb.h ], [ 0, %bb.a ] ; 3 uses
  %.01928.i = phi ptr [ %i.i, %bb.h ], [ @unicode_prop_name_table, %bb.a ]
  br label %bb.b

bb.b:                                             ; preds = %bb.g, %.preheader.i
  %.1.i = phi ptr [ %i.i, %bb.g ], [ %.01928.i, %.preheader.i ] ; 5 uses
  %i.b = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %.1.i, i32 noundef 44) #24 ; 2 uses
  %.not23.i = icmp eq ptr %i.b, null              ; 2 uses
  br i1 %.not23.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.1.i) #24
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %.1.i to i64
  %i.f = sub i64 %i.d, %i.e
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i64 [ %i.f, %bb.d ], [ %i.c, %bb.c ] ; 2 uses
  %i.g = icmp eq i64 %.0.i, %i.a
  br i1 %i.g, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %bcmp.i = tail call i32 @bcmp(ptr nonnull %.1.i, ptr nonnull readonly %1, i64 %i.a)
  %.not24.i = icmp eq i32 %bcmp.i, 0
  br i1 %.not24.i, label %unicode_find_name.exit, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.h = getelementptr i8, ptr %.1.i, i64 %.0.i
  %i.i = getelementptr i8, ptr %i.h, i64 1        ; 3 uses
  br i1 %.not23.i, label %bb.h, label %bb.b

bb.h:                                             ; preds = %bb.g
  %i.j = add nuw nsw i32 %.01829.i, 1
  %i.k = load i8, ptr %i.i, align 1, !tbaa !16
  %.not.i = icmp eq i8 %i.k, 0
  br i1 %.not.i, label %cr_add_interval.exit, label %.preheader.i, !llvm.loop !3

unicode_find_name.exit:                           ; preds = %bb.f
  %i.l = add nuw nsw i32 %.01829.i, 20            ; 2 uses
  switch i32 %i.l, label %bb.af [
    i32 56, label %bb.i
    i32 58, label %bb.k
    i32 59, label %bb.m
    i32 73, label %bb.n
    i32 72, label %bb.o
    i32 74, label %bb.p
    i32 60, label %bb.q
    i32 57, label %bb.r
    i32 67, label %bb.s
    i32 68, label %bb.t
    i32 76, label %bb.u
    i32 75, label %bb.v
    i32 66, label %bb.w
    i32 63, label %bb.x
    i32 62, label %bb.y
    i32 65, label %bb.ab
    i32 61, label %bb.ac
    i32 64, label %bb.ad
    i32 69, label %bb.ae
  ]

bb.i:                                             ; preds = %unicode_find_name.exit
  %i.m = load i32, ptr %0, align 8, !tbaa !26     ; 2 uses
  %i.n = add nsw i32 %i.m, 2                      ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !25   ; 2 uses
  %i.q = icmp sgt i32 %i.n, %i.p
  br i1 %i.q, label %bb.j, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.i
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !24
  br label %cr_add_interval.exit.thread

bb.j:                                             ; preds = %bb.i
  %i.r = mul nsw i32 %i.p, 3
  %i.s = sdiv i32 %i.r, 2
  %..i.i.i = tail call range(i32 -1073741824, -2147483648) i32 @llvm.smax.i32(i32 %i.n, i32 range(i32 -1073741824, 1073741824) %i.s) ; 2 uses
end_hunk_3
begin_hunk_4_@__dbuf_put_u32:bb.a
bb.b:                                             ; preds = %bb.a
  %i.g = tail call fastcc i32 @dbuf_claim(ptr noundef nonnull %0, i64 noundef 4)
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %._crit_edge.i, label %dbuf_put.exit

._crit_edge.i:                                    ; preds = %bb.b
  %.pre.i = load i64, ptr %i.a, align 8, !tbaa !42
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge.i, %bb.a
  %i.h = phi i64 [ %.pre.i, %._crit_edge.i ], [ %i.b, %bb.a ]
  %i.i = load ptr, ptr %0, align 8, !tbaa !37
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.h
  store i32 %1, ptr %i.j, align 1
  %i.k = load i64, ptr %i.a, align 8, !tbaa !42
  %i.l = add i64 %i.k, 4
  store i64 %i.l, ptr %i.a, align 8, !tbaa !42
  br label %dbuf_put.exit

dbuf_put.exit:                                    ; preds = %bb.b, %bb.c
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: write) uwtable
define internal fastcc range(i32 -20, -2147483648) i32 @unicode_decomp_entry(ptr nofree noundef nonnull writeonly captures(none) %0, i32 noundef range(i32 0, 262270) %1, i32 noundef range(i32 0, 1073741824) %2, i32 noundef range(i32 0, 262144) %3, i32 noundef range(i32 0, 128) %4, i32 noundef range(i32 0, 64) %5) unnamed_addr #15 {
bb.a:
  %i.a = icmp eq i32 %5, 0
  %i.b = zext nneg i32 %2 to i64
  %i.c = getelementptr inbounds nuw [2 x i8], ptr @unicode_decomp_table2, i64 %i.b
  %i.d = load i16, ptr %i.c, align 2, !tbaa !18   ; 2 uses
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = zext i16 %i.d to i32
  store i32 %i.e, ptr %0, align 4, !tbaa !14
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.f = zext i16 %i.d to i64                     ; 3 uses
  %i.g = getelementptr i8, ptr @unicode_decomp_data, i64 %i.f ; 17 uses
  switch i32 %5, label %.loopexit [
    i32 1, label %bb.d
    i32 2, label %bb.d
    i32 3, label %bb.d
    i32 4, label %bb.d
    i32 5, label %bb.d
    i32 6, label %bb.d
    i32 7, label %bb.d
    i32 8, label %.lr.ph179.preheader
    i32 9, label %.lr.ph179.preheader
    i32 10, label %.lr.ph174.preheader
    i32 11, label %.lr.ph174.preheader
    i32 12, label %.lr.ph174.preheader
    i32 13, label %.lr.ph174.preheader
    i32 14, label %.lr.ph174.preheader
    i32 15, label %bb.l
    i32 16, label %bb.k
    i32 17, label %bb.k
    i32 18, label %bb.k
    i32 19, label %bb.k
    i32 20, label %bb.k
    i32 21, label %bb.k
    i32 30, label %.lr.ph.preheader
    i32 22, label %bb.m
    i32 23, label %bb.m
    i32 24, label %bb.m
    i32 25, label %bb.m
    i32 26, label %bb.m
    i32 27, label %bb.m
    i32 28, label %bb.m
    i32 29, label %bb.m
    i32 31, label %bb.n
    i32 32, label %bb.s
    i32 33, label %bb.t
    i32 34, label %bb.t
  ]

bb.d:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c
  %i.h = sub nsw i32 %1, %3
  %i.i = shl nsw i32 %i.h, 1
  %i.j = mul nsw i32 %i.i, %5
  %i.k = zext i32 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.k
  %wide.trip.count209 = zext nneg i32 %5 to i64
  br label %bb.f

bb.e:                                             ; preds = %bb.f
  %indvars.iv.next207 = add nuw nsw i64 %indvars.iv206, 1 ; 2 uses
  %exitcond210.not = icmp eq i64 %indvars.iv.next207, %wide.trip.count209
  br i1 %exitcond210.not, label %.loopexit, label %bb.f, !llvm.loop !114

bb.f:                                             ; preds = %bb.d, %bb.e
  %indvars.iv206 = phi i64 [ 0, %bb.d ], [ %indvars.iv.next207, %bb.e ] ; 3 uses
  %i.m = shl nuw nsw i64 %indvars.iv206, 1
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.m
  %.val155 = load i16, ptr %i.n, align 1          ; 2 uses
  %i.o = zext i16 %.val155 to i32
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv206
  store i32 %i.o, ptr %i.p, align 4, !tbaa !14
  %i.q = icmp eq i16 %.val155, 0
  br i1 %i.q, label %.loopexit, label %bb.e

.lr.ph179.preheader:                              ; preds = %bb.c, %bb.c
  %i.r = add nsw i32 %5, -7                       ; 4 uses
  %i.s = shl nuw nsw i32 %4, 1
  %i.t = mul nuw nsw i32 %i.s, %i.r
  %i.u = sub nsw i32 %1, %3
  %i.v = mul nsw i32 %i.r, %i.u
  %wide.trip.count204 = zext nneg i32 %i.r to i64
  br label %.lr.ph179

.lr.ph179:                                        ; preds = %.lr.ph179.preheader, %bb.g
  %indvars.iv201 = phi i64 [ 0, %.lr.ph179.preheader ], [ %indvars.iv.next202, %bb.g ] ; 2 uses
  %.0178 = phi i32 [ %i.v, %.lr.ph179.preheader ], [ %i.am, %bb.g ] ; 3 uses
  %i.w = shl i32 %.0178, 1                        ; 2 uses
  %i.x = zext i32 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.x
  %.val153 = load i16, ptr %i.y, align 1
  %i.z = zext i16 %.val153 to i32
  %i.aa = lshr i32 %.0178, 2
  %i.ab = add nuw nsw i32 %i.aa, %i.t
  %i.ac = zext nneg i32 %i.ab to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.ac
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !16
  %i.af = zext i8 %i.ae to i32
  %i.ag = and i32 %i.w, 6
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = shl nuw nsw i32 %i.ah, 16
  %i.aj = and i32 %i.ai, 196608
  %i.ak = or disjoint i32 %i.aj, %i.z             ; 2 uses
  %.not138 = icmp eq i32 %i.ak, 0
  br i1 %.not138, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %.lr.ph179
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv201
  store i32 %i.ak, ptr %i.al, align 4, !tbaa !14
  %i.am = add nsw i32 %.0178, 1
  %indvars.iv.next202 = add nuw nsw i64 %indvars.iv201, 1 ; 2 uses
  %exitcond205.not = icmp eq i64 %indvars.iv.next202, %wide.trip.count204
  br i1 %exitcond205.not, label %.loopexit, label %.lr.ph179, !llvm.loop !115

.lr.ph174.preheader:                              ; preds = %bb.c, %bb.c, %bb.c, %bb.c, %bb.c
  %i.an = add nsw i32 %5, -9                      ; 3 uses
  %i.ao = sub nsw i32 %1, %3
  %i.ap = mul nsw i32 %i.an, %i.ao
  %i.aq = zext i32 %i.ap to i64
  %i.ar = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.aq
  %wide.trip.count199 = zext nneg i32 %i.an to i64
  br label %.lr.ph174

.lr.ph174:                                        ; preds = %.lr.ph174.preheader, %bb.j
  %indvars.iv196 = phi i64 [ 0, %.lr.ph174.preheader ], [ %indvars.iv.next197, %bb.j ] ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %indvars.iv196
  %i.at = load i8, ptr %i.as, align 1, !tbaa !16  ; 4 uses
  %i.au = zext i8 %i.at to i32                    ; 2 uses
  %i.av = icmp sgt i8 %i.at, -1
  br i1 %i.av, label %unicode_get_short_code.exit, label %bb.h

bb.h:                                             ; preds = %.lr.ph174
  %i.aw = icmp samesign ult i8 %i.at, -48
  br i1 %i.aw, label %unicode_get_short_code.exit.thread, label %bb.i

unicode_get_short_code.exit.thread:               ; preds = %bb.h
  %i.ax = add nuw nsw i32 %i.au, 640
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv196
  store i32 %i.ax, ptr %i.ay, align 4, !tbaa !14
  br label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.az = zext i8 %i.at to i64
  %i.ba = getelementptr [2 x i8], ptr @unicode_get_short_code.unicode_short_table, i64 %i.az
  %i.bb = getelementptr i8, ptr %i.ba, i64 -416
  %i.bc = load i16, ptr %i.bb, align 2, !tbaa !18
  %i.bd = zext i16 %i.bc to i32
  br label %unicode_get_short_code.exit

unicode_get_short_code.exit:                      ; preds = %.lr.ph174, %bb.i
  %.0.i = phi i32 [ %i.bd, %bb.i ], [ %i.au, %.lr.ph174 ] ; 2 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv196
  store i32 %.0.i, ptr %i.be, align 4, !tbaa !14
  %i.bf = icmp eq i32 %.0.i, 0
  br i1 %i.bf, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %unicode_get_short_code.exit.thread, %unicode_get_short_code.exit
  %indvars.iv.next197 = add nuw nsw i64 %indvars.iv196, 1 ; 2 uses
  %exitcond200.not = icmp eq i64 %indvars.iv.next197, %wide.trip.count199
  br i1 %exitcond200.not, label %.loopexit, label %.lr.ph174, !llvm.loop !116

bb.k:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c
  %i.bg = add nsw i32 %5, -16
  %i.bh = lshr i32 %i.bg, 1                       ; 2 uses
  %i.bi = add nuw nsw i32 %i.bh, 2
  %i.bj = and i32 %5, 1
  %i.bk = icmp ne i32 %i.bh, 0
  %i.bl = zext i1 %i.bk to i32
  %i.bm = add nuw nsw i32 %i.bj, %i.bl
  %i.bn = zext nneg i32 %i.bm to i64
  br label %bb.l

bb.l:                                             ; preds = %bb.c, %bb.k
  %.0125 = phi i32 [ %i.bi, %bb.k ], [ 1, %bb.c ] ; 6 uses
  %.0123 = phi i64 [ %i.bn, %bb.k ], [ 0, %bb.c ] ; 4 uses
  %i.bo = sub nsw i32 %1, %3                      ; 4 uses
  %wide.trip.count194 = zext i32 %.0125 to i64    ; 6 uses
  %min.iters.check237 = icmp ult i32 %.0125, 8
  br i1 %min.iters.check237, label %scalar.ph236.preheader, label %vector.memcheck230

vector.memcheck230:                               ; preds = %bb.l
  %i.bp = shl nuw nsw i64 %wide.trip.count194, 2
  %scevgep231.a = getelementptr i8, ptr %0, i64 %i.bp
  %i.bq = shl nuw nsw i64 %wide.trip.count194, 1
  %i.br = getelementptr i8, ptr @unicode_decomp_data, i64 %i.bq
  %scevgep232 = getelementptr i8, ptr %i.br, i64 %i.f
  %bound0233 = icmp ult ptr %0, %scevgep232
  %bound1234 = icmp ult ptr %i.g, %scevgep231.a
  %found.conflict235 = and i1 %bound0233, %bound1234
  br i1 %found.conflict235, label %scalar.ph236.preheader, label %vector.ph238

vector.ph238:                                     ; preds = %vector.memcheck230
  %n.vec239 = and i64 %wide.trip.count194, 2147483644 ; 3 uses
  %broadcast.splatinsert240 = insertelement <4 x i64> poison, i64 %.0123, i64 0
  %broadcast.splat241 = shufflevector <4 x i64> %broadcast.splatinsert240, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert242 = insertelement <4 x i32> poison, i32 %i.bo, i64 0
  %broadcast.splat243 = shufflevector <4 x i32> %broadcast.splatinsert242, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body244

vector.body244:                                   ; preds = %vector.body244, %vector.ph238
  %index245 = phi i64 [ 0, %vector.ph238 ], [ %index.next247, %vector.body244 ] ; 3 uses
  %vec.ind = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph238 ], [ %vec.ind.next, %vector.body244 ] ; 2 uses
  %i.bs = shl nuw nsw i64 %index245, 1
  %i.bt = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.bs
  %wide.load246 = load <4 x i16>, ptr %i.bt, align 1, !alias.scope !127
  %i.bu = zext <4 x i16> %wide.load246 to <4 x i32>
  %i.bv = icmp eq <4 x i64> %vec.ind, %broadcast.splat241
  %i.bw = select <4 x i1> %i.bv, <4 x i32> %broadcast.splat243, <4 x i32> zeroinitializer
  %i.bx = add nsw <4 x i32> %i.bw, %i.bu
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index245
  store <4 x i32> %i.bx, ptr %i.by, align 4, !tbaa !14, !alias.scope !128, !noalias !127
  %index.next247 = add nuw i64 %index245, 4       ; 2 uses
  %vec.ind.next = add nuw nsw <4 x i64> %vec.ind, splat (i64 4)
  %i.bz = icmp eq i64 %index.next247, %n.vec239
  br i1 %i.bz, label %middle.block248, label %vector.body244, !llvm.loop !120

middle.block248:                                  ; preds = %vector.body244
  %cmp.n249 = icmp eq i64 %n.vec239, %wide.trip.count194
  br i1 %cmp.n249, label %.loopexit, label %scalar.ph236.preheader

scalar.ph236.preheader:                           ; preds = %vector.memcheck230, %bb.l, %middle.block248
  %indvars.iv191.ph = phi i64 [ 0, %vector.memcheck230 ], [ 0, %bb.l ], [ %n.vec239, %middle.block248 ] ; 6 uses
  %6 = trunc i32 %.0125 to i1
  br i1 %6, label %scalar.ph236.prol, label %scalar.ph236.prol.loopexit

scalar.ph236.prol:                                ; preds = %scalar.ph236.preheader
  %i.ca = shl nuw nsw i64 %indvars.iv191.ph, 1
  %i.cb = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.ca
  %.val151.prol = load i16, ptr %i.cb, align 1
  %i.cc = zext i16 %.val151.prol to i32
  %i.cd = icmp eq i64 %indvars.iv191.ph, %.0123
  %i.ce = select i1 %i.cd, i32 %i.bo, i32 0
  %.0127.prol = add nsw i32 %i.ce, %i.cc
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv191.ph
  store i32 %.0127.prol, ptr %i.cf, align 4, !tbaa !14
  %indvars.iv.next192.prol = or disjoint i64 %indvars.iv191.ph, 1
  br label %scalar.ph236.prol.loopexit

scalar.ph236.prol.loopexit:                       ; preds = %scalar.ph236.prol, %scalar.ph236.preheader
  %indvars.iv191.unr = phi i64 [ %indvars.iv191.ph, %scalar.ph236.preheader ], [ %indvars.iv.next192.prol, %scalar.ph236.prol ]
  %i.cg = add nsw i64 %wide.trip.count194, -1
  %i.ch = icmp eq i64 %indvars.iv191.ph, %i.cg
  br i1 %i.ch, label %.loopexit, label %scalar.ph236

scalar.ph236:                                     ; preds = %scalar.ph236.prol.loopexit, %scalar.ph236
  %indvars.iv191 = phi i64 [ %indvars.iv.next192.1, %scalar.ph236 ], [ %indvars.iv191.unr, %scalar.ph236.prol.loopexit ] ; 5 uses
  %i.ci = shl nuw nsw i64 %indvars.iv191, 1
  %i.cj = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.ci
  %.val151 = load i16, ptr %i.cj, align 1
  %i.ck = zext i16 %.val151 to i32
  %i.cl = icmp eq i64 %indvars.iv191, %.0123
  %i.cm = select i1 %i.cl, i32 %i.bo, i32 0
  %.0127 = add nsw i32 %i.cm, %i.ck
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv191
  store i32 %.0127, ptr %i.cn, align 4, !tbaa !14
  %indvars.iv.next192 = add nuw nsw i64 %indvars.iv191, 1 ; 3 uses
  %i.co = shl nuw nsw i64 %indvars.iv.next192, 1
  %i.cp = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.co
  %.val151.1 = load i16, ptr %i.cp, align 1
  %i.cq = zext i16 %.val151.1 to i32
  %i.cr = icmp eq i64 %indvars.iv.next192, %.0123
  %i.cs = select i1 %i.cr, i32 %i.bo, i32 0
  %.0127.1 = add nsw i32 %i.cs, %i.cq
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next192
  store i32 %.0127.1, ptr %i.ct, align 4, !tbaa !14
  %indvars.iv.next192.1 = add nuw nsw i64 %indvars.iv191, 2 ; 2 uses
  %exitcond195.not.1 = icmp eq i64 %indvars.iv.next192.1, %wide.trip.count194
  br i1 %exitcond195.not.1, label %.loopexit, label %scalar.ph236, !llvm.loop !121

bb.m:                                             ; preds = %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c, %bb.c
  %i.cu = add nsw i32 %5, -21
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.m, %bb.c
  %.1126 = phi i32 [ %i.cu, %bb.m ], [ 18, %bb.c ] ; 7 uses
  %.val149 = load i16, ptr %i.g, align 1
  %i.cv = zext i16 %.val149 to i32                ; 4 uses
  %i.cw = sub nsw i32 %1, %3
  %i.cx = mul nsw i32 %.1126, %i.cw
  %i.cy = add nsw i32 %i.cx, 2
  %i.cz = zext i32 %i.cy to i64                   ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.cz ; 5 uses
  %wide.trip.count = zext i32 %.1126 to i64       ; 6 uses
  %min.iters.check = icmp ult i32 %.1126, 12
  br i1 %min.iters.check, label %.lr.ph.preheader256, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.db = shl nuw nsw i64 %wide.trip.count, 2
  %scevgep = getelementptr i8, ptr %0, i64 %i.db
  %i.dc = getelementptr i8, ptr @unicode_decomp_data, i64 %wide.trip.count
  %i.dd = getelementptr i8, ptr %i.dc, i64 %i.f
  %scevgep228 = getelementptr i8, ptr %i.dd, i64 %i.cz
  %bound0 = icmp ult ptr %0, %scevgep228
  %bound1 = icmp ult ptr %i.da, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader256, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.cv, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.da, i64 %index ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 4
  %wide.load = load <4 x i8>, ptr %i.de, align 1, !tbaa !16, !alias.scope !129 ; 2 uses
  %wide.load229 = load <4 x i8>, ptr %i.df, align 1, !tbaa !16, !alias.scope !129 ; 2 uses
  %i.dg = icmp eq <4 x i8> %wide.load, splat (i8 -1)
  %i.dh = icmp eq <4 x i8> %wide.load229, splat (i8 -1)
  %i.di = zext <4 x i8> %wide.load to <4 x i32>
  %i.dj = zext <4 x i8> %wide.load229 to <4 x i32>
  %i.dk = add nuw nsw <4 x i32> %broadcast.splat, %i.di
  %i.dl = add nuw nsw <4 x i32> %broadcast.splat, %i.dj
  %i.dm = select <4 x i1> %i.dg, <4 x i32> splat (i32 32), <4 x i32> %i.dk
  %i.dn = select <4 x i1> %i.dh, <4 x i32> splat (i32 32), <4 x i32> %i.dl
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  store <4 x i32> %i.dm, ptr %i.do, align 4, !tbaa !14, !alias.scope !130, !noalias !129
  store <4 x i32> %i.dn, ptr %i.dp, align 4, !tbaa !14, !alias.scope !130, !noalias !129
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dq = icmp eq i64 %index.next, %n.vec
  br i1 %i.dq, label %middle.block, label %vector.body, !llvm.loop !125

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.preheader256

.lr.ph.preheader256:                              ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 5 uses
  %7 = trunc i32 %.1126 to i1
  br i1 %7, label %.lr.ph.prol, label %.lr.ph.prol.loopexit

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader256
  %i.dr = getelementptr inbounds nuw i8, ptr %i.da, i64 %indvars.iv.ph
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !16  ; 2 uses
  %i.dt = icmp eq i8 %i.ds, -1
  %i.du = zext i8 %i.ds to i32
  %i.dv = add nuw nsw i32 %i.du, %i.cv
  %.1128.prol = select i1 %i.dt, i32 32, i32 %i.dv
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.ph
  store i32 %.1128.prol, ptr %i.dw, align 4, !tbaa !14
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader256
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader256 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.dx = add nsw i64 %wide.trip.count, -1
  %i.dy = icmp eq i64 %indvars.iv.ph, %i.dx
  br i1 %i.dy, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 4 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.da, i64 %indvars.iv
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !16  ; 2 uses
  %i.eb = icmp eq i8 %i.ea, -1
  %i.ec = zext i8 %i.ea to i32
  %i.ed = add nuw nsw i32 %i.ec, %i.cv
  %.1128 = select i1 %i.eb, i32 32, i32 %i.ed
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  store i32 %.1128, ptr %i.ee, align 4, !tbaa !14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.da, i64 %indvars.iv.next
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !16  ; 2 uses
  %i.eh = icmp eq i8 %i.eg, -1
  %i.ei = zext i8 %i.eg to i32
  %i.ej = add nuw nsw i32 %i.ei, %i.cv
  %.1128.1 = select i1 %i.eh, i32 32, i32 %i.ej
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next
  store i32 %.1128.1, ptr %i.ek, align 4, !tbaa !14
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %.loopexit, label %.lr.ph, !llvm.loop !126

bb.n:                                             ; preds = %bb.c
  %i.el = sub nsw i32 %1, %3
  %i.em = mul nsw i32 %i.el, 3
  %i.en = zext i32 %i.em to i64
  %i.eo = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.en ; 2 uses
  %.val147 = load i16, ptr %i.eo, align 1         ; 2 uses
  %i.ep = zext i16 %.val147 to i32
  store i32 %i.ep, ptr %0, align 4, !tbaa !14
  %.not137 = icmp eq i16 %.val147, 0
  br i1 %.not137, label %.loopexit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eo, i64 2
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !16  ; 4 uses
  %i.es = zext i8 %i.er to i32                    ; 2 uses
  %i.et = icmp sgt i8 %i.er, -1
  br i1 %i.et, label %unicode_get_short_code.exit158, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.eu = icmp samesign ult i8 %i.er, -48
  br i1 %i.eu, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ev = add nuw nsw i32 %i.es, 640
  br label %unicode_get_short_code.exit158

bb.r:                                             ; preds = %bb.p
  %i.ew = zext i8 %i.er to i64
  %i.ex = getelementptr [2 x i8], ptr @unicode_get_short_code.unicode_short_table, i64 %i.ew
  %i.ey = getelementptr i8, ptr %i.ex, i64 -416
  %i.ez = load i16, ptr %i.ey, align 2, !tbaa !18
  %i.fa = zext i16 %i.ez to i32
  br label %unicode_get_short_code.exit158

unicode_get_short_code.exit158:                   ; preds = %bb.o, %bb.q, %bb.r
  %.0.i157 = phi i32 [ %i.fa, %bb.r ], [ %i.ev, %bb.q ], [ %i.es, %bb.o ]
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.0.i157, ptr %i.fb, align 4, !tbaa !14
  br label %.loopexit

bb.s:                                             ; preds = %bb.c
  %.val145 = load i16, ptr %i.g, align 1
  %i.fc = zext i16 %.val145 to i32
  store i32 %i.fc, ptr %0, align 4, !tbaa !14
  %i.fd = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  %.val143 = load i16, ptr %i.fd, align 1
  %i.fe = zext i16 %.val143 to i32
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.fe, ptr %i.ff, align 4, !tbaa !14
  %i.fg = sub nsw i32 %1, %3
  %i.fh = shl nsw i32 %i.fg, 1
  %i.fi = add nsw i32 %i.fh, 4
  %i.fj = zext i32 %i.fi to i64
  %i.fk = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.fj
  %.val141 = load i16, ptr %i.fk, align 1
  %i.fl = zext i16 %.val141 to i32
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %i.fl, ptr %i.fm, align 4, !tbaa !14
  br label %.loopexit

bb.t:                                             ; preds = %bb.c, %bb.c
  %i.fn = sub nsw i32 %1, %3                      ; 3 uses
  %i.fo = icmp eq i32 %5, 33
  br i1 %i.fo, label %bb.u, label %bb.y

bb.u:                                             ; preds = %bb.t
  %i.fp = and i32 %i.fn, -2
  %i.fq = zext i32 %i.fp to i64
  %i.fr = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.fq ; 2 uses
  %i.fs = load i8, ptr %i.fr, align 1, !tbaa !16  ; 4 uses
  %i.ft = zext i8 %i.fs to i32                    ; 2 uses
  %i.fu = icmp sgt i8 %i.fs, -1
  br i1 %i.fu, label %unicode_get_short_code.exit160, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.fv = icmp samesign ult i8 %i.fs, -48
  br i1 %i.fv, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.fw = add nuw nsw i32 %i.ft, 640
  br label %unicode_get_short_code.exit160

bb.x:                                             ; preds = %bb.v
  %i.fx = zext i8 %i.fs to i64
  %i.fy = getelementptr [2 x i8], ptr @unicode_get_short_code.unicode_short_table, i64 %i.fx
  %i.fz = getelementptr i8, ptr %i.fy, i64 -416
  %i.ga = load i16, ptr %i.fz, align 2, !tbaa !18
  %i.gb = zext i16 %i.ga to i32
  br label %unicode_get_short_code.exit160

unicode_get_short_code.exit160:                   ; preds = %bb.u, %bb.w, %bb.x
  %.0.i159 = phi i32 [ %i.gb, %bb.x ], [ %i.fw, %bb.w ], [ %i.ft, %bb.u ]
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fr, i64 1
  br label %bb.z

bb.y:                                             ; preds = %bb.t
  %i.gd = lshr i32 %i.fn, 1
  %i.ge = mul i32 %i.gd, 3
  %i.gf = zext i32 %i.ge to i64
  %i.gg = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.gf ; 2 uses
  %.val = load i16, ptr %i.gg, align 1
  %i.gh = zext i16 %.val to i32
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gg, i64 2
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %unicode_get_short_code.exit160
  %.0131 = phi i32 [ %.0.i159, %unicode_get_short_code.exit160 ], [ %i.gh, %bb.y ] ; 4 uses
  %.0122 = phi ptr [ %i.gc, %unicode_get_short_code.exit160 ], [ %i.gi, %bb.y ]
  %8 = trunc i32 %i.fn to i1
  br i1 %8, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.gj = icmp samesign ult i32 %.0131, 256
  %i.gk = add nsw i32 %.0131, -1040
  %or.cond.i = icmp ult i32 %i.gk, 32
  %or.cond8.i = select i1 %i.gj, i1 true, i1 %or.cond.i
  %.0.v.i = select i1 %or.cond8.i, i32 32, i32 1
  %.0.i161.a = add nuw nsw i32 %.0.v.i, %.0131
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.1132 = phi i32 [ %.0.i161.a, %bb.aa ], [ %.0131, %bb.z ]
  store i32 %.1132, ptr %0, align 4, !tbaa !14
  %i.gl = load i8, ptr %.0122, align 1, !tbaa !16 ; 4 uses
  %i.gm = zext i8 %i.gl to i32                    ; 2 uses
  %i.gn = icmp sgt i8 %i.gl, -1
  br i1 %i.gn, label %unicode_get_short_code.exit163, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.go = icmp samesign ult i8 %i.gl, -48
  br i1 %i.go, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.gp = add nuw nsw i32 %i.gm, 640
  br label %unicode_get_short_code.exit163

bb.ae:                                            ; preds = %bb.ac
  %i.gq = zext i8 %i.gl to i64
  %i.gr = getelementptr [2 x i8], ptr @unicode_get_short_code.unicode_short_table, i64 %i.gq
  %i.gs = getelementptr i8, ptr %i.gr, i64 -416
  %i.gt = load i16, ptr %i.gs, align 2, !tbaa !18
  %i.gu = zext i16 %i.gt to i32
  br label %unicode_get_short_code.exit163

unicode_get_short_code.exit163:                   ; preds = %bb.ab, %bb.ad, %bb.ae
  %.0.i162 = phi i32 [ %i.gu, %bb.ae ], [ %i.gp, %bb.ad ], [ %i.gm, %bb.ab ]
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.0.i162, ptr %i.gv, align 4, !tbaa !14
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %scalar.ph236.prol.loopexit, %scalar.ph236, %unicode_get_short_code.exit, %bb.j, %bb.g, %.lr.ph179, %bb.e, %bb.f, %middle.block, %middle.block248, %bb.c, %bb.n, %unicode_get_short_code.exit163, %bb.s, %unicode_get_short_code.exit158, %bb.b
  %.1130 = phi i32 [ 1, %bb.b ], [ 0, %bb.n ], [ 2, %unicode_get_short_code.exit163 ], [ 0, %bb.f ], [ 0, %.lr.ph179 ], [ 0, %bb.c ], [ 3, %bb.s ], [ 2, %unicode_get_short_code.exit158 ], [ 0, %unicode_get_short_code.exit ], [ %.0125, %middle.block248 ], [ %.1126, %middle.block ], [ %.0125, %scalar.ph236.prol.loopexit ], [ %5, %bb.e ], [ %i.r, %bb.g ], [ %i.an, %bb.j ], [ %.0125, %scalar.ph236 ], [ %.1126, %.lr.ph ], [ %.1126, %.lr.ph.prol.loopexit ]
  ret i32 %.1130
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #12

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @exchange_one_int64(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, i64 %2) unnamed_addr #16 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !48
  %i.b = load i64, ptr %1, align 8, !tbaa !48
  store i64 %i.b, ptr %0, align 8, !tbaa !48
  store i64 %i.a, ptr %1, align 8, !tbaa !48
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @exchange_int64s(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, i64 noundef %2) unnamed_addr #17 {
bb.a:
  %i.a = lshr i64 %2, 3                           ; 6 uses
  %.not10 = icmp eq i64 %i.a, 0
  br i1 %.not10, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %min.iters.check = icmp ult i64 %2, 64
  br i1 %min.iters.check, label %.lr.ph.preheader21, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.b = and i64 %2, -8                           ; 2 uses
  %scevgep = getelementptr i8, ptr %0, i64 %i.b
  %scevgep14 = getelementptr i8, ptr %1, i64 %i.b
  %bound0 = icmp ult ptr %0, %scevgep14
  %bound1 = icmp ult ptr %1, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader21, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.a, 2305843009213693948      ; 3 uses
  %i.c = and i64 %i.a, 3
  %i.d = shl nuw i64 %n.vec, 3                    ; 2 uses
  %i.e = getelementptr i8, ptr %1, i64 %i.d
  %i.f = getelementptr i8, ptr %0, i64 %i.d
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.g = shl i64 %index, 3                        ; 2 uses
  %next.gep = getelementptr i8, ptr %1, i64 %i.g  ; 3 uses
  %next.gep15 = getelementptr i8, ptr %0, i64 %i.g ; 3 uses
  %i.h = getelementptr i8, ptr %next.gep15, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %next.gep15, align 8, !tbaa !48, !alias.scope !137, !noalias !138
  %wide.load16 = load <2 x i64>, ptr %i.h, align 8, !tbaa !48, !alias.scope !137, !noalias !138
  %i.i = getelementptr i8, ptr %next.gep, i64 16  ; 2 uses
  %wide.load17 = load <2 x i64>, ptr %next.gep, align 8, !tbaa !48, !alias.scope !138
  %wide.load18 = load <2 x i64>, ptr %i.i, align 8, !tbaa !48, !alias.scope !138
  store <2 x i64> %wide.load17, ptr %next.gep15, align 8, !tbaa !48, !alias.scope !137, !noalias !138
  store <2 x i64> %wide.load18, ptr %i.h, align 8, !tbaa !48, !alias.scope !137, !noalias !138
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !48, !alias.scope !138
  store <2 x i64> %wide.load16, ptr %i.i, align 8, !tbaa !48, !alias.scope !138
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.j = icmp eq i64 %index.next, %n.vec
  br i1 %i.j, label %middle.block, label %vector.body, !llvm.loop !134

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.a, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader21

.lr.ph.preheader21:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.013.ph = phi i64 [ %i.a, %vector.memcheck ], [ %i.a, %.lr.ph.preheader ], [ %i.c, %middle.block ] ; 4 uses
  %.0812.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph.preheader ], [ %i.e, %middle.block ] ; 2 uses
  %.0911.ph = phi ptr [ %0, %vector.memcheck ], [ %0, %.lr.ph.preheader ], [ %i.f, %middle.block ] ; 2 uses
  %i.k = add nsw i64 %.013.ph, -1
  %xtraiter = and i64 %.013.ph, 3                 ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader21, %.lr.ph.prol
  %.013.prol = phi i64 [ %i.l, %.lr.ph.prol ], [ %.013.ph, %.lr.ph.preheader21 ]
  %.0812.prol = phi ptr [ %i.p, %.lr.ph.prol ], [ %.0812.ph, %.lr.ph.preheader21 ] ; 3 uses
  %.0911.prol = phi ptr [ %i.o, %.lr.ph.prol ], [ %.0911.ph, %.lr.ph.preheader21 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader21 ]
  %i.l = add nsw i64 %.013.prol, -1               ; 2 uses
  %i.m = load i64, ptr %.0911.prol, align 8, !tbaa !48
  %i.n = load i64, ptr %.0812.prol, align 8, !tbaa !48
  %i.o = getelementptr inbounds nuw i8, ptr %.0911.prol, i64 8 ; 2 uses
  store i64 %i.n, ptr %.0911.prol, align 8, !tbaa !48
  %i.p = getelementptr inbounds nuw i8, ptr %.0812.prol, i64 8 ; 2 uses
  store i64 %i.m, ptr %.0812.prol, align 8, !tbaa !48
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !135

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader21
  %.013.unr = phi i64 [ %.013.ph, %.lr.ph.preheader21 ], [ %i.l, %.lr.ph.prol ]
  %.0812.unr = phi ptr [ %.0812.ph, %.lr.ph.preheader21 ], [ %i.p, %.lr.ph.prol ]
  %.0911.unr = phi ptr [ %.0911.ph, %.lr.ph.preheader21 ], [ %i.o, %.lr.ph.prol ]
  %i.q = icmp ult i64 %i.k, 3
  br i1 %i.q, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.013 = phi i64 [ %i.ad, %.lr.ph ], [ %.013.unr, %.lr.ph.prol.loopexit ]
  %.0812 = phi ptr [ %i.ah, %.lr.ph ], [ %.0812.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %.0911 = phi ptr [ %i.ag, %.lr.ph ], [ %.0911.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %i.r = load i64, ptr %.0911, align 8, !tbaa !48
  %i.s = load i64, ptr %.0812, align 8, !tbaa !48
  %i.t = getelementptr inbounds nuw i8, ptr %.0911, i64 8 ; 2 uses
  store i64 %i.s, ptr %.0911, align 8, !tbaa !48
  %i.u = getelementptr inbounds nuw i8, ptr %.0812, i64 8 ; 2 uses
  store i64 %i.r, ptr %.0812, align 8, !tbaa !48
  %i.v = load i64, ptr %i.t, align 8, !tbaa !48
  %i.w = load i64, ptr %i.u, align 8, !tbaa !48
  %i.x = getelementptr inbounds nuw i8, ptr %.0911, i64 16 ; 2 uses
  store i64 %i.w, ptr %i.t, align 8, !tbaa !48
  %i.y = getelementptr inbounds nuw i8, ptr %.0812, i64 16 ; 2 uses
  store i64 %i.v, ptr %i.u, align 8, !tbaa !48
  %i.z = load i64, ptr %i.x, align 8, !tbaa !48
  %i.aa = load i64, ptr %i.y, align 8, !tbaa !48
  %i.ab = getelementptr inbounds nuw i8, ptr %.0911, i64 24 ; 2 uses
  store i64 %i.aa, ptr %i.x, align 8, !tbaa !48
  %i.ac = getelementptr inbounds nuw i8, ptr %.0812, i64 24 ; 2 uses
  store i64 %i.z, ptr %i.y, align 8, !tbaa !48
  %i.ad = add nsw i64 %.013, -4                   ; 2 uses
  %i.ae = load i64, ptr %i.ab, align 8, !tbaa !48
  %i.af = load i64, ptr %i.ac, align 8, !tbaa !48
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911, i64 32
  store i64 %i.af, ptr %i.ab, align 8, !tbaa !48
  %i.ah = getelementptr inbounds nuw i8, ptr %.0812, i64 32
  store i64 %i.ae, ptr %i.ac, align 8, !tbaa !48
  %.not.3 = icmp eq i64 %i.ad, 0
  br i1 %.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !136

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal void @exchange_int32s(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, i64 noundef %2) unnamed_addr #17 {
bb.a:
  %i.a = lshr i64 %2, 2                           ; 6 uses
  %.not10 = icmp eq i64 %i.a, 0
  br i1 %.not10, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %min.iters.check = icmp ult i64 %2, 32
  br i1 %min.iters.check, label %.lr.ph.preheader21, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.b = and i64 %2, -4                           ; 2 uses
  %scevgep = getelementptr i8, ptr %0, i64 %i.b
  %scevgep14 = getelementptr i8, ptr %1, i64 %i.b
  %bound0 = icmp ult ptr %0, %scevgep14
  %bound1 = icmp ult ptr %1, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader21, label %vector.ph

end_hunk_4
