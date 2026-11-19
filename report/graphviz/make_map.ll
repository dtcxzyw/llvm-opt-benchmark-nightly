Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/make_map?download=true
inline.NumInlined: 102
inline.NumDeleted: 30
loop-unroll.NumCompletelyUnrolled: 18
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 33
begin_hunk_0_@make_map_internal:.preheader573
  %i.g = alloca ptr, align 8                      ; 5 uses
  %i.h = alloca i64, align 8                      ; 4 uses
  %i.i = alloca i32, align 4                      ; 5 uses
  %i.j = alloca i32, align 4                      ; 5 uses
  %i.k = alloca i32, align 4                      ; 5 uses
  %i.l = alloca i32, align 4                      ; 8 uses
  %i.m = alloca [2 x double], align 16            ; 3 uses
  %i.n = alloca double, align 8                   ; 4 uses
  %i.o = alloca i32, align 4                      ; 4 uses
  %i.p = alloca [2 x double], align 16            ; 7 uses
  %i.q = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #19
  %i.r = load <2 x double>, ptr %3, align 8, !tbaa !24 ; 6 uses
  %i.s = icmp sgt i32 %1, 0                       ; 2 uses
  br i1 %i.s, label %.preheader572.preheader, label %._crit_edge

.preheader572.preheader:                          ; preds = %.preheader573
  %i.t = sext i32 %2 to i64
  %wide.trip.count = zext nneg i32 %1 to i64      ; 3 uses
  %min.iters.check = icmp ugt i32 %1, 3
  %ident.check.not = icmp eq i32 %2, 1
  %or.cond1324 = and i1 %min.iters.check, %ident.check.not
  br i1 %or.cond1324, label %vector.ph, label %.preheader572.preheader1379

vector.ph:                                        ; preds = %.preheader572.preheader
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  %broadcast.splat = shufflevector <2 x double> %i.r, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 4 uses
  %broadcast.splat1107 = shufflevector <2 x double> %i.r, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <2 x double> [ %broadcast.splat, %vector.ph ], [ %i.ag, %vector.body ] ; 2 uses
  %vec.phi1108 = phi <2 x double> [ %broadcast.splat, %vector.ph ], [ %i.ah, %vector.body ] ; 2 uses
  %vec.phi1109 = phi <2 x double> [ %broadcast.splat1107, %vector.ph ], [ %i.y, %vector.body ] ; 2 uses
  %vec.phi1110 = phi <2 x double> [ %broadcast.splat1107, %vector.ph ], [ %i.z, %vector.body ] ; 2 uses
  %vec.phi1111 = phi <2 x double> [ %broadcast.splat, %vector.ph ], [ %i.ai, %vector.body ] ; 2 uses
  %vec.phi1112 = phi <2 x double> [ %broadcast.splat, %vector.ph ], [ %i.aj, %vector.body ] ; 2 uses
  %vec.phi1113 = phi <2 x double> [ %broadcast.splat1107, %vector.ph ], [ %i.aa, %vector.body ] ; 2 uses
  %vec.phi1114 = phi <2 x double> [ %broadcast.splat1107, %vector.ph ], [ %i.ab, %vector.body ] ; 2 uses
  %i.u = getelementptr [8 x i8], ptr %3, i64 %index ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %wide.load = load <2 x double>, ptr %i.u, align 8, !tbaa !24
  %wide.load1115 = load <2 x double>, ptr %i.v, align 8, !tbaa !24
  %i.w = freeze <2 x double> %wide.load           ; 3 uses
  %i.x = freeze <2 x double> %wide.load1115       ; 3 uses
  %i.y = tail call nsz <2 x double> @llvm.maxnum.v2f64(<2 x double> %vec.phi1109, <2 x double> %i.w) ; 2 uses
  %i.z = tail call nsz <2 x double> @llvm.maxnum.v2f64(<2 x double> %vec.phi1110, <2 x double> %i.x) ; 2 uses
  %i.aa = tail call nsz <2 x double> @llvm.minnum.v2f64(<2 x double> %vec.phi1113, <2 x double> %i.w) ; 2 uses
  %i.ab = tail call nsz <2 x double> @llvm.minnum.v2f64(<2 x double> %vec.phi1114, <2 x double> %i.x) ; 2 uses
  %i.ac = getelementptr i8, ptr %i.u, i64 8
  %i.ad = getelementptr i8, ptr %i.u, i64 24
  %wide.load1116 = load <2 x double>, ptr %i.ac, align 8, !tbaa !24
  %wide.load1117 = load <2 x double>, ptr %i.ad, align 8, !tbaa !24
  %i.ae = freeze <2 x double> %wide.load1116      ; 3 uses
  %i.af = freeze <2 x double> %wide.load1117      ; 3 uses
  %i.ag = tail call nsz <2 x double> @llvm.maxnum.v2f64(<2 x double> %vec.phi, <2 x double> %i.ae) ; 2 uses
  %i.ah = tail call nsz <2 x double> @llvm.maxnum.v2f64(<2 x double> %vec.phi1108, <2 x double> %i.af) ; 2 uses
  %i.ai = tail call nsz <2 x double> @llvm.minnum.v2f64(<2 x double> %vec.phi1111, <2 x double> %i.ae) ; 2 uses
  %i.aj = tail call nsz <2 x double> @llvm.minnum.v2f64(<2 x double> %vec.phi1112, <2 x double> %i.af) ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ak = fcmp uno <2 x double> %i.ae, %i.w
  %i.al = fcmp uno <2 x double> %i.af, %i.x
  %i.am = or <2 x i1> %i.ak, %i.al
  %i.an = bitcast <2 x i1> %i.am to i2
  %i.ao = icmp ne i2 %i.an, 0                     ; 11 uses
  %i.ap = icmp eq i64 %index.next, %n.vec
  %i.aq = or i1 %i.ao, %i.ap
  br i1 %i.aq, label %middle.block, label %vector.body, !llvm.loop !85

middle.block:                                     ; preds = %vector.body
  %i.ar = select i1 %i.ao, <2 x double> %vec.phi, <2 x double> %i.ag
  %i.as = select i1 %i.ao, <2 x double> %vec.phi1108, <2 x double> %i.ah
  %i.at = select i1 %i.ao, <2 x double> %vec.phi1109, <2 x double> %i.y
  %i.au = select i1 %i.ao, <2 x double> %vec.phi1110, <2 x double> %i.z
  %i.av = select i1 %i.ao, <2 x double> %vec.phi1111, <2 x double> %i.ai
  %i.aw = select i1 %i.ao, <2 x double> %vec.phi1112, <2 x double> %i.aj
  %i.ax = select i1 %i.ao, <2 x double> %vec.phi1113, <2 x double> %i.aa
  %i.ay = select i1 %i.ao, <2 x double> %vec.phi1114, <2 x double> %i.ab
  %i.az = select i1 %i.ao, i64 %index, i64 %n.vec
  %rdx.minmax = tail call nsz <2 x double> @llvm.maxnum.v2f64(<2 x double> %i.ar, <2 x double> %i.as)
  %i.ba = tail call nsz double @llvm.vector.reduce.fmax.v2f64(<2 x double> %rdx.minmax)
  %rdx.minmax1118 = tail call nsz <2 x double> @llvm.maxnum.v2f64(<2 x double> %i.at, <2 x double> %i.au)
  %i.bb = tail call nsz double @llvm.vector.reduce.fmax.v2f64(<2 x double> %rdx.minmax1118)
  %rdx.minmax1119 = tail call nsz <2 x double> @llvm.minnum.v2f64(<2 x double> %i.av, <2 x double> %i.aw)
  %i.bc = tail call nsz double @llvm.vector.reduce.fmin.v2f64(<2 x double> %rdx.minmax1119)
  %rdx.minmax1120 = tail call nsz <2 x double> @llvm.minnum.v2f64(<2 x double> %i.ax, <2 x double> %i.ay)
  %i.bd = tail call nsz double @llvm.vector.reduce.fmin.v2f64(<2 x double> %rdx.minmax1120)
  %cmp.n = icmp ne i64 %n.vec, %wide.trip.count
  %.not1320 = or i1 %cmp.n, %i.ao
  %i.be = insertelement <2 x double> poison, double %i.bb, i64 0
  %i.bf = insertelement <2 x double> %i.be, double %i.ba, i64 1 ; 2 uses
  %i.bg = insertelement <2 x double> poison, double %i.bd, i64 0
  %i.bh = insertelement <2 x double> %i.bg, double %i.bc, i64 1 ; 2 uses
  br i1 %.not1320, label %.preheader572.preheader1379, label %._crit_edge

.preheader572.preheader1379:                      ; preds = %.preheader572.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.preheader572.preheader ], [ %i.az, %middle.block ]
  %.ph = phi <2 x double> [ %i.r, %.preheader572.preheader ], [ %i.bf, %middle.block ]
  %.ph1380 = phi <2 x double> [ %i.r, %.preheader572.preheader ], [ %i.bh, %middle.block ]
  br label %.preheader572

.preheader572:                                    ; preds = %.preheader572.preheader1379, %.preheader572
  %indvars.iv = phi i64 [ %indvars.iv.next, %.preheader572 ], [ %indvars.iv.ph, %.preheader572.preheader1379 ] ; 2 uses
  %i.bi = phi <2 x double> [ %i.bn, %.preheader572 ], [ %.ph, %.preheader572.preheader1379 ]
  %i.bj = phi <2 x double> [ %i.bo, %.preheader572 ], [ %.ph1380, %.preheader572.preheader1379 ]
  %i.bk = mul nsw i64 %indvars.iv, %i.t
  %i.bl = getelementptr inbounds [8 x i8], ptr %3, i64 %i.bk
  %i.bm = load <2 x double>, ptr %i.bl, align 8, !tbaa !24 ; 2 uses
  %i.bn = tail call nsz <2 x double> @llvm.maxnum.v2f64(<2 x double> %i.bi, <2 x double> %i.bm) ; 2 uses
  %i.bo = tail call nsz <2 x double> @llvm.minnum.v2f64(<2 x double> %i.bj, <2 x double> %i.bm) ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.preheader572, !llvm.loop !86

._crit_edge:                                      ; preds = %.preheader572, %middle.block, %.preheader573
  %i.bp = phi <2 x double> [ %i.r, %.preheader573 ], [ %i.bf, %middle.block ], [ %i.bn, %.preheader572 ] ; 5 uses
  %i.bq = phi <2 x double> [ %i.r, %.preheader573 ], [ %i.bh, %middle.block ], [ %i.bo, %.preheader572 ] ; 5 uses
  %i.br = fsub <2 x double> %i.bp, %i.bq          ; 6 uses
  %i.bs = extractelement <2 x double> %i.br, i64 0 ; 2 uses
  %shift = shufflevector <2 x double> %i.br, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x double> %i.br, %shift ; 2 uses
  %i.bt = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.bu = icmp eq i32 %7, 0
  br i1 %i.bu, label %bb.d, label %bb.a

bb.a:                                             ; preds = %._crit_edge
  %i.bv = icmp slt i32 %7, 0
  br i1 %i.bv, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.bw = mul i32 %1, %7
  %i.bx = sub i32 0, %i.bw
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %spec.select = tail call i32 @llvm.usub.sat.i32(i32 %7, i32 4)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge, %bb.b
  %.0420 = phi i32 [ %spec.select, %bb.c ], [ %i.bx, %bb.b ], [ %1, %._crit_edge ] ; 4 uses
  %i.by = fcmp olt double %9, 0.000000e+00
  br i1 %i.by, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bz = sitofp i32 %1 to double
  %i.ca = fdiv double %i.bt, %i.bz
  %i.cb = tail call double @sqrt(double noundef %i.ca) #19
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.0424 = phi double [ %i.cb, %bb.e ], [ %9, %bb.d ] ; 6 uses
  %i.cc = load i8, ptr @Verbose, align 1, !tbaa !35
  %.not = icmp eq i8 %i.cc, 0
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cd = load ptr, ptr @stderr, align 8, !tbaa !19
  tail call void @flockfile(ptr noundef %i.cd) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #19
  %i.ce = tail call i64 @time(ptr noundef null) #19
  store i64 %i.ce, ptr %i.q, align 8, !tbaa !36
  %i.cf = call ptr @localtime(ptr noundef nonnull %i.q) #19 ; 6 uses
  %i.cg = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 20
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !39
  %i.cj = add nsw i32 %i.ci, 1900
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !40
  %i.cm = add nsw i32 %i.cl, 1
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cf, i64 12
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !41
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !42
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cf, i64 4
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !43
  %i.ct = load i32, ptr %i.cf, align 8, !tbaa !44
  %i.cu = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cg, ptr noundef nonnull @.str.1, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 44), i32 noundef 997, i32 noundef %i.cj, i32 noundef %i.cm, i32 noundef %i.co, i32 noundef %i.cq, i32 noundef %i.cs, i32 noundef %i.ct) #20 ; 0 uses
  %i.cv = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.cw = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cv, ptr noundef nonnull @.str.40, i32 noundef %.0420, double noundef %.0424) #20 ; 0 uses
  %i.cx = load ptr, ptr @stderr, align 8, !tbaa !19
  %fputc = call i32 @fputc(i32 10, ptr %i.cx)     ; 0 uses
  %i.cy = load ptr, ptr @stderr, align 8, !tbaa !19
  call void @funlockfile(ptr noundef %i.cy) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #19
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.cz = icmp ne ptr %5, null
  %i.da = icmp ne i32 %8, 0
  %or.cond = and i1 %i.cz, %i.da
  br i1 %or.cond, label %bb.i, label %bb.x

bb.i:                                             ; preds = %bb.h
  %i.db = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.dc = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.db, ptr noundef nonnull @.str.41, i32 noundef %8) #20 ; 0 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !152
  %i.df = trunc i64 %i.de to i32                  ; 2 uses
  %i.dg = mul nsw i32 %2, %1                      ; 3 uses
  %i.dh = mul i32 %8, %2
  %i.di = mul i32 %i.dh, %i.df
  %i.dj = add nsw i32 %i.di, %i.dg                ; 3 uses
  %i.dk = sext i32 %i.dj to i64                   ; 3 uses
  %.not.i = icmp eq i32 %i.dj, 0
  br i1 %.not.i, label %.thread.i, label %bb.j

.thread.i:                                        ; preds = %bb.i
  %i.dl = call noalias ptr @calloc(i64 noundef 0, i64 noundef 8) #22
  br label %gv_calloc.exit

bb.j:                                             ; preds = %bb.i
  %mul.ov.i = icmp slt i32 %i.dj, 0
  br i1 %mul.ov.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.dm = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.dn = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dm, ptr noundef nonnull @.str.28, i64 noundef %i.dk, i64 noundef 8) #20 ; 0 uses
  call fastcc void @graphviz_exit() #21
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.do = call noalias ptr @calloc(i64 noundef %i.dk, i64 noundef 8) #22 ; 2 uses
  %i.dp = icmp eq ptr %i.do, null
  br i1 %i.dp, label %bb.m, label %gv_calloc.exit

bb.m:                                             ; preds = %bb.l
  %i.dq = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.dr = shl nuw nsw i64 %i.dk, 3
  %i.ds = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dq, ptr noundef nonnull @.str.29, i64 noundef %i.dr) #20 ; 0 uses
  call fastcc void @graphviz_exit() #21
  unreachable

gv_calloc.exit:                                   ; preds = %.thread.i, %bb.l
  %i.dt = phi ptr [ %i.dl, %.thread.i ], [ %i.do, %bb.l ] ; 4 uses
  %i.du = icmp sgt i32 %i.dg, 0
  br i1 %i.du, label %.lr.ph.preheader, label %._crit_edge596

.lr.ph.preheader:                                 ; preds = %gv_calloc.exit
  %i.dv = zext nneg i32 %i.dg to i64
  %i.dw = shl nuw nsw i64 %i.dv, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.dt, ptr nonnull align 8 %3, i64 %i.dw, i1 false), !tbaa !24
  br label %._crit_edge596

._crit_edge596:                                   ; preds = %.lr.ph.preheader, %gv_calloc.exit
  %i.dx = mul nsw i32 %8, %i.df
  %i.dy = add nsw i32 %i.dx, %1                   ; 3 uses
  %i.dz = sext i32 %i.dy to i64                   ; 3 uses
  %.not.i496 = icmp eq i32 %i.dy, 0
  br i1 %.not.i496, label %.thread.i499, label %bb.n

.thread.i499:                                     ; preds = %._crit_edge596
  %i.ea = call noalias ptr @calloc(i64 noundef 0, i64 noundef 4) #22
  br label %gv_calloc.exit500

bb.n:                                             ; preds = %._crit_edge596
  %mul.ov.i498 = icmp slt i32 %i.dy, 0
  br i1 %mul.ov.i498, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.eb = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.ec = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.eb, ptr noundef nonnull @.str.28, i64 noundef %i.dz, i64 noundef 4) #20 ; 0 uses
  call fastcc void @graphviz_exit() #21
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.ed = call noalias ptr @calloc(i64 noundef %i.dz, i64 noundef 4) #22 ; 2 uses
  %i.ee = icmp eq ptr %i.ed, null
  br i1 %i.ee, label %bb.q, label %gv_calloc.exit500

bb.q:                                             ; preds = %bb.p
  %i.ef = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.eg = shl nuw nsw i64 %i.dz, 2
  %i.eh = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ef, ptr noundef nonnull @.str.29, i64 noundef %i.eg) #20 ; 0 uses
  call fastcc void @graphviz_exit() #21
  unreachable

gv_calloc.exit500:                                ; preds = %.thread.i499, %bb.p
  %i.ei = phi ptr [ %i.ea, %.thread.i499 ], [ %i.ed, %bb.p ] ; 12 uses
  br i1 %i.s, label %.lr.ph598.preheader, label %.preheader571

.lr.ph598.preheader:                              ; preds = %gv_calloc.exit500
  %i.ej = zext nneg i32 %1 to i64
  %i.ek = shl nuw nsw i64 %i.ej, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.ei, ptr align 4 %4, i64 %i.ek, i1 false), !tbaa !22
  br label %.preheader571

.preheader571:                                    ; preds = %.lr.ph598.preheader, %gv_calloc.exit500
  %i.el = load i32, ptr %5, align 8, !tbaa !17    ; 2 uses
  %i.em = icmp sgt i32 %i.el, 0
  br i1 %i.em, label %.lr.ph632, label %._crit_edge633

.lr.ph632:                                        ; preds = %.preheader571
  %i.en = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !32 ; 2 uses
  %.not492 = icmp eq i32 %17, 0
  %i.ep = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 5 uses
  %i.eq = icmp sgt i32 %8, 0
  %i.er = icmp sgt i32 %2, 0
  %i.es = sitofp i32 %8 to double                 ; 4 uses
  %i.et = sext i32 %2 to i64                      ; 2 uses
  %wide.trip.count740 = zext nneg i32 %i.el to i64
  %.pre = load i32, ptr %i.eo, align 4, !tbaa !22
  %wide.trip.count726 = zext i32 %2 to i64        ; 3 uses
  %xtraiter = and i32 %8, 1
  %i.eu = icmp eq i32 %8, 1
  %unroll_iter = and i32 %8, 2147483646
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  %lcmp.mod1393 = trunc i32 %8 to i1
  %min.iters.check1125 = icmp ult i32 %2, 4
  %n.vec1127 = and i64 %wide.trip.count726, 2147483644 ; 3 uses
  %cmp.n1140 = icmp eq i64 %n.vec1127, %wide.trip.count726
  br label %bb.r

.loopexit570:                                     ; preds = %..loopexit569_crit_edge.us, %.lr.ph608, %bb.r
  %.1428.lcssa = phi i32 [ %.0427631, %bb.r ], [ %.0427631, %.lr.ph608 ], [ %.3430.us, %..loopexit569_crit_edge.us ] ; 2 uses
  %exitcond741.not = icmp eq i64 %indvars.iv.next738, %wide.trip.count740
  br i1 %exitcond741.not, label %._crit_edge633, label %bb.r, !llvm.loop !87

bb.r:                                             ; preds = %.lr.ph632, %.loopexit570
  %i.ev = phi i32 [ %.pre, %.lr.ph632 ], [ %i.ex, %.loopexit570 ] ; 2 uses
  %indvars.iv737 = phi i64 [ 0, %.lr.ph632 ], [ %indvars.iv.next738, %.loopexit570 ] ; 3 uses
  %.0427631 = phi i32 [ %1, %.lr.ph632 ], [ %.1428.lcssa, %.loopexit570 ] ; 3 uses
  %indvars.iv.next738 = add nuw nsw i64 %indvars.iv737, 1 ; 3 uses
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.eo, i64 %indvars.iv.next738
  %i.ex = load i32, ptr %i.ew, align 4, !tbaa !22 ; 3 uses
  %i.ey = icmp slt i32 %i.ev, %i.ex
  br i1 %i.ey, label %.lr.ph608, label %.loopexit570

.lr.ph608:                                        ; preds = %bb.r
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.ei, i64 %indvars.iv737 ; 5 uses
  br i1 %i.eq, label %.lr.ph608.split.us.preheader, label %.loopexit570

.lr.ph608.split.us.preheader:                     ; preds = %.lr.ph608
  %i.fa = mul nuw nsw i64 %indvars.iv737, %i.et
  %i.fb = sext i32 %i.ev to i64
  %wide.trip.count735 = sext i32 %i.ex to i64
  %invariant.gep = getelementptr [8 x i8], ptr %3, i64 %i.fa ; 2 uses
  br label %.lr.ph608.split.us

.lr.ph608.split.us:                               ; preds = %.lr.ph608.split.us.preheader, %..loopexit569_crit_edge.us
  %indvars.iv732 = phi i64 [ %i.fb, %.lr.ph608.split.us.preheader ], [ %indvars.iv.next733, %..loopexit569_crit_edge.us ] ; 6 uses
  %.1428606.us = phi i32 [ %.0427631, %.lr.ph608.split.us.preheader ], [ %.3430.us, %..loopexit569_crit_edge.us ] ; 3 uses
  br i1 %.not492, label %.preheader568.lr.ph.us, label %bb.s

bb.s:                                             ; preds = %.lr.ph608.split.us
  %i.fc = load i32, ptr %i.ez, align 4, !tbaa !22 ; 2 uses
  %i.fd = load ptr, ptr %i.ep, align 8, !tbaa !33
  %i.fe = getelementptr inbounds [4 x i8], ptr %i.fd, i64 %indvars.iv732
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !22
  %i.fg = sext i32 %i.ff to i64
  %i.fh = getelementptr inbounds [4 x i8], ptr %i.ei, i64 %i.fg
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !22
  %i.fj = icmp eq i32 %i.fc, %i.fi
  %i.fk = icmp eq i32 %i.fc, %17
  %or.cond493.us = and i1 %i.fk, %i.fj
  br i1 %or.cond493.us, label %.preheader568.lr.ph.us, label %..loopexit569_crit_edge.us

.preheader568.lr.ph.us:                           ; preds = %bb.s, %.lr.ph608.split.us
  br i1 %i.er, label %.preheader568.lr.ph.split.us.us, label %.preheader568.us612.preheader

.preheader568.us612.preheader:                    ; preds = %.preheader568.lr.ph.us
  %i.fl = sext i32 %.1428606.us to i64            ; 2 uses
  br i1 %i.eu, label %.preheader568.us612.epil.preheader, label %.preheader568.us612

.preheader568.us612:                              ; preds = %.preheader568.us612.preheader, %bb.v
  %indvars.iv719 = phi i64 [ %indvars.iv.next720.1, %bb.v ], [ %i.fl, %.preheader568.us612.preheader ] ; 3 uses
  %.0425603.us613 = phi i32 [ %i.gg, %bb.v ], [ 0, %.preheader568.us612.preheader ] ; 3 uses
  %niter = phi i32 [ %niter.next.1, %bb.v ], [ 0, %.preheader568.us612.preheader ]
  %i.fm = uitofp nneg i32 %.0425603.us613 to double
  %i.fn = fdiv double %i.fm, %i.es
  %i.fo = fcmp ogt double %i.fn, 5.000000e-01
  br i1 %i.fo, label %.preheader568.us612.1, label %bb.t

bb.t:                                             ; preds = %.preheader568.us612
  %i.fp = load ptr, ptr %i.ep, align 8, !tbaa !33
  %i.fq = getelementptr inbounds [4 x i8], ptr %i.fp, i64 %indvars.iv732
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !22
  %i.fs = sext i32 %i.fr to i64
  %i.ft = getelementptr inbounds [4 x i8], ptr %i.ei, i64 %i.fs
  br label %.preheader568.us612.1

.preheader568.us612.1:                            ; preds = %.preheader568.us612, %bb.t
  %.sink.in = phi ptr [ %i.ft, %bb.t ], [ %i.ez, %.preheader568.us612 ]
  %.sink = load i32, ptr %.sink.in, align 4, !tbaa !22
  %i.fu = getelementptr inbounds [4 x i8], ptr %i.ei, i64 %indvars.iv719
  store i32 %.sink, ptr %i.fu, align 4, !tbaa !22
  %i.fv = or disjoint i32 %.0425603.us613, 1
  %i.fw = uitofp nneg i32 %i.fv to double
  %i.fx = fdiv double %i.fw, %i.es
  %i.fy = fcmp ogt double %i.fx, 5.000000e-01
  br i1 %i.fy, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.preheader568.us612.1
  %i.fz = load ptr, ptr %i.ep, align 8, !tbaa !33
  %i.ga = getelementptr inbounds [4 x i8], ptr %i.fz, i64 %indvars.iv732
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !22
  %i.gc = sext i32 %i.gb to i64
end_hunk_0
begin_hunk_1_@make_map_internal:.preheader573
  call fastcc void @graphviz_exit() #21
  unreachable

bb.al:                                            ; preds = %bb.aj
  %i.kd = call noalias ptr @calloc(i64 noundef %i.jz, i64 noundef 8) #22 ; 2 uses
  %i.ke = icmp eq ptr %i.kd, null
  br i1 %i.ke, label %bb.am, label %gv_calloc.exit505

bb.am:                                            ; preds = %bb.al
  %i.kf = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.kg = shl nuw nsw i64 %i.jz, 3
  %i.kh = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.kf, ptr noundef nonnull @.str.29, i64 noundef %i.kg) #20 ; 0 uses
  call fastcc void @graphviz_exit() #21
  unreachable

gv_calloc.exit505:                                ; preds = %.thread.i504, %bb.al
  %i.ki = phi ptr [ %i.ka, %.thread.i504 ], [ %i.kd, %bb.al ] ; 4 uses
  br i1 %0, label %bb.an, label %gv_recalloc.exit

bb.an:                                            ; preds = %gv_calloc.exit505
  %i.kj = add nsw i32 %.1421, -1                  ; 4 uses
  %i.kk = icmp eq ptr %.0432, %4
  %i.kl = add nsw i32 %.1421, %.0415              ; 5 uses
  %i.km = sext i32 %i.kl to i64                   ; 5 uses
  br i1 %i.kk, label %bb.ao, label %bb.at

bb.ao:                                            ; preds = %bb.an
  %.not.i506 = icmp eq i32 %i.kl, 0
  br i1 %.not.i506, label %.thread.i509, label %bb.ap

.thread.i509:                                     ; preds = %bb.ao
  %i.kn = call noalias ptr @calloc(i64 noundef 0, i64 noundef 4) #22
  br label %gv_calloc.exit510

bb.ap:                                            ; preds = %bb.ao
  %mul.ov.i508 = icmp slt i32 %i.kl, 0
  br i1 %mul.ov.i508, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.ko = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.kp = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ko, ptr noundef nonnull @.str.28, i64 noundef %i.km, i64 noundef 4) #20 ; 0 uses
  call fastcc void @graphviz_exit() #21
  unreachable

bb.ar:                                            ; preds = %bb.ap
  %i.kq = call noalias ptr @calloc(i64 noundef %i.km, i64 noundef 4) #22 ; 2 uses
  %i.kr = icmp eq ptr %i.kq, null
  br i1 %i.kr, label %bb.as, label %gv_calloc.exit510

bb.as:                                            ; preds = %bb.ar
  %i.ks = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.kt = shl nuw nsw i64 %i.km, 2
  %i.ku = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ks, ptr noundef nonnull @.str.29, i64 noundef %i.kt) #20 ; 0 uses
  call fastcc void @graphviz_exit() #21
  unreachable

gv_calloc.exit510:                                ; preds = %.thread.i509, %bb.ar
  %i.kv = phi ptr [ %i.kn, %.thread.i509 ], [ %i.kq, %bb.ar ] ; 2 uses
  %i.kw = sext i32 %.0415 to i64
  %i.kx = shl nsw i64 %i.kw, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.kv, ptr align 4 %.0432, i64 %i.kx, i1 false)
  br label %gv_recalloc.exit

bb.at:                                            ; preds = %bb.an
  %mul.ov.i512 = icmp slt i32 %i.kl, 0
  br i1 %mul.ov.i512, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.ky = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.kz = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ky, ptr noundef nonnull @.str.28, i64 noundef %i.km, i64 noundef 4) #20 ; 0 uses
  call fastcc void @graphviz_exit() #21
  unreachable

bb.av:                                            ; preds = %bb.at
  %i.la = sext i32 %.0415 to i64
  %i.lb = shl nsw i64 %i.la, 2                    ; 3 uses
  %i.lc = shl nuw nsw i64 %i.km, 2                ; 4 uses
  %i.ld = icmp eq i32 %i.kl, 0
  br i1 %i.ld, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  call void @free(ptr noundef %.0432) #19
  br label %gv_recalloc.exit

bb.ax:                                            ; preds = %bb.av
  %i.le = call ptr @realloc(ptr noundef %.0432, i64 noundef %i.lc) #23 ; 4 uses
  %i.lf = icmp eq ptr %i.le, null
  br i1 %i.lf, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.lg = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.lh = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.lg, ptr noundef nonnull @.str.29, i64 noundef %i.lc) #20 ; 0 uses
  call fastcc void @graphviz_exit() #21
  unreachable

bb.az:                                            ; preds = %bb.ax
  %i.li = icmp ugt i64 %i.lc, %i.lb
  br i1 %i.li, label %bb.ba, label %gv_recalloc.exit

bb.ba:                                            ; preds = %bb.az
  %i.lj = getelementptr inbounds nuw i8, ptr %i.le, i64 %i.lb
  %i.lk = sub nuw nsw i64 %i.lc, %i.lb
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.lj, i8 0, i64 %i.lk, i1 false)
  br label %gv_recalloc.exit

gv_recalloc.exit:                                 ; preds = %bb.ba, %bb.az, %bb.aw, %gv_calloc.exit510, %gv_calloc.exit505
  %.0436 = phi i32 [ %i.kj, %gv_calloc.exit510 ], [ 0, %gv_calloc.exit505 ], [ %i.kj, %bb.aw ], [ %i.kj, %bb.az ], [ %i.kj, %bb.ba ] ; 3 uses
  %.1433 = phi ptr [ %i.kv, %gv_calloc.exit510 ], [ %.0432, %gv_calloc.exit505 ], [ null, %bb.aw ], [ %i.le, %bb.az ], [ %i.le, %bb.ba ] ; 4 uses
  %i.ll = icmp sgt i32 %.1421, 0
  br i1 %i.ll, label %.preheader566.lr.ph, label %._crit_edge642

.preheader566.lr.ph:                              ; preds = %gv_recalloc.exit
  %i.lm = fdiv double %.0424, 1.000000e+01
  %i.ln = fsub <2 x double> %i.jf, %i.jg          ; 2 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.lp = extractelement <2 x double> %i.jg, i64 0
  %i.lq = extractelement <2 x double> %i.jg, i64 1
  %i.lr = extractelement <2 x double> %i.ln, i64 0
  %i.ls = extractelement <2 x double> %i.ln, i64 1
  br label %.preheader566

.preheader566:                                    ; preds = %.preheader566.lr.ph, %bb.bc
  %.0418641 = phi i32 [ 0, %.preheader566.lr.ph ], [ %.1419, %bb.bc ] ; 4 uses
  %.1439640 = phi i32 [ %.0436, %.preheader566.lr.ph ], [ %.2440, %bb.bc ] ; 4 uses
  %.0441639 = phi i32 [ %.0415, %.preheader566.lr.ph ], [ %.1442, %bb.bc ] ; 4 uses
  %.5456638 = phi i32 [ 0, %.preheader566.lr.ph ], [ %i.mp, %bb.bc ]
  %i.lt = call double @drand() #19
  %i.lu = call double @llvm.fmuladd.f64(double %i.lr, double %i.lt, double %i.lp)
  store double %i.lu, ptr %i.p, align 16, !tbaa !24
  %i.lv = call double @drand() #19
  %i.lw = call double @llvm.fmuladd.f64(double %i.ls, double %i.lv, double %i.lq)
  store double %i.lw, ptr %i.lo, align 8, !tbaa !24
  call void @QuadTree_get_nearest(ptr noundef %.0444, ptr noundef nonnull %i.p, ptr noundef nonnull %i.m, ptr noundef nonnull %i.o, ptr noundef nonnull %i.n) #19
  %i.lx = load double, ptr %i.n, align 8, !tbaa !24 ; 2 uses
  %i.ly = fcmp ogt double %i.lx, %.0424
  br i1 %i.ly, label %.preheader564, label %bb.bb

.preheader564:                                    ; preds = %.preheader566
  %i.lz = shl nsw i32 %.0418641, 1
  %i.ma = sext i32 %i.lz to i64
  %i.mb = shl nsw i64 %i.ma, 3
  %scevgep751 = getelementptr i8, ptr %i.ki, i64 %i.mb
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %scevgep751, ptr noundef nonnull align 16 dereferenceable(16) %i.p, i64 16, i1 false), !tbaa !24
  %i.mc = add nsw i32 %.0418641, 1
  br label %bb.bc

bb.bb:                                            ; preds = %.preheader566
  %i.md = fcmp ogt double %i.lx, %i.lm
  %or.cond495 = select i1 %0, i1 %i.md, i1 false
  br i1 %or.cond495, label %.preheader565, label %bb.bc

