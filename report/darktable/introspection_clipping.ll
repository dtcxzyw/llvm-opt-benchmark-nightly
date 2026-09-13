Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_clipping?download=true
inline.NumInlined: 74
inline.NumDeleted: 28
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@distort_backtransform:bb.a
  %i.gx = fmul reassoc nsz arcp contract afn float %i.ca, %i.gs
  %i.gy = fadd reassoc nsz arcp contract afn float %i.gw, %i.gx
  %i.gz = fmul reassoc nsz arcp contract afn float %i.gv, %i.cc
  %i.ha = fmul reassoc nsz arcp contract afn float %i.ce, %i.gs
  %i.hb = fadd reassoc nsz arcp contract afn float %i.gz, %i.ha
  %i.hc = fadd reassoc nsz arcp contract afn float %i.gy, %i.cg
  %i.hd = fadd reassoc nsz arcp contract afn float %i.hb, %i.ci
  store float %i.hc, ptr %i.gm, align 4, !tbaa !13
  store float %i.hd, ptr %i.go, align 4, !tbaa !13
  %i.he = add nuw i64 %.0103, 2                   ; 2 uses
  %i.hf = icmp ult i64 %i.he, %i.be
  br i1 %i.hf, label %.lr.ph.split, label %._crit_edge, !llvm.loop !283

bb.d:                                             ; preds = %._crit_edge
  %i.hg = extractelement <2 x i32> %i.z, i64 0
  store i32 %i.hg, ptr %i.m, align 4, !tbaa !78
  %i.hh = extractelement <2 x i32> %i.z, i64 1
  store i32 %i.hh, ptr %i.n, align 4, !tbaa !79
  %i.hi = load ptr, ptr %i.u, align 16, !tbaa !61
  call void %i.hi(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull %4, ptr noundef nonnull %5) #25
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  ret i32 1
}

; Function Attrs: nounwind uwtable
define void @distort_mask(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca [4 x float], align 16             ; 4 uses
  %i.b = alloca float, align 4                    ; 4 uses
  %i.c = alloca float, align 4                    ; 4 uses
  %i.d = alloca float, align 4                    ; 4 uses
  %i.e = alloca float, align 4                    ; 4 uses
  %i.f = alloca float, align 4                    ; 4 uses
  %i.g = alloca float, align 4                    ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load ptr, ptr %i.h, align 16, !tbaa !62  ; 19 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 92
  %i.k = load i32, ptr %i.j, align 4, !tbaa !82
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.l = load float, ptr %i.i, align 4, !tbaa !83
  %i.m = fcmp reassoc nsz arcp contract afn oeq float %i.l, 0.000000e+00
  br i1 %i.m, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 88
  %i.o = load i32, ptr %i.n, align 4, !tbaa !84
  %.not114 = icmp eq i32 %i.o, 0
  br i1 %.not114, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.q = load i32, ptr %i.p, align 4, !tbaa !78   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.s = load i32, ptr %i.r, align 4, !tbaa !78
  %i.t = icmp eq i32 %i.q, %i.s
  br i1 %i.t, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.v = load i32, ptr %i.u, align 4, !tbaa !79   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.x = load i32, ptr %i.w, align 4, !tbaa !79
  %i.y = icmp eq i32 %i.v, %i.x
  br i1 %i.y, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.z = sext i32 %i.q to i64
  %i.aa = sext i32 %i.v to i64
  %i.ab = mul nsw i64 %i.aa, %i.z
  tail call void @dt_iop_image_copy(ptr noundef %3, ptr noundef %2, i64 noundef %i.ab) #25
  br label %bb.p

bb.g:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %i.ac = tail call ptr @dt_interpolation_new(i32 noundef 3) #25 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.af = load float, ptr %i.ae, align 4, !tbaa !85
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.ag = getelementptr inbounds nuw i8, ptr %i.i, i64 100
  %i.ah = load <2 x i32>, ptr %i.ad, align 16, !tbaa !14
  %i.ai = sitofp <2 x i32> %i.ah to <2 x float>
  %i.aj = insertelement <2 x float> poison, float %i.af, i64 0
  %i.ak = shufflevector <2 x float> %i.aj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.al = fmul reassoc nsz arcp contract afn <2 x float> %i.ak, %i.ai ; 4 uses
  %i.am = shufflevector <2 x float> %i.al, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.an = load <4 x float>, ptr %i.ag, align 4, !tbaa !13
  %i.ao = fmul reassoc nsz arcp contract afn <4 x float> %i.an, %i.am ; 2 uses
  store <4 x float> %i.ao, ptr %i.a, align 16, !tbaa !13
  %i.ap = getelementptr inbounds nuw i8, ptr %i.i, i64 116
  %i.aq = getelementptr inbounds nuw i8, ptr %i.i, i64 124
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !64
  %i.as = getelementptr inbounds nuw i8, ptr %i.i, i64 132
  %i.at = load float, ptr %i.as, align 4, !tbaa !65
  %i.au = load <2 x float>, ptr %i.ap, align 4, !tbaa !13
  %i.av = fmul reassoc nsz arcp contract afn <2 x float> %i.au, %i.al ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.i, i64 128
  %i.ax = tail call <5 x float> @llvm.masked.load.v5f32.p0(ptr nonnull align 4 %i.aw, <5 x i1> <i1 true, i1 false, i1 true, i1 true, i1 true>, <5 x float> poison), !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #25
  %i.ay = getelementptr inbounds nuw i8, ptr %i.i, i64 172 ; 2 uses
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !66
  %i.ba = icmp eq i32 %i.az, 1
  br i1 %i.ba, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bb = shufflevector <5 x float> %i.ax, <5 x float> poison, <4 x i32> <i32 0, i32 2, i32 3, i32 4>
  %i.bc = extractelement <2 x float> %i.al, i64 0 ; 2 uses
  %i.bd = shufflevector <2 x float> %i.al, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 0, i32 1>
  %i.be = fmul reassoc nsz arcp contract afn <4 x float> %i.bb, %i.bd ; 4 uses
  %i.bf = fmul reassoc nsz arcp contract afn float %i.at, %i.bc
  %i.bg = fmul reassoc nsz arcp contract afn float %i.ar, %i.bc
  %i.bh = extractelement <4 x float> %i.be, i64 0
  %i.bi = extractelement <4 x float> %i.be, i64 1
  %i.bj = extractelement <4 x float> %i.be, i64 2
  %i.bk = extractelement <4 x float> %i.be, i64 3
  call fastcc void @keystone_get_matrix(ptr noundef nonnull %i.a, float noundef %i.bg, float noundef %i.bf, float noundef %i.bj, float noundef %i.bh, float noundef %i.bi, float noundef %i.bk, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.bl = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !79 ; 2 uses
  %i.bn = icmp sgt i32 %i.bm, 0
  br i1 %i.bn, label %.lr.ph156, label %._crit_edge157

.lr.ph156:                                        ; preds = %bb.i
  %i.bo = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bq = getelementptr inbounds nuw i8, ptr %i.i, i64 180
  %i.br = getelementptr inbounds nuw i8, ptr %i.i, i64 80
  %i.bs = getelementptr inbounds nuw i8, ptr %i.i, i64 184
  %i.bt = getelementptr inbounds nuw i8, ptr %i.i, i64 84
  %i.bu = getelementptr inbounds nuw i8, ptr %i.i, i64 96
  %i.bv = getelementptr inbounds nuw i8, ptr %i.i, i64 56 ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.i, i64 60 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.i, i64 44
  %i.bz = getelementptr inbounds nuw i8, ptr %i.i, i64 52
  %i.ca = load float, ptr %i.b, align 4           ; 2 uses
  %i.cb = load float, ptr %i.c, align 4           ; 2 uses
  %i.cc = load float, ptr %i.d, align 4           ; 2 uses
  %i.cd = load float, ptr %i.e, align 4           ; 2 uses
  %i.ce = load float, ptr %i.f, align 4
  %i.cf = load float, ptr %i.g, align 4
  %i.cg = fmul reassoc nsz arcp contract afn float %i.cd, %i.ca
  %i.ch = fmul reassoc nsz arcp contract afn float %i.cb, %i.cc
  %i.ci = fsub reassoc nsz arcp contract afn float %i.cg, %i.ch
  %i.cj = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 3 uses
  %i.cl = load i32, ptr %i.bo, align 4, !tbaa !78 ; 2 uses
  %i.cm = icmp sgt i32 %i.cl, 0
  br i1 %i.cm, label %.lr.ph156.split.preheader, label %._crit_edge157

.lr.ph156.split.preheader:                        ; preds = %.lr.ph156
  %i.cn = shufflevector <4 x float> %i.ao, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.co = insertelement <2 x float> poison, float %i.cd, i64 0
  %i.cp = insertelement <2 x float> %i.co, float %i.cc, i64 1
  %i.cq = insertelement <2 x float> poison, float %i.cb, i64 0
  %i.cr = insertelement <2 x float> %i.cq, float %i.ca, i64 1
  br label %.lr.ph156.split

._crit_edge157:                                   ; preds = %._crit_edge, %.lr.ph156, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %bb.p

.lr.ph156.split:                                  ; preds = %.lr.ph156.split.preheader, %._crit_edge
  %i.cs = phi i32 [ %i.db, %._crit_edge ], [ %i.bm, %.lr.ph156.split.preheader ]
  %i.ct = phi i32 [ %i.dc, %._crit_edge ], [ %i.cl, %.lr.ph156.split.preheader ] ; 3 uses
  %indvars.iv160 = phi i64 [ %indvars.iv.next161, %._crit_edge ], [ 0, %.lr.ph156.split.preheader ] ; 3 uses
  %i.cu = sext i32 %i.ct to i64
  %i.cv = mul nsw i64 %indvars.iv160, %i.cu
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.cv
  %i.cx = icmp sgt i32 %i.ct, 0
  br i1 %i.cx, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph156.split
  %i.cy = trunc nuw nsw i64 %indvars.iv160 to i32
  %i.cz = uitofp nneg i32 %i.cy to float
  %i.da = fadd reassoc nsz arcp contract afn float %i.cz, 5.000000e-01
  br label %bb.j

._crit_edge.loopexit:                             ; preds = %bb.o
  %.pre = load i32, ptr %i.bl, align 4, !tbaa !79
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph156.split
  %i.db = phi i32 [ %.pre, %._crit_edge.loopexit ], [ %i.cs, %.lr.ph156.split ] ; 2 uses
  %i.dc = phi i32 [ %i.gh, %._crit_edge.loopexit ], [ %i.ct, %.lr.ph156.split ]
  %indvars.iv.next161 = add nuw nsw i64 %indvars.iv160, 1 ; 2 uses
  %i.dd = sext i32 %i.db to i64
  %i.de = icmp slt i64 %indvars.iv.next161, %i.dd
  br i1 %i.de, label %.lr.ph156.split, label %._crit_edge157, !llvm.loop !284

bb.j:                                             ; preds = %.lr.ph, %bb.o
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.o ] ; 3 uses
  %i.df = load float, ptr %i.bp, align 4, !tbaa !85 ; 4 uses
  %i.dg = load float, ptr %i.bq, align 4, !tbaa !73
  %i.dh = load float, ptr %i.br, align 4, !tbaa !72
  %i.di = trunc nuw nsw i64 %indvars.iv to i32
  %i.dj = uitofp nneg i32 %i.di to float
  %i.dk = load <2 x i32>, ptr %5, align 4, !tbaa !14
  %i.dl = sitofp <2 x i32> %i.dk to <2 x float>   ; 2 uses
  %i.dm = load float, ptr %i.bs, align 4, !tbaa !75
  %i.dn = load float, ptr %i.bt, align 4, !tbaa !74
  %i.do = load i32, ptr %i.bu, align 4, !tbaa !71
  %.not115 = icmp eq i32 %i.do, 0                 ; 2 uses
  %. = select i1 %.not115, ptr %i.bw, ptr %i.bv
  %.139 = select i1 %.not115, ptr %i.bv, ptr %i.bw
  %.pn138 = load float, ptr %.139, align 4, !tbaa !13
  %reass.add145 = fadd reassoc nsz arcp contract afn float %.pn138, %i.dg
  %reass.add141 = fsub reassoc nsz arcp contract afn float %i.dh, %reass.add145
  %reass.mul = fmul reassoc nsz arcp contract afn float %reass.add141, %i.df
  %i.dp = fadd reassoc nsz arcp contract afn float %i.dj, 5.000000e-01
  %i.dq = extractelement <2 x float> %i.dl, i64 0
  %i.dr = fadd reassoc nsz arcp contract afn float %i.dp, %i.dq
  %.sroa.0128.0 = fadd reassoc nsz arcp contract afn float %i.dr, %reass.mul
  %.pn136 = load float, ptr %., align 4, !tbaa !13
  %reass.add147 = fadd reassoc nsz arcp contract afn float %.pn136, %i.dm
  %reass.add143 = fsub reassoc nsz arcp contract afn float %i.dn, %reass.add147
  %reass.mul144 = fmul reassoc nsz arcp contract afn float %reass.add143, %i.df
  %i.ds = extractelement <2 x float> %i.dl, i64 1
  %i.dt = fadd reassoc nsz arcp contract afn float %i.da, %i.ds
  %.sroa.13.0 = fadd reassoc nsz arcp contract afn float %i.dt, %reass.mul144
  %i.du = fdiv reassoc nsz arcp contract afn float %.sroa.0128.0, %i.df ; 2 uses
  %i.dv = load float, ptr %i.by, align 4, !tbaa !69
  %i.dw = load float, ptr %i.bz, align 4, !tbaa !70
  %i.dx = fmul reassoc nsz arcp contract afn float %i.du, %i.dv
  %i.dy = fadd reassoc nsz arcp contract afn float %i.dx, 1.000000e+00
  %i.dz = fmul reassoc nsz arcp contract afn float %i.dy, %i.df
  %i.ea = load float, ptr %i.ae, align 4, !tbaa !85
  %i.eb = fdiv reassoc nsz arcp contract afn float %.sroa.13.0, %i.dz ; 2 uses
  %i.ec = fmul reassoc nsz arcp contract afn float %i.eb, %i.dw
  %i.ed = fadd reassoc nsz arcp contract afn float %i.ec, 1.000000e+00
  %i.ee = fdiv reassoc nsz arcp contract afn float %i.du, %i.ed
  %i.ef = load <4 x float>, ptr %i.bx, align 4, !tbaa !13 ; 2 uses
  %i.eg = insertelement <2 x float> poison, float %i.ee, i64 0
  %i.eh = shufflevector <2 x float> %i.eg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ei = shufflevector <4 x float> %i.ef, <4 x float> poison, <2 x i32> <i32 0, i32 2>
  %i.ej = fmul reassoc nsz arcp contract afn <2 x float> %i.eh, %i.ei
  %i.ek = insertelement <2 x float> poison, float %i.eb, i64 0
  %i.el = shufflevector <2 x float> %i.ek, <2 x float> poison, <2 x i32> zeroinitializer
  %i.em = shufflevector <4 x float> %i.ef, <4 x float> poison, <2 x i32> <i32 1, i32 3>
  %i.en = fmul reassoc nsz arcp contract afn <2 x float> %i.el, %i.em
  %i.eo = load <2 x float>, ptr %i.bv, align 4, !tbaa !13
  %i.ep = fadd reassoc nsz arcp contract afn <2 x float> %i.eo, %i.en
  %i.eq = fadd reassoc nsz arcp contract afn <2 x float> %i.ep, %i.ej
  %i.er = insertelement <2 x float> poison, float %i.ea, i64 0
  %i.es = shufflevector <2 x float> %i.er, <2 x float> poison, <2 x i32> zeroinitializer
  %i.et = fmul reassoc nsz arcp contract afn <2 x float> %i.eq, %i.es ; 2 uses
  %i.eu = load i32, ptr %i.ay, align 4, !tbaa !66
  %i.ev = icmp eq i32 %i.eu, 1
  br i1 %i.ev, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ew = fsub reassoc nsz arcp contract afn <2 x float> %i.et, %i.cn ; 2 uses
  %i.ex = shufflevector <2 x float> %i.ew, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ey = fmul reassoc nsz arcp contract afn <2 x float> %i.cr, %i.ex ; 2 uses
  %i.ez = shufflevector <2 x float> %i.ew, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fa = fmul reassoc nsz arcp contract afn <2 x float> %i.cp, %i.ez ; 2 uses
  %i.fb = fsub reassoc nsz arcp contract afn <2 x float> %i.fa, %i.ey ; 2 uses
  %i.fc = extractelement <2 x float> %i.fb, i64 1
  %i.fd = fmul reassoc nsz arcp contract afn float %i.cf, %i.fc
  %foldExtExtBinop = fsub reassoc nsz arcp contract afn <2 x float> %i.ey, %i.fa
  %i.fe = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.ff = fmul reassoc nsz arcp contract afn float %i.fe, %i.ce
  %i.fg = fadd reassoc nsz arcp contract afn float %i.ci, %i.ff
  %i.fh = fadd reassoc nsz arcp contract afn float %i.fg, %i.fd
  %i.fi = insertelement <2 x float> poison, float %i.fh, i64 0
  %i.fj = shufflevector <2 x float> %i.fi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fk = fdiv reassoc nsz arcp contract afn <2 x float> %i.fb, %i.fj ; 2 uses
  %i.fl = fadd reassoc nsz arcp contract afn <2 x float> %i.av, %i.fk
  %i.fm = fsub reassoc nsz arcp contract afn <2 x float> %i.av, %i.fk
  %i.fn = shufflevector <2 x float> %i.fl, <2 x float> %i.fm, <2 x i32> <i32 0, i32 3>
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.fo = phi <2 x float> [ %i.fn, %bb.k ], [ %i.et, %bb.j ]
  %i.fp = fadd reassoc nsz arcp contract afn <2 x float> %i.fo, splat (float -5.000000e-01) ; 2 uses
  %i.fq = load <2 x i32>, ptr %4, align 4, !tbaa !14
  %i.fr = sitofp <2 x i32> %i.fq to <2 x float>   ; 2 uses
  %foldExtExtBinop168 = fsub reassoc nsz arcp contract afn <2 x float> %i.fp, %i.fr
  %i.fs = extractelement <2 x float> %foldExtExtBinop168, i64 0 ; 3 uses
  %foldExtExtBinop170 = fsub reassoc nsz arcp contract afn <2 x float> %i.fp, %i.fr
  %i.ft = extractelement <2 x float> %foldExtExtBinop170, i64 1 ; 3 uses
  %i.fu = load i32, ptr %i.cj, align 4, !tbaa !78 ; 2 uses
  %i.fv = load i32, ptr %i.ck, align 4, !tbaa !79
  %i.fw = tail call reassoc nsz arcp contract afn float @dt_interpolation_compute_sample(ptr noundef %i.ac, ptr noundef %2, float noundef %i.fs, float noundef %i.ft, i32 noundef %i.fu, i32 noundef %i.fv, i32 noundef 1, i32 noundef %i.fu) #25
  %i.fx = fcmp reassoc nsz arcp contract afn ult float %i.fw, 0.000000e+00
  br i1 %i.fx, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.fy = load i32, ptr %i.cj, align 4, !tbaa !78 ; 2 uses
  %i.fz = load i32, ptr %i.ck, align 4, !tbaa !79
  %i.ga = tail call reassoc nsz arcp contract afn float @dt_interpolation_compute_sample(ptr noundef %i.ac, ptr noundef %2, float noundef %i.fs, float noundef %i.ft, i32 noundef %i.fy, i32 noundef %i.fz, i32 noundef 1, i32 noundef %i.fy) #25
  %i.gb = fcmp reassoc nsz arcp contract afn ugt float %i.ga, 1.000000e+00
  br i1 %i.gb, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.gc = load i32, ptr %i.cj, align 4, !tbaa !78 ; 2 uses
  %i.gd = load i32, ptr %i.ck, align 4, !tbaa !79
  %i.ge = tail call reassoc nsz arcp contract afn float @dt_interpolation_compute_sample(ptr noundef %i.ac, ptr noundef %2, float noundef %i.fs, float noundef %i.ft, i32 noundef %i.gc, i32 noundef %i.gd, i32 noundef 1, i32 noundef %i.gc) #25
  br label %bb.o

bb.o:                                             ; preds = %bb.l, %bb.n, %bb.m
  %i.gf = phi reassoc nsz arcp contract afn float [ 1.000000e+00, %bb.m ], [ %i.ge, %bb.n ], [ 0.000000e+00, %bb.l ]
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %indvars.iv
  store float %i.gf, ptr %i.gg, align 4, !tbaa !13
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.gh = load i32, ptr %i.bo, align 4, !tbaa !78 ; 2 uses
  %i.gi = sext i32 %i.gh to i64
  %i.gj = icmp slt i64 %indvars.iv.next, %i.gi
  br i1 %i.gj, label %bb.j, label %._crit_edge.loopexit

bb.p:                                             ; preds = %._crit_edge157, %bb.f
  ret void
}

