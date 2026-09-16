Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/punycode?download=true
inline.NumInlined: 9
inline.NumDeleted: 5
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@u_strToPunycode_78:bb.a

bb.v:                                             ; preds = %bb.u
  br i1 %.not211, label %_ZL12asciiCaseMapca.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.av = trunc nuw nsw i16 %i.ao to i8           ; 2 uses
  %i.aw = getelementptr inbounds i8, ptr %4, i64 %i.ap
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !14
  %.not.i = icmp eq i8 %i.ax, 0
  br i1 %.not.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ay = add nsw i8 %i.av, -97
  %or.cond.i = icmp ult i8 %i.ay, 26
  %i.az = add nsw i16 %i.ao, -32
  %spec.select.i = select i1 %or.cond.i, i16 %i.az, i16 %i.ao
  br label %_ZL12asciiCaseMapca.exit

bb.y:                                             ; preds = %bb.w
  %i.ba = add nsw i8 %i.av, -65
  %or.cond5.i = icmp ult i8 %i.ba, 26
  %i.bb = or i16 %i.ao, 32
  %spec.select15.i = select i1 %or.cond5.i, i16 %i.bb, i16 %i.ao
  br label %_ZL12asciiCaseMapca.exit

_ZL12asciiCaseMapca.exit:                         ; preds = %bb.v, %bb.y, %bb.x
  %i.bc = phi i16 [ %spec.select15.i, %bb.y ], [ %spec.select.i, %bb.x ], [ %i.ao, %bb.v ]
  %i.bd = sext i32 %.0175250 to i64
  %i.be = getelementptr inbounds [2 x i8], ptr %2, i64 %i.bd
  store i16 %i.bc, ptr %i.be, align 2, !tbaa !12
  br label %bb.z

bb.z:                                             ; preds = %_ZL12asciiCaseMapca.exit, %bb.u
  %i.bf = add nsw i32 %.0175250, 1
  br label %bb.ai

bb.aa:                                            ; preds = %bb.t
  br i1 %.not211, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bg = getelementptr inbounds i8, ptr %4, i64 %i.ap
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !14
  %.not212 = icmp eq i8 %i.bh, 0
  %i.bi = select i1 %.not212, i32 0, i32 -2147483648
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.bj = phi i32 [ 0, %bb.aa ], [ %i.bi, %bb.ab ]
  %i.bk = and i32 %i.aq, 63488
  %i.bl = icmp eq i32 %i.bk, 55296
  br i1 %i.bl, label %bb.ad, label %bb.ah

bb.ad:                                            ; preds = %bb.ac
  %i.bm = and i32 %i.aq, 56320
  %i.bn = icmp eq i32 %i.bm, 55296
  br i1 %i.bn, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  %i.bo = add nsw i32 %.0167251, 1                ; 2 uses
  %i.bp = sext i32 %i.bo to i64
  %i.bq = getelementptr inbounds [2 x i8], ptr %0, i64 %i.bp
  %i.br = load i16, ptr %i.bq, align 2, !tbaa !12
  %i.bs = zext i16 %i.br to i32                   ; 2 uses
  %i.bt = and i32 %i.bs, 64512
  %i.bu = icmp eq i32 %i.bt, 56320
  br i1 %i.bu, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.bv = shl nuw nsw i32 %i.aq, 10
  %i.bw = add nsw i32 %i.bv, -56613888
  %i.bx = add nuw nsw i32 %i.bw, %i.bs
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ae, %bb.ad
  store i32 10, ptr %5, align 4, !tbaa !10
  br label %bb.bm

bb.ah:                                            ; preds = %bb.ac, %bb.af
  %.pn213 = phi i32 [ %i.bx, %bb.af ], [ %i.aq, %bb.ac ]
  %.1168 = phi i32 [ %i.bo, %bb.af ], [ %.0167251, %bb.ac ]
  %.0189 = or disjoint i32 %.pn213, %i.bj
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv302
  store i32 %.0189, ptr %i.by, align 4, !tbaa !21
  br label %bb.ai

bb.ai:                                            ; preds = %bb.z, %bb.ah
  %.1176 = phi i32 [ %i.bf, %bb.z ], [ %.0175250, %bb.ah ] ; 2 uses
  %.2169 = phi i32 [ %.0167251, %bb.z ], [ %.1168, %bb.ah ]
  %indvars.iv.next303 = add nuw nsw i64 %indvars.iv302, 1 ; 2 uses
  %i.bz = add nsw i32 %.2169, 1                   ; 2 uses
  %i.ca = sext i32 %i.bz to i64                   ; 2 uses
  %i.cb = getelementptr inbounds [2 x i8], ptr %0, i64 %i.ca
  %i.cc = load i16, ptr %i.cb, align 2, !tbaa !12 ; 2 uses
  %i.cd = icmp eq i16 %i.cc, 0
  br i1 %i.cd, label %.loopexit, label %bb.r, !llvm.loop !16

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.au
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.au ], [ 0, %.lr.ph ] ; 3 uses
  %.3170246 = phi i32 [ %i.dp, %bb.au ], [ 0, %.lr.ph ] ; 4 uses
  %.2177245 = phi i32 [ %.3178, %bb.au ], [ 0, %.lr.ph ] ; 4 uses
  %i.ce = sext i32 %.3170246 to i64               ; 3 uses
  %i.cf = getelementptr inbounds [2 x i8], ptr %0, i64 %i.ce
  %i.cg = load i16, ptr %i.cf, align 2, !tbaa !12 ; 7 uses
  %i.ch = zext i16 %i.cg to i32                   ; 4 uses
  %i.ci = icmp ult i16 %i.cg, 128
  br i1 %i.ci, label %bb.aj, label %bb.ao

bb.aj:                                            ; preds = %.lr.ph.split
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  store i32 0, ptr %i.cj, align 4, !tbaa !21
  %i.ck = icmp slt i32 %.2177245, %3
  br i1 %i.ck, label %bb.ak, label %bb.an

