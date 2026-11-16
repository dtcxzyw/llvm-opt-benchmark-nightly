Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vf_colorlevels?download=true
inline.NumInlined: 49
inline.NumDeleted: 4
begin_hunk_0_@colorlevels_slice_32_planar:bb.a
  %indvars.iv.next173 = add nsw i64 %indvars.iv172, %i.cu ; 2 uses
  %i.hu = icmp slt i64 %indvars.iv.next173, %i.cv
  br i1 %i.hu, label %.lr.ph144.split.us.us, label %.critedge.us.us, !llvm.loop !367

.critedge.us.us:                                  ; preds = %.lr.ph144.split.us.us, %middle.block, %..preheader_crit_edge.us.us
  %i.hv = getelementptr inbounds [4 x i8], ptr %.0133146.us.us, i64 %i.cp
  %i.hw = getelementptr inbounds [4 x i8], ptr %.0132147.us.us, i64 %i.cp
  %i.hx = getelementptr inbounds [4 x i8], ptr %.0131148.us.us, i64 %i.cp
  %i.hy = getelementptr inbounds [4 x i8], ptr %.0130149.us.us, i64 %i.cp
  %i.hz = getelementptr inbounds [4 x i8], ptr %.0129150.us.us, i64 %i.cq
  %i.ia = getelementptr inbounds [4 x i8], ptr %.0128151.us.us, i64 %i.cq
  %i.ib = getelementptr inbounds [4 x i8], ptr %.0127152.us.us, i64 %i.cq
  %i.ic = getelementptr inbounds [4 x i8], ptr %.0126153.us.us, i64 %i.cq
  %i.id = add nsw i32 %.0125154.us.us, 1          ; 2 uses
  %exitcond.not = icmp eq i32 %i.id, %i.s
  br i1 %exitcond.not, label %._crit_edge, label %.preheader141.us.us, !llvm.loop !368

