inline.NumInlined: 5
inline.NumDeleted: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@jinit_c_master_control:bb.a
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.r
  %i.bq = phi i32 [ %i.cc, %bb.r ], [ %i.bk, %.lr.ph.i.preheader ]
  %i.br = phi i32 [ %i.ch, %bb.r ], [ 1, %.lr.ph.i.preheader ]
  %i.bs = phi i32 [ %..i, %bb.r ], [ 1, %.lr.ph.i.preheader ]
  %.096.i = phi i32 [ %i.ci, %bb.r ], [ 0, %.lr.ph.i.preheader ]
  %.08595.i = phi ptr [ %i.cj, %bb.r ], [ %i.bp, %.lr.ph.i.preheader ] ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.08595.i, i64 8 ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !52 ; 2 uses
  %i.bv = add i32 %i.bu, -5
  %or.cond.i = icmp ult i32 %i.bv, -4
  br i1 %or.cond.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i
  %i.bw = getelementptr inbounds nuw i8, ptr %.08595.i, i64 12
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !54 ; 2 uses
  %i.by = add i32 %i.bx, -5
  %or.cond94.i = icmp ult i32 %i.by, -4
  br i1 %or.cond94.i, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p, %.lr.ph.i
  %i.bz = load ptr, ptr %0, align 8, !tbaa !40    ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 40
  store i32 16, ptr %i.ca, align 8, !tbaa !41
  %i.cb = load ptr, ptr %i.bz, align 8, !tbaa !45
  tail call void %i.cb(ptr noundef nonnull %0) #5, !inline_history !46
  %.pre104.i = load i32, ptr %i.bl, align 8, !tbaa !49
  %.pre105.i = load i32, ptr %i.bt, align 8, !tbaa !52
  %.pre106.i = load i32, ptr %i.bm, align 4, !tbaa !50
  %.phi.trans.insert107.i = getelementptr inbounds nuw i8, ptr %.08595.i, i64 12
  %.pre108.i = load i32, ptr %.phi.trans.insert107.i, align 4, !tbaa !54
  %.pre109.i = load i32, ptr %i.ba, align 4, !tbaa !38
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.cc = phi i32 [ %i.bq, %bb.p ], [ %.pre109.i, %bb.q ] ; 3 uses
  %i.cd = phi i32 [ %i.bx, %bb.p ], [ %.pre108.i, %bb.q ]
  %i.ce = phi i32 [ %i.br, %bb.p ], [ %.pre106.i, %bb.q ]
  %i.cf = phi i32 [ %i.bu, %bb.p ], [ %.pre105.i, %bb.q ]
  %i.cg = phi i32 [ %i.bs, %bb.p ], [ %.pre104.i, %bb.q ]
  %..i = tail call i32 @llvm.smax.i32(i32 %i.cg, i32 %i.cf) ; 2 uses
  store i32 %..i, ptr %i.bl, align 8, !tbaa !49
  %i.ch = tail call i32 @llvm.smax.i32(i32 %i.ce, i32 %i.cd) ; 3 uses
  store i32 %i.ch, ptr %i.bm, align 4, !tbaa !50
  %i.ci = add nuw nsw i32 %.096.i, 1              ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.08595.i, i64 96
  %i.ck = icmp slt i32 %i.ci, %i.cc
  br i1 %i.ck, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !55

._crit_edge.i:                                    ; preds = %bb.r
  %i.cl = icmp sgt i32 %i.cc, 0
  br i1 %i.cl, label %.lr.ph100.i.preheader, label %initial_setup.exit

.lr.ph100.i.preheader:                            ; preds = %._crit_edge.i
  %.pre110.i = load ptr, ptr %i.bn, align 8, !tbaa !51
  br label %.lr.ph100.i

