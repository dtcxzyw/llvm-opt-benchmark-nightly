inline.NumInlined: 78
inline.NumDeleted: 35
begin_hunk_0_@VP8LHashChainFill:bb.a
  %i.ca = lshr i32 %.reass, 14
  %i.cb = zext nneg i32 %i.ca to i64
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.cb ; 2 uses
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !3
  %i.ce = getelementptr inbounds [4 x i8], ptr %i.m, i64 %indvars.iv.next
  store i32 %i.cd, ptr %i.ce, align 4, !tbaa !3
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, 2 ; 2 uses
  %i.cf = trunc nsw i64 %indvars.iv.next to i32
  store i32 %i.cf, ptr %i.cc, align 4, !tbaa !3
  %.not251.1 = icmp eq i32 %i.by, 0
  br i1 %.not251.1, label %.loopexit279.loopexit, label %bb.n, !llvm.loop !35

bb.o:                                             ; preds = %bb.i
  %i.cg = zext i1 %i.al to i32
  %.val265 = load i32, ptr %i.ai, align 4, !tbaa !3
  %i.ch = mul i32 %i.ag, -962287725
  %i.ci = mul i32 %.val265, 1540483478
  %i.cj = add i32 %i.ch, %i.ci
  %i.ck = lshr i32 %i.cj, 14
  %i.cl = zext nneg i32 %i.ck to i64
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.cl ; 2 uses
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !3
  %i.co = getelementptr inbounds [4 x i8], ptr %i.m, i64 %i.ah
  store i32 %i.cn, ptr %i.co, align 4, !tbaa !3
  store i32 %.0213, ptr %i.cm, align 4, !tbaa !3
  br label %.loopexit279

.loopexit279.loopexit:                            ; preds = %bb.n, %.prol.loopexit
  %indvars.iv.next.lcssa = phi i64 [ %indvars.iv.next.lcssa.unr, %.prol.loopexit ], [ %indvars.iv.next.1, %bb.n ]
  %i.cp = trunc nsw i64 %indvars.iv.next.lcssa to i32
  br label %.loopexit279

.loopexit279:                                     ; preds = %.loopexit279.loopexit, %bb.m, %bb.o
  %.1224 = phi i32 [ %i.cg, %bb.o ], [ 0, %bb.m ], [ 0, %.loopexit279.loopexit ]
  %.3216 = phi i32 [ %i.ad, %bb.o ], [ %.0213, %bb.m ], [ %i.cp, %.loopexit279.loopexit ] ; 2 uses
  %i.cq = mul nsw i32 %.3216, %i.u
  %i.cr = sdiv i32 %i.cq, %i.ab
  %i.cs = add nsw i32 %i.cr, %i.l
  %i.ct = tail call i32 @WebPReportProgress(ptr noundef %6, i32 noundef %i.cs, ptr noundef nonnull %8) #11
  %.not252.not = icmp eq i32 %i.ct, 0
  br i1 %.not252.not, label %bb.p, label %.critedge254

bb.p:                                             ; preds = %.loopexit279
  tail call void @WebPSafeFree(ptr noundef nonnull %i.r) #11
  br label %.loopexit, !llvm.loop !36

bb.q:                                             ; preds = %.critedge254
  %i.cu = zext nneg i32 %.0213 to i64             ; 2 uses
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.cu ; 2 uses
  %.val = load i32, ptr %i.cv, align 4, !tbaa !3
  %i.cw = getelementptr i8, ptr %i.cv, i64 4
  %.val264 = load i32, ptr %i.cw, align 4, !tbaa !3
  %i.cx = mul i32 %.val264, -962287725
  %i.cy = mul i32 %.val, 1540483478
  %i.cz = add i32 %i.cx, %i.cy
  %i.da = lshr i32 %i.cz, 14
  %i.db = zext nneg i32 %i.da to i64
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.db
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !3
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.cu
  store i32 %i.dd, ptr %i.de, align 4, !tbaa !3
  tail call void @WebPSafeFree(ptr noundef nonnull %i.r) #11
  %i.df = add nsw i32 %i.l, %i.u                  ; 2 uses
  %i.dg = tail call i32 @WebPReportProgress(ptr noundef %6, i32 noundef %i.df, ptr noundef nonnull %8) #11
  %.not = icmp eq i32 %i.dg, 0
  br i1 %.not, label %.loopexit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dh = load ptr, ptr %0, align 8, !tbaa !30    ; 2 uses
  %i.di = add nsw i32 %i.a, -1                    ; 2 uses
  %i.dj = zext nneg i32 %i.di to i64
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %i.dj
  store i32 0, ptr %i.dk, align 4, !tbaa !3
  store i32 0, ptr %i.dh, align 4, !tbaa !3
  %.not243 = icmp eq i32 %5, 0
  %i.dl = zext nneg i32 %3 to i64
  %i.dm = sub nsw i64 0, %i.dl
  %i.dn = add nuw nsw i32 %i.c, 7                 ; 2 uses
  br label %bb.s

bb.s:                                             ; preds = %._crit_edge, %bb.r
  %.0228 = phi i32 [ %i.ab, %bb.r ], [ %.lcssa, %._crit_edge ] ; 9 uses
  %.not242 = icmp eq i32 %.0228, 0
  br i1 %.not242, label %bb.ae, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.do = sub nsw i32 %i.di, %.0228               ; 2 uses
  %i.dp = tail call range(i32 -2147483645, 4096) i32 @llvm.smin.i32(i32 range(i32 -2147483645, 2147483647) %i.do, i32 4095) ; 3 uses
  %i.dq = zext nneg i32 %.0228 to i64             ; 3 uses
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.dq ; 9 uses
  %i.ds = tail call i32 @llvm.usub.sat.i32(i32 %.0228, i32 %i.k) ; 3 uses
  %i.dt = tail call i32 @llvm.smin.i32(i32 %i.do, i32 256)
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.dq
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !3  ; 2 uses
  br i1 %.not243, label %bb.u, label %bb.x

bb.u:                                             ; preds = %bb.t
  %.not244 = icmp ult i32 %.0228, %3
  br i1 %.not244, label %FindMatchLength.exit.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dw = getelementptr inbounds [4 x i8], ptr %i.dr, i64 %i.dm ; 2 uses
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !3
  %i.dy = load i32, ptr %i.dr, align 4, !tbaa !3
  %.not.i = icmp eq i32 %i.dx, %i.dy
  br i1 %.not.i, label %FindMatchLength.exit, label %FindMatchLength.exit.thread

FindMatchLength.exit:                             ; preds = %bb.v
  %i.dz = load ptr, ptr @VP8LVectorMismatch, align 8, !tbaa !37
  %i.ea = tail call i32 %i.dz(ptr noundef nonnull %i.dw, ptr noundef nonnull %i.dr, i32 noundef range(i32 -2147483645, 2147483647) %i.dp) #11, !inline_history !38
  %.fr = freeze i32 %i.ea                         ; 2 uses
  %i.eb = icmp sgt i32 %.fr, 0
  %spec.select = tail call i32 @llvm.smax.i32(i32 %.fr, i32 0)
  %spec.select371 = select i1 %i.eb, i32 %3, i32 0
  br label %FindMatchLength.exit.thread

FindMatchLength.exit.thread:                      ; preds = %FindMatchLength.exit, %bb.v, %bb.u
  %.0210 = phi i32 [ %i.d, %bb.u ], [ %i.dn, %bb.v ], [ %i.dn, %FindMatchLength.exit ]
  %.1203 = phi i32 [ 0, %bb.u ], [ 0, %bb.v ], [ %spec.select, %FindMatchLength.exit ] ; 3 uses
  %.1198 = phi i32 [ 0, %bb.u ], [ 0, %bb.v ], [ %spec.select371, %FindMatchLength.exit ]
  %i.ec = getelementptr inbounds i8, ptr %i.dr, i64 -4 ; 2 uses
  %i.ed = zext nneg i32 %.1203 to i64             ; 2 uses
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.ec, i64 %i.ed
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !3
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.dr, i64 %i.ed
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !3
  %.not.i269 = icmp eq i32 %i.ef, %i.eh
  br i1 %.not.i269, label %bb.w, label %FindMatchLength.exit271

bb.w:                                             ; preds = %FindMatchLength.exit.thread
  %i.ei = load ptr, ptr @VP8LVectorMismatch, align 8, !tbaa !37
  %i.ej = tail call i32 %i.ei(ptr noundef nonnull %i.ec, ptr noundef nonnull %i.dr, i32 noundef range(i32 -2147483645, 2147483647) %i.dp) #11, !inline_history !38
  br label %FindMatchLength.exit271

FindMatchLength.exit271:                          ; preds = %FindMatchLength.exit.thread, %bb.w
  %.0.i270 = phi i32 [ %i.ej, %bb.w ], [ 0, %FindMatchLength.exit.thread ] ; 2 uses
  %i.ek = icmp sgt i32 %.0.i270, %.1203
  %spec.select256 = tail call i32 @llvm.smax.i32(i32 %.0.i270, i32 %.1203) ; 2 uses
  %spec.select257 = select i1 %i.ek, i32 1, i32 %.1198
  %i.el = add nsw i32 %.0210, -1
  %i.em = icmp eq i32 %spec.select256, 4095
  %i.en = add nsw i32 %i.ds, -1
  %.4217 = select i1 %i.em, i32 %i.en, i32 %i.dv
  br label %bb.x

bb.x:                                             ; preds = %FindMatchLength.exit271, %bb.t
  %.5218 = phi i32 [ %i.dv, %bb.t ], [ %.4217, %FindMatchLength.exit271 ] ; 2 uses
  %.1211 = phi i32 [ %i.d, %bb.t ], [ %i.el, %FindMatchLength.exit271 ]
  %.3205 = phi i32 [ 0, %bb.t ], [ %spec.select256, %FindMatchLength.exit271 ] ; 4 uses
  %.3200 = phi i32 [ 0, %bb.t ], [ %spec.select257, %FindMatchLength.exit271 ] ; 3 uses
  %.not245291 = icmp slt i32 %.5218, %i.ds
  br i1 %.not245291, label %.critedge4, label %.lr.ph297.preheader

.lr.ph297.preheader:                              ; preds = %bb.x
  %i.eo = add nsw i32 %.1211, -1                  ; 2 uses
  %.not246375 = icmp eq i32 %i.eo, 0
  br i1 %.not246375, label %.critedge4, label %.lr.ph380