bb.ak:                                            ; preds = %bb.aj
  %i.cl = trunc nuw nsw i16 %i.cg to i8           ; 2 uses
  %i.cm = getelementptr inbounds i8, ptr %4, i64 %i.ce
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !14
  %.not.i218 = icmp eq i8 %i.cn, 0
  br i1 %.not.i218, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.co = add nsw i8 %i.cl, -97
  %or.cond.i219 = icmp ult i8 %i.co, 26
  %i.cp = add nsw i16 %i.cg, -32
  %spec.select.i220 = select i1 %or.cond.i219, i16 %i.cp, i16 %i.cg
  br label %_ZL12asciiCaseMapca.exit224

bb.am:                                            ; preds = %bb.ak
  %i.cq = add nsw i8 %i.cl, -65
  %or.cond5.i222 = icmp ult i8 %i.cq, 26
  %i.cr = or i16 %i.cg, 32
  %spec.select15.i223 = select i1 %or.cond5.i222, i16 %i.cr, i16 %i.cg
  br label %_ZL12asciiCaseMapca.exit224

_ZL12asciiCaseMapca.exit224:                      ; preds = %bb.am, %bb.al
  %i.cs = phi i16 [ %spec.select15.i223, %bb.am ], [ %spec.select.i220, %bb.al ]
  %i.ct = sext i32 %.2177245 to i64
  %i.cu = getelementptr inbounds [2 x i8], ptr %2, i64 %i.ct
  store i16 %i.cs, ptr %i.cu, align 2, !tbaa !12
  br label %bb.an

bb.an:                                            ; preds = %_ZL12asciiCaseMapca.exit224, %bb.aj
  %i.cv = add nsw i32 %.2177245, 1
  br label %bb.au

bb.ao:                                            ; preds = %.lr.ph.split
  %i.cw = getelementptr inbounds i8, ptr %4, i64 %i.ce
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !14
  %.not209 = icmp eq i8 %i.cx, 0
  %i.cy = select i1 %.not209, i32 0, i32 -2147483648
  %i.cz = and i32 %i.ch, 63488
  %i.da = icmp eq i32 %i.cz, 55296
  br i1 %i.da, label %bb.ap, label %bb.at

bb.ap:                                            ; preds = %bb.ao
  %i.db = and i32 %i.ch, 56320
  %i.dc = icmp eq i32 %i.db, 55296
  br i1 %i.dc, label %bb.aq, label %.split.us

bb.aq:                                            ; preds = %bb.ap
  %i.dd = add nsw i32 %.3170246, 1                ; 3 uses
  %i.de = icmp slt i32 %i.dd, %1
  br i1 %i.de, label %bb.ar, label %.split.us

bb.ar:                                            ; preds = %bb.aq
  %i.df = sext i32 %i.dd to i64
  %i.dg = getelementptr inbounds [2 x i8], ptr %0, i64 %i.df
  %i.dh = load i16, ptr %i.dg, align 2, !tbaa !12
  %i.di = zext i16 %i.dh to i32                   ; 2 uses
  %i.dj = and i32 %i.di, 64512
  %i.dk = icmp eq i32 %i.dj, 56320
  br i1 %i.dk, label %bb.as, label %.split.us

bb.as:                                            ; preds = %bb.ar
  %i.dl = shl nuw nsw i32 %i.ch, 10
  %i.dm = add nsw i32 %i.dl, -56613888
  %i.dn = add nuw nsw i32 %i.dm, %i.di
  br label %bb.at

.split.us:                                        ; preds = %bb.ap, %bb.aq, %bb.ar, %bb.j, %bb.k, %bb.l
  store i32 10, ptr %5, align 4, !tbaa !10
  br label %bb.bm

bb.at:                                            ; preds = %bb.ao, %bb.as
  %.pn = phi i32 [ %i.dn, %bb.as ], [ %i.ch, %bb.ao ]
  %.4171 = phi i32 [ %i.dd, %bb.as ], [ %.3170246, %bb.ao ]
  %.1190 = or disjoint i32 %.pn, %i.cy
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  store i32 %.1190, ptr %i.do, align 4, !tbaa !21
  br label %bb.au

