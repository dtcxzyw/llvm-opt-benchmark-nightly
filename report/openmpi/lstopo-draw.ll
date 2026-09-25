Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/lstopo-draw?download=true
inline.NumInlined: 79
inline.NumDeleted: 20
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@place__children:bb.a

bb.g:                                             ; preds = %.lr.ph.split.us.i
  %i.at = getelementptr inbounds nuw i8, ptr %.03952.us.i, i64 40
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !89 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !62
  %i.ax = icmp eq i32 %i.aw, 1
  br i1 %i.ax, label %pci_link_speed.exit.us.i, label %pci_link_speed.exit.thread.us.i

bb.h:                                             ; preds = %.lr.ph.split.us.i
  %i.ay = getelementptr inbounds nuw i8, ptr %.03952.us.i, i64 40
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !89
  br label %pci_link_speed.exit.us.i

pci_link_speed.exit.us.i:                         ; preds = %bb.h, %bb.g
  %.sink7.i.us.i = phi ptr [ %i.az, %bb.h ], [ %i.au, %bb.g ]
  %i.ba = getelementptr inbounds nuw i8, ptr %.sink7.i.us.i, i64 20
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !62
  %i.bc = fcmp une float %i.bb, 0.000000e+00
  br i1 %i.bc, label %bb.i, label %pci_link_speed.exit.thread.us.i

bb.i:                                             ; preds = %pci_link_speed.exit.us.i
  %spec.select47.us.i = tail call i32 @llvm.umax.i32(i32 %i.am, i32 %i.ai)
  br label %pci_link_speed.exit.thread.us.i

pci_link_speed.exit.thread.us.i:                  ; preds = %bb.i, %pci_link_speed.exit.us.i, %bb.g, %.lr.ph.split.us.i
  %.0.us.i = phi i32 [ %i.am, %bb.g ], [ %spec.select47.us.i, %bb.i ], [ %i.am, %pci_link_speed.exit.us.i ], [ %i.am, %.lr.ph.split.us.i ]
  %i.bd = add i32 %.04150.us.i, %4
  %i.be = add i32 %i.bd, %.0.us.i                 ; 2 uses
  %i.bf = call fastcc ptr @next_child(ptr noundef nonnull readonly %0, ptr noundef nonnull readonly %1, i32 noundef %2, ptr noundef nonnull %.03952.us.i, ptr noundef %i.c) ; 2 uses
  %.not45.us.i = icmp eq ptr %i.bf, null
  br i1 %.not45.us.i, label %place_children_vert.exit, label %.lr.ph.split.us.i, !llvm.loop !194

pci_link_speed.exit.thread.i:                     ; preds = %.lr.ph.i22, %pci_link_speed.exit.thread.i
  %.03952.i = phi ptr [ %i.br, %pci_link_speed.exit.thread.i ], [ %i.ah, %.lr.ph.i22 ] ; 2 uses
  %.04051.i = phi i32 [ %spec.select.i23, %pci_link_speed.exit.thread.i ], [ 0, %.lr.ph.i22 ]
  %.04150.i = phi i32 [ %i.bq, %pci_link_speed.exit.thread.i ], [ 0, %.lr.ph.i22 ] ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.03952.i, i64 232
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !50 ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 76
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !83
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 208
  store i32 %3, ptr %i.bk, align 8, !tbaa !121
  %i.bl = add i32 %.04150.i, %3
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bh, i64 212
  store i32 %i.bl, ptr %i.bm, align 4, !tbaa !103
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bh, i64 72
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !82
  %spec.select.i23 = tail call i32 @llvm.umax.i32(i32 %i.bo, i32 %.04051.i) ; 2 uses
  %i.bp = add i32 %.04150.i, %4
  %i.bq = add i32 %i.bp, %i.bj                    ; 2 uses
  %i.br = call fastcc ptr @next_child(ptr noundef nonnull readonly %0, ptr noundef nonnull readonly %1, i32 noundef %2, ptr noundef nonnull %.03952.i, ptr noundef %i.c) ; 2 uses
  %.not45.i = icmp eq ptr %i.br, null
  br i1 %.not45.i, label %place_children_vert.exit, label %pci_link_speed.exit.thread.i, !llvm.loop !194