.lr.ph380:                                        ; preds = %.lr.ph297.preheader
  %i.ep = zext nneg i32 %.3205 to i64
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.dr, i64 %i.ep
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !3
  br label %bb.y

.lr.ph297:                                        ; preds = %select.unfold
  %i.es = add nsw i32 %i.et, -1                   ; 2 uses
  %.not246 = icmp eq i32 %i.es, 0
  br i1 %.not246, label %.critedge4, label %bb.y, !llvm.loop !39

bb.y:                                             ; preds = %.lr.ph380, %.lr.ph297
  %i.et = phi i32 [ %i.eo, %.lr.ph380 ], [ %i.es, %.lr.ph297 ]
  %.6219292379 = phi i32 [ %.5218, %.lr.ph380 ], [ %i.fi, %.lr.ph297 ] ; 4 uses
  %.4206294378 = phi i32 [ %.3205, %.lr.ph380 ], [ %.6208.ph, %.lr.ph297 ] ; 4 uses
  %.4201295377 = phi i32 [ %.3200, %.lr.ph380 ], [ %.6.ph, %.lr.ph297 ] ; 2 uses
  %.0194296376 = phi i32 [ %i.er, %.lr.ph380 ], [ %.2196.ph, %.lr.ph297 ] ; 3 uses
  %i.eu = add nsw i32 %.4206294378, %.6219292379
  %i.ev = sext i32 %i.eu to i64
  %i.ew = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ev
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !3
  %.not247 = icmp eq i32 %i.ex, %.0194296376
  br i1 %.not247, label %bb.z, label %.select.unfold_crit_edge

.select.unfold_crit_edge:                         ; preds = %bb.y
  %.pre = sext i32 %.6219292379 to i64
  br label %select.unfold

bb.z:                                             ; preds = %bb.y
  %i.ey = load ptr, ptr @VP8LVectorMismatch, align 8, !tbaa !37
  %i.ez = sext i32 %.6219292379 to i64            ; 3 uses
  %i.fa = getelementptr inbounds [4 x i8], ptr %2, i64 %i.ez
  %i.fb = tail call i32 %i.ey(ptr noundef nonnull %i.fa, ptr noundef nonnull %i.dr, i32 noundef %i.dp) #11 ; 5 uses
  %i.fc = icmp slt i32 %.4206294378, %i.fb
  br i1 %i.fc, label %bb.aa, label %select.unfold

bb.aa:                                            ; preds = %bb.z
  %i.fd = sub i32 %.0228, %.6219292379            ; 2 uses
  %i.fe = zext nneg i32 %i.fb to i64
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.dr, i64 %i.fe
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !3
  %.not248 = icmp slt i32 %i.fb, %i.dt
  %cond.fr = freeze i1 %.not248
  br i1 %cond.fr, label %select.unfold, label %.critedge4

select.unfold:                                    ; preds = %.select.unfold_crit_edge, %bb.aa, %bb.z
  %.pre-phi339 = phi i64 [ %.pre, %.select.unfold_crit_edge ], [ %i.ez, %bb.aa ], [ %i.ez, %bb.z ]
  %.6208.ph = phi i32 [ %.4206294378, %.select.unfold_crit_edge ], [ %i.fb, %bb.aa ], [ %.4206294378, %bb.z ] ; 3 uses
  %.6.ph = phi i32 [ %.4201295377, %.select.unfold_crit_edge ], [ %i.fd, %bb.aa ], [ %.4201295377, %bb.z ] ; 3 uses
  %.2196.ph = phi i32 [ %.0194296376, %.select.unfold_crit_edge ], [ %i.fg, %bb.aa ], [ %.0194296376, %bb.z ]
  %i.fh = getelementptr inbounds [4 x i8], ptr %i.m, i64 %.pre-phi339
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !3  ; 2 uses
  %.not245 = icmp slt i32 %i.fi, %i.ds
  br i1 %.not245, label %select.unfold..critedge4.loopexit_crit_edge, label %.lr.ph297, !llvm.loop !39

select.unfold..critedge4.loopexit_crit_edge:      ; preds = %select.unfold
  br label %.critedge4, !llvm.loop !39

.critedge4:                                       ; preds = %bb.aa, %.lr.ph297, %.lr.ph297.preheader, %select.unfold..critedge4.loopexit_crit_edge, %bb.x
  %.7209 = phi i32 [ %.3205, %bb.x ], [ %.3205, %.lr.ph297.preheader ], [ %.6208.ph, %select.unfold..critedge4.loopexit_crit_edge ], [ %.6208.ph, %.lr.ph297 ], [ %i.fb, %bb.aa ] ; 3 uses
  %.7 = phi i32 [ %.3200, %bb.x ], [ %.3200, %.lr.ph297.preheader ], [ %.6.ph, %select.unfold..critedge4.loopexit_crit_edge ], [ %.6.ph, %.lr.ph297 ], [ %i.fd, %bb.aa ]
  %.7.fr = freeze i32 %.7                         ; 6 uses
  %i.fj = shl i32 %.7.fr, 12                      ; 2 uses
  %i.fk = load ptr, ptr %0, align 8, !tbaa !30    ; 3 uses
  %i.fl = icmp eq i32 %.7.fr, 0
  %i.fm = or i32 %.7209, %i.fj
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.fk, i64 %i.dq
  store i32 %i.fm, ptr %i.fn, align 4, !tbaa !3
  %i.fo = add nsw i32 %.0228, -1                  ; 5 uses
  %i.fp = icmp eq i32 %i.fo, 0
  %i.fq = icmp ult i32 %i.fo, %.7.fr
  %i.fr = or i1 %i.fp, %i.fq
  %or.cond258306 = select i1 %i.fl, i1 true, i1 %i.fr
  br i1 %or.cond258306, label %._crit_edge, label %.lr.ph310

.lr.ph310:                                        ; preds = %.critedge4
  %.not332 = icmp eq i32 %.7.fr, 1
  br i1 %.not332, label %.lr.ph310.split.us.split, label %.lr.ph310.split.split

.lr.ph310.split.us.split:                         ; preds = %.lr.ph310, %bb.ab
  %i.fs = phi i32 [ %i.ge, %bb.ab ], [ %i.fo, %.lr.ph310 ] ; 4 uses
  %.8308.us = phi i32 [ %spec.select261.us, %bb.ab ], [ %.7209, %.lr.ph310 ] ; 2 uses
  %i.ft = add nsw i32 %i.fs, -1
  %i.fu = zext i32 %i.ft to i64
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.fu
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !3
  %i.fx = zext nneg i32 %i.fs to i64              ; 2 uses
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.fx
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !3
  %.not249.us = icmp eq i32 %i.fw, %i.fz
  br i1 %.not249.us, label %bb.ab, label %._crit_edge

bb.ab:                                            ; preds = %.lr.ph310.split.us.split
  %i.ga = icmp slt i32 %.8308.us, 4095
  %i.gb = zext i1 %i.ga to i32
  %spec.select261.us = add nuw nsw i32 %.8308.us, %i.gb ; 2 uses
  %i.gc = or i32 %spec.select261.us, 4096
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %i.fk, i64 %i.fx
  store i32 %i.gc, ptr %i.gd, align 4, !tbaa !3
  %i.ge = add nsw i32 %i.fs, -1                   ; 2 uses
  %i.gf = icmp eq i32 %i.ge, 0
  br i1 %i.gf, label %._crit_edge, label %.lr.ph310.split.us.split

.lr.ph310.split.split:                            ; preds = %.lr.ph310, %bb.ad
  %i.gg = phi i32 [ %i.gv, %bb.ad ], [ %i.fo, %.lr.ph310 ] ; 7 uses
  %.0192309 = phi i32 [ %spec.select262, %bb.ad ], [ %.0228, %.lr.ph310 ] ; 2 uses
  %.8308 = phi i32 [ %spec.select261, %bb.ad ], [ %.7209, %.lr.ph310 ] ; 3 uses
  %.1229307 = phi i32 [ %i.gg, %bb.ad ], [ %.0228, %.lr.ph310 ]
  %i.gh = sub nuw nsw i32 %i.gg, %.7.fr
  %i.gi = zext i32 %i.gh to i64
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.gi
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !3
  %i.gl = zext nneg i32 %i.gg to i64              ; 2 uses
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.gl
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !3
  %.not249 = icmp eq i32 %i.gk, %i.gn
  br i1 %.not249, label %bb.ac, label %._crit_edge

bb.ac:                                            ; preds = %.lr.ph310.split.split
  %i.go = icmp eq i32 %.8308, 4095
  %i.gp = add i32 %.1229307, 4094
  %i.gq = icmp ult i32 %i.gp, %.0192309
  %or.cond260 = select i1 %i.go, i1 %i.gq, i1 false
  br i1 %or.cond260, label %._crit_edge, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.gr = icmp slt i32 %.8308, 4095               ; 2 uses
  %i.gs = zext i1 %i.gr to i32
  %spec.select261 = add nuw nsw i32 %.8308, %i.gs ; 2 uses
  %spec.select262 = select i1 %i.gr, i32 %i.gg, i32 %.0192309
  %i.gt = or i32 %spec.select261, %i.fj
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %i.fk, i64 %i.gl
  store i32 %i.gt, ptr %i.gu, align 4, !tbaa !3
  %i.gv = add nsw i32 %i.gg, -1                   ; 3 uses
  %i.gw = icmp ult i32 %i.gv, %.7.fr
  br i1 %i.gw, label %._crit_edge, label %.lr.ph310.split.split

._crit_edge:                                      ; preds = %bb.ad, %.lr.ph310.split.split, %bb.ac, %bb.ab, %.lr.ph310.split.us.split, %.critedge4
  %.lcssa = phi i32 [ %i.fo, %.critedge4 ], [ %i.fs, %.lr.ph310.split.us.split ], [ 0, %bb.ab ], [ %i.gv, %bb.ad ], [ %i.gg, %bb.ac ], [ %i.gg, %.lr.ph310.split.split ] ; 2 uses
  %i.gx = sub nsw i32 %i.ab, %.lcssa
  %i.gy = mul i32 %i.gx, %i.v
  %i.gz = udiv i32 %i.gy, %i.ab
  %i.ha = add i32 %i.gz, %i.df
  %i.hb = tail call i32 @WebPReportProgress(ptr noundef %6, i32 noundef %i.ha, ptr noundef nonnull %8) #11
  %.not250.not = icmp eq i32 %i.hb, 0
  br i1 %.not250.not, label %.loopexit, label %bb.s, !llvm.loop !40

