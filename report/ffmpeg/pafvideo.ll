Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/pafvideo?download=true
inline.NumInlined: 6
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@decode_0:bb.a
bb.p:                                             ; preds = %bb.u, %.loopexit
  %.2129 = phi ptr [ %i.dy, %.loopexit ], [ %i.gk, %bb.u ] ; 5 uses
  %.2121 = phi i32 [ 0, %.loopexit ], [ %i.gd, %bb.u ]
  %i.ef = load ptr, ptr %i.b, align 8, !tbaa !40  ; 3 uses
  %i.eg = load ptr, ptr %i.a, align 8, !tbaa !43  ; 3 uses
  %i.eh = ptrtoint ptr %i.ef to i64               ; 2 uses
  %i.ei = ptrtoint ptr %i.eg to i64
  %i.ej = sub i64 %i.eh, %i.ei
  %i.ek = icmp slt i64 %i.ej, 2
  br i1 %i.ek, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store ptr %i.ef, ptr %i.a, align 8, !tbaa !43
  br label %set_src_position.exit

bb.r:                                             ; preds = %bb.p
  %i.el = getelementptr inbounds nuw i8, ptr %i.eg, i64 2 ; 2 uses
  store ptr %i.el, ptr %i.a, align 8, !tbaa !38
  %i.em = load i16, ptr %i.eg, align 1, !tbaa !41
  %i.en = tail call i16 @llvm.bswap.i16(i16 %i.em)
  %i.eo = zext i16 %i.en to i32
  br label %set_src_position.exit

set_src_position.exit:                            ; preds = %bb.q, %bb.r
  %i.ep = phi ptr [ %i.ef, %bb.q ], [ %i.el, %bb.r ]
  %.0.i.i = phi i32 [ 0, %bb.q ], [ %i.eo, %bb.r ] ; 3 uses
  %i.eq = lshr i32 %.0.i.i, 14
  %i.er = zext nneg i32 %i.eq to i64
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.dt, i64 %i.er
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !38 ; 2 uses
  %i.eu = shl nuw nsw i32 %.0.i.i, 1
  %i.ev = and i32 %i.eu, 254
  %i.ew = zext nneg i32 %i.ev to i64
  %i.ex = lshr i32 %.0.i.i, 6
  %i.ey = and i32 %i.ex, 254
  %i.ez = load i32, ptr %i.ed, align 8, !tbaa !32 ; 3 uses
  %i.fa = mul nsw i32 %i.ey, %i.ez
  %i.fb = sext i32 %i.fa to i64
  %i.fc = add nsw i64 %i.fb, %i.ew                ; 2 uses
  %i.fd = getelementptr inbounds i8, ptr %i.et, i64 %i.fc ; 3 uses
  %i.fe = load i32, ptr %i.dz, align 8, !tbaa !35
  %i.ff = sext i32 %i.fe to i64                   ; 2 uses
  %i.fg = mul nsw i32 %i.ez, 3
  %i.fh = sext i32 %i.fg to i64                   ; 2 uses
  %i.fi = add nsw i64 %i.fh, 4
  %i.fj = add nsw i64 %i.fi, %i.fc
  %i.fk = icmp sgt i64 %i.fj, %i.ff
  %i.fl = getelementptr inbounds i8, ptr %.2129, i64 %i.fh
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 4
  %i.fn = icmp ugt ptr %i.fm, %i.ec
  %or.cond = select i1 %i.fk, i1 true, i1 %i.fn
  %i.fo = ptrtoint ptr %i.ep to i64
  %i.fp = sub i64 %i.eh, %i.fo
  %i.fq = trunc i64 %i.fp to i32
  %i.fr = icmp slt i32 %i.fq, 4
  %or.cond369 = select i1 %or.cond, i1 true, i1 %i.fr
  br i1 %or.cond369, label %.critedge, label %bb.s

bb.s:                                             ; preds = %set_src_position.exit
  %i.fs = sext i32 %i.ez to i64                   ; 6 uses
  %i.ft = load i32, ptr %i.fd, align 1, !tbaa !41
  store i32 %i.ft, ptr %.2129, align 1, !tbaa !41
  %i.fu = getelementptr inbounds i8, ptr %.2129, i64 %i.fs ; 2 uses
  %i.fv = getelementptr inbounds i8, ptr %i.fd, i64 %i.fs ; 2 uses
  %i.fw = load i32, ptr %i.fv, align 1, !tbaa !41
  store i32 %i.fw, ptr %i.fu, align 1, !tbaa !41
  %i.fx = getelementptr inbounds i8, ptr %i.fu, i64 %i.fs ; 2 uses
  %i.fy = getelementptr inbounds i8, ptr %i.fv, i64 %i.fs ; 2 uses
  %i.fz = load i32, ptr %i.fy, align 1, !tbaa !41
  store i32 %i.fz, ptr %i.fx, align 1, !tbaa !41
  %i.ga = getelementptr inbounds i8, ptr %i.fx, i64 %i.fs
  %i.gb = getelementptr inbounds i8, ptr %i.fy, i64 %i.fs
  %i.gc = load i32, ptr %i.gb, align 1, !tbaa !41
  store i32 %i.gc, ptr %i.ga, align 1, !tbaa !41
  %i.gd = add nuw nsw i32 %.2121, 1               ; 3 uses
  %i.ge = and i32 %i.gd, 63
  %i.gf = icmp eq i32 %i.ge, 0
  br i1 %i.gf, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.gg = load i32, ptr %i.ed, align 8, !tbaa !32
  %i.gh = mul nsw i32 %i.gg, 3
  %i.gi = sext i32 %i.gh to i64
  %i.gj = getelementptr inbounds i8, ptr %.2129, i64 %i.gi
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.3130 = phi ptr [ %i.gj, %bb.t ], [ %.2129, %bb.s ]
  %i.gk = getelementptr inbounds nuw i8, ptr %.3130, i64 4
  %i.gl = load i32, ptr %i.ee, align 4, !tbaa !36
  %i.gm = sdiv i32 %i.gl, 16
  %i.gn = icmp slt i32 %i.gd, %i.gm
  br i1 %i.gn, label %bb.p, label %bb.v, !llvm.loop !65

