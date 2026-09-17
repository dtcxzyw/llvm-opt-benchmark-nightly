Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/zend_cfg?download=true
inline.NumInlined: 35
inline.NumDeleted: 14
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@zend_cfg_identify_loops:bb.a
  %i.ac = load i64, ptr %i.r, align 8, !tbaa !70  ; 2 uses
  %i.ad = trunc i64 %i.ac to i1
  br i1 %i.ad, label %._crit_edge263, label %.preheader239.preheader

.preheader239.preheader:                          ; preds = %bb.h
  %i.ae = or disjoint i64 %i.ac, 1
  store i64 %i.ae, ptr %i.r, align 8, !tbaa !70
  store i32 0, ptr %i.q, align 4, !tbaa !42
  br label %.preheader239

.preheader239:                                    ; preds = %.preheader239.preheader, %.preheader238._crit_edge
  %.0162262 = phi i32 [ %i.cf, %.preheader238._crit_edge ], [ 0, %.preheader239.preheader ]
  %.sroa.19.0261 = phi i32 [ %i.ch, %.preheader238._crit_edge ], [ 1, %.preheader239.preheader ]
  %i.af = sext i32 %.sroa.19.0261 to i64
  br label %bb.i

bb.i:                                             ; preds = %.backedge240, %.preheader239
  %indvars.iv311 = phi i64 [ %indvars.iv.next312, %.backedge240 ], [ %i.af, %.preheader239 ] ; 5 uses
  %.1163 = phi i32 [ %.2164, %.backedge240 ], [ %.0162262, %.preheader239 ] ; 3 uses
  %i.ag = icmp ne i64 %indvars.iv311, 0
  tail call void @llvm.assume(i1 %i.ag)
  %i.ah = getelementptr [4 x i8], ptr %i.q, i64 %indvars.iv311 ; 2 uses
  %i.ai = getelementptr i8, ptr %i.ah, i64 -4
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !42 ; 2 uses
  %i.ak = sext i32 %i.aj to i64                   ; 3 uses
  %i.al = getelementptr inbounds [4 x i8], ptr %i.w, i64 %i.ak ; 2 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !42
  %i.an = icmp eq i32 %i.am, -1
  br i1 %i.an, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ao = add nsw i32 %.1163, 1
  store i32 %.1163, ptr %i.al, align 4, !tbaa !42
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.2164 = phi i32 [ %i.ao, %bb.j ], [ %.1163, %bb.i ] ; 3 uses
  %i.ap = getelementptr inbounds [64 x i8], ptr %i.b, i64 %i.ak ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 44
  %.0170251 = load i32, ptr %i.aq, align 4, !tbaa !42 ; 2 uses
  %i.ar = icmp sgt i32 %.0170251, -1
  br i1 %i.ar, label %.lr.ph, label %.preheader238

.preheader238:                                    ; preds = %bb.l, %bb.k
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 20
  %i.at = load i32, ptr %i.as, align 4, !tbaa !65 ; 2 uses
  %i.au = icmp sgt i32 %i.at, 0
  br i1 %i.au, label %.lr.ph254, label %.preheader238._crit_edge

.lr.ph254:                                        ; preds = %.preheader238
  %i.av = load ptr, ptr %i.ap, align 8, !tbaa !63
  %wide.trip.count = zext nneg i32 %i.at to i64
  br label %bb.m

.lr.ph:                                           ; preds = %bb.k, %bb.l
  %.0170252 = phi i32 [ %.0170, %bb.l ], [ %.0170251, %bb.k ] ; 3 uses
  %i.aw = icmp samesign ult i32 %.0170252, %i.p
  tail call void @llvm.assume(i1 %i.aw)
  %i.ax = zext nneg i32 %.0170252 to i64          ; 3 uses
  %i.ay = lshr i64 %i.ax, 6
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.ay
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !70
  %i.bb = and i64 %i.ax, 63
  %i.bc = lshr i64 %i.ba, %i.bb
  %i.bd = trunc i64 %i.bc to i1
  br i1 %i.bd, label %bb.l, label %.backedge240

