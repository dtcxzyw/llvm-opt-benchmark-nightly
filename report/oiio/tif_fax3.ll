inline.NumInlined: 37
inline.NumDeleted: 6
begin_hunk_0_@Fax3Encode2DRow:bb.a
  %i.jo = getelementptr inbounds nuw i8, ptr @zeroruns, i64 %i.jn
  %i.jp = load i8, ptr %i.jo, align 1, !tbaa !7
  %i.jq = zext i8 %i.jp to i32
  %i.jr = add nsw i32 %.391.i239.lcssa, %i.jq
  br label %find1span.exit

bb.ay:                                            ; preds = %.lr.ph.i238
  %i.js = add nuw nsw i32 %.2.i218, 8             ; 2 uses
  %i.jt = add nsw i32 %.053.i217, -8              ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %.061.i216, i64 1 ; 3 uses
  %i.jv = ptrtoint ptr %i.ju to i64
  %i.jw = and i64 %i.jv, 7
  %.not70.i244 = icmp eq i64 %i.jw, 0
  br i1 %.not70.i244, label %.preheader.i245, label %.lr.ph.i238.1

.lr.ph.i238.1:                                    ; preds = %bb.ay
  %i.jx = load i8, ptr %i.ju, align 1, !tbaa !7   ; 2 uses
  %.not71.i242.1 = icmp eq i8 %i.jx, 0
  br i1 %.not71.i242.1, label %bb.az, label %.critedge.thread.i243

bb.az:                                            ; preds = %.lr.ph.i238.1
  %i.jy = add nuw nsw i32 %.2.i218, 16            ; 2 uses
  %i.jz = add nsw i32 %.053.i217, -16             ; 2 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %.061.i216, i64 2 ; 3 uses
  %i.kb = ptrtoint ptr %i.ka to i64
  %i.kc = and i64 %i.kb, 7
  %.not70.i244.1 = icmp eq i64 %i.kc, 0
  br i1 %.not70.i244.1, label %.preheader.i245, label %.lr.ph.i238.2

.lr.ph.i238.2:                                    ; preds = %bb.az
  %i.kd = load i8, ptr %i.ka, align 1, !tbaa !7   ; 2 uses
  %.not71.i242.2 = icmp eq i8 %i.kd, 0
  br i1 %.not71.i242.2, label %bb.ba, label %.critedge.thread.i243

bb.ba:                                            ; preds = %.lr.ph.i238.2
  %i.ke = add nuw nsw i32 %.2.i218, 24            ; 2 uses
  %i.kf = add nsw i32 %.053.i217, -24             ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %.061.i216, i64 3 ; 3 uses
  %i.kh = ptrtoint ptr %i.kg to i64
  %i.ki = and i64 %i.kh, 7
  %.not70.i244.2 = icmp eq i64 %i.ki, 0
  br i1 %.not70.i244.2, label %.preheader.i245, label %.lr.ph.i238.3

.lr.ph.i238.3:                                    ; preds = %bb.ba
  %i.kj = load i8, ptr %i.kg, align 1, !tbaa !7   ; 2 uses
  %.not71.i242.3 = icmp eq i8 %i.kj, 0
  br i1 %.not71.i242.3, label %bb.bb, label %.critedge.thread.i243

bb.bb:                                            ; preds = %.lr.ph.i238.3
  %i.kk = add nuw nsw i32 %.2.i218, 32            ; 2 uses
  %i.kl = add nsw i32 %.053.i217, -32             ; 2 uses
  %i.km = getelementptr inbounds nuw i8, ptr %.061.i216, i64 4 ; 3 uses
  %i.kn = ptrtoint ptr %i.km to i64
  %i.ko = and i64 %i.kn, 7
  %.not70.i244.3 = icmp eq i64 %i.ko, 0
  br i1 %.not70.i244.3, label %.preheader.i245, label %.lr.ph.i238.4

.lr.ph.i238.4:                                    ; preds = %bb.bb
  %i.kp = load i8, ptr %i.km, align 1, !tbaa !7   ; 2 uses
  %.not71.i242.4 = icmp eq i8 %i.kp, 0
  br i1 %.not71.i242.4, label %bb.bc, label %.critedge.thread.i243

