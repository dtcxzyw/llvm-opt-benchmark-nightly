Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/postprocessing_aux?download=true
inline.NumInlined: 12
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_ZN6LibRaw15wavelet_denoiseEv:bb.a
  store i32 %i.t, ptr %i.n, align 8, !tbaa !162
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 153088 ; 2 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !163
  %i.w = shl i32 %i.v, %i.s
  store i32 %i.w, ptr %i.u, align 8, !tbaa !163
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 136672 ; 4 uses
  %i.y = load <4 x i32>, ptr %i.x, align 8, !tbaa !74
  %i.z = insertelement <4 x i32> poison, i32 %i.s, i64 0
  %i.aa = shufflevector <4 x i32> %i.z, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ab = shl <4 x i32> %i.y, %i.aa
  store <4 x i32> %i.ab, ptr %i.x, align 8, !tbaa !74
  %i.ac = zext i16 %i.h to i32                    ; 2 uses
  %i.ad = zext i16 %i.e to i32                    ; 2 uses
  %i.ae = mul nuw nsw i32 %i.ac, %i.ad            ; 8 uses
  %i.af = mul nuw nsw i32 %i.ae, 3                ; 2 uses
  %i.ag = add nuw nsw i32 %i.ad, 128
  %i.ah = add nuw nsw i32 %i.ag, %i.ac
  %i.ai = add nuw nsw i32 %i.ah, %i.af
  %i.aj = zext nneg i32 %i.ai to i64
  %i.ak = shl nuw nsw i64 %i.aj, 2
  %i.al = tail call noundef ptr @_ZN6LibRaw6mallocEm(ptr noundef nonnull align 8 dereferenceable(768512) %0, i64 noundef %i.ak) ; 47 uses
  %i.am = zext nneg i32 %i.af to i64              ; 9 uses
  %i.an = getelementptr [4 x i8], ptr %i.al, i64 %i.am ; 32 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 540
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !75 ; 3 uses
  %i.aq = icmp ne i32 %i.ap, 3                    ; 2 uses
  br i1 %i.aq, label %bb.e, label %.thread

.thread:                                          ; preds = %bb.d
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !164
  %.not = icmp eq i32 %i.as, 0
  %spec.select = select i1 %.not, i32 3, i32 4
  br label %.preheader300.lr.ph

bb.e:                                             ; preds = %bb.d
  %i.at = icmp sgt i32 %i.ap, 0
  br i1 %i.at, label %.preheader300.lr.ph, label %.loopexit294

.preheader300.lr.ph:                              ; preds = %.thread, %bb.e
  %.0218439 = phi i32 [ %spec.select, %.thread ], [ %i.ap, %bb.e ]
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 5372
  %wide.trip.count400 = zext nneg i32 %.0218439 to i64
  %i.av = load ptr, ptr %i.c, align 8, !tbaa !76  ; 2 uses
  %wide.trip.count = zext nneg i32 %i.ae to i64   ; 4 uses
  %wide.trip.count385 = zext nneg i32 %i.ae to i64
  %wide.trip.count395 = zext nneg i32 %i.ae to i64
  %i.aw = mul nsw i64 %i.am, -4                   ; 2 uses
  %i.ax = shl nuw nsw i64 %i.am, 2                ; 6 uses
  %scevgep = getelementptr i8, ptr %i.al, i64 %i.ax
  %scevgep539.a = getelementptr i8, ptr %i.al, i64 %i.ax
  %scevgep541.a = getelementptr i8, ptr %i.al, i64 -4
  %scevgep544.a = getelementptr i8, ptr %i.al, i64 4
  %scevgep549 = getelementptr i8, ptr %i.al, i64 -4
  %scevgep597.a = getelementptr i8, ptr %i.al, i64 %i.ax
  %scevgep662.a = getelementptr i8, ptr %i.al, i64 %i.ax
  %scevgep666.a = getelementptr i8, ptr %i.al, i64 4
  %scevgep668 = getelementptr i8, ptr %i.al, i64 4
  %xtraiter = and i64 %wide.trip.count, 1
  %i.ay = icmp eq i32 %i.ae, 1
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod717 = trunc i32 %i.ae to i1
  %invariant.op754 = add i64 %i.aw, -1
  %invariant.op752 = add i64 %i.aw, -1
  %min.iters.check = icmp samesign ult i32 %i.ae, 4
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %.lr.ph

.lr.ph:                                           ; preds = %._crit_edge330, %.preheader300.lr.ph
  %indvars.iv397 = phi i64 [ 0, %.preheader300.lr.ph ], [ %indvars.iv.next398, %._crit_edge330 ] ; 3 uses
  %invariant.gep = getelementptr inbounds nuw [2 x i8], ptr %i.av, i64 %indvars.iv397 ; 3 uses
  br i1 %i.ay, label %.epil.preheader, label %.lr.ph.new

.preheader299.unr-lcssa:                          ; preds = %.lr.ph.new
  br i1 %lcmp.mod.not, label %.preheader299, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader299.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %.preheader299.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod717)
  %gep.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv.epil.init
  %i.az = load i16, ptr %gep.epil, align 2, !tbaa !77
  %i.ba = zext i16 %i.az to i32
  %i.bb = shl i32 %i.ba, %i.s
  %i.bc = sitofp i32 %i.bb to float
  %i.bd = tail call float @sqrtf(float noundef %i.bc) #11
  %i.be = fmul float %i.bd, 2.560000e+02
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv.epil.init
  store float %i.be, ptr %i.bf, align 4, !tbaa !9
  br label %.preheader299

.preheader299:                                    ; preds = %.preheader299.unr-lcssa, %.epil.preheader
  %i.bg = load i16, ptr %i.g, align 4, !tbaa !161 ; 6 uses
  %i.bh = zext i16 %i.bg to i32                   ; 3 uses
  %.not353 = icmp eq i16 %i.bg, 0                 ; 2 uses
  %i.bi = load i16, ptr %i.d, align 2, !tbaa !160 ; 11 uses
  %i.bj = zext i16 %i.bi to i32                   ; 4 uses
  %.not354 = icmp eq i16 %i.bi, 0                 ; 2 uses
  %i.bk = zext i16 %i.bi to i64                   ; 21 uses
  %i.bl = zext i16 %i.bg to i64                   ; 2 uses
  %i.bm = shl nuw nsw i32 %i.bh, 1                ; 3 uses
  %invariant.op = add nsw i32 %i.bm, -2           ; 2 uses
  %i.bn = zext i16 %i.bi to i64                   ; 8 uses
  %i.bo = shl nuw nsw i32 %i.bj, 1                ; 3 uses
  %wide.trip.count369 = zext i16 %i.bg to i64     ; 11 uses
  %i.bp = add nsw i32 %i.bo, -2                   ; 4 uses
  %wide.trip.count364 = zext i16 %i.bi to i64
  %wide.trip.count379 = zext i16 %i.bi to i64
  %wide.trip.count374 = zext i16 %i.bg to i64
  %i.bq = add nsw i64 %wide.trip.count369, -1     ; 2 uses
  %i.br = add nsw i32 %i.bm, -2
  %i.bs = add nuw nsw i64 %i.am, %wide.trip.count369
  %i.bt = shl nuw nsw i64 %i.bs, 2
  %scevgep477.a = getelementptr i8, ptr %i.al, i64 %i.bt ; 3 uses
  %i.bu = shl nuw nsw i64 %wide.trip.count369, 2  ; 2 uses
  %i.bv = add nsw i32 %i.bm, -2
  %i.bw = shl nuw nsw i64 %i.bk, 2                ; 3 uses
  %scevgep542.a = getelementptr i8, ptr %scevgep541.a, i64 %i.bw
  %scevgep546 = getelementptr i8, ptr %i.al, i64 %i.bw
  %scevgep550 = getelementptr i8, ptr %scevgep549, i64 %i.bw
  %i.bx = shl nuw nsw i64 %i.bk, 2
  %i.by = add nsw i32 %i.bo, -2
  %i.bz = add nuw nsw i64 %i.am, %i.bk
  %i.ca = shl nuw nsw i64 %i.bz, 2
  %scevgep599.a = getelementptr i8, ptr %i.al, i64 %i.ca ; 3 uses
  %i.cb = shl nuw nsw i64 %i.bk, 2                ; 2 uses
  %i.cc = shl nuw nsw i64 %i.bk, 2
  %i.cd = add nsw i32 %i.bo, -2
  %i.ce = mul nsw i64 %i.bk, -4
  %i.cf = shl nuw nsw i64 %wide.trip.count369, 2
  %i.cg = add nsw i64 %i.cf, -4
  %i.ch = mul nsw i64 %i.cg, %i.bk                ; 3 uses
  %scevgep664.a = getelementptr i8, ptr %i.al, i64 %i.ch
  %scevgep669 = getelementptr i8, ptr %scevgep668, i64 %i.ch
  %scevgep672 = getelementptr i8, ptr %i.al, i64 %i.ch
  %i.ci = add nsw i64 %i.bn, -1
  %min.iters.check584 = icmp ult i16 %i.bi, 8
  %n.vec586 = and i64 %i.bk, 65528                ; 3 uses
  %cmp.n593 = icmp eq i64 %n.vec586, %i.bk
  %xtraiter725 = and i64 %i.bn, 3                 ; 2 uses
  %lcmp.mod726.not = icmp eq i64 %xtraiter725, 0
  %ident.check537.not = icmp eq i16 %i.bi, 1
  %ident.check512.not = icmp eq i16 %i.bi, 1
  %ident.check474 = icmp ne i16 %i.bi, 1
  %min.iters.check462 = icmp ult i16 %i.bg, 12
  %ident.check = icmp ne i16 %i.bi, 1
  %i.cj = trunc nsw i64 %i.bq to i32
  %i.ck = icmp ugt i64 %i.bq, 4294967295
  %invariant.op750 = or i1 %i.ck, %ident.check
  %n.vec464 = and i64 %wide.trip.count369, 65528  ; 3 uses
  %cmp.n471 = icmp eq i64 %n.vec464, %wide.trip.count369
  %xtraiter727 = and i64 %wide.trip.count369, 1
  %lcmp.mod728.not = icmp eq i64 %xtraiter727, 0
  %i.cl = add nsw i64 %wide.trip.count369, -1
  br label %bb.f

.lr.ph.new:                                       ; preds = %.lr.ph, %.lr.ph.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph.new ], [ 0, %.lr.ph ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %.lr.ph.new ], [ 0, %.lr.ph ]
  %gep = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.cm = load i16, ptr %gep, align 2, !tbaa !77
  %i.cn = zext i16 %i.cm to i32
  %i.co = shl i32 %i.cn, %i.s
  %i.cp = sitofp i32 %i.co to float
  %i.cq = tail call float @sqrtf(float noundef %i.cp) #11
  %i.cr = fmul float %i.cq, 2.560000e+02
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv
  store float %i.cr, ptr %i.cs, align 4, !tbaa !9
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %gep.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next
  %i.ct = load i16, ptr %gep.1, align 2, !tbaa !77
  %i.cu = zext i16 %i.ct to i32
  %i.cv = shl i32 %i.cu, %i.s
  %i.cw = sitofp i32 %i.cv to float
  %i.cx = tail call float @sqrtf(float noundef %i.cw) #11
  %i.cy = fmul float %i.cx, 2.560000e+02
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv.next
  store float %i.cy, ptr %i.cz, align 4, !tbaa !9
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader299.unr-lcssa, label %.lr.ph.new, !llvm.loop !111

.lr.ph329:                                        ; preds = %._crit_edge325
  %invariant.gep331 = getelementptr inbounds nuw [2 x i8], ptr %i.av, i64 %indvars.iv397 ; 5 uses
  %i.da = sext i32 %i.dx to i64
  %invariant.gep451 = getelementptr [4 x i8], ptr %i.al, i64 %i.da ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.lr.ph329, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph329 ] ; 7 uses
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %index
  %wide.load = load <4 x float>, ptr %i.db, align 4, !tbaa !9
  %i.dc = getelementptr [4 x i8], ptr %invariant.gep451, i64 %index
  %wide.load460 = load <4 x float>, ptr %i.dc, align 4, !tbaa !9
  %i.dd = fadd <4 x float> %wide.load, %wide.load460 ; 2 uses
  %i.de = fmul <4 x float> %i.dd, %i.dd
  %i.df = fmul <4 x float> %i.de, splat (float f0x37800000)
  %i.dg = fptosi <4 x float> %i.df to <4 x i32>
  %1 = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.dg, <4 x i32> zeroinitializer)
  %i.dh = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %1, <4 x i32> splat (i32 65535))
  %i.di = trunc nuw <4 x i32> %i.dh to <4 x i16>  ; 4 uses
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep331, i64 %index
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep331, i64 %index
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep331, i64 %index
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep331, i64 %index
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 24
  %i.dq = extractelement <4 x i16> %i.di, i64 0
  store i16 %i.dq, ptr %i.dj, align 2, !tbaa !77
  %i.dr = extractelement <4 x i16> %i.di, i64 1
  store i16 %i.dr, ptr %i.dl, align 2, !tbaa !77
  %i.ds = extractelement <4 x i16> %i.di, i64 2
  store i16 %i.ds, ptr %i.dn, align 2, !tbaa !77
  %i.dt = extractelement <4 x i16> %i.di, i64 3
  store i16 %i.dt, ptr %i.dp, align 2, !tbaa !77
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.du = icmp eq i64 %index.next, %n.vec
  br i1 %i.du, label %middle.block, label %vector.body, !llvm.loop !112

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge330, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph329, %middle.block
  %indvars.iv391.ph = phi i64 [ 0, %.lr.ph329 ], [ %n.vec, %middle.block ]
  br label %scalar.ph