.preheader565:                                    ; preds = %bb.bb
  %i.me = shl nsw i32 %.1439640, 1
  %i.mf = sext i32 %i.me to i64
  %i.mg = shl nsw i64 %i.mf, 3
  %scevgep = getelementptr i8, ptr %i.ki, i64 %i.mg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %scevgep, ptr noundef nonnull align 16 dereferenceable(16) %i.p, i64 16, i1 false), !tbaa !24
  %i.mh = load i32, ptr %i.o, align 4, !tbaa !22
  %i.mi = sext i32 %i.mh to i64
  %i.mj = getelementptr inbounds [4 x i8], ptr %.1433, i64 %i.mi
  %i.mk = load i32, ptr %i.mj, align 4, !tbaa !22
  %i.ml = add nsw i32 %.0441639, 1
  %i.mm = sext i32 %.0441639 to i64
  %i.mn = getelementptr inbounds [4 x i8], ptr %.1433, i64 %i.mm
  store i32 %i.mk, ptr %i.mn, align 4, !tbaa !22
  %i.mo = add nsw i32 %.1439640, -1
  br label %bb.bc

bb.bc:                                            ; preds = %.preheader564, %.preheader565, %bb.bb
  %.1442 = phi i32 [ %.0441639, %.preheader564 ], [ %i.ml, %.preheader565 ], [ %.0441639, %bb.bb ] ; 2 uses
  %.2440 = phi i32 [ %.1439640, %.preheader564 ], [ %i.mo, %.preheader565 ], [ %.1439640, %bb.bb ]
  %.1419 = phi i32 [ %i.mc, %.preheader564 ], [ %.0418641, %.preheader565 ], [ %.0418641, %bb.bb ] ; 2 uses
  %i.mp = add nuw nsw i32 %.5456638, 1            ; 2 uses
  %exitcond755.not = icmp eq i32 %i.mp, %.1421
  br i1 %exitcond755.not, label %._crit_edge642, label %.preheader566, !llvm.loop !92

._crit_edge642:                                   ; preds = %bb.bc, %gv_recalloc.exit
  %.0441.lcssa = phi i32 [ %.0415, %gv_recalloc.exit ], [ %.1442, %bb.bc ] ; 2 uses
  %.0418.lcssa = phi i32 [ 0, %gv_recalloc.exit ], [ %.1419, %bb.bc ] ; 3 uses
  %i.mq = load i8, ptr @Verbose, align 1, !tbaa !35
  %.not484 = icmp eq i8 %i.mq, 0
  br i1 %.not484, label %gv_calloc.exit513, label %bb.bd

bb.bd:                                            ; preds = %._crit_edge642
  %i.mr = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.ms = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.mr, ptr noundef nonnull @.str.45, i32 noundef %.0418.lcssa) #20 ; 0 uses
  br label %gv_calloc.exit513

bb.be:                                            ; preds = %bb.y
  %i.mt = call noalias dereferenceable_or_null(64) ptr @calloc(i64 noundef 8, i64 noundef 8) #22 ; 2 uses
  %i.mu = icmp eq ptr %i.mt, null
  br i1 %i.mu, label %bb.bf, label %gv_calloc.exit513

bb.bf:                                            ; preds = %bb.be
  %i.mv = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.mw = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.mv, ptr noundef nonnull @.str.29, i64 noundef 64) #20 ; 0 uses
  call fastcc void @graphviz_exit() #21
  unreachable

gv_calloc.exit513:                                ; preds = %bb.be, %._crit_edge642, %bb.bd
  %.2443 = phi i32 [ 0, %bb.be ], [ %.0441.lcssa, %._crit_edge642 ], [ %.0441.lcssa, %bb.bd ] ; 7 uses
  %.1437 = phi i32 [ 0, %bb.be ], [ %.0436, %._crit_edge642 ], [ %.0436, %bb.bd ]
  %.0435 = phi ptr [ %i.mt, %bb.be ], [ %i.ki, %._crit_edge642 ], [ %i.ki, %bb.bd ] ; 25 uses
  %.2434 = phi ptr [ %.0432, %bb.be ], [ %.1433, %._crit_edge642 ], [ %.1433, %bb.bd ] ; 12 uses
  %.2422 = phi i32 [ 0, %bb.be ], [ %.0418.lcssa, %._crit_edge642 ], [ %.0418.lcssa, %bb.bd ] ; 3 uses
  %i.mx = phi <2 x double> [ %i.bp, %bb.be ], [ %i.jf, %._crit_edge642 ], [ %i.jf, %bb.bd ] ; 4 uses
  %i.my = phi <2 x double> [ %i.bq, %bb.be ], [ %i.jg, %._crit_edge642 ], [ %i.jg, %bb.bd ] ; 3 uses
  %foldExtExtBinop1332 = fsub <2 x double> %i.mx, %i.my
  %i.mz = shl i32 %.2422, 1                       ; 4 uses
  %i.na = sext i32 %i.mz to i64                   ; 2 uses
  %i.nb = getelementptr inbounds [8 x i8], ptr %.0435, i64 %i.na
  %i.nc = getelementptr [8 x i8], ptr %.0435, i64 %i.na
  %i.nd = getelementptr i8, ptr %i.nc, i64 8
  %i.ne = add i32 %i.mz, 2
  %i.nf = sext i32 %i.ne to i64                   ; 2 uses
  %i.ng = getelementptr inbounds [8 x i8], ptr %.0435, i64 %i.nf
  %i.nh = getelementptr [8 x i8], ptr %.0435, i64 %i.nf
  %i.ni = getelementptr i8, ptr %i.nh, i64 8
  %i.nj = add i32 %i.mz, 4
  %i.nk = sext i32 %i.nj to i64
  %i.nl = getelementptr inbounds [8 x i8], ptr %.0435, i64 %i.nk ; 2 uses
  %i.nm = getelementptr i8, ptr %i.nl, i64 8
  %i.nn = add i32 %i.mz, 6
  %i.no = sext i32 %i.nn to i64
  %i.np = getelementptr inbounds [8 x i8], ptr %.0435, i64 %i.no
  %i.nq = insertelement <2 x double> %foldExtExtBinop1332, double -0.000000e+00, i64 1
  %i.nr = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nq, <2 x double> <double -2.000000e-01, double 0.000000e+00>, <2 x double> %i.my) ; 2 uses
  %i.ns = fsub <2 x double> %i.mx, %i.nr
  %i.nt = shufflevector <2 x double> %i.mx, <2 x double> %i.my, <2 x i32> <i32 0, i32 3>
  %i.nu = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ns, <2 x double> <double 2.000000e-01, double -2.000000e-01>, <2 x double> %i.nt) ; 3 uses
  %i.nv = extractelement <2 x double> %i.nu, i64 1 ; 2 uses
  %i.nw = extractelement <2 x double> %i.mx, i64 1 ; 2 uses
  %i.nx = fsub double %i.nw, %i.nv
  %i.ny = call double @llvm.fmuladd.f64(double %i.nx, double 2.000000e-01, double %i.nw) ; 2 uses
  %i.nz = extractelement <2 x double> %i.nr, i64 0 ; 2 uses
  store double %i.nz, ptr %i.nb, align 8, !tbaa !24
  store double %i.nv, ptr %i.nd, align 8, !tbaa !24
  %i.oa = extractelement <2 x double> %i.nu, i64 0
  store double %i.oa, ptr %i.ng, align 8, !tbaa !24
  store double %i.ny, ptr %i.ni, align 8, !tbaa !24
  store double %i.nz, ptr %i.nl, align 8, !tbaa !24
  store double %i.ny, ptr %i.nm, align 8, !tbaa !24
  store <2 x double> %i.nu, ptr %i.np, align 8, !tbaa !24
  %i.ob = add i32 %.2422, 4                       ; 6 uses
  br i1 %0, label %bb.bg, label %bb.bl

bb.bg:                                            ; preds = %gv_calloc.exit513
  %i.oc = add nsw i32 %i.ob, %.2443               ; 3 uses
  %i.od = shl nsw i32 %i.oc, 1
  %i.oe = sext i32 %i.od to i64                   ; 3 uses
  %.not.i514 = icmp eq i32 %i.oc, 0
  br i1 %.not.i514, label %gv_calloc.exit518.sink.split, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %mul.ov.i516 = icmp slt i32 %i.oc, 0
  br i1 %mul.ov.i516, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.of = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.og = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.of, ptr noundef nonnull @.str.28, i64 noundef %i.oe, i64 noundef 8) #20 ; 0 uses
  call fastcc void @graphviz_exit() #21
  unreachable

bb.bj:                                            ; preds = %bb.bh
  %i.oh = call noalias ptr @calloc(i64 noundef %i.oe, i64 noundef 8) #22 ; 2 uses
  %i.oi = icmp eq ptr %i.oh, null
  br i1 %i.oi, label %bb.bk, label %gv_calloc.exit518

bb.bk:                                            ; preds = %bb.bj
  %i.oj = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.ok = shl nuw nsw i64 %i.oe, 3
  %i.ol = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.oj, ptr noundef nonnull @.str.29, i64 noundef %i.ok) #20 ; 0 uses
  call fastcc void @graphviz_exit() #21
  unreachable

bb.bl:                                            ; preds = %gv_calloc.exit513
  %i.om = add nsw i32 %i.ob, %.0415               ; 3 uses
  %i.on = shl nsw i32 %i.om, 1
  %i.oo = sext i32 %i.on to i64                   ; 3 uses
  %.not.i519 = icmp eq i32 %i.om, 0
  br i1 %.not.i519, label %gv_calloc.exit518.sink.split, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %mul.ov.i521 = icmp slt i32 %i.om, 0
  br i1 %mul.ov.i521, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.op = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.oq = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.op, ptr noundef nonnull @.str.28, i64 noundef %i.oo, i64 noundef 8) #20 ; 0 uses
  call fastcc void @graphviz_exit() #21
  unreachable

bb.bo:                                            ; preds = %bb.bm
  %i.or = call noalias ptr @calloc(i64 noundef %i.oo, i64 noundef 8) #22 ; 2 uses
  %i.os = icmp eq ptr %i.or, null
  br i1 %i.os, label %bb.bp, label %gv_calloc.exit518

bb.bp:                                            ; preds = %bb.bo
  %i.ot = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.ou = shl nuw nsw i64 %i.oo, 3
  %i.ov = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ot, ptr noundef nonnull @.str.29, i64 noundef %i.ou) #20 ; 0 uses
  call fastcc void @graphviz_exit() #21
  unreachable

gv_calloc.exit518.sink.split:                     ; preds = %bb.bl, %bb.bg
  %i.ow = call noalias ptr @calloc(i64 noundef 0, i64 noundef 8) #22
  br label %gv_calloc.exit518

gv_calloc.exit518:                                ; preds = %gv_calloc.exit518.sink.split, %bb.bo, %bb.bj
  %.0414 = phi ptr [ %i.oh, %bb.bj ], [ %i.or, %bb.bo ], [ %i.ow, %gv_calloc.exit518.sink.split ] ; 45 uses
  %.04141215 = ptrtoaddr ptr %.0414 to i64        ; 2 uses
  %i.ox = icmp sgt i32 %.0415, 0
  br i1 %i.ox, label %.preheader560.preheader, label %.preheader559

.preheader560.preheader:                          ; preds = %gv_calloc.exit518
  %i.oy = sext i32 %2 to i64                      ; 3 uses
  %wide.trip.count778 = zext nneg i32 %.0415 to i64 ; 7 uses
  %min.iters.check1147 = icmp ugt i32 %.0415, 9
  %ident.check1143.not = icmp eq i32 %2, 1
  %or.cond1325 = and i1 %min.iters.check1147, %ident.check1143.not
  br i1 %or.cond1325, label %vector.memcheck, label %.preheader560.preheader1378

vector.memcheck:                                  ; preds = %.preheader560.preheader
  %i.oz = shl nuw nsw i64 %wide.trip.count778, 4
  %i.pa = getelementptr i8, ptr %.0414, i64 %i.oz
  %i.pb = shl nuw nsw i64 %wide.trip.count778, 3
  %i.pc = getelementptr i8, ptr %.0431, i64 %i.pb
  %i.pd = getelementptr i8, ptr %i.pc, i64 8
  %bound0 = icmp ult ptr %.0414, %i.pd
  %bound1 = icmp ult ptr %.0431, %i.pa
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.preheader560.preheader1378, label %vector.ph1148

vector.ph1148:                                    ; preds = %vector.memcheck
  %n.vec1149 = and i64 %wide.trip.count778, 2147483646 ; 3 uses
  br label %vector.body1150

vector.body1150:                                  ; preds = %vector.body1150, %vector.ph1148
  %index1151 = phi i64 [ 0, %vector.ph1148 ], [ %index.next1154, %vector.body1150 ] ; 3 uses
  %i.pe = getelementptr [8 x i8], ptr %.0431, i64 %index1151 ; 2 uses
  %wide.load1152 = load <2 x double>, ptr %i.pe, align 8, !tbaa !24, !alias.scope !153
  %.idx1321 = shl nuw nsw i64 %index1151, 4
  %i.pf = getelementptr inbounds nuw i8, ptr %.0414, i64 %.idx1321
  %i.pg = getelementptr i8, ptr %i.pe, i64 8
  %wide.load1153 = load <2 x double>, ptr %i.pg, align 8, !tbaa !24, !alias.scope !153
  %interleaved.vec = shufflevector <2 x double> %wide.load1152, <2 x double> %wide.load1153, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %interleaved.vec, ptr %i.pf, align 8, !tbaa !24, !alias.scope !154, !noalias !153
  %index.next1154 = add nuw i64 %index1151, 2     ; 2 uses
  %i.ph = icmp eq i64 %index.next1154, %n.vec1149
  br i1 %i.ph, label %middle.block1155, label %vector.body1150, !llvm.loop !96

middle.block1155:                                 ; preds = %vector.body1150
  %cmp.n1156 = icmp eq i64 %n.vec1149, %wide.trip.count778
  br i1 %cmp.n1156, label %.preheader559, label %.preheader560.preheader1378

.preheader560.preheader1378:                      ; preds = %vector.memcheck, %.preheader560.preheader, %middle.block1155
  %indvars.iv775.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.preheader560.preheader ], [ %n.vec1149, %middle.block1155 ] ; 5 uses
  %xtraiter1394 = and i64 %wide.trip.count778, 1
  %lcmp.mod1395.not = icmp eq i64 %xtraiter1394, 0
  br i1 %lcmp.mod1395.not, label %.preheader560.prol.loopexit, label %.preheader560.prol

.preheader560.prol:                               ; preds = %.preheader560.preheader1378
  %i.pi = mul nsw i64 %indvars.iv775.ph, %i.oy    ; 2 uses
  %i.pj = shl nuw nsw i64 %indvars.iv775.ph, 1    ; 2 uses
  %i.pk = getelementptr inbounds [8 x i8], ptr %.0431, i64 %i.pi
  %i.pl = load double, ptr %i.pk, align 8, !tbaa !24
  %i.pm = getelementptr inbounds nuw [8 x i8], ptr %.0414, i64 %i.pj
  store double %i.pl, ptr %i.pm, align 8, !tbaa !24
  %i.pn = getelementptr [8 x i8], ptr %.0431, i64 %i.pi
  %i.po = getelementptr i8, ptr %i.pn, i64 8
  %i.pp = load double, ptr %i.po, align 8, !tbaa !24
  %i.pq = getelementptr inbounds nuw [8 x i8], ptr %.0414, i64 %i.pj
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pq, i64 8
  store double %i.pp, ptr %i.pr, align 8, !tbaa !24
  %indvars.iv.next776.prol = or disjoint i64 %indvars.iv775.ph, 1
  br label %.preheader560.prol.loopexit

.preheader560.prol.loopexit:                      ; preds = %.preheader560.prol, %.preheader560.preheader1378
  %indvars.iv775.unr = phi i64 [ %indvars.iv775.ph, %.preheader560.preheader1378 ], [ %indvars.iv.next776.prol, %.preheader560.prol ]
  %i.ps = add nsw i64 %wide.trip.count778, -1
  %i.pt = icmp eq i64 %indvars.iv775.ph, %i.ps
  br i1 %i.pt, label %.preheader559, label %.preheader560

.preheader560:                                    ; preds = %.preheader560.prol.loopexit, %.preheader560
  %indvars.iv775 = phi i64 [ %indvars.iv.next776.1, %.preheader560 ], [ %indvars.iv775.unr, %.preheader560.prol.loopexit ] ; 4 uses
  %i.pu = mul nsw i64 %indvars.iv775, %i.oy       ; 2 uses
  %i.pv = shl nuw nsw i64 %indvars.iv775, 1       ; 2 uses
  %i.pw = getelementptr inbounds [8 x i8], ptr %.0431, i64 %i.pu
  %i.px = load double, ptr %i.pw, align 8, !tbaa !24
  %i.py = getelementptr inbounds nuw [8 x i8], ptr %.0414, i64 %i.pv
  store double %i.px, ptr %i.py, align 8, !tbaa !24
  %i.pz = getelementptr [8 x i8], ptr %.0431, i64 %i.pu
  %i.qa = getelementptr i8, ptr %i.pz, i64 8
  %i.qb = load double, ptr %i.qa, align 8, !tbaa !24
  %i.qc = getelementptr inbounds nuw [8 x i8], ptr %.0414, i64 %i.pv
  %i.qd = getelementptr inbounds nuw i8, ptr %i.qc, i64 8
  store double %i.qb, ptr %i.qd, align 8, !tbaa !24
  %indvars.iv.next776 = add nuw nsw i64 %indvars.iv775, 1 ; 2 uses
  %i.qe = mul nsw i64 %indvars.iv.next776, %i.oy  ; 2 uses
  %i.qf = shl nuw nsw i64 %indvars.iv.next776, 1  ; 2 uses
  %i.qg = getelementptr inbounds [8 x i8], ptr %.0431, i64 %i.qe
  %i.qh = load double, ptr %i.qg, align 8, !tbaa !24
  %i.qi = getelementptr inbounds nuw [8 x i8], ptr %.0414, i64 %i.qf
  store double %i.qh, ptr %i.qi, align 8, !tbaa !24
  %i.qj = getelementptr [8 x i8], ptr %.0431, i64 %i.qe
  %i.qk = getelementptr i8, ptr %i.qj, i64 8
  %i.ql = load double, ptr %i.qk, align 8, !tbaa !24
  %i.qm = getelementptr inbounds nuw [8 x i8], ptr %.0414, i64 %i.qf
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qm, i64 8
  store double %i.ql, ptr %i.qn, align 8, !tbaa !24
  %indvars.iv.next776.1 = add nuw nsw i64 %indvars.iv775, 2 ; 2 uses
  %exitcond779.not.1 = icmp eq i64 %indvars.iv.next776.1, %wide.trip.count778
  br i1 %exitcond779.not.1, label %.preheader559, label %.preheader560, !llvm.loop !97

.preheader559:                                    ; preds = %.preheader560.prol.loopexit, %.preheader560, %middle.block1155, %gv_calloc.exit518
  %i.qo = icmp sgt i32 %.2422, -4
  br i1 %i.qo, label %.preheader558.preheader, label %._crit_edge653

.preheader558.preheader:                          ; preds = %.preheader559
  %i.qp = sext i32 %2 to i64                      ; 3 uses
  %i.qq = sext i32 %.2443 to i64                  ; 6 uses
  %smax = call i32 @llvm.smax.i32(i32 %i.ob, i32 1)
  %wide.trip.count788 = zext nneg i32 %smax to i64 ; 7 uses
  %min.iters.check1168 = icmp sgt i32 %i.ob, 11
  %ident.check1159.not = icmp eq i32 %2, 1
  %or.cond1326 = and i1 %min.iters.check1168, %ident.check1159.not
  br i1 %or.cond1326, label %vector.memcheck1169, label %.preheader558.preheader1377

vector.memcheck1169:                              ; preds = %.preheader558.preheader
  %i.qr = shl nsw i64 %i.qq, 4
  %i.qs = getelementptr i8, ptr %.0414, i64 %i.qr
  %i.qt = add nsw i64 %i.qq, %wide.trip.count788
  %i.qu = shl nsw i64 %i.qt, 4
  %i.qv = getelementptr i8, ptr %.0414, i64 %i.qu
  %i.qw = shl nuw nsw i64 %wide.trip.count788, 3
  %i.qx = getelementptr i8, ptr %.0435, i64 %i.qw
  %i.qy = getelementptr i8, ptr %i.qx, i64 8
  %bound01170 = icmp ult ptr %i.qs, %i.qy
  %bound11171 = icmp ult ptr %.0435, %i.qv
  %found.conflict1172 = and i1 %bound01170, %bound11171
  br i1 %found.conflict1172, label %.preheader558.preheader1377, label %vector.ph1173

vector.ph1173:                                    ; preds = %vector.memcheck1169
  %n.vec1174 = and i64 %wide.trip.count788, 2147483646 ; 3 uses
  br label %vector.body1175

vector.body1175:                                  ; preds = %vector.body1175, %vector.ph1173
  %index1176 = phi i64 [ 0, %vector.ph1173 ], [ %index.next1180, %vector.body1175 ] ; 3 uses
  %i.qz = add nsw i64 %index1176, %i.qq
  %i.ra = getelementptr [8 x i8], ptr %.0435, i64 %index1176 ; 2 uses
  %wide.load1177 = load <2 x double>, ptr %i.ra, align 8, !tbaa !24, !alias.scope !155
  %.idx1322 = shl nsw i64 %i.qz, 4
  %i.rb = getelementptr inbounds i8, ptr %.0414, i64 %.idx1322
  %i.rc = getelementptr i8, ptr %i.ra, i64 8
  %wide.load1178 = load <2 x double>, ptr %i.rc, align 8, !tbaa !24, !alias.scope !155
  %interleaved.vec1179 = shufflevector <2 x double> %wide.load1177, <2 x double> %wide.load1178, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x double> %interleaved.vec1179, ptr %i.rb, align 8, !tbaa !24, !alias.scope !156, !noalias !155
  %index.next1180 = add nuw i64 %index1176, 2     ; 2 uses
  %i.rd = icmp eq i64 %index.next1180, %n.vec1174
  br i1 %i.rd, label %middle.block1181, label %vector.body1175, !llvm.loop !101

middle.block1181:                                 ; preds = %vector.body1175
  %cmp.n1182 = icmp eq i64 %n.vec1174, %wide.trip.count788
  br i1 %cmp.n1182, label %._crit_edge653, label %.preheader558.preheader1377

.preheader558.preheader1377:                      ; preds = %vector.memcheck1169, %.preheader558.preheader, %middle.block1181
  %indvars.iv785.ph = phi i64 [ 0, %vector.memcheck1169 ], [ 0, %.preheader558.preheader ], [ %n.vec1174, %middle.block1181 ] ; 5 uses
  %xtraiter1396 = and i64 %wide.trip.count788, 1
  %lcmp.mod1397.not = icmp eq i64 %xtraiter1396, 0
  br i1 %lcmp.mod1397.not, label %.preheader558.prol.loopexit, label %.preheader558.prol

.preheader558.prol:                               ; preds = %.preheader558.preheader1377
  %i.re = mul nsw i64 %indvars.iv785.ph, %i.qp    ; 2 uses
  %i.rf = add nsw i64 %indvars.iv785.ph, %i.qq
  %i.rg = shl nsw i64 %i.rf, 1                    ; 2 uses
  %i.rh = getelementptr inbounds [8 x i8], ptr %.0435, i64 %i.re
  %i.ri = load double, ptr %i.rh, align 8, !tbaa !24
  %i.rj = getelementptr inbounds [8 x i8], ptr %.0414, i64 %i.rg
  store double %i.ri, ptr %i.rj, align 8, !tbaa !24
  %i.rk = getelementptr [8 x i8], ptr %.0435, i64 %i.re
  %i.rl = getelementptr i8, ptr %i.rk, i64 8
  %i.rm = load double, ptr %i.rl, align 8, !tbaa !24
  %i.rn = getelementptr [8 x i8], ptr %.0414, i64 %i.rg
  %i.ro = getelementptr i8, ptr %i.rn, i64 8
  store double %i.rm, ptr %i.ro, align 8, !tbaa !24
  %indvars.iv.next786.prol = or disjoint i64 %indvars.iv785.ph, 1
  br label %.preheader558.prol.loopexit

.preheader558.prol.loopexit:                      ; preds = %.preheader558.prol, %.preheader558.preheader1377
  %indvars.iv785.unr = phi i64 [ %indvars.iv785.ph, %.preheader558.preheader1377 ], [ %indvars.iv.next786.prol, %.preheader558.prol ]
  %i.rp = add nsw i64 %wide.trip.count788, -1
  %i.rq = icmp eq i64 %indvars.iv785.ph, %i.rp
  br i1 %i.rq, label %._crit_edge653, label %.preheader558

.preheader558:                                    ; preds = %.preheader558.prol.loopexit, %.preheader558
  %indvars.iv785 = phi i64 [ %indvars.iv.next786.1, %.preheader558 ], [ %indvars.iv785.unr, %.preheader558.prol.loopexit ] ; 4 uses
  %i.rr = mul nsw i64 %indvars.iv785, %i.qp       ; 2 uses
  %i.rs = add nsw i64 %indvars.iv785, %i.qq
  %i.rt = shl nsw i64 %i.rs, 1                    ; 2 uses
  %i.ru = getelementptr inbounds [8 x i8], ptr %.0435, i64 %i.rr
  %i.rv = load double, ptr %i.ru, align 8, !tbaa !24
  %i.rw = getelementptr inbounds [8 x i8], ptr %.0414, i64 %i.rt
  store double %i.rv, ptr %i.rw, align 8, !tbaa !24
  %i.rx = getelementptr [8 x i8], ptr %.0435, i64 %i.rr
  %i.ry = getelementptr i8, ptr %i.rx, i64 8
  %i.rz = load double, ptr %i.ry, align 8, !tbaa !24
  %i.sa = getelementptr [8 x i8], ptr %.0414, i64 %i.rt
  %i.sb = getelementptr i8, ptr %i.sa, i64 8
  store double %i.rz, ptr %i.sb, align 8, !tbaa !24
  %indvars.iv.next786 = add nuw nsw i64 %indvars.iv785, 1 ; 2 uses
  %i.sc = mul nsw i64 %indvars.iv.next786, %i.qp  ; 2 uses
  %i.sd = add nsw i64 %indvars.iv.next786, %i.qq
  %i.se = shl nsw i64 %i.sd, 1                    ; 2 uses
  %i.sf = getelementptr inbounds [8 x i8], ptr %.0435, i64 %i.sc
  %i.sg = load double, ptr %i.sf, align 8, !tbaa !24
  %i.sh = getelementptr inbounds [8 x i8], ptr %.0414, i64 %i.se
  store double %i.sg, ptr %i.sh, align 8, !tbaa !24
  %i.si = getelementptr [8 x i8], ptr %.0435, i64 %i.sc
  %i.sj = getelementptr i8, ptr %i.si, i64 8
  %i.sk = load double, ptr %i.sj, align 8, !tbaa !24
  %i.sl = getelementptr [8 x i8], ptr %.0414, i64 %i.se
  %i.sm = getelementptr i8, ptr %i.sl, i64 8
  store double %i.sk, ptr %i.sm, align 8, !tbaa !24
  %indvars.iv.next786.1 = add nuw nsw i64 %indvars.iv785, 2 ; 2 uses
  %exitcond789.not.1 = icmp eq i64 %indvars.iv.next786.1, %wide.trip.count788
  br i1 %exitcond789.not.1, label %._crit_edge653, label %.preheader558, !llvm.loop !102

._crit_edge653:                                   ; preds = %.preheader558.prol.loopexit, %.preheader558, %middle.block1181, %.preheader559
  br i1 %0, label %.preheader556, label %.loopexit557

.preheader556:                                    ; preds = %._crit_edge653
  %i.sn = sub nsw i32 %.2443, %.0415              ; 3 uses
  %i.so = icmp sgt i32 %i.sn, 0
  br i1 %i.so, label %.preheader555.preheader, label %.loopexit557

.preheader555.preheader:                          ; preds = %.preheader556
  %i.sp = sext i32 %.1437 to i64                  ; 5 uses
  %i.sq = sext i32 %2 to i64                      ; 3 uses
  %i.sr = sext i32 %.0415 to i64                  ; 6 uses
  %wide.trip.count798 = zext nneg i32 %i.sn to i64 ; 7 uses
  %min.iters.check1195 = icmp ugt i32 %i.sn, 13
  %ident.check1185.not = icmp eq i32 %2, 1
  %or.cond1327 = and i1 %min.iters.check1195, %ident.check1185.not
  br i1 %or.cond1327, label %vector.memcheck1196, label %.preheader555.preheader1376

vector.memcheck1196:                              ; preds = %.preheader555.preheader
  %18 = shl nsw i64 %i.sr, 4
  %19 = getelementptr i8, ptr %.0414, i64 %18
  %20 = add nsw i64 %i.sr, %wide.trip.count798
  %21 = shl nsw i64 %20, 4
  %22 = getelementptr i8, ptr %.0414, i64 %21
  %23 = shl nsw i64 %i.sp, 3                      ; 2 uses
  %24 = shl nuw nsw i64 %wide.trip.count798, 3
  %25 = add nsw i64 %23, 8
  %26 = sub nsw i64 %25, %24
  %27 = getelementptr i8, ptr %.0435, i64 %26
  %28 = getelementptr i8, ptr %.0435, i64 %23
  %29 = getelementptr i8, ptr %28, i64 16
  %bound01197 = icmp ult ptr %19, %29
  %bound11198 = icmp ult ptr %27, %22
  %found.conflict1199 = and i1 %bound01197, %bound11198
  br i1 %found.conflict1199, label %.preheader555.preheader1376, label %vector.ph1200

vector.ph1200:                                    ; preds = %vector.memcheck1196
  %n.vec1201 = and i64 %wide.trip.count798, 2147483646 ; 3 uses
  br label %vector.body1202

vector.body1202:                                  ; preds = %vector.body1202, %vector.ph1200
  %index1203 = phi i64 [ 0, %vector.ph1200 ], [ %index.next1208, %vector.body1202 ] ; 3 uses
  %30 = sub nsw i64 %i.sp, %index1203
  %31 = add nsw i64 %index1203, %i.sr
  %32 = getelementptr [8 x i8], ptr %.0435, i64 %30 ; 2 uses
  %33 = getelementptr inbounds i8, ptr %32, i64 -8
  %wide.load1204 = load <2 x double>, ptr %33, align 8, !tbaa !24, !alias.scope !157
  %.idx1323 = shl nsw i64 %31, 4
  %34 = getelementptr inbounds i8, ptr %.0414, i64 %.idx1323
  %wide.load1205 = load <2 x double>, ptr %32, align 8, !tbaa !24, !alias.scope !157
  %interleaved.vec1207 = shufflevector <2 x double> %wide.load1204, <2 x double> %wide.load1205, <4 x i32> <i32 1, i32 3, i32 0, i32 2>
  store <4 x double> %interleaved.vec1207, ptr %34, align 8, !tbaa !24, !alias.scope !158, !noalias !157
  %index.next1208 = add nuw i64 %index1203, 2     ; 2 uses
  %35 = icmp eq i64 %index.next1208, %n.vec1201
  br i1 %35, label %middle.block1209, label %vector.body1202, !llvm.loop !106

middle.block1209:                                 ; preds = %vector.body1202
  %cmp.n1210 = icmp eq i64 %n.vec1201, %wide.trip.count798
  br i1 %cmp.n1210, label %.loopexit557, label %.preheader555.preheader1376

.preheader555.preheader1376:                      ; preds = %vector.memcheck1196, %.preheader555.preheader, %middle.block1209
  %indvars.iv795.ph = phi i64 [ 0, %vector.memcheck1196 ], [ 0, %.preheader555.preheader ], [ %n.vec1201, %middle.block1209 ] ; 5 uses
  %xtraiter1398 = and i64 %wide.trip.count798, 1
  %lcmp.mod1399.not = icmp eq i64 %xtraiter1398, 0
  br i1 %lcmp.mod1399.not, label %.preheader555.prol.loopexit, label %.preheader555.prol

.preheader555.prol:                               ; preds = %.preheader555.preheader1376
  %i.ss = sub nsw i64 %i.sp, %indvars.iv795.ph
  %i.st = mul nsw i64 %i.ss, %i.sq                ; 2 uses
  %i.su = add nsw i64 %indvars.iv795.ph, %i.sr
  %i.sv = shl nsw i64 %i.su, 1                    ; 2 uses
  %i.sw = getelementptr inbounds [8 x i8], ptr %.0435, i64 %i.st
  %i.sx = load double, ptr %i.sw, align 8, !tbaa !24
  %i.sy = getelementptr inbounds [8 x i8], ptr %.0414, i64 %i.sv
  store double %i.sx, ptr %i.sy, align 8, !tbaa !24
  %i.sz = getelementptr [8 x i8], ptr %.0435, i64 %i.st
  %i.ta = getelementptr i8, ptr %i.sz, i64 8
  %i.tb = load double, ptr %i.ta, align 8, !tbaa !24
  %i.tc = getelementptr [8 x i8], ptr %.0414, i64 %i.sv
  %i.td = getelementptr i8, ptr %i.tc, i64 8
  store double %i.tb, ptr %i.td, align 8, !tbaa !24
  %indvars.iv.next796.prol = or disjoint i64 %indvars.iv795.ph, 1
  br label %.preheader555.prol.loopexit

.preheader555.prol.loopexit:                      ; preds = %.preheader555.prol, %.preheader555.preheader1376
  %indvars.iv795.unr = phi i64 [ %indvars.iv795.ph, %.preheader555.preheader1376 ], [ %indvars.iv.next796.prol, %.preheader555.prol ]
  %36 = add nsw i64 %wide.trip.count798, -1
  %i.te = icmp eq i64 %indvars.iv795.ph, %36
  br i1 %i.te, label %.loopexit557, label %.preheader555