declare ptr @dt_interpolation_new(i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

declare float @dt_interpolation_compute_sample(ptr noundef, ptr noundef, float noundef, float noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define void @modify_roi_out(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr noundef initializes((0, 20)) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #4 {
bb.a:
  %4 = alloca %struct.dt_iop_roi_t, align 16      ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(20) %4, ptr noundef nonnull align 4 dereferenceable(20) %3, i64 20, i1 false), !tbaa.struct !87
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !62  ; 38 uses
  %i.c = load float, ptr %i.b, align 4, !tbaa !83 ; 2 uses
  %sincos = tail call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %i.c) ; 2 uses
  %sin = extractvalue { float, float } %sincos, 0 ; 2 uses
  %cos = extractvalue { float, float } %sincos, 1
  %i.d = fneg reassoc nsz arcp contract afn float %sin
  %i.e = fcmp reassoc nsz arcp contract afn oeq float %i.c, 0.000000e+00 ; 3 uses
  %.sroa.9344.0 = select nsz i1 %i.e, float 1.000000e+00, float %cos ; 9 uses
  %.sroa.7.0 = select nsz i1 %i.e, float 0.000000e+00, float %i.d ; 5 uses
  %.sroa.5343.0 = select nsz i1 %i.e, float 0.000000e+00, float %sin ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store float %.sroa.9344.0, ptr %i.f, align 4, !tbaa !13
  %.sroa.5343.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store float %.sroa.5343.0, ptr %.sroa.5343.0..sroa_idx, align 4, !tbaa !13
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store float %.sroa.7.0, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !13
  %.sroa.9344.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store float %.sroa.9344.0, ptr %.sroa.9344.0..sroa_idx, align 4, !tbaa !13
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 92
  %i.h = load i32, ptr %i.g, align 4, !tbaa !82   ; 2 uses
  %i.i = and i32 %i.h, 1
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = fneg reassoc nsz arcp contract afn float %.sroa.9344.0 ; 2 uses
  store float %i.j, ptr %i.f, align 4, !tbaa !13
  %i.k = fneg reassoc nsz arcp contract afn float %.sroa.7.0 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store float %i.k, ptr %i.l, align 4, !tbaa !13
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.m = phi float [ %i.k, %bb.b ], [ %.sroa.7.0, %bb.a ] ; 2 uses
  %i.n = phi float [ %i.j, %bb.b ], [ %.sroa.9344.0, %bb.a ] ; 2 uses
  %i.o = and i32 %i.h, 2
  %.not271 = icmp eq i32 %i.o, 0
  br i1 %.not271, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = fneg reassoc nsz arcp contract afn float %.sroa.5343.0 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store float %i.p, ptr %i.q, align 4, !tbaa !13
  %i.r = fneg reassoc nsz arcp contract afn float %.sroa.9344.0 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store float %i.r, ptr %i.s, align 4, !tbaa !13
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.t = phi float [ %i.p, %bb.d ], [ %.sroa.5343.0, %bb.c ] ; 2 uses
  %i.u = phi float [ %i.r, %bb.d ], [ %.sroa.9344.0, %bb.c ] ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.w = fmul reassoc nsz arcp contract afn float %i.u, %i.n
  %i.x = fmul reassoc nsz arcp contract afn float %i.m, %i.t
  %i.y = fsub reassoc nsz arcp contract afn float %i.w, %i.x
  %i.z = fneg reassoc nsz arcp contract afn float %i.t
  %i.aa = fneg reassoc nsz arcp contract afn float %i.m
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.ac = insertelement <4 x float> poison, float %i.u, i64 0
  %i.ad = insertelement <4 x float> %i.ac, float %i.z, i64 1
  %i.ae = insertelement <4 x float> %i.ad, float %i.aa, i64 2
  %i.af = insertelement <4 x float> %i.ae, float %i.n, i64 3
  %i.ag = insertelement <4 x float> poison, float %i.y, i64 0
  %i.ah = shufflevector <4 x float> %i.ag, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ai = fdiv reassoc nsz arcp contract afn <4 x float> %i.af, %i.ah
  store <4 x float> %i.ai, ptr %i.v, align 4, !tbaa !13
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 172 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !66
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %bb.f, label %bb.ap

bb.f:                                             ; preds = %bb.e
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  %i.an = load i32, ptr %i.am, align 4, !tbaa !88
  %i.ao = icmp eq i32 %i.an, 1
  br i1 %i.ao, label %bb.g, label %bb.ap

bb.g:                                             ; preds = %bb.f
  %i.ap = fmul reassoc nsz arcp contract afn float %.sroa.9344.0, %.sroa.9344.0
  %i.aq = fmul reassoc nsz arcp contract afn float %.sroa.5343.0, %.sroa.7.0
  %i.ar = fsub reassoc nsz arcp contract afn float %i.ap, %i.aq ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %2, ptr noundef nonnull align 16 dereferenceable(20) %4, i64 20, i1 false), !tbaa.struct !87
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.at = load <2 x i32>, ptr %i.as, align 8, !tbaa !14 ; 3 uses
  %i.au = sitofp <2 x i32> %i.at to <2 x float>   ; 7 uses
  %i.av = extractelement <2 x float> %i.au, i64 0
  %i.aw = extractelement <2 x float> %i.au, i64 1
  %i.ax = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.av, float %i.aw)
  %i.ay = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.ax ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.ba = load float, ptr %i.az, align 4, !tbaa !89
  %i.bb = fmul reassoc nsz arcp contract afn float %i.ay, %i.ba ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  store float %i.bb, ptr %i.bc, align 4, !tbaa !69
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.be = load float, ptr %i.bd, align 4, !tbaa !90
  %i.bf = fmul reassoc nsz arcp contract afn float %i.be, %i.ay ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.b, i64 52
  store float %i.bf, ptr %i.bg, align 4, !tbaa !70
  %i.bh = fmul reassoc nnan nsz arcp contract afn <2 x float> %i.au, splat (float 5.000000e-01) ; 6 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.b, i64 96 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 2 uses
  %i.bm = fdiv reassoc nsz arcp contract afn float 1.000000e+00, %i.ar ; 2 uses
  %invariant.op = fmul reassoc nsz arcp contract afn float %i.bm, %i.bf
  %i.bn = shufflevector <2 x float> %i.bh, <2 x float> %i.au, <2 x i32> <i32 0, i32 2>
  %i.bo = fmul reassoc nnan nsz arcp contract afn <2 x float> %i.bn, <float 1.000000e+00, float -5.000000e-01> ; 2 uses
  %i.bp = insertelement <2 x float> poison, float %.sroa.9344.0, i64 0
  %i.bq = shufflevector <2 x float> %i.bp, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.br = fmul reassoc nsz arcp contract afn <2 x float> %i.bo, %i.bq
  %i.bs = shufflevector <2 x float> %i.br, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.bt = insertelement <2 x float> poison, float %.sroa.7.0, i64 0
  %i.bu = shufflevector <2 x float> %i.bo, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.bv = shufflevector <2 x float> %i.bt, <2 x float> poison, <4 x i32> zeroinitializer
  %i.bw = fmul reassoc nsz arcp contract afn <4 x float> %i.bu, %i.bv
  %i.bx = shufflevector <2 x float> %i.bh, <2 x float> %i.au, <2 x i32> <i32 1, i32 3>
  %i.by = fmul reassoc nnan nsz arcp contract afn <2 x float> %i.bx, <float 1.000000e+00, float -5.000000e-01> ; 2 uses
  %i.bz = insertelement <2 x float> poison, float %.sroa.5343.0, i64 0
  %i.ca = shufflevector <2 x float> %i.by, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.cb = shufflevector <2 x float> %i.bz, <2 x float> poison, <4 x i32> zeroinitializer
  %i.cc = fmul reassoc nsz arcp contract afn <4 x float> %i.ca, %i.cb
  %i.cd = fmul reassoc nsz arcp contract afn <2 x float> %i.by, %i.bq
  %i.ce = shufflevector <2 x float> %i.cd, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.cf = fsub reassoc nsz arcp contract afn <4 x float> %i.bs, %i.cc
  %i.cg = insertelement <4 x float> poison, float %i.ar, i64 0
  %i.ch = shufflevector <4 x float> %i.cg, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ci = fdiv reassoc nsz arcp contract afn <4 x float> %i.cf, %i.ch ; 2 uses
  %i.cj = fsub reassoc nsz arcp contract afn <4 x float> %i.ce, %i.bw
  %i.ck = insertelement <4 x float> poison, float %i.bb, i64 0
  %i.cl = shufflevector <4 x float> %i.ck, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cm = fmul reassoc nsz arcp contract afn <4 x float> %i.ci, %i.cl
  %i.cn = fadd reassoc nsz arcp contract afn <4 x float> %i.cm, splat (float 1.000000e+00)
  %i.co = fmul reassoc nsz arcp contract afn <4 x float> %i.cn, %i.cj ; 2 uses
  %i.cp = insertelement <4 x float> poison, float %invariant.op, i64 0
  %i.cq = shufflevector <4 x float> %i.cp, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cr = fmul reassoc nsz arcp contract afn <4 x float> %i.co, %i.cq
  %i.cs = fadd reassoc nsz arcp contract afn <4 x float> %i.cr, splat (float 1.000000e+00)
  %i.ct = shufflevector <4 x float> %i.co, <4 x float> %i.ci, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  %i.cu = insertelement <8 x float> poison, float %i.bm, i64 0
  %i.cv = shufflevector <8 x float> %i.cu, <8 x float> poison, <8 x i32> <i32 0, i32 poison, i32 0, i32 poison, i32 0, i32 poison, i32 0, i32 poison>
  %i.cw = shufflevector <4 x float> %i.cs, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.cx = shufflevector <8 x float> %i.cw, <8 x float> %i.cv, <8 x i32> <i32 8, i32 0, i32 10, i32 1, i32 12, i32 2, i32 14, i32 3>
  %i.cy = fmul reassoc nsz arcp contract afn <8 x float> %i.ct, %i.cx ; 10 uses
  %i.cz = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.cy, zeroinitializer ; 8 uses
  %i.da = extractelement <8 x i1> %i.cz, i64 7    ; 2 uses
  %i.db = extractelement <8 x i1> %i.cz, i64 6    ; 2 uses
  %i.dc = extractelement <8 x i1> %i.cz, i64 5    ; 2 uses
  %i.dd = extractelement <8 x i1> %i.cz, i64 4    ; 2 uses
  %i.de = extractelement <8 x i1> %i.cz, i64 3    ; 2 uses
  %i.df = extractelement <8 x i1> %i.cz, i64 2    ; 2 uses
  %i.dg = extractelement <8 x i1> %i.cz, i64 1    ; 2 uses
  %i.dh = tail call reassoc nsz arcp contract afn <8 x float> @llvm.fabs.v8f32(<8 x float> %i.cy)
  %i.di = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.dh, splat (float 1.000000e-03) ; 8 uses
  %i.dj = extractelement <8 x i1> %i.cz, i64 0    ; 2 uses
  %i.dk = shufflevector <2 x i32> %i.at, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  %i.dl = extractelement <8 x float> %i.cy, i64 0 ; 2 uses
  %i.dm = extractelement <8 x float> %i.cy, i64 1 ; 2 uses
  %i.dn = extractelement <8 x float> %i.cy, i64 2 ; 2 uses
  %i.do = extractelement <8 x float> %i.cy, i64 3 ; 2 uses
  %i.dp = extractelement <8 x float> %i.cy, i64 4 ; 2 uses
  %i.dq = extractelement <8 x float> %i.cy, i64 5 ; 2 uses
  %i.dr = extractelement <8 x float> %i.cy, i64 6 ; 2 uses
  %i.ds = extractelement <8 x float> %i.cy, i64 7 ; 2 uses
  %i.dt = extractelement <8 x i1> %i.di, i64 0    ; 2 uses
  %i.du = extractelement <8 x i1> %i.di, i64 1    ; 2 uses
  %i.dv = extractelement <8 x i1> %i.di, i64 2    ; 2 uses
  %i.dw = extractelement <8 x i1> %i.di, i64 3    ; 2 uses
  %i.dx = extractelement <8 x i1> %i.di, i64 4    ; 2 uses
  %i.dy = extractelement <8 x i1> %i.di, i64 5    ; 2 uses
  %i.dz = extractelement <8 x i1> %i.di, i64 6    ; 2 uses
  %i.ea = extractelement <8 x i1> %i.di, i64 7    ; 2 uses
  %i.eb = shufflevector <2 x i32> %i.at, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ec = sitofp <4 x i32> %i.eb to <4 x float>
  %i.ed = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.ec, <float -5.000000e-01, float -5.000000e-01, float 5.000000e-01, float 5.000000e-01> ; 16 uses
  br i1 %i.ea, label %bb.h, label %bb.i

.loopexit:                                        ; preds = %bb.ao, %.thread
  %.pre = load i32, ptr %2, align 4, !tbaa !91
  br label %bb.au

bb.h:                                             ; preds = %bb.g
  %.sroa.0.8.vec.extract = extractelement <4 x float> %i.ed, i64 2
  %.sroa.0.0.vec.extract464 = extractelement <4 x float> %i.ed, i64 0
  %.sroa.speculated449 = select i1 %i.da, float %.sroa.0.8.vec.extract, float %.sroa.0.0.vec.extract464
  %i.ee = fdiv reassoc nsz arcp contract afn float %.sroa.speculated449, %i.ds
  %i.ef = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.ee, float 1.000000e+00)
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %.2 = phi nsz float [ %i.ef, %bb.h ], [ 1.000000e+00, %bb.g ] ; 2 uses
  br i1 %i.dz, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %.sroa.0.12.vec.extract = extractelement <4 x float> %i.ed, i64 3
  %.sroa.0.4.vec.extract = extractelement <4 x float> %i.ed, i64 1
  %.sroa.speculated425 = select i1 %i.db, float %.sroa.0.12.vec.extract, float %.sroa.0.4.vec.extract
  %i.eg = fdiv reassoc nsz arcp contract afn float %.sroa.speculated425, %i.dr
  %i.eh = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %.2, float %i.eg)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.2.1 = phi nsz float [ %i.eh, %bb.j ], [ %.2, %bb.i ] ; 2 uses
  br i1 %i.dy, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %.sroa.0.8.vec.extract484 = extractelement <4 x float> %i.ed, i64 2
  %.sroa.0.0.vec.extract460 = extractelement <4 x float> %i.ed, i64 0
  %.sroa.speculated443 = select i1 %i.dc, float %.sroa.0.8.vec.extract484, float %.sroa.0.0.vec.extract460
  %i.ei = fdiv reassoc nsz arcp contract afn float %.sroa.speculated443, %i.dq
  %i.ej = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %.2.1, float %i.ei)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.2.1309 = phi nsz float [ %i.ej, %bb.l ], [ %.2.1, %bb.k ] ; 2 uses
  br i1 %i.dx, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %.sroa.0.12.vec.extract498 = extractelement <4 x float> %i.ed, i64 3
  %.sroa.0.4.vec.extract470 = extractelement <4 x float> %i.ed, i64 1
  %.sroa.speculated419 = select i1 %i.dd, float %.sroa.0.12.vec.extract498, float %.sroa.0.4.vec.extract470
  %i.ek = fdiv reassoc nsz arcp contract afn float %.sroa.speculated419, %i.dp
  %i.el = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %.2.1309, float %i.ek)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.2.1.1 = phi nsz float [ %i.el, %bb.n ], [ %.2.1309, %bb.m ] ; 2 uses
  br i1 %i.dw, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %.sroa.0.8.vec.extract488 = extractelement <4 x float> %i.ed, i64 2
  %.sroa.0.0.vec.extract456 = extractelement <4 x float> %i.ed, i64 0
  %.sroa.speculated437 = select i1 %i.de, float %.sroa.0.8.vec.extract488, float %.sroa.0.0.vec.extract456
  %i.em = fdiv reassoc nsz arcp contract afn float %.sroa.speculated437, %i.do
  %i.en = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %.2.1.1, float %i.em)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.2.2 = phi nsz float [ %i.en, %bb.p ], [ %.2.1.1, %bb.o ] ; 2 uses
  br i1 %i.dv, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %.sroa.0.12.vec.extract502 = extractelement <4 x float> %i.ed, i64 3
  %.sroa.0.4.vec.extract474 = extractelement <4 x float> %i.ed, i64 1
  %.sroa.speculated413 = select i1 %i.df, float %.sroa.0.12.vec.extract502, float %.sroa.0.4.vec.extract474
  %i.eo = fdiv reassoc nsz arcp contract afn float %.sroa.speculated413, %i.dn
  %i.ep = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %.2.2, float %i.eo)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.2.1.2 = phi nsz float [ %i.ep, %bb.r ], [ %.2.2, %bb.q ] ; 2 uses
  br i1 %i.du, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %.sroa.0.8.vec.extract492 = extractelement <4 x float> %i.ed, i64 2
  %.sroa.0.0.vec.extract = extractelement <4 x float> %i.ed, i64 0
  %.sroa.speculated431 = select i1 %i.dg, float %.sroa.0.8.vec.extract492, float %.sroa.0.0.vec.extract
  %i.eq = fdiv reassoc nsz arcp contract afn float %.sroa.speculated431, %i.dm
  %i.er = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %.2.1.2, float %i.eq)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.2.3 = phi nsz float [ %i.er, %bb.t ], [ %.2.1.2, %bb.s ] ; 2 uses
  br i1 %i.dt, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %.sroa.0.12.vec.extract506 = extractelement <4 x float> %i.ed, i64 3
  %.sroa.0.4.vec.extract478 = extractelement <4 x float> %i.ed, i64 1
  %.sroa.speculated = select i1 %i.dj, float %.sroa.0.12.vec.extract506, float %.sroa.0.4.vec.extract478
  %i.es = fdiv reassoc nsz arcp contract afn float %.sroa.speculated, %i.dl
  %i.et = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %.2.3, float %i.es)
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.2.1.3 = phi nsz float [ %i.et, %bb.v ], [ %.2.3, %bb.u ] ; 3 uses
  %i.eu = fcmp reassoc nsz arcp contract afn ult float %.2.1.3, -1.000000e+00
  br i1 %i.eu, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  store <2 x float> %i.bh, ptr %i.bi, align 4, !tbaa !13
  store i32 0, ptr %i.bj, align 4, !tbaa !71
  %i.ev = insertelement <2 x float> poison, float %.2.1.3, i64 0
  %i.ew = shufflevector <2 x float> %i.ev, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ex = fmul reassoc nsz arcp contract afn <2 x float> %i.ew, %i.au ; 2 uses
  %i.ey = load <2 x float>, ptr %i.bk, align 4, !tbaa !13
  %i.ez = load <2 x float>, ptr %i.bl, align 4, !tbaa !13 ; 2 uses
  %i.fa = fsub reassoc nsz arcp contract afn <2 x float> %i.ey, %i.ez
  %i.fb = fsub reassoc nsz arcp contract afn <2 x float> splat (float 5.000000e-01), %i.ez
  %i.fc = fmul reassoc nsz arcp contract afn <2 x float> %i.ex, %i.fb
  %i.fd = shufflevector <2 x float> %i.bh, <2 x float> %i.ex, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.fe = shufflevector <2 x float> %i.fc, <2 x float> %i.fa, <4 x i32> <i32 0, i32 1, i32 2, i32 3> ; 2 uses
  %i.ff = fsub reassoc nsz arcp contract afn <4 x float> %i.fd, %i.fe
  %i.fg = fmul reassoc nsz arcp contract afn <4 x float> %i.fd, %i.fe
  %i.fh = shufflevector <4 x float> %i.ff, <4 x float> %i.fg, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.fi = fptosi <4 x float> %i.fh to <4 x i32>
  store <4 x i32> %i.fi, ptr %2, align 4, !tbaa !14
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.1259 = phi nsz float [ -1.000000e+00, %bb.w ], [ %.2.1.3, %bb.x ]
  %i.fj = shufflevector <2 x i32> %i.dk, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.fk = sitofp <4 x i32> %i.fj to <4 x float>
  %i.fl = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.fk, <float -5.000000e-01, float -5.000000e-01, float 5.000000e-01, float 5.000000e-01> ; 16 uses
  br i1 %i.ea, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %.sroa.0.8.vec.extract482 = extractelement <4 x float> %i.fl, i64 2
  %.sroa.0.0.vec.extract466 = extractelement <4 x float> %i.fl, i64 0
  %.sroa.speculated452 = select i1 %i.da, float %.sroa.0.8.vec.extract482, float %.sroa.0.0.vec.extract466
  %i.fm = fdiv reassoc nsz arcp contract afn float %.sroa.speculated452, %i.ds
  %i.fn = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.fm, float 1.000000e+00)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.2.1384 = phi nsz float [ %i.fn, %bb.z ], [ 1.000000e+00, %bb.y ] ; 2 uses
  br i1 %i.dz, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %.sroa.0.12.vec.extract496 = extractelement <4 x float> %i.fl, i64 3
  %.sroa.0.4.vec.extract468 = extractelement <4 x float> %i.fl, i64 1
  %.sroa.speculated428 = select i1 %i.db, float %.sroa.0.12.vec.extract496, float %.sroa.0.4.vec.extract468
  %i.fo = fdiv reassoc nsz arcp contract afn float %.sroa.speculated428, %i.dr
  %i.fp = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %.2.1384, float %i.fo)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.2.1.1385 = phi nsz float [ %i.fp, %bb.ab ], [ %.2.1384, %bb.aa ] ; 2 uses
  br i1 %i.dy, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %.sroa.0.8.vec.extract486 = extractelement <4 x float> %i.fl, i64 2
  %.sroa.0.0.vec.extract462 = extractelement <4 x float> %i.fl, i64 0
  %.sroa.speculated446 = select i1 %i.dc, float %.sroa.0.8.vec.extract486, float %.sroa.0.0.vec.extract462
  %i.fq = fdiv reassoc nsz arcp contract afn float %.sroa.speculated446, %i.dq
  %i.fr = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %.2.1.1385, float %i.fq)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.2.1309.1 = phi nsz float [ %i.fr, %bb.ad ], [ %.2.1.1385, %bb.ac ] ; 2 uses
  br i1 %i.dx, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %.sroa.0.12.vec.extract500 = extractelement <4 x float> %i.fl, i64 3
  %.sroa.0.4.vec.extract472 = extractelement <4 x float> %i.fl, i64 1
  %.sroa.speculated422 = select i1 %i.dd, float %.sroa.0.12.vec.extract500, float %.sroa.0.4.vec.extract472
  %i.fs = fdiv reassoc nsz arcp contract afn float %.sroa.speculated422, %i.dp
  %i.ft = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %.2.1309.1, float %i.fs)
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.2.1.1.1 = phi nsz float [ %i.ft, %bb.af ], [ %.2.1309.1, %bb.ae ] ; 2 uses
  br i1 %i.dw, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %.sroa.0.8.vec.extract490 = extractelement <4 x float> %i.fl, i64 2
  %.sroa.0.0.vec.extract458 = extractelement <4 x float> %i.fl, i64 0
  %.sroa.speculated440 = select i1 %i.de, float %.sroa.0.8.vec.extract490, float %.sroa.0.0.vec.extract458
  %i.fu = fdiv reassoc nsz arcp contract afn float %.sroa.speculated440, %i.do
  %i.fv = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %.2.1.1.1, float %i.fu)
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.2.2.1 = phi nsz float [ %i.fv, %bb.ah ], [ %.2.1.1.1, %bb.ag ] ; 2 uses
  br i1 %i.dv, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %.sroa.0.12.vec.extract504 = extractelement <4 x float> %i.fl, i64 3
  %.sroa.0.4.vec.extract476 = extractelement <4 x float> %i.fl, i64 1
  %.sroa.speculated416 = select i1 %i.df, float %.sroa.0.12.vec.extract504, float %.sroa.0.4.vec.extract476
  %i.fw = fdiv reassoc nsz arcp contract afn float %.sroa.speculated416, %i.dn
  %i.fx = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %.2.2.1, float %i.fw)
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.2.1.2.1 = phi nsz float [ %i.fx, %bb.aj ], [ %.2.2.1, %bb.ai ] ; 2 uses
  br i1 %i.du, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %.sroa.0.8.vec.extract494 = extractelement <4 x float> %i.fl, i64 2
  %.sroa.0.0.vec.extract454 = extractelement <4 x float> %i.fl, i64 0
  %.sroa.speculated434 = select i1 %i.dg, float %.sroa.0.8.vec.extract494, float %.sroa.0.0.vec.extract454
  %i.fy = fdiv reassoc nsz arcp contract afn float %.sroa.speculated434, %i.dm
  %i.fz = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %.2.1.2.1, float %i.fy)
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %.2.3.1 = phi nsz float [ %i.fz, %bb.al ], [ %.2.1.2.1, %bb.ak ] ; 2 uses
  br i1 %i.dt, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %.sroa.0.12.vec.extract508 = extractelement <4 x float> %i.fl, i64 3
  %.sroa.0.4.vec.extract480 = extractelement <4 x float> %i.fl, i64 1
  %.sroa.speculated410 = select i1 %i.dj, float %.sroa.0.12.vec.extract508, float %.sroa.0.4.vec.extract480
  %i.ga = fdiv reassoc nsz arcp contract afn float %.sroa.speculated410, %i.dl
  %i.gb = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %.2.3.1, float %i.ga)
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %.2.1.3.1 = phi nsz float [ %i.gb, %bb.an ], [ %.2.3.1, %bb.am ] ; 2 uses
  %i.gc = fcmp reassoc nsz arcp contract afn ult float %.2.1.3.1, %.1259
  br i1 %i.gc, label %.loopexit, label %.thread