bb.f:                                             ; preds = %.preheader299, %._crit_edge325
  %indvars.iv387 = phi i64 [ 0, %.preheader299 ], [ %indvars.iv.next388, %._crit_edge325 ] ; 7 uses
  %.0229327 = phi i32 [ 0, %.preheader299 ], [ %i.dx, %._crit_edge325 ] ; 3 uses
  %i.dv = trunc nuw nsw i64 %indvars.iv387 to i32 ; 5 uses
  %i.dw = and i32 %i.dv, 1
  %i.dx = shl nuw i32 %i.ae, %i.dw                ; 7 uses
  br i1 %.not353, label %.preheader297, label %.lr.ph314.a

.lr.ph314.a:                                      ; preds = %bb.f
  %i.dy = zext i32 %.0229327 to i64               ; 5 uses
  %i.dz = getelementptr [4 x i8], ptr %i.al, i64 %i.dy ; 2 uses
  %i.ea = shl nuw nsw i32 1, %i.dv                ; 8 uses
  %i.eb = zext nneg i32 %i.ea to i64              ; 25 uses
  %i.ec = shl nuw nsw i32 2, %i.dv
  %i.ed = icmp samesign ult i32 %i.ec, %i.bj
  %i.ee = shl nuw nsw i64 %i.eb, 1                ; 4 uses
  %invariant.op.i = sub nsw i64 %i.bk, %i.eb      ; 2 uses
  %i.ef = sext i32 %i.dx to i64                   ; 2 uses
  %invariant.gep445 = getelementptr [4 x i8], ptr %i.al, i64 %i.ef
  %i.eg = shl nsw i64 %i.ef, 2
  %i.eh = shl nuw nsw i64 %i.dy, 2                ; 4 uses
  %i.ei = add nuw nsw i64 %i.cb, %i.eh            ; 2 uses
  %i.ej = shl nuw nsw i64 %i.eb, 2                ; 4 uses
  %i.ek = sub nsw i64 %i.eh, %i.ej
  %i.el = sub nsw i64 %i.ei, %i.ej
  %reass.sub = sub nsw i64 %i.eh, %i.cb
  %i.em = shl nuw nsw i64 %i.dy, 2                ; 4 uses
  %i.en = sub nsw i64 %i.ax, %i.em
  %i.eo = add nuw nsw i64 %i.am, %i.eb
  %i.ep = sub nsw i64 %i.eo, %i.dy
  %i.eq = shl nsw i64 %i.ep, 2
  %i.er = add nuw nsw i64 %i.dy, %i.eb
  %i.es = sub nsw i64 %i.am, %i.er
  %i.et = shl nsw i64 %i.es, 2
  %scevgep663 = getelementptr i8, ptr %scevgep662.a, i64 %i.ej ; 3 uses
  %i.eu = add nuw nsw i64 %i.ej, %i.em            ; 3 uses
  %scevgep665.a = getelementptr i8, ptr %scevgep664.a, i64 %i.eu
  %scevgep667.a = getelementptr i8, ptr %scevgep666.a, i64 %i.em
  %scevgep670 = getelementptr i8, ptr %scevgep669, i64 %i.eu
  %scevgep671 = getelementptr i8, ptr %i.al, i64 %i.eu
  %i.ev = shl nuw nsw i64 %i.eb, 3
  %i.ew = getelementptr i8, ptr %scevgep672, i64 %i.ev
  %scevgep673 = getelementptr i8, ptr %i.ew, i64 %i.em
  %i.ex = getelementptr i8, ptr %i.al, i64 %i.ei
  %i.ey = getelementptr i8, ptr %i.al, i64 %i.ek
  %i.ez = getelementptr i8, ptr %i.al, i64 %i.el
  %i.fa = getelementptr i8, ptr %i.al, i64 %reass.sub
  %i.fb = getelementptr i8, ptr %i.fa, i64 4
  %i.fc = getelementptr i8, ptr %i.al, i64 %i.eh
  %i.fd = getelementptr i8, ptr %i.fc, i64 4
  %min.iters.check686 = icmp samesign ult i64 %indvars.iv387, 3
  %bound0674 = icmp ult ptr %i.an, %scevgep665.a
  %bound1675 = icmp ult ptr %i.dz, %scevgep663
  %found.conflict676 = and i1 %bound0674, %bound1675
  %bound0677 = icmp ult ptr %i.an, %scevgep670
  %bound1678 = icmp ult ptr %scevgep667.a, %scevgep663
  %found.conflict679 = and i1 %bound0677, %bound1678
  %conflict.rdx680 = or i1 %found.conflict676, %found.conflict679
  %bound0681 = icmp ult ptr %i.an, %scevgep673
  %bound1682 = icmp ult ptr %scevgep671, %scevgep663
  %found.conflict683 = and i1 %bound0681, %bound1682
  %conflict.rdx684 = or i1 %conflict.rdx680, %found.conflict683
  %n.vec688 = and i64 %i.eb, 2147483640
  %xtraiter718 = and i64 %i.eb, 1
  %i.fe = icmp eq i64 %indvars.iv387, 0
  %unroll_iter721 = and i64 %i.eb, 2147483646
  %lcmp.mod719.not = icmp eq i64 %xtraiter718, 0
  %lcmp.mod720 = icmp eq i64 %indvars.iv387, 0
  %i.ff = add nuw nsw i64 %i.eb, 1
  %i.fg = tail call i64 @llvm.smax.i64(i64 %invariant.op.i, i64 %i.ff)
  %i.fh = sub nsw i64 %i.fg, %i.eb                ; 3 uses
  %min.iters.check645 = icmp ult i64 %i.fh, 8
  %invariant.op735 = add i64 %i.en, -1
  %invariant.op736 = add i64 %i.eq, -1
  %invariant.op738.a = add i64 %i.et, -1
  %n.vec647 = and i64 %i.fh, -8                   ; 4 uses
  %i.fi = add i64 %n.vec647, %i.eb                ; 2 uses
  %i.fj = add i64 %i.ee, %n.vec647
  %cmp.n658 = icmp eq i64 %i.fh, %n.vec647
  %invariant.op740.reass = add i64 %i.eg, %invariant.op754
  br label %bb.g

.preheader297:                                    ; preds = %._crit_edge, %bb.f
  br i1 %.not354, label %.lr.ph324, label %.lr.ph320

.lr.ph320:                                        ; preds = %.preheader297
  %i.fk = zext i32 %i.dx to i64                   ; 5 uses
  %i.fl = getelementptr [4 x i8], ptr %i.al, i64 %i.fk ; 2 uses
  %i.fm = shl nuw nsw i32 1, %i.dv                ; 6 uses
  %i.fn = zext nneg i32 %i.fm to i64              ; 21 uses
  %i.fo = shl nuw nsw i32 2, %i.dv
  %i.fp = icmp samesign ult i32 %i.fo, %i.bh
  %i.fq = shl nuw nsw i64 %i.fn, 1                ; 4 uses
  %invariant.op.i270 = sub nsw i64 %i.bl, %i.fn   ; 2 uses
  %i.fr = shl nuw nsw i64 %i.fk, 2                ; 4 uses
  %i.fs = add nuw nsw i64 %i.bu, %i.fr            ; 2 uses
  %i.ft = shl nuw nsw i64 %i.fn, 2                ; 5 uses
  %i.fu = sub nsw i64 %i.fr, %i.ft
  %i.fv = sub nsw i64 %i.fs, %i.ft
  %reass.sub703 = sub nsw i64 %i.fr, %i.bu
  %i.fw = shl nuw nsw i64 %i.fk, 2                ; 5 uses
  %i.fx = sub nsw i64 %i.ax, %i.fw
  %i.fy = add nuw nsw i64 %i.am, %i.fn
  %i.fz = sub nsw i64 %i.fy, %i.fk
  %i.ga = shl nsw i64 %i.fz, 2
  %i.gb = add nuw nsw i64 %i.fk, %i.fn
  %i.gc = sub nsw i64 %i.am, %i.gb
  %i.gd = shl nsw i64 %i.gc, 2
  %scevgep540 = getelementptr i8, ptr %scevgep539.a, i64 %i.ft ; 3 uses
  %i.ge = getelementptr i8, ptr %scevgep542.a, i64 %i.ft
  %scevgep543 = getelementptr i8, ptr %i.ge, i64 %i.fw
  %scevgep545.a = getelementptr i8, ptr %scevgep544.a, i64 %i.fw
  %i.gf = add nuw nsw i64 %i.fw, %i.ft            ; 2 uses
  %scevgep547 = getelementptr i8, ptr %scevgep546, i64 %i.gf
  %scevgep548 = getelementptr i8, ptr %i.al, i64 %i.gf
  %i.gg = shl nuw nsw i64 %i.fn, 3
  %i.gh = getelementptr i8, ptr %scevgep550, i64 %i.gg
  %scevgep551 = getelementptr i8, ptr %i.gh, i64 %i.fw
  %i.gi = getelementptr i8, ptr %i.al, i64 %i.fs
  %i.gj = getelementptr i8, ptr %i.al, i64 %i.fu
  %i.gk = getelementptr i8, ptr %i.al, i64 %i.fv
  %i.gl = getelementptr i8, ptr %i.al, i64 %reass.sub703
  %i.gm = getelementptr i8, ptr %i.gl, i64 4
  %i.gn = getelementptr i8, ptr %i.al, i64 %i.fr
  %i.go = getelementptr i8, ptr %i.gn, i64 4
  %min.iters.check564 = icmp samesign ugt i64 %indvars.iv387, 2
  %or.cond705 = select i1 %min.iters.check564, i1 %ident.check537.not, i1 false
  %bound0552 = icmp ult ptr %i.an, %scevgep543
  %bound1553 = icmp ult ptr %i.fl, %scevgep540
  %found.conflict554 = and i1 %bound0552, %bound1553
  %bound0555 = icmp ult ptr %i.an, %scevgep547
  %bound1556 = icmp ult ptr %scevgep545.a, %scevgep540
  %found.conflict557 = and i1 %bound0555, %bound1556
  %conflict.rdx558 = or i1 %found.conflict554, %found.conflict557
  %bound0559 = icmp ult ptr %i.an, %scevgep551
  %bound1560 = icmp ult ptr %scevgep548, %scevgep540
  %found.conflict561 = and i1 %bound0559, %bound1560
  %conflict.rdx562 = or i1 %conflict.rdx558, %found.conflict561
  %n.vec566 = and i64 %i.fn, 2147483640
  %i.gp = add nuw nsw i64 %i.fn, 1
  %i.gq = tail call i64 @llvm.smax.i64(i64 %invariant.op.i270, i64 %i.gp)
  %i.gr = sub nsw i64 %i.gq, %i.fn                ; 3 uses
  %min.iters.check520 = icmp ugt i64 %i.gr, 7
  %or.cond706 = select i1 %min.iters.check520, i1 %ident.check512.not, i1 false
  %invariant.op744 = add i64 %i.fx, -1
  %invariant.op746 = add i64 %i.ga, -1
  %invariant.op748 = add i64 %i.gd, -1
  %n.vec522 = and i64 %i.gr, -8                   ; 4 uses
  %i.gs = add i64 %n.vec522, %i.fn                ; 2 uses
  %i.gt = add i64 %i.fq, %n.vec522
  %cmp.n533 = icmp eq i64 %i.gr, %n.vec522
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph314.a, %._crit_edge
  %indvars.iv366 = phi i64 [ 0, %.lr.ph314.a ], [ %indvars.iv.next367, %._crit_edge ] ; 5 uses
  %i.gu = mul i64 %i.ce, %indvars.iv366           ; 3 uses
  %i.gv = mul i64 %i.cc, %indvars.iv366           ; 5 uses
  %scevgep601.a = getelementptr i8, ptr %i.ex, i64 %i.gv
  %scevgep602.a = getelementptr i8, ptr %i.ey, i64 %i.gv
  %scevgep604 = getelementptr i8, ptr %i.ez, i64 %i.gv
  %scevgep605 = getelementptr i8, ptr %i.fb, i64 %i.gv
  %scevgep607 = getelementptr i8, ptr %i.fd, i64 %i.gv
  %i.gw = mul i64 %i.bx, %indvars.iv366
  %i.gx = mul nuw nsw i64 %indvars.iv366, %i.bn   ; 2 uses
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %i.dz, i64 %i.gx ; 28 uses
  %invariant.gep308 = getelementptr inbounds nuw [4 x i8], ptr %i.gy, i64 %i.eb ; 4 uses
  %brmerge755 = select i1 %min.iters.check686, i1 true, i1 %conflict.rdx684
  br i1 %brmerge755, label %.lr.ph.i.preheader, label %vector.body689

.lr.ph.i.preheader:                               ; preds = %bb.g
  br i1 %i.fe, label %.lr.ph.i.epil.preheader, label %.lr.ph.i