.preheader555:                                    ; preds = %.preheader555.prol.loopexit, %.preheader555
  %indvars.iv795.a = phi i64 [ %indvars.iv.next796.1, %.preheader555 ], [ %indvars.iv795.unr, %.preheader555.prol.loopexit ] ; 4 uses
  %37 = sub nsw i64 %i.sp, %indvars.iv795.a
  %38 = mul nsw i64 %37, %i.sq                    ; 2 uses
  %39 = add nsw i64 %indvars.iv795.a, %i.sr
  %40 = shl nsw i64 %39, 1                        ; 2 uses
  %41 = getelementptr inbounds [8 x i8], ptr %.0435, i64 %38
  %42 = load double, ptr %41, align 8, !tbaa !24
  %43 = getelementptr inbounds [8 x i8], ptr %.0414, i64 %40
  store double %42, ptr %43, align 8, !tbaa !24
  %44 = getelementptr [8 x i8], ptr %.0435, i64 %38
  %45 = getelementptr i8, ptr %44, i64 8
  %46 = load double, ptr %45, align 8, !tbaa !24
  %47 = getelementptr [8 x i8], ptr %.0414, i64 %40
  %48 = getelementptr i8, ptr %47, i64 8
  store double %46, ptr %48, align 8, !tbaa !24
  %indvars.iv.next796 = add nuw nsw i64 %indvars.iv795.a, 1 ; 2 uses
  %i.tf = sub nsw i64 %i.sp, %indvars.iv.next796
  %i.tg = mul nsw i64 %i.tf, %i.sq                ; 2 uses
  %i.th = add nsw i64 %indvars.iv.next796, %i.sr
  %i.ti = shl nsw i64 %i.th, 1                    ; 2 uses
  %i.tj = getelementptr inbounds [8 x i8], ptr %.0435, i64 %i.tg
  %i.tk = load double, ptr %i.tj, align 8, !tbaa !24
  %i.tl = getelementptr inbounds [8 x i8], ptr %.0414, i64 %i.ti
  store double %i.tk, ptr %i.tl, align 8, !tbaa !24
  %i.tm = getelementptr [8 x i8], ptr %.0435, i64 %i.tg
  %i.tn = getelementptr i8, ptr %i.tm, i64 8
  %i.to = load double, ptr %i.tn, align 8, !tbaa !24
  %i.tp = getelementptr [8 x i8], ptr %.0414, i64 %i.ti
  %i.tq = getelementptr i8, ptr %i.tp, i64 8
  store double %i.to, ptr %i.tq, align 8, !tbaa !24
  %indvars.iv.next796.1 = add nuw nsw i64 %indvars.iv795.a, 2 ; 2 uses
  %exitcond799.not.1 = icmp eq i64 %indvars.iv.next796.1, %wide.trip.count798
  br i1 %exitcond799.not.1, label %.loopexit557, label %.preheader555, !llvm.loop !107

.loopexit557:                                     ; preds = %.preheader555.prol.loopexit, %.preheader555, %middle.block1209, %.preheader556, %._crit_edge653
  %.1416 = phi i32 [ %.0415, %._crit_edge653 ], [ %.2443, %.preheader556 ], [ %.2443, %middle.block1209 ], [ %.2443, %.preheader555 ], [ %.2443, %.preheader555.prol.loopexit ] ; 8 uses
  %.not485 = icmp eq i32 %17, 0
  br i1 %.not485, label %bb.bx, label %bb.bq

bb.bq:                                            ; preds = %.loopexit557
  %i.tr = load i8, ptr @Verbose, align 1, !tbaa !35
  %.not486 = icmp eq i8 %i.tr, 0
  br i1 %.not486, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.ts = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.tt = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ts, ptr noundef nonnull @.str.46, i32 noundef %17, i32 noundef %.1416) #20 ; 0 uses
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq
  %i.tu = icmp sgt i32 %.1416, 0
  br i1 %i.tu, label %.lr.ph666, label %.preheader

.lr.ph666:                                        ; preds = %bb.bs
  %i.tv = icmp sgt i32 %2, 0
  %i.tw = zext nneg i32 %2 to i64
  %wide.trip.count814 = zext nneg i32 %.1416 to i64
  %wide.trip.count809 = zext i32 %2 to i64        ; 11 uses
  %i.tx = mul nsw i64 %wide.trip.count809, -8
  %i.ty = sub i64 %.04141215, %.04311216
  %min.iters.check1218 = icmp ult i32 %2, 4
  %n.vec1221 = and i64 %wide.trip.count809, 2147483644 ; 4 uses
  %cmp.n1228.a = icmp eq i64 %n.vec1221, %wide.trip.count809
  %xtraiter1400 = and i64 %wide.trip.count809, 3  ; 2 uses
  %lcmp.mod1401.not = icmp eq i64 %xtraiter1400, 0
  br label %bb.bt

.lr.ph676:                                        ; preds = %.loopexit554
  %i.tz = icmp slt i32 %2, 1
  %i.ua = zext i32 %2 to i64                      ; 2 uses
  %wide.trip.count830 = zext nneg i32 %.1416 to i64
  %i.ub = mul nsw i64 %wide.trip.count809, -8
  %i.uc = sub i64 %.04141215, %.04311216
  %min.iters.check1234 = icmp ult i32 %2, 4
  %n.vec1238 = and i64 %wide.trip.count809, 2147483644 ; 4 uses
  %cmp.n1245 = icmp eq i64 %n.vec1238, %wide.trip.count809
  %xtraiter1402 = and i64 %wide.trip.count809, 3  ; 2 uses
  %lcmp.mod1403.not = icmp eq i64 %xtraiter1402, 0
  br label %bb.bv

bb.bt:                                            ; preds = %.lr.ph666, %.loopexit554
  %indvars.iv811 = phi i64 [ 0, %.lr.ph666 ], [ %indvars.iv.next812, %.loopexit554 ] ; 4 uses
  %.0411664 = phi i32 [ 0, %.lr.ph666 ], [ %.1, %.loopexit554 ] ; 2 uses
  %.0412663 = phi i32 [ 0, %.lr.ph666 ], [ %.2, %.loopexit554 ] ; 3 uses
  %i.ud = getelementptr inbounds nuw [4 x i8], ptr %.2434, i64 %indvars.iv811
  %i.ue = load i32, ptr %i.ud, align 4, !tbaa !22
  %i.uf = icmp eq i32 %i.ue, %17
  br i1 %i.uf, label %bb.bu, label %.loopexit554

bb.bu:                                            ; preds = %bb.bt
  %i.ug = add nsw i32 %.0411664, 1                ; 2 uses
  br i1 %i.tv, label %.lr.ph659, label %.loopexit554

.lr.ph659:                                        ; preds = %bb.bu
  %i.uh = mul nuw nsw i64 %indvars.iv811, %i.tw
  %i.ui = sext i32 %.0412663 to i64               ; 5 uses
  %invariant.gep1072 = getelementptr inbounds nuw [8 x i8], ptr %.0431, i64 %i.uh ; 6 uses
  br i1 %min.iters.check1218, label %scalar.ph1217.preheader, label %vector.memcheck1219

vector.memcheck1219:                              ; preds = %.lr.ph659
  %i.uj = mul i64 %indvars.iv811, %i.tx
  %i.uk = add i64 %i.ty, %i.uj
  %i.ul = shl nsw i64 %i.ui, 3
  %i.um = add i64 %i.uk, %i.ul
  %i.un = add i64 %i.um, -1
  %diff.check = icmp ult i64 %i.un, 31
  br i1 %diff.check, label %scalar.ph1217.preheader, label %vector.ph1220

vector.ph1220:                                    ; preds = %vector.memcheck1219
  %i.uo = add nsw i64 %n.vec1221, %i.ui           ; 2 uses
  %invariant.gep1458 = getelementptr [8 x i8], ptr %.0414, i64 %i.ui
  br label %vector.body1222

vector.body1222:                                  ; preds = %vector.body1222, %vector.ph1220
  %index1223 = phi i64 [ 0, %vector.ph1220 ], [ %index.next1226.a, %vector.body1222 ] ; 3 uses
  %i.up = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep1072, i64 %index1223 ; 2 uses
  %i.uq = getelementptr inbounds nuw i8, ptr %i.up, i64 16
  %wide.load1224 = load <2 x double>, ptr %i.up, align 8, !tbaa !24
  %wide.load1225 = load <2 x double>, ptr %i.uq, align 8, !tbaa !24
  %gep1459 = getelementptr [8 x i8], ptr %invariant.gep1458, i64 %index1223 ; 2 uses
  %i.ur = getelementptr inbounds nuw i8, ptr %gep1459, i64 16
  store <2 x double> %wide.load1224, ptr %gep1459, align 8, !tbaa !24
  store <2 x double> %wide.load1225, ptr %i.ur, align 8, !tbaa !24
  %index.next1226.a = add nuw i64 %index1223, 4   ; 2 uses
  %i.us = icmp eq i64 %index.next1226.a, %n.vec1221
  br i1 %i.us, label %middle.block1227.a, label %vector.body1222, !llvm.loop !108

middle.block1227.a:                               ; preds = %vector.body1222
  br i1 %cmp.n1228.a, label %.loopexit554.loopexit, label %scalar.ph1217.preheader

scalar.ph1217.preheader:                          ; preds = %vector.memcheck1219, %.lr.ph659, %middle.block1227.a
  %indvars.iv804.ph = phi i64 [ 0, %vector.memcheck1219 ], [ 0, %.lr.ph659 ], [ %n.vec1221, %middle.block1227.a ] ; 3 uses
  %indvars.iv802.ph = phi i64 [ %i.ui, %vector.memcheck1219 ], [ %i.ui, %.lr.ph659 ], [ %i.uo, %middle.block1227.a ] ; 2 uses
  br i1 %lcmp.mod1401.not, label %scalar.ph1217.prol.loopexit, label %scalar.ph1217.prol

scalar.ph1217.prol:                               ; preds = %scalar.ph1217.preheader, %scalar.ph1217.prol
  %indvars.iv804.prol = phi i64 [ %indvars.iv.next805.prol, %scalar.ph1217.prol ], [ %indvars.iv804.ph, %scalar.ph1217.preheader ] ; 2 uses
  %indvars.iv802.prol = phi i64 [ %indvars.iv.next803.prol, %scalar.ph1217.prol ], [ %indvars.iv802.ph, %scalar.ph1217.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph1217.prol ], [ 0, %scalar.ph1217.preheader ]
  %gep1073.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep1072, i64 %indvars.iv804.prol
  %i.ut = load double, ptr %gep1073.prol, align 8, !tbaa !24
  %indvars.iv.next803.prol = add nsw i64 %indvars.iv802.prol, 1 ; 3 uses
  %i.uu = getelementptr inbounds [8 x i8], ptr %.0414, i64 %indvars.iv802.prol
  store double %i.ut, ptr %i.uu, align 8, !tbaa !24
  %indvars.iv.next805.prol = add nuw nsw i64 %indvars.iv804.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter1400
  br i1 %prol.iter.cmp.not, label %scalar.ph1217.prol.loopexit, label %scalar.ph1217.prol, !llvm.loop !109

scalar.ph1217.prol.loopexit:                      ; preds = %scalar.ph1217.prol, %scalar.ph1217.preheader
  %indvars.iv.next803.lcssa1375.unr = phi i64 [ poison, %scalar.ph1217.preheader ], [ %indvars.iv.next803.prol, %scalar.ph1217.prol ]
  %indvars.iv804.unr = phi i64 [ %indvars.iv804.ph, %scalar.ph1217.preheader ], [ %indvars.iv.next805.prol, %scalar.ph1217.prol ]
  %indvars.iv802.unr = phi i64 [ %indvars.iv802.ph, %scalar.ph1217.preheader ], [ %indvars.iv.next803.prol, %scalar.ph1217.prol ]
  %i.uv = sub nsw i64 %indvars.iv804.ph, %wide.trip.count809
  %i.uw = icmp ugt i64 %i.uv, -4
  br i1 %i.uw, label %.loopexit554.loopexit, label %scalar.ph1217

scalar.ph1217:                                    ; preds = %scalar.ph1217.prol.loopexit, %scalar.ph1217
  %indvars.iv804 = phi i64 [ %indvars.iv.next805.3, %scalar.ph1217 ], [ %indvars.iv804.unr, %scalar.ph1217.prol.loopexit ] ; 5 uses
  %indvars.iv802 = phi i64 [ %indvars.iv.next803.3, %scalar.ph1217 ], [ %indvars.iv802.unr, %scalar.ph1217.prol.loopexit ] ; 5 uses
  %gep1073 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep1072, i64 %indvars.iv804
  %i.ux = load double, ptr %gep1073, align 8, !tbaa !24
  %i.uy = getelementptr inbounds [8 x i8], ptr %.0414, i64 %indvars.iv802
  store double %i.ux, ptr %i.uy, align 8, !tbaa !24
  %i.uz = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep1072, i64 %indvars.iv804
  %gep1073.1 = getelementptr inbounds nuw i8, ptr %i.uz, i64 8
  %i.va = load double, ptr %gep1073.1, align 8, !tbaa !24
  %i.vb = getelementptr [8 x i8], ptr %.0414, i64 %indvars.iv802
  %i.vc = getelementptr i8, ptr %i.vb, i64 8
  store double %i.va, ptr %i.vc, align 8, !tbaa !24
  %i.vd = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep1072, i64 %indvars.iv804
  %gep1073.2 = getelementptr inbounds nuw i8, ptr %i.vd, i64 16
  %i.ve = load double, ptr %gep1073.2, align 8, !tbaa !24
  %i.vf = getelementptr [8 x i8], ptr %.0414, i64 %indvars.iv802
  %i.vg = getelementptr i8, ptr %i.vf, i64 16
  store double %i.ve, ptr %i.vg, align 8, !tbaa !24
  %i.vh = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep1072, i64 %indvars.iv804
  %gep1073.3 = getelementptr inbounds nuw i8, ptr %i.vh, i64 24
  %i.vi = load double, ptr %gep1073.3, align 8, !tbaa !24
  %indvars.iv.next803.3 = add nsw i64 %indvars.iv802, 4 ; 2 uses
  %i.vj = getelementptr [8 x i8], ptr %.0414, i64 %indvars.iv802
  %i.vk = getelementptr i8, ptr %i.vj, i64 24
  store double %i.vi, ptr %i.vk, align 8, !tbaa !24
  %indvars.iv.next805.3 = add nuw nsw i64 %indvars.iv804, 4 ; 2 uses
  %exitcond810.not.3 = icmp eq i64 %indvars.iv.next805.3, %wide.trip.count809
  br i1 %exitcond810.not.3, label %.loopexit554.loopexit, label %scalar.ph1217, !llvm.loop !110

.loopexit554.loopexit:                            ; preds = %scalar.ph1217.prol.loopexit, %scalar.ph1217, %middle.block1227.a
  %indvars.iv.next803.lcssa = phi i64 [ %i.uo, %middle.block1227.a ], [ %indvars.iv.next803.lcssa1375.unr, %scalar.ph1217.prol.loopexit ], [ %indvars.iv.next803.3, %scalar.ph1217 ]
  %i.vl = trunc nsw i64 %indvars.iv.next803.lcssa to i32
  br label %.loopexit554

.loopexit554:                                     ; preds = %.loopexit554.loopexit, %bb.bu, %bb.bt
  %.2 = phi i32 [ %.0412663, %bb.bt ], [ %.0412663, %bb.bu ], [ %i.vl, %.loopexit554.loopexit ] ; 2 uses
  %.1 = phi i32 [ %.0411664, %bb.bt ], [ %i.ug, %bb.bu ], [ %i.ug, %.loopexit554.loopexit ] ; 7 uses
  %indvars.iv.next812 = add nuw nsw i64 %indvars.iv811, 1 ; 2 uses
  %exitcond815.not = icmp eq i64 %indvars.iv.next812, %wide.trip.count814
  br i1 %exitcond815.not, label %.lr.ph676, label %bb.bt, !llvm.loop !111

.preheader550:                                    ; preds = %.loopexit552
  %i.vm = icmp sgt i32 %.1, 0
  br i1 %i.vm, label %.lr.ph678.preheader, label %.preheader

.lr.ph678.preheader:                              ; preds = %.preheader550
  %wide.trip.count835 = zext nneg i32 %.1 to i64  ; 3 uses
  %min.iters.check1249 = icmp ult i32 %.1, 8
  br i1 %min.iters.check1249, label %.lr.ph678.preheader1373, label %vector.ph1250

vector.ph1250:                                    ; preds = %.lr.ph678.preheader
  %n.vec1251 = and i64 %wide.trip.count835, 2147483640 ; 3 uses
  br label %vector.body1252

vector.body1252:                                  ; preds = %vector.body1252, %vector.ph1250
  %index1253 = phi i64 [ 0, %vector.ph1250 ], [ %index.next1254, %vector.body1252 ] ; 2 uses
  %i.vn = getelementptr inbounds nuw [4 x i8], ptr %.2434, i64 %index1253 ; 2 uses
  %i.vo = getelementptr inbounds nuw i8, ptr %i.vn, i64 16
  store <4 x i32> splat (i32 1), ptr %i.vn, align 4, !tbaa !22
  store <4 x i32> splat (i32 1), ptr %i.vo, align 4, !tbaa !22
  %index.next1254 = add nuw i64 %index1253, 8     ; 2 uses
  %i.vp = icmp eq i64 %index.next1254, %n.vec1251
  br i1 %i.vp, label %middle.block1255, label %vector.body1252, !llvm.loop !112

middle.block1255:                                 ; preds = %vector.body1252
  %cmp.n1256 = icmp eq i64 %n.vec1251, %wide.trip.count835
  br i1 %cmp.n1256, label %.preheader, label %.lr.ph678.preheader1373

.lr.ph678.preheader1373:                          ; preds = %.lr.ph678.preheader, %middle.block1255
  %indvars.iv832.ph = phi i64 [ 0, %.lr.ph678.preheader ], [ %n.vec1251, %middle.block1255 ]
  br label %.lr.ph678

bb.bv:                                            ; preds = %.lr.ph676, %.loopexit552
  %indvars.iv827 = phi i64 [ 0, %.lr.ph676 ], [ %indvars.iv.next828, %.loopexit552 ] ; 4 uses
  %.3675 = phi i32 [ %.2, %.lr.ph676 ], [ %.5, %.loopexit552 ] ; 2 uses
  %i.vq = getelementptr inbounds nuw [4 x i8], ptr %.2434, i64 %indvars.iv827
  %i.vr = load i32, ptr %i.vq, align 4, !tbaa !22
  %.not491 = icmp eq i32 %i.vr, %17
  %brmerge = or i1 %.not491, %i.tz
  br i1 %brmerge, label %.loopexit552, label %.lr.ph671

.lr.ph671:                                        ; preds = %bb.bv
  %i.vs = mul nuw nsw i64 %indvars.iv827, %i.ua
  %i.vt = sext i32 %.3675 to i64                  ; 5 uses
  %invariant.gep1074 = getelementptr inbounds nuw [8 x i8], ptr %.0431, i64 %i.vs ; 6 uses
  br i1 %min.iters.check1234, label %scalar.ph1233.preheader, label %vector.memcheck1235

vector.memcheck1235:                              ; preds = %.lr.ph671
  %i.vu = mul i64 %indvars.iv827, %i.ub
  %i.vv = add i64 %i.uc, %i.vu
  %i.vw = shl nsw i64 %i.vt, 3
  %i.vx = add i64 %i.vv, %i.vw
  %i.vy = add i64 %i.vx, -1
  %diff.check1236 = icmp ult i64 %i.vy, 31
  br i1 %diff.check1236, label %scalar.ph1233.preheader, label %vector.ph1237

vector.ph1237:                                    ; preds = %vector.memcheck1235
  %i.vz = add nsw i64 %n.vec1238, %i.vt           ; 2 uses
  %invariant.gep1460 = getelementptr [8 x i8], ptr %.0414, i64 %i.vt
  br label %vector.body1239

vector.body1239:                                  ; preds = %vector.body1239, %vector.ph1237
  %index1240 = phi i64 [ 0, %vector.ph1237 ], [ %index.next1243, %vector.body1239 ] ; 3 uses
  %i.wa = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep1074, i64 %index1240 ; 2 uses
  %i.wb = getelementptr inbounds nuw i8, ptr %i.wa, i64 16
  %wide.load1241 = load <2 x double>, ptr %i.wa, align 8, !tbaa !24
  %wide.load1242 = load <2 x double>, ptr %i.wb, align 8, !tbaa !24
  %gep1461 = getelementptr [8 x i8], ptr %invariant.gep1460, i64 %index1240 ; 2 uses
  %i.wc = getelementptr inbounds nuw i8, ptr %gep1461, i64 16
  store <2 x double> %wide.load1241, ptr %gep1461, align 8, !tbaa !24
  store <2 x double> %wide.load1242, ptr %i.wc, align 8, !tbaa !24
  %index.next1243 = add nuw i64 %index1240, 4     ; 2 uses
  %i.wd = icmp eq i64 %index.next1243, %n.vec1238
  br i1 %i.wd, label %middle.block1244, label %vector.body1239, !llvm.loop !113

middle.block1244:                                 ; preds = %vector.body1239
  br i1 %cmp.n1245, label %.loopexit552.loopexit, label %scalar.ph1233.preheader

scalar.ph1233.preheader:                          ; preds = %vector.memcheck1235, %.lr.ph671, %middle.block1244
  %indvars.iv820.ph = phi i64 [ 0, %vector.memcheck1235 ], [ 0, %.lr.ph671 ], [ %n.vec1238, %middle.block1244 ] ; 3 uses
  %indvars.iv818.ph = phi i64 [ %i.vt, %vector.memcheck1235 ], [ %i.vt, %.lr.ph671 ], [ %i.vz, %middle.block1244 ] ; 2 uses
  br i1 %lcmp.mod1403.not, label %scalar.ph1233.prol.loopexit, label %scalar.ph1233.prol

scalar.ph1233.prol:                               ; preds = %scalar.ph1233.preheader, %scalar.ph1233.prol
  %indvars.iv820.prol = phi i64 [ %indvars.iv.next821.prol, %scalar.ph1233.prol ], [ %indvars.iv820.ph, %scalar.ph1233.preheader ] ; 2 uses
  %indvars.iv818.prol = phi i64 [ %indvars.iv.next819.prol, %scalar.ph1233.prol ], [ %indvars.iv818.ph, %scalar.ph1233.preheader ] ; 2 uses
  %prol.iter1404 = phi i64 [ %prol.iter1404.next, %scalar.ph1233.prol ], [ 0, %scalar.ph1233.preheader ]
  %gep1075.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep1074, i64 %indvars.iv820.prol
  %i.we = load double, ptr %gep1075.prol, align 8, !tbaa !24
  %indvars.iv.next819.prol = add nsw i64 %indvars.iv818.prol, 1 ; 3 uses
  %i.wf = getelementptr inbounds [8 x i8], ptr %.0414, i64 %indvars.iv818.prol
  store double %i.we, ptr %i.wf, align 8, !tbaa !24
  %indvars.iv.next821.prol = add nuw nsw i64 %indvars.iv820.prol, 1 ; 2 uses
  %prol.iter1404.next = add i64 %prol.iter1404, 1 ; 2 uses
  %prol.iter1404.cmp.not = icmp eq i64 %prol.iter1404.next, %xtraiter1402
  br i1 %prol.iter1404.cmp.not, label %scalar.ph1233.prol.loopexit, label %scalar.ph1233.prol, !llvm.loop !114

scalar.ph1233.prol.loopexit:                      ; preds = %scalar.ph1233.prol, %scalar.ph1233.preheader
  %indvars.iv.next819.lcssa1374.unr = phi i64 [ poison, %scalar.ph1233.preheader ], [ %indvars.iv.next819.prol, %scalar.ph1233.prol ]
  %indvars.iv820.unr = phi i64 [ %indvars.iv820.ph, %scalar.ph1233.preheader ], [ %indvars.iv.next821.prol, %scalar.ph1233.prol ]
  %indvars.iv818.unr = phi i64 [ %indvars.iv818.ph, %scalar.ph1233.preheader ], [ %indvars.iv.next819.prol, %scalar.ph1233.prol ]
  %i.wg = sub nsw i64 %indvars.iv820.ph, %wide.trip.count809
  %i.wh = icmp ugt i64 %i.wg, -4
  br i1 %i.wh, label %.loopexit552.loopexit, label %scalar.ph1233

scalar.ph1233:                                    ; preds = %scalar.ph1233.prol.loopexit, %scalar.ph1233
  %indvars.iv820 = phi i64 [ %indvars.iv.next821.3, %scalar.ph1233 ], [ %indvars.iv820.unr, %scalar.ph1233.prol.loopexit ] ; 5 uses
  %indvars.iv818 = phi i64 [ %indvars.iv.next819.3, %scalar.ph1233 ], [ %indvars.iv818.unr, %scalar.ph1233.prol.loopexit ] ; 5 uses
  %gep1075 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep1074, i64 %indvars.iv820
  %i.wi = load double, ptr %gep1075, align 8, !tbaa !24
  %i.wj = getelementptr inbounds [8 x i8], ptr %.0414, i64 %indvars.iv818
  store double %i.wi, ptr %i.wj, align 8, !tbaa !24
  %i.wk = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep1074, i64 %indvars.iv820
  %gep1075.1 = getelementptr inbounds nuw i8, ptr %i.wk, i64 8
  %i.wl = load double, ptr %gep1075.1, align 8, !tbaa !24
  %i.wm = getelementptr [8 x i8], ptr %.0414, i64 %indvars.iv818
  %i.wn = getelementptr i8, ptr %i.wm, i64 8
  store double %i.wl, ptr %i.wn, align 8, !tbaa !24
  %i.wo = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep1074, i64 %indvars.iv820
  %gep1075.2 = getelementptr inbounds nuw i8, ptr %i.wo, i64 16
  %i.wp = load double, ptr %gep1075.2, align 8, !tbaa !24
  %i.wq = getelementptr [8 x i8], ptr %.0414, i64 %indvars.iv818
  %i.wr = getelementptr i8, ptr %i.wq, i64 16
  store double %i.wp, ptr %i.wr, align 8, !tbaa !24
  %i.ws = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep1074, i64 %indvars.iv820
  %gep1075.3 = getelementptr inbounds nuw i8, ptr %i.ws, i64 24
  %i.wt = load double, ptr %gep1075.3, align 8, !tbaa !24
  %indvars.iv.next819.3 = add nsw i64 %indvars.iv818, 4 ; 2 uses
  %i.wu = getelementptr [8 x i8], ptr %.0414, i64 %indvars.iv818
  %i.wv = getelementptr i8, ptr %i.wu, i64 24
  store double %i.wt, ptr %i.wv, align 8, !tbaa !24
  %indvars.iv.next821.3 = add nuw nsw i64 %indvars.iv820, 4 ; 2 uses
  %exitcond826.not.3 = icmp eq i64 %indvars.iv.next821.3, %i.ua
  br i1 %exitcond826.not.3, label %.loopexit552.loopexit, label %scalar.ph1233, !llvm.loop !115

.loopexit552.loopexit:                            ; preds = %scalar.ph1233.prol.loopexit, %scalar.ph1233, %middle.block1244
  %indvars.iv.next819.lcssa = phi i64 [ %i.vz, %middle.block1244 ], [ %indvars.iv.next819.lcssa1374.unr, %scalar.ph1233.prol.loopexit ], [ %indvars.iv.next819.3, %scalar.ph1233 ]
  %i.ww = trunc nsw i64 %indvars.iv.next819.lcssa to i32
  br label %.loopexit552

.loopexit552:                                     ; preds = %.loopexit552.loopexit, %bb.bv
  %.5 = phi i32 [ %.3675, %bb.bv ], [ %i.ww, %.loopexit552.loopexit ]
  %indvars.iv.next828 = add nuw nsw i64 %indvars.iv827, 1 ; 2 uses
  %exitcond831.not = icmp eq i64 %indvars.iv.next828, %wide.trip.count830
  br i1 %exitcond831.not, label %.preheader550, label %bb.bv, !llvm.loop !116

.preheader:                                       ; preds = %.lr.ph678, %middle.block1255, %bb.bs, %.preheader550
  %.0411.lcssa10421044 = phi i32 [ 0, %bb.bs ], [ %.1, %.preheader550 ], [ %.1, %middle.block1255 ], [ %.1, %.lr.ph678 ] ; 6 uses
  %i.wx = icmp slt i32 %.0411.lcssa10421044, %.1416
  br i1 %i.wx, label %.lr.ph680.preheader, label %._crit_edge681

.lr.ph680.preheader:                              ; preds = %.preheader
  %i.wy = sext i32 %.0411.lcssa10421044 to i64    ; 4 uses
  %wide.trip.count840 = sext i32 %.1416 to i64    ; 2 uses
  %i.wz = sub nsw i64 %wide.trip.count840, %i.wy  ; 3 uses
  %min.iters.check1259.a = icmp ult i64 %i.wz, 8
  br i1 %min.iters.check1259.a, label %.lr.ph680.preheader1372, label %vector.ph1260.a

vector.ph1260.a:                                  ; preds = %.lr.ph680.preheader
  %n.vec1261.a = and i64 %i.wz, -8                ; 3 uses
  %i.xa = add nsw i64 %n.vec1261.a, %i.wy
  %invariant.gep1462 = getelementptr [4 x i8], ptr %.2434, i64 %i.wy
  br label %vector.body1262

vector.body1262:                                  ; preds = %vector.body1262, %vector.ph1260.a
  %index1263 = phi i64 [ 0, %vector.ph1260.a ], [ %index.next1264, %vector.body1262 ] ; 2 uses
  %gep1463 = getelementptr [4 x i8], ptr %invariant.gep1462, i64 %index1263 ; 2 uses
  %i.xb = getelementptr inbounds nuw i8, ptr %gep1463, i64 16
  store <4 x i32> splat (i32 2), ptr %gep1463, align 4, !tbaa !22
  store <4 x i32> splat (i32 2), ptr %i.xb, align 4, !tbaa !22
  %index.next1264 = add nuw i64 %index1263, 8     ; 2 uses
  %i.xc = icmp eq i64 %index.next1264, %n.vec1261.a
  br i1 %i.xc, label %middle.block1265, label %vector.body1262, !llvm.loop !117

middle.block1265:                                 ; preds = %vector.body1262
  %cmp.n1266 = icmp eq i64 %i.wz, %n.vec1261.a
  br i1 %cmp.n1266, label %._crit_edge681, label %.lr.ph680.preheader1372

.lr.ph680.preheader1372:                          ; preds = %.lr.ph680.preheader, %middle.block1265
  %indvars.iv837.ph = phi i64 [ %i.wy, %.lr.ph680.preheader ], [ %i.xa, %middle.block1265 ]
  br label %.lr.ph680

.lr.ph678:                                        ; preds = %.lr.ph678.preheader1373, %.lr.ph678
  %indvars.iv832 = phi i64 [ %indvars.iv.next833, %.lr.ph678 ], [ %indvars.iv832.ph, %.lr.ph678.preheader1373 ] ; 2 uses
  %i.xd = getelementptr inbounds nuw [4 x i8], ptr %.2434, i64 %indvars.iv832
  store i32 1, ptr %i.xd, align 4, !tbaa !22
  %indvars.iv.next833 = add nuw nsw i64 %indvars.iv832, 1 ; 2 uses
  %exitcond836.not = icmp eq i64 %indvars.iv.next833, %wide.trip.count835
  br i1 %exitcond836.not, label %.preheader, label %.lr.ph678, !llvm.loop !118

.lr.ph680:                                        ; preds = %.lr.ph680.preheader1372, %.lr.ph680
  %indvars.iv837 = phi i64 [ %indvars.iv.next838, %.lr.ph680 ], [ %indvars.iv837.ph, %.lr.ph680.preheader1372 ] ; 2 uses
  %i.xe = getelementptr inbounds [4 x i8], ptr %.2434, i64 %indvars.iv837
  store i32 2, ptr %i.xe, align 4, !tbaa !22
  %indvars.iv.next838 = add nsw i64 %indvars.iv837, 1 ; 2 uses
  %exitcond841.not = icmp eq i64 %indvars.iv.next838, %wide.trip.count840
  br i1 %exitcond841.not, label %._crit_edge681, label %.lr.ph680, !llvm.loop !119

._crit_edge681:                                   ; preds = %.lr.ph680, %middle.block1265, %.preheader
  %i.xf = sub nsw i32 %.1416, %.0411.lcssa10421044
  %i.xg = add nsw i32 %i.xf, %i.ob                ; 2 uses
  %i.xh = load i8, ptr @Verbose, align 1, !tbaa !35
  %.not487 = icmp eq i8 %i.xh, 0
  br i1 %.not487, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %._crit_edge681
  %i.xi = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.xj = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.xi, ptr noundef nonnull @.str.47, i32 noundef %.0411.lcssa10421044) #20 ; 0 uses
  br label %bb.bx

bb.bx:                                            ; preds = %._crit_edge681, %bb.bw, %.loopexit557
  %.3423 = phi i32 [ %i.xg, %bb.bw ], [ %i.xg, %._crit_edge681 ], [ %i.ob, %.loopexit557 ]
  %.2417 = phi i32 [ %.0411.lcssa10421044, %bb.bw ], [ %.0411.lcssa10421044, %._crit_edge681 ], [ %.1416, %.loopexit557 ] ; 9 uses
  %i.xk = add nsw i32 %.2417, %.3423              ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #19
  %i.xl = call ptr @get_triangles(ptr noundef %.0414, i32 noundef %i.xk, ptr noundef nonnull %i.l) #19 ; 3 uses
  %i.xm = icmp eq ptr %i.xl, null
  br i1 %i.xm, label %get_tri.exit, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.xn = load i32, ptr %i.l, align 4, !tbaa !22  ; 3 uses
  %i.xo = sext i32 %i.xn to i64                   ; 3 uses
  %.not.i.i = icmp eq i32 %i.xn, 0
  br i1 %.not.i.i, label %.thread.i.i, label %bb.bz

.thread.i.i:                                      ; preds = %bb.by
  %i.xp = call noalias ptr @calloc(i64 noundef 0, i64 noundef 32) #22
  br label %gv_calloc.exit.i

bb.bz:                                            ; preds = %bb.by
  %mul.ov.i.i = icmp slt i32 %i.xn, 0
  br i1 %mul.ov.i.i, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  %i.xq = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.xr = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.xq, ptr noundef nonnull @.str.28, i64 noundef %i.xo, i64 noundef 32) #20 ; 0 uses
  call fastcc void @graphviz_exit() #21
  unreachable

bb.cb:                                            ; preds = %bb.bz
  %i.xs = call noalias ptr @calloc(i64 noundef %i.xo, i64 noundef 32) #22 ; 2 uses
  %i.xt = icmp eq ptr %i.xs, null
  br i1 %i.xt, label %bb.cc, label %gv_calloc.exit.i

bb.cc:                                            ; preds = %bb.cb
  %i.xu = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.xv = shl nuw nsw i64 %i.xo, 5
  %i.xw = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.xu, ptr noundef nonnull @.str.29, i64 noundef %i.xv) #20 ; 0 uses
  call fastcc void @graphviz_exit() #21
  unreachable