.lr.ph100.i:                                      ; preds = %.lr.ph100.i.preheader, %.lr.ph100.i
  %.198.i = phi i32 [ %i.eh, %.lr.ph100.i ], [ 0, %.lr.ph100.i.preheader ] ; 2 uses
  %.18697.i = phi ptr [ %i.ei, %.lr.ph100.i ], [ %.pre110.i, %.lr.ph100.i.preheader ] ; 10 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.18697.i, i64 4
  store i32 %.198.i, ptr %i.cm, align 4, !tbaa !57
  %i.cn = getelementptr inbounds nuw i8, ptr %.18697.i, i64 36
  store i32 8, ptr %i.cn, align 4, !tbaa !58
  %i.co = load i32, ptr %i.ak, align 8, !tbaa !37
  %i.cp = zext i32 %i.co to i64
  %i.cq = getelementptr inbounds nuw i8, ptr %.18697.i, i64 8 ; 2 uses
  %i.cr = load i32, ptr %i.cq, align 8, !tbaa !52
  %i.cs = sext i32 %i.cr to i64
  %i.ct = mul nsw i64 %i.cs, %i.cp
  %i.cu = load i32, ptr %i.bl, align 8, !tbaa !49
  %i.cv = shl nsw i32 %i.cu, 3
  %i.cw = sext i32 %i.cv to i64
  %i.cx = tail call i64 @jdiv_round_up(i64 noundef %i.ct, i64 noundef %i.cw) #5
  %i.cy = trunc i64 %i.cx to i32
  %i.cz = getelementptr inbounds nuw i8, ptr %.18697.i, i64 28
  store i32 %i.cy, ptr %i.cz, align 4, !tbaa !59
  %i.da = load i32, ptr %i.k, align 4, !tbaa !36
  %i.db = zext i32 %i.da to i64
  %i.dc = getelementptr inbounds nuw i8, ptr %.18697.i, i64 12 ; 2 uses
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !54
  %i.de = sext i32 %i.dd to i64
  %i.df = mul nsw i64 %i.de, %i.db
  %i.dg = load i32, ptr %i.bm, align 4, !tbaa !50
  %i.dh = shl nsw i32 %i.dg, 3
  %i.di = sext i32 %i.dh to i64
  %i.dj = tail call i64 @jdiv_round_up(i64 noundef %i.df, i64 noundef %i.di) #5
  %i.dk = trunc i64 %i.dj to i32
  %i.dl = getelementptr inbounds nuw i8, ptr %.18697.i, i64 32
  store i32 %i.dk, ptr %i.dl, align 8, !tbaa !60
  %i.dm = load i32, ptr %i.ak, align 8, !tbaa !37
  %i.dn = zext i32 %i.dm to i64
  %i.do = load i32, ptr %i.cq, align 8, !tbaa !52
  %i.dp = sext i32 %i.do to i64
  %i.dq = mul nsw i64 %i.dp, %i.dn
  %i.dr = load i32, ptr %i.bl, align 8, !tbaa !49
  %i.ds = sext i32 %i.dr to i64
  %i.dt = tail call i64 @jdiv_round_up(i64 noundef %i.dq, i64 noundef %i.ds) #5
  %i.du = trunc i64 %i.dt to i32
  %i.dv = getelementptr inbounds nuw i8, ptr %.18697.i, i64 40
  store i32 %i.du, ptr %i.dv, align 8, !tbaa !61
  %i.dw = load i32, ptr %i.k, align 4, !tbaa !36
  %i.dx = zext i32 %i.dw to i64
  %i.dy = load i32, ptr %i.dc, align 4, !tbaa !54
  %i.dz = sext i32 %i.dy to i64
  %i.ea = mul nsw i64 %i.dz, %i.dx
  %i.eb = load i32, ptr %i.bm, align 4, !tbaa !50
  %i.ec = sext i32 %i.eb to i64
  %i.ed = tail call i64 @jdiv_round_up(i64 noundef %i.ea, i64 noundef %i.ec) #5
  %i.ee = trunc i64 %i.ed to i32
  %i.ef = getelementptr inbounds nuw i8, ptr %.18697.i, i64 44
  store i32 %i.ee, ptr %i.ef, align 4, !tbaa !62
  %i.eg = getelementptr inbounds nuw i8, ptr %.18697.i, i64 48
  store i32 1, ptr %i.eg, align 8, !tbaa !63
  %i.eh = add nuw nsw i32 %.198.i, 1              ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.18697.i, i64 96
  %i.ej = load i32, ptr %i.ba, align 4, !tbaa !38
  %i.ek = icmp slt i32 %i.eh, %i.ej
  br i1 %i.ek, label %.lr.ph100.i, label %._crit_edge101.loopexit.i, !llvm.loop !64

._crit_edge101.loopexit.i:                        ; preds = %.lr.ph100.i
  %.pre111.i = load i32, ptr %i.bm, align 4, !tbaa !50
  br label %initial_setup.exit

initial_setup.exit:                               ; preds = %bb.o, %._crit_edge.i, %._crit_edge101.loopexit.i
  %i.el = phi i32 [ %.pre111.i, %._crit_edge101.loopexit.i ], [ %i.ch, %._crit_edge.i ], [ 1, %bb.o ]
  %i.em = load i32, ptr %i.k, align 4, !tbaa !36
  %i.en = zext i32 %i.em to i64
  %i.eo = shl nsw i32 %i.el, 3
  %i.ep = sext i32 %i.eo to i64
  %i.eq = tail call i64 @jdiv_round_up(i64 noundef %i.en, i64 noundef %i.ep) #5
  %i.er = trunc i64 %i.eq to i32
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 312
  store i32 %i.er, ptr %i.es, align 8, !tbaa !65
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !66 ; 2 uses
  %.not = icmp eq ptr %i.eu, null
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 4 uses
  br i1 %.not, label %.thread, label %bb.s

bb.s:                                             ; preds = %initial_setup.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  %i.ew = load i32, ptr %i.ev, align 8, !tbaa !67
  %i.ex = icmp slt i32 %i.ew, 1
  br i1 %i.ex, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ey = load ptr, ptr %0, align 8, !tbaa !40    ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 40
  store i32 17, ptr %i.ez, align 8, !tbaa !41
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ey, i64 44
  store i32 0, ptr %i.fa, align 4, !tbaa !47
  %i.fb = load ptr, ptr %0, align 8, !tbaa !40
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !45
  tail call void %i.fc(ptr noundef nonnull %0) #5, !inline_history !68
  %.pre = load ptr, ptr %i.et, align 8, !tbaa !66
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.fd = phi ptr [ %.pre, %bb.t ], [ %i.eu, %bb.s ] ; 3 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 20
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !69
  %.not.i30 = icmp eq i32 %i.ff, 0
  br i1 %.not.i30, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fd, i64 24
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !71
  %.not189.i = icmp eq i32 %i.fh, 63
  br i1 %.not189.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 300
  store i32 1, ptr %i.fi, align 4, !tbaa !72
  %i.fj = load i32, ptr %i.ba, align 4, !tbaa !38 ; 4 uses
  %i.fk = icmp sgt i32 %i.fj, 0
  br i1 %i.fk, label %.preheader211.i.preheader, label %.loopexit210.i

.preheader211.i.preheader:                        ; preds = %bb.w
  %i.fl = zext nneg i32 %i.fj to i64
  %i.fm = shl nuw nsw i64 %i.fl, 8
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.b, i8 -1, i64 %i.fm, i1 false), !tbaa !4
  br label %.loopexit210.i