vector.body689:                                   ; preds = %bb.g, %vector.body689
end_hunk_0
begin_hunk_1_@_ZN6LibRaw15wavelet_denoiseEv:bb.a
  %i.ro = getelementptr inbounds nuw [4 x i8], ptr %i.of, i64 %i.rn
  %i.rp = load float, ptr %i.ro, align 4, !tbaa !9
  %i.rq = sub nuw nsw i64 %indvars.iv64.i272, %i.fn
  %i.rr = mul nuw nsw i64 %i.rq, %i.bk
  %i.rs = getelementptr inbounds nuw [4 x i8], ptr %i.of, i64 %i.rr
  %i.rt = load float, ptr %i.rs, align 4, !tbaa !9
  %i.ru = tail call float @llvm.fmuladd.f32(float %i.rp, float 2.000000e+00, float %i.rt)
  %i.rv = mul nuw nsw i64 %indvars.iv62.i273, %i.bk
  %i.rw = getelementptr inbounds nuw [4 x i8], ptr %i.of, i64 %i.rv
  %i.rx = load float, ptr %i.rw, align 4, !tbaa !9
  %i.ry = fadd float %i.ru, %i.rx
  %i.rz = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv64.i272
  store float %i.ry, ptr %i.rz, align 4, !tbaa !9
  %indvars.iv.next65.i274 = add nuw nsw i64 %indvars.iv64.i272, 1 ; 3 uses
  %i.sa = icmp slt i64 %indvars.iv.next65.i274, %invariant.op.i270
  %indvars.iv.next63.i275 = add nuw nsw i64 %indvars.iv62.i273, 1
  br i1 %i.sa, label %.lr.ph56.i271, label %.preheader.loopexit.i276, !llvm.loop !147

scalar.ph494:                                     ; preds = %scalar.ph494.preheader, %scalar.ph494
  %indvars.iv69.i266 = phi i64 [ %indvars.iv.next70.i267, %scalar.ph494 ], [ %indvars.iv69.i266.ph, %scalar.ph494.preheader ] ; 5 uses
  %i.sb = mul nsw i64 %indvars.iv69.i266, %i.bk
  %i.sc = getelementptr inbounds [4 x i8], ptr %i.of, i64 %i.sb
  %i.sd = load float, ptr %i.sc, align 4, !tbaa !9
  %i.se = sub nsw i64 %indvars.iv69.i266, %i.fn
  %i.sf = mul nsw i64 %i.se, %i.bk
  %i.sg = getelementptr inbounds [4 x i8], ptr %i.of, i64 %i.sf
  %i.sh = load float, ptr %i.sg, align 4, !tbaa !9
  %i.si = tail call float @llvm.fmuladd.f32(float %i.sd, float 2.000000e+00, float %i.sh)
  %i.sj = trunc nsw i64 %indvars.iv69.i266 to i32
  %i.sk = add i32 %i.fm, %i.sj
  %i.sl = sub i32 %invariant.op, %i.sk
  %i.sm = mul nsw i32 %i.sl, %i.bj
  %i.sn = sext i32 %i.sm to i64
  %i.so = getelementptr inbounds [4 x i8], ptr %i.of, i64 %i.sn
  %i.sp = load float, ptr %i.so, align 4, !tbaa !9
  %i.sq = fadd float %i.si, %i.sp
  %i.sr = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv69.i266
  store float %i.sq, ptr %i.sr, align 4, !tbaa !9
  %indvars.iv.next70.i267 = add nuw nsw i64 %indvars.iv69.i266, 1 ; 2 uses
  %exitcond73.not.i268 = icmp eq i64 %indvars.iv.next70.i267, %i.bl
  br i1 %exitcond73.not.i268, label %_ZN6LibRaw13hat_transformEPfS0_iii.exit282, label %scalar.ph494, !llvm.loop !148

_ZN6LibRaw13hat_transformEPfS0_iii.exit282:       ; preds = %scalar.ph494, %middle.block508, %.preheader.i261
  br i1 %.not353, label %._crit_edge318, label %.lr.ph317

.lr.ph317:                                        ; preds = %_ZN6LibRaw13hat_transformEPfS0_iii.exit282
  %i.ss = trunc nuw nsw i64 %indvars.iv376 to i32
  %i.st = add i32 %i.dx, %i.ss                    ; 6 uses
  br i1 %min.iters.check462, label %scalar.ph461.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph317
  %i.su = add i32 %i.st, %i.cj
  %i.sv = icmp slt i32 %i.su, %i.st
  %.reass751 = or i1 %i.sv, %invariant.op750
  %.reass753 = add i64 %i.oe, %invariant.op752
  %diff.check = icmp ult i64 %.reass753, 31
  %or.cond707 = select i1 %.reass751, i1 true, i1 %diff.check
  br i1 %or.cond707, label %scalar.ph461.preheader, label %vector.body465

vector.body465:                                   ; preds = %vector.scevcheck, %vector.body465
  %index466 = phi i64 [ %index.next469, %vector.body465 ], [ 0, %vector.scevcheck ] ; 3 uses
  %i.sw = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %index466 ; 2 uses
  %i.sx = getelementptr inbounds nuw i8, ptr %i.sw, i64 16
  %wide.load467 = load <4 x float>, ptr %i.sw, align 4, !tbaa !9
  %wide.load468 = load <4 x float>, ptr %i.sx, align 4, !tbaa !9
  %i.sy = fmul <4 x float> %wide.load467, splat (float 2.500000e-01)
  %i.sz = fmul <4 x float> %wide.load468, splat (float 2.500000e-01)
  %i.ta = trunc nuw nsw i64 %index466 to i32
  %i.tb = add i32 %i.st, %i.ta
  %i.tc = sext i32 %i.tb to i64
  %i.td = getelementptr inbounds [4 x i8], ptr %i.al, i64 %i.tc ; 2 uses
  %i.te = getelementptr inbounds nuw i8, ptr %i.td, i64 16
  store <4 x float> %i.sy, ptr %i.td, align 4, !tbaa !9
  store <4 x float> %i.sz, ptr %i.te, align 4, !tbaa !9
  %index.next469 = add nuw i64 %index466, 8       ; 2 uses
  %i.tf = icmp eq i64 %index.next469, %n.vec464
  br i1 %i.tf, label %middle.block470, label %vector.body465, !llvm.loop !149

middle.block470:                                  ; preds = %vector.body465
  br i1 %cmp.n471, label %._crit_edge318, label %scalar.ph461.preheader

scalar.ph461.preheader:                           ; preds = %vector.scevcheck, %.lr.ph317, %middle.block470
  %indvars.iv371.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %.lr.ph317 ], [ %n.vec464, %middle.block470 ] ; 5 uses
  br i1 %lcmp.mod728.not, label %scalar.ph461.prol.loopexit, label %scalar.ph461.prol

scalar.ph461.prol:                                ; preds = %scalar.ph461.preheader
  %i.tg = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv371.ph
  %i.th = load float, ptr %i.tg, align 4, !tbaa !9
  %i.ti = fmul float %i.th, 2.500000e-01
  %i.tj = mul nuw nsw i64 %indvars.iv371.ph, %i.bn
  %i.tk = trunc nuw nsw i64 %i.tj to i32
  %i.tl = add i32 %i.st, %i.tk
  %i.tm = sext i32 %i.tl to i64
  %i.tn = getelementptr inbounds [4 x i8], ptr %i.al, i64 %i.tm
  store float %i.ti, ptr %i.tn, align 4, !tbaa !9
  %indvars.iv.next372.prol = or disjoint i64 %indvars.iv371.ph, 1
  br label %scalar.ph461.prol.loopexit

scalar.ph461.prol.loopexit:                       ; preds = %scalar.ph461.prol, %scalar.ph461.preheader
  %indvars.iv371.unr = phi i64 [ %indvars.iv371.ph, %scalar.ph461.preheader ], [ %indvars.iv.next372.prol, %scalar.ph461.prol ]
  %i.to = icmp eq i64 %indvars.iv371.ph, %i.cl
  br i1 %i.to, label %._crit_edge318, label %scalar.ph461

scalar.ph461:                                     ; preds = %scalar.ph461.prol.loopexit, %scalar.ph461
  %indvars.iv371 = phi i64 [ %indvars.iv.next372.1, %scalar.ph461 ], [ %indvars.iv371.unr, %scalar.ph461.prol.loopexit ] ; 4 uses
  %i.tp = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv371
  %i.tq = load float, ptr %i.tp, align 4, !tbaa !9
  %i.tr = fmul float %i.tq, 2.500000e-01
  %i.ts = mul nuw nsw i64 %indvars.iv371, %i.bn
  %i.tt = trunc nuw nsw i64 %i.ts to i32
  %i.tu = add i32 %i.st, %i.tt
  %i.tv = sext i32 %i.tu to i64
  %i.tw = getelementptr inbounds [4 x i8], ptr %i.al, i64 %i.tv
  store float %i.tr, ptr %i.tw, align 4, !tbaa !9
  %indvars.iv.next372 = add nuw nsw i64 %indvars.iv371, 1 ; 2 uses
  %i.tx = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv.next372
  %i.ty = load float, ptr %i.tx, align 4, !tbaa !9
  %i.tz = fmul float %i.ty, 2.500000e-01
  %i.ua = mul nuw nsw i64 %indvars.iv.next372, %i.bn
  %i.ub = trunc nuw nsw i64 %i.ua to i32
  %i.uc = add i32 %i.st, %i.ub
  %i.ud = sext i32 %i.uc to i64
  %i.ue = getelementptr inbounds [4 x i8], ptr %i.al, i64 %i.ud
  store float %i.tz, ptr %i.ue, align 4, !tbaa !9
  %indvars.iv.next372.1 = add nuw nsw i64 %indvars.iv371, 2 ; 2 uses
  %exitcond375.not.1 = icmp eq i64 %indvars.iv.next372.1, %wide.trip.count374
  br i1 %exitcond375.not.1, label %._crit_edge318, label %scalar.ph461, !llvm.loop !150

._crit_edge318:                                   ; preds = %scalar.ph461.prol.loopexit, %scalar.ph461, %middle.block470, %_ZN6LibRaw13hat_transformEPfS0_iii.exit282
  %indvars.iv.next377 = add nuw nsw i64 %indvars.iv376, 1 ; 2 uses
  %exitcond380.not.a = icmp eq i64 %indvars.iv.next377, %wide.trip.count379
  br i1 %exitcond380.not.a, label %.lr.ph324, label %bb.h, !llvm.loop !151

.lr.ph324:                                        ; preds = %._crit_edge318, %.preheader297
  %i.uf = load float, ptr %i.au, align 4, !tbaa !185
  %i.ug = getelementptr inbounds nuw [4 x i8], ptr @_ZZN6LibRaw15wavelet_denoiseEvE5noise, i64 %indvars.iv387
  %i.uh = load float, ptr %i.ug, align 4, !tbaa !9
  %i.ui = fmul float %i.uf, %i.uh                 ; 4 uses
  %i.uj = fneg float %i.ui
  %.not252 = icmp eq i32 %.0229327, 0
  %i.uk = sext i32 %i.dx to i64
  %i.ul = sext i32 %.0229327 to i64
  %invariant.gep447.a = getelementptr [4 x i8], ptr %i.al, i64 %i.uk
  %invariant.gep449.a = getelementptr [4 x i8], ptr %i.al, i64 %i.ul
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph324, %bb.o
  %indvars.iv381 = phi i64 [ 0, %.lr.ph324 ], [ %indvars.iv.next382.a, %bb.o ] ; 4 uses
  %gep448.a = getelementptr [4 x i8], ptr %invariant.gep447.a, i64 %indvars.iv381
  %i.um = load float, ptr %gep448.a, align 4, !tbaa !9
  %gep450.a = getelementptr [4 x i8], ptr %invariant.gep449.a, i64 %indvars.iv381 ; 2 uses
  %i.un = load float, ptr %gep450.a, align 4, !tbaa !9
  %i.uo = fsub float %i.un, %i.um                 ; 4 uses
  %i.up = fcmp olt float %i.uo, %i.uj
  br i1 %i.up, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.uq = fadd float %i.ui, %i.uo
  br label %bb.m

bb.k:                                             ; preds = %bb.i
  %i.ur = fcmp ogt float %i.uo, %i.ui
  br i1 %i.ur, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.us = fsub float %i.uo, %i.ui
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l, %bb.j
  %.sink = phi float [ %i.us, %bb.l ], [ %i.uq, %bb.j ], [ 0.000000e+00, %bb.k ] ; 2 uses
  store float %.sink, ptr %gep450.a, align 4, !tbaa !9
  br i1 %.not252, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ut = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv381 ; 2 uses
  %i.uu = load float, ptr %i.ut, align 4, !tbaa !9
  %i.uv = fadd float %.sink, %i.uu
  store float %i.uv, ptr %i.ut, align 4, !tbaa !9
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  %indvars.iv.next382.a = add nuw nsw i64 %indvars.iv381, 1 ; 2 uses
  %exitcond386.not = icmp eq i64 %indvars.iv.next382.a, %wide.trip.count385
  br i1 %exitcond386.not, label %._crit_edge325, label %bb.i, !llvm.loop !152

