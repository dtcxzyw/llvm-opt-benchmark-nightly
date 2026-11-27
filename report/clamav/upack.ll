Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/upack?download=true
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 7
begin_hunk_0_@unupack399:.preheader370
  %i.ee = add i32 %i.do, -4                       ; 2 uses
  %.not318.3 = icmp eq i32 %i.ee, 0
  br i1 %.not318.3, label %.unr-lcssa, label %.new

.unr-lcssa:                                       ; preds = %.new, %.prol.loopexit
  %.lcssa455 = phi i32 [ %.lcssa455.unr, %.prol.loopexit ], [ %i.ec, %.new ]
  %.lcssa454 = phi i32 [ %.lcssa454.unr, %.prol.loopexit ], [ %i.ed, %.new ] ; 2 uses
  store i32 %.lcssa454, ptr %i.a, align 4, !tbaa !24
  %i.ef = add i32 %.lcssa455, %.0255
  br label %bb.q

bb.q:                                             ; preds = %.unr-lcssa, %bb.e
  %i.eg = phi i32 [ %.lcssa454, %.unr-lcssa ], [ %i.bf, %bb.e ]
  %.1256 = phi i32 [ %i.ef, %.unr-lcssa ], [ %i.bf, %bb.e ]
  %i.eh = add i32 %.1256, 1
  br label %bb.ab

bb.r:                                             ; preds = %bb.b
  %i.ei = load i32, ptr %i.b, align 4, !tbaa !24
  %i.ej = load ptr, ptr %i.d, align 8, !tbaa !31
  %i.ek = zext i32 %i.ei to i64
  %i.el = getelementptr inbounds nuw i8, ptr %i.ej, i64 %i.ek ; 2 uses
  store ptr %i.el, ptr %i.d, align 8, !tbaa !31
  %i.em = call i32 @lzma_upack_esi_00(ptr noundef nonnull %9, ptr noundef %i.el, ptr noundef %0, i32 noundef %1) #4
  %.not320 = icmp eq i32 %i.em, 0
  br i1 %.not320, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.en = load ptr, ptr %i.d, align 8, !tbaa !31
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 96 ; 2 uses
  store ptr %i.eo, ptr %i.d, align 8, !tbaa !31
  %i.ep = call i32 @lzma_upack_esi_00(ptr noundef nonnull %9, ptr noundef nonnull %i.eo, ptr noundef %0, i32 noundef %1) #4
  %.not327 = icmp eq i32 %i.ep, 0
  br i1 %.not327, label %bb.z, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.eq = load i32, ptr %i.b, align 4, !tbaa !24
  %i.er = load ptr, ptr %i.d, align 8, !tbaa !31
  %i.es = zext i32 %i.eq to i64
  %i.et = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.es ; 2 uses
  store ptr %i.et, ptr %i.d, align 8, !tbaa !31
  %i.eu = call i32 @lzma_upack_esi_00(ptr noundef nonnull %9, ptr noundef %i.et, ptr noundef %0, i32 noundef %1) #4
  %.not328 = icmp eq i32 %i.eu, 0                 ; 2 uses
  %spec.select441 = select i1 %.not328, i32 %.sroa.20.0, i32 %.sroa.15.0
  %spec.select442 = select i1 %.not328, i32 %.sroa.15.0, i32 %.sroa.20.0
  br label %bb.z

bb.u:                                             ; preds = %bb.r
  %i.ev = load i32, ptr %i.b, align 4, !tbaa !24
  %i.ew = load ptr, ptr %i.d, align 8, !tbaa !31
  %i.ex = zext i32 %i.ev to i64
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ew, i64 %i.ex ; 2 uses
  store ptr %i.ey, ptr %i.d, align 8, !tbaa !31
  %i.ez = call i32 @lzma_upack_esi_00(ptr noundef nonnull %9, ptr noundef %i.ey, ptr noundef %0, i32 noundef %1) #4
  %.not321 = icmp eq i32 %i.ez, 0
  br i1 %.not321, label %bb.v, label %bb.z