bb.x:                                             ; preds = %bb.v
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 300
  store i32 0, ptr %i.fn, align 4, !tbaa !72
  %i.fo = load i32, ptr %i.ba, align 4, !tbaa !38 ; 4 uses
  %i.fp = icmp sgt i32 %i.fo, 0
  br i1 %i.fp, label %.lr.ph.preheader.i, label %.loopexit210.i

.lr.ph.preheader.i:                               ; preds = %bb.x
  %i.fq = zext nneg i32 %i.fo to i64
  %i.fr = shl nuw nsw i64 %i.fq, 2
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.a, i8 0, i64 %i.fr, i1 false), !tbaa !4
  br label %.loopexit210.i

.loopexit210.i:                                   ; preds = %.preheader211.i.preheader, %.lr.ph.preheader.i, %bb.x, %bb.w
  %i.fs = phi i32 [ %i.fo, %bb.x ], [ %i.fo, %.lr.ph.preheader.i ], [ %i.fj, %bb.w ], [ %i.fj, %.preheader211.i.preheader ]
  %i.ft = phi i32 [ 0, %bb.x ], [ 0, %.lr.ph.preheader.i ], [ 1, %bb.w ], [ 1, %.preheader211.i.preheader ]
  %i.fu = load i32, ptr %i.ev, align 8, !tbaa !67
  %.not190231.i = icmp slt i32 %i.fu, 1
  br i1 %.not190231.i, label %._crit_edge238.i, label %.lr.ph237.i

.lr.ph237.i:                                      ; preds = %.loopexit210.i
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 300 ; 2 uses
  br label %bb.y

bb.y:                                             ; preds = %.loopexit208.i, %.lr.ph237.i
  %.0178234.i = phi ptr [ %i.fd, %.lr.ph237.i ], [ %i.kl, %.loopexit208.i ] ; 9 uses
  %.0179232.i = phi i32 [ 1, %.lr.ph237.i ], [ %i.km, %.loopexit208.i ] ; 13 uses
  %i.fw = load i32, ptr %.0178234.i, align 4, !tbaa !73 ; 8 uses
  %i.fx = add i32 %i.fw, -5
  %or.cond.i31 = icmp ult i32 %i.fx, -4
  br i1 %or.cond.i31, label %bb.z, label %.lr.ph219.i

bb.z:                                             ; preds = %bb.y
  %i.fy = load ptr, ptr %0, align 8, !tbaa !40    ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 40
  store i32 24, ptr %i.fz, align 8, !tbaa !41
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fy, i64 44
  store i32 %i.fw, ptr %i.ga, align 4, !tbaa !47
  %i.gb = load ptr, ptr %0, align 8, !tbaa !40
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 48
  store i32 4, ptr %i.gc, align 4, !tbaa !47
  %i.gd = load ptr, ptr %0, align 8, !tbaa !40
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !45
  tail call void %i.ge(ptr noundef nonnull %0) #5, !inline_history !68
  %i.gf = icmp sgt i32 %i.fw, 0
  br i1 %i.gf, label %.lr.ph219.i, label %._crit_edge.i32

.lr.ph219.i:                                      ; preds = %bb.z, %bb.y
  %i.gg = getelementptr inbounds nuw i8, ptr %.0178234.i, i64 4 ; 2 uses
  %wide.trip.count.i = zext nneg i32 %i.fw to i64
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !4  ; 2 uses
  %i.gi = icmp slt i32 %i.gh, 0
  br i1 %i.gi, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph219.i
  %i.gj = load i32, ptr %i.ba, align 4, !tbaa !38
  %.not202.peel.i = icmp slt i32 %i.gh, %i.gj
  br i1 %.not202.peel.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %.lr.ph219.i
  %i.gk = load ptr, ptr %0, align 8, !tbaa !40    ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 40
  store i32 17, ptr %i.gl, align 8, !tbaa !41
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gk, i64 44
  store i32 %.0179232.i, ptr %i.gm, align 4, !tbaa !47
  %i.gn = load ptr, ptr %0, align 8, !tbaa !40
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !45
  tail call void %i.go(ptr noundef nonnull %0) #5, !inline_history !68
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %exitcond.peel.not.i = icmp eq i32 %i.fw, 1
  br i1 %exitcond.peel.not.i, label %._crit_edge.i32, label %.peel.next.i

.peel.next.i:                                     ; preds = %bb.ac, %bb.ah
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.ah ], [ 1, %bb.ac ] ; 2 uses
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %i.gg, i64 %indvars.iv.i ; 2 uses
  %i.gq = load i32, ptr %i.gp, align 4, !tbaa !4  ; 3 uses
  %i.gr = icmp slt i32 %i.gq, 0
  br i1 %i.gr, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %.peel.next.i
  %i.gs = load i32, ptr %i.ba, align 4, !tbaa !38
  %.not202.i = icmp slt i32 %i.gq, %i.gs
  br i1 %.not202.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %.peel.next.i
  %i.gt = load ptr, ptr %0, align 8, !tbaa !40    ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 40
  store i32 17, ptr %i.gu, align 8, !tbaa !41
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gt, i64 44
  store i32 %.0179232.i, ptr %i.gv, align 4, !tbaa !47
  %i.gw = load ptr, ptr %0, align 8, !tbaa !40
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !45
  tail call void %i.gx(ptr noundef %0) #5, !inline_history !68
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.gy = getelementptr i8, ptr %i.gp, i64 -4
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !4
  %.not204.i = icmp sgt i32 %i.gq, %i.gz
  br i1 %.not204.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ha = load ptr, ptr %0, align 8, !tbaa !40    ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 40
  store i32 17, ptr %i.hb, align 8, !tbaa !41
  %i.hc = getelementptr inbounds nuw i8, ptr %i.ha, i64 44
  store i32 %.0179232.i, ptr %i.hc, align 4, !tbaa !47
  %i.hd = load ptr, ptr %0, align 8, !tbaa !40
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !45
  tail call void %i.he(ptr noundef nonnull %0) #5, !inline_history !68
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i32, label %.peel.next.i, !llvm.loop !74