._crit_edge:                                      ; preds = %.critedge.us.us, %.preheader141.lr.ph, %bb.d
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @colorlevels_preserve_slice_32_planar(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  %i.d = load i32, ptr %i.c, align 8, !tbaa !42   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  %i.f = load i32, ptr %i.e, align 8, !tbaa !30   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.h = load i32, ptr %i.g, align 8, !tbaa !33
  %i.i = sext i32 %i.h to i64                     ; 2 uses
  %i.j = sext i32 %2 to i64
  %i.k = mul nsw i64 %i.i, %i.j
  %i.l = sext i32 %3 to i64                       ; 2 uses
  %i.m = sdiv i64 %i.k, %i.l                      ; 2 uses
  %i.n = trunc i64 %i.m to i32                    ; 3 uses
  %i.o = add nsw i32 %2, 1
  %i.p = sext i32 %i.o to i64
  %i.q = mul nsw i64 %i.i, %i.p
  %i.r = sdiv i64 %i.q, %i.l                      ; 2 uses
  %i.s = trunc i64 %i.r to i32                    ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.u = load i32, ptr %i.t, align 4, !tbaa !36
  %i.v = ashr i32 %i.u, 2                         ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.x = load i32, ptr %i.w, align 8, !tbaa !35
  %i.y = ashr i32 %i.x, 2                         ; 2 uses
  %i.z = load ptr, ptr %1, align 8, !tbaa !38
  %i.aa = mul i32 %i.v, %i.n
  %i.ab = sext i32 %i.aa to i64                   ; 9 uses
  %i.ac = getelementptr inbounds [4 x i8], ptr %i.z, i64 %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !38
  %i.af = getelementptr inbounds [4 x i8], ptr %i.ae, i64 %i.ab
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !38
  %i.ai = getelementptr inbounds [4 x i8], ptr %i.ah, i64 %i.ab
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !38 ; 2 uses
  %i.al = getelementptr [4 x i8], ptr %i.ak, i64 %i.ab ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !38
  %i.ao = getelementptr inbounds [4 x i8], ptr %i.an, i64 %i.ab
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !38
  %i.ar = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %i.ab
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !38
  %i.au = getelementptr inbounds [4 x i8], ptr %i.at, i64 %i.ab
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !38 ; 2 uses
  %i.ax = getelementptr [4 x i8], ptr %i.aw, i64 %i.ab ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !52
  %i.ba = icmp eq i32 %i.az, 32                   ; 2 uses
  br i1 %i.ba, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 92
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !47
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.bf = load float, ptr %i.be, align 8, !tbaa !47
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !47
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.bj = load <2 x float>, ptr %i.bd, align 8, !tbaa !47
  %i.bk = load <2 x float>, ptr %i.bi, align 8, !tbaa !47
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.bm = load float, ptr %i.bl, align 8, !tbaa !47
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !34
  %i.bp = sitofp nsz i32 %i.bo to float
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !34
  %i.bt = sitofp nsz i32 %i.bs to float
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 140
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !34
  %i.bw = sitofp nsz i32 %i.bv to float
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.by = load <2 x i32>, ptr %i.bq, align 8, !tbaa !34
  %i.bz = sitofp nsz <2 x i32> %i.by to <2 x float>
  %i.ca = load <2 x i32>, ptr %i.bx, align 8, !tbaa !34
  %i.cb = sitofp nsz <2 x i32> %i.ca to <2 x float>
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !34
  %i.ce = sitofp nsz i32 %i.cd to float
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.cf = phi float [ %i.bh, %bb.b ], [ %i.bw, %bb.c ]
  %i.cg = phi float [ %i.bc, %bb.b ], [ %i.bp, %bb.c ]
  %i.ch = phi float [ %i.bf, %bb.b ], [ %i.bt, %bb.c ] ; 2 uses
  %i.ci = phi nsz float [ %i.bm, %bb.b ], [ %i.ce, %bb.c ] ; 2 uses
  %i.cj = phi <2 x float> [ %i.bj, %bb.b ], [ %i.bz, %bb.c ]
  %i.ck = phi <2 x float> [ %i.bk, %bb.b ], [ %i.cb, %bb.c ]
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.cm = load float, ptr %i.cl, align 8, !tbaa !47
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.co = load <2 x float>, ptr %i.cn, align 4, !tbaa !47
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !47 ; 2 uses
  %i.cr = icmp slt i32 %i.n, %i.s
  br i1 %i.cr, label %.preheader169.lr.ph, label %._crit_edge

.preheader169.lr.ph:                              ; preds = %bb.d
  %i.cs = icmp sgt i32 %i.d, 0
  %i.ct = getelementptr inbounds nuw i8, ptr %i.b, i64 148
  %i.cu = sext i32 %i.v to i64                    ; 5 uses
  %i.cv = sext i32 %i.y to i64                    ; 5 uses
  br i1 %i.cs, label %.preheader169.lr.ph.split.us, label %._crit_edge

.preheader169.lr.ph.split.us:                     ; preds = %.preheader169.lr.ph
  %i.cw = getelementptr inbounds nuw i8, ptr %i.b, i64 140
  %i.cx = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  %i.cy = load i32, ptr %i.cx, align 8, !tbaa !50
  %i.cz = sext i32 %i.f to i64                    ; 2 uses
  %i.da = zext nneg i32 %i.d to i64               ; 5 uses
  %i.db = load i32, ptr %i.cw, align 4, !tbaa !41
  %i.dc = icmp eq i32 %i.db, 4
  %i.dd = xor i64 %i.m, -1
  %i.de = add i64 %i.r, %i.dd
  %i.df = and i64 %i.de, 4294967295               ; 2 uses
  %i.dg = mul nsw i64 %i.df, %i.cu
  %i.dh = shl i64 %i.dg, 2
  %i.di = shl nsw i64 %i.ab, 2                    ; 2 uses
  %i.dj = mul nsw i64 %i.df, %i.cv
  %i.dk = shl i64 %i.dj, 2
  %i.dl = insertelement <2 x float> <float -0.000000e+00, float poison>, float %i.cm, i64 1
  %i.dm = insertelement <2 x float> poison, float %i.cf, i64 1
  %min.iters.check = icmp ugt i32 %i.d, 27
  %ident.check.not = icmp eq i32 %i.f, 1
  %or.cond = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  %i.dn = shl nuw nsw i64 %i.da, 2
  %i.do = add nsw i64 %i.dn, -4                   ; 2 uses
  %i.dp = getelementptr i8, ptr %i.aw, i64 %i.dk
  %i.dq = getelementptr i8, ptr %i.dp, i64 %i.do
  %i.dr = getelementptr i8, ptr %i.dq, i64 %i.di
  %i.ds = getelementptr i8, ptr %i.dr, i64 4
  %i.dt = getelementptr i8, ptr %i.ak, i64 %i.dh
  %i.du = getelementptr i8, ptr %i.dt, i64 %i.do
  %i.dv = getelementptr i8, ptr %i.du, i64 %i.di
  %i.dw = getelementptr i8, ptr %i.dv, i64 4
  %bound0 = icmp ult ptr %i.ax, %i.dw
  %bound1 = icmp ult ptr %i.al, %i.ds
  %found.conflict = and i1 %bound0, %bound1
  %i.dx = or i32 %i.v, %i.y
  %i.dy = icmp slt i32 %i.dx, 0
  %i.dz = or i1 %found.conflict, %i.dy
  %n.vec = and i64 %i.da, 2147483640              ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.ch, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert210 = insertelement <4 x float> poison, float %i.cq, i64 0
  %broadcast.splat211 = shufflevector <4 x float> %broadcast.splatinsert210, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert212 = insertelement <4 x float> poison, float %i.ci, i64 0
  %broadcast.splat213 = shufflevector <4 x float> %broadcast.splatinsert212, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %i.da
  br label %.preheader169.us

.preheader169.us:                                 ; preds = %.critedge.us, %.preheader169.lr.ph.split.us
  %.0147182.us = phi i32 [ %i.n, %.preheader169.lr.ph.split.us ], [ %i.ih, %.critedge.us ]
  %.0148181.us = phi ptr [ %i.ax, %.preheader169.lr.ph.split.us ], [ %i.ig, %.critedge.us ] ; 3 uses
  %.0149180.us = phi ptr [ %i.au, %.preheader169.lr.ph.split.us ], [ %i.if, %.critedge.us ] ; 2 uses
  %.0150179.us = phi ptr [ %i.ar, %.preheader169.lr.ph.split.us ], [ %i.ie, %.critedge.us ] ; 2 uses
  %.0151178.us = phi ptr [ %i.ao, %.preheader169.lr.ph.split.us ], [ %i.id, %.critedge.us ] ; 2 uses
  %.0152177.us = phi ptr [ %i.al, %.preheader169.lr.ph.split.us ], [ %i.ic, %.critedge.us ] ; 3 uses
  %.0153176.us = phi ptr [ %i.ai, %.preheader169.lr.ph.split.us ], [ %i.ib, %.critedge.us ] ; 2 uses
  %.0154175.us = phi ptr [ %i.af, %.preheader169.lr.ph.split.us ], [ %i.ia, %.critedge.us ] ; 2 uses
  %.0155174.us = phi ptr [ %i.ac, %.preheader169.lr.ph.split.us ], [ %i.hz, %.critedge.us ] ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %.preheader169.us, %preserve_color.exit.thread.us
  %indvars.iv = phi i64 [ 0, %.preheader169.us ], [ %indvars.iv.next, %preserve_color.exit.thread.us ] ; 7 uses
  %i.ea = getelementptr inbounds [4 x i8], ptr %.0155174.us, i64 %indvars.iv
  %i.eb = load float, ptr %i.ea, align 4, !tbaa !47 ; 3 uses
  %i.ec = getelementptr inbounds [4 x i8], ptr %.0154175.us, i64 %indvars.iv
  %i.ed = load float, ptr %i.ec, align 4, !tbaa !47 ; 7 uses
  %i.ee = getelementptr inbounds [4 x i8], ptr %.0153176.us, i64 %indvars.iv
  %i.ef = load float, ptr %i.ee, align 4, !tbaa !47 ; 7 uses
  br i1 %i.ba, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.eg = load i32, ptr %i.ct, align 4, !tbaa !53
  %i.eh = sitofp nsz i32 %i.eg to float
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ei = phi nsz float [ %i.eh, %bb.f ], [ 1.000000e+00, %bb.e ] ; 2 uses
  %i.ej = fsub nsz float %i.eb, %i.cg
  %i.ek = insertelement <2 x float> <float 0.000000e+00, float poison>, float %i.ej, i64 1
  %i.el = insertelement <2 x float> %i.dm, float %i.eb, i64 0
  %i.em = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ek, <2 x float> %i.dl, <2 x float> %i.el) ; 10 uses
  %i.en = insertelement <2 x float> poison, float %i.ed, i64 0
  %i.eo = insertelement <2 x float> %i.en, float %i.ef, i64 1
  %i.ep = fsub nsz <2 x float> %i.eo, %i.cj
  %i.eq = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ep, <2 x float> %i.co, <2 x float> %i.ck) ; 15 uses
  %i.er = extractelement <2 x float> %i.em, i64 1 ; 3 uses
  switch i32 %i.cy, label %preserve_color.exit.thread.us [
    i32 1, label %bb.m
    i32 2, label %bb.l
    i32 3, label %bb.k
    i32 4, label %bb.j
    i32 5, label %bb.i
    i32 6, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g
  %i.es = insertelement <2 x float> %i.em, float %i.eb, i64 0
  %i.et = insertelement <2 x float> poison, float %i.ei, i64 0
  %i.eu = shufflevector <2 x float> %i.et, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.ev = fdiv nsz <2 x float> %i.es, %i.eu       ; 3 uses
  %i.ew = shufflevector <2 x float> %i.eq, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ex = insertelement <2 x float> %i.ew, float %i.ed, i64 0
  %i.ey = fdiv nsz <2 x float> %i.ex, %i.eu       ; 3 uses
  %i.ez = insertelement <2 x float> %i.eq, float %i.ef, i64 0
  %i.fa = fdiv nsz <2 x float> %i.ez, %i.eu       ; 3 uses
  %i.fb = fmul nsz <2 x float> %i.ev, %i.ev
  %i.fc = fmul nsz <2 x float> %i.ey, %i.ey
  %i.fd = fmul nsz <2 x float> %i.ey, %i.fc
  %i.fe = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fb, <2 x float> %i.ev, <2 x float> %i.fd)
  %i.ff = fmul nsz <2 x float> %i.fa, %i.fa
  %i.fg = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ff, <2 x float> %i.fa, <2 x float> %i.fe) ; 2 uses
  %i.fh = extractelement <2 x float> %i.fg, i64 0
  %i.fi = tail call nsz float @cbrtf(float noundef %i.fh) #9
  %i.fj = extractelement <2 x float> %i.fg, i64 1
  %i.fk = tail call nsz float @cbrtf(float noundef %i.fj) #9
  %i.fl = insertelement <2 x float> poison, float %i.fi, i64 0
  %i.fm = insertelement <2 x float> %i.fl, float %i.fk, i64 1
  br label %preserve_color.exit.us