gv_calloc.exit.i:                                 ; preds = %bb.cb, %.thread.i.i
  %i.xx = phi ptr [ %i.xp, %.thread.i.i ], [ %i.xs, %bb.cb ] ; 5 uses
  %i.xy = call ptr @SparseMatrix_new(i32 noundef %i.xk, i32 noundef %i.xk, i64 noundef 1, i32 noundef 4, i32 noundef 1) #19 ; 2 uses
  %i.xz = load i32, ptr %i.l, align 4, !tbaa !22
  %i.ya = icmp sgt i32 %i.xz, 0
  br i1 %i.ya, label %.preheader.i, label %.loopexit

.preheader.i:                                     ; preds = %gv_calloc.exit.i, %triangle_center.exit.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %triangle_center.exit.i ], [ 0, %gv_calloc.exit.i ] ; 4 uses
  %.062.i = phi ptr [ %i.aac, %triangle_center.exit.i ], [ %i.xy, %gv_calloc.exit.i ]
  %i.yb = getelementptr inbounds nuw [32 x i8], ptr %i.xx, i64 %indvars.iv.i ; 4 uses
  %.idx = mul nuw nsw i64 %indvars.iv.i, 12
  %i.yc = getelementptr inbounds nuw i8, ptr %i.xl, i64 %.idx ; 3 uses
  %i.yd = load i32, ptr %i.yc, align 4, !tbaa !22 ; 6 uses
  store i32 %i.yd, ptr %i.yb, align 4, !tbaa !22
  %i.ye = getelementptr inbounds nuw i8, ptr %i.yc, i64 4
  %i.yf = load i32, ptr %i.ye, align 4, !tbaa !22 ; 6 uses
  %i.yg = getelementptr inbounds nuw i8, ptr %i.yb, i64 4
  store i32 %i.yf, ptr %i.yg, align 4, !tbaa !22
  %i.yh = getelementptr inbounds nuw i8, ptr %i.yc, i64 8
  %i.yi = load i32, ptr %i.yh, align 4, !tbaa !22 ; 6 uses
  %i.yj = getelementptr inbounds nuw i8, ptr %i.yb, i64 8
  store i32 %i.yi, ptr %i.yj, align 4, !tbaa !22
  %i.yk = shl nsw i32 %i.yd, 1
  %i.yl = sext i32 %i.yk to i64
  %i.ym = getelementptr inbounds [8 x i8], ptr %.0414, i64 %i.yl
  %i.yn = shl nsw i32 %i.yf, 1
  %i.yo = sext i32 %i.yn to i64
  %i.yp = getelementptr inbounds [8 x i8], ptr %.0414, i64 %i.yo
  %i.yq = shl nsw i32 %i.yi, 1
  %i.yr = sext i32 %i.yq to i64
  %i.ys = getelementptr inbounds [8 x i8], ptr %.0414, i64 %i.yr
  %i.yt = getelementptr inbounds nuw i8, ptr %i.yb, i64 16
  %i.yu = load <2 x double>, ptr %i.yp, align 8, !tbaa !24 ; 6 uses
  %i.yv = load <2 x double>, ptr %i.ys, align 8, !tbaa !24 ; 3 uses
  %foldExtExtBinop1334 = fsub <2 x double> %i.yu, %i.yv ; 2 uses
  %i.yw = extractelement <2 x double> %foldExtExtBinop1334, i64 0
  %foldExtExtBinop1336 = fsub <2 x double> %i.yu, %i.yv
  %i.yx = load <2 x double>, ptr %i.ym, align 8, !tbaa !24 ; 3 uses
  %i.yy = fadd <2 x double> %i.yu, %i.yx
  %i.yz = fmul <2 x double> %i.yy, splat (double 5.000000e-01) ; 2 uses
  %i.za = fcmp oeq double %i.yw, 0.000000e+00
  %i.zb = insertelement <2 x i1> poison, i1 %i.za, i64 0
  %i.zc = shufflevector <2 x i1> %i.zb, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.zd = fneg <2 x double> %foldExtExtBinop1336
  %i.ze = shufflevector <2 x double> %i.zd, <2 x double> %foldExtExtBinop1334, <2 x i32> <i32 1, i32 2>
  %i.zf = select <2 x i1> %i.zc, <2 x double> <double 1.000000e+00, double 0.000000e+00>, <2 x double> %i.ze ; 3 uses
  %foldExtExtBinop1338 = fsub <2 x double> %i.yx, %i.yu
  %i.zg = extractelement <2 x double> %foldExtExtBinop1338, i64 0 ; 2 uses
  %foldExtExtBinop1340 = fsub <2 x double> %i.yx, %i.yu ; 2 uses
  %foldExtExtBinop1342 = fmul <2 x double> %i.zf, %foldExtExtBinop1340
  %i.zh = extractelement <2 x double> %foldExtExtBinop1342, i64 1
  %i.zi = extractelement <2 x double> %i.zf, i64 0
  %i.zj = call double @llvm.fmuladd.f64(double %i.zi, double %i.zg, double %i.zh) ; 2 uses
  %i.zk = fcmp oeq double %i.zj, 0.000000e+00
  br i1 %i.zk, label %triangle_center.exit.i, label %bb.cd

bb.cd:                                            ; preds = %.preheader.i
  %i.zl = fadd <2 x double> %i.yu, %i.yv
  %i.zm = fmul <2 x double> %i.zl, splat (double 5.000000e-01) ; 2 uses
  %i.zn = fsub <2 x double> %i.yz, %i.zm          ; 2 uses
  %foldExtExtBinop1344 = fmul <2 x double> %foldExtExtBinop1340, %i.zn
  %i.zo = extractelement <2 x double> %foldExtExtBinop1344, i64 1
  %i.zp = extractelement <2 x double> %i.zn, i64 0
  %i.zq = call double @llvm.fmuladd.f64(double %i.zg, double %i.zp, double %i.zo)
  %i.zr = fdiv double %i.zq, %i.zj
  %i.zs = insertelement <2 x double> poison, double %i.zr, i64 0
  %i.zt = shufflevector <2 x double> %i.zs, <2 x double> poison, <2 x i32> zeroinitializer
  %i.zu = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.zt, <2 x double> %i.zf, <2 x double> %i.zm)
  br label %triangle_center.exit.i

triangle_center.exit.i:                           ; preds = %bb.cd, %.preheader.i
  %i.zv = phi <2 x double> [ %i.zu, %bb.cd ], [ %i.yz, %.preheader.i ]
  store <2 x double> %i.zv, ptr %i.yt, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.zw = trunc nuw nsw i64 %indvars.iv.i to i32  ; 3 uses
  store i32 %i.zw, ptr %i.k, align 4, !tbaa !22
  %spec.select.i.i = call i32 @llvm.smax.i32(i32 %i.yd, i32 %i.yf) ; 2 uses
  %spec.select15.i.i = call i32 @llvm.smin.i32(i32 %i.yd, i32 %i.yf) ; 2 uses
  %i.zx = call ptr @SparseMatrix_coordinate_form_add_entry_(ptr noundef %.062.i, i32 noundef %spec.select15.i.i, i32 noundef %spec.select.i.i, ptr noundef nonnull %i.k, i32 noundef 4) #19
  %i.zy = call ptr @SparseMatrix_coordinate_form_add_entry_(ptr noundef %i.zx, i32 noundef %spec.select.i.i, i32 noundef %spec.select15.i.i, ptr noundef nonnull %i.k, i32 noundef 4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store i32 %i.zw, ptr %i.j, align 4, !tbaa !22
  %spec.select.i56.i = call i32 @llvm.smax.i32(i32 %i.yf, i32 %i.yi) ; 2 uses
  %spec.select15.i57.i = call i32 @llvm.smin.i32(i32 %i.yf, i32 %i.yi) ; 2 uses
  %i.zz = call ptr @SparseMatrix_coordinate_form_add_entry_(ptr noundef %i.zy, i32 noundef %spec.select15.i57.i, i32 noundef %spec.select.i56.i, ptr noundef nonnull %i.j, i32 noundef 4) #19
  %i.aaa = call ptr @SparseMatrix_coordinate_form_add_entry_(ptr noundef %i.zz, i32 noundef %spec.select.i56.i, i32 noundef %spec.select15.i57.i, ptr noundef nonnull %i.j, i32 noundef 4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i32 %i.zw, ptr %i.i, align 4, !tbaa !22
  %spec.select.i58.i = call i32 @llvm.smax.i32(i32 %i.yi, i32 %i.yd) ; 2 uses
  %spec.select15.i59.i = call i32 @llvm.smin.i32(i32 %i.yi, i32 %i.yd) ; 2 uses
  %i.aab = call ptr @SparseMatrix_coordinate_form_add_entry_(ptr noundef %i.aaa, i32 noundef %spec.select15.i59.i, i32 noundef %spec.select.i58.i, ptr noundef nonnull %i.i, i32 noundef 4) #19
  %i.aac = call ptr @SparseMatrix_coordinate_form_add_entry_(ptr noundef %i.aab, i32 noundef %spec.select.i58.i, i32 noundef %spec.select15.i59.i, ptr noundef nonnull %i.i, i32 noundef 4) #19 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.aad = load i32, ptr %i.l, align 4, !tbaa !22
  %i.aae = sext i32 %i.aad to i64
  %i.aaf = icmp slt i64 %indvars.iv.next.i, %i.aae
  br i1 %i.aaf, label %.preheader.i, label %.loopexit, !llvm.loop !120

get_tri.exit:                                     ; preds = %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #19
  br label %bb.fe

.loopexit:                                        ; preds = %triangle_center.exit.i, %gv_calloc.exit.i
  %.0.lcssa.i = phi ptr [ %i.xy, %gv_calloc.exit.i ], [ %i.aac, %triangle_center.exit.i ] ; 2 uses
  %i.aag = call ptr @SparseMatrix_from_coordinate_format_not_compacted(ptr noundef %.0.lcssa.i) #19
  call void @SparseMatrix_delete(ptr noundef %.0.lcssa.i) #19
  %i.aah = call ptr @SparseMatrix_sort(ptr noundef %i.aag) #19 ; 8 uses
  %i.aai = load i32, ptr %i.l, align 4, !tbaa !22 ; 16 uses
  call void @free(ptr noundef nonnull %i.xl) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #19
  store i32 %i.aai, ptr %10, align 4, !tbaa !22
  %i.aaj = sext i32 %i.xk to i64                  ; 6 uses
  %.not.i.i524 = icmp eq i32 %i.xk, 0             ; 2 uses
  br i1 %.not.i.i524, label %.thread.i.i533, label %bb.ce

.thread.i.i533:                                   ; preds = %.loopexit
  %i.aak = call noalias ptr @calloc(i64 noundef 0, i64 noundef 4) #22
  br label %gv_calloc.exit.i526

bb.ce:                                            ; preds = %.loopexit
  %mul.ov.i.i525 = icmp slt i32 %i.xk, 0
  br i1 %mul.ov.i.i525, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  %i.aal = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.aam = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.aal, ptr noundef nonnull @.str.28, i64 noundef %i.aaj, i64 noundef 4) #20 ; 0 uses
  call fastcc void @graphviz_exit() #21
  unreachable

bb.cg:                                            ; preds = %bb.ce
  %i.aan = call noalias ptr @calloc(i64 noundef %i.aaj, i64 noundef 4) #22 ; 2 uses
  %i.aao = icmp eq ptr %i.aan, null
  br i1 %i.aao, label %bb.ch, label %gv_calloc.exit.i526

bb.ch:                                            ; preds = %bb.cg
  %i.aap = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.aaq = shl nuw nsw i64 %i.aaj, 2
  %i.aar = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.aap, ptr noundef nonnull @.str.29, i64 noundef %i.aaq) #20 ; 0 uses
  call fastcc void @graphviz_exit() #21
  unreachable

gv_calloc.exit.i526:                              ; preds = %bb.cg, %.thread.i.i533
  %i.aas = phi ptr [ %i.aak, %.thread.i.i533 ], [ %i.aan, %bb.cg ] ; 16 uses
  %i.aat = load i32, ptr %.2434, align 4, !tbaa !22 ; 3 uses
  %i.aau = icmp sgt i32 %.2417, 0                 ; 3 uses
  br i1 %i.aau, label %.lr.ph.preheader.i, label %._crit_edge.i527

.lr.ph.preheader.i:                               ; preds = %gv_calloc.exit.i526
  %i.aav = zext nneg i32 %.2417 to i64            ; 4 uses
  %i.aaw = shl nuw nsw i64 %i.aav, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.aas, ptr nonnull readonly align 4 %.2434, i64 %i.aaw, i1 false), !tbaa !22
  %min.iters.check1269 = icmp ult i32 %.2417, 8
  br i1 %min.iters.check1269, label %.lr.ph.i.preheader, label %vector.ph1270

vector.ph1270:                                    ; preds = %.lr.ph.preheader.i
  %n.vec1271 = and i64 %i.aav, 2147483640         ; 3 uses
  %broadcast.splatinsert1272 = insertelement <4 x i32> poison, i32 %i.aat, i64 0
  %broadcast.splat1273 = shufflevector <4 x i32> %broadcast.splatinsert1272, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body1274

vector.body1274:                                  ; preds = %vector.body1274, %vector.ph1270
  %index1275 = phi i64 [ 0, %vector.ph1270 ], [ %index.next1280, %vector.body1274 ] ; 2 uses
  %vec.phi1276 = phi <4 x i32> [ %broadcast.splat1273, %vector.ph1270 ], [ %i.aaz, %vector.body1274 ]
  %vec.phi1277 = phi <4 x i32> [ %broadcast.splat1273, %vector.ph1270 ], [ %i.aba, %vector.body1274 ]
  %i.aax = getelementptr inbounds nuw [4 x i8], ptr %.2434, i64 %index1275 ; 2 uses
  %i.aay = getelementptr inbounds nuw i8, ptr %i.aax, i64 16
  %wide.load1278 = load <4 x i32>, ptr %i.aax, align 4, !tbaa !22
  %wide.load1279 = load <4 x i32>, ptr %i.aay, align 4, !tbaa !22
  %i.aaz = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi1276, <4 x i32> %wide.load1278) ; 2 uses
  %i.aba = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi1277, <4 x i32> %wide.load1279) ; 2 uses
  %index.next1280 = add nuw i64 %index1275, 8     ; 2 uses
  %i.abb = icmp eq i64 %index.next1280, %n.vec1271
  br i1 %i.abb, label %middle.block1281, label %vector.body1274, !llvm.loop !121

middle.block1281:                                 ; preds = %vector.body1274
  %rdx.minmax1282 = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.aaz, <4 x i32> %i.aba)
  %i.abc = call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %rdx.minmax1282) ; 2 uses
  %cmp.n1283 = icmp eq i64 %n.vec1271, %i.aav
  br i1 %cmp.n1283, label %._crit_edge.i527, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block1281
  %indvars.iv.i531.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec1271, %middle.block1281 ]
  %.0105167.i.ph = phi i32 [ %i.aat, %.lr.ph.preheader.i ], [ %i.abc, %middle.block1281 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i531 = phi i64 [ %indvars.iv.next.i532, %.lr.ph.i ], [ %indvars.iv.i531.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.0105167.i = phi i32 [ %.0105..i, %.lr.ph.i ], [ %.0105167.i.ph, %.lr.ph.i.preheader ]
  %i.abd = getelementptr inbounds nuw [4 x i8], ptr %.2434, i64 %indvars.iv.i531
  %i.abe = load i32, ptr %i.abd, align 4, !tbaa !22
  %.0105..i = call i32 @llvm.smax.i32(i32 %.0105167.i, i32 %i.abe) ; 2 uses
  %indvars.iv.next.i532 = add nuw nsw i64 %indvars.iv.i531, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i532, %i.aav
  br i1 %exitcond.not.i, label %._crit_edge.i527, label %.lr.ph.i, !llvm.loop !122

._crit_edge.i527:                                 ; preds = %.lr.ph.i, %middle.block1281, %gv_calloc.exit.i526
  %.0105.lcssa.i = phi i32 [ %i.aat, %gv_calloc.exit.i526 ], [ %i.abc, %middle.block1281 ], [ %.0105..i, %.lr.ph.i ] ; 2 uses
  %i.abf = add nsw i32 %.0105.lcssa.i, 1          ; 5 uses
  %i.abg = add nsw i32 %.0105.lcssa.i, 2          ; 7 uses
  %i.abh = add nsw i32 %i.xk, -4                  ; 3 uses
  %i.abi = icmp slt i32 %.2417, %i.abh
  br i1 %i.abi, label %.lr.ph171.preheader.i, label %._crit_edge..preheader152_crit_edge.i

._crit_edge..preheader152_crit_edge.i:            ; preds = %._crit_edge.i527
  %.pre214.i = sext i32 %i.abh to i64
  br label %.preheader152.i

.lr.ph171.preheader.i:                            ; preds = %._crit_edge.i527
  %i.abj = sext i32 %.2417 to i64                 ; 4 uses
  %wide.trip.count195.i = sext i32 %i.abh to i64  ; 4 uses
  %i.abk = sub nsw i64 %wide.trip.count195.i, %i.abj ; 3 uses
  %min.iters.check1287 = icmp ult i64 %i.abk, 8
  br i1 %min.iters.check1287, label %.lr.ph171.i.preheader, label %vector.ph1288

vector.ph1288:                                    ; preds = %.lr.ph171.preheader.i
  %n.vec1289 = and i64 %i.abk, -8                 ; 3 uses
  %i.abl = add nsw i64 %n.vec1289, %i.abj
  %broadcast.splatinsert1290 = insertelement <4 x i32> poison, i32 %i.abf, i64 0
  %broadcast.splat1291 = shufflevector <4 x i32> %broadcast.splatinsert1290, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.gep1464 = getelementptr [4 x i8], ptr %i.aas, i64 %i.abj
  br label %vector.body1292

vector.body1292:                                  ; preds = %vector.body1292, %vector.ph1288
  %index1293 = phi i64 [ 0, %vector.ph1288 ], [ %index.next1294, %vector.body1292 ] ; 2 uses
  %gep1465 = getelementptr [4 x i8], ptr %invariant.gep1464, i64 %index1293 ; 2 uses
  %i.abm = getelementptr inbounds nuw i8, ptr %gep1465, i64 16
  store <4 x i32> %broadcast.splat1291, ptr %gep1465, align 4, !tbaa !22
  store <4 x i32> %broadcast.splat1291, ptr %i.abm, align 4, !tbaa !22
  %index.next1294 = add nuw i64 %index1293, 8     ; 2 uses
  %i.abn = icmp eq i64 %index.next1294, %n.vec1289
  br i1 %i.abn, label %middle.block1295, label %vector.body1292, !llvm.loop !123

middle.block1295:                                 ; preds = %vector.body1292
  %cmp.n1296 = icmp eq i64 %i.abk, %n.vec1289
  br i1 %cmp.n1296, label %.preheader152.i, label %.lr.ph171.i.preheader

.lr.ph171.i.preheader:                            ; preds = %.lr.ph171.preheader.i, %middle.block1295
  %indvars.iv192.i.ph = phi i64 [ %i.abj, %.lr.ph171.preheader.i ], [ %i.abl, %middle.block1295 ]
  br label %.lr.ph171.i

.preheader152.i:                                  ; preds = %.lr.ph171.i, %middle.block1295, %._crit_edge..preheader152_crit_edge.i
  %.pre-phi.i = phi i64 [ %.pre214.i, %._crit_edge..preheader152_crit_edge.i ], [ %wide.trip.count195.i, %middle.block1295 ], [ %wide.trip.count195.i, %.lr.ph171.i ] ; 2 uses
  %i.abo = getelementptr inbounds [4 x i8], ptr %i.aas, i64 %.pre-phi.i ; 3 uses
  store i32 %i.abg, ptr %i.abo, align 4, !tbaa !22
  %indvars.iv.next198.i = add nsw i64 %.pre-phi.i, 1 ; 2 uses
  %i.abp = icmp slt i64 %indvars.iv.next198.i, %i.aaj
  br i1 %i.abp, label %bb.ci, label %bb.cj

.lr.ph171.i:                                      ; preds = %.lr.ph171.i.preheader, %.lr.ph171.i
  %indvars.iv192.i = phi i64 [ %indvars.iv.next193.i, %.lr.ph171.i ], [ %indvars.iv192.i.ph, %.lr.ph171.i.preheader ] ; 2 uses
  %i.abq = getelementptr inbounds [4 x i8], ptr %i.aas, i64 %indvars.iv192.i
  store i32 %i.abf, ptr %i.abq, align 4, !tbaa !22
  %indvars.iv.next193.i = add nsw i64 %indvars.iv192.i, 1 ; 2 uses
  %exitcond196.not.i = icmp eq i64 %indvars.iv.next193.i, %wide.trip.count195.i
  br i1 %exitcond196.not.i, label %.preheader152.i, label %.lr.ph171.i, !llvm.loop !124

bb.ci:                                            ; preds = %.preheader152.i
  %i.abr = getelementptr inbounds [4 x i8], ptr %i.aas, i64 %indvars.iv.next198.i
  store i32 %i.abg, ptr %i.abr, align 4, !tbaa !22
  %i.abs = getelementptr i8, ptr %i.abo, i64 8
  store i32 %i.abg, ptr %i.abs, align 4, !tbaa !22
  %i.abt = getelementptr i8, ptr %i.abo, i64 12
  store i32 %i.abg, ptr %i.abt, align 4, !tbaa !22
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %.preheader152.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #19
  store i32 1, ptr %i.e, align 4, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #19
  store ptr null, ptr %i.g, align 8, !tbaa !30
  %i.abu = call ptr @SparseMatrix_new(i32 noundef %i.xk, i32 noundef %i.xk, i64 noundef 1, i32 noundef 4, i32 noundef 1) #19 ; 3 uses
  %i.abv = getelementptr inbounds nuw i8, ptr %i.aah, i64 32 ; 5 uses
  %i.abw = load ptr, ptr %i.abv, align 8, !tbaa !32 ; 2 uses
  %i.abx = getelementptr inbounds nuw i8, ptr %i.aah, i64 40 ; 5 uses
  %i.aby = load ptr, ptr %i.abx, align 8, !tbaa !33
  br i1 %.not.i.i524, label %conn_comp.exit.i, label %.lr.ph42.preheader.i.i

.lr.ph42.preheader.i.i:                           ; preds = %bb.cj
  %wide.trip.count.i.i = zext nneg i32 %i.xk to i64
  %.pre.i.i = load i32, ptr %i.abw, align 4, !tbaa !22
  br label %.lr.ph42.i.i

.loopexit.i.i:                                    ; preds = %bb.cn, %.lr.ph42.i.i
  %i.abz = phi i32 [ %i.acc, %.lr.ph42.i.i ], [ %i.acr, %bb.cn ]
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next45.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %conn_comp.exit.i, label %.lr.ph42.i.i, !llvm.loop !125

.lr.ph42.i.i:                                     ; preds = %.loopexit.i.i, %.lr.ph42.preheader.i.i
  %i.aca = phi i32 [ %.pre.i.i, %.lr.ph42.preheader.i.i ], [ %i.abz, %.loopexit.i.i ] ; 2 uses
  %indvars.iv44.i.i = phi i64 [ 0, %.lr.ph42.preheader.i.i ], [ %indvars.iv.next45.i.i, %.loopexit.i.i ] ; 4 uses
  %indvars.iv.next45.i.i = add nuw nsw i64 %indvars.iv44.i.i, 1 ; 3 uses
  %i.acb = getelementptr inbounds nuw [4 x i8], ptr %i.abw, i64 %indvars.iv.next45.i.i ; 2 uses
  %i.acc = load i32, ptr %i.acb, align 4, !tbaa !22 ; 3 uses
  %i.acd = icmp slt i32 %i.aca, %i.acc
  br i1 %i.acd, label %.lr.ph.i.i, label %.loopexit.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph42.i.i
  %i.ace = getelementptr inbounds nuw [4 x i8], ptr %i.aas, i64 %indvars.iv44.i.i
  %i.acf = sext i32 %i.aca to i64
  %i.acg = trunc nuw nsw i64 %indvars.iv44.i.i to i32
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cn, %.lr.ph.i.i
  %i.ach = phi i32 [ %i.acc, %.lr.ph.i.i ], [ %i.acr, %bb.cn ] ; 2 uses
  %indvars.iv.i.i = phi i64 [ %i.acf, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.cn ] ; 2 uses
  %i.aci = getelementptr inbounds [4 x i8], ptr %i.aby, i64 %indvars.iv.i.i
  %i.acj = load i32, ptr %i.aci, align 4, !tbaa !22 ; 3 uses
  %i.ack = zext i32 %i.acj to i64
  %.not.i117.i = icmp eq i64 %indvars.iv44.i.i, %i.ack
  br i1 %.not.i117.i, label %bb.cn, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.acl = load i32, ptr %i.ace, align 4, !tbaa !22
  %i.acm = sext i32 %i.acj to i64
  %i.acn = getelementptr inbounds [4 x i8], ptr %i.aas, i64 %i.acm
  %i.aco = load i32, ptr %i.acn, align 4, !tbaa !22
  %i.acp = icmp eq i32 %i.acl, %i.aco
  br i1 %i.acp, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  %i.acq = call ptr @SparseMatrix_coordinate_form_add_entry_(ptr noundef %i.abu, i32 noundef %i.acg, i32 noundef %i.acj, ptr noundef nonnull %i.e, i32 noundef 4) #19 ; 0 uses
  %.pre47.i.i = load i32, ptr %i.acb, align 4, !tbaa !22
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %bb.cl, %bb.ck
  %i.acr = phi i32 [ %i.ach, %bb.ck ], [ %i.ach, %bb.cl ], [ %.pre47.i.i, %bb.cm ] ; 3 uses
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.acs = sext i32 %i.acr to i64
  %i.act = icmp slt i64 %indvars.iv.next.i.i, %i.acs
  br i1 %i.act, label %bb.ck, label %.loopexit.i.i, !llvm.loop !126

conn_comp.exit.i:                                 ; preds = %.loopexit.i.i, %bb.cj
  %i.acu = call ptr @SparseMatrix_from_coordinate_format(ptr noundef %i.abu) #19 ; 2 uses
  %i.acv = call ptr @SparseMatrix_weakly_connected_components(ptr noundef %i.acu, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g) #19 ; 5 uses
  call void @SparseMatrix_delete(ptr noundef %i.abu) #19
  call void @SparseMatrix_delete(ptr noundef %i.acu) #19
  %i.acw = load i32, ptr %i.f, align 4, !tbaa !22
  %i.acx = call ptr @SparseMatrix_new(i32 noundef %i.acw, i32 noundef %i.xk, i64 noundef %i.aaj, i32 noundef 8, i32 noundef 0) #19 ; 2 uses
  store ptr %i.acx, ptr %15, align 8, !tbaa !160
  %i.acy = getelementptr inbounds nuw i8, ptr %i.acx, i64 32
  %i.acz = load ptr, ptr %i.acy, align 8, !tbaa !32
  call void @free(ptr noundef %i.acz) #19
  %i.ada = load ptr, ptr %15, align 8, !tbaa !160
  %i.adb = getelementptr inbounds nuw i8, ptr %i.ada, i64 40
  %i.adc = load ptr, ptr %i.adb, align 8, !tbaa !33
  call void @free(ptr noundef %i.adc) #19
  %i.add = load ptr, ptr %15, align 8, !tbaa !160 ; 4 uses
  %i.ade = getelementptr inbounds nuw i8, ptr %i.add, i64 32
  store ptr %i.acv, ptr %i.ade, align 8, !tbaa !32
  %i.adf = load ptr, ptr %i.g, align 8, !tbaa !30 ; 4 uses
  %i.adg = getelementptr inbounds nuw i8, ptr %i.add, i64 40
  store ptr %i.adf, ptr %i.adg, align 8, !tbaa !33
  %i.adh = getelementptr inbounds nuw i8, ptr %i.add, i64 8
  store i64 %i.aaj, ptr %i.adh, align 8, !tbaa !152
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #19
  %i.adi = load i32, ptr %i.add, align 8, !tbaa !17 ; 4 uses
  %smin.i = call i32 @llvm.smin.i32(i32 %i.adi, i32 0) ; 2 uses
  %i.adj = icmp sgt i32 %i.adi, 0
  br i1 %i.adj, label %.lr.ph, label %._crit_edge1103

.lr.ph:                                           ; preds = %conn_comp.exit.i
  %i.adk = zext nneg i32 %i.adi to i64
  br label %bb.cp

bb.co:                                            ; preds = %bb.cp
  %i.adl = trunc nuw i64 %i.ado to i32            ; 2 uses
  %i.adm = icmp sgt i32 %i.adl, 0
  br i1 %i.adm, label %bb.cp, label %._crit_edge1103, !llvm.loop !127

bb.cp:                                            ; preds = %.lr.ph, %bb.co
  %i.adn = phi i32 [ %i.adi, %.lr.ph ], [ %i.adl, %bb.co ]
  %indvars.iv200.i1100 = phi i64 [ %i.adk, %.lr.ph ], [ %i.ado, %bb.co ]
  %i.ado = add nsw i64 %indvars.iv200.i1100, -1   ; 3 uses
  %i.adp = getelementptr inbounds nuw [4 x i8], ptr %i.acv, i64 %i.ado
  %i.adq = load i32, ptr %i.adp, align 4, !tbaa !22
  %i.adr = sext i32 %i.adq to i64
  %i.ads = getelementptr inbounds [4 x i8], ptr %i.adf, i64 %i.adr
  %i.adt = load i32, ptr %i.ads, align 4, !tbaa !22
  %i.adu = sext i32 %i.adt to i64
  %i.adv = getelementptr inbounds [4 x i8], ptr %i.aas, i64 %i.adu
  %i.adw = load i32, ptr %i.adv, align 4, !tbaa !22 ; 2 uses
  %.not.i530 = icmp eq i32 %i.adw, %i.abf
  %.not115.i = icmp eq i32 %i.adw, %i.abg
  %or.cond.i = select i1 %.not.i530, i1 true, i1 %.not115.i
  br i1 %or.cond.i, label %bb.co, label %._crit_edge1101, !llvm.loop !127

._crit_edge1101:                                  ; preds = %bb.cp
  br label %._crit_edge1103, !llvm.loop !127

._crit_edge1103:                                  ; preds = %bb.co, %._crit_edge1101, %conn_comp.exit.i
  %.lcssa1093 = phi i1 [ true, %._crit_edge1101 ], [ false, %conn_comp.exit.i ], [ false, %bb.co ]
  %.3.in.lcssa.i = phi i32 [ %i.adn, %._crit_edge1101 ], [ %smin.i, %conn_comp.exit.i ], [ %smin.i, %bb.co ] ; 8 uses
  %i.adx = load i8, ptr @Verbose, align 1, !tbaa !35
  %.not116.i = icmp eq i8 %i.adx, 0
  br i1 %.not116.i, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %._crit_edge1103
  %i.ady = load ptr, ptr @stderr, align 8, !tbaa !19
  call void @flockfile(ptr noundef %i.ady) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #19
  %i.adz = call i64 @time(ptr noundef null) #19
  store i64 %i.adz, ptr %i.h, align 8, !tbaa !36
  %i.aea = call ptr @localtime(ptr noundef nonnull %i.h) #19 ; 6 uses
  %i.aeb = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.aec = getelementptr inbounds nuw i8, ptr %i.aea, i64 20
  %i.aed = load i32, ptr %i.aec, align 4, !tbaa !39
  %i.aee = add nsw i32 %i.aed, 1900
  %i.aef = getelementptr inbounds nuw i8, ptr %i.aea, i64 16
  %i.aeg = load i32, ptr %i.aef, align 8, !tbaa !40
  %i.aeh = add nsw i32 %i.aeg, 1
  %i.aei = getelementptr inbounds nuw i8, ptr %i.aea, i64 12
  %i.aej = load i32, ptr %i.aei, align 4, !tbaa !41
  %i.aek = getelementptr inbounds nuw i8, ptr %i.aea, i64 8
  %i.ael = load i32, ptr %i.aek, align 8, !tbaa !42
  %i.aem = getelementptr inbounds nuw i8, ptr %i.aea, i64 4
  %i.aen = load i32, ptr %i.aem, align 4, !tbaa !43
  %i.aeo = load i32, ptr %i.aea, align 8, !tbaa !44
  %i.aep = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.aeb, ptr noundef nonnull @.str.1, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 44), i32 noundef 915, i32 noundef %i.aee, i32 noundef %i.aeh, i32 noundef %i.aej, i32 noundef %i.ael, i32 noundef %i.aen, i32 noundef %i.aeo) #20 ; 0 uses
  %i.aeq = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.aer = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.aeq, ptr noundef nonnull @.str.48, i32 noundef %.3.in.lcssa.i) #20 ; 0 uses
  %i.aes = load ptr, ptr @stderr, align 8, !tbaa !19
  %fputc.i = call i32 @fputc(i32 10, ptr %i.aes)  ; 0 uses
  %i.aet = load ptr, ptr @stderr, align 8, !tbaa !19
  call void @funlockfile(ptr noundef %i.aet) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #19
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %._crit_edge1103
  %i.aeu = shl nsw i32 %i.aai, 1                  ; 2 uses
  %i.aev = sext i32 %i.aeu to i64                 ; 3 uses
  %.not.i118.i = icmp eq i32 %i.aai, 0            ; 3 uses
  br i1 %.not.i118.i, label %.thread.i166.i.i, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %mul.ov.i120.i = icmp slt i32 %i.aai, 0
  br i1 %mul.ov.i120.i, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %bb.cs
  %i.aew = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.aex = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.aew, ptr noundef nonnull @.str.28, i64 noundef %i.aev, i64 noundef 8) #20 ; 0 uses
  call fastcc void @graphviz_exit() #21
  unreachable

bb.cu:                                            ; preds = %bb.cs
  %i.aey = call noalias ptr @calloc(i64 noundef %i.aev, i64 noundef 8) #22 ; 5 uses
  %i.aez = icmp eq ptr %i.aey, null
  br i1 %i.aez, label %bb.cv, label %.preheader.preheader.i

bb.cv:                                            ; preds = %bb.cu
  %i.afa = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.afb = shl nuw nsw i64 %i.aev, 3
  %i.afc = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.afa, ptr noundef nonnull @.str.29, i64 noundef %i.afb) #20 ; 0 uses
  call fastcc void @graphviz_exit() #21
  unreachable

