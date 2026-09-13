Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quickjs/original/dtoa?download=true
inline.NumInlined: 95
inline.NumDeleted: 32
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 18
begin_hunk_0_@js_dtoa:bb.a
  %i.ac = icmp eq i32 %i.c, 0                     ; 2 uses
  %i.ad = add nsw i32 %.0223, -1023               ; 3 uses
  %i.ae = icmp ult i32 %i.ad, 53
  %or.cond3 = select i1 %i.ac, i1 %i.ae, i1 false
  br i1 %or.cond3, label %bb.r, label %bb.z

bb.r:                                             ; preds = %bb.q
  %i.af = sub nuw nsw i32 1075, %.0223
  %i.ag = zext nneg i32 %i.af to i64              ; 2 uses
  %notmask = shl nsw i64 -1, %i.ag
  %i.ah = xor i64 %notmask, -1
  %i.ai = and i64 %.0224, %i.ah
  %i.aj = icmp ne i64 %i.ai, 0
  %i.ak = and i32 %4, 12
  %.not235 = icmp eq i32 %i.ak, 4
  %or.cond240 = or i1 %.not235, %i.aj
  br i1 %or.cond240, label %bb.z, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.al = lshr i64 %.0224, %i.ag                  ; 7 uses
  %i.am = icmp eq i32 %2, 10
  br i1 %i.am, label %bb.t, label %bb.u, !prof !17

bb.t:                                             ; preds = %bb.s
  %i.an = tail call i64 @u64toa(ptr noundef %.1210, i64 noundef %i.al)
  br label %u64toa_radix.exit

bb.u:                                             ; preds = %bb.s
  %i.ao = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %2)
  %i.ap = icmp samesign ult i32 %i.ao, 2
  br i1 %i.ap, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.aq = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %2, i1 true) ; 2 uses
  %i.ar = xor i32 %i.aq, 31                       ; 3 uses
  %i.as = icmp eq i64 %i.al, 0
  br i1 %i.as, label %.split.i, label %.split35.i

.split.i:                                         ; preds = %bb.v
  store i8 48, ptr %.1210, align 1, !tbaa !15
  br label %u64toa_radix.exit

.split35.i:                                       ; preds = %bb.v
  %i.at = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 range(i64 1, 0) %i.al, i1 true)
  %i.au = trunc nuw nsw i64 %i.at to i32
  %reass.sub.i = sub nsw i32 %i.ar, %i.au
  %i.av = trunc nsw i32 %reass.sub.i to i8
  %.lhs.trunc.i = add nsw i8 %i.av, 63            ; 2 uses
  %.rhs.trunc.i = trunc nuw nsw i32 %i.ar to i8   ; 2 uses
  %i.aw = udiv i8 %.lhs.trunc.i, %.rhs.trunc.i    ; 3 uses
  %i.ax = lshr i32 2147483647, %i.aq              ; 3 uses
  %.not46.i = icmp samesign ult i8 %.lhs.trunc.i, %.rhs.trunc.i
  br i1 %.not46.i, label %.split35.u64toa_bin_len.exit45_crit_edge.i, label %.lr.ph.i.i

.split35.u64toa_bin_len.exit45_crit_edge.i:       ; preds = %.split35.i
  %.pre.i = zext nneg i8 %i.aw to i64
  br label %u64toa_radix.exit

.lr.ph.i.i:                                       ; preds = %.split35.i
  %i.ay = zext nneg i32 %i.ar to i64              ; 3 uses
  %i.az = zext i8 %i.aw to i64                    ; 5 uses
  %xtraiter = and i64 %i.az, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph.i.i
  %indvars.iv.next.i43.i.prol = add nsw i64 %i.az, -1 ; 2 uses
  %i.ba = trunc i64 %i.al to i32
  %i.bb = and i32 %i.ax, %i.ba                    ; 3 uses
  %i.bc = lshr i64 %i.al, %i.ay
  %i.bd = icmp samesign ult i32 %i.bb, 10
  %i.be = or disjoint i32 %i.bb, 48
  %i.bf = add nuw nsw i32 %i.bb, 87
  %.013.i44.i.prol = select i1 %i.bd, i32 %i.be, i32 %i.bf
  %i.bg = trunc i32 %.013.i44.i.prol to i8
  %i.bh = getelementptr inbounds nuw i8, ptr %.1210, i64 %indvars.iv.next.i43.i.prol
  store i8 %i.bg, ptr %i.bh, align 1, !tbaa !15
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph.i.i
  %indvars.iv.i41.i.unr = phi i64 [ %i.az, %.lr.ph.i.i ], [ %indvars.iv.next.i43.i.prol, %.prol.loopexit.unr-lcssa ]
  %.01416.i42.i.unr = phi i64 [ %i.al, %.lr.ph.i.i ], [ %i.bc, %.prol.loopexit.unr-lcssa ]
  %i.bi = icmp eq i8 %i.aw, 1
  br i1 %i.bi, label %u64toa_radix.exit, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.prol.loopexit, %.lr.ph.i.i.new
  %indvars.iv.i41.i = phi i64 [ %indvars.iv.next.i43.i.1, %.lr.ph.i.i.new ], [ %indvars.iv.i41.i.unr, %.prol.loopexit ] ; 3 uses
  %.01416.i42.i = phi i64 [ %i.bu, %.lr.ph.i.i.new ], [ %.01416.i42.i.unr, %.prol.loopexit ] ; 2 uses
  %i.bj = trunc i64 %.01416.i42.i to i32
  %i.bk = and i32 %i.ax, %i.bj                    ; 3 uses
  %i.bl = lshr i64 %.01416.i42.i, %i.ay           ; 2 uses
  %i.bm = icmp samesign ult i32 %i.bk, 10
  %i.bn = or disjoint i32 %i.bk, 48
  %i.bo = add nuw nsw i32 %i.bk, 87
  %.013.i44.i = select i1 %i.bm, i32 %i.bn, i32 %i.bo
  %i.bp = trunc i32 %.013.i44.i to i8
  %i.bq = getelementptr i8, ptr %.1210, i64 %indvars.iv.i41.i
  %i.br = getelementptr i8, ptr %i.bq, i64 -1
  store i8 %i.bp, ptr %i.br, align 1, !tbaa !15
  %indvars.iv.next.i43.i.1 = add nsw i64 %indvars.iv.i41.i, -2 ; 2 uses
  %i.bs = trunc i64 %i.bl to i32
  %i.bt = and i32 %i.ax, %i.bs                    ; 3 uses
  %i.bu = lshr i64 %i.bl, %i.ay
  %i.bv = icmp samesign ult i32 %i.bt, 10
  %i.bw = or disjoint i32 %i.bt, 48
  %i.bx = add nuw nsw i32 %i.bt, 87
  %.013.i44.i.1 = select i1 %i.bv, i32 %i.bw, i32 %i.bx
  %i.by = trunc i32 %.013.i44.i.1 to i8
  %i.bz = getelementptr inbounds nuw i8, ptr %.1210, i64 %indvars.iv.next.i43.i.1
  store i8 %i.by, ptr %i.bz, align 1, !tbaa !15
  %i.ca = icmp sgt i64 %indvars.iv.i41.i, 2
  br i1 %i.ca, label %.lr.ph.i.i.new, label %u64toa_radix.exit, !llvm.loop !1

bb.w:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  %i.cb = getelementptr inbounds nuw i8, ptr %i.b, i64 41 ; 2 uses
  %i.cc = zext i32 %2 to i64                      ; 3 uses
  br label %bb.x

bb.x:                                             ; preds = %bb.x, %bb.w
  %.033.i = phi i64 [ %i.al, %bb.w ], [ %i.cf, %bb.x ] ; 3 uses
  %.030.i = phi ptr [ %i.cb, %bb.w ], [ %i.ci, %bb.x ]
  %i.cd = urem i64 %.033.i, %i.cc
  %i.ce = trunc nuw i64 %i.cd to i32              ; 2 uses
  %i.cf = udiv i64 %.033.i, %i.cc
  %i.cg = icmp slt i32 %i.ce, 10
  %.0.v.i = select i1 %i.cg, i32 48, i32 87
  %.0.i = add nsw i32 %.0.v.i, %i.ce
  %i.ch = trunc i32 %.0.i to i8
  %i.ci = getelementptr inbounds i8, ptr %.030.i, i64 -1 ; 4 uses
  store i8 %i.ch, ptr %i.ci, align 1, !tbaa !15
  %.not.i = icmp ult i64 %.033.i, %i.cc
  br i1 %.not.i, label %bb.y, label %bb.x, !llvm.loop !2

bb.y:                                             ; preds = %bb.x
  %i.cj = ptrtoint ptr %i.cb to i64
  %i.ck = ptrtoint ptr %i.ci to i64
  %i.cl = sub i64 %i.cj, %i.ck                    ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.1210, ptr noundef nonnull align 1 dereferenceable(1) %i.ci, i64 %i.cl, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  br label %u64toa_radix.exit

u64toa_radix.exit:                                ; preds = %.prol.loopexit, %.lr.ph.i.i.new, %bb.t, %.split.i, %.split35.u64toa_bin_len.exit45_crit_edge.i, %bb.y
  %.032.i = phi i64 [ %i.an, %bb.t ], [ %i.cl, %bb.y ], [ 1, %.split.i ], [ %.pre.i, %.split35.u64toa_bin_len.exit45_crit_edge.i ], [ %i.az, %.lr.ph.i.i.new ], [ %i.az, %.prol.loopexit ]
  %i.cm = getelementptr inbounds nuw i8, ptr %.1210, i64 %.032.i
  br label %.loopexit

bb.z:                                             ; preds = %bb.r, %bb.q
  %i.cn = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %2)
  %i.co = icmp samesign ult i32 %i.cn, 2
  br i1 %i.co, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.cp = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %2, i1 true) ; 2 uses
  %i.cq = icmp slt i32 %.0223, 1023
  %.neg.i = add nuw nsw i32 %i.cp, 65506
  %i.cr = select i1 %i.cq, i32 %.neg.i, i32 0
  %.012.i = add nsw i32 %i.cr, %i.ad
  %.lhs.trunc = trunc i32 %.012.i to i16
  %i.cs = trunc nuw nsw i32 %i.cp to i16
  %.rhs.trunc = xor i16 %i.cs, 31
  %i.ct = sdiv i16 %.lhs.trunc, %.rhs.trunc
  %.sext = sext i16 %i.ct to i32
  br label %mul_log2_radix.exit

bb.ab:                                            ; preds = %bb.z
  %i.cu = sext i32 %2 to i64
  %i.cv = getelementptr [4 x i8], ptr @mul_log2_radix_table, i64 %i.cu
  %i.cw = getelementptr i8, ptr %i.cv, i64 -8
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !18
  %i.cy = sext i32 %i.ad to i64
  %i.cz = sext i32 %i.cx to i64
  %i.da = mul nsw i64 %i.cz, %i.cy
  %i.db = lshr i64 %i.da, 24
  %i.dc = trunc i64 %i.db to i32
  br label %mul_log2_radix.exit

mul_log2_radix.exit:                              ; preds = %bb.aa, %bb.ab
  %.0.i244 = phi i32 [ %.sext, %bb.aa ], [ %i.dc, %bb.ab ] ; 2 uses
  %i.dd = add nsw i32 %.0.i244, 1                 ; 2 uses
  br i1 %i.ac, label %bb.ac, label %bb.as

bb.ac:                                            ; preds = %mul_log2_radix.exit
  %i.de = sext i32 %2 to i64                      ; 4 uses
  %i.df = getelementptr i8, ptr @dtoa_max_digits_table, i64 %i.de
  %i.dg = getelementptr i8, ptr %i.df, i64 -2
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !15
  %i.di = zext i8 %i.dh to i32
  %i.dj = add nsw i32 %.0223, -1075               ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 8 uses
  %i.dl = icmp ult i64 %.0224, 4294967296
  %..i.i = select i1 %i.dl, i32 1, i32 2
  %i.dm = zext i32 %2 to i64                      ; 7 uses
  %i.dn = icmp eq i32 %2, 5
  %i.do = icmp eq i32 %2, 10                      ; 2 uses
  %or.cond.i = or i1 %i.dn, %i.do
  %i.dp = mul nuw i64 %i.dm, %i.dm
  br label %bb.ad

bb.ad:                                            ; preds = %bb.aq, %bb.ac
  %.1215 = phi i32 [ %i.di, %bb.ac ], [ %i.gq, %bb.aq ] ; 12 uses
  %.0207 = phi i32 [ 0, %bb.ac ], [ %.0218, %bb.aq ]
  %.0205 = phi i32 [ 0, %bb.ac ], [ %.2216.lcssa, %bb.aq ] ; 2 uses
  %.0204 = phi i64 [ 0, %bb.ac ], [ %.0203.lcssa, %bb.aq ]
  switch i32 %.1215, label %bb.af [
    i32 0, label %pow_ui.exit
    i32 1, label %bb.ae
  ]

bb.ae:                                            ; preds = %bb.ad
  br label %pow_ui.exit

bb.af:                                            ; preds = %bb.ad
  %i.dq = icmp ult i32 %.1215, 18
  %or.cond3.i = and i1 %or.cond.i, %i.dq
  br i1 %or.cond3.i, label %bb.ag, label %bb.aj

bb.ag:                                            ; preds = %bb.af
  %i.dr = zext nneg i32 %.1215 to i64             ; 2 uses
  %i.ds = getelementptr [4 x i8], ptr @pow5_table, i64 %i.dr
  %i.dt = getelementptr i8, ptr %i.ds, i64 -4
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !18
  %i.dv = zext i32 %i.du to i64                   ; 2 uses
  %i.dw = icmp samesign ugt i32 %.1215, 13
  br i1 %i.dw, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.dx = getelementptr i8, ptr @pow5h_table, i64 %i.dr
  %i.dy = getelementptr i8, ptr %i.dx, i64 -14
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !15
  %i.ea = zext i8 %i.dz to i64
  %i.eb = shl nuw nsw i64 %i.ea, 32
  %i.ec = or disjoint i64 %i.eb, %i.dv
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.0.i246 = phi i64 [ %i.ec, %bb.ah ], [ %i.dv, %bb.ag ]
  %narrow.i = select i1 %i.do, i32 %.1215, i32 0
  %6 = zext nneg i32 %narrow.i to i64
  %.1.i = shl nuw nsw i64 %.0.i246, %6
  br label %pow_ui.exit

bb.aj:                                            ; preds = %bb.af
  %i.ed = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %.1215, i1 true) ; 4 uses
  %i.ee = sub nsw i32 30, %i.ed                   ; 2 uses
  %i.ef = and i32 %i.ed, 1
  %lcmp.mod330.not.not = icmp eq i32 %i.ef, 0
  br i1 %lcmp.mod330.not.not, label %.prol.loopexit328.unr-lcssa, label %.prol.loopexit328

.prol.loopexit328.unr-lcssa:                      ; preds = %bb.aj
  %i.eg = shl nuw nsw i32 1, %i.ee
  %i.eh = and i32 %i.eg, %.1215
  %.not.i245.prol = icmp eq i32 %i.eh, 0
  %i.ei = select i1 %.not.i245.prol, i64 1, i64 %i.dm
  %spec.select.i.prol = mul i64 %i.dp, %i.ei      ; 2 uses
  %i.ej = sub nsw i32 29, %i.ed
  br label %.prol.loopexit328

.prol.loopexit328:                                ; preds = %.prol.loopexit328.unr-lcssa, %bb.aj
  %spec.select.i.lcssa.unr = phi i64 [ poison, %bb.aj ], [ %spec.select.i.prol, %.prol.loopexit328.unr-lcssa ]
  %.234.i.unr = phi i64 [ %i.dm, %bb.aj ], [ %spec.select.i.prol, %.prol.loopexit328.unr-lcssa ]
  %.03033.i.unr = phi i32 [ %i.ee, %bb.aj ], [ %i.ej, %.prol.loopexit328.unr-lcssa ]
  %i.ek = icmp eq i32 %i.ed, 30
  br i1 %i.ek, label %pow_ui.exit, label %.new