bb.i:                                             ; preds = %bb.g
  %i.fn = insertelement <2 x float> poison, float %i.ei, i64 0
  %i.fo = shufflevector <2 x float> %i.fn, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.fp = fdiv nsz <2 x float> %i.em, %i.fo       ; 2 uses
  %i.fq = shufflevector <2 x float> %i.eq, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.fr = insertelement <2 x float> %i.fq, float %i.ed, i64 0
  %i.fs = fdiv nsz <2 x float> %i.fr, %i.fo       ; 2 uses
  %i.ft = insertelement <2 x float> %i.eq, float %i.ef, i64 0
  %i.fu = fdiv nsz <2 x float> %i.ft, %i.fo       ; 2 uses
  %i.fv = fmul nsz <2 x float> %i.fs, %i.fs
  %i.fw = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fp, <2 x float> %i.fp, <2 x float> %i.fv)
  %i.fx = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fu, <2 x float> %i.fu, <2 x float> %i.fw)
  %i.fy = tail call nsz <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.fx)
  br label %preserve_color.exit.us

bb.j:                                             ; preds = %bb.g
  %i.fz = shufflevector <2 x float> %i.eq, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ga = insertelement <2 x float> %i.fz, float %i.ed, i64 0
  %i.gb = fadd nsz <2 x float> %i.em, %i.ga
  %i.gc = insertelement <2 x float> %i.eq, float %i.ef, i64 0
  %i.gd = fadd nsz <2 x float> %i.gb, %i.gc
  br label %preserve_color.exit.us