bb.bc:                                            ; preds = %.lr.ph.i238.4
  %i.kq = add nuw nsw i32 %.2.i218, 40            ; 2 uses
  %i.kr = add nsw i32 %.053.i217, -40             ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %.061.i216, i64 5 ; 3 uses
  %i.kt = ptrtoint ptr %i.ks to i64
  %i.ku = and i64 %i.kt, 7
  %.not70.i244.4 = icmp eq i64 %i.ku, 0
  br i1 %.not70.i244.4, label %.preheader.i245, label %.lr.ph.i238.5

.lr.ph.i238.5:                                    ; preds = %bb.bc
  %i.kv = load i8, ptr %i.ks, align 1, !tbaa !7   ; 2 uses
  %.not71.i242.5 = icmp eq i8 %i.kv, 0
  br i1 %.not71.i242.5, label %bb.bd, label %.critedge.thread.i243

bb.bd:                                            ; preds = %.lr.ph.i238.5
  %i.kw = add nuw nsw i32 %.2.i218, 48            ; 2 uses
  %i.kx = add nsw i32 %.053.i217, -48             ; 2 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %.061.i216, i64 6 ; 3 uses
  %i.kz = ptrtoint ptr %i.ky to i64
  %i.la = and i64 %i.kz, 7
  %.not70.i244.5 = icmp eq i64 %i.la, 0
  br i1 %.not70.i244.5, label %.preheader.i245, label %.lr.ph.i238.6

.lr.ph.i238.6:                                    ; preds = %bb.bd
  %i.lb = load i8, ptr %i.ky, align 1, !tbaa !7   ; 2 uses
  %.not71.i242.6 = icmp eq i8 %i.lb, 0
  br i1 %.not71.i242.6, label %bb.be, label %.critedge.thread.i243

bb.be:                                            ; preds = %.lr.ph.i238.6
  %i.lc = add nuw nsw i32 %.2.i218, 56            ; 2 uses
  %i.ld = add nsw i32 %.053.i217, -56             ; 2 uses
  %i.le = getelementptr inbounds nuw i8, ptr %.061.i216, i64 7 ; 3 uses
  %i.lf = ptrtoint ptr %i.le to i64
  %i.lg = and i64 %i.lf, 7
  %.not70.i244.6 = icmp eq i64 %i.lg, 0
  br i1 %.not70.i244.6, label %.preheader.i245, label %.lr.ph.i238.7

.lr.ph.i238.7:                                    ; preds = %bb.be
  %i.lh = load i8, ptr %i.le, align 1, !tbaa !7   ; 2 uses
  %.not71.i242.7 = icmp eq i8 %i.lh, 0
  br i1 %.not71.i242.7, label %bb.bf, label %.critedge.thread.i243

bb.bf:                                            ; preds = %.lr.ph.i238.7
  %i.li = add nuw nsw i32 %.2.i218, 64
  %i.lj = add nsw i32 %.053.i217, -64
  %i.lk = getelementptr inbounds nuw i8, ptr %.061.i216, i64 8
  br label %.preheader.i245

.lr.ph97.i250:                                    ; preds = %.lr.ph97.i250.preheader, %bb.bg
  %.096.i251 = phi ptr [ %i.lp, %bb.bg ], [ %.096.i251.ph, %.lr.ph97.i250.preheader ] ; 3 uses
  %.495.i252 = phi i32 [ %i.ln, %bb.bg ], [ %.495.i252.ph, %.lr.ph97.i250.preheader ] ; 2 uses
  %.25594.i253 = phi i32 [ %i.lo, %bb.bg ], [ %.25594.i253.ph, %.lr.ph97.i250.preheader ] ; 3 uses
  %i.ll = load i64, ptr %.096.i251, align 8, !tbaa !8
  %i.lm = icmp eq i64 %i.ll, 0
  br i1 %i.lm, label %bb.bg, label %.lr.ph108.i231.preheader

bb.bg:                                            ; preds = %.lr.ph97.i250
  %i.ln = add nuw i32 %.495.i252, 64              ; 2 uses
  %i.lo = add nsw i32 %.25594.i253, -64           ; 2 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %.096.i251, i64 8 ; 2 uses
  %i.lq = icmp sgt i32 %.25594.i253, 127
  br i1 %i.lq, label %.lr.ph97.i250, label %.thread.i219

