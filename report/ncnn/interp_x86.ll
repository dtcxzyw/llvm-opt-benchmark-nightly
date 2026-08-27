Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/interp_x86?download=true
inline.NumInlined: 95
inline.NumDeleted: 55
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_ZNK4ncnn10Interp_x867forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined.4:bb.a
  store i32 0, ptr %i.a, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 %i.g, ptr %i.b, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i32 1, ptr %i.c, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i32 0, ptr %i.d, align 4, !tbaa !25
  %i.h = load i32, ptr %0, align 4, !tbaa !25     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !25
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !25
  %i.k = load i32, ptr %i.a, align 4, !tbaa !25   ; 2 uses
  %.not90 = icmp sgt i32 %i.k, %i.j
  br i1 %.not90, label %._crit_edge94, label %.lr.ph93

.lr.ph93:                                         ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.p = load i32, ptr %6, align 4, !tbaa !25     ; 3 uses
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %.lr.ph93.split.preheader, label %._crit_edge94

.lr.ph93.split.preheader:                         ; preds = %.lr.ph93
  %i.r = sext i32 %i.k to i64
  %i.s = add nsw i32 %i.j, 1
  br label %.lr.ph93.split

.lr.ph93.split:                                   ; preds = %.lr.ph93.split.preheader, %._crit_edge89
  %i.t = phi i32 [ %i.p, %.lr.ph93.split.preheader ], [ %i.cq, %._crit_edge89 ] ; 6 uses
  %i.u = phi i32 [ %i.p, %.lr.ph93.split.preheader ], [ %i.cr, %._crit_edge89 ] ; 2 uses
  %indvars.iv116 = phi i64 [ %i.r, %.lr.ph93.split.preheader ], [ %indvars.iv.next117, %._crit_edge89 ] ; 3 uses
  %i.v = load ptr, ptr %3, align 8, !tbaa !45     ; 2 uses
  %i.w = ptrtoaddr ptr %i.v to i64
  %i.x = load i32, ptr %i.l, align 4, !tbaa !26
  %i.y = sext i32 %i.x to i64
  %i.z = mul i64 %indvars.iv116, %i.y
  %i.aa = load i64, ptr %i.m, align 8, !tbaa !29
  %i.ab = mul i64 %i.z, %i.aa                     ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.ab ; 2 uses
  %i.ad = load ptr, ptr %4, align 8, !tbaa !45
  %i.ae = load i32, ptr %i.n, align 4, !tbaa !26
  %i.af = sext i32 %i.ae to i64
  %i.ag = mul nsw i64 %indvars.iv116, %i.af
  %i.ah = load i64, ptr %i.o, align 8, !tbaa !29
  %i.ai = mul i64 %i.ag, %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ai ; 2 uses
  %i.ak = load ptr, ptr %5, align 8, !tbaa !72    ; 2 uses
  %i.al = icmp sgt i32 %i.u, 0
  br i1 %i.al, label %.lr.ph88, label %._crit_edge89

.lr.ph88:                                         ; preds = %.lr.ph93.split
  %i.am = load i32, ptr %8, align 4, !tbaa !25    ; 8 uses
  %i.an = icmp sgt i32 %i.am, 3
  br i1 %i.an, label %.lr.ph88.split.preheader, label %.lr.ph88.split.us

.lr.ph88.split.preheader:                         ; preds = %.lr.ph88
  %i.ao = add i64 %i.ab, %i.w                     ; 2 uses
  br label %.lr.ph88.split

.lr.ph88.split.us:                                ; preds = %.lr.ph88
  %i.ap = load ptr, ptr %7, align 8, !tbaa !71
  %i.aq = icmp sgt i32 %i.am, 0
  %i.ar = sext i32 %i.am to i64                   ; 5 uses
  br i1 %i.aq, label %.preheader.us.preheader, label %._crit_edge89

.preheader.us.preheader:                          ; preds = %.lr.ph88.split.us
  %i.as = shl nuw nsw i32 %i.am, 1
  %i.at = zext nneg i32 %i.as to i64
  %smax = call i32 @llvm.smax.i32(i32 %i.t, i32 1)
  %wide.trip.count103 = zext nneg i32 %smax to i64
  %i.au = sub nsw i64 0, %i.ar
  %exitcond.not = icmp eq i32 %i.am, 1
  %i.av = sub nsw i64 1, %i.ar
  %exitcond.not.1 = icmp eq i32 %i.am, 2
  %i.aw = sub nsw i64 2, %i.ar
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge.us
  %indvars.iv100 = phi i64 [ 0, %.preheader.us.preheader ], [ %indvars.iv.next101, %._crit_edge.us ] ; 2 uses
  %.06685.us = phi ptr [ %i.ak, %.preheader.us.preheader ], [ %i.co, %._crit_edge.us ] ; 2 uses
  %.06784.us = phi ptr [ %i.aj, %.preheader.us.preheader ], [ %i.cp, %._crit_edge.us ] ; 4 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv100
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !25
  %i.az = mul nsw i32 %i.am, %i.ay
  %i.ba = sext i32 %i.az to i64
  %i.bb = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.ba ; 8 uses
  %i.bc = load <4 x float>, ptr %.06685.us, align 4, !tbaa !70 ; 3 uses
  %invariant.gep = getelementptr [4 x i8], ptr %i.bb, i64 %i.ar ; 3 uses
  %invariant.gep131 = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %i.at ; 3 uses
  %i.bd = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %i.au
  %i.be = load float, ptr %i.bd, align 4, !tbaa !70
  %i.bf = load float, ptr %i.bb, align 4, !tbaa !70
  %i.bg = load float, ptr %invariant.gep, align 4, !tbaa !70
  %i.bh = load float, ptr %invariant.gep131, align 4, !tbaa !70
  %i.bi = insertelement <4 x float> poison, float %i.be, i64 0
  %i.bj = insertelement <4 x float> %i.bi, float %i.bf, i64 1
  %i.bk = insertelement <4 x float> %i.bj, float %i.bg, i64 2
  %i.bl = insertelement <4 x float> %i.bk, float %i.bh, i64 3
  %i.bm = fmul fast <4 x float> %i.bl, %i.bc
  %i.bn = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.bm)
  store float %i.bn, ptr %.06784.us, align 4, !tbaa !70
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.c

bb.c:                                             ; preds = %.preheader.us
  %i.bo = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %i.av
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !70
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bb, i64 4
  %i.br = load float, ptr %i.bq, align 4, !tbaa !70
  %gep.1 = getelementptr i8, ptr %invariant.gep, i64 4
  %i.bs = load float, ptr %gep.1, align 4, !tbaa !70
  %gep132.1 = getelementptr inbounds nuw i8, ptr %invariant.gep131, i64 4
  %i.bt = load float, ptr %gep132.1, align 4, !tbaa !70
  %i.bu = insertelement <4 x float> poison, float %i.bp, i64 0
  %i.bv = insertelement <4 x float> %i.bu, float %i.br, i64 1
  %i.bw = insertelement <4 x float> %i.bv, float %i.bs, i64 2
  %i.bx = insertelement <4 x float> %i.bw, float %i.bt, i64 3
  %i.by = fmul fast <4 x float> %i.bx, %i.bc
  %i.bz = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.by)
  %i.ca = getelementptr inbounds nuw i8, ptr %.06784.us, i64 4
  store float %i.bz, ptr %i.ca, align 4, !tbaa !70
  br i1 %exitcond.not.1, label %._crit_edge.us, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.cb = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %i.aw
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !70
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !70
  %gep.2 = getelementptr i8, ptr %invariant.gep, i64 8
  %i.cf = load float, ptr %gep.2, align 4, !tbaa !70
  %gep132.2 = getelementptr inbounds nuw i8, ptr %invariant.gep131, i64 8
  %i.cg = load float, ptr %gep132.2, align 4, !tbaa !70
  %i.ch = insertelement <4 x float> poison, float %i.cc, i64 0
  %i.ci = insertelement <4 x float> %i.ch, float %i.ce, i64 1
  %i.cj = insertelement <4 x float> %i.ci, float %i.cf, i64 2
  %i.ck = insertelement <4 x float> %i.cj, float %i.cg, i64 3
  %i.cl = fmul fast <4 x float> %i.ck, %i.bc
  %i.cm = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.cl)
  %i.cn = getelementptr inbounds nuw i8, ptr %.06784.us, i64 8
  store float %i.cm, ptr %i.cn, align 4, !tbaa !70
  br label %._crit_edge.us