place_children_vert.exit:                         ; preds = %pci_link_speed.exit.thread.i, %pci_link_speed.exit.thread.us.i, %bb.f
  %.041.lcssa.i = phi i32 [ 0, %bb.f ], [ %i.be, %pci_link_speed.exit.thread.us.i ], [ %i.bq, %pci_link_speed.exit.thread.i ]
  %.040.lcssa.i = phi i32 [ 0, %bb.f ], [ %spec.select.us.i, %pci_link_speed.exit.thread.us.i ], [ %spec.select.i23, %pci_link_speed.exit.thread.i ]
  %i.bs = shl i32 %3, 1                           ; 2 uses
  %i.bt = add i32 %.040.lcssa.i, %i.bs
  store i32 %i.bt, ptr %5, align 4, !tbaa !17
  %i.bu = sub i32 %i.bs, %4
  %i.bv = add i32 %i.bu, %.041.lcssa.i
  store i32 %i.bv, ptr %6, align 4, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  br label %bb.x

bb.j:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  %i.bw = load i32, ptr %1, align 8, !tbaa !80
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.bx = call fastcc ptr @next_child(ptr noundef readonly %0, ptr noundef nonnull readonly %1, i32 noundef %2, ptr noundef null, ptr noundef %i.a) ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bx) ]
  br label %.lr.ph.i27

.lr.ph.i27:                                       ; preds = %.lr.ph.i27, %bb.j
  %i.by = phi ptr [ %i.cm, %.lr.ph.i27 ], [ %i.bx, %bb.j ] ; 2 uses
  %.096132.i = phi i32 [ %i.cl, %.lr.ph.i27 ], [ 0, %bb.j ]
  %.097131.i = phi i32 [ %i.cj, %.lr.ph.i27 ], [ 0, %bb.j ]
  %.098130.i = phi i32 [ %i.cf, %.lr.ph.i27 ], [ 0, %bb.j ]
  %.099129.i = phi i32 [ %i.cb, %.lr.ph.i27 ], [ 0, %bb.j ] ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 232
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !50 ; 2 uses
  %i.cb = add i32 %.099129.i, 1                   ; 7 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 72
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !82
  %i.ce = add i32 %i.cd, %4                       ; 2 uses
  %i.cf = add i32 %i.ce, %.098130.i               ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ca, i64 76
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !83
  %i.ci = add i32 %i.ch, %4                       ; 2 uses
  %i.cj = add i32 %i.ci, %.097131.i               ; 2 uses
  %i.ck = mul i32 %i.ci, %i.ce
  %i.cl = add i32 %i.ck, %.096132.i               ; 2 uses
  %i.cm = call fastcc ptr @next_child(ptr noundef readonly %0, ptr noundef nonnull readonly %1, i32 noundef %2, ptr noundef nonnull %i.by, ptr noundef %i.a) ; 2 uses
  %.not.i28 = icmp eq ptr %i.cm, null
  br i1 %.not.i28, label %._crit_edge.i, label %.lr.ph.i27, !llvm.loop !195

._crit_edge.i:                                    ; preds = %.lr.ph.i27
  %i.cn = icmp eq i32 %i.bw, 2
  %..i = select i1 %i.cn, float 7.500000e-01, float f0x3FAAAAAB ; 4 uses
  %i.co = udiv i32 %i.cf, %i.cb                   ; 5 uses
  %i.cp = udiv i32 %i.cj, %i.cb                   ; 5 uses
  %i.cq = uitofp i32 %i.cb to double              ; 2 uses
  %sqrt.i = tail call double @llvm.sqrt.f64(double %i.cq)
  %i.cr = tail call double @llvm.floor.f64(double %sqrt.i)
  %i.cs = fptrunc double %i.cr to float
  %i.ct = fptoui float %i.cs to i32               ; 2 uses
  %i.cu = tail call double @pow(double noundef %i.cq, double noundef 3.300000e-01) #23
  %i.cv = tail call double @llvm.ceil.f64(double %i.cu)
  %i.cw = fptrunc double %i.cv to float
  %i.cx = fptoui float %i.cw to i32
  %i.cy = icmp eq i32 %i.cx, 0
  %i.cz = icmp ugt i32 %i.ct, 1
  %i.da = select i1 %i.cy, i1 %i.cz, i1 false
  br i1 %i.da, label %.lr.ph141.i, label %._crit_edge142.thread.i