bb.v:                                             ; preds = %bb.u
  %i.fa = load i32, ptr %i.a, align 4, !tbaa !24
  %i.fb = or i32 %i.fa, 1                         ; 2 uses
  store i32 %i.fb, ptr %i.a, align 4, !tbaa !24
  %i.fc = zext i32 %.sroa.4.0 to i64
  %i.fd = sub nsw i64 0, %i.fc
  %i.fe = getelementptr inbounds i8, ptr %.0245, i64 %i.fd ; 3 uses
  %i.ff = load i32, ptr %i.b, align 4, !tbaa !24
  %i.fg = and i32 %i.ff, -256
  %i.fh = or disjoint i32 %i.fg, 128
  store i32 %i.fh, ptr %i.b, align 4, !tbaa !24
  %.not323 = icmp ult ptr %i.fe, %0
  %or.cond391 = select i1 %.not322, i1 true, i1 %.not323
  br i1 %or.cond391, label %.critedge, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.fi = ptrtoint ptr %i.fe to i64               ; 2 uses
  %i.fj = add i64 %i.fi, 1                        ; 2 uses
  %.not324 = icmp ugt i64 %i.fj, %i.w
  %i.fk = icmp ule i64 %i.fj, %i.v
  %or.cond340.not396 = or i1 %.not324, %i.fk
  %i.fl = icmp ule i64 %i.w, %i.fi
  %or.cond341.not394 = or i1 %i.fl, %or.cond340.not396
  %.not325 = icmp ult ptr %.0245, %0
  %or.cond366 = or i1 %.not325, %or.cond341.not394
  br i1 %or.cond366, label %.critedge, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.fm = ptrtoint ptr %.0245 to i64              ; 2 uses
  %i.fn = add i64 %i.fm, 1                        ; 2 uses
  %.not326 = icmp ule i64 %i.fn, %i.w
  %i.fo = icmp ugt i64 %i.fn, %i.v
  %or.cond342 = and i1 %.not326, %i.fo
  %i.fp = icmp ugt i64 %i.w, %i.fm
  %or.cond343 = and i1 %i.fp, %or.cond342
  br i1 %or.cond343, label %bb.y, label %.critedge

bb.y:                                             ; preds = %bb.x
  %i.fq = load i8, ptr %i.fe, align 1, !tbaa !8
  store i8 %i.fq, ptr %.0245, align 1, !tbaa !8
  br label %bb.ar

bb.z:                                             ; preds = %bb.t, %bb.s, %bb.u
  %.sroa.20.1 = phi i32 [ %.sroa.20.0, %bb.u ], [ %.sroa.20.0, %bb.s ], [ %spec.select441, %bb.t ]
  %.sroa.15.1 = phi i32 [ %.sroa.15.0, %bb.u ], [ %.sroa.15.0, %bb.s ], [ %.sroa.8.0, %bb.t ]
  %.sroa.8.1 = phi i32 [ %.sroa.8.0, %bb.u ], [ %.sroa.4.0, %bb.s ], [ %.sroa.4.0, %bb.t ]
  %.2257 = phi i32 [ %.sroa.4.0, %bb.u ], [ %.sroa.8.0, %bb.s ], [ %spec.select442, %bb.t ]
  %i.fr = load i32, ptr %i.a, align 4, !tbaa !24  ; 2 uses
  store ptr %i.t, ptr %i.d, align 8, !tbaa !31
  %i.fs = call i32 @lzma_upack_esi_54(ptr noundef nonnull %9, i32 noundef %i.fr, ptr noundef nonnull %i.b, ptr noundef nonnull %i.d, ptr noundef nonnull %i.c, ptr noundef %0, i32 noundef %1) #4
  %i.ft = icmp eq i32 %i.fs, -1
  br i1 %i.ft, label %.critedge, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fu = load i32, ptr %i.b, align 4, !tbaa !24  ; 2 uses
  store i32 %i.fu, ptr %i.a, align 4, !tbaa !24
  %i.fv = load i32, ptr %i.c, align 4, !tbaa !24  ; 2 uses
  %.pre413 = add i32 %i.fv, -1
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.q
  %.pre-phi = phi i32 [ %.pre413, %bb.aa ], [ %i.ax, %bb.q ]
  %i.fw = phi i32 [ %i.fu, %bb.aa ], [ %i.eg, %bb.q ]
  %.sroa.20.2 = phi i32 [ %.sroa.20.1, %bb.aa ], [ %.sroa.15.0, %bb.q ]
  %.sroa.15.2 = phi i32 [ %.sroa.15.1, %bb.aa ], [ %.sroa.8.0, %bb.q ]
  %.sroa.8.2 = phi i32 [ %.sroa.8.1, %bb.aa ], [ %.sroa.4.0, %bb.q ]
  %i.fx = phi i32 [ %i.fv, %bb.aa ], [ %i.aw, %bb.q ] ; 5 uses
  %.3258 = phi i32 [ %.2257, %bb.aa ], [ %i.eh, %bb.q ] ; 2 uses
  %.1252 = phi i32 [ %i.fr, %bb.aa ], [ %i.at, %bb.q ]
  store i32 %i.fx, ptr %i.b, align 4, !tbaa !24
  %i.fy = icmp uge i32 %.pre-phi, %1
  %or.cond344 = select i1 %.not322, i1 true, i1 %i.fy
  %.not330 = icmp ult ptr %.0245, %0
  %or.cond392 = or i1 %or.cond344, %.not330
  br i1 %or.cond392, label %.critedge, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.fz = zext i32 %i.fx to i64
  %i.ga = ptrtoint ptr %.0245 to i64              ; 2 uses
  %i.gb = add i64 %i.fz, %i.ga                    ; 2 uses
  %.not331 = icmp ule i64 %i.gb, %i.w
  %i.gc = icmp ugt i64 %i.gb, %i.v
  %or.cond345 = and i1 %.not331, %i.gc
  %i.gd = icmp ugt i64 %i.w, %i.ga
  %or.cond346 = and i1 %i.gd, %or.cond345
  br i1 %or.cond346, label %bb.ad, label %.critedge