bb.k:                                             ; preds = %bb.g
  %i.ge = shufflevector <2 x float> %i.eq, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.gf = insertelement <2 x float> %i.ge, float %i.ed, i64 0
  %i.gg = fadd nsz <2 x float> %i.em, %i.gf
  %i.gh = insertelement <2 x float> %i.eq, float %i.ef, i64 0
  %i.gi = fadd nsz <2 x float> %i.gg, %i.gh
  %i.gj = fadd nsz <2 x float> %i.gi, splat (float 1.000000e+00)
  %i.gk = fdiv nsz <2 x float> %i.gj, splat (float 3.000000e+00)
  br label %preserve_color.exit.us

bb.l:                                             ; preds = %bb.g
  %i.gl = shufflevector <2 x float> %i.eq, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.gm = insertelement <2 x float> %i.gl, float %i.ed, i64 0 ; 2 uses
  %i.gn = fcmp nsz ogt <2 x float> %i.em, %i.gm
  %i.go = select <2 x i1> %i.gn, <2 x float> %i.em, <2 x float> %i.gm ; 2 uses
  %i.gp = insertelement <2 x float> %i.eq, float %i.ef, i64 0 ; 2 uses
  %i.gq = fcmp nsz ogt <2 x float> %i.go, %i.gp
  %i.gr = select <2 x i1> %i.gq, <2 x float> %i.go, <2 x float> %i.gp
  br label %preserve_color.exit.us