bb.v:                                             ; preds = %bb.u
  %i.go = getelementptr inbounds i8, ptr %i.et, i64 %i.ff
  %i.gp = load ptr, ptr %i.b, align 8, !tbaa !40  ; 3 uses
  %i.gq = load ptr, ptr %i.a, align 8, !tbaa !43  ; 3 uses
  %i.gr = ptrtoint ptr %i.gp to i64               ; 3 uses
  %i.gs = ptrtoint ptr %i.gq to i64
  %i.gt = sub i64 %i.gr, %i.gs
  %i.gu = icmp slt i64 %i.gt, 2
  br i1 %i.gu, label %bytestream2_get_le16.exit.thread, label %bytestream2_get_le16.exit

bytestream2_get_le16.exit.thread:                 ; preds = %bb.v
  %i.gv = ptrtoint ptr %i.gp to i64
  br label %bb.w

bytestream2_get_le16.exit:                        ; preds = %bb.v
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gq, i64 2 ; 3 uses
  store ptr %i.gw, ptr %i.a, align 8, !tbaa !38
  %i.gx = load i16, ptr %i.gq, align 1, !tbaa !41
  %i.gy = zext i16 %i.gx to i32                   ; 2 uses
  %.pre329 = ptrtoint ptr %i.gw to i64
  %i.gz = sub i64 %i.gr, %.pre329
  %..i = tail call i64 @llvm.smin.i64(i64 %i.gz, i64 2)
  %i.ha = getelementptr inbounds i8, ptr %i.gw, i64 %..i ; 3 uses
  store ptr %i.ha, ptr %i.a, align 8, !tbaa !43
  %i.hb = ptrtoint ptr %i.ha to i64               ; 2 uses
  %i.hc = sub i64 %i.gr, %i.hb
  %i.hd = trunc i64 %i.hc to i32
  %i.he = icmp ugt i32 %i.gy, %i.hd
  br i1 %i.he, label %.critedge, label %bb.w

bb.w:                                             ; preds = %bytestream2_get_le16.exit.thread, %bytestream2_get_le16.exit
  %i.hf = phi i64 [ %i.gv, %bytestream2_get_le16.exit.thread ], [ %i.hb, %bytestream2_get_le16.exit ]
  %i.hg = phi ptr [ %i.gp, %bytestream2_get_le16.exit.thread ], [ %i.ha, %bytestream2_get_le16.exit ]
  %.0.i171351 = phi i32 [ 0, %bytestream2_get_le16.exit.thread ], [ %i.gy, %bytestream2_get_le16.exit ] ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !39
  %i.hj = ptrtoint ptr %i.hi to i64
  %i.hk = sub i64 %i.hf, %i.hj
  %i.hl = shl i64 %i.hk, 32
  %i.hm = ashr exact i64 %i.hl, 32
  %i.hn = getelementptr inbounds i8, ptr %1, i64 %i.hm
  %i.ho = zext nneg i32 %.0.i171351 to i64
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hg, i64 %i.ho
  store ptr %i.hp, ptr %i.a, align 8, !tbaa !43
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.hr = load i32, ptr %i.hq, align 4, !tbaa !33 ; 2 uses
  %i.hs = icmp sgt i32 %i.hr, 0
  br i1 %i.hs, label %.preheader.lr.ph, label %.critedge

.preheader.lr.ph:                                 ; preds = %bb.w
  %i.ht = load i32, ptr %i.ed, align 8, !tbaa !32 ; 3 uses
  %i.hu = icmp sgt i32 %i.ht, 0
  br i1 %i.hu, label %.preheader.preheader, label %.critedge

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %i.hv = load i32, ptr %i.du, align 8, !tbaa !42
  %i.hw = sext i32 %i.hv to i64
  %i.hx = getelementptr inbounds [8 x i8], ptr %i.dt, i64 %i.hw
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !38
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge298
  %i.hz = phi i32 [ %i.nc, %._crit_edge298 ], [ %i.hr, %.preheader.preheader ]
  %i.ia = phi i32 [ %i.nd, %._crit_edge298 ], [ %i.ht, %.preheader.preheader ] ; 2 uses
  %i.ib = phi i32 [ %i.ne, %._crit_edge298 ], [ %i.ht, %.preheader.preheader ] ; 2 uses
  %.0116310 = phi i32 [ %.1117.lcssa, %._crit_edge298 ], [ 0, %.preheader.preheader ] ; 2 uses
  %.3122309 = phi i32 [ %i.nf, %._crit_edge298 ], [ 0, %.preheader.preheader ]
  %.0123308 = phi i8 [ %.1124.lcssa, %._crit_edge298 ], [ 0, %.preheader.preheader ] ; 2 uses
  %.4131307 = phi ptr [ %i.ni, %._crit_edge298 ], [ %i.hy, %.preheader.preheader ] ; 2 uses
  %.0185306 = phi ptr [ %.1.lcssa, %._crit_edge298 ], [ %i.go, %.preheader.preheader ] ; 2 uses
  %.0188305 = phi ptr [ %.1189.lcssa, %._crit_edge298 ], [ %i.fd, %.preheader.preheader ] ; 2 uses
  %i.ic = icmp sgt i32 %i.ib, 0
  br i1 %i.ic, label %.lr.ph297, label %._crit_edge298