.thread.i219:                                     ; preds = %bb.bg, %.preheader.i245, %bb.ax
  %.364.i220 = phi ptr [ %.lcssa1594, %.preheader.i245 ], [ %.061.i216, %bb.ax ], [ %i.lp, %bb.bg ] ; 2 uses
  %.457.i221 = phi i32 [ %.lcssa1595, %.preheader.i245 ], [ %.053.i217, %bb.ax ], [ %i.lo, %bb.bg ] ; 3 uses
  %.6.i222 = phi i32 [ %.lcssa1596, %.preheader.i245 ], [ %.2.i218, %bb.ax ], [ %i.ln, %bb.bg ] ; 2 uses
  %i.lr = icmp sgt i32 %.457.i221, 7
  br i1 %i.lr, label %.lr.ph108.i231.preheader, label %._crit_edge.i223

.lr.ph108.i231.preheader:                         ; preds = %.lr.ph97.i250, %.thread.i219
  %.7107.i232.ph = phi i32 [ %.6.i222, %.thread.i219 ], [ %.495.i252, %.lr.ph97.i250 ]
  %.558106.i233.ph = phi i32 [ %.457.i221, %.thread.i219 ], [ %.25594.i253, %.lr.ph97.i250 ]
  %.465105.i234.ph = phi ptr [ %.364.i220, %.thread.i219 ], [ %.096.i251, %.lr.ph97.i250 ]
  br label %.lr.ph108.i231

.lr.ph108.i231:                                   ; preds = %.lr.ph108.i231.preheader, %bb.bi
  %.7107.i232 = phi i32 [ %i.ly, %bb.bi ], [ %.7107.i232.ph, %.lr.ph108.i231.preheader ] ; 2 uses
  %.558106.i233 = phi i32 [ %i.lz, %bb.bi ], [ %.558106.i233.ph, %.lr.ph108.i231.preheader ] ; 2 uses
  %.465105.i234 = phi ptr [ %i.ma, %bb.bi ], [ %.465105.i234.ph, %.lr.ph108.i231.preheader ] ; 2 uses
  %i.ls = load i8, ptr %.465105.i234, align 1, !tbaa !7 ; 2 uses
  %.not72.i235 = icmp eq i8 %i.ls, 0
  br i1 %.not72.i235, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %.lr.ph108.i231
  %i.lt = zext i8 %i.ls to i64
  %i.lu = getelementptr inbounds nuw i8, ptr @zeroruns, i64 %i.lt
  %i.lv = load i8, ptr %i.lu, align 1, !tbaa !7
  %i.lw = zext i8 %i.lv to i32
  %i.lx = add nsw i32 %.7107.i232, %i.lw
  br label %find1span.exit

bb.bi:                                            ; preds = %.lr.ph108.i231
  %i.ly = add nsw i32 %.7107.i232, 8              ; 2 uses
  %i.lz = add nsw i32 %.558106.i233, -8           ; 2 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %.465105.i234, i64 1 ; 2 uses
  %i.mb = icmp sgt i32 %.558106.i233, 15
  br i1 %i.mb, label %.lr.ph108.i231, label %._crit_edge.i223

._crit_edge.i223:                                 ; preds = %bb.bi, %.thread.i219
  %.465.lcssa.i224 = phi ptr [ %.364.i220, %.thread.i219 ], [ %i.ma, %bb.bi ]
  %.558.lcssa.i225 = phi i32 [ %.457.i221, %.thread.i219 ], [ %i.lz, %bb.bi ] ; 2 uses
  %.7.lcssa.i226 = phi i32 [ %.6.i222, %.thread.i219 ], [ %i.ly, %bb.bi ] ; 2 uses
  %i.mc = icmp sgt i32 %.558.lcssa.i225, 0
  br i1 %i.mc, label %bb.bj, label %find1span.exit

bb.bj:                                            ; preds = %._crit_edge.i223
  %i.md = load i8, ptr %.465.lcssa.i224, align 1, !tbaa !7
  %i.me = zext i8 %i.md to i64
  %i.mf = getelementptr inbounds nuw i8, ptr @zeroruns, i64 %i.me
  %i.mg = load i8, ptr %i.mf, align 1, !tbaa !7
  %i.mh = zext i8 %i.mg to i32
  %i.mi = tail call i32 @llvm.umin.i32(i32 %.558.lcssa.i225, i32 %i.mh)
  %i.mj = add nsw i32 %i.mi, %.7.lcssa.i226
  br label %find1span.exit