.lr.ph141.i:                                      ; preds = %._crit_edge.i, %bb.q
  %.093138.i = phi float [ %.295.ph.i, %bb.q ], [ 0.000000e+00, %._crit_edge.i ] ; 6 uses
  %.0100137.i = phi i32 [ %i.dy, %bb.q ], [ %i.ct, %._crit_edge.i ] ; 6 uses
  %.0101136.i = phi i32 [ %.2103.ph.i, %bb.q ], [ 0, %._crit_edge.i ] ; 3 uses
  %i.db = udiv i32 %i.cb, %.0100137.i             ; 5 uses
  %i.dc = icmp samesign ugt i32 %i.db, 1
  %i.dd = mul nuw i32 %i.db, %.0100137.i
  %.not113.i = icmp eq i32 %i.dd, %i.cb
  %or.cond.i = and i1 %i.dc, %.not113.i
  br i1 %or.cond.i, label %bb.k, label %bb.q

bb.k:                                             ; preds = %.lr.ph141.i
  %i.de = mul i32 %i.db, %i.co
  %i.df = mul i32 %.0100137.i, %i.cp
  %i.dg = uitofp i32 %i.de to float
  %i.dh = uitofp i32 %i.df to float
  %i.di = fdiv float %i.dg, %i.dh
  %i.dj = fdiv float %i.di, %..i                  ; 3 uses
  %i.dk = fcmp ogt float %i.dj, 1.000000e+00
  %i.dl = fdiv float 1.000000e+00, %i.dj
  %.0.i.i = select i1 %i.dk, float %i.dl, float %i.dj ; 3 uses
  %i.dm = mul i32 %.0100137.i, %i.co
  %i.dn = mul i32 %i.db, %i.cp
  %i.do = uitofp i32 %i.dm to float
  %i.dp = uitofp i32 %i.dn to float
  %i.dq = fdiv float %i.do, %i.dp
  %i.dr = fdiv float %i.dq, %..i                  ; 3 uses
  %i.ds = fcmp ogt float %i.dr, 1.000000e+00
  %i.dt = fdiv float 1.000000e+00, %i.dr
  %.0.i115.i = select i1 %i.ds, float %i.dt, float %i.dr ; 3 uses
  %i.du = fcmp ogt float %.0.i.i, %.0.i115.i
  br i1 %i.du, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.dv = fcmp ogt float %.0.i.i, %.093138.i
  br i1 %i.dv, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  br label %bb.p

bb.n:                                             ; preds = %bb.k
  %i.dw = fcmp ogt float %.0.i115.i, %.093138.i
  br i1 %i.dw, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m, %bb.l
  %.1102.i = phi i32 [ %i.db, %bb.m ], [ %.0101136.i, %bb.l ], [ %.0100137.i, %bb.o ], [ %.0101136.i, %bb.n ] ; 2 uses
  %.194.i = phi float [ %.0.i.i, %bb.m ], [ %.093138.i, %bb.l ], [ %.0.i115.i, %bb.o ], [ %.093138.i, %bb.n ] ; 2 uses
  %i.dx = fcmp oeq float %.093138.i, %.194.i
  br i1 %i.dx, label %find_children_rectangle.exit, label %bb.q

bb.q:                                             ; preds = %bb.p, %.lr.ph141.i
  %.2103.ph.i = phi i32 [ %.1102.i, %bb.p ], [ %.0101136.i, %.lr.ph141.i ] ; 2 uses
  %.295.ph.i = phi float [ %.194.i, %bb.p ], [ %.093138.i, %.lr.ph141.i ] ; 2 uses
  %i.dy = add i32 %.0100137.i, -1                 ; 2 uses
  %i.dz = icmp ugt i32 %i.dy, 1
  br i1 %i.dz, label %.lr.ph141.i, label %._crit_edge142.i, !llvm.loop !196

._crit_edge142.i:                                 ; preds = %bb.q
  %i.ea = fcmp une float %.295.ph.i, 0.000000e+00
  br i1 %i.ea, label %find_children_rectangle.exit, label %._crit_edge142.thread.i