.new:                                             ; preds = %.prol.loopexit328, %.new
  %.234.i = phi i64 [ %spec.select.i.1, %.new ], [ %.234.i.unr, %.prol.loopexit328 ] ; 2 uses
  %.03033.i = phi i32 [ %i.eu, %.new ], [ %.03033.i.unr, %.prol.loopexit328 ] ; 3 uses
  %i.el = mul i64 %.234.i, %.234.i
  %i.em = shl nuw i32 1, %.03033.i
  %i.en = and i32 %i.em, %.1215
  %.not.i245 = icmp eq i32 %i.en, 0
  %i.eo = select i1 %.not.i245, i64 1, i64 %i.dm
  %spec.select.i = mul i64 %i.el, %i.eo           ; 2 uses
  %i.ep = add nsw i32 %.03033.i, -1               ; 2 uses
  %i.eq = mul i64 %spec.select.i, %spec.select.i
  %i.er = shl nuw i32 1, %i.ep
  %i.es = and i32 %i.er, %.1215
  %.not.i245.1 = icmp eq i32 %i.es, 0
  %i.et = select i1 %.not.i245.1, i64 1, i64 %i.dm
  %spec.select.i.1 = mul i64 %i.eq, %i.et         ; 2 uses
  %i.eu = add nsw i32 %.03033.i, -2
  %.not36.i.1 = icmp eq i32 %i.ep, 0
  br i1 %.not36.i.1, label %pow_ui.exit, label %.new, !llvm.loop !3

pow_ui.exit:                                      ; preds = %.prol.loopexit328, %.new, %bb.ad, %bb.ae, %bb.ai
  %.031.i = phi i64 [ 1, %bb.ad ], [ %i.dm, %bb.ae ], [ %.1.i, %bb.ai ], [ %spec.select.i.lcssa.unr, %.prol.loopexit328 ], [ %spec.select.i.1, %.new ]
  br label %bb.ak

bb.ak:                                            ; preds = %mpb_get_u64.exit, %pow_ui.exit
  %.0218 = phi i32 [ %i.dd, %pow_ui.exit ], [ %i.fe, %mpb_get_u64.exit ] ; 5 uses
  %i.ev = sub nsw i32 %.1215, %.0218
  store i64 %.0224, ptr %i.dk, align 4
  store i32 %..i.i, ptr %5, align 4, !tbaa !18
  %i.ew = tail call fastcc i32 @mul_pow(ptr noundef nonnull %5, i32 noundef %i.f, i32 noundef range(i32 0, 32) %i.e, i32 noundef %i.ev, i1 noundef zeroext true, i32 noundef range(i32 -2147483648, 2147482573) %i.dj)
  %i.ex = sub nsw i32 %i.ew, %i.dj
  tail call fastcc void @mpb_shr_round(ptr noundef nonnull %5, i32 noundef %i.ex, i32 noundef 0)
  %i.ey = load i32, ptr %5, align 4, !tbaa !18
  %i.ez = icmp eq i32 %i.ey, 1
  br i1 %i.ez, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.fa = load i32, ptr %i.dk, align 4, !tbaa !18
  %i.fb = zext i32 %i.fa to i64
  br label %mpb_get_u64.exit

bb.am:                                            ; preds = %bb.ak
  %i.fc = load i64, ptr %i.dk, align 4
  br label %mpb_get_u64.exit

mpb_get_u64.exit:                                 ; preds = %bb.al, %bb.am
  %.0.i247 = phi i64 [ %i.fb, %bb.al ], [ %i.fc, %bb.am ] ; 4 uses
  %i.fd = icmp ult i64 %.0.i247, %.031.i
  %i.fe = add nsw i32 %.0218, 1
  br i1 %i.fd, label %.preheader, label %bb.ak

.preheader:                                       ; preds = %mpb_get_u64.exit
  %i.ff = urem i64 %.0.i247, %i.de
  %i.fg = icmp eq i64 %i.ff, 0
  br i1 %i.fg, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.0203269 = phi i64 [ %i.fh, %.lr.ph ], [ %.0.i247, %.preheader ]
  %.2216268 = phi i32 [ %i.fi, %.lr.ph ], [ %.1215, %.preheader ]
  %i.fh = udiv i64 %.0203269, %i.de               ; 3 uses
  %i.fi = add nsw i32 %.2216268, -1               ; 2 uses
  %i.fj = urem i64 %i.fh, %i.de
  %i.fk = icmp eq i64 %i.fj, 0
  br i1 %i.fk, label %.lr.ph, label %._crit_edge, !llvm.loop !19

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  %.2216.lcssa = phi i32 [ %.1215, %.preheader ], [ %i.fi, %.lr.ph ] ; 4 uses
  %.0203.lcssa = phi i64 [ %.0.i247, %.preheader ], [ %i.fh, %.lr.ph ] ; 4 uses
  %i.fl = icmp eq i32 %.0205, 0
  br i1 %i.fl, label %bb.aq, label %bb.an

bb.an:                                            ; preds = %._crit_edge
  store i64 %.0203.lcssa, ptr %i.dk, align 4
  %i.fm = icmp ult i64 %.0203.lcssa, 4294967296
  %..i = select i1 %i.fm, i32 1, i32 2
  store i32 %..i, ptr %5, align 4, !tbaa !18
  %i.fn = sub nsw i32 %.0218, %.2216.lcssa
  %i.fo = tail call fastcc i32 @mul_pow(ptr noundef nonnull %5, i32 noundef %i.f, i32 noundef range(i32 0, 32) %i.e, i32 noundef %i.fn, i1 noundef zeroext false, i32 noundef 55)
  %i.fp = load i32, ptr %i.dk, align 4, !tbaa !18
  %i.fq = icmp eq i32 %i.fp, 0
  %.pre.i.i = load i32, ptr %5, align 4, !tbaa !18 ; 3 uses
  %i.fr = icmp eq i32 %.pre.i.i, 1
  %or.cond.i.i = select i1 %i.fq, i1 %i.fr, i1 false
  br i1 %or.cond.i.i, label %mul_pow_round_to_d.exit, label %mpb_floor_log2.exit.i.i

mpb_floor_log2.exit.i.i:                          ; preds = %bb.an
  %i.fs = sext i32 %.pre.i.i to i64
  %i.ft = getelementptr [4 x i8], ptr %5, i64 %i.fs
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !18 ; 2 uses
  %i.fv = icmp eq i32 %i.fu, 0
  %i.fw = shl nsw i32 %.pre.i.i, 5
  %i.fx = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.fu, i1 true)
  %i.fy = sub i32 %i.fw, %i.fx
  %.0.i.i.i = select i1 %i.fv, i32 0, i32 %i.fy   ; 2 uses
  %i.fz = sub nsw i32 %.0.i.i.i, %i.fo            ; 2 uses
  %i.ga = tail call i32 @llvm.smin.i32(i32 %i.fz, i32 -1021) ; 2 uses
  %.0.neg.i.i = add i32 %.0.i.i.i, -1074
  %i.gb = sub i32 %.0.neg.i.i, %i.ga
  tail call fastcc void @mpb_shr_round(ptr noundef nonnull %5, i32 noundef %i.gb, i32 noundef 0)
  %i.gc = load i32, ptr %5, align 4, !tbaa !18
  %i.gd = icmp eq i32 %i.gc, 1
  br i1 %i.gd, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %mpb_floor_log2.exit.i.i
  %i.ge = load i32, ptr %i.dk, align 4, !tbaa !18
  %i.gf = zext i32 %i.ge to i64
  br label %mpb_get_u64.exit.i.i

bb.ap:                                            ; preds = %mpb_floor_log2.exit.i.i
  %i.gg = load i64, ptr %i.dk, align 4
  br label %mpb_get_u64.exit.i.i

mpb_get_u64.exit.i.i:                             ; preds = %bb.ap, %bb.ao
  %.0.i29.i.i = phi i64 [ %i.gf, %bb.ao ], [ %i.gg, %bb.ap ]
  %i.gh = sub nuw nsw i32 -1021, %i.ga
  %i.gi = zext nneg i32 %i.gh to i64
  %i.gj = shl i64 %.0.i29.i.i, %i.gi              ; 2 uses
  %i.gk = icmp ugt i64 %i.gj, 9007199254740991    ; 2 uses
  %i.gl = zext i1 %i.gk to i32
  %.024.i.i = add nsw i32 %i.fz, %i.gl
  %i.gm = zext i1 %i.gk to i64
  %.023.i.i = lshr i64 %i.gj, %i.gm
  br label %mul_pow_round_to_d.exit

mul_pow_round_to_d.exit:                          ; preds = %bb.an, %mpb_get_u64.exit.i.i
  %.125.i.i = phi i32 [ %.024.i.i, %mpb_get_u64.exit.i.i ], [ 0, %bb.an ]
  %.1.i.i = phi i64 [ %.023.i.i, %mpb_get_u64.exit.i.i ], [ 0, %bb.an ]
  %i.gn = icmp eq i64 %.1.i.i, %.0224
  %i.go = icmp eq i32 %.125.i.i, %i.ab
  %or.cond242 = select i1 %i.gn, i1 %i.go, i1 false
  br i1 %or.cond242, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %mul_pow_round_to_d.exit, %._crit_edge
  %i.gp = icmp eq i32 %.2216.lcssa, 1
  %i.gq = add nsw i32 %.2216.lcssa, -1
  br i1 %i.gp, label %bb.ar, label %bb.ad

bb.ar:                                            ; preds = %mul_pow_round_to_d.exit, %bb.aq
  %.1208 = phi i32 [ %.0218, %bb.aq ], [ %.0207, %mul_pow_round_to_d.exit ]
  %.1206 = phi i32 [ 1, %bb.aq ], [ %.0205, %mul_pow_round_to_d.exit ]
  %.1 = phi i64 [ %.0203.lcssa, %bb.aq ], [ %.0204, %mul_pow_round_to_d.exit ] ; 2 uses
  store i64 %.1, ptr %i.dk, align 4
  %i.gr = icmp ult i64 %.1, 4294967296
  %..i248 = select i1 %i.gr, i32 1, i32 2
  store i32 %..i248, ptr %5, align 4, !tbaa !18
  br label %mpb_cmp.exit

bb.as:                                            ; preds = %mul_log2_radix.exit
  %i.gs = icmp eq i32 %i.c, 2
  br i1 %i.gs, label %bb.at, label %bb.ax

bb.at:                                            ; preds = %bb.as
  %i.gt = add nsw i32 %.0223, -1075               ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i64 %.0224, ptr %i.gu, align 4
  %i.gv = icmp ult i64 %.0224, 4294967296
  %..i.i249 = select i1 %i.gv, i32 1, i32 2
  store i32 %..i.i249, ptr %5, align 4, !tbaa !18
  %i.gw = tail call fastcc i32 @mul_pow(ptr noundef nonnull %5, i32 noundef %i.f, i32 noundef range(i32 0, 32) %i.e, i32 noundef %3, i1 noundef zeroext true, i32 noundef range(i32 -2147483648, 2147482573) %i.gt)
  %i.gx = sub nsw i32 %i.gw, %i.gt
  tail call fastcc void @mpb_shr_round(ptr noundef nonnull %5, i32 noundef %i.gx, i32 noundef 1)
  %i.gy = tail call i32 @llvm.smax.i32(i32 %.0.i244, i32 -1)
  %..i250 = add nsw i32 %i.gy, 2                  ; 2 uses
  %i.gz = add nsw i32 %..i250, %3
  %i.ha = tail call fastcc i32 @output_digits(ptr noundef %.1210, ptr noundef nonnull %5, i32 noundef %2, i32 noundef %i.gz, i32 noundef %..i250) ; 4 uses
  %i.hb = load i8, ptr %.1210, align 1, !tbaa !15
  %i.hc = icmp eq i8 %i.hb, 48
  %i.hd = icmp sgt i32 %i.ha, 1
  %or.cond5 = select i1 %i.hc, i1 %i.hd, i1 false
  br i1 %or.cond5, label %bb.au, label %bb.aw

bb.au:                                            ; preds = %bb.at
  %i.he = getelementptr inbounds nuw i8, ptr %.1210, i64 1 ; 2 uses
  %i.hf = load i8, ptr %i.he, align 1, !tbaa !15
end_hunk_0
begin_hunk_1_@output_digits:bb.a
bb.e:                                             ; preds = %bb.e, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.bt, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.e ] ; 2 uses
  %.01416.i = phi i32 [ %i.bs, %.lr.ph.i ], [ %i.bv, %bb.e ] ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 2 uses
  %i.bu = and i32 %.01416.i, %i.j                 ; 3 uses
  %i.bv = lshr i32 %.01416.i, %i.d
  %i.bw = icmp samesign ult i32 %i.bu, 10
  %i.bx = or disjoint i32 %i.bu, 48
  %i.by = add nuw nsw i32 %i.bu, 87
  %.013.i = select i1 %i.bw, i32 %i.bx, i32 %i.by
  %i.bz = trunc i32 %.013.i to i8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bq, i64 %indvars.iv.next.i
  store i8 %i.bz, ptr %i.ca, align 1, !tbaa !15
  %i.cb = icmp samesign ugt i64 %indvars.iv.i, 1
  br i1 %i.cb, label %bb.e, label %u64toa_bin_len.exit, !llvm.loop !1

u64toa_bin_len.exit:                              ; preds = %bb.e, %bb.d
  %i.cc = icmp eq i32 %i.bo, 0
  br i1 %i.cc, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %u64toa_bin_len.exit
  tail call fastcc void @mpb_shr_round(ptr noundef nonnull %1, i32 noundef %i.l, i32 noundef 2)
  br label %bb.d

.lr.ph.split:                                     ; preds = %.lr.ph, %limb_to_a.exit
  %.169 = phi i32 [ %i.cd, %limb_to_a.exit ], [ %3, %.lr.ph ] ; 2 uses
  %..i54 = tail call noundef i32 @llvm.smin.i32(i32 %.169, i32 %i.i) ; 3 uses
  %i.cd = sub nsw i32 %.169, %..i54               ; 3 uses
  %i.ce = load i32, ptr %1, align 4, !tbaa !18    ; 3 uses
  %.013.i55 = add i32 %i.ce, -1                   ; 3 uses
  %i.cf = icmp sgt i32 %.013.i55, -1
  br i1 %i.cf, label %.lr.ph.i56, label %mpb_renorm.exit

.lr.ph.i56:                                       ; preds = %.lr.ph.split
  %i.cg = load i32, ptr %i.n, align 4, !tbaa !18
  %i.ch = zext i32 %i.cg to i64                   ; 6 uses
  %i.ci = zext nneg i32 %.013.i55 to i64          ; 4 uses
  %i.cj = add nuw nsw i64 %i.ci, 1                ; 2 uses
  %i.ck = icmp eq i32 %.013.i55, 0
  br i1 %i.ck, label %.epil.preheader, label %.lr.ph.i56.new

.lr.ph.i56.new:                                   ; preds = %.lr.ph.i56
  %unroll_iter = and i64 %i.cj, 4294967294
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph.i56.new
  %indvars.iv.i57 = phi i64 [ %i.ci, %.lr.ph.i56.new ], [ %indvars.iv.next.i58.1, %bb.g ] ; 3 uses
  %.01214.i = phi i64 [ 0, %.lr.ph.i56.new ], [ %i.da, %bb.g ]
  %niter = phi i64 [ 0, %.lr.ph.i56.new ], [ %niter.next.1, %bb.g ]
  %i.cl = shl nuw i64 %.01214.i, 32
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.i57 ; 2 uses
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !18
  %i.co = zext i32 %i.cn to i64
  %i.cp = or disjoint i64 %i.cl, %i.co            ; 2 uses
  %i.cq = udiv i64 %i.cp, %i.ch
  %i.cr = trunc i64 %i.cq to i32
  store i32 %i.cr, ptr %i.cm, align 4, !tbaa !18
  %i.cs = urem i64 %i.cp, %i.ch
  %i.ct = shl nuw i64 %i.cs, 32
  %i.cu = getelementptr [4 x i8], ptr %1, i64 %indvars.iv.i57 ; 2 uses
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !18
  %i.cw = zext i32 %i.cv to i64
  %i.cx = or disjoint i64 %i.ct, %i.cw            ; 2 uses
  %i.cy = udiv i64 %i.cx, %i.ch
  %i.cz = trunc i64 %i.cy to i32
  store i32 %i.cz, ptr %i.cu, align 4, !tbaa !18
  %i.da = urem i64 %i.cx, %i.ch                   ; 3 uses
  %indvars.iv.next.i58.1 = add nsw i64 %indvars.iv.i57, -2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %mp_div1.exit.unr-lcssa, label %bb.g, !llvm.loop !21