bb.ae:                                            ; preds = %bb.s
  %i.hc = add i32 %i.l, %7
  %i.hd = tail call i32 @WebPReportProgress(ptr noundef %6, i32 noundef %i.hc, ptr noundef nonnull %8) #11
  br label %.loopexit

.loopexit:                                        ; preds = %._crit_edge, %bb.p, %bb.q, %bb.ae, %bb.g, %bb.e
  %.4 = phi i32 [ 1, %bb.e ], [ %i.t, %bb.g ], [ 0, %bb.p ], [ 0, %bb.q ], [ %i.hd, %bb.ae ], [ 0, %._crit_edge ]
  ret i32 %.4
}

declare i32 @WebPEncodingSetError(ptr noundef, i32 noundef) local_unnamed_addr #4

declare i32 @WebPReportProgress(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define hidden i32 @VP8LGetBackwardReferences(i32 noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef captures(none) %10, ptr noundef %11, i32 noundef %12, ptr noundef %13) local_unnamed_addr #3 {
bb.a:
  %14 = alloca %struct.VP8LBackwardRefs, align 8  ; 8 uses
  %15 = alloca %struct.VP8LBackwardRefs, align 8  ; 4 uses
  %16 = alloca %struct.VP8LColorCache, align 8    ; 9 uses
  %i.a = alloca [11 x i32], align 16              ; 6 uses
  %17 = alloca [11 x %struct.VP8LColorCache], align 16 ; 9 uses
  %i.b = alloca [11 x ptr], align 16              ; 15 uses
  %i.c = alloca [32 x i32], align 16              ; 82 uses
  %i.d = alloca [32 x i32], align 16              ; 5 uses
  %i.e = alloca [2 x i32], align 8                ; 8 uses
  %i.f = alloca [2 x i64], align 16               ; 7 uses
  %18 = alloca %struct.VP8LHashChain, align 8     ; 16 uses
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %10, align 4, !tbaa !3
  %i.g = tail call fastcc i32 @BackwardReferencesLz77(i32 noundef %0, i32 noundef %1, ptr noundef readonly %2, ptr noundef readonly %8, ptr noundef %9)
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr i8, ptr %9, i64 8          ; 3 uses
  %.val.i = load ptr, ptr %i.h, align 8, !tbaa !16, !noalias !41 ; 4 uses
  %.not.i.i.i = icmp eq ptr %.val.i, null
  br i1 %.not.i.i.i, label %GetBackwardReferencesLowEffort.exit.thread, label %VP8LRefsCursorInit.exit.i.i

VP8LRefsCursorInit.exit.i.i:                      ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %.val.i, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !25, !noalias !44 ; 3 uses
  %.not45.i.i = icmp eq ptr %i.j, null
  br i1 %.not45.i.i, label %GetBackwardReferencesLowEffort.exit.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %VP8LRefsCursorInit.exit.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %.val.i, i64 16
  %i.l = load i32, ptr %i.k, align 8, !tbaa !26, !noalias !44
  %i.m = sext i32 %i.l to i64
  %i.n = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.m
  %i.o = add nsw i32 %0, -8
  %i.p = add i32 %0, 24
  br label %bb.d

bb.d:                                             ; preds = %VP8LRefsCursorNext.exit.i.i, %.lr.ph.i.i
  %.sroa.0.08.i.i = phi ptr [ %i.j, %.lr.ph.i.i ], [ %.sroa.0.1.i.i, %VP8LRefsCursorNext.exit.i.i ] ; 3 uses
  %.sroa.10.07.i.i = phi ptr [ %.val.i, %.lr.ph.i.i ], [ %.sroa.10.1.i.i, %VP8LRefsCursorNext.exit.i.i ] ; 2 uses
  %.sroa.13.06.i.i = phi ptr [ %i.n, %.lr.ph.i.i ], [ %.sroa.13.1.i.i, %VP8LRefsCursorNext.exit.i.i ] ; 2 uses
  %.val4.i.i = load i8, ptr %.sroa.0.08.i.i, align 4, !tbaa !47
  %.not.i.i = icmp eq i8 %.val4.i.i, 2
  br i1 %.not.i.i, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i, i64 4 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !50   ; 3 uses
  %i.s = sdiv i32 %i.r, %0                        ; 5 uses
  %i.t = mul nsw i32 %i.s, %0                     ; 0 uses
  %.recomposed = srem i32 %i.r, %0                ; 4 uses
  %i.u = icmp slt i32 %.recomposed, 9
  %i.v = icmp slt i32 %i.s, 8
  %or.cond.i.i.i = and i1 %i.v, %i.u
  br i1 %or.cond.i.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.w = shl nsw i32 %i.s, 4
  %i.x = or disjoint i32 %i.w, 8
  %i.y = sub i32 %i.x, %.recomposed
  %i.z = sext i32 %i.y to i64
  %i.aa = getelementptr inbounds i8, ptr @plane_to_code_lut, i64 %i.z
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !7
  %i.ac = zext i8 %i.ab to i32
  %i.ad = add nuw nsw i32 %i.ac, 1
  br label %VP8LDistanceToPlaneCode.exit.i.i

bb.g:                                             ; preds = %bb.e
  %i.ae = icmp sgt i32 %.recomposed, %i.o
  %i.af = icmp slt i32 %i.s, 7
  %or.cond3.i.i.i = and i1 %i.af, %i.ae
  br i1 %or.cond3.i.i.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ag = shl i32 %i.s, 4
  %i.ah = add i32 %i.p, %i.ag
end_hunk_0
begin_hunk_1_@VP8LGetBackwardReferences:bb.a
  %i.wc = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.wb
  store i32 %i.vy, ptr %i.wc, align 4, !tbaa !3
  br label %.preheader221.26.i.i

.preheader221.26.i.i:                             ; preds = %bb.ee, %.preheader221.25.i.i
  %.1151.25.i.i = phi i32 [ %.1151.24.i.i, %.preheader221.25.i.i ], [ %i.wa, %bb.ee ] ; 3 uses
  %i.wd = load i32, ptr %i.cw, align 8, !tbaa !3  ; 2 uses
  %i.we = icmp eq i32 %i.wd, 0
  br i1 %i.we, label %.preheader221.27.i.i, label %bb.ef

bb.ef:                                            ; preds = %.preheader221.26.i.i
  %i.wf = add nuw nsw i32 %.1151.25.i.i, 1
  %i.wg = zext nneg i32 %.1151.25.i.i to i64
  %i.wh = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.wg
  store i32 %i.wd, ptr %i.wh, align 4, !tbaa !3
  br label %.preheader221.27.i.i

.preheader221.27.i.i:                             ; preds = %bb.ef, %.preheader221.26.i.i
  %.1151.26.i.i = phi i32 [ %.1151.25.i.i, %.preheader221.26.i.i ], [ %i.wf, %bb.ef ] ; 3 uses
  %i.wi = load i32, ptr %i.cx, align 4, !tbaa !3  ; 2 uses
  %i.wj = icmp eq i32 %i.wi, 0
  br i1 %i.wj, label %.preheader221.28.i.i, label %bb.eg

bb.eg:                                            ; preds = %.preheader221.27.i.i
  %i.wk = add nuw nsw i32 %.1151.26.i.i, 1
  %i.wl = zext nneg i32 %.1151.26.i.i to i64
  %i.wm = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.wl
  store i32 %i.wi, ptr %i.wm, align 4, !tbaa !3
  br label %.preheader221.28.i.i

.preheader221.28.i.i:                             ; preds = %bb.eg, %.preheader221.27.i.i
  %.1151.27.i.i = phi i32 [ %.1151.26.i.i, %.preheader221.27.i.i ], [ %i.wk, %bb.eg ] ; 3 uses
  %i.wn = load i32, ptr %i.cy, align 16, !tbaa !3 ; 2 uses
  %i.wo = icmp eq i32 %i.wn, 0
  br i1 %i.wo, label %.preheader221.29.i.i, label %bb.eh

bb.eh:                                            ; preds = %.preheader221.28.i.i
  %i.wp = add nuw nsw i32 %.1151.27.i.i, 1
  %i.wq = zext nneg i32 %.1151.27.i.i to i64
  %i.wr = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.wq
  store i32 %i.wn, ptr %i.wr, align 4, !tbaa !3
  br label %.preheader221.29.i.i

.preheader221.29.i.i:                             ; preds = %bb.eh, %.preheader221.28.i.i
  %.1151.28.i.i = phi i32 [ %.1151.27.i.i, %.preheader221.28.i.i ], [ %i.wp, %bb.eh ] ; 3 uses
  %i.ws = load i32, ptr %i.cz, align 4, !tbaa !3  ; 2 uses
  %i.wt = icmp eq i32 %i.ws, 0
  br i1 %i.wt, label %.preheader221.30.i.i, label %bb.ei

bb.ei:                                            ; preds = %.preheader221.29.i.i
  %i.wu = add nuw nsw i32 %.1151.28.i.i, 1
  %i.wv = zext nneg i32 %.1151.28.i.i to i64
  %i.ww = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.wv
  store i32 %i.ws, ptr %i.ww, align 4, !tbaa !3
  br label %.preheader221.30.i.i

.preheader221.30.i.i:                             ; preds = %bb.ei, %.preheader221.29.i.i
  %.1151.29.i.i = phi i32 [ %.1151.28.i.i, %.preheader221.29.i.i ], [ %i.wu, %bb.ei ] ; 3 uses
  %i.wx = load i32, ptr %i.da, align 8, !tbaa !3  ; 2 uses
  %i.wy = icmp eq i32 %i.wx, 0
  br i1 %i.wy, label %.preheader221.31.i.i, label %bb.ej

bb.ej:                                            ; preds = %.preheader221.30.i.i
  %i.wz = add nuw nsw i32 %.1151.29.i.i, 1
  %i.xa = zext nneg i32 %.1151.29.i.i to i64
  %i.xb = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.xa
  store i32 %i.wx, ptr %i.xb, align 4, !tbaa !3
  br label %.preheader221.31.i.i

.preheader221.31.i.i:                             ; preds = %bb.ej, %.preheader221.30.i.i
  %.1151.30.i.i = phi i32 [ %.1151.29.i.i, %.preheader221.30.i.i ], [ %i.wz, %bb.ej ] ; 4 uses
  %i.xc = load i32, ptr %i.db, align 4, !tbaa !3  ; 2 uses
  %i.xd = icmp eq i32 %i.xc, 0
  br i1 %i.xd, label %.preheader220.i.i, label %.preheader220.thread.i.i

.preheader220.thread.i.i:                         ; preds = %.preheader221.31.i.i
  %i.xe = add nuw nsw i32 %.1151.30.i.i, 1
  %i.xf = zext nneg i32 %.1151.30.i.i to i64
  %i.xg = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.xf
  store i32 %i.xc, ptr %i.xg, align 4, !tbaa !3
  br label %.preheader219.us.preheader.i.i

.preheader220.i.i:                                ; preds = %.preheader221.31.i.i
  %.not.i133.i = icmp eq i32 %.1151.30.i.i, 0
  br i1 %.not.i133.i, label %._crit_edge.i.i, label %.preheader219.us.preheader.i.i

._crit_edge.i.i:                                  ; preds = %bb.de, %.preheader220.i.i
  %i.xh = phi i1 [ false, %.preheader220.i.i ], [ true, %bb.de ]
  %.1151.31442.i.i = phi i32 [ 0, %.preheader220.i.i ], [ %.1151.31443.i.i, %bb.de ] ; 2 uses
  %.0166.lcssa.i.i = phi i32 [ 0, %.preheader220.i.i ], [ %.1167.us.i.i, %bb.de ]
  %i.xi = load ptr, ptr %18, align 8, !tbaa !30   ; 3 uses
  store i32 0, ptr %i.xi, align 4, !tbaa !3
  br i1 %i.bo, label %.lr.ph256.i.i, label %._crit_edge257.i.i

.lr.ph256.i.i:                                    ; preds = %._crit_edge.i.i
  %.val195.i.i = load ptr, ptr %8, align 8, !tbaa !30
  %wide.trip.count347.i.i = zext nneg i32 %.1151.31442.i.i to i64
  br label %bb.ek

bb.ek:                                            ; preds = %bb.et, %.lr.ph256.i.i
  %indvars.iv354.i.i = phi i64 [ 1, %.lr.ph256.i.i ], [ %indvars.iv.next355.i.i, %bb.et ] ; 5 uses
  %.0168252.i.i = phi i32 [ -1, %.lr.ph256.i.i ], [ %.1169.i.i, %bb.et ]
  %.0174251.i.i = phi i32 [ -1, %.lr.ph256.i.i ], [ %.1175.i.i, %bb.et ] ; 2 uses
  %i.xj = getelementptr inbounds nuw [4 x i8], ptr %.val195.i.i, i64 %indvars.iv354.i.i
  %i.xk = load i32, ptr %i.xj, align 4, !tbaa !3  ; 2 uses
  %i.xl = and i32 %i.xk, 4095
  %i.xm = icmp eq i32 %i.xl, 4095
  br i1 %i.xm, label %bb.el, label %.loopexit217.i.i

bb.el:                                            ; preds = %bb.ek
  %i.xn = lshr i32 %i.xk, 12                      ; 2 uses
  br i1 %i.xh, label %.lr.ph241.i.i, label %.loopexit217.i.i

bb.em:                                            ; preds = %.lr.ph241.i.i
  %indvars.iv.next345.i.i = add nuw nsw i64 %indvars.iv344.i.i, 1 ; 2 uses
  %exitcond348.not.i.i = icmp eq i64 %indvars.iv.next345.i.i, %wide.trip.count347.i.i
  br i1 %exitcond348.not.i.i, label %.loopexit217.i.i, label %.lr.ph241.i.i, !llvm.loop !59

.lr.ph241.i.i:                                    ; preds = %bb.el, %bb.em
  %indvars.iv344.i.i = phi i64 [ %indvars.iv.next345.i.i, %bb.em ], [ 0, %bb.el ] ; 2 uses
  %i.xo = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv344.i.i
  %i.xp = load i32, ptr %i.xo, align 4, !tbaa !3
  %i.xq = icmp eq i32 %i.xn, %i.xp
  br i1 %i.xq, label %.loopexit.thread.i.i, label %bb.em

.loopexit217.i.i:                                 ; preds = %bb.em, %bb.el, %bb.ek
  %i.xr = add nsw i32 %.0174251.i.i, -2
  %i.xs = icmp ult i32 %i.xr, 4093                ; 4 uses
  %i.xt = select i1 %i.xs, i32 %.0166.lcssa.i.i, i32 %.1151.31442.i.i ; 2 uses
  %i.xu = add nsw i32 %.0174251.i.i, -1
  %i.xv = select i1 %i.xs, i32 %i.xu, i32 0       ; 2 uses
  %i.xw = select i1 %i.xs, i32 %.0168252.i.i, i32 0 ; 2 uses
  %i.xx = icmp sgt i32 %i.xt, 0
  br i1 %i.xx, label %.lr.ph246.i.i, label %.loopexit.i.i

.lr.ph246.i.i:                                    ; preds = %.loopexit217.i.i
  %.pn.in.v.i.i = select i1 %i.xs, ptr %i.d, ptr %i.c
  %i.xy = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv354.i.i
  %wide.trip.count352.i.i = zext nneg i32 %i.xt to i64
  %i.xz = trunc nuw nsw i64 %indvars.iv354.i.i to i32 ; 2 uses
  br label %bb.en

bb.en:                                            ; preds = %bb.es, %.lr.ph246.i.i
  %indvars.iv349.i.i = phi i64 [ 0, %.lr.ph246.i.i ], [ %indvars.iv.next350.i.i, %bb.es ] ; 2 uses
  %.2155244.i.i = phi i32 [ %i.xw, %.lr.ph246.i.i ], [ %.4.ph.i.i, %bb.es ] ; 3 uses
  %.0157243.i.i = phi i32 [ %i.xv, %.lr.ph246.i.i ], [ %.2159.ph.i.i, %bb.es ] ; 4 uses
  %.pn.in.i.i = getelementptr inbounds nuw [4 x i8], ptr %.pn.in.v.i.i, i64 %indvars.iv349.i.i
  %.pn.i132.i = load i32, ptr %.pn.in.i.i, align 4, !tbaa !3 ; 3 uses
  %i.ya = sub nsw i32 %i.xz, %.pn.i132.i          ; 3 uses
  %i.yb = icmp slt i32 %i.ya, 0
  br i1 %i.yb, label %bb.es, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %i.yc = zext nneg i32 %i.ya to i64
  %i.yd = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.yc
  %i.ye = load i32, ptr %i.yd, align 4, !tbaa !3
  %i.yf = load i32, ptr %i.xy, align 4, !tbaa !3
  %.not186.i.i = icmp eq i32 %i.ye, %i.yf
  br i1 %.not186.i.i, label %.preheader.i.i, label %bb.es

.preheader.i.i:                                   ; preds = %bb.eo, %bb.eq
  %.0147.i.i = phi i32 [ %.1148.i.i, %bb.eq ], [ 0, %bb.eo ] ; 2 uses
  %.0145.i.i = phi i32 [ %i.yp, %bb.eq ], [ %i.xz, %bb.eo ] ; 2 uses
  %.0143.i.i = phi i32 [ %i.ys, %bb.eq ], [ %i.ya, %bb.eo ] ; 2 uses
  %i.yg = zext nneg i32 %.0143.i.i to i64
  %i.yh = getelementptr inbounds nuw [2 x i8], ptr %i.jr, i64 %i.yg
  %i.yi = load i16, ptr %i.yh, align 2, !tbaa !54 ; 3 uses
  %i.yj = zext nneg i32 %.0145.i.i to i64
  %i.yk = getelementptr inbounds nuw [2 x i8], ptr %i.jr, i64 %i.yj
  %i.yl = load i16, ptr %i.yk, align 2, !tbaa !54 ; 2 uses
  %.not187.i.i = icmp eq i16 %i.yi, %i.yl
  br i1 %.not187.i.i, label %bb.ep, label %.thread199.i.i

.thread199.i.i:                                   ; preds = %.preheader.i.i
  %i.ym = call i16 @llvm.umin.i16(i16 %i.yi, i16 %i.yl)
  %i.yn = zext i16 %i.ym to i32
  %.1148204.i.i = add nuw nsw i32 %.0147.i.i, %i.yn
  br label %.critedge2.i.i

bb.ep:                                            ; preds = %.preheader.i.i
  %i.yo = zext i16 %i.yi to i32                   ; 3 uses
  %i.yp = add nuw nsw i32 %.0145.i.i, %i.yo       ; 3 uses
  %.1148.i.i = add nuw nsw i32 %.0147.i.i, %i.yo  ; 4 uses
  %i.yq = icmp samesign ult i32 %.1148.i.i, 4096
  %i.yr = icmp slt i32 %i.yp, %i.bj
  %or.cond192.i.i = select i1 %i.yq, i1 %i.yr, i1 false
  br i1 %or.cond192.i.i, label %bb.eq, label %.critedge2.i.i

bb.eq:                                            ; preds = %bb.ep
  %i.ys = add nuw nsw i32 %.0143.i.i, %i.yo       ; 2 uses
  %i.yt = zext nneg i32 %i.ys to i64
  %i.yu = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.yt
  %i.yv = load i32, ptr %i.yu, align 4, !tbaa !3
  %i.yw = zext nneg i32 %i.yp to i64
  %i.yx = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.yw
  %i.yy = load i32, ptr %i.yx, align 4, !tbaa !3
  %i.yz = icmp eq i32 %i.yv, %i.yy
  br i1 %i.yz, label %.preheader.i.i, label %.critedge2.i.i, !llvm.loop !60

.critedge2.i.i:                                   ; preds = %bb.eq, %bb.ep, %.thread199.i.i
  %.1148207.i.i = phi i32 [ %.1148204.i.i, %.thread199.i.i ], [ %.1148.i.i, %bb.ep ], [ %.1148.i.i, %bb.eq ]
  %.1148207.fr.i.i = freeze i32 %.1148207.i.i     ; 3 uses
  %i.za = icmp slt i32 %.0157243.i.i, %.1148207.fr.i.i
  br i1 %i.za, label %bb.er, label %bb.es

bb.er:                                            ; preds = %.critedge2.i.i
  %i.zb = icmp ugt i32 %.1148207.fr.i.i, 4094
  br i1 %i.zb, label %.loopexit.thread.i.i, label %bb.es

bb.es:                                            ; preds = %bb.er, %.critedge2.i.i, %bb.eo, %bb.en
  %.2159.ph.i.i = phi i32 [ %.0157243.i.i, %.critedge2.i.i ], [ %.0157243.i.i, %bb.eo ], [ %.0157243.i.i, %bb.en ], [ %.1148207.fr.i.i, %bb.er ] ; 2 uses
  %.4.ph.i.i = phi i32 [ %.2155244.i.i, %.critedge2.i.i ], [ %.2155244.i.i, %bb.eo ], [ %.2155244.i.i, %bb.en ], [ %.pn.i132.i, %bb.er ] ; 2 uses
  %indvars.iv.next350.i.i = add nuw nsw i64 %indvars.iv349.i.i, 1 ; 2 uses
  %exitcond353.not.i.i = icmp eq i64 %indvars.iv.next350.i.i, %wide.trip.count352.i.i
  br i1 %exitcond353.not.i.i, label %.loopexit.i.i, label %bb.en, !llvm.loop !61

.loopexit.i.i:                                    ; preds = %bb.es, %.loopexit217.i.i
  %.4161.i.i = phi i32 [ %i.xv, %.loopexit217.i.i ], [ %.2159.ph.i.i, %bb.es ] ; 2 uses
  %.6.i.i = phi i32 [ %i.xw, %.loopexit217.i.i ], [ %.4.ph.i.i, %bb.es ]
  %i.zc = icmp slt i32 %.4161.i.i, 5
  br i1 %i.zc, label %bb.et, label %.loopexit.thread.i.i

.loopexit.thread.i.i:                             ; preds = %.lr.ph241.i.i, %bb.er, %.loopexit.i.i
  %.6447.i.i = phi i32 [ %.6.i.i, %.loopexit.i.i ], [ %.pn.i132.i, %bb.er ], [ %i.xn, %.lr.ph241.i.i ] ; 2 uses
  %.4161446.i.i = phi i32 [ %.4161.i.i, %.loopexit.i.i ], [ 4095, %bb.er ], [ 4095, %.lr.ph241.i.i ] ; 2 uses
  %i.zd = shl i32 %.6447.i.i, 12
  %i.ze = or i32 %i.zd, %.4161446.i.i
  br label %bb.et

bb.et:                                            ; preds = %.loopexit.thread.i.i, %.loopexit.i.i
  %.sink.i.i = phi i32 [ %i.ze, %.loopexit.thread.i.i ], [ 0, %.loopexit.i.i ]
  %.1175.i.i = phi i32 [ %.4161446.i.i, %.loopexit.thread.i.i ], [ 0, %.loopexit.i.i ]
  %.1169.i.i = phi i32 [ %.6447.i.i, %.loopexit.thread.i.i ], [ 0, %.loopexit.i.i ]
  %i.zf = getelementptr inbounds nuw [4 x i8], ptr %i.xi, i64 %indvars.iv354.i.i
  store i32 %.sink.i.i, ptr %i.zf, align 4, !tbaa !3
  %indvars.iv.next355.i.i = add nuw nsw i64 %indvars.iv354.i.i, 1 ; 2 uses
  %exitcond358.not.i.i = icmp eq i64 %indvars.iv.next355.i.i, %wide.trip.count357.i.i
  br i1 %exitcond358.not.i.i, label %._crit_edge257.i.i, label %bb.ek, !llvm.loop !62

._crit_edge257.i.i:                               ; preds = %bb.et, %._crit_edge.i.i
  store i32 0, ptr %i.xi, align 4, !tbaa !3
  call void @WebPSafeFree(ptr noundef nonnull %i.jr) #11
  %i.zg = call fastcc i32 @BackwardReferencesLz77(i32 noundef %0, i32 noundef %1, ptr noundef readonly %2, ptr noundef nonnull readonly %18, ptr noundef nonnull %i.bg)
  br label %BackwardReferencesLz77Box.exit.i

BackwardReferencesLz77Box.exit.i:                 ; preds = %._crit_edge257.i.i, %bb.ay
  %.0.i131.i = phi i32 [ %i.zg, %._crit_edge257.i.i ], [ 0, %bb.ay ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  br label %bb.eu

bb.eu:                                            ; preds = %BackwardReferencesLz77Box.exit.i, %bb.aw, %BackwardReferencesRle.exit.i
  %.0112.i = phi i32 [ %.0.i131.i, %BackwardReferencesLz77Box.exit.i ], [ %i.jn, %BackwardReferencesRle.exit.i ], [ %i.jo, %bb.aw ]
  %.not123.i = icmp eq i32 %.0112.i, 0
  br i1 %.not123.i, label %.critedge, label %.preheader242.i

.preheader242.i:                                  ; preds = %bb.eu, %bb.gj
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.gj ], [ 1, %bb.eu ] ; 7 uses
  %.0109254.i = phi i64 [ %.2111.ph.i, %bb.gj ], [ 0, %bb.eu ] ; 2 uses
  %i.zh = icmp eq i64 %indvars.iv.i, 1            ; 2 uses
  %i.zi = select i1 %i.zh, i32 0, i32 %6          ; 5 uses
  %i.zj = icmp ne i64 %indvars.iv.i, 1
  %or.cond.i = or i1 %i.be, %i.zj
  br i1 %or.cond.i, label %bb.ev, label %bb.gj

bb.ev:                                            ; preds = %.preheader242.i
  %i.zk = icmp eq i64 %indvars.iv.i, 0            ; 2 uses
  br i1 %i.zk, label %bb.ew, label %.thread216.i

bb.ew:                                            ; preds = %bb.ev
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(44) %i.a, i8 0, i64 44, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #11
  %i.zl = load ptr, ptr %i.de, align 8, !tbaa !16, !noalias !63 ; 4 uses
  %.not.i.i135.i = icmp eq ptr %i.zl, null
  br i1 %.not.i.i135.i, label %VP8LRefsCursorInit.exit.i.i43, label %bb.ex

bb.ex:                                            ; preds = %bb.ew
  %i.zm = getelementptr inbounds nuw i8, ptr %i.zl, i64 8
  %i.zn = load ptr, ptr %i.zm, align 8, !tbaa !25, !noalias !63 ; 2 uses
  %i.zo = getelementptr inbounds nuw i8, ptr %i.zl, i64 16
  %i.zp = load i32, ptr %i.zo, align 8, !tbaa !26, !noalias !63
  %i.zq = sext i32 %i.zp to i64
  %i.zr = getelementptr inbounds [8 x i8], ptr %i.zn, i64 %i.zq
  br label %VP8LRefsCursorInit.exit.i.i43

VP8LRefsCursorInit.exit.i.i43:                    ; preds = %bb.ex, %bb.ew
  %.sink2.i.i.i = phi ptr [ %i.zn, %bb.ex ], [ null, %bb.ew ] ; 2 uses
  %.sink.i.i.i = phi ptr [ %i.zr, %bb.ex ], [ null, %bb.ew ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(88) %i.b, i8 0, i64 88, i1 false)
  br i1 %i.dk, label %CalculateBestCacheSize.exit.thread.i, label %.preheader127.i.i

.preheader127.i.i:                                ; preds = %VP8LRefsCursorInit.exit.i.i43
  br i1 %.not129.i.i, label %.preheader126.i.i, label %.lr.ph.preheader.i136.i

.lr.ph.preheader.i136.i:                          ; preds = %.preheader127.i.i
  %i.zs = call ptr @VP8LAllocateHistogram(i32 noundef 0) #11 ; 4 uses
  store ptr %i.zs, ptr %i.b, align 16, !tbaa !37
  %i.zt = icmp eq ptr %i.zs, null
  br i1 %i.zt, label %.lr.ph152.preheader.i.i, label %.lr.ph.peel.next.i.i

.lr.ph.peel.next.i.i:                             ; preds = %.lr.ph.preheader.i136.i
  call void @VP8LHistogramInit(ptr noundef nonnull %i.zs, i32 noundef 0, i32 noundef 1) #11
  br label %.lr.ph.i137.i

.preheader126.i.i:                                ; preds = %bb.ez, %.preheader127.i.i
  %i.zu = phi ptr [ null, %.preheader127.i.i ], [ %i.zs, %bb.ez ] ; 5 uses
  %.not120140.i.i = icmp eq ptr %.sink2.i.i.i, null
  br i1 %.not120140.i.i, label %.preheader.i141.i, label %.lr.ph145.i.i

.lr.ph145.i.i:                                    ; preds = %.preheader126.i.i
  %i.zv = getelementptr inbounds nuw i8, ptr %i.zu, i64 1032
  %i.zw = getelementptr inbounds nuw i8, ptr %i.zu, i64 8
  %i.zx = getelementptr inbounds nuw i8, ptr %i.zu, i64 2056
  br label %bb.fa

.lr.ph.i137.i:                                    ; preds = %bb.ez, %.lr.ph.peel.next.i.i
  %indvars.iv.i138.i = phi i64 [ 1, %.lr.ph.peel.next.i.i ], [ %indvars.iv.next.i139.i, %bb.ez ] ; 5 uses
  %i.zy = trunc nuw nsw i64 %indvars.iv.i138.i to i32 ; 3 uses
  %i.zz = call ptr @VP8LAllocateHistogram(i32 noundef %i.zy) #11 ; 3 uses
  %i.aaa = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.i138.i
  store ptr %i.zz, ptr %i.aaa, align 8, !tbaa !37
  %i.aab = icmp eq ptr %i.zz, null
  br i1 %i.aab, label %.lr.ph152.preheader.i.i, label %bb.ey

bb.ey:                                            ; preds = %.lr.ph.i137.i
  call void @VP8LHistogramInit(ptr noundef nonnull %i.zz, i32 noundef %i.zy, i32 noundef 1) #11
  %i.aac = getelementptr inbounds nuw [16 x i8], ptr %17, i64 %indvars.iv.i138.i
  %i.aad = call i32 @VP8LColorCacheInit(ptr noundef nonnull %i.aac, i32 noundef %i.zy) #11 ; 2 uses
  %i.aae = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i138.i
  store i32 %i.aad, ptr %i.aae, align 4, !tbaa !3
  %.not111.i.i = icmp eq i32 %i.aad, 0
  br i1 %.not111.i.i, label %.lr.ph152.preheader.i.i, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %indvars.iv.next.i139.i = add nuw nsw i64 %indvars.iv.i138.i, 1 ; 2 uses
  %exitcond.not.i140.i = icmp eq i64 %indvars.iv.next.i139.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i140.i, label %.preheader126.i.i, label %.lr.ph.i137.i, !llvm.loop !66

.preheader.i141.i:                                ; preds = %VP8LRefsCursorNext.exit.i.i44, %bb.fj, %.preheader126.i.i
  br i1 %.not129.i.i, label %CalculateBestCacheSize.exit.thread.i, label %.lr.ph149.peel.next.i.i

.lr.ph149.peel.next.i.i:                          ; preds = %.preheader.i141.i
  %i.aaf = call i64 @VP8LHistogramEstimateBits(ptr noundef %i.zu) #11
  br label %.lr.ph149.i.i

bb.fa:                                            ; preds = %VP8LRefsCursorNext.exit.i.i44, %.lr.ph145.i.i
  %.092144.i.i = phi ptr [ %2, %.lr.ph145.i.i ], [ %.2.i.i, %VP8LRefsCursorNext.exit.i.i44 ] ; 5 uses
  %.sroa.0.0143.i.i = phi ptr [ %.sink2.i.i.i, %.lr.ph145.i.i ], [ %.sroa.0.1.i.i45, %VP8LRefsCursorNext.exit.i.i44 ] ; 3 uses
  %.sroa.8.0142.i.i = phi ptr [ %i.zl, %.lr.ph145.i.i ], [ %.sroa.8.1.i.i, %VP8LRefsCursorNext.exit.i.i44 ] ; 2 uses
  %.sroa.11.0141.i.i = phi ptr [ %.sink.i.i.i, %.lr.ph145.i.i ], [ %.sroa.11.1.i.i, %VP8LRefsCursorNext.exit.i.i44 ] ; 2 uses
  %.val114.i.i = load i8, ptr %.sroa.0.0143.i.i, align 4, !tbaa !47
  %.not121.i.i = icmp eq i8 %.val114.i.i, 0
  br i1 %.not121.i.i, label %bb.fb, label %bb.ff

bb.fb:                                            ; preds = %bb.fa
  %i.aag = getelementptr inbounds nuw i8, ptr %.092144.i.i, i64 4 ; 2 uses
  %i.aah = load i32, ptr %.092144.i.i, align 4, !tbaa !3 ; 7 uses
  %i.aai = lshr i32 %i.aah, 24
  %i.aaj = lshr i32 %i.aah, 16
  %i.aak = and i32 %i.aaj, 255
  %i.aal = lshr i32 %i.aah, 8
  %i.aam = and i32 %i.aal, 255
  %i.aan = and i32 %i.aah, 255
  %i.aao = zext nneg i32 %i.aan to i64            ; 2 uses
  %i.aap = getelementptr inbounds nuw [4 x i8], ptr %i.zv, i64 %i.aao ; 2 uses
  %i.aaq = load i32, ptr %i.aap, align 4, !tbaa !3
  %i.aar = add i32 %i.aaq, 1
  store i32 %i.aar, ptr %i.aap, align 4, !tbaa !3
  %i.aas = load ptr, ptr %i.zu, align 8, !tbaa !68
  %i.aat = zext nneg i32 %i.aam to i64            ; 2 uses
  %i.aau = getelementptr inbounds nuw [4 x i8], ptr %i.aas, i64 %i.aat ; 2 uses
  %i.aav = load i32, ptr %i.aau, align 4, !tbaa !3
  %i.aaw = add i32 %i.aav, 1
  store i32 %i.aaw, ptr %i.aau, align 4, !tbaa !3
  %i.aax = zext nneg i32 %i.aak to i64            ; 2 uses
  %i.aay = getelementptr inbounds nuw [4 x i8], ptr %i.zw, i64 %i.aax ; 2 uses
  %i.aaz = load i32, ptr %i.aay, align 4, !tbaa !3
  %i.aba = add i32 %i.aaz, 1
  store i32 %i.aba, ptr %i.aay, align 4, !tbaa !3
  %i.abb = zext nneg i32 %i.aai to i64            ; 2 uses
  %i.abc = getelementptr inbounds nuw [4 x i8], ptr %i.zx, i64 %i.abb ; 2 uses
  %i.abd = load i32, ptr %i.abc, align 4, !tbaa !3
  %i.abe = add i32 %i.abd, 1
  store i32 %i.abe, ptr %i.abc, align 4, !tbaa !3
  br i1 %i.dn, label %.lr.ph139.preheader.i.i, label %.loopexit123.i.i

.lr.ph139.preheader.i.i:                          ; preds = %bb.fb
  %i.abf = mul i32 %i.aah, 506832829
  %i.abg = lshr i32 %i.abf, %i.dm
  br label %.lr.ph139.i.i

.lr.ph139.i.i:                                    ; preds = %bb.fe, %.lr.ph139.preheader.i.i
  %indvars.iv169.i.i = phi i64 [ %i.do, %.lr.ph139.preheader.i.i ], [ %indvars.iv.next170.i.i, %bb.fe ] ; 5 uses
  %.091138.i.i = phi i32 [ %i.abg, %.lr.ph139.preheader.i.i ], [ %i.acm, %bb.fe ] ; 3 uses
  %i.abh = getelementptr inbounds nuw [16 x i8], ptr %17, i64 %indvars.iv169.i.i
  %.val115.i.i = load ptr, ptr %i.abh, align 16, !tbaa !71
  %i.abi = zext i32 %.091138.i.i to i64
  %i.abj = getelementptr inbounds nuw [4 x i8], ptr %.val115.i.i, i64 %i.abi ; 2 uses
  %i.abk = load i32, ptr %i.abj, align 4, !tbaa !3
  %i.abl = icmp eq i32 %i.abk, %i.aah
  br i1 %i.abl, label %bb.fc, label %bb.fd

bb.fc:                                            ; preds = %.lr.ph139.i.i
  %i.abm = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv169.i.i
  %i.abn = load ptr, ptr %i.abm, align 8, !tbaa !37
  %i.abo = load ptr, ptr %i.abn, align 8, !tbaa !68
  %i.abp = sext i32 %.091138.i.i to i64
  %i.abq = getelementptr [4 x i8], ptr %i.abo, i64 %i.abp
  %i.abr = getelementptr i8, ptr %i.abq, i64 1120 ; 2 uses
end_hunk_1
begin_hunk_2_@VP8LGetBackwardReferences:bb.a
  %.sroa.0.08.i.1.i = phi ptr [ %i.aom, %.lr.ph.i175.1.i ], [ %.sroa.0.1.i178.1.i, %VP8LRefsCursorNext.exit.i177.1.i ] ; 3 uses
  %.sroa.10.07.i.1.i = phi ptr [ %.val.1.i, %.lr.ph.i175.1.i ], [ %.sroa.10.1.i.1.i, %VP8LRefsCursorNext.exit.i177.1.i ] ; 2 uses
  %.sroa.13.06.i.1.i = phi ptr [ %i.aoq, %.lr.ph.i175.1.i ], [ %.sroa.13.1.i.1.i, %VP8LRefsCursorNext.exit.i177.1.i ] ; 2 uses
  %.val4.i.1.i = load i8, ptr %.sroa.0.08.i.1.i, align 4, !tbaa !47
  %.not.i176.1.i = icmp eq i8 %.val4.i.1.i, 2
  br i1 %.not.i176.1.i, label %bb.ht, label %bb.hy

bb.ht:                                            ; preds = %bb.hs
  %i.aor = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.1.i, i64 4 ; 2 uses
  %i.aos = load i32, ptr %i.aor, align 4, !tbaa !50 ; 3 uses
  %i.aot = sdiv i32 %i.aos, %0                    ; 5 uses
  %i.aou = mul nsw i32 %i.aot, %0                 ; 0 uses
  %.recomposed288 = srem i32 %i.aos, %0           ; 4 uses
  %i.aov = icmp slt i32 %.recomposed288, 9
  %i.aow = icmp slt i32 %i.aot, 8
  %or.cond.i.i180.1.i = and i1 %i.aow, %i.aov
  br i1 %or.cond.i.i180.1.i, label %bb.hx, label %bb.hu

bb.hu:                                            ; preds = %bb.ht
  %i.aox = icmp sgt i32 %.recomposed288, %.pre-phi.i
  %i.aoy = icmp slt i32 %i.aot, 7
  %or.cond3.i.i181.1.i = and i1 %i.aoy, %i.aox
  br i1 %or.cond3.i.i181.1.i, label %bb.hw, label %bb.hv

bb.hv:                                            ; preds = %bb.hu
  %i.aoz = add nsw i32 %i.aos, 120
  br label %VP8LDistanceToPlaneCode.exit.i182.1.i

bb.hw:                                            ; preds = %bb.hu
  %i.apa = shl i32 %i.aot, 4
  %i.apb = add i32 %i.apa, %.pre-phi285.i
  %i.apc = sub i32 %i.apb, %.recomposed288
  %i.apd = sext i32 %i.apc to i64
  %i.ape = getelementptr inbounds i8, ptr @plane_to_code_lut, i64 %i.apd
  %i.apf = load i8, ptr %i.ape, align 1, !tbaa !7
  %i.apg = zext i8 %i.apf to i32
  %i.aph = add nuw nsw i32 %i.apg, 1
  br label %VP8LDistanceToPlaneCode.exit.i182.1.i

bb.hx:                                            ; preds = %bb.ht
  %i.api = shl nsw i32 %i.aot, 4
  %i.apj = or disjoint i32 %i.api, 8
  %i.apk = sub i32 %i.apj, %.recomposed288
  %i.apl = sext i32 %i.apk to i64
  %i.apm = getelementptr inbounds i8, ptr @plane_to_code_lut, i64 %i.apl
  %i.apn = load i8, ptr %i.apm, align 1, !tbaa !7
  %i.apo = zext i8 %i.apn to i32
  %i.app = add nuw nsw i32 %i.apo, 1
  br label %VP8LDistanceToPlaneCode.exit.i182.1.i

VP8LDistanceToPlaneCode.exit.i182.1.i:            ; preds = %bb.hx, %bb.hw, %bb.hv
  %.0.i.i183.1.i = phi i32 [ %i.app, %bb.hx ], [ %i.aph, %bb.hw ], [ %i.aoz, %bb.hv ]
  store i32 %.0.i.i183.1.i, ptr %i.aor, align 4, !tbaa !50
  br label %bb.hy

bb.hy:                                            ; preds = %VP8LDistanceToPlaneCode.exit.i182.1.i, %bb.hs
  %i.apq = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.1.i, i64 8 ; 2 uses
  %i.apr = icmp eq ptr %i.apq, %.sroa.13.06.i.1.i
  br i1 %i.apr, label %bb.hz, label %VP8LRefsCursorNext.exit.i177.1.i

bb.hz:                                            ; preds = %bb.hy
  %i.aps = load ptr, ptr %.sroa.10.07.i.1.i, align 8, !tbaa !18 ; 4 uses
  %i.apt = icmp eq ptr %i.aps, null
  br i1 %i.apt, label %GetBackwardReferences.exit, label %bb.ia

bb.ia:                                            ; preds = %bb.hz
  %i.apu = getelementptr inbounds nuw i8, ptr %i.aps, i64 8
  %i.apv = load ptr, ptr %i.apu, align 8, !tbaa !25 ; 2 uses
  %i.apw = getelementptr inbounds nuw i8, ptr %i.aps, i64 16
  %i.apx = load i32, ptr %i.apw, align 8, !tbaa !26
  %i.apy = sext i32 %i.apx to i64
  %i.apz = getelementptr inbounds [8 x i8], ptr %i.apv, i64 %i.apy
  br label %VP8LRefsCursorNext.exit.i177.1.i

VP8LRefsCursorNext.exit.i177.1.i:                 ; preds = %bb.ia, %bb.hy
  %.sroa.13.1.i.1.i = phi ptr [ %.sroa.13.06.i.1.i, %bb.hy ], [ %i.apz, %bb.ia ]
  %.sroa.10.1.i.1.i = phi ptr [ %.sroa.10.07.i.1.i, %bb.hy ], [ %i.aps, %bb.ia ]
  %.sroa.0.1.i178.1.i = phi ptr [ %i.apq, %bb.hy ], [ %i.apv, %bb.ia ] ; 2 uses
  %.not4.i.1.i = icmp eq ptr %.sroa.0.1.i178.1.i, null
  br i1 %.not4.i.1.i, label %GetBackwardReferences.exit, label %bb.hs, !llvm.loop !51

GetBackwardReferences.exit:                       ; preds = %bb.hz, %VP8LRefsCursorNext.exit.i177.1.i, %bb.hi, %VP8LClearBackwardRefs.exit.i185.i, %.thread232.1.i, %VP8LRefsCursorInit.exit.i174.1.i
  %i.aqa = load ptr, ptr %18, align 8, !tbaa !30
  call void @WebPSafeFree(ptr noundef %i.aqa) #11
  %i.aqb = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i32 0, ptr %i.aqb, align 8, !tbaa !33
  store ptr null, ptr %18, align 8, !tbaa !30
  call void @VP8LFreeHistogram(ptr noundef nonnull %i.bh) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #11
  br label %bb.ib

.critedge:                                        ; preds = %bb.p, %bb.eu, %bb.ax, %CalculateBestCacheSize.exit.i, %bb.hm, %bb.gn, %BackwardRefsWithLocalCache.exit.thread.i, %BackwardRefsClone.exit.i, %BackwardRefsClone.exit196.i, %bb.n
  %i.aqc = load ptr, ptr %18, align 8, !tbaa !30
  call void @WebPSafeFree(ptr noundef %i.aqc) #11
  %i.aqd = getelementptr inbounds nuw i8, ptr %18, i64 8
  store i32 0, ptr %i.aqd, align 8, !tbaa !33
  store ptr null, ptr %18, align 8, !tbaa !30
  call void @VP8LFreeHistogram(ptr noundef %i.bh) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #11
  %i.aqe = call i32 @WebPEncodingSetError(ptr noundef %11, i32 noundef 1) #11
  br label %bb.ic

bb.ib:                                            ; preds = %bb.m, %GetBackwardReferencesLowEffort.exit.thread, %GetBackwardReferences.exit
  %i.aqf = load i32, ptr %13, align 4, !tbaa !3
  %i.aqg = add nsw i32 %i.aqf, %12
  %i.aqh = call i32 @WebPReportProgress(ptr noundef %11, i32 noundef %i.aqg, ptr noundef nonnull %13) #11
  br label %bb.ic

bb.ic:                                            ; preds = %.thread, %bb.ib, %.critedge
  %.1 = phi i32 [ %i.aqh, %bb.ib ], [ %i.ba, %.thread ], [ %i.aqe, %.critedge ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @BackwardReferencesLz77(i32 noundef %0, i32 noundef %1, ptr noundef readonly captures(none) %2, ptr noundef readonly captures(none) %3, ptr noundef %4) unnamed_addr #3 {
bb.a:
  %i.a = mul nsw i32 %1, %0                       ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !8    ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %VP8LClearBackwardRefs.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !14
  store ptr %i.e, ptr %i.c, align 8, !tbaa !15
  br label %VP8LClearBackwardRefs.exit

VP8LClearBackwardRefs.exit:                       ; preds = %bb.a, %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !16
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 5 uses
  store ptr %i.g, ptr %i.h, align 8, !tbaa !14
  store ptr %i.f, ptr %i.b, align 8, !tbaa !8
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 6 uses
  store ptr null, ptr %i.i, align 8, !tbaa !17
  store ptr null, ptr %i.f, align 8, !tbaa !16
  %i.j = icmp sgt i32 %i.a, 0
  br i1 %i.j, label %.lr.ph101, label %._crit_edge

.lr.ph101:                                        ; preds = %VP8LClearBackwardRefs.exit
  %i.k = add nsw i32 %i.a, -1
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 4 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph101, %AddSingleLiteral.exit
  %.098 = phi i32 [ 0, %.lr.ph101 ], [ %i.cn, %AddSingleLiteral.exit ] ; 6 uses
  %.05497 = phi i32 [ -1, %.lr.ph101 ], [ %.188, %AddSingleLiteral.exit ] ; 3 uses
  %.val73 = load ptr, ptr %3, align 8, !tbaa !30  ; 2 uses
  %i.m = sext i32 %.098 to i64                    ; 2 uses
  %i.n = getelementptr inbounds [4 x i8], ptr %.val73, i64 %i.m
  %i.o = load i32, ptr %i.n, align 4, !tbaa !3    ; 2 uses
  %i.p = lshr i32 %i.o, 12
  %i.q = and i32 %i.o, 4095                       ; 4 uses
  %i.r = icmp samesign ugt i32 %i.q, 3
  br i1 %i.r, label %bb.d, label %..thread83_crit_edge

..thread83_crit_edge:                             ; preds = %bb.c
  %.pre = load ptr, ptr %i.i, align 8, !tbaa !17
  br label %.thread83

bb.d:                                             ; preds = %bb.c
  %i.s = add nsw i32 %i.q, %.098
  %i.t = tail call i32 @llvm.smin.i32(i32 %i.s, i32 %i.k) ; 2 uses
  %i.u = tail call i32 @llvm.smax.i32(i32 %.098, i32 %.05497) ; 5 uses
  %.not71.not91 = icmp slt i32 %i.u, %i.t
  br i1 %.not71.not91, label %.lr.ph.preheader, label %.thread.thread

.thread.thread:                                   ; preds = %bb.d
  %.pre102117 = load ptr, ptr %i.i, align 8, !tbaa !17
  br label %bb.l

.lr.ph.preheader:                                 ; preds = %bb.d
  %i.v = tail call i32 @llvm.smax.i32(i32 %.05497, i32 %.098) ; 2 uses
  %smax = sext i32 %i.v to i64
  %i.w = add i32 %i.t, %i.v
  %i.x = sub i32 %i.w, %i.u
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %select.unfold
  %indvars.iv = phi i64 [ %smax, %.lr.ph.preheader ], [ %indvars.iv.next, %select.unfold ]
  %.05893 = phi i32 [ 0, %.lr.ph.preheader ], [ %.2, %select.unfold ] ; 2 uses
  %.07792 = phi i32 [ %i.q, %.lr.ph.preheader ], [ %.178, %select.unfold ]
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 4 uses
  %i.y = getelementptr inbounds [4 x i8], ptr %.val73, i64 %indvars.iv.next
  %i.z = load i32, ptr %i.y, align 4, !tbaa !3
  %i.aa = and i32 %i.z, 4095                      ; 2 uses
  %i.ab = icmp samesign ugt i32 %i.aa, 3
  %i.ac = select i1 %i.ab, i32 %i.aa, i32 1
  %i.ad = trunc i64 %indvars.iv.next to i32       ; 2 uses
  %i.ae = add nsw i32 %i.ac, %i.ad                ; 3 uses
  %i.af = icmp sgt i32 %i.ae, %.05893
  br i1 %i.af, label %bb.e, label %select.unfold

bb.e:                                             ; preds = %.lr.ph
  %.not72 = icmp slt i32 %i.ae, %i.a
  %cond.fr = freeze i1 %.not72
  %i.ag = trunc i64 %indvars.iv.next to i32
  %i.ah = sub i32 %i.ag, %.098                    ; 2 uses
  br i1 %cond.fr, label %select.unfold, label %.thread

select.unfold:                                    ; preds = %bb.e, %.lr.ph
  %.178 = phi i32 [ %.07792, %.lr.ph ], [ %i.ah, %bb.e ] ; 2 uses
  %.2 = phi i32 [ %.05893, %.lr.ph ], [ %i.ae, %bb.e ]
  %exitcond.not = icmp eq i32 %i.x, %i.ad
  br i1 %exitcond.not, label %.thread, label %.lr.ph, !llvm.loop !104

.thread:                                          ; preds = %select.unfold, %bb.e
  %.279 = phi i32 [ %i.ah, %bb.e ], [ %.178, %select.unfold ] ; 2 uses
  %i.ai = icmp eq i32 %.279, 1
  %.pre102 = load ptr, ptr %i.i, align 8, !tbaa !17 ; 2 uses
  br i1 %i.ai, label %.thread83, label %bb.l

.thread83:                                        ; preds = %..thread83_crit_edge, %.thread
  %i.aj = phi ptr [ %.pre102, %.thread ], [ %.pre, %..thread83_crit_edge ] ; 3 uses
  %.189 = phi i32 [ %i.u, %.thread ], [ %.05497, %..thread83_crit_edge ] ; 2 uses
  %i.ak = getelementptr inbounds [4 x i8], ptr %2, i64 %i.m
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !3
  %.sroa.3.0.insert.ext.i.i = zext i32 %i.al to i64
  %.sroa.3.0.insert.shift.i.i = shl nuw i64 %.sroa.3.0.insert.ext.i.i, 32
  %.sroa.21.0.insert.insert.i.i = or disjoint i64 %.sroa.3.0.insert.shift.i.i, 65536
  %i.am = icmp eq ptr %i.aj, null
  br i1 %i.am, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.thread83
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !26 ; 2 uses
  %i.ap = load i32, ptr %4, align 8, !tbaa !22
  %i.aq = icmp eq i32 %i.ao, %i.ap
  br i1 %i.aq, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f, %.thread83
  %i.ar = load ptr, ptr %i.h, align 8, !tbaa !14  ; 3 uses
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.at = load i32, ptr %4, align 8, !tbaa !22
  %i.au = sext i32 %i.at to i64
  %i.av = shl nsw i64 %i.au, 3
  %i.aw = add nsw i64 %i.av, 24
  %i.ax = tail call ptr @WebPSafeMalloc(i64 noundef 1, i64 noundef %i.aw) #11 ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.ax, null
  br i1 %.not.i.i.i, label %BackwardRefsNewBlock.exit.thread.i.i, label %bb.i

BackwardRefsNewBlock.exit.thread.i.i:             ; preds = %bb.h
  %i.ay = load i32, ptr %i.l, align 4, !tbaa !29
  %i.az = or i32 %i.ay, 1
  store i32 %i.az, ptr %i.l, align 4, !tbaa !29
  br label %AddSingleLiteral.exit

bb.i:                                             ; preds = %bb.h
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store ptr %i.ba, ptr %i.bb, align 8, !tbaa !25
  br label %BackwardRefsNewBlock.exit.i.i

bb.j:                                             ; preds = %bb.g
  %i.bc = load ptr, ptr %i.ar, align 8, !tbaa !18
  store ptr %i.bc, ptr %i.h, align 8, !tbaa !14
  br label %BackwardRefsNewBlock.exit.i.i

BackwardRefsNewBlock.exit.i.i:                    ; preds = %bb.j, %bb.i
  %.021.i.i.i = phi ptr [ %i.ax, %bb.i ], [ %i.ar, %bb.j ] ; 6 uses
  %i.bd = load ptr, ptr %i.b, align 8, !tbaa !8
  store ptr %.021.i.i.i, ptr %i.bd, align 8, !tbaa !15
  store ptr %.021.i.i.i, ptr %i.b, align 8, !tbaa !8
  store ptr %.021.i.i.i, ptr %i.i, align 8, !tbaa !17
  store ptr null, ptr %.021.i.i.i, align 8, !tbaa !18
  %i.be = getelementptr inbounds nuw i8, ptr %.021.i.i.i, i64 16
  store i32 0, ptr %i.be, align 8, !tbaa !26
  br label %bb.k

bb.k:                                             ; preds = %BackwardRefsNewBlock.exit.i.i, %bb.f
  %i.bf = phi i32 [ 0, %BackwardRefsNewBlock.exit.i.i ], [ %i.ao, %bb.f ] ; 2 uses
  %.0.i.i = phi ptr [ %.021.i.i.i, %BackwardRefsNewBlock.exit.i.i ], [ %i.aj, %bb.f ] ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !25
  %i.bi = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 16
  %i.bj = add nsw i32 %i.bf, 1
  store i32 %i.bj, ptr %i.bi, align 8, !tbaa !26
  %i.bk = sext i32 %i.bf to i64
  %i.bl = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %i.bk
  store i64 %.sroa.21.0.insert.insert.i.i, ptr %i.bl, align 4
  br label %AddSingleLiteral.exit

bb.l:                                             ; preds = %.thread.thread, %.thread
  %.pre102119 = phi ptr [ %.pre102117, %.thread.thread ], [ %.pre102, %.thread ] ; 3 uses
  %.279118 = phi i32 [ %i.q, %.thread.thread ], [ %.279, %.thread ] ; 3 uses
  %.sroa.3.0.insert.ext.i = zext nneg i32 %i.p to i64
  %.sroa.3.0.insert.shift.i = shl nuw nsw i64 %.sroa.3.0.insert.ext.i, 32
  %i.bm = shl i32 %.279118, 16
  %.sroa.22.0.insert.shift.i = zext i32 %i.bm to i64
  %.sroa.22.0.insert.insert.i = or disjoint i64 %.sroa.3.0.insert.shift.i, %.sroa.22.0.insert.shift.i
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.22.0.insert.insert.i, 2
  %i.bn = icmp eq ptr %.pre102119, null
  br i1 %i.bn, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bo = getelementptr inbounds nuw i8, ptr %.pre102119, i64 16
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !26 ; 2 uses
  %i.bq = load i32, ptr %4, align 8, !tbaa !22
  %i.br = icmp eq i32 %i.bp, %i.bq
  br i1 %i.br, label %bb.n, label %bb.r

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bs = load ptr, ptr %i.h, align 8, !tbaa !14  ; 3 uses
  %i.bt = icmp eq ptr %i.bs, null
  br i1 %i.bt, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.bu = load i32, ptr %4, align 8, !tbaa !22
  %i.bv = sext i32 %i.bu to i64
  %i.bw = shl nsw i64 %i.bv, 3
  %i.bx = add nsw i64 %i.bw, 24
  %i.by = tail call ptr @WebPSafeMalloc(i64 noundef 1, i64 noundef %i.bx) #11 ; 4 uses
  %.not.i.i = icmp eq ptr %i.by, null
  br i1 %.not.i.i, label %BackwardRefsNewBlock.exit.thread.i, label %bb.p

BackwardRefsNewBlock.exit.thread.i:               ; preds = %bb.o
  %i.bz = load i32, ptr %i.l, align 4, !tbaa !29
  %i.ca = or i32 %i.bz, 1
  store i32 %i.ca, ptr %i.l, align 4, !tbaa !29
  br label %AddSingleLiteral.exit

bb.p:                                             ; preds = %bb.o
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  store ptr %i.cb, ptr %i.cc, align 8, !tbaa !25
  br label %BackwardRefsNewBlock.exit.i

bb.q:                                             ; preds = %bb.n
  %i.cd = load ptr, ptr %i.bs, align 8, !tbaa !18
  store ptr %i.cd, ptr %i.h, align 8, !tbaa !14
  br label %BackwardRefsNewBlock.exit.i

BackwardRefsNewBlock.exit.i:                      ; preds = %bb.q, %bb.p
  %.021.i.i = phi ptr [ %i.by, %bb.p ], [ %i.bs, %bb.q ] ; 6 uses
  %i.ce = load ptr, ptr %i.b, align 8, !tbaa !8
  store ptr %.021.i.i, ptr %i.ce, align 8, !tbaa !15
  store ptr %.021.i.i, ptr %i.b, align 8, !tbaa !8
  store ptr %.021.i.i, ptr %i.i, align 8, !tbaa !17
  store ptr null, ptr %.021.i.i, align 8, !tbaa !18
  %i.cf = getelementptr inbounds nuw i8, ptr %.021.i.i, i64 16
  store i32 0, ptr %i.cf, align 8, !tbaa !26
  br label %bb.r

bb.r:                                             ; preds = %BackwardRefsNewBlock.exit.i, %bb.m
  %i.cg = phi i32 [ 0, %BackwardRefsNewBlock.exit.i ], [ %i.bp, %bb.m ] ; 2 uses
  %.0.i = phi ptr [ %.021.i.i, %BackwardRefsNewBlock.exit.i ], [ %.pre102119, %bb.m ] ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !25
  %i.cj = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  %i.ck = add nsw i32 %i.cg, 1
  store i32 %i.ck, ptr %i.cj, align 8, !tbaa !26
  %i.cl = sext i32 %i.cg to i64
  %i.cm = getelementptr inbounds [8 x i8], ptr %i.ci, i64 %i.cl
  store i64 %.sroa.0.0.insert.insert.i, ptr %i.cm, align 4
  br label %AddSingleLiteral.exit

AddSingleLiteral.exit:                            ; preds = %bb.r, %BackwardRefsNewBlock.exit.thread.i, %bb.k, %BackwardRefsNewBlock.exit.thread.i.i
  %.188 = phi i32 [ %.189, %bb.k ], [ %.189, %BackwardRefsNewBlock.exit.thread.i.i ], [ %i.u, %BackwardRefsNewBlock.exit.thread.i ], [ %i.u, %bb.r ]
  %.27986 = phi i32 [ 1, %bb.k ], [ 1, %BackwardRefsNewBlock.exit.thread.i.i ], [ %.279118, %BackwardRefsNewBlock.exit.thread.i ], [ %.279118, %bb.r ]
  %i.cn = add nsw i32 %.27986, %.098              ; 2 uses
  %i.co = icmp slt i32 %i.cn, %i.a
  br i1 %i.co, label %bb.c, label %._crit_edge, !llvm.loop !105

._crit_edge:                                      ; preds = %AddSingleLiteral.exit, %VP8LClearBackwardRefs.exit
  %i.cp = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !29
  %.not = icmp eq i32 %i.cq, 0
  %i.cr = zext i1 %.not to i32
  ret i32 %i.cr
}

declare i32 @VP8LColorCacheInit(ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @VP8LColorCacheClear(ptr noundef) local_unnamed_addr #4

declare ptr @VP8LAllocateHistogram(i32 noundef) local_unnamed_addr #4

declare void @VP8LHistogramCreate(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare i64 @VP8LHistogramEstimateBits(ptr noundef) local_unnamed_addr #4

declare i32 @VP8LBackwardReferencesTraceBackwards(i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @VP8LFreeHistogram(ptr noundef) local_unnamed_addr #4

declare void @VP8LHistogramInit(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #9

end_hunk_2