._crit_edge.us:                                   ; preds = %bb.d, %bb.c, %.preheader.us
  %i.co = getelementptr inbounds nuw i8, ptr %.06685.us, i64 16
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %.06784.us, i64 %i.ar
  %indvars.iv.next101 = add nuw nsw i64 %indvars.iv100, 1 ; 2 uses
  %exitcond104.not = icmp eq i64 %indvars.iv.next101, %wide.trip.count103
  br i1 %exitcond104.not, label %._crit_edge89, label %.preheader.us, !llvm.loop !117

._crit_edge89:                                    ; preds = %._crit_edge.us, %._crit_edge, %.lr.ph88.split.us, %.lr.ph93.split
  %i.cq = phi i32 [ %i.gf, %._crit_edge ], [ %i.t, %.lr.ph93.split ], [ %i.t, %.lr.ph88.split.us ], [ %i.t, %._crit_edge.us ]
  %i.cr = phi i32 [ %i.gf, %._crit_edge ], [ %i.u, %.lr.ph93.split ], [ %i.t, %.lr.ph88.split.us ], [ %i.t, %._crit_edge.us ]
  %indvars.iv.next117 = add nsw i64 %indvars.iv116, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next117 to i32
  %exitcond119.not = icmp eq i32 %i.s, %lftr.wideiv
  br i1 %exitcond119.not, label %._crit_edge94, label %.lr.ph93.split, !llvm.loop !118

.lr.ph88.split:                                   ; preds = %.lr.ph88.split.preheader, %._crit_edge
  %i.cs = phi i32 [ %i.dg, %._crit_edge ], [ %i.am, %.lr.ph88.split.preheader ] ; 4 uses
  %indvars.iv113 = phi i64 [ %indvars.iv.next114, %._crit_edge ], [ 0, %.lr.ph88.split.preheader ] ; 2 uses
  %.06685 = phi ptr [ %i.gd, %._crit_edge ], [ %i.ak, %.lr.ph88.split.preheader ] ; 2 uses
  %.06784 = phi ptr [ %i.ge, %._crit_edge ], [ %i.aj, %.lr.ph88.split.preheader ] ; 5 uses
  %.06784139 = ptrtoaddr ptr %.06784 to i64       ; 2 uses
  %i.ct = load ptr, ptr %7, align 8, !tbaa !71
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %indvars.iv113
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !25
  %i.cw = mul i32 %i.cs, %i.cv
  %i.cx = sext i32 %i.cw to i64                   ; 4 uses
  %i.cy = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.cx ; 7 uses
  %i.cz = load <4 x float>, ptr %.06685, align 4, !tbaa !70 ; 5 uses
  %i.da = shufflevector <4 x float> %i.cz, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.db = shufflevector <4 x float> %i.cz, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.dc = shufflevector <4 x float> %i.cz, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2> ; 2 uses
  %i.dd = shufflevector <4 x float> %i.cz, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3> ; 2 uses
  %i.de = icmp sgt i32 %i.cs, 3
  br i1 %i.de, label %.lr.ph, label %.preheader

.preheader.loopexit:                              ; preds = %.lr.ph
  %i.df = trunc nuw nsw i64 %indvars.iv.next106 to i32
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %.lr.ph88.split
  %i.dg = phi i32 [ %i.cs, %.lr.ph88.split ], [ %i.fm, %.preheader.loopexit ] ; 6 uses
  %.0.lcssa = phi i32 [ 0, %.lr.ph88.split ], [ %i.df, %.preheader.loopexit ] ; 2 uses
  %i.dh = icmp slt i32 %.0.lcssa, %i.dg
  br i1 %i.dh, label %.lr.ph83, label %.preheader.._crit_edge_crit_edge

.preheader.._crit_edge_crit_edge:                 ; preds = %.preheader
  %.pre = sext i32 %i.dg to i64
  br label %._crit_edge

.lr.ph83:                                         ; preds = %.preheader
  %i.di = shl nuw nsw i32 %i.dg, 1
  %i.dj = zext i32 %.0.lcssa to i64               ; 5 uses
  %i.dk = zext nneg i32 %i.dg to i64              ; 5 uses
  %i.dl = zext nneg i32 %i.di to i64              ; 2 uses
  %wide.trip.count111 = zext nneg i32 %i.dg to i64 ; 4 uses
  %invariant.gep133 = getelementptr [4 x i8], ptr %i.cy, i64 %i.dk ; 2 uses
  %invariant.gep135 = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %i.dl ; 2 uses
  %i.dm = sub nsw i64 %wide.trip.count111, %i.dj  ; 3 uses
  %min.iters.check = icmp ult i64 %i.dm, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph83
  %i.dn = sub i64 %.06784139, %i.ao               ; 2 uses
  %i.do = add nsw i64 %i.cx, %i.dl
  %i.dp = shl nsw i64 %i.do, 2
  %i.dq = sub i64 %i.dp, %i.dn
  %diff.check = icmp ugt i64 %i.dq, -16
  %i.dr = add nsw i64 %i.cx, %wide.trip.count111
  %i.ds = shl nsw i64 %i.dr, 2
  %i.dt = sub i64 %i.ds, %i.dn
  %diff.check140 = icmp ugt i64 %i.dt, -16
  %conflict.rdx = or i1 %diff.check, %diff.check140
  %i.du = sub i64 %.06784139, %i.ao               ; 2 uses
  %i.dv = shl nsw i64 %i.cx, 2                    ; 2 uses
  %i.dw = sub i64 %i.dv, %i.du
  %diff.check141 = icmp ugt i64 %i.dw, -16
  %conflict.rdx142 = or i1 %conflict.rdx, %diff.check141
  %i.dx = shl nuw nsw i64 %wide.trip.count111, 2
  %i.dy = add i64 %i.du, %i.dx
  %i.dz = sub i64 %i.dv, %i.dy
  %diff.check143 = icmp ugt i64 %i.dz, -16
  %conflict.rdx144 = or i1 %conflict.rdx142, %diff.check143
  br i1 %conflict.rdx144, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.dm, -4                      ; 3 uses
  %i.ea = add nsw i64 %n.vec, %i.dj
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.eb = add nuw i64 %index, %i.dj               ; 5 uses
  %i.ec = sub nsw i64 %i.eb, %i.dk
  %i.ed = getelementptr inbounds [4 x i8], ptr %i.cy, i64 %i.ec
  %wide.load = load <4 x float>, ptr %i.ed, align 4, !tbaa !70
  %i.ee = fmul fast <4 x float> %wide.load, %i.da
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %i.eb
  %wide.load151 = load <4 x float>, ptr %i.ef, align 4, !tbaa !70
  %i.eg = fmul fast <4 x float> %wide.load151, %i.db
  %i.eh = fadd fast <4 x float> %i.ee, %i.eg
  %i.ei = getelementptr [4 x i8], ptr %invariant.gep133, i64 %i.eb
  %wide.load152 = load <4 x float>, ptr %i.ei, align 4, !tbaa !70
  %i.ej = fmul fast <4 x float> %wide.load152, %i.dc
  %i.ek = fadd fast <4 x float> %i.eh, %i.ej
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep135, i64 %i.eb
  %wide.load153 = load <4 x float>, ptr %i.el, align 4, !tbaa !70
  %i.em = fmul fast <4 x float> %wide.load153, %i.dd
  %i.en = fadd fast <4 x float> %i.ek, %i.em
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %.06784, i64 %i.eb
  store <4 x float> %i.en, ptr %i.eo, align 4, !tbaa !70
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ep = icmp eq i64 %index.next, %n.vec
  br i1 %i.ep, label %middle.block, label %vector.body, !llvm.loop !119

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dm, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph83, %middle.block
  %indvars.iv108.ph = phi i64 [ %i.dj, %vector.memcheck ], [ %i.dj, %.lr.ph83 ], [ %i.ea, %middle.block ]
  br label %scalar.ph