.preheader.preheader.i:                           ; preds = %bb.cu
  store ptr %i.aey, ptr %11, align 8, !tbaa !12
  %wide.trip.count208.i = zext nneg i32 %i.aai to i64 ; 5 uses
  %xtraiter1405 = and i64 %wide.trip.count208.i, 1
  %i.afd = icmp eq i32 %i.aai, 1
  br i1 %i.afd, label %.preheader.i528.epil.preheader, label %.preheader.preheader.i.new

.preheader.preheader.i.new:                       ; preds = %.preheader.preheader.i
  %unroll_iter1408 = and i64 %wide.trip.count208.i, 2147483646
  br label %.preheader.i528

.preheader.i528:                                  ; preds = %.preheader.i528, %.preheader.preheader.i.new
  %indvar.i = phi i64 [ 0, %.preheader.preheader.i.new ], [ %indvar.next.i.1, %.preheader.i528 ] ; 4 uses
  %niter1409 = phi i64 [ 0, %.preheader.preheader.i.new ], [ %niter1409.next.1, %.preheader.i528 ]
  %i.afe = shl nuw nsw i64 %indvar.i, 4
  %scevgep.i = getelementptr nuw i8, ptr %i.aey, i64 %i.afe
  %i.aff = getelementptr inbounds nuw [32 x i8], ptr %i.xx, i64 %indvar.i
  %i.afg = getelementptr inbounds nuw i8, ptr %i.aff, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %scevgep.i, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.afg, i64 16, i1 false), !tbaa !24
  %indvar.next.i = or disjoint i64 %indvar.i, 1   ; 2 uses
  %i.afh = shl nuw nsw i64 %indvar.next.i, 4
  %scevgep.i.1 = getelementptr nuw i8, ptr %i.aey, i64 %i.afh
  %i.afi = getelementptr inbounds nuw [32 x i8], ptr %i.xx, i64 %indvar.next.i
  %i.afj = getelementptr inbounds nuw i8, ptr %i.afi, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %scevgep.i.1, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.afj, i64 16, i1 false), !tbaa !24
  %indvar.next.i.1 = add nuw nsw i64 %indvar.i, 2 ; 2 uses
  %niter1409.next.1 = add i64 %niter1409, 2       ; 2 uses
  %niter1409.ncmp.1 = icmp eq i64 %niter1409.next.1, %unroll_iter1408
  br i1 %niter1409.ncmp.1, label %.unr-lcssa, label %.preheader.i528, !llvm.loop !128

.unr-lcssa:                                       ; preds = %.preheader.i528
  %lcmp.mod1406.not = icmp eq i64 %xtraiter1405, 0
  br i1 %lcmp.mod1406.not, label %bb.cw, label %.preheader.i528.epil.preheader

.preheader.i528.epil.preheader:                   ; preds = %.unr-lcssa, %.preheader.preheader.i
  %indvar.i.epil.init = phi i64 [ 0, %.preheader.preheader.i ], [ %indvar.next.i.1, %.unr-lcssa ] ; 2 uses
  %lcmp.mod1407 = trunc i32 %i.aai to i1
  call void @llvm.assume(i1 %lcmp.mod1407)
  %i.afk = shl nuw nsw i64 %indvar.i.epil.init, 4
  %scevgep.i.epil = getelementptr nuw i8, ptr %i.aey, i64 %i.afk
  %i.afl = getelementptr inbounds nuw [32 x i8], ptr %i.xx, i64 %indvar.i.epil.init
  %i.afm = getelementptr inbounds nuw i8, ptr %i.afl, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %scevgep.i.epil, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.afm, i64 16, i1 false), !tbaa !24
  br label %bb.cw

bb.cw:                                            ; preds = %.unr-lcssa, %.preheader.i528.epil.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19
  %i.afn = load ptr, ptr %i.abv, align 8, !tbaa !32
  %i.afo = load ptr, ptr %i.abx, align 8, !tbaa !33
  %i.afp = getelementptr inbounds nuw i8, ptr %i.aah, i64 48 ; 2 uses
  %i.afq = load ptr, ptr %i.afp, align 8, !tbaa !34
  %i.afr = call noalias ptr @calloc(i64 noundef %wide.trip.count208.i, i64 noundef 4) #22 ; 3 uses
  %i.afs = icmp eq ptr %i.afr, null
  br i1 %i.afs, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %bb.cw
  %i.aft = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.afu = shl nuw nsw i64 %wide.trip.count208.i, 2
  %i.afv = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.aft, ptr noundef nonnull @.str.29, i64 noundef %i.afu) #20 ; 0 uses
  call fastcc void @graphviz_exit() #21
  unreachable

bb.cy:                                            ; preds = %bb.cw
  %i.afw = shl nuw nsw i64 %wide.trip.count208.i, 2
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.afr, i8 -1, i64 %i.afw, i1 false), !tbaa !22
  %i.afx = mul nuw nsw i32 %i.aai, 3
  %i.afy = zext nneg i32 %i.afx to i64            ; 2 uses
  %i.afz = call noalias ptr @calloc(i64 noundef %i.afy, i64 noundef 4) #22 ; 2 uses
  %i.aga = icmp eq ptr %i.afz, null
  br i1 %i.aga, label %bb.cz, label %bb.da

bb.cz:                                            ; preds = %bb.cy
  %i.agb = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.agc = shl nuw nsw i64 %i.afy, 2
  %i.agd = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.agb, ptr noundef nonnull @.str.29, i64 noundef %i.agc) #20 ; 0 uses
  call fastcc void @graphviz_exit() #21
  unreachable

.thread.i166.i.i:                                 ; preds = %bb.cr
  %i.age = call noalias ptr @calloc(i64 noundef 0, i64 noundef 8) #22
  store ptr %i.age, ptr %11, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19
  %i.agf = load ptr, ptr %i.abv, align 8, !tbaa !32
  %i.agg = load ptr, ptr %i.abx, align 8, !tbaa !33
  %i.agh = getelementptr inbounds nuw i8, ptr %i.aah, i64 48 ; 2 uses
  %i.agi = load ptr, ptr %i.agh, align 8, !tbaa !34
  %i.agj = call noalias ptr @calloc(i64 noundef 0, i64 noundef 4) #22
  %i.agk = call noalias ptr @calloc(i64 noundef 0, i64 noundef 4) #22
  %i.agl = call noalias ptr @calloc(i64 noundef 0, i64 noundef 4) #22
  br label %gv_calloc.exit167.i.i

bb.da:                                            ; preds = %bb.cy
  %i.agm = zext nneg i32 %i.aeu to i64            ; 2 uses
  %i.agn = call noalias ptr @calloc(i64 noundef %i.agm, i64 noundef 4) #22 ; 2 uses
  %i.ago = icmp eq ptr %i.agn, null
  br i1 %i.ago, label %bb.db, label %gv_calloc.exit167.i.i

bb.db:                                            ; preds = %bb.da
  %i.agp = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.agq = shl nuw nsw i64 %i.agm, 2
  %i.agr = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.agp, ptr noundef nonnull @.str.29, i64 noundef %i.agq) #20 ; 0 uses
  call fastcc void @graphviz_exit() #21
  unreachable

gv_calloc.exit167.i.i:                            ; preds = %bb.da, %.thread.i166.i.i
  %i.ags = phi ptr [ %i.agi, %.thread.i166.i.i ], [ %i.afq, %bb.da ] ; 2 uses
  %i.agt = phi ptr [ %i.agh, %.thread.i166.i.i ], [ %i.afp, %bb.da ]
  %i.agu = phi ptr [ %i.agg, %.thread.i166.i.i ], [ %i.afo, %bb.da ] ; 2 uses
  %i.agv = phi ptr [ %i.agf, %.thread.i166.i.i ], [ %i.afn, %bb.da ] ; 3 uses
  %i.agw = phi ptr [ %i.agk, %.thread.i166.i.i ], [ %i.afz, %bb.da ] ; 16 uses
  %i.agx = phi ptr [ %i.agj, %.thread.i166.i.i ], [ %i.afr, %bb.da ] ; 3 uses
  %i.agy = phi ptr [ %i.agl, %.thread.i166.i.i ], [ %i.agn, %bb.da ] ; 3 uses
  %i.agz = call ptr @SparseMatrix_new(i32 noundef range(i32 -2147483647, -2147483648) %.3.in.lcssa.i, i32 noundef %i.aai, i64 noundef 1, i32 noundef 4, i32 noundef 1) #19 ; 2 uses
  store ptr %i.agz, ptr %12, align 8, !tbaa !160
  %i.aha = sext i32 %.3.in.lcssa.i to i64         ; 3 uses
  %.not.i168.i.i = icmp eq i32 %.3.in.lcssa.i, 0  ; 2 uses
  br i1 %.not.i168.i.i, label %.thread.i171.i.i, label %bb.dc

.thread.i171.i.i:                                 ; preds = %gv_calloc.exit167.i.i
  %i.ahb = call noalias ptr @calloc(i64 noundef 0, i64 noundef 4) #22
  br label %gv_calloc.exit172.i.i

bb.dc:                                            ; preds = %gv_calloc.exit167.i.i
  %mul.ov.i170.i.i = icmp slt i32 %.3.in.lcssa.i, 0
  br i1 %mul.ov.i170.i.i, label %bb.dd, label %bb.de

bb.dd:                                            ; preds = %bb.dc
  %i.ahc = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.ahd = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ahc, ptr noundef nonnull @.str.28, i64 noundef %i.aha, i64 noundef 4) #20 ; 0 uses
  call fastcc void @graphviz_exit() #21
  unreachable

bb.de:                                            ; preds = %bb.dc
  %i.ahe = call noalias ptr @calloc(i64 noundef %i.aha, i64 noundef 4) #22 ; 2 uses
  %i.ahf = icmp eq ptr %i.ahe, null
  br i1 %i.ahf, label %bb.df, label %gv_calloc.exit172.i.i

bb.df:                                            ; preds = %bb.de
  %i.ahg = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.ahh = shl nuw nsw i64 %i.aha, 2
  %i.ahi = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ahg, ptr noundef nonnull @.str.29, i64 noundef %i.ahh) #20 ; 0 uses
  call fastcc void @graphviz_exit() #21
  unreachable

gv_calloc.exit172.i.i:                            ; preds = %bb.de, %.thread.i171.i.i
  %i.ahj = phi ptr [ %i.ahb, %.thread.i171.i.i ], [ %i.ahe, %bb.de ]
  store ptr %i.ahj, ptr %14, align 8, !tbaa !30
  br i1 %.not.i118.i, label %._crit_edge177.i.i, label %.lr.ph176.preheader.i.i

.lr.ph176.preheader.i.i:                          ; preds = %gv_calloc.exit172.i.i
  %wide.trip.count.i123.i = zext nneg i32 %i.aai to i64 ; 2 uses
  %xtraiter1410 = and i64 %wide.trip.count.i123.i, 7 ; 3 uses
  %i.ahk = icmp ult i32 %i.aai, 8
  br i1 %i.ahk, label %.lr.ph176.i.i.epil.preheader, label %.lr.ph176.preheader.i.i.new

.lr.ph176.preheader.i.i.new:                      ; preds = %.lr.ph176.preheader.i.i
  %unroll_iter1413 = and i64 %wide.trip.count.i123.i, 2147483640
  br label %.lr.ph176.i.i

.lr.ph176.i.i:                                    ; preds = %.lr.ph176.i.i, %.lr.ph176.preheader.i.i.new
  %indvars.iv.i124.i = phi i64 [ 0, %.lr.ph176.preheader.i.i.new ], [ %indvars.iv.next.i125.i.7, %.lr.ph176.i.i ] ; 9 uses
  %niter1414 = phi i64 [ 0, %.lr.ph176.preheader.i.i.new ], [ %niter1414.next.7, %.lr.ph176.i.i ]
  %.idx.i.i = mul nuw nsw i64 %indvars.iv.i124.i, 12
  %i.ahl = getelementptr inbounds nuw i8, ptr %i.agw, i64 %.idx.i.i
  %i.ahm = getelementptr inbounds nuw i8, ptr %i.ahl, i64 8
  store i32 0, ptr %i.ahm, align 4, !tbaa !22
  %i.ahn = mul nuw i64 %indvars.iv.i124.i, 12
  %i.aho = getelementptr inbounds nuw i8, ptr %i.agw, i64 %i.ahn
  %i.ahp = getelementptr inbounds nuw i8, ptr %i.aho, i64 20
  store i32 0, ptr %i.ahp, align 4, !tbaa !22
  %i.ahq = mul nuw i64 %indvars.iv.i124.i, 12
  %i.ahr = getelementptr inbounds nuw i8, ptr %i.agw, i64 %i.ahq
  %i.ahs = getelementptr inbounds nuw i8, ptr %i.ahr, i64 32
  store i32 0, ptr %i.ahs, align 4, !tbaa !22
  %i.aht = mul nuw i64 %indvars.iv.i124.i, 12
  %i.ahu = getelementptr inbounds nuw i8, ptr %i.agw, i64 %i.aht
  %i.ahv = getelementptr inbounds nuw i8, ptr %i.ahu, i64 44
  store i32 0, ptr %i.ahv, align 4, !tbaa !22
  %i.ahw = mul nuw i64 %indvars.iv.i124.i, 12
  %i.ahx = getelementptr inbounds nuw i8, ptr %i.agw, i64 %i.ahw
  %i.ahy = getelementptr inbounds nuw i8, ptr %i.ahx, i64 56
  store i32 0, ptr %i.ahy, align 4, !tbaa !22
  %i.ahz = mul nuw i64 %indvars.iv.i124.i, 12
  %i.aia = getelementptr inbounds nuw i8, ptr %i.agw, i64 %i.ahz
  %i.aib = getelementptr inbounds nuw i8, ptr %i.aia, i64 68
  store i32 0, ptr %i.aib, align 4, !tbaa !22
  %i.aic = mul nuw i64 %indvars.iv.i124.i, 12
  %i.aid = getelementptr inbounds nuw i8, ptr %i.agw, i64 %i.aic
  %i.aie = getelementptr inbounds nuw i8, ptr %i.aid, i64 80
  store i32 0, ptr %i.aie, align 4, !tbaa !22
  %i.aif = mul nuw i64 %indvars.iv.i124.i, 12
  %i.aig = getelementptr inbounds nuw i8, ptr %i.agw, i64 %i.aif
  %i.aih = getelementptr inbounds nuw i8, ptr %i.aig, i64 92
  store i32 0, ptr %i.aih, align 4, !tbaa !22
  %indvars.iv.next.i125.i.7 = add nuw nsw i64 %indvars.iv.i124.i, 8 ; 2 uses
  %niter1414.next.7 = add i64 %niter1414, 8       ; 2 uses
  %niter1414.ncmp.7 = icmp eq i64 %niter1414.next.7, %unroll_iter1413
  br i1 %niter1414.ncmp.7, label %._crit_edge177.i.i.loopexit.unr-lcssa, label %.lr.ph176.i.i, !llvm.loop !129

._crit_edge177.i.i.loopexit.unr-lcssa:            ; preds = %.lr.ph176.i.i
  %lcmp.mod1411.not = icmp eq i64 %xtraiter1410, 0
  br i1 %lcmp.mod1411.not, label %._crit_edge177.i.i, label %.lr.ph176.i.i.epil.preheader

.lr.ph176.i.i.epil.preheader:                     ; preds = %._crit_edge177.i.i.loopexit.unr-lcssa, %.lr.ph176.preheader.i.i
  %indvars.iv.i124.i.epil.init = phi i64 [ 0, %.lr.ph176.preheader.i.i ], [ %indvars.iv.next.i125.i.7, %._crit_edge177.i.i.loopexit.unr-lcssa ]
  %lcmp.mod1412 = icmp ne i64 %xtraiter1410, 0
  call void @llvm.assume(i1 %lcmp.mod1412)
  br label %.lr.ph176.i.i.epil

.lr.ph176.i.i.epil:                               ; preds = %.lr.ph176.i.i.epil, %.lr.ph176.i.i.epil.preheader
  %indvars.iv.i124.i.epil = phi i64 [ %indvars.iv.i124.i.epil.init, %.lr.ph176.i.i.epil.preheader ], [ %indvars.iv.next.i125.i.epil, %.lr.ph176.i.i.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.lr.ph176.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph176.i.i.epil ]
  %.idx.i.i.epil = mul nuw nsw i64 %indvars.iv.i124.i.epil, 12
  %i.aii = getelementptr inbounds nuw i8, ptr %i.agw, i64 %.idx.i.i.epil
  %i.aij = getelementptr inbounds nuw i8, ptr %i.aii, i64 8
  store i32 0, ptr %i.aij, align 4, !tbaa !22
  %indvars.iv.next.i125.i.epil = add nuw nsw i64 %indvars.iv.i124.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter1410
  br i1 %epil.iter.cmp.not, label %._crit_edge177.i.i, label %.lr.ph176.i.i.epil, !llvm.loop !130

._crit_edge177.i.i:                               ; preds = %._crit_edge177.i.i.loopexit.unr-lcssa, %.lr.ph176.i.i.epil, %gv_calloc.exit172.i.i
  %i.aik = load i32, ptr %i.aah, align 8, !tbaa !17
  %i.ail = sext i32 %i.aik to i64
  %i.aim = getelementptr inbounds [4 x i8], ptr %i.agv, i64 %i.ail
  %i.ain = load i32, ptr %i.aim, align 4, !tbaa !22
  %i.aio = load i32, ptr %i.agv, align 4, !tbaa !22
  store i32 1, ptr %i.d, align 4, !tbaa !22
  br i1 %.not.i168.i.i, label %get_poly_lines.exit.i, label %.lr.ph198.i.i

.lr.ph198.i.i:                                    ; preds = %._crit_edge177.i.i
  %i.aip = xor i32 %i.aio, -1
  %i.aiq = add i32 %i.ain, %i.aip
  %wide.trip.count214.i.i = zext nneg i32 %.3.in.lcssa.i to i64
  br label %bb.dg

.loopexit173.i.i:                                 ; preds = %bb.dp, %.preheader.i.i, %bb.dg
  %exitcond215.not.i.i = icmp eq i64 %indvars.iv.next212.i.i, %wide.trip.count214.i.i
  br i1 %exitcond215.not.i.i, label %._crit_edge199.loopexit.i.i, label %bb.dg, !llvm.loop !131

bb.dg:                                            ; preds = %.loopexit173.i.i, %.lr.ph198.i.i
  %indvars.iv211.i.i = phi i64 [ 0, %.lr.ph198.i.i ], [ %indvars.iv.next212.i.i, %.loopexit173.i.i ] ; 5 uses
  %i.air = getelementptr inbounds nuw [4 x i8], ptr %i.acv, i64 %indvars.iv211.i.i
  %i.ais = load i32, ptr %i.air, align 4, !tbaa !22 ; 2 uses
  %indvars.iv.next212.i.i = add nuw nsw i64 %indvars.iv211.i.i, 1 ; 3 uses
  %i.ait = getelementptr inbounds nuw [4 x i8], ptr %i.acv, i64 %indvars.iv.next212.i.i ; 2 uses
  %i.aiu = load i32, ptr %i.ait, align 4, !tbaa !22
  %i.aiv = icmp slt i32 %i.ais, %i.aiu
  br i1 %i.aiv, label %.lr.ph185.i.i, label %.loopexit173.i.i

.lr.ph185.i.i:                                    ; preds = %bb.dg
  %i.aiw = load ptr, ptr %14, align 8, !tbaa !30
  %i.aix = getelementptr inbounds nuw [4 x i8], ptr %i.aiw, i64 %indvars.iv211.i.i
  %i.aiy = sext i32 %i.ais to i64
  br label %bb.dh

.preheader.i.i:                                   ; preds = %.loopexit.i128.i
  %i.aiz = icmp sgt i32 %.3.i.i, 0
  br i1 %i.aiz, label %.lr.ph195.preheader.i.i, label %.loopexit173.i.i

.lr.ph195.preheader.i.i:                          ; preds = %.preheader.i.i
  %wide.trip.count209.i.i = zext nneg i32 %.3.i.i to i64
  %i.aja = trunc nuw nsw i64 %indvars.iv211.i.i to i32 ; 5 uses
  br label %.lr.ph195.i.i

bb.dh:                                            ; preds = %.loopexit.i128.i, %.lr.ph185.i.i
  %indvars.iv203.i.i = phi i64 [ %i.aiy, %.lr.ph185.i.i ], [ %indvars.iv.next204.i.i, %.loopexit.i128.i ] ; 2 uses
  %.0147182.i.i = phi i32 [ 0, %.lr.ph185.i.i ], [ %.3.i.i, %.loopexit.i128.i ] ; 3 uses
  %i.ajb = getelementptr inbounds [4 x i8], ptr %i.adf, i64 %indvars.iv203.i.i
  %i.ajc = load i32, ptr %i.ajb, align 4, !tbaa !22
  %i.ajd = sext i32 %i.ajc to i64                 ; 2 uses
  %i.aje = getelementptr inbounds [4 x i8], ptr %i.aas, i64 %i.ajd
  %i.ajf = load i32, ptr %i.aje, align 4, !tbaa !22 ; 4 uses
  store i32 %i.ajf, ptr %i.aix, align 4, !tbaa !22
  %i.ajg = icmp eq i32 %i.ajf, %i.abf
  %i.ajh = icmp eq i32 %i.ajf, %i.abg
  %or.cond.i.i = or i1 %i.ajg, %i.ajh
  br i1 %or.cond.i.i, label %.loopexit.i128.i, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.aji = getelementptr inbounds [4 x i8], ptr %i.agv, i64 %i.ajd ; 2 uses
  %i.ajj = load i32, ptr %i.aji, align 4, !tbaa !22 ; 2 uses
  %i.ajk = getelementptr i8, ptr %i.aji, i64 4
  %i.ajl = load i32, ptr %i.ajk, align 4, !tbaa !22 ; 2 uses
  %i.ajm = icmp slt i32 %i.ajj, %i.ajl
  br i1 %i.ajm, label %.lr.ph181.i.i, label %.loopexit.i128.i

.lr.ph181.i.i:                                    ; preds = %bb.di, %bb.dl
  %.0145179.i.i = phi i32 [ %i.ald, %bb.dl ], [ %i.ajj, %bb.di ] ; 5 uses
  %.1148178.i.i = phi i32 [ %.2.i.i, %bb.dl ], [ %.0147182.i.i, %bb.di ] ; 4 uses
  %i.ajn = sext i32 %.0145179.i.i to i64          ; 2 uses
  %i.ajo = getelementptr inbounds [4 x i8], ptr %i.agu, i64 %i.ajn
  %i.ajp = load i32, ptr %i.ajo, align 4, !tbaa !22 ; 2 uses
  %i.ajq = sext i32 %i.ajp to i64
  %i.ajr = getelementptr inbounds [4 x i8], ptr %i.aas, i64 %i.ajq
  %i.ajs = load i32, ptr %i.ajr, align 4, !tbaa !22
  %.not157.i.i = icmp ne i32 %i.ajs, %i.ajf
  %i.ajt = icmp slt i32 %.0145179.i.i, %i.aiq
  %or.cond200.i.i = select i1 %.not157.i.i, i1 %i.ajt, i1 false
  br i1 %or.cond200.i.i, label %bb.dj, label %bb.dl

bb.dj:                                            ; preds = %.lr.ph181.i.i
  %i.aju = add nsw i32 %.0145179.i.i, 1           ; 2 uses
  %i.ajv = sext i32 %i.aju to i64                 ; 2 uses
  %i.ajw = getelementptr inbounds [4 x i8], ptr %i.agu, i64 %i.ajv
  %i.ajx = load i32, ptr %i.ajw, align 4, !tbaa !22
  %i.ajy = icmp eq i32 %i.ajp, %i.ajx
  br i1 %i.ajy, label %bb.dk, label %bb.dl

bb.dk:                                            ; preds = %bb.dj
  %i.ajz = getelementptr inbounds [4 x i8], ptr %i.ags, i64 %i.ajn
  %i.aka = load i32, ptr %i.ajz, align 4, !tbaa !22 ; 3 uses
  %i.akb = getelementptr inbounds [4 x i8], ptr %i.ags, i64 %i.ajv
  %i.akc = load i32, ptr %i.akb, align 4, !tbaa !22 ; 3 uses
  %i.akd = mul nsw i32 %i.aka, 3                  ; 2 uses
  %i.ake = sext i32 %i.akd to i64
  %i.akf = getelementptr [4 x i8], ptr %i.agw, i64 %i.ake
  %i.akg = getelementptr i8, ptr %i.akf, i64 8    ; 3 uses
  %i.akh = load i32, ptr %i.akg, align 4, !tbaa !22
  %i.aki = srem i32 %i.akh, 2
  %i.akj = add nsw i32 %i.aki, %i.akd
  %i.akk = sext i32 %i.akj to i64
  %i.akl = getelementptr inbounds [4 x i8], ptr %i.agw, i64 %i.akk
  store i32 %i.akc, ptr %i.akl, align 4, !tbaa !22
  %i.akm = load i32, ptr %i.akg, align 4, !tbaa !22
  %i.akn = add nsw i32 %i.akm, 1
  store i32 %i.akn, ptr %i.akg, align 4, !tbaa !22
  %i.ako = mul nsw i32 %i.akc, 3                  ; 2 uses
  %i.akp = sext i32 %i.ako to i64
  %i.akq = getelementptr [4 x i8], ptr %i.agw, i64 %i.akp
  %i.akr = getelementptr i8, ptr %i.akq, i64 8    ; 3 uses
  %i.aks = load i32, ptr %i.akr, align 4, !tbaa !22
  %i.akt = srem i32 %i.aks, 2
  %i.aku = add nsw i32 %i.akt, %i.ako
  %i.akv = sext i32 %i.aku to i64
  %i.akw = getelementptr inbounds [4 x i8], ptr %i.agw, i64 %i.akv
  store i32 %i.aka, ptr %i.akw, align 4, !tbaa !22
  %i.akx = load i32, ptr %i.akr, align 4, !tbaa !22
  %i.aky = add nsw i32 %i.akx, 1
  store i32 %i.aky, ptr %i.akr, align 4, !tbaa !22
  %i.akz = sext i32 %.1148178.i.i to i64
  %i.ala = getelementptr inbounds [4 x i8], ptr %i.agy, i64 %i.akz ; 2 uses
  store i32 %i.aka, ptr %i.ala, align 4, !tbaa !22
  %i.alb = add nsw i32 %.1148178.i.i, 2
  %i.alc = getelementptr i8, ptr %i.ala, i64 4
  store i32 %i.akc, ptr %i.alc, align 4, !tbaa !22
  br label %bb.dl

bb.dl:                                            ; preds = %bb.dk, %bb.dj, %.lr.ph181.i.i
  %.2.i.i = phi i32 [ %i.alb, %bb.dk ], [ %.1148178.i.i, %bb.dj ], [ %.1148178.i.i, %.lr.ph181.i.i ] ; 2 uses
  %.1146.i.i = phi i32 [ %i.aju, %bb.dk ], [ %.0145179.i.i, %bb.dj ], [ %.0145179.i.i, %.lr.ph181.i.i ]
  %i.ald = add nsw i32 %.1146.i.i, 1              ; 2 uses
  %i.ale = icmp slt i32 %i.ald, %i.ajl
  br i1 %i.ale, label %.lr.ph181.i.i, label %.loopexit.i128.i, !llvm.loop !132

.loopexit.i128.i:                                 ; preds = %bb.dl, %bb.di, %bb.dh
  %.3.i.i = phi i32 [ %.0147182.i.i, %bb.dh ], [ %.0147182.i.i, %bb.di ], [ %.2.i.i, %bb.dl ] ; 3 uses
  %indvars.iv.next204.i.i = add nsw i64 %indvars.iv203.i.i, 1 ; 2 uses
  %i.alf = load i32, ptr %i.ait, align 4, !tbaa !22
  %i.alg = sext i32 %i.alf to i64
  %i.alh = icmp slt i64 %indvars.iv.next204.i.i, %i.alg
  br i1 %i.alh, label %bb.dh, label %.preheader.i.i, !llvm.loop !133

.lr.ph195.i.i:                                    ; preds = %bb.dp, %.lr.ph195.preheader.i.i
  %indvars.iv206.i.i = phi i64 [ 0, %.lr.ph195.preheader.i.i ], [ %indvars.iv.next207.i.i, %bb.dp ] ; 2 uses
  %i.ali = getelementptr inbounds nuw [4 x i8], ptr %i.agy, i64 %indvars.iv206.i.i
  %i.alj = load i32, ptr %i.ali, align 4, !tbaa !22 ; 7 uses
  %i.alk = sext i32 %i.alj to i64
  %i.all = getelementptr inbounds [4 x i8], ptr %i.agx, i64 %i.alk ; 2 uses
  %i.alm = load i32, ptr %i.all, align 4, !tbaa !22
  %i.aln = zext i32 %i.alm to i64
  %.not.i129.i = icmp eq i64 %indvars.iv211.i.i, %i.aln
  br i1 %.not.i129.i, label %bb.dp, label %bb.dm

bb.dm:                                            ; preds = %.lr.ph195.i.i
  store i32 %i.aja, ptr %i.all, align 4, !tbaa !22
  %i.alo = mul nsw i32 %i.alj, 3
  %i.alp = sext i32 %i.alo to i64
  %i.alq = getelementptr [4 x i8], ptr %i.agw, i64 %i.alp
  %i.alr = getelementptr i8, ptr %i.alq, i64 4
  %i.als = load i32, ptr %i.alr, align 4, !tbaa !22 ; 2 uses
  %i.alt = load ptr, ptr %12, align 8, !tbaa !160
  %i.alu = call ptr @SparseMatrix_coordinate_form_add_entry_(ptr noundef %i.alt, i32 noundef %i.aja, i32 noundef %i.alj, ptr noundef nonnull %i.d, i32 noundef 4) #19 ; 0 uses
  %.not156188.i.i = icmp eq i32 %i.als, %i.alj
  br i1 %.not156188.i.i, label %._crit_edge193.i.i, label %.lr.ph192.i.i

.lr.ph192.i.i:                                    ; preds = %bb.dm, %bb.do
  %.0143190.i.i = phi i32 [ %.0142.i.i, %bb.do ], [ %i.als, %bb.dm ] ; 4 uses
  %.0144189.i.i = phi i32 [ %.0143190.i.i, %bb.do ], [ %i.alj, %bb.dm ]
  %i.alv = sext i32 %.0143190.i.i to i64
  %i.alw = getelementptr inbounds [4 x i8], ptr %i.agx, i64 %i.alv
  store i32 %i.aja, ptr %i.alw, align 4, !tbaa !22
  %i.alx = load ptr, ptr %12, align 8, !tbaa !160
  %i.aly = call ptr @SparseMatrix_coordinate_form_add_entry_(ptr noundef %i.alx, i32 noundef %i.aja, i32 noundef %.0143190.i.i, ptr noundef nonnull %i.d, i32 noundef 4) #19 ; 0 uses
  %i.alz = mul nsw i32 %.0143190.i.i, 3
  %i.ama = sext i32 %i.alz to i64
  %i.amb = getelementptr inbounds [4 x i8], ptr %i.agw, i64 %i.ama ; 2 uses
  %i.amc = load i32, ptr %i.amb, align 4, !tbaa !22 ; 2 uses
  %i.amd = icmp eq i32 %i.amc, %.0144189.i.i
  br i1 %i.amd, label %bb.dn, label %bb.do

bb.dn:                                            ; preds = %.lr.ph192.i.i
  %i.ame = getelementptr i8, ptr %i.amb, i64 4
  %i.amf = load i32, ptr %i.ame, align 4, !tbaa !22
  br label %bb.do

bb.do:                                            ; preds = %bb.dn, %.lr.ph192.i.i
  %.0142.i.i = phi i32 [ %i.amf, %bb.dn ], [ %i.amc, %.lr.ph192.i.i ] ; 2 uses
  %.not156.i.i = icmp eq i32 %.0142.i.i, %i.alj
  br i1 %.not156.i.i, label %._crit_edge193.i.i, label %.lr.ph192.i.i, !llvm.loop !134

._crit_edge193.i.i:                               ; preds = %bb.do, %bb.dm
  %i.amg = load ptr, ptr %12, align 8, !tbaa !160
  %i.amh = call ptr @SparseMatrix_coordinate_form_add_entry_(ptr noundef %i.amg, i32 noundef %i.aja, i32 noundef %i.alj, ptr noundef nonnull %i.d, i32 noundef 4) #19 ; 0 uses
  %i.ami = load i32, ptr %i.d, align 4, !tbaa !22
  %i.amj = add nsw i32 %i.ami, 1
  store i32 %i.amj, ptr %i.d, align 4, !tbaa !22
  br label %bb.dp

bb.dp:                                            ; preds = %._crit_edge193.i.i, %.lr.ph195.i.i
  %indvars.iv.next207.i.i = add nuw nsw i64 %indvars.iv206.i.i, 1 ; 2 uses
  %exitcond210.not.i.i = icmp eq i64 %indvars.iv.next207.i.i, %wide.trip.count209.i.i
  br i1 %exitcond210.not.i.i, label %.loopexit173.i.i, label %.lr.ph195.i.i, !llvm.loop !135

._crit_edge199.loopexit.i.i:                      ; preds = %.loopexit173.i.i
  %.pre.i127.i = load ptr, ptr %12, align 8, !tbaa !160
  br label %get_poly_lines.exit.i

get_poly_lines.exit.i:                            ; preds = %._crit_edge199.loopexit.i.i, %._crit_edge177.i.i
  %i.amk = phi ptr [ %.pre.i127.i, %._crit_edge199.loopexit.i.i ], [ %i.agz, %._crit_edge177.i.i ]
  %i.aml = call ptr @SparseMatrix_from_coordinate_format_not_compacted(ptr noundef %i.amk) #19
  %i.amm = load ptr, ptr %12, align 8, !tbaa !160
  call void @SparseMatrix_delete(ptr noundef %i.amm) #19
  store ptr %i.aml, ptr %12, align 8, !tbaa !160
  call void @free(ptr noundef %i.agy) #19
  call void @free(ptr noundef %i.agw) #19
  call void @free(ptr noundef %i.agx) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  %i.amn = load i32, ptr %i.aah, align 8, !tbaa !17 ; 5 uses
  %i.amo = load ptr, ptr %i.abv, align 8, !tbaa !32 ; 5 uses
  %i.amp = load ptr, ptr %i.abx, align 8, !tbaa !33 ; 2 uses
  %i.amq = load ptr, ptr %i.agt, align 8, !tbaa !34 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  %i.amr = getelementptr inbounds nuw i8, ptr %i.aah, i64 8
  %i.ams = load i64, ptr %i.amr, align 8, !tbaa !152 ; 2 uses
  %i.amt = shl i64 %i.ams, 1                      ; 4 uses
  %.not.i.i.i = icmp eq i64 %i.amt, 0
  br i1 %.not.i.i.i, label %.thread.i.i.i, label %bb.dq