._crit_edge.i32:                                  ; preds = %bb.ah, %bb.ac, %bb.z
  %i.hf = phi i1 [ false, %bb.z ], [ true, %bb.ac ], [ true, %bb.ah ] ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %.0178234.i, i64 20
  %i.hh = load i32, ptr %i.hg, align 4, !tbaa !69 ; 6 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %.0178234.i, i64 24
  %i.hj = load i32, ptr %i.hi, align 4, !tbaa !71 ; 6 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %.0178234.i, i64 28
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !76
  %.fr.i = freeze i32 %i.hl                       ; 5 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %.0178234.i, i64 32
  %i.hn = load i32, ptr %i.hm, align 4, !tbaa !77 ; 6 uses
  %i.ho = load i32, ptr %i.fv, align 4, !tbaa !72
  %.not193.i = icmp eq i32 %i.ho, 0
  br i1 %.not193.i, label %bb.ay, label %bb.ai

bb.ai:                                            ; preds = %._crit_edge.i32
  %or.cond3.i = icmp ugt i32 %i.hh, 63
  br i1 %or.cond3.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.hp = icmp slt i32 %i.hj, %i.hh
  %i.hq = icmp sgt i32 %i.hj, 63
  %or.cond5.i = or i1 %i.hp, %i.hq
  %i.hr = icmp ugt i32 %.fr.i, 13
  %or.cond9.i = or i1 %or.cond5.i, %i.hr
  %i.hs = icmp ugt i32 %i.hn, 13
  %or.cond13.i = select i1 %or.cond9.i, i1 true, i1 %i.hs
  br i1 %or.cond13.i, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.ht = load ptr, ptr %0, align 8, !tbaa !40    ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 40
  store i32 15, ptr %i.hu, align 8, !tbaa !41
  %i.hv = getelementptr inbounds nuw i8, ptr %i.ht, i64 44
  store i32 %.0179232.i, ptr %i.hv, align 4, !tbaa !47
  %i.hw = load ptr, ptr %0, align 8, !tbaa !40
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !45
  tail call void %i.hx(ptr noundef nonnull %0) #5, !inline_history !68
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.hy = icmp eq i32 %i.hh, 0                    ; 2 uses
  br i1 %i.hy, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %.not196.i = icmp eq i32 %i.hj, 0
  br i1 %.not196.i, label %bb.ao, label %.sink.split.i

bb.an:                                            ; preds = %bb.al
  %.not195.i = icmp eq i32 %i.fw, 1
  br i1 %.not195.i, label %bb.ao, label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.an, %bb.am
  %i.hz = load ptr, ptr %0, align 8, !tbaa !40    ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 40
  store i32 15, ptr %i.ia, align 8, !tbaa !41
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hz, i64 44
  store i32 %.0179232.i, ptr %i.ib, align 4, !tbaa !47
  %i.ic = load ptr, ptr %0, align 8, !tbaa !40
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !45
  tail call void %i.id(ptr noundef nonnull %0) #5, !inline_history !68
  br label %bb.ao

bb.ao:                                            ; preds = %.sink.split.i, %bb.an, %bb.am
  br i1 %i.hf, label %.lr.ph227.i, label %.loopexit208.i

.lr.ph227.i:                                      ; preds = %bb.ao
  %i.ie = getelementptr inbounds nuw i8, ptr %.0178234.i, i64 4
  %.not198220.i = icmp sgt i32 %i.hh, %i.hj
  %i.if = add nsw i32 %.fr.i, -1
  %.not200.i = icmp eq i32 %i.hn, %i.if
  %.not200.fr.i = freeze i1 %.not200.i            ; 2 uses
  %.not201.i = icmp eq i32 %.fr.i, 0
  %i.ig = sext i32 %i.hh to i64                   ; 3 uses
  %i.ih = add i32 %i.hj, 1                        ; 3 uses
  %wide.trip.count269.i = zext nneg i32 %i.fw to i64
  br label %bb.ap

bb.ap:                                            ; preds = %._crit_edge224.i, %.lr.ph227.i
  %indvars.iv266.i = phi i64 [ 0, %.lr.ph227.i ], [ %indvars.iv.next267.i, %._crit_edge224.i ] ; 2 uses
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %i.ie, i64 %indvars.iv266.i
  %i.ij = load i32, ptr %i.ii, align 4, !tbaa !4
  %i.ik = sext i32 %i.ij to i64
  %i.il = getelementptr inbounds [256 x i8], ptr %i.b, i64 %i.ik ; 4 uses
  br i1 %i.hy, label %bb.as, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.im = load i32, ptr %i.il, align 16, !tbaa !4
  %i.in = icmp slt i32 %i.im, 0
  br i1 %i.in, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.io = load ptr, ptr %0, align 8, !tbaa !40    ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 40
  store i32 15, ptr %i.ip, align 8, !tbaa !41
  %i.iq = getelementptr inbounds nuw i8, ptr %i.io, i64 44
  store i32 %.0179232.i, ptr %i.iq, align 4, !tbaa !47
  %i.ir = load ptr, ptr %0, align 8, !tbaa !40
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !45
  tail call void %i.is(ptr noundef nonnull %0) #5, !inline_history !68
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq, %bb.ap
  br i1 %.not198220.i, label %._crit_edge224.i, label %.lr.ph223.i