bb.ad:                                            ; preds = %bb.ac
  %i.ge = add nuw i32 %i.fx, 1
  %i.gf = zext i32 %i.ge to i64
  %or.cond347.not = icmp ult i32 %i.fx, %1
  br i1 %or.cond347.not, label %bb.ae, label %.critedge

bb.ae:                                            ; preds = %bb.ad
  %i.gg = zext i32 %.3258 to i64
  %i.gh = sub nsw i64 0, %i.gg                    ; 3 uses
  %i.gi = getelementptr inbounds i8, ptr %.0245, i64 %i.gh ; 2 uses
  %.not334 = icmp ult ptr %i.gi, %0
  br i1 %.not334, label %.critedge, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.gj = ptrtoint ptr %i.gi to i64               ; 2 uses
  %i.gk = add i64 %i.gj, %i.gf                    ; 2 uses
  %.not335 = icmp ule i64 %i.gk, %i.w
  %i.gl = icmp ugt i64 %i.gk, %i.v
  %or.cond348 = and i1 %.not335, %i.gl
  %i.gm = icmp ugt i64 %i.w, %i.gj
  %or.cond349 = and i1 %i.gm, %or.cond348
  br i1 %or.cond349, label %bb.ag, label %.critedge

bb.ag:                                            ; preds = %bb.af
  %.not397 = icmp eq i32 %i.fx, 0
  br i1 %.not397, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ag, %.lr.ph
  %.1246388 = phi ptr [ %i.gq, %.lr.ph ], [ %.0245, %bb.ag ] ; 3 uses
  %.1250387 = phi i32 [ %i.gp, %.lr.ph ], [ 0, %bb.ag ]
  %i.gn = getelementptr inbounds i8, ptr %.1246388, i64 %i.gh
  %i.go = load i8, ptr %i.gn, align 1, !tbaa !8
  store i8 %i.go, ptr %.1246388, align 1, !tbaa !8
  %i.gp = add nuw i32 %.1250387, 1                ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %.1246388, i64 1 ; 2 uses
  %i.gr = load i32, ptr %i.b, align 4, !tbaa !24
  %i.gs = icmp ult i32 %i.gp, %i.gr
  br i1 %i.gs, label %.lr.ph, label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre = load i32, ptr %i.a, align 4, !tbaa !24
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.ag
  %i.gt = phi i32 [ %i.fw, %bb.ag ], [ %.pre, %._crit_edge.loopexit ]
  %.1246.lcssa = phi ptr [ %.0245, %bb.ag ], [ %i.gq, %._crit_edge.loopexit ] ; 2 uses
  %i.gu = and i32 %i.gt, -256
  %i.gv = getelementptr inbounds i8, ptr %.1246.lcssa, i64 %i.gh
  %i.gw = load i8, ptr %i.gv, align 1, !tbaa !8
  %i.gx = zext i8 %i.gw to i32
  %i.gy = or disjoint i32 %i.gu, %i.gx
  store i32 %i.gy, ptr %i.a, align 4, !tbaa !24
  br label %.thread358