.thread.i.i.i:                                    ; preds = %get_poly_lines.exit.i
  %i.amu = call noalias ptr @calloc(i64 noundef 0, i64 noundef 4) #22
  br label %gv_calloc.exit.i.i

bb.dq:                                            ; preds = %get_poly_lines.exit.i
  %mul.ov.i.i130.i = icmp ugt i64 %i.amt, 4611686018427387903
  br i1 %mul.ov.i.i130.i, label %bb.dr, label %bb.ds

bb.dr:                                            ; preds = %bb.dq
  %i.amv = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.amw = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.amv, ptr noundef nonnull @.str.28, i64 noundef %i.amt, i64 noundef 4) #20 ; 0 uses
  call fastcc void @graphviz_exit() #21
  unreachable

bb.ds:                                            ; preds = %bb.dq
  %i.amx = call noalias ptr @calloc(i64 noundef %i.amt, i64 noundef 4) #22 ; 2 uses
  %i.amy = icmp eq ptr %i.amx, null
  br i1 %i.amy, label %bb.dt, label %gv_calloc.exit.i.i

bb.dt:                                            ; preds = %bb.ds
  %i.amz = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.ana = shl i64 %i.ams, 3
  %i.anb = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.amz, ptr noundef nonnull @.str.29, i64 noundef %i.ana) #20 ; 0 uses
  call fastcc void @graphviz_exit() #21
  unreachable

gv_calloc.exit.i.i:                               ; preds = %bb.ds, %.thread.i.i.i
  %i.anc = phi ptr [ %i.amu, %.thread.i.i.i ], [ %i.amx, %bb.ds ] ; 23 uses
  %i.and = call ptr @SparseMatrix_new(i32 noundef %i.amn, i32 noundef %i.amn, i64 noundef 1, i32 noundef 4, i32 noundef 1) #19 ; 2 uses
  store i32 0, ptr %i.b, align 4, !tbaa !22
  store i32 0, ptr %i.c, align 4, !tbaa !22
  %i.ane = icmp sgt i32 %i.amn, 0
  br i1 %i.ane, label %.lr.ph460.i.i, label %.thread.i420.i.i

.lr.ph460.i.i:                                    ; preds = %gv_calloc.exit.i.i
  %i.anf = zext nneg i32 %i.amn to i64
  %i.ang = getelementptr inbounds nuw [4 x i8], ptr %i.amo, i64 %i.anf
  br label %bb.du

.loopexit.i138.i:                                 ; preds = %bb.dy, %bb.du
  %i.anh = phi i32 [ %i.anj, %bb.du ], [ %i.aph, %bb.dy ] ; 4 uses
  %.1394.lcssa.i.i = phi ptr [ %.0393459.i.i, %bb.du ], [ %.2395.i.i, %bb.dy ] ; 3 uses
  %.lcssa454.i.i = phi i32 [ %i.ano, %bb.du ], [ %i.apj, %bb.dy ] ; 3 uses
  store i32 %.lcssa454.i.i, ptr %i.c, align 4, !tbaa !22
  %i.ani = icmp slt i32 %.lcssa454.i.i, %i.amn
  br i1 %i.ani, label %bb.du, label %._crit_edge.i.i, !llvm.loop !136

bb.du:                                            ; preds = %.loopexit.i138.i, %.lr.ph460.i.i
  %i.anj = phi i32 [ 0, %.lr.ph460.i.i ], [ %i.anh, %.loopexit.i138.i ] ; 2 uses
  %.0393459.i.i = phi ptr [ %i.and, %.lr.ph460.i.i ], [ %.1394.lcssa.i.i, %.loopexit.i138.i ] ; 2 uses
  %i.ank = phi i32 [ 0, %.lr.ph460.i.i ], [ %.lcssa454.i.i, %.loopexit.i138.i ] ; 3 uses
  %i.anl = sext i32 %i.ank to i64
  %i.anm = getelementptr inbounds [4 x i8], ptr %i.amo, i64 %i.anl
  %i.ann = load i32, ptr %i.anm, align 4, !tbaa !22 ; 2 uses
  %i.ano = add nsw i32 %i.ank, 1                  ; 2 uses
  %i.anp = sext i32 %i.ano to i64
  %i.anq = getelementptr inbounds [4 x i8], ptr %i.amo, i64 %i.anp
  %i.anr = load i32, ptr %i.anq, align 4, !tbaa !22
  %i.ans = icmp slt i32 %i.ann, %i.anr
  br i1 %i.ans, label %.lr.ph.i139.i, label %.loopexit.i138.i

.lr.ph.i139.i:                                    ; preds = %bb.du, %bb.dy
  %i.ant = phi i32 [ %i.apg, %bb.dy ], [ %i.ank, %bb.du ] ; 5 uses
  %i.anu = phi i32 [ %i.aph, %bb.dy ], [ %i.anj, %bb.du ] ; 4 uses
  %.0390456.i.i = phi i32 [ %i.api, %bb.dy ], [ %i.ann, %bb.du ] ; 6 uses
  %.1394455.i.i = phi ptr [ %.2395.i.i, %bb.dy ], [ %.0393459.i.i, %bb.du ] ; 4 uses
  %i.anv = load i32, ptr %i.ang, align 4, !tbaa !22
  %i.anw = load i32, ptr %i.amo, align 4, !tbaa !22
  %i.anx = xor i32 %i.anw, -1
  %i.any = add i32 %i.anv, %i.anx
  %i.anz = icmp slt i32 %.0390456.i.i, %i.any
  br i1 %i.anz, label %bb.dv, label %bb.dy

bb.dv:                                            ; preds = %.lr.ph.i139.i
  %i.aoa = sext i32 %.0390456.i.i to i64          ; 2 uses
  %i.aob = getelementptr inbounds [4 x i8], ptr %i.amp, i64 %i.aoa
  %i.aoc = load i32, ptr %i.aob, align 4, !tbaa !22 ; 6 uses
  %i.aod = icmp sgt i32 %i.ant, %i.aoc
  br i1 %i.aod, label %bb.dw, label %bb.dy

bb.dw:                                            ; preds = %bb.dv
  %i.aoe = add nsw i32 %.0390456.i.i, 1           ; 2 uses
  %i.aof = sext i32 %i.aoe to i64                 ; 2 uses
  %i.aog = getelementptr inbounds [4 x i8], ptr %i.amp, i64 %i.aof
  %i.aoh = load i32, ptr %i.aog, align 4, !tbaa !22
  %i.aoi = icmp eq i32 %i.aoc, %i.aoh
  br i1 %i.aoi, label %bb.dx, label %bb.dy

bb.dx:                                            ; preds = %bb.dw
  %i.aoj = getelementptr inbounds [4 x i8], ptr %i.amq, i64 %i.aoa
  %i.aok = load i32, ptr %i.aoj, align 4, !tbaa !22 ; 2 uses
  %i.aol = getelementptr inbounds [4 x i8], ptr %i.amq, i64 %i.aof
  %i.aom = load i32, ptr %i.aol, align 4, !tbaa !22 ; 2 uses
  %i.aon = shl nsw i32 %i.anu, 1
  %i.aoo = sext i32 %i.aon to i64
  %i.aop = getelementptr inbounds [4 x i8], ptr %i.anc, i64 %i.aoo ; 2 uses
  store i32 %i.aok, ptr %i.aop, align 4, !tbaa !22
  %i.aoq = getelementptr i8, ptr %i.aop, i64 4
  store i32 %i.aom, ptr %i.aoq, align 4, !tbaa !22
  %i.aor = call ptr @SparseMatrix_coordinate_form_add_entry_(ptr noundef %.1394455.i.i, i32 noundef %i.ant, i32 noundef %i.aoc, ptr noundef nonnull %i.b, i32 noundef 4) #19
  %i.aos = load i32, ptr %i.c, align 4, !tbaa !22
  %i.aot = call ptr @SparseMatrix_coordinate_form_add_entry_(ptr noundef %i.aor, i32 noundef %i.aoc, i32 noundef %i.aos, ptr noundef nonnull %i.b, i32 noundef 4) #19
  %i.aou = load i32, ptr %i.b, align 4, !tbaa !22
  %i.aov = add nsw i32 %i.aou, 1                  ; 2 uses
  store i32 %i.aov, ptr %i.b, align 4, !tbaa !22
  %i.aow = shl nsw i32 %i.aov, 1
  %i.aox = sext i32 %i.aow to i64
  %i.aoy = getelementptr inbounds [4 x i8], ptr %i.anc, i64 %i.aox ; 2 uses
  store i32 %i.aom, ptr %i.aoy, align 4, !tbaa !22
  %i.aoz = getelementptr i8, ptr %i.aoy, i64 4
  store i32 %i.aok, ptr %i.aoz, align 4, !tbaa !22
  %i.apa = load i32, ptr %i.c, align 4, !tbaa !22
  %i.apb = call ptr @SparseMatrix_coordinate_form_add_entry_(ptr noundef %i.aot, i32 noundef %i.apa, i32 noundef %i.aoc, ptr noundef nonnull %i.b, i32 noundef 4) #19
  %i.apc = load i32, ptr %i.c, align 4, !tbaa !22
  %i.apd = call ptr @SparseMatrix_coordinate_form_add_entry_(ptr noundef %i.apb, i32 noundef %i.aoc, i32 noundef %i.apc, ptr noundef nonnull %i.b, i32 noundef 4) #19
  %i.ape = load i32, ptr %i.b, align 4, !tbaa !22
  %i.apf = add nsw i32 %i.ape, 1                  ; 2 uses
  store i32 %i.apf, ptr %i.b, align 4, !tbaa !22
  %.pre.i140.i = load i32, ptr %i.c, align 4, !tbaa !22
  br label %bb.dy

bb.dy:                                            ; preds = %bb.dx, %bb.dw, %bb.dv, %.lr.ph.i139.i
  %i.apg = phi i32 [ %.pre.i140.i, %bb.dx ], [ %i.ant, %bb.dw ], [ %i.ant, %bb.dv ], [ %i.ant, %.lr.ph.i139.i ] ; 2 uses
  %i.aph = phi i32 [ %i.apf, %bb.dx ], [ %i.anu, %bb.dw ], [ %i.anu, %bb.dv ], [ %i.anu, %.lr.ph.i139.i ] ; 2 uses
  %.2395.i.i = phi ptr [ %i.apd, %bb.dx ], [ %.1394455.i.i, %bb.dw ], [ %.1394455.i.i, %bb.dv ], [ %.1394455.i.i, %.lr.ph.i139.i ] ; 2 uses
  %.1391.i.i = phi i32 [ %i.aoe, %bb.dx ], [ %.0390456.i.i, %bb.dw ], [ %.0390456.i.i, %bb.dv ], [ %.0390456.i.i, %.lr.ph.i139.i ]
  %i.api = add nsw i32 %.1391.i.i, 1              ; 2 uses
  %i.apj = add nsw i32 %i.apg, 1                  ; 2 uses
  %i.apk = sext i32 %i.apj to i64
  %i.apl = getelementptr inbounds [4 x i8], ptr %i.amo, i64 %i.apk
  %i.apm = load i32, ptr %i.apl, align 4, !tbaa !22
  %i.apn = icmp slt i32 %i.api, %i.apm
  br i1 %i.apn, label %.lr.ph.i139.i, label %.loopexit.i138.i, !llvm.loop !137

._crit_edge.i.i:                                  ; preds = %.loopexit.i138.i
  %i.apo = shl nsw i32 %i.anh, 1
  %i.app = sext i32 %i.apo to i64                 ; 3 uses
  %.not.i417.i.i = icmp eq i32 %i.anh, 0
  br i1 %.not.i417.i.i, label %.thread.i420.i.i, label %bb.dz

.thread.i420.i.i:                                 ; preds = %._crit_edge.i.i, %gv_calloc.exit.i.i
  %.0393.lcssa605.i.i = phi ptr [ %.1394.lcssa.i.i, %._crit_edge.i.i ], [ %i.and, %gv_calloc.exit.i.i ]
  %i.apq = call noalias ptr @calloc(i64 noundef 0, i64 noundef 4) #22
  br label %gv_calloc.exit421.i.i

bb.dz:                                            ; preds = %._crit_edge.i.i
  %mul.ov.i419.i.i = icmp slt i32 %i.anh, 0
  br i1 %mul.ov.i419.i.i, label %bb.ea, label %bb.eb

bb.ea:                                            ; preds = %bb.dz
  %i.apr = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.aps = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.apr, ptr noundef nonnull @.str.28, i64 noundef %i.app, i64 noundef 4) #20 ; 0 uses
  call fastcc void @graphviz_exit() #21
  unreachable

bb.eb:                                            ; preds = %bb.dz
  %i.apt = call noalias ptr @calloc(i64 noundef %i.app, i64 noundef 4) #22 ; 2 uses
  %i.apu = icmp eq ptr %i.apt, null
  br i1 %i.apu, label %bb.ec, label %gv_calloc.exit421.i.i

bb.ec:                                            ; preds = %bb.eb
  %i.apv = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.apw = shl nuw nsw i64 %i.app, 2
  %i.apx = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.apv, ptr noundef nonnull @.str.29, i64 noundef %i.apw) #20 ; 0 uses
  call fastcc void @graphviz_exit() #21
  unreachable

gv_calloc.exit421.i.i:                            ; preds = %bb.eb, %.thread.i420.i.i
  %.0393.lcssa604.i.i = phi ptr [ %.0393.lcssa605.i.i, %.thread.i420.i.i ], [ %.1394.lcssa.i.i, %bb.eb ] ; 2 uses
  %i.apy = phi ptr [ %i.apq, %.thread.i420.i.i ], [ %i.apt, %bb.eb ] ; 18 uses
  %i.apz = call ptr @SparseMatrix_from_coordinate_format_not_compacted(ptr noundef %.0393.lcssa604.i.i) #19 ; 3 uses
  call void @SparseMatrix_delete(ptr noundef %.0393.lcssa604.i.i) #19
  %i.aqa = load i32, ptr %i.b, align 4, !tbaa !22 ; 4 uses
  %i.aqb = sext i32 %i.aqa to i64                 ; 5 uses
  %.not.i422.i.i = icmp eq i32 %i.aqa, 0
  br i1 %.not.i422.i.i, label %.preheader452.thread.i.i, label %bb.ed

bb.ed:                                            ; preds = %gv_calloc.exit421.i.i
  %mul.ov.i424.i.i = icmp slt i32 %i.aqa, 0
  br i1 %mul.ov.i424.i.i, label %bb.ee, label %bb.ef

bb.ee:                                            ; preds = %bb.ed
  %i.aqc = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.aqd = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.aqc, ptr noundef nonnull @.str.28, i64 noundef %i.aqb, i64 noundef 4) #20 ; 0 uses
  call fastcc void @graphviz_exit() #21
  unreachable

bb.ef:                                            ; preds = %bb.ed
  %i.aqe = call noalias ptr @calloc(i64 noundef %i.aqb, i64 noundef 4) #22 ; 3 uses
  %i.aqf = icmp eq ptr %i.aqe, null
  br i1 %i.aqf, label %bb.eg, label %gv_calloc.exit426.i.i

bb.eg:                                            ; preds = %bb.ef
  %i.aqg = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.aqh = shl nuw nsw i64 %i.aqb, 2
  %i.aqi = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.aqg, ptr noundef nonnull @.str.29, i64 noundef %i.aqh) #20 ; 0 uses
  call fastcc void @graphviz_exit() #21
  unreachable

gv_calloc.exit426.i.i:                            ; preds = %bb.ef
  %i.aqj = call noalias ptr @calloc(i64 noundef %i.aqb, i64 noundef 4) #22 ; 3 uses
  %i.aqk = icmp eq ptr %i.aqj, null
  br i1 %i.aqk, label %bb.eh, label %.lr.ph466.preheader.i.i

bb.eh:                                            ; preds = %gv_calloc.exit426.i.i
  %i.aql = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.aqm = shl nuw nsw i64 %i.aqb, 2
  %i.aqn = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.aql, ptr noundef nonnull @.str.29, i64 noundef %i.aqm) #20 ; 0 uses
  call fastcc void @graphviz_exit() #21
  unreachable

.preheader452.thread.i.i:                         ; preds = %gv_calloc.exit421.i.i
  %i.aqo = call noalias ptr @calloc(i64 noundef 0, i64 noundef 4) #22
  %i.aqp = call noalias ptr @calloc(i64 noundef 0, i64 noundef 4) #22
  br label %._crit_edge467.i.i

.lr.ph466.preheader.i.i:                          ; preds = %gv_calloc.exit426.i.i
  %i.aqq = zext nneg i32 %i.aqa to i64
  %i.aqr = shl nuw nsw i64 %i.aqq, 2              ; 2 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.aqe, i8 -1, i64 %i.aqr, i1 false), !tbaa !22
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.aqj, i8 -1, i64 %i.aqr, i1 false), !tbaa !22
  br label %._crit_edge467.i.i

._crit_edge467.i.i:                               ; preds = %.lr.ph466.preheader.i.i, %.preheader452.thread.i.i
  %i.aqs = phi ptr [ %i.aqo, %.preheader452.thread.i.i ], [ %i.aqe, %.lr.ph466.preheader.i.i ] ; 9 uses
  %i.aqt = phi ptr [ %i.aqp, %.preheader452.thread.i.i ], [ %i.aqj, %.lr.ph466.preheader.i.i ] ; 6 uses
  %i.aqu = getelementptr inbounds nuw i8, ptr %i.apz, i64 32
  %i.aqv = load ptr, ptr %i.aqu, align 8, !tbaa !32
  %i.aqw = getelementptr inbounds nuw i8, ptr %i.apz, i64 48
  %i.aqx = load ptr, ptr %i.aqw, align 8, !tbaa !34
  %i.aqy = mul nsw i32 %i.aai, 3
  %i.aqz = sext i32 %i.aqy to i64                 ; 3 uses
  br i1 %.not.i118.i, label %gv_calloc.exit436.i.i, label %bb.ei

bb.ei:                                            ; preds = %._crit_edge467.i.i
  %mul.ov.i434.i.i = icmp slt i32 %i.aai, 0
  br i1 %mul.ov.i434.i.i, label %bb.ej, label %bb.ek

bb.ej:                                            ; preds = %bb.ei
  %i.ara = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.arb = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ara, ptr noundef nonnull @.str.28, i64 noundef %i.aqz, i64 noundef 4) #20 ; 0 uses
  call fastcc void @graphviz_exit() #21
  unreachable

bb.ek:                                            ; preds = %bb.ei
  %i.arc = call noalias ptr @calloc(i64 noundef %i.aqz, i64 noundef 4) #22 ; 12 uses
  %i.ard = icmp eq ptr %i.arc, null
  br i1 %i.ard, label %bb.el, label %.lr.ph470.preheader.i.i

bb.el:                                            ; preds = %bb.ek
  %i.are = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.arf = shl nuw nsw i64 %i.aqz, 2
  %i.arg = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.are, ptr noundef nonnull @.str.29, i64 noundef %i.arf) #20 ; 0 uses
  call fastcc void @graphviz_exit() #21
  unreachable

gv_calloc.exit436.i.i:                            ; preds = %._crit_edge467.i.i
  %i.arh = call noalias ptr @calloc(i64 noundef 0, i64 noundef 4) #22
  br label %._crit_edge471.i.i

.lr.ph470.preheader.i.i:                          ; preds = %bb.ek
  %wide.trip.count538.i.i = zext nneg i32 %i.aai to i64 ; 2 uses
  %xtraiter1415 = and i64 %wide.trip.count538.i.i, 7 ; 3 uses
  %i.ari = icmp ult i32 %i.aai, 8
  br i1 %i.ari, label %.lr.ph470.i.i.epil.preheader, label %.lr.ph470.preheader.i.i.new

.lr.ph470.preheader.i.i.new:                      ; preds = %.lr.ph470.preheader.i.i
  %unroll_iter1419 = and i64 %wide.trip.count538.i.i, 2147483640
  br label %.lr.ph470.i.i

.lr.ph470.i.i:                                    ; preds = %.lr.ph470.i.i, %.lr.ph470.preheader.i.i.new
  %indvars.iv.i131.i = phi i64 [ 0, %.lr.ph470.preheader.i.i.new ], [ %indvars.iv.next.i133.i.7, %.lr.ph470.i.i ] ; 9 uses
  %niter1420 = phi i64 [ 0, %.lr.ph470.preheader.i.i.new ], [ %niter1420.next.7, %.lr.ph470.i.i ]
  %.idx.i132.i = mul nuw nsw i64 %indvars.iv.i131.i, 12
  %i.arj = getelementptr i8, ptr %i.arc, i64 %.idx.i132.i
  %i.ark = getelementptr i8, ptr %i.arj, i64 8
  store i32 0, ptr %i.ark, align 4, !tbaa !22
  %i.arl = mul nuw i64 %indvars.iv.i131.i, 12
  %i.arm = getelementptr i8, ptr %i.arc, i64 %i.arl
  %i.arn = getelementptr i8, ptr %i.arm, i64 20
  store i32 0, ptr %i.arn, align 4, !tbaa !22
  %i.aro = mul nuw i64 %indvars.iv.i131.i, 12
  %i.arp = getelementptr i8, ptr %i.arc, i64 %i.aro
  %i.arq = getelementptr i8, ptr %i.arp, i64 32
  store i32 0, ptr %i.arq, align 4, !tbaa !22
  %i.arr = mul nuw i64 %indvars.iv.i131.i, 12
  %i.ars = getelementptr i8, ptr %i.arc, i64 %i.arr
  %i.art = getelementptr i8, ptr %i.ars, i64 44
  store i32 0, ptr %i.art, align 4, !tbaa !22
  %i.aru = mul nuw i64 %indvars.iv.i131.i, 12
  %i.arv = getelementptr i8, ptr %i.arc, i64 %i.aru
  %i.arw = getelementptr i8, ptr %i.arv, i64 56
  store i32 0, ptr %i.arw, align 4, !tbaa !22
  %i.arx = mul nuw i64 %indvars.iv.i131.i, 12
  %i.ary = getelementptr i8, ptr %i.arc, i64 %i.arx
  %i.arz = getelementptr i8, ptr %i.ary, i64 68
  store i32 0, ptr %i.arz, align 4, !tbaa !22
  %i.asa = mul nuw i64 %indvars.iv.i131.i, 12
  %i.asb = getelementptr i8, ptr %i.arc, i64 %i.asa
  %i.asc = getelementptr i8, ptr %i.asb, i64 80
  store i32 0, ptr %i.asc, align 4, !tbaa !22
  %i.asd = mul nuw i64 %indvars.iv.i131.i, 12
  %i.ase = getelementptr i8, ptr %i.arc, i64 %i.asd
  %i.asf = getelementptr i8, ptr %i.ase, i64 92
  store i32 0, ptr %i.asf, align 4, !tbaa !22
  %indvars.iv.next.i133.i.7 = add nuw nsw i64 %indvars.iv.i131.i, 8 ; 2 uses
  %niter1420.next.7 = add i64 %niter1420, 8       ; 2 uses
  %niter1420.ncmp.7 = icmp eq i64 %niter1420.next.7, %unroll_iter1419
  br i1 %niter1420.ncmp.7, label %._crit_edge471.i.i.loopexit.unr-lcssa, label %.lr.ph470.i.i, !llvm.loop !138

._crit_edge471.i.i.loopexit.unr-lcssa:            ; preds = %.lr.ph470.i.i
  %lcmp.mod1417.not = icmp eq i64 %xtraiter1415, 0
  br i1 %lcmp.mod1417.not, label %._crit_edge471.i.i, label %.lr.ph470.i.i.epil.preheader

.lr.ph470.i.i.epil.preheader:                     ; preds = %._crit_edge471.i.i.loopexit.unr-lcssa, %.lr.ph470.preheader.i.i
  %indvars.iv.i131.i.epil.init = phi i64 [ 0, %.lr.ph470.preheader.i.i ], [ %indvars.iv.next.i133.i.7, %._crit_edge471.i.i.loopexit.unr-lcssa ]
  %lcmp.mod1418 = icmp ne i64 %xtraiter1415, 0
  call void @llvm.assume(i1 %lcmp.mod1418)
  br label %.lr.ph470.i.i.epil

.lr.ph470.i.i.epil:                               ; preds = %.lr.ph470.i.i.epil, %.lr.ph470.i.i.epil.preheader
  %indvars.iv.i131.i.epil = phi i64 [ %indvars.iv.i131.i.epil.init, %.lr.ph470.i.i.epil.preheader ], [ %indvars.iv.next.i133.i.epil, %.lr.ph470.i.i.epil ] ; 2 uses
  %epil.iter1416 = phi i64 [ 0, %.lr.ph470.i.i.epil.preheader ], [ %epil.iter1416.next, %.lr.ph470.i.i.epil ]
  %.idx.i132.i.epil = mul nuw nsw i64 %indvars.iv.i131.i.epil, 12
  %i.asg = getelementptr i8, ptr %i.arc, i64 %.idx.i132.i.epil
  %i.ash = getelementptr i8, ptr %i.asg, i64 8
  store i32 0, ptr %i.ash, align 4, !tbaa !22
  %indvars.iv.next.i133.i.epil = add nuw nsw i64 %indvars.iv.i131.i.epil, 1
  %epil.iter1416.next = add i64 %epil.iter1416, 1 ; 2 uses
  %epil.iter1416.cmp.not = icmp eq i64 %epil.iter1416.next, %xtraiter1415
  br i1 %epil.iter1416.cmp.not, label %._crit_edge471.i.i, label %.lr.ph470.i.i.epil, !llvm.loop !139

._crit_edge471.i.i:                               ; preds = %._crit_edge471.i.i.loopexit.unr-lcssa, %.lr.ph470.i.i.epil, %gv_calloc.exit436.i.i
  %i.asi = phi ptr [ %i.arh, %gv_calloc.exit436.i.i ], [ %i.arc, %.lr.ph470.i.i.epil ], [ %i.arc, %._crit_edge471.i.i.loopexit.unr-lcssa ] ; 6 uses
  %i.asj = call ptr @SparseMatrix_new(i32 noundef range(i32 -2147483647, -2147483648) %.3.in.lcssa.i, i32 noundef %i.aai, i64 noundef 1, i32 noundef 4, i32 noundef 1) #19 ; 2 uses
  store ptr %i.asj, ptr %13, align 8, !tbaa !160
  store i32 0, ptr %i.c, align 4, !tbaa !22
  br i1 %.lcssa1093, label %.lr.ph521.i.i, label %get_polygon_solids.exit.i

.lr.ph521.i.i:                                    ; preds = %._crit_edge471.i.i, %._crit_edge512.i.i
  %.0519.i.i = phi i32 [ %.1.lcssa.i.i, %._crit_edge512.i.i ], [ 0, %._crit_edge471.i.i ] ; 2 uses
  %.0380518.i.i = phi i32 [ %.1381.lcssa.i.i, %._crit_edge512.i.i ], [ 0, %._crit_edge471.i.i ] ; 2 uses
  %.0387517.i.i = phi i32 [ %.1388.lcssa.i.i, %._crit_edge512.i.i ], [ 0, %._crit_edge471.i.i ]
  %storemerge411516.i.i = phi i32 [ %i.bbk, %._crit_edge512.i.i ], [ 0, %._crit_edge471.i.i ] ; 2 uses
  %i.ask = sext i32 %storemerge411516.i.i to i64
  %i.asl = getelementptr inbounds [4 x i8], ptr %i.acv, i64 %i.ask ; 2 uses
  %i.asm = load i32, ptr %i.asl, align 4, !tbaa !22 ; 2 uses
  %i.asn = getelementptr i8, ptr %i.asl, i64 4
  %i.aso = load i32, ptr %i.asn, align 4, !tbaa !22 ; 2 uses
  %i.asp = icmp slt i32 %i.asm, %i.aso
  br i1 %i.asp, label %.lr.ph505.preheader.i.i, label %.preheader451.i.i

.lr.ph505.preheader.i.i:                          ; preds = %.lr.ph521.i.i
  %i.asq = sext i32 %i.asm to i64
  %wide.trip.count547.i.i = sext i32 %i.aso to i64
  br label %.lr.ph505.i.i

.preheader451.i.i:                                ; preds = %same_edge.exit440.thread445.i.i, %.lr.ph521.i.i
  %.1388.lcssa.i.i = phi i32 [ %.0387517.i.i, %.lr.ph521.i.i ], [ %.2389.i.i, %same_edge.exit440.thread445.i.i ] ; 6 uses
  %.1381.lcssa.i.i = phi i32 [ %.0380518.i.i, %.lr.ph521.i.i ], [ %.3383.i.i, %same_edge.exit440.thread445.i.i ]
  %.1.lcssa.i.i = phi i32 [ %.0519.i.i, %.lr.ph521.i.i ], [ %.3.i136.i, %same_edge.exit440.thread445.i.i ]
  %i.asr = shl nsw i32 %.1388.lcssa.i.i, 1        ; 3 uses
  %i.ass = or disjoint i32 %i.asr, 1
  %i.ast = sext i32 %i.ass to i64                 ; 2 uses
  %i.asu = getelementptr inbounds [4 x i8], ptr %i.apy, i64 %i.ast
  %i.asv = load i32, ptr %i.asu, align 4, !tbaa !22 ; 2 uses
  %.not509.i.i = icmp eq i32 %i.asv, %.1388.lcssa.i.i
  br i1 %.not509.i.i, label %._crit_edge512.i.i, label %.lr.ph511.i.i

.lr.ph505.i.i:                                    ; preds = %same_edge.exit440.thread445.i.i, %.lr.ph505.preheader.i.i
  %indvars.iv544.i.i = phi i64 [ %i.asq, %.lr.ph505.preheader.i.i ], [ %indvars.iv.next545.i.i, %same_edge.exit440.thread445.i.i ] ; 2 uses
  %.1503.i.i = phi i32 [ %.0519.i.i, %.lr.ph505.preheader.i.i ], [ %.3.i136.i, %same_edge.exit440.thread445.i.i ] ; 4 uses
  %.1381502.i.i = phi i32 [ %.0380518.i.i, %.lr.ph505.preheader.i.i ], [ %.3383.i.i, %same_edge.exit440.thread445.i.i ] ; 3 uses
  %i.asw = getelementptr inbounds [4 x i8], ptr %i.adf, i64 %indvars.iv544.i.i
  %i.asx = load i32, ptr %i.asw, align 4, !tbaa !22 ; 6 uses
  %i.asy = sext i32 %i.asx to i64
  %i.asz = getelementptr inbounds [4 x i8], ptr %i.aqv, i64 %i.asy ; 2 uses
  %i.ata = load i32, ptr %i.asz, align 4, !tbaa !22 ; 2 uses
  %i.atb = getelementptr i8, ptr %i.asz, i64 4
  %i.atc = load i32, ptr %i.atb, align 4, !tbaa !22 ; 2 uses
  %i.atd = icmp slt i32 %i.ata, %i.atc
  br i1 %i.atd, label %.lr.ph476.preheader.i.i, label %.lr.ph505.i.._crit_edge477.thread.i_crit_edge.i

.lr.ph505.i.._crit_edge477.thread.i_crit_edge.i:  ; preds = %.lr.ph505.i.i
  %.pre215.i = shl nsw i32 %.1381502.i.i, 1       ; 2 uses
  %.pre217.i = sext i32 %.pre215.i to i64         ; 2 uses
  %.pre219.i = sext i32 %.1381502.i.i to i64
  %.phi.trans.insert890 = getelementptr inbounds [4 x i8], ptr %i.anc, i64 %.pre217.i
  %.pre891 = load i32, ptr %.phi.trans.insert890, align 4, !tbaa !22
  br label %._crit_edge477.thread.i.i

.lr.ph476.preheader.i.i:                          ; preds = %.lr.ph505.i.i
  %i.ate = sext i32 %i.ata to i64
  %wide.trip.count542.i.i = sext i32 %i.atc to i64
  br label %.lr.ph476.i.i

.lr.ph476.i.i:                                    ; preds = %.lr.ph476.i.i, %.lr.ph476.preheader.i.i
  %indvars.iv539.i.i = phi i64 [ %i.ate, %.lr.ph476.preheader.i.i ], [ %indvars.iv.next540.i.i, %.lr.ph476.i.i ] ; 2 uses
  %.0384474.i.i = phi i32 [ -1, %.lr.ph476.preheader.i.i ], [ %.1385.i.i, %.lr.ph476.i.i ]
  %i.atf = getelementptr inbounds [4 x i8], ptr %i.aqx, i64 %indvars.iv539.i.i
  %i.atg = load i32, ptr %i.atf, align 4, !tbaa !22 ; 5 uses
  %i.ath = shl nsw i32 %i.atg, 1                  ; 2 uses
  %i.ati = sext i32 %i.ath to i64                 ; 2 uses
  %i.atj = getelementptr inbounds [4 x i8], ptr %i.anc, i64 %i.ati
  %i.atk = load i32, ptr %i.atj, align 4, !tbaa !22 ; 2 uses
  %i.atl = mul nsw i32 %i.atk, 3                  ; 2 uses
  %i.atm = sext i32 %i.atl to i64
  %i.atn = getelementptr [4 x i8], ptr %i.asi, i64 %i.atm
  %i.ato = getelementptr i8, ptr %i.atn, i64 8    ; 3 uses
  %i.atp = load i32, ptr %i.ato, align 4, !tbaa !22
  %i.atq = srem i32 %i.atp, 2
  %i.atr = add nsw i32 %i.atq, %i.atl
  %i.ats = sext i32 %i.atr to i64
  %i.att = getelementptr inbounds [4 x i8], ptr %i.asi, i64 %i.ats
  store i32 %i.atg, ptr %i.att, align 4, !tbaa !22
  %i.atu = load i32, ptr %i.ato, align 4, !tbaa !22
  %i.atv = add nsw i32 %i.atu, 1
  store i32 %i.atv, ptr %i.ato, align 4, !tbaa !22
  %i.atw = sext i32 %i.atg to i64                 ; 3 uses
  %i.atx = getelementptr inbounds [4 x i8], ptr %i.aqs, i64 %i.atw
  %i.aty = load i32, ptr %i.atx, align 4, !tbaa !22
  %.not416.i.i = icmp eq i32 %i.aty, -1
  %.1385.i.i = select i1 %.not416.i.i, i32 %.0384474.i.i, i32 %i.atg ; 9 uses
  %i.atz = getelementptr inbounds [4 x i8], ptr %i.aqt, i64 %i.atw
  store i32 %i.asx, ptr %i.atz, align 4, !tbaa !22
  %indvars.iv.next540.i.i = add nsw i64 %indvars.iv539.i.i, 1 ; 2 uses
  %exitcond543.not.i.i = icmp eq i64 %indvars.iv.next540.i.i, %wide.trip.count542.i.i
  br i1 %exitcond543.not.i.i, label %._crit_edge477.i.i, label %.lr.ph476.i.i, !llvm.loop !140