._crit_edge325:                                   ; preds = %bb.o
  %indvars.iv.next388 = add nuw nsw i64 %indvars.iv387, 1 ; 2 uses
  %exitcond390.not.a = icmp eq i64 %indvars.iv.next388, 5
  br i1 %exitcond390.not.a, label %.lr.ph329, label %bb.f, !llvm.loop !153

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv391 = phi i64 [ %indvars.iv.next392.a, %scalar.ph ], [ %indvars.iv391.ph, %scalar.ph.preheader ] ; 4 uses
  %i.uw = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv391
  %i.ux = load float, ptr %i.uw, align 4, !tbaa !9
  %gep452 = getelementptr [4 x i8], ptr %invariant.gep451, i64 %indvars.iv391
  %i.uy = load float, ptr %gep452, align 4, !tbaa !9
  %i.uz = fadd float %i.ux, %i.uy                 ; 2 uses
  %i.va = fmul float %i.uz, %i.uz
  %i.vb = fmul float %i.va, f0x37800000
  %i.vc = fptosi float %i.vb to i32
  %2 = tail call i32 @llvm.smax.i32(i32 %i.vc, i32 0)
  %i.vd = tail call i32 @llvm.umin.i32(i32 %2, i32 65535)
  %i.ve = trunc nuw i32 %i.vd to i16
  %gep332 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep331, i64 %indvars.iv391
  store i16 %i.ve, ptr %gep332, align 2, !tbaa !77
  %indvars.iv.next392.a = add nuw nsw i64 %indvars.iv391, 1 ; 2 uses
  %exitcond396.not = icmp eq i64 %indvars.iv.next392.a, %wide.trip.count395
  br i1 %exitcond396.not, label %._crit_edge330, label %scalar.ph, !llvm.loop !154

._crit_edge330:                                   ; preds = %scalar.ph, %middle.block
  %indvars.iv.next398 = add nuw nsw i64 %indvars.iv397, 1 ; 2 uses
  %exitcond401.not = icmp eq i64 %indvars.iv.next398, %wide.trip.count400
  br i1 %exitcond401.not, label %._crit_edge334, label %.lr.ph, !llvm.loop !155

._crit_edge334:                                   ; preds = %._crit_edge330
  %i.vf = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.vg = load i32, ptr %i.vf, align 8, !tbaa !164 ; 8 uses
  %.not250 = icmp eq i32 %i.vg, 0
  %brmerge = or i1 %i.aq, %.not250
  br i1 %brmerge, label %.loopexit294, label %.preheader296

.preheader296:                                    ; preds = %._crit_edge334
  %i.vh = getelementptr inbounds nuw i8, ptr %0, i64 153268 ; 3 uses
  %i.vi = lshr i32 %i.vg, 4
  %i.vj = and i32 %i.vi, 2                        ; 2 uses
  %i.vk = zext nneg i32 %i.vj to i64
  %i.vl = getelementptr inbounds nuw [4 x i8], ptr %i.vh, i64 %i.vk
  %i.vm = getelementptr inbounds nuw i8, ptr %i.vl, i64 4
  %i.vn = load float, ptr %i.vm, align 8, !tbaa !9 ; 2 uses
  %i.vo = and i32 %i.vg, 2
  %i.vp = or disjoint i32 %i.vo, 1
  %i.vq = zext nneg i32 %i.vp to i64              ; 2 uses
  %i.vr = getelementptr inbounds nuw [4 x i8], ptr %i.vh, i64 %i.vq
  %i.vs = load float, ptr %i.vr, align 8, !tbaa !9
  %i.vt = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.vq
  %i.vu = load i32, ptr %i.vt, align 4, !tbaa !74
  store i32 %i.vu, ptr %i.b, align 4, !tbaa !74
  %i.vv = lshr i32 %i.vg, 8
  %i.vw = and i32 %i.vv, 2
  %i.vx = zext nneg i32 %i.vw to i64
  %i.vy = getelementptr inbounds nuw [4 x i8], ptr %i.vh, i64 %i.vx
  %i.vz = getelementptr inbounds nuw i8, ptr %i.vy, i64 4
  %i.wa = load float, ptr %i.vz, align 8, !tbaa !9
  %i.wb = insertelement <2 x float> poison, float %i.vn, i64 0
  %i.wc = insertelement <2 x float> %i.wb, float %i.wa, i64 1
  %i.wd = fmul <2 x float> %i.wc, splat (float 1.250000e-01)
  %i.we = insertelement <2 x float> poison, float %i.vs, i64 0
  %i.wf = insertelement <2 x float> %i.we, float %i.vn, i64 1
  %i.wg = fdiv <2 x float> %i.wd, %i.wf
  store <2 x float> %i.wg, ptr %i.a, align 8, !tbaa !9
  %i.wh = zext nneg i32 %i.vj to i64
  %i.wi = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.wh
  %i.wj = getelementptr inbounds nuw i8, ptr %i.wi, i64 4
  %i.wk = load i32, ptr %i.wj, align 4, !tbaa !74
  %i.wl = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 %i.wk, ptr %i.wl, align 4, !tbaa !74
  %i.wm = getelementptr inbounds nuw i8, ptr %0, i64 22 ; 3 uses
  %i.wn = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.wo = load i16, ptr %i.wn, align 4, !tbaa !79
  %i.wp = icmp ugt i16 %i.wo, 2
  br i1 %i.wp, label %.preheader.lr.ph, label %.loopexit294

.preheader.lr.ph:                                 ; preds = %.preheader296
  %i.wq = load i16, ptr %i.wm, align 2, !tbaa !80 ; 2 uses
  %i.wr = zext i16 %i.wq to i64                   ; 2 uses
  %.idx = shl nuw nsw i64 %i.wr, 2
  %i.ws = getelementptr inbounds nuw i8, ptr %i.al, i64 %.idx
  %i.wt = getelementptr inbounds nuw [2 x i8], ptr %i.al, i64 %i.wr
  %i.wu = getelementptr inbounds nuw i8, ptr %0, i64 381668 ; 2 uses
  %i.wv = getelementptr inbounds nuw i8, ptr %0, i64 5372
  %i.ww = load float, ptr %i.wv, align 4, !tbaa !185
  %i.wx = fmul float %i.ww, f0x3B000000           ; 4 uses
  %i.wy = fneg float %i.wx
  br label %.preheader

.loopexit292:                                     ; preds = %bb.w, %._crit_edge344
  %i.wz = phi i16 [ %i.yp, %._crit_edge344 ], [ %i.abv, %bb.w ]
  %i.xa = load i16, ptr %i.wn, align 4, !tbaa !79
  %i.xb = zext i16 %i.xa to i32
  %i.xc = add nsw i32 %i.xb, -1
  %i.xd = icmp slt i32 %.pre, %i.xc
  br i1 %i.xd, label %.preheader, label %.loopexit294, !llvm.loop !156

.preheader:                                       ; preds = %.preheader.lr.ph, %.loopexit292
  %i.xe = phi i16 [ %i.wq, %.preheader.lr.ph ], [ %i.wz, %.loopexit292 ] ; 3 uses
  %.sroa.10.0 = phi ptr [ %i.ws, %.preheader.lr.ph ], [ %.sroa.10.2, %.loopexit292 ] ; 2 uses
  %.sroa.6.0 = phi ptr [ %i.wt, %.preheader.lr.ph ], [ %.sroa.6.2, %.loopexit292 ] ; 2 uses
  %.sroa.0.0 = phi ptr [ %i.al, %.preheader.lr.ph ], [ %.sroa.0.2, %.loopexit292 ] ; 2 uses
  %.0349 = phi i32 [ -1, %.preheader.lr.ph ], [ %.1.lcssa, %.loopexit292 ] ; 3 uses
  %.3226348 = phi i32 [ 1, %.preheader.lr.ph ], [ %.pre, %.loopexit292 ] ; 6 uses
  %.not251341 = icmp sgt i32 %.0349, %.3226348
  %.pre = add nuw i32 %.3226348, 1                ; 3 uses
  br i1 %.not251341, label %._crit_edge344, label %.lr.ph343

.loopexit:                                        ; preds = %bb.p, %.lr.ph343
  %i.xf = phi i16 [ %i.xh, %.lr.ph343 ], [ %i.ym, %bb.p ] ; 2 uses
  %i.xg = phi i16 [ %i.xi, %.lr.ph343 ], [ %i.ym, %bb.p ]
  %exitcond416.not = icmp eq i32 %.1342, %.3226348
  br i1 %exitcond416.not, label %._crit_edge344, label %.lr.ph343, !llvm.loop !157

.lr.ph343:                                        ; preds = %.preheader, %.loopexit
  %i.xh = phi i16 [ %i.xf, %.loopexit ], [ %i.xe, %.preheader ]
  %i.xi = phi i16 [ %i.xg, %.loopexit ], [ %i.xe, %.preheader ] ; 2 uses
  %.sroa.10.1 = phi ptr [ %.sroa.0.1, %.loopexit ], [ %.sroa.10.0, %.preheader ] ; 2 uses
  %.sroa.6.1 = phi ptr [ %.sroa.10.1, %.loopexit ], [ %.sroa.6.0, %.preheader ] ; 2 uses
  %.sroa.0.1 = phi ptr [ %.sroa.6.1, %.loopexit ], [ %.sroa.0.0, %.preheader ] ; 3 uses
  %.1342 = phi i32 [ %i.xj, %.loopexit ], [ %.0349, %.preheader ] ; 2 uses
  %i.xj = add nsw i32 %.1342, 1                   ; 3 uses
  %i.xk = shl i32 %i.xj, 1
  %i.xl = and i32 %i.xk, 14                       ; 2 uses
  %i.xm = shl nuw nsw i32 %i.xl, 1
  %i.xn = or disjoint i32 %i.xm, 2
  %i.xo = lshr i32 %i.vg, %i.xn                   ; 2 uses
  %i.xp = and i32 %i.xo, 1                        ; 2 uses
  %i.xq = zext i16 %i.xi to i32
  %i.xr = icmp samesign ult i32 %i.xp, %i.xq
  br i1 %i.xr, label %.lr.ph340, label %.loopexit

.lr.ph340:                                        ; preds = %.lr.ph343
  %i.xs = load ptr, ptr %i.c, align 8, !tbaa !76
  %i.xt = and i32 %i.xo, 1
  %i.xu = zext nneg i32 %i.xt to i64
  %i.xv = or disjoint i32 %i.xp, %i.xl
  %i.xw = shl nuw nsw i32 %i.xv, 1
  %i.xx = lshr i32 %i.vg, %i.xw
  %i.xy = and i32 %i.xx, 3
  %i.xz = zext nneg i32 %i.xy to i64
  %invariant.gep453 = getelementptr [2 x i8], ptr %i.xs, i64 %i.xz
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph340, %bb.p
  %indvars.iv413 = phi i64 [ %i.xu, %.lr.ph340 ], [ %indvars.iv.next414, %bb.p ] ; 3 uses
  %i.ya = load i16, ptr %i.wu, align 4, !tbaa !81
  %i.yb = zext i16 %i.ya to i32                   ; 2 uses
  %i.yc = ashr i32 %i.xj, %i.yb
  %i.yd = load i16, ptr %i.d, align 2, !tbaa !160
  %i.ye = zext i16 %i.yd to i32
  %i.yf = mul nsw i32 %i.yc, %i.ye
  %i.yg = trunc nuw nsw i64 %indvars.iv413 to i32
  %i.yh = lshr i32 %i.yg, %i.yb
  %i.yi = add nsw i32 %i.yf, %i.yh
  %i.yj = sext i32 %i.yi to i64
  %gep454 = getelementptr [8 x i8], ptr %invariant.gep453, i64 %i.yj
  %i.yk = load i16, ptr %gep454, align 2, !tbaa !77
  %i.yl = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.1, i64 %indvars.iv413
  store i16 %i.yk, ptr %i.yl, align 2, !tbaa !77
  %indvars.iv.next414 = add nuw nsw i64 %indvars.iv413, 2 ; 2 uses
  %i.ym = load i16, ptr %i.wm, align 2, !tbaa !80 ; 3 uses
  %i.yn = zext i16 %i.ym to i64
  %i.yo = icmp samesign ult i64 %indvars.iv.next414, %i.yn
  br i1 %i.yo, label %bb.p, label %.loopexit, !llvm.loop !158

._crit_edge344:                                   ; preds = %.loopexit, %.preheader
  %i.yp = phi i16 [ %i.xe, %.preheader ], [ %i.xf, %.loopexit ] ; 2 uses
  %.sroa.10.2 = phi ptr [ %.sroa.10.0, %.preheader ], [ %.sroa.0.1, %.loopexit ] ; 3 uses
  %.sroa.6.2 = phi ptr [ %.sroa.6.0, %.preheader ], [ %.sroa.10.1, %.loopexit ] ; 2 uses
  %.sroa.0.2 = phi ptr [ %.sroa.0.0, %.preheader ], [ %.sroa.6.1, %.loopexit ] ; 3 uses
  %.1.lcssa = phi i32 [ %.0349, %.preheader ], [ %.pre, %.loopexit ]
  %i.yq = shl nuw nsw i32 %.3226348, 1
  %i.yr = and i32 %i.yq, 14                       ; 2 uses
  %i.ys = shl nuw nsw i32 %i.yr, 1
  %i.yt = lshr i32 %i.vg, %i.ys                   ; 3 uses
  %i.yu = and i32 %i.yt, 1
  %i.yv = add nuw nsw i32 %i.yu, 1
  %i.yw = zext i16 %i.yp to i32
  %i.yx = add nsw i32 %i.yw, -1
  %i.yy = icmp slt i32 %i.yv, %i.yx
  br i1 %i.yy, label %.lr.ph347, label %.loopexit292