find1span.exit:                                   ; preds = %bb.bj, %._crit_edge.i223, %bb.bh, %.critedge.thread.i243, %bb.av, %bb.at, %bb.as, %._crit_edge.i181, %bb.aq, %.critedge.thread.i201, %bb.ae, %bb.ac
  %i.mk = phi i32 [ 0, %bb.ac ], [ %i.gc, %.critedge.thread.i201 ], [ %i.ii, %bb.aq ], [ %.1.i, %bb.ae ], [ %i.iu, %bb.as ], [ %.7.lcssa.i184, %._crit_edge.i181 ], [ %i.jr, %.critedge.thread.i243 ], [ %i.lx, %bb.bh ], [ %.1.i215, %bb.av ], [ %i.mj, %bb.bj ], [ %.7.lcssa.i226, %._crit_edge.i223 ], [ 0, %bb.at ]
  %i.ml = add i32 %i.mk, %.0113
  br label %bb.bk

bb.bk:                                            ; preds = %find0span.exit175, %find1span.exit
  %i.mm = phi i32 [ %i.ml, %find1span.exit ], [ %3, %find0span.exit175 ] ; 2 uses
  %.not124 = icmp ult i32 %i.mm, %.0112
  br i1 %.not124, label %bb.de, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %.not126 = icmp uge i32 %.0113, %.0112
  %i.mn = sub nuw i32 %.0113, %.0112              ; 2 uses
  %i.mo = icmp ult i32 %i.mn, 4
  %or.cond = select i1 %.not126, i1 %i.mo, i1 false
  br i1 %or.cond, label %.thread599, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.mp = icmp ult i32 %.0113, %.0112
  br i1 %i.mp, label %bb.bn, label %.thread

bb.bn:                                            ; preds = %bb.bm
  %i.mq = sub nuw i32 %.0112, %.0113              ; 2 uses
  %i.mr = icmp ult i32 %i.mq, 4
  %i.ms = sub nsw i32 0, %i.mq
  br i1 %i.mr, label %.thread599, label %.thread

.thread:                                          ; preds = %bb.bn, %bb.bm
  %i.mt = icmp ult i32 %.0112, %3
  br i1 %i.mt, label %bb.bo, label %bb.cx

bb.bo:                                            ; preds = %.thread
  %i.mu = lshr i32 %.0112, 3
  %i.mv = zext nneg i32 %i.mu to i64
  %i.mw = getelementptr inbounds nuw i8, ptr %1, i64 %i.mv
  %i.mx = load i8, ptr %i.mw, align 1, !tbaa !7
  %i.my = zext i8 %i.mx to i32
  %i.mz = and i32 %.0112, 7                       ; 9 uses
  %i.na = lshr exact i32 128, %i.mz
  %i.nb = and i32 %i.na, %i.my
  %.not127 = icmp eq i32 %i.nb, 0
  %i.nc = sub nuw nsw i32 %3, %.0112              ; 7 uses
  %i.nd = ashr i32 %.0112, 3
  %i.ne = sext i32 %i.nd to i64
  %i.nf = getelementptr inbounds i8, ptr %1, i64 %i.ne ; 6 uses
  %i.ng = icmp sgt i32 %i.nc, 0                   ; 2 uses
  br i1 %.not127, label %bb.cg, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  br i1 %i.ng, label %bb.bq, label %find1span.exit297

bb.bq:                                            ; preds = %bb.bp
  %.not.i256 = icmp eq i32 %i.mz, 0
  br i1 %.not.i256, label %bb.bt, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.nh = load i8, ptr %i.nf, align 1, !tbaa !7
  %i.ni = zext i8 %i.nh to i32
  %i.nj = shl nuw nsw i32 %i.ni, %i.mz
  %i.nk = and i32 %i.nj, 254
  %i.nl = zext nneg i32 %i.nk to i64
  %i.nm = getelementptr inbounds nuw i8, ptr @oneruns, i64 %i.nl
  %i.nn = load i8, ptr %i.nm, align 2, !tbaa !7
  %i.no = zext i8 %i.nn to i32
  %i.np = sub nuw nsw i32 8, %i.mz
  %spec.select.i257 = tail call i32 @llvm.umin.i32(i32 %i.np, i32 %i.no)
  %.1.i258 = tail call i32 @llvm.umin.i32(i32 %spec.select.i257, i32 %i.nc) ; 4 uses
  %i.nq = add nuw nsw i32 %.1.i258, %i.mz
  %i.nr = icmp samesign ult i32 %i.nq, 8
  br i1 %i.nr, label %find1span.exit297, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.ns = sub nsw i32 %i.nc, %.1.i258
  %i.nt = getelementptr inbounds nuw i8, ptr %i.nf, i64 1
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.bq
  %.061.i259 = phi ptr [ %i.nt, %bb.bs ], [ %i.nf, %bb.bq ] ; 12 uses
  %.053.i260 = phi i32 [ %i.ns, %bb.bs ], [ %i.nc, %bb.bq ] ; 12 uses
  %.2.i261 = phi i32 [ %.1.i258, %bb.bs ], [ 0, %bb.bq ] ; 11 uses
  %i.nu = icmp sgt i32 %.053.i260, 127
  br i1 %i.nu, label %.preheader80.i279, label %.thread.i262