.lr.ph223.i:                                      ; preds = %bb.as
  br i1 %.not201.i, label %.lr.ph223.split.us.i, label %.lr.ph223.split.i

.lr.ph223.split.us.i:                             ; preds = %.lr.ph223.i
  br i1 %.not200.fr.i, label %.lr.ph223.split.us.split.i, label %.lr.ph223.split.us.split.us.i

.lr.ph223.split.us.split.us.i:                    ; preds = %.lr.ph223.split.us.i, %bb.au
  %indvars.iv256.i = phi i64 [ %indvars.iv.next257.i, %bb.au ], [ %i.ig, %.lr.ph223.split.us.i ] ; 2 uses
  %i.it = getelementptr inbounds [4 x i8], ptr %i.il, i64 %indvars.iv256.i ; 2 uses
  %i.iu = load i32, ptr %i.it, align 4, !tbaa !4
  %i.iv = icmp slt i32 %i.iu, 0
  br i1 %i.iv, label %bb.au, label %bb.at

bb.at:                                            ; preds = %.lr.ph223.split.us.split.us.i
  %i.iw = load ptr, ptr %0, align 8, !tbaa !40    ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 40
  store i32 15, ptr %i.ix, align 8, !tbaa !41
  %i.iy = getelementptr inbounds nuw i8, ptr %i.iw, i64 44
  store i32 %.0179232.i, ptr %i.iy, align 4, !tbaa !47
  %i.iz = load ptr, ptr %0, align 8, !tbaa !40
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !45
  tail call void %i.ja(ptr noundef nonnull %0) #5, !inline_history !68
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %.lr.ph223.split.us.split.us.i
  store i32 %i.hn, ptr %i.it, align 4, !tbaa !4
  %indvars.iv.next257.i = add nsw i64 %indvars.iv256.i, 1 ; 2 uses
  %lftr.wideiv259.i = trunc i64 %indvars.iv.next257.i to i32
  %exitcond260.not.i = icmp eq i32 %i.ih, %lftr.wideiv259.i
  br i1 %exitcond260.not.i, label %._crit_edge224.i, label %.lr.ph223.split.us.split.us.i, !llvm.loop !78

.lr.ph223.split.us.split.i:                       ; preds = %.lr.ph223.split.us.i, %bb.aw
  %indvars.iv261.i = phi i64 [ %indvars.iv.next262.i, %bb.aw ], [ %i.ig, %.lr.ph223.split.us.i ] ; 2 uses
  %i.jb = getelementptr inbounds [4 x i8], ptr %i.il, i64 %indvars.iv261.i ; 2 uses
  %i.jc = load i32, ptr %i.jb, align 4, !tbaa !4
  %or.cond243.i = icmp slt i32 %i.jc, 1
  br i1 %or.cond243.i, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %.lr.ph223.split.us.split.i
  %i.jd = load ptr, ptr %0, align 8, !tbaa !40    ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 40
  store i32 15, ptr %i.je, align 8, !tbaa !41
  %i.jf = getelementptr inbounds nuw i8, ptr %i.jd, i64 44
  store i32 %.0179232.i, ptr %i.jf, align 4, !tbaa !47
  %i.jg = load ptr, ptr %0, align 8, !tbaa !40
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !45
  tail call void %i.jh(ptr noundef nonnull %0) #5, !inline_history !68
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %.lr.ph223.split.us.split.i
  store i32 %i.hn, ptr %i.jb, align 4, !tbaa !4
  %indvars.iv.next262.i = add nsw i64 %indvars.iv261.i, 1 ; 2 uses
  %lftr.wideiv264.i = trunc i64 %indvars.iv.next262.i to i32
  %exitcond265.not.i = icmp eq i32 %i.ih, %lftr.wideiv264.i
  br i1 %exitcond265.not.i, label %._crit_edge224.i, label %.lr.ph223.split.us.split.i, !llvm.loop !78

.lr.ph223.split.i:                                ; preds = %.lr.ph223.i, %bb.ax
  %indvars.iv252.i = phi i64 [ %indvars.iv.next253.i, %bb.ax ], [ %i.ig, %.lr.ph223.i ] ; 2 uses
  %i.ji = getelementptr inbounds [4 x i8], ptr %i.il, i64 %indvars.iv252.i ; 2 uses
  %i.jj = load i32, ptr %i.ji, align 4, !tbaa !4  ; 2 uses
  %i.jk = icmp sgt i32 %i.jj, -1
  %.not199.i = icmp eq i32 %.fr.i, %i.jj
  %i.jl = and i1 %.not199.i, %i.jk
  %or.cond305.i = and i1 %.not200.fr.i, %i.jl
  br i1 %or.cond305.i, label %bb.ax, label %.sink.split301.i

.sink.split301.i:                                 ; preds = %.lr.ph223.split.i
  %i.jm = load ptr, ptr %0, align 8, !tbaa !40    ; 2 uses
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 40
  store i32 15, ptr %i.jn, align 8, !tbaa !41
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jm, i64 44
  store i32 %.0179232.i, ptr %i.jo, align 4, !tbaa !47
  %i.jp = load ptr, ptr %0, align 8, !tbaa !40
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !45
  tail call void %i.jq(ptr noundef nonnull %0) #5, !inline_history !68
  br label %bb.ax

bb.ax:                                            ; preds = %.sink.split301.i, %.lr.ph223.split.i
  store i32 %i.hn, ptr %i.ji, align 4, !tbaa !4
  %indvars.iv.next253.i = add nsw i64 %indvars.iv252.i, 1 ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next253.i to i32
  %exitcond255.not.i = icmp eq i32 %i.ih, %lftr.wideiv.i
  br i1 %exitcond255.not.i, label %._crit_edge224.i, label %.lr.ph223.split.i, !llvm.loop !78