.backedge240:                                     ; preds = %.lr.ph, %bb.n
  %.0170252.lcssa.sink379 = phi i32 [ %i.br, %bb.n ], [ %.0170252, %.lr.ph ] ; 3 uses
  %i.be = and i32 %.0170252.lcssa.sink379, 63
  %i.bf = zext nneg i32 %i.be to i64
  %i.bg = shl nuw i64 1, %i.bf
  %i.bh = lshr i32 %.0170252.lcssa.sink379, 6
  %i.bi = zext nneg i32 %i.bh to i64
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.bi ; 2 uses
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !70
  %i.bl = or i64 %i.bk, %i.bg
  store i64 %i.bl, ptr %i.bj, align 8, !tbaa !70
  %i.bm = icmp slt i64 %indvars.iv311, %.pre-phi
  tail call void @llvm.assume(i1 %i.bm)
  store i32 %.0170252.lcssa.sink379, ptr %i.ah, align 4, !tbaa !42
  %indvars.iv.next312 = add nsw i64 %indvars.iv311, 1
  br label %bb.i

bb.l:                                             ; preds = %.lr.ph
  %i.bn = getelementptr inbounds nuw [64 x i8], ptr %i.b, i64 %i.ax
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 48
  %.0170 = load i32, ptr %i.bo, align 4, !tbaa !42 ; 2 uses
  %i.bp = icmp sgt i32 %.0170, -1
  br i1 %i.bp, label %.lr.ph, label %.preheader238, !llvm.loop !142

bb.m:                                             ; preds = %.lr.ph254, %zend_worklist_push.exit191
  %indvars.iv = phi i64 [ 0, %.lr.ph254 ], [ %indvars.iv.next, %zend_worklist_push.exit191 ] ; 2 uses
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %indvars.iv
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !42 ; 4 uses
  %i.bs = sext i32 %i.br to i64
  %i.bt = getelementptr inbounds [64 x i8], ptr %i.b, i64 %i.bs
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 32
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !69
  %i.bw = icmp eq i32 %i.bv, %i.aj
  br i1 %i.bw, label %zend_worklist_push.exit191, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bx = icmp samesign ult i32 %i.br, %i.p
  tail call void @llvm.assume(i1 %i.bx)
  %i.by = zext nneg i32 %i.br to i64              ; 2 uses
  %i.bz = lshr i64 %i.by, 6
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.bz
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !70
  %i.cc = and i64 %i.by, 63
  %i.cd = lshr i64 %i.cb, %i.cc
  %i.ce = trunc i64 %i.cd to i1
  br i1 %i.ce, label %zend_worklist_push.exit191, label %.backedge240

zend_worklist_push.exit191:                       ; preds = %bb.n, %bb.m
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader238._crit_edge, label %bb.m, !llvm.loop !143

.preheader238._crit_edge:                         ; preds = %.preheader238, %zend_worklist_push.exit191
  %.sroa.19.1306 = trunc i64 %indvars.iv311 to i32
  %i.cf = add nsw i32 %.2164, 1
  %i.cg = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.ak
  store i32 %.2164, ptr %i.cg, align 4, !tbaa !42
  %i.ch = add nsw i32 %.sroa.19.1306, -1          ; 2 uses
  %.not = icmp eq i32 %i.ch, 0
  br i1 %.not, label %._crit_edge263, label %.preheader239, !llvm.loop !144

._crit_edge263:                                   ; preds = %.preheader238._crit_edge, %bb.h
  store i32 0, ptr %i.aa, align 4, !tbaa !42
  br label %.preheader236

.loopexit237:                                     ; preds = %._crit_edge270, %.preheader236
  %.1166.lcssa = phi i32 [ %.0165277, %.preheader236 ], [ %.2167.lcssa, %._crit_edge270 ] ; 2 uses
  %.not180 = icmp eq i32 %.0165277, %.1166.lcssa
  br i1 %.not180, label %.preheader235, label %.preheader236, !llvm.loop !145

.preheader236:                                    ; preds = %._crit_edge263, %.loopexit237
  %.0165277 = phi i32 [ 1, %._crit_edge263 ], [ %.1166.lcssa, %.loopexit237 ] ; 8 uses
  %.2172276 = phi i32 [ 0, %._crit_edge263 ], [ %.0165277, %.loopexit237 ] ; 2 uses
  %i.ci = icmp slt i32 %.2172276, %.0165277
  br i1 %i.ci, label %.lr.ph274.preheader, label %.loopexit237

.lr.ph274.preheader:                              ; preds = %.preheader236
  %i.cj = sext i32 %.2172276 to i64
  %wide.trip.count320 = sext i32 %.0165277 to i64
  br label %.lr.ph274

