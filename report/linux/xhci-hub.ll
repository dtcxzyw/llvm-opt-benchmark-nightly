Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/xhci-hub?download=true
inline.NumInlined: 146
inline.NumDeleted: 41
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@xhci_hub_control:bb.a

bb.d:                                             ; preds = %xhci_get_rhub.exit
  store i32 0, ptr %4, align 1
  br label %xhci_hub_descriptor.exit

bb.e:                                             ; preds = %xhci_get_rhub.exit
  %i.r = load i32, ptr %i.j, align 8
  %i.s = icmp sgt i32 %i.r, 63
  br i1 %i.s, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.t = icmp ult i16 %5, 12
  %.mask262 = and i16 %2, -256
  %i.u = icmp ne i16 %.mask262, 10752
  %or.cond = or i1 %i.u, %i.t
  br i1 %or.cond, label %xhci_hub_descriptor.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr i8, ptr %.0.i, i64 1120
  %i.w = getelementptr i8, ptr %.0.i, i64 1128
  %i.x = load i32, ptr %i.w, align 8              ; 3 uses
  %i.y = getelementptr i8, ptr %4, i64 6
  store i8 0, ptr %i.y, align 1
  %i.z = trunc i32 %i.x to i8
  %i.aa = getelementptr i8, ptr %4, i64 2
  store i8 %i.z, ptr %i.aa, align 1
  %i.ab = getelementptr i8, ptr %.0.i, i64 640
  %i.ac = load i32, ptr %i.ab, align 8
  %i.ad = and i32 %i.ac, 8
  %.not.i.i.i = icmp eq i32 %i.ad, 0
  %..i.i.i = select i1 %.not.i.i.i, i16 10, i16 9
  %i.ae = getelementptr i8, ptr %4, i64 3
  store i16 %..i.i.i, ptr %i.ae, align 1
  %i.af = getelementptr i8, ptr %4, i64 1
  store i8 42, ptr %i.af, align 1
  store i8 12, ptr %4, align 1
  %i.ag = getelementptr i8, ptr %4, i64 5
  store i8 50, ptr %i.ag, align 1
  %i.ah = getelementptr i8, ptr %4, i64 7
  store i8 0, ptr %i.ah, align 1
  %i.ai = getelementptr i8, ptr %4, i64 8
  store i16 0, ptr %i.ai, align 1
  %.not3.i.i = icmp eq i32 %i.x, 0
  br i1 %.not3.i.i, label %xhci_usb3_hub_descriptor.exit.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.g
  %wide.trip.count.i.i = zext i32 %i.x to i64
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %.lr.ph.i.i ] ; 3 uses
  %.0191.i.i = phi i16 [ 0, %.lr.ph.preheader.i.i ], [ %.1.i.i, %.lr.ph.i.i ]
  %i.aj = load ptr, ptr %i.v, align 8
  %i.ak = getelementptr [8 x i8], ptr %i.aj, i64 %indvars.iv.i.i
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = tail call i32 @xhci_portsc_readl(ptr noundef %i.al) #9
  %i.an = and i32 %i.am, 1073741824
  %.not.i.i272 = icmp eq i32 %i.an, 0
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.ao = trunc nuw i64 %indvars.iv.i.i to i32
  %i.ap = shl nuw i32 2, %i.ao
  %i.aq = trunc i32 %i.ap to i16
  %i.ar = select i1 %.not.i.i272, i16 0, i16 %i.aq
  %.1.i.i = or i16 %i.ar, %.0191.i.i              ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %xhci_usb3_hub_descriptor.exit.i, label %.lr.ph.i.i, !llvm.loop !15

xhci_usb3_hub_descriptor.exit.i:                  ; preds = %.lr.ph.i.i, %bb.g
  %.019.lcssa.i.i = phi i16 [ 0, %bb.g ], [ %.1.i.i, %.lr.ph.i.i ]
  %i.as = getelementptr i8, ptr %4, i64 10
  store i16 %.019.lcssa.i.i, ptr %i.as, align 1
  br label %xhci_hub_descriptor.exit

