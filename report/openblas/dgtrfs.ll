Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dgtrfs?download=true
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@dgtrfs_:bb.a
  %scevgep869 = getelementptr i8, ptr %3, i64 -16
  %i.bc = or i64 %i.ao, %i.j
  %i.bd = shl nsw i64 %i.bc, 3                    ; 2 uses
  %i.be = shl nsw i64 %i.ao, 3
  %scevgep871 = getelementptr i8, ptr %17, i64 8  ; 5 uses
  %i.bf = getelementptr i8, ptr %11, i64 %i.bd
  %i.bg = getelementptr i8, ptr %i.bf, i64 16
  %i.bh = getelementptr i8, ptr %11, i64 %i.aw
  %i.bi = getelementptr i8, ptr %i.bh, i64 16
  %i.bj = getelementptr i8, ptr %11, i64 %i.bd
  %i.bk = getelementptr i8, ptr %11, i64 %i.aw
  %broadcast.splatinsert = insertelement <4 x double> poison, double %i.al, i64 0
  %broadcast.splat = shufflevector <4 x double> %broadcast.splatinsert, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert721 = insertelement <4 x double> poison, double %i.an, i64 0
  %broadcast.splat722 = shufflevector <4 x double> %broadcast.splatinsert721, <4 x double> poison, <4 x i32> zeroinitializer ; 8 uses
  %broadcast.splatinsert723 = insertelement <4 x double> poison, double %i.ak, i64 0
  %broadcast.splat724 = shufflevector <4 x double> %broadcast.splatinsert723, <4 x double> poison, <4 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert751 = insertelement <4 x double> poison, double %i.al, i64 0
  %broadcast.splat752 = shufflevector <4 x double> %broadcast.splatinsert751, <4 x double> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert753 = insertelement <4 x double> poison, double %i.an, i64 0
  %broadcast.splat754 = shufflevector <4 x double> %broadcast.splatinsert753, <4 x double> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert755 = insertelement <4 x double> poison, double %i.ak, i64 0
  %broadcast.splat756 = shufflevector <4 x double> %broadcast.splatinsert755, <4 x double> poison, <4 x i32> zeroinitializer
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge521.thread
  %indvar = phi i64 [ 0, %.preheader.lr.ph ], [ %indvar.next, %._crit_edge521.thread ] ; 5 uses
  %indvars.iv563 = phi i64 [ 1, %.preheader.lr.ph ], [ %indvars.iv.next564, %._crit_edge521.thread ] ; 6 uses
  %i.bl = mul i64 %i.bb, %indvar
  %i.bm = add i64 %i.ba, %i.bl                    ; 2 uses
  %scevgep868 = getelementptr i8, ptr %13, i64 %i.bm
  %i.bn = mul i64 %i.be, %indvar                  ; 2 uses
  %scevgep870 = getelementptr i8, ptr %i.bg, i64 %i.bn
  %i.bo = mul i64 %i.au, %indvar
  %i.bp = add i64 %i.at, %i.bo                    ; 2 uses
  %scevgep797 = getelementptr i8, ptr %13, i64 %i.bp
  %i.bq = mul i64 %i.ax, %indvar                  ; 2 uses
  %scevgep799 = getelementptr i8, ptr %i.bi, i64 %i.bq
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv563 ; 2 uses
  %i.bs = mul nsw i64 %indvars.iv563, %i.ao       ; 4 uses
  %i.bt = getelementptr [8 x i8], ptr %i.k, i64 %i.bs
  %i.bu = getelementptr i8, ptr %i.bt, i64 8      ; 2 uses
  %i.bv = mul nsw i64 %indvars.iv563, %i.ap       ; 10 uses
  %i.bw = getelementptr [8 x i8], ptr %i.n, i64 %i.bv ; 2 uses
  %i.bx = getelementptr i8, ptr %i.bw, i64 8      ; 3 uses
  %i.by = getelementptr i8, ptr %i.bw, i64 16     ; 2 uses
  %invariant.gep = getelementptr [8 x i8], ptr %i.k, i64 %i.bs ; 2 uses
  %invariant.gep592 = getelementptr [8 x i8], ptr %i.n, i64 %i.bv ; 2 uses
  %invariant.gep594 = getelementptr [8 x i8], ptr %i.n, i64 %i.bv ; 2 uses
  %invariant.gep596 = getelementptr [8 x i8], ptr %i.n, i64 %i.bv
  %invariant.gep598 = getelementptr [8 x i8], ptr %i.k, i64 %i.bs ; 2 uses
  %invariant.gep600 = getelementptr [8 x i8], ptr %i.n, i64 %i.bv ; 2 uses
  %invariant.gep602 = getelementptr [8 x i8], ptr %i.n, i64 %i.bv ; 2 uses
  %invariant.gep604 = getelementptr [8 x i8], ptr %i.n, i64 %i.bv
  %i.bz = getelementptr i8, ptr %i.bj, i64 %i.bn
  %i.ca = getelementptr i8, ptr %13, i64 %i.bm
  %i.cb = getelementptr i8, ptr %i.bk, i64 %i.bq
  %i.cc = getelementptr i8, ptr %13, i64 %i.bp
  %.sink633 = getelementptr [8 x i8], ptr %i.n, i64 %i.bv
  %.sink647 = getelementptr [8 x i8], ptr %i.n, i64 %i.bv
  %.sink659 = getelementptr [8 x i8], ptr %i.k, i64 %i.bs
  br label %bb.m