mp_div1.exit.unr-lcssa:                           ; preds = %bb.g
  %i.db = and i64 %i.ci, 1
  %lcmp.mod.not.not = icmp eq i64 %i.db, 0
  br i1 %lcmp.mod.not.not, label %.epil.preheader, label %mp_div1.exit

.epil.preheader:                                  ; preds = %mp_div1.exit.unr-lcssa, %.lr.ph.i56
  %indvars.iv.i57.epil.init = phi i64 [ %i.ci, %.lr.ph.i56 ], [ %indvars.iv.next.i58.1, %mp_div1.exit.unr-lcssa ]
  %.01214.i.epil.init = phi i64 [ 0, %.lr.ph.i56 ], [ %i.da, %mp_div1.exit.unr-lcssa ]
  %lcmp.mod93 = trunc i64 %i.cj to i1
  tail call void @llvm.assume(i1 %lcmp.mod93)
  %i.dc = shl nuw i64 %.01214.i.epil.init, 32
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.i57.epil.init ; 2 uses
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !18
  %i.df = zext i32 %i.de to i64
  %i.dg = or disjoint i64 %i.dc, %i.df            ; 2 uses
  %i.dh = udiv i64 %i.dg, %i.ch
  %i.di = trunc i64 %i.dh to i32
  store i32 %i.di, ptr %i.dd, align 4, !tbaa !18
  %i.dj = urem i64 %i.dg, %i.ch
  br label %mp_div1.exit

mp_div1.exit:                                     ; preds = %mp_div1.exit.unr-lcssa, %.epil.preheader
  %.lcssa90 = phi i64 [ %i.da, %mp_div1.exit.unr-lcssa ], [ %i.dj, %.epil.preheader ]
  %i.dk = trunc nuw i64 %.lcssa90 to i32          ; 3 uses
  %i.dl = icmp sgt i32 %i.ce, 1
  br i1 %i.dl, label %.lr.ph.i59, label %mpb_renorm.exit

.lr.ph.i59:                                       ; preds = %mp_div1.exit, %bb.h
  %i.dm = phi i32 [ %i.dr, %bb.h ], [ %i.ce, %mp_div1.exit ] ; 3 uses
  %i.dn = zext nneg i32 %i.dm to i64
  %i.do = getelementptr [4 x i8], ptr %1, i64 %i.dn
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !18
  %i.dq = icmp eq i32 %i.dp, 0
  br i1 %i.dq, label %bb.h, label %mpb_renorm.exit

bb.h:                                             ; preds = %.lr.ph.i59
  %i.dr = add nsw i32 %i.dm, -1                   ; 2 uses
  store i32 %i.dr, ptr %1, align 4, !tbaa !18
  %i.ds = icmp sgt i32 %i.dm, 2
  br i1 %i.ds, label %.lr.ph.i59, label %mpb_renorm.exit, !llvm.loop !4

mpb_renorm.exit:                                  ; preds = %.lr.ph.i59, %bb.h, %.lr.ph.split, %mp_div1.exit
  %.012.lcssa.i64 = phi i32 [ 0, %.lr.ph.split ], [ %i.dk, %mp_div1.exit ], [ %i.dk, %bb.h ], [ %i.dk, %.lr.ph.i59 ]
  %i.dt = zext nneg i32 %i.cd to i64
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 %i.dt
  %i.dv = icmp sgt i32 %..i54, 0
  br i1 %i.dv, label %.lr.ph.preheader.i, label %limb_to_a.exit

.lr.ph.preheader.i:                               ; preds = %mpb_renorm.exit
  %i.dw = zext nneg i32 %..i54 to i64
  br label %.lr.ph.i60

.lr.ph.i60:                                       ; preds = %.lr.ph.i60, %.lr.ph.preheader.i
  %indvars.iv.i61 = phi i64 [ %i.dw, %.lr.ph.preheader.i ], [ %indvars.iv.next.i62, %.lr.ph.i60 ] ; 2 uses
  %.01721.i = phi i32 [ %.012.lcssa.i64, %.lr.ph.preheader.i ], [ %i.dy, %.lr.ph.i60 ] ; 2 uses
  %indvars.iv.next.i62 = add nsw i64 %indvars.iv.i61, -1 ; 2 uses
  %i.dx = urem i32 %.01721.i, %2                  ; 2 uses
  %i.dy = udiv i32 %.01721.i, %2
  %i.dz = icmp slt i32 %i.dx, 10
  %.016.v.i = select i1 %i.dz, i32 48, i32 87
  %.016.i = add nsw i32 %.016.v.i, %i.dx
  %i.ea = trunc i32 %.016.i to i8
  %i.eb = getelementptr inbounds nuw i8, ptr %i.du, i64 %indvars.iv.next.i62
  store i8 %i.ea, ptr %i.eb, align 1, !tbaa !15
  %i.ec = icmp samesign ugt i64 %indvars.iv.i61, 1
  br i1 %i.ec, label %.lr.ph.i60, label %limb_to_a.exit, !llvm.loop !24

limb_to_a.exit:                                   ; preds = %.lr.ph.i60, %mpb_renorm.exit
  %.not52 = icmp eq i32 %i.cd, 0
  br i1 %.not52, label %.loopexit, label %.lr.ph.split, !llvm.loop !23

.loopexit:                                        ; preds = %u64toa_bin_len.exit, %limb_to_a.exit, %limb_to_a.exit.us, %.preheader
  %.not53 = icmp eq i32 %4, %3
  br i1 %.not53, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.loopexit
  %i.ed = sext i32 %4 to i64
  %i.ee = getelementptr inbounds i8, ptr %0, i64 %i.ed ; 3 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 1
  %i.eg = sub nsw i32 %3, %4
  %i.eh = sext i32 %i.eg to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ef, ptr align 1 %i.ee, i64 %i.eh, i1 false)
  store i8 46, ptr %i.ee, align 1, !tbaa !15
  %i.ei = add nsw i32 %3, 1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.loopexit
  %.0 = phi i32 [ %i.ei, %bb.i ], [ %3, %.loopexit ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc i32 @mul_pow(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef range(i32 0, 32) %2, i32 noundef %3, i1 noundef zeroext %4, i32 noundef range(i32 -2147483648, 2147482573) %5) unnamed_addr #0 {
bb.a:
  %i.a = sub nsw i32 0, %3                        ; 2 uses
  %i.b = mul nsw i32 %2, %i.a                     ; 3 uses
  %.not = icmp eq i32 %1, 1
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = sext i32 %1 to i64
  %i.d = getelementptr i8, ptr @digits_per_limb_table, i64 %i.c
  %i.e = getelementptr i8, ptr %i.d, i64 -2
  %i.f = load i8, ptr %i.e, align 1, !tbaa !15
  %i.g = zext i8 %i.f to i32                      ; 4 uses
  %i.h = icmp sgt i32 %3, -1
  br i1 %i.h, label %.preheader, label %bb.n

.preheader:                                       ; preds = %bb.b
  %.not7498 = icmp eq i32 %3, 0
  br i1 %.not7498, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.i = zext i32 %1 to i64                       ; 7 uses
  %i.j = icmp eq i32 %1, 5
  %i.k = icmp eq i32 %1, 10                       ; 2 uses
  %or.cond.i = or i1 %i.j, %i.k
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.m = mul nuw i64 %i.i, %i.i
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %mp_mul1.exit.thread
  %.060101 = phi i32 [ 0, %.lr.ph ], [ %.161, %mp_mul1.exit.thread ]
  %.062100 = phi i32 [ 0, %.lr.ph ], [ %.163, %mp_mul1.exit.thread ] ; 2 uses
  %.06599 = phi i32 [ %3, %.lr.ph ], [ %i.bw, %mp_mul1.exit.thread ] ; 2 uses
  %..i = tail call noundef i32 @llvm.smin.i32(i32 %.06599, i32 %i.g) ; 12 uses
  %.not75 = icmp eq i32 %..i, %.062100
  br i1 %.not75, label %bb.k, label %bb.d

bb.d:                                             ; preds = %bb.c
  %trunc = trunc nuw i32 %..i to i8
  switch i8 %trunc, label %bb.f [
    i8 0, label %pow_ui.exit
    i8 1, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  br label %pow_ui.exit

bb.f:                                             ; preds = %bb.d
  %i.n = icmp samesign ult i32 %..i, 18
  %or.cond3.i = and i1 %or.cond.i, %i.n
  br i1 %or.cond3.i, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.o = zext nneg i32 %..i to i64                ; 2 uses
  %i.p = getelementptr [4 x i8], ptr @pow5_table, i64 %i.o
  %i.q = getelementptr i8, ptr %i.p, i64 -4
  %i.r = load i32, ptr %i.q, align 4, !tbaa !18
  %i.s = zext i32 %i.r to i64                     ; 2 uses
  %i.t = icmp samesign ugt i32 %..i, 13
  br i1 %i.t, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.u = getelementptr i8, ptr @pow5h_table, i64 %i.o
  %i.v = getelementptr i8, ptr %i.u, i64 -14
  %i.w = load i8, ptr %i.v, align 1, !tbaa !15
  %i.x = zext i8 %i.w to i64
  %i.y = shl nuw nsw i64 %i.x, 32
  %i.z = or disjoint i64 %i.y, %i.s
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.0.i = phi i64 [ %i.z, %bb.h ], [ %i.s, %bb.g ]
  %narrow.i = select i1 %i.k, i32 %..i, i32 0
  %6 = zext nneg i32 %narrow.i to i64
  %.1.i = shl nuw nsw i64 %.0.i, %6
  br label %pow_ui.exit

bb.j:                                             ; preds = %bb.f
  %i.aa = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %..i, i1 true) ; 4 uses
  %i.ab = sub nsw i32 30, %i.aa                   ; 2 uses
  %i.ac = and i32 %i.aa, 1
  %lcmp.mod116.not.not = icmp eq i32 %i.ac, 0
  br i1 %lcmp.mod116.not.not, label %.prol.loopexit113.unr-lcssa, label %.prol.loopexit113

.prol.loopexit113.unr-lcssa:                      ; preds = %bb.j
  %i.ad = shl nuw nsw i32 1, %i.ab
  %i.ae = and i32 %i.ad, %..i
  %.not.i.prol = icmp eq i32 %i.ae, 0
  %i.af = select i1 %.not.i.prol, i64 1, i64 %i.i
  %spec.select.i.prol = mul i64 %i.m, %i.af       ; 2 uses
  %i.ag = sub nsw i32 29, %i.aa
  br label %.prol.loopexit113

.prol.loopexit113:                                ; preds = %.prol.loopexit113.unr-lcssa, %bb.j
  %spec.select.i.lcssa.unr = phi i64 [ poison, %bb.j ], [ %spec.select.i.prol, %.prol.loopexit113.unr-lcssa ]
  %.234.i.unr = phi i64 [ %i.i, %bb.j ], [ %spec.select.i.prol, %.prol.loopexit113.unr-lcssa ]
  %.03033.i.unr = phi i32 [ %i.ab, %bb.j ], [ %i.ag, %.prol.loopexit113.unr-lcssa ]
  %i.ah = icmp eq i32 %i.aa, 30
  br i1 %i.ah, label %pow_ui.exit, label %.new114

.new114:                                          ; preds = %.prol.loopexit113, %.new114
  %.234.i = phi i64 [ %spec.select.i.1, %.new114 ], [ %.234.i.unr, %.prol.loopexit113 ] ; 2 uses
  %.03033.i = phi i32 [ %i.ar, %.new114 ], [ %.03033.i.unr, %.prol.loopexit113 ] ; 3 uses
  %i.ai = mul i64 %.234.i, %.234.i
  %i.aj = shl nuw i32 1, %.03033.i
  %i.ak = and i32 %i.aj, %..i
  %.not.i = icmp eq i32 %i.ak, 0
  %i.al = select i1 %.not.i, i64 1, i64 %i.i
  %spec.select.i = mul i64 %i.ai, %i.al           ; 2 uses
  %i.am = add nsw i32 %.03033.i, -1               ; 2 uses
  %i.an = mul i64 %spec.select.i, %spec.select.i
  %i.ao = shl nuw i32 1, %i.am
  %i.ap = and i32 %i.ao, %..i
  %.not.i.1 = icmp eq i32 %i.ap, 0
  %i.aq = select i1 %.not.i.1, i64 1, i64 %i.i
  %spec.select.i.1 = mul i64 %i.an, %i.aq         ; 2 uses
  %i.ar = add nsw i32 %.03033.i, -2
  %.not36.i.1 = icmp eq i32 %i.am, 0
  br i1 %.not36.i.1, label %pow_ui.exit, label %.new114, !llvm.loop !3

pow_ui.exit:                                      ; preds = %.prol.loopexit113, %.new114, %bb.d, %bb.e, %bb.i
  %.031.i = phi i64 [ 1, %bb.d ], [ %i.i, %bb.e ], [ %.1.i, %bb.i ], [ %spec.select.i.lcssa.unr, %.prol.loopexit113 ], [ %spec.select.i.1, %.new114 ]
  %i.as = trunc i64 %.031.i to i32
  br label %bb.k

bb.k:                                             ; preds = %pow_ui.exit, %bb.c
  %.163 = phi i32 [ %..i, %pow_ui.exit ], [ %.062100, %bb.c ]
  %.161 = phi i32 [ %i.as, %pow_ui.exit ], [ %.060101, %bb.c ] ; 2 uses
  %i.at = load i32, ptr %0, align 4, !tbaa !18    ; 6 uses
  %.not.i77 = icmp eq i32 %i.at, 0
  br i1 %.not.i77, label %mp_mul1.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.k
  %i.au = zext i32 %.161 to i64                   ; 3 uses
  %wide.trip.count.i = zext i32 %i.at to i64      ; 2 uses
  %xtraiter117 = and i64 %wide.trip.count.i, 1
  %i.av = icmp eq i32 %i.at, 1
  br i1 %i.av, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %wide.trip.count.i, 4294967294
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.1, %bb.l ] ; 3 uses
  %.01112.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.bk, %bb.l ]
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.l ]
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.i ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !18
  %i.ay = zext i32 %i.ax to i64
  %i.az = mul nuw i64 %i.ay, %i.au
  %i.ba = add nuw i64 %i.az, %.01112.i            ; 2 uses
  %i.bb = trunc i64 %i.ba to i32
  store i32 %i.bb, ptr %i.aw, align 4, !tbaa !18
  %i.bc = lshr i64 %i.ba, 32
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 4 ; 2 uses
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !18
  %i.bg = zext i32 %i.bf to i64
  %i.bh = mul nuw i64 %i.bg, %i.au
  %i.bi = add nuw i64 %i.bh, %i.bc                ; 2 uses
  %i.bj = trunc i64 %i.bi to i32
  store i32 %i.bj, ptr %i.be, align 4, !tbaa !18
  %i.bk = lshr i64 %i.bi, 32                      ; 3 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %mp_mul1.exit.unr-lcssa, label %bb.l, !llvm.loop !5

mp_mul1.exit.unr-lcssa:                           ; preds = %bb.l
  %lcmp.mod118.not = icmp eq i64 %xtraiter117, 0
  br i1 %lcmp.mod118.not, label %mp_mul1.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %mp_mul1.exit.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.1, %mp_mul1.exit.unr-lcssa ]
  %.01112.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.bk, %mp_mul1.exit.unr-lcssa ]
  %lcmp.mod120 = trunc i32 %i.at to i1
  tail call void @llvm.assume(i1 %lcmp.mod120)
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.i.epil.init ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !18
  %i.bn = zext i32 %i.bm to i64
  %i.bo = mul nuw i64 %i.bn, %i.au
  %i.bp = add nuw i64 %i.bo, %.01112.i.epil.init  ; 2 uses
  %i.bq = trunc i64 %i.bp to i32
  store i32 %i.bq, ptr %i.bl, align 4, !tbaa !18
  %i.br = lshr i64 %i.bp, 32
  br label %mp_mul1.exit