bb.h:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.at = getelementptr i8, ptr %.0.i, i64 1048
  %i.au = getelementptr i8, ptr %.0.i, i64 1056
  %i.av = load i32, ptr %i.au, align 8            ; 6 uses
  %i.aw = getelementptr i8, ptr %4, i64 6
  store i8 0, ptr %i.aw, align 1
  %i.ax = trunc i32 %i.av to i8
  %i.ay = getelementptr i8, ptr %4, i64 2
  store i8 %i.ax, ptr %i.ay, align 1
  %i.az = getelementptr i8, ptr %.0.i, i64 640
  %i.ba = load i32, ptr %i.az, align 8
  %i.bb = and i32 %i.ba, 8
  %.not.i.i7.i = icmp eq i32 %i.bb, 0
  %..i.i8.i = select i1 %.not.i.i7.i, i16 10, i16 9
  %i.bc = getelementptr i8, ptr %4, i64 3
  store i16 %..i.i8.i, ptr %i.bc, align 1
  %i.bd = getelementptr i8, ptr %4, i64 1
  store i8 41, ptr %i.bd, align 1
  %i.be = sdiv i32 %i.av, 8
  %.tr.i.i = trunc i32 %i.be to i8
  %i.bf = shl i8 %.tr.i.i, 1
  %i.bg = add i8 %i.bf, 9
  store i8 %i.bg, ptr %4, align 1
  %i.bh = getelementptr i8, ptr %4, i64 5
  store i8 10, ptr %i.bh, align 1
  store i32 0, ptr %i.a, align 4
  %.not6.i.i = icmp eq i32 %i.av, 0
  br i1 %.not6.i.i, label %._crit_edge.thread.i.i, label %.lr.ph.preheader.i9.i

._crit_edge.thread.i.i:                           ; preds = %bb.h
  %i.bi = getelementptr i8, ptr %4, i64 7         ; 2 uses
  store i32 -1, ptr %i.bi, align 1
  %i.bj = getelementptr i8, ptr %4, i64 11
  store i32 -1, ptr %i.bj, align 1
  br label %.lr.ph4.preheader.i.i

.lr.ph.preheader.i9.i:                            ; preds = %bb.h
  %wide.trip.count.i10.i = zext i32 %i.av to i64
  br label %.lr.ph.i11.i

.lr.ph.i11.i:                                     ; preds = %.lr.ph._crit_edge.i.i, %.lr.ph.preheader.i9.i
  %indvars.iv.i12.i = phi i64 [ 0, %.lr.ph.preheader.i9.i ], [ %.pre.i.i, %.lr.ph._crit_edge.i.i ] ; 2 uses
  %i.bk = load ptr, ptr %i.at, align 8
  %i.bl = getelementptr [8 x i8], ptr %i.bk, i64 %indvars.iv.i12.i
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = tail call i32 @xhci_portsc_readl(ptr noundef %i.bm) #9
  %i.bo = and i32 %i.bn, 1073741824
  %.not.i13.i = icmp eq i32 %i.bo, 0
  %.pre.i.i = add nuw nsw i64 %indvars.iv.i12.i, 1 ; 4 uses
  br i1 %.not.i13.i, label %.lr.ph._crit_edge.i.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i11.i
  %i.bp = trunc i64 %.pre.i.i to i8
  %i.bq = and i8 %i.bp, 7
  %i.br = shl nuw i8 1, %i.bq
  %i.bs = lshr i64 %.pre.i.i, 3
  %i.bt = and i64 %i.bs, 536870911
  %i.bu = getelementptr i8, ptr %i.a, i64 %i.bt   ; 2 uses
  %i.bv = load i8, ptr %i.bu, align 1
  %i.bw = or i8 %i.bv, %i.br
  store i8 %i.bw, ptr %i.bu, align 1
  br label %.lr.ph._crit_edge.i.i

.lr.ph._crit_edge.i.i:                            ; preds = %bb.i, %.lr.ph.i11.i
  %exitcond.not.i14.i = icmp eq i64 %.pre.i.i, %wide.trip.count.i10.i
  br i1 %exitcond.not.i14.i, label %._crit_edge.i.i, label %.lr.ph.i11.i, !llvm.loop !16