.preheader235:                                    ; preds = %.loopexit237
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.cl = zext i32 %i.x to i64
  %i.cm = add nuw nsw i64 %i.cl, 63
  %sh.diff232 = lshr i64 %i.cm, 3
  %i.cn = and i64 %sh.diff232, 1073741816
  %i.co = icmp sgt i32 %.0165277, 0
  br i1 %i.co, label %.lr.ph400, label %.outer._crit_edge

.lr.ph274:                                        ; preds = %.lr.ph274.preheader, %._crit_edge270
  %indvars.iv317 = phi i64 [ %i.cj, %.lr.ph274.preheader ], [ %indvars.iv.next318, %._crit_edge270 ] ; 2 uses
  %.1166273 = phi i32 [ %.0165277, %.lr.ph274.preheader ], [ %.2167.lcssa, %._crit_edge270 ] ; 2 uses
  %i.cp = getelementptr inbounds [4 x i8], ptr %i.aa, i64 %indvars.iv317
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !42
  %i.cr = sext i32 %i.cq to i64
  %i.cs = getelementptr inbounds [64 x i8], ptr %i.b, i64 %i.cr
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 44
  %.0265 = load i32, ptr %i.ct, align 4, !tbaa !42 ; 2 uses
  %i.cu = icmp sgt i32 %.0265, -1
  br i1 %i.cu, label %.lr.ph269.preheader, label %._crit_edge270

.lr.ph269.preheader:                              ; preds = %.lr.ph274
  %i.cv = sext i32 %.1166273 to i64
  br label %.lr.ph269

.lr.ph269:                                        ; preds = %.lr.ph269.preheader, %.lr.ph269
  %indvars.iv314 = phi i64 [ %i.cv, %.lr.ph269.preheader ], [ %indvars.iv.next315, %.lr.ph269 ] ; 2 uses
  %.0267 = phi i32 [ %.0265, %.lr.ph269.preheader ], [ %.0, %.lr.ph269 ] ; 2 uses
  %indvars.iv.next315 = add nsw i64 %indvars.iv314, 1 ; 2 uses
  %i.cw = getelementptr inbounds [4 x i8], ptr %i.aa, i64 %indvars.iv314
  store i32 %.0267, ptr %i.cw, align 4, !tbaa !42
  %i.cx = zext nneg i32 %.0267 to i64
  %i.cy = getelementptr inbounds nuw [64 x i8], ptr %i.b, i64 %i.cx
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 48
  %.0 = load i32, ptr %i.cz, align 4, !tbaa !42   ; 2 uses
  %i.da = icmp sgt i32 %.0, -1
  br i1 %i.da, label %.lr.ph269, label %._crit_edge270.loopexit, !llvm.loop !146

._crit_edge270.loopexit:                          ; preds = %.lr.ph269
  %i.db = trunc nsw i64 %indvars.iv.next315 to i32
  br label %._crit_edge270

._crit_edge270:                                   ; preds = %._crit_edge270.loopexit, %.lr.ph274
  %.2167.lcssa = phi i32 [ %.1166273, %.lr.ph274 ], [ %i.db, %._crit_edge270.loopexit ] ; 2 uses
  %indvars.iv.next318 = add nsw i64 %indvars.iv317, 1 ; 2 uses
  %exitcond321.not = icmp eq i64 %indvars.iv.next318, %wide.trip.count320
  br i1 %exitcond321.not, label %.loopexit237, label %.lr.ph274, !llvm.loop !147

..loopexit233_crit_edge:                          ; preds = %.backedge
  br label %.loopexit233, !llvm.loop !148

.loopexit233:                                     ; preds = %..loopexit233_crit_edge, %.preheader
  %i.dc = icmp sgt i32 %2, 0
  br i1 %i.dc, label %.lr.ph400, label %.outer._crit_edge

.lr.ph400:                                        ; preds = %.preheader235, %.loopexit233
  %.in = phi i32 [ %2, %.loopexit233 ], [ %.0165277, %.preheader235 ]
  %.0161.ph402 = phi i32 [ %.3, %.loopexit233 ], [ 8, %.preheader235 ] ; 2 uses
  %i.dd = zext nneg i32 %.in to i64
  br label %bb.p

bb.o:                                             ; preds = %bb.p
  %i.de = icmp sgt i32 %2, 0
  br i1 %i.de, label %bb.p, label %.outer._crit_edge, !llvm.loop !148