.preheader80.i279:                                ; preds = %bb.bt
  %i.nv = ptrtoint ptr %.061.i259 to i64
  %i.nw = and i64 %i.nv, 7
  %.not7088.i280 = icmp eq i64 %i.nw, 0
  br i1 %.not7088.i280, label %.lr.ph97.i293.preheader, label %.lr.ph.i281

.lr.ph97.i293.preheader:                          ; preds = %.preheader.i288, %.preheader80.i279
  %.096.i294.ph = phi ptr [ %.061.i259, %.preheader80.i279 ], [ %.lcssa1613, %.preheader.i288 ]
  %.495.i295.ph = phi i32 [ %.2.i261, %.preheader80.i279 ], [ %.lcssa1615, %.preheader.i288 ]
  %.25594.i296.ph = phi i32 [ %.053.i260, %.preheader80.i279 ], [ %.lcssa1614, %.preheader.i288 ]
  br label %.lr.ph97.i293

.preheader.i288:                                  ; preds = %bb.cb, %bb.ca, %bb.bz, %bb.by, %bb.bx, %bb.bw, %bb.bv, %bb.bu
  %.lcssa1615 = phi i32 [ %i.oe, %bb.bu ], [ %i.ok, %bb.bv ], [ %i.oq, %bb.bw ], [ %i.ow, %bb.bx ], [ %i.pc, %bb.by ], [ %i.pi, %bb.bz ], [ %i.po, %bb.ca ], [ %i.pu, %bb.cb ] ; 2 uses
  %.lcssa1614 = phi i32 [ %i.of, %bb.bu ], [ %i.ol, %bb.bv ], [ %i.or, %bb.bw ], [ %i.ox, %bb.bx ], [ %i.pd, %bb.by ], [ %i.pj, %bb.bz ], [ %i.pp, %bb.ca ], [ %i.pv, %bb.cb ] ; 2 uses
  %.lcssa1613 = phi ptr [ %i.og, %bb.bu ], [ %i.om, %bb.bv ], [ %i.os, %bb.bw ], [ %i.oy, %bb.bx ], [ %i.pe, %bb.by ], [ %i.pk, %bb.bz ], [ %i.pq, %bb.ca ], [ %i.pw, %bb.cb ] ; 2 uses
  %.15490.i283.lcssa1611 = phi i32 [ %.053.i260, %bb.bu ], [ %i.of, %bb.bv ], [ %i.ol, %bb.bw ], [ %i.or, %bb.bx ], [ %i.ox, %bb.by ], [ %i.pd, %bb.bz ], [ %i.pj, %bb.ca ], [ %i.pp, %bb.cb ]
  %i.nx = icmp sgt i32 %.15490.i283.lcssa1611, 71
  br i1 %i.nx, label %.lr.ph97.i293.preheader, label %.thread.i262

.lr.ph.i281:                                      ; preds = %.preheader80.i279
  %i.ny = load i8, ptr %.061.i259, align 1, !tbaa !7 ; 2 uses
  %.not71.i285 = icmp eq i8 %i.ny, -1
  br i1 %.not71.i285, label %bb.bu, label %.critedge.thread.i286