.thread:                                          ; preds = %bb.ao
  store <2 x float> %i.bh, ptr %i.bi, align 4, !tbaa !13
  store i32 1, ptr %i.bj, align 4, !tbaa !71
  %i.gd = load <2 x float>, ptr %i.bk, align 4, !tbaa !13
  %i.ge = load <2 x float>, ptr %i.bl, align 4, !tbaa !13 ; 2 uses
  %i.gf = fsub reassoc nsz arcp contract afn <2 x float> %i.gd, %i.ge
  %i.gg = insertelement <2 x float> poison, float %.2.1.3.1, i64 0
  %i.gh = shufflevector <2 x float> %i.gg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gi = fmul reassoc nsz arcp contract afn <2 x float> %i.gh, %i.au ; 2 uses
  %i.gj = shufflevector <2 x float> %i.bh, <2 x float> %i.gi, <4 x i32> <i32 1, i32 0, i32 3, i32 2> ; 2 uses
  %i.gk = shufflevector <2 x float> %i.gf, <2 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 1>
  %i.gl = shufflevector <2 x float> %i.gi, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 poison, i32 poison>
  %i.gm = fsub reassoc nsz arcp contract afn <2 x float> splat (float 5.000000e-01), %i.ge
  %i.gn = shufflevector <2 x float> %i.gm, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.go = fmul reassoc nsz arcp contract afn <4 x float> %i.gl, %i.gn
  %i.gp = shufflevector <4 x float> %i.go, <4 x float> %i.gk, <4 x i32> <i32 0, i32 1, i32 6, i32 7> ; 2 uses
  %i.gq = fsub reassoc nsz arcp contract afn <4 x float> %i.gj, %i.gp
  %i.gr = fmul reassoc nsz arcp contract afn <4 x float> %i.gj, %i.gp
  %i.gs = shufflevector <4 x float> %i.gq, <4 x float> %i.gr, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.gt = fptosi <4 x float> %i.gs to <4 x i32>
  store <4 x i32> %i.gt, ptr %2, align 4, !tbaa !14
  br label %.loopexit

bb.ap:                                            ; preds = %bb.f, %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %2, ptr noundef nonnull align 16 dereferenceable(20) %4, i64 20, i1 false), !tbaa.struct !87
  %i.gu = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.gv = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  store i32 0, ptr %i.gv, align 4, !tbaa !71
  %i.gw = load i32, ptr %i.aj, align 4, !tbaa !66
  %i.gx = icmp eq i32 %i.gw, 1
  %i.gy = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  %i.gz = load float, ptr %i.gy, align 4, !tbaa !69 ; 4 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.b, i64 52
  %i.hb = load float, ptr %i.ha, align 4, !tbaa !70 ; 5 uses
  %i.hc = load <2 x i32>, ptr %i.gu, align 8, !tbaa !14 ; 2 uses
  %i.hd = shufflevector <2 x i32> %i.hc, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.he = sitofp <4 x i32> %i.hd to <4 x float>   ; 11 uses
  %i.hf = shufflevector <4 x float> %i.he, <4 x float> poison, <2 x i32> <i32 0, i32 1> ; 2 uses
  %i.hg = fmul reassoc nnan nsz arcp contract afn <2 x float> %i.hf, splat (float 5.000000e-01) ; 7 uses
  %i.hh = load <2 x float>, ptr %i.v, align 4, !tbaa !13 ; 6 uses
  %i.hi = load <2 x float>, ptr %i.ab, align 4, !tbaa !13 ; 4 uses
  br i1 %i.gx, label %.split.us, label %.split.preheader

.split.preheader:                                 ; preds = %bb.ap
  %i.hj = extractelement <2 x float> %i.hg, i64 0
  %i.hk = fneg reassoc nsz arcp contract afn float %i.hj
  %i.hl = extractelement <2 x float> %i.hg, i64 1
  %i.hm = fneg reassoc nsz arcp contract afn float %i.hl ; 2 uses
  %i.hn = extractelement <2 x float> %i.hh, i64 1 ; 2 uses
  %i.ho = fmul reassoc nsz arcp contract afn float %i.hn, %i.hm
  %i.hp = extractelement <4 x float> %i.he, i64 0
  %i.hq = fmul reassoc nnan nsz arcp contract afn float %i.hp, 5.000000e-01
  %i.hr = extractelement <4 x float> %i.he, i64 1
  %i.hs = fmul reassoc nnan nsz arcp contract afn float %i.hr, 5.000000e-01 ; 2 uses
  %i.ht = fmul reassoc nsz arcp contract afn float %i.hn, %i.hs ; 2 uses
  %i.hu = extractelement <2 x float> %i.hi, i64 1 ; 2 uses
  %i.hv = fmul reassoc nsz arcp contract afn float %i.hu, %i.hs ; 2 uses
  %i.hw = fmul reassoc nsz arcp contract afn float %i.hu, %i.hm
  %i.hx = shufflevector <2 x float> %i.hh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hy = insertelement <2 x float> poison, float %i.hk, i64 0
  %i.hz = insertelement <2 x float> %i.hy, float %i.hq, i64 1 ; 2 uses
  %i.ia = fmul reassoc nsz arcp contract afn <2 x float> %i.hx, %i.hz ; 3 uses
  %i.ib = insertelement <2 x float> poison, float %i.ho, i64 0
  %i.ic = shufflevector <2 x float> %i.ib, <2 x float> poison, <2 x i32> zeroinitializer
  %i.id = fadd reassoc nsz arcp contract afn <2 x float> %i.ic, %i.ia ; 2 uses
  %i.ie = extractelement <2 x float> %i.ia, i64 1
  %i.if = fadd reassoc nsz arcp contract afn float %i.ht, %i.ie ; 2 uses
  %i.ig = extractelement <2 x float> %i.ia, i64 0
  %i.ih = fadd reassoc nsz arcp contract afn float %i.ht, %i.ig
  %i.ii = shufflevector <2 x float> %i.hi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ij = fmul reassoc nsz arcp contract afn <2 x float> %i.ii, %i.hz ; 3 uses
  %i.ik = fmul reassoc nsz arcp contract afn float %i.if, %i.gz
  %i.il = insertelement <2 x float> poison, float %i.gz, i64 0
  %i.im = shufflevector <2 x float> %i.il, <2 x float> poison, <2 x i32> zeroinitializer
  %i.in = fmul reassoc nsz arcp contract afn <2 x float> %i.id, %i.im
  %i.io = extractelement <2 x float> %i.ij, i64 1
  %i.ip = fadd reassoc nsz arcp contract afn float %i.hv, %i.io
  %i.iq = insertelement <2 x float> poison, float %i.hw, i64 0
  %i.ir = shufflevector <2 x float> %i.iq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.is = fadd reassoc nsz arcp contract afn <2 x float> %i.ir, %i.ij
  %i.it = fadd reassoc nsz arcp contract afn float %i.ik, 1.000000e+00
  %i.iu = fadd reassoc nsz arcp contract afn <2 x float> %i.in, splat (float 1.000000e+00)
  %i.iv = extractelement <2 x float> %i.ij, i64 0
  %i.iw = fadd reassoc nsz arcp contract afn float %i.hv, %i.iv
  %i.ix = fmul reassoc nsz arcp contract afn float %i.ip, %i.it ; 2 uses
  %i.iy = fmul reassoc nsz arcp contract afn <2 x float> %i.is, %i.iu ; 2 uses
  %i.iz = insertelement <2 x float> poison, float %i.hb, i64 0
  %i.ja = shufflevector <2 x float> %i.iz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jb = fmul reassoc nsz arcp contract afn <2 x float> %i.iy, %i.ja
  %i.jc = fadd reassoc nsz arcp contract afn <2 x float> %i.jb, splat (float 1.000000e+00)
  %i.jd = fmul reassoc nsz arcp contract afn <2 x float> %i.jc, %i.id
  %i.je = fmul reassoc nsz arcp contract afn float %i.ix, %i.hb
  %i.jf = fadd reassoc nsz arcp contract afn float %i.je, 1.000000e+00
  %i.jg = fmul reassoc nsz arcp contract afn float %i.jf, %i.if
  %i.jh = shufflevector <2 x float> %i.iy, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ji = insertelement <4 x float> %i.jh, float %i.ix, i64 2
  %i.jj = insertelement <4 x float> %i.ji, float %i.iw, i64 3
  br label %.split297.us

.split.us:                                        ; preds = %bb.ap
  %i.jk = shufflevector <2 x float> %i.hg, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.jl = shufflevector <4 x float> %i.he, <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x i32> <i32 1, i32 0, i32 1, i32 7>
  %i.jm = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.jn = getelementptr inbounds nuw i8, ptr %i.b, i64 116
  %i.jo = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.jp = getelementptr inbounds nuw i8, ptr %i.b, i64 164
  %i.jq = getelementptr inbounds nuw i8, ptr %i.b, i64 148
  %i.jr = getelementptr inbounds nuw i8, ptr %i.b, i64 100
  %i.js = load float, ptr %i.jp, align 4, !tbaa !92
  %i.jt = load float, ptr %i.jo, align 4, !tbaa !93
  %i.ju = load float, ptr %i.jn, align 4, !tbaa !80
  %i.jv = load float, ptr %i.jm, align 4, !tbaa !81
  %i.jw = shufflevector <4 x float> %i.he, <4 x float> <float 0.000000e+00, float poison, float poison, float poison>, <2 x i32> <i32 4, i32 1>
  %i.jx = shufflevector <4 x float> %i.he, <4 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.jy = fdiv reassoc nsz arcp contract afn <2 x float> %i.jw, %i.jx
  %i.jz = insertelement <2 x float> poison, float %i.jv, i64 0
  %i.ka = shufflevector <2 x float> %i.jz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kb = fsub reassoc nsz arcp contract afn <2 x float> %i.jy, %i.ka ; 2 uses
  %i.kc = load <4 x float>, ptr %i.jq, align 4, !tbaa !13 ; 4 uses
  %i.kd = load <2 x float>, ptr %i.jr, align 4, !tbaa !13
  %i.ke = shufflevector <2 x float> %i.kd, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 3 uses
  %i.kf = shufflevector <4 x float> %i.he, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.kg = insertelement <2 x float> %i.kf, float 0.000000e+00, i64 0
  %i.kh = fdiv reassoc nsz arcp contract afn <2 x float> %i.kg, %i.kf
  %i.ki = insertelement <2 x float> poison, float %i.ju, i64 0
  %i.kj = shufflevector <2 x float> %i.ki, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kk = fsub reassoc nsz arcp contract afn <2 x float> %i.kh, %i.kj ; 3 uses
  %i.kl = insertelement <2 x float> poison, float %i.js, i64 0
  %i.km = shufflevector <2 x float> %i.kk, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 0>
  %i.kn = shufflevector <2 x float> %i.kl, <2 x float> poison, <4 x i32> zeroinitializer
  %i.ko = fmul reassoc nsz arcp contract afn <4 x float> %i.km, %i.kn
  %i.kp = fadd reassoc nsz arcp contract afn <4 x float> %i.ko, splat (float 1.000000e+00)
  %i.kq = shufflevector <2 x float> %i.kk, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.kr = shufflevector <2 x float> %i.kk, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 0>
  %i.ks = shufflevector <4 x float> %i.kc, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 0, i32 2>
  %i.kt = fmul reassoc nsz arcp contract afn <4 x float> %i.kr, %i.ks ; 2 uses
  %i.ku = shufflevector <4 x float> %i.kc, <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, <4 x i32> <i32 2, i32 0, i32 2, i32 7>
  %i.kv = shufflevector <4 x float> %i.kq, <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x i32> <i32 0, i32 1, i32 1, i32 7>
  %i.kw = fmul reassoc nsz arcp contract afn <4 x float> %i.ku, %i.kv
  %i.kx = insertelement <2 x float> poison, float %i.jt, i64 0
  %i.ky = shufflevector <2 x float> %i.kb, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.kz = shufflevector <2 x float> %i.kx, <2 x float> poison, <4 x i32> zeroinitializer
  %i.la = fmul reassoc nsz arcp contract afn <4 x float> %i.ky, %i.kz
  %i.lb = shufflevector <2 x float> %i.kb, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1> ; 2 uses
  %i.lc = shufflevector <4 x float> %i.kc, <4 x float> poison, <4 x i32> <i32 1, i32 3, i32 1, i32 3>
  %i.ld = fmul reassoc nsz arcp contract afn <4 x float> %i.lb, %i.lc ; 2 uses
  %i.le = shufflevector <4 x float> %i.kc, <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, <4 x i32> <i32 3, i32 1, i32 3, i32 7>
  %i.lf = shufflevector <4 x float> %i.lb, <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x i32> <i32 0, i32 0, i32 2, i32 7>
  %i.lg = fmul reassoc nsz arcp contract afn <4 x float> %i.le, %i.lf
  %i.lh = fadd reassoc nsz arcp contract afn <4 x float> %i.kp, %i.la ; 3 uses
  %i.li = fadd reassoc nsz arcp contract afn <4 x float> %i.ld, %i.kt
  %i.lj = fdiv reassoc nsz arcp contract afn <4 x float> %i.li, %i.lh
  %i.lk = fadd reassoc nsz arcp contract afn <4 x float> %i.lg, %i.kw
  %i.ll = insertelement <4 x float> %i.lh, float 1.000000e+00, i64 3
  %i.lm = fdiv reassoc nsz arcp contract afn <4 x float> %i.lk, %i.ll
  %i.ln = fadd reassoc nsz arcp contract afn <4 x float> %i.lj, %i.ke
  %i.lo = shufflevector <4 x float> %i.ke, <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x i32> <i32 1, i32 0, i32 1, i32 7>
  %i.lp = fadd reassoc nsz arcp contract afn <4 x float> %i.lo, %i.lm
  %shift = shufflevector <4 x float> %i.ld, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop = fadd reassoc nsz arcp contract afn <4 x float> %shift, %i.kt
  %i.lq = fmul reassoc nsz arcp contract afn <4 x float> %i.ln, %i.he
  %shift372 = shufflevector <4 x float> %i.lh, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop373 = fdiv reassoc nsz arcp contract afn <4 x float> %foldExtExtBinop, %shift372
  %i.lr = fsub reassoc nsz arcp contract afn <4 x float> %i.lq, %i.jk ; 4 uses
  %i.ls = fadd reassoc nsz arcp contract afn <4 x float> %i.lp, <float -5.000000e-01, float -5.000000e-01, float -5.000000e-01, float -0.000000e+00>
  %i.lt = fmul reassoc nsz arcp contract afn <4 x float> %i.ls, %i.jl ; 3 uses
  %i.lu = extractelement <4 x float> %i.lr, i64 2
  %i.lv = extractelement <2 x float> %i.hh, i64 0 ; 2 uses
  %i.lw = fmul reassoc nsz arcp contract afn float %i.lv, %i.lu
  %foldExtExtBinop375 = fadd reassoc nsz arcp contract afn <4 x float> %foldExtExtBinop373, %i.ke
  %i.lx = shufflevector <2 x float> %i.hi, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.ly = shufflevector <4 x float> %i.lx, <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, <4 x i32> <i32 1, i32 0, i32 1, i32 7>
  %i.lz = fmul reassoc nsz arcp contract afn <4 x float> %i.ly, %i.lt
  %foldExtExtBinop377 = fmul reassoc nsz arcp contract afn <4 x float> %foldExtExtBinop375, %i.he
  %i.ma = extractelement <4 x float> %i.lt, i64 2
  %i.mb = extractelement <2 x float> %i.hh, i64 1 ; 2 uses
  %i.mc = fmul reassoc nsz arcp contract afn float %i.mb, %i.ma
  %foldExtExtBinop379 = fsub reassoc nsz arcp contract afn <4 x float> %foldExtExtBinop377, %i.jk ; 2 uses
  %i.md = extractelement <4 x float> %foldExtExtBinop379, i64 0
  %i.me = fadd reassoc nsz arcp contract afn float %i.mc, %i.lw ; 2 uses
  %i.mf = shufflevector <2 x float> %i.hi, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.mg = fmul reassoc nsz arcp contract afn <4 x float> %i.mf, %i.lr
  %i.mh = fadd reassoc nsz arcp contract afn <4 x float> %i.mg, %i.lz ; 2 uses
  %i.mi = shufflevector <4 x float> %i.lr, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.mj = fmul reassoc nsz arcp contract afn <2 x float> %i.hh, %i.mi
  %i.mk = shufflevector <2 x float> %i.hh, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ml = shufflevector <4 x float> %i.lt, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.mm = fmul reassoc nsz arcp contract afn <2 x float> %i.mk, %i.ml
  %i.mn = fadd reassoc nsz arcp contract afn <2 x float> %i.mj, %i.mm ; 2 uses
  %i.mo = shufflevector <2 x float> %i.mn, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.mp = insertelement <4 x float> %i.mo, float %i.me, i64 2
  %i.mq = shufflevector <4 x float> %i.mp, <4 x float> %foldExtExtBinop379, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.mr = insertelement <4 x float> poison, float %i.gz, i64 0
  %i.ms = shufflevector <4 x float> %i.mr, <4 x float> %i.lx, <4 x i32> <i32 0, i32 0, i32 0, i32 4>
  %i.mt = fmul reassoc nsz arcp contract afn <4 x float> %i.mq, %i.ms
  %i.mu = fadd reassoc nsz arcp contract afn <4 x float> %i.mt, <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float -0.000000e+00> ; 2 uses
  %i.mv = fmul reassoc nsz arcp contract afn <4 x float> %i.mh, %i.mu ; 3 uses
  %i.mw = fadd reassoc nsz arcp contract afn <4 x float> %i.mh, %i.mu
  %i.mx = shufflevector <4 x float> %i.mv, <4 x float> %i.mw, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.my = shufflevector <4 x float> %i.mv, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.mz = insertelement <2 x float> poison, float %i.hb, i64 0
  %i.na = shufflevector <2 x float> %i.mz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.nb = fmul reassoc nsz arcp contract afn <2 x float> %i.my, %i.na
  %i.nc = fadd reassoc nsz arcp contract afn <2 x float> %i.nb, splat (float 1.000000e+00)
  %i.nd = fmul reassoc nsz arcp contract afn <2 x float> %i.nc, %i.mn
  %i.ne = extractelement <4 x float> %i.mv, i64 2
  %i.nf = fmul reassoc nsz arcp contract afn float %i.ne, %i.hb
  %i.ng = fadd reassoc nsz arcp contract afn float %i.nf, 1.000000e+00
  %i.nh = fmul reassoc nsz arcp contract afn float %i.ng, %i.me
  %i.ni = fmul reassoc nsz arcp contract afn float %i.lv, %i.md
  %i.nj = extractelement <4 x float> %i.lr, i64 3
  %i.nk = fmul reassoc nsz arcp contract afn float %i.mb, %i.nj
  %i.nl = fadd reassoc nsz arcp contract afn float %i.nk, %i.ni
  br label %.split297.us