.lr.ph297:                                        ; preds = %.preheader, %._crit_edge
  %i.id = phi i32 [ %i.my, %._crit_edge ], [ %i.ia, %.preheader ]
  %.1117296 = phi i32 [ %.2, %._crit_edge ], [ %.0116310, %.preheader ] ; 3 uses
  %.0118295 = phi i32 [ %i.mz, %._crit_edge ], [ 0, %.preheader ] ; 2 uses
  %.1124294 = phi i8 [ %.2125.lcssa, %._crit_edge ], [ %.0123308, %.preheader ] ; 2 uses
  %.5132293 = phi ptr [ %i.na, %._crit_edge ], [ %.4131307, %.preheader ] ; 3 uses
  %.1292 = phi ptr [ %.2186.lcssa, %._crit_edge ], [ %.0185306, %.preheader ] ; 2 uses
  %.1189291 = phi ptr [ %.2190.lcssa, %._crit_edge ], [ %.0188305, %.preheader ] ; 2 uses
  %i.ie = icmp ugt i32 %.1117296, %.0.i171351
  br i1 %i.ie, label %.critedge, label %bb.x

bb.x:                                             ; preds = %.lr.ph297
  %i.if = and i32 %.0118295, 4                    ; 2 uses
  %.not157 = icmp eq i32 %i.if, 0
  %i.ig = zext nneg i32 %.1117296 to i64
  %i.ih = getelementptr inbounds nuw i8, ptr %i.hn, i64 %i.ig
  %i.ii = load i8, ptr %i.ih, align 1, !tbaa !41  ; 2 uses
  %i.ij = and i8 %i.ii, 15
  %i.ik = lshr i8 %i.ii, 4
  %i.il = lshr exact i32 %i.if, 2
  %.2 = add nuw nsw i32 %.1117296, %i.il          ; 2 uses
  %.0114.in = select i1 %.not157, i8 %i.ik, i8 %i.ij ; 2 uses
  %i.im = zext nneg i8 %.0114.in to i64
  %i.in = getelementptr inbounds nuw [8 x i8], ptr @block_sequences, i64 %i.im ; 2 uses
  %.not158284 = icmp eq i8 %.0114.in, 0
  br i1 %.not158284, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.x
  %i.io = load i8, ptr %i.in, align 8, !tbaa !41
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %copy_color_mask.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %copy_color_mask.exit ]
  %3 = phi i8 [ %i.io, %.lr.ph.preheader ], [ %i.mx, %copy_color_mask.exit ]
  %.2125287 = phi i8 [ %.1124294, %.lr.ph.preheader ], [ %.4, %copy_color_mask.exit ] ; 5 uses
  %.2186286 = phi ptr [ %.1292, %.lr.ph.preheader ], [ %.4187, %copy_color_mask.exit ] ; 5 uses
  %.2190285 = phi ptr [ %.1189291, %.lr.ph.preheader ], [ %.4192, %copy_color_mask.exit ] ; 5 uses
  %i.ip = load i32, ptr %i.ed, align 8, !tbaa !32 ; 4 uses
  %i.iq = shl nsw i32 %i.ip, 1                    ; 4 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  switch i8 %3, label %copy_color_mask.exit [
    i8 2, label %bb.y
    i8 3, label %bb.z
    i8 4, label %.lr.ph.bytestream2_get_byte.exit166_crit_edge
    i8 5, label %bb.ar
    i8 6, label %bb.as
    i8 7, label %bb.av
  ]

.lr.ph.bytestream2_get_byte.exit166_crit_edge:    ; preds = %.lr.ph
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !40  ; 2 uses
  %.pre326 = load ptr, ptr %i.a, align 8, !tbaa !43
  %.pre330 = ptrtoint ptr %.pre to i64
  br label %bytestream2_get_byte.exit166

bb.y:                                             ; preds = %.lr.ph
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %.lr.ph
  %.1134 = phi i32 [ 0, %bb.y ], [ %i.iq, %.lr.ph ] ; 2 uses
  %i.ir = load ptr, ptr %i.b, align 8, !tbaa !40  ; 5 uses
  %i.is = load ptr, ptr %i.a, align 8, !tbaa !43  ; 3 uses
  %i.it = ptrtoint ptr %i.ir to i64               ; 3 uses
  %i.iu = ptrtoint ptr %i.is to i64
  %i.iv = sub i64 %i.it, %i.iu
  %i.iw = icmp slt i64 %i.iv, 1
  br i1 %i.iw, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  store ptr %i.ir, ptr %i.a, align 8, !tbaa !43
  br label %bytestream2_get_byte.exit166