._crit_edge224.i:                                 ; preds = %bb.ax, %bb.au, %bb.aw, %bb.as
  %indvars.iv.next267.i = add nuw nsw i64 %indvars.iv266.i, 1 ; 2 uses
  %exitcond270.not.i = icmp eq i64 %indvars.iv.next267.i, %wide.trip.count269.i
  br i1 %exitcond270.not.i, label %.loopexit208.i, label %bb.ap, !llvm.loop !79

bb.ay:                                            ; preds = %._crit_edge.i32
  %i.jr = icmp ne i32 %i.hj, 63
  %i.js = or i32 %.fr.i, %i.hh
  %i.jt = icmp ne i32 %i.js, 0
  %or.cond17.i = select i1 %i.jt, i1 true, i1 %i.jr
  %i.ju = icmp ne i32 %i.hn, 0
  %or.cond19.i = select i1 %or.cond17.i, i1 true, i1 %i.ju
  br i1 %or.cond19.i, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.jv = load ptr, ptr %0, align 8, !tbaa !40    ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 40
  store i32 15, ptr %i.jw, align 8, !tbaa !41
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jv, i64 44
  store i32 %.0179232.i, ptr %i.jx, align 4, !tbaa !47
  %i.jy = load ptr, ptr %0, align 8, !tbaa !40
  %i.jz = load ptr, ptr %i.jy, align 8, !tbaa !45
  tail call void %i.jz(ptr noundef nonnull %0) #5, !inline_history !68
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  br i1 %i.hf, label %.lr.ph230.i, label %.loopexit208.i

.lr.ph230.i:                                      ; preds = %bb.ba
  %i.ka = getelementptr inbounds nuw i8, ptr %.0178234.i, i64 4
  %wide.trip.count274.i = zext nneg i32 %i.fw to i64
  br label %bb.bb

bb.bb:                                            ; preds = %bb.bd, %.lr.ph230.i
  %indvars.iv271.i = phi i64 [ 0, %.lr.ph230.i ], [ %indvars.iv.next272.i, %bb.bd ] ; 2 uses
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %i.ka, i64 %indvars.iv271.i
  %i.kc = load i32, ptr %i.kb, align 4, !tbaa !4
  %i.kd = sext i32 %i.kc to i64
  %i.ke = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.kd ; 2 uses
  %i.kf = load i32, ptr %i.ke, align 4, !tbaa !4
  %.not194.i = icmp eq i32 %i.kf, 0
  br i1 %.not194.i, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.kg = load ptr, ptr %0, align 8, !tbaa !40    ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 40
  store i32 17, ptr %i.kh, align 8, !tbaa !41
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kg, i64 44
  store i32 %.0179232.i, ptr %i.ki, align 4, !tbaa !47
  %i.kj = load ptr, ptr %0, align 8, !tbaa !40
  %i.kk = load ptr, ptr %i.kj, align 8, !tbaa !45
  tail call void %i.kk(ptr noundef nonnull %0) #5, !inline_history !68
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  store i32 1, ptr %i.ke, align 4, !tbaa !4
  %indvars.iv.next272.i = add nuw nsw i64 %indvars.iv271.i, 1 ; 2 uses
  %exitcond275.not.i = icmp eq i64 %indvars.iv.next272.i, %wide.trip.count274.i
  br i1 %exitcond275.not.i, label %.loopexit208.i, label %bb.bb, !llvm.loop !80

.loopexit208.i:                                   ; preds = %._crit_edge224.i, %bb.bd, %bb.ba, %bb.ao
  %i.kl = getelementptr inbounds nuw i8, ptr %.0178234.i, i64 36
  %i.km = add nuw nsw i32 %.0179232.i, 1
  %i.kn = load i32, ptr %i.ev, align 8, !tbaa !67
  %.not190.not.i = icmp slt i32 %.0179232.i, %i.kn
  br i1 %.not190.not.i, label %bb.y, label %._crit_edge238.loopexit.i, !llvm.loop !81

._crit_edge238.loopexit.i:                        ; preds = %.loopexit208.i
  %.pre.i33.a = load i32, ptr %i.fv, align 4, !tbaa !72
  %.pre44 = load i32, ptr %i.ba, align 4, !tbaa !38
  br label %._crit_edge238.i

._crit_edge238.i:                                 ; preds = %._crit_edge238.loopexit.i, %.loopexit210.i
  %i.ko = phi i32 [ %.pre44, %._crit_edge238.loopexit.i ], [ %i.fs, %.loopexit210.i ] ; 3 uses
  %i.kp = phi i32 [ %.pre.i33.a, %._crit_edge238.loopexit.i ], [ %i.ft, %.loopexit210.i ]
  %.not191.i = icmp eq i32 %i.kp, 0
  %i.kq = icmp sgt i32 %i.ko, 0                   ; 2 uses
  br i1 %.not191.i, label %.preheader.i, label %.preheader206.i

.preheader206.i:                                  ; preds = %._crit_edge238.i
  br i1 %i.kq, label %.lr.ph240.i, label %.loopexit

.preheader.i:                                     ; preds = %._crit_edge238.i
  br i1 %i.kq, label %.lr.ph242.i, label %.loopexit