bb.m:                                             ; preds = %bb.g
  %i.gs = shufflevector <2 x float> %i.eq, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.gt = insertelement <2 x float> %i.gs, float %i.ed, i64 0 ; 3 uses
  %i.gu = fcmp nsz ogt <2 x float> %i.em, %i.gt   ; 2 uses
  %i.gv = select <2 x i1> %i.gu, <2 x float> %i.em, <2 x float> %i.gt ; 2 uses
  %i.gw = insertelement <2 x float> %i.eq, float %i.ef, i64 0 ; 4 uses
  %i.gx = fcmp nsz ogt <2 x float> %i.gv, %i.gw
  %i.gy = select <2 x i1> %i.gx, <2 x float> %i.gv, <2 x float> %i.gw
  %i.gz = select <2 x i1> %i.gu, <2 x float> %i.gt, <2 x float> %i.em ; 2 uses
  %i.ha = fcmp nsz ogt <2 x float> %i.gz, %i.gw
  %i.hb = select <2 x i1> %i.ha, <2 x float> %i.gw, <2 x float> %i.gz
  %i.hc = fadd nsz <2 x float> %i.gy, %i.hb
  br label %preserve_color.exit.us

preserve_color.exit.us:                           ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h
  %i.hd = phi <2 x float> [ %i.fm, %bb.h ], [ %i.hc, %bb.m ], [ %i.gr, %bb.l ], [ %i.gk, %bb.k ], [ %i.gd, %bb.j ], [ %i.fy, %bb.i ] ; 2 uses
  %i.he = extractelement <2 x float> %i.hd, i64 1 ; 2 uses
  %i.hf = fcmp nsz ogt float %i.he, 0.000000e+00
  br i1 %i.hf, label %bb.n, label %preserve_color.exit.thread.us