bb.m:                                             ; preds = %.preheader, %bb.z
  %.0451 = phi i32 [ %i.kj, %bb.z ], [ 1, %.preheader ] ; 2 uses
  %.0 = phi double [ %i.ki, %bb.z ], [ 3.000000e+00, %.preheader ]
  %i.cd = load i32, ptr %1, align 4, !tbaa !39
  %i.ce = sext i32 %i.cd to i64
  %i.cf = getelementptr [8 x i8], ptr %i.q, i64 %i.ce
  %i.cg = getelementptr i8, ptr %i.cf, i64 8
  call void @dcopy_(ptr noundef nonnull %1, ptr noundef %i.bu, ptr noundef nonnull @c__1, ptr noundef %i.cg, ptr noundef nonnull @c__1) #7
  %i.ch = load i32, ptr %1, align 4, !tbaa !39
  %i.ci = sext i32 %i.ch to i64
  %i.cj = getelementptr [8 x i8], ptr %i.q, i64 %i.ci
  %i.ck = getelementptr i8, ptr %i.cj, i64 8
  call void @dlagtm_(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @c__1, ptr noundef nonnull @c_b18, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %i.bx, ptr noundef nonnull %14, ptr noundef nonnull @c_b19, ptr noundef %i.ck, ptr noundef nonnull %1) #7
  %i.cl = load i32, ptr %1, align 4, !tbaa !39    ; 10 uses
  %i.cm = icmp eq i32 %i.cl, 1                    ; 2 uses
  %i.cn = load double, ptr %i.bu, align 8, !tbaa !41 ; 3 uses
  %i.co = fcmp oge double %i.cn, 0.000000e+00
  %i.cp = fneg double %i.cn
  %i.cq = select i1 %i.co, double %i.cn, double %i.cp
  %i.cr = load double, ptr %4, align 8, !tbaa !41
  %i.cs = load double, ptr %i.bx, align 8, !tbaa !41
  %i.ct = fmul double %i.cr, %i.cs                ; 3 uses
  %i.cu = fcmp oge double %i.ct, 0.000000e+00
  %i.cv = fneg double %i.ct
  %i.cw = select i1 %i.cu, double %i.ct, double %i.cv
  %i.cx = fadd double %i.cq, %i.cw                ; 3 uses
  br i1 %.not, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  br i1 %i.cm, label %.lr.ph500.preheader.sink.split, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cy = load double, ptr %5, align 8, !tbaa !41
  %i.cz = load double, ptr %i.by, align 8, !tbaa !41
  %i.da = fmul double %i.cy, %i.cz                ; 3 uses
  %i.db = fcmp oge double %i.da, 0.000000e+00
  %i.dc = fneg double %i.da
  %i.dd = select i1 %i.db, double %i.da, double %i.dc
  %i.de = fadd double %i.cx, %i.dd
  store double %i.de, ptr %17, align 8, !tbaa !41
  %.not473.not489 = icmp sgt i32 %i.cl, 2
  br i1 %.not473.not489, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.o
  %wide.trip.count = zext nneg i32 %i.cl to i64   ; 3 uses
  %i.df = add nsw i64 %wide.trip.count, -2        ; 3 uses
  %min.iters.check873 = icmp ult i64 %i.df, 4
  br i1 %min.iters.check873, label %.lr.ph.preheader926, label %vector.memcheck874

vector.memcheck874:                               ; preds = %.lr.ph.preheader
  %i.dg = shl nuw nsw i64 %wide.trip.count, 3     ; 6 uses
  %i.dh = getelementptr i8, ptr %i.q, i64 %i.dg   ; 5 uses
  %i.di = getelementptr i8, ptr %i.bz, i64 %i.dg
  %i.dj = getelementptr i8, ptr %scevgep869, i64 %i.dg
  %i.dk = getelementptr i8, ptr %i.ca, i64 %i.dg
  %i.dl = getelementptr i8, ptr %i.g, i64 %i.dg
  %i.dm = getelementptr i8, ptr %i.h, i64 %i.dg
  %bound0875 = icmp ult ptr %scevgep871, %i.di
  %bound1876 = icmp ult ptr %scevgep870, %i.dh
  %found.conflict877 = and i1 %bound0875, %bound1876
  %bound0878 = icmp ult ptr %scevgep871, %i.dj
  %bound1879 = icmp ult ptr %3, %i.dh
  %found.conflict880 = and i1 %bound0878, %bound1879
  %conflict.rdx881 = or i1 %found.conflict877, %found.conflict880
  %bound0882 = icmp ult ptr %scevgep871, %i.dk
  %bound1883 = icmp ult ptr %scevgep868, %i.dh
  %found.conflict884 = and i1 %bound0882, %bound1883
  %conflict.rdx885 = or i1 %conflict.rdx881, %found.conflict884
  %bound0886 = icmp ult ptr %scevgep871, %i.dl
  %bound1887 = icmp ult ptr %scevgep867, %i.dh
  %found.conflict888 = and i1 %bound0886, %bound1887
  %conflict.rdx889 = or i1 %conflict.rdx885, %found.conflict888
  %bound0890 = icmp ult ptr %scevgep871, %i.dm
  %bound1891 = icmp ult ptr %scevgep866, %i.dh
  %found.conflict892 = and i1 %bound0890, %bound1891
  %conflict.rdx893 = or i1 %conflict.rdx889, %found.conflict892
  br i1 %conflict.rdx893, label %.lr.ph.preheader926, label %vector.ph894