.preheader369:                                    ; preds = %bb.a, %.preheader369
  %i.gz = phi i32 [ %i.hc, %.preheader369 ], [ %.promoted389, %bb.a ] ; 2 uses
  %i.ha = and i32 %i.gz, 255
  %.0259 = call i32 @llvm.usub.sat.i32(i32 %i.ha, i32 3) ; 2 uses
  %i.hb = and i32 %i.gz, -256                     ; 2 uses
  %i.hc = or disjoint i32 %.0259, %i.hb           ; 5 uses
  %i.hd = icmp samesign ugt i32 %.0259, 6
  br i1 %i.hd, label %.preheader369, label %bb.ah

bb.ah:                                            ; preds = %.preheader369
  store i32 %i.hc, ptr %i.a, align 4, !tbaa !24
  %i.he = icmp ugt ptr %.0245, %5
  %i.hf = icmp ult ptr %.0245, %i.aa
  %or.cond352 = select i1 %i.he, i1 %i.hf, i1 false
  br i1 %or.cond352, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.hg = getelementptr inbounds i8, ptr %.0245, i64 -1
  %i.hh = load i8, ptr %i.hg, align 1, !tbaa !8
  %i.hi = zext i8 %i.hh to i32
  %i.hj = lshr i32 %i.hi, %7
  %i.hk = mul nuw nsw i32 %i.hj, 3072
  %i.hl = add nuw nsw i32 %i.hk, 4104
  %i.hm = zext nneg i32 %i.hl to i64
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ah, %bb.ai
  %.4 = phi i64 [ %i.hm, %bb.ai ], [ 4104, %bb.ah ]
  %i.hn = getelementptr inbounds nuw i8, ptr %3, i64 %.4 ; 3 uses
  %i.ho = or disjoint i32 %i.hb, 1                ; 3 uses
  store i32 %i.ho, ptr %i.a, align 4, !tbaa !24
  %i.hp = load i32, ptr %i.b, align 4, !tbaa !24  ; 2 uses
  %.not304 = icmp eq i32 %i.hp, 0
  br i1 %.not304, label %bb.ao, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.hq = zext i32 %.sroa.4.0 to i64
  %i.hr = sub nsw i64 0, %i.hq
  %i.hs = getelementptr inbounds i8, ptr %.0245, i64 %i.hr ; 3 uses
  %.not306 = icmp ult ptr %i.hs, %0
  %or.cond367 = select i1 %.not322, i1 true, i1 %.not306
  br i1 %or.cond367, label %.critedge, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ht = ptrtoint ptr %i.hs to i64               ; 2 uses
  %i.hu = add i64 %i.ht, 1                        ; 2 uses
  %.not307 = icmp ule i64 %i.hu, %i.w
  %i.hv = icmp ugt i64 %i.hu, %i.v
  %or.cond353 = and i1 %.not307, %i.hv
  %i.hw = icmp ugt i64 %i.w, %i.ht
  %or.cond354 = and i1 %i.hw, %or.cond353
  br i1 %or.cond354, label %.preheader, label %.critedge