.split297.us:                                     ; preds = %.split.preheader, %.split.us
  %.sink366 = phi float [ %i.ih, %.split.preheader ], [ %i.nl, %.split.us ] ; 2 uses
  %.pn351 = phi float [ %i.jg, %.split.preheader ], [ %i.nh, %.split.us ]
  %i.nm = phi <4 x float> [ %i.jj, %.split.preheader ], [ %i.mx, %.split.us ]
  %i.nn = phi <2 x float> [ %i.jd, %.split.preheader ], [ %i.nd, %.split.us ]
  %.scalar = fmul reassoc nsz arcp contract afn float %.sink366, %i.gz
  %.scalar381 = fadd reassoc nsz arcp contract afn float %.scalar, 1.000000e+00
  %i.no = insertelement <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float poison>, float %.scalar381, i64 3
  %i.np = fmul reassoc nsz arcp contract afn <4 x float> %i.nm, %i.no ; 2 uses
  %i.nq = extractelement <4 x float> %i.np, i64 3
  %i.nr = fmul reassoc nsz arcp contract afn float %i.nq, %i.hb
  %i.ns = fadd reassoc nsz arcp contract afn float %i.nr, 1.000000e+00
  %i.nt = fmul reassoc nsz arcp contract afn float %i.ns, %.sink366
  %i.nu = shufflevector <2 x float> %i.hg, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.nv = fadd reassoc nsz arcp contract afn <4 x float> %i.np, %i.nu ; 8 uses
  %i.nw = insertelement <4 x float> poison, float %.pn351, i64 2
  %i.nx = insertelement <4 x float> %i.nw, float %i.nt, i64 3
  %i.ny = shufflevector <2 x float> %i.nn, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.nz = shufflevector <4 x float> %i.ny, <4 x float> %i.nx, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.oa = shufflevector <2 x float> %i.hg, <2 x float> poison, <4 x i32> zeroinitializer
  %i.ob = fadd reassoc nsz arcp contract afn <4 x float> %i.nz, %i.oa ; 8 uses
  %i.oc = extractelement <4 x float> %i.ob, i64 0
  %i.od = extractelement <4 x float> %i.ob, i64 1
  %i.oe = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.oc, float %i.od)
  %i.of = extractelement <4 x float> %i.ob, i64 2
  %i.og = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.oe, float %i.of)
  %i.oh = extractelement <4 x float> %i.ob, i64 3
  %i.oi = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.og, float %i.oh) ; 2 uses
  %i.oj = extractelement <4 x float> %i.he, i64 0 ; 4 uses
  %i.ok = fadd reassoc nsz arcp contract afn float %i.oi, %i.oj
  %i.ol = fcmp reassoc nsz arcp contract afn olt float %i.ok, 0.000000e+00
  %i.om = extractelement <4 x float> %i.nv, i64 0
  %i.on = extractelement <4 x float> %i.nv, i64 1
  %i.oo = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.om, float %i.on)
  %i.op = extractelement <4 x float> %i.nv, i64 2
  %i.oq = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.oo, float %i.op)
  %i.or = extractelement <4 x float> %i.nv, i64 3
  %i.os = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.oq, float %i.or) ; 2 uses
  %i.ot = extractelement <4 x float> %i.he, i64 1 ; 5 uses
  %i.ou = fadd reassoc nsz arcp contract afn float %i.os, %i.ot
  %i.ov = fcmp reassoc nsz arcp contract afn olt float %i.ou, 0.000000e+00
  %i.ow = sub nsw <2 x i32> zeroinitializer, %i.hc
  %i.ox = sitofp <2 x i32> %i.ow to <2 x float>   ; 2 uses
  %i.oy = extractelement <2 x float> %i.ox, i64 0
  %.0250 = select nsz i1 %i.ol, float %i.oy, float %i.oi ; 3 uses
  %i.oz = extractelement <2 x float> %i.ox, i64 1
  %.0248 = select nsz i1 %i.ov, float %i.oz, float %i.os ; 3 uses
  %i.pa = shufflevector <4 x float> %i.ob, <4 x float> %i.nv, <2 x i32> <i32 0, i32 4>
  %i.pb = shufflevector <4 x float> %i.ob, <4 x float> %i.nv, <2 x i32> <i32 1, i32 5>
  %i.pc = tail call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.pa, <2 x float> %i.pb)
  %i.pd = shufflevector <4 x float> %i.ob, <4 x float> %i.nv, <2 x i32> <i32 2, i32 6>
  %i.pe = tail call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.pc, <2 x float> %i.pd)
  %i.pf = shufflevector <4 x float> %i.ob, <4 x float> %i.nv, <2 x i32> <i32 3, i32 7>
  %i.pg = tail call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.pe, <2 x float> %i.pf) ; 3 uses
  %i.ph = fmul reassoc nnan nsz arcp contract afn <2 x float> %i.hf, splat (float 2.000000e+00) ; 3 uses
  %i.pi = fcmp reassoc nsz arcp contract afn ogt <2 x float> %i.pg, %i.ph ; 2 uses
  %i.pj = extractelement <2 x i1> %i.pi, i64 0
  %i.pk = extractelement <2 x float> %i.pg, i64 0
  %i.pl = extractelement <2 x float> %i.ph, i64 0
  %.0246 = select nsz i1 %i.pj, float %i.pl, float %i.pk ; 3 uses
  %i.pm = extractelement <2 x i1> %i.pi, i64 1
  %i.pn = extractelement <2 x float> %i.pg, i64 1
  %i.po = extractelement <2 x float> %i.ph, i64 1
  %.0244 = select nsz i1 %i.pm, float %i.po, float %i.pn ; 2 uses
  %i.pp = fsub reassoc nsz arcp contract afn float %.0246, %.0250
  %i.pq = fmul reassoc nnan nsz arcp contract afn float %i.oj, 1.250000e-01
  %i.pr = fcmp reassoc nsz arcp contract afn olt float %i.pp, %i.pq
  br i1 %i.pr, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %.split297.us
  %i.ps = fadd reassoc nsz arcp contract afn float %.0250, %.0246
  %i.pt = fmul reassoc nsz arcp contract afn float %i.ps, 5.000000e-01 ; 2 uses
  %i.pu = fmul reassoc nnan nsz arcp contract afn float %i.oj, 6.250000e-02 ; 4 uses
  %i.pv = fcmp reassoc nsz arcp contract afn olt float %i.pt, %i.pu
  %spec.select = select nsz i1 %i.pv, float %i.pu, float %i.pt ; 2 uses
  %i.pw = fmul reassoc nnan nsz arcp contract afn float %i.oj, 9.375000e-01 ; 2 uses
  %i.px = fcmp reassoc nsz arcp contract afn ult float %spec.select, %i.pw
  %i.py = fadd reassoc nsz arcp contract afn float %i.pw, -1.000000e+00
  %.1243 = select nsz i1 %i.px, float %spec.select, float %i.py ; 2 uses
  %i.pz = fsub reassoc nsz arcp contract afn float %.1243, %i.pu
  %i.qa = fadd reassoc nsz arcp contract afn float %.1243, %i.pu
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %.split297.us
  %.1251 = phi nsz float [ %i.pz, %bb.aq ], [ %.0250, %.split297.us ] ; 2 uses
  %.1247 = phi nsz float [ %i.qa, %bb.aq ], [ %.0246, %.split297.us ]
  %i.qb = fsub reassoc nsz arcp contract afn float %.0244, %.0248 ; 2 uses
  %i.qc = fmul reassoc nnan nsz arcp contract afn float %i.ot, 1.250000e-01
  %i.qd = fcmp reassoc nsz arcp contract afn olt float %i.qb, %i.qc
  br i1 %i.qd, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.qe = fadd reassoc nsz arcp contract afn float %.0248, %.0244
  %i.qf = fmul reassoc nsz arcp contract afn float %i.qe, 5.000000e-01 ; 2 uses
  %i.qg = fmul reassoc nnan nsz arcp contract afn float %i.ot, 6.250000e-02 ; 3 uses
  %i.qh = fcmp reassoc nsz arcp contract afn olt float %i.qf, %i.qg
  %spec.select275 = select nsz i1 %i.qh, float %i.qg, float %i.qf ; 2 uses
  %i.qi = fmul reassoc nnan nsz arcp contract afn float %i.ot, 9.375000e-01 ; 2 uses
  %i.qj = fcmp reassoc nsz arcp contract afn ult float %spec.select275, %i.qi
  %i.qk = fadd reassoc nsz arcp contract afn float %i.qi, -1.000000e+00
  %.1 = select nsz i1 %i.qj, float %spec.select275, float %i.qk
  %i.ql = fsub reassoc nsz arcp contract afn float %.1, %i.qg
  %.pre347 = fmul reassoc nnan nsz arcp contract afn float %i.ot, 1.250000e-01
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %.pre-phi = phi float [ %.pre347, %bb.as ], [ %i.qb, %bb.ar ]
  %.1249 = phi nsz float [ %i.ql, %bb.as ], [ %.0248, %bb.ar ]
  %i.qm = fsub reassoc nsz arcp contract afn float %.1247, %.1251
  %i.qn = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.qo = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.qp = getelementptr inbounds nuw i8, ptr %i.b, i64 180
  %i.qq = getelementptr inbounds nuw i8, ptr %i.b, i64 184
  %i.qr = load <2 x float>, ptr %i.qn, align 4, !tbaa !13 ; 2 uses
  %i.qs = insertelement <2 x float> poison, float %i.qm, i64 0
  %i.qt = insertelement <2 x float> %i.qs, float %.pre-phi, i64 1 ; 2 uses
  %i.qu = fmul reassoc nsz arcp contract afn <2 x float> %i.qr, %i.qt
  %i.qv = insertelement <2 x float> poison, float %.1251, i64 0
  %i.qw = insertelement <2 x float> %i.qv, float %.1249, i64 1
  %i.qx = fadd reassoc nsz arcp contract afn <2 x float> %i.qu, %i.qw ; 2 uses
  %i.qy = load <2 x float>, ptr %i.qo, align 4, !tbaa !13
  %i.qz = fsub reassoc nsz arcp contract afn <2 x float> %i.qy, %i.qr
  %i.ra = fmul reassoc nsz arcp contract afn <2 x float> %i.qz, %i.qt
  %i.rb = fneg reassoc nsz arcp contract afn <2 x float> %i.qx
  %i.rc = tail call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.rb, <2 x float> zeroinitializer) ; 2 uses
  %i.rd = extractelement <2 x float> %i.rc, i64 0
  store float %i.rd, ptr %i.qp, align 4, !tbaa !73
  %i.re = extractelement <2 x float> %i.rc, i64 1
  store float %i.re, ptr %i.qq, align 4, !tbaa !75
  %i.rf = shufflevector <2 x float> %i.ra, <2 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 1>
  %i.rg = tail call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.qx, <2 x float> zeroinitializer)
  %i.rh = shufflevector <2 x float> %i.rg, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ri = shufflevector <4 x float> %i.rh, <4 x float> %i.rf, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.rj = fptosi <4 x float> %i.ri to <4 x i32>   ; 2 uses
  store <4 x i32> %i.rj, ptr %2, align 4, !tbaa !14
  %i.rk = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.rl = extractelement <2 x float> %i.hg, i64 0
  store float %i.rl, ptr %i.rk, align 4, !tbaa !67
  %i.rm = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  %i.rn = extractelement <2 x float> %i.hg, i64 1
  store float %i.rn, ptr %i.rm, align 4, !tbaa !68
  %i.ro = extractelement <4 x i32> %i.rj, i64 0
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %.loopexit
  %5 = phi i32 [ %i.ro, %bb.at ], [ %.pre, %.loopexit ] ; 2 uses
  %i.rp = icmp slt i32 %5, 0
  br i1 %i.rp, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  store i32 0, ptr %2, align 4, !tbaa !91
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %6 = phi i32 [ 0, %bb.av ], [ %5, %bb.au ]
  %i.rq = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 3 uses
  %i.rr = load i32, ptr %i.rq, align 4, !tbaa !94 ; 2 uses
  %i.rs = icmp slt i32 %i.rr, 0
  br i1 %i.rs, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  store i32 0, ptr %i.rq, align 4, !tbaa !94
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %i.rt = phi i32 [ 0, %bb.ax ], [ %i.rr, %bb.aw ]
  %i.ru = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.rv = load i32, ptr %i.ru, align 4, !tbaa !78
  %i.rw = icmp slt i32 %i.rv, 4
  br i1 %i.rw, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.rx = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.ry = load i32, ptr %i.rx, align 4, !tbaa !79
  %i.rz = icmp slt i32 %i.ry, 4
  br i1 %i.rz, label %bb.ba, label %bb.be

bb.ba:                                            ; preds = %bb.ay, %bb.az
  %i.sa = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !132
  %i.sb = and i32 %i.sa, 33554432
  %.not272 = icmp eq i32 %i.sb, 0
  br i1 %.not272, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.sc = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.sd = load ptr, ptr %i.sc, align 8, !tbaa !33
  call void (ptr, ptr, ptr, i32, ptr, ptr, ptr, ...) @dt_print_pipe_ext(ptr noundef nonnull @.str.7, ptr noundef %i.sd, ptr noundef %0, i32 noundef -2, ptr noundef nonnull %4, ptr noundef nonnull %2, ptr noundef nonnull @.str.8) #25
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %i.se = load <4 x i32>, ptr %4, align 16, !tbaa !14 ; 3 uses
  store <4 x i32> %i.se, ptr %2, align 4, !tbaa !14
  %i.sf = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i32 0, ptr %i.sf, align 16, !tbaa !285
  %i.sg = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.sh = load ptr, ptr %i.sg, align 8, !tbaa !33
  %i.si = getelementptr i8, ptr %i.sh, i64 644
  %.val = load i32, ptr %i.si, align 4, !tbaa !50
  %i.sj = and i32 %.val, 2
  %.not273 = icmp eq i32 %i.sj, 0
  %i.sk = extractelement <4 x i32> %i.se, i64 0
  %i.sl = extractelement <4 x i32> %i.se, i64 1
  br i1 %.not273, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.sm = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.9, i32 noundef 5) #25
  %i.sn = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.so = load ptr, ptr %i.sn, align 8, !tbaa !133
  %i.sp = call ptr %i.so() #25
  call void (ptr, ...) @dt_control_log(ptr noundef %i.sm, ptr noundef %i.sp) #25
  %.pre345 = load i32, ptr %2, align 4, !tbaa !91
  %.pre346 = load i32, ptr %i.rq, align 4, !tbaa !94
  br label %bb.be

bb.be:                                            ; preds = %bb.bc, %bb.bd, %bb.az
  %i.sq = phi i32 [ %i.sl, %bb.bc ], [ %.pre346, %bb.bd ], [ %i.rt, %bb.az ]
  %i.sr = phi i32 [ %i.sk, %bb.bc ], [ %.pre345, %bb.bd ], [ %6, %bb.az ]
  %i.ss = sitofp reassoc nsz arcp contract afn i32 %i.sr to float
  %i.st = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store float %i.ss, ptr %i.st, align 4, !tbaa !72
  %i.su = sitofp reassoc nsz arcp contract afn i32 %i.sq to float
  %i.sv = getelementptr inbounds nuw i8, ptr %i.b, i64 84
  store float %i.su, ptr %i.sv, align 4, !tbaa !74
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.minnum.f32(float, float) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.maxnum.f32(float, float) #9