._crit_edge.i.i:                                  ; preds = %.lr.ph._crit_edge.i.i
  %i.bx = getelementptr i8, ptr %4, i64 7         ; 2 uses
  store i32 -1, ptr %i.bx, align 1
  %i.by = getelementptr i8, ptr %4, i64 11
  store i32 -1, ptr %i.by, align 1
  %.not7.i.i = icmp ugt i32 %i.av, -16
  br i1 %.not7.i.i, label %xhci_usb2_hub_descriptor.exit.i, label %.lr.ph4.preheader.i.i

.lr.ph4.preheader.i.i:                            ; preds = %._crit_edge.i.i, %._crit_edge.thread.i.i
  %i.bz = phi ptr [ %i.bi, %._crit_edge.thread.i.i ], [ %i.bx, %._crit_edge.i.i ]
  %i.ca = add nuw i32 %i.av, 8
  %i.cb = sdiv i32 %i.ca, 8
  %i.cc = tail call i32 @llvm.umax.i32(i32 %i.cb, i32 1)
  %umax.i.i = zext i32 %i.cc to i64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 %i.bz, ptr noundef nonnull align 4 dereferenceable(1) %i.a, i64 %umax.i.i, i1 false)
  br label %xhci_usb2_hub_descriptor.exit.i

xhci_usb2_hub_descriptor.exit.i:                  ; preds = %.lr.ph4.preheader.i.i, %._crit_edge.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %xhci_hub_descriptor.exit

bb.j:                                             ; preds = %xhci_get_rhub.exit
  %.mask = and i16 %2, -256
  %.not261 = icmp eq i16 %.mask, 3840
  br i1 %.not261, label %bb.k, label %xhci_hub_descriptor.exit

bb.k:                                             ; preds = %bb.j
  %i.cd = load i32, ptr %i.j, align 8
  %i.ce = icmp slt i32 %i.cd, 64
  br i1 %i.ce, label %xhci_hub_descriptor.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i8 5, ptr %4, align 1
  %i.cf = getelementptr i8, ptr %4, i64 1
  store i8 15, ptr %i.cf, align 1
  %i.cg = getelementptr i8, ptr %4, i64 2         ; 4 uses
  store i16 15, ptr %i.cg, align 1
  %i.ch = getelementptr i8, ptr %4, i64 4         ; 2 uses
  store i8 1, ptr %i.ch, align 1
  %i.ci = getelementptr i8, ptr %.0.i, i64 1208
  %i.cj = load i32, ptr %i.ci, align 8            ; 4 uses
  %.not275.i = icmp eq i32 %i.cj, 0
  br i1 %.not275.i, label %._crit_edge.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.l
  %i.ck = getelementptr i8, ptr %.0.i, i64 1200
  %i.cl = load ptr, ptr %i.ck, align 8            ; 8 uses
  %i.cm = getelementptr i8, ptr %i.cl, i64 10
  %i.cn = load i8, ptr %i.cm, align 2
  %i.co = getelementptr i8, ptr %i.cl, i64 11
  %i.cp = load i8, ptr %i.co, align 1
  %i.cq = zext i8 %i.cn to i16
  %i.cr = shl nuw i16 %i.cq, 8
  %i.cs = zext i8 %i.cp to i16
  %i.ct = or disjoint i16 %i.cr, %i.cs            ; 3 uses
  %exitcond.peel.not.i = icmp eq i32 %i.cj, 1
  br i1 %exitcond.peel.not.i, label %._crit_edge.i, label %.peel.next.i.preheader

.peel.next.i.preheader:                           ; preds = %.lr.ph.i
  %6 = add i32 %i.cj, -1                          ; 3 uses
  %xtraiter = and i32 %6, 1
  %i.cu = icmp eq i32 %i.cj, 2
  br i1 %i.cu, label %.peel.next.i.epil.preheader, label %.peel.next.i.preheader.new

.peel.next.i.preheader.new:                       ; preds = %.peel.next.i.preheader
  %unroll_iter = and i32 %6, -2
  br label %.peel.next.i