bb.ab:                                            ; preds = %bb.z
  %i.ix = getelementptr inbounds nuw i8, ptr %i.is, i64 1 ; 2 uses
  store ptr %i.ix, ptr %i.a, align 8, !tbaa !38
  %i.iy = load i8, ptr %i.is, align 1, !tbaa !41
  br label %bytestream2_get_byte.exit166

bytestream2_get_byte.exit166:                     ; preds = %.lr.ph.bytestream2_get_byte.exit166_crit_edge, %bb.ab, %bb.aa
  %.pre-phi331 = phi i64 [ %.pre330, %.lr.ph.bytestream2_get_byte.exit166_crit_edge ], [ %i.it, %bb.ab ], [ %i.it, %bb.aa ]
  %i.iz = phi ptr [ %.pre326, %.lr.ph.bytestream2_get_byte.exit166_crit_edge ], [ %i.ix, %bb.ab ], [ %i.ir, %bb.aa ] ; 3 uses
  %i.ja = phi ptr [ %.pre, %.lr.ph.bytestream2_get_byte.exit166_crit_edge ], [ %i.ir, %bb.ab ], [ %i.ir, %bb.aa ]
  %.2135 = phi i32 [ %i.iq, %.lr.ph.bytestream2_get_byte.exit166_crit_edge ], [ %.1134, %bb.ab ], [ %.1134, %bb.aa ]
  %.3126 = phi i8 [ %.2125287, %.lr.ph.bytestream2_get_byte.exit166_crit_edge ], [ %i.iy, %bb.ab ], [ 0, %bb.aa ] ; 11 uses
  %i.jb = ptrtoint ptr %i.iz to i64
  %i.jc = sub i64 %.pre-phi331, %i.jb
  %i.jd = icmp slt i64 %i.jc, 1
  br i1 %i.jd, label %.thread221, label %bytestream2_get_byte.exit164

.thread221:                                       ; preds = %bytestream2_get_byte.exit166
  store ptr %i.ja, ptr %i.a, align 8, !tbaa !43
  br label %copy_color_mask.exit

bytestream2_get_byte.exit164:                     ; preds = %bytestream2_get_byte.exit166
  %i.je = getelementptr inbounds nuw i8, ptr %i.iz, i64 1
  store ptr %i.je, ptr %i.a, align 8, !tbaa !38
  %i.jf = load i8, ptr %i.iz, align 1, !tbaa !41  ; 2 uses
  %i.jg = zext i8 %i.jf to i32                    ; 7 uses
  %i.jh = zext i32 %.2135 to i64
  %i.ji = getelementptr inbounds nuw i8, ptr %.5132293, i64 %i.jh ; 8 uses
  %i.jj = sext i32 %i.ip to i64                   ; 4 uses
  %.not.i = icmp sgt i8 %i.jf, -1
  br i1 %.not.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bytestream2_get_byte.exit164
  store i8 %.3126, ptr %i.ji, align 1, !tbaa !41
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bytestream2_get_byte.exit164
  %i.jk = and i32 %i.jg, 8
  %.not12.i = icmp eq i32 %i.jk, 0
  br i1 %.not12.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.jl = getelementptr inbounds i8, ptr %i.ji, i64 %i.jj
  store i8 %.3126, ptr %i.jl, align 1, !tbaa !41
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.jm = and i32 %i.jg, 64
  %.not.1.i = icmp eq i32 %i.jm, 0
  br i1 %.not.1.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.jn = getelementptr inbounds nuw i8, ptr %i.ji, i64 1
  store i8 %.3126, ptr %i.jn, align 1, !tbaa !41
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.jo = and i32 %i.jg, 4
  %.not12.1.i = icmp eq i32 %i.jo, 0
  br i1 %.not12.1.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.jp = getelementptr i8, ptr %i.ji, i64 %i.jj
  %i.jq = getelementptr i8, ptr %i.jp, i64 1
  store i8 %.3126, ptr %i.jq, align 1, !tbaa !41
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.jr = and i32 %i.jg, 32
  %.not.2.i = icmp eq i32 %i.jr, 0
  br i1 %.not.2.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.js = getelementptr inbounds nuw i8, ptr %i.ji, i64 2
  store i8 %.3126, ptr %i.js, align 1, !tbaa !41
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.jt = and i32 %i.jg, 2
  %.not12.2.i = icmp eq i32 %i.jt, 0
  br i1 %.not12.2.i, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ju = getelementptr i8, ptr %i.ji, i64 %i.jj
  %i.jv = getelementptr i8, ptr %i.ju, i64 2
  store i8 %.3126, ptr %i.jv, align 1, !tbaa !41
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.jw = and i32 %i.jg, 16
  %.not.3.i = icmp eq i32 %i.jw, 0
  br i1 %.not.3.i, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.jx = getelementptr inbounds nuw i8, ptr %i.ji, i64 3
  store i8 %.3126, ptr %i.jx, align 1, !tbaa !41
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.jy = and i32 %i.jg, 1
  %.not12.3.i = icmp eq i32 %i.jy, 0
  br i1 %.not12.3.i, label %copy_color_mask.exit, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.jz = getelementptr i8, ptr %i.ji, i64 %i.jj
  %i.ka = getelementptr i8, ptr %i.jz, i64 3
  store i8 %.3126, ptr %i.ka, align 1, !tbaa !41
  br label %copy_color_mask.exit