declare void @dt_print_pipe_ext(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #6

declare void @dt_control_log(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @modify_roi_in(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) initializes((0, 20)) %3) local_unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !62  ; 23 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %3, ptr noundef nonnull align 4 dereferenceable(20) %2, i64 20, i1 false), !tbaa.struct !87
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.d = load float, ptr %i.c, align 4, !tbaa !85 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %i.f = load <2 x i32>, ptr %i.e, align 16, !tbaa !14
  %i.g = sitofp <2 x i32> %i.f to <2 x float>
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 180
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.j = load float, ptr %i.i, align 4, !tbaa !72
  %i.k = fmul reassoc nsz arcp contract afn float %i.j, %i.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 84
  %i.m = load float, ptr %i.l, align 4, !tbaa !74
  %i.n = fmul reassoc nsz arcp contract afn float %i.m, %i.d
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.p = load <4 x i32>, ptr %2, align 4, !tbaa !14
  %i.q = sitofp <4 x i32> %i.p to <4 x float>     ; 3 uses
  %i.r = load <2 x float>, ptr %i.h, align 4, !tbaa !13
  %i.s = insertelement <2 x float> poison, float %i.d, i64 0
  %i.t = shufflevector <2 x float> %i.s, <2 x float> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.u = fmul reassoc nsz arcp contract afn <2 x float> %i.r, %i.t
  %i.v = shufflevector <4 x float> %i.q, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.w = fsub reassoc nsz arcp contract afn <2 x float> %i.v, %i.u ; 2 uses
  %i.x = extractelement <2 x float> %i.w, i64 0
  %i.y = fadd reassoc nsz arcp contract afn float %i.k, %i.x ; 3 uses
  %i.z = extractelement <2 x float> %i.w, i64 1
  %i.aa = fadd reassoc nsz arcp contract afn float %i.n, %i.z ; 3 uses
  %i.ab = extractelement <4 x float> %i.q, i64 2
  %i.ac = fadd reassoc nsz arcp contract afn float %i.y, %i.ab ; 2 uses
  %i.ad = extractelement <4 x float> %i.q, i64 3
  %i.ae = fadd reassoc nsz arcp contract afn float %i.aa, %i.ad ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !71
  %.not116 = icmp eq i32 %i.ag, 0                 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 60 ; 2 uses
  %. = select i1 %.not116, ptr %i.ai, ptr %i.ah
  %.151 = select i1 %.not116, ptr %i.ah, ptr %i.ai
  %.pn150 = load float, ptr %.151, align 4, !tbaa !13
  %.pn149 = fmul reassoc nsz arcp contract afn float %.pn150, %i.d ; 2 uses
  %.pn148 = load float, ptr %., align 4, !tbaa !13
  %.pn = fmul reassoc nsz arcp contract afn float %.pn148, %i.d ; 2 uses
  %i.aj = fpext reassoc nsz arcp contract afn float %i.d to double
  %i.ak = fdiv reassoc nsz arcp contract afn double 1.000000e+00, %i.aj ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  %i.an = load float, ptr %i.am, align 4, !tbaa !69 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 52
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !70 ; 3 uses
  %i.aq = load float, ptr %i.al, align 4, !tbaa !13 ; 5 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.at = load float, ptr %i.as, align 4, !tbaa !13 ; 5 uses
  %i.au = fmul reassoc nsz arcp contract afn <2 x float> %i.t, %i.g ; 6 uses
  %i.av = load <2 x float>, ptr %i.ar, align 4, !tbaa !13 ; 8 uses
  %i.aw = load <2 x float>, ptr %i.ah, align 4, !tbaa !13 ; 8 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.b, i64 172
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !66
  %i.az = icmp eq i32 %i.ay, 1
  %i.ba = fdiv reassoc nsz arcp contract afn <2 x float> %i.t, %i.au ; 5 uses
  br i1 %i.az, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.a
  %i.bb = getelementptr i8, ptr %i.b, i64 104
  %i.bc = getelementptr inbounds nuw i8, ptr %i.b, i64 116
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 164
  %i.bf = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %i.bg = getelementptr inbounds nuw i8, ptr %i.b, i64 156
  %i.bh = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %i.bi = getelementptr inbounds nuw i8, ptr %i.b, i64 148
  %i.bj = getelementptr inbounds nuw i8, ptr %i.b, i64 100
  %i.bk = load float, ptr %i.be, align 4, !tbaa !92 ; 2 uses
  %i.bl = load float, ptr %i.bd, align 4, !tbaa !93 ; 2 uses
  %i.bm = insertelement <3 x float> poison, float %i.ac, i64 0
  %i.bn = insertelement <3 x float> %i.bm, float %i.y, i64 1
  %i.bo = shufflevector <3 x float> %i.bn, <3 x float> poison, <3 x i32> <i32 0, i32 1, i32 0>
  %i.bp = insertelement <3 x float> poison, float %.pn149, i64 0
  %i.bq = shufflevector <3 x float> %i.bp, <3 x float> poison, <3 x i32> zeroinitializer
  %i.br = fsub reassoc nsz arcp contract afn <3 x float> %i.bo, %i.bq
  %i.bs = insertelement <2 x float> poison, float %i.aa, i64 0
  %i.bt = insertelement <2 x float> %i.bs, float %i.ae, i64 1
  %i.bu = insertelement <2 x float> poison, float %.pn, i64 0
  %i.bv = load <4 x float>, ptr %i.bi, align 4, !tbaa !13 ; 7 uses
  %i.bw = load float, ptr %i.bf, align 4, !tbaa !286 ; 2 uses
  %i.bx = load float, ptr %i.bg, align 4, !tbaa !287 ; 2 uses
  %i.by = load float, ptr %i.bh, align 4, !tbaa !288 ; 2 uses
  %i.bz = load <2 x float>, ptr %i.bc, align 4, !tbaa !13 ; 8 uses
  %.val120.us = load float, ptr %i.bb, align 4, !tbaa !13 ; 2 uses
  %.val.us = load float, ptr %i.bj, align 4, !tbaa !13 ; 2 uses
  %i.ca = extractelement <4 x float> %i.bv, i64 0 ; 2 uses
  %i.cb = fmul reassoc nsz arcp contract afn float %i.bw, %i.ca
  %i.cc = fmul reassoc nsz arcp contract afn float %i.by, %i.bx
  %i.cd = fsub reassoc nsz arcp contract afn float %i.cb, %i.cc ; 2 uses
  %i.ce = fpext <3 x float> %i.br to <3 x double>
  %i.cf = insertelement <3 x double> poison, double %i.ak, i64 0
  %i.cg = shufflevector <3 x double> %i.cf, <3 x double> poison, <3 x i32> zeroinitializer ; 2 uses
  %i.ch = fmul reassoc nsz arcp contract afn <3 x double> %i.cg, %i.ce
  %i.ci = fptrunc <3 x double> %i.ch to <3 x float> ; 3 uses
  %i.cj = extractelement <3 x float> %i.ci, i64 1 ; 2 uses
  %i.ck = fmul reassoc nsz arcp contract afn float %i.an, %i.cj ; 2 uses
  %i.cl = extractelement <3 x float> %i.ci, i64 0
  %i.cm = fmul reassoc nsz arcp contract afn float %i.an, %i.cl
  %i.cn = fadd reassoc nsz arcp contract afn float %i.ck, 1.000000e+00
  %i.co = insertelement <3 x float> poison, float %i.cm, i64 0
  %i.cp = insertelement <3 x float> %i.co, float %i.ck, i64 1
  %i.cq = fadd reassoc nsz arcp contract afn <3 x float> %i.cp, <float 1.000000e+00, float 1.000000e+00, float poison>
  %i.cr = shufflevector <3 x float> %i.cq, <3 x float> poison, <3 x i32> <i32 0, i32 1, i32 0>
  %i.cs = shufflevector <2 x float> %i.bt, <2 x float> poison, <3 x i32> <i32 0, i32 1, i32 1>
  %i.ct = shufflevector <2 x float> %i.bu, <2 x float> poison, <3 x i32> zeroinitializer
  %i.cu = fsub reassoc nsz arcp contract afn <3 x float> %i.cs, %i.ct
  %i.cv = fpext <3 x float> %i.cu to <3 x double>
  %i.cw = fmul reassoc nsz arcp contract afn <3 x double> %i.cg, %i.cv
  %i.cx = fptrunc <3 x double> %i.cw to <3 x float> ; 2 uses
  %i.cy = extractelement <3 x float> %i.cx, i64 0
  %i.cz = fdiv reassoc nsz arcp contract afn float %i.cy, %i.cn ; 3 uses
  %i.da = fmul reassoc nsz arcp contract afn float %i.cz, %i.ap
  %i.db = fadd reassoc nsz arcp contract afn float %i.da, 1.000000e+00
  %i.dc = fdiv reassoc nsz arcp contract afn float %i.cj, %i.db ; 2 uses
  %i.dd = fmul reassoc nsz arcp contract afn float %i.dc, %i.aq
  %i.de = extractelement <2 x float> %i.av, i64 0
  %i.df = fmul reassoc nsz arcp contract afn float %i.cz, %i.de
  %i.dg = extractelement <2 x float> %i.av, i64 1
  %i.dh = fmul reassoc nsz arcp contract afn float %i.dc, %i.dg
  %i.di = fmul reassoc nsz arcp contract afn float %i.cz, %i.at
  %i.dj = extractelement <2 x float> %i.aw, i64 0
  %i.dk = fadd reassoc nsz arcp contract afn float %i.df, %i.dj
  %i.dl = fadd reassoc nsz arcp contract afn float %i.dk, %i.dd
  %i.dm = extractelement <2 x float> %i.ba, i64 0
  %.reass.us = fmul reassoc nsz arcp contract afn float %i.dl, %i.dm
  %i.dn = extractelement <2 x float> %i.aw, i64 1
  %i.do = fadd reassoc nsz arcp contract afn float %i.dn, %i.di
  %i.dp = fadd reassoc nsz arcp contract afn float %i.do, %i.dh
  %i.dq = extractelement <2 x float> %i.ba, i64 1
  %.reass158.us = fmul reassoc nsz arcp contract afn float %i.dp, %i.dq
  %i.dr = fsub reassoc nsz arcp contract afn float %.reass.us, %.val.us ; 2 uses
  %i.ds = fsub reassoc nsz arcp contract afn float %.reass158.us, %.val120.us ; 2 uses
  %i.dt = fmul reassoc nsz arcp contract afn float %i.dr, %i.bx
  %i.du = fmul reassoc nsz arcp contract afn float %i.ds, %i.ca
  %i.dv = fsub reassoc nsz arcp contract afn float %i.dt, %i.du ; 2 uses
  %i.dw = fmul reassoc nsz arcp contract afn float %i.dv, %i.bl
  %i.dx = fmul reassoc nsz arcp contract afn float %i.ds, %i.by ; 2 uses
  %i.dy = fmul reassoc nsz arcp contract afn float %i.dr, %i.bw ; 2 uses
  %i.dz = fsub reassoc nsz arcp contract afn float %i.dx, %i.dy
  %i.ea = fmul reassoc nsz arcp contract afn float %i.dz, %i.bk
  %i.eb = fadd reassoc nsz arcp contract afn float %i.cd, %i.ea
  %i.ec = fadd reassoc nsz arcp contract afn float %i.eb, %i.dw ; 2 uses
  %i.ed = fsub reassoc nsz arcp contract afn float %i.dy, %i.dx
  %i.ee = fdiv reassoc nsz arcp contract afn float %i.ed, %i.ec
  %i.ef = fdiv reassoc nsz arcp contract afn float %i.dv, %i.ec
  %i.eg = insertelement <2 x float> poison, float %i.ee, i64 0
  %i.eh = insertelement <2 x float> %i.eg, float %i.ef, i64 1 ; 2 uses
  %i.ei = fadd reassoc nsz arcp contract afn <2 x float> %i.bz, %i.eh
  %i.ej = fsub reassoc nsz arcp contract afn <2 x float> %i.bz, %i.eh
  %i.ek = shufflevector <2 x float> %i.ei, <2 x float> %i.ej, <2 x i32> <i32 0, i32 3>
  %i.el = fmul reassoc nsz arcp contract afn <2 x float> %i.ek, %i.au ; 2 uses
  %i.em = tail call reassoc nsz arcp contract afn <2 x float> @llvm.minnum.v2f32(<2 x float> %i.el, <2 x float> splat (float f0x7F7FFFFF))
  %i.en = tail call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.el, <2 x float> splat (float f0xFF7FFFFF))
  %i.eo = fdiv reassoc nsz arcp contract afn <3 x float> %i.cx, %i.cr ; 3 uses
  %i.ep = insertelement <3 x float> poison, float %i.ap, i64 0
  %i.eq = shufflevector <3 x float> %i.ep, <3 x float> poison, <3 x i32> zeroinitializer
  %i.er = fmul reassoc nsz arcp contract afn <3 x float> %i.eo, %i.eq
  %i.es = fadd reassoc nsz arcp contract afn <3 x float> %i.er, splat (float 1.000000e+00)
  %i.et = fdiv reassoc nsz arcp contract afn <3 x float> %i.ci, %i.es ; 2 uses
  %i.eu = insertelement <3 x float> poison, float %i.aq, i64 0
  %i.ev = shufflevector <3 x float> %i.eu, <3 x float> poison, <3 x i32> zeroinitializer
  %i.ew = fmul reassoc nsz arcp contract afn <3 x float> %i.et, %i.ev
  %i.ex = shufflevector <2 x float> %i.av, <2 x float> poison, <3 x i32> zeroinitializer
  %i.ey = fmul reassoc nsz arcp contract afn <3 x float> %i.eo, %i.ex
  %i.ez = shufflevector <2 x float> %i.av, <2 x float> poison, <3 x i32> <i32 1, i32 1, i32 1>
  %i.fa = fmul reassoc nsz arcp contract afn <3 x float> %i.et, %i.ez
  %i.fb = insertelement <3 x float> poison, float %i.at, i64 0
  %i.fc = shufflevector <3 x float> %i.fb, <3 x float> poison, <3 x i32> zeroinitializer
  %i.fd = fmul reassoc nsz arcp contract afn <3 x float> %i.eo, %i.fc
  %i.fe = shufflevector <2 x float> %i.aw, <2 x float> poison, <3 x i32> zeroinitializer
  %i.ff = fadd reassoc nsz arcp contract afn <3 x float> %i.ey, %i.fe
  %i.fg = fadd reassoc nsz arcp contract afn <3 x float> %i.ff, %i.ew
  %i.fh = shufflevector <2 x float> %i.aw, <2 x float> poison, <3 x i32> <i32 1, i32 1, i32 1>
  %i.fi = fadd reassoc nsz arcp contract afn <3 x float> %i.fh, %i.fd
  %i.fj = shufflevector <2 x float> %i.ba, <2 x float> poison, <3 x i32> zeroinitializer
  %i.fk = fmul reassoc nsz arcp contract afn <3 x float> %i.fg, %i.fj
  %i.fl = fadd reassoc nsz arcp contract afn <3 x float> %i.fi, %i.fa
  %i.fm = shufflevector <2 x float> %i.ba, <2 x float> poison, <3 x i32> <i32 1, i32 1, i32 1>
  %i.fn = fmul reassoc nsz arcp contract afn <3 x float> %i.fl, %i.fm
  %i.fo = insertelement <3 x float> poison, float %.val.us, i64 0
  %i.fp = shufflevector <3 x float> %i.fo, <3 x float> poison, <3 x i32> zeroinitializer
  %i.fq = fsub reassoc nsz arcp contract afn <3 x float> %i.fk, %i.fp ; 3 uses
  %i.fr = insertelement <3 x float> poison, float %.val120.us, i64 0
  %i.fs = shufflevector <3 x float> %i.fr, <3 x float> poison, <3 x i32> zeroinitializer
  %i.ft = fsub reassoc nsz arcp contract afn <3 x float> %i.fn, %i.fs ; 3 uses
  %i.fu = shufflevector <4 x float> %i.bv, <4 x float> poison, <3 x i32> <i32 1, i32 1, i32 1>
  %i.fv = fmul reassoc nsz arcp contract afn <3 x float> %i.ft, %i.fu ; 3 uses
  %i.fw = shufflevector <4 x float> %i.bv, <4 x float> poison, <3 x i32> <i32 3, i32 3, i32 3>
  %i.fx = fmul reassoc nsz arcp contract afn <3 x float> %i.fq, %i.fw ; 3 uses
  %foldExtExtBinop = fsub reassoc nsz arcp contract afn <3 x float> %i.fx, %i.fv
  %i.fy = shufflevector <4 x float> %i.bv, <4 x float> poison, <3 x i32> <i32 2, i32 2, i32 2>
  %i.fz = fmul reassoc nsz arcp contract afn <3 x float> %i.fq, %i.fy ; 2 uses
  %i.ga = shufflevector <4 x float> %i.bv, <4 x float> poison, <3 x i32> zeroinitializer
  %i.gb = fmul reassoc nsz arcp contract afn <3 x float> %i.ft, %i.ga ; 2 uses
  %i.gc = shufflevector <3 x float> %i.fx, <3 x float> %i.fz, <2 x i32> <i32 1, i32 4>
  %i.gd = shufflevector <3 x float> %i.fv, <3 x float> %i.gb, <2 x i32> <i32 1, i32 4>
  %i.ge = fsub reassoc nsz arcp contract afn <2 x float> %i.gc, %i.gd
  %i.gf = shufflevector <3 x float> %i.ft, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.gg = shufflevector <4 x float> %i.bv, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.gh = fmul reassoc nsz arcp contract afn <2 x float> %i.gf, %i.gg
  %i.gi = shufflevector <3 x float> %i.fq, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.gj = shufflevector <4 x float> %i.bv, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.gk = fmul reassoc nsz arcp contract afn <2 x float> %i.gi, %i.gj
  %i.gl = fsub reassoc nsz arcp contract afn <3 x float> %i.fz, %i.gb ; 2 uses
  %i.gm = fsub reassoc nsz arcp contract afn <2 x float> %i.gk, %i.gh
  %i.gn = insertelement <3 x float> poison, float %i.bl, i64 0
  %i.go = shufflevector <3 x float> %i.gn, <3 x float> poison, <3 x i32> zeroinitializer
  %i.gp = fmul reassoc nsz arcp contract afn <3 x float> %i.gl, %i.go
  %i.gq = fsub reassoc nsz arcp contract afn <3 x float> %i.fv, %i.fx
  %i.gr = insertelement <3 x float> poison, float %i.bk, i64 0
  %i.gs = shufflevector <3 x float> %i.gr, <3 x float> poison, <3 x i32> zeroinitializer
  %i.gt = fmul reassoc nsz arcp contract afn <3 x float> %i.gq, %i.gs
  %i.gu = insertelement <3 x float> poison, float %i.cd, i64 0
  %i.gv = shufflevector <3 x float> %i.gu, <3 x float> poison, <3 x i32> zeroinitializer
  %i.gw = fadd reassoc nsz arcp contract afn <3 x float> %i.gv, %i.gt
  %i.gx = fadd reassoc nsz arcp contract afn <3 x float> %i.gw, %i.gp ; 3 uses
  %i.gy = shufflevector <3 x float> %foldExtExtBinop, <3 x float> %i.gl, <2 x i32> <i32 0, i32 3>
  %i.gz = shufflevector <3 x float> %i.gx, <3 x float> poison, <2 x i32> zeroinitializer
  %i.ha = fdiv reassoc nsz arcp contract afn <2 x float> %i.gy, %i.gz ; 2 uses
  %i.hb = fadd reassoc nsz arcp contract afn <2 x float> %i.bz, %i.ha
  %i.hc = fsub reassoc nsz arcp contract afn <2 x float> %i.bz, %i.ha
  %i.hd = shufflevector <2 x float> %i.hb, <2 x float> %i.hc, <2 x i32> <i32 0, i32 3>
  %i.he = fmul reassoc nsz arcp contract afn <2 x float> %i.hd, %i.au ; 2 uses
  %i.hf = tail call reassoc nsz arcp contract afn <2 x float> @llvm.minnum.v2f32(<2 x float> %i.em, <2 x float> %i.he)
  %i.hg = tail call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.en, <2 x float> %i.he)
  %i.hh = shufflevector <3 x float> %i.gx, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.hi = fdiv reassoc nsz arcp contract afn <2 x float> %i.ge, %i.hh ; 2 uses
  %i.hj = fadd reassoc nsz arcp contract afn <2 x float> %i.bz, %i.hi
  %i.hk = fsub reassoc nsz arcp contract afn <2 x float> %i.bz, %i.hi
  %i.hl = shufflevector <2 x float> %i.hj, <2 x float> %i.hk, <2 x i32> <i32 0, i32 3>
  %i.hm = fmul reassoc nsz arcp contract afn <2 x float> %i.hl, %i.au ; 2 uses
  %i.hn = tail call reassoc nsz arcp contract afn <2 x float> @llvm.minnum.v2f32(<2 x float> %i.hf, <2 x float> %i.hm)
  %i.ho = tail call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.hg, <2 x float> %i.hm)
  %i.hp = shufflevector <2 x float> %i.gm, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.hq = shufflevector <3 x float> %i.gx, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.hr = fdiv reassoc nsz arcp contract afn <2 x float> %i.hp, %i.hq ; 2 uses
  %i.hs = fadd reassoc nsz arcp contract afn <2 x float> %i.bz, %i.hr
  %i.ht = fsub reassoc nsz arcp contract afn <2 x float> %i.bz, %i.hr
  %i.hu = shufflevector <2 x float> %i.hs, <2 x float> %i.ht, <2 x i32> <i32 0, i32 3>
  %i.hv = fmul reassoc nsz arcp contract afn <2 x float> %i.hu, %i.au ; 2 uses
  %i.hw = tail call reassoc nsz arcp contract afn <2 x float> @llvm.minnum.v2f32(<2 x float> %i.hn, <2 x float> %i.hv)
  %i.hx = tail call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.ho, <2 x float> %i.hv)
  br label %.split160.us

.split:                                           ; preds = %bb.a
  %i.hy = fmul reassoc nsz arcp contract afn <2 x float> %i.ba, %i.au ; 4 uses
  %i.hz = insertelement <2 x float> poison, float %i.y, i64 0
  %i.ia = insertelement <2 x float> %i.hz, float %i.ac, i64 1
  %i.ib = insertelement <2 x float> poison, float %.pn149, i64 0
  %i.ic = shufflevector <2 x float> %i.ib, <2 x float> poison, <2 x i32> zeroinitializer
  %i.id = fsub reassoc nsz arcp contract afn <2 x float> %i.ia, %i.ic
  %i.ie = insertelement <2 x float> poison, float %i.aa, i64 0
  %i.if = insertelement <2 x float> %i.ie, float %i.ae, i64 1
  %i.ig = insertelement <2 x float> poison, float %.pn, i64 0
  %i.ih = shufflevector <2 x float> %i.ig, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ii = fsub reassoc nsz arcp contract afn <2 x float> %i.if, %i.ih
  %i.ij = insertelement <2 x float> poison, float %i.at, i64 0
  %i.ik = insertelement <2 x float> %i.ij, float %i.aq, i64 1
  %i.il = insertelement <2 x float> poison, float %i.aq, i64 0
  %i.im = insertelement <2 x float> %i.il, float %i.at, i64 1 ; 2 uses
  %i.in = fpext <2 x float> %i.id to <2 x double>
  %i.io = insertelement <2 x double> poison, double %i.ak, i64 0
  %i.ip = shufflevector <2 x double> %i.io, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.iq = fmul reassoc nsz arcp contract afn <2 x double> %i.ip, %i.in
  %i.ir = fptrunc <2 x double> %i.iq to <2 x float> ; 4 uses
  %i.is = insertelement <2 x float> poison, float %i.an, i64 0
  %i.it = shufflevector <2 x float> %i.is, <2 x float> poison, <4 x i32> zeroinitializer
  %i.iu = shufflevector <2 x float> %i.ir, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.iv = fmul reassoc nsz arcp contract afn <4 x float> %i.it, %i.iu
  %i.iw = fadd reassoc nsz arcp contract afn <4 x float> %i.iv, splat (float 1.000000e+00)
  %i.ix = fpext <2 x float> %i.ii to <2 x double>
  %i.iy = fmul reassoc nsz arcp contract afn <2 x double> %i.ip, %i.ix
  %i.iz = shufflevector <2 x double> %i.iy, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ja = fptrunc <4 x double> %i.iz to <4 x float>
  %i.jb = fdiv reassoc nsz arcp contract afn <4 x float> %i.ja, %i.iw ; 6 uses
  %i.jc = insertelement <4 x float> poison, float %i.ap, i64 0
  %i.jd = shufflevector <4 x float> %i.jc, <4 x float> poison, <4 x i32> zeroinitializer
  %i.je = fmul reassoc nsz arcp contract afn <4 x float> %i.jb, %i.jd
  %i.jf = fadd reassoc nsz arcp contract afn <4 x float> %i.je, splat (float 1.000000e+00) ; 3 uses
  %i.jg = extractelement <4 x float> %i.jf, i64 0
  %i.jh = extractelement <2 x float> %i.ir, i64 0
  %i.ji = fdiv reassoc nsz arcp contract afn float %i.jh, %i.jg ; 2 uses
  %i.jj = fmul reassoc nsz arcp contract afn float %i.ji, %i.aq
  %i.jk = shufflevector <4 x float> %i.jb, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.jl = insertelement <2 x float> %i.jk, float %i.ji, i64 1
  %i.jm = fmul reassoc nsz arcp contract afn <2 x float> %i.jl, %i.av
  %i.jn = extractelement <4 x float> %i.jb, i64 0
  %i.jo = fmul reassoc nsz arcp contract afn float %i.jn, %i.at
  %i.jp = extractelement <4 x float> %i.jf, i64 2
  %i.jq = extractelement <2 x float> %i.ir, i64 1
  %i.jr = fdiv reassoc nsz arcp contract afn float %i.jq, %i.jp
  %i.js = insertelement <2 x float> poison, float %i.jj, i64 0
  %i.jt = insertelement <2 x float> %i.js, float %i.jo, i64 1
  %i.ju = fadd reassoc nsz arcp contract afn <2 x float> %i.jt, %i.aw
  %i.jv = fadd reassoc nsz arcp contract afn <2 x float> %i.ju, %i.jm
  %i.jw = fmul reassoc nsz arcp contract afn <2 x float> %i.jv, %i.hy ; 2 uses
  %i.jx = tail call reassoc nsz arcp contract afn <2 x float> @llvm.minnum.v2f32(<2 x float> %i.jw, <2 x float> splat (float f0x7F7FFFFF))
  %i.jy = tail call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.jw, <2 x float> splat (float f0xFF7FFFFF))
  %i.jz = shufflevector <4 x float> %i.jb, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.ka = insertelement <2 x float> %i.jz, float %i.jr, i64 1 ; 2 uses
  %i.kb = fmul reassoc nsz arcp contract afn <2 x float> %i.ka, %i.av
  %i.kc = fmul reassoc nsz arcp contract afn <2 x float> %i.ka, %i.ik
  %i.kd = shufflevector <2 x float> %i.kc, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ke = fadd reassoc nsz arcp contract afn <2 x float> %i.kd, %i.aw
  %i.kf = fadd reassoc nsz arcp contract afn <2 x float> %i.ke, %i.kb
  %i.kg = fmul reassoc nsz arcp contract afn <2 x float> %i.kf, %i.hy ; 2 uses
  %i.kh = tail call reassoc nsz arcp contract afn <2 x float> @llvm.minnum.v2f32(<2 x float> %i.jx, <2 x float> %i.kg)
  %i.ki = tail call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.jy, <2 x float> %i.kg)
  %i.kj = shufflevector <4 x float> %i.jb, <4 x float> poison, <2 x i32> <i32 1, i32 poison> ; 2 uses
  %i.kk = shufflevector <4 x float> %i.jf, <4 x float> poison, <2 x i32> <i32 1, i32 3>
  %i.kl = fdiv reassoc nsz arcp contract afn <2 x float> %i.ir, %i.kk ; 4 uses
  %i.km = shufflevector <2 x float> %i.kj, <2 x float> %i.kl, <2 x i32> <i32 0, i32 2>
  %i.kn = fmul reassoc nsz arcp contract afn <2 x float> %i.km, %i.av
  %i.ko = shufflevector <2 x float> %i.kl, <2 x float> %i.kj, <2 x i32> <i32 0, i32 2>
  %i.kp = fmul reassoc nsz arcp contract afn <2 x float> %i.ko, %i.im
  %i.kq = fadd reassoc nsz arcp contract afn <2 x float> %i.kp, %i.aw
  %i.kr = fadd reassoc nsz arcp contract afn <2 x float> %i.kq, %i.kn
  %i.ks = fmul reassoc nsz arcp contract afn <2 x float> %i.kr, %i.hy ; 2 uses
  %i.kt = tail call reassoc nsz arcp contract afn <2 x float> @llvm.minnum.v2f32(<2 x float> %i.kh, <2 x float> %i.ks)
  %i.ku = tail call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.ki, <2 x float> %i.ks)
  %i.kv = shufflevector <4 x float> %i.jb, <4 x float> poison, <2 x i32> <i32 3, i32 poison> ; 2 uses
  %i.kw = shufflevector <2 x float> %i.kv, <2 x float> %i.kl, <2 x i32> <i32 0, i32 3>
  %i.kx = fmul reassoc nsz arcp contract afn <2 x float> %i.kw, %i.av
  %i.ky = shufflevector <2 x float> %i.kl, <2 x float> %i.kv, <2 x i32> <i32 1, i32 2>
  %i.kz = fmul reassoc nsz arcp contract afn <2 x float> %i.ky, %i.im
  %i.la = fadd reassoc nsz arcp contract afn <2 x float> %i.kz, %i.aw
  %i.lb = fadd reassoc nsz arcp contract afn <2 x float> %i.la, %i.kx
  %i.lc = fmul reassoc nsz arcp contract afn <2 x float> %i.lb, %i.hy ; 2 uses
  %i.ld = tail call reassoc nsz arcp contract afn <2 x float> @llvm.minnum.v2f32(<2 x float> %i.kt, <2 x float> %i.lc)
  %i.le = tail call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.ku, <2 x float> %i.lc)
  br label %.split160.us