._crit_edge142.thread.i:                          ; preds = %._crit_edge142.i, %._crit_edge.i
  %i.eb = uitofp i32 %i.cl to float
  %i.ec = fdiv float %i.eb, %..i
  %sqrt = tail call float @llvm.sqrt.f32(float %i.ec)
  %i.ed = uitofp i32 %i.cp to float
  %i.ee = fdiv float %sqrt, %i.ed
  %i.ef = fptoui float %i.ee to i32               ; 8 uses
  %.not112.i = icmp eq i32 %i.ef, 0
  br i1 %.not112.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %._crit_edge142.thread.i
  %i.eg = add i32 %.099129.i, %i.ef
  %i.eh = udiv i32 %i.eg, %i.ef
  %i.ei = mul i32 %i.eh, %i.co
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %._crit_edge142.thread.i
  %i.ej = phi i32 [ %i.ei, %bb.r ], [ %i.co, %._crit_edge142.thread.i ]
  %i.ek = add i32 %i.cb, %i.ef
  %7 = mul i32 %i.cp, %i.ef
  %8 = uitofp i32 %i.ej to float
  %9 = uitofp i32 %7 to float
  %10 = add i32 %i.ef, 1                          ; 3 uses
  %11 = udiv i32 %i.ek, %10                       ; 2 uses
  %12 = mul i32 %11, %i.co
  %13 = mul i32 %10, %i.cp
  %i.el = uitofp i32 %12 to float
  %i.em = uitofp i32 %13 to float
  %i.en = insertelement <2 x float> poison, float %8, i64 0
  %i.eo = insertelement <2 x float> %i.en, float %i.el, i64 1
  %i.ep = insertelement <2 x float> poison, float %9, i64 0
  %i.eq = insertelement <2 x float> %i.ep, float %i.em, i64 1
  %i.er = fdiv <2 x float> %i.eo, %i.eq
  %i.es = insertelement <2 x float> poison, float %..i, i64 0
  %i.et = shufflevector <2 x float> %i.es, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eu = fdiv <2 x float> %i.er, %i.et           ; 3 uses
  %i.ev = fcmp ogt <2 x float> %i.eu, splat (float 1.000000e+00)
  %i.ew = fdiv <2 x float> splat (float 1.000000e+00), %i.eu
  %i.ex = select <2 x i1> %i.ev, <2 x float> %i.ew, <2 x float> %i.eu ; 2 uses
  %i.ey = icmp ugt i32 %10, 1
  %i.ez = extractelement <2 x float> %i.ex, i64 0
  %i.fa = extractelement <2 x float> %i.ex, i64 1
  %i.fb = fcmp ogt float %i.ez, %i.fa
  %or.cond114.i = select i1 %i.ey, i1 %i.fb, i1 false
  br i1 %or.cond114.i, label %bb.t, label %find_children_rectangle.exit

bb.t:                                             ; preds = %bb.s
  %i.fc = add i32 %.099129.i, %i.ef
  %i.fd = udiv i32 %i.fc, %i.ef
  br label %find_children_rectangle.exit