bb.ar:                                            ; preds = %.lr.ph
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %.lr.ph
  %.3136 = phi i32 [ 0, %bb.ar ], [ %i.iq, %.lr.ph ]
  %i.kb = load ptr, ptr %i.b, align 8, !tbaa !40  ; 2 uses
  %i.kc = load ptr, ptr %i.a, align 8, !tbaa !43  ; 3 uses
  %i.kd = ptrtoint ptr %i.kb to i64
  %i.ke = ptrtoint ptr %i.kc to i64
  %i.kf = sub i64 %i.kd, %i.ke
  %i.kg = icmp slt i64 %i.kf, 2
  br i1 %i.kg, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  store ptr %i.kb, ptr %i.a, align 8, !tbaa !43
  br label %set_src_position.exit175

bb.au:                                            ; preds = %bb.as
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kc, i64 2
  store ptr %i.kh, ptr %i.a, align 8, !tbaa !38
  %i.ki = load i16, ptr %i.kc, align 1, !tbaa !41
  %i.kj = tail call i16 @llvm.bswap.i16(i16 %i.ki)
  %i.kk = zext i16 %i.kj to i32
  br label %set_src_position.exit175

set_src_position.exit175:                         ; preds = %bb.at, %bb.au
  %.0.i.i174 = phi i32 [ 0, %bb.at ], [ %i.kk, %bb.au ] ; 3 uses
  %i.kl = lshr i32 %.0.i.i174, 14
  %i.km = zext nneg i32 %i.kl to i64
  %i.kn = getelementptr inbounds nuw [8 x i8], ptr %i.dt, i64 %i.km
  %i.ko = load ptr, ptr %i.kn, align 8, !tbaa !38 ; 2 uses
  %i.kp = shl nuw nsw i32 %.0.i.i174, 1
  %i.kq = and i32 %i.kp, 254
  %i.kr = zext nneg i32 %i.kq to i64
  %i.ks = getelementptr inbounds nuw i8, ptr %i.ko, i64 %i.kr
  %i.kt = lshr i32 %.0.i.i174, 6
  %i.ku = and i32 %i.kt, 254
  %i.kv = mul nsw i32 %i.ku, %i.ip
  %i.kw = sext i32 %i.kv to i64
  %i.kx = getelementptr inbounds i8, ptr %i.ks, i64 %i.kw
  %i.ky = load i32, ptr %i.dz, align 8, !tbaa !35
  %i.kz = sext i32 %i.ky to i64
  %i.la = getelementptr inbounds i8, ptr %i.ko, i64 %i.kz
  br label %bb.av

bb.av:                                            ; preds = %set_src_position.exit175, %.lr.ph
  %.3191 = phi ptr [ %i.kx, %set_src_position.exit175 ], [ %.2190285, %.lr.ph ] ; 4 uses
  %.3 = phi ptr [ %i.la, %set_src_position.exit175 ], [ %.2186286, %.lr.ph ] ; 4 uses
  %.4137 = phi i32 [ %.3136, %set_src_position.exit175 ], [ %i.iq, %.lr.ph ]
  %i.lb = zext i32 %.4137 to i64                  ; 2 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %.3191, i64 %i.lb ; 8 uses
  %i.ld = sext i32 %i.ip to i64                   ; 5 uses
  %i.le = getelementptr inbounds i8, ptr %i.lc, i64 %i.ld ; 2 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 4
  %i.lg = icmp ugt ptr %i.lf, %.3
  br i1 %i.lg, label %.critedge, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.lh = load ptr, ptr %i.b, align 8, !tbaa !40  ; 2 uses
  %i.li = load ptr, ptr %i.a, align 8, !tbaa !43  ; 3 uses
  %i.lj = ptrtoint ptr %i.lh to i64
  %i.lk = ptrtoint ptr %i.li to i64
  %i.ll = sub i64 %i.lj, %i.lk
  %i.lm = icmp slt i64 %i.ll, 1
  br i1 %i.lm, label %.thread251, label %bytestream2_get_byte.exit

.thread251:                                       ; preds = %bb.aw
  store ptr %i.lh, ptr %i.a, align 8, !tbaa !43
  br label %copy_color_mask.exit