.split160.us:                                     ; preds = %.split, %.split.us
  %i.lf = phi <2 x float> [ %i.hx, %.split.us ], [ %i.le, %.split ]
  %i.lg = phi <2 x float> [ %i.hw, %.split.us ], [ %i.ld, %.split ] ; 3 uses
  %i.lh = fadd reassoc nsz arcp contract afn <2 x float> %i.lg, splat (float -1.000000e+00) ; 2 uses
  %i.li = fadd reassoc nsz arcp contract afn <2 x float> %i.lf, splat (float 2.000000e+00)
  %i.lj = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.lk = fsub reassoc nsz arcp contract afn <2 x float> %i.li, %i.lg
  %i.ll = fptosi <2 x float> %i.lk to <2 x i32>   ; 3 uses
  store <2 x i32> %i.ll, ptr %i.lj, align 4, !tbaa !14
  %i.lm = load float, ptr %i.b, align 4, !tbaa !83
  %i.ln = fcmp reassoc nsz arcp contract afn oeq float %i.lm, 0.000000e+00
  br i1 %i.ln, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.split160.us
  %i.lo = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.lp = load i32, ptr %i.lo, align 4, !tbaa !84
  %.not = icmp eq i32 %i.lp, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.lq = load <2 x i32>, ptr %i.o, align 4, !tbaa !14 ; 2 uses
  store <2 x i32> %i.lq, ptr %i.lj, align 4, !tbaa !14
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %.split160.us
  %i.lr = phi <2 x i32> [ %i.lq, %bb.c ], [ %i.ll, %bb.b ], [ %i.ll, %.split160.us ] ; 2 uses
  %i.ls = phi <2 x float> [ %i.lg, %bb.c ], [ %i.lh, %bb.b ], [ %i.lh, %.split160.us ]
  %i.lt = fptosi <2 x float> %i.ls to <2 x i32>   ; 2 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.lv = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.lr, <2 x i32> splat (i32 1))
  %i.lw = load <2 x i32>, ptr %i.e, align 16, !tbaa !14
  %i.lx = sitofp <2 x i32> %i.lw to <2 x float>
  %i.ly = fmul reassoc nsz arcp contract afn <2 x float> %i.t, %i.lx ; 2 uses
  %i.lz = tail call reassoc nsz arcp contract afn <2 x float> @llvm.floor.v2f32(<2 x float> %i.ly)
  %i.ma = fptosi <2 x float> %i.lz to <2 x i32>   ; 2 uses
  %i.mb = icmp sgt <2 x i32> %i.lt, %i.ma
  %i.mc = tail call <2 x i32> @llvm.smax.v2i32(<2 x i32> %i.lt, <2 x i32> zeroinitializer)
  %i.md = select <2 x i1> %i.mb, <2 x i32> %i.ma, <2 x i32> %i.mc ; 3 uses
  %i.me = extractelement <2 x i32> %i.md, i64 0
  store i32 %i.me, ptr %3, align 4, !tbaa !91
  %i.mf = extractelement <2 x i32> %i.md, i64 1
  store i32 %i.mf, ptr %i.lu, align 4, !tbaa !94
  %i.mg = tail call reassoc nsz arcp contract afn <2 x float> @llvm.ceil.v2f32(<2 x float> %i.ly)
  %i.mh = fptosi <2 x float> %i.mg to <2 x i32>
  %i.mi = sub nsw <2 x i32> %i.mh, %i.md          ; 2 uses
  %i.mj = icmp sgt <2 x i32> %i.lr, %i.mi
  %i.mk = select <2 x i1> %i.mj, <2 x i32> %i.mi, <2 x i32> %i.lv
  store <2 x i32> %i.mk, ptr %i.lj, align 4, !tbaa !14
  ret void
}

; Function Attrs: nounwind uwtable
define void @process(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca [4 x float], align 16             ; 4 uses
  %i.b = alloca float, align 4                    ; 4 uses
  %i.c = alloca float, align 4                    ; 4 uses
  %i.d = alloca float, align 4                    ; 4 uses
  %i.e = alloca float, align 4                    ; 4 uses
  %i.f = alloca float, align 4                    ; 4 uses
  %i.g = alloca float, align 4                    ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 132
  %i.i = load i32, ptr %i.h, align 4, !tbaa !290
  %i.j = tail call i32 @dt_iop_have_required_input_format(i32 noundef 4, ptr noundef %0, i32 noundef %i.i, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #25
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = load ptr, ptr %i.k, align 16, !tbaa !62  ; 19 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !78   ; 3 uses
  %i.o = shl nsw i32 %i.n, 2
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 92
  %i.q = load i32, ptr %i.p, align 4, !tbaa !82
  %.not111 = icmp eq i32 %i.q, 0
  br i1 %.not111, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.r = load float, ptr %i.l, align 4, !tbaa !83
  %i.s = fcmp reassoc nsz arcp contract afn oeq float %i.r, 0.000000e+00
  br i1 %i.s, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 88
  %i.u = load i32, ptr %i.t, align 4, !tbaa !84
  %.not112 = icmp eq i32 %i.u, 0
  br i1 %.not112, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.w = load i32, ptr %i.v, align 4, !tbaa !78
  %i.x = icmp eq i32 %i.n, %i.w
  br i1 %i.x, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.z = load i32, ptr %i.y, align 4, !tbaa !79   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !79
  %i.ac = icmp eq i32 %i.z, %i.ab
  br i1 %i.ac, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ad = sext i32 %i.n to i64
  %i.ae = sext i32 %i.z to i64
  %i.af = shl nsw i64 %i.ad, 2
  %i.ag = mul i64 %i.af, %i.ae
  tail call void @dt_iop_image_copy(ptr noundef %3, ptr noundef %2, i64 noundef %i.ag) #25
  br label %bb.n

bb.h:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %i.ah = tail call ptr @dt_interpolation_new(i32 noundef 3) #25
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !85
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.al = getelementptr inbounds nuw i8, ptr %i.l, i64 100
  %i.am = load <2 x i32>, ptr %i.ai, align 16, !tbaa !14
  %i.an = sitofp <2 x i32> %i.am to <2 x float>
  %i.ao = insertelement <2 x float> poison, float %i.ak, i64 0
  %i.ap = shufflevector <2 x float> %i.ao, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aq = fmul reassoc nsz arcp contract afn <2 x float> %i.ap, %i.an ; 4 uses
  %i.ar = shufflevector <2 x float> %i.aq, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.as = load <4 x float>, ptr %i.al, align 4, !tbaa !13
  %i.at = fmul reassoc nsz arcp contract afn <4 x float> %i.as, %i.ar ; 2 uses
  store <4 x float> %i.at, ptr %i.a, align 16, !tbaa !13
  %i.au = getelementptr inbounds nuw i8, ptr %i.l, i64 116
  %i.av = getelementptr inbounds nuw i8, ptr %i.l, i64 124
  %i.aw = load float, ptr %i.av, align 4, !tbaa !64
  %i.ax = getelementptr inbounds nuw i8, ptr %i.l, i64 132
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !65
  %i.az = load <2 x float>, ptr %i.au, align 4, !tbaa !13
  %i.ba = fmul reassoc nsz arcp contract afn <2 x float> %i.az, %i.aq ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.l, i64 128
  %i.bc = tail call <5 x float> @llvm.masked.load.v5f32.p0(ptr nonnull align 4 %i.bb, <5 x i1> <i1 true, i1 false, i1 true, i1 true, i1 true>, <5 x float> poison), !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #25
  %i.bd = getelementptr inbounds nuw i8, ptr %i.l, i64 172 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !66
  %i.bf = icmp eq i32 %i.be, 1
  br i1 %i.bf, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bg = shufflevector <5 x float> %i.bc, <5 x float> poison, <4 x i32> <i32 0, i32 2, i32 3, i32 4>
  %i.bh = extractelement <2 x float> %i.aq, i64 0 ; 2 uses
  %i.bi = shufflevector <2 x float> %i.aq, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 0, i32 1>
  %i.bj = fmul reassoc nsz arcp contract afn <4 x float> %i.bg, %i.bi ; 4 uses
  %i.bk = fmul reassoc nsz arcp contract afn float %i.ay, %i.bh
  %i.bl = fmul reassoc nsz arcp contract afn float %i.aw, %i.bh
  %i.bm = extractelement <4 x float> %i.bj, i64 0
  %i.bn = extractelement <4 x float> %i.bj, i64 1
  %i.bo = extractelement <4 x float> %i.bj, i64 2
  %i.bp = extractelement <4 x float> %i.bj, i64 3
  call fastcc void @keystone_get_matrix(ptr noundef nonnull %i.a, float noundef %i.bl, float noundef %i.bk, float noundef %i.bo, float noundef %i.bm, float noundef %i.bn, float noundef %i.bp, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.bq = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 2 uses
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !79 ; 2 uses
  %i.bs = icmp sgt i32 %i.br, 0
  br i1 %i.bs, label %.lr.ph151, label %._crit_edge152

.lr.ph151:                                        ; preds = %bb.j
  %i.bt = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bv = getelementptr inbounds nuw i8, ptr %i.l, i64 180
  %i.bw = getelementptr inbounds nuw i8, ptr %i.l, i64 80
  %i.bx = getelementptr inbounds nuw i8, ptr %i.l, i64 184
  %i.by = getelementptr inbounds nuw i8, ptr %i.l, i64 84
  %i.bz = getelementptr inbounds nuw i8, ptr %i.l, i64 96
  %i.ca = getelementptr inbounds nuw i8, ptr %i.l, i64 56 ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.l, i64 60 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.l, i64 44
  %i.ce = getelementptr inbounds nuw i8, ptr %i.l, i64 52
  %i.cf = load float, ptr %i.b, align 4           ; 2 uses
  %i.cg = load float, ptr %i.c, align 4           ; 2 uses
  %i.ch = load float, ptr %i.d, align 4           ; 2 uses
  %i.ci = load float, ptr %i.e, align 4           ; 2 uses
  %i.cj = load float, ptr %i.f, align 4
  %i.ck = load float, ptr %i.g, align 4
  %i.cl = fmul reassoc nsz arcp contract afn float %i.ci, %i.cf
  %i.cm = fmul reassoc nsz arcp contract afn float %i.cg, %i.ch
  %i.cn = fsub reassoc nsz arcp contract afn float %i.cl, %i.cm
  %i.co = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.cp = load i32, ptr %i.bt, align 4, !tbaa !78 ; 2 uses
  %i.cq = icmp sgt i32 %i.cp, 0
  br i1 %i.cq, label %.lr.ph151.split.preheader, label %._crit_edge152

.lr.ph151.split.preheader:                        ; preds = %.lr.ph151
  %i.cr = shufflevector <4 x float> %i.at, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.cs = insertelement <2 x float> poison, float %i.ci, i64 0
  %i.ct = insertelement <2 x float> %i.cs, float %i.ch, i64 1
  %i.cu = insertelement <2 x float> poison, float %i.cg, i64 0
  %i.cv = insertelement <2 x float> %i.cu, float %i.cf, i64 1
  br label %.lr.ph151.split

._crit_edge152:                                   ; preds = %._crit_edge, %.lr.ph151, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %bb.n

.lr.ph151.split:                                  ; preds = %.lr.ph151.split.preheader, %._crit_edge
  %i.cw = phi i32 [ %i.dg, %._crit_edge ], [ %i.br, %.lr.ph151.split.preheader ]
  %i.cx = phi i32 [ %i.dh, %._crit_edge ], [ %i.cp, %.lr.ph151.split.preheader ] ; 3 uses
  %indvars.iv155 = phi i64 [ %indvars.iv.next156, %._crit_edge ], [ 0, %.lr.ph151.split.preheader ] ; 3 uses
  %i.cy = shl nuw nsw i64 %indvars.iv155, 2
  %i.cz = sext i32 %i.cx to i64
  %i.da = mul i64 %i.cy, %i.cz
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.da
  %i.dc = icmp sgt i32 %i.cx, 0
  br i1 %i.dc, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph151.split
  %i.dd = trunc nuw nsw i64 %indvars.iv155 to i32
  %i.de = uitofp nneg i32 %i.dd to float
  %i.df = fadd reassoc nsz arcp contract afn float %i.de, 5.000000e-01
  br label %bb.k

._crit_edge.loopexit:                             ; preds = %bb.m
  %.pre = load i32, ptr %i.bq, align 4, !tbaa !79
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.lr.ph151.split
  %i.dg = phi i32 [ %.pre, %._crit_edge.loopexit ], [ %i.cw, %.lr.ph151.split ] ; 2 uses
  %i.dh = phi i32 [ %i.gd, %._crit_edge.loopexit ], [ %i.cx, %.lr.ph151.split ]
  %indvars.iv.next156 = add nuw nsw i64 %indvars.iv155, 1 ; 2 uses
  %i.di = sext i32 %i.dg to i64
  %i.dj = icmp slt i64 %indvars.iv.next156, %i.di
  br i1 %i.dj, label %.lr.ph151.split, label %._crit_edge152, !llvm.loop !289

bb.k:                                             ; preds = %.lr.ph, %bb.m
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.m ] ; 3 uses
  %i.dk = load float, ptr %i.bu, align 4, !tbaa !85 ; 4 uses
  %i.dl = load float, ptr %i.bv, align 4, !tbaa !73
  %i.dm = load float, ptr %i.bw, align 4, !tbaa !72
  %i.dn = trunc nuw nsw i64 %indvars.iv to i32
  %i.do = uitofp nneg i32 %i.dn to float
  %i.dp = load <2 x i32>, ptr %5, align 4, !tbaa !14
  %i.dq = sitofp <2 x i32> %i.dp to <2 x float>   ; 2 uses
  %i.dr = load float, ptr %i.bx, align 4, !tbaa !75
  %i.ds = load float, ptr %i.by, align 4, !tbaa !74
  %i.dt = load i32, ptr %i.bz, align 4, !tbaa !71
  %.not113 = icmp eq i32 %i.dt, 0                 ; 2 uses
  %. = select i1 %.not113, ptr %i.cb, ptr %i.ca
  %.134 = select i1 %.not113, ptr %i.ca, ptr %i.cb
  %.pn133 = load float, ptr %.134, align 4, !tbaa !13
  %reass.add140 = fadd reassoc nsz arcp contract afn float %.pn133, %i.dl
  %reass.add136 = fsub reassoc nsz arcp contract afn float %i.dm, %reass.add140
  %reass.mul = fmul reassoc nsz arcp contract afn float %reass.add136, %i.dk
  %i.du = fadd reassoc nsz arcp contract afn float %i.do, 5.000000e-01
  %i.dv = extractelement <2 x float> %i.dq, i64 0
  %i.dw = fadd reassoc nsz arcp contract afn float %i.du, %i.dv
  %.sroa.0122.0 = fadd reassoc nsz arcp contract afn float %i.dw, %reass.mul
  %.pn131 = load float, ptr %., align 4, !tbaa !13
  %reass.add142 = fadd reassoc nsz arcp contract afn float %.pn131, %i.dr
  %reass.add138 = fsub reassoc nsz arcp contract afn float %i.ds, %reass.add142
  %reass.mul139 = fmul reassoc nsz arcp contract afn float %reass.add138, %i.dk
  %i.dx = extractelement <2 x float> %i.dq, i64 1
  %i.dy = fadd reassoc nsz arcp contract afn float %i.df, %i.dx
  %.sroa.12127.0 = fadd reassoc nsz arcp contract afn float %i.dy, %reass.mul139
  %i.dz = fdiv reassoc nsz arcp contract afn float %.sroa.0122.0, %i.dk ; 2 uses
  %i.ea = load float, ptr %i.cd, align 4, !tbaa !69
  %i.eb = load float, ptr %i.ce, align 4, !tbaa !70
  %i.ec = fmul reassoc nsz arcp contract afn float %i.dz, %i.ea
  %i.ed = fadd reassoc nsz arcp contract afn float %i.ec, 1.000000e+00
  %i.ee = fmul reassoc nsz arcp contract afn float %i.ed, %i.dk
  %i.ef = load float, ptr %i.aj, align 4, !tbaa !85
  %i.eg = fdiv reassoc nsz arcp contract afn float %.sroa.12127.0, %i.ee ; 2 uses
  %i.eh = fmul reassoc nsz arcp contract afn float %i.eg, %i.eb
  %i.ei = fadd reassoc nsz arcp contract afn float %i.eh, 1.000000e+00
  %i.ej = fdiv reassoc nsz arcp contract afn float %i.dz, %i.ei
  %i.ek = load <4 x float>, ptr %i.cc, align 4, !tbaa !13 ; 2 uses
  %i.el = insertelement <2 x float> poison, float %i.ej, i64 0
  %i.em = shufflevector <2 x float> %i.el, <2 x float> poison, <2 x i32> zeroinitializer
  %i.en = shufflevector <4 x float> %i.ek, <4 x float> poison, <2 x i32> <i32 0, i32 2>
  %i.eo = fmul reassoc nsz arcp contract afn <2 x float> %i.em, %i.en
  %i.ep = insertelement <2 x float> poison, float %i.eg, i64 0
  %i.eq = shufflevector <2 x float> %i.ep, <2 x float> poison, <2 x i32> zeroinitializer
  %i.er = shufflevector <4 x float> %i.ek, <4 x float> poison, <2 x i32> <i32 1, i32 3>
  %i.es = fmul reassoc nsz arcp contract afn <2 x float> %i.eq, %i.er
  %i.et = load <2 x float>, ptr %i.ca, align 4, !tbaa !13
  %i.eu = fadd reassoc nsz arcp contract afn <2 x float> %i.et, %i.es
  %i.ev = fadd reassoc nsz arcp contract afn <2 x float> %i.eu, %i.eo
  %i.ew = insertelement <2 x float> poison, float %i.ef, i64 0
  %i.ex = shufflevector <2 x float> %i.ew, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ey = fmul reassoc nsz arcp contract afn <2 x float> %i.ev, %i.ex ; 2 uses
  %i.ez = load i32, ptr %i.bd, align 4, !tbaa !66
  %i.fa = icmp eq i32 %i.ez, 1
  br i1 %i.fa, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.fb = fsub reassoc nsz arcp contract afn <2 x float> %i.ey, %i.cr ; 2 uses
  %i.fc = shufflevector <2 x float> %i.fb, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.fd = fmul reassoc nsz arcp contract afn <2 x float> %i.cv, %i.fc ; 2 uses
  %i.fe = shufflevector <2 x float> %i.fb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ff = fmul reassoc nsz arcp contract afn <2 x float> %i.ct, %i.fe ; 2 uses
  %i.fg = fsub reassoc nsz arcp contract afn <2 x float> %i.ff, %i.fd ; 2 uses
  %i.fh = extractelement <2 x float> %i.fg, i64 1
  %i.fi = fmul reassoc nsz arcp contract afn float %i.ck, %i.fh
  %foldExtExtBinop = fsub reassoc nsz arcp contract afn <2 x float> %i.fd, %i.ff
  %i.fj = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.fk = fmul reassoc nsz arcp contract afn float %i.fj, %i.cj
  %i.fl = fadd reassoc nsz arcp contract afn float %i.cn, %i.fk
  %i.fm = fadd reassoc nsz arcp contract afn float %i.fl, %i.fi
  %i.fn = insertelement <2 x float> poison, float %i.fm, i64 0
  %i.fo = shufflevector <2 x float> %i.fn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fp = fdiv reassoc nsz arcp contract afn <2 x float> %i.fg, %i.fo ; 2 uses
  %i.fq = fadd reassoc nsz arcp contract afn <2 x float> %i.ba, %i.fp
  %i.fr = fsub reassoc nsz arcp contract afn <2 x float> %i.ba, %i.fp
  %i.fs = shufflevector <2 x float> %i.fq, <2 x float> %i.fr, <2 x i32> <i32 0, i32 3>
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ft = phi <2 x float> [ %i.fs, %bb.l ], [ %i.ey, %bb.k ]
  %i.fu = fadd reassoc nsz arcp contract afn <2 x float> %i.ft, splat (float -5.000000e-01)
  %i.fv = load <2 x i32>, ptr %4, align 4, !tbaa !14
  %i.fw = sitofp <2 x i32> %i.fv to <2 x float>
  %i.fx = fsub reassoc nsz arcp contract afn <2 x float> %i.fu, %i.fw ; 2 uses
  %.idx = shl nuw nsw i64 %indvars.iv, 4
  %i.fy = getelementptr inbounds nuw i8, ptr %i.db, i64 %.idx
  %i.fz = load i32, ptr %i.m, align 4, !tbaa !78
  %i.ga = load i32, ptr %i.co, align 4, !tbaa !79
  %i.gb = extractelement <2 x float> %i.fx, i64 0
  %i.gc = extractelement <2 x float> %i.fx, i64 1
  tail call void @dt_interpolation_compute_pixel4c(ptr noundef %i.ah, ptr noundef %2, ptr noundef %i.fy, float noundef %i.gb, float noundef %i.gc, i32 noundef %i.fz, i32 noundef %i.ga, i32 noundef %i.o) #25
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.gd = load i32, ptr %i.bt, align 4, !tbaa !78 ; 2 uses
  %i.ge = sext i32 %i.gd to i64
  %i.gf = icmp slt i64 %indvars.iv.next, %i.ge
  br i1 %i.gf, label %bb.k, label %._crit_edge.loopexit

bb.n:                                             ; preds = %bb.g, %._crit_edge152, %bb.a
  ret void
}

declare i32 @dt_iop_have_required_input_format(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

declare void @dt_interpolation_compute_pixel4c(ptr noundef, ptr noundef, ptr noundef, float noundef, float noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn memory(write, inaccessiblemem: readwrite, target_mem: none) uwtable
define void @init_global(ptr nofree noundef writeonly captures(none) initializes((520, 528)) %0) local_unnamed_addr #11 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 520
  store ptr %i.a, ptr %i.b, align 8, !tbaa !137
  store <4 x i32> splat (i32 -999), ptr %i.a, align 4, !tbaa !14
  ret void
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define void @cleanup_global(ptr nofree noundef captures(none) %0) local_unnamed_addr #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !137
  tail call void @free(ptr noundef %i.b) #25
  store ptr null, ptr %i.a, align 8, !tbaa !137
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #13

; Function Attrs: nounwind uwtable
define void @commit_params(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !62  ; 33 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %i.c, align 4, !tbaa !13
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store <2 x float> zeroinitializer, ptr %i.f, align 4, !tbaa !13
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 128 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 120 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 140 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 116 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 144 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.e, i8 0, i64 24, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 132 ; 2 uses
  store <4 x float> <float 6.000000e-01, float 6.000000e-01, float 0.000000e+00, float 6.000000e-01>, ptr %i.m, align 4, !tbaa !13
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 124 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 100 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 108
  store <8 x float> <float 2.000000e-01, float 2.000000e-01, float 6.000000e-01, float 6.000000e-01, float 0.000000e+00, float 0.000000e+00, float 6.000000e-01, float 0.000000e+00>, ptr %i.o, align 4, !tbaa !13
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 172 ; 2 uses
  store i32 0, ptr %i.s, align 4, !tbaa !66
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 180
  store <2 x float> zeroinitializer, ptr %i.t, align 4, !tbaa !13
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  store i32 0, ptr %i.u, align 4, !tbaa !71
  %i.v = load float, ptr %1, align 4, !tbaa !139
  %i.w = fmul reassoc nsz arcp contract afn float %i.v, f0x3C8EFA36
  store float %i.w, ptr %i.b, align 4, !tbaa !83
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.y = load float, ptr %i.x, align 4, !tbaa !140
  %i.z = fcmp reassoc nsz arcp contract afn olt float %i.y, 0.000000e+00
  %i.aa = select i1 %i.z, i32 2, i32 0
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !141
  %i.ad = fcmp reassoc nsz arcp contract afn olt float %i.ac, 0.000000e+00
  %i.ae = zext i1 %i.ad to i32
  %i.af = or disjoint i32 %i.aa, %i.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 92
  store i32 %i.af, ptr %i.ag, align 4, !tbaa !82
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !291
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 176 ; 2 uses
  store i32 %i.ai, ptr %i.aj, align 4, !tbaa !88
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !142 ; 3 uses
  %i.am = icmp eq i32 %i.al, 4
  br i1 %i.am, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 88 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !143
  %i.aq = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.ap)
  %i.ar = fpext reassoc nsz arcp contract afn float %i.aq to double
  %i.as = fcmp reassoc nsz arcp contract afn ult double %i.ar, 1.000000e-04
  %spec.store.select = zext i1 %i.as to i32
  store i32 %spec.store.select, ptr %i.an, align 4
  %i.at = load float, ptr %i.ao, align 4, !tbaa !143 ; 2 uses
  %i.au = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.at)
  %or.cond = fcmp reassoc nsz arcp contract afn ugt float %i.au, 1.000000e+00
  %storemerge = select i1 %or.cond, float 0.000000e+00, float %i.at
  store float %storemerge, ptr %i.e, align 4, !tbaa !89
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aw = load float, ptr %i.av, align 4, !tbaa !144 ; 2 uses
  %i.ax = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.aw) ; 2 uses
  %i.ay = fpext reassoc nsz arcp contract afn float %i.ax to double
  %i.az = fcmp reassoc nsz arcp contract afn ult double %i.ay, 1.000000e-04
  br i1 %i.az, label %bb.d, label %bb.c
end_hunk_0
begin_hunk_1_@get_f:bb.a
  br i1 %.not40, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.u = tail call i32 @g_ascii_strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.111) #25
  %.not41 = icmp eq i32 %i.u, 0
  %. = select i1 %.not41, ptr getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 1760), ptr null
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.0 = phi ptr [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 1672), %bb.t ], [ %., %bb.u ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 1584), %bb.s ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 1496), %bb.r ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 1408), %bb.q ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 1320), %bb.p ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 1232), %bb.o ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 1144), %bb.n ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 1056), %bb.m ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 968), %bb.l ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 880), %bb.k ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 792), %bb.j ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 704), %bb.i ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 616), %bb.h ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 528), %bb.g ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 440), %bb.f ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 352), %bb.e ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 264), %bb.d ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 176), %bb.c ], [ getelementptr inbounds nuw (i8, ptr @introspection_linear, i64 88), %bb.b ], [ @introspection_linear, %bb.a ]
  ret ptr %.0
}