.peel.next.i:                                     ; preds = %.peel.next.i, %.peel.next.i.preheader.new
  %.0189258.i = phi ptr [ %i.cl, %.peel.next.i.preheader.new ], [ %spec.select249.i.1, %.peel.next.i ]
  %.0190257.i = phi i16 [ %i.ct, %.peel.next.i.preheader.new ], [ %spec.select248.i.1, %.peel.next.i ] ; 2 uses
  %.0203256.i = phi i32 [ 1, %.peel.next.i.preheader.new ], [ %11, %.peel.next.i ] ; 3 uses
  %niter = phi i32 [ 0, %.peel.next.i.preheader.new ], [ %niter.next.1, %.peel.next.i ]
  %7 = sext i32 %.0203256.i to i64
  %i.cv = getelementptr [16 x i8], ptr %i.cl, i64 %7 ; 3 uses
  %i.cw = getelementptr i8, ptr %i.cv, i64 10
  %i.cx = load i8, ptr %i.cw, align 2
  %i.cy = getelementptr i8, ptr %i.cv, i64 11
  %i.cz = load i8, ptr %i.cy, align 1
  %i.da = zext i8 %i.cx to i16
  %i.db = shl nuw i16 %i.da, 8
  %i.dc = zext i8 %i.cz to i16
  %i.dd = or disjoint i16 %i.db, %i.dc            ; 2 uses
  %i.de = icmp ult i16 %.0190257.i, %i.dd
  %spec.select248.i = tail call i16 @llvm.umax.i16(i16 %.0190257.i, i16 %i.dd) ; 2 uses
  %spec.select249.i = select i1 %i.de, ptr %i.cv, ptr %.0189258.i
  %8 = add nuw i32 %.0203256.i, 1
  %9 = sext i32 %8 to i64
  %10 = getelementptr [16 x i8], ptr %i.cl, i64 %9 ; 3 uses
  %i.df = getelementptr i8, ptr %10, i64 10
  %i.dg = load i8, ptr %i.df, align 2
  %i.dh = getelementptr i8, ptr %10, i64 11
  %i.di = load i8, ptr %i.dh, align 1
  %i.dj = zext i8 %i.dg to i16
  %i.dk = shl nuw i16 %i.dj, 8
  %i.dl = zext i8 %i.di to i16
  %i.dm = or disjoint i16 %i.dk, %i.dl            ; 2 uses
  %i.dn = icmp ult i16 %spec.select248.i, %i.dm
  %spec.select248.i.1 = tail call i16 @llvm.umax.i16(i16 %spec.select248.i, i16 %i.dm) ; 3 uses
  %spec.select249.i.1 = select i1 %i.dn, ptr %10, ptr %spec.select249.i ; 3 uses
  %11 = add nuw i32 %.0203256.i, 2                ; 2 uses
  %niter.next.1 = add nuw i32 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.loopexit.unr-lcssa, label %.peel.next.i, !llvm.loop !17

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %.peel.next.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %.peel.next.i.epil.preheader