bytestream2_get_byte.exit:                        ; preds = %bb.aw
  %i.ln = getelementptr inbounds nuw i8, ptr %i.li, i64 1
  store ptr %i.ln, ptr %i.a, align 8, !tbaa !38
  %i.lo = load i8, ptr %i.li, align 1, !tbaa !41  ; 2 uses
  %i.lp = zext i8 %i.lo to i32                    ; 7 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %.5132293, i64 %i.lb ; 8 uses
  %.not.i176 = icmp sgt i8 %i.lo, -1
  br i1 %.not.i176, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bytestream2_get_byte.exit
  %i.lr = load i8, ptr %i.lc, align 1, !tbaa !41
  store i8 %i.lr, ptr %i.lq, align 1, !tbaa !41
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bytestream2_get_byte.exit
  %i.ls = and i32 %i.lp, 8
  %.not15.i = icmp eq i32 %i.ls, 0
  br i1 %.not15.i, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.lt = load i8, ptr %i.le, align 1, !tbaa !41
  %i.lu = getelementptr inbounds i8, ptr %i.lq, i64 %i.ld
  store i8 %i.lt, ptr %i.lu, align 1, !tbaa !41
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %i.lv = and i32 %i.lp, 64
  %.not.1.i177 = icmp eq i32 %i.lv, 0
  br i1 %.not.1.i177, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lc, i64 1
  %i.lx = load i8, ptr %i.lw, align 1, !tbaa !41
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lq, i64 1
  store i8 %i.lx, ptr %i.ly, align 1, !tbaa !41
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %i.lz = and i32 %i.lp, 4
  %.not15.1.i = icmp eq i32 %i.lz, 0
  br i1 %.not15.1.i, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.ma = add nsw i64 %i.ld, 1                    ; 2 uses
  %i.mb = getelementptr inbounds i8, ptr %i.lc, i64 %i.ma
  %i.mc = load i8, ptr %i.mb, align 1, !tbaa !41
  %i.md = getelementptr inbounds i8, ptr %i.lq, i64 %i.ma
  store i8 %i.mc, ptr %i.md, align 1, !tbaa !41
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %i.me = and i32 %i.lp, 32
  %.not.2.i178 = icmp eq i32 %i.me, 0
  br i1 %.not.2.i178, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.mf = getelementptr inbounds nuw i8, ptr %i.lc, i64 2
  %i.mg = load i8, ptr %i.mf, align 1, !tbaa !41
  %i.mh = getelementptr inbounds nuw i8, ptr %i.lq, i64 2
  store i8 %i.mg, ptr %i.mh, align 1, !tbaa !41
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %i.mi = and i32 %i.lp, 2
  %.not15.2.i = icmp eq i32 %i.mi, 0
  br i1 %.not15.2.i, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.mj = add nsw i64 %i.ld, 2                    ; 2 uses
  %i.mk = getelementptr inbounds i8, ptr %i.lc, i64 %i.mj
  %i.ml = load i8, ptr %i.mk, align 1, !tbaa !41
  %i.mm = getelementptr inbounds i8, ptr %i.lq, i64 %i.mj
  store i8 %i.ml, ptr %i.mm, align 1, !tbaa !41
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %i.mn = and i32 %i.lp, 16
  %.not.3.i179 = icmp eq i32 %i.mn, 0
  br i1 %.not.3.i179, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.mo = getelementptr inbounds nuw i8, ptr %i.lc, i64 3
  %i.mp = load i8, ptr %i.mo, align 1, !tbaa !41
  %i.mq = getelementptr inbounds nuw i8, ptr %i.lq, i64 3
  store i8 %i.mp, ptr %i.mq, align 1, !tbaa !41
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %i.mr = and i32 %i.lp, 1
  %.not15.3.i = icmp eq i32 %i.mr, 0
  br i1 %.not15.3.i, label %copy_color_mask.exit, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.ms = add nsw i64 %i.ld, 3                    ; 2 uses
  %i.mt = getelementptr inbounds i8, ptr %i.lc, i64 %i.ms
  %i.mu = load i8, ptr %i.mt, align 1, !tbaa !41
  %i.mv = getelementptr inbounds i8, ptr %i.lq, i64 %i.ms
  store i8 %i.mu, ptr %i.mv, align 1, !tbaa !41
  br label %copy_color_mask.exit

copy_color_mask.exit:                             ; preds = %bb.bl, %bb.bk, %.thread251, %bb.aq, %bb.ap, %.thread221, %.lr.ph
  %.4192 = phi ptr [ %.2190285, %.lr.ph ], [ %.2190285, %bb.aq ], [ %.2190285, %.thread221 ], [ %.2190285, %bb.ap ], [ %.3191, %.thread251 ], [ %.3191, %bb.bk ], [ %.3191, %bb.bl ] ; 2 uses
  %.4187 = phi ptr [ %.2186286, %.lr.ph ], [ %.2186286, %bb.aq ], [ %.2186286, %.thread221 ], [ %.2186286, %bb.ap ], [ %.3, %.thread251 ], [ %.3, %bb.bk ], [ %.3, %bb.bl ] ; 2 uses
  %.4 = phi i8 [ %.2125287, %.lr.ph ], [ %.3126, %bb.aq ], [ %.3126, %.thread221 ], [ %.3126, %bb.ap ], [ %.2125287, %.thread251 ], [ %.2125287, %bb.bk ], [ %.2125287, %bb.bl ] ; 2 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %i.in, i64 %indvars.iv.next
  %i.mx = load i8, ptr %i.mw, align 1, !tbaa !41  ; 2 uses
  %.not158 = icmp eq i8 %i.mx, 0
  br i1 %.not158, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !66

._crit_edge.loopexit:                             ; preds = %copy_color_mask.exit
  %.pre327 = load i32, ptr %i.ed, align 8, !tbaa !32
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.x
  %i.my = phi i32 [ %i.id, %bb.x ], [ %.pre327, %._crit_edge.loopexit ] ; 4 uses
  %.2190.lcssa = phi ptr [ %.1189291, %bb.x ], [ %.4192, %._crit_edge.loopexit ] ; 2 uses
  %.2186.lcssa = phi ptr [ %.1292, %bb.x ], [ %.4187, %._crit_edge.loopexit ] ; 2 uses
  %.2125.lcssa = phi i8 [ %.1124294, %bb.x ], [ %.4, %._crit_edge.loopexit ] ; 2 uses
  %i.mz = add nuw nsw i32 %.0118295, 4            ; 2 uses
  %i.na = getelementptr inbounds nuw i8, ptr %.5132293, i64 4 ; 2 uses
  %i.nb = icmp slt i32 %i.mz, %i.my
  br i1 %i.nb, label %.lr.ph297, label %._crit_edge298.loopexit, !llvm.loop !67