.preheader:                                       ; preds = %bb.al, %bb.am
  %i.hx = phi i32 [ %i.in, %bb.am ], [ %i.ho, %bb.al ]
  %.0 = phi i32 [ %i.ip, %bb.am ], [ %i.hp, %bb.al ] ; 2 uses
  %i.hy = and i32 %i.hx, -65281
  %i.hz = load i8, ptr %i.hs, align 1, !tbaa !8
  %i.ia = zext i8 %i.hz to i32
  %i.ib = and i32 %.0, %i.ia
  %.not308 = icmp eq i32 %i.ib, 0
  %i.ic = select i1 %.not308, i32 256, i32 512
  %i.id = or disjoint i32 %i.ic, %i.hy            ; 2 uses
  store i32 %i.id, ptr %i.a, align 4, !tbaa !24
  %i.ie = shl i32 %i.id, 2
  %i.if = zext i32 %i.ie to i64
  %i.ig = getelementptr inbounds nuw i8, ptr %i.hn, i64 %i.if ; 2 uses
  store ptr %i.ig, ptr %i.d, align 8, !tbaa !31
  %i.ih = call i32 @lzma_upack_esi_00(ptr noundef nonnull %9, ptr noundef nonnull %i.ig, ptr noundef %0, i32 noundef %1) #4 ; 2 uses
  %i.ii = load i32, ptr %i.a, align 4, !tbaa !24  ; 4 uses
  %i.ij = shl i32 %i.ii, 1
  %i.ik = add i32 %i.ij, %i.ih
  %i.il = and i32 %i.ik, 255                      ; 2 uses
  %i.im = and i32 %i.ii, -256
  %i.in = or disjoint i32 %i.il, %i.im            ; 2 uses
  store i32 %i.in, ptr %i.a, align 4, !tbaa !24
  %i.io = lshr i32 %.0, 1
  %i.ip = and i32 %i.io, 127                      ; 2 uses
  %.not309 = icmp eq i32 %i.ip, 0
  br i1 %.not309, label %.thread358, label %bb.am

bb.am:                                            ; preds = %.preheader
  %i.iq = lshr i32 %i.ii, 8
  %i.ir = sub i32 %i.iq, %i.ih
  %i.is = and i32 %i.ir, 1
  %.not310 = icmp eq i32 %i.is, 0
  br i1 %.not310, label %bb.an, label %.preheader

bb.an:                                            ; preds = %bb.am
  %i.it = and i32 %i.ii, -65536
  %i.iu = or disjoint i32 %i.il, %i.it            ; 2 uses
  store i32 %i.iu, ptr %i.a, align 4, !tbaa !24
  %i.iv = call i32 @lzma_upack_esi_50(ptr noundef nonnull %9, i32 noundef %i.iu, i32 noundef 256, ptr noundef nonnull %i.d, ptr noundef nonnull %i.hn, ptr noundef nonnull %i.a, ptr noundef %0, i32 noundef %1) #4
  %i.iw = icmp eq i32 %i.iv, -1
  br i1 %i.iw, label %.critedge, label %.thread358

bb.ao:                                            ; preds = %bb.aj
  store i32 256, ptr %i.b, align 4, !tbaa !24
  %i.ix = call i32 @lzma_upack_esi_50(ptr noundef nonnull %9, i32 noundef %i.ho, i32 noundef 256, ptr noundef nonnull %i.d, ptr noundef nonnull %i.hn, ptr noundef nonnull %i.a, ptr noundef %0, i32 noundef %1) #4
  %i.iy = icmp eq i32 %i.ix, -1
  br i1 %i.iy, label %.critedge, label %.thread358

.thread358:                                       ; preds = %.preheader, %bb.an, %bb.ao, %._crit_edge
  %.sroa.20.3 = phi i32 [ %.sroa.20.0, %bb.ao ], [ %.sroa.20.2, %._crit_edge ], [ %.sroa.20.0, %bb.an ], [ %.sroa.20.0, %.preheader ]
  %.sroa.15.3 = phi i32 [ %.sroa.15.0, %bb.ao ], [ %.sroa.15.2, %._crit_edge ], [ %.sroa.15.0, %bb.an ], [ %.sroa.15.0, %.preheader ]
  %.sroa.8.3 = phi i32 [ %.sroa.8.0, %bb.ao ], [ %.sroa.8.2, %._crit_edge ], [ %.sroa.8.0, %bb.an ], [ %.sroa.8.0, %.preheader ]
  %.sroa.4.1 = phi i32 [ %.sroa.4.0, %bb.ao ], [ %.3258, %._crit_edge ], [ %.sroa.4.0, %bb.an ], [ %.sroa.4.0, %.preheader ]
  %storemerge = phi i32 [ 0, %bb.ao ], [ 128, %._crit_edge ], [ 0, %bb.an ], [ 0, %.preheader ]
  %.2253 = phi i32 [ %i.hc, %bb.ao ], [ %.1252, %._crit_edge ], [ %i.hc, %bb.an ], [ %i.hc, %.preheader ]
  %.2247 = phi ptr [ %.0245, %bb.ao ], [ %.1246.lcssa, %._crit_edge ], [ %.0245, %bb.an ], [ %.0245, %.preheader ] ; 4 uses
  store i32 %storemerge, ptr %i.b, align 4, !tbaa !24
  %.not337 = icmp ult ptr %.2247, %0
  %or.cond368 = or i1 %.not322, %.not337
  br i1 %or.cond368, label %.critedge, label %bb.ap