vector.ph894:                                     ; preds = %vector.memcheck874
  %n.vec895 = and i64 %i.df, -4                   ; 3 uses
  %i.dn = or disjoint i64 %n.vec895, 2
  br label %vector.body896

vector.body896:                                   ; preds = %vector.body896, %vector.ph894
  %index897 = phi i64 [ 0, %vector.ph894 ], [ %index.next905, %vector.body896 ] ; 5 uses
  %i.do = or disjoint i64 %index897, 2            ; 5 uses
  %i.dp = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.do
  %wide.load898 = load <4 x double>, ptr %i.dp, align 8, !tbaa !41, !alias.scope !43 ; 3 uses
  %i.dq = fcmp oge <4 x double> %wide.load898, zeroinitializer
  %i.dr = fneg <4 x double> %wide.load898
  %i.ds = select <4 x i1> %i.dq, <4 x double> %wide.load898, <4 x double> %i.dr
  %i.dt = getelementptr [8 x i8], ptr %3, i64 %index897
  %wide.load899 = load <4 x double>, ptr %i.dt, align 8, !tbaa !41, !alias.scope !44
  %i.du = getelementptr [8 x i8], ptr %invariant.gep592, i64 %index897
  %i.dv = getelementptr i8, ptr %i.du, i64 8
  %wide.load900 = load <4 x double>, ptr %i.dv, align 8, !tbaa !41, !alias.scope !45
  %i.dw = fmul <4 x double> %wide.load899, %wide.load900 ; 3 uses
  %i.dx = fcmp oge <4 x double> %i.dw, zeroinitializer
  %i.dy = fneg <4 x double> %i.dw
  %i.dz = select <4 x i1> %i.dx, <4 x double> %i.dw, <4 x double> %i.dy
  %i.ea = fadd <4 x double> %i.ds, %i.dz
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.do
  %wide.load901 = load <4 x double>, ptr %i.eb, align 8, !tbaa !41, !alias.scope !46
  %i.ec = getelementptr [8 x i8], ptr %invariant.gep594, i64 %i.do
  %wide.load902 = load <4 x double>, ptr %i.ec, align 8, !tbaa !41, !alias.scope !45
  %i.ed = fmul <4 x double> %wide.load901, %wide.load902 ; 3 uses
  %i.ee = fcmp oge <4 x double> %i.ed, zeroinitializer
  %i.ef = fneg <4 x double> %i.ed
  %i.eg = select <4 x i1> %i.ee, <4 x double> %i.ed, <4 x double> %i.ef
  %i.eh = fadd <4 x double> %i.ea, %i.eg
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.do
  %wide.load903 = load <4 x double>, ptr %i.ei, align 8, !tbaa !41, !alias.scope !47
  %i.ej = getelementptr [8 x i8], ptr %invariant.gep596, i64 %index897
  %i.ek = getelementptr i8, ptr %i.ej, i64 24
  %wide.load904 = load <4 x double>, ptr %i.ek, align 8, !tbaa !41, !alias.scope !45
  %i.el = fmul <4 x double> %wide.load903, %wide.load904 ; 3 uses
  %i.em = fcmp oge <4 x double> %i.el, zeroinitializer
  %i.en = fneg <4 x double> %i.el
  %i.eo = select <4 x i1> %i.em, <4 x double> %i.el, <4 x double> %i.en
  %i.ep = fadd <4 x double> %i.eh, %i.eo
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.do
  store <4 x double> %i.ep, ptr %i.eq, align 8, !tbaa !41, !alias.scope !48, !noalias !49
  %index.next905 = add nuw i64 %index897, 4       ; 2 uses
  %i.er = icmp eq i64 %index.next905, %n.vec895
  br i1 %i.er, label %middle.block906, label %vector.body896, !llvm.loop !15

middle.block906:                                  ; preds = %vector.body896
  %cmp.n907 = icmp eq i64 %i.df, %n.vec895
  br i1 %cmp.n907, label %._crit_edge, label %.lr.ph.preheader926