bb.au:                                            ; preds = %bb.an, %bb.at
  %.3178 = phi i32 [ %i.cv, %bb.an ], [ %.2177245, %bb.at ] ; 2 uses
  %.5 = phi i32 [ %.3170246, %bb.an ], [ %.4171, %bb.at ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.dp = add nsw i32 %.5, 1                      ; 2 uses
  %i.dq = icmp slt i32 %i.dp, %1
  br i1 %i.dq, label %.lr.ph.split, label %.loopexit, !llvm.loop !15

.loopexit:                                        ; preds = %bb.ai, %bb.au, %bb.q
  %indvars.iv.next.lcssa.sink = phi i64 [ %indvars.iv.next, %bb.au ], [ %indvars.iv.next300, %bb.q ], [ %indvars.iv.next303, %bb.ai ]
  %.4179 = phi i32 [ %.3178, %bb.au ], [ %.3178.us, %bb.q ], [ %.1176, %bb.ai ] ; 8 uses
  %i.dr = trunc nuw i64 %indvars.iv.next.lcssa.sink to i32 ; 4 uses
  %i.ds = icmp sgt i32 %.4179, 0
  br i1 %i.ds, label %bb.av, label %bb.ay

bb.av:                                            ; preds = %.loopexit
  %i.dt = icmp slt i32 %.4179, %3
  br i1 %i.dt, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.du = zext nneg i32 %.4179 to i64
  %i.dv = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.du
  store i16 45, ptr %i.dv, align 2, !tbaa !12
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %i.dw = add nuw nsw i32 %.4179, 1
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %.loopexit
  %.5180 = phi i32 [ %i.dw, %bb.ax ], [ %.4179, %.loopexit ] ; 2 uses
  %i.dx = icmp slt i32 %.4179, %i.dr
  br i1 %i.dx, label %.preheader233.lr.ph, label %._crit_edge288

.preheader233.lr.ph:                              ; preds = %bb.ay
  %smax = tail call i32 @llvm.smax.i32(i32 %i.dr, i32 1) ; 3 uses
  %i.dy = zext nneg i32 %3 to i64
  %wide.trip.count = zext nneg i32 %smax to i64   ; 2 uses
  %wide.trip.count314 = zext nneg i32 %smax to i64
  %xtraiter = and i64 %wide.trip.count, 1
  %6 = icmp slt i32 %i.dr, 2
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod359 = trunc i32 %smax to i1
  br label %.preheader233

.preheader233:                                    ; preds = %.preheader233.lr.ph, %._crit_edge278
  %.0172287 = phi i32 [ 72, %.preheader233.lr.ph ], [ %.2174, %._crit_edge278 ]
  %.6181286 = phi i32 [ %.5180, %.preheader233.lr.ph ], [ %.9, %._crit_edge278 ]
  %.0183285 = phi i32 [ %.4179, %.preheader233.lr.ph ], [ %.2185, %._crit_edge278 ] ; 3 uses
  %.0186284 = phi i32 [ 0, %.preheader233.lr.ph ], [ %i.gs, %._crit_edge278 ] ; 2 uses
  %.2191283 = phi i32 [ 128, %.preheader233.lr.ph ], [ %i.gt, %._crit_edge278 ] ; 4 uses
  br i1 %6, label %.lr.ph258.epil.preheader, label %.lr.ph258

.lr.ph258:                                        ; preds = %.preheader233, %.lr.ph258
  %indvars.iv304 = phi i64 [ %indvars.iv.next305.1, %.lr.ph258 ], [ 0, %.preheader233 ] ; 3 uses
  %.0165257 = phi i32 [ %.1166.1, %.lr.ph258 ], [ 2147483647, %.preheader233 ] ; 2 uses
  %niter = phi i64 [ %niter.next.1, %.lr.ph258 ], [ 0, %.preheader233 ]
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv304
  %i.ea = load i32, ptr %i.dz, align 8, !tbaa !21
  %i.eb = and i32 %i.ea, 2147483647               ; 2 uses
  %.not216.not = icmp sgt i32 %.2191283, %i.eb
  %i.ec = tail call i32 @llvm.umin.i32(i32 %i.eb, i32 %.0165257)
  %.1166 = select i1 %.not216.not, i32 %.0165257, i32 %i.ec ; 2 uses
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv304
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 4
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !21
  %i.eg = and i32 %i.ef, 2147483647               ; 2 uses
  %.not216.not.1 = icmp sgt i32 %.2191283, %i.eg
  %i.eh = tail call i32 @llvm.umin.i32(i32 %i.eg, i32 %.1166)
  %.1166.1 = select i1 %.not216.not.1, i32 %.1166, i32 %i.eh ; 3 uses
  %indvars.iv.next305.1 = add nuw nsw i64 %indvars.iv304, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %.lr.ph258, !llvm.loop !17

._crit_edge.unr-lcssa:                            ; preds = %.lr.ph258
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph258.epil.preheader

.lr.ph258.epil.preheader:                         ; preds = %._crit_edge.unr-lcssa, %.preheader233
  %indvars.iv304.epil.init = phi i64 [ 0, %.preheader233 ], [ %indvars.iv.next305.1, %._crit_edge.unr-lcssa ]
  %.0165257.epil.init = phi i32 [ 2147483647, %.preheader233 ], [ %.1166.1, %._crit_edge.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod359)
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv304.epil.init
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !21
  %i.ek = and i32 %i.ej, 2147483647               ; 2 uses
  %.not216.not.epil = icmp sgt i32 %.2191283, %i.ek
  %i.el = tail call i32 @llvm.umin.i32(i32 %i.ek, i32 %.0165257.epil.init)
  %.1166.epil = select i1 %.not216.not.epil, i32 %.0165257.epil.init, i32 %i.el
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.lr.ph258.epil.preheader
  %.1166.lcssa = phi i32 [ %.1166.1, %._crit_edge.unr-lcssa ], [ %.1166.epil, %.lr.ph258.epil.preheader ] ; 4 uses
  %i.em = sub nsw i32 %.1166.lcssa, %.2191283     ; 2 uses
  %i.en = add i32 %.0186284, %.0183285
  %i.eo = sub i32 2147483647, %i.en
  %i.ep = add nsw i32 %.0183285, 1                ; 2 uses
  %i.eq = sdiv i32 %i.eo, %i.ep
  %i.er = icmp sgt i32 %i.em, %i.eq
  br i1 %i.er, label %bb.az, label %.lr.ph277.preheader

bb.az:                                            ; preds = %._crit_edge
  store i32 5, ptr %5, align 4, !tbaa !10
  br label %bb.bm

.lr.ph277.preheader:                              ; preds = %._crit_edge
  %i.es = mul nsw i32 %i.em, %i.ep
  %i.et = add nsw i32 %i.es, %.0186284
  br label %.lr.ph277

.lr.ph277:                                        ; preds = %.lr.ph277.preheader, %bb.bl
  %indvars.iv310 = phi i64 [ 0, %.lr.ph277.preheader ], [ %indvars.iv.next311, %bb.bl ] ; 2 uses
  %.1173274 = phi i32 [ %.0172287, %.lr.ph277.preheader ], [ %.2174, %bb.bl ] ; 7 uses
  %.7182273 = phi i32 [ %.6181286, %.lr.ph277.preheader ], [ %.9, %bb.bl ] ; 4 uses
  %.1184272 = phi i32 [ %.0183285, %.lr.ph277.preheader ], [ %.2185, %bb.bl ] ; 4 uses
  %.1187271 = phi i32 [ %i.et, %.lr.ph277.preheader ], [ %.2188, %bb.bl ] ; 7 uses
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv310
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !21 ; 2 uses
  %i.ew = and i32 %i.ev, 2147483647               ; 2 uses
  %i.ex = icmp samesign ult i32 %i.ew, %.1166.lcssa
  br i1 %i.ex, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %.lr.ph277
  %i.ey = add nsw i32 %.1187271, 1
  br label %bb.bl

bb.bb:                                            ; preds = %.lr.ph277
  %i.ez = icmp eq i32 %i.ew, %.1166.lcssa
  br i1 %i.ez, label %.preheader, label %bb.bl

.preheader:                                       ; preds = %bb.bb
  %i.fa = sub nsw i32 36, %.1173274
  %i.fb = icmp sgt i32 %.1173274, 35
  %.not215260 = icmp sgt i32 %.1173274, 10
  %spec.select261 = select i1 %.not215260, i32 %i.fa, i32 26
  %.0162262 = select i1 %i.fb, i32 1, i32 %spec.select261 ; 2 uses
  %i.fc = icmp slt i32 %.1187271, %.0162262
  br i1 %i.fc, label %._crit_edge268, label %.lr.ph267.preheader

.lr.ph267.preheader:                              ; preds = %.preheader
  %i.fd = sext i32 %.7182273 to i64
  br label %.lr.ph267

.lr.ph267:                                        ; preds = %.lr.ph267.preheader, %.lr.ph267._crit_edge
  %indvars.iv307 = phi i64 [ %i.fd, %.lr.ph267.preheader ], [ %indvars.iv.next308, %.lr.ph267._crit_edge ] ; 3 uses
  %.0162266 = phi i32 [ %.0162262, %.lr.ph267.preheader ], [ %.0162, %.lr.ph267._crit_edge ] ; 3 uses
  %.0163265 = phi i32 [ 36, %.lr.ph267.preheader ], [ %i.fo, %.lr.ph267._crit_edge ] ; 2 uses
  %.0164264 = phi i32 [ %.1187271, %.lr.ph267.preheader ], [ %i.fh, %.lr.ph267._crit_edge ]
  %i.fe = icmp slt i64 %indvars.iv307, %i.dy
  %i.ff = sub nsw i32 %.0164264, %.0162266        ; 2 uses
  %i.fg = sub nsw i32 36, %.0162266               ; 2 uses
  %i.fh = sdiv i32 %i.ff, %i.fg                   ; 3 uses
  %i.fi = srem i32 %i.ff, %i.fg
  br i1 %i.fe, label %_ZL12digitToBasicia.exit, label %.lr.ph267._crit_edge

_ZL12digitToBasicia.exit:                         ; preds = %.lr.ph267
  %i.fj = add nsw i32 %i.fi, %.0162266            ; 2 uses
  %i.fk = icmp slt i32 %i.fj, 26
  %i.fl = trunc i32 %i.fj to i16
  %.0.i225.v = select i1 %i.fk, i16 97, i16 22
  %.0.i225 = add i16 %.0.i225.v, %i.fl
  %sext231 = shl i16 %.0.i225, 8
  %i.fm = ashr exact i16 %sext231, 8
  %i.fn = getelementptr inbounds [2 x i8], ptr %2, i64 %indvars.iv307
  store i16 %i.fm, ptr %i.fn, align 2, !tbaa !12
  br label %.lr.ph267._crit_edge

.lr.ph267._crit_edge:                             ; preds = %.lr.ph267, %_ZL12digitToBasicia.exit
  %indvars.iv.next308 = add nsw i64 %indvars.iv307, 1 ; 2 uses
  %i.fo = add nuw nsw i32 %.0163265, 36           ; 2 uses
  %i.fp = sub nsw i32 %i.fo, %.1173274            ; 2 uses
  %i.fq = icmp slt i32 %i.fp, 1
  %i.fr = add nuw nsw i32 %.0163265, 10
  %.not215 = icmp slt i32 %i.fr, %.1173274
  %spec.select = select i1 %.not215, i32 %i.fp, i32 26
  %.0162 = select i1 %i.fq, i32 1, i32 %spec.select ; 2 uses
  %i.fs = icmp slt i32 %i.fh, %.0162
  br i1 %i.fs, label %._crit_edge268.loopexit, label %.lr.ph267, !llvm.loop !18

._crit_edge268.loopexit:                          ; preds = %.lr.ph267._crit_edge
  %i.ft = trunc nsw i64 %indvars.iv.next308 to i32
  br label %._crit_edge268

._crit_edge268:                                   ; preds = %._crit_edge268.loopexit, %.preheader
  %.8.lcssa = phi i32 [ %.7182273, %.preheader ], [ %i.ft, %._crit_edge268.loopexit ] ; 3 uses
  %.0164.lcssa = phi i32 [ %.1187271, %.preheader ], [ %i.fh, %._crit_edge268.loopexit ] ; 3 uses
  %i.fu = icmp slt i32 %.8.lcssa, %3
  br i1 %i.fu, label %bb.bc, label %bb.bh

bb.bc:                                            ; preds = %._crit_edge268
  %i.fv = icmp slt i32 %.0164.lcssa, 26
  br i1 %i.fv, label %bb.bd, label %bb.bg

bb.bd:                                            ; preds = %bb.bc
  %.not.i227 = icmp sgt i32 %i.ev, -1
  %i.fw = trunc i32 %.0164.lcssa to i16           ; 2 uses
  br i1 %.not.i227, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.fx = add i16 %i.fw, 65
  br label %_ZL12digitToBasicia.exit228

bb.bf:                                            ; preds = %bb.bd
  %i.fy = add i16 %i.fw, 97
  br label %_ZL12digitToBasicia.exit228

bb.bg:                                            ; preds = %bb.bc
  %i.fz = trunc i32 %.0164.lcssa to i16
  %i.ga = add i16 %i.fz, 22
  br label %_ZL12digitToBasicia.exit228

_ZL12digitToBasicia.exit228:                      ; preds = %bb.be, %bb.bf, %bb.bg
  %.0.i226 = phi i16 [ %i.fx, %bb.be ], [ %i.fy, %bb.bf ], [ %i.ga, %bb.bg ]
  %sext232 = shl i16 %.0.i226, 8
  %i.gb = ashr exact i16 %sext232, 8
  %i.gc = sext i32 %.8.lcssa to i64
  %i.gd = getelementptr inbounds [2 x i8], ptr %2, i64 %i.gc
  store i16 %i.gb, ptr %i.gd, align 2, !tbaa !12
  br label %bb.bh

bb.bh:                                            ; preds = %_ZL12digitToBasicia.exit228, %._crit_edge268
  %i.ge = add nsw i32 %.8.lcssa, 1
  %i.gf = add nsw i32 %.1184272, 1                ; 2 uses
  %.not = icmp eq i32 %.1184272, %.4179
  br i1 %.not, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.gg = sdiv i32 %.1187271, 700
  br label %bb.bk

bb.bj:                                            ; preds = %bb.bh
  %i.gh = sdiv i32 %.1187271, 2
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %.012.i = phi i32 [ %i.gg, %bb.bi ], [ %i.gh, %bb.bj ] ; 2 uses
  %i.gi = sdiv i32 %.012.i, %i.gf
  %i.gj = add nsw i32 %i.gi, %.012.i              ; 3 uses
  %i.gk = icmp sgt i32 %i.gj, 455
  br i1 %i.gk, label %.lr.ph.i, label %_ZL9adaptBiasiia.exit

.lr.ph.i:                                         ; preds = %bb.bk, %.lr.ph.i
  %.014.i = phi i32 [ %i.gm, %.lr.ph.i ], [ 0, %bb.bk ]
  %.113.i = phi i32 [ %i.gl, %.lr.ph.i ], [ %i.gj, %bb.bk ] ; 2 uses
  %i.gl = udiv i32 %.113.i, 35                    ; 2 uses
  %i.gm = add nuw nsw i32 %.014.i, 36             ; 2 uses
  %i.gn = icmp samesign ugt i32 %.113.i, 15959
  br i1 %i.gn, label %.lr.ph.i, label %_ZL9adaptBiasiia.exit, !llvm.loop !0

_ZL9adaptBiasiia.exit:                            ; preds = %.lr.ph.i, %bb.bk
  %.1.lcssa.i = phi i32 [ %i.gj, %bb.bk ], [ %i.gl, %.lr.ph.i ] ; 2 uses
  %.0.lcssa.i = phi i32 [ 0, %bb.bk ], [ %i.gm, %.lr.ph.i ]
  %i.go = mul nsw i32 %.1.lcssa.i, 36
  %i.gp = add nsw i32 %.1.lcssa.i, 38
  %i.gq = sdiv i32 %i.go, %i.gp
  %i.gr = add nsw i32 %i.gq, %.0.lcssa.i
  br label %bb.bl

bb.bl:                                            ; preds = %bb.ba, %_ZL9adaptBiasiia.exit, %bb.bb
  %.2188 = phi i32 [ %i.ey, %bb.ba ], [ 0, %_ZL9adaptBiasiia.exit ], [ %.1187271, %bb.bb ] ; 2 uses
  %.2185 = phi i32 [ %.1184272, %bb.ba ], [ %i.gf, %_ZL9adaptBiasiia.exit ], [ %.1184272, %bb.bb ] ; 3 uses
  %.9 = phi i32 [ %.7182273, %bb.ba ], [ %i.ge, %_ZL9adaptBiasiia.exit ], [ %.7182273, %bb.bb ] ; 3 uses
  %.2174 = phi i32 [ %.1173274, %bb.ba ], [ %i.gr, %_ZL9adaptBiasiia.exit ], [ %.1173274, %bb.bb ] ; 2 uses
  %indvars.iv.next311 = add nuw nsw i64 %indvars.iv310, 1 ; 2 uses
  %exitcond314.not = icmp eq i64 %indvars.iv.next311, %wide.trip.count314
  br i1 %exitcond314.not, label %._crit_edge278, label %.lr.ph277, !llvm.loop !19

._crit_edge278:                                   ; preds = %bb.bl
  %i.gs = add nsw i32 %.2188, 1
  %i.gt = add nuw nsw i32 %.1166.lcssa, 1
  %i.gu = icmp slt i32 %.2185, %i.dr
  br i1 %i.gu, label %.preheader233, label %._crit_edge288, !llvm.loop !20

._crit_edge288:                                   ; preds = %._crit_edge278, %bb.h, %.preheader234, %bb.ay
  %.6181.lcssa = phi i32 [ %.5180, %bb.ay ], [ 0, %.preheader234 ], [ %1, %bb.h ], [ %.9, %._crit_edge278 ]
  %i.gv = tail call i32 @u_terminateUChars_78(ptr noundef %2, i32 noundef %3, i32 noundef %.6181.lcssa, ptr noundef nonnull %5)
  br label %bb.bm

bb.bm:                                            ; preds = %bb.a, %bb.b, %._crit_edge288, %bb.az, %.split.us, %bb.ag, %bb.s, %bb.g, %bb.e
  %.0192 = phi i32 [ 0, %.split.us ], [ 0, %bb.e ], [ 0, %bb.g ], [ 0, %bb.az ], [ %i.gv, %._crit_edge288 ], [ 0, %bb.s ], [ 0, %bb.ag ], [ 0, %bb.b ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret i32 %.0192
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @u_terminateUChars_78(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define i32 @u_strFromPunycode_78(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr nofree noundef captures(address_is_null) %4, ptr noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %5, null
  br i1 %i.a, label %bb.ax, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %5, align 4, !tbaa !10
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.c, label %bb.ax

bb.c:                                             ; preds = %bb.b
  %i.d = icmp eq ptr %0, null
  %i.e = icmp slt i32 %1, -1
  %or.cond = or i1 %i.d, %i.e
  br i1 %or.cond, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = icmp eq ptr %2, null                     ; 2 uses
  %i.g = icmp ne i32 %3, 0
  %or.cond3 = and i1 %i.f, %i.g
  br i1 %or.cond3, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  store i32 1, ptr %5, align 4, !tbaa !10
  br label %bb.ax

bb.f:                                             ; preds = %bb.d
  %i.h = icmp eq i32 %1, -1
  br i1 %i.h, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.i = tail call i32 @u_strlen_78(ptr noundef nonnull %0)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.0179 = phi i32 [ %i.i, %bb.g ], [ %1, %bb.f ] ; 7 uses
  %i.j = icmp sgt i32 %.0179, 2000
  br i1 %i.j, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 31, ptr %5, align 4, !tbaa !10
  br label %bb.ax

bb.j:                                             ; preds = %bb.h
  %.old6 = icmp sgt i32 %.0179, 0
  br i1 %.old6, label %.preheader219.preheader, label %._crit_edge.thread

.preheader219.preheader:                          ; preds = %bb.j
  %i.k = zext nneg i32 %.0179 to i64
  br label %.preheader219

.preheader219:                                    ; preds = %.preheader219.preheader, %.preheader219
  %indvars.iv = phi i64 [ %i.k, %.preheader219.preheader ], [ %indvars.iv.next, %.preheader219 ] ; 3 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 5 uses
  %i.l = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next
  %i.m = load i16, ptr %i.l, align 2, !tbaa !12
  %i.n = icmp ne i16 %i.m, 45
  %i.o = icmp samesign ugt i64 %indvars.iv, 1
  %or.cond7 = and i1 %i.o, %i.n
  br i1 %or.cond7, label %.preheader219, label %.loopexit, !llvm.loop !22

.loopexit:                                        ; preds = %.preheader219
  %i.p = trunc nuw nsw i64 %indvars.iv.next to i32 ; 3 uses
  %i.q = icmp sgt i64 %indvars.iv, 1
  br i1 %i.q, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %.loopexit
  %.not207 = icmp eq ptr %4, null
  %i.r = sext i32 %3 to i64                       ; 2 uses
  br i1 %.not207, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.m
  %indvars.iv282 = phi i64 [ %indvars.iv.next283, %bb.m ], [ %indvars.iv.next, %.lr.ph ] ; 3 uses
  %indvars.iv.next283 = add nsw i64 %indvars.iv282, -1 ; 3 uses
  %i.s = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next283
  %i.t = load i16, ptr %i.s, align 2, !tbaa !12   ; 2 uses
  %i.u = icmp ult i16 %i.t, 128
  br i1 %i.u, label %bb.k, label %.split.us

bb.k:                                             ; preds = %.lr.ph.split.us
  %.not206.us = icmp sgt i64 %indvars.iv282, %i.r
  br i1 %.not206.us, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.v = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv.next283
  store i16 %i.t, ptr %i.v, align 2, !tbaa !12
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.w = icmp samesign ugt i64 %indvars.iv282, 1
  br i1 %i.w, label %.lr.ph.split.us, label %._crit_edge, !llvm.loop !23

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.p
  %indvars.iv279 = phi i64 [ %indvars.iv.next280, %bb.p ], [ %indvars.iv.next, %.lr.ph ] ; 3 uses
  %indvars.iv.next280 = add nsw i64 %indvars.iv279, -1 ; 4 uses
  %i.x = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv.next280
  %i.y = load i16, ptr %i.x, align 2, !tbaa !12   ; 3 uses
  %i.z = icmp ult i16 %i.y, 128
  br i1 %i.z, label %bb.n, label %.split.us

.split.us:                                        ; preds = %.lr.ph.split, %.lr.ph.split.us
  store i32 10, ptr %5, align 4, !tbaa !10
  br label %bb.ax

bb.n:                                             ; preds = %.lr.ph.split
  %.not206 = icmp sgt i64 %indvars.iv279, %i.r
  br i1 %.not206, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aa = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv.next280
  store i16 %i.y, ptr %i.aa, align 2, !tbaa !12
  %i.ab = add nsw i16 %i.y, -65
  %i.ac = icmp ult i16 %i.ab, 26
  %i.ad = zext i1 %i.ac to i8
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 %indvars.iv.next280
  store i8 %i.ad, ptr %i.ae, align 1, !tbaa !14
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.af = icmp samesign ugt i64 %indvars.iv279, 1
  br i1 %i.af, label %.lr.ph.split, label %._crit_edge, !llvm.loop !23

._crit_edge:                                      ; preds = %bb.p, %bb.m
  %i.ag = add nsw i32 %i.p, 1
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %._crit_edge, %bb.j, %.loopexit
  %.1171311313 = phi i32 [ %.0179, %bb.j ], [ %i.p, %._crit_edge ], [ %i.p, %.loopexit ] ; 3 uses
  %i.ah = phi i32 [ 0, %bb.j ], [ %i.ag, %._crit_edge ], [ 0, %.loopexit ] ; 2 uses
  %i.ai = icmp slt i32 %i.ah, %.0179
  br i1 %i.ai, label %.preheader.lr.ph, label %._crit_edge259

.preheader.lr.ph:                                 ; preds = %._crit_edge.thread
  %.not204 = icmp eq ptr %4, null                 ; 3 uses
  %i.aj = zext nneg i32 %.0179 to i64
  %i.ak = zext nneg i32 %i.ah to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %bb.aw
  %.0161258 = phi i32 [ 1000000000, %.preheader.lr.ph ], [ %.2163, %bb.aw ] ; 10 uses
  %.0164257 = phi i32 [ %.1171311313, %.preheader.lr.ph ], [ %i.bm, %bb.aw ]
  %.0168256 = phi i64 [ %i.ak, %.preheader.lr.ph ], [ %indvars.iv.next286, %bb.aw ]
  %.0173255 = phi i32 [ 72, %.preheader.lr.ph ], [ %i.bz, %bb.aw ] ; 2 uses
  %.0174254 = phi i32 [ 0, %.preheader.lr.ph ], [ %i.et, %bb.aw ] ; 3 uses
  %.0176252 = phi i32 [ %.1171311313, %.preheader.lr.ph ], [ %i.ck, %bb.aw ] ; 6 uses
  %.0177251 = phi i32 [ 128, %.preheader.lr.ph ], [ %i.ce, %bb.aw ] ; 2 uses
  %i.al = add nsw i32 %.0173255, 26
  br label %bb.r

bb.q:                                             ; preds = %bb.aa
  store i32 12, ptr %5, align 4, !tbaa !10
  br label %bb.ax

bb.r:                                             ; preds = %.preheader, %bb.aa
  %indvars.iv285 = phi i64 [ %.0168256, %.preheader ], [ %indvars.iv.next286, %bb.aa ] ; 3 uses
  %.0166242 = phi i32 [ 36, %.preheader ], [ %i.bj, %bb.aa ] ; 3 uses
  %.0167241 = phi i32 [ 1, %.preheader ], [ %i.bi, %bb.aa ] ; 4 uses
  %.1175239 = phi i32 [ %.0174254, %.preheader ], [ %i.bb, %bb.aa ] ; 2 uses
  %indvars.iv.next286 = add nsw i64 %indvars.iv285, 1 ; 4 uses
  %i.am = getelementptr inbounds [2 x i8], ptr %0, i64 %indvars.iv285
  %i.an = load i16, ptr %i.am, align 2, !tbaa !12 ; 5 uses
  %i.ao = zext i16 %i.an to i32                   ; 3 uses
  %i.ap = icmp ult i16 %i.an, 91
  br i1 %i.ap, label %bb.s, label %bb.v

bb.s:                                             ; preds = %bb.r
  %i.aq = icmp samesign ult i16 %i.an, 58
  br i1 %i.aq, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ar = icmp samesign ult i16 %i.an, 48
  %i.as = add nsw i32 %i.ao, -22
end_hunk_0
begin_hunk_1_@u_strFromPunycode_78:bb.a

bb.ag:                                            ; preds = %_ZL9adaptBiasiia.exit
  %i.ce = add nsw i32 %i.ca, %.0177251            ; 9 uses
  %i.cf = icmp sgt i32 %i.ce, 1114111
  %i.cg = and i32 %i.ce, -2048
  %i.ch = icmp eq i32 %i.cg, 55296
  %or.cond209 = or i1 %i.cf, %i.ch
  br i1 %or.cond209, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  store i32 12, ptr %5, align 4, !tbaa !10
  br label %bb.ax

bb.ai:                                            ; preds = %bb.ag
  %i.ci = icmp ugt i32 %i.ce, 65535               ; 6 uses
  %i.cj = select i1 %i.ci, i32 2, i32 1           ; 2 uses
  %i.ck = add nsw i32 %i.cj, %.0176252            ; 3 uses
  %.not200 = icmp sgt i32 %i.ck, %3
  %or.cond210 = select i1 %i.f, i1 true, i1 %.not200
  br i1 %or.cond210, label %bb.aw, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %.not201 = icmp sgt i32 %i.cb, %.0161258
  br i1 %.not201, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.cl = add nsw i32 %.0161258, 1
  %spec.select213 = select i1 %i.ci, i32 %i.cb, i32 %i.cl
  br label %.critedge

bb.al:                                            ; preds = %bb.aj
  %i.cm = sub nsw i32 %i.cb, %.0161258            ; 2 uses
  %i.cn = icmp sgt i32 %i.cm, 0
  br i1 %i.cn, label %.lr.ph246, label %.critedge

.lr.ph246:                                        ; preds = %bb.al
  %i.co = icmp slt i32 %.0176252, 0
  br label %bb.am

bb.am:                                            ; preds = %.lr.ph246, %bb.aq
  %.0244 = phi i32 [ %i.cm, %.lr.ph246 ], [ %i.dd, %bb.aq ] ; 2 uses
  %.0160243 = phi i32 [ %.0161258, %.lr.ph246 ], [ %.1, %bb.aq ] ; 7 uses
  %i.cp = icmp slt i32 %.0160243, %.0176252
  br i1 %i.cp, label %..critedge5_crit_edge, label %bb.an

..critedge5_crit_edge:                            ; preds = %bb.am
  %.phi.trans.insert = sext i32 %.0160243 to i64
  %.phi.trans.insert288 = getelementptr inbounds [2 x i8], ptr %2, i64 %.phi.trans.insert
  %.pre = load i16, ptr %.phi.trans.insert288, align 2, !tbaa !12
  br label %.critedge5

bb.an:                                            ; preds = %bb.am
  br i1 %i.co, label %bb.ao, label %.critedge

bb.ao:                                            ; preds = %bb.an
  %i.cq = sext i32 %.0160243 to i64
  %i.cr = getelementptr inbounds [2 x i8], ptr %2, i64 %i.cq
  %i.cs = load i16, ptr %i.cr, align 2, !tbaa !12 ; 2 uses
  %.not202 = icmp eq i16 %i.cs, 0
  br i1 %.not202, label %.critedge, label %.critedge5

.critedge5:                                       ; preds = %..critedge5_crit_edge, %bb.ao
  %i.ct = phi i16 [ %.pre, %..critedge5_crit_edge ], [ %i.cs, %bb.ao ]
  %i.cu = add nsw i32 %.0160243, 1                ; 4 uses
  %i.cv = and i16 %i.ct, -1024
  %i.cw = icmp ne i16 %i.cv, -10240
  %.not203 = icmp eq i32 %i.cu, %.0176252
  %or.cond211 = select i1 %i.cw, i1 true, i1 %.not203
  br i1 %or.cond211, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %.critedge5
  %i.cx = sext i32 %i.cu to i64
  %i.cy = getelementptr inbounds [2 x i8], ptr %2, i64 %i.cx
  %i.cz = load i16, ptr %i.cy, align 2, !tbaa !12
  %i.da = and i16 %i.cz, -1024
  %i.db = icmp eq i16 %i.da, -9216
  %i.dc = add nsw i32 %.0160243, 2
  %spec.select212 = select i1 %i.db, i32 %i.dc, i32 %i.cu
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %.critedge5
  %.1 = phi i32 [ %i.cu, %.critedge5 ], [ %spec.select212, %bb.ap ] ; 2 uses
  %i.dd = add nsw i32 %.0244, -1
  %i.de = icmp sgt i32 %.0244, 1
  br i1 %i.de, label %bb.am, label %.critedge, !llvm.loop !25

.critedge:                                        ; preds = %bb.aq, %bb.an, %bb.ao, %bb.al, %bb.ak
  %.1162 = phi i32 [ %spec.select213, %bb.ak ], [ %.0161258, %bb.al ], [ %.0161258, %bb.ao ], [ %.0161258, %bb.an ], [ %.0161258, %bb.aq ] ; 6 uses
  %.2 = phi i32 [ %i.cb, %bb.ak ], [ %.0161258, %bb.al ], [ %.1, %bb.aq ], [ %.0160243, %bb.an ], [ %.0160243, %bb.ao ] ; 9 uses
  %i.df = icmp slt i32 %.2, %.0176252
  br i1 %i.df, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %.critedge
  %i.dg = sext i32 %.2 to i64                     ; 2 uses
  %i.dh = getelementptr inbounds [2 x i8], ptr %2, i64 %i.dg ; 2 uses
  %i.di = zext nneg i32 %i.cj to i64              ; 2 uses
  %i.dj = getelementptr inbounds nuw [2 x i8], ptr %i.dh, i64 %i.di
  %i.dk = sub nsw i32 %.0176252, %.2              ; 2 uses
  %i.dl = shl nuw nsw i32 %i.dk, 1
  %i.dm = zext nneg i32 %i.dl to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 2 %i.dj, ptr nonnull align 2 %i.dh, i64 %i.dm, i1 false)
  br i1 %.not204, label %.thread317, label %.thread316

bb.as:                                            ; preds = %.critedge
  br i1 %i.ci, label %bb.at, label %.thread

.thread317:                                       ; preds = %bb.ar
  br i1 %i.ci, label %bb.at, label %.thread.thread318

.thread.thread318:                                ; preds = %.thread317
  %i.dn = trunc nuw i32 %i.ce to i16
  %i.do = sext i32 %.2 to i64
  %i.dp = getelementptr inbounds [2 x i8], ptr %2, i64 %i.do
  store i16 %i.dn, ptr %i.dp, align 2, !tbaa !12
  br label %bb.aw

.thread316:                                       ; preds = %bb.ar
  %i.dq = getelementptr inbounds i8, ptr %4, i64 %i.dg ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 %i.di
  %i.ds = sext i32 %i.dk to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.dr, ptr nonnull align 1 %i.dq, i64 %i.ds, i1 false)
  br i1 %i.ci, label %bb.at, label %.thread.thread

.thread.thread:                                   ; preds = %.thread316
  %i.dt = trunc nuw i32 %i.ce to i16
  %i.du = sext i32 %.2 to i64
  %i.dv = getelementptr inbounds [2 x i8], ptr %2, i64 %i.du
  store i16 %i.dt, ptr %i.dv, align 2, !tbaa !12
  br label %.thread314

bb.at:                                            ; preds = %.thread317, %.thread316, %bb.as
  %i.dw = lshr i32 %i.ce, 10
  %i.dx = trunc i32 %i.dw to i16
  %i.dy = add i16 %i.dx, -10304
  %i.dz = sext i32 %.2 to i64
  %i.ea = getelementptr inbounds [2 x i8], ptr %2, i64 %i.dz ; 2 uses
  store i16 %i.dy, ptr %i.ea, align 2, !tbaa !12
  %i.eb = trunc i32 %i.ce to i16
  %i.ec = and i16 %i.eb, 1023
  %i.ed = or disjoint i16 %i.ec, -9216
  %i.ee = getelementptr i8, ptr %i.ea, i64 2
  store i16 %i.ed, ptr %i.ee, align 2, !tbaa !12
  br i1 %.not204, label %bb.aw, label %bb.au

.thread:                                          ; preds = %bb.as
  %i.ef = trunc nuw i32 %i.ce to i16
  %i.eg = sext i32 %.2 to i64
  %i.eh = getelementptr inbounds [2 x i8], ptr %2, i64 %i.eg
  store i16 %i.ef, ptr %i.eh, align 2, !tbaa !12
  br i1 %.not204, label %bb.aw, label %.thread314

.thread314:                                       ; preds = %.thread.thread, %.thread
  %i.ei = load i16, ptr %i.bk, align 2, !tbaa !12
  %i.ej = add i16 %i.ei, -65
  %narrow315 = icmp ult i16 %i.ej, 26
  %i.ek = zext i1 %narrow315 to i8
  %i.el = sext i32 %.2 to i64
  %i.em = getelementptr inbounds i8, ptr %4, i64 %i.el
  store i8 %i.ek, ptr %i.em, align 1, !tbaa !14
  br label %bb.aw

bb.au:                                            ; preds = %bb.at
  %i.en = load i16, ptr %i.bk, align 2, !tbaa !12
  %i.eo = add i16 %i.en, -65
  %narrow = icmp ult i16 %i.eo, 26
  %i.ep = zext i1 %narrow to i8
  %i.eq = sext i32 %.2 to i64
  %i.er = getelementptr inbounds i8, ptr %4, i64 %i.eq ; 2 uses
  store i8 %i.ep, ptr %i.er, align 1, !tbaa !14
  br i1 %i.ci, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.es = getelementptr i8, ptr %i.er, i64 1
  store i8 0, ptr %i.es, align 1, !tbaa !14
  br label %bb.aw

bb.aw:                                            ; preds = %.thread.thread318, %.thread314, %.thread, %bb.at, %bb.av, %bb.au, %bb.ai
  %.2163 = phi i32 [ %.0161258, %bb.ai ], [ %.1162, %bb.au ], [ %.1162, %bb.av ], [ %.1162, %bb.at ], [ %.1162, %.thread ], [ %.1162, %.thread314 ], [ %.1162, %.thread.thread318 ]
  %i.et = add nsw i32 %i.cb, 1
  %i.eu = icmp sgt i32 %.0179, %i.bl
  br i1 %i.eu, label %.preheader, label %._crit_edge259, !llvm.loop !26

._crit_edge259:                                   ; preds = %bb.aw, %._crit_edge.thread
  %.0176.lcssa = phi i32 [ %.1171311313, %._crit_edge.thread ], [ %i.ck, %bb.aw ]
  %i.ev = tail call i32 @u_terminateUChars_78(ptr noundef %2, i32 noundef %3, i32 noundef %.0176.lcssa, ptr noundef nonnull %5)
  br label %bb.ax

bb.ax:                                            ; preds = %bb.a, %bb.b, %._crit_edge259, %bb.ah, %bb.af, %bb.z, %bb.w, %_ZL11decodeDigiti.exit.thread, %bb.q, %.split.us, %bb.i, %bb.e
  %.0178 = phi i32 [ %i.ev, %._crit_edge259 ], [ 0, %bb.e ], [ 0, %bb.i ], [ 0, %.split.us ], [ 0, %bb.q ], [ 0, %_ZL11decodeDigiti.exit.thread ], [ 0, %bb.w ], [ 0, %bb.af ], [ 0, %bb.ah ], [ 0, %bb.z ], [ 0, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0178
}

declare i32 @u_strlen_78(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #4

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{!0, !13}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"_ZTS10UErrorCode", !5, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{!"char16_t", !5, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!5, !5, i64 0}
!15 = distinct !{!15, !13}
!16 = distinct !{!16, !13}
!17 = distinct !{!17, !13}
!18 = distinct !{!18, !13}
!19 = distinct !{!19, !13}
!20 = distinct !{!20, !13}
!21 = !{!6, !6, i64 0}
!22 = distinct !{!22, !13}
!23 = distinct !{!23, !13}
!24 = distinct !{!24, !13}
!25 = distinct !{!25, !13}
!26 = distinct !{!26, !13}
end_hunk_1