.peel.next.i.epil.preheader:                      ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.peel.next.i.preheader
  %.0189258.i.epil.init = phi ptr [ %i.cl, %.peel.next.i.preheader ], [ %spec.select249.i.1, %._crit_edge.i.loopexit.unr-lcssa ]
  %.0190257.i.epil.init = phi i16 [ %i.ct, %.peel.next.i.preheader ], [ %spec.select248.i.1, %._crit_edge.i.loopexit.unr-lcssa ] ; 2 uses
  %.0203256.i.epil.init = phi i32 [ 1, %.peel.next.i.preheader ], [ %11, %._crit_edge.i.loopexit.unr-lcssa ]
  %lcmp.mod324 = trunc i32 %6 to i1
  tail call void @llvm.assume(i1 %lcmp.mod324)
  %12 = sext i32 %.0203256.i.epil.init to i64
  %i.do = getelementptr [16 x i8], ptr %i.cl, i64 %12 ; 3 uses
  %i.dp = getelementptr i8, ptr %i.do, i64 10
  %i.dq = load i8, ptr %i.dp, align 2
  %i.dr = getelementptr i8, ptr %i.do, i64 11
  %i.ds = load i8, ptr %i.dr, align 1
  %i.dt = zext i8 %i.dq to i16
  %i.du = shl nuw i16 %i.dt, 8
  %i.dv = zext i8 %i.ds to i16
  %i.dw = or disjoint i16 %i.du, %i.dv            ; 2 uses
  %i.dx = icmp ult i16 %.0190257.i.epil.init, %i.dw
  %spec.select248.i.epil = tail call i16 @llvm.umax.i16(i16 %.0190257.i.epil.init, i16 %i.dw)
  %spec.select249.i.epil = select i1 %i.dx, ptr %i.do, ptr %.0189258.i.epil.init
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.peel.next.i.epil.preheader, %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.i
  %.0190.lcssa.i = phi i16 [ %i.ct, %.lr.ph.i ], [ %spec.select248.i.1, %._crit_edge.i.loopexit.unr-lcssa ], [ %spec.select248.i.epil, %.peel.next.i.epil.preheader ] ; 4 uses
  %.0189.lcssa.i = phi ptr [ %i.cl, %.lr.ph.i ], [ %spec.select249.i.1, %._crit_edge.i.loopexit.unr-lcssa ], [ %spec.select249.i.epil, %.peel.next.i.epil.preheader ] ; 5 uses
  %i.dy = icmp ugt i16 %.0190.lcssa.i, 783
  br i1 %i.dy, label %bb.m, label %._crit_edge.thread.i

bb.m:                                             ; preds = %._crit_edge.i
  %i.dz = getelementptr i8, ptr %.0189.lcssa.i, i64 8
  %i.ea = load i8, ptr %i.dz, align 8             ; 4 uses
  %.not.i274 = icmp eq i8 %i.ea, 0
  br i1 %.not.i274, label %bb.p, label %.preheader253.i

.preheader253.i:                                  ; preds = %bb.m
  %i.eb = load ptr, ptr %.0189.lcssa.i, align 8   ; 5 uses
  %wide.trip.count.i = zext i8 %i.ea to i64       ; 2 uses
  %xtraiter325 = and i64 %wide.trip.count.i, 3    ; 3 uses
  %i.ec = icmp ult i8 %i.ea, 4
  br i1 %i.ec, label %.epil.preheader, label %.preheader253.i.new

.preheader253.i.new:                              ; preds = %.preheader253.i
  %unroll_iter329 = and i64 %wide.trip.count.i, 252
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %.preheader253.i.new
  %indvars.iv.i = phi i64 [ 0, %.preheader253.i.new ], [ %indvars.iv.next.i.3, %bb.n ] ; 5 uses
  %.0206260.i = phi i8 [ 0, %.preheader253.i.new ], [ %spec.select.i.3, %bb.n ]
  %niter330 = phi i64 [ 0, %.preheader253.i.new ], [ %niter330.next.3, %bb.n ]
  %i.ed = getelementptr [4 x i8], ptr %i.eb, i64 %indvars.iv.i
  %i.ee = load i32, ptr %i.ed, align 4
  %i.ef = and i32 %i.ee, 192
  %i.eg = icmp eq i32 %i.ef, 0
  %i.eh = zext i1 %i.eg to i8
  %spec.select.i = add i8 %.0206260.i, %i.eh
  %i.ei = getelementptr [4 x i8], ptr %i.eb, i64 %indvars.iv.i
  %i.ej = getelementptr i8, ptr %i.ei, i64 4
  %i.ek = load i32, ptr %i.ej, align 4
  %i.el = and i32 %i.ek, 192
  %i.em = icmp eq i32 %i.el, 0
  %i.en = zext i1 %i.em to i8
  %spec.select.i.1 = add i8 %spec.select.i, %i.en
  %i.eo = getelementptr [4 x i8], ptr %i.eb, i64 %indvars.iv.i
  %i.ep = getelementptr i8, ptr %i.eo, i64 8
  %i.eq = load i32, ptr %i.ep, align 4
  %i.er = and i32 %i.eq, 192
  %i.es = icmp eq i32 %i.er, 0
  %i.et = zext i1 %i.es to i8
  %spec.select.i.2 = add i8 %spec.select.i.1, %i.et
  %i.eu = getelementptr [4 x i8], ptr %i.eb, i64 %indvars.iv.i
  %i.ev = getelementptr i8, ptr %i.eu, i64 12
  %i.ew = load i32, ptr %i.ev, align 4
  %i.ex = and i32 %i.ew, 192
  %i.ey = icmp eq i32 %i.ex, 0
  %i.ez = zext i1 %i.ey to i8
  %spec.select.i.3 = add i8 %spec.select.i.2, %i.ez ; 3 uses
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter330.next.3 = add i64 %niter330, 4         ; 2 uses
  %niter330.ncmp.3 = icmp eq i64 %niter330.next.3, %unroll_iter329
  br i1 %niter330.ncmp.3, label %.unr-lcssa, label %bb.n, !llvm.loop !19