.lr.ph.preheader926:                              ; preds = %vector.memcheck874, %.lr.ph.preheader, %middle.block906
  %indvars.iv.ph = phi i64 [ 2, %vector.memcheck874 ], [ 2, %.lr.ph.preheader ], [ %i.dn, %middle.block906 ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader926, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader926 ] ; 7 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv
  %20 = add nsw i64 %indvars.iv, -1               ; 2 uses
  %21 = getelementptr inbounds [8 x i8], ptr %i.f, i64 %20
  %22 = load double, ptr %21, align 8, !tbaa !41
  %gep593 = getelementptr [8 x i8], ptr %invariant.gep592, i64 %20
  %23 = load double, ptr %gep593, align 8, !tbaa !41
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv
  %i.et = load double, ptr %i.es, align 8, !tbaa !41
  %gep595.a = getelementptr [8 x i8], ptr %invariant.gep594, i64 %indvars.iv
  %24 = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv
  %25 = load double, ptr %24, align 8, !tbaa !41
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %26 = load double, ptr %gep, align 8, !tbaa !41
  %27 = load <2 x double>, ptr %gep595.a, align 8, !tbaa !41
  %28 = insertelement <4 x double> poison, double %26, i64 0
  %29 = insertelement <4 x double> %28, double %22, i64 1
  %30 = insertelement <4 x double> %29, double %i.et, i64 2
  %31 = insertelement <4 x double> %30, double %25, i64 3
  %32 = insertelement <4 x double> <double 1.000000e+00, double poison, double poison, double poison>, double %23, i64 1
  %33 = shufflevector <2 x double> %27, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %34 = shufflevector <4 x double> %32, <4 x double> %33, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %35 = fmul <4 x double> %31, %34                ; 3 uses
  %36 = fcmp oge <4 x double> %35, zeroinitializer
  %37 = fneg <4 x double> %35
  %38 = select <4 x i1> %36, <4 x double> %35, <4 x double> %37 ; 4 uses
  %shift = shufflevector <4 x double> %38, <4 x double> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop = fadd <4 x double> %38, %shift
  %shift910 = shufflevector <4 x double> %38, <4 x double> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop911 = fadd <4 x double> %foldExtExtBinop, %shift910
  %shift913 = shufflevector <4 x double> %38, <4 x double> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop914 = fadd <4 x double> %foldExtExtBinop911, %shift913
  %39 = extractelement <4 x double> %foldExtExtBinop914, i64 0
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv
  store double %39, ptr %i.eu, align 8, !tbaa !41
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !16

bb.p:                                             ; preds = %bb.m
  br i1 %i.cm, label %.lr.ph500.preheader.sink.split, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ev = load double, ptr %3, align 8, !tbaa !41
  %i.ew = load double, ptr %i.by, align 8, !tbaa !41
  %i.ex = fmul double %i.ev, %i.ew                ; 3 uses
  %i.ey = fcmp oge double %i.ex, 0.000000e+00
  %i.ez = fneg double %i.ex
  %i.fa = select i1 %i.ey, double %i.ex, double %i.ez
  %i.fb = fadd double %i.cx, %i.fa
  store double %i.fb, ptr %17, align 8, !tbaa !41
  %.not472.not491 = icmp sgt i32 %i.cl, 2
  br i1 %.not472.not491, label %.lr.ph494.preheader, label %._crit_edge

.lr.ph494.preheader:                              ; preds = %bb.q
  %wide.trip.count535 = zext nneg i32 %i.cl to i64 ; 3 uses
  %i.fc = add nsw i64 %wide.trip.count535, -2     ; 3 uses
  %min.iters.check801 = icmp ult i64 %i.fc, 4
  br i1 %min.iters.check801, label %.lr.ph494.preheader925, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph494.preheader
  %i.fd = shl nuw nsw i64 %wide.trip.count535, 3  ; 6 uses
  %i.fe = getelementptr i8, ptr %i.q, i64 %i.fd   ; 5 uses
  %i.ff = getelementptr i8, ptr %i.cb, i64 %i.fd
  %i.fg = getelementptr i8, ptr %scevgep798, i64 %i.fd
  %i.fh = getelementptr i8, ptr %i.cc, i64 %i.fd
  %i.fi = getelementptr i8, ptr %i.g, i64 %i.fd
  %i.fj = getelementptr i8, ptr %i.f, i64 %i.fd
  %bound0 = icmp ult ptr %scevgep800, %i.ff
  %bound1 = icmp ult ptr %scevgep799, %i.fe
  %found.conflict = and i1 %bound0, %bound1
  %bound0802 = icmp ult ptr %scevgep800, %i.fg
  %bound1803 = icmp ult ptr %5, %i.fe
  %found.conflict804 = and i1 %bound0802, %bound1803
  %conflict.rdx = or i1 %found.conflict, %found.conflict804
  %bound0805 = icmp ult ptr %scevgep800, %i.fh
  %bound1806 = icmp ult ptr %scevgep797, %i.fe
  %found.conflict807 = and i1 %bound0805, %bound1806
  %conflict.rdx808 = or i1 %conflict.rdx, %found.conflict807
  %bound0809 = icmp ult ptr %scevgep800, %i.fi
  %bound1810 = icmp ult ptr %scevgep796, %i.fe
  %found.conflict811 = and i1 %bound0809, %bound1810
  %conflict.rdx812 = or i1 %conflict.rdx808, %found.conflict811
  %bound0813 = icmp ult ptr %scevgep800, %i.fj
  %bound1814 = icmp ult ptr %scevgep, %i.fe
  %found.conflict815 = and i1 %bound0813, %bound1814
  %conflict.rdx816 = or i1 %conflict.rdx812, %found.conflict815
  br i1 %conflict.rdx816, label %.lr.ph494.preheader925, label %vector.ph817