._crit_edge477.i.i:                               ; preds = %.lr.ph476.i.i
  %i.aua = icmp eq i32 %.1385.i.i, -1
  br i1 %i.aua, label %._crit_edge477.thread.i.i, label %.preheader.i137.i

.preheader.i137.i:                                ; preds = %._crit_edge477.i.i
  %i.aub = sext i32 %.1385.i.i to i64
  %i.auc = getelementptr inbounds [4 x i8], ptr %i.aqt, i64 %i.aub
  %i.aud = load i32, ptr %i.auc, align 4, !tbaa !22
  %i.aue = icmp eq i32 %i.aud, %i.asx
  br i1 %i.aue, label %.lr.ph481.i.i, label %._crit_edge482.i.i

._crit_edge477.thread.i.i:                        ; preds = %._crit_edge477.i.i, %.lr.ph505.i.._crit_edge477.thread.i_crit_edge.i
  %i.auf = phi i32 [ %.pre891, %.lr.ph505.i.._crit_edge477.thread.i_crit_edge.i ], [ %i.atk, %._crit_edge477.i.i ] ; 3 uses
  %.pre-phi220.i = phi i64 [ %.pre219.i, %.lr.ph505.i.._crit_edge477.thread.i_crit_edge.i ], [ %i.atw, %._crit_edge477.i.i ]
  %.pre-phi218.i = phi i64 [ %.pre217.i, %.lr.ph505.i.._crit_edge477.thread.i_crit_edge.i ], [ %i.ati, %._crit_edge477.i.i ]
  %.pre-phi216.i = phi i32 [ %.pre215.i, %.lr.ph505.i.._crit_edge477.thread.i_crit_edge.i ], [ %i.ath, %._crit_edge477.i.i ]
  %.2382.lcssa609.i.i = phi i32 [ %.1381502.i.i, %.lr.ph505.i.._crit_edge477.thread.i_crit_edge.i ], [ %i.atg, %._crit_edge477.i.i ] ; 7 uses
  %i.aug = or disjoint i32 %.pre-phi216.i, 1
  %i.auh = sext i32 %i.aug to i64                 ; 2 uses
  %i.aui = getelementptr inbounds [4 x i8], ptr %i.apy, i64 %i.auh
  store i32 %.2382.lcssa609.i.i, ptr %i.aui, align 4, !tbaa !22
  %i.auj = getelementptr inbounds [4 x i8], ptr %i.apy, i64 %.pre-phi218.i ; 2 uses
  store i32 %.2382.lcssa609.i.i, ptr %i.auj, align 4, !tbaa !22
  %i.auk = getelementptr inbounds [4 x i8], ptr %i.aqs, i64 %.pre-phi220.i
  store i32 1, ptr %i.auk, align 4, !tbaa !22
  %i.aul = getelementptr inbounds [4 x i8], ptr %i.anc, i64 %i.auh
  %i.aum = load i32, ptr %i.aul, align 4, !tbaa !22 ; 2 uses
  %.not415495.i.i = icmp eq i32 %i.aum, %i.auf
  br i1 %.not415495.i.i, label %same_edge.exit440.thread445.i.i, label %.lr.ph500.i.i

.lr.ph500.i.i:                                    ; preds = %._crit_edge477.thread.i.i, %.thread.i529
  %.0370498.i.i = phi i32 [ %.0368.i.i, %.thread.i529 ], [ %i.aum, %._crit_edge477.thread.i.i ] ; 5 uses
  %.0372497.i.i = phi i32 [ %.0370498.i.i, %.thread.i529 ], [ %i.auf, %._crit_edge477.thread.i.i ] ; 2 uses
  %.0376496.i.i = phi i32 [ %.0374.i289.i, %.thread.i529 ], [ %.2382.lcssa609.i.i, %._crit_edge477.thread.i.i ] ; 2 uses
  %i.aun = mul nsw i32 %.0370498.i.i, 3
  %i.auo = sext i32 %i.aun to i64
  %i.aup = getelementptr inbounds [4 x i8], ptr %i.asi, i64 %i.auo ; 2 uses
  %i.auq = load i32, ptr %i.aup, align 4, !tbaa !22 ; 3 uses
  %i.aur = shl nsw i32 %i.auq, 1
  %i.aus = sext i32 %i.aur to i64                 ; 3 uses
  %i.aut = getelementptr inbounds [4 x i8], ptr %i.anc, i64 %i.aus ; 3 uses
  %i.auu = load i32, ptr %i.aut, align 4, !tbaa !22 ; 3 uses
  %i.auv = icmp eq i32 %i.auu, %.0372497.i.i
  br i1 %i.auv, label %bb.em, label %bb.en

bb.em:                                            ; preds = %.lr.ph500.i.i
  %i.auw = getelementptr i8, ptr %i.aut, i64 4
  %i.aux = load i32, ptr %i.auw, align 4, !tbaa !22
  %i.auy = icmp eq i32 %i.aux, %.0370498.i.i
  br i1 %i.auy, label %bb.ep, label %bb.en

bb.en:                                            ; preds = %bb.em, %.lr.ph500.i.i
  %i.auz = icmp eq i32 %i.auu, %.0370498.i.i
  br i1 %i.auz, label %bb.eo, label %bb.eq

bb.eo:                                            ; preds = %bb.en
  %i.ava = getelementptr i8, ptr %i.aut, i64 4
  %i.avb = load i32, ptr %i.ava, align 4, !tbaa !22 ; 2 uses
  %i.avc = icmp eq i32 %i.avb, %.0372497.i.i
  br i1 %i.avc, label %bb.ep, label %.thread.i529

bb.ep:                                            ; preds = %bb.eo, %bb.em
  %i.avd = getelementptr i8, ptr %i.aup, i64 4
  %i.ave = load i32, ptr %i.avd, align 4, !tbaa !22 ; 2 uses
  %.pre552.i.i = shl nsw i32 %i.ave, 1
  %.pre553.i.i = sext i32 %.pre552.i.i to i64     ; 2 uses
  %.phi.trans.insert212.i = getelementptr inbounds [4 x i8], ptr %i.anc, i64 %.pre553.i.i
  %.pre213.i = load i32, ptr %.phi.trans.insert212.i, align 4, !tbaa !22
  br label %bb.eq

bb.eq:                                            ; preds = %bb.ep, %bb.en
  %i.avf = phi i32 [ %i.auu, %bb.en ], [ %.pre213.i, %bb.ep ] ; 2 uses
  %.pre-phi554.i.i = phi i64 [ %i.aus, %bb.en ], [ %.pre553.i.i, %bb.ep ] ; 3 uses
  %.0374.i.i = phi i32 [ %i.auq, %bb.en ], [ %i.ave, %bb.ep ] ; 2 uses
  %i.avg = icmp eq i32 %i.avf, %.0370498.i.i
  br i1 %i.avg, label %..thread.i529_crit_edge, label %.thread.i529

..thread.i529_crit_edge:                          ; preds = %bb.eq
  %.phi.trans.insert892 = getelementptr inbounds [4 x i8], ptr %i.anc, i64 %.pre-phi554.i.i
  %.phi.trans.insert893 = getelementptr i8, ptr %.phi.trans.insert892, i64 4
  %.pre894 = load i32, ptr %.phi.trans.insert893, align 4, !tbaa !22
  br label %.thread.i529

.thread.i529:                                     ; preds = %bb.eo, %..thread.i529_crit_edge, %bb.eq
  %.0374.i289.i = phi i32 [ %.0374.i.i, %bb.eq ], [ %.0374.i.i, %..thread.i529_crit_edge ], [ %i.auq, %bb.eo ] ; 4 uses
  %.pre-phi554.i288.i = phi i64 [ %.pre-phi554.i.i, %bb.eq ], [ %.pre-phi554.i.i, %..thread.i529_crit_edge ], [ %i.aus, %bb.eo ]
  %.0368.i.i = phi i32 [ %i.avf, %bb.eq ], [ %.pre894, %..thread.i529_crit_edge ], [ %i.avb, %bb.eo ] ; 2 uses
  %i.avh = shl nsw i32 %.0376496.i.i, 1
  %i.avi = sext i32 %i.avh to i64
  %i.avj = getelementptr [4 x i8], ptr %i.apy, i64 %i.avi
  %i.avk = getelementptr i8, ptr %i.avj, i64 4    ; 2 uses
  %i.avl = load i32, ptr %i.avk, align 4, !tbaa !22
  %i.avm = getelementptr [4 x i8], ptr %i.apy, i64 %.pre-phi554.i288.i ; 2 uses
  %i.avn = getelementptr i8, ptr %i.avm, i64 4
  store i32 %i.avl, ptr %i.avn, align 4, !tbaa !22
  store i32 %.0376496.i.i, ptr %i.avm, align 4, !tbaa !22
  store i32 %.0374.i289.i, ptr %i.avk, align 4, !tbaa !22
  store i32 %.0374.i289.i, ptr %i.auj, align 4, !tbaa !22
  %i.avo = sext i32 %.0374.i289.i to i64
  %i.avp = getelementptr inbounds [4 x i8], ptr %i.aqs, i64 %i.avo
  store i32 1, ptr %i.avp, align 4, !tbaa !22
  %.not415.i.i = icmp eq i32 %.0368.i.i, %i.auf
  br i1 %.not415.i.i, label %same_edge.exit440.thread445.i.i, label %.lr.ph500.i.i, !llvm.loop !141

.lr.ph481.i.i:                                    ; preds = %.preheader.i137.i, %.lr.ph481.i.i
  %.1377480.i.i = phi i32 [ %i.avu, %.lr.ph481.i.i ], [ %.1385.i.i, %.preheader.i137.i ]
  %i.avq = shl nsw i32 %.1377480.i.i, 1
  %i.avr = sext i32 %i.avq to i64
  %i.avs = getelementptr [4 x i8], ptr %i.apy, i64 %i.avr
  %i.avt = getelementptr i8, ptr %i.avs, i64 4
  %i.avu = load i32, ptr %i.avt, align 4, !tbaa !22 ; 3 uses
  %i.avv = sext i32 %i.avu to i64
  %i.avw = getelementptr inbounds [4 x i8], ptr %i.aqt, i64 %i.avv
  %i.avx = load i32, ptr %i.avw, align 4, !tbaa !22
  %i.avy = icmp eq i32 %i.avx, %i.asx
  br i1 %i.avy, label %.lr.ph481.i.i, label %._crit_edge482.i.i, !llvm.loop !142

._crit_edge482.i.i:                               ; preds = %.lr.ph481.i.i, %.preheader.i137.i
  %.1377.lcssa.i.i = phi i32 [ %.1385.i.i, %.preheader.i137.i ], [ %i.avu, %.lr.ph481.i.i ]
  %i.avz = shl nsw i32 %.1377.lcssa.i.i, 1
  %i.awa = sext i32 %i.avz to i64
  %i.awb = getelementptr inbounds [4 x i8], ptr %i.apy, i64 %i.awa
  %i.awc = load i32, ptr %i.awb, align 4, !tbaa !22 ; 5 uses
  %i.awd = sext i32 %i.awc to i64                 ; 2 uses
  %i.awe = getelementptr inbounds [4 x i8], ptr %i.aqt, i64 %i.awd
  %i.awf = load i32, ptr %i.awe, align 4, !tbaa !22
  %i.awg = icmp eq i32 %i.awf, %i.asx
  br i1 %i.awg, label %.lr.ph486.i.i, label %._crit_edge482.._crit_edge487_crit_edge.i.i

._crit_edge482.._crit_edge487_crit_edge.i.i:      ; preds = %._crit_edge482.i.i
  %.pre563.i.i = shl nsw i32 %i.awc, 1
  %.pre565.i.i = shl nsw i32 %.1503.i.i, 1
  %.pre567.i.i = sext i32 %.pre565.i.i to i64
  br label %._crit_edge487.i.i

.lr.ph486.i.i:                                    ; preds = %._crit_edge482.i.i, %.lr.ph486.i.i
  %i.awh = phi i64 [ %i.aww, %.lr.ph486.i.i ], [ %i.awd, %._crit_edge482.i.i ]
  %.2378484.i.i = phi i32 [ %i.awo, %.lr.ph486.i.i ], [ %i.awc, %._crit_edge482.i.i ] ; 4 uses
  %i.awi = getelementptr inbounds [4 x i8], ptr %i.aqs, i64 %i.awh
  store i32 -1, ptr %i.awi, align 4, !tbaa !22
  %i.awj = shl nsw i32 %.2378484.i.i, 1
  %i.awk = sext i32 %i.awj to i64                 ; 2 uses
  %i.awl = getelementptr [4 x i8], ptr %i.apy, i64 %i.awk ; 3 uses
  %i.awm = getelementptr i8, ptr %i.awl, i64 4    ; 2 uses
  %i.awn = load i32, ptr %i.awm, align 4, !tbaa !22 ; 2 uses
  %i.awo = load i32, ptr %i.awl, align 4, !tbaa !22 ; 5 uses
  store i32 %.2378484.i.i, ptr %i.awm, align 4, !tbaa !22
  store i32 %.2378484.i.i, ptr %i.awl, align 4, !tbaa !22
  %i.awp = shl nsw i32 %i.awo, 1                  ; 2 uses
  %i.awq = sext i32 %i.awp to i64
  %i.awr = getelementptr [4 x i8], ptr %i.apy, i64 %i.awq
  %i.aws = getelementptr i8, ptr %i.awr, i64 4
  store i32 %i.awn, ptr %i.aws, align 4, !tbaa !22
  %i.awt = shl nsw i32 %i.awn, 1
  %i.awu = sext i32 %i.awt to i64
  %i.awv = getelementptr inbounds [4 x i8], ptr %i.apy, i64 %i.awu
  store i32 %i.awo, ptr %i.awv, align 4, !tbaa !22
  %i.aww = sext i32 %i.awo to i64                 ; 2 uses
  %i.awx = getelementptr inbounds [4 x i8], ptr %i.aqt, i64 %i.aww
  %i.awy = load i32, ptr %i.awx, align 4, !tbaa !22
  %i.awz = icmp eq i32 %i.awy, %i.asx
  br i1 %i.awz, label %.lr.ph486.i.i, label %._crit_edge487.i.i, !llvm.loop !143

._crit_edge487.i.i:                               ; preds = %.lr.ph486.i.i, %._crit_edge482.._crit_edge487_crit_edge.i.i
  %.pre-phi568.i.i = phi i64 [ %.pre567.i.i, %._crit_edge482.._crit_edge487_crit_edge.i.i ], [ %i.awk, %.lr.ph486.i.i ]
  %.pre-phi564.i.i = phi i32 [ %.pre563.i.i, %._crit_edge482.._crit_edge487_crit_edge.i.i ], [ %i.awp, %.lr.ph486.i.i ]
  %.2378.lcssa.i.i = phi i32 [ %i.awc, %._crit_edge482.._crit_edge487_crit_edge.i.i ], [ %i.awo, %.lr.ph486.i.i ] ; 5 uses
  %.2.lcssa.i.i = phi i32 [ %.1503.i.i, %._crit_edge482.._crit_edge487_crit_edge.i.i ], [ %.2378484.i.i, %.lr.ph486.i.i ] ; 4 uses
  %i.axa = or disjoint i32 %.pre-phi564.i.i, 1
  %i.axb = sext i32 %i.axa to i64                 ; 2 uses
  %i.axc = getelementptr inbounds [4 x i8], ptr %i.apy, i64 %i.axb ; 2 uses
  %i.axd = load i32, ptr %i.axc, align 4, !tbaa !22 ; 2 uses
  %i.axe = getelementptr inbounds [4 x i8], ptr %i.anc, i64 %i.axb
  %i.axf = load i32, ptr %i.axe, align 4, !tbaa !22
  %i.axg = shl nsw i32 %i.axd, 1
  %i.axh = sext i32 %i.axg to i64                 ; 2 uses
  %i.axi = getelementptr inbounds [4 x i8], ptr %i.anc, i64 %i.axh
  %i.axj = load i32, ptr %i.axi, align 4, !tbaa !22 ; 2 uses
  %i.axk = mul nsw i32 %i.axf, 3
  %i.axl = sext i32 %i.axk to i64
  %i.axm = getelementptr inbounds [4 x i8], ptr %i.asi, i64 %i.axl ; 2 uses
  %i.axn = load i32, ptr %i.axm, align 4, !tbaa !22 ; 3 uses
  %i.axo = shl nsw i32 %i.axn, 1                  ; 3 uses
  %i.axp = sext i32 %i.axo to i64                 ; 3 uses
  %i.axq = getelementptr inbounds [4 x i8], ptr %i.anc, i64 %i.axp ; 3 uses
  %i.axr = load i32, ptr %i.axq, align 4, !tbaa !22 ; 4 uses
  %i.axs = getelementptr inbounds [4 x i8], ptr %i.anc, i64 %.pre-phi568.i.i ; 3 uses
  %i.axt = load i32, ptr %i.axs, align 4, !tbaa !22 ; 2 uses
  %i.axu = icmp eq i32 %i.axr, %i.axt
  br i1 %i.axu, label %bb.er, label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge487.i.i
  %.phi.trans.insert.i.i.i = getelementptr i8, ptr %i.axs, i64 4
  %.pre.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i, align 4, !tbaa !22
  br label %bb.es

bb.er:                                            ; preds = %._crit_edge487.i.i
  %i.axv = getelementptr i8, ptr %i.axq, i64 4
  %i.axw = load i32, ptr %i.axv, align 4, !tbaa !22
  %i.axx = getelementptr i8, ptr %i.axs, i64 4
  %i.axy = load i32, ptr %i.axx, align 4, !tbaa !22 ; 2 uses
  %i.axz = icmp eq i32 %i.axw, %i.axy
  br i1 %i.axz, label %same_edge.exit.thread442.i.i, label %bb.es

bb.es:                                            ; preds = %bb.er, %._crit_edge.i.i.i
  %i.aya = phi i32 [ %.pre.i.i.i, %._crit_edge.i.i.i ], [ %i.axy, %bb.er ]
  %i.ayb = icmp eq i32 %i.axr, %i.aya
  br i1 %i.ayb, label %same_edge.exit.i.i, label %same_edge.exit.thread.i.i

same_edge.exit.i.i:                               ; preds = %bb.es
  %i.ayc = getelementptr i8, ptr %i.axq, i64 4
  %i.ayd = load i32, ptr %i.ayc, align 4, !tbaa !22
  %.not448.i.i = icmp eq i32 %i.ayd, %i.axt
  br i1 %.not448.i.i, label %same_edge.exit.thread442.i.i, label %same_edge.exit.thread.i.i

same_edge.exit.thread442.i.i:                     ; preds = %same_edge.exit.i.i, %bb.er
  %i.aye = getelementptr i8, ptr %i.axm, i64 4
  %i.ayf = load i32, ptr %i.aye, align 4, !tbaa !22 ; 2 uses
  %.pre555.i.i = shl nsw i32 %i.ayf, 1            ; 2 uses
  %.pre557.i.i = sext i32 %.pre555.i.i to i64     ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds [4 x i8], ptr %i.anc, i64 %.pre557.i.i
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !22
  br label %same_edge.exit.thread.i.i

same_edge.exit.thread.i.i:                        ; preds = %same_edge.exit.thread442.i.i, %same_edge.exit.i.i, %bb.es
  %i.ayg = phi i32 [ %i.axr, %bb.es ], [ %i.axr, %same_edge.exit.i.i ], [ %.pre.i, %same_edge.exit.thread442.i.i ] ; 3 uses
  %.pre-phi558.i.i = phi i64 [ %i.axp, %bb.es ], [ %i.axp, %same_edge.exit.i.i ], [ %.pre557.i.i, %same_edge.exit.thread442.i.i ] ; 2 uses
  %.pre-phi556.i.i = phi i32 [ %i.axo, %bb.es ], [ %i.axo, %same_edge.exit.i.i ], [ %.pre555.i.i, %same_edge.exit.thread442.i.i ]
  %.3379.i.i = phi i32 [ %i.axn, %bb.es ], [ %i.axn, %same_edge.exit.i.i ], [ %i.ayf, %same_edge.exit.thread442.i.i ] ; 4 uses
  store i32 %.3379.i.i, ptr %i.axc, align 4, !tbaa !22
  %i.ayh = getelementptr inbounds [4 x i8], ptr %i.apy, i64 %.pre-phi558.i.i
  store i32 %.2378.lcssa.i.i, ptr %i.ayh, align 4, !tbaa !22
  %i.ayi = getelementptr inbounds [4 x i8], ptr %i.apy, i64 %i.axh ; 2 uses
  store i32 %.3379.i.i, ptr %i.ayi, align 4, !tbaa !22
  %i.ayj = or disjoint i32 %.pre-phi556.i.i, 1
  %i.ayk = sext i32 %i.ayj to i64                 ; 2 uses
  %i.ayl = getelementptr inbounds [4 x i8], ptr %i.apy, i64 %i.ayk
  store i32 %i.axd, ptr %i.ayl, align 4, !tbaa !22
  %i.aym = getelementptr inbounds [4 x i8], ptr %i.anc, i64 %.pre-phi558.i.i ; 2 uses
  %i.ayn = shl nsw i32 %i.awc, 1
  %i.ayo = sext i32 %i.ayn to i64
  %i.ayp = getelementptr inbounds [4 x i8], ptr %i.anc, i64 %i.ayo ; 3 uses
  %i.ayq = load i32, ptr %i.ayp, align 4, !tbaa !22 ; 2 uses
  %i.ayr = icmp eq i32 %i.ayg, %i.ayq
  br i1 %i.ayr, label %bb.et, label %._crit_edge.i437.i.i

._crit_edge.i437.i.i:                             ; preds = %same_edge.exit.thread.i.i
  %.phi.trans.insert.i438.i.i = getelementptr i8, ptr %i.ayp, i64 4
  %.pre.i439.i.i = load i32, ptr %.phi.trans.insert.i438.i.i, align 4, !tbaa !22
  br label %bb.eu

bb.et:                                            ; preds = %same_edge.exit.thread.i.i
  %i.ays = getelementptr i8, ptr %i.aym, i64 4
  %i.ayt = load i32, ptr %i.ays, align 4, !tbaa !22
  %i.ayu = getelementptr i8, ptr %i.ayp, i64 4
  %i.ayv = load i32, ptr %i.ayu, align 4, !tbaa !22 ; 2 uses
  %i.ayw = icmp eq i32 %i.ayt, %i.ayv
  br i1 %i.ayw, label %same_edge.exit440.thread445.i.i, label %bb.eu

bb.eu:                                            ; preds = %bb.et, %._crit_edge.i437.i.i
  %i.ayx = phi i32 [ %.pre.i439.i.i, %._crit_edge.i437.i.i ], [ %i.ayv, %bb.et ]
  %i.ayy = icmp eq i32 %i.ayg, %i.ayx
  br i1 %i.ayy, label %same_edge.exit440.i.i, label %.same_edge.exit440.thread_crit_edge.i.i

.same_edge.exit440.thread_crit_edge.i.i:          ; preds = %bb.eu
  %.phi.trans.insert.i.i = getelementptr inbounds [4 x i8], ptr %i.anc, i64 %i.ayk
  %.pre549.i.i = load i32, ptr %.phi.trans.insert.i.i, align 4, !tbaa !22
  br label %same_edge.exit440.thread.i.i

same_edge.exit440.i.i:                            ; preds = %bb.eu
  %i.ayz = getelementptr i8, ptr %i.aym, i64 4
  %i.aza = load i32, ptr %i.ayz, align 4, !tbaa !22 ; 2 uses
  %.not449.i.i = icmp eq i32 %i.aza, %i.ayq
  br i1 %.not449.i.i, label %same_edge.exit440.thread445.i.i, label %same_edge.exit440.thread.i.i

same_edge.exit440.thread.i.i:                     ; preds = %same_edge.exit440.i.i, %.same_edge.exit440.thread_crit_edge.i.i
  %i.azb = phi i32 [ %.pre549.i.i, %.same_edge.exit440.thread_crit_edge.i.i ], [ %i.aza, %same_edge.exit440.i.i ] ; 2 uses
  %i.azc = sext i32 %.3379.i.i to i64
  %i.azd = getelementptr inbounds [4 x i8], ptr %i.aqs, i64 %i.azc
  store i32 1, ptr %i.azd, align 4, !tbaa !22
  %.not414490.i.i = icmp eq i32 %i.azb, %i.axj
  br i1 %.not414490.i.i, label %same_edge.exit440.thread445.i.i, label %.lr.ph494.i.i

.lr.ph494.i.i:                                    ; preds = %same_edge.exit440.thread.i.i, %.thread291.i
  %.1371493.i.i = phi i32 [ %.1369.i.i, %.thread291.i ], [ %i.azb, %same_edge.exit440.thread.i.i ] ; 5 uses
  %.1373492.i.i = phi i32 [ %.1371493.i.i, %.thread291.i ], [ %i.ayg, %same_edge.exit440.thread.i.i ] ; 2 uses
  %.4491.i.i = phi i32 [ %.1375.i296.i, %.thread291.i ], [ %.3379.i.i, %same_edge.exit440.thread.i.i ] ; 2 uses
  %i.aze = mul nsw i32 %.1371493.i.i, 3
  %i.azf = sext i32 %i.aze to i64
  %i.azg = getelementptr inbounds [4 x i8], ptr %i.asi, i64 %i.azf ; 2 uses
  %i.azh = load i32, ptr %i.azg, align 4, !tbaa !22 ; 3 uses
  %i.azi = shl nsw i32 %i.azh, 1
  %i.azj = sext i32 %i.azi to i64                 ; 3 uses
  %i.azk = getelementptr inbounds [4 x i8], ptr %i.anc, i64 %i.azj ; 3 uses
  %i.azl = load i32, ptr %i.azk, align 4, !tbaa !22 ; 3 uses
  %i.azm = icmp eq i32 %i.azl, %.1373492.i.i
  br i1 %i.azm, label %bb.ev, label %bb.ew

bb.ev:                                            ; preds = %.lr.ph494.i.i
  %i.azn = getelementptr i8, ptr %i.azk, i64 4
  %i.azo = load i32, ptr %i.azn, align 4, !tbaa !22
  %i.azp = icmp eq i32 %i.azo, %.1371493.i.i
  br i1 %i.azp, label %bb.ey, label %bb.ew

bb.ew:                                            ; preds = %bb.ev, %.lr.ph494.i.i
  %i.azq = icmp eq i32 %i.azl, %.1371493.i.i
  br i1 %i.azq, label %bb.ex, label %bb.ez

bb.ex:                                            ; preds = %bb.ew
  %i.azr = getelementptr i8, ptr %i.azk, i64 4
  %i.azs = load i32, ptr %i.azr, align 4, !tbaa !22 ; 2 uses
  %i.azt = icmp eq i32 %i.azs, %.1373492.i.i
  br i1 %i.azt, label %bb.ey, label %.thread291.i

bb.ey:                                            ; preds = %bb.ex, %bb.ev
  %i.azu = getelementptr i8, ptr %i.azg, i64 4
  %i.azv = load i32, ptr %i.azu, align 4, !tbaa !22 ; 2 uses
  %.pre559.i.i = shl nsw i32 %i.azv, 1
  %.pre561.i.i = sext i32 %.pre559.i.i to i64     ; 2 uses
  %.phi.trans.insert210.i = getelementptr inbounds [4 x i8], ptr %i.anc, i64 %.pre561.i.i
  %.pre211.i = load i32, ptr %.phi.trans.insert210.i, align 4, !tbaa !22
  br label %bb.ez

bb.ez:                                            ; preds = %bb.ey, %bb.ew
  %i.azw = phi i32 [ %i.azl, %bb.ew ], [ %.pre211.i, %bb.ey ] ; 2 uses
  %.pre-phi562.i.i = phi i64 [ %i.azj, %bb.ew ], [ %.pre561.i.i, %bb.ey ] ; 3 uses
  %.1375.i.i = phi i32 [ %i.azh, %bb.ew ], [ %i.azv, %bb.ey ] ; 2 uses
  %i.azx = icmp eq i32 %i.azw, %.1371493.i.i
  br i1 %i.azx, label %..thread291.i_crit_edge, label %.thread291.i

..thread291.i_crit_edge:                          ; preds = %bb.ez
  %.phi.trans.insert = getelementptr inbounds [4 x i8], ptr %i.anc, i64 %.pre-phi562.i.i
  %.phi.trans.insert888 = getelementptr i8, ptr %.phi.trans.insert, i64 4
  %.pre889 = load i32, ptr %.phi.trans.insert888, align 4, !tbaa !22
  br label %.thread291.i

.thread291.i:                                     ; preds = %bb.ex, %..thread291.i_crit_edge, %bb.ez
  %.1375.i296.i = phi i32 [ %.1375.i.i, %bb.ez ], [ %.1375.i.i, %..thread291.i_crit_edge ], [ %i.azh, %bb.ex ] ; 4 uses
  %.pre-phi562.i295.i = phi i64 [ %.pre-phi562.i.i, %bb.ez ], [ %.pre-phi562.i.i, %..thread291.i_crit_edge ], [ %i.azj, %bb.ex ]
  %.1369.i.i = phi i32 [ %i.azw, %bb.ez ], [ %.pre889, %..thread291.i_crit_edge ], [ %i.azs, %bb.ex ] ; 2 uses
  %i.azy = shl nsw i32 %.4491.i.i, 1
  %i.azz = sext i32 %i.azy to i64
  %i.baa = getelementptr [4 x i8], ptr %i.apy, i64 %i.azz
  %i.bab = getelementptr i8, ptr %i.baa, i64 4    ; 2 uses
  %i.bac = load i32, ptr %i.bab, align 4, !tbaa !22
  %i.bad = getelementptr [4 x i8], ptr %i.apy, i64 %.pre-phi562.i295.i ; 2 uses
  %i.bae = getelementptr i8, ptr %i.bad, i64 4
  store i32 %i.bac, ptr %i.bae, align 4, !tbaa !22
  store i32 %.4491.i.i, ptr %i.bad, align 4, !tbaa !22
  store i32 %.1375.i296.i, ptr %i.bab, align 4, !tbaa !22
  store i32 %.1375.i296.i, ptr %i.ayi, align 4, !tbaa !22
  %i.baf = sext i32 %.1375.i296.i to i64
  %i.bag = getelementptr inbounds [4 x i8], ptr %i.aqs, i64 %i.baf
  store i32 1, ptr %i.bag, align 4, !tbaa !22
  %.not414.i.i = icmp eq i32 %.1369.i.i, %i.axj
  br i1 %.not414.i.i, label %same_edge.exit440.thread445.i.i, label %.lr.ph494.i.i, !llvm.loop !144

same_edge.exit440.thread445.i.i:                  ; preds = %.thread291.i, %.thread.i529, %same_edge.exit440.thread.i.i, %same_edge.exit440.i.i, %bb.et, %._crit_edge477.thread.i.i
  %.2389.i.i = phi i32 [ %.2382.lcssa609.i.i, %._crit_edge477.thread.i.i ], [ %.2378.lcssa.i.i, %bb.et ], [ %.2378.lcssa.i.i, %same_edge.exit440.i.i ], [ %.2378.lcssa.i.i, %same_edge.exit440.thread.i.i ], [ %.2382.lcssa609.i.i, %.thread.i529 ], [ %.2378.lcssa.i.i, %.thread291.i ]
  %.3383.i.i = phi i32 [ %.2382.lcssa609.i.i, %._crit_edge477.thread.i.i ], [ %.1385.i.i, %bb.et ], [ %.1385.i.i, %same_edge.exit440.i.i ], [ %.1385.i.i, %same_edge.exit440.thread.i.i ], [ %.2382.lcssa609.i.i, %.thread.i529 ], [ %.1385.i.i, %.thread291.i ] ; 2 uses
  %.3.i136.i = phi i32 [ %.1503.i.i, %._crit_edge477.thread.i.i ], [ %.2.lcssa.i.i, %bb.et ], [ %.2.lcssa.i.i, %same_edge.exit440.i.i ], [ %.2.lcssa.i.i, %same_edge.exit440.thread.i.i ], [ %.1503.i.i, %.thread.i529 ], [ %.2.lcssa.i.i, %.thread291.i ] ; 2 uses
  %indvars.iv.next545.i.i = add nsw i64 %indvars.iv544.i.i, 1 ; 2 uses
  %exitcond548.not.i.i = icmp eq i64 %indvars.iv.next545.i.i, %wide.trip.count547.i.i
  br i1 %exitcond548.not.i.i, label %.preheader451.i.i, label %.lr.ph505.i.i, !llvm.loop !145

.lr.ph511.i.i:                                    ; preds = %.preheader451.i.i, %.lr.ph511.i.i
  %i.bah = phi i32 [ %i.bav, %.lr.ph511.i.i ], [ %i.asv, %.preheader451.i.i ] ; 3 uses
  %i.bai = phi i32 [ %i.bar, %.lr.ph511.i.i ], [ %i.asr, %.preheader451.i.i ]
  %.5510.i.i = phi i32 [ %i.bah, %.lr.ph511.i.i ], [ %.1388.lcssa.i.i, %.preheader451.i.i ]
  %i.baj = sext i32 %.5510.i.i to i64
  %i.bak = getelementptr inbounds [4 x i8], ptr %i.aqs, i64 %i.baj
  store i32 -1, ptr %i.bak, align 4, !tbaa !22
  %i.bal = sext i32 %i.bai to i64
  %i.bam = getelementptr inbounds [4 x i8], ptr %i.anc, i64 %i.bal
  %i.ban = load i32, ptr %i.bam, align 4, !tbaa !22
  %i.bao = load ptr, ptr %13, align 8, !tbaa !160
  %i.bap = load i32, ptr %i.c, align 4, !tbaa !22
  %i.baq = call ptr @SparseMatrix_coordinate_form_add_entry_(ptr noundef %i.bao, i32 noundef %i.bap, i32 noundef %i.ban, ptr noundef nonnull %i.c, i32 noundef 4) #19 ; 0 uses
  %i.bar = shl nsw i32 %i.bah, 1                  ; 3 uses
  %i.bas = or disjoint i32 %i.bar, 1
  %i.bat = sext i32 %i.bas to i64                 ; 2 uses
  %i.bau = getelementptr inbounds [4 x i8], ptr %i.apy, i64 %i.bat
  %i.bav = load i32, ptr %i.bau, align 4, !tbaa !22 ; 2 uses
  %.not.i135.i = icmp eq i32 %i.bav, %.1388.lcssa.i.i
  br i1 %.not.i135.i, label %._crit_edge512.loopexit.i.i, label %.lr.ph511.i.i, !llvm.loop !146