.unr-lcssa:                                       ; preds = %bb.n
  %lcmp.mod326.not = icmp eq i64 %xtraiter325, 0
  br i1 %lcmp.mod326.not, label %.epilog-lcssa, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %.preheader253.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.preheader253.i ], [ %indvars.iv.next.i.3, %.unr-lcssa ]
  %.0206260.i.epil.init = phi i8 [ 0, %.preheader253.i ], [ %spec.select.i.3, %.unr-lcssa ]
  %lcmp.mod328 = icmp ne i64 %xtraiter325, 0
  tail call void @llvm.assume(i1 %lcmp.mod328)
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.epil, %bb.o ] ; 2 uses
  %.0206260.i.epil = phi i8 [ %.0206260.i.epil.init, %.epil.preheader ], [ %spec.select.i.epil, %bb.o ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.o ]
  %i.fa = getelementptr [4 x i8], ptr %i.eb, i64 %indvars.iv.i.epil
  %i.fb = load i32, ptr %i.fa, align 4
  %i.fc = and i32 %i.fb, 192
  %i.fd = icmp eq i32 %i.fc, 0
  %i.fe = zext i1 %i.fd to i8
  %spec.select.i.epil = add i8 %.0206260.i.epil, %i.fe ; 2 uses
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter325
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %bb.o, !llvm.loop !20

.epilog-lcssa:                                    ; preds = %bb.o, %.unr-lcssa
  %spec.select.i.lcssa = phi i8 [ %spec.select.i.3, %.unr-lcssa ], [ %spec.select.i.epil, %bb.o ]
  %i.ff = add i8 %i.ea, -1
  %i.fg = add i8 %i.ff, %spec.select.i.lcssa
  %i.fh = getelementptr i8, ptr %.0189.lcssa.i, i64 9
  %i.fi = load i8, ptr %i.fh, align 1
  br label %bb.q

bb.p:                                             ; preds = %bb.m
  %i.fj = icmp ugt i16 %.0190.lcssa.i, 799
  %..i = select i1 %i.fj, i8 7, i8 3              ; 2 uses
  %narrow.i = add nuw nsw i8 %..i, 1
  %i.fk = lshr exact i8 %narrow.i, 1
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.epilog-lcssa
  %.0199.in.i = phi i8 [ %i.fi, %.epilog-lcssa ], [ %i.fk, %bb.p ]
  %.1197.i = phi i8 [ %i.fg, %.epilog-lcssa ], [ %..i, %bb.p ] ; 2 uses
  %.0199.i = add i8 %.0199.in.i, 15
  store i8 2, ptr %i.ch, align 1
  %i.fl = zext i8 %.1197.i to i16
  %i.fm = shl nuw nsw i16 %i.fl, 2
  %i.fn = add nuw nsw i16 %i.fm, 31
  store i16 %i.fn, ptr %i.cg, align 1
  %i.fo = zext i8 %.0199.i to i32
  %i.fp = shl nuw nsw i32 %i.fo, 5
  %i.fq = and i32 %i.fp, 480
  br label %._crit_edge.thread.i