vector.ph817:                                     ; preds = %vector.memcheck
  %n.vec818 = and i64 %i.fc, -4                   ; 3 uses
  %i.fk = or disjoint i64 %n.vec818, 2
  br label %vector.body819

vector.body819:                                   ; preds = %vector.body819, %vector.ph817
  %index820 = phi i64 [ 0, %vector.ph817 ], [ %index.next828, %vector.body819 ] ; 5 uses
  %i.fl = or disjoint i64 %index820, 2            ; 5 uses
  %i.fm = getelementptr [8 x i8], ptr %invariant.gep598, i64 %i.fl
  %wide.load821 = load <4 x double>, ptr %i.fm, align 8, !tbaa !41, !alias.scope !53 ; 3 uses
  %i.fn = fcmp oge <4 x double> %wide.load821, zeroinitializer
  %i.fo = fneg <4 x double> %wide.load821
  %i.fp = select <4 x i1> %i.fn, <4 x double> %wide.load821, <4 x double> %i.fo
  %i.fq = getelementptr [8 x i8], ptr %5, i64 %index820
  %wide.load822 = load <4 x double>, ptr %i.fq, align 8, !tbaa !41, !alias.scope !54
  %i.fr = getelementptr [8 x i8], ptr %invariant.gep600, i64 %index820
  %i.fs = getelementptr i8, ptr %i.fr, i64 8
  %wide.load823 = load <4 x double>, ptr %i.fs, align 8, !tbaa !41, !alias.scope !55
  %i.ft = fmul <4 x double> %wide.load822, %wide.load823 ; 3 uses
  %i.fu = fcmp oge <4 x double> %i.ft, zeroinitializer
  %i.fv = fneg <4 x double> %i.ft
  %i.fw = select <4 x i1> %i.fu, <4 x double> %i.ft, <4 x double> %i.fv
  %i.fx = fadd <4 x double> %i.fp, %i.fw
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.fl
  %wide.load824 = load <4 x double>, ptr %i.fy, align 8, !tbaa !41, !alias.scope !56
  %i.fz = getelementptr [8 x i8], ptr %invariant.gep602, i64 %i.fl
  %wide.load825 = load <4 x double>, ptr %i.fz, align 8, !tbaa !41, !alias.scope !55
  %i.ga = fmul <4 x double> %wide.load824, %wide.load825 ; 3 uses
  %i.gb = fcmp oge <4 x double> %i.ga, zeroinitializer
  %i.gc = fneg <4 x double> %i.ga
  %i.gd = select <4 x i1> %i.gb, <4 x double> %i.ga, <4 x double> %i.gc
  %i.ge = fadd <4 x double> %i.fx, %i.gd
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.fl
  %wide.load826 = load <4 x double>, ptr %i.gf, align 8, !tbaa !41, !alias.scope !57
  %i.gg = getelementptr [8 x i8], ptr %invariant.gep604, i64 %index820
  %i.gh = getelementptr i8, ptr %i.gg, i64 24
  %wide.load827 = load <4 x double>, ptr %i.gh, align 8, !tbaa !41, !alias.scope !55
  %i.gi = fmul <4 x double> %wide.load826, %wide.load827 ; 3 uses
  %i.gj = fcmp oge <4 x double> %i.gi, zeroinitializer
  %i.gk = fneg <4 x double> %i.gi
  %i.gl = select <4 x i1> %i.gj, <4 x double> %i.gi, <4 x double> %i.gk
  %i.gm = fadd <4 x double> %i.ge, %i.gl
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.fl
  store <4 x double> %i.gm, ptr %i.gn, align 8, !tbaa !41, !alias.scope !58, !noalias !59
  %index.next828 = add nuw i64 %index820, 4       ; 2 uses
  %i.go = icmp eq i64 %index.next828, %n.vec818
  br i1 %i.go, label %middle.block829, label %vector.body819, !llvm.loop !24

middle.block829:                                  ; preds = %vector.body819
  %cmp.n830 = icmp eq i64 %i.fc, %n.vec818
  br i1 %cmp.n830, label %._crit_edge, label %.lr.ph494.preheader925

.lr.ph494.preheader925:                           ; preds = %vector.memcheck, %.lr.ph494.preheader, %middle.block829
  %indvars.iv532.ph = phi i64 [ 2, %vector.memcheck ], [ 2, %.lr.ph494.preheader ], [ %i.fk, %middle.block829 ]
  br label %.lr.ph494