.lr.ph347:                                        ; preds = %._crit_edge344
  %i.yz = and i32 %.3226348, 1                    ; 2 uses
  %i.za = xor i32 %i.yz, 1
  %i.zb = zext nneg i32 %i.za to i64
  %i.zc = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.zb
  %i.zd = load i32, ptr %i.zc, align 4, !tbaa !74
  %i.ze = zext nneg i32 %i.yz to i64              ; 2 uses
  %i.zf = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ze
  %i.zg = load float, ptr %i.zf, align 4, !tbaa !9
  %i.zh = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ze
  %i.zi = load i32, ptr %i.zh, align 4, !tbaa !74
  %i.zj = load ptr, ptr %i.c, align 8, !tbaa !76
  %i.zk = and i32 %i.yt, 1
  %i.zl = and i32 %i.yt, 1
  %narrow = add nuw nsw i32 %i.zl, 1
  %i.zm = zext nneg i32 %narrow to i64
  %i.zn = shl i32 %i.zd, 2
  %i.zo = or disjoint i32 %i.zk, %i.yr
  %i.zp = shl nuw nsw i32 %i.zo, 1
  %i.zq = xor i32 %i.zp, 2
  %i.zr = lshr i32 %i.vg, %i.zq
  %i.zs = and i32 %i.zr, 3
  %i.zt = zext nneg i32 %i.zs to i64
  %invariant.gep455 = getelementptr inbounds nuw [2 x i8], ptr %i.zj, i64 %i.zt
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph347, %bb.w
  %indvars.iv417 = phi i64 [ %i.zm, %.lr.ph347 ], [ %indvars.iv.next418, %bb.w ] ; 5 uses
  %i.zu = add nsw i64 %indvars.iv417, -1          ; 2 uses
  %i.zv = getelementptr inbounds [2 x i8], ptr %.sroa.0.2, i64 %i.zu
  %i.zw = load i16, ptr %i.zv, align 2, !tbaa !77
  %i.zx = zext i16 %i.zw to i32
  %i.zy = add nuw nsw i64 %indvars.iv417, 1       ; 2 uses
  %i.zz = getelementptr inbounds nuw [2 x i8], ptr %.sroa.0.2, i64 %i.zy
  %i.aaa = load i16, ptr %i.zz, align 2, !tbaa !77
  %i.aab = zext i16 %i.aaa to i32
  %i.aac = add nuw nsw i32 %i.aab, %i.zx
  %i.aad = getelementptr inbounds [2 x i8], ptr %.sroa.10.2, i64 %i.zu
  %i.aae = load i16, ptr %i.aad, align 2, !tbaa !77
  %i.aaf = zext i16 %i.aae to i32
  %i.aag = add nuw nsw i32 %i.aac, %i.aaf
  %i.aah = getelementptr inbounds nuw [2 x i8], ptr %.sroa.10.2, i64 %i.zy
  %i.aai = load i16, ptr %i.aah, align 2, !tbaa !77
  %i.aaj = zext i16 %i.aai to i32
  %i.aak = add nuw nsw i32 %i.aag, %i.aaj
  %i.aal = sub i32 %i.aak, %i.zn
  %i.aam = sitofp i32 %i.aal to float
  %i.aan = getelementptr inbounds nuw [2 x i8], ptr %.sroa.6.2, i64 %indvars.iv417
  %i.aao = load i16, ptr %i.aan, align 2, !tbaa !77
  %i.aap = zext i16 %i.aao to i32
  %i.aaq = add nsw i32 %i.zi, %i.aap
  %i.aar = sitofp i32 %i.aaq to float
  %i.aas = fmul nnan float %i.aar, 5.000000e-01
  %i.aat = tail call float @llvm.fmuladd.f32(float %i.aam, float %i.zg, float %i.aas) ; 2 uses
  %i.aau = fcmp olt float %i.aat, 0.000000e+00
  br i1 %i.aau, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.aav = tail call noundef float @sqrtf(float noundef %i.aat) #11
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r
  %i.aaw = phi float [ %i.aav, %bb.r ], [ 0.000000e+00, %bb.q ] ; 2 uses
  %i.aax = load i16, ptr %i.wu, align 4, !tbaa !81
  %i.aay = zext i16 %i.aax to i32                 ; 2 uses
  %i.aaz = lshr i32 %.3226348, %i.aay
  %i.aba = load i16, ptr %i.d, align 2, !tbaa !160
  %i.abb = zext i16 %i.aba to i32
  %i.abc = mul nuw nsw i32 %i.aaz, %i.abb
  %i.abd = trunc nuw nsw i64 %indvars.iv417 to i32
  %i.abe = lshr i32 %i.abd, %i.aay
  %i.abf = add nuw nsw i32 %i.abc, %i.abe
  %i.abg = zext nneg i32 %i.abf to i64
  %gep456 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep455, i64 %i.abg ; 2 uses
  %i.abh = load i16, ptr %gep456, align 2, !tbaa !77
  %i.abi = uitofp i16 %i.abh to float
  %sqrt = tail call float @llvm.sqrt.f32(float %i.abi)
  %i.abj = fsub float %sqrt, %i.aaw               ; 4 uses
  %i.abk = fcmp olt float %i.abj, %i.wy
  br i1 %i.abk, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.abl = fadd float %i.wx, %i.abj
  br label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.abm = fcmp ogt float %i.abj, %i.wx
  br i1 %i.abm, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.abn = fsub float %i.abj, %i.wx
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v, %bb.t
  %.0232 = phi float [ %i.abl, %bb.t ], [ %i.abn, %bb.v ], [ 0.000000e+00, %bb.u ]
  %i.abo = fadd float %i.aaw, %.0232              ; 2 uses
  %i.abp = fmul float %i.abo, %i.abo
  %i.abq = fpext float %i.abp to double
  %i.abr = fadd double %i.abq, 5.000000e-01
  %i.abs = fptosi double %i.abr to i32
  %3 = tail call i32 @llvm.smax.i32(i32 %i.abs, i32 0)
  %i.abt = tail call i32 @llvm.umin.i32(i32 %3, i32 65535)
  %i.abu = trunc nuw i32 %i.abt to i16
  store i16 %i.abu, ptr %gep456, align 2, !tbaa !77
  %indvars.iv.next418 = add nuw nsw i64 %indvars.iv417, 2 ; 2 uses
  %i.abv = load i16, ptr %i.wm, align 2, !tbaa !80 ; 2 uses
  %i.abw = zext i16 %i.abv to i64
  %i.abx = add nsw i64 %i.abw, -1
  %i.aby = icmp slt i64 %indvars.iv.next418, %i.abx
  br i1 %i.aby, label %bb.q, label %.loopexit292, !llvm.loop !159

.loopexit294:                                     ; preds = %.loopexit292, %bb.e, %.preheader296, %._crit_edge334
  tail call void @_ZN6LibRaw4freeEPv(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef %i.al)
  br label %bb.x

bb.x:                                             ; preds = %bb.a, %bb.b, %.loopexit294
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret void
}