declare i32 @g_ascii_strcasecmp(ptr noundef, ptr noundef) local_unnamed_addr #6

declare void @dt_iop_image_copy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #6

declare void @dt_control_signal_disconnect(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

declare void @dt_bauhaus_combobox_clear(ptr noundef) local_unnamed_addr #6

declare ptr @dt_bauhaus_combobox_get_text(ptr noundef) local_unnamed_addr #6

declare i32 @g_strcmp0(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.copysign.f32(float, float) #9

declare ptr @dt_alloc_aligned(i64 noundef) local_unnamed_addr #6

declare void @gtk_widget_set_sensitive(ptr noundef, i32 noundef) local_unnamed_addr #6

declare noalias ptr @g_strdup_printf(ptr noundef, ...) local_unnamed_addr #6

declare noalias ptr @g_strdup(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr noundef captures(none), i32 noundef) local_unnamed_addr #22

declare i32 @gtk_accelerator_get_default_mod_mask() local_unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { float, float } @llvm.sincos.f32(float) #16

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <5 x float> @llvm.masked.load.v5f32.p0(ptr captures(none), <5 x i1>, <5 x float>) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.fabs.v8f32(<8 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.maxnum.v2f32(<2 x float>, <2 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.minnum.v2f32(<2 x float>, <2 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.ceil.v2f32(<2 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.floor.v2f32(<2 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smax.v2i32(<2 x i32>, <2 x i32>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.copysign.v2f32(<2 x float>, <2 x float>) #9

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { mustprogress nofree nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #4 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #5 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #6 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #11 = { mustprogress nofree nounwind willreturn memory(write, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #12 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #13 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #14 = { mustprogress nofree nounwind willreturn memory(argmem: write, inaccessiblemem: readwrite, errnomem: write) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #16 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nofree nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #18 = { allocsize(0) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #19 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #20 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #21 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #22 = { mustprogress nocallback nofree nounwind willreturn "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #24 = { nounwind allocsize(0) }
attributes #25 = { nounwind }
attributes #26 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = distinct !{null}
!1 = !{i32 7, !"Dwarf Version", i32 5}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!"float", !8, i64 0}
!13 = !{!12, !12, i64 0}
!14 = !{!9, !9, i64 0}
!15 = !{!"any pointer", !8, i64 0}
!16 = !{!15, !15, i64 0}
!17 = !{!"p1 _ZTS15dt_iop_module_t", !15, i64 0}
!18 = !{!"p1 _ZTS18dt_dev_pixelpipe_t", !15, i64 0}
!19 = !{!"p1 _ZTS18dt_histogram_roi_t", !15, i64 0}
!20 = !{!"dt_dev_histogram_collection_params_t", !19, i64 0, !9, i64 8}
!21 = !{!"p1 int", !15, i64 0}
!22 = !{!"long", !8, i64 0}
!23 = !{!"dt_dev_histogram_stats_t", !9, i64 0, !22, i64 8, !9, i64 16, !9, i64 20}
!24 = !{!"dt_iop_roi_t", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !12, i64 16}
!25 = !{!"short", !8, i64 0}
!26 = !{!"", !25, i64 0, !25, i64 2}
!27 = !{!"", !9, i64 0, !8, i64 16}
!28 = !{!"dt_iop_buffer_dsc_t", !9, i64 0, !9, i64 4, !9, i64 8, !8, i64 12, !26, i64 48, !27, i64 64, !8, i64 96, !9, i64 112}
!29 = !{!"p1 _ZTS11_GHashTable", !15, i64 0}
!30 = !{!"p1 float", !15, i64 0}
!31 = !{!"dt_dev_distorted_mask_cache_t", !30, i64 0, !24, i64 8, !22, i64 32, !22, i64 40}
!32 = !{!"dt_dev_pixelpipe_iop_t", !17, i64 0, !18, i64 8, !15, i64 16, !15, i64 24, !9, i64 32, !9, i64 36, !20, i64 40, !21, i64 56, !23, i64 64, !8, i64 88, !12, i64 104, !9, i64 108, !9, i64 112, !22, i64 120, !9, i64 128, !9, i64 132, !24, i64 136, !24, i64 156, !24, i64 176, !24, i64 196, !9, i64 216, !9, i64 220, !28, i64 224, !28, i64 352, !8, i64 480, !9, i64 516, !29, i64 520, !31, i64 528, !31, i64 576}
!33 = !{!32, !18, i64 8}
!34 = !{!"any p2 pointer", !15, i64 0}
!35 = !{!"p1 long", !15, i64 0}
!36 = !{!"p1 _ZTS19dt_iop_buffer_dsc_t", !15, i64 0}
!37 = !{!"dt_dev_pixelpipe_cache_t", !9, i64 0, !22, i64 8, !22, i64 16, !34, i64 24, !35, i64 32, !36, i64 40, !35, i64 48, !21, i64 56, !21, i64 64, !22, i64 72, !9, i64 80, !22, i64 88, !22, i64 96, !9, i64 104, !9, i64 108, !9, i64 112}
!38 = !{!"p1 _ZTS30dt_iop_order_iccprofile_info_t", !15, i64 0}
!39 = !{!"p1 _ZTS6_GList", !15, i64 0}
!40 = !{!"p1 omnipotent char", !15, i64 0}
!41 = !{!"dt_pthread_mutex_t", !8, i64 0}
!42 = !{!"dt_dev_detail_mask_t", !24, i64 0, !22, i64 24, !30, i64 32}
!43 = !{!"dt_image_raw_parameters_t", !9, i64 0, !9, i64 3}
!44 = !{!"double", !8, i64 0}
!45 = !{!"dt_image_geoloc_t", !44, i64 0, !44, i64 8, !44, i64 16}
!46 = !{!"_color_harmony_t", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !8, i64 16}
!47 = !{!"p1 _ZTS16dt_cache_entry_t", !15, i64 0}
!48 = !{!"dt_image_t", !9, i64 0, !9, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !12, i64 32, !12, i64 36, !9, i64 40, !8, i64 44, !8, i64 108, !8, i64 172, !8, i64 300, !8, i64 364, !8, i64 428, !8, i64 492, !22, i64 560, !9, i64 568, !8, i64 572, !8, i64 800, !8, i64 864, !8, i64 928, !8, i64 992, !9, i64 1120, !8, i64 1124, !9, i64 1380, !9, i64 1384, !9, i64 1388, !9, i64 1392, !9, i64 1396, !9, i64 1400, !9, i64 1404, !9, i64 1408, !9, i64 1412, !9, i64 1416, !12, i64 1420, !9, i64 1424, !9, i64 1428, !9, i64 1432, !9, i64 1436, !9, i64 1440, !9, i64 1444, !22, i64 1448, !22, i64 1456, !22, i64 1464, !22, i64 1472, !9, i64 1480, !28, i64 1488, !8, i64 1616, !40, i64 1656, !9, i64 1664, !9, i64 1668, !43, i64 1672, !45, i64 1680, !46, i64 1704, !25, i64 1736, !8, i64 1738, !9, i64 1748, !9, i64 1752, !12, i64 1756, !12, i64 1760, !8, i64 1776, !8, i64 1792, !8, i64 1840, !39, i64 1856, !47, i64 1864, !9, i64 1872, !9, i64 1876}
!49 = !{!"dt_dev_pixelpipe_t", !37, i64 0, !9, i64 120, !22, i64 128, !30, i64 136, !9, i64 144, !9, i64 148, !12, i64 152, !9, i64 156, !9, i64 160, !28, i64 176, !38, i64 304, !38, i64 312, !38, i64 320, !38, i64 328, !39, i64 336, !9, i64 344, !9, i64 348, !9, i64 352, !9, i64 356, !40, i64 360, !22, i64 368, !9, i64 376, !9, i64 380, !12, i64 384, !8, i64 388, !22, i64 416, !41, i64 424, !41, i64 464, !41, i64 504, !9, i64 544, !9, i64 548, !9, i64 552, !42, i64 560, !9, i64 600, !9, i64 604, !9, i64 608, !8, i64 612, !9, i64 616, !9, i64 620, !9, i64 624, !9, i64 628, !9, i64 632, !9, i64 636, !9, i64 640, !9, i64 644, !9, i64 648, !9, i64 652, !48, i64 656, !9, i64 2544, !40, i64 2552, !9, i64 2560, !39, i64 2568, !39, i64 2576, !39, i64 2584, !9, i64 2592, !30, i64 2600, !22, i64 2608, !8, i64 2616, !8, i64 2632}
!50 = !{!49, !9, i64 644}
!51 = !{!"p1 _ZTS8_GModule", !15, i64 0}
!52 = !{!"p1 _ZTS12dt_develop_t", !15, i64 0}
!53 = !{!"p1 _ZTS25dt_develop_blend_params_t", !15, i64 0}
!54 = !{!"", !29, i64 0, !29, i64 8}
!55 = !{!"", !17, i64 0, !9, i64 8}
!56 = !{!"", !54, i64 0, !55, i64 16}
!57 = !{!"p1 _ZTS10_GtkWidget", !15, i64 0}
!58 = !{!"p1 _ZTS7_GSList", !15, i64 0}
!59 = !{!"p1 _ZTS18dt_iop_module_so_t", !15, i64 0}
!60 = !{!"dt_iop_module_t", !9, i64 0, !15, i64 8, !15, i64 16, !15, i64 24, !15, i64 32, !15, i64 40, !15, i64 48, !15, i64 56, !15, i64 64, !15, i64 72, !15, i64 80, !15, i64 88, !15, i64 96, !15, i64 104, !15, i64 112, !15, i64 120, !15, i64 128, !15, i64 136, !15, i64 144, !15, i64 152, !15, i64 160, !15, i64 168, !15, i64 176, !15, i64 184, !15, i64 192, !15, i64 200, !15, i64 208, !15, i64 216, !15, i64 224, !15, i64 232, !15, i64 240, !15, i64 248, !15, i64 256, !15, i64 264, !15, i64 272, !15, i64 280, !15, i64 288, !15, i64 296, !15, i64 304, !15, i64 312, !15, i64 320, !15, i64 328, !15, i64 336, !15, i64 344, !15, i64 352, !15, i64 360, !15, i64 368, !15, i64 376, !15, i64 384, !15, i64 392, !15, i64 400, !15, i64 408, !15, i64 416, !15, i64 424, !15, i64 432, !15, i64 440, !51, i64 448, !8, i64 456, !9, i64 476, !9, i64 480, !9, i64 484, !9, i64 488, !9, i64 492, !9, i64 496, !9, i64 500, !9, i64 504, !8, i64 512, !8, i64 528, !8, i64 544, !8, i64 560, !8, i64 576, !8, i64 592, !21, i64 608, !23, i64 616, !8, i64 640, !9, i64 656, !9, i64 660, !52, i64 664, !9, i64 672, !9, i64 676, !15, i64 680, !15, i64 688, !9, i64 696, !15, i64 704, !41, i64 712, !15, i64 752, !15, i64 760, !53, i64 768, !53, i64 776, !15, i64 784, !56, i64 792, !57, i64 824, !57, i64 832, !57, i64 840, !57, i64 848, !57, i64 856, !57, i64 864, !57, i64 872, !9, i64 880, !57, i64 888, !57, i64 896, !57, i64 904, !58, i64 912, !58, i64 920, !57, i64 928, !57, i64 936, !9, i64 944, !59, i64 952, !9, i64 960, !8, i64 964, !9, i64 1092, !57, i64 1096, !15, i64 1104, !9, i64 1112}
!61 = !{!60, !15, i64 336}
!62 = !{!32, !15, i64 16}
!63 = !{!"dt_iop_clipping_data_t", !12, i64 0, !12, i64 4, !8, i64 8, !8, i64 24, !12, i64 40, !12, i64 44, !12, i64 48, !12, i64 52, !12, i64 56, !12, i64 60, !12, i64 64, !12, i64 68, !12, i64 72, !12, i64 76, !12, i64 80, !12, i64 84, !9, i64 88, !9, i64 92, !9, i64 96, !8, i64 100, !12, i64 116, !12, i64 120, !12, i64 124, !12, i64 128, !12, i64 132, !12, i64 136, !12, i64 140, !12, i64 144, !12, i64 148, !12, i64 152, !12, i64 156, !12, i64 160, !12, i64 164, !12, i64 168, !9, i64 172, !9, i64 176, !12, i64 180, !12, i64 184}
!64 = !{!63, !12, i64 124}
!65 = !{!63, !12, i64 132}
!66 = !{!63, !9, i64 172}
!67 = !{!63, !12, i64 56}
!68 = !{!63, !12, i64 60}
!69 = !{!63, !12, i64 44}
!70 = !{!63, !12, i64 52}
!71 = !{!63, !9, i64 96}
!72 = !{!63, !12, i64 80}
!73 = !{!63, !12, i64 180}
!74 = !{!63, !12, i64 84}
!75 = !{!63, !12, i64 184}
!76 = !{!"llvm.loop.isvectorized", i32 1}
!77 = !{!"llvm.loop.unroll.runtime.disable"}
!78 = !{!24, !9, i64 8}
!79 = !{!24, !9, i64 12}
!80 = !{!63, !12, i64 116}
!81 = !{!63, !12, i64 120}
!82 = !{!63, !9, i64 92}
!83 = !{!63, !12, i64 0}
!84 = !{!63, !9, i64 88}
!85 = !{!24, !12, i64 16}
!86 = !{!"llvm.loop.unswitch.partial.disable"}
!87 = !{i64 0, i64 4, !14, i64 4, i64 4, !14, i64 8, i64 4, !14, i64 12, i64 4, !14, i64 16, i64 4, !13}
!88 = !{!63, !9, i64 176}
!89 = !{!63, !12, i64 40}
!90 = !{!63, !12, i64 48}
!91 = !{!24, !9, i64 0}
!92 = !{!63, !12, i64 164}
!93 = !{!63, !12, i64 168}
!94 = !{!24, !9, i64 4}
!95 = !{!"dt_codepath_t", !9, i64 0}
!96 = !{!"p1 _ZTS11_JsonParser", !15, i64 0}
!97 = !{!"p1 _ZTS9dt_conf_t", !15, i64 0}
!98 = !{!"p1 _ZTS8dt_lib_t", !15, i64 0}
!99 = !{!"p1 _ZTS17dt_view_manager_t", !15, i64 0}
!100 = !{!"p1 _ZTS12dt_control_t", !15, i64 0}
!101 = !{!"p1 _ZTS19dt_control_signal_t", !15, i64 0}
!102 = !{!"p1 _ZTS12dt_gui_gtk_t", !15, i64 0}
!103 = !{!"p1 _ZTS17dt_mipmap_cache_t", !15, i64 0}
!104 = !{!"p1 _ZTS16dt_image_cache_t", !15, i64 0}
!105 = !{!"p1 _ZTS12dt_bauhaus_t", !15, i64 0}
!106 = !{!"p1 _ZTS13dt_database_t", !15, i64 0}
!107 = !{!"p1 _ZTS14dt_pwstorage_t", !15, i64 0}
!108 = !{!"p1 _ZTS11dt_camctl_t", !15, i64 0}
!109 = !{!"p1 _ZTS15dt_collection_t", !15, i64 0}
!110 = !{!"p1 _ZTS14dt_selection_t", !15, i64 0}
!111 = !{!"p1 _ZTS11dt_points_t", !15, i64 0}
!112 = !{!"p1 _ZTS12dt_imageio_t", !15, i64 0}
!113 = !{!"p1 _ZTS11dt_opencl_t", !15, i64 0}
!114 = !{!"p1 _ZTS9dt_dbus_t", !15, i64 0}
!115 = !{!"p1 _ZTS9dt_undo_t", !15, i64 0}
!116 = !{!"p1 _ZTS16dt_colorspaces_t", !15, i64 0}
!117 = !{!"p1 _ZTS9dt_l10n_t", !15, i64 0}
!118 = !{!"p1 _ZTS9lua_State", !15, i64 0}
!119 = !{!"_Bool", !8, i64 0}
!120 = !{!"p1 _ZTS10_GMainLoop", !15, i64 0}
!121 = !{!"p1 _ZTS13_GMainContext", !15, i64 0}
!122 = !{!"p1 _ZTS12_GThreadPool", !15, i64 0}
!123 = !{!"p1 _ZTS12_GAsyncQueue", !15, i64 0}
!124 = !{!"", !118, i64 0, !41, i64 8, !8, i64 48, !119, i64 96, !119, i64 97, !120, i64 104, !121, i64 112, !122, i64 120, !123, i64 128, !123, i64 136, !123, i64 144}
!125 = !{!"p1 _ZTS10_GTimeZone", !15, i64 0}
!126 = !{!"p1 _ZTS10_GDateTime", !15, i64 0}
!127 = !{!"dt_sys_resources_t", !22, i64 0, !22, i64 8, !21, i64 16, !21, i64 24, !9, i64 32}
!128 = !{!"dt_backthumb_t", !44, i64 0, !44, i64 8, !9, i64 16, !9, i64 20}
!129 = !{!"dt_gimp_t", !9, i64 0, !40, i64 8, !40, i64 16, !9, i64 24, !9, i64 28}
!130 = !{!"dt_splash_t", !57, i64 0, !57, i64 8, !57, i64 16, !57, i64 24, !9, i64 32}
!131 = !{!"darktable_t", !95, i64 0, !9, i64 4, !9, i64 8, !39, i64 16, !39, i64 24, !39, i64 32, !39, i64 40, !96, i64 48, !97, i64 56, !52, i64 64, !98, i64 72, !99, i64 80, !100, i64 88, !101, i64 96, !102, i64 104, !103, i64 112, !104, i64 120, !105, i64 128, !106, i64 136, !107, i64 144, !108, i64 152, !109, i64 160, !110, i64 168, !111, i64 176, !112, i64 184, !113, i64 192, !114, i64 200, !115, i64 208, !116, i64 216, !117, i64 224, !8, i64 232, !41, i64 2792, !41, i64 2832, !41, i64 2872, !41, i64 2912, !41, i64 2952, !41, i64 2992, !40, i64 3032, !40, i64 3040, !40, i64 3048, !40, i64 3056, !40, i64 3064, !40, i64 3072, !40, i64 3080, !40, i64 3088, !40, i64 3096, !40, i64 3104, !40, i64 3112, !40, i64 3120, !40, i64 3128, !124, i64 3136, !39, i64 3288, !44, i64 3296, !39, i64 3304, !9, i64 3312, !8, i64 3316, !9, i64 3512, !9, i64 3516, !125, i64 3520, !126, i64 3528, !127, i64 3536, !128, i64 3576, !129, i64 3600, !130, i64 3632, !9, i64 3672}
!132 = !{!131, !9, i64 8}
!133 = !{!60, !15, i64 40}
!134 = !{!"p1 _ZTS11dt_action_t", !15, i64 0}
!135 = !{!"dt_action_t", !9, i64 0, !40, i64 8, !40, i64 16, !15, i64 24, !134, i64 32, !134, i64 40}
!136 = !{!"dt_iop_module_so_t", !135, i64 0, !15, i64 48, !15, i64 56, !15, i64 64, !15, i64 72, !15, i64 80, !15, i64 88, !15, i64 96, !15, i64 104, !15, i64 112, !15, i64 120, !15, i64 128, !15, i64 136, !15, i64 144, !15, i64 152, !15, i64 160, !15, i64 168, !15, i64 176, !15, i64 184, !15, i64 192, !15, i64 200, !15, i64 208, !15, i64 216, !15, i64 224, !15, i64 232, !15, i64 240, !15, i64 248, !15, i64 256, !15, i64 264, !15, i64 272, !15, i64 280, !15, i64 288, !15, i64 296, !15, i64 304, !15, i64 312, !15, i64 320, !15, i64 328, !15, i64 336, !15, i64 344, !15, i64 352, !15, i64 360, !15, i64 368, !15, i64 376, !15, i64 384, !15, i64 392, !15, i64 400, !15, i64 408, !15, i64 416, !15, i64 424, !15, i64 432, !15, i64 440, !15, i64 448, !15, i64 456, !15, i64 464, !15, i64 472, !15, i64 480, !51, i64 488, !8, i64 496, !15, i64 520, !9, i64 528, !15, i64 536, !9, i64 544, !9, i64 548}
!137 = !{!136, !15, i64 520}
!138 = !{!"dt_iop_clipping_params_t", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !12, i64 32, !12, i64 36, !12, i64 40, !12, i64 44, !12, i64 48, !12, i64 52, !12, i64 56, !9, i64 60, !9, i64 64, !9, i64 68, !9, i64 72, !9, i64 76, !9, i64 80}
!139 = !{!138, !12, i64 0}
!140 = !{!138, !12, i64 16}
!141 = !{!138, !12, i64 12}
!142 = !{!138, !9, i64 60}
!143 = !{!138, !12, i64 20}
!144 = !{!138, !12, i64 24}
!145 = !{!138, !9, i64 68}
!146 = !{!138, !12, i64 36}
!147 = !{!138, !12, i64 44}
!148 = !{!138, !12, i64 52}
!149 = !{!138, !12, i64 40}
!150 = !{!138, !12, i64 48}
!151 = !{!138, !12, i64 56}
!152 = !{!138, !12, i64 8}
!153 = !{!60, !15, i64 704}
!154 = !{!60, !15, i64 680}
!155 = !{!60, !9, i64 672}
!156 = !{!131, !9, i64 3312}
!157 = !{!131, !101, i64 96}
!158 = !{!60, !52, i64 664}
!159 = !{!"p1 _ZTS15dt_masks_form_t", !15, i64 0}
!160 = !{!"p1 _ZTS19dt_masks_form_gui_t", !15, i64 0}
!161 = !{!"dt_dev_proxy_exposure_t", !17, i64 0, !15, i64 8, !15, i64 16, !15, i64 24, !15, i64 32}
!162 = !{!"p1 _ZTS15dt_lib_module_t", !15, i64 0}
!163 = !{!"", !162, i64 0, !15, i64 8, !15, i64 16, !15, i64 24, !15, i64 32, !15, i64 40, !15, i64 48, !15, i64 56, !15, i64 64}
!164 = !{!"", !162, i64 0, !15, i64 8, !15, i64 16, !15, i64 24, !15, i64 32}
!165 = !{!"", !161, i64 0, !17, i64 40, !163, i64 48, !164, i64 120}
!166 = !{!"dt_dev_chroma_t", !17, i64 0, !17, i64 8, !8, i64 16, !8, i64 32, !8, i64 64, !9, i64 96}
!167 = !{!"", !17, i64 0, !17, i64 8, !15, i64 16}
!168 = !{!"", !57, i64 0, !57, i64 8, !9, i64 16, !9, i64 20, !12, i64 24, !12, i64 28, !9, i64 32}
!169 = !{!"", !57, i64 0, !57, i64 8, !9, i64 16, !9, i64 20, !9, i64 24, !12, i64 28}
!170 = !{!"", !57, i64 0, !57, i64 8}
!171 = !{!"", !57, i64 0, !9, i64 8}
!172 = !{!"", !57, i64 0, !57, i64 8, !57, i64 16, !57, i64 24, !57, i64 32}
!173 = !{!"dt_dev_viewport_t", !57, i64 0, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !9, i64 24, !44, i64 32, !44, i64 40, !44, i64 48, !9, i64 56, !9, i64 60, !9, i64 64, !12, i64 68, !12, i64 72, !12, i64 76, !18, i64 80, !57, i64 88, !52, i64 96}
!174 = !{!"dt_develop_t", !9, i64 0, !9, i64 4, !9, i64 8, !15, i64 16, !44, i64 24, !44, i64 32, !9, i64 40, !9, i64 44, !9, i64 48, !9, i64 52, !9, i64 56, !44, i64 64, !9, i64 72, !9, i64 76, !9, i64 80, !17, i64 88, !18, i64 96, !48, i64 112, !9, i64 2000, !9, i64 2004, !41, i64 2008, !9, i64 2048, !39, i64 2056, !9, i64 2064, !17, i64 2072, !9, i64 2080, !39, i64 2088, !39, i64 2096, !9, i64 2104, !39, i64 2112, !39, i64 2120, !21, i64 2128, !21, i64 2136, !9, i64 2144, !9, i64 2148, !39, i64 2152, !159, i64 2160, !160, i64 2168, !39, i64 2176, !9, i64 2184, !9, i64 2188, !9, i64 2192, !12, i64 2196, !12, i64 2200, !17, i64 2208, !9, i64 2216, !165, i64 2224, !166, i64 2384, !167, i64 2496, !168, i64 2520, !169, i64 2560, !170, i64 2592, !171, i64 2608, !172, i64 2624, !57, i64 2664, !57, i64 2672, !173, i64 2680, !173, i64 2784, !9, i64 2888, !9, i64 2892, !9, i64 2896, !9, i64 2900, !39, i64 2904, !9, i64 2912, !52, i64 2920}
!175 = !{!"p1 _ZTS12_GtkNotebook", !15, i64 0}
!176 = !{!"dt_iop_clipping_gui_data_t", !175, i64 0, !57, i64 8, !57, i64 16, !57, i64 24, !57, i64 32, !57, i64 40, !57, i64 48, !39, i64 56, !57, i64 64, !57, i64 72, !57, i64 80, !12, i64 88, !12, i64 92, !12, i64 96, !12, i64 100, !12, i64 104, !12, i64 108, !12, i64 112, !12, i64 116, !12, i64 120, !12, i64 124, !12, i64 128, !12, i64 132, !12, i64 136, !12, i64 140, !12, i64 144, !12, i64 148, !12, i64 152, !22, i64 160, !9, i64 168, !9, i64 172, !9, i64 176, !9, i64 180, !9, i64 184, !9, i64 188, !9, i64 192, !9, i64 196, !9, i64 200, !9, i64 204}
!177 = !{!176, !22, i64 160}
!178 = !{!176, !9, i64 204}
!179 = !{!176, !57, i64 72}
!180 = !{!131, !102, i64 104}
!181 = !{!176, !9, i64 184}
!182 = !{!138, !12, i64 4}
!183 = !{!174, !18, i64 96}
!184 = !{!60, !9, i64 480}
!185 = !{!176, !9, i64 192}
!186 = !{!131, !52, i64 64}
!187 = !{!176, !57, i64 16}
!188 = !{!176, !57, i64 32}
!189 = !{!176, !12, i64 100}
!190 = !{!176, !12, i64 108}
!191 = !{!176, !57, i64 24}
!192 = !{!176, !57, i64 40}
!193 = !{!176, !12, i64 104}
!194 = !{!176, !12, i64 112}
!195 = !{!176, !57, i64 80}
!196 = !{!176, !9, i64 172}
!197 = !{!176, !57, i64 48}
!198 = !{!138, !9, i64 80}
!199 = !{!138, !9, i64 76}
!200 = !{!176, !57, i64 64}
!201 = !{!39, !39, i64 0}
!202 = !{!"_GList", !15, i64 0, !39, i64 8, !39, i64 16}
!203 = !{!202, !15, i64 0}
!204 = !{!"dt_iop_clipping_aspect_t", !40, i64 0, !9, i64 8, !9, i64 12}
!205 = !{!204, !9, i64 8}
!206 = !{!204, !9, i64 12}
!207 = !{!8, !8, i64 0}
!208 = !{!204, !40, i64 0}
!209 = !{!176, !39, i64 56}
!210 = !{!176, !9, i64 196}
!211 = !{!176, !9, i64 200}
!212 = !{!176, !9, i64 168}
!213 = !{!176, !57, i64 8}
!214 = !{!"p1 _ZTS7dt_ui_t", !15, i64 0}
!215 = !{!"dt_gui_widgets_t", !57, i64 0, !57, i64 8, !57, i64 16, !57, i64 24, !9, i64 32, !9, i64 36, !9, i64 40}
!216 = !{!"dt_gui_scrollbars_t", !57, i64 0, !57, i64 8, !9, i64 16}
!217 = !{!"p1 _ZTS14_cairo_surface", !15, i64 0}
!218 = !{!"dt_gui_gtk_t", !214, i64 0, !215, i64 8, !216, i64 56, !217, i64 80, !9, i64 88, !40, i64 96, !8, i64 104, !8, i64 112, !9, i64 1360, !9, i64 1364, !9, i64 1368, !9, i64 1372, !9, i64 1376, !9, i64 1380, !44, i64 1384, !44, i64 1392, !44, i64 1400, !44, i64 1408, !57, i64 1416, !44, i64 1424, !44, i64 1432, !44, i64 1440, !44, i64 1448, !9, i64 1456, !9, i64 1460, !8, i64 1464, !9, i64 5560, !9, i64 5564, !9, i64 5568}
!219 = !{!218, !44, i64 1432}
!220 = !{!218, !44, i64 1408}
!221 = !{!218, !44, i64 1384}
!222 = !{!218, !44, i64 1400}
!223 = !{!218, !44, i64 1392}
!224 = !{!131, !100, i64 88}
!225 = !{!"p1 _ZTS10_GSequence", !15, i64 0}
!226 = !{!"p1 _ZTS10_GPtrArray", !15, i64 0}
!227 = !{!"p2 _ZTS9_dt_job_t", !34, i64 0}
!228 = !{!"", !162, i64 0, !15, i64 8, !15, i64 16, !15, i64 24, !15, i64 32, !15, i64 40}
!229 = !{!"", !39, i64 0, !22, i64 8, !22, i64 16, !44, i64 24, !41, i64 32, !228, i64 72}
!230 = !{!"", !162, i64 0, !15, i64 8}
!231 = !{!"", !230, i64 0}
!232 = !{!"dt_control_t", !9, i64 0, !134, i64 8, !135, i64 16, !135, i64 64, !135, i64 112, !135, i64 160, !135, i64 208, !135, i64 256, !135, i64 304, !135, i64 352, !135, i64 400, !135, i64 448, !135, i64 496, !134, i64 544, !225, i64 552, !9, i64 560, !57, i64 568, !9, i64 576, !9, i64 580, !226, i64 584, !58, i64 592, !44, i64 600, !9, i64 608, !9, i64 612, !22, i64 616, !9, i64 624, !9, i64 628, !9, i64 632, !44, i64 640, !44, i64 648, !9, i64 656, !9, i64 660, !9, i64 664, !9, i64 668, !9, i64 672, !41, i64 680, !9, i64 720, !9, i64 724, !8, i64 728, !9, i64 2728, !9, i64 2732, !9, i64 2736, !8, i64 2740, !9, i64 3340, !39, i64 3344, !41, i64 3352, !41, i64 3392, !41, i64 3432, !8, i64 3472, !8, i64 3476, !8, i64 3480, !9, i64 3484, !9, i64 3488, !41, i64 3496, !41, i64 3536, !8, i64 3576, !9, i64 3624, !35, i64 3632, !22, i64 3640, !22, i64 3648, !227, i64 3656, !8, i64 3664, !8, i64 3704, !41, i64 3744, !8, i64 3784, !8, i64 3808, !8, i64 3816, !229, i64 3840, !231, i64 3960}
!233 = !{!232, !9, i64 624}
!234 = !{!232, !9, i64 628}
!235 = !{!131, !105, i64 128}
!236 = !{!"p1 _ZTS16_DtBauhausWidget", !15, i64 0}
!237 = !{!"_GtkBorder", !25, i64 0, !25, i64 2, !25, i64 4, !25, i64 6}
!238 = !{!"_cairo_rectangle_int", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12}
!239 = !{!"dt_bauhaus_popup_t", !57, i64 0, !57, i64 8, !237, i64 16, !238, i64 24, !9, i64 40, !9, i64 44, !12, i64 48}
!240 = !{!"p1 _ZTS21_PangoFontDescription", !15, i64 0}
!241 = !{!"_GdkRGBA", !44, i64 0, !44, i64 8, !44, i64 16, !44, i64 24}
!242 = !{!"dt_bauhaus_t", !236, i64 0, !239, i64 8, !57, i64 64, !12, i64 72, !12, i64 76, !9, i64 80, !9, i64 84, !12, i64 88, !8, i64 92, !9, i64 272, !9, i64 276, !8, i64 280, !9, i64 288, !29, i64 296, !29, i64 304, !12, i64 312, !12, i64 316, !9, i64 320, !12, i64 324, !12, i64 328, !12, i64 332, !240, i64 336, !9, i64 344, !9, i64 348, !9, i64 352, !241, i64 360, !241, i64 392, !241, i64 424, !241, i64 456, !241, i64 488, !241, i64 520, !241, i64 552, !241, i64 584, !241, i64 616, !241, i64 648, !241, i64 680, !241, i64 712, !241, i64 744, !241, i64 776, !241, i64 808, !8, i64 840, !8, i64 936}
!243 = !{!242, !240, i64 336}
!244 = !{!"_PangoRectangle", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12}
!245 = !{!244, !9, i64 8}
!246 = !{!176, !9, i64 188}
!247 = !{!176, !12, i64 88}
!248 = !{!176, !12, i64 92}
!249 = !{!244, !9, i64 12}
!250 = !{!176, !9, i64 176}
!251 = !{!138, !9, i64 64}
!252 = !{!176, !12, i64 140}
!253 = !{!176, !12, i64 144}
!254 = !{!176, !12, i64 148}
!255 = !{!176, !12, i64 152}
!256 = !{!176, !9, i64 180}
!257 = !{!"old_params_t", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24}
!258 = !{!257, !12, i64 20}
!259 = !{!"dt_iop_clipping_params_v5_t", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !12, i64 32, !12, i64 36, !12, i64 40, !12, i64 44, !12, i64 48, !12, i64 52, !12, i64 56, !9, i64 60, !9, i64 64, !9, i64 68, !9, i64 72, !9, i64 76, !9, i64 80}
!260 = !{!259, !12, i64 20}
!261 = !{!259, !12, i64 24}
!262 = !{!257, !12, i64 16}
!263 = !{!259, !12, i64 16}
!264 = !{!259, !9, i64 60}
!265 = !{!259, !9, i64 64}
!266 = !{!259, !9, i64 68}
!267 = !{!257, !12, i64 24}
!268 = !{!"old_params_t", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !12, i64 16, !12, i64 20, !12, i64 24, !12, i64 28, !12, i64 32, !12, i64 36, !12, i64 40, !12, i64 44, !12, i64 48, !12, i64 52, !12, i64 56, !9, i64 60, !9, i64 64, !9, i64 68, !9, i64 72}
!269 = !{!268, !12, i64 56}
!270 = !{!259, !12, i64 56}
!271 = !{!268, !9, i64 68}
!272 = !{!268, !9, i64 72}
!273 = !{!259, !9, i64 72}
!274 = !{!259, !9, i64 76}
!275 = !{!259, !9, i64 80}
!276 = distinct !{!276, !76, !77}
!277 = distinct !{!277, !76, !77}
!278 = distinct !{!278, !77, !76}
!279 = distinct !{!279, !77, !76}
!280 = distinct !{!280, !76, !77}
!281 = distinct !{!281, !76, !77}
!282 = distinct !{!282, !77, !76}
!283 = distinct !{!283, !77, !76}
!284 = distinct !{!284, !86}
!285 = !{!32, !9, i64 32}
!286 = !{!63, !12, i64 160}
!287 = !{!63, !12, i64 156}
!288 = !{!63, !12, i64 152}
!289 = distinct !{!289, !86}
!290 = !{!32, !9, i64 132}
!291 = !{!138, !9, i64 72}
!292 = !{!63, !12, i64 128}
!293 = !{!63, !12, i64 140}
end_hunk_1