.lr.ph:                                           ; preds = %.lr.ph88.split, %.lr.ph
  %indvars.iv105 = phi i64 [ %indvars.iv.next106, %.lr.ph ], [ 0, %.lr.ph88.split ] ; 3 uses
  %i.eq = phi i32 [ %i.fm, %.lr.ph ], [ %i.cs, %.lr.ph88.split ] ; 2 uses
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %indvars.iv105 ; 4 uses
  %i.es = sext i32 %i.eq to i64                   ; 2 uses
  %i.et = sub nsw i64 0, %i.es
  %i.eu = getelementptr inbounds [4 x i8], ptr %i.er, i64 %i.et
  %i.ev = load <4 x float>, ptr %i.eu, align 16, !tbaa !17
  %i.ew = load <4 x float>, ptr %i.er, align 16, !tbaa !17
  %i.ex = getelementptr inbounds [4 x i8], ptr %i.er, i64 %i.es
  %i.ey = load <4 x float>, ptr %i.ex, align 16, !tbaa !17
  %i.ez = shl nsw i32 %i.eq, 1
  %i.fa = sext i32 %i.ez to i64
  %i.fb = getelementptr inbounds [4 x i8], ptr %i.er, i64 %i.fa
  %i.fc = load <4 x float>, ptr %i.fb, align 16, !tbaa !17
  %i.fd = fmul fast <4 x float> %i.ev, %i.da
  %i.fe = fmul fast <4 x float> %i.ew, %i.db
  %i.ff = fadd fast <4 x float> %i.fd, %i.fe
  %i.fg = fmul fast <4 x float> %i.ey, %i.dc
  %i.fh = fadd fast <4 x float> %i.fg, %i.ff
  %i.fi = fmul fast <4 x float> %i.fc, %i.dd
  %i.fj = fadd fast <4 x float> %i.fi, %i.fh
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %.06784, i64 %indvars.iv105
  store <4 x float> %i.fj, ptr %i.fk, align 16, !tbaa !17
  %indvars.iv.next106 = add nuw nsw i64 %indvars.iv105, 4 ; 3 uses
  %i.fl = or disjoint i64 %indvars.iv.next106, 3
  %i.fm = load i32, ptr %8, align 4, !tbaa !25    ; 3 uses
  %i.fn = sext i32 %i.fm to i64
  %i.fo = icmp slt i64 %i.fl, %i.fn
  br i1 %i.fo, label %.lr.ph, label %.preheader.loopexit, !llvm.loop !120

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv108 = phi i64 [ %indvars.iv.next109, %scalar.ph ], [ %indvars.iv108.ph, %scalar.ph.preheader ] ; 6 uses
  %i.fp = sub nsw i64 %indvars.iv108, %i.dk
  %i.fq = getelementptr inbounds [4 x i8], ptr %i.cy, i64 %i.fp
  %i.fr = load float, ptr %i.fq, align 4, !tbaa !70
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %indvars.iv108
  %i.ft = load float, ptr %i.fs, align 4, !tbaa !70
  %gep134 = getelementptr [4 x i8], ptr %invariant.gep133, i64 %indvars.iv108
  %i.fu = load float, ptr %gep134, align 4, !tbaa !70
  %gep136 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep135, i64 %indvars.iv108
  %i.fv = load float, ptr %gep136, align 4, !tbaa !70
  %i.fw = insertelement <4 x float> poison, float %i.fr, i64 0
  %i.fx = insertelement <4 x float> %i.fw, float %i.ft, i64 1
  %i.fy = insertelement <4 x float> %i.fx, float %i.fu, i64 2
  %i.fz = insertelement <4 x float> %i.fy, float %i.fv, i64 3
  %i.ga = fmul fast <4 x float> %i.fz, %i.cz
  %i.gb = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.ga)
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %.06784, i64 %indvars.iv108
  store float %i.gb, ptr %i.gc, align 4, !tbaa !70
  %indvars.iv.next109 = add nuw nsw i64 %indvars.iv108, 1 ; 2 uses
  %exitcond112.not = icmp eq i64 %indvars.iv.next109, %wide.trip.count111
  br i1 %exitcond112.not, label %._crit_edge, label %scalar.ph, !llvm.loop !121

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %.preheader.._crit_edge_crit_edge
  %.pre-phi = phi i64 [ %.pre, %.preheader.._crit_edge_crit_edge ], [ %i.dk, %middle.block ], [ %i.dk, %scalar.ph ]
  %i.gd = getelementptr inbounds nuw i8, ptr %.06685, i64 16
  %i.ge = getelementptr inbounds [4 x i8], ptr %.06784, i64 %.pre-phi
  %indvars.iv.next114 = add nuw nsw i64 %indvars.iv113, 1 ; 2 uses
  %i.gf = load i32, ptr %6, align 4, !tbaa !25    ; 3 uses
  %i.gg = sext i32 %i.gf to i64
  %i.gh = icmp slt i64 %indvars.iv.next114, %i.gg
  br i1 %i.gh, label %.lr.ph88.split, label %._crit_edge89, !llvm.loop !122

._crit_edge94:                                    ; preds = %._crit_edge89, %.lr.ph93, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge94, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn10Interp_x867forwardERKSt6vectorINS_3MatESaIS2_EERS4_RKNS_6OptionE.omp_outlined.5(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %10, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %11) #9 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !25     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 %i.g, ptr %i.b, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i32 1, ptr %i.c, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i32 0, ptr %i.d, align 4, !tbaa !25
  %i.h = load i32, ptr %0, align 4, !tbaa !25     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !25
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !25
  %i.k = load i32, ptr %i.a, align 4, !tbaa !25   ; 2 uses
  %.not85 = icmp sgt i32 %i.k, %i.j
  br i1 %.not85, label %._crit_edge87, label %_ZNK4ncnn3Mat7channelEi.exit.lr.ph

_ZNK4ncnn3Mat7channelEi.exit.lr.ph:               ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.r = load i32, ptr %5, align 4, !tbaa !25     ; 3 uses
  %i.s = icmp sgt i32 %i.r, 0
  br i1 %i.s, label %_ZNK4ncnn3Mat7channelEi.exit.preheader, label %._crit_edge87

_ZNK4ncnn3Mat7channelEi.exit.preheader:           ; preds = %_ZNK4ncnn3Mat7channelEi.exit.lr.ph
  %i.t = sext i32 %i.k to i64
  br label %_ZNK4ncnn3Mat7channelEi.exit