mp_mul1.exit:                                     ; preds = %mp_mul1.exit.unr-lcssa, %.epil.preheader
  %.lcssa = phi i64 [ %i.bk, %mp_mul1.exit.unr-lcssa ], [ %i.br, %.epil.preheader ] ; 2 uses
  %.not76 = icmp eq i64 %.lcssa, 0
  br i1 %.not76, label %mp_mul1.exit.thread, label %bb.m

bb.m:                                             ; preds = %mp_mul1.exit
  %i.bs = trunc nuw i64 %.lcssa to i32
  %i.bt = add nsw i32 %i.at, 1
  store i32 %i.bt, ptr %0, align 4, !tbaa !18
  %i.bu = sext i32 %i.at to i64
  %i.bv = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.bu
  store i32 %i.bs, ptr %i.bv, align 4, !tbaa !18
  br label %mp_mul1.exit.thread

mp_mul1.exit.thread:                              ; preds = %bb.k, %bb.m, %mp_mul1.exit
  %i.bw = sub nsw i32 %.06599, %..i               ; 2 uses
  %.not74 = icmp eq i32 %i.bw, 0
  br i1 %.not74, label %.loopexit, label %bb.c, !llvm.loop !25

bb.n:                                             ; preds = %bb.b
  %i.bx = xor i32 %3, -1
  %i.by = add nuw i32 %i.g, %i.bx
  %i.bz = sdiv i32 %i.by, %i.g
  %i.ca = shl nsw i32 %i.bz, 5                    ; 2 uses
  %i.cb = add nsw i32 %i.ca, %i.b                 ; 2 uses
  br i1 %4, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cc = load i32, ptr %0, align 4, !tbaa !18    ; 2 uses
  %i.cd = sext i32 %i.cc to i64
  %i.ce = getelementptr [4 x i8], ptr %0, i64 %i.cd
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !18 ; 2 uses
  %i.cg = icmp eq i32 %i.cf, 0
  br i1 %i.cg, label %mpb_floor_log2.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ch = shl nsw i32 %i.cc, 5
  %i.ci = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.cf, i1 true)
  %i.cj = xor i32 %i.ci, -1
  %i.ck = add i32 %i.ch, %i.cj
  br label %mpb_floor_log2.exit

mpb_floor_log2.exit:                              ; preds = %bb.o, %bb.p
  %.0.i78 = phi i32 [ %i.ck, %bb.p ], [ -1, %bb.o ]
  %i.cl = sub nsw i32 %5, %.0.i78
  br label %bb.r

bb.q:                                             ; preds = %bb.n
  %i.cm = add nsw i32 %5, 2
  %i.cn = sub i32 %i.cm, %i.cb
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %mpb_floor_log2.exit
  %.sink = phi i32 [ %i.cn, %bb.q ], [ %i.cl, %mpb_floor_log2.exit ]
  %..i80 = tail call range(i32 0, -2147483648) i32 @llvm.smax.i32(i32 %.sink, i32 0) ; 2 uses
  %i.co = add nsw i32 %i.ca, %..i80
  %i.cp = sub nsw i32 0, %i.co
  tail call fastcc void @mpb_shr_round(ptr noundef %0, i32 noundef %i.cp, i32 noundef 2)
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.cr = icmp eq i32 %1, 5                       ; 2 uses
  %i.cs = zext i32 %1 to i64                      ; 7 uses
  %i.ct = icmp eq i32 %1, 10                      ; 2 uses
  %or.cond.i.i = or i1 %i.cr, %i.ct
  %i.cu = mul nuw i64 %i.cs, %i.cs
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %mpb_renorm.exit
  %.097 = phi i32 [ 0, %bb.r ], [ %.1, %mpb_renorm.exit ]
  %.05896 = phi i32 [ 0, %bb.r ], [ %i.ev, %mpb_renorm.exit ]
  %.295 = phi i32 [ 0, %bb.r ], [ %.3, %mpb_renorm.exit ] ; 2 uses
  %.16694 = phi i32 [ %i.a, %bb.r ], [ %i.fe, %mpb_renorm.exit ] ; 2 uses
  %.08693 = phi i32 [ 0, %bb.r ], [ %.187, %mpb_renorm.exit ]
  %.08892 = phi i32 [ 0, %bb.r ], [ %.189, %mpb_renorm.exit ]
  %..i81 = tail call noundef i32 @llvm.smin.i32(i32 %.16694, i32 %i.g) ; 15 uses
  %.not73 = icmp eq i32 %..i81, %.295
  br i1 %.not73, label %pow_ui_inv.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cv = icmp ult i32 %..i81, 14
  %or.cond3.i82 = and i1 %i.cr, %i.cv
  br i1 %or.cond3.i82, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.cw = add nsw i32 %..i81, -1
  %i.cx = zext nneg i32 %i.cw to i64              ; 2 uses
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr @pow5_table, i64 %i.cx
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !18 ; 2 uses
  %i.da = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.cz, i1 true) ; 2 uses
  %i.db = shl i32 %i.cz, %i.da
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr @pow5_inv_table, i64 %i.cx
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !18
  br label %pow_ui_inv.exit

bb.v:                                             ; preds = %bb.t
  switch i32 %..i81, label %bb.x [
    i32 0, label %pow_ui.exit.i
    i32 1, label %bb.w
  ]

bb.w:                                             ; preds = %bb.v
  br label %pow_ui.exit.i

bb.x:                                             ; preds = %bb.v
  %i.de = icmp ult i32 %..i81, 18
  %or.cond3.i.i = and i1 %or.cond.i.i, %i.de
  br i1 %or.cond3.i.i, label %bb.y, label %bb.ab

bb.y:                                             ; preds = %bb.x
  %i.df = zext nneg i32 %..i81 to i64             ; 2 uses
  %i.dg = getelementptr [4 x i8], ptr @pow5_table, i64 %i.df
  %i.dh = getelementptr i8, ptr %i.dg, i64 -4
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !18
  %i.dj = zext i32 %i.di to i64                   ; 2 uses
  %i.dk = icmp samesign ugt i32 %..i81, 13
  br i1 %i.dk, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.dl = getelementptr i8, ptr @pow5h_table, i64 %i.df
  %i.dm = getelementptr i8, ptr %i.dl, i64 -14
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !15
  %i.do = zext i8 %i.dn to i64
  %i.dp = shl nuw nsw i64 %i.do, 32
  %i.dq = or disjoint i64 %i.dp, %i.dj
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.0.i.i = phi i64 [ %i.dq, %bb.z ], [ %i.dj, %bb.y ]
  %narrow.i.i = select i1 %i.ct, i32 %..i81, i32 0
  %7 = zext nneg i32 %narrow.i.i to i64
  %.1.i.i = shl nuw nsw i64 %.0.i.i, %7
  br label %pow_ui.exit.i

bb.ab:                                            ; preds = %bb.x
  %i.dr = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %..i81, i1 true) ; 4 uses
  %i.ds = sub nsw i32 30, %i.dr                   ; 2 uses
  %i.dt = and i32 %i.dr, 1
  %lcmp.mod.not.not = icmp eq i32 %i.dt, 0
  br i1 %lcmp.mod.not.not, label %.prol.loopexit.unr-lcssa, label %.prol.loopexit

.prol.loopexit.unr-lcssa:                         ; preds = %bb.ab
  %i.du = shl nuw nsw i32 1, %i.ds
  %i.dv = and i32 %i.du, %..i81
  %.not.i.i.prol = icmp eq i32 %i.dv, 0
  %i.dw = select i1 %.not.i.i.prol, i64 1, i64 %i.cs
  %spec.select.i.i.prol = mul i64 %i.cu, %i.dw    ; 2 uses
  %i.dx = sub nsw i32 29, %i.dr
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %bb.ab
  %spec.select.i.i.lcssa.unr = phi i64 [ poison, %bb.ab ], [ %spec.select.i.i.prol, %.prol.loopexit.unr-lcssa ]
  %.234.i.i.unr = phi i64 [ %i.cs, %bb.ab ], [ %spec.select.i.i.prol, %.prol.loopexit.unr-lcssa ]
  %.03033.i.i.unr = phi i32 [ %i.ds, %bb.ab ], [ %i.dx, %.prol.loopexit.unr-lcssa ]
  %i.dy = icmp eq i32 %i.dr, 30
  br i1 %i.dy, label %pow_ui.exit.i, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %.234.i.i = phi i64 [ %spec.select.i.i.1, %.new ], [ %.234.i.i.unr, %.prol.loopexit ] ; 2 uses
  %.03033.i.i = phi i32 [ %i.ei, %.new ], [ %.03033.i.i.unr, %.prol.loopexit ] ; 3 uses
  %i.dz = mul i64 %.234.i.i, %.234.i.i
  %i.ea = shl nuw i32 1, %.03033.i.i
  %i.eb = and i32 %i.ea, %..i81
  %.not.i.i = icmp eq i32 %i.eb, 0
  %i.ec = select i1 %.not.i.i, i64 1, i64 %i.cs
  %spec.select.i.i = mul i64 %i.dz, %i.ec         ; 2 uses
  %i.ed = add nsw i32 %.03033.i.i, -1             ; 2 uses
  %i.ee = mul i64 %spec.select.i.i, %spec.select.i.i
  %i.ef = shl nuw i32 1, %i.ed
  %i.eg = and i32 %i.ef, %..i81
  %.not.i.i.1 = icmp eq i32 %i.eg, 0
  %i.eh = select i1 %.not.i.i.1, i64 1, i64 %i.cs
  %spec.select.i.i.1 = mul i64 %i.ee, %i.eh       ; 2 uses
  %i.ei = add nsw i32 %.03033.i.i, -2
  %.not36.i.i.1 = icmp eq i32 %i.ed, 0
  br i1 %.not36.i.i.1, label %pow_ui.exit.i, label %.new, !llvm.loop !3

pow_ui.exit.i:                                    ; preds = %.prol.loopexit, %.new, %bb.aa, %bb.w, %bb.v
  %.031.i.i = phi i64 [ 1, %bb.v ], [ %i.cs, %bb.w ], [ %.1.i.i, %bb.aa ], [ %spec.select.i.i.lcssa.unr, %.prol.loopexit ], [ %spec.select.i.i.1, %.new ]
  %i.ej = trunc i64 %.031.i.i to i32              ; 2 uses
  %i.ek = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.ej, i1 true) ; 2 uses
  %i.el = shl i32 %i.ej, %i.ek                    ; 3 uses
  %i.em = xor i32 %i.el, -1
  %i.en = zext i32 %i.em to i64
  %i.eo = shl nuw i64 %i.en, 32
  %i.ep = or disjoint i64 %i.eo, 4294967295
  %i.eq = zext i32 %i.el to i64
  %i.er = udiv i64 %i.ep, %i.eq
  %i.es = trunc i64 %i.er to i32
  br label %pow_ui_inv.exit

pow_ui_inv.exit:                                  ; preds = %pow_ui.exit.i, %bb.u, %bb.s
  %.189 = phi i32 [ %.08892, %bb.s ], [ %i.da, %bb.u ], [ %i.ek, %pow_ui.exit.i ] ; 2 uses
  %.187 = phi i32 [ %.08693, %bb.s ], [ %i.dd, %bb.u ], [ %i.es, %pow_ui.exit.i ] ; 2 uses
  %.3 = phi i32 [ %.295, %bb.s ], [ %..i81, %bb.u ], [ %..i81, %pow_ui.exit.i ]
  %.1 = phi i32 [ %.097, %bb.s ], [ %i.db, %bb.u ], [ %i.el, %pow_ui.exit.i ] ; 2 uses
  %i.et = load i32, ptr %0, align 4, !tbaa !18
  %i.eu = tail call fastcc i32 @mp_div1norm(ptr noundef nonnull %i.cq, ptr noundef nonnull %i.cq, i32 noundef %i.et, i32 noundef %.1, i32 noundef %.187, i32 noundef %.189)
  %i.ev = or i32 %i.eu, %.05896                   ; 2 uses
  %.pr.i = load i32, ptr %0, align 4, !tbaa !18   ; 2 uses
  %i.ew = icmp sgt i32 %.pr.i, 1
  br i1 %i.ew, label %.lr.ph.i84, label %mpb_renorm.exit

.lr.ph.i84:                                       ; preds = %pow_ui_inv.exit, %bb.ac
  %i.ex = phi i32 [ %i.fc, %bb.ac ], [ %.pr.i, %pow_ui_inv.exit ] ; 3 uses
  %i.ey = zext nneg i32 %i.ex to i64
  %i.ez = getelementptr [4 x i8], ptr %0, i64 %i.ey
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !18
  %i.fb = icmp eq i32 %i.fa, 0
  br i1 %i.fb, label %bb.ac, label %mpb_renorm.exit

bb.ac:                                            ; preds = %.lr.ph.i84
  %i.fc = add nsw i32 %i.ex, -1                   ; 2 uses
  store i32 %i.fc, ptr %0, align 4, !tbaa !18
  %i.fd = icmp sgt i32 %i.ex, 2
  br i1 %i.fd, label %.lr.ph.i84, label %mpb_renorm.exit, !llvm.loop !4

mpb_renorm.exit:                                  ; preds = %.lr.ph.i84, %bb.ac, %pow_ui_inv.exit
  %i.fe = sub nsw i32 %.16694, %..i81             ; 2 uses
  %.not72 = icmp eq i32 %i.fe, 0
  br i1 %.not72, label %bb.ad, label %bb.s, !llvm.loop !26

bb.ad:                                            ; preds = %mpb_renorm.exit
  %i.ff = add nsw i32 %..i80, %i.cb
  %i.fg = icmp ne i32 %i.ev, 0
  %i.fh = zext i1 %i.fg to i32
  %i.fi = load i32, ptr %i.cq, align 4, !tbaa !18
  %i.fj = or i32 %i.fi, %i.fh
  store i32 %i.fj, ptr %i.cq, align 4, !tbaa !18
  br label %.loopexit

.loopexit:                                        ; preds = %mp_mul1.exit.thread, %.preheader, %bb.ad, %bb.a
  %.064 = phi i32 [ %i.b, %bb.a ], [ %i.ff, %bb.ad ], [ 0, %.preheader ], [ %i.b, %mp_mul1.exit.thread ]
  ret i32 %.064
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @mpb_shr_round(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef range(i32 0, 3) %2) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i32 %1, 0
  br i1 %i.a, label %bb.s, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp slt i32 %1, 0
  br i1 %i.b, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.c = sub nsw i32 0, %1                        ; 3 uses
  %i.d = lshr i32 %i.c, 5                         ; 3 uses
  %i.e = and i32 %i.c, 31                         ; 5 uses
  %.not102 = icmp eq i32 %i.e, 0
  br i1 %.not102, label %mpb_renorm.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.g = load i32, ptr %0, align 4, !tbaa !18     ; 5 uses
  %i.h = sext i32 %i.g to i64                     ; 2 uses
  %i.i = icmp sgt i32 %i.g, 0
  br i1 %i.i, label %.lr.ph.i, label %mp_shl.exit

.lr.ph.i:                                         ; preds = %bb.d
  %i.j = sub nuw nsw i32 32, %i.e                 ; 3 uses
  %i.k = icmp eq i32 %i.g, 1
  br i1 %i.k, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %i.h, 2147483646
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i.new
  %.015.i = phi i32 [ 0, %.lr.ph.i.new ], [ %i.v, %bb.e ]
  %.01314.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.w, %bb.e ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.e ]
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.01314.i ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !18   ; 2 uses
  %i.n = shl i32 %i.m, %i.e
  %i.o = or i32 %i.n, %.015.i
  store i32 %i.o, ptr %i.l, align 4, !tbaa !18
  %i.p = lshr i32 %i.m, %i.j
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.01314.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 4 ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !18   ; 2 uses
  %i.t = shl i32 %i.s, %i.e
  %i.u = or disjoint i32 %i.t, %i.p
  store i32 %i.u, ptr %i.r, align 4, !tbaa !18
  %i.v = lshr i32 %i.s, %i.j                      ; 3 uses
  %i.w = add nuw nsw i64 %.01314.i, 2             ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %mp_shl.exit.loopexit.unr-lcssa, label %bb.e, !llvm.loop !6