.lr.ph494:                                        ; preds = %.lr.ph494.preheader925, %.lr.ph494
  %indvars.iv532 = phi i64 [ %indvars.iv.next533, %.lr.ph494 ], [ %indvars.iv532.ph, %.lr.ph494.preheader925 ] ; 7 uses
  %gep599 = getelementptr [8 x i8], ptr %invariant.gep598, i64 %indvars.iv532
  %40 = add nsw i64 %indvars.iv532, -1            ; 2 uses
  %41 = getelementptr inbounds [8 x i8], ptr %i.h, i64 %40
  %42 = load double, ptr %41, align 8, !tbaa !41
  %gep601 = getelementptr [8 x i8], ptr %invariant.gep600, i64 %40
  %43 = load double, ptr %gep601, align 8, !tbaa !41
  %i.gp = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv532
  %i.gq = load double, ptr %i.gp, align 8, !tbaa !41
  %gep603.a = getelementptr [8 x i8], ptr %invariant.gep602, i64 %indvars.iv532
  %44 = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv532
  %45 = load double, ptr %44, align 8, !tbaa !41
  %indvars.iv.next533 = add nuw nsw i64 %indvars.iv532, 1 ; 2 uses
  %46 = load double, ptr %gep599, align 8, !tbaa !41
  %47 = load <2 x double>, ptr %gep603.a, align 8, !tbaa !41
  %48 = insertelement <4 x double> poison, double %46, i64 0
  %49 = insertelement <4 x double> %48, double %42, i64 1
  %50 = insertelement <4 x double> %49, double %i.gq, i64 2
  %51 = insertelement <4 x double> %50, double %45, i64 3
  %52 = insertelement <4 x double> <double 1.000000e+00, double poison, double poison, double poison>, double %43, i64 1
  %53 = shufflevector <2 x double> %47, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %54 = shufflevector <4 x double> %52, <4 x double> %53, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %55 = fmul <4 x double> %51, %54                ; 3 uses
  %56 = fcmp oge <4 x double> %55, zeroinitializer
  %57 = fneg <4 x double> %55
  %58 = select <4 x i1> %56, <4 x double> %55, <4 x double> %57 ; 4 uses
  %shift916 = shufflevector <4 x double> %58, <4 x double> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop917 = fadd <4 x double> %58, %shift916
  %shift919 = shufflevector <4 x double> %58, <4 x double> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop920 = fadd <4 x double> %foldExtExtBinop917, %shift919
  %shift922 = shufflevector <4 x double> %58, <4 x double> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop923 = fadd <4 x double> %foldExtExtBinop920, %shift922
  %59 = extractelement <4 x double> %foldExtExtBinop923, i64 0
  %i.gr = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv532
  store double %59, ptr %i.gr, align 8, !tbaa !41
  %exitcond536.not = icmp eq i64 %indvars.iv.next533, %wide.trip.count535
  br i1 %exitcond536.not, label %._crit_edge, label %.lr.ph494, !llvm.loop !25

._crit_edge:                                      ; preds = %.lr.ph, %.lr.ph494, %middle.block906, %middle.block829, %bb.q, %bb.o
  %.sink650 = phi ptr [ %i.f, %bb.o ], [ %i.h, %middle.block829 ], [ %i.h, %bb.q ], [ %i.f, %middle.block906 ], [ %i.h, %.lr.ph494 ], [ %i.f, %.lr.ph ]
  %i.gs = sext i32 %i.cl to i64                   ; 4 uses
  %i.gt = getelementptr [8 x i8], ptr %.sink659, i64 %i.gs
  %i.gu = load double, ptr %i.gt, align 8, !tbaa !41 ; 3 uses
  %i.gv = fcmp oge double %i.gu, 0.000000e+00
  %i.gw = fneg double %i.gu
  %i.gx = select i1 %i.gv, double %i.gu, double %i.gw
  %i.gy = add nsw i32 %i.cl, -1
  %i.gz = sext i32 %i.gy to i64                   ; 2 uses
  %i.ha = getelementptr inbounds [8 x i8], ptr %.sink650, i64 %i.gz
  %i.hb = load double, ptr %i.ha, align 8, !tbaa !41
  %i.hc = getelementptr [8 x i8], ptr %.sink647, i64 %i.gz
  %i.hd = load double, ptr %i.hc, align 8, !tbaa !41
  %i.he = fmul double %i.hb, %i.hd                ; 3 uses
  %i.hf = fcmp oge double %i.he, 0.000000e+00
  %i.hg = fneg double %i.he
  %i.hh = select i1 %i.hf, double %i.he, double %i.hg
  %i.hi = fadd double %i.gx, %i.hh
  %i.hj = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.gs
  %i.hk = load double, ptr %i.hj, align 8, !tbaa !41
  %i.hl = getelementptr [8 x i8], ptr %.sink633, i64 %i.gs
  %i.hm = load double, ptr %i.hl, align 8, !tbaa !41
  %i.hn = fmul double %i.hk, %i.hm                ; 3 uses
  %i.ho = fcmp oge double %i.hn, 0.000000e+00
  %i.hp = fneg double %i.hn
  %i.hq = select i1 %i.ho, double %i.hn, double %i.hp
  %i.hr = fadd double %i.hi, %i.hq
  %i.hs = getelementptr inbounds [8 x i8], ptr %i.q, i64 %i.gs
  store double %i.hr, ptr %i.hs, align 8, !tbaa !41
  %.not474496 = icmp slt i32 %i.cl, 1
  br i1 %.not474496, label %._crit_edge501, label %.lr.ph500.preheader

.lr.ph500.preheader.sink.split:                   ; preds = %bb.p, %bb.n
  store double %i.cx, ptr %17, align 8, !tbaa !41
  br label %.lr.ph500.preheader