_ZNK4ncnn3Mat7channelEi.exit:                     ; preds = %_ZNK4ncnn3Mat7channelEi.exit.preheader, %_ZN4ncnn3MatD2Ev.exit
  %i.u = phi i32 [ %i.j, %_ZNK4ncnn3Mat7channelEi.exit.preheader ], [ %i.as, %_ZN4ncnn3MatD2Ev.exit ] ; 2 uses
  %i.v = phi i32 [ %i.r, %_ZNK4ncnn3Mat7channelEi.exit.preheader ], [ %i.at, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %i.w = phi i32 [ %i.r, %_ZNK4ncnn3Mat7channelEi.exit.preheader ], [ %i.au, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %indvars.iv91 = phi i64 [ %i.t, %_ZNK4ncnn3Mat7channelEi.exit.preheader ], [ %indvars.iv.next92, %_ZN4ncnn3MatD2Ev.exit ] ; 4 uses
  %i.x = load ptr, ptr %3, align 8, !tbaa !45, !noalias !123
  %i.y = load i64, ptr %i.m, align 8, !tbaa !34, !noalias !123
  %i.z = mul i64 %i.y, %indvars.iv91
  %i.aa = load i64, ptr %i.n, align 8, !tbaa !29, !noalias !123 ; 2 uses
  %i.ab = mul i64 %i.z, %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.ab
  %i.ad = load ptr, ptr %4, align 8, !tbaa !45, !noalias !126
  %i.ae = load i64, ptr %i.p, align 8, !tbaa !34, !noalias !126
  %i.af = mul i64 %i.ae, %indvars.iv91
  %i.ag = load i64, ptr %i.q, align 8, !tbaa !29, !noalias !126 ; 2 uses
  %i.ah = mul i64 %i.af, %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ah
  %i.aj = icmp sgt i32 %i.w, 0
  br i1 %i.aj, label %.lr.ph84, label %_ZN4ncnn3MatD2Ev.exit

.lr.ph84:                                         ; preds = %_ZNK4ncnn3Mat7channelEi.exit
  %i.ak = load i32, ptr %i.o, align 4, !tbaa !26, !noalias !126
  %i.al = sext i32 %i.ak to i64
  %i.am = load i32, ptr %i.l, align 4, !tbaa !26, !noalias !123
  %i.an = sext i32 %i.am to i64
  %i.ao = mul i64 %i.aa, %i.an
  %i.ap = mul i64 %i.ag, %i.al
  %i.aq = load i32, ptr %8, align 4, !tbaa !25    ; 2 uses
  %i.ar = icmp sgt i32 %i.aq, 0
  br i1 %i.ar, label %.lr.ph84.split, label %_ZN4ncnn3MatD2Ev.exit

_ZN4ncnn3MatD2Ev.exit.loopexit:                   ; preds = %._crit_edge
  %.pre95 = load i32, ptr %i.b, align 4, !tbaa !25
  br label %_ZN4ncnn3MatD2Ev.exit

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %.lr.ph84, %_ZN4ncnn3MatD2Ev.exit.loopexit, %_ZNK4ncnn3Mat7channelEi.exit
  %i.as = phi i32 [ %i.u, %_ZNK4ncnn3Mat7channelEi.exit ], [ %.pre95, %_ZN4ncnn3MatD2Ev.exit.loopexit ], [ %i.u, %.lr.ph84 ] ; 2 uses
  %i.at = phi i32 [ %i.v, %_ZNK4ncnn3Mat7channelEi.exit ], [ %i.bl, %_ZN4ncnn3MatD2Ev.exit.loopexit ], [ %i.v, %.lr.ph84 ]
  %i.au = phi i32 [ %i.w, %_ZNK4ncnn3Mat7channelEi.exit ], [ %i.bl, %_ZN4ncnn3MatD2Ev.exit.loopexit ], [ %i.w, %.lr.ph84 ]
  %indvars.iv.next92 = add nsw i64 %indvars.iv91, 1
  %i.av = sext i32 %i.as to i64
  %.not.not = icmp slt i64 %indvars.iv91, %i.av
  br i1 %.not.not, label %_ZNK4ncnn3Mat7channelEi.exit, label %._crit_edge87, !llvm.loop !129

.lr.ph84.split:                                   ; preds = %.lr.ph84, %._crit_edge
  %i.aw = phi i32 [ %i.bl, %._crit_edge ], [ %i.v, %.lr.ph84 ]
  %i.ax = phi i32 [ %i.bm, %._crit_edge ], [ %i.aq, %.lr.ph84 ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %.lr.ph84 ] ; 3 uses
  %i.ay = trunc nuw nsw i64 %indvars.iv to i32
  %i.az = uitofp nneg i32 %i.ay to float
  %i.ba = load float, ptr %6, align 4, !tbaa !70
  %i.bb = fmul fast float %i.ba, %i.az
  %i.bc = fptosi float %i.bb to i32
  %i.bd = load i32, ptr %7, align 4, !tbaa !25
  %i.be = add nsw i32 %i.bd, -1
  %.sroa.speculated51 = call i32 @llvm.smin.i32(i32 %i.be, i32 %i.bc)
  %i.bf = sext i32 %.sroa.speculated51 to i64
  %i.bg = mul i64 %i.ao, %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.bg
  %i.bi = icmp sgt i32 %i.ax, 0
  br i1 %i.bi, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.lr.ph84.split
  %i.bj = mul i64 %i.ap, %indvars.iv
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.bj
  %.pre = load i32, ptr %11, align 4, !tbaa !25
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre94 = load i32, ptr %5, align 4, !tbaa !25
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph84.split
  %i.bl = phi i32 [ %.pre94, %._crit_edge.loopexit ], [ %i.aw, %.lr.ph84.split ] ; 4 uses
  %i.bm = phi i32 [ %i.cf, %._crit_edge.loopexit ], [ %i.ax, %.lr.ph84.split ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bn = sext i32 %i.bl to i64
  %i.bo = icmp slt i64 %indvars.iv.next, %i.bn
  br i1 %i.bo, label %.lr.ph84.split, label %_ZN4ncnn3MatD2Ev.exit.loopexit, !llvm.loop !130

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %i.bp = phi i32 [ %i.cb, %.lr.ph ], [ %.pre, %.lr.ph.preheader ] ; 2 uses
  %.03682 = phi i32 [ %i.ce, %.lr.ph ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %.03781 = phi ptr [ %i.cd, %.lr.ph ], [ %i.bk, %.lr.ph.preheader ] ; 2 uses
  %i.bq = uitofp nneg i32 %.03682 to float
  %i.br = load float, ptr %9, align 4, !tbaa !70
  %i.bs = fmul fast float %i.br, %i.bq
  %i.bt = fptosi float %i.bs to i32
  %i.bu = load i32, ptr %10, align 4, !tbaa !25
  %i.bv = add nsw i32 %i.bu, -1
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.bv, i32 %i.bt)
  %i.bw = mul nsw i32 %.sroa.speculated, %i.bp
  %i.bx = sext i32 %i.bw to i64
  %i.by = getelementptr inbounds [4 x i8], ptr %i.bh, i64 %i.bx
  %i.bz = sext i32 %i.bp to i64
  %i.ca = shl nsw i64 %i.bz, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %.03781, ptr align 4 %i.by, i64 %i.ca, i1 false)
  %i.cb = load i32, ptr %11, align 4, !tbaa !25   ; 2 uses
  %i.cc = sext i32 %i.cb to i64
  %i.cd = getelementptr inbounds [4 x i8], ptr %.03781, i64 %i.cc
  %i.ce = add nuw nsw i32 %.03682, 1              ; 2 uses
  %i.cf = load i32, ptr %8, align 4, !tbaa !25    ; 2 uses
  %i.cg = icmp slt i32 %i.ce, %i.cf
  br i1 %i.cg, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !131

._crit_edge87:                                    ; preds = %_ZN4ncnn3MatD2Ev.exit, %_ZNK4ncnn3Mat7channelEi.exit.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge87, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

end_hunk_0
begin_hunk_1_@_ZN4ncnnL24interp_forward_bf16s_sseERKSt6vectorINS_3MatESaIS1_EERS3_RKNS_6OptionEiiffiii.omp_outlined.9:bb.a
  %i.fm = fmul fast <4 x float> %i.db, %i.fk
  %i.fn = fadd fast <4 x float> %i.fm, %i.fl
  %i.fo = bitcast <4 x float> %i.fn to <8 x i16>
  %i.fp = shufflevector <8 x i16> %i.fo, <8 x i16> poison, <8 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison>
  %i.fq = bitcast <8 x i16> %i.fp to <4 x float>
  %i.fr = shufflevector <4 x float> %i.fq, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.fs = bitcast <4 x float> %i.fr to <2 x i64>
  %i.ft = getelementptr inbounds nuw [2 x i8], ptr %.05366, i64 %indvars.iv87
  %i.fu = extractelement <2 x i64> %i.fs, i64 0
  store i64 %i.fu, ptr %i.ft, align 1, !tbaa !17
  %indvars.iv.next88 = add nuw nsw i64 %indvars.iv87, 4 ; 3 uses
  %i.fv = or disjoint i64 %indvars.iv.next88, 3
  %i.fw = load i32, ptr %8, align 4, !tbaa !25    ; 3 uses
  %i.fx = sext i32 %i.fw to i64
  %i.fy = icmp slt i64 %i.fv, %i.fx
  br i1 %i.fy, label %bb.e, label %.preheader.loopexit, !llvm.loop !183

.lr.ph65:                                         ; preds = %.lr.ph65.prol.loopexit, %.lr.ph65
  %indvars.iv90 = phi i64 [ %indvars.iv.next91.1, %.lr.ph65 ], [ %indvars.iv90.unr, %.lr.ph65.prol.loopexit ] ; 5 uses
  %i.fz = getelementptr inbounds nuw [2 x i8], ptr %i.cx, i64 %indvars.iv90
  %i.ga = load i16, ptr %i.fz, align 2, !tbaa !178
  %gep114 = getelementptr [2 x i8], ptr %invariant.gep113, i64 %indvars.iv90
  %i.gb = load i16, ptr %gep114, align 2, !tbaa !178
  %i.gc = insertelement <2 x i16> poison, i16 %i.ga, i64 0
  %i.gd = insertelement <2 x i16> %i.gc, i16 %i.gb, i64 1
  %i.ge = zext <2 x i16> %i.gd to <2 x i32>
  %i.gf = shl nuw <2 x i32> %i.ge, splat (i32 16)
  %i.gg = bitcast <2 x i32> %i.gf to <2 x float>
  %i.gh = fmul fast <2 x float> %i.cy, %i.gg
  %i.gi = call fast float @llvm.vector.reduce.fadd.v2f32(float 0.000000e+00, <2 x float> %i.gh)
  %i.gj = bitcast float %i.gi to i32
  %i.gk = lshr i32 %i.gj, 16
  %i.gl = trunc nuw i32 %i.gk to i16
  %i.gm = getelementptr inbounds nuw [2 x i8], ptr %.05366, i64 %indvars.iv90
  store i16 %i.gl, ptr %i.gm, align 2, !tbaa !178
  %indvars.iv.next91 = add nuw nsw i64 %indvars.iv90, 1 ; 3 uses
  %i.gn = getelementptr inbounds nuw [2 x i8], ptr %i.cx, i64 %indvars.iv.next91
  %i.go = load i16, ptr %i.gn, align 2, !tbaa !178
  %gep114.1 = getelementptr [2 x i8], ptr %invariant.gep113, i64 %indvars.iv.next91
  %i.gp = load i16, ptr %gep114.1, align 2, !tbaa !178
  %i.gq = insertelement <2 x i16> poison, i16 %i.go, i64 0
  %i.gr = insertelement <2 x i16> %i.gq, i16 %i.gp, i64 1
  %i.gs = zext <2 x i16> %i.gr to <2 x i32>
  %i.gt = shl nuw <2 x i32> %i.gs, splat (i32 16)
  %i.gu = bitcast <2 x i32> %i.gt to <2 x float>
  %i.gv = fmul fast <2 x float> %i.cy, %i.gu
  %i.gw = call fast float @llvm.vector.reduce.fadd.v2f32(float 0.000000e+00, <2 x float> %i.gv)
  %i.gx = bitcast float %i.gw to i32
  %i.gy = lshr i32 %i.gx, 16
  %i.gz = trunc nuw i32 %i.gy to i16
  %i.ha = getelementptr inbounds nuw [2 x i8], ptr %.05366, i64 %indvars.iv.next91
  store i16 %i.gz, ptr %i.ha, align 2, !tbaa !178
  %indvars.iv.next91.1 = add nuw nsw i64 %indvars.iv90, 2 ; 2 uses
  %exitcond94.not.1 = icmp eq i64 %indvars.iv.next91.1, %wide.trip.count93
  br i1 %exitcond94.not.1, label %._crit_edge, label %.lr.ph65, !llvm.loop !184

._crit_edge:                                      ; preds = %.lr.ph65.prol.loopexit, %.lr.ph65, %middle.block, %.preheader.._crit_edge_crit_edge
  %.pre-phi = phi i64 [ %.pre, %.preheader.._crit_edge_crit_edge ], [ %i.dg, %middle.block ], [ %i.dg, %.lr.ph65 ], [ %i.dg, %.lr.ph65.prol.loopexit ]
  %i.hb = getelementptr inbounds nuw i8, ptr %.05267, i64 8
  %i.hc = getelementptr inbounds [2 x i8], ptr %.05366, i64 %.pre-phi
  %indvars.iv.next96 = add nuw nsw i64 %indvars.iv95, 1 ; 2 uses
  %i.hd = load i32, ptr %6, align 4, !tbaa !25    ; 3 uses
  %i.he = sext i32 %i.hd to i64
  %i.hf = icmp slt i64 %indvars.iv.next96, %i.he
  br i1 %i.hf, label %.lr.ph70.split, label %._crit_edge71, !llvm.loop !185

._crit_edge76:                                    ; preds = %._crit_edge71, %.lr.ph75, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge76, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL24interp_forward_bf16s_sseERKSt6vectorINS_3MatESaIS1_EERS3_RKNS_6OptionEiiffiii.omp_outlined.10(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8) #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !25     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 %i.g, ptr %i.b, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i32 1, ptr %i.c, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i32 0, ptr %i.d, align 4, !tbaa !25
  %i.h = load i32, ptr %0, align 4, !tbaa !25     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !25
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !25
  %i.k = load i32, ptr %i.a, align 4, !tbaa !25   ; 2 uses
  %.not95 = icmp sgt i32 %i.k, %i.j
  br i1 %.not95, label %._crit_edge99, label %.lr.ph98

.lr.ph98:                                         ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.p = load i32, ptr %6, align 4, !tbaa !25     ; 2 uses
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %.lr.ph98.split.preheader, label %._crit_edge99

.lr.ph98.split.preheader:                         ; preds = %.lr.ph98
  %i.r = sext i32 %i.k to i64
  %i.s = add nsw i32 %i.j, 1
  br label %.lr.ph98.split

.lr.ph98.split:                                   ; preds = %.lr.ph98.split.preheader, %._crit_edge94
  %i.t = phi i32 [ %i.p, %.lr.ph98.split.preheader ], [ %i.am, %._crit_edge94 ] ; 2 uses
  %indvars.iv110 = phi i64 [ %i.r, %.lr.ph98.split.preheader ], [ %indvars.iv.next111, %._crit_edge94 ] ; 3 uses
  %i.u = load ptr, ptr %3, align 8, !tbaa !45     ; 2 uses
  %i.v = load i32, ptr %i.l, align 4, !tbaa !26
  %i.w = sext i32 %i.v to i64
  %i.x = mul i64 %indvars.iv110, %i.w
  %i.y = load i64, ptr %i.m, align 8, !tbaa !29
  %i.z = mul i64 %i.x, %i.y                       ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.z
  %i.ab = icmp sgt i32 %i.t, 0
  br i1 %i.ab, label %.lr.ph93.preheader, label %._crit_edge94

.lr.ph93.preheader:                               ; preds = %.lr.ph98.split
  %i.ac = ptrtoaddr ptr %i.u to i64
  %i.ad = load ptr, ptr %5, align 8, !tbaa !72
  %i.ae = load ptr, ptr %4, align 8, !tbaa !45
  %i.af = load i32, ptr %i.n, align 4, !tbaa !26
  %i.ag = sext i32 %i.af to i64
  %i.ah = mul nsw i64 %indvars.iv110, %i.ag
  %i.ai = load i64, ptr %i.o, align 8, !tbaa !29
  %i.aj = mul i64 %i.ah, %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.aj
  %.pre = load i32, ptr %8, align 4, !tbaa !25
  %i.al = add i64 %i.z, %i.ac                     ; 2 uses
  br label %.lr.ph93

._crit_edge94:                                    ; preds = %._crit_edge, %.lr.ph98.split
  %i.am = phi i32 [ %i.t, %.lr.ph98.split ], [ %i.fr, %._crit_edge ]
  %indvars.iv.next111 = add nsw i64 %indvars.iv110, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next111 to i32
  %exitcond113.not = icmp eq i32 %i.s, %lftr.wideiv
  br i1 %exitcond113.not, label %._crit_edge99, label %.lr.ph98.split, !llvm.loop !186

.lr.ph93:                                         ; preds = %.lr.ph93.preheader, %._crit_edge
  %i.an = phi i32 [ %.pre, %.lr.ph93.preheader ], [ %i.bb, %._crit_edge ] ; 4 uses
  %indvars.iv107 = phi i64 [ 0, %.lr.ph93.preheader ], [ %indvars.iv.next108, %._crit_edge ] ; 2 uses
  %.06690 = phi ptr [ %i.ad, %.lr.ph93.preheader ], [ %i.fp, %._crit_edge ] ; 2 uses
  %.06789 = phi ptr [ %i.ak, %.lr.ph93.preheader ], [ %i.fq, %._crit_edge ] ; 5 uses
  %.06789126 = ptrtoaddr ptr %.06789 to i64       ; 2 uses
  %i.ao = load ptr, ptr %7, align 8, !tbaa !71
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %indvars.iv107
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !25
  %i.ar = mul i32 %i.an, %i.aq
  %i.as = sext i32 %i.ar to i64                   ; 4 uses
  %i.at = getelementptr inbounds [2 x i8], ptr %i.aa, i64 %i.as ; 7 uses
  %i.au = load <4 x float>, ptr %.06690, align 4, !tbaa !70 ; 9 uses
  %i.av = icmp sgt i32 %i.an, 3
  br i1 %i.av, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %.lr.ph93
  %i.aw = shufflevector <4 x float> %i.au, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ax = shufflevector <4 x float> %i.au, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ay = shufflevector <4 x float> %i.au, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.az = shufflevector <4 x float> %i.au, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  br label %bb.c

.preheader.loopexit:                              ; preds = %bb.c
  %i.ba = trunc nuw nsw i64 %indvars.iv.next to i32
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %.lr.ph93
  %i.bb = phi i32 [ %i.an, %.lr.ph93 ], [ %i.es, %.preheader.loopexit ] ; 6 uses
  %.0.lcssa = phi i32 [ 0, %.lr.ph93 ], [ %i.ba, %.preheader.loopexit ] ; 2 uses
  %i.bc = icmp slt i32 %.0.lcssa, %i.bb
  br i1 %i.bc, label %.lr.ph88, label %.preheader.._crit_edge_crit_edge

.preheader.._crit_edge_crit_edge:                 ; preds = %.preheader
  %.pre114 = sext i32 %i.bb to i64
  br label %._crit_edge

.lr.ph88:                                         ; preds = %.preheader
  %i.bd = shl nuw nsw i32 %i.bb, 1
  %i.be = zext i32 %.0.lcssa to i64               ; 5 uses
  %i.bf = zext nneg i32 %i.bb to i64              ; 5 uses
  %i.bg = zext nneg i32 %i.bd to i64              ; 2 uses
  %wide.trip.count = zext i32 %i.bb to i64        ; 4 uses
  %invariant.gep = getelementptr [2 x i8], ptr %i.at, i64 %i.bf ; 2 uses
  %invariant.gep123 = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %i.bg ; 2 uses
  %i.bh = sub nsw i64 %wide.trip.count, %i.be     ; 3 uses
  %min.iters.check = icmp ult i64 %i.bh, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph88
  %i.bi = sub i64 %.06789126, %i.al               ; 2 uses
  %i.bj = add nsw i64 %i.as, %i.bg
  %i.bk = shl nsw i64 %i.bj, 1
  %i.bl = sub i64 %i.bk, %i.bi
  %diff.check = icmp ugt i64 %i.bl, -16
  %i.bm = add nsw i64 %i.as, %wide.trip.count
  %i.bn = shl nsw i64 %i.bm, 1
  %i.bo = sub i64 %i.bn, %i.bi
  %diff.check127 = icmp ugt i64 %i.bo, -16
  %conflict.rdx = or i1 %diff.check, %diff.check127
  %i.bp = sub i64 %.06789126, %i.al               ; 2 uses
  %i.bq = shl nsw i64 %i.as, 1                    ; 2 uses
  %i.br = sub i64 %i.bq, %i.bp
  %diff.check128 = icmp ugt i64 %i.br, -16
  %conflict.rdx129 = or i1 %conflict.rdx, %diff.check128
  %i.bs = shl nuw nsw i64 %wide.trip.count, 1
  %i.bt = add i64 %i.bp, %i.bs
  %i.bu = sub i64 %i.bq, %i.bt
  %diff.check130 = icmp ugt i64 %i.bu, -16
  %conflict.rdx131 = or i1 %conflict.rdx129, %diff.check130
  br i1 %conflict.rdx131, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bh, -8                      ; 3 uses
  %i.bv = add nsw i64 %n.vec, %i.be
  %broadcast.splat = shufflevector <4 x float> %i.au, <4 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splat133 = shufflevector <4 x float> %i.au, <4 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat135 = shufflevector <4 x float> %i.au, <4 x float> poison, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %broadcast.splat137 = shufflevector <4 x float> %i.au, <4 x float> poison, <8 x i32> <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bw = add nuw i64 %index, %i.be               ; 5 uses
  %i.bx = sub nsw i64 %i.bw, %i.bf
  %i.by = getelementptr inbounds [2 x i8], ptr %i.at, i64 %i.bx
  %wide.load = load <8 x i16>, ptr %i.by, align 2, !tbaa !178
  %i.bz = zext <8 x i16> %wide.load to <8 x i32>
  %i.ca = shl nuw <8 x i32> %i.bz, splat (i32 16)
  %i.cb = bitcast <8 x i32> %i.ca to <8 x float>
  %i.cc = fmul fast <8 x float> %broadcast.splat, %i.cb
  %i.cd = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %i.bw
  %wide.load138 = load <8 x i16>, ptr %i.cd, align 2, !tbaa !178
  %i.ce = zext <8 x i16> %wide.load138 to <8 x i32>
  %i.cf = shl nuw <8 x i32> %i.ce, splat (i32 16)
  %i.cg = bitcast <8 x i32> %i.cf to <8 x float>
  %i.ch = fmul fast <8 x float> %broadcast.splat133, %i.cg
  %i.ci = fadd fast <8 x float> %i.cc, %i.ch
  %i.cj = getelementptr [2 x i8], ptr %invariant.gep, i64 %i.bw
  %wide.load139 = load <8 x i16>, ptr %i.cj, align 2, !tbaa !178
  %i.ck = zext <8 x i16> %wide.load139 to <8 x i32>
  %i.cl = shl nuw <8 x i32> %i.ck, splat (i32 16)
  %i.cm = bitcast <8 x i32> %i.cl to <8 x float>
  %i.cn = fmul fast <8 x float> %broadcast.splat135, %i.cm
  %i.co = fadd fast <8 x float> %i.ci, %i.cn
  %i.cp = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep123, i64 %i.bw
  %wide.load140 = load <8 x i16>, ptr %i.cp, align 2, !tbaa !178
  %i.cq = zext <8 x i16> %wide.load140 to <8 x i32>
  %i.cr = shl nuw <8 x i32> %i.cq, splat (i32 16)
  %i.cs = bitcast <8 x i32> %i.cr to <8 x float>
  %i.ct = fmul fast <8 x float> %broadcast.splat137, %i.cs
  %i.cu = fadd fast <8 x float> %i.co, %i.ct
  %i.cv = bitcast <8 x float> %i.cu to <8 x i32>
  %i.cw = lshr <8 x i32> %i.cv, splat (i32 16)
  %i.cx = trunc nuw <8 x i32> %i.cw to <8 x i16>
  %i.cy = getelementptr inbounds nuw [2 x i8], ptr %.06789, i64 %i.bw
  store <8 x i16> %i.cx, ptr %i.cy, align 2, !tbaa !178
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cz = icmp eq i64 %index.next, %n.vec
  br i1 %i.cz, label %middle.block, label %vector.body, !llvm.loop !187

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bh, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph88, %middle.block
  %indvars.iv104.ph = phi i64 [ %i.be, %vector.memcheck ], [ %i.be, %.lr.ph88 ], [ %i.bv, %middle.block ]
  br label %scalar.ph

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  %i.da = phi i32 [ %i.an, %.lr.ph ], [ %i.es, %bb.c ] ; 2 uses
  %i.db = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %indvars.iv ; 4 uses
  %i.dc = sext i32 %i.da to i64                   ; 2 uses
  %i.dd = sub nsw i64 0, %i.dc
  %i.de = getelementptr inbounds [2 x i8], ptr %i.db, i64 %i.dd
  %i.df = load i64, ptr %i.de, align 1, !tbaa !17
  %i.dg = insertelement <2 x i64> poison, i64 %i.df, i64 0
  %i.dh = bitcast <2 x i64> %i.dg to <8 x i16>
  %i.di = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.dh, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.dj = bitcast <8 x i16> %i.di to <4 x float>
  %i.dk = load i64, ptr %i.db, align 1, !tbaa !17
  %i.dl = insertelement <2 x i64> poison, i64 %i.dk, i64 0
  %i.dm = bitcast <2 x i64> %i.dl to <8 x i16>
  %i.dn = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.dm, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.do = bitcast <8 x i16> %i.dn to <4 x float>
  %i.dp = getelementptr inbounds [2 x i8], ptr %i.db, i64 %i.dc
  %i.dq = load i64, ptr %i.dp, align 1, !tbaa !17
  %i.dr = insertelement <2 x i64> poison, i64 %i.dq, i64 0
  %i.ds = bitcast <2 x i64> %i.dr to <8 x i16>
  %i.dt = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ds, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.du = bitcast <8 x i16> %i.dt to <4 x float>
  %i.dv = shl nsw i32 %i.da, 1
  %i.dw = sext i32 %i.dv to i64
  %i.dx = getelementptr inbounds [2 x i8], ptr %i.db, i64 %i.dw
  %i.dy = load i64, ptr %i.dx, align 1, !tbaa !17
  %i.dz = insertelement <2 x i64> poison, i64 %i.dy, i64 0
  %i.ea = bitcast <2 x i64> %i.dz to <8 x i16>
  %i.eb = shufflevector <8 x i16> <i16 0, i16 0, i16 0, i16 0, i16 poison, i16 poison, i16 poison, i16 poison>, <8 x i16> %i.ea, <8 x i32> <i32 0, i32 8, i32 1, i32 9, i32 2, i32 10, i32 3, i32 11>
  %i.ec = bitcast <8 x i16> %i.eb to <4 x float>
  %i.ed = fmul fast <4 x float> %i.aw, %i.dj
  %i.ee = fmul fast <4 x float> %i.ax, %i.do
  %i.ef = fadd fast <4 x float> %i.ed, %i.ee
  %i.eg = fmul fast <4 x float> %i.ay, %i.du
  %i.eh = fadd fast <4 x float> %i.eg, %i.ef
  %i.ei = fmul fast <4 x float> %i.az, %i.ec
  %i.ej = fadd fast <4 x float> %i.ei, %i.eh
  %i.ek = bitcast <4 x float> %i.ej to <8 x i16>
  %i.el = shufflevector <8 x i16> %i.ek, <8 x i16> poison, <8 x i32> <i32 1, i32 3, i32 poison, i32 poison, i32 5, i32 7, i32 poison, i32 poison>
  %i.em = bitcast <8 x i16> %i.el to <4 x float>
  %i.en = shufflevector <4 x float> %i.em, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.eo = bitcast <4 x float> %i.en to <2 x i64>
  %i.ep = getelementptr inbounds nuw [2 x i8], ptr %.06789, i64 %indvars.iv
  %i.eq = extractelement <2 x i64> %i.eo, i64 0
  store i64 %i.eq, ptr %i.ep, align 1, !tbaa !17
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4 ; 3 uses
  %i.er = or disjoint i64 %indvars.iv.next, 3
  %i.es = load i32, ptr %8, align 4, !tbaa !25    ; 3 uses
  %i.et = sext i32 %i.es to i64
  %i.eu = icmp slt i64 %i.er, %i.et
  br i1 %i.eu, label %bb.c, label %.preheader.loopexit, !llvm.loop !188

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv104 = phi i64 [ %indvars.iv.next105, %scalar.ph ], [ %indvars.iv104.ph, %scalar.ph.preheader ] ; 6 uses
  %i.ev = sub nsw i64 %indvars.iv104, %i.bf
  %i.ew = getelementptr inbounds [2 x i8], ptr %i.at, i64 %i.ev
  %i.ex = load i16, ptr %i.ew, align 2, !tbaa !178
  %i.ey = getelementptr inbounds nuw [2 x i8], ptr %i.at, i64 %indvars.iv104
  %i.ez = load i16, ptr %i.ey, align 2, !tbaa !178
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %indvars.iv104
  %i.fa = load i16, ptr %gep, align 2, !tbaa !178
  %gep124 = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep123, i64 %indvars.iv104
  %i.fb = load i16, ptr %gep124, align 2, !tbaa !178
  %i.fc = insertelement <4 x i16> poison, i16 %i.ex, i64 0
  %i.fd = insertelement <4 x i16> %i.fc, i16 %i.ez, i64 1
  %i.fe = insertelement <4 x i16> %i.fd, i16 %i.fa, i64 2
  %i.ff = insertelement <4 x i16> %i.fe, i16 %i.fb, i64 3
  %i.fg = zext <4 x i16> %i.ff to <4 x i32>
  %i.fh = shl nuw <4 x i32> %i.fg, splat (i32 16)
  %i.fi = bitcast <4 x i32> %i.fh to <4 x float>
  %i.fj = fmul fast <4 x float> %i.au, %i.fi
  %i.fk = call fast float @llvm.vector.reduce.fadd.v4f32(float 0.000000e+00, <4 x float> %i.fj)
  %i.fl = bitcast float %i.fk to i32
  %i.fm = lshr i32 %i.fl, 16
  %i.fn = trunc nuw i32 %i.fm to i16
  %i.fo = getelementptr inbounds nuw [2 x i8], ptr %.06789, i64 %indvars.iv104
  store i16 %i.fn, ptr %i.fo, align 2, !tbaa !178
  %indvars.iv.next105 = add nuw nsw i64 %indvars.iv104, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next105, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !189

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %.preheader.._crit_edge_crit_edge
  %.pre-phi = phi i64 [ %.pre114, %.preheader.._crit_edge_crit_edge ], [ %i.bf, %middle.block ], [ %i.bf, %scalar.ph ]
  %i.fp = getelementptr inbounds nuw i8, ptr %.06690, i64 16
  %i.fq = getelementptr inbounds [2 x i8], ptr %.06789, i64 %.pre-phi
  %indvars.iv.next108 = add nuw nsw i64 %indvars.iv107, 1 ; 2 uses
  %i.fr = load i32, ptr %6, align 4, !tbaa !25    ; 2 uses
  %i.fs = sext i32 %i.fr to i64
  %i.ft = icmp slt i64 %indvars.iv.next108, %i.fs
  br i1 %i.ft, label %.lr.ph93, label %._crit_edge94, !llvm.loop !190

._crit_edge99:                                    ; preds = %._crit_edge94, %.lr.ph98, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge99, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZN4ncnnL24interp_forward_bf16s_sseERKSt6vectorINS_3MatESaIS1_EERS3_RKNS_6OptionEiiffiii.omp_outlined.11(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %7, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %9, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %10, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %11) #9 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !25     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 %i.g, ptr %i.b, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i32 1, ptr %i.c, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i32 0, ptr %i.d, align 4, !tbaa !25
  %i.h = load i32, ptr %0, align 4, !tbaa !25     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !25
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !25
  %i.k = load i32, ptr %i.a, align 4, !tbaa !25   ; 2 uses
  %.not85 = icmp sgt i32 %i.k, %i.j
  br i1 %.not85, label %._crit_edge87, label %_ZNK4ncnn3Mat7channelEi.exit.lr.ph

_ZNK4ncnn3Mat7channelEi.exit.lr.ph:               ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.r = load i32, ptr %5, align 4, !tbaa !25     ; 3 uses
  %i.s = icmp sgt i32 %i.r, 0
  br i1 %i.s, label %_ZNK4ncnn3Mat7channelEi.exit.preheader, label %._crit_edge87

_ZNK4ncnn3Mat7channelEi.exit.preheader:           ; preds = %_ZNK4ncnn3Mat7channelEi.exit.lr.ph
  %i.t = sext i32 %i.k to i64
  br label %_ZNK4ncnn3Mat7channelEi.exit

_ZNK4ncnn3Mat7channelEi.exit:                     ; preds = %_ZNK4ncnn3Mat7channelEi.exit.preheader, %_ZN4ncnn3MatD2Ev.exit
  %i.u = phi i32 [ %i.j, %_ZNK4ncnn3Mat7channelEi.exit.preheader ], [ %i.as, %_ZN4ncnn3MatD2Ev.exit ] ; 2 uses
  %i.v = phi i32 [ %i.r, %_ZNK4ncnn3Mat7channelEi.exit.preheader ], [ %i.at, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %i.w = phi i32 [ %i.r, %_ZNK4ncnn3Mat7channelEi.exit.preheader ], [ %i.au, %_ZN4ncnn3MatD2Ev.exit ] ; 3 uses
  %indvars.iv91 = phi i64 [ %i.t, %_ZNK4ncnn3Mat7channelEi.exit.preheader ], [ %indvars.iv.next92, %_ZN4ncnn3MatD2Ev.exit ] ; 4 uses
  %i.x = load ptr, ptr %3, align 8, !tbaa !45, !noalias !191
  %i.y = load i64, ptr %i.m, align 8, !tbaa !34, !noalias !191
  %i.z = mul i64 %i.y, %indvars.iv91
  %i.aa = load i64, ptr %i.n, align 8, !tbaa !29, !noalias !191 ; 2 uses
  %i.ab = mul i64 %i.z, %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.ab
  %i.ad = load ptr, ptr %4, align 8, !tbaa !45, !noalias !194
  %i.ae = load i64, ptr %i.p, align 8, !tbaa !34, !noalias !194
  %i.af = mul i64 %i.ae, %indvars.iv91
  %i.ag = load i64, ptr %i.q, align 8, !tbaa !29, !noalias !194 ; 2 uses
  %i.ah = mul i64 %i.af, %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ah
  %i.aj = icmp sgt i32 %i.w, 0
  br i1 %i.aj, label %.lr.ph84, label %_ZN4ncnn3MatD2Ev.exit

.lr.ph84:                                         ; preds = %_ZNK4ncnn3Mat7channelEi.exit
  %i.ak = load i32, ptr %i.o, align 4, !tbaa !26, !noalias !194
  %i.al = sext i32 %i.ak to i64
  %i.am = load i32, ptr %i.l, align 4, !tbaa !26, !noalias !191
  %i.an = sext i32 %i.am to i64
  %i.ao = mul i64 %i.aa, %i.an
  %i.ap = mul i64 %i.ag, %i.al
  %i.aq = load i32, ptr %8, align 4, !tbaa !25    ; 2 uses
  %i.ar = icmp sgt i32 %i.aq, 0
  br i1 %i.ar, label %.lr.ph84.split, label %_ZN4ncnn3MatD2Ev.exit

_ZN4ncnn3MatD2Ev.exit.loopexit:                   ; preds = %._crit_edge
  %.pre95 = load i32, ptr %i.b, align 4, !tbaa !25
  br label %_ZN4ncnn3MatD2Ev.exit

_ZN4ncnn3MatD2Ev.exit:                            ; preds = %.lr.ph84, %_ZN4ncnn3MatD2Ev.exit.loopexit, %_ZNK4ncnn3Mat7channelEi.exit
  %i.as = phi i32 [ %i.u, %_ZNK4ncnn3Mat7channelEi.exit ], [ %.pre95, %_ZN4ncnn3MatD2Ev.exit.loopexit ], [ %i.u, %.lr.ph84 ] ; 2 uses
  %i.at = phi i32 [ %i.v, %_ZNK4ncnn3Mat7channelEi.exit ], [ %i.bl, %_ZN4ncnn3MatD2Ev.exit.loopexit ], [ %i.v, %.lr.ph84 ]
  %i.au = phi i32 [ %i.w, %_ZNK4ncnn3Mat7channelEi.exit ], [ %i.bl, %_ZN4ncnn3MatD2Ev.exit.loopexit ], [ %i.w, %.lr.ph84 ]
  %indvars.iv.next92 = add nsw i64 %indvars.iv91, 1
  %i.av = sext i32 %i.as to i64
  %.not.not = icmp slt i64 %indvars.iv91, %i.av
  br i1 %.not.not, label %_ZNK4ncnn3Mat7channelEi.exit, label %._crit_edge87, !llvm.loop !197

.lr.ph84.split:                                   ; preds = %.lr.ph84, %._crit_edge
  %i.aw = phi i32 [ %i.bl, %._crit_edge ], [ %i.v, %.lr.ph84 ]
  %i.ax = phi i32 [ %i.bm, %._crit_edge ], [ %i.aq, %.lr.ph84 ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %.lr.ph84 ] ; 3 uses
  %i.ay = trunc nuw nsw i64 %indvars.iv to i32
  %i.az = uitofp nneg i32 %i.ay to float
  %i.ba = load float, ptr %6, align 4, !tbaa !70
  %i.bb = fmul fast float %i.ba, %i.az
  %i.bc = fptosi float %i.bb to i32
  %i.bd = load i32, ptr %7, align 4, !tbaa !25
  %i.be = add nsw i32 %i.bd, -1
  %.sroa.speculated51 = call i32 @llvm.smin.i32(i32 %i.be, i32 %i.bc)
  %i.bf = sext i32 %.sroa.speculated51 to i64
  %i.bg = mul i64 %i.ao, %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.bg
  %i.bi = icmp sgt i32 %i.ax, 0
  br i1 %i.bi, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.lr.ph84.split
  %i.bj = mul i64 %i.ap, %indvars.iv
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.bj
  %.pre = load i32, ptr %11, align 4, !tbaa !25
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre94 = load i32, ptr %5, align 4, !tbaa !25
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph84.split
  %i.bl = phi i32 [ %.pre94, %._crit_edge.loopexit ], [ %i.aw, %.lr.ph84.split ] ; 4 uses
  %i.bm = phi i32 [ %i.cf, %._crit_edge.loopexit ], [ %i.ax, %.lr.ph84.split ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bn = sext i32 %i.bl to i64
  %i.bo = icmp slt i64 %indvars.iv.next, %i.bn
  br i1 %i.bo, label %.lr.ph84.split, label %_ZN4ncnn3MatD2Ev.exit.loopexit, !llvm.loop !198

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %i.bp = phi i32 [ %i.cb, %.lr.ph ], [ %.pre, %.lr.ph.preheader ] ; 2 uses
  %.03682 = phi i32 [ %i.ce, %.lr.ph ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %.03781 = phi ptr [ %i.cd, %.lr.ph ], [ %i.bk, %.lr.ph.preheader ] ; 2 uses
  %i.bq = uitofp nneg i32 %.03682 to float
  %i.br = load float, ptr %9, align 4, !tbaa !70
  %i.bs = fmul fast float %i.br, %i.bq
  %i.bt = fptosi float %i.bs to i32
  %i.bu = load i32, ptr %10, align 4, !tbaa !25
  %i.bv = add nsw i32 %i.bu, -1
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.bv, i32 %i.bt)
  %i.bw = mul nsw i32 %.sroa.speculated, %i.bp
  %i.bx = sext i32 %i.bw to i64
  %i.by = getelementptr inbounds [2 x i8], ptr %i.bh, i64 %i.bx
  %i.bz = sext i32 %i.bp to i64
  %i.ca = shl nsw i64 %i.bz, 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %.03781, ptr align 2 %i.by, i64 %i.ca, i1 false)
  %i.cb = load i32, ptr %11, align 4, !tbaa !25   ; 2 uses
  %i.cc = sext i32 %i.cb to i64
  %i.cd = getelementptr inbounds [2 x i8], ptr %.03781, i64 %i.cc
  %i.ce = add nuw nsw i32 %.03682, 1              ; 2 uses
  %i.cf = load i32, ptr %8, align 4, !tbaa !25    ; 2 uses
  %i.cg = icmp slt i32 %i.ce, %i.cf
  br i1 %i.cg, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !199

._crit_edge87:                                    ; preds = %_ZN4ncnn3MatD2Ev.exit, %_ZNK4ncnn3Mat7channelEi.exit.lr.ph, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge87, %bb.a
end_hunk_1