bb.ap:                                            ; preds = %.thread358
  %i.iz = ptrtoint ptr %.2247 to i64              ; 2 uses
  %i.ja = add i64 %i.iz, 1                        ; 2 uses
  %.not338 = icmp ule i64 %i.ja, %i.w
  %i.jb = icmp ugt i64 %i.ja, %i.v
  %or.cond355 = and i1 %.not338, %i.jb
  %i.jc = icmp ugt i64 %i.w, %i.iz
  %or.cond356 = and i1 %i.jc, %or.cond355
  br i1 %or.cond356, label %bb.aq, label %.critedge

bb.aq:                                            ; preds = %bb.ap
  %i.jd = load i32, ptr %i.a, align 4, !tbaa !24
  %i.je = trunc i32 %i.jd to i8
  store i8 %i.je, ptr %.2247, align 1, !tbaa !8
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.y
  %.sroa.20.4 = phi i32 [ %.sroa.20.3, %bb.aq ], [ %.sroa.20.0, %bb.y ]
  %.sroa.15.4 = phi i32 [ %.sroa.15.3, %bb.aq ], [ %.sroa.15.0, %bb.y ]
  %.sroa.8.4 = phi i32 [ %.sroa.8.3, %bb.aq ], [ %.sroa.8.0, %bb.y ]
  %.sroa.4.2 = phi i32 [ %.sroa.4.1, %bb.aq ], [ %.sroa.4.0, %bb.y ]
  %.3254 = phi i32 [ %.2253, %bb.aq ], [ %i.fb, %bb.y ]
  %.2247.pn = phi ptr [ %.2247, %bb.aq ], [ %.0245, %bb.y ]
  %.3 = getelementptr inbounds nuw i8, ptr %.2247.pn, i64 1 ; 2 uses
  %i.jf = icmp ult ptr %.3, %6
  br i1 %i.jf, label %bb.a, label %.critedge

.critedge:                                        ; preds = %bb.an, %bb.al, %bb.ak, %bb.ar, %.thread358, %bb.ap, %bb.ao, %bb.ab, %bb.ac, %bb.ad, %bb.ae, %bb.af, %bb.z, %bb.v, %bb.w, %bb.x, %bb.o, %bb.d, %bb.c, %bb.g, %.split, %bb.h
  %.13 = phi i32 [ -1, %.split ], [ -1, %bb.h ], [ -1, %bb.ao ], [ -1, %bb.al ], [ -1, %bb.ap ], [ -1, %.thread358 ], [ -1, %bb.ac ], [ -1, %bb.ad ], [ -1, %bb.ae ], [ -1, %bb.af ], [ -1, %bb.v ], [ -1, %bb.w ], [ -1, %bb.an ], [ -1, %bb.x ], [ -1, %bb.ak ], [ 1, %bb.ar ], [ -1, %bb.d ], [ -1, %bb.c ], [ -1, %bb.ab ], [ -1, %bb.o ], [ -1, %bb.z ], [ -1, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #4
  ret i32 %.13
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare i32 @cli_rebuildpe(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @lzma_upack_esi_00(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @lzma_upack_esi_54(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @lzma_upack_esi_50(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!4, !4, i64 0}
!9 = !{!"llvm.loop.unroll.disable"}
!10 = distinct !{!10, !16, !17}
!11 = distinct !{!11, !16, !17}
!12 = distinct !{!12, !9}
!13 = distinct !{!13, !16}
!14 = distinct !{!14, !16, !17}
!15 = distinct !{!15, !16, !17}
!16 = !{!"llvm.loop.isvectorized", i32 1}
!17 = !{!"llvm.loop.unroll.runtime.disable"}
!18 = !{!"cli_exe_section", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32}
!19 = !{!18, !5, i64 8}
!20 = !{!18, !5, i64 0}
!21 = !{!18, !5, i64 12}
!22 = !{!18, !5, i64 4}
!23 = distinct !{!23, !9}
!24 = !{!5, !5, i64 0}
end_hunk_0