mp_shl.exit.loopexit.unr-lcssa:                   ; preds = %bb.e
  %i.x = and i32 %i.g, 1
  %lcmp.mod.not = icmp eq i32 %i.x, 0
  br i1 %lcmp.mod.not, label %mp_shl.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %mp_shl.exit.loopexit.unr-lcssa, %.lr.ph.i
  %.015.i.epil.init = phi i32 [ 0, %.lr.ph.i ], [ %i.v, %mp_shl.exit.loopexit.unr-lcssa ]
  %.01314.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.w, %mp_shl.exit.loopexit.unr-lcssa ]
  %lcmp.mod203 = trunc i32 %i.g to i1
  tail call void @llvm.assume(i1 %lcmp.mod203)
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.01314.i.epil.init ; 2 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !18   ; 2 uses
  %i.aa = shl i32 %i.z, %i.e
  %i.ab = or i32 %i.aa, %.015.i.epil.init
  store i32 %i.ab, ptr %i.y, align 4, !tbaa !18
  %i.ac = lshr i32 %i.z, %i.j
  br label %mp_shl.exit

mp_shl.exit:                                      ; preds = %.epil.preheader, %mp_shl.exit.loopexit.unr-lcssa, %bb.d
  %.0.lcssa.i = phi i32 [ 0, %bb.d ], [ %i.v, %mp_shl.exit.loopexit.unr-lcssa ], [ %i.ac, %.epil.preheader ]
  %i.ad = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.h
  store i32 %.0.lcssa.i, ptr %i.ad, align 4, !tbaa !18
  %i.ae = load i32, ptr %0, align 4, !tbaa !18    ; 2 uses
  %i.af = add nsw i32 %i.ae, 1                    ; 2 uses
  store i32 %i.af, ptr %0, align 4, !tbaa !18
  %i.ag = icmp sgt i32 %i.ae, 0
  br i1 %i.ag, label %.lr.ph.i104, label %mpb_renorm.exit

.lr.ph.i104:                                      ; preds = %mp_shl.exit, %bb.f
  %i.ah = phi i32 [ %i.am, %bb.f ], [ %i.af, %mp_shl.exit ] ; 3 uses
  %i.ai = zext nneg i32 %i.ah to i64
  %i.aj = getelementptr [4 x i8], ptr %0, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !18
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %bb.f, label %mpb_renorm.exit

bb.f:                                             ; preds = %.lr.ph.i104
  %i.am = add nsw i32 %i.ah, -1                   ; 2 uses
  store i32 %i.am, ptr %0, align 4, !tbaa !18
  %i.an = icmp sgt i32 %i.ah, 2
  br i1 %i.an, label %.lr.ph.i104, label %mpb_renorm.exit, !llvm.loop !4

mpb_renorm.exit:                                  ; preds = %bb.f, %.lr.ph.i104, %mp_shl.exit, %bb.c
  %.not103 = icmp eq i32 %i.d, 0
  br i1 %.not103, label %bb.s, label %bb.g

bb.g:                                             ; preds = %mpb_renorm.exit
  %i.ao = load i32, ptr %0, align 4, !tbaa !18    ; 4 uses
  %i.ap = icmp sgt i32 %i.ao, 0
  br i1 %i.ap, label %.lr.ph134, label %.preheader

.lr.ph134:                                        ; preds = %bb.g
  %i.aq = zext nneg i32 %i.ao to i64              ; 5 uses
  %i.ar = zext nneg i32 %i.d to i64
  %invariant.gep166 = getelementptr [4 x i8], ptr %0, i64 %i.ar ; 2 uses
  %min.iters.check186 = icmp ult i32 %i.ao, 8
  br i1 %min.iters.check186, label %scalar.ph185.preheader, label %vector.ph187

vector.ph187:                                     ; preds = %.lr.ph134
  %n.vec188 = and i64 %i.aq, 2147483640           ; 2 uses
  %i.as = and i64 %i.aq, 7
  br label %vector.body189

vector.body189:                                   ; preds = %vector.body189, %vector.ph187
  %index190 = phi i64 [ 0, %vector.ph187 ], [ %index.next193, %vector.body189 ] ; 2 uses
  %i.at = sub i64 %i.aq, %index190                ; 2 uses
  %i.au = getelementptr [4 x i8], ptr %0, i64 %i.at ; 2 uses
  %i.av = getelementptr i8, ptr %i.au, i64 -12
  %i.aw = getelementptr i8, ptr %i.au, i64 -28
  %wide.load191 = load <4 x i32>, ptr %i.av, align 4, !tbaa !18
  %wide.load192 = load <4 x i32>, ptr %i.aw, align 4, !tbaa !18
  %i.ax = getelementptr [4 x i8], ptr %invariant.gep166, i64 %i.at ; 2 uses
  %i.ay = getelementptr i8, ptr %i.ax, i64 -12
  %i.az = getelementptr i8, ptr %i.ax, i64 -28
  store <4 x i32> %wide.load191, ptr %i.ay, align 4, !tbaa !18
  store <4 x i32> %wide.load192, ptr %i.az, align 4, !tbaa !18
  %index.next193 = add nuw i64 %index190, 8       ; 2 uses
  %i.ba = icmp eq i64 %index.next193, %n.vec188
  br i1 %i.ba, label %middle.block194, label %vector.body189, !llvm.loop !27

middle.block194:                                  ; preds = %vector.body189
  %cmp.n195 = icmp eq i64 %n.vec188, %i.aq
  br i1 %cmp.n195, label %.preheader, label %scalar.ph185.preheader

scalar.ph185.preheader:                           ; preds = %.lr.ph134, %middle.block194
  %indvars.iv145.ph = phi i64 [ %i.aq, %.lr.ph134 ], [ %i.as, %middle.block194 ]
  br label %scalar.ph185

.preheader:                                       ; preds = %scalar.ph185, %middle.block194, %bb.g
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.bc = lshr i32 %i.c, 5
  %i.bd = tail call i32 @llvm.umax.i32(i32 %i.bc, i32 1)
  %i.be = shl nuw nsw i32 %i.bd, 2
  %i.bf = zext nneg i32 %i.be to i64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.bb, i8 0, i64 %i.bf, i1 false), !tbaa !18
  %i.bg = add nsw i32 %i.ao, %i.d
  store i32 %i.bg, ptr %0, align 4, !tbaa !18
  br label %bb.s

scalar.ph185:                                     ; preds = %scalar.ph185.preheader, %scalar.ph185
  %indvars.iv145 = phi i64 [ %indvars.iv.next146, %scalar.ph185 ], [ %indvars.iv145.ph, %scalar.ph185.preheader ] ; 4 uses
  %indvars.iv.next146 = add nsw i64 %indvars.iv145, -1
  %i.bh = getelementptr [4 x i8], ptr %0, i64 %indvars.iv145
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !18
  %gep167 = getelementptr [4 x i8], ptr %invariant.gep166, i64 %indvars.iv145
  store i32 %i.bi, ptr %gep167, align 4, !tbaa !18
  %i.bj = icmp samesign ugt i64 %indvars.iv145, 1
  br i1 %i.bj, label %scalar.ph185, label %.preheader, !llvm.loop !28

bb.h:                                             ; preds = %bb.b
  %switch = icmp samesign ult i32 %2, 2
  %.pre = load i32, ptr %0, align 4, !tbaa !18    ; 5 uses
  br i1 %switch, label %bb.i, label %mpb_get_bit.exit107

bb.i:                                             ; preds = %bb.h
  %i.bk = add nsw i32 %1, -1                      ; 2 uses
  %i.bl = lshr i32 %i.bk, 5                       ; 3 uses
  %.not.i = icmp slt i32 %i.bl, %.pre
  br i1 %.not.i, label %mpb_get_bit.exit, label %mpb_get_bit.exit107

mpb_get_bit.exit:                                 ; preds = %bb.i
  %i.bm = and i32 %i.bk, 31                       ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.bo = zext nneg i32 %i.bl to i64              ; 4 uses
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.bo
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !18 ; 2 uses
  %i.br = shl nuw i32 1, %i.bm
  %i.bs = and i32 %i.bq, %i.br
  %.not = icmp eq i32 %i.bs, 0
  br i1 %.not, label %mpb_get_bit.exit107, label %bb.j

bb.j:                                             ; preds = %mpb_get_bit.exit
  %i.bt = icmp eq i32 %2, 1
  br i1 %i.bt, label %mpb_get_bit.exit107, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.not125 = icmp eq i32 %1, 1
  br i1 %.not125, label %.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.not136 = icmp eq i32 %i.bl, 0
  br i1 %.not136, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.l
  %min.iters.check = icmp ult i32 %1, 257
  br i1 %min.iters.check, label %.lr.ph.preheader198, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.bo, 134217720               ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.bw, %vector.body ]
  %vec.phi171 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.bx, %vector.body ]
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %index ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %wide.load = load <4 x i32>, ptr %i.bu, align 4, !tbaa !18
  %wide.load172 = load <4 x i32>, ptr %i.bv, align 4, !tbaa !18
  %i.bw = or <4 x i32> %wide.load, %vec.phi       ; 2 uses
  %i.bx = or <4 x i32> %wide.load172, %vec.phi171 ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.by = icmp eq i64 %index.next, %n.vec
  br i1 %i.by, label %middle.block, label %vector.body, !llvm.loop !29

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <4 x i32> %i.bx, %i.bw
  %i.bz = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %i.bo
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader198

.lr.ph.preheader198:                              ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  %.085128.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %i.bz, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader198, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader198 ] ; 2 uses
  %.085128 = phi i32 [ %i.cc, %.lr.ph ], [ %.085128.ph, %.lr.ph.preheader198 ]
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %indvars.iv
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !18
  %i.cc = or i32 %i.cb, %.085128                  ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.bo
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !30

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.l
  %.085.lcssa = phi i32 [ 0, %bb.l ], [ %i.bz, %middle.block ], [ %i.cc, %.lr.ph ]
  %notmask = shl nsw i32 -1, %i.bm
  %i.cd = xor i32 %notmask, -1
  %i.ce = and i32 %i.bq, %i.cd
  %i.cf = or i32 %i.ce, %.085.lcssa
  %i.cg = icmp eq i32 %i.cf, 0
  br i1 %i.cg, label %.thread, label %mpb_get_bit.exit107

.thread:                                          ; preds = %bb.k, %._crit_edge
  %i.ch = lshr i32 %1, 5                          ; 2 uses
  %.not.i105 = icmp samesign ult i32 %i.ch, %.pre
  br i1 %.not.i105, label %bb.m, label %mpb_get_bit.exit107

bb.m:                                             ; preds = %.thread
  %i.ci = and i32 %1, 31
  %i.cj = zext nneg i32 %i.ch to i64
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.cj
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !18
  %i.cm = lshr i32 %i.cl, %i.ci
  %i.cn = and i32 %i.cm, 1
  br label %mpb_get_bit.exit107

mpb_get_bit.exit107:                              ; preds = %bb.j, %bb.i, %bb.m, %.thread, %mpb_get_bit.exit, %._crit_edge, %bb.h
  %.0 = phi i32 [ 1, %._crit_edge ], [ 0, %bb.h ], [ 0, %bb.i ], [ 0, %mpb_get_bit.exit ], [ 0, %.thread ], [ %i.cn, %bb.m ], [ 1, %bb.j ] ; 2 uses
  %i.co = lshr i32 %1, 5                          ; 4 uses
  %i.cp = and i32 %1, 31
  %.not97 = icmp slt i32 %i.co, %.pre
  br i1 %.not97, label %bb.o, label %bb.n

bb.n:                                             ; preds = %mpb_get_bit.exit107
  store i32 1, ptr %0, align 4, !tbaa !18
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.0, ptr %i.cq, align 4, !tbaa !18
  br label %bb.s

bb.o:                                             ; preds = %mpb_get_bit.exit107
  %.not98 = icmp eq i32 %i.co, 0
  br i1 %.not98, label %.loopexit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cr = sub nuw nsw i32 %.pre, %i.co            ; 6 uses
  store i32 %i.cr, ptr %0, align 4, !tbaa !18
  %.not168 = icmp eq i32 %i.cr, 0
  br i1 %.not168, label %mpb_renorm.exit112, label %.lr.ph131

.lr.ph131:                                        ; preds = %bb.p
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.ct = zext nneg i32 %i.co to i64
  %wide.trip.count143 = zext nneg i32 %i.cr to i64 ; 3 uses
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %i.ct ; 2 uses
  %min.iters.check174 = icmp ult i32 %i.cr, 8
  br i1 %min.iters.check174, label %scalar.ph173.preheader, label %vector.ph175

vector.ph175:                                     ; preds = %.lr.ph131
  %n.vec176 = and i64 %wide.trip.count143, 2147483640 ; 3 uses
  br label %vector.body177

vector.body177:                                   ; preds = %vector.body177, %vector.ph175
  %index178 = phi i64 [ 0, %vector.ph175 ], [ %index.next181, %vector.body177 ] ; 3 uses
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %index178 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %wide.load179 = load <4 x i32>, ptr %i.cu, align 4, !tbaa !18
  %wide.load180 = load <4 x i32>, ptr %i.cv, align 4, !tbaa !18
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %index178 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  store <4 x i32> %wide.load179, ptr %i.cw, align 4, !tbaa !18
  store <4 x i32> %wide.load180, ptr %i.cx, align 4, !tbaa !18
  %index.next181 = add nuw i64 %index178, 8       ; 2 uses
  %i.cy = icmp eq i64 %index.next181, %n.vec176
  br i1 %i.cy, label %middle.block182, label %vector.body177, !llvm.loop !31

middle.block182:                                  ; preds = %vector.body177
  %cmp.n183 = icmp eq i64 %n.vec176, %wide.trip.count143
  br i1 %cmp.n183, label %.loopexit, label %scalar.ph173.preheader

scalar.ph173.preheader:                           ; preds = %.lr.ph131, %middle.block182
  %indvars.iv140.ph = phi i64 [ 0, %.lr.ph131 ], [ %n.vec176, %middle.block182 ]
  br label %scalar.ph173

scalar.ph173:                                     ; preds = %scalar.ph173.preheader, %scalar.ph173
  %indvars.iv140 = phi i64 [ %indvars.iv.next141, %scalar.ph173 ], [ %indvars.iv140.ph, %scalar.ph173.preheader ] ; 3 uses
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv140
  %i.cz = load i32, ptr %gep, align 4, !tbaa !18
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %indvars.iv140
  store i32 %i.cz, ptr %i.da, align 4, !tbaa !18
  %indvars.iv.next141 = add nuw nsw i64 %indvars.iv140, 1 ; 2 uses
  %exitcond144.not = icmp eq i64 %indvars.iv.next141, %wide.trip.count143
  br i1 %exitcond144.not, label %.loopexit, label %scalar.ph173, !llvm.loop !32

.loopexit:                                        ; preds = %scalar.ph173, %middle.block182, %bb.o
  %i.db = phi i32 [ %.pre, %bb.o ], [ %i.cr, %middle.block182 ], [ %i.cr, %scalar.ph173 ] ; 2 uses
  %.not99 = icmp eq i32 %i.cp, 0
  br i1 %.not99, label %mpb_renorm.exit112, label %.lr.ph.i109.preheader

.lr.ph.i109.preheader:                            ; preds = %.loopexit
  %i.dc = zext nneg i32 %i.db to i64
  br label %.lr.ph.i109

.lr.ph.i109:                                      ; preds = %.lr.ph.i109.preheader, %.lr.ph.i109
  %.016.i = phi i32 [ %i.de, %.lr.ph.i109 ], [ 0, %.lr.ph.i109.preheader ]
  %.014.in15.i = phi i64 [ %.014.i, %.lr.ph.i109 ], [ %i.dc, %.lr.ph.i109.preheader ] ; 3 uses
  %.014.i = add nsw i64 %.014.in15.i, -1
  %i.dd = getelementptr [4 x i8], ptr %0, i64 %.014.in15.i ; 2 uses
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !18 ; 2 uses
  %i.df = tail call i32 @llvm.fshr.i32(i32 %.016.i, i32 %i.de, i32 range(i32 1, 32) %1)
  store i32 %i.df, ptr %i.dd, align 4, !tbaa !18
  %i.dg = icmp samesign ugt i64 %.014.in15.i, 1
  br i1 %i.dg, label %.lr.ph.i109, label %mp_shr.exit, !llvm.loop !33