.lr.ph500.preheader:                              ; preds = %.lr.ph500.preheader.sink.split, %._crit_edge
  %i.ht = phi i32 [ %i.cl, %._crit_edge ], [ 1, %.lr.ph500.preheader.sink.split ] ; 6 uses
  %i.hu = zext nneg i32 %i.ht to i64              ; 2 uses
  %invariant.gep606 = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.hu ; 3 uses
  %invariant.gep608 = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.hu ; 3 uses
  %i.hv = zext nneg i32 %i.ht to i64              ; 2 uses
  %xtraiter = and i64 %i.hv, 1
  %i.hw = icmp eq i32 %i.ht, 1
  br i1 %i.hw, label %.lr.ph500.epil.preheader, label %.lr.ph500.preheader.new

.lr.ph500.preheader.new:                          ; preds = %.lr.ph500.preheader
  %unroll_iter = and i64 %i.hv, 2147483646
  br label %.lr.ph500

.lr.ph500:                                        ; preds = %bb.v, %.lr.ph500.preheader.new
  %indvars.iv537 = phi i64 [ 1, %.lr.ph500.preheader.new ], [ %indvars.iv.next538.1, %bb.v ] ; 6 uses
  %.0452498 = phi double [ 0.000000e+00, %.lr.ph500.preheader.new ], [ %i.je, %bb.v ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph500.preheader.new ], [ %niter.next.1, %bb.v ]
  %i.hx = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv537
  %i.hy = load double, ptr %i.hx, align 8, !tbaa !41 ; 3 uses
  %i.hz = fcmp ogt double %i.hy, %i.al
  br i1 %i.hz, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.lr.ph500
  %gep609 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep608, i64 %indvars.iv537
  %i.ia = load double, ptr %gep609, align 8, !tbaa !41 ; 3 uses
  %i.ib = fcmp oge double %i.ia, 0.000000e+00
  %i.ic = fneg double %i.ia
  %i.id = select i1 %i.ib, double %i.ia, double %i.ic
  %i.ie = fdiv double %i.id, %i.hy
  br label %.lr.ph500.1

bb.s:                                             ; preds = %.lr.ph500
  %gep607 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep606, i64 %indvars.iv537
  %i.if = load double, ptr %gep607, align 8, !tbaa !41 ; 3 uses
  %i.ig = fcmp oge double %i.if, 0.000000e+00
  %i.ih = fneg double %i.if
  %i.ii = select i1 %i.ig, double %i.if, double %i.ih
  %i.ij = fadd double %i.ak, %i.ii
  %i.ik = fadd double %i.ak, %i.hy
  %i.il = fdiv double %i.ij, %i.ik
  br label %.lr.ph500.1

.lr.ph500.1:                                      ; preds = %bb.r, %bb.s
  %.sink664 = phi double [ %i.ie, %bb.r ], [ %i.il, %bb.s ] ; 2 uses
  %i.im = fcmp oge double %.0452498, %.sink664
  %i.in = select i1 %i.im, double %.0452498, double %.sink664 ; 2 uses
  %indvars.iv.next538 = add nuw nsw i64 %indvars.iv537, 1 ; 2 uses
  %i.io = getelementptr [8 x i8], ptr %17, i64 %indvars.iv537
  %i.ip = load double, ptr %i.io, align 8, !tbaa !41 ; 3 uses
  %i.iq = fcmp ogt double %i.ip, %i.al
  br i1 %i.iq, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.lr.ph500.1
  %gep607.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep606, i64 %indvars.iv.next538
  %i.ir = load double, ptr %gep607.1, align 8, !tbaa !41 ; 3 uses
  %i.is = fcmp oge double %i.ir, 0.000000e+00
  %i.it = fneg double %i.ir
  %i.iu = select i1 %i.is, double %i.ir, double %i.it
  %i.iv = fadd double %i.ak, %i.iu
  %i.iw = fadd double %i.ak, %i.ip
  %i.ix = fdiv double %i.iv, %i.iw
  br label %bb.v

bb.u:                                             ; preds = %.lr.ph500.1
  %gep609.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep608, i64 %indvars.iv.next538
  %i.iy = load double, ptr %gep609.1, align 8, !tbaa !41 ; 3 uses
  %i.iz = fcmp oge double %i.iy, 0.000000e+00
  %i.ja = fneg double %i.iy
  %i.jb = select i1 %i.iz, double %i.iy, double %i.ja
  %i.jc = fdiv double %i.jb, %i.ip
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.sink664.1 = phi double [ %i.jc, %bb.u ], [ %i.ix, %bb.t ] ; 2 uses
  %i.jd = fcmp oge double %i.in, %.sink664.1
  %i.je = select i1 %i.jd, double %i.in, double %.sink664.1 ; 3 uses
  %indvars.iv.next538.1 = add nuw nsw i64 %indvars.iv537, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge501.loopexit.unr-lcssa, label %.lr.ph500, !llvm.loop !26

._crit_edge501.loopexit.unr-lcssa:                ; preds = %bb.v
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge501, label %.lr.ph500.epil.preheader