._crit_edge298.loopexit:                          ; preds = %._crit_edge
  %.pre328 = load i32, ptr %i.hq, align 4, !tbaa !33
  br label %._crit_edge298

._crit_edge298:                                   ; preds = %._crit_edge298.loopexit, %.preheader
  %i.nc = phi i32 [ %i.hz, %.preheader ], [ %.pre328, %._crit_edge298.loopexit ] ; 2 uses
  %i.nd = phi i32 [ %i.ia, %.preheader ], [ %i.my, %._crit_edge298.loopexit ]
  %i.ne = phi i32 [ %i.ib, %.preheader ], [ %i.my, %._crit_edge298.loopexit ] ; 2 uses
  %.1189.lcssa = phi ptr [ %.0188305, %.preheader ], [ %.2190.lcssa, %._crit_edge298.loopexit ]
  %.1.lcssa = phi ptr [ %.0185306, %.preheader ], [ %.2186.lcssa, %._crit_edge298.loopexit ]
  %.5132.lcssa = phi ptr [ %.4131307, %.preheader ], [ %i.na, %._crit_edge298.loopexit ]
  %.1124.lcssa = phi i8 [ %.0123308, %.preheader ], [ %.2125.lcssa, %._crit_edge298.loopexit ]
  %.1117.lcssa = phi i32 [ %.0116310, %.preheader ], [ %.2, %._crit_edge298.loopexit ]
  %i.nf = add nuw nsw i32 %.3122309, 4            ; 2 uses
  %i.ng = mul nsw i32 %i.ne, 3
  %i.nh = sext i32 %i.ng to i64
  %i.ni = getelementptr inbounds i8, ptr %.5132.lcssa, i64 %i.nh
  %i.nj = icmp slt i32 %i.nf, %i.nc
  br i1 %i.nj, label %.preheader, label %.critedge, !llvm.loop !68

.critedge:                                        ; preds = %bytestream2_get_le16.exit173, %bb.k, %set_src_position.exit, %._crit_edge298, %.lr.ph297, %bb.av, %.preheader.lr.ph, %bb.w, %bytestream2_get_le16.exit
  %.6 = phi i32 [ 0, %._crit_edge298 ], [ -1094995529, %.lr.ph297 ], [ 0, %bb.w ], [ -1094995529, %bytestream2_get_le16.exit ], [ 0, %.preheader.lr.ph ], [ -1094995529, %set_src_position.exit ], [ -1094995529, %bb.av ], [ -1094995529, %bb.k ], [ -1094995529, %bytestream2_get_le16.exit173 ]
  ret i32 %.6
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #6

