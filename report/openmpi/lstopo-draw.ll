Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openmpi/original/lstopo-draw?download=true
inline.NumInlined: 79
inline.NumDeleted: 20
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@place__children:bb.a
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  switch i32 %.0.val, label %bb.j [
    i32 1, label %bb.b
    i32 2, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  %i.e = call fastcc ptr @next_child(ptr noundef readonly %0, ptr noundef readonly %1, i32 noundef %2, ptr noundef null, ptr noundef %i.d) ; 2 uses
  %.not29.i = icmp eq ptr %i.e, null
  br i1 %.not29.i, label %place_children_horiz.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.032.i = phi ptr [ %i.q, %.lr.ph.i ], [ %i.e, %bb.b ] ; 2 uses
  %.02631.i = phi i32 [ %spec.select.i, %.lr.ph.i ], [ 0, %bb.b ]
  %.02730.i = phi i32 [ %i.p, %.lr.ph.i ], [ 0, %bb.b ] ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.032.i, i64 232
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !42   ; 4 uses
  %i.h = add i32 %.02730.i, %3
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 208
  store i32 %i.h, ptr %i.i, align 8, !tbaa !192
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 212
  store i32 %3, ptr %i.j, align 4, !tbaa !142
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 76
  %i.l = load i32, ptr %i.k, align 4, !tbaa !106
  %spec.select.i = tail call i32 @llvm.umax.i32(i32 %i.l, i32 %.02631.i) ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  %i.n = load i32, ptr %i.m, align 8, !tbaa !104
  %i.o = add i32 %.02730.i, %4
  %i.p = add i32 %i.o, %i.n                       ; 2 uses
  %i.q = call fastcc ptr @next_child(ptr noundef readonly %0, ptr noundef readonly %1, i32 noundef %2, ptr noundef nonnull %.032.i, ptr noundef %i.d) ; 2 uses
  %.not.i = icmp eq ptr %i.q, null
  br i1 %.not.i, label %place_children_horiz.exit, label %.lr.ph.i, !llvm.loop !193

place_children_horiz.exit:                        ; preds = %.lr.ph.i, %bb.b
  %.027.lcssa.i = phi i32 [ 0, %bb.b ], [ %i.p, %.lr.ph.i ]
  %.026.lcssa.i = phi i32 [ 0, %bb.b ], [ %spec.select.i, %.lr.ph.i ]
  %i.r = shl i32 %3, 1                            ; 2 uses
  %i.s = sub i32 %i.r, %4
  %i.t = add i32 %i.s, %.027.lcssa.i
  store i32 %i.t, ptr %5, align 4, !tbaa !12
  %i.u = add i32 %.026.lcssa.i, %i.r
  store i32 %i.u, ptr %6, align 4, !tbaa !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  br label %bb.x

bb.c:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 820
  %i.w = load i32, ptr %i.v, align 4, !tbaa !73
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 824
  %i.y = load i32, ptr %i.x, align 8, !tbaa !74
  %i.z = load i32, ptr %1, align 8, !tbaa !101
  %i.aa = icmp eq i32 %i.z, 14
  br i1 %i.aa, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 1008
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !113
  %.not.i24 = icmp eq i32 %i.ac, 0
  br i1 %.not.i24, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 1068
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !12
  %i.af = icmp ne i32 %i.ae, 0
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.ag = phi i1 [ false, %bb.d ], [ false, %bb.c ], [ %i.af, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  %i.ah = call fastcc ptr @next_child(ptr noundef nonnull readonly %0, ptr noundef nonnull readonly %1, i32 noundef %2, ptr noundef null, ptr noundef %i.c) ; 3 uses
  %.not4549.i = icmp eq ptr %i.ah, null
  br i1 %.not4549.i, label %place_children_vert.exit, label %.lr.ph.i22

.lr.ph.i22:                                       ; preds = %bb.f
  %i.ai = add i32 %i.y, %i.w
  br i1 %i.ag, label %.lr.ph.split.us.i, label %pci_link_speed.exit.thread.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i22, %pci_link_speed.exit.thread.us.i
  %.03952.us.i = phi ptr [ %i.bf, %pci_link_speed.exit.thread.us.i ], [ %i.ah, %.lr.ph.i22 ] ; 5 uses
  %.04051.us.i = phi i32 [ %spec.select.us.i, %pci_link_speed.exit.thread.us.i ], [ 0, %.lr.ph.i22 ]
  %.04150.us.i = phi i32 [ %i.be, %pci_link_speed.exit.thread.us.i ], [ 0, %.lr.ph.i22 ] ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.03952.us.i, i64 232
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !42 ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 76
  %i.am = load i32, ptr %i.al, align 4, !tbaa !106 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 208
  store i32 %3, ptr %i.an, align 8, !tbaa !192
  %i.ao = add i32 %.04150.us.i, %3
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 212
  store i32 %i.ao, ptr %i.ap, align 4, !tbaa !142
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ak, i64 72
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !104
  %spec.select.us.i = tail call i32 @llvm.umax.i32(i32 %i.ar, i32 %.04051.us.i) ; 2 uses
  %i.as = load i32, ptr %.03952.us.i, align 8, !tbaa !101
  switch i32 %i.as, label %pci_link_speed.exit.thread.us.i [
    i32 15, label %bb.h
    i32 14, label %bb.g
  ]

bb.g:                                             ; preds = %.lr.ph.split.us.i
  %i.at = getelementptr inbounds nuw i8, ptr %.03952.us.i, i64 40
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !117 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !61
  %i.ax = icmp eq i32 %i.aw, 1
  br i1 %i.ax, label %pci_link_speed.exit.us.i, label %pci_link_speed.exit.thread.us.i

bb.h:                                             ; preds = %.lr.ph.split.us.i
  %i.ay = getelementptr inbounds nuw i8, ptr %.03952.us.i, i64 40
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !117
  br label %pci_link_speed.exit.us.i

pci_link_speed.exit.us.i:                         ; preds = %bb.h, %bb.g
  %.sink7.i.us.i = phi ptr [ %i.az, %bb.h ], [ %i.au, %bb.g ]
  %i.ba = getelementptr inbounds nuw i8, ptr %.sink7.i.us.i, i64 20
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !61
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
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !42 ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 76
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !106
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 208
  store i32 %3, ptr %i.bk, align 8, !tbaa !192
  %i.bl = add i32 %.04150.i, %3
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bh, i64 212
  store i32 %i.bl, ptr %i.bm, align 4, !tbaa !142
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bh, i64 72
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !104
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
  store i32 %i.bt, ptr %5, align 4, !tbaa !12
  %i.bu = sub i32 %i.bs, %4
  %i.bv = add i32 %i.bu, %.041.lcssa.i
  store i32 %i.bv, ptr %6, align 4, !tbaa !12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  br label %bb.x

bb.j:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  %i.bw = load i32, ptr %1, align 8, !tbaa !101
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
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !42 ; 2 uses
  %i.cb = add i32 %.099129.i, 1                   ; 7 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 72
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !104
  %i.ce = add i32 %i.cd, %4                       ; 2 uses
  %i.cf = add i32 %i.ce, %.098130.i               ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ca, i64 76
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !106
  %i.ci = add i32 %i.ch, %4                       ; 2 uses
  %i.cj = add i32 %i.ci, %.097131.i               ; 2 uses
  %i.ck = mul i32 %i.ci, %i.ce
  %i.cl = add i32 %i.ck, %.096132.i               ; 2 uses
  %i.cm = call fastcc ptr @next_child(ptr noundef readonly %0, ptr noundef nonnull readonly %1, i32 noundef %2, ptr noundef nonnull %i.by, ptr noundef %i.a) ; 2 uses
  %.not.i28 = icmp eq ptr %i.cm, null
  br i1 %.not.i28, label %._crit_edge.i, label %.lr.ph.i27, !llvm.loop !195

._crit_edge.i:                                    ; preds = %.lr.ph.i27
  %i.cn = icmp eq i32 %i.bw, 2
  %..i = select i1 %i.cn, float 7.500000e-01, float f0x3FAAAAAB ; 3 uses
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
  br i1 %i.da, label %.lr.ph141.i.preheader, label %._crit_edge142.thread.i

.lr.ph141.i.preheader:                            ; preds = %._crit_edge.i
  %7 = insertelement <2 x float> poison, float %..i, i64 0
  %8 = shufflevector <2 x float> %7, <2 x float> poison, <2 x i32> zeroinitializer
  br label %.lr.ph141.i

.lr.ph141.i:                                      ; preds = %.lr.ph141.i.preheader, %bb.q
  %.093138.i = phi float [ %.295.ph.i, %bb.q ], [ 0.000000e+00, %.lr.ph141.i.preheader ] ; 6 uses
  %.0100137.i = phi i32 [ %i.dl, %bb.q ], [ %i.ct, %.lr.ph141.i.preheader ] ; 6 uses
  %.0101136.i = phi i32 [ %.2103.ph.i, %bb.q ], [ 0, %.lr.ph141.i.preheader ] ; 3 uses
  %i.db = udiv i32 %i.cb, %.0100137.i             ; 5 uses
  %i.dc = icmp samesign ugt i32 %i.db, 1
  %i.dd = mul nuw i32 %i.db, %.0100137.i
  %.not113.i = icmp eq i32 %i.dd, %i.cb
  %or.cond.i = and i1 %i.dc, %.not113.i
  br i1 %or.cond.i, label %bb.k, label %bb.q

bb.k:                                             ; preds = %.lr.ph141.i
  %i.de = mul i32 %i.db, %i.co
  %i.df = mul i32 %.0100137.i, %i.cp
  %9 = mul i32 %.0100137.i, %i.co
  %10 = mul i32 %i.db, %i.cp
  %i.dg = uitofp i32 %9 to float
  %11 = uitofp i32 %i.de to float
  %12 = uitofp i32 %10 to float
  %13 = uitofp i32 %i.df to float
  %14 = insertelement <2 x float> poison, float %i.dg, i64 0
  %15 = insertelement <2 x float> %14, float %11, i64 1
  %16 = insertelement <2 x float> poison, float %12, i64 0
  %17 = insertelement <2 x float> %16, float %13, i64 1
  %18 = fdiv <2 x float> %15, %17
  %19 = fdiv <2 x float> %18, %8                  ; 3 uses
  %20 = fcmp ogt <2 x float> %19, splat (float 1.000000e+00)
  %21 = fdiv <2 x float> splat (float 1.000000e+00), %19
  %22 = select <2 x i1> %20, <2 x float> %21, <2 x float> %19 ; 2 uses
  %23 = extractelement <2 x float> %22, i64 0     ; 3 uses
  %24 = extractelement <2 x float> %22, i64 1     ; 3 uses
  %i.dh = fcmp ogt float %24, %23
  br i1 %i.dh, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.di = fcmp ogt float %24, %.093138.i
  br i1 %i.di, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  br label %bb.p

bb.n:                                             ; preds = %bb.k
  %i.dj = fcmp ogt float %23, %.093138.i
  br i1 %i.dj, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m, %bb.l
  %.1102.i = phi i32 [ %i.db, %bb.m ], [ %.0101136.i, %bb.l ], [ %.0100137.i, %bb.o ], [ %.0101136.i, %bb.n ] ; 2 uses
  %.194.i = phi float [ %24, %bb.m ], [ %.093138.i, %bb.l ], [ %23, %bb.o ], [ %.093138.i, %bb.n ] ; 2 uses
  %i.dk = fcmp oeq float %.093138.i, %.194.i
  br i1 %i.dk, label %find_children_rectangle.exit, label %bb.q

bb.q:                                             ; preds = %bb.p, %.lr.ph141.i
  %.2103.ph.i = phi i32 [ %.1102.i, %bb.p ], [ %.0101136.i, %.lr.ph141.i ] ; 2 uses
  %.295.ph.i = phi float [ %.194.i, %bb.p ], [ %.093138.i, %.lr.ph141.i ] ; 2 uses
  %i.dl = add i32 %.0100137.i, -1                 ; 2 uses
  %i.dm = icmp ugt i32 %i.dl, 1
  br i1 %i.dm, label %.lr.ph141.i, label %._crit_edge142.i, !llvm.loop !196

._crit_edge142.i:                                 ; preds = %bb.q
  %i.dn = fcmp une float %.295.ph.i, 0.000000e+00
  br i1 %i.dn, label %find_children_rectangle.exit, label %._crit_edge142.thread.i

._crit_edge142.thread.i:                          ; preds = %._crit_edge142.i, %._crit_edge.i
  %i.do = uitofp i32 %i.cl to float
  %i.dp = fdiv float %i.do, %..i
  %sqrt = tail call float @llvm.sqrt.f32(float %i.dp)
  %i.dq = uitofp i32 %i.cp to float
  %i.dr = fdiv float %sqrt, %i.dq
  %i.ds = fptoui float %i.dr to i32               ; 8 uses
  %.not112.i = icmp eq i32 %i.ds, 0
  br i1 %.not112.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %._crit_edge142.thread.i
  %i.dt = add i32 %.099129.i, %i.ds
  %i.du = udiv i32 %i.dt, %i.ds
  %i.dv = mul i32 %i.du, %i.co
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %._crit_edge142.thread.i
  %i.dw = phi i32 [ %i.dv, %bb.r ], [ %i.co, %._crit_edge142.thread.i ]
  %i.dx = add i32 %i.cb, %i.ds
  %i.dy = add i32 %i.ds, 1                        ; 3 uses
  %i.dz = udiv i32 %i.dx, %i.dy                   ; 2 uses
  %i.ea = mul i32 %i.dz, %i.co
  %i.eb = mul i32 %i.dy, %i.cp
  %i.ec = mul i32 %i.cp, %i.ds
  %i.ed = uitofp i32 %i.ea to float
  %i.ee = uitofp i32 %i.dw to float
  %i.ef = uitofp i32 %i.eb to float
  %i.eg = uitofp i32 %i.ec to float
  %i.eh = insertelement <2 x float> poison, float %i.ee, i64 0
  %i.ei = insertelement <2 x float> %i.eh, float %i.ed, i64 1
  %i.ej = insertelement <2 x float> poison, float %i.eg, i64 0
  %i.ek = insertelement <2 x float> %i.ej, float %i.ef, i64 1
  %i.el = fdiv <2 x float> %i.ei, %i.ek
  %i.em = insertelement <2 x float> poison, float %..i, i64 0
  %i.en = shufflevector <2 x float> %i.em, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eo = fdiv <2 x float> %i.el, %i.en           ; 3 uses
  %i.ep = fcmp ogt <2 x float> %i.eo, splat (float 1.000000e+00)
  %i.eq = fdiv <2 x float> splat (float 1.000000e+00), %i.eo
  %i.er = select <2 x i1> %i.ep, <2 x float> %i.eq, <2 x float> %i.eo ; 2 uses
  %i.es = icmp ugt i32 %i.dy, 1
  %i.et = extractelement <2 x float> %i.er, i64 0
  %i.eu = extractelement <2 x float> %i.er, i64 1
  %i.ev = fcmp ogt float %i.et, %i.eu
  %or.cond114.i = select i1 %i.es, i1 %i.ev, i1 false
  br i1 %or.cond114.i, label %bb.t, label %find_children_rectangle.exit

bb.t:                                             ; preds = %bb.s
  %i.ew = add i32 %.099129.i, %i.ds
  %i.ex = udiv i32 %i.ew, %i.ds
  br label %find_children_rectangle.exit

find_children_rectangle.exit:                     ; preds = %bb.p, %._crit_edge142.i, %bb.s, %bb.t
  %.3104.i = phi i32 [ %i.dz, %bb.s ], [ %.2103.ph.i, %._crit_edge142.i ], [ %i.ex, %bb.t ], [ %.1102.i, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.ey = call fastcc ptr @next_child(ptr noundef readonly %0, ptr noundef nonnull readonly %1, i32 noundef %2, ptr noundef null, ptr noundef %i.b) ; 3 uses
  %.not64.i = icmp eq ptr %i.ey, null
  br i1 %.not64.i, label %place_children_rect.exit, label %bb.u

bb.u:                                             ; preds = %find_children_rectangle.exit
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 232
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !42 ; 4 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 208
  store i32 %3, ptr %i.fb, align 8, !tbaa !192
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fa, i64 212
  store i32 %3, ptr %i.fc, align 4, !tbaa !142
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fa, i64 72
  %i.fe = load i32, ptr %i.fd, align 8, !tbaa !104
  %i.ff = add i32 %i.fe, %4                       ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fa, i64 76
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !106 ; 2 uses
  %i.fi = call fastcc ptr @next_child(ptr noundef readonly %0, ptr noundef nonnull readonly %1, i32 noundef %2, ptr noundef nonnull %i.ey, ptr noundef %i.b) ; 2 uses
  %.not.peel.i = icmp eq ptr %i.fi, null
  br i1 %.not.peel.i, label %._crit_edge.loopexit.i, label %.peel.next.i

.peel.next.i:                                     ; preds = %bb.u, %bb.w
  %.070.i = phi i32 [ %i.fz, %bb.w ], [ 1, %bb.u ] ; 2 uses
  %.04969.i = phi ptr [ %i.ga, %bb.w ], [ %i.fi, %bb.u ] ; 2 uses
  %.05068.i = phi i32 [ %spec.select62.i, %bb.w ], [ %i.fh, %bb.u ] ; 2 uses
  %.05167.i = phi i32 [ %i.fw, %bb.w ], [ %i.ff, %bb.u ] ; 2 uses
  %.05366.i = phi i32 [ %.154.i, %bb.w ], [ 0, %bb.u ] ; 2 uses
  %.05565.i = phi i32 [ %.257.i, %bb.w ], [ 0, %bb.u ] ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %.04969.i, i64 232
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !42 ; 4 uses
  %i.fl = urem i32 %.070.i, %.3104.i
  %i.fm = icmp eq i32 %i.fl, 0
  br i1 %i.fm, label %bb.v, label %bb.w

bb.v:                                             ; preds = %.peel.next.i
  %spec.select.i26 = tail call i32 @llvm.umax.i32(i32 %.05167.i, i32 %.05565.i)
  %i.fn = add i32 %.05068.i, %4
  %i.fo = add i32 %i.fn, %.05366.i
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %.peel.next.i
  %.257.i = phi i32 [ %spec.select.i26, %bb.v ], [ %.05565.i, %.peel.next.i ] ; 2 uses
  %.154.i = phi i32 [ %i.fo, %bb.v ], [ %.05366.i, %.peel.next.i ] ; 3 uses
  %.152.i = phi i32 [ 0, %bb.v ], [ %.05167.i, %.peel.next.i ] ; 2 uses
  %.1.i = phi i32 [ 0, %bb.v ], [ %.05068.i, %.peel.next.i ]
  %i.fp = add i32 %.152.i, %3
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fk, i64 208
  store i32 %i.fp, ptr %i.fq, align 8, !tbaa !192
  %i.fr = add i32 %.154.i, %3
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fk, i64 212
  store i32 %i.fr, ptr %i.fs, align 4, !tbaa !142
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fk, i64 72
  %i.fu = load i32, ptr %i.ft, align 8, !tbaa !104
  %i.fv = add i32 %.152.i, %4
  %i.fw = add i32 %i.fv, %i.fu                    ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fk, i64 76
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !106
  %spec.select62.i = tail call i32 @llvm.umax.i32(i32 %i.fy, i32 %.1.i) ; 2 uses
  %i.fz = add nuw nsw i32 %.070.i, 1
  %i.ga = call fastcc ptr @next_child(ptr noundef readonly %0, ptr noundef nonnull readonly %1, i32 noundef %2, ptr noundef nonnull %.04969.i, ptr noundef %i.b) ; 2 uses
  %.not.i25 = icmp eq ptr %i.ga, null
  br i1 %.not.i25, label %._crit_edge.loopexit.loopexit.i, label %.peel.next.i, !llvm.loop !197

._crit_edge.loopexit.loopexit.i:                  ; preds = %bb.w
  %i.gb = tail call i32 @llvm.umax.i32(i32 %i.fw, i32 %.257.i)
  br label %._crit_edge.loopexit.i

._crit_edge.loopexit.i:                           ; preds = %._crit_edge.loopexit.loopexit.i, %bb.u
  %.154.lcssa.i = phi i32 [ 0, %bb.u ], [ %.154.i, %._crit_edge.loopexit.loopexit.i ]
  %.lcssa.i = phi i32 [ %i.ff, %bb.u ], [ %i.gb, %._crit_edge.loopexit.loopexit.i ]
  %spec.select62.lcssa.i = phi i32 [ %i.fh, %bb.u ], [ %spec.select62.i, %._crit_edge.loopexit.loopexit.i ]
  %i.gc = add i32 %spec.select62.lcssa.i, %.154.lcssa.i
  br label %place_children_rect.exit

place_children_rect.exit:                         ; preds = %find_children_rectangle.exit, %._crit_edge.loopexit.i
  %.051.lcssa.i = phi i32 [ 0, %find_children_rectangle.exit ], [ %.lcssa.i, %._crit_edge.loopexit.i ]
  %i.gd = phi i32 [ 0, %find_children_rectangle.exit ], [ %i.gc, %._crit_edge.loopexit.i ]
  %i.ge = shl i32 %3, 1                           ; 2 uses
  %i.gf = sub i32 %i.ge, %4
  %i.gg = add i32 %i.gf, %.051.lcssa.i
  store i32 %i.gg, ptr %5, align 4, !tbaa !12
  %i.gh = add i32 %i.gd, %i.ge
  store i32 %i.gh, ptr %6, align 4, !tbaa !12
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
  %i.c = load i32, ptr %i.b, align 4, !tbaa !198
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1464
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !31
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !108
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !199
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !200
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.m = load i32, ptr %i.l, align 8, !tbaa !201
  tail call void %i.g(ptr noundef %0, ptr noundef %i.i, i32 noundef %3, i32 noundef %4, i32 noundef %i.k, i32 noundef %5, i32 noundef %i.m, ptr noundef %1, i32 noundef 1) #23
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
end_hunk_0