mp_shr.exit:                                      ; preds = %.lr.ph.i109
  %.pr.i110.pr = load i32, ptr %0, align 4, !tbaa !18 ; 3 uses
  %i.dh = icmp sgt i32 %.pr.i110.pr, 1
  br i1 %i.dh, label %.lr.ph.i111, label %mpb_renorm.exit112

.lr.ph.i111:                                      ; preds = %mp_shr.exit, %bb.q
  %i.di = phi i32 [ %i.dn, %bb.q ], [ %.pr.i110.pr, %mp_shr.exit ] ; 4 uses
  %i.dj = zext nneg i32 %i.di to i64
  %i.dk = getelementptr [4 x i8], ptr %0, i64 %i.dj
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !18
  %i.dm = icmp eq i32 %i.dl, 0
  br i1 %i.dm, label %bb.q, label %mpb_renorm.exit112

bb.q:                                             ; preds = %.lr.ph.i111
  %i.dn = add nsw i32 %i.di, -1                   ; 3 uses
  store i32 %i.dn, ptr %0, align 4, !tbaa !18
  %i.do = icmp sgt i32 %i.di, 2
  br i1 %i.do, label %.lr.ph.i111, label %mpb_renorm.exit112, !llvm.loop !4

mpb_renorm.exit112:                               ; preds = %bb.q, %.lr.ph.i111, %bb.p, %mp_shr.exit, %.loopexit
  %i.dp = phi i32 [ 0, %bb.p ], [ %.pr.i110.pr, %mp_shr.exit ], [ %i.db, %.loopexit ], [ %i.dn, %bb.q ], [ %i.di, %.lr.ph.i111 ] ; 3 uses
  %.not100 = icmp eq i32 %.0, 0
  br i1 %.not100, label %bb.s, label %bb.r

bb.r:                                             ; preds = %mpb_renorm.exit112
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.dr = sext i32 %i.dp to i64                   ; 2 uses
  %i.ds = icmp eq i32 %i.dp, 0
  br i1 %i.ds, label %mp_add_ui.exit.thread, label %.lr.ph.i113

.lr.ph.i113:                                      ; preds = %bb.r, %.lr.ph.i113
  %.01415.i = phi i64 [ %i.dx, %.lr.ph.i113 ], [ 0, %bb.r ] ; 2 uses
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.dq, i64 %.01415.i ; 2 uses
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !18
  %i.dv = add i32 %i.du, 1                        ; 2 uses
  %i.dw = icmp eq i32 %i.dv, 0                    ; 2 uses
  store i32 %i.dv, ptr %i.dt, align 4, !tbaa !18
  %i.dx = add nuw i64 %.01415.i, 1                ; 2 uses
  %i.dy = icmp ult i64 %i.dx, %i.dr
  %or.cond.not.i = select i1 %i.dy, i1 %i.dw, i1 false
  br i1 %or.cond.not.i, label %.lr.ph.i113, label %mp_add_ui.exit, !llvm.loop !34

mp_add_ui.exit:                                   ; preds = %.lr.ph.i113
  br i1 %i.dw, label %mp_add_ui.exit.thread, label %bb.s

mp_add_ui.exit.thread:                            ; preds = %bb.r, %mp_add_ui.exit
  %i.dz = add nsw i32 %i.dp, 1
  store i32 %i.dz, ptr %0, align 4, !tbaa !18
  %i.ea = getelementptr inbounds [4 x i8], ptr %i.dq, i64 %i.dr
  store i32 1, ptr %i.ea, align 4, !tbaa !18
  br label %bb.s

bb.s:                                             ; preds = %.preheader, %mpb_renorm.exit, %mp_add_ui.exit, %mp_add_ui.exit.thread, %mpb_renorm.exit112, %bb.n, %bb.a
end_hunk_1
begin_hunk_2_@js_atod:bb.a
  br i1 %or.cond3.i, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ae = add nsw i32 %i.ab, -55
  br label %to_digit.exit

bb.s:                                             ; preds = %bb.q
  %i.af = add i8 %i.aa, -97
  %or.cond5.i = icmp ult i8 %i.af, 26
  %i.ag = add nsw i32 %i.ab, -87
  %spec.select.i = select i1 %or.cond5.i, i32 %i.ag, i32 36
  br label %to_digit.exit

to_digit.exit:                                    ; preds = %.thread370, %bb.r, %bb.s
  %.0.i = phi i32 [ %spec.select.i, %bb.s ], [ %i.ae, %bb.r ], [ %i.ac, %.thread370 ]
  %.not238 = icmp slt i32 %.0.i, %.1205
  br i1 %.not238, label %.thread386, label %.thread415

bb.t:                                             ; preds = %bb.c
  %i.ah = and i32 %3, 1
  %.not233 = icmp eq i32 %i.ah, 0
  br i1 %.not233, label %bb.u, label %.thread368

bb.u:                                             ; preds = %bb.t
  %scevgep.i = getelementptr i8, ptr %.0356, i64 8
  %.not14.i = icmp eq i8 %i.e, 73
  br i1 %.not14.i, label %bb.v, label %.thread368

bb.v:                                             ; preds = %bb.u
  %i.ai = getelementptr inbounds nuw i8, ptr %.0356, i64 1
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !15
  %.not14.1.i = icmp eq i8 %i.aj, 110
  br i1 %.not14.1.i, label %bb.w, label %.thread368

bb.w:                                             ; preds = %bb.v
  %i.ak = getelementptr inbounds nuw i8, ptr %.0356, i64 2
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !15
  %.not14.2.i = icmp eq i8 %i.al, 102
  br i1 %.not14.2.i, label %bb.x, label %.thread368

bb.x:                                             ; preds = %bb.w
  %i.am = getelementptr inbounds nuw i8, ptr %.0356, i64 3
  %i.an = load i8, ptr %i.am, align 1, !tbaa !15
  %.not14.3.i = icmp eq i8 %i.an, 105
  br i1 %.not14.3.i, label %bb.y, label %.thread368

bb.y:                                             ; preds = %bb.x
  %i.ao = getelementptr inbounds nuw i8, ptr %.0356, i64 4
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !15
  %.not14.4.i = icmp eq i8 %i.ap, 110
  br i1 %.not14.4.i, label %bb.z, label %.thread368

bb.z:                                             ; preds = %bb.y
  %i.aq = getelementptr inbounds nuw i8, ptr %.0356, i64 5
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !15
  %.not14.5.i = icmp eq i8 %i.ar, 105
  br i1 %.not14.5.i, label %bb.aa, label %.thread368

bb.aa:                                            ; preds = %bb.z
  %i.as = getelementptr inbounds nuw i8, ptr %.0356, i64 6
  %i.at = load i8, ptr %i.as, align 1, !tbaa !15
  %.not14.6.i = icmp eq i8 %i.at, 116
  br i1 %.not14.6.i, label %bb.ab, label %.thread368

bb.ab:                                            ; preds = %bb.aa
  %i.au = getelementptr inbounds nuw i8, ptr %.0356, i64 7
  %i.av = load i8, ptr %i.au, align 1, !tbaa !15
  %.not14.7.i = icmp eq i8 %i.av, 121
  br i1 %.not14.7.i, label %js__strstart.exit, label %.thread368

.thread368:                                       ; preds = %bb.u, %bb.v, %bb.w, %bb.x, %bb.y, %bb.z, %bb.aa, %bb.ab, %bb.t, %bb.o
  %i.aw = icmp eq i32 %2, 0
  %spec.select466 = select i1 %i.aw, i32 10, i32 %2
  br label %.thread386

.thread386:                                       ; preds = %bb.g, %bb.j, %.thread368, %bb.m, %bb.i, %.thread365, %.critedge, %bb.p, %to_digit.exit
  %.1186384 = phi i32 [ %i.c, %bb.i ], [ %i.c, %.thread368 ], [ %.0185, %to_digit.exit ], [ 256, %.critedge ], [ %i.c, %bb.p ], [ %i.c, %bb.m ], [ %i.c, %.thread365 ], [ %i.c, %bb.j ], [ %i.c, %bb.g ] ; 3 uses
  %.3359382 = phi ptr [ %.0356, %bb.i ], [ %.0356, %.thread368 ], [ %.2358, %to_digit.exit ], [ %.0356, %.critedge ], [ %.0356, %bb.p ], [ %.0356, %bb.m ], [ %.0356, %.thread365 ], [ %.0356, %bb.j ], [ %.0356, %bb.g ]
  %i.ax = phi i32 [ %2, %bb.i ], [ %spec.select466, %.thread368 ], [ %.1205, %to_digit.exit ], [ 10, %.critedge ], [ 10, %bb.p ], [ %2, %bb.m ], [ 10, %.thread365 ], [ 10, %bb.j ], [ %2, %bb.g ] ; 13 uses
  %i.ay = add nsw i32 %i.ax, -2
  %i.az = sext i32 %i.ay to i64                   ; 6 uses
  %i.ba = getelementptr inbounds i8, ptr @atod_max_digits_table, i64 %i.az
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !15
  %i.bc = zext i8 %i.bb to i32
  %i.bd = getelementptr inbounds i8, ptr @digits_per_limb_table, i64 %i.az
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !15
  %i.bf = zext i8 %i.be to i32
  %i.bg = getelementptr inbounds [4 x i8], ptr @radix_base_table, i64 %i.az
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !18
  %i.bi = tail call range(i32 0, 32) i32 @llvm.cttz.i32(i32 %i.ax, i1 true) ; 3 uses
  %i.bj = ashr exact i32 %i.ax, %i.bi             ; 2 uses
  %i.bk = icmp eq i32 %i.bj, 1
  %. = select i1 %i.bk, i32 %i.bi, i32 0          ; 6 uses
  store i32 1, ptr %4, align 4, !tbaa !18
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 19 uses
  store i32 0, ptr %i.bl, align 4, !tbaa !18
  %i.bm = and i32 %3, 1
  %.not239 = icmp eq i32 %i.bm, 0                 ; 5 uses
  br label %bb.ac

bb.ac:                                            ; preds = %.thread392, %.thread386
  %.4360 = phi ptr [ %.3359382, %.thread386 ], [ %i.ch, %.thread392 ] ; 8 uses
  %.0174 = phi i32 [ -1, %.thread386 ], [ %.1175, %.thread392 ] ; 5 uses
  %.0171 = phi i32 [ 0, %.thread386 ], [ %i.ci, %.thread392 ] ; 4 uses
  %i.bn = load i8, ptr %.4360, align 1, !tbaa !15 ; 2 uses
  %i.bo = icmp eq i8 %i.bn, 46
  br i1 %i.bo, label %bb.ad, label %bb.al

bb.ad:                                            ; preds = %bb.ac
  %i.bp = icmp ugt ptr %.4360, %.0356
  br i1 %i.bp, label %bb.ai, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bq = getelementptr inbounds nuw i8, ptr %.4360, i64 1
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !15  ; 3 uses
  %i.bs = zext i8 %i.br to i32                    ; 3 uses
  %i.bt = add nsw i32 %i.bs, -48                  ; 2 uses
  %or.cond.i264 = icmp ult i32 %i.bt, 10
  br i1 %or.cond.i264, label %to_digit.exit269, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.bu = add i8 %i.br, -65
  %or.cond3.i265 = icmp ult i8 %i.bu, 26
  br i1 %or.cond3.i265, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.bv = add nsw i32 %i.bs, -55
  br label %to_digit.exit269

bb.ah:                                            ; preds = %bb.af
  %i.bw = add i8 %i.br, -97
  %or.cond5.i266 = icmp ult i8 %i.bw, 26
  %i.bx = add nsw i32 %i.bs, -87
  %spec.select.i267 = select i1 %or.cond5.i266, i32 %i.bx, i32 36
  br label %to_digit.exit269

to_digit.exit269:                                 ; preds = %bb.ae, %bb.ag, %bb.ah
  %.0.i268 = phi i32 [ %spec.select.i267, %bb.ah ], [ %i.bv, %bb.ag ], [ %i.bt, %bb.ae ]
  %i.by = icmp slt i32 %.0.i268, %i.ax
  %or.cond249 = and i1 %.not239, %i.by
  br i1 %or.cond249, label %bb.aj, label %bb.al

bb.ai:                                            ; preds = %bb.ad
  br i1 %.not239, label %bb.aj, label %bb.al

bb.aj:                                            ; preds = %bb.ai, %to_digit.exit269
  %i.bz = icmp sgt i32 %.0174, -1
  br i1 %i.bz, label %bb.an, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ca = getelementptr inbounds nuw i8, ptr %.4360, i64 1 ; 2 uses
  %.pre = load i8, ptr %i.ca, align 1, !tbaa !15
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.ai, %to_digit.exit269, %bb.ac
  %.pr391 = phi i8 [ %.pre, %bb.ak ], [ 46, %bb.ai ], [ 46, %to_digit.exit269 ], [ %i.bn, %bb.ac ] ; 3 uses
  %.5361 = phi ptr [ %i.ca, %bb.ak ], [ %.4360, %bb.ai ], [ %.4360, %to_digit.exit269 ], [ %.4360, %bb.ac ] ; 4 uses
  %.1175 = phi i32 [ %.0171, %bb.ak ], [ %.0174, %bb.ai ], [ %.0174, %to_digit.exit269 ], [ %.0174, %bb.ac ] ; 2 uses
  %i.cb = zext i8 %.pr391 to i32
  %i.cc = icmp eq i32 %.1186384, %i.cb
  %i.cd = icmp ugt ptr %.5361, %.0356
  %or.cond251 = and i1 %i.cd, %i.cc
  br i1 %or.cond251, label %bb.am, label %thread-pre-split390

bb.am:                                            ; preds = %bb.al
  %i.ce = getelementptr inbounds nuw i8, ptr %.5361, i64 1 ; 2 uses
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !15
  %i.cg = icmp eq i8 %i.cf, 48
  br i1 %i.cg, label %.thread392, label %thread-pre-split390

thread-pre-split390:                              ; preds = %bb.am, %bb.al
  %.not240 = icmp eq i8 %.pr391, 48
  br i1 %.not240, label %.thread392, label %bb.an

.thread392:                                       ; preds = %bb.am, %thread-pre-split390
  %.6395 = phi ptr [ %.5361, %thread-pre-split390 ], [ %i.ce, %bb.am ]
  %i.ch = getelementptr inbounds nuw i8, ptr %.6395, i64 1
  %i.ci = add nuw nsw i32 %.0171, 1
  br label %bb.ac

bb.an:                                            ; preds = %thread-pre-split390, %bb.aj
  %i.cj = phi i8 [ 46, %bb.aj ], [ %.pr391, %thread-pre-split390 ]
  %.7 = phi ptr [ %.4360, %bb.aj ], [ %.5361, %thread-pre-split390 ]
  %.2176 = phi i32 [ %.0174, %bb.aj ], [ %.1175, %thread-pre-split390 ]
  %i.ck = shl nuw i64 1, %i.az
  %i.cl = and i64 %i.ck, 16389
  %.not474 = icmp eq i64 %i.cl, 0
  %scevgep.i288 = getelementptr i8, ptr %4, i64 8 ; 2 uses
  %i.cm = zext i32 %i.bh to i64                   ; 3 uses
  br label %bb.ao

bb.ao:                                            ; preds = %bb.br, %bb.an
  %i.cn = phi i32 [ 1, %bb.an ], [ %.pr425509, %bb.br ] ; 12 uses
  %i.co = phi i32 [ 1, %bb.an ], [ %i.fz, %bb.br ] ; 4 uses
  %.pr397 = phi i32 [ 1, %bb.an ], [ %.pr397505, %bb.br ] ; 3 uses
  %i.cp = phi i8 [ %i.cj, %bb.an ], [ %.pre501, %bb.br ] ; 2 uses
  %.8 = phi ptr [ %.7, %bb.an ], [ %i.dw, %bb.br ] ; 7 uses
  %.0198 = phi i32 [ 0, %bb.an ], [ %.3201, %bb.br ] ; 6 uses
  %.0195 = phi i32 [ 0, %bb.an ], [ %.2197, %bb.br ] ; 3 uses
  %.0191 = phi i32 [ 0, %bb.an ], [ %.2193, %bb.br ] ; 7 uses
  %.0187 = phi i32 [ 0, %bb.an ], [ %.3190, %bb.br ] ; 11 uses
  %.3 = phi i32 [ %.2176, %bb.an ], [ %.4, %bb.br ] ; 5 uses
  %.1172 = phi i32 [ %.0171, %bb.an ], [ %i.dx, %bb.br ] ; 3 uses
  %i.cq = icmp eq i8 %i.cp, 46
  br i1 %i.cq, label %bb.ap, label %bb.ax