.lr.ph240.i:                                      ; preds = %.preheader206.i, %bb.bf
  %i.kr = phi i32 [ %i.ky, %bb.bf ], [ %i.ko, %.preheader206.i ]
  %indvars.iv276.i = phi i64 [ %indvars.iv.next277.i, %bb.bf ], [ 0, %.preheader206.i ] ; 2 uses
  %i.ks = getelementptr inbounds nuw [256 x i8], ptr %i.b, i64 %indvars.iv276.i
  %i.kt = load i32, ptr %i.ks, align 16, !tbaa !4
  %i.ku = icmp slt i32 %i.kt, 0
  br i1 %i.ku, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %.lr.ph240.i
  %i.kv = load ptr, ptr %0, align 8, !tbaa !40    ; 2 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 40
  store i32 44, ptr %i.kw, align 8, !tbaa !41
  %i.kx = load ptr, ptr %i.kv, align 8, !tbaa !45
  tail call void %i.kx(ptr noundef nonnull %0) #5, !inline_history !68
  %.pre284.i = load i32, ptr %i.ba, align 4, !tbaa !38
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %.lr.ph240.i
  %i.ky = phi i32 [ %i.kr, %.lr.ph240.i ], [ %.pre284.i, %bb.be ] ; 2 uses
  %indvars.iv.next277.i = add nuw nsw i64 %indvars.iv276.i, 1 ; 2 uses
  %i.kz = sext i32 %i.ky to i64
  %i.la = icmp slt i64 %indvars.iv.next277.i, %i.kz
  br i1 %i.la, label %.lr.ph240.i, label %.loopexit, !llvm.loop !82

.lr.ph242.i:                                      ; preds = %.preheader.i, %bb.bh
  %i.lb = phi i32 [ %i.lh, %bb.bh ], [ %i.ko, %.preheader.i ]
  %indvars.iv279.i = phi i64 [ %indvars.iv.next280.i, %bb.bh ], [ 0, %.preheader.i ] ; 2 uses
  %i.lc = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv279.i
  %i.ld = load i32, ptr %i.lc, align 4, !tbaa !4
  %.not192.i = icmp eq i32 %i.ld, 0
  br i1 %.not192.i, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %.lr.ph242.i
  %i.le = load ptr, ptr %0, align 8, !tbaa !40    ; 2 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 40
  store i32 44, ptr %i.lf, align 8, !tbaa !41
  %i.lg = load ptr, ptr %i.le, align 8, !tbaa !45
  tail call void %i.lg(ptr noundef nonnull %0) #5, !inline_history !68
  %.pre285.i = load i32, ptr %i.ba, align 4, !tbaa !38
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %.lr.ph242.i
  %i.lh = phi i32 [ %i.lb, %.lr.ph242.i ], [ %.pre285.i, %bb.bg ] ; 2 uses
  %indvars.iv.next280.i = add nuw nsw i64 %indvars.iv279.i, 1 ; 2 uses
  %i.li = sext i32 %i.lh to i64
  %i.lj = icmp slt i64 %indvars.iv.next280.i, %i.li
  br i1 %i.lj, label %.lr.ph242.i, label %.loopexit, !llvm.loop !83

.thread:                                          ; preds = %initial_setup.exit
  %i.lk = getelementptr inbounds nuw i8, ptr %0, i64 300
  store i32 0, ptr %i.lk, align 4, !tbaa !72
  store i32 1, ptr %i.ev, align 8, !tbaa !67
  br label %bb.bj

.loopexit:                                        ; preds = %bb.bf, %bb.bh, %.preheader.i, %.preheader206.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 300
  %.pre45 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !72
  %i.ll = icmp eq i32 %.pre45, 0
  br i1 %i.ll, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %.loopexit
  %i.lm = getelementptr inbounds nuw i8, ptr %0, i64 256
  store i32 1, ptr %i.lm, align 8, !tbaa !84
  br label %bb.bj

bb.bj:                                            ; preds = %.thread, %bb.bi, %.loopexit
  %.not27 = icmp eq i32 %1, 0
  br i1 %.not27, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.ln = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.lo = load i32, ptr %i.ln, align 8, !tbaa !84
  %.not28 = icmp eq i32 %i.lo, 0
  %i.lp = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 2 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %i.f, i64 44 ; 2 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %i.f, i64 36 ; 2 uses
  br i1 %.not28, label %.thread67, label %.thread69.a

.thread69.a:                                      ; preds = %bb.bk
  store i32 1, ptr %i.lp, align 8, !tbaa !85
  store i32 0, ptr %i.lq, align 4, !tbaa !86
  store i32 0, ptr %i.lr, align 4, !tbaa !87
  br label %bb.bm

.thread67:                                        ; preds = %bb.bk
  store i32 2, ptr %i.lp, align 8, !tbaa !85
  store i32 0, ptr %i.lq, align 4, !tbaa !86
  store i32 0, ptr %i.lr, align 4, !tbaa !87
  br label %bb.bn

bb.bl:                                            ; preds = %bb.bj
  %i.ls = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store i32 0, ptr %i.ls, align 8, !tbaa !85
  %.phi.trans.insert46 = getelementptr inbounds nuw i8, ptr %0, i64 256
  %.pre47 = load i32, ptr %.phi.trans.insert46, align 8, !tbaa !84
  %i.lt = icmp eq i32 %.pre47, 0
  %i.lu = getelementptr inbounds nuw i8, ptr %i.f, i64 44
  store i32 0, ptr %i.lu, align 4, !tbaa !86
  %i.lv = getelementptr inbounds nuw i8, ptr %i.f, i64 36
  store i32 0, ptr %i.lv, align 4, !tbaa !87
  br i1 %i.lt, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %.thread69.a, %bb.bl
  %i.lw = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.lx = load i32, ptr %i.lw, align 8, !tbaa !67
  %i.ly = shl nsw i32 %i.lx, 1
  br label %bb.bo