.critedge.thread.i286:                            ; preds = %.lr.ph.i281.7, %.lr.ph.i281.6, %.lr.ph.i281.5, %.lr.ph.i281.4, %.lr.ph.i281.3, %.lr.ph.i281.2, %.lr.ph.i281.1, %.lr.ph.i281
  %.391.i282.lcssa = phi i32 [ %.2.i261, %.lr.ph.i281 ], [ %i.oe, %.lr.ph.i281.1 ], [ %i.ok, %.lr.ph.i281.2 ], [ %i.oq, %.lr.ph.i281.3 ], [ %i.ow, %.lr.ph.i281.4 ], [ %i.pc, %.lr.ph.i281.5 ], [ %i.pi, %.lr.ph.i281.6 ], [ %i.po, %.lr.ph.i281.7 ]
  %.lcssa1609 = phi i8 [ %i.ny, %.lr.ph.i281 ], [ %i.oj, %.lr.ph.i281.1 ], [ %i.op, %.lr.ph.i281.2 ], [ %i.ov, %.lr.ph.i281.3 ], [ %i.pb, %.lr.ph.i281.4 ], [ %i.ph, %.lr.ph.i281.5 ], [ %i.pn, %.lr.ph.i281.6 ], [ %i.pt, %.lr.ph.i281.7 ]
  %i.nz = zext i8 %.lcssa1609 to i64
  %i.oa = getelementptr inbounds nuw i8, ptr @oneruns, i64 %i.nz
  %i.ob = load i8, ptr %i.oa, align 1, !tbaa !7
  %i.oc = zext i8 %i.ob to i32
  %i.od = add nsw i32 %.391.i282.lcssa, %i.oc
  br label %find1span.exit297

bb.bu:                                            ; preds = %.lr.ph.i281
  %i.oe = add nuw nsw i32 %.2.i261, 8             ; 2 uses
  %i.of = add nsw i32 %.053.i260, -8              ; 2 uses
  %i.og = getelementptr inbounds nuw i8, ptr %.061.i259, i64 1 ; 3 uses
  %i.oh = ptrtoint ptr %i.og to i64
  %i.oi = and i64 %i.oh, 7
  %.not70.i287 = icmp eq i64 %i.oi, 0
  br i1 %.not70.i287, label %.preheader.i288, label %.lr.ph.i281.1

.lr.ph.i281.1:                                    ; preds = %bb.bu
  %i.oj = load i8, ptr %i.og, align 1, !tbaa !7   ; 2 uses
  %.not71.i285.1 = icmp eq i8 %i.oj, -1
  br i1 %.not71.i285.1, label %bb.bv, label %.critedge.thread.i286

bb.bv:                                            ; preds = %.lr.ph.i281.1
  %i.ok = add nuw nsw i32 %.2.i261, 16            ; 2 uses
  %i.ol = add nsw i32 %.053.i260, -16             ; 2 uses
  %i.om = getelementptr inbounds nuw i8, ptr %.061.i259, i64 2 ; 3 uses
  %i.on = ptrtoint ptr %i.om to i64
  %i.oo = and i64 %i.on, 7
  %.not70.i287.1 = icmp eq i64 %i.oo, 0
  br i1 %.not70.i287.1, label %.preheader.i288, label %.lr.ph.i281.2

.lr.ph.i281.2:                                    ; preds = %bb.bv
  %i.op = load i8, ptr %i.om, align 1, !tbaa !7   ; 2 uses
  %.not71.i285.2 = icmp eq i8 %i.op, -1
  br i1 %.not71.i285.2, label %bb.bw, label %.critedge.thread.i286

bb.bw:                                            ; preds = %.lr.ph.i281.2
  %i.oq = add nuw nsw i32 %.2.i261, 24            ; 2 uses
  %i.or = add nsw i32 %.053.i260, -24             ; 2 uses
  %i.os = getelementptr inbounds nuw i8, ptr %.061.i259, i64 3 ; 3 uses
  %i.ot = ptrtoint ptr %i.os to i64
  %i.ou = and i64 %i.ot, 7
  %.not70.i287.2 = icmp eq i64 %i.ou, 0
  br i1 %.not70.i287.2, label %.preheader.i288, label %.lr.ph.i281.3

.lr.ph.i281.3:                                    ; preds = %bb.bw
  %i.ov = load i8, ptr %i.os, align 1, !tbaa !7   ; 2 uses
  %.not71.i285.3 = icmp eq i8 %i.ov, -1
  br i1 %.not71.i285.3, label %bb.bx, label %.critedge.thread.i286