bb.n:                                             ; preds = %preserve_color.exit.us
  %i.hg = extractelement <2 x float> %i.hd, i64 0
  %i.hh = fdiv nsz float %i.hg, %i.he             ; 2 uses
  %i.hi = fmul nsz float %i.er, %i.hh
  %i.hj = insertelement <2 x float> poison, float %i.hh, i64 0
  %i.hk = shufflevector <2 x float> %i.hj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hl = fmul nsz <2 x float> %i.eq, %i.hk
  br label %preserve_color.exit.thread.us

preserve_color.exit.thread.us:                    ; preds = %bb.n, %preserve_color.exit.us, %bb.g
  %.0145.us = phi nsz float [ %i.hi, %bb.n ], [ %i.er, %preserve_color.exit.us ], [ %i.er, %bb.g ]
  %i.hm = phi <2 x float> [ %i.hl, %bb.n ], [ %i.eq, %preserve_color.exit.us ], [ %i.eq, %bb.g ] ; 2 uses
  %i.hn = getelementptr inbounds [4 x i8], ptr %.0151178.us, i64 %indvars.iv
  store float %.0145.us, ptr %i.hn, align 4, !tbaa !47
  %i.ho = getelementptr inbounds [4 x i8], ptr %.0150179.us, i64 %indvars.iv
  %i.hp = extractelement <2 x float> %i.hm, i64 0
  store float %i.hp, ptr %i.ho, align 4, !tbaa !47
  %i.hq = getelementptr inbounds [4 x i8], ptr %.0149180.us, i64 %indvars.iv
  %i.hr = extractelement <2 x float> %i.hm, i64 1
  store float %i.hr, ptr %i.hq, align 4, !tbaa !47
  %indvars.iv.next = add nsw i64 %indvars.iv, %i.cz ; 2 uses
  %i.hs = icmp slt i64 %indvars.iv.next, %i.da
  br i1 %i.hs, label %bb.e, label %.lr.ph172.us, !llvm.loop !380

.lr.ph172.split.us:                               ; preds = %.lr.ph172.split.us.preheader215, %.lr.ph172.split.us
  %indvars.iv200 = phi i64 [ %indvars.iv.next201, %.lr.ph172.split.us ], [ %indvars.iv200.ph, %.lr.ph172.split.us.preheader215 ] ; 3 uses
  %i.ht = getelementptr inbounds [4 x i8], ptr %.0152177.us, i64 %indvars.iv200
  %i.hu = load float, ptr %i.ht, align 4, !tbaa !47
  %i.hv = fsub nsz float %i.hu, %i.ch
  %i.hw = tail call nsz float @llvm.fmuladd.f32(float %i.hv, float %i.cq, float %i.ci)
  %i.hx = getelementptr inbounds [4 x i8], ptr %.0148181.us, i64 %indvars.iv200
  store float %i.hw, ptr %i.hx, align 4, !tbaa !47
  %indvars.iv.next201 = add nsw i64 %indvars.iv200, %i.cz ; 2 uses
  %i.hy = icmp slt i64 %indvars.iv.next201, %i.da
  br i1 %i.hy, label %.lr.ph172.split.us, label %.critedge.us, !llvm.loop !381

.critedge.us:                                     ; preds = %.lr.ph172.split.us, %middle.block, %.lr.ph172.us
  %i.hz = getelementptr inbounds [4 x i8], ptr %.0155174.us, i64 %i.cu
  %i.ia = getelementptr inbounds [4 x i8], ptr %.0154175.us, i64 %i.cu
  %i.ib = getelementptr inbounds [4 x i8], ptr %.0153176.us, i64 %i.cu
  %i.ic = getelementptr inbounds [4 x i8], ptr %.0152177.us, i64 %i.cu
  %i.id = getelementptr inbounds [4 x i8], ptr %.0151178.us, i64 %i.cv
  %i.ie = getelementptr inbounds [4 x i8], ptr %.0150179.us, i64 %i.cv
  %i.if = getelementptr inbounds [4 x i8], ptr %.0149180.us, i64 %i.cv
  %i.ig = getelementptr inbounds [4 x i8], ptr %.0148181.us, i64 %i.cv
  %i.ih = add nsw i32 %.0147182.us, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.ih, %i.s
  br i1 %exitcond.not, label %._crit_edge, label %.preheader169.us, !llvm.loop !382