.lr.ph500.epil.preheader:                         ; preds = %._crit_edge501.loopexit.unr-lcssa, %.lr.ph500.preheader
  %indvars.iv537.epil.init = phi i64 [ 1, %.lr.ph500.preheader ], [ %indvars.iv.next538.1, %._crit_edge501.loopexit.unr-lcssa ] ; 3 uses
  %.0452498.epil.init = phi double [ 0.000000e+00, %.lr.ph500.preheader ], [ %i.je, %._crit_edge501.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod932 = trunc i32 %i.ht to i1
  call void @llvm.assume(i1 %lcmp.mod932)
  %i.jf = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv537.epil.init
  %i.jg = load double, ptr %i.jf, align 8, !tbaa !41 ; 3 uses
  %i.jh = fcmp ogt double %i.jg, %i.al
  br i1 %i.jh, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.lr.ph500.epil.preheader
  %gep607.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep606, i64 %indvars.iv537.epil.init
  %i.ji = load double, ptr %gep607.epil, align 8, !tbaa !41 ; 3 uses
  %i.jj = fcmp oge double %i.ji, 0.000000e+00
  %i.jk = fneg double %i.ji
  %i.jl = select i1 %i.jj, double %i.ji, double %i.jk
  %i.jm = fadd double %i.ak, %i.jl
  %i.jn = fadd double %i.ak, %i.jg
  %i.jo = fdiv double %i.jm, %i.jn
  br label %._crit_edge501.loopexit.epilog-lcssa

bb.x:                                             ; preds = %.lr.ph500.epil.preheader
  %gep609.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep608, i64 %indvars.iv537.epil.init
  %i.jp = load double, ptr %gep609.epil, align 8, !tbaa !41 ; 3 uses
  %i.jq = fcmp oge double %i.jp, 0.000000e+00
  %i.jr = fneg double %i.jp
  %i.js = select i1 %i.jq, double %i.jp, double %i.jr
  %i.jt = fdiv double %i.js, %i.jg
  br label %._crit_edge501.loopexit.epilog-lcssa

._crit_edge501.loopexit.epilog-lcssa:             ; preds = %bb.x, %bb.w
  %.sink664.epil = phi double [ %i.jt, %bb.x ], [ %i.jo, %bb.w ] ; 2 uses
  %i.ju = fcmp oge double %.0452498.epil.init, %.sink664.epil
  %i.jv = select i1 %i.ju, double %.0452498.epil.init, double %.sink664.epil
  br label %._crit_edge501

._crit_edge501:                                   ; preds = %._crit_edge501.loopexit.epilog-lcssa, %._crit_edge501.loopexit.unr-lcssa, %._crit_edge
  %.not474496589 = phi i1 [ true, %._crit_edge ], [ false, %._crit_edge501.loopexit.unr-lcssa ], [ false, %._crit_edge501.loopexit.epilog-lcssa ]
  %i.jw = phi i32 [ %i.cl, %._crit_edge ], [ %i.ht, %._crit_edge501.loopexit.unr-lcssa ], [ %i.ht, %._crit_edge501.loopexit.epilog-lcssa ] ; 4 uses
  %.0452.lcssa = phi double [ 0.000000e+00, %._crit_edge ], [ %i.je, %._crit_edge501.loopexit.unr-lcssa ], [ %i.jv, %._crit_edge501.loopexit.epilog-lcssa ] ; 3 uses
  store double %.0452.lcssa, ptr %i.br, align 8, !tbaa !41
  %i.jx = fcmp ogt double %.0452.lcssa, %i.ai
  br i1 %i.jx, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %._crit_edge501
  %i.jy = fmul double %.0452.lcssa, 2.000000e+00
  %i.jz = fcmp ole double %i.jy, %.0
  %i.ka = icmp samesign ult i32 %.0451, 6
  %or.cond = select i1 %i.jz, i1 %i.ka, i1 false
  br i1 %or.cond, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.kb = sext i32 %i.jw to i64
  %i.kc = getelementptr [8 x i8], ptr %i.q, i64 %i.kb
  %i.kd = getelementptr i8, ptr %i.kc, i64 8
  call void @dgttrs_(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @c__1, ptr noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %i.kd, ptr noundef nonnull %1, ptr noundef nonnull %19) #7
  %i.ke = load i32, ptr %1, align 4, !tbaa !39
  %i.kf = sext i32 %i.ke to i64
  %i.kg = getelementptr [8 x i8], ptr %i.q, i64 %i.kf
  %i.kh = getelementptr i8, ptr %i.kg, i64 8
  call void @daxpy_(ptr noundef nonnull %1, ptr noundef nonnull @c_b19, ptr noundef %i.kh, ptr noundef nonnull @c__1, ptr noundef nonnull %i.bx, ptr noundef nonnull @c__1) #7
  %i.ki = load double, ptr %i.br, align 8, !tbaa !41
  %i.kj = add nuw nsw i32 %.0451, 1
  br label %bb.m

bb.aa:                                            ; preds = %bb.y, %._crit_edge501
  br i1 %.not474496589, label %._crit_edge506, label %iter.check744

iter.check744:                                    ; preds = %bb.aa
  %i.kk = zext nneg i32 %i.jw to i64              ; 2 uses
  %i.kl = add i32 %i.jw, 1
  %wide.trip.count546 = zext i32 %i.kl to i64     ; 2 uses
  %invariant.gep610 = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.kk ; 3 uses
  %invariant.gep612 = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.kk ; 3 uses
end_hunk_0