._crit_edge.thread.i:                             ; preds = %bb.q, %._crit_edge.i, %bb.l
  %.0189.lcssa297.i = phi ptr [ %.0189.lcssa.i, %bb.q ], [ %.0189.lcssa.i, %._crit_edge.i ], [ null, %bb.l ] ; 3 uses
  %.0190.lcssa296.i = phi i16 [ %.0190.lcssa.i, %bb.q ], [ %.0190.lcssa.i, %._crit_edge.i ], [ 0, %bb.l ] ; 2 uses
  %.1200.i = phi i32 [ %i.fq, %bb.q ], [ 0, %._crit_edge.i ], [ 0, %bb.l ]
  %.2198.i = phi i8 [ %.1197.i, %bb.q ], [ 0, %._crit_edge.i ], [ 0, %bb.l ] ; 3 uses
  %i.fr = icmp ult i16 %5, 15
  br i1 %i.fr, label %xhci_create_usb3x_bos_desc.exit, label %bb.r

bb.r:                                             ; preds = %._crit_edge.thread.i
  %i.fs = getelementptr i8, ptr %4, i64 5
  store i8 10, ptr %i.fs, align 1
  %i.ft = getelementptr i8, ptr %4, i64 6
  store i8 16, ptr %i.ft, align 1
  %i.fu = getelementptr i8, ptr %4, i64 7
  store i8 3, ptr %i.fu, align 1
  %i.fv = getelementptr i8, ptr %4, i64 8         ; 3 uses
  store i8 0, ptr %i.fv, align 1
  %i.fw = getelementptr i8, ptr %4, i64 9
  store i16 8, ptr %i.fw, align 1
  %i.fx = getelementptr i8, ptr %4, i64 11
  store i8 1, ptr %i.fx, align 1
  %i.fy = getelementptr i8, ptr %4, i64 12        ; 2 uses
  store i8 0, ptr %i.fy, align 1
  %i.fz = getelementptr i8, ptr %4, i64 13        ; 2 uses
  store i16 0, ptr %i.fz, align 1
  %i.ga = getelementptr i8, ptr %.0.i, i64 600    ; 2 uses
  %i.gb = load ptr, ptr %i.ga, align 8
  %i.gc = getelementptr i8, ptr %i.gb, i64 16
  %i.gd = tail call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.gc) #10, !srcloc !13
  %i.ge = and i32 %i.gd, 64
  %.not224.i = icmp eq i32 %i.ge, 0
  br i1 %.not224.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.gf = load i8, ptr %i.fv, align 1
  %i.gg = or i8 %i.gf, 2
  store i8 %i.gg, ptr %i.fv, align 1
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.gh = getelementptr i8, ptr %.0.i, i64 1024
  %i.gi = load i64, ptr %i.gh, align 8
  %i.gj = and i64 %i.gi, 2048
  %.not225.i = icmp eq i64 %i.gj, 0
  br i1 %.not225.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.gk = load ptr, ptr %i.ga, align 8
  %i.gl = getelementptr i8, ptr %i.gk, i64 12
  %i.gm = tail call i32 asm sideeffect "movl $1,$0", "=r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) %i.gl) #10, !srcloc !13 ; 2 uses
  %i.gn = trunc i32 %i.gm to i8
  store i8 %i.gn, ptr %i.fy, align 1
  %i.go = lshr i32 %i.gm, 16
  %i.gp = trunc nuw i32 %i.go to i16
  store i16 %i.gp, ptr %i.fz, align 1
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.gq = load i16, ptr %i.cg, align 1            ; 3 uses
  %i.gr = icmp ult i16 %5, %i.gq
  br i1 %i.gr, label %xhci_create_usb3x_bos_desc.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.gs = icmp ult i16 %.0190.lcssa296.i, 784
  br i1 %i.gs, label %xhci_create_usb3x_bos_desc.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.gt = getelementptr i8, ptr %4, i64 15
  %.tr.i = shl i8 %.2198.i, 2
  %i.gu = add i8 %.tr.i, 16
  store i8 %i.gu, ptr %i.gt, align 1
  %i.gv = getelementptr i8, ptr %4, i64 16
  store i8 16, ptr %i.gv, align 1
end_hunk_0