bb.p:                                             ; preds = %.lr.ph400, %bb.o
  %indvars.iv322399 = phi i64 [ %i.dd, %.lr.ph400 ], [ %i.df, %bb.o ]
  %i.df = add nsw i64 %indvars.iv322399, -1       ; 3 uses
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.df
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !42 ; 4 uses
  %i.di = sext i32 %i.dh to i64                   ; 3 uses
  %i.dj = getelementptr inbounds [64 x i8], ptr %i.b, i64 %i.di ; 5 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 24
  %i.dl = load i32, ptr %i.dk, align 8, !tbaa !64 ; 2 uses
  %i.dm = icmp slt i32 %i.dl, 2
  %2 = trunc i64 %i.df to i32                     ; 3 uses
  br i1 %i.dm, label %bb.o, label %.lr.ph282, !llvm.loop !148

.lr.ph282:                                        ; preds = %bb.p
  %i.dn = load ptr, ptr %i.ck, align 8, !tbaa !66
  %i.do = getelementptr inbounds nuw i8, ptr %i.dj, i64 28
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dj, i64 32
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dj, i64 40
  %i.dr = getelementptr inbounds [4 x i8], ptr %i.w, i64 %i.di
  %i.ds = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.di
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dj, i64 8 ; 4 uses
  %.pre325 = load i32, ptr %i.do, align 4, !tbaa !67
  %.pre326 = load i32, ptr %i.dp, align 8, !tbaa !69
  br label %bb.q

.preheader:                                       ; preds = %zend_worklist_push.exit193
  %.not181290 = icmp eq i32 %.sroa.19.7, 0
  br i1 %.not181290, label %.loopexit233, label %.lr.ph292, !llvm.loop !148

.lr.ph292:                                        ; preds = %.preheader
  br label %bb.z, !llvm.loop !148

bb.q:                                             ; preds = %.lr.ph282, %zend_worklist_push.exit193
  %.1281 = phi i32 [ %.0161.ph402, %.lr.ph282 ], [ %.3, %zend_worklist_push.exit193 ] ; 5 uses
  %.3173280 = phi i32 [ 0, %.lr.ph282 ], [ %i.fy, %zend_worklist_push.exit193 ] ; 2 uses
  %.sroa.19.6279 = phi i32 [ 0, %.lr.ph282 ], [ %.sroa.19.7, %zend_worklist_push.exit193 ] ; 9 uses
  %i.du = add nsw i32 %.pre325, %.3173280
  %i.dv = sext i32 %i.du to i64
  %i.dw = getelementptr inbounds [4 x i8], ptr %i.dn, i64 %i.dv
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !42 ; 8 uses
  %i.dy = icmp eq i32 %.pre326, %i.dx
  br i1 %i.dy, label %zend_worklist_push.exit193, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dz = load i32, ptr %i.dq, align 8, !tbaa !68 ; 2 uses
  %i.ea = sext i32 %i.dx to i64                   ; 4 uses
  %i.eb = getelementptr inbounds [64 x i8], ptr %i.b, i64 %i.ea
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 40
  %i.ed = load i32, ptr %i.ec, align 8, !tbaa !68
  %i.ee = icmp sgt i32 %i.ed, %i.dz
  br i1 %i.ee, label %.lr.ph.i, label %dominates.exit

.lr.ph.i:                                         ; preds = %bb.r, %.lr.ph.i
  %i.ef = phi i64 [ %i.ej, %.lr.ph.i ], [ %i.ea, %bb.r ]
  %i.eg = getelementptr inbounds [64 x i8], ptr %i.b, i64 %i.ef
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 32
  %i.ei = load i32, ptr %i.eh, align 8, !tbaa !69 ; 2 uses
  %i.ej = sext i32 %i.ei to i64                   ; 2 uses
  %i.ek = getelementptr inbounds [64 x i8], ptr %i.b, i64 %i.ej
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 40
  %i.em = load i32, ptr %i.el, align 8, !tbaa !68
  %i.en = icmp sgt i32 %i.em, %i.dz
  br i1 %i.en, label %.lr.ph.i, label %dominates.exit, !llvm.loop !149

dominates.exit:                                   ; preds = %.lr.ph.i, %bb.r
  %.0.lcssa.i = phi i32 [ %i.dx, %bb.r ], [ %i.ei, %.lr.ph.i ]
  %i.eo = icmp eq i32 %i.dh, %.0.lcssa.i
  br i1 %i.eo, label %bb.s, label %bb.w