declare noundef ptr @_ZN6LibRaw6mallocEm(ptr noundef nonnull align 8 dereferenceable(768512), i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sqrtf(float noundef) local_unnamed_addr #5

declare void @_ZN6LibRaw4freeEPv(ptr noundef nonnull align 8 dereferenceable(768512), ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define void @_ZN6LibRaw13median_filterEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(768512) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = alloca [9 x i32], align 16               ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 5484 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !191  ; 2 uses
  %.not79 = icmp slt i32 %i.d, 1
  br i1 %.not79, label %._crit_edge83, label %.lr.ph82

.lr.ph82:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 768264
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 768272
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 22 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph82, %._crit_edge77.1
  %i.j = phi i32 [ %i.d, %.lr.ph82 ], [ %i.hp, %._crit_edge77.1 ]
  %.04880 = phi i32 [ 1, %.lr.ph82 ], [ %i.ho, %._crit_edge77.1 ] ; 3 uses
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !82   ; 2 uses
  %.not57 = icmp eq ptr %i.k, null
  br i1 %.not57, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !83
  %i.m = add nsw i32 %.04880, -1
  %i.n = tail call noundef i32 %i.k(ptr noundef %i.l, i32 noundef 8192, i32 noundef %i.m, i32 noundef %i.j)
  %.not58 = icmp eq i32 %i.n, 0
  br i1 %.not58, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = tail call ptr @__cxa_allocate_exception(i64 4) #11 ; 2 uses
  store i32 6, ptr %i.o, align 16, !tbaa !85
  tail call void @__cxa_throw(ptr nonnull %i.o, ptr nonnull @_ZTI17LibRaw_exceptions, ptr null) #12
  unreachable

bb.e:                                             ; preds = %bb.c, %bb.b
  %i.p = load ptr, ptr %i.b, align 8, !tbaa !76   ; 9 uses
  %i.q = ptrtoint ptr %i.p to i64                 ; 2 uses
  %i.r = load i16, ptr %i.g, align 2, !tbaa !80   ; 2 uses
  %i.s = zext i16 %i.r to i64                     ; 2 uses
  %i.t = load i16, ptr %i.h, align 4, !tbaa !79   ; 2 uses
  %i.u = zext i16 %i.t to i64
  %i.v = mul nuw nsw i64 %i.u, %i.s
  %.not84 = icmp eq i64 %i.v, 0
  br i1 %.not84, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e, %.lr.ph
  %.04965 = phi ptr [ %i.y, %.lr.ph ], [ %i.p, %bb.e ] ; 3 uses
  %i.w = load i16, ptr %.04965, align 2, !tbaa !77
  %i.x = getelementptr inbounds nuw i8, ptr %.04965, i64 6
  store i16 %i.w, ptr %i.x, align 2, !tbaa !77
  %i.y = getelementptr inbounds nuw i8, ptr %.04965, i64 8 ; 2 uses
  %i.z = load i16, ptr %i.g, align 2, !tbaa !80   ; 2 uses
  %i.aa = zext i16 %i.z to i64                    ; 2 uses
  %i.ab = load i16, ptr %i.h, align 4, !tbaa !79  ; 2 uses
  %i.ac = zext i16 %i.ab to i64
  %i.ad = mul nuw nsw i64 %i.ac, %i.aa
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.ad
  %i.af = icmp ult ptr %i.y, %i.ae
  br i1 %i.af, label %.lr.ph, label %._crit_edge, !llvm.loop !186

._crit_edge:                                      ; preds = %.lr.ph, %bb.e
  %.pre-phi = phi i64 [ %i.s, %bb.e ], [ %i.aa, %.lr.ph ] ; 3 uses
  %i.ag = phi i16 [ %i.t, %bb.e ], [ %i.ab, %.lr.ph ] ; 3 uses
  %i.ah = phi i16 [ %i.r, %bb.e ], [ %i.z, %.lr.ph ] ; 3 uses
  %i.ai = zext i16 %i.ah to i32                   ; 2 uses
  %i.aj = zext i16 %i.ag to i32
  %i.ak = add nsw i32 %i.aj, -1
  %i.al = mul nsw i32 %i.ak, %i.ai
  %i.am = sext i32 %i.al to i64
  %i.an = icmp slt i64 %.pre-phi, %i.am
  br i1 %i.an, label %.lr.ph76, label %._crit_edge77

.lr.ph76:                                         ; preds = %._crit_edge
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.pre-phi
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph76, %bb.j
  %i.ap = phi i16 [ %i.ag, %.lr.ph76 ], [ %i.df, %bb.j ]
  %i.aq = phi i16 [ %i.ah, %.lr.ph76 ], [ %i.dg, %bb.j ] ; 2 uses
  %i.ar = phi i32 [ %i.ai, %.lr.ph76 ], [ %i.di, %bb.j ] ; 4 uses
  %.15074 = phi ptr [ %i.ao, %.lr.ph76 ], [ %i.dh, %bb.j ] ; 7 uses
  %i.as = ptrtoint ptr %.15074 to i64
  %i.at = sub i64 %i.as, %i.q
  %i.au = ashr exact i64 %i.at, 3
  %i.av = add nsw i64 %i.au, 1
  %i.aw = zext i16 %i.aq to i64
  %i.ax = srem i64 %i.av, %i.aw
  %i.ay = icmp slt i64 %i.ax, 2
  br i1 %i.ay, label %bb.j, label %.lr.ph72.preheader

.lr.ph72.preheader:                               ; preds = %bb.f
  %i.az = sub nsw i32 0, %i.ar
  %narrow = xor i32 %i.ar, -1
  %i.ba = sext i32 %narrow to i64
  %i.bb = zext nneg i32 %i.ar to i64
  br label %.lr.ph72

.lr.ph72:                                         ; preds = %.lr.ph72.preheader, %.lr.ph72
  %indvars.iv = phi i64 [ 0, %.lr.ph72.preheader ], [ %indvars.iv.next95, %.lr.ph72 ] ; 4 uses
  %indvars.iv86 = phi i64 [ %i.ba, %.lr.ph72.preheader ], [ %indvars.iv.next87, %.lr.ph72 ] ; 4 uses
  %.04569 = phi i32 [ %i.az, %.lr.ph72.preheader ], [ %i.cf, %.lr.ph72 ] ; 2 uses
  %i.bc = getelementptr inbounds [8 x i8], ptr %.15074, i64 %indvars.iv86 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 6
  %i.be = load i16, ptr %i.bd, align 2, !tbaa !77
  %i.bf = zext i16 %i.be to i32
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 2
  %i.bh = load i16, ptr %i.bg, align 2, !tbaa !77
  %i.bi = zext i16 %i.bh to i32
  %i.bj = sub nsw i32 %i.bf, %i.bi
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  store i32 %i.bj, ptr %i.bk, align 4, !tbaa !74
  %i.bl = getelementptr [8 x i8], ptr %.15074, i64 %indvars.iv86 ; 2 uses
  %i.bm = getelementptr i8, ptr %i.bl, i64 14
  %i.bn = load i16, ptr %i.bm, align 2, !tbaa !77
  %i.bo = zext i16 %i.bn to i32
  %i.bp = getelementptr i8, ptr %i.bl, i64 10
  %i.bq = load i16, ptr %i.bp, align 2, !tbaa !77
  %i.br = zext i16 %i.bq to i32
  %i.bs = sub nsw i32 %i.bo, %i.br
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 4
  store i32 %i.bs, ptr %i.bu, align 4, !tbaa !74
  %i.bv = getelementptr [8 x i8], ptr %.15074, i64 %indvars.iv86 ; 2 uses
  %i.bw = getelementptr i8, ptr %i.bv, i64 22
  %i.bx = load i16, ptr %i.bw, align 2, !tbaa !77
  %i.by = zext i16 %i.bx to i32
  %i.bz = getelementptr i8, ptr %i.bv, i64 18
  %i.ca = load i16, ptr %i.bz, align 2, !tbaa !77
  %i.cb = zext i16 %i.ca to i32
  %i.cc = sub nsw i32 %i.by, %i.cb
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  store i32 %i.cc, ptr %i.ce, align 4, !tbaa !74
  %indvars.iv.next95 = add nuw nsw i64 %indvars.iv, 3
  %i.cf = add nsw i32 %.04569, %i.ar
  %.not59 = icmp sgt i32 %.04569, 0
  %indvars.iv.next87 = add nsw i64 %indvars.iv86, %i.bb
  br i1 %.not59, label %.preheader, label %.lr.ph72, !llvm.loop !187

.preheader:                                       ; preds = %.lr.ph72, %bb.h
  %indvars.iv97 = phi i64 [ %indvars.iv.next98, %bb.h ], [ 0, %.lr.ph72 ] ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr @_ZZN6LibRaw13median_filterEvE3opt, i64 %indvars.iv97 ; 2 uses
  %i.ch = load i8, ptr %i.cg, align 2, !tbaa !192
  %i.ci = zext i8 %i.ch to i64
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ci ; 4 uses
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !74 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cg, i64 1
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !192
  %i.cn = zext i8 %i.cm to i64
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.cn ; 3 uses
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !74 ; 2 uses
  %i.cq = icmp sgt i32 %i.ck, %i.cp
  br i1 %i.cq, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.preheader
  %i.cr = add nsw i32 %i.cp, %i.ck                ; 2 uses
  store i32 %i.cr, ptr %i.cj, align 4, !tbaa !74
  %i.cs = load i32, ptr %i.co, align 4, !tbaa !74
  %i.ct = sub nsw i32 %i.cr, %i.cs                ; 2 uses
  store i32 %i.ct, ptr %i.co, align 4, !tbaa !74
  %i.cu = load i32, ptr %i.cj, align 4, !tbaa !74
  %i.cv = sub nsw i32 %i.cu, %i.ct
  store i32 %i.cv, ptr %i.cj, align 4, !tbaa !74
  br label %bb.h

bb.h:                                             ; preds = %.preheader, %bb.g
  %indvars.iv.next98 = add nuw nsw i64 %indvars.iv97, 2
  %i.cw = icmp samesign ult i64 %indvars.iv97, 36
  br i1 %i.cw, label %.preheader, label %bb.i, !llvm.loop !188
end_hunk_1
begin_hunk_2_@_ZN6LibRaw18recover_highlightsEv:bb.a
  %i.iz = extractelement <4 x i1> %i.ii, i64 2
  br i1 %i.iz, label %pred.store.if481, label %pred.store.continue482

pred.store.if481:                                 ; preds = %pred.store.continue480
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %index468
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 24
  store float 1.000000e+00, ptr %i.jb, align 4, !tbaa !9
  br label %pred.store.continue482

pred.store.continue482:                           ; preds = %pred.store.if481, %pred.store.continue480
  %i.jc = extractelement <4 x i1> %i.ii, i64 3
  br i1 %i.jc, label %pred.store.if483, label %pred.store.continue484

pred.store.if483:                                 ; preds = %pred.store.continue482
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %index468
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 28
  store float 1.000000e+00, ptr %i.je, align 4, !tbaa !9
  br label %pred.store.continue484

pred.store.continue484:                           ; preds = %pred.store.if483, %pred.store.continue482
  %index.next485 = add nuw i64 %index468, 8       ; 2 uses
  %i.jf = icmp eq i64 %index.next485, %n.vec466
  br i1 %i.jf, label %middle.block486, label %vector.body467, !llvm.loop !226

middle.block486:                                  ; preds = %pred.store.continue484
  br i1 %cmp.n487, label %.preheader206, label %.lr.ph262.preheader522

.lr.ph262.preheader522:                           ; preds = %.lr.ph262.preheader, %middle.block486
  %indvars.iv354.ph = phi i64 [ 0, %.lr.ph262.preheader ], [ %n.vec466, %middle.block486 ]
  br label %.lr.ph262

.preheader206:                                    ; preds = %.preheader203, %bb.ae, %middle.block486, %._crit_edge461
  br i1 %.not285, label %.loopexit, label %.preheader202.lr.ph

.preheader202.lr.ph:                              ; preds = %.preheader206
  %i.jg = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv369
  br i1 %.not286, label %.loopexit, label %.preheader202.preheader

.preheader202.preheader:                          ; preds = %.preheader202.lr.ph
  %.pre372.pre = load i16, ptr %i.av, align 4, !tbaa !81
  br label %.preheader202

.lr.ph262:                                        ; preds = %.lr.ph262.preheader522, %bb.ae
  %indvars.iv354 = phi i64 [ %indvars.iv.next355, %bb.ae ], [ %indvars.iv354.ph, %.lr.ph262.preheader522 ] ; 2 uses
  %i.jh = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %indvars.iv354 ; 2 uses
  %i.ji = load float, ptr %i.jh, align 4, !tbaa !9
  %i.jj = fcmp oeq float %i.ji, 0.000000e+00
  br i1 %i.jj, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %.lr.ph262
  store float 1.000000e+00, ptr %i.jh, align 4, !tbaa !9
  br label %bb.ae

bb.ae:                                            ; preds = %.lr.ph262, %bb.ad
  %indvars.iv.next355 = add nuw nsw i64 %indvars.iv354, 1 ; 2 uses
  %exitcond358.not = icmp eq i64 %indvars.iv.next355, %i.bm
  br i1 %exitcond358.not, label %.preheader206, label %.lr.ph262, !llvm.loop !227

.preheader202:                                    ; preds = %.preheader202.preheader, %._crit_edge273
  %.pre372 = phi i16 [ %.pre372.pre, %.preheader202.preheader ], [ %.pre372374, %._crit_edge273 ] ; 3 uses
  %indvars.iv364 = phi i64 [ 0, %.preheader202.preheader ], [ %indvars.iv.next365, %._crit_edge273 ] ; 3 uses
  %indvars366 = trunc i64 %indvars.iv364 to i32   ; 2 uses
  %indvars.iv.next365 = add nuw nsw i64 %indvars.iv364, 1 ; 2 uses
  %i.jk = add nuw nsw i32 %indvars366, 1          ; 2 uses
  %i.jl = mul nuw nsw i64 %indvars.iv364, %i.br
  %invariant.gep454 = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %i.jl
  br label %bb.af

bb.af:                                            ; preds = %.preheader202, %._crit_edge270
  %.pre372379 = phi i16 [ %.pre372, %.preheader202 ], [ %.pre372374, %._crit_edge270 ] ; 2 uses
  %i.jm = phi i16 [ %.pre372, %.preheader202 ], [ %i.ln, %._crit_edge270 ] ; 2 uses
  %i.jn = phi i16 [ %.pre372, %.preheader202 ], [ %i.lo, %._crit_edge270 ] ; 3 uses
  %indvars.iv359 = phi i64 [ 0, %.preheader202 ], [ %indvars.iv.next360, %._crit_edge270 ] ; 3 uses
  %indvars361 = trunc i64 %indvars.iv359 to i32   ; 2 uses
  %i.jo = zext nneg i16 %i.jn to i32
  %i.jp = lshr i32 4, %i.jo                       ; 3 uses
  %i.jq = mul i32 %i.jp, %indvars366              ; 2 uses
  %i.jr = mul i32 %i.jp, %i.jk
  %i.js = icmp ult i32 %i.jq, %i.jr
  br i1 %i.js, label %.lr.ph269, label %._crit_edge270

.lr.ph269:                                        ; preds = %bb.af
  %i.jt = add nuw nsw i32 %indvars361, 1          ; 2 uses
  %gep455 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep454, i64 %indvars.iv359
  br label %bb.ag

bb.ag:                                            ; preds = %.lr.ph269, %._crit_edge266
  %.pre372378 = phi i16 [ %.pre372379, %.lr.ph269 ], [ %.pre372375, %._crit_edge266 ] ; 2 uses
  %i.ju = phi i16 [ %i.jm, %.lr.ph269 ], [ %i.lh, %._crit_edge266 ] ; 2 uses
  %i.jv = phi i16 [ %i.jn, %.lr.ph269 ], [ %i.lh, %._crit_edge266 ] ; 2 uses
  %i.jw = phi i32 [ %i.jp, %.lr.ph269 ], [ %i.lk, %._crit_edge266 ]
  %.1161267 = phi i32 [ %i.jq, %.lr.ph269 ], [ %i.li, %._crit_edge266 ] ; 2 uses
  %i.jx = mul i32 %i.jw, %indvars361              ; 2 uses
  %i.jy = zext nneg i16 %i.jv to i32
  %i.jz = lshr i32 4, %i.jy
  %i.ka = mul i32 %i.jz, %i.jt
  %i.kb = icmp ult i32 %i.jx, %i.ka
  br i1 %i.kb, label %.lr.ph265, label %._crit_edge266

.lr.ph265:                                        ; preds = %bb.ag
  %i.kc = load ptr, ptr %i.b, align 8, !tbaa !76
  %i.kd = load i32, ptr %i.jg, align 4, !tbaa !74
  br label %bb.ah

bb.ah:                                            ; preds = %.lr.ph265, %bb.ak
  %.pre372377 = phi i16 [ %.pre372378, %.lr.ph265 ], [ %.pre372376, %bb.ak ] ; 2 uses
  %i.ke = phi i16 [ %i.ju, %.lr.ph265 ], [ %i.la, %bb.ak ] ; 2 uses
  %i.kf = phi i16 [ %i.jv, %.lr.ph265 ], [ %i.lb, %bb.ak ] ; 2 uses
  %.1159263 = phi i32 [ %i.jx, %.lr.ph265 ], [ %i.lc, %bb.ak ] ; 2 uses
  %i.kg = load i16, ptr %i.ba, align 2, !tbaa !80
  %i.kh = zext i16 %i.kg to i32
  %i.ki = mul i32 %.1161267, %i.kh
  %i.kj = add i32 %i.ki, %.1159263
  %i.kk = zext i32 %i.kj to i64
  %i.kl = getelementptr inbounds nuw [8 x i8], ptr %i.kc, i64 %i.kk ; 2 uses
  %i.km = getelementptr inbounds nuw [2 x i8], ptr %i.kl, i64 %indvars.iv369 ; 2 uses
  %i.kn = load i16, ptr %i.km, align 2, !tbaa !77
  %i.ko = zext i16 %i.kn to i32                   ; 2 uses
  %i.kp = sdiv i32 %i.ko, %i.kd
  %i.kq = icmp sgt i32 %i.kp, 1
  br i1 %i.kq, label %bb.ai, label %bb.ak

bb.ai:                                            ; preds = %bb.ah
  %i.kr = getelementptr inbounds nuw [2 x i8], ptr %i.kl, i64 %.0156.lcssa
  %i.ks = load i16, ptr %i.kr, align 2, !tbaa !77
  %i.kt = uitofp i16 %i.ks to float
  %i.ku = load float, ptr %gep455, align 4, !tbaa !9
  %i.kv = fmul float %i.ku, %i.kt
  %i.kw = fptosi float %i.kv to i32               ; 2 uses
  %i.kx = icmp slt i32 %i.ko, %i.kw
  br i1 %i.kx, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.ky = tail call i32 @llvm.umin.i32(i32 %i.kw, i32 65535)
  %i.kz = trunc nuw i32 %i.ky to i16
  store i16 %i.kz, ptr %i.km, align 2, !tbaa !77
  %.pre373 = load i16, ptr %i.av, align 4, !tbaa !81 ; 3 uses
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ah, %bb.aj, %bb.ai
  %.pre372376 = phi i16 [ %.pre372377, %bb.ah ], [ %.pre373, %bb.aj ], [ %.pre372377, %bb.ai ] ; 2 uses
  %i.la = phi i16 [ %i.ke, %bb.ah ], [ %.pre373, %bb.aj ], [ %i.ke, %bb.ai ] ; 2 uses
  %i.lb = phi i16 [ %i.kf, %bb.ah ], [ %.pre373, %bb.aj ], [ %i.kf, %bb.ai ] ; 2 uses
  %i.lc = add nuw nsw i32 %.1159263, 1            ; 2 uses
  %i.ld = zext nneg i16 %i.lb to i32
  %i.le = lshr i32 4, %i.ld
  %i.lf = mul i32 %i.le, %i.jt
  %i.lg = icmp samesign ult i32 %i.lc, %i.lf
  br i1 %i.lg, label %bb.ah, label %._crit_edge266, !llvm.loop !228

._crit_edge266:                                   ; preds = %bb.ak, %bb.ag
  %.pre372375 = phi i16 [ %.pre372378, %bb.ag ], [ %.pre372376, %bb.ak ] ; 2 uses
  %i.lh = phi i16 [ %i.ju, %bb.ag ], [ %i.la, %bb.ak ] ; 5 uses
  %i.li = add nuw nsw i32 %.1161267, 1            ; 2 uses
  %i.lj = zext nneg i16 %i.lh to i32
  %i.lk = lshr i32 4, %i.lj                       ; 2 uses
  %i.ll = mul i32 %i.lk, %i.jk
  %i.lm = icmp samesign ult i32 %i.li, %i.ll
  br i1 %i.lm, label %bb.ag, label %._crit_edge270, !llvm.loop !229

._crit_edge270:                                   ; preds = %._crit_edge266, %bb.af
  %.pre372374 = phi i16 [ %.pre372379, %bb.af ], [ %.pre372375, %._crit_edge266 ] ; 2 uses
  %i.ln = phi i16 [ %i.jm, %bb.af ], [ %i.lh, %._crit_edge266 ]
  %i.lo = phi i16 [ %i.jn, %bb.af ], [ %i.lh, %._crit_edge266 ]
  %indvars.iv.next360 = add nuw nsw i64 %indvars.iv359, 1 ; 2 uses
  %exitcond363.not = icmp eq i64 %indvars.iv.next360, %i.br
  br i1 %exitcond363.not, label %._crit_edge273, label %bb.af, !llvm.loop !230

._crit_edge273:                                   ; preds = %._crit_edge270
  %exitcond368.not = icmp eq i64 %indvars.iv.next365, %i.be
  br i1 %exitcond368.not, label %.loopexit, label %.preheader202, !llvm.loop !231

.loopexit:                                        ; preds = %._crit_edge273, %.preheader206, %.preheader202.lr.ph, %bb.d
  %indvars.iv.next370 = add nuw nsw i64 %indvars.iv369, 1 ; 2 uses
  %i.lp = load i32, ptr %i.f, align 4, !tbaa !75  ; 2 uses
  %i.lq = zext i32 %i.lp to i64
  %i.lr = icmp samesign ult i64 %indvars.iv.next370, %i.lq
  br i1 %i.lr, label %bb.d, label %._crit_edge279, !llvm.loop !232

._crit_edge279:                                   ; preds = %.loopexit, %._crit_edge
  tail call void @_ZN6LibRaw4freeEPv(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef %i.bh)
  br label %.loopexit209

.loopexit209:                                     ; preds = %.lr.ph213, %._crit_edge279
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret void
}

declare noundef ptr @_ZN6LibRaw6callocEmm(ptr noundef nonnull align 8 dereferenceable(768512), i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @ldexpf(float, i32) local_unnamed_addr #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.umin.v4i32(<4 x i32>, <4 x i32>) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smin.v4i32(<4 x i32>, <4 x i32>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smin.v4i32(<4 x i32>) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.experimental.vector.extract.last.active.v4i32(<4 x i32>, <4 x i1>, i32) #10

attributes #0 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold noreturn }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(errnomem: write) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nounwind }
attributes #12 = { noreturn }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!"float", !4, i64 0}
!9 = !{!8, !8, i64 0}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.isvectorized", i32 1}
!12 = !{!"llvm.loop.unroll.runtime.disable"}
!13 = !{!"any pointer", !4, i64 0}
!14 = !{!"p1 short", !13, i64 0}
!15 = !{!"short", !4, i64 0}
!16 = !{!"double", !4, i64 0}
!17 = !{!"_ZTS20libraw_image_sizes_t", !15, i64 0, !15, i64 2, !15, i64 4, !15, i64 6, !15, i64 8, !15, i64 10, !15, i64 12, !15, i64 14, !5, i64 16, !16, i64 24, !5, i64 32, !4, i64 36, !15, i64 164, !4, i64 166}
!18 = !{!"p1 omnipotent char", !13, i64 0}
!19 = !{!"_ZTS16libraw_iparams_t", !4, i64 0, !4, i64 4, !4, i64 68, !4, i64 132, !4, i64 196, !4, i64 260, !5, i64 324, !5, i64 328, !5, i64 332, !5, i64 336, !5, i64 340, !5, i64 344, !4, i64 348, !4, i64 384, !4, i64 420, !5, i64 428, !18, i64 432}
!20 = !{!"_ZTS18libraw_nikonlens_t", !8, i64 0, !4, i64 4, !4, i64 5, !4, i64 6, !4, i64 7}
!21 = !{!"_ZTS16libraw_dnglens_t", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12}
!22 = !{!"long long", !4, i64 0}
!23 = !{!"_ZTS24libraw_makernotes_lens_t", !22, i64 0, !4, i64 8, !15, i64 136, !15, i64 138, !22, i64 144, !15, i64 152, !15, i64 154, !4, i64 156, !15, i64 220, !4, i64 222, !4, i64 238, !8, i64 256, !8, i64 260, !8, i64 264, !8, i64 268, !8, i64 272, !8, i64 276, !8, i64 280, !8, i64 284, !8, i64 288, !8, i64 292, !8, i64 296, !8, i64 300, !8, i64 304, !8, i64 308, !8, i64 312, !22, i64 320, !4, i64 328, !22, i64 456, !4, i64 464, !22, i64 592, !4, i64 600, !15, i64 728, !8, i64 732}
!24 = !{!"_ZTS17libraw_lensinfo_t", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !4, i64 20, !4, i64 148, !4, i64 276, !4, i64 404, !15, i64 532, !20, i64 536, !21, i64 544, !23, i64 560}
!25 = !{!"_ZTS13libraw_area_t", !15, i64 0, !15, i64 2, !15, i64 4, !15, i64 6}
!26 = !{!"_ZTS25libraw_canon_makernotes_t", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !4, i64 16, !5, i64 32, !4, i64 36, !15, i64 52, !15, i64 54, !4, i64 56, !15, i64 58, !15, i64 60, !15, i64 62, !15, i64 64, !15, i64 66, !15, i64 68, !15, i64 70, !15, i64 72, !15, i64 74, !15, i64 76, !15, i64 78, !15, i64 80, !15, i64 82, !5, i64 84, !8, i64 88, !15, i64 92, !15, i64 94, !15, i64 96, !15, i64 98, !5, i64 100, !15, i64 104, !5, i64 108, !5, i64 112, !15, i64 116, !5, i64 120, !25, i64 124, !25, i64 132, !25, i64 140, !25, i64 148, !25, i64 156, !4, i64 164}
!27 = !{!"_ZTS30libraw_sensor_highspeed_crop_t", !15, i64 0, !15, i64 2, !15, i64 4, !15, i64 6}
!28 = !{!"_ZTS25libraw_nikon_makernotes_t", !16, i64 0, !15, i64 8, !15, i64 10, !4, i64 12, !4, i64 19, !4, i64 20, !4, i64 21, !4, i64 34, !4, i64 54, !4, i64 58, !4, i64 62, !4, i64 66, !4, i64 67, !4, i64 68, !4, i64 69, !4, i64 70, !4, i64 71, !4, i64 73, !4, i64 74, !4, i64 75, !4, i64 76, !4, i64 77, !4, i64 78, !4, i64 82, !4, i64 86, !15, i64 88, !5, i64 92, !5, i64 96, !5, i64 100, !5, i64 104, !4, i64 112, !4, i64 144, !4, i64 145, !4, i64 146, !5, i64 148, !5, i64 152, !5, i64 156, !4, i64 160, !4, i64 162, !15, i64 170, !27, i64 172, !15, i64 180, !15, i64 182, !15, i64 184, !5, i64 188, !4, i64 192, !4, i64 212, !5, i64 232, !4, i64 236, !5, i64 248, !18, i64 256, !15, i64 264, !15, i64 266, !4, i64 268, !15, i64 270, !16, i64 272, !16, i64 280, !16, i64 288}
!29 = !{!"_ZTS30libraw_hasselblad_makernotes_t", !5, i64 0, !16, i64 8, !4, i64 16, !4, i64 24, !4, i64 88, !5, i64 152, !5, i64 156, !5, i64 160, !5, i64 164, !4, i64 168, !4, i64 200, !5, i64 264, !4, i64 268, !4, i64 276, !4, i64 288}
!30 = !{!"_ZTS18libraw_fuji_info_t", !8, i64 0, !15, i64 4, !15, i64 6, !15, i64 8, !15, i64 10, !15, i64 12, !15, i64 14, !15, i64 16, !15, i64 18, !4, i64 20, !4, i64 53, !8, i64 88, !15, i64 92, !15, i64 94, !4, i64 96, !15, i64 100, !5, i64 104, !5, i64 108, !15, i64 112, !4, i64 114, !15, i64 120, !15, i64 122, !15, i64 124, !15, i64 126, !15, i64 128, !5, i64 132, !15, i64 136, !4, i64 138, !4, i64 151, !4, i64 156, !5, i64 164, !15, i64 168, !5, i64 172, !15, i64 176, !4, i64 178, !4, i64 196, !5, i64 324, !5, i64 328, !5, i64 332, !4, i64 336, !5, i64 344}
!31 = !{!"_ZTS27libraw_olympus_makernotes_t", !4, i64 0, !15, i64 6, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !5, i64 40, !5, i64 44, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !4, i64 64, !4, i64 72, !15, i64 82, !4, i64 84, !15, i64 88, !15, i64 90, !4, i64 92, !4, i64 352, !15, i64 392, !4, i64 394, !4, i64 396, !4, i64 404, !15, i64 416, !15, i64 418, !15, i64 420, !15, i64 422, !16, i64 424, !4, i64 432, !4, i64 440, !4, i64 448, !5, i64 452, !15, i64 456, !15, i64 458}
!32 = !{!"_ZTS18libraw_sony_info_t", !15, i64 0, !4, i64 2, !4, i64 3, !5, i64 4, !4, i64 8, !5, i64 12, !4, i64 16, !4, i64 17, !15, i64 18, !4, i64 20, !4, i64 24, !4, i64 25, !15, i64 26, !4, i64 28, !4, i64 38, !4, i64 39, !4, i64 40, !15, i64 48, !4, i64 50, !4, i64 51, !4, i64 52, !15, i64 54, !5, i64 56, !15, i64 60, !4, i64 62, !15, i64 66, !15, i64 68, !15, i64 70, !15, i64 72, !15, i64 74, !15, i64 76, !15, i64 78, !5, i64 80, !8, i64 84, !15, i64 88, !5, i64 92, !5, i64 96, !15, i64 100, !4, i64 102, !5, i64 124, !15, i64 128, !5, i64 132, !4, i64 136, !4, i64 137, !15, i64 138, !15, i64 140, !15, i64 142, !15, i64 144, !15, i64 146, !15, i64 148, !15, i64 150, !15, i64 152, !15, i64 154, !5, i64 156, !15, i64 160, !4, i64 162, !8, i64 180}
!33 = !{!"_ZTS25libraw_kodak_makernotes_t", !15, i64 0, !15, i64 2, !15, i64 4, !15, i64 6, !15, i64 8, !15, i64 10, !4, i64 12, !4, i64 48, !4, i64 84, !4, i64 120, !4, i64 156, !4, i64 192, !15, i64 228, !15, i64 230, !15, i64 232, !15, i64 234, !8, i64 236, !8, i64 240}
!34 = !{!"_ZTS29libraw_panasonic_makernotes_t", !15, i64 0, !15, i64 2, !4, i64 4, !5, i64 36, !8, i64 40, !4, i64 44, !15, i64 56, !15, i64 58, !5, i64 60, !5, i64 64}
!35 = !{!"_ZTS26libraw_pentax_makernotes_t", !4, i64 0, !4, i64 4, !4, i64 8, !15, i64 12, !5, i64 16, !5, i64 20, !15, i64 24, !4, i64 26, !15, i64 30, !4, i64 32, !4, i64 33, !15, i64 34}
!36 = !{!"_ZTS22libraw_p1_makernotes_t", !4, i64 0, !4, i64 64, !4, i64 128, !4, i64 384}
!37 = !{!"_ZTS25libraw_ricoh_makernotes_t", !15, i64 0, !4, i64 4, !4, i64 12, !15, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !15, i64 40, !15, i64 42, !15, i64 44, !15, i64 46, !15, i64 48, !15, i64 50, !16, i64 56, !16, i64 64}
!38 = !{!"_ZTS27libraw_samsung_makernotes_t", !4, i64 0, !4, i64 16, !4, i64 32, !4, i64 40, !16, i64 88, !5, i64 96, !4, i64 100}
!39 = !{!"_ZTS24libraw_metadata_common_t", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !8, i64 40, !8, i64 44, !8, i64 48, !8, i64 52, !8, i64 56, !8, i64 60, !15, i64 64, !4, i64 66, !8, i64 196, !4, i64 200, !5, i64 296}
!40 = !{!"_ZTS19libraw_makernotes_t", !26, i64 0, !28, i64 168, !29, i64 464, !30, i64 848, !31, i64 1200, !32, i64 1664, !33, i64 1848, !34, i64 2092, !35, i64 2160, !36, i64 2196, !37, i64 2648, !38, i64 2720, !39, i64 2856}
!41 = !{!"_ZTS21libraw_shootinginfo_t", !15, i64 0, !15, i64 2, !15, i64 4, !15, i64 6, !15, i64 8, !15, i64 10, !15, i64 12, !4, i64 14, !4, i64 78}
!42 = !{!"_ZTS22libraw_output_params_t", !4, i64 0, !4, i64 16, !4, i64 32, !4, i64 64, !4, i64 112, !8, i64 128, !8, i64 132, !5, i64 136, !5, i64 140, !5, i64 144, !5, i64 148, !5, i64 152, !5, i64 156, !5, i64 160, !18, i64 168, !18, i64 176, !18, i64 184, !18, i64 192, !5, i64 200, !5, i64 204, !5, i64 208, !5, i64 212, !5, i64 216, !5, i64 220, !4, i64 224, !5, i64 240, !5, i64 244, !8, i64 248, !8, i64 252, !5, i64 256, !5, i64 260, !5, i64 264, !5, i64 268, !5, i64 272, !5, i64 276, !5, i64 280, !5, i64 284, !8, i64 288, !8, i64 292, !5, i64 296, !5, i64 300}
!43 = !{!"any p2 pointer", !13, i64 0}
!44 = !{!"p2 omnipotent char", !43, i64 0}
!45 = !{!"_ZTS26libraw_raw_unpack_params_t", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !8, i64 28, !4, i64 32, !44, i64 40}
!46 = !{!"_ZTS5ph1_t", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !8, i64 32}
!47 = !{!"_ZTS19libraw_dng_levels_t", !5, i64 0, !4, i64 4, !5, i64 16420, !4, i64 16424, !8, i64 32840, !4, i64 32844, !4, i64 32860, !4, i64 32868, !5, i64 32884, !4, i64 32888, !4, i64 32904, !8, i64 32920, !8, i64 32924, !4, i64 32928}
!48 = !{!"_ZTS18libraw_colordata_t", !4, i64 0, !4, i64 131072, !5, i64 147488, !5, i64 147492, !5, i64 147496, !4, i64 147500, !8, i64 147516, !8, i64 147520, !4, i64 147524, !4, i64 147652, !4, i64 147668, !4, i64 147684, !4, i64 147732, !4, i64 147780, !4, i64 147828, !46, i64 147876, !8, i64 147912, !8, i64 147916, !4, i64 147920, !4, i64 147984, !4, i64 148048, !4, i64 148112, !4, i64 148176, !4, i64 148193, !13, i64 148264, !5, i64 148272, !4, i64 148276, !4, i64 148308, !47, i64 148648, !4, i64 181624, !4, i64 185720, !5, i64 187000, !4, i64 187004, !5, i64 187076, !5, i64 187080}
!49 = !{!"long", !4, i64 0}
!50 = !{!"_ZTS17libraw_gps_info_t", !4, i64 0, !4, i64 12, !4, i64 24, !8, i64 36, !4, i64 40, !4, i64 41, !4, i64 42, !4, i64 43, !4, i64 44}
!51 = !{!"_ZTS17libraw_imgother_t", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !49, i64 16, !5, i64 24, !4, i64 28, !50, i64 156, !4, i64 204, !4, i64 716, !4, i64 780}
!52 = !{!"_ZTS24LibRaw_thumbnail_formats", !4, i64 0}
!53 = !{!"_ZTS18libraw_thumbnail_t", !52, i64 0, !15, i64 4, !15, i64 6, !5, i64 8, !5, i64 12, !18, i64 16}
!54 = !{!"_ZTS23libraw_thumbnail_list_t", !5, i64 0, !4, i64 8}
!55 = !{!"p1 float", !13, i64 0}
!56 = !{!"_ZTS31libraw_internal_output_params_t", !5, i64 0, !5, i64 4, !5, i64 8, !15, i64 12, !15, i64 14}
!57 = !{!"_ZTS16libraw_rawdata_t", !13, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !55, i64 32, !55, i64 40, !55, i64 48, !14, i64 56, !14, i64 64, !19, i64 72, !17, i64 512, !56, i64 696, !48, i64 712}
!58 = !{!"_ZTS13libraw_data_t", !14, i64 0, !17, i64 8, !19, i64 192, !24, i64 632, !40, i64 1928, !41, i64 5088, !42, i64 5232, !45, i64 5536, !5, i64 5584, !5, i64 5588, !48, i64 5592, !51, i64 192680, !53, i64 193480, !54, i64 193504, !57, i64 193768, !13, i64 381568}
!59 = !{!"p1 _ZTS10LibRaw_TLS", !13, i64 0}
!60 = !{!"p1 _ZTS26LibRaw_abstract_datastream", !13, i64 0}
!61 = !{!"p1 _ZTS8_IO_FILE", !13, i64 0}
!62 = !{!"_ZTS15internal_data_t", !60, i64 0, !61, i64 8, !5, i64 16, !18, i64 24, !22, i64 32, !22, i64 40, !4, i64 48}
!63 = !{!"p1 int", !13, i64 0}
!64 = !{!"_ZTS13output_data_t", !63, i64 0, !63, i64 8}
!65 = !{!"_ZTS15identify_data_t", !5, i64 0, !22, i64 8, !22, i64 16, !5, i64 24, !5, i64 28, !5, i64 32}
!66 = !{!"_ZTS33LibRaw_internal_thumbnail_formats", !4, i64 0}
!67 = !{!"_ZTS12pana8_tags_t", !4, i64 0, !4, i64 24, !15, i64 36, !4, i64 38, !4, i64 46, !4, i64 80, !4, i64 114, !15, i64 148, !15, i64 150, !4, i64 152, !4, i64 192, !4, i64 204, !4, i64 224, !4, i64 234}
!68 = !{!"_ZTS15unpacker_data_t", !15, i64 0, !4, i64 2, !4, i64 10, !5, i64 16, !22, i64 24, !22, i64 32, !22, i64 40, !22, i64 48, !22, i64 56, !22, i64 64, !22, i64 72, !5, i64 80, !5, i64 84, !5, i64 88, !5, i64 92, !66, i64 96, !5, i64 100, !5, i64 104, !5, i64 108, !5, i64 112, !5, i64 116, !5, i64 120, !5, i64 124, !5, i64 128, !5, i64 132, !5, i64 136, !5, i64 140, !22, i64 144, !5, i64 152, !5, i64 156, !5, i64 160, !5, i64 164, !5, i64 168, !5, i64 172, !5, i64 176, !5, i64 180, !5, i64 184, !67, i64 192, !4, i64 440, !5, i64 2488, !5, i64 2492, !15, i64 2496, !15, i64 2498, !5, i64 2500, !5, i64 2504, !5, i64 2508, !5, i64 2512, !5, i64 2516, !5, i64 2520, !5, i64 2524, !4, i64 2528, !15, i64 2608}
!69 = !{!"_ZTS22libraw_internal_data_t", !62, i64 0, !56, i64 64, !64, i64 80, !65, i64 96, !68, i64 136}
!70 = !{!"p1 _ZTS6decode", !13, i64 0}
!71 = !{!"_ZTS13libraw_memmgr", !43, i64 0, !5, i64 8}
!72 = !{!"_ZTS18libraw_callbacks_t", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !13, i64 72, !13, i64 80, !13, i64 88, !13, i64 96, !13, i64 104, !13, i64 112, !13, i64 120, !13, i64 128, !13, i64 136, !13, i64 144}
!73 = !{!"_ZTS6LibRaw", !58, i64 8, !59, i64 381584, !69, i64 381592, !4, i64 384344, !70, i64 433496, !70, i64 433504, !4, i64 433512, !71, i64 768232, !72, i64 768248, !4, i64 768400, !4, i64 768416, !4, i64 768432, !13, i64 768448, !13, i64 768456, !13, i64 768464, !49, i64 768472, !13, i64 768480, !13, i64 768488, !13, i64 768496, !13, i64 768504}
!74 = !{!5, !5, i64 0}
!75 = !{!73, !5, i64 540}
!76 = !{!73, !14, i64 8}
!77 = !{!15, !15, i64 0}
!78 = !{!"llvm.loop.unroll.disable"}
!79 = !{!73, !15, i64 20}
!80 = !{!73, !15, i64 22}
!81 = !{!73, !15, i64 381668}
!82 = !{!73, !13, i64 768264}
!83 = !{!73, !13, i64 768272}
!84 = !{!"_ZTS17LibRaw_exceptions", !4, i64 0}
!85 = !{!84, !84, i64 0}
!86 = distinct !{!86, !"LVerDomain"}
!87 = distinct !{!87, !86}
!88 = distinct !{!88, !86}
!89 = distinct !{!89, !86}
!90 = distinct !{!90, !10, !11, !12}
!91 = distinct !{!91, !10, !11, !12}
!92 = distinct !{!92, !10, !11}
!93 = distinct !{!93, !"LVerDomain"}
!94 = distinct !{!94, !93}
!95 = distinct !{!95, !93}
!96 = distinct !{!96, !93}
!97 = distinct !{!97, !93}
!98 = distinct !{!98, !10, !11, !12}
!99 = distinct !{!99, !10, !11}
!100 = distinct !{!100, !10, !11}
!101 = !{!87}
!102 = !{!88}
!103 = !{!89}
!104 = !{!88, !87}
!105 = !{!94}
!106 = !{!95}
!107 = !{!96}
!108 = !{!97}
!109 = !{!96, !95, !94}
!110 = distinct !{!110, !10}
!111 = distinct !{!111, !10}
!112 = distinct !{!112, !10, !11, !12}
!113 = distinct !{!113, !"LVerDomain"}
!114 = distinct !{!114, !113}
!115 = distinct !{!115, !113}
!116 = distinct !{!116, !113}
!117 = distinct !{!117, !113}
!118 = distinct !{!118, !10, !11, !12}
!119 = distinct !{!119, !10, !11, !12}
!120 = distinct !{!120, !10, !11}
!121 = distinct !{!121, !"LVerDomain"}
!122 = distinct !{!122, !121}
!123 = distinct !{!123, !121}
!124 = distinct !{!124, !121}
!125 = distinct !{!125, !121}
!126 = distinct !{!126, !10, !11, !12}
!127 = distinct !{!127, !10, !11}
!128 = distinct !{!128, !10, !11}
!129 = distinct !{!129, !10, !11, !12}
!130 = distinct !{!130, !78}
!131 = distinct !{!131, !10, !11}
!132 = distinct !{!132, !10}
!133 = distinct !{!133, !"LVerDomain"}
!134 = distinct !{!134, !133}
!135 = distinct !{!135, !133}
!136 = distinct !{!136, !133}
!137 = distinct !{!137, !133}
!138 = distinct !{!138, !10, !11, !12}
!139 = distinct !{!139, !10, !11, !12}
!140 = distinct !{!140, !10, !11}
!141 = distinct !{!141, !"LVerDomain"}
!142 = distinct !{!142, !141}
!143 = distinct !{!143, !141}
!144 = distinct !{!144, !141}
!145 = distinct !{!145, !141}
!146 = distinct !{!146, !10, !11, !12}
!147 = distinct !{!147, !10, !11}
!148 = distinct !{!148, !10, !11}
!149 = distinct !{!149, !10, !11, !12}
!150 = distinct !{!150, !10, !11}
!151 = distinct !{!151, !10}
!152 = distinct !{!152, !10}
!153 = distinct !{!153, !10}
!154 = distinct !{!154, !10, !12, !11}
!155 = distinct !{!155, !10}
!156 = distinct !{!156, !10}
!157 = distinct !{!157, !10}
!158 = distinct !{!158, !10}
!159 = distinct !{!159, !10}
!160 = !{!73, !15, i64 30}
!161 = !{!73, !15, i64 28}
!162 = !{!73, !5, i64 153096}
!163 = !{!73, !5, i64 153088}
!164 = !{!73, !5, i64 544}
!165 = !{!114}
!166 = !{!115}
!167 = !{!116}
end_hunk_2