bb.bn:                                            ; preds = %.thread67, %bb.bl
  %i.lz = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.ma = load i32, ptr %i.lz, align 8, !tbaa !67
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %.sink = phi i32 [ %i.ma, %bb.bn ], [ %i.ly, %bb.bm ]
  %i.mb = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  store i32 %.sink, ptr %i.mb, align 8, !tbaa !88
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define internal void @prepare_for_pass(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !29   ; 12 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !85
  switch i32 %i.d, label %bb.ac [
    i32 0, label %bb.b
    i32 1, label %bb.k
    i32 2, label %bb.t
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !66   ; 2 uses
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  %i.h = load i32, ptr %i.g, align 4, !tbaa !86
  %i.i = sext i32 %i.h to i64
  %i.j = getelementptr inbounds [36 x i8], ptr %i.f, i64 %i.i ; 5 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !73   ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 316
  store i32 %i.k, ptr %i.l, align 4, !tbaa !89
  %i.m = icmp sgt i32 %i.k, 0
  br i1 %i.m, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !51   ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 4 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  %wide.trip.count.i = zext nneg i32 %i.k to i64  ; 3 uses
  %min.iters.check158 = icmp ult i32 %i.k, 4
  br i1 %min.iters.check158, label %scalar.ph157.preheader, label %vector.ph159

vector.ph159:                                     ; preds = %.lr.ph.i
  %n.vec161 = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  br label %vector.body162

vector.body162:                                   ; preds = %vector.body162, %vector.ph159
  %index163 = phi i64 [ 0, %vector.ph159 ], [ %index.next168, %vector.body162 ] ; 3 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %index163 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %wide.load164 = load <2 x i32>, ptr %i.r, align 4, !tbaa !4
  %wide.load165 = load <2 x i32>, ptr %i.s, align 4, !tbaa !4
  %i.t = sext <2 x i32> %wide.load164 to <2 x i64>
  %i.u = sext <2 x i32> %wide.load165 to <2 x i64>
  %wide.gep166 = getelementptr inbounds [96 x i8], ptr %i.o, <2 x i64> %i.t
  %wide.gep167 = getelementptr inbounds [96 x i8], ptr %i.o, <2 x i64> %i.u
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %index163 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store <2 x ptr> %wide.gep166, ptr %i.v, align 8, !tbaa !90
  store <2 x ptr> %wide.gep167, ptr %i.w, align 8, !tbaa !90
  %index.next168 = add nuw i64 %index163, 4       ; 2 uses
  %i.x = icmp eq i64 %index.next168, %n.vec161
  br i1 %i.x, label %middle.block169, label %vector.body162, !llvm.loop !91

middle.block169:                                  ; preds = %vector.body162
  %cmp.n170 = icmp eq i64 %n.vec161, %wide.trip.count.i
  br i1 %cmp.n170, label %._crit_edge.i, label %scalar.ph157.preheader

scalar.ph157.preheader:                           ; preds = %.lr.ph.i, %middle.block169
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %n.vec161, %middle.block169 ]
  br label %scalar.ph157

scalar.ph157:                                     ; preds = %scalar.ph157.preheader, %scalar.ph157
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph157 ], [ %indvars.iv.i.ph, %scalar.ph157.preheader ] ; 3 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv.i
  %i.z = load i32, ptr %i.y, align 4, !tbaa !4
  %i.aa = sext i32 %i.z to i64
  %i.ab = getelementptr inbounds [96 x i8], ptr %i.o, i64 %i.aa
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv.i
  store ptr %i.ab, ptr %i.ac, align 8, !tbaa !90
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %scalar.ph157, !llvm.loop !94

._crit_edge.i:                                    ; preds = %scalar.ph157, %middle.block169, %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %i.j, i64 20
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 404
  %i.af = load <2 x i32>, ptr %i.ad, align 4, !tbaa !4
  store <2 x i32> %i.af, ptr %i.ae, align 4, !tbaa !4
  %i.ag = getelementptr inbounds nuw i8, ptr %i.j, i64 28
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !76
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 412
  store i32 %i.ah, ptr %i.ai, align 4, !tbaa !95
  %i.aj = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !77
  br label %select_scan_parameters.exit

bb.d:                                             ; preds = %bb.b
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !38 ; 3 uses
  %i.an = icmp sgt i32 %i.am, 4
  br i1 %i.an, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ao = load ptr, ptr %0, align 8, !tbaa !40    ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 40
  store i32 24, ptr %i.ap, align 8, !tbaa !41
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 44
  store i32 %i.am, ptr %i.aq, align 4, !tbaa !47
  %i.ar = load ptr, ptr %0, align 8, !tbaa !40
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 48
  store i32 4, ptr %i.as, align 4, !tbaa !47
  %i.at = load ptr, ptr %0, align 8, !tbaa !40
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !45
  tail call void %i.au(ptr noundef nonnull %0) #5, !inline_history !96
  %.pre.i = load i32, ptr %i.al, align 4, !tbaa !38
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.av = phi i32 [ %.pre.i, %bb.e ], [ %i.am, %bb.d ] ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 316
  store i32 %i.av, ptr %i.aw, align 4, !tbaa !89
  %i.ax = icmp sgt i32 %i.av, 0
  br i1 %i.ax, label %.lr.ph45.i, label %._crit_edge46.i

.lr.ph45.i:                                       ; preds = %bb.f
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !51 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  %wide.trip.count51.i = zext nneg i32 %i.av to i64 ; 3 uses
  %min.iters.check173 = icmp ult i32 %i.av, 4
  br i1 %min.iters.check173, label %scalar.ph172.preheader, label %vector.ph174

vector.ph174:                                     ; preds = %.lr.ph45.i
  %n.vec176 = and i64 %wide.trip.count51.i, 2147483644 ; 3 uses
  br label %vector.body177

end_hunk_0