bb.s:                                             ; preds = %dominates.exit
  %i.ep = load i32, ptr %i.dt, align 8, !tbaa !19
  %i.eq = or i32 %i.ep, 65536
  store i32 %i.eq, ptr %i.dt, align 8, !tbaa !19
  %i.er = and i32 %.1281, -9                      ; 2 uses
  %.not183 = icmp eq i32 %.sroa.19.6279, 0
  br i1 %.not183, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.r, i8 0, i64 %i.cn, i1 false)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.es = icmp samesign ult i32 %i.dx, %i.p
  tail call void @llvm.assume(i1 %i.es)
  %i.et = zext nneg i32 %i.dx to i64              ; 2 uses
  %i.eu = lshr i64 %i.et, 6
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.eu
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !70
  %i.ex = and i64 %i.et, 63
  %i.ey = lshr i64 %i.ew, %i.ex
  %i.ez = trunc i64 %i.ey to i1
  br i1 %i.ez, label %zend_worklist_push.exit193, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.fa = and i32 %i.dx, 63
  %i.fb = zext nneg i32 %i.fa to i64
  %i.fc = shl nuw i64 1, %i.fb
  %i.fd = lshr i32 %i.dx, 6
  %i.fe = zext nneg i32 %i.fd to i64
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.fe ; 2 uses
  %i.fg = load i64, ptr %i.ff, align 8, !tbaa !70
  %i.fh = or i64 %i.fg, %i.fc
  store i64 %i.fh, ptr %i.ff, align 8, !tbaa !70
  %i.fi = icmp slt i32 %.sroa.19.6279, %i.p
  tail call void @llvm.assume(i1 %i.fi)
  %i.fj = add nsw i32 %.sroa.19.6279, 1
  %i.fk = sext i32 %.sroa.19.6279 to i64
  %i.fl = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.fk
  store i32 %i.dx, ptr %i.fl, align 4, !tbaa !42
  br label %zend_worklist_push.exit193

bb.w:                                             ; preds = %dominates.exit
  %i.fm = getelementptr inbounds [4 x i8], ptr %i.w, i64 %i.ea
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !42
  %i.fo = load i32, ptr %i.dr, align 4, !tbaa !42
  %i.fp = icmp sgt i32 %i.fn, %i.fo
  br i1 %i.fp, label %bb.x, label %zend_worklist_push.exit193

bb.x:                                             ; preds = %bb.w
  %i.fq = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.ea
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !42
  %i.fs = load i32, ptr %i.ds, align 4, !tbaa !42
  %i.ft = icmp slt i32 %i.fr, %i.fs
  br i1 %i.ft, label %bb.y, label %zend_worklist_push.exit193

bb.y:                                             ; preds = %bb.x
  %i.fu = load i32, ptr %i.dt, align 8, !tbaa !19
  %i.fv = or i32 %i.fu, 131072
  store i32 %i.fv, ptr %i.dt, align 8, !tbaa !19
  %i.fw = and i32 %.1281, -25
  %i.fx = or disjoint i32 %i.fw, 16
  br label %zend_worklist_push.exit193

zend_worklist_push.exit193:                       ; preds = %bb.v, %bb.u, %bb.y, %bb.x, %bb.w, %bb.q
  %.sroa.19.7 = phi i32 [ %.sroa.19.6279, %bb.q ], [ %.sroa.19.6279, %bb.w ], [ %.sroa.19.6279, %bb.y ], [ %.sroa.19.6279, %bb.x ], [ %.sroa.19.6279, %bb.u ], [ %i.fj, %bb.v ] ; 3 uses
  %.3 = phi i32 [ %.1281, %bb.q ], [ %.1281, %bb.w ], [ %i.fx, %bb.y ], [ %.1281, %bb.x ], [ %i.er, %bb.u ], [ %i.er, %bb.v ] ; 3 uses
  %i.fy = add nuw nsw i32 %.3173280, 1            ; 2 uses
  %i.fz = icmp slt i32 %i.fy, %i.dl
  br i1 %i.fz, label %bb.q, label %.preheader, !llvm.loop !150

bb.z:                                             ; preds = %.lr.ph292, %.backedge
  %.sroa.19.8291 = phi i32 [ %.sroa.19.7, %.lr.ph292 ], [ %.sroa.19.8.be, %.backedge ]
  %i.ga = add nsw i32 %.sroa.19.8291, -1          ; 5 uses
  %i.gb = sext i32 %i.ga to i64
  %i.gc = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.gb
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !42
  br label %bb.aa