._crit_edge512.loopexit.i.i:                      ; preds = %.lr.ph511.i.i
  %.pre550.i.i = load i32, ptr %i.c, align 4, !tbaa !22
  br label %._crit_edge512.i.i

._crit_edge512.i.i:                               ; preds = %._crit_edge512.loopexit.i.i, %.preheader451.i.i
  %i.baw = phi i32 [ %storemerge411516.i.i, %.preheader451.i.i ], [ %.pre550.i.i, %._crit_edge512.loopexit.i.i ]
  %.5.lcssa.i.i = phi i32 [ %.1388.lcssa.i.i, %.preheader451.i.i ], [ %i.bah, %._crit_edge512.loopexit.i.i ]
  %.lcssa453.i.i = phi i32 [ %i.asr, %.preheader451.i.i ], [ %i.bar, %._crit_edge512.loopexit.i.i ]
  %.lcssa.i.i = phi i64 [ %i.ast, %.preheader451.i.i ], [ %i.bat, %._crit_edge512.loopexit.i.i ]
  %i.bax = sext i32 %.5.lcssa.i.i to i64
  %i.bay = getelementptr inbounds [4 x i8], ptr %i.aqs, i64 %i.bax
  store i32 -1, ptr %i.bay, align 4, !tbaa !22
  %i.baz = sext i32 %.lcssa453.i.i to i64
  %i.bba = getelementptr inbounds [4 x i8], ptr %i.anc, i64 %i.baz
  %i.bbb = load i32, ptr %i.bba, align 4, !tbaa !22
  %i.bbc = getelementptr inbounds [4 x i8], ptr %i.anc, i64 %.lcssa.i.i
  %i.bbd = load i32, ptr %i.bbc, align 4, !tbaa !22
  %i.bbe = load ptr, ptr %13, align 8, !tbaa !160
  %i.bbf = call ptr @SparseMatrix_coordinate_form_add_entry_(ptr noundef %i.bbe, i32 noundef %i.baw, i32 noundef %i.bbb, ptr noundef nonnull %i.c, i32 noundef 4) #19 ; 0 uses
  %i.bbg = load ptr, ptr %13, align 8, !tbaa !160
  %i.bbh = load i32, ptr %i.c, align 4, !tbaa !22
  %i.bbi = call ptr @SparseMatrix_coordinate_form_add_entry_(ptr noundef %i.bbg, i32 noundef %i.bbh, i32 noundef %i.bbd, ptr noundef nonnull %i.c, i32 noundef 4) #19 ; 0 uses
  %i.bbj = load i32, ptr %i.c, align 4, !tbaa !22
  %i.bbk = add nsw i32 %i.bbj, 1                  ; 3 uses
  store i32 %i.bbk, ptr %i.c, align 4, !tbaa !22
  %i.bbl = icmp slt i32 %i.bbk, %.3.in.lcssa.i
  br i1 %i.bbl, label %.lr.ph521.i.i, label %._crit_edge522.loopexit.i.i, !llvm.loop !147

._crit_edge522.loopexit.i.i:                      ; preds = %._crit_edge512.i.i
  %.pre551.i.i = load ptr, ptr %13, align 8, !tbaa !160
  br label %get_polygon_solids.exit.i

get_polygon_solids.exit.i:                        ; preds = %._crit_edge522.loopexit.i.i, %._crit_edge471.i.i
  %i.bbm = phi ptr [ %.pre551.i.i, %._crit_edge522.loopexit.i.i ], [ %i.asj, %._crit_edge471.i.i ]
  %i.bbn = call ptr @SparseMatrix_from_coordinate_format_not_compacted(ptr noundef %i.bbm) #19
  %i.bbo = load ptr, ptr %13, align 8, !tbaa !160
  call void @SparseMatrix_delete(ptr noundef %i.bbo) #19
  store ptr %i.bbn, ptr %13, align 8, !tbaa !160
  call void @SparseMatrix_delete(ptr noundef %i.apz) #19
  call void @free(ptr noundef %i.apy) #19
  call void @free(ptr noundef %i.aqs) #19
  call void @free(ptr noundef %i.asi) #19
  call void @free(ptr noundef %i.aqt) #19
  call void @free(ptr noundef %i.anc) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i32 1, ptr %i.a, align 4, !tbaa !22
  %i.bbp = load i32, ptr %i.aas, align 4, !tbaa !22 ; 5 uses
  br i1 %i.aau, label %.lr.ph.preheader.i.i, label %._crit_edge.i141.i

.lr.ph.preheader.i.i:                             ; preds = %get_polygon_solids.exit.i
  %wide.trip.count.i146.i = zext nneg i32 %.2417 to i64 ; 3 uses
  %min.iters.check1299 = icmp ult i32 %.2417, 8
  br i1 %min.iters.check1299, label %.lr.ph.i147.i.preheader, label %vector.ph1300

vector.ph1300:                                    ; preds = %.lr.ph.preheader.i.i
  %n.vec1301 = and i64 %wide.trip.count.i146.i, 2147483640 ; 3 uses
  %broadcast.splatinsert1302 = insertelement <4 x i32> poison, i32 %i.bbp, i64 0
  %broadcast.splat1303 = shufflevector <4 x i32> %broadcast.splatinsert1302, <4 x i32> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body1304

vector.body1304:                                  ; preds = %vector.body1304, %vector.ph1300
  %index1305 = phi i64 [ 0, %vector.ph1300 ], [ %index.next1312, %vector.body1304 ] ; 2 uses
  %vec.phi1306 = phi <4 x i32> [ %broadcast.splat1303, %vector.ph1300 ], [ %i.bbs, %vector.body1304 ]
  %vec.phi1307 = phi <4 x i32> [ %broadcast.splat1303, %vector.ph1300 ], [ %i.bbt, %vector.body1304 ]
  %vec.phi1308 = phi <4 x i32> [ %broadcast.splat1303, %vector.ph1300 ], [ %i.bbu, %vector.body1304 ]
  %vec.phi1309 = phi <4 x i32> [ %broadcast.splat1303, %vector.ph1300 ], [ %i.bbv, %vector.body1304 ]
  %i.bbq = getelementptr inbounds nuw [4 x i8], ptr %i.aas, i64 %index1305 ; 2 uses
  %i.bbr = getelementptr inbounds nuw i8, ptr %i.bbq, i64 16
  %wide.load1310 = load <4 x i32>, ptr %i.bbq, align 4, !tbaa !22 ; 2 uses
  %wide.load1311 = load <4 x i32>, ptr %i.bbr, align 4, !tbaa !22 ; 2 uses
  %i.bbs = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load1310, <4 x i32> %vec.phi1306) ; 2 uses
  %i.bbt = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load1311, <4 x i32> %vec.phi1307) ; 2 uses
  %i.bbu = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %wide.load1310, <4 x i32> %vec.phi1308) ; 2 uses
  %i.bbv = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %wide.load1311, <4 x i32> %vec.phi1309) ; 2 uses
  %index.next1312 = add nuw i64 %index1305, 8     ; 2 uses
  %i.bbw = icmp eq i64 %index.next1312, %n.vec1301
  br i1 %i.bbw, label %middle.block1313, label %vector.body1304, !llvm.loop !148

middle.block1313:                                 ; preds = %vector.body1304
  %rdx.minmax1314 = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.bbs, <4 x i32> %i.bbt)
  %i.bbx = call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %rdx.minmax1314) ; 2 uses
  %rdx.minmax1315 = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %i.bbu, <4 x i32> %i.bbv)
  %i.bby = call i32 @llvm.vector.reduce.smin.v4i32(<4 x i32> %rdx.minmax1315) ; 2 uses
  %cmp.n1316 = icmp eq i64 %n.vec1301, %wide.trip.count.i146.i
  br i1 %cmp.n1316, label %._crit_edge.i141.i, label %.lr.ph.i147.i.preheader

.lr.ph.i147.i.preheader:                          ; preds = %.lr.ph.preheader.i.i, %middle.block1313
  %indvars.iv.i148.i.ph = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %n.vec1301, %middle.block1313 ]
  %.075.i.i.ph = phi i32 [ %i.bbp, %.lr.ph.preheader.i.i ], [ %i.bbx, %middle.block1313 ]
  %.05974.i.i.ph = phi i32 [ %i.bbp, %.lr.ph.preheader.i.i ], [ %i.bby, %middle.block1313 ]
  br label %.lr.ph.i147.i

.lr.ph.i147.i:                                    ; preds = %.lr.ph.i147.i.preheader, %.lr.ph.i147.i
  %indvars.iv.i148.i = phi i64 [ %indvars.iv.next.i149.i, %.lr.ph.i147.i ], [ %indvars.iv.i148.i.ph, %.lr.ph.i147.i.preheader ] ; 2 uses
  %.075.i.i = phi i32 [ %..0.i.i, %.lr.ph.i147.i ], [ %.075.i.i.ph, %.lr.ph.i147.i.preheader ]
  %.05974.i.i = phi i32 [ %i.bcb, %.lr.ph.i147.i ], [ %.05974.i.i.ph, %.lr.ph.i147.i.preheader ]
  %i.bbz = getelementptr inbounds nuw [4 x i8], ptr %i.aas, i64 %indvars.iv.i148.i
  %i.bca = load i32, ptr %i.bbz, align 4, !tbaa !22 ; 2 uses
  %..0.i.i = call i32 @llvm.smax.i32(i32 %i.bca, i32 %.075.i.i) ; 2 uses
  %i.bcb = call i32 @llvm.smin.i32(i32 %i.bca, i32 %.05974.i.i) ; 2 uses
  %indvars.iv.next.i149.i = add nuw nsw i64 %indvars.iv.i148.i, 1 ; 2 uses
  %exitcond.not.i150.i = icmp eq i64 %indvars.iv.next.i149.i, %wide.trip.count.i146.i
  br i1 %exitcond.not.i150.i, label %._crit_edge.i141.i, label %.lr.ph.i147.i, !llvm.loop !149

._crit_edge.i141.i:                               ; preds = %.lr.ph.i147.i, %middle.block1313, %get_polygon_solids.exit.i
  %.059.lcssa.i.i = phi i32 [ %i.bbp, %get_polygon_solids.exit.i ], [ %i.bby, %middle.block1313 ], [ %i.bcb, %.lr.ph.i147.i ]
  %.0.lcssa.i.i = phi i32 [ %i.bbp, %get_polygon_solids.exit.i ], [ %i.bbx, %middle.block1313 ], [ %..0.i.i, %.lr.ph.i147.i ] ; 2 uses
  %i.bcc = icmp slt i32 %.059.lcssa.i.i, 1
  br i1 %i.bcc, label %get_polygons.exit, label %bb.fa

bb.fa:                                            ; preds = %._crit_edge.i141.i
  %i.bcd = call ptr @SparseMatrix_new(i32 noundef %.0.lcssa.i.i, i32 noundef %.0.lcssa.i.i, i64 noundef 1, i32 noundef 4, i32 noundef 1) #19 ; 4 uses
  %i.bce = load ptr, ptr %i.abv, align 8, !tbaa !32 ; 2 uses
  %i.bcf = load ptr, ptr %i.abx, align 8, !tbaa !33
  br i1 %i.aau, label %.lr.ph83.preheader.i.i, label %._crit_edge84.i.i

.lr.ph83.preheader.i.i:                           ; preds = %bb.fa
  %wide.trip.count92.i.i = zext nneg i32 %.2417 to i64
  br label %.lr.ph83.i.i

.loopexit.i142.i:                                 ; preds = %bb.fd, %.lr.ph83.i.i
  %exitcond93.not.i.i = icmp eq i64 %indvars.iv.next90.i.i, %wide.trip.count92.i.i
  br i1 %exitcond93.not.i.i, label %._crit_edge84.i.i, label %.lr.ph83.i.i, !llvm.loop !150

.lr.ph83.i.i:                                     ; preds = %.loopexit.i142.i, %.lr.ph83.preheader.i.i
  %indvars.iv89.i.i = phi i64 [ 0, %.lr.ph83.preheader.i.i ], [ %indvars.iv.next90.i.i, %.loopexit.i142.i ] ; 4 uses
  %i.bcg = getelementptr inbounds nuw [4 x i8], ptr %i.aas, i64 %indvars.iv89.i.i ; 2 uses
  %i.bch = load i32, ptr %i.bcg, align 4, !tbaa !22
  %i.bci = add nsw i32 %i.bch, -1                 ; 2 uses
  %i.bcj = call ptr @SparseMatrix_coordinate_form_add_entry_(ptr noundef %i.bcd, i32 noundef %i.bci, i32 noundef %i.bci, ptr noundef nonnull %i.a, i32 noundef 4) #19 ; 0 uses
  %i.bck = getelementptr inbounds nuw [4 x i8], ptr %i.bce, i64 %indvars.iv89.i.i
  %i.bcl = load i32, ptr %i.bck, align 4, !tbaa !22 ; 2 uses
  %indvars.iv.next90.i.i = add nuw nsw i64 %indvars.iv89.i.i, 1 ; 3 uses
  %i.bcm = getelementptr inbounds nuw [4 x i8], ptr %i.bce, i64 %indvars.iv.next90.i.i ; 2 uses
  %i.bcn = load i32, ptr %i.bcm, align 4, !tbaa !22 ; 2 uses
  %i.bco = icmp slt i32 %i.bcl, %i.bcn
  br i1 %i.bco, label %.lr.ph79.preheader.i.i, label %.loopexit.i142.i

.lr.ph79.preheader.i.i:                           ; preds = %.lr.ph83.i.i
  %i.bcp = sext i32 %i.bcl to i64
  br label %.lr.ph79.i.i

.lr.ph79.i.i:                                     ; preds = %bb.fd, %.lr.ph79.preheader.i.i
  %i.bcq = phi i32 [ %i.bcn, %.lr.ph79.preheader.i.i ], [ %i.bdb, %bb.fd ] ; 2 uses
  %indvars.iv86.i.i = phi i64 [ %i.bcp, %.lr.ph79.preheader.i.i ], [ %indvars.iv.next87.i.i, %bb.fd ] ; 2 uses
  %i.bcr = getelementptr inbounds [4 x i8], ptr %i.bcf, i64 %indvars.iv86.i.i
  %i.bcs = load i32, ptr %i.bcr, align 4, !tbaa !22 ; 2 uses
  %i.bct = zext i32 %i.bcs to i64
  %.not.i143.i = icmp eq i64 %indvars.iv89.i.i, %i.bct
  br i1 %.not.i143.i, label %bb.fd, label %bb.fb

bb.fb:                                            ; preds = %.lr.ph79.i.i
  %i.bcu = load i32, ptr %i.bcg, align 4, !tbaa !22 ; 2 uses
  %i.bcv = sext i32 %i.bcs to i64
  %i.bcw = getelementptr inbounds [4 x i8], ptr %i.aas, i64 %i.bcv
  %i.bcx = load i32, ptr %i.bcw, align 4, !tbaa !22 ; 4 uses
  %.not69.i.i = icmp eq i32 %i.bcu, %i.bcx
  %.not70.i.i = icmp eq i32 %i.bcx, %i.abf
  %or.cond.i144.i = or i1 %.not69.i.i, %.not70.i.i
  %.not71.i.i = icmp eq i32 %i.bcx, %i.abg
  %or.cond72.i.i = or i1 %.not71.i.i, %or.cond.i144.i
  br i1 %or.cond72.i.i, label %bb.fd, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  %i.bcy = add nsw i32 %i.bcu, -1
  %i.bcz = add nsw i32 %i.bcx, -1
  %i.bda = call ptr @SparseMatrix_coordinate_form_add_entry_(ptr noundef %i.bcd, i32 noundef %i.bcy, i32 noundef %i.bcz, ptr noundef nonnull %i.a, i32 noundef 4) #19 ; 0 uses
  %.pre.i145.i = load i32, ptr %i.bcm, align 4, !tbaa !22
  br label %bb.fd

bb.fd:                                            ; preds = %bb.fc, %bb.fb, %.lr.ph79.i.i
  %i.bdb = phi i32 [ %i.bcq, %.lr.ph79.i.i ], [ %i.bcq, %bb.fb ], [ %.pre.i145.i, %bb.fc ] ; 2 uses
  %indvars.iv.next87.i.i = add nsw i64 %indvars.iv86.i.i, 1 ; 2 uses
  %i.bdc = sext i32 %i.bdb to i64
  %i.bdd = icmp slt i64 %indvars.iv.next87.i.i, %i.bdc
  br i1 %i.bdd, label %.lr.ph79.i.i, label %.loopexit.i142.i, !llvm.loop !151

._crit_edge84.i.i:                                ; preds = %.loopexit.i142.i, %bb.fa
  %i.bde = call ptr @SparseMatrix_from_coordinate_format(ptr noundef %i.bcd) #19
  call void @SparseMatrix_delete(ptr noundef %i.bcd) #19
  br label %get_polygons.exit

get_polygons.exit:                                ; preds = %._crit_edge.i141.i, %._crit_edge84.i.i
  %.062.i.i = phi ptr [ %i.bde, %._crit_edge84.i.i ], [ null, %._crit_edge.i141.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  store ptr %.062.i.i, ptr %16, align 8, !tbaa !160
  call void @free(ptr noundef %i.aas) #19
  call void @SparseMatrix_delete(ptr noundef nonnull %i.aah) #19
  call void @free(ptr noundef %i.xx) #19
  br label %bb.fe

bb.fe:                                            ; preds = %get_tri.exit, %get_polygons.exit
  %.0 = phi i32 [ 0, %get_polygons.exit ], [ -1, %get_tri.exit ]
  call void @free(ptr noundef %.0414) #19
  call void @free(ptr noundef %.0435) #19
  %.not489 = icmp eq ptr %.2434, %4
  br i1 %.not489, label %bb.fg, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  call void @free(ptr noundef %.2434) #19
  br label %bb.fg

bb.fg:                                            ; preds = %bb.ff, %bb.fe
  call void @QuadTree_delete(ptr noundef %.0444) #19
  %.not490 = icmp eq ptr %.0431, %3
  br i1 %.not490, label %bb.fi, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  call void @free(ptr noundef %.0431) #19
  br label %bb.fi

bb.fi:                                            ; preds = %bb.fh, %bb.fg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #19
  ret i32 %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define internal fastcc void @add_point(ptr nofree noundef nonnull captures(none) %0, i32 noundef %1, ptr nofree noundef nonnull captures(none) %2, ptr nofree noundef nonnull captures(none) %3, double %.0.val, double %.8.val, ptr nofree noundef nonnull captures(none) %4) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !22     ; 4 uses
  %i.b = load i32, ptr %3, align 4, !tbaa !22     ; 3 uses
  %.not = icmp slt i32 %i.a, %i.b
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.a
  %.pre1 = load ptr, ptr %4, align 8, !tbaa !30
  br label %bb.q

bb.b:                                             ; preds = %bb.a
  %i.c = add nsw i32 %i.a, 20                     ; 3 uses
  store i32 %i.c, ptr %3, align 4, !tbaa !22
  %i.d = load ptr, ptr %2, align 8, !tbaa !12     ; 2 uses
  %i.e = shl nsw i32 %i.c, 1
  %i.f = sext i32 %i.e to i64                     ; 2 uses
  %mul.ov.i = icmp slt i32 %i.a, -20
  br i1 %mul.ov.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.h = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.g, ptr noundef nonnull @.str.28, i64 noundef %i.f, i64 noundef 8) #20 ; 0 uses
  tail call fastcc void @graphviz_exit() #21
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.i = shl nsw i32 %i.b, 1
  %i.j = sext i32 %i.i to i64
  %i.k = shl nsw i64 %i.j, 3                      ; 3 uses
  %i.l = shl nuw nsw i64 %i.f, 3                  ; 4 uses
  %i.m = icmp eq i32 %i.c, 0
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @free(ptr noundef %i.d) #19
  br label %gv_recalloc.exit

bb.f:                                             ; preds = %bb.d
  %i.n = tail call ptr @realloc(ptr noundef %i.d, i64 noundef %i.l) #23 ; 4 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.p = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.q = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.p, ptr noundef nonnull @.str.29, i64 noundef %i.l) #20 ; 0 uses
  tail call fastcc void @graphviz_exit() #21
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.r = icmp ugt i64 %i.l, %i.k
  br i1 %i.r, label %bb.i, label %gv_recalloc.exit

bb.i:                                             ; preds = %bb.h
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.k
  %i.t = sub nuw nsw i64 %i.l, %i.k
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.s, i8 0, i64 %i.t, i1 false)
  br label %gv_recalloc.exit

gv_recalloc.exit:                                 ; preds = %bb.e, %bb.h, %bb.i
  %.0.i.i = phi ptr [ null, %bb.e ], [ %i.n, %bb.i ], [ %i.n, %bb.h ]
  store ptr %.0.i.i, ptr %2, align 8, !tbaa !12
  %i.u = load ptr, ptr %4, align 8, !tbaa !30     ; 2 uses
  %i.v = load i32, ptr %3, align 4, !tbaa !22     ; 3 uses
  %i.w = sext i32 %i.v to i64                     ; 2 uses
  %mul.ov.i24 = icmp slt i32 %i.v, 0
  br i1 %mul.ov.i24, label %bb.j, label %bb.k

bb.j:                                             ; preds = %gv_recalloc.exit
  %i.x = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.y = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.x, ptr noundef nonnull @.str.28, i64 noundef %i.w, i64 noundef 4) #20 ; 0 uses
  tail call fastcc void @graphviz_exit() #21
  unreachable

bb.k:                                             ; preds = %gv_recalloc.exit
  %i.z = sext i32 %i.b to i64
  %i.aa = shl nsw i64 %i.z, 2                     ; 3 uses
  %i.ab = shl nuw nsw i64 %i.w, 2                 ; 4 uses
  %i.ac = icmp eq i32 %i.v, 0
  br i1 %i.ac, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  tail call void @free(ptr noundef %i.u) #19
  br label %gv_recalloc.exit26

bb.m:                                             ; preds = %bb.k
  %i.ad = tail call ptr @realloc(ptr noundef %i.u, i64 noundef %i.ab) #23 ; 4 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.af = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.ag = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.af, ptr noundef nonnull @.str.29, i64 noundef %i.ab) #20 ; 0 uses
  tail call fastcc void @graphviz_exit() #21
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.ah = icmp ugt i64 %i.ab, %i.aa
  br i1 %i.ah, label %bb.p, label %gv_recalloc.exit26

bb.p:                                             ; preds = %bb.o
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.aa
  %i.aj = sub nuw nsw i64 %i.ab, %i.aa
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ai, i8 0, i64 %i.aj, i1 false)
  br label %gv_recalloc.exit26

gv_recalloc.exit26:                               ; preds = %bb.l, %bb.o, %bb.p
  %.0.i.i25 = phi ptr [ null, %bb.l ], [ %i.ad, %bb.p ], [ %i.ad, %bb.o ] ; 2 uses
  store ptr %.0.i.i25, ptr %4, align 8, !tbaa !30
  %.pre = load i32, ptr %0, align 4, !tbaa !22
  br label %bb.q

bb.q:                                             ; preds = %._crit_edge, %gv_recalloc.exit26
  %i.ak = phi ptr [ %.0.i.i25, %gv_recalloc.exit26 ], [ %.pre1, %._crit_edge ]
  %i.al = phi i32 [ %.pre, %gv_recalloc.exit26 ], [ %i.a, %._crit_edge ] ; 2 uses
  %i.am = load ptr, ptr %2, align 8, !tbaa !12
  %i.an = shl nsw i32 %i.al, 1
  %i.ao = sext i32 %i.an to i64
  %i.ap = getelementptr inbounds [8 x i8], ptr %i.am, i64 %i.ao ; 2 uses
  store double %.0.val, ptr %i.ap, align 8, !tbaa !24
  %i.aq = getelementptr i8, ptr %i.ap, i64 8
  store double %.8.val, ptr %i.aq, align 8, !tbaa !24
  %i.ar = sext i32 %i.al to i64
  %i.as = getelementptr inbounds [4 x i8], ptr %i.ak, i64 %i.ar
  store i32 %1, ptr %i.as, align 4, !tbaa !22
  %i.at = load i32, ptr %0, align 4, !tbaa !22
  %i.au = add nsw i32 %i.at, 1
  store i32 %i.au, ptr %0, align 4, !tbaa !22
  ret void
}

declare double @drand() local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #7

; Function Attrs: cold inlinehint nofree noreturn nounwind uwtable
define internal fastcc void @graphviz_exit() unnamed_addr #9 {
bb.a:
  tail call void @exit(i32 noundef 1) #25
  unreachable
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare void @flockfile(ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare void @funlockfile(ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #12

declare void @rgb2hex(float noundef, float noundef, float noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @dot_polygon(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef readonly byval(%struct.doubles_t) align 8 captures(none) %1, ptr nofree noundef readonly byval(%struct.doubles_t) align 8 captures(none) %2, double noundef %3, i1 noundef zeroext %4, ptr noundef %5) unnamed_addr #0 {
bb.a:
end_hunk_1
begin_hunk_2_@SparseMatrix_new
declare ptr @SparseMatrix_new(i32 noundef, i32 noundef, i64 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @SparseMatrix_from_coordinate_format_not_compacted(ptr noundef) local_unnamed_addr #2

declare ptr @SparseMatrix_sort(ptr noundef) local_unnamed_addr #2

declare ptr @SparseMatrix_coordinate_form_add_entry_(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @SparseMatrix_from_coordinate_format(ptr noundef) local_unnamed_addr #2

declare ptr @SparseMatrix_weakly_connected_components(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #17

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #17

; Function Attrs: nofree nounwind
declare noundef i32 @fputs(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smin.v4i32(<4 x i32>, <4 x i32>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smin.v4i32(<4 x i32>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smax.v4i32(<4 x i32>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.minnum.v2f64(<2 x double>, <2 x double>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.maxnum.v2f64(<2 x double>, <2 x double>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.vector.reduce.fmax.v2f64(<2 x double>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.vector.reduce.fmin.v2f64(<2 x double>) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.floor.v2f64(<2 x double>) #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold inlinehint nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn }
attributes #16 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree nounwind }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #19 = { nounwind }
attributes #20 = { cold nounwind }
attributes #21 = { noreturn }
attributes #22 = { nounwind allocsize(0,1) }
attributes #23 = { nounwind allocsize(1) }
attributes #24 = { nounwind willreturn memory(read) }
attributes #25 = { cold noreturn nounwind }

!llvm.module.flags = !{!1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{!0, !27}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!"p1 double", !10, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!"long", !6, i64 0}
!14 = !{!"p1 int", !10, i64 0}
!15 = !{!"_Bool", !6, i64 0}
!16 = !{!"SparseMatrix_struct", !7, i64 0, !7, i64 4, !13, i64 8, !13, i64 16, !7, i64 24, !14, i64 32, !14, i64 40, !10, i64 48, !7, i64 56, !15, i64 60, !15, i64 60, !15, i64 60, !13, i64 64}
!17 = !{!16, !7, i64 0}
!18 = !{!"p1 _ZTS8_IO_FILE", !10, i64 0}
!19 = !{!18, !18, i64 0}
!20 = !{!"p1 float", !10, i64 0}
!21 = !{!20, !20, i64 0}
!22 = !{!7, !7, i64 0}
!23 = !{!"double", !6, i64 0}
!24 = !{!23, !23, i64 0}
!25 = !{!"float", !6, i64 0}
!26 = !{!25, !25, i64 0}
!27 = !{!"llvm.loop.mustprogress"}
!28 = !{!"llvm.loop.isvectorized", i32 1}
!29 = !{!"llvm.loop.unroll.runtime.disable"}
!30 = !{!14, !14, i64 0}
!31 = !{!"llvm.loop.unroll.disable"}
!32 = !{!16, !14, i64 32}
!33 = !{!16, !14, i64 40}
!34 = !{!16, !10, i64 48}
!35 = !{!6, !6, i64 0}
!36 = !{!13, !13, i64 0}
!37 = !{!"p1 omnipotent char", !10, i64 0}
!38 = !{!"tm", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32, !13, i64 40, !37, i64 48}
!39 = !{!38, !7, i64 20}
!40 = !{!38, !7, i64 16}
!41 = !{!38, !7, i64 12}
!42 = !{!38, !7, i64 8}
!43 = !{!38, !7, i64 4}
!44 = !{!38, !7, i64 0}
!45 = !{!"", !10, i64 0, !13, i64 8, !13, i64 16, !13, i64 24}
!46 = !{!45, !13, i64 16}
!47 = distinct !{!47, !27, !28, !29}
!48 = distinct !{!48, !27, !28}
!49 = distinct !{!49, !27, !28, !29}
!50 = distinct !{!50, !31}
!51 = distinct !{!51, !27, !28}
!52 = distinct !{!52, !27, !28, !29}
!53 = distinct !{!53, !31}
!54 = distinct !{!54, !27, !28}
!55 = distinct !{!55, !27, !28, !29}
!56 = distinct !{!56, !31}
!57 = distinct !{!57, !27, !28}
!58 = distinct !{!58, !27}
!59 = distinct !{!59, !27}
!60 = distinct !{!60, !27}
!61 = distinct !{!61, !27}
!62 = distinct !{!62, !27}
!63 = !{!37, !37, i64 0}
!64 = distinct !{!64, !27}
!65 = distinct !{!65, !27}
!66 = distinct !{!66, !27}
!67 = distinct !{!67, !27}
!68 = distinct !{!68, !27}
!69 = distinct !{!69, !27}
!70 = !{!"", !6, i64 0, !10, i64 32, !23, i64 40}
!71 = !{!70, !10, i64 32}
!72 = !{!70, !23, i64 40}
!73 = distinct !{!73, !27, !28, !29}
!74 = distinct !{!74, !27, !29, !28}
!75 = distinct !{!75, !27}
!76 = distinct !{!76, !31}
!77 = distinct !{!77, !27}
!78 = distinct !{!78, !27, !28, !29}
!79 = distinct !{!79, !27, !28}
!80 = distinct !{!80, !27}
!81 = distinct !{!81, !27}
!82 = distinct !{!82, !27}
!83 = distinct !{!83, !27}
!84 = distinct !{!84, !27}
!85 = distinct !{!85, !27, !28, !29}
!86 = distinct !{!86, !27, !28}
!87 = distinct !{!87, !27}
!88 = distinct !{!88, !27}
!89 = distinct !{!89, !27, !28, !29}
!90 = distinct !{!90, !27, !29, !28}
!91 = distinct !{!91, !27}
!92 = distinct !{!92, !27}
!93 = distinct !{!93, i1 false, !"LVerDomain"}
!94 = distinct !{!94, !93}
!95 = distinct !{!95, !93}
!96 = distinct !{!96, !27, !28, !29}
!97 = distinct !{!97, !27, !28}
!98 = distinct !{!98, i1 false, !"LVerDomain"}
!99 = distinct !{!99, !98}
!100 = distinct !{!100, !98}
!101 = distinct !{!101, !27, !28, !29}
!102 = distinct !{!102, !27, !28}
!103 = distinct !{!103, i1 false, !"LVerDomain"}
!104 = distinct !{!104, !103}
!105 = distinct !{!105, !103}
!106 = distinct !{!106, !27, !28, !29}
!107 = distinct !{!107, !27, !28}
!108 = distinct !{!108, !27, !28, !29}
!109 = distinct !{!109, !31}
!110 = distinct !{!110, !27, !28}
!111 = distinct !{!111, !27}
!112 = distinct !{!112, !27, !28, !29}
!113 = distinct !{!113, !27, !28, !29}
!114 = distinct !{!114, !31}
!115 = distinct !{!115, !27, !28}
!116 = distinct !{!116, !27}
!117 = distinct !{!117, !27, !28, !29}
!118 = distinct !{!118, !27, !29, !28}
!119 = distinct !{!119, !27, !29, !28}
!120 = distinct !{!120, !27}
!121 = distinct !{!121, !27, !28, !29}
!122 = distinct !{!122, !27, !29, !28}
!123 = distinct !{!123, !27, !28, !29}
!124 = distinct !{!124, !27, !29, !28}
!125 = distinct !{!125, !27}
!126 = distinct !{!126, !27}
!127 = distinct !{!127, !27}
!128 = distinct !{!128, !27}
!129 = distinct !{!129, !27}
!130 = distinct !{!130, !31}
!131 = distinct !{!131, !27}
!132 = distinct !{!132, !27}
!133 = distinct !{!133, !27}
!134 = distinct !{!134, !27}
!135 = distinct !{!135, !27}
!136 = distinct !{!136, !27}
!137 = distinct !{!137, !27}
!138 = distinct !{!138, !27}
!139 = distinct !{!139, !31}
!140 = distinct !{!140, !27}
!141 = distinct !{!141, !27}
!142 = distinct !{!142, !27}
!143 = distinct !{!143, !27}
!144 = distinct !{!144, !27}
!145 = distinct !{!145, !27}
!146 = distinct !{!146, !27}
!147 = distinct !{!147, !27}
!148 = distinct !{!148, !27, !28, !29}
!149 = distinct !{!149, !27, !29, !28}
!150 = distinct !{!150, !27}
!151 = distinct !{!151, !27}
!152 = !{!16, !13, i64 8}
!153 = !{!94}
!154 = !{!95}
!155 = !{!99}
!156 = !{!100}
!157 = !{!104}
!158 = !{!105}
!159 = !{!"p1 _ZTS19SparseMatrix_struct", !10, i64 0}
!160 = !{!159, !159, i64 0}
end_hunk_2