bb.bx:                                            ; preds = %.lr.ph.i281.3
  %i.ow = add nuw nsw i32 %.2.i261, 32            ; 2 uses
  %i.ox = add nsw i32 %.053.i260, -32             ; 2 uses
  %i.oy = getelementptr inbounds nuw i8, ptr %.061.i259, i64 4 ; 3 uses
  %i.oz = ptrtoint ptr %i.oy to i64
  %i.pa = and i64 %i.oz, 7
  %.not70.i287.3 = icmp eq i64 %i.pa, 0
  br i1 %.not70.i287.3, label %.preheader.i288, label %.lr.ph.i281.4

.lr.ph.i281.4:                                    ; preds = %bb.bx
  %i.pb = load i8, ptr %i.oy, align 1, !tbaa !7   ; 2 uses
  %.not71.i285.4 = icmp eq i8 %i.pb, -1
  br i1 %.not71.i285.4, label %bb.by, label %.critedge.thread.i286

bb.by:                                            ; preds = %.lr.ph.i281.4
  %i.pc = add nuw nsw i32 %.2.i261, 40            ; 2 uses
  %i.pd = add nsw i32 %.053.i260, -40             ; 2 uses
  %i.pe = getelementptr inbounds nuw i8, ptr %.061.i259, i64 5 ; 3 uses
  %i.pf = ptrtoint ptr %i.pe to i64
  %i.pg = and i64 %i.pf, 7
  %.not70.i287.4 = icmp eq i64 %i.pg, 0
  br i1 %.not70.i287.4, label %.preheader.i288, label %.lr.ph.i281.5

.lr.ph.i281.5:                                    ; preds = %bb.by
  %i.ph = load i8, ptr %i.pe, align 1, !tbaa !7   ; 2 uses
  %.not71.i285.5 = icmp eq i8 %i.ph, -1
  br i1 %.not71.i285.5, label %bb.bz, label %.critedge.thread.i286

bb.bz:                                            ; preds = %.lr.ph.i281.5
  %i.pi = add nuw nsw i32 %.2.i261, 48            ; 2 uses
  %i.pj = add nsw i32 %.053.i260, -48             ; 2 uses
  %i.pk = getelementptr inbounds nuw i8, ptr %.061.i259, i64 6 ; 3 uses
  %i.pl = ptrtoint ptr %i.pk to i64
  %i.pm = and i64 %i.pl, 7
  %.not70.i287.5 = icmp eq i64 %i.pm, 0
  br i1 %.not70.i287.5, label %.preheader.i288, label %.lr.ph.i281.6

.lr.ph.i281.6:                                    ; preds = %bb.bz
  %i.pn = load i8, ptr %i.pk, align 1, !tbaa !7   ; 2 uses
  %.not71.i285.6 = icmp eq i8 %i.pn, -1
  br i1 %.not71.i285.6, label %bb.ca, label %.critedge.thread.i286

bb.ca:                                            ; preds = %.lr.ph.i281.6
  %i.po = add nuw nsw i32 %.2.i261, 56            ; 2 uses
  %i.pp = add nsw i32 %.053.i260, -56             ; 2 uses
  %i.pq = getelementptr inbounds nuw i8, ptr %.061.i259, i64 7 ; 3 uses
  %i.pr = ptrtoint ptr %i.pq to i64
  %i.ps = and i64 %i.pr, 7
  %.not70.i287.6 = icmp eq i64 %i.ps, 0
  br i1 %.not70.i287.6, label %.preheader.i288, label %.lr.ph.i281.7

.lr.ph.i281.7:                                    ; preds = %bb.ca
  %i.pt = load i8, ptr %i.pq, align 1, !tbaa !7   ; 2 uses
  %.not71.i285.7 = icmp eq i8 %i.pt, -1
  br i1 %.not71.i285.7, label %bb.cb, label %.critedge.thread.i286

bb.cb:                                            ; preds = %.lr.ph.i281.7
  %i.pu = add nuw nsw i32 %.2.i261, 64
  %i.pv = add nsw i32 %.053.i260, -64
  %i.pw = getelementptr inbounds nuw i8, ptr %.061.i259, i64 8
  br label %.preheader.i288

.lr.ph97.i293:                                    ; preds = %.lr.ph97.i293.preheader, %bb.cc
  %.096.i294 = phi ptr [ %i.qb, %bb.cc ], [ %.096.i294.ph, %.lr.ph97.i293.preheader ] ; 3 uses
  %.495.i295 = phi i32 [ %i.pz, %bb.cc ], [ %.495.i295.ph, %.lr.ph97.i293.preheader ] ; 2 uses
end_hunk_0