bb.aa:                                            ; preds = %bb.aa, %bb.z
  %.4 = phi i32 [ %i.gd, %bb.z ], [ %i.gh, %bb.aa ] ; 3 uses
  %i.ge = sext i32 %.4 to i64
  %i.gf = getelementptr inbounds [64 x i8], ptr %i.b, i64 %i.ge ; 5 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 36
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !154 ; 2 uses
  %i.gi = icmp sgt i32 %i.gh, -1
  br i1 %i.gi, label %bb.aa, label %bb.ab, !llvm.loop !151

bb.ab:                                            ; preds = %bb.aa
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gf, i64 36
  %.not182 = icmp eq i32 %.4, %i.dh
  br i1 %.not182, label %.backedge, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gf, i64 32
  %i.gl = load i32, ptr %i.gk, align 8, !tbaa !69
  %i.gm = icmp slt i32 %i.gl, 0
  %i.gn = icmp ne i32 %.4, 0
  %or.cond = and i1 %i.gn, %i.gm
  br i1 %or.cond, label %.backedge, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  store i32 %i.dh, ptr %i.gj, align 4, !tbaa !154
  %i.go = getelementptr inbounds nuw i8, ptr %i.gf, i64 24
  %i.gp = load i32, ptr %i.go, align 8, !tbaa !64 ; 2 uses
  %i.gq = icmp sgt i32 %i.gp, 0
  br i1 %i.gq, label %.lr.ph288, label %.backedge

.lr.ph288:                                        ; preds = %bb.ad
  %i.gr = load ptr, ptr %i.ck, align 8, !tbaa !66
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gf, i64 28
  %.pre327 = load i32, ptr %i.gs, align 4, !tbaa !67
  br label %bb.ae

bb.ae:                                            ; preds = %.lr.ph288, %zend_worklist_push.exit195
  %.0169286 = phi i32 [ 0, %.lr.ph288 ], [ %i.hr, %zend_worklist_push.exit195 ] ; 2 uses
  %.sroa.19.9285 = phi i32 [ %i.ga, %.lr.ph288 ], [ %.sroa.19.15, %zend_worklist_push.exit195 ] ; 4 uses
  %i.gt = add nsw i32 %.pre327, %.0169286
  %i.gu = sext i32 %i.gt to i64
  %i.gv = getelementptr inbounds [4 x i8], ptr %i.gr, i64 %i.gu
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !42 ; 5 uses
  %i.gx = icmp samesign ult i32 %i.gw, %i.p
  tail call void @llvm.assume(i1 %i.gx)
  %i.gy = zext nneg i32 %i.gw to i64              ; 2 uses
  %i.gz = lshr i64 %i.gy, 6
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.gz
  %i.hb = load i64, ptr %i.ha, align 8, !tbaa !70
  %i.hc = and i64 %i.gy, 63
  %i.hd = lshr i64 %i.hb, %i.hc
  %i.he = trunc i64 %i.hd to i1
  br i1 %i.he, label %zend_worklist_push.exit195, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.hf = and i32 %i.gw, 63
  %i.hg = zext nneg i32 %i.hf to i64
  %i.hh = shl nuw i64 1, %i.hg
  %i.hi = lshr i32 %i.gw, 6
  %i.hj = zext nneg i32 %i.hi to i64
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.hj ; 2 uses
  %i.hl = load i64, ptr %i.hk, align 8, !tbaa !70
  %i.hm = or i64 %i.hl, %i.hh
  store i64 %i.hm, ptr %i.hk, align 8, !tbaa !70
  %i.hn = icmp slt i32 %.sroa.19.9285, %i.p
  tail call void @llvm.assume(i1 %i.hn)
  %i.ho = add nsw i32 %.sroa.19.9285, 1
  %i.hp = sext i32 %.sroa.19.9285 to i64
  %i.hq = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.hp
  store i32 %i.gw, ptr %i.hq, align 4, !tbaa !42
  br label %zend_worklist_push.exit195

zend_worklist_push.exit195:                       ; preds = %bb.ae, %bb.af
  %.sroa.19.15 = phi i32 [ %.sroa.19.9285, %bb.ae ], [ %i.ho, %bb.af ] ; 2 uses
  %i.hr = add nuw nsw i32 %.0169286, 1            ; 2 uses
  %i.hs = icmp slt i32 %i.hr, %i.gp
  br i1 %i.hs, label %bb.ae, label %.backedge, !llvm.loop !152

.backedge:                                        ; preds = %zend_worklist_push.exit195, %bb.ab, %bb.ad, %bb.ac
end_hunk_0