.lr.ph172.us:                                     ; preds = %preserve_color.exit.thread.us
  br i1 %i.dc, label %.lr.ph172.split.us.preheader, label %.critedge.us

.lr.ph172.split.us.preheader:                     ; preds = %.lr.ph172.us
  %or.cond.not = xor i1 %or.cond, true
  %brmerge = select i1 %or.cond.not, i1 true, i1 %i.dz
  br i1 %brmerge, label %.lr.ph172.split.us.preheader215, label %vector.body

vector.body:                                      ; preds = %.lr.ph172.split.us.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph172.split.us.preheader ] ; 3 uses
  %i.ii = getelementptr inbounds [4 x i8], ptr %.0152177.us, i64 %index ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 16
  %wide.load = load <4 x float>, ptr %i.ii, align 4, !tbaa !47, !alias.scope !387
  %wide.load214 = load <4 x float>, ptr %i.ij, align 4, !tbaa !47, !alias.scope !387
  %i.ik = fsub nsz <4 x float> %wide.load, %broadcast.splat
  %i.il = fsub nsz <4 x float> %wide.load214, %broadcast.splat
  %i.im = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ik, <4 x float> %broadcast.splat211, <4 x float> %broadcast.splat213)
  %i.in = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.il, <4 x float> %broadcast.splat211, <4 x float> %broadcast.splat213)
  %i.io = getelementptr inbounds [4 x i8], ptr %.0148181.us, i64 %index ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 16
  store <4 x float> %i.im, ptr %i.io, align 4, !tbaa !47, !alias.scope !388, !noalias !387
  store <4 x float> %i.in, ptr %i.ip, align 4, !tbaa !47, !alias.scope !388, !noalias !387
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.iq = icmp eq i64 %index.next, %n.vec
  br i1 %i.iq, label %middle.block, label %vector.body, !llvm.loop !386

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.critedge.us, label %.lr.ph172.split.us.preheader215

.lr.ph172.split.us.preheader215:                  ; preds = %.lr.ph172.split.us.preheader, %middle.block
  %indvars.iv200.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph172.split.us.preheader ]
  br label %.lr.ph172.split.us

._crit_edge:                                      ; preds = %.critedge.us, %.preheader169.lr.ph, %bb.d
  ret i32 0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(none)
declare float @cbrtf(float noundef) local_unnamed_addr #6

declare ptr @av_default_item_name(ptr noundef) #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.maxnum.v4f32(<4 x float>, <4 x float>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fmax.v4f32(<4 x float>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.minnum.v4f32(<4 x float>, <4 x float>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fmin.v4f32(<4 x float>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.umax.v4i32(<4 x i32>, <4 x i32>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.umax.v4i32(<4 x i32>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.umin.v4i32(<4 x i32>, <4 x i32>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.umin.v4i32(<4 x i32>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x float> @llvm.fmuladd.v16f32(<16 x float>, <16 x float>, <16 x float>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i32> @llvm.smax.v16i32(<16 x i32>, <16 x i32>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <16 x i32> @llvm.umin.v16i32(<16 x i32>, <16 x i32>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smax.v2i32(<2 x i32>, <2 x i32>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.sqrt.v2f32(<2 x float>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.fmuladd.v8f32(<8 x float>, <8 x float>, <8 x float>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.smax.v8i32(<8 x i32>, <8 x i32>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i32> @llvm.umin.v8i32(<8 x i32>, <8 x i32>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.umin.v2i32(<2 x i32>, <2 x i32>) #3

attributes #0 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nofree nounwind willreturn memory(read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(none) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }
attributes #8 = { nounwind willreturn memory(read) }
attributes #9 = { nounwind willreturn memory(none) }

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
end_hunk_0