declare void @av_image_copy_plane(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @av_frame_ref(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @av_frame_free(ptr noundef) local_unnamed_addr #2

declare void @av_freep(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.abs.i8(i8, i1 immarg) #8

attributes #0 = { cold nounwind optsize uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { cold nofree noreturn nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind }
attributes #10 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 _ZTS7AVClass", !9, i64 0}
!11 = !{!"p1 _ZTS7AVCodec", !9, i64 0}
!12 = !{!"p1 _ZTS15AVCodecInternal", !9, i64 0}
!13 = !{!"long", !5, i64 0}
!14 = !{!"p1 omnipotent char", !9, i64 0}
!15 = !{!"AVRational", !6, i64 0, !6, i64 4}
!16 = !{!"float", !5, i64 0}
!17 = !{!"p1 short", !9, i64 0}
!18 = !{!"AVChannelLayout", !6, i64 0, !6, i64 4, !5, i64 8, !9, i64 16}
!19 = !{!"p1 _ZTS10RcOverride", !9, i64 0}
!20 = !{!"p1 _ZTS9AVHWAccel", !9, i64 0}
!21 = !{!"p1 _ZTS11AVBufferRef", !9, i64 0}
!22 = !{!"p1 _ZTS17AVCodecDescriptor", !9, i64 0}
!23 = !{!"p1 _ZTS16AVPacketSideData", !9, i64 0}
!24 = !{!"p1 int", !9, i64 0}
!25 = !{!"any p2 pointer", !9, i64 0}
!26 = !{!"p2 _ZTS15AVFrameSideData", !25, i64 0}
!27 = !{!"AVCodecContext", !10, i64 0, !6, i64 8, !6, i64 12, !11, i64 16, !6, i64 24, !6, i64 28, !9, i64 32, !12, i64 40, !9, i64 48, !13, i64 56, !6, i64 64, !6, i64 68, !14, i64 72, !6, i64 80, !15, i64 84, !15, i64 92, !15, i64 100, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !15, i64 128, !6, i64 136, !6, i64 140, !6, i64 144, !6, i64 148, !6, i64 152, !6, i64 156, !6, i64 160, !6, i64 164, !6, i64 168, !6, i64 172, !6, i64 176, !9, i64 184, !9, i64 192, !6, i64 200, !16, i64 204, !16, i64 208, !16, i64 212, !16, i64 216, !16, i64 220, !16, i64 224, !16, i64 228, !16, i64 232, !16, i64 236, !6, i64 240, !6, i64 244, !6, i64 248, !6, i64 252, !6, i64 256, !6, i64 260, !6, i64 264, !6, i64 268, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !17, i64 288, !17, i64 296, !17, i64 304, !6, i64 312, !6, i64 316, !6, i64 320, !6, i64 324, !6, i64 328, !6, i64 332, !6, i64 336, !6, i64 340, !6, i64 344, !6, i64 348, !18, i64 352, !6, i64 376, !6, i64 380, !6, i64 384, !6, i64 388, !6, i64 392, !6, i64 396, !6, i64 400, !6, i64 404, !9, i64 408, !6, i64 416, !6, i64 420, !6, i64 424, !16, i64 428, !16, i64 432, !6, i64 436, !6, i64 440, !6, i64 444, !6, i64 448, !6, i64 452, !19, i64 456, !13, i64 464, !13, i64 472, !16, i64 480, !16, i64 484, !6, i64 488, !6, i64 492, !14, i64 496, !14, i64 504, !6, i64 512, !6, i64 516, !6, i64 520, !6, i64 524, !6, i64 528, !20, i64 536, !9, i64 544, !21, i64 552, !21, i64 560, !6, i64 568, !6, i64 572, !5, i64 576, !6, i64 640, !6, i64 644, !6, i64 648, !6, i64 652, !6, i64 656, !6, i64 660, !6, i64 664, !9, i64 672, !9, i64 680, !6, i64 688, !6, i64 692, !6, i64 696, !6, i64 700, !6, i64 704, !6, i64 708, !6, i64 712, !6, i64 716, !6, i64 720, !22, i64 728, !14, i64 736, !6, i64 744, !6, i64 748, !14, i64 752, !14, i64 760, !14, i64 768, !23, i64 776, !6, i64 784, !6, i64 788, !13, i64 792, !6, i64 800, !6, i64 804, !13, i64 808, !9, i64 816, !13, i64 824, !24, i64 832, !6, i64 840, !26, i64 848, !6, i64 856, !6, i64 860}
!28 = !{!27, !9, i64 32}
!29 = !{!"p1 _ZTS7AVFrame", !9, i64 0}
!30 = !{!"GetByteContext", !14, i64 0, !14, i64 8, !14, i64 16}
!31 = !{!"PAFVideoDecContext", !29, i64 0, !30, i64 8, !6, i64 32, !6, i64 36, !6, i64 40, !5, i64 48, !5, i64 80, !6, i64 96, !6, i64 100, !14, i64 104}
!32 = !{!31, !6, i64 32}
!33 = !{!31, !6, i64 36}
!34 = !{!31, !29, i64 0}
!35 = !{!31, !6, i64 96}
!36 = !{!31, !6, i64 100}
!37 = !{!"llvm.loop.mustprogress"}
!38 = !{!14, !14, i64 0}
!39 = !{!30, !14, i64 16}
!40 = !{!30, !14, i64 8}
!41 = !{!5, !5, i64 0}
!42 = !{!31, !6, i64 40}
!43 = !{!30, !14, i64 0}
!44 = !{!6, !6, i64 0}
!45 = distinct !{!45, !37}
!46 = !{!27, !6, i64 112}
!47 = !{!27, !6, i64 116}
!48 = !{!27, !6, i64 136}
!49 = !{!27, !13, i64 792}
!50 = distinct !{!50, !37}
!51 = distinct !{!51, !37}
!52 = !{!"AVPacket", !21, i64 0, !13, i64 8, !13, i64 16, !14, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !23, i64 48, !6, i64 56, !13, i64 64, !13, i64 72, !9, i64 80, !21, i64 88, !15, i64 96}
!53 = !{!52, !6, i64 32}
!54 = !{!52, !14, i64 24}
!55 = !{!27, !6, i64 804}
!56 = !{!"p2 omnipotent char", !25, i64 0}
!57 = !{!"p2 _ZTS11AVBufferRef", !25, i64 0}
!58 = !{!"p1 _ZTS12AVDictionary", !9, i64 0}
!59 = !{!"AVFrame", !5, i64 0, !5, i64 64, !56, i64 96, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !15, i64 124, !13, i64 136, !13, i64 144, !15, i64 152, !6, i64 160, !9, i64 168, !6, i64 176, !6, i64 180, !5, i64 184, !57, i64 248, !6, i64 256, !26, i64 264, !6, i64 272, !6, i64 276, !6, i64 280, !6, i64 284, !6, i64 288, !6, i64 292, !6, i64 296, !13, i64 304, !58, i64 312, !6, i64 320, !21, i64 328, !21, i64 336, !13, i64 344, !13, i64 352, !13, i64 360, !13, i64 368, !9, i64 376, !18, i64 384, !13, i64 408, !6, i64 416}
!60 = !{!59, !6, i64 276}
!61 = !{!59, !6, i64 120}
!62 = distinct !{!62, !37}
!63 = distinct !{!63, !37}
!64 = distinct !{!64, !37}
!65 = distinct !{!65, !37}
!66 = distinct !{!66, !37}
!67 = distinct !{!67, !37}
!68 = distinct !{!68, !37, !69}
!69 = !{!"llvm.loop.unswitch.partial.disable"}
end_hunk_0