find_children_rectangle.exit:                     ; preds = %bb.p, %._crit_edge142.i, %bb.s, %bb.t
  %.3104.i = phi i32 [ %11, %bb.s ], [ %.2103.ph.i, %._crit_edge142.i ], [ %i.fd, %bb.t ], [ %.1102.i, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.fe = call fastcc ptr @next_child(ptr noundef readonly %0, ptr noundef nonnull readonly %1, i32 noundef %2, ptr noundef null, ptr noundef %i.b) ; 3 uses
  %.not64.i = icmp eq ptr %i.fe, null
  br i1 %.not64.i, label %place_children_rect.exit, label %bb.u

bb.u:                                             ; preds = %find_children_rectangle.exit
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 232
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !50 ; 4 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 208
  store i32 %3, ptr %i.fh, align 8, !tbaa !121
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fg, i64 212
  store i32 %3, ptr %i.fi, align 4, !tbaa !103
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fg, i64 72
  %i.fk = load i32, ptr %i.fj, align 8, !tbaa !82
  %i.fl = add i32 %i.fk, %4                       ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fg, i64 76
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !83 ; 2 uses
  %i.fo = call fastcc ptr @next_child(ptr noundef readonly %0, ptr noundef nonnull readonly %1, i32 noundef %2, ptr noundef nonnull %i.fe, ptr noundef %i.b) ; 2 uses
  %.not.peel.i = icmp eq ptr %i.fo, null
  br i1 %.not.peel.i, label %._crit_edge.loopexit.i, label %.peel.next.i

.peel.next.i:                                     ; preds = %bb.u, %bb.w
  %.070.i = phi i32 [ %i.gf, %bb.w ], [ 1, %bb.u ] ; 2 uses
  %.04969.i = phi ptr [ %i.gg, %bb.w ], [ %i.fo, %bb.u ] ; 2 uses
  %.05068.i = phi i32 [ %spec.select62.i, %bb.w ], [ %i.fn, %bb.u ] ; 2 uses
  %.05167.i = phi i32 [ %i.gc, %bb.w ], [ %i.fl, %bb.u ] ; 2 uses
  %.05366.i = phi i32 [ %.154.i, %bb.w ], [ 0, %bb.u ] ; 2 uses
  %.05565.i = phi i32 [ %.257.i, %bb.w ], [ 0, %bb.u ] ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %.04969.i, i64 232
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !50 ; 4 uses
  %i.fr = urem i32 %.070.i, %.3104.i
  %i.fs = icmp eq i32 %i.fr, 0
  br i1 %i.fs, label %bb.v, label %bb.w

bb.v:                                             ; preds = %.peel.next.i
  %spec.select.i26 = tail call i32 @llvm.umax.i32(i32 %.05167.i, i32 %.05565.i)
  %i.ft = add i32 %.05068.i, %4
  %i.fu = add i32 %i.ft, %.05366.i
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %.peel.next.i
  %.257.i = phi i32 [ %spec.select.i26, %bb.v ], [ %.05565.i, %.peel.next.i ] ; 2 uses
  %.154.i = phi i32 [ %i.fu, %bb.v ], [ %.05366.i, %.peel.next.i ] ; 3 uses
  %.152.i = phi i32 [ 0, %bb.v ], [ %.05167.i, %.peel.next.i ] ; 2 uses
  %.1.i = phi i32 [ 0, %bb.v ], [ %.05068.i, %.peel.next.i ]
  %i.fv = add i32 %.152.i, %3
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fq, i64 208
  store i32 %i.fv, ptr %i.fw, align 8, !tbaa !121
  %i.fx = add i32 %.154.i, %3
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fq, i64 212
  store i32 %i.fx, ptr %i.fy, align 4, !tbaa !103
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fq, i64 72
  %i.ga = load i32, ptr %i.fz, align 8, !tbaa !82
  %i.gb = add i32 %.152.i, %4
  %i.gc = add i32 %i.gb, %i.ga                    ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fq, i64 76
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !83
  %spec.select62.i = tail call i32 @llvm.umax.i32(i32 %i.ge, i32 %.1.i) ; 2 uses
  %i.gf = add nuw nsw i32 %.070.i, 1
  %i.gg = call fastcc ptr @next_child(ptr noundef readonly %0, ptr noundef nonnull readonly %1, i32 noundef %2, ptr noundef nonnull %.04969.i, ptr noundef %i.b) ; 2 uses
  %.not.i25 = icmp eq ptr %i.gg, null
  br i1 %.not.i25, label %._crit_edge.loopexit.loopexit.i, label %.peel.next.i, !llvm.loop !197

._crit_edge.loopexit.loopexit.i:                  ; preds = %bb.w
  %i.gh = tail call i32 @llvm.umax.i32(i32 %i.gc, i32 %.257.i)
  br label %._crit_edge.loopexit.i

._crit_edge.loopexit.i:                           ; preds = %._crit_edge.loopexit.loopexit.i, %bb.u
  %.154.lcssa.i = phi i32 [ 0, %bb.u ], [ %.154.i, %._crit_edge.loopexit.loopexit.i ]
  %.lcssa.i = phi i32 [ %i.fl, %bb.u ], [ %i.gh, %._crit_edge.loopexit.loopexit.i ]
  %spec.select62.lcssa.i = phi i32 [ %i.fn, %bb.u ], [ %spec.select62.i, %._crit_edge.loopexit.loopexit.i ]
  %i.gi = add i32 %spec.select62.lcssa.i, %.154.lcssa.i
  br label %place_children_rect.exit

place_children_rect.exit:                         ; preds = %find_children_rectangle.exit, %._crit_edge.loopexit.i
  %.051.lcssa.i = phi i32 [ 0, %find_children_rectangle.exit ], [ %.lcssa.i, %._crit_edge.loopexit.i ]
  %i.gj = phi i32 [ 0, %find_children_rectangle.exit ], [ %i.gi, %._crit_edge.loopexit.i ]
  %i.gk = shl i32 %3, 1                           ; 2 uses
  %i.gl = sub i32 %i.gk, %4
  %i.gm = add i32 %i.gl, %.051.lcssa.i
  store i32 %i.gm, ptr %5, align 4, !tbaa !17
  %i.gn = add i32 %i.gj, %i.gk
  store i32 %i.gn, ptr %6, align 4, !tbaa !17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  br label %bb.x

bb.x:                                             ; preds = %place_children_vert.exit, %place_children_rect.exit, %place_children_horiz.exit
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #18

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #18

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @hwloc_bitmap_isset(ptr noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare ptr @hwloc_topology_get_allowed_nodeset(ptr noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare ptr @hwloc_topology_get_allowed_cpuset(ptr noundef) local_unnamed_addr #11

; Function Attrs: nounwind uwtable
define internal fastcc void @draw__children(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #8 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.c = load i32, ptr %i.b, align 4, !tbaa !199
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1464
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !36
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !84
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !200
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !201
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.m = load i32, ptr %i.l, align 8, !tbaa !202
  tail call void %i.g(ptr noundef %0, ptr noundef %i.i, i32 noundef %3, i32 noundef %4, i32 noundef %i.k, i32 noundef %5, i32 noundef %i.m, ptr noundef %1, i32 noundef 1) #23
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.n = load i32, ptr %2, align 8, !tbaa !203
  %i.o = call fastcc ptr @next_child(ptr noundef %0, ptr noundef %1, i32 noundef %i.n, ptr noundef null, ptr noundef %i.a) ; 2 uses
  %.not2627 = icmp eq ptr %i.o, null
  br i1 %.not2627, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.p = add i32 %3, -1
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %switch.lookup
  %.028 = phi ptr [ %i.o, %.lr.ph ], [ %i.ac, %switch.lookup ] ; 4 uses
  %i.q = load i32, ptr %.028, align 8, !tbaa !80  ; 2 uses
  %i.r = icmp ult i32 %i.q, 20
  br i1 %i.r, label %switch.lookup, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @__assert_fail(ptr noundef nonnull @.str.91, ptr noundef nonnull @.str.92, i32 noundef 1906, ptr noundef nonnull @__PRETTY_FUNCTION__.get_type_fun) #25, !inline_history !2
  unreachable

switch.lookup:                                    ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %.028, i64 232
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !50   ; 2 uses
  %i.u = zext nneg i32 %i.q to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.draw__children, i64 %i.u
  %switch.load = load ptr, ptr %switch.gep, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 208
  %i.w = load i32, ptr %i.v, align 8, !tbaa !121
  %i.x = add i32 %i.w, %4
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 212
  %i.z = load i32, ptr %i.y, align 4, !tbaa !103
  %i.aa = add i32 %i.z, %5
  tail call void %switch.load(ptr noundef %0, ptr noundef nonnull %.028, i32 noundef %i.p, i32 noundef %i.x, i32 noundef %i.aa) #23, !callees !81
  %i.ab = load i32, ptr %2, align 8, !tbaa !203
  %i.ac = call fastcc ptr @next_child(ptr noundef %0, ptr noundef %1, i32 noundef %i.ab, ptr noundef nonnull %.028, ptr noundef %i.a) ; 2 uses
  %.not26 = icmp eq ptr %i.ac, null
  br i1 %.not26, label %._crit_edge, label %bb.d, !llvm.loop !198

._crit_edge:                                      ; preds = %switch.lookup, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #18

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: write, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
end_hunk_0