bb.ap:                                            ; preds = %bb.ao
  %i.cr = icmp ugt ptr %.8, %.0356
  br i1 %i.cr, label %bb.au, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.cs = getelementptr inbounds nuw i8, ptr %.8, i64 1
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !15  ; 3 uses
  %i.cu = zext i8 %i.ct to i32                    ; 3 uses
  %i.cv = add nsw i32 %i.cu, -48                  ; 2 uses
  %or.cond.i270 = icmp ult i32 %i.cv, 10
  br i1 %or.cond.i270, label %to_digit.exit275, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.cw = add i8 %i.ct, -65
  %or.cond3.i271 = icmp ult i8 %i.cw, 26
  br i1 %or.cond3.i271, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.cx = add nsw i32 %i.cu, -55
  br label %to_digit.exit275

bb.at:                                            ; preds = %bb.ar
  %i.cy = add i8 %i.ct, -97
  %or.cond5.i272 = icmp ult i8 %i.cy, 26
  %i.cz = add nsw i32 %i.cu, -87
  %spec.select.i273 = select i1 %or.cond5.i272, i32 %i.cz, i32 36
  br label %to_digit.exit275

to_digit.exit275:                                 ; preds = %bb.aq, %bb.as, %bb.at
  %.0.i274 = phi i32 [ %spec.select.i273, %bb.at ], [ %i.cx, %bb.as ], [ %i.cv, %bb.aq ]
  %i.da = icmp slt i32 %.0.i274, %i.ax
  %or.cond253 = and i1 %.not239, %i.da
  br i1 %or.cond253, label %bb.av, label %bb.ax

bb.au:                                            ; preds = %bb.ap
  br i1 %.not239, label %bb.av, label %bb.ax

bb.av:                                            ; preds = %bb.au, %to_digit.exit275
  %i.db = icmp sgt i32 %.3, -1
  br i1 %i.db, label %bb.bs, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.dc = getelementptr inbounds nuw i8, ptr %.8, i64 1 ; 2 uses
  %.pre502 = load i8, ptr %i.dc, align 1, !tbaa !15
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.au, %to_digit.exit275, %bb.ao
  %i.dd = phi i8 [ %.pre502, %bb.aw ], [ 46, %bb.au ], [ 46, %to_digit.exit275 ], [ %i.cp, %bb.ao ] ; 2 uses
  %.9 = phi ptr [ %i.dc, %bb.aw ], [ %.8, %bb.au ], [ %.8, %to_digit.exit275 ], [ %.8, %bb.ao ] ; 4 uses
  %.4 = phi i32 [ %.1172, %bb.aw ], [ %.3, %bb.au ], [ %.3, %to_digit.exit275 ], [ %.3, %bb.ao ] ; 2 uses
  %i.de = zext i8 %i.dd to i32                    ; 2 uses
  %i.df = icmp eq i32 %.1186384, %i.de
  %i.dg = icmp ugt ptr %.9, %.0356
  %or.cond255 = and i1 %i.dg, %i.df
  br i1 %or.cond255, label %bb.ay, label %bb.bc

bb.ay:                                            ; preds = %bb.ax
  %i.dh = getelementptr inbounds nuw i8, ptr %.9, i64 1 ; 2 uses
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !15  ; 3 uses
  %i.dj = zext i8 %i.di to i32                    ; 3 uses
  %i.dk = add nsw i32 %i.dj, -48                  ; 2 uses
  %or.cond.i276 = icmp ult i32 %i.dk, 10
  br i1 %or.cond.i276, label %to_digit.exit281, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.dl = add i8 %i.di, -65
  %or.cond3.i277 = icmp ult i8 %i.dl, 26
  br i1 %or.cond3.i277, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.dm = add nsw i32 %i.dj, -55
  br label %to_digit.exit281

bb.bb:                                            ; preds = %bb.az
  %i.dn = add i8 %i.di, -97
  %or.cond5.i278 = icmp ult i8 %i.dn, 26
  %i.do = add nsw i32 %i.dj, -87
  %spec.select.i279 = select i1 %or.cond5.i278, i32 %i.do, i32 36
  br label %to_digit.exit281

to_digit.exit281:                                 ; preds = %bb.ay, %bb.ba, %bb.bb
  %.0.i280 = phi i32 [ %spec.select.i279, %bb.bb ], [ %i.dm, %bb.ba ], [ %i.dk, %bb.ay ]
  %i.dp = icmp slt i32 %.0.i280, %i.ax
  %spec.select467 = select i1 %i.dp, ptr %i.dh, ptr %.9 ; 2 uses
  %.pre503 = load i8, ptr %spec.select467, align 1, !tbaa !15 ; 2 uses
  %.pre512 = zext i8 %.pre503 to i32
  br label %bb.bc

bb.bc:                                            ; preds = %to_digit.exit281, %bb.ax
  %.pre-phi513 = phi i32 [ %.pre512, %to_digit.exit281 ], [ %i.de, %bb.ax ] ; 3 uses
  %i.dq = phi i8 [ %.pre503, %to_digit.exit281 ], [ %i.dd, %bb.ax ] ; 2 uses
  %.10 = phi ptr [ %spec.select467, %to_digit.exit281 ], [ %.9, %bb.ax ] ; 2 uses
  %i.dr = add nsw i32 %.pre-phi513, -48           ; 2 uses
  %or.cond.i282 = icmp ult i32 %i.dr, 10
  br i1 %or.cond.i282, label %to_digit.exit287, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.ds = add i8 %i.dq, -65
  %or.cond3.i283 = icmp ult i8 %i.ds, 26
  br i1 %or.cond3.i283, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.dt = add nsw i32 %.pre-phi513, -55
  br label %to_digit.exit287

bb.bf:                                            ; preds = %bb.bd
  %i.du = add i8 %i.dq, -97
  %or.cond5.i284 = icmp ult i8 %i.du, 26
  %i.dv = add nsw i32 %.pre-phi513, -87
  %spec.select.i285 = select i1 %or.cond5.i284, i32 %i.dv, i32 36
  br label %to_digit.exit287

to_digit.exit287:                                 ; preds = %bb.bc, %bb.be, %bb.bf
  %.0.i286 = phi i32 [ %spec.select.i285, %bb.bf ], [ %i.dt, %bb.be ], [ %i.dr, %bb.bc ] ; 3 uses
  %.not242 = icmp ult i32 %.0.i286, %i.ax
  br i1 %.not242, label %bb.bg, label %bb.bs

bb.bg:                                            ; preds = %to_digit.exit287
  %i.dw = getelementptr inbounds nuw i8, ptr %.10, i64 1 ; 2 uses
  %i.dx = add nuw nsw i32 %.1172, 1
  %i.dy = icmp slt i32 %.0191, %i.bc
  br i1 %i.dy, label %bb.bh, label %bb.bq

bb.bh:                                            ; preds = %bb.bg
  %i.dz = mul i32 %.0198, %i.ax
  %i.ea = add i32 %.0.i286, %i.dz                 ; 5 uses
  %i.eb = add nsw i32 %.0187, 1                   ; 2 uses
  %i.ec = icmp eq i32 %i.eb, %i.bf
  br i1 %i.ec, label %bb.bi, label %mpb_mul1_base.exit

bb.bi:                                            ; preds = %bb.bh
  %i.ed = load i32, ptr %i.bl, align 4, !tbaa !18
  %i.ee = icmp eq i32 %i.ed, 0
  br i1 %i.ee, label %bb.bj, label %thread-pre-split396

bb.bj:                                            ; preds = %bb.bi
  %i.ef = icmp eq i32 %i.co, 1
  br i1 %i.ef, label %bb.bk, label %thread-pre-split396

bb.bk:                                            ; preds = %bb.bj
  store i32 %i.ea, ptr %i.bl, align 4, !tbaa !18
  br label %mpb_mul1_base.exit

thread-pre-split396:                              ; preds = %bb.bi, %bb.bj
  %i.eg = phi i32 [ %i.co, %bb.bj ], [ %.pr397, %bb.bi ] ; 8 uses
  br i1 %.not474, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %thread-pre-split396
  %i.eh = icmp sgt i32 %i.eg, -1
  br i1 %i.eh, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %bb.bl
  %i.ei = add nuw i32 %i.eg, 1
  %i.ej = zext i32 %i.ei to i64
  %i.ek = shl nuw nsw i64 %i.ej, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i288, ptr noundef nonnull align 4 dereferenceable(1) %i.bl, i64 %i.ek, i1 false), !tbaa !18
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.preheader.i, %bb.bl
  store i32 %i.ea, ptr %i.bl, align 4, !tbaa !18
  br label %bb.bo

bb.bm:                                            ; preds = %thread-pre-split396
  %.not.i.i = icmp eq i32 %i.eg, 0
  br i1 %.not.i.i, label %mp_mul1.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.bm
  %i.el = zext i32 %i.ea to i64                   ; 2 uses
  %wide.trip.count.i.i = zext i32 %i.eg to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i, 1
  %i.em = icmp eq i32 %i.eg, 1
  br i1 %i.em, label %.epil.preheader, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %unroll_iter = and i64 %wide.trip.count.i.i, 4294967294
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bn, %.lr.ph.i.i.new
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %indvars.iv.next.i.i.1, %bb.bn ] ; 3 uses
  %.01112.i.i = phi i64 [ %i.el, %.lr.ph.i.i.new ], [ %i.fb, %bb.bn ]
  %niter = phi i64 [ 0, %.lr.ph.i.i.new ], [ %niter.next.1, %bb.bn ]
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %indvars.iv.i.i ; 2 uses
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !18
  %i.ep = zext i32 %i.eo to i64
  %i.eq = mul nuw i64 %i.ep, %i.cm
  %i.er = add nuw i64 %i.eq, %.01112.i.i          ; 2 uses
  %i.es = trunc i64 %i.er to i32
  store i32 %i.es, ptr %i.en, align 4, !tbaa !18
  %i.et = lshr i64 %i.er, 32
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %indvars.iv.i.i
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 4 ; 2 uses
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !18
  %i.ex = zext i32 %i.ew to i64
  %i.ey = mul nuw i64 %i.ex, %i.cm
  %i.ez = add nuw i64 %i.ey, %i.et                ; 2 uses
  %i.fa = trunc i64 %i.ez to i32
  store i32 %i.fa, ptr %i.ev, align 4, !tbaa !18
  %i.fb = lshr i64 %i.ez, 32                      ; 3 uses
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.i.i.unr-lcssa, label %bb.bn, !llvm.loop !5

._crit_edge.loopexit.i.i.unr-lcssa:               ; preds = %bb.bn
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.i.i.unr-lcssa, %.lr.ph.i.i
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i.1, %._crit_edge.loopexit.i.i.unr-lcssa ]
  %.01112.i.i.epil.init = phi i64 [ %i.el, %.lr.ph.i.i ], [ %i.fb, %._crit_edge.loopexit.i.i.unr-lcssa ]
  %lcmp.mod558 = trunc i32 %i.eg to i1
  tail call void @llvm.assume(i1 %lcmp.mod558)
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %indvars.iv.i.i.epil.init ; 2 uses
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !18
  %i.fe = zext i32 %i.fd to i64
  %i.ff = mul nuw i64 %i.fe, %i.cm
  %i.fg = add nuw i64 %i.ff, %.01112.i.i.epil.init ; 2 uses
  %i.fh = trunc i64 %i.fg to i32
  store i32 %i.fh, ptr %i.fc, align 4, !tbaa !18
  %i.fi = lshr i64 %i.fg, 32
  br label %._crit_edge.loopexit.i.i

._crit_edge.loopexit.i.i:                         ; preds = %._crit_edge.loopexit.i.i.unr-lcssa, %.epil.preheader
  %.lcssa554 = phi i64 [ %i.fb, %._crit_edge.loopexit.i.i.unr-lcssa ], [ %i.fi, %.epil.preheader ]
  %i.fj = trunc nuw i64 %.lcssa554 to i32
  br label %mp_mul1.exit.i

mp_mul1.exit.i:                                   ; preds = %._crit_edge.loopexit.i.i, %bb.bm
  %.011.lcssa.i.i = phi i32 [ %i.ea, %bb.bm ], [ %i.fj, %._crit_edge.loopexit.i.i ]
  %i.fk = sext i32 %i.eg to i64
  %i.fl = getelementptr inbounds [4 x i8], ptr %i.bl, i64 %i.fk
  store i32 %.011.lcssa.i.i, ptr %i.fl, align 4, !tbaa !18
  %.pre.i = load i32, ptr %4, align 4, !tbaa !18
  br label %bb.bo

bb.bo:                                            ; preds = %mp_mul1.exit.i, %._crit_edge.i
  %i.fm = phi i32 [ %.pre.i, %mp_mul1.exit.i ], [ %i.eg, %._crit_edge.i ] ; 2 uses
  %i.fn = add nsw i32 %i.fm, 1                    ; 5 uses
  store i32 %i.fn, ptr %4, align 4, !tbaa !18
  %i.fo = icmp sgt i32 %i.fm, 0
  br i1 %i.fo, label %.lr.ph.i23.i, label %mpb_mul1_base.exit

.lr.ph.i23.i:                                     ; preds = %bb.bo, %bb.bp
  %i.fp = phi i32 [ %i.fu, %bb.bp ], [ %i.fn, %bb.bo ] ; 6 uses
  %i.fq = zext nneg i32 %i.fp to i64
  %i.fr = getelementptr [4 x i8], ptr %4, i64 %i.fq
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !18
  %i.ft = icmp eq i32 %i.fs, 0
  br i1 %i.ft, label %bb.bp, label %mpb_mul1_base.exit

bb.bp:                                            ; preds = %.lr.ph.i23.i
  %i.fu = add nsw i32 %i.fp, -1                   ; 5 uses
  store i32 %i.fu, ptr %4, align 4, !tbaa !18
  %i.fv = icmp sgt i32 %i.fp, 2
  br i1 %i.fv, label %.lr.ph.i23.i, label %mpb_mul1_base.exit, !llvm.loop !4

mpb_mul1_base.exit:                               ; preds = %bb.bp, %.lr.ph.i23.i, %bb.bo, %bb.bk, %bb.bh
  %.pr425510 = phi i32 [ %i.cn, %bb.bh ], [ %i.cn, %bb.bk ], [ %i.fn, %bb.bo ], [ %i.fu, %bb.bp ], [ %i.fp, %.lr.ph.i23.i ]
  %i.fw = phi i32 [ %i.co, %bb.bh ], [ 1, %bb.bk ], [ %i.fn, %bb.bo ], [ %i.fu, %bb.bp ], [ %i.fp, %.lr.ph.i23.i ]
  %.pr397506 = phi i32 [ %.pr397, %bb.bh ], [ 1, %bb.bk ], [ %i.fn, %bb.bo ], [ %i.fu, %bb.bp ], [ %i.fp, %.lr.ph.i23.i ]
  %.1199 = phi i32 [ %i.ea, %bb.bh ], [ 0, %bb.bk ], [ 0, %bb.bo ], [ 0, %.lr.ph.i23.i ], [ 0, %bb.bp ]
  %.1188 = phi i32 [ %i.eb, %bb.bh ], [ 0, %bb.bk ], [ 0, %bb.bo ], [ 0, %.lr.ph.i23.i ], [ 0, %bb.bp ]
  %i.fx = add nsw i32 %.0191, 1
  br label %bb.br

bb.bq:                                            ; preds = %bb.bg
  %i.fy = or i32 %.0.i286, %.0195
  br label %bb.br

bb.br:                                            ; preds = %mpb_mul1_base.exit, %bb.bq
  %.pr425509 = phi i32 [ %.pr425510, %mpb_mul1_base.exit ], [ %i.cn, %bb.bq ]
  %i.fz = phi i32 [ %i.fw, %mpb_mul1_base.exit ], [ %i.co, %bb.bq ]
  %.pr397505 = phi i32 [ %.pr397506, %mpb_mul1_base.exit ], [ %.pr397, %bb.bq ]
  %.3201 = phi i32 [ %.1199, %mpb_mul1_base.exit ], [ %.0198, %bb.bq ]
  %.2197 = phi i32 [ %.0195, %mpb_mul1_base.exit ], [ %i.fy, %bb.bq ]
  %.2193 = phi i32 [ %i.fx, %mpb_mul1_base.exit ], [ %.0191, %bb.bq ]
  %.3190 = phi i32 [ %.1188, %mpb_mul1_base.exit ], [ %.0187, %bb.bq ]
  %.pre501 = load i8, ptr %i.dw, align 1, !tbaa !15
  br label %bb.ao

bb.bs:                                            ; preds = %bb.av, %to_digit.exit287
  %.11.ph = phi ptr [ %.10, %to_digit.exit287 ], [ %.8, %bb.av ] ; 10 uses
  %.5.ph = phi i32 [ %.4, %to_digit.exit287 ], [ %.3, %bb.av ] ; 2 uses
  switch i32 %.0187, label %bb.bu [
    i32 0, label %mpb_mul1_base.exit308
    i32 1, label %bb.bt
  ]

bb.bt:                                            ; preds = %bb.bs
  %i.ga = zext i32 %i.ax to i64
  br label %pow_ui.exit

bb.bu:                                            ; preds = %bb.bs
  %i.gb = icmp eq i32 %i.ax, 5
  %i.gc = icmp eq i32 %i.ax, 10                   ; 2 uses
  %or.cond.i289 = or i1 %i.gb, %i.gc
  %i.gd = icmp ult i32 %.0187, 18
  %or.cond3.i290 = and i1 %or.cond.i289, %i.gd
  br i1 %or.cond3.i290, label %bb.bv, label %bb.by

bb.bv:                                            ; preds = %bb.bu
  %i.ge = zext nneg i32 %.0187 to i64             ; 2 uses
  %i.gf = getelementptr [4 x i8], ptr @pow5_table, i64 %i.ge
  %i.gg = getelementptr i8, ptr %i.gf, i64 -4
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !18
  %i.gi = zext i32 %i.gh to i64                   ; 2 uses
  %i.gj = icmp samesign ugt i32 %.0187, 13
  br i1 %i.gj, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.gk = getelementptr i8, ptr @pow5h_table, i64 %i.ge
  %i.gl = getelementptr i8, ptr %i.gk, i64 -14
  %i.gm = load i8, ptr %i.gl, align 1, !tbaa !15
  %i.gn = zext i8 %i.gm to i64
  %i.go = shl nuw nsw i64 %i.gn, 32
  %i.gp = or disjoint i64 %i.go, %i.gi
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  %.0.i292 = phi i64 [ %i.gp, %bb.bw ], [ %i.gi, %bb.bv ]
  %narrow.i = select i1 %i.gc, i32 %.0187, i32 0
  %5 = zext nneg i32 %narrow.i to i64
  %.1.i = shl nuw nsw i64 %.0.i292, %5
  br label %pow_ui.exit

bb.by:                                            ; preds = %bb.bu
  %i.gq = zext i32 %i.ax to i64                   ; 6 uses
  %i.gr = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %.0187, i1 true) ; 4 uses
  %i.gs = sub nsw i32 30, %i.gr                   ; 2 uses
  %i.gt = and i32 %i.gr, 1
  %lcmp.mod560.not.not = icmp eq i32 %i.gt, 0
  br i1 %lcmp.mod560.not.not, label %.prol.loopexit.unr-lcssa, label %.prol.loopexit

.prol.loopexit.unr-lcssa:                         ; preds = %bb.by
  %i.gu = mul nuw i64 %i.gq, %i.gq
  %i.gv = shl nuw nsw i32 1, %i.gs
  %i.gw = and i32 %i.gv, %.0187
  %.not.i.prol = icmp eq i32 %i.gw, 0
  %i.gx = select i1 %.not.i.prol, i64 1, i64 %i.gq
  %spec.select.i291.prol = mul i64 %i.gu, %i.gx   ; 2 uses
  %i.gy = sub nsw i32 29, %i.gr
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %bb.by
  %spec.select.i291.lcssa.unr = phi i64 [ poison, %bb.by ], [ %spec.select.i291.prol, %.prol.loopexit.unr-lcssa ]
  %.234.i.unr = phi i64 [ %i.gq, %bb.by ], [ %spec.select.i291.prol, %.prol.loopexit.unr-lcssa ]
  %.03033.i.unr = phi i32 [ %i.gs, %bb.by ], [ %i.gy, %.prol.loopexit.unr-lcssa ]
  %i.gz = icmp eq i32 %i.gr, 30
  br i1 %i.gz, label %pow_ui.exit, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %.234.i = phi i64 [ %spec.select.i291.1, %.new ], [ %.234.i.unr, %.prol.loopexit ] ; 2 uses
  %.03033.i = phi i32 [ %i.hj, %.new ], [ %.03033.i.unr, %.prol.loopexit ] ; 3 uses
  %i.ha = mul i64 %.234.i, %.234.i
  %i.hb = shl nuw i32 1, %.03033.i
  %i.hc = and i32 %i.hb, %.0187
  %.not.i = icmp eq i32 %i.hc, 0
  %i.hd = select i1 %.not.i, i64 1, i64 %i.gq
  %spec.select.i291 = mul i64 %i.ha, %i.hd        ; 2 uses
  %i.he = add nsw i32 %.03033.i, -1               ; 2 uses
  %i.hf = mul i64 %spec.select.i291, %spec.select.i291
  %i.hg = shl nuw i32 1, %i.he
  %i.hh = and i32 %i.hg, %.0187
  %.not.i.1 = icmp eq i32 %i.hh, 0
  %i.hi = select i1 %.not.i.1, i64 1, i64 %i.gq
  %spec.select.i291.1 = mul i64 %i.hf, %i.hi      ; 2 uses
  %i.hj = add nsw i32 %.03033.i, -2
  %.not36.i.1 = icmp eq i32 %i.he, 0
  br i1 %.not36.i.1, label %pow_ui.exit, label %.new, !llvm.loop !3

pow_ui.exit:                                      ; preds = %.prol.loopexit, %.new, %bb.bt, %bb.bx
  %.031.i = phi i64 [ %.1.i, %bb.bx ], [ %i.ga, %bb.bt ], [ %spec.select.i291.lcssa.unr, %.prol.loopexit ], [ %spec.select.i291.1, %.new ]
  %i.hk = load i32, ptr %i.bl, align 4, !tbaa !18
  %i.hl = icmp eq i32 %i.hk, 0
  %i.hm = icmp eq i32 %i.cn, 1
  %or.cond549 = select i1 %i.hl, i1 %i.hm, i1 false
  br i1 %or.cond549, label %bb.bz, label %thread-pre-split424

bb.bz:                                            ; preds = %pow_ui.exit
  store i32 %.0198, ptr %i.bl, align 4, !tbaa !18
  br label %mpb_mul1_base.exit308

thread-pre-split424:                              ; preds = %pow_ui.exit
  %i.hn = and i64 %.031.i, 4294967295             ; 4 uses
  %i.ho = icmp eq i64 %i.hn, 0
  br i1 %i.ho, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %thread-pre-split424
  %i.hp = icmp sgt i32 %i.cn, -1
  br i1 %i.hp, label %.lr.ph.preheader.i306, label %._crit_edge.i305

.lr.ph.preheader.i306:                            ; preds = %bb.ca
  %i.hq = add nuw i32 %i.cn, 1
  %i.hr = zext i32 %i.hq to i64
  %i.hs = shl nuw nsw i64 %i.hr, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i288, ptr noundef nonnull align 4 dereferenceable(1) %i.bl, i64 %i.hs, i1 false), !tbaa !18
  br label %._crit_edge.i305

._crit_edge.i305:                                 ; preds = %.lr.ph.preheader.i306, %bb.ca
  store i32 %.0198, ptr %i.bl, align 4, !tbaa !18
  br label %bb.cd

bb.cb:                                            ; preds = %thread-pre-split424
  %.not.i.i293 = icmp eq i32 %i.cn, 0
  br i1 %.not.i.i293, label %mp_mul1.exit.i301, label %.lr.ph.i.i294

.lr.ph.i.i294:                                    ; preds = %bb.cb
  %i.ht = zext i32 %.0198 to i64                  ; 2 uses
  %wide.trip.count.i.i295 = zext i32 %i.cn to i64 ; 2 uses
  %xtraiter562 = and i64 %wide.trip.count.i.i295, 1
  %i.hu = icmp eq i32 %i.cn, 1
  br i1 %i.hu, label %.epil.preheader561, label %.lr.ph.i.i294.new

.lr.ph.i.i294.new:                                ; preds = %.lr.ph.i.i294
  %unroll_iter566 = and i64 %wide.trip.count.i.i295, 4294967294
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cc, %.lr.ph.i.i294.new
  %indvars.iv.i.i296 = phi i64 [ 0, %.lr.ph.i.i294.new ], [ %indvars.iv.next.i.i298.1, %bb.cc ] ; 3 uses
  %.01112.i.i297 = phi i64 [ %i.ht, %.lr.ph.i.i294.new ], [ %i.ij, %bb.cc ]
  %niter567 = phi i64 [ 0, %.lr.ph.i.i294.new ], [ %niter567.next.1, %bb.cc ]
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %indvars.iv.i.i296 ; 2 uses
  %i.hw = load i32, ptr %i.hv, align 4, !tbaa !18
  %i.hx = zext i32 %i.hw to i64
  %i.hy = mul nuw i64 %i.hn, %i.hx
  %i.hz = add nuw i64 %i.hy, %.01112.i.i297       ; 2 uses
  %i.ia = trunc i64 %i.hz to i32
  store i32 %i.ia, ptr %i.hv, align 4, !tbaa !18
  %i.ib = lshr i64 %i.hz, 32
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %indvars.iv.i.i296
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 4 ; 2 uses
  %i.ie = load i32, ptr %i.id, align 4, !tbaa !18
  %i.if = zext i32 %i.ie to i64
  %i.ig = mul nuw i64 %i.hn, %i.if
  %i.ih = add nuw i64 %i.ig, %i.ib                ; 2 uses
  %i.ii = trunc i64 %i.ih to i32
  store i32 %i.ii, ptr %i.id, align 4, !tbaa !18
  %i.ij = lshr i64 %i.ih, 32                      ; 3 uses
  %indvars.iv.next.i.i298.1 = add nuw nsw i64 %indvars.iv.i.i296, 2 ; 2 uses
  %niter567.next.1 = add i64 %niter567, 2         ; 2 uses
  %niter567.ncmp.1 = icmp eq i64 %niter567.next.1, %unroll_iter566
  br i1 %niter567.ncmp.1, label %._crit_edge.loopexit.i.i300.unr-lcssa, label %bb.cc, !llvm.loop !5

._crit_edge.loopexit.i.i300.unr-lcssa:            ; preds = %bb.cc
  %lcmp.mod563.not = icmp eq i64 %xtraiter562, 0
  br i1 %lcmp.mod563.not, label %._crit_edge.loopexit.i.i300, label %.epil.preheader561

.epil.preheader561:                               ; preds = %._crit_edge.loopexit.i.i300.unr-lcssa, %.lr.ph.i.i294
  %indvars.iv.i.i296.epil.init = phi i64 [ 0, %.lr.ph.i.i294 ], [ %indvars.iv.next.i.i298.1, %._crit_edge.loopexit.i.i300.unr-lcssa ]
  %.01112.i.i297.epil.init = phi i64 [ %i.ht, %.lr.ph.i.i294 ], [ %i.ij, %._crit_edge.loopexit.i.i300.unr-lcssa ]
  %lcmp.mod565 = trunc i32 %i.cn to i1
  tail call void @llvm.assume(i1 %lcmp.mod565)
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %indvars.iv.i.i296.epil.init ; 2 uses
  %i.il = load i32, ptr %i.ik, align 4, !tbaa !18
  %i.im = zext i32 %i.il to i64
  %i.in = mul nuw i64 %i.hn, %i.im
  %i.io = add nuw i64 %i.in, %.01112.i.i297.epil.init ; 2 uses
  %i.ip = trunc i64 %i.io to i32
  store i32 %i.ip, ptr %i.ik, align 4, !tbaa !18
  %i.iq = lshr i64 %i.io, 32
  br label %._crit_edge.loopexit.i.i300

._crit_edge.loopexit.i.i300:                      ; preds = %._crit_edge.loopexit.i.i300.unr-lcssa, %.epil.preheader561
  %.lcssa = phi i64 [ %i.ij, %._crit_edge.loopexit.i.i300.unr-lcssa ], [ %i.iq, %.epil.preheader561 ]
  %i.ir = trunc nuw i64 %.lcssa to i32
  br label %mp_mul1.exit.i301

mp_mul1.exit.i301:                                ; preds = %._crit_edge.loopexit.i.i300, %bb.cb
  %.011.lcssa.i.i302 = phi i32 [ %.0198, %bb.cb ], [ %i.ir, %._crit_edge.loopexit.i.i300 ]
  %i.is = sext i32 %i.cn to i64
  %i.it = getelementptr inbounds [4 x i8], ptr %i.bl, i64 %i.is
  store i32 %.011.lcssa.i.i302, ptr %i.it, align 4, !tbaa !18
  %.pre.i303 = load i32, ptr %4, align 4, !tbaa !18
  br label %bb.cd

bb.cd:                                            ; preds = %mp_mul1.exit.i301, %._crit_edge.i305
  %i.iu = phi i32 [ %.pre.i303, %mp_mul1.exit.i301 ], [ %i.cn, %._crit_edge.i305 ] ; 2 uses
  %i.iv = add nsw i32 %i.iu, 1                    ; 2 uses
  store i32 %i.iv, ptr %4, align 4, !tbaa !18
  %i.iw = icmp sgt i32 %i.iu, 0
  br i1 %i.iw, label %.lr.ph.i23.i304, label %mpb_mul1_base.exit308

.lr.ph.i23.i304:                                  ; preds = %bb.cd, %bb.ce
  %i.ix = phi i32 [ %i.jc, %bb.ce ], [ %i.iv, %bb.cd ] ; 3 uses
  %i.iy = zext nneg i32 %i.ix to i64
  %i.iz = getelementptr [4 x i8], ptr %4, i64 %i.iy
  %i.ja = load i32, ptr %i.iz, align 4, !tbaa !18
  %i.jb = icmp eq i32 %i.ja, 0
  br i1 %i.jb, label %bb.ce, label %mpb_mul1_base.exit308

bb.ce:                                            ; preds = %.lr.ph.i23.i304
  %i.jc = add nsw i32 %i.ix, -1                   ; 2 uses
  store i32 %i.jc, ptr %4, align 4, !tbaa !18
  %i.jd = icmp sgt i32 %i.ix, 2
  br i1 %i.jd, label %.lr.ph.i23.i304, label %mpb_mul1_base.exit308, !llvm.loop !4

mpb_mul1_base.exit308:                            ; preds = %bb.ce, %.lr.ph.i23.i304, %bb.bs, %bb.cd, %bb.bz
  %i.je = icmp ne i32 %.0191, 0                   ; 2 uses
  %i.jf = icmp slt i32 %.5.ph, 0
  %spec.select = select i1 %i.jf, i32 %.1172, i32 %.5.ph
  %i.jg = add nsw i32 %.0191, %.0171
  %i.jh = sub i32 %i.jg, %spec.select             ; 2 uses
  %i.ji = icmp ne i32 %., 0                       ; 2 uses
  %i.jj = icmp ne i32 %.0195, 0
  %or.cond12 = select i1 %i.ji, i1 %i.jj, i1 false
  br i1 %or.cond12, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %mpb_mul1_base.exit308
  %i.jk = load i32, ptr %i.bl, align 4, !tbaa !18
  %i.jl = or i32 %i.jk, 1
  store i32 %i.jl, ptr %i.bl, align 4, !tbaa !18
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %mpb_mul1_base.exit308
  br i1 %.not239, label %bb.ch, label %.thread443

bb.ch:                                            ; preds = %bb.cg
  %cond = icmp eq i32 %i.ax, 10
  %i.jm = load i8, ptr %.11.ph, align 1, !tbaa !15 ; 7 uses
  br i1 %cond, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %bb.ch
end_hunk_2
