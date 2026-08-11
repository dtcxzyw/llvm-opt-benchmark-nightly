inline.NumInlined: 23
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 26
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 27
begin_hunk_0_@eaw_decompose_and_synthesize:bb.a
  %i.f = sext i32 %i.b to i64                     ; 5 uses
  %i.g = sub nsw i64 %8, %i.f
  %i.h = sub nsw i64 %7, %i.f                     ; 3 uses
  %i.i = sext i32 %i.a to i64                     ; 12 uses
  %i.j = add i64 %8, 4611686018427387903          ; 2 uses
  %i.k = shl i64 %7, 2                            ; 3 uses
  %i.l = fmul reassoc nsz arcp contract afn float %4, -1.140130e+07 ; 3 uses
  %.idx224 = shl nsw i64 %i.i, 4                  ; 5 uses
  %i.m = add i64 %i.k, -20
  %i.n = mul i64 %i.m, %i.i
  %i.o = add nsw i64 %7, -1                       ; 5 uses
  %i.p = shl nsw i64 %i.i, 1
  %i.q = insertelement <2 x float> poison, float %i.l, i64 0 ; 5 uses
  %i.r = shufflevector <2 x float> %i.q, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 poison>
  %i.s = shufflevector <2 x float> %i.q, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 poison>
  %i.t = shufflevector <2 x float> %i.q, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 poison>
  %i.u = shufflevector <2 x float> %i.q, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 poison>
  %i.v = shl nsw i64 %i.i, 1
  %i.w = shufflevector <2 x float> %i.q, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 poison>
  %i.x = insertelement <2 x float> poison, float %i.l, i64 0 ; 5 uses
  %i.y = shufflevector <2 x float> %i.x, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 poison>
  %i.z = shufflevector <2 x float> %i.x, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 poison>
  %i.aa = shufflevector <2 x float> %i.x, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 poison>
  %i.ab = shufflevector <2 x float> %i.x, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 poison>
  %i.ac = shufflevector <2 x float> %i.x, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 poison>
  %i.ad = shl nsw i64 %i.i, 1
  %i.ae = insertelement <2 x float> poison, float %i.l, i64 0 ; 5 uses
  %i.af = shufflevector <2 x float> %i.ae, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 poison>
  %i.ag = shufflevector <2 x float> %i.ae, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 poison>
  %i.ah = shufflevector <2 x float> %i.ae, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 poison>
  %i.ai = shufflevector <2 x float> %i.ae, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 poison>
  %i.aj = shl nsw i64 %i.i, 1
  %i.ak = shufflevector <2 x float> %i.ae, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 poison>
  br label %bb.b

._crit_edge304:                                   ; preds = %._crit_edge, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph303, %._crit_edge
  %.0187301 = phi i64 [ 0, %.lr.ph303 ], [ %i.yk, %._crit_edge ] ; 2 uses
  %i.al = trunc i64 %.0187301 to i32              ; 5 uses
  br i1 %.not.i, label %bb.c, label %dwt_interleave_rows.exit

bb.c:                                             ; preds = %bb.b
  %i.am = sdiv i32 %i.e, %i.a                     ; 4 uses
  %i.an = srem i32 %i.c, %i.a                     ; 3 uses
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ap = mul nsw i32 %i.an, %i.am                ; 2 uses
  %i.aq = icmp sgt i32 %i.ap, %i.al
  br i1 %i.aq, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ar = sdiv i32 %i.al, %i.am
  %i.as = srem i32 %i.al, %i.am
  %i.at = shl i32 %i.as, %3
  %i.au = add nsw i32 %i.at, %i.ar
  br label %dwt_interleave_rows.exit

bb.f:                                             ; preds = %bb.d
  %i.av = sub nsw i32 %i.al, %i.ap                ; 2 uses
  %i.aw = add nsw i32 %i.am, -1                   ; 2 uses
  %i.ax = sdiv i32 %i.av, %i.aw
  %i.ay = add nsw i32 %i.ax, %i.an
  %i.az = srem i32 %i.av, %i.aw
  %i.ba = shl i32 %i.az, %3
  %i.bb = add nsw i32 %i.ay, %i.ba
  br label %dwt_interleave_rows.exit

dwt_interleave_rows.exit:                         ; preds = %bb.b, %bb.e, %bb.f
  %.1.i = phi i32 [ %i.al, %bb.b ], [ %i.au, %bb.e ], [ %i.bb, %bb.f ] ; 2 uses
  %i.bc = sext i32 %.1.i to i64                   ; 5 uses
  %i.bd = shl nsw i64 %i.bc, 2
  %i.be = mul i64 %i.bd, %7                       ; 3 uses
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.be ; 3 uses
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.be ; 3 uses
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.be ; 3 uses
  %i.bi = icmp uge i32 %.1.i, %i.b
  %.not = icmp ugt i64 %i.g, %i.bc
  %or.cond = select i1 %i.bi, i1 %.not, i1 false
  %i.bj = select i1 %or.cond, i64 %i.f, i64 %i.h  ; 5 uses
  %.not306 = icmp eq i64 %i.bj, 0
  br i1 %.not306, label %.preheader272, label %.lr.ph

.lr.ph:                                           ; preds = %dwt_interleave_rows.exit
  %i.bk = load <4 x float>, ptr %5, align 4, !tbaa !11 ; 2 uses
  %i.bl = load <4 x float>, ptr %6, align 4, !tbaa !11
  br label %bb.g

.preheader272:                                    ; preds = %bb.h, %dwt_interleave_rows.exit
  %i.bm = icmp ult i64 %i.bj, %i.h
  br i1 %i.bm, label %.lr.ph289, label %.preheader271

.lr.ph289:                                        ; preds = %.preheader272
  %i.bn = sub nsw i64 %i.bc, %i.f
  %i.bo = mul i64 %i.bn, %7
  %i.bp = sub i64 %i.bo, %i.f
  %i.bq = load <4 x float>, ptr %5, align 4, !tbaa !11 ; 2 uses
  %i.br = load <4 x float>, ptr %6, align 4, !tbaa !11
  br label %bb.j

bb.g:                                             ; preds = %.lr.ph, %bb.h
  %.0190279 = phi i64 [ 0, %.lr.ph ], [ %i.cv, %bb.h ] ; 8 uses
  %.idx228 = shl i64 %.0190279, 4
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bf, i64 %.idx228 ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 4
  %i.bu = load <2 x float>, ptr %i.bs, align 4, !tbaa !11 ; 2 uses
  %i.bv = load float, ptr %i.bt, align 4, !tbaa !11 ; 5 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !11 ; 6 uses
  %i.by = sub i64 %.0190279, %i.p
  %spec.store.select = tail call i64 @llvm.smax.i64(i64 %i.by, i64 0)
  %.idx227 = shl nsw i64 %spec.store.select, 4
  %i.bz = extractelement <2 x float> %i.bu, i64 0 ; 5 uses
  %i.ca = sub i64 %.0190279, %i.i
  %spec.store.select.1 = tail call i64 @llvm.smax.i64(i64 %i.ca, i64 0)
  %.idx227.1 = shl nsw i64 %spec.store.select.1, 4
  %spec.store.select.2 = tail call i64 @llvm.smax.i64(i64 %.0190279, i64 0)
  %.idx227.2 = shl nsw i64 %spec.store.select.2, 4
  %i.cb = add i64 %.0190279, %i.i
  %spec.store.select.3 = tail call i64 @llvm.smax.i64(i64 %i.cb, i64 0)
  %.idx227.3 = shl nsw i64 %spec.store.select.3, 4
  %i.cc = add i64 %i.v, %.0190279
  %spec.store.select.4 = tail call i64 @llvm.smax.i64(i64 %i.cc, i64 0)
  %.idx227.4 = shl nsw i64 %spec.store.select.4, 4
  br label %bb.i

bb.h:                                             ; preds = %bb.i
  %i.cd = fdiv reassoc nsz arcp contract afn <4 x float> %i.iz, %i.ja ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bs, i64 12
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !11
  %i.cg = shl i64 %.0190279, 2                    ; 2 uses
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %i.cg
  store <4 x float> %i.cd, ptr %i.ch, align 16, !tbaa !13, !alias.scope !14, !nontemporal !17
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %i.cg ; 2 uses
  %i.cj = shufflevector <2 x float> %i.bu, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ck = insertelement <4 x float> %i.cj, float %i.bx, i64 2
  %i.cl = insertelement <4 x float> %i.ck, float %i.cf, i64 3
  %i.cm = fsub reassoc nsz arcp contract afn <4 x float> %i.cl, %i.cd ; 2 uses
  %i.cn = fsub reassoc nsz arcp contract afn <4 x float> %i.cm, %i.bk
  %i.co = fadd reassoc nsz arcp contract afn <4 x float> %i.bk, %i.cm
  %i.cp = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.co, <4 x float> zeroinitializer)
  %i.cq = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.cn, <4 x float> zeroinitializer)
  %i.cr = fadd reassoc nsz arcp contract afn <4 x float> %i.cq, %i.cp
  %i.cs = fmul reassoc nsz arcp contract afn <4 x float> %i.cr, %i.bl
  %i.ct = load <4 x float>, ptr %i.ci, align 4, !tbaa !11
  %i.cu = fadd reassoc nsz arcp contract afn <4 x float> %i.cs, %i.ct
  store <4 x float> %i.cu, ptr %i.ci, align 4, !tbaa !11
  %i.cv = add nuw i64 %.0190279, 1                ; 2 uses
  %exitcond314.not = icmp eq i64 %i.cv, %i.bj
  br i1 %exitcond314.not, label %.preheader272, label %bb.g

bb.i:                                             ; preds = %bb.g, %bb.i
  %.sroa.0411.3 = phi nsz <4 x float> [ zeroinitializer, %bb.g ], [ %i.iz, %bb.i ]
  %.0192277 = phi i64 [ 0, %bb.g ], [ %i.jb, %bb.i ] ; 6 uses
  %.0199276 = phi i64 [ 0, %bb.g ], [ %i.jc, %bb.i ] ; 2 uses
  %i.cw = phi <4 x float> [ zeroinitializer, %bb.g ], [ %i.ja, %bb.i ]
  %i.cx = add nsw i64 %.0199276, -2
  %i.cy = mul nsw i64 %i.cx, %i.i
  %i.cz = add nsw i64 %i.cy, %i.bc                ; 2 uses
  %.not226 = icmp slt i64 %i.cz, %8
  %i.da = tail call i64 @llvm.smax.i64(i64 %i.cz, i64 0)
  %i.db = select i1 %.not226, i64 %i.da, i64 %i.j
  %i.dc = mul i64 %i.k, %i.db
  %invariant.gep = getelementptr [4 x i8], ptr %1, i64 %i.dc ; 5 uses
  %gep = getelementptr i8, ptr %invariant.gep, i64 %.idx227 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %gep, i64 4
  %i.de = getelementptr inbounds nuw [4 x i8], ptr @eaw_dn_decompose.filter, i64 %.0192277
  %i.df = load <4 x float>, ptr %gep, align 4, !tbaa !11 ; 3 uses
  %i.dg = load float, ptr %i.dd, align 4, !tbaa !11
  %i.dh = fsub reassoc nsz arcp contract afn float %i.bv, %i.dg ; 2 uses
  %i.di = extractelement <4 x float> %i.df, i64 2
  %i.dj = fsub reassoc nsz arcp contract afn float %i.bx, %i.di ; 2 uses
  %i.dk = fmul reassoc nsz arcp contract afn float %i.dh, %i.dh
  %i.dl = fmul reassoc nsz arcp contract afn float %i.dj, %i.dj
  %i.dm = extractelement <4 x float> %i.df, i64 0
  %i.dn = fsub reassoc nsz arcp contract afn float %i.bz, %i.dm ; 2 uses
  %i.do = fadd reassoc nsz arcp contract afn float %i.dl, %i.dk
  %i.dp = fmul reassoc nsz arcp contract afn float %i.dn, %i.dn
  %i.dq = insertelement <2 x float> poison, float %i.dp, i64 0
  %i.dr = insertelement <2 x float> %i.dq, float %i.do, i64 1
  %i.ds = load float, ptr %i.de, align 4, !tbaa !11 ; 2 uses
  %i.dt = insertelement <2 x float> poison, float %i.ds, i64 0
  %i.du = shufflevector <2 x float> %i.dt, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 poison>
  %i.dv = shufflevector <2 x float> %i.dr, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 poison>
  %i.dw = fmul reassoc nsz arcp contract afn <4 x float> %i.dv, %i.r
  %i.dx = fptosi <4 x float> %i.dw to <4 x i32>
  %i.dy = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.dx, <4 x i32> <i32 -1065353216, i32 -1065353216, i32 -1065353216, i32 undef>)
  %i.dz = add nsw <4 x i32> %i.dy, <i32 1065353216, i32 1065353216, i32 1065353216, i32 undef>
  %i.ea = bitcast <4 x i32> %i.dz to <4 x float>
  %i.eb = fmul reassoc nsz arcp contract afn <4 x float> %i.du, %i.ea ; 2 uses
  %i.ec = insertelement <4 x float> %i.eb, float %i.ds, i64 3
  %i.ed = shufflevector <4 x float> %i.eb, <4 x float> %i.ec, <4 x i32> <i32 0, i32 1, i32 6, i32 7> ; 2 uses
  %i.ee = fmul reassoc nsz arcp contract afn <4 x float> %i.df, %i.ed
  %i.ef = fadd reassoc nsz arcp contract afn <4 x float> %.sroa.0411.3, %i.ee
  %i.eg = fadd reassoc nsz arcp contract afn <4 x float> %i.cw, %i.ed
  %gep.1 = getelementptr i8, ptr %invariant.gep, i64 %.idx227.1 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %gep.1, i64 4
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr @eaw_dn_decompose.filter, i64 %.0192277
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 4
  %i.ek = load <4 x float>, ptr %gep.1, align 4, !tbaa !11 ; 3 uses
  %i.el = load float, ptr %i.eh, align 4, !tbaa !11
  %i.em = fsub reassoc nsz arcp contract afn float %i.bv, %i.el ; 2 uses
  %i.en = extractelement <4 x float> %i.ek, i64 2
  %i.eo = fsub reassoc nsz arcp contract afn float %i.bx, %i.en ; 2 uses
  %i.ep = fmul reassoc nsz arcp contract afn float %i.em, %i.em
  %i.eq = fmul reassoc nsz arcp contract afn float %i.eo, %i.eo
  %i.er = extractelement <4 x float> %i.ek, i64 0
  %i.es = fsub reassoc nsz arcp contract afn float %i.bz, %i.er ; 2 uses
  %i.et = fadd reassoc nsz arcp contract afn float %i.eq, %i.ep
  %i.eu = fmul reassoc nsz arcp contract afn float %i.es, %i.es
  %i.ev = insertelement <2 x float> poison, float %i.eu, i64 0
  %i.ew = insertelement <2 x float> %i.ev, float %i.et, i64 1
  %i.ex = load float, ptr %i.ej, align 4, !tbaa !11 ; 2 uses
  %i.ey = insertelement <2 x float> poison, float %i.ex, i64 0
  %i.ez = shufflevector <2 x float> %i.ey, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 poison>
  %i.fa = shufflevector <2 x float> %i.ew, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 poison>
  %i.fb = fmul reassoc nsz arcp contract afn <4 x float> %i.fa, %i.s
  %i.fc = fptosi <4 x float> %i.fb to <4 x i32>
  %i.fd = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.fc, <4 x i32> <i32 -1065353216, i32 -1065353216, i32 -1065353216, i32 undef>)
  %i.fe = add nsw <4 x i32> %i.fd, <i32 1065353216, i32 1065353216, i32 1065353216, i32 undef>
  %i.ff = bitcast <4 x i32> %i.fe to <4 x float>
  %i.fg = fmul reassoc nsz arcp contract afn <4 x float> %i.ez, %i.ff ; 2 uses
  %i.fh = insertelement <4 x float> %i.fg, float %i.ex, i64 3
  %i.fi = shufflevector <4 x float> %i.fg, <4 x float> %i.fh, <4 x i32> <i32 0, i32 1, i32 6, i32 7> ; 2 uses
  %i.fj = fmul reassoc nsz arcp contract afn <4 x float> %i.ek, %i.fi
  %i.fk = fadd reassoc nsz arcp contract afn <4 x float> %i.ef, %i.fj
  %i.fl = fadd reassoc nsz arcp contract afn <4 x float> %i.eg, %i.fi
  %gep.2 = getelementptr i8, ptr %invariant.gep, i64 %.idx227.2 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %gep.2, i64 4
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr @eaw_dn_decompose.filter, i64 %.0192277
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 8
  %i.fp = load <4 x float>, ptr %gep.2, align 4, !tbaa !11 ; 3 uses
  %i.fq = load float, ptr %i.fm, align 4, !tbaa !11
  %i.fr = fsub reassoc nsz arcp contract afn float %i.bv, %i.fq ; 2 uses
  %i.fs = extractelement <4 x float> %i.fp, i64 2
  %i.ft = fsub reassoc nsz arcp contract afn float %i.bx, %i.fs ; 2 uses
  %i.fu = fmul reassoc nsz arcp contract afn float %i.fr, %i.fr
  %i.fv = fmul reassoc nsz arcp contract afn float %i.ft, %i.ft
  %i.fw = extractelement <4 x float> %i.fp, i64 0
  %i.fx = fsub reassoc nsz arcp contract afn float %i.bz, %i.fw ; 2 uses
  %i.fy = fadd reassoc nsz arcp contract afn float %i.fv, %i.fu
  %i.fz = fmul reassoc nsz arcp contract afn float %i.fx, %i.fx
  %i.ga = insertelement <2 x float> poison, float %i.fz, i64 0
  %i.gb = insertelement <2 x float> %i.ga, float %i.fy, i64 1
  %i.gc = load float, ptr %i.fo, align 4, !tbaa !11 ; 2 uses
  %i.gd = insertelement <2 x float> poison, float %i.gc, i64 0
  %i.ge = shufflevector <2 x float> %i.gd, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 poison>
  %i.gf = shufflevector <2 x float> %i.gb, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 poison>
  %i.gg = fmul reassoc nsz arcp contract afn <4 x float> %i.gf, %i.t
  %i.gh = fptosi <4 x float> %i.gg to <4 x i32>
  %i.gi = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.gh, <4 x i32> <i32 -1065353216, i32 -1065353216, i32 -1065353216, i32 undef>)
  %i.gj = add nsw <4 x i32> %i.gi, <i32 1065353216, i32 1065353216, i32 1065353216, i32 undef>
  %i.gk = bitcast <4 x i32> %i.gj to <4 x float>
  %i.gl = fmul reassoc nsz arcp contract afn <4 x float> %i.ge, %i.gk ; 2 uses
  %i.gm = insertelement <4 x float> %i.gl, float %i.gc, i64 3
  %i.gn = shufflevector <4 x float> %i.gl, <4 x float> %i.gm, <4 x i32> <i32 0, i32 1, i32 6, i32 7> ; 2 uses
  %i.go = fmul reassoc nsz arcp contract afn <4 x float> %i.fp, %i.gn
  %i.gp = fadd reassoc nsz arcp contract afn <4 x float> %i.fk, %i.go
  %i.gq = fadd reassoc nsz arcp contract afn <4 x float> %i.fl, %i.gn
  %gep.3 = getelementptr i8, ptr %invariant.gep, i64 %.idx227.3 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %gep.3, i64 4
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr @eaw_dn_decompose.filter, i64 %.0192277
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 12
  %i.gu = load <4 x float>, ptr %gep.3, align 4, !tbaa !11 ; 3 uses
  %i.gv = load float, ptr %i.gr, align 4, !tbaa !11
  %i.gw = fsub reassoc nsz arcp contract afn float %i.bv, %i.gv ; 2 uses
  %i.gx = extractelement <4 x float> %i.gu, i64 2
  %i.gy = fsub reassoc nsz arcp contract afn float %i.bx, %i.gx ; 2 uses
  %i.gz = fmul reassoc nsz arcp contract afn float %i.gw, %i.gw
  %i.ha = fmul reassoc nsz arcp contract afn float %i.gy, %i.gy
  %i.hb = extractelement <4 x float> %i.gu, i64 0
  %i.hc = fsub reassoc nsz arcp contract afn float %i.bz, %i.hb ; 2 uses
  %i.hd = fadd reassoc nsz arcp contract afn float %i.ha, %i.gz
  %i.he = fmul reassoc nsz arcp contract afn float %i.hc, %i.hc
  %i.hf = insertelement <2 x float> poison, float %i.he, i64 0
  %i.hg = insertelement <2 x float> %i.hf, float %i.hd, i64 1
  %i.hh = load float, ptr %i.gt, align 4, !tbaa !11 ; 2 uses
  %i.hi = insertelement <2 x float> poison, float %i.hh, i64 0
  %i.hj = shufflevector <2 x float> %i.hi, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 poison>
  %i.hk = shufflevector <2 x float> %i.hg, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 poison>
  %i.hl = fmul reassoc nsz arcp contract afn <4 x float> %i.hk, %i.u
  %i.hm = fptosi <4 x float> %i.hl to <4 x i32>
  %i.hn = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.hm, <4 x i32> <i32 -1065353216, i32 -1065353216, i32 -1065353216, i32 undef>)
  %i.ho = add nsw <4 x i32> %i.hn, <i32 1065353216, i32 1065353216, i32 1065353216, i32 undef>
  %i.hp = bitcast <4 x i32> %i.ho to <4 x float>
  %i.hq = fmul reassoc nsz arcp contract afn <4 x float> %i.hj, %i.hp ; 2 uses
  %i.hr = insertelement <4 x float> %i.hq, float %i.hh, i64 3
  %i.hs = shufflevector <4 x float> %i.hq, <4 x float> %i.hr, <4 x i32> <i32 0, i32 1, i32 6, i32 7> ; 2 uses
  %i.ht = fmul reassoc nsz arcp contract afn <4 x float> %i.gu, %i.hs
  %i.hu = fadd reassoc nsz arcp contract afn <4 x float> %i.gp, %i.ht
  %i.hv = fadd reassoc nsz arcp contract afn <4 x float> %i.gq, %i.hs
  %gep.4 = getelementptr i8, ptr %invariant.gep, i64 %.idx227.4 ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %gep.4, i64 4
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr @eaw_dn_decompose.filter, i64 %.0192277
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 16
  %i.hz = load <4 x float>, ptr %gep.4, align 4, !tbaa !11 ; 3 uses
  %i.ia = load float, ptr %i.hw, align 4, !tbaa !11
  %i.ib = fsub reassoc nsz arcp contract afn float %i.bv, %i.ia ; 2 uses
  %i.ic = extractelement <4 x float> %i.hz, i64 2
  %i.id = fsub reassoc nsz arcp contract afn float %i.bx, %i.ic ; 2 uses
  %i.ie = fmul reassoc nsz arcp contract afn float %i.ib, %i.ib
  %i.if = fmul reassoc nsz arcp contract afn float %i.id, %i.id
  %i.ig = extractelement <4 x float> %i.hz, i64 0
  %i.ih = fsub reassoc nsz arcp contract afn float %i.bz, %i.ig ; 2 uses
  %i.ii = fadd reassoc nsz arcp contract afn float %i.if, %i.ie
  %i.ij = fmul reassoc nsz arcp contract afn float %i.ih, %i.ih
  %i.ik = insertelement <2 x float> poison, float %i.ij, i64 0
  %i.il = insertelement <2 x float> %i.ik, float %i.ii, i64 1
  %i.im = load float, ptr %i.hy, align 4, !tbaa !11 ; 2 uses
  %i.in = insertelement <2 x float> poison, float %i.im, i64 0
  %i.io = shufflevector <2 x float> %i.in, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 poison>
  %i.ip = shufflevector <2 x float> %i.il, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 poison>
  %i.iq = fmul reassoc nsz arcp contract afn <4 x float> %i.ip, %i.w
  %i.ir = fptosi <4 x float> %i.iq to <4 x i32>
  %i.is = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.ir, <4 x i32> <i32 -1065353216, i32 -1065353216, i32 -1065353216, i32 undef>)
  %i.it = add nsw <4 x i32> %i.is, <i32 1065353216, i32 1065353216, i32 1065353216, i32 undef>
  %i.iu = bitcast <4 x i32> %i.it to <4 x float>
  %i.iv = fmul reassoc nsz arcp contract afn <4 x float> %i.io, %i.iu ; 2 uses
  %i.iw = insertelement <4 x float> %i.iv, float %i.im, i64 3
  %i.ix = shufflevector <4 x float> %i.iv, <4 x float> %i.iw, <4 x i32> <i32 0, i32 1, i32 6, i32 7> ; 2 uses
  %i.iy = fmul reassoc nsz arcp contract afn <4 x float> %i.hz, %i.ix
  %i.iz = fadd reassoc nsz arcp contract afn <4 x float> %i.hu, %i.iy ; 2 uses
  %i.ja = fadd reassoc nsz arcp contract afn <4 x float> %i.hv, %i.ix ; 2 uses
  %i.jb = add nuw nsw i64 %.0192277, 5
  %i.jc = add nuw nsw i64 %.0199276, 1            ; 2 uses
  %exitcond312.not = icmp eq i64 %i.jc, 5
  br i1 %exitcond312.not, label %bb.h, label %bb.i

.preheader271:                                    ; preds = %bb.k, %.preheader272
  %.1191.lcssa = phi i64 [ %i.bj, %.preheader272 ], [ %i.qn, %bb.k ] ; 2 uses
  %i.jd = icmp ult i64 %.1191.lcssa, %7
  br i1 %i.jd, label %.lr.ph300, label %._crit_edge

.lr.ph300:                                        ; preds = %.preheader271
  %i.je = load <4 x float>, ptr %5, align 4, !tbaa !11 ; 2 uses
  %i.jf = load <4 x float>, ptr %6, align 4, !tbaa !11
  br label %bb.l

bb.j:                                             ; preds = %.lr.ph289, %bb.k
  %.1191288 = phi i64 [ %i.bj, %.lr.ph289 ], [ %i.qn, %bb.k ] ; 4 uses
  %i.jg = add i64 %i.bp, %.1191288
  %.idx221 = shl i64 %i.jg, 4
  %i.jh = getelementptr inbounds nuw i8, ptr %1, i64 %.idx221
  %.idx223 = shl i64 %.1191288, 4
  %i.ji = getelementptr inbounds nuw i8, ptr %i.bf, i64 %.idx223 ; 4 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 4
  %i.jk = load <2 x float>, ptr %i.ji, align 4, !tbaa !11 ; 2 uses
  %i.jl = load float, ptr %i.jj, align 4, !tbaa !11 ; 5 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %i.ji, i64 8
  %i.jn = load float, ptr %i.jm, align 4, !tbaa !11 ; 6 uses
  %i.jo = extractelement <2 x float> %i.jk, i64 0 ; 5 uses
  br label %.preheader

.preheader:                                       ; preds = %bb.j, %.preheader
  %.sroa.0373.3 = phi nsz <4 x float> [ zeroinitializer, %bb.j ], [ %i.pq, %.preheader ]
  %indvars.iv = phi i64 [ 5, %bb.j ], [ %i.pu, %.preheader ] ; 2 uses
  %.0188286 = phi ptr [ %i.jh, %bb.j ], [ %i.pt, %.preheader ] ; 3 uses
  %.0201285 = phi i64 [ 0, %bb.j ], [ %9, %.preheader ]
  %.0202284 = phi i64 [ 0, %bb.j ], [ %indvars.iv, %.preheader ] ; 5 uses
  %i.jp = phi <4 x float> [ zeroinitializer, %bb.j ], [ %i.pr, %.preheader ]
  %i.jq = getelementptr inbounds nuw i8, ptr %.0188286, i64 4
  %i.jr = getelementptr inbounds nuw [4 x i8], ptr @eaw_dn_decompose.filter, i64 %.0202284
  %i.js = load <4 x float>, ptr %.0188286, align 4, !tbaa !11 ; 3 uses
  %i.jt = load float, ptr %i.jq, align 4, !tbaa !11
  %i.ju = fsub reassoc nsz arcp contract afn float %i.jl, %i.jt ; 2 uses
  %i.jv = extractelement <4 x float> %i.js, i64 2
  %i.jw = fsub reassoc nsz arcp contract afn float %i.jn, %i.jv ; 2 uses
  %i.jx = fmul reassoc nsz arcp contract afn float %i.ju, %i.ju
  %i.jy = fmul reassoc nsz arcp contract afn float %i.jw, %i.jw
  %i.jz = extractelement <4 x float> %i.js, i64 0
  %i.ka = fsub reassoc nsz arcp contract afn float %i.jo, %i.jz ; 2 uses
  %i.kb = fadd reassoc nsz arcp contract afn float %i.jy, %i.jx
  %i.kc = fmul reassoc nsz arcp contract afn float %i.ka, %i.ka
  %i.kd = insertelement <2 x float> poison, float %i.kc, i64 0
  %i.ke = insertelement <2 x float> %i.kd, float %i.kb, i64 1
  %i.kf = load float, ptr %i.jr, align 4, !tbaa !11 ; 2 uses
  %i.kg = insertelement <2 x float> poison, float %i.kf, i64 0
  %i.kh = shufflevector <2 x float> %i.kg, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 poison>
  %i.ki = shufflevector <2 x float> %i.ke, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 poison>
  %i.kj = fmul reassoc nsz arcp contract afn <4 x float> %i.ki, %i.y
  %i.kk = fptosi <4 x float> %i.kj to <4 x i32>
  %i.kl = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.kk, <4 x i32> <i32 -1065353216, i32 -1065353216, i32 -1065353216, i32 undef>)
  %i.km = add nsw <4 x i32> %i.kl, <i32 1065353216, i32 1065353216, i32 1065353216, i32 undef>
  %i.kn = bitcast <4 x i32> %i.km to <4 x float>
  %i.ko = fmul reassoc nsz arcp contract afn <4 x float> %i.kh, %i.kn ; 2 uses
  %i.kp = insertelement <4 x float> %i.ko, float %i.kf, i64 3
  %i.kq = shufflevector <4 x float> %i.ko, <4 x float> %i.kp, <4 x i32> <i32 0, i32 1, i32 6, i32 7> ; 2 uses
  %i.kr = fmul reassoc nsz arcp contract afn <4 x float> %i.js, %i.kq
  %i.ks = fadd reassoc nsz arcp contract afn <4 x float> %.sroa.0373.3, %i.kr
  %i.kt = fadd reassoc nsz arcp contract afn <4 x float> %i.jp, %i.kq
  %i.ku = getelementptr inbounds nuw i8, ptr %.0188286, i64 %.idx224 ; 3 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 4
  %i.kw = getelementptr inbounds nuw [4 x i8], ptr @eaw_dn_decompose.filter, i64 %.0202284
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 4
  %i.ky = load <4 x float>, ptr %i.ku, align 4, !tbaa !11 ; 3 uses
  %i.kz = load float, ptr %i.kv, align 4, !tbaa !11
  %i.la = fsub reassoc nsz arcp contract afn float %i.jl, %i.kz ; 2 uses
  %i.lb = extractelement <4 x float> %i.ky, i64 2
  %i.lc = fsub reassoc nsz arcp contract afn float %i.jn, %i.lb ; 2 uses
  %i.ld = fmul reassoc nsz arcp contract afn float %i.la, %i.la
  %i.le = fmul reassoc nsz arcp contract afn float %i.lc, %i.lc
  %i.lf = extractelement <4 x float> %i.ky, i64 0
  %i.lg = fsub reassoc nsz arcp contract afn float %i.jo, %i.lf ; 2 uses
  %i.lh = fadd reassoc nsz arcp contract afn float %i.le, %i.ld
  %i.li = fmul reassoc nsz arcp contract afn float %i.lg, %i.lg
  %i.lj = insertelement <2 x float> poison, float %i.li, i64 0
  %i.lk = insertelement <2 x float> %i.lj, float %i.lh, i64 1
  %i.ll = load float, ptr %i.kx, align 4, !tbaa !11 ; 2 uses
  %i.lm = insertelement <2 x float> poison, float %i.ll, i64 0
  %i.ln = shufflevector <2 x float> %i.lm, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 poison>
  %i.lo = shufflevector <2 x float> %i.lk, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 poison>
  %i.lp = fmul reassoc nsz arcp contract afn <4 x float> %i.lo, %i.z
  %i.lq = fptosi <4 x float> %i.lp to <4 x i32>
  %i.lr = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.lq, <4 x i32> <i32 -1065353216, i32 -1065353216, i32 -1065353216, i32 undef>)
  %i.ls = add nsw <4 x i32> %i.lr, <i32 1065353216, i32 1065353216, i32 1065353216, i32 undef>
  %i.lt = bitcast <4 x i32> %i.ls to <4 x float>
  %i.lu = fmul reassoc nsz arcp contract afn <4 x float> %i.ln, %i.lt ; 2 uses
  %i.lv = insertelement <4 x float> %i.lu, float %i.ll, i64 3
  %i.lw = shufflevector <4 x float> %i.lu, <4 x float> %i.lv, <4 x i32> <i32 0, i32 1, i32 6, i32 7> ; 2 uses
  %i.lx = fmul reassoc nsz arcp contract afn <4 x float> %i.ky, %i.lw
  %i.ly = fadd reassoc nsz arcp contract afn <4 x float> %i.ks, %i.lx
  %i.lz = fadd reassoc nsz arcp contract afn <4 x float> %i.kt, %i.lw
  %i.ma = getelementptr inbounds nuw i8, ptr %i.ku, i64 %.idx224 ; 3 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 4
  %i.mc = getelementptr inbounds nuw [4 x i8], ptr @eaw_dn_decompose.filter, i64 %.0202284
  %i.md = getelementptr inbounds nuw i8, ptr %i.mc, i64 8
  %i.me = load <4 x float>, ptr %i.ma, align 4, !tbaa !11 ; 3 uses
  %i.mf = load float, ptr %i.mb, align 4, !tbaa !11
  %i.mg = fsub reassoc nsz arcp contract afn float %i.jl, %i.mf ; 2 uses
  %i.mh = extractelement <4 x float> %i.me, i64 2
  %i.mi = fsub reassoc nsz arcp contract afn float %i.jn, %i.mh ; 2 uses
  %i.mj = fmul reassoc nsz arcp contract afn float %i.mg, %i.mg
  %i.mk = fmul reassoc nsz arcp contract afn float %i.mi, %i.mi
  %i.ml = extractelement <4 x float> %i.me, i64 0
  %i.mm = fsub reassoc nsz arcp contract afn float %i.jo, %i.ml ; 2 uses
  %i.mn = fadd reassoc nsz arcp contract afn float %i.mk, %i.mj
  %i.mo = fmul reassoc nsz arcp contract afn float %i.mm, %i.mm
  %i.mp = insertelement <2 x float> poison, float %i.mo, i64 0
  %i.mq = insertelement <2 x float> %i.mp, float %i.mn, i64 1
  %i.mr = load float, ptr %i.md, align 4, !tbaa !11 ; 2 uses
  %i.ms = insertelement <2 x float> poison, float %i.mr, i64 0
  %i.mt = shufflevector <2 x float> %i.ms, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 poison>
  %i.mu = shufflevector <2 x float> %i.mq, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 poison>
  %i.mv = fmul reassoc nsz arcp contract afn <4 x float> %i.mu, %i.aa
  %i.mw = fptosi <4 x float> %i.mv to <4 x i32>
  %i.mx = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.mw, <4 x i32> <i32 -1065353216, i32 -1065353216, i32 -1065353216, i32 undef>)
  %i.my = add nsw <4 x i32> %i.mx, <i32 1065353216, i32 1065353216, i32 1065353216, i32 undef>
  %i.mz = bitcast <4 x i32> %i.my to <4 x float>
  %i.na = fmul reassoc nsz arcp contract afn <4 x float> %i.mt, %i.mz ; 2 uses
  %i.nb = insertelement <4 x float> %i.na, float %i.mr, i64 3
  %i.nc = shufflevector <4 x float> %i.na, <4 x float> %i.nb, <4 x i32> <i32 0, i32 1, i32 6, i32 7> ; 2 uses
  %i.nd = fmul reassoc nsz arcp contract afn <4 x float> %i.me, %i.nc
  %i.ne = fadd reassoc nsz arcp contract afn <4 x float> %i.ly, %i.nd
  %i.nf = fadd reassoc nsz arcp contract afn <4 x float> %i.lz, %i.nc
  %i.ng = getelementptr inbounds nuw i8, ptr %i.ma, i64 %.idx224 ; 3 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ng, i64 4
  %i.ni = getelementptr inbounds nuw [4 x i8], ptr @eaw_dn_decompose.filter, i64 %.0202284
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ni, i64 12
  %i.nk = load <4 x float>, ptr %i.ng, align 4, !tbaa !11 ; 3 uses
  %i.nl = load float, ptr %i.nh, align 4, !tbaa !11
  %i.nm = fsub reassoc nsz arcp contract afn float %i.jl, %i.nl ; 2 uses
  %i.nn = extractelement <4 x float> %i.nk, i64 2
  %i.no = fsub reassoc nsz arcp contract afn float %i.jn, %i.nn ; 2 uses
  %i.np = fmul reassoc nsz arcp contract afn float %i.nm, %i.nm
  %i.nq = fmul reassoc nsz arcp contract afn float %i.no, %i.no
  %i.nr = extractelement <4 x float> %i.nk, i64 0
  %i.ns = fsub reassoc nsz arcp contract afn float %i.jo, %i.nr ; 2 uses
  %i.nt = fadd reassoc nsz arcp contract afn float %i.nq, %i.np
  %i.nu = fmul reassoc nsz arcp contract afn float %i.ns, %i.ns
  %i.nv = insertelement <2 x float> poison, float %i.nu, i64 0
  %i.nw = insertelement <2 x float> %i.nv, float %i.nt, i64 1
  %i.nx = load float, ptr %i.nj, align 4, !tbaa !11 ; 2 uses
  %i.ny = insertelement <2 x float> poison, float %i.nx, i64 0
  %i.nz = shufflevector <2 x float> %i.ny, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 poison>
  %i.oa = shufflevector <2 x float> %i.nw, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 poison>
  %i.ob = fmul reassoc nsz arcp contract afn <4 x float> %i.oa, %i.ab
  %i.oc = fptosi <4 x float> %i.ob to <4 x i32>
  %i.od = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.oc, <4 x i32> <i32 -1065353216, i32 -1065353216, i32 -1065353216, i32 undef>)
  %i.oe = add nsw <4 x i32> %i.od, <i32 1065353216, i32 1065353216, i32 1065353216, i32 undef>
  %i.of = bitcast <4 x i32> %i.oe to <4 x float>
  %i.og = fmul reassoc nsz arcp contract afn <4 x float> %i.nz, %i.of ; 2 uses
  %i.oh = insertelement <4 x float> %i.og, float %i.nx, i64 3
  %i.oi = shufflevector <4 x float> %i.og, <4 x float> %i.oh, <4 x i32> <i32 0, i32 1, i32 6, i32 7> ; 2 uses
  %i.oj = fmul reassoc nsz arcp contract afn <4 x float> %i.nk, %i.oi
  %i.ok = fadd reassoc nsz arcp contract afn <4 x float> %i.ne, %i.oj
  %i.ol = fadd reassoc nsz arcp contract afn <4 x float> %i.nf, %i.oi
  %i.om = getelementptr inbounds nuw i8, ptr %i.ng, i64 %.idx224 ; 3 uses
  %i.on = getelementptr inbounds nuw i8, ptr %i.om, i64 4
  %i.oo = getelementptr inbounds nuw [4 x i8], ptr @eaw_dn_decompose.filter, i64 %.0202284
  %i.op = getelementptr inbounds nuw i8, ptr %i.oo, i64 16
  %i.oq = load <4 x float>, ptr %i.om, align 4, !tbaa !11 ; 3 uses
  %i.or = load float, ptr %i.on, align 4, !tbaa !11
  %i.os = fsub reassoc nsz arcp contract afn float %i.jl, %i.or ; 2 uses
  %i.ot = extractelement <4 x float> %i.oq, i64 2
  %i.ou = fsub reassoc nsz arcp contract afn float %i.jn, %i.ot ; 2 uses
  %i.ov = fmul reassoc nsz arcp contract afn float %i.os, %i.os
  %i.ow = fmul reassoc nsz arcp contract afn float %i.ou, %i.ou
  %i.ox = extractelement <4 x float> %i.oq, i64 0
  %i.oy = fsub reassoc nsz arcp contract afn float %i.jo, %i.ox ; 2 uses
  %i.oz = fadd reassoc nsz arcp contract afn float %i.ow, %i.ov
  %i.pa = fmul reassoc nsz arcp contract afn float %i.oy, %i.oy
  %i.pb = insertelement <2 x float> poison, float %i.pa, i64 0
  %i.pc = insertelement <2 x float> %i.pb, float %i.oz, i64 1
  %i.pd = load float, ptr %i.op, align 4, !tbaa !11 ; 2 uses
  %i.pe = insertelement <2 x float> poison, float %i.pd, i64 0
  %i.pf = shufflevector <2 x float> %i.pe, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 poison>
  %i.pg = shufflevector <2 x float> %i.pc, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 poison>
  %i.ph = fmul reassoc nsz arcp contract afn <4 x float> %i.pg, %i.ac
  %i.pi = fptosi <4 x float> %i.ph to <4 x i32>
  %i.pj = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.pi, <4 x i32> <i32 -1065353216, i32 -1065353216, i32 -1065353216, i32 undef>)
  %i.pk = add nsw <4 x i32> %i.pj, <i32 1065353216, i32 1065353216, i32 1065353216, i32 undef>
  %i.pl = bitcast <4 x i32> %i.pk to <4 x float>
  %i.pm = fmul reassoc nsz arcp contract afn <4 x float> %i.pf, %i.pl ; 2 uses
  %i.pn = insertelement <4 x float> %i.pm, float %i.pd, i64 3
  %i.po = shufflevector <4 x float> %i.pm, <4 x float> %i.pn, <4 x i32> <i32 0, i32 1, i32 6, i32 7> ; 2 uses
  %i.pp = fmul reassoc nsz arcp contract afn <4 x float> %i.oq, %i.po
  %i.pq = fadd reassoc nsz arcp contract afn <4 x float> %i.ok, %i.pp ; 2 uses
  %i.pr = fadd reassoc nsz arcp contract afn <4 x float> %i.ol, %i.po ; 2 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %i.om, i64 %.idx224
  %i.pt = getelementptr inbounds nuw [4 x i8], ptr %i.ps, i64 %i.n
  %9 = add nuw nsw i64 %.0201285, 1               ; 2 uses
  %i.pu = add nuw nsw i64 %indvars.iv, 5
  %exitcond317.not = icmp eq i64 %9, 5
  br i1 %exitcond317.not, label %bb.k, label %.preheader

bb.k:                                             ; preds = %.preheader
  %i.pv = fdiv reassoc nsz arcp contract afn <4 x float> %i.pq, %i.pr ; 2 uses
  %i.pw = getelementptr inbounds nuw i8, ptr %i.ji, i64 12
  %i.px = load float, ptr %i.pw, align 4, !tbaa !11
  %i.py = shl i64 %.1191288, 2                    ; 2 uses
  %i.pz = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %i.py
  store <4 x float> %i.pv, ptr %i.pz, align 16, !tbaa !13, !alias.scope !18, !nontemporal !17
  %i.qa = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %i.py ; 2 uses
  %i.qb = shufflevector <2 x float> %i.jk, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.qc = insertelement <4 x float> %i.qb, float %i.jn, i64 2
  %i.qd = insertelement <4 x float> %i.qc, float %i.px, i64 3
  %i.qe = fsub reassoc nsz arcp contract afn <4 x float> %i.qd, %i.pv ; 2 uses
  %i.qf = fsub reassoc nsz arcp contract afn <4 x float> %i.qe, %i.bq
  %i.qg = fadd reassoc nsz arcp contract afn <4 x float> %i.bq, %i.qe
  %i.qh = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.qg, <4 x float> zeroinitializer)
  %i.qi = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.qf, <4 x float> zeroinitializer)
  %i.qj = fadd reassoc nsz arcp contract afn <4 x float> %i.qi, %i.qh
  %i.qk = fmul reassoc nsz arcp contract afn <4 x float> %i.qj, %i.br
  %i.ql = load <4 x float>, ptr %i.qa, align 4, !tbaa !11
  %i.qm = fadd reassoc nsz arcp contract afn <4 x float> %i.qk, %i.ql
  store <4 x float> %i.qm, ptr %i.qa, align 4, !tbaa !11
  %i.qn = add nuw i64 %.1191288, 1                ; 3 uses
  %i.qo = icmp ult i64 %i.qn, %i.h
  br i1 %i.qo, label %bb.j, label %.preheader271

bb.l:                                             ; preds = %.lr.ph300, %bb.m
  %.2299 = phi i64 [ %.1191.lcssa, %.lr.ph300 ], [ %i.sc, %bb.m ] ; 9 uses
  %.idx220 = shl i64 %.2299, 4
  %i.qp = getelementptr inbounds nuw i8, ptr %i.bf, i64 %.idx220 ; 4 uses
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qp, i64 4
  %i.qr = load <2 x float>, ptr %i.qp, align 4, !tbaa !11 ; 2 uses
  %i.qs = load float, ptr %i.qq, align 4, !tbaa !11 ; 5 uses
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qp, i64 8
  %i.qu = load float, ptr %i.qt, align 4, !tbaa !11 ; 6 uses
  %i.qv = sub i64 %.2299, %i.ad                   ; 2 uses
  %.not218 = icmp slt i64 %i.qv, %7
  %i.qw = tail call i64 @llvm.smax.i64(i64 %i.qv, i64 0)
  %i.qx = select i1 %.not218, i64 %i.qw, i64 %i.o
  %.idx219 = shl nsw i64 %i.qx, 4
  %i.qy = extractelement <2 x float> %i.qr, i64 0 ; 5 uses
  %i.qz = sub i64 %.2299, %i.i                    ; 2 uses
  %.not218.1 = icmp slt i64 %i.qz, %7
  %i.ra = tail call i64 @llvm.smax.i64(i64 %i.qz, i64 0)
  %i.rb = select i1 %.not218.1, i64 %i.ra, i64 %i.o
  %.idx219.1 = shl nsw i64 %i.rb, 4
  %.not218.2 = icmp slt i64 %.2299, %7
  %i.rc = tail call i64 @llvm.smax.i64(i64 %.2299, i64 0)
  %i.rd = select i1 %.not218.2, i64 %i.rc, i64 %i.o
  %.idx219.2 = shl nsw i64 %i.rd, 4
  %i.re = add i64 %.2299, %i.i                    ; 2 uses
  %.not218.3 = icmp slt i64 %i.re, %7
  %i.rf = tail call i64 @llvm.smax.i64(i64 %i.re, i64 0)
  %i.rg = select i1 %.not218.3, i64 %i.rf, i64 %i.o
  %.idx219.3 = shl nsw i64 %i.rg, 4
  %i.rh = add i64 %i.aj, %.2299                   ; 2 uses
  %.not218.4 = icmp slt i64 %i.rh, %7
  %i.ri = tail call i64 @llvm.smax.i64(i64 %i.rh, i64 0)
  %i.rj = select i1 %.not218.4, i64 %i.ri, i64 %i.o
  %.idx219.4 = shl nsw i64 %i.rj, 4
  br label %bb.n

bb.m:                                             ; preds = %bb.n
  %i.rk = fdiv reassoc nsz arcp contract afn <4 x float> %i.yg, %i.yh ; 2 uses
  %i.rl = getelementptr inbounds nuw i8, ptr %i.qp, i64 12
  %i.rm = load float, ptr %i.rl, align 4, !tbaa !11
  %i.rn = shl i64 %.2299, 2                       ; 2 uses
  %i.ro = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %i.rn
  store <4 x float> %i.rk, ptr %i.ro, align 16, !tbaa !13, !alias.scope !21, !nontemporal !17
  %i.rp = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %i.rn ; 2 uses
  %i.rq = shufflevector <2 x float> %i.qr, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.rr = insertelement <4 x float> %i.rq, float %i.qu, i64 2
  %i.rs = insertelement <4 x float> %i.rr, float %i.rm, i64 3
  %i.rt = fsub reassoc nsz arcp contract afn <4 x float> %i.rs, %i.rk ; 2 uses
  %i.ru = fsub reassoc nsz arcp contract afn <4 x float> %i.rt, %i.je
  %i.rv = fadd reassoc nsz arcp contract afn <4 x float> %i.je, %i.rt
  %i.rw = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.rv, <4 x float> zeroinitializer)
  %i.rx = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ru, <4 x float> zeroinitializer)
  %i.ry = fadd reassoc nsz arcp contract afn <4 x float> %i.rx, %i.rw
  %i.rz = fmul reassoc nsz arcp contract afn <4 x float> %i.ry, %i.jf
  %i.sa = load <4 x float>, ptr %i.rp, align 4, !tbaa !11
  %i.sb = fadd reassoc nsz arcp contract afn <4 x float> %i.rz, %i.sa
  store <4 x float> %i.sb, ptr %i.rp, align 4, !tbaa !11
  %i.sc = add nuw i64 %.2299, 1                   ; 2 uses
  %exitcond323.not = icmp eq i64 %i.sc, %7
  br i1 %exitcond323.not, label %._crit_edge, label %bb.l

bb.n:                                             ; preds = %bb.l, %bb.n
  %.sroa.0335.2 = phi nsz <4 x float> [ zeroinitializer, %bb.l ], [ %i.yg, %bb.n ]
  %.0194297 = phi i64 [ 0, %bb.l ], [ %i.yj, %bb.n ] ; 2 uses
  %.0195296 = phi i64 [ 0, %bb.l ], [ %i.yi, %bb.n ] ; 6 uses
  %i.sd = phi <4 x float> [ zeroinitializer, %bb.l ], [ %i.yh, %bb.n ]
  %i.se = add nsw i64 %.0194297, -2
  %i.sf = mul nsw i64 %i.se, %i.i
  %i.sg = add nsw i64 %i.sf, %i.bc                ; 2 uses
  %.not217 = icmp slt i64 %i.sg, %8
  %i.sh = tail call i64 @llvm.smax.i64(i64 %i.sg, i64 0)
  %i.si = select i1 %.not217, i64 %i.sh, i64 %i.j
  %i.sj = mul i64 %i.k, %i.si
  %invariant.gep292 = getelementptr [4 x i8], ptr %1, i64 %i.sj ; 5 uses
  %gep293 = getelementptr i8, ptr %invariant.gep292, i64 %.idx219 ; 2 uses
  %i.sk = getelementptr inbounds nuw i8, ptr %gep293, i64 4
  %i.sl = getelementptr inbounds nuw [4 x i8], ptr @eaw_dn_decompose.filter, i64 %.0195296
  %i.sm = load <4 x float>, ptr %gep293, align 4, !tbaa !11 ; 3 uses
  %i.sn = load float, ptr %i.sk, align 4, !tbaa !11
  %i.so = fsub reassoc nsz arcp contract afn float %i.qs, %i.sn ; 2 uses
  %i.sp = extractelement <4 x float> %i.sm, i64 2
  %i.sq = fsub reassoc nsz arcp contract afn float %i.qu, %i.sp ; 2 uses
  %i.sr = fmul reassoc nsz arcp contract afn float %i.so, %i.so
  %i.ss = fmul reassoc nsz arcp contract afn float %i.sq, %i.sq
  %i.st = extractelement <4 x float> %i.sm, i64 0
  %i.su = fsub reassoc nsz arcp contract afn float %i.qy, %i.st ; 2 uses
  %i.sv = fadd reassoc nsz arcp contract afn float %i.ss, %i.sr
  %i.sw = fmul reassoc nsz arcp contract afn float %i.su, %i.su
  %i.sx = insertelement <2 x float> poison, float %i.sw, i64 0
  %i.sy = insertelement <2 x float> %i.sx, float %i.sv, i64 1
  %i.sz = load float, ptr %i.sl, align 4, !tbaa !11 ; 2 uses
  %i.ta = insertelement <2 x float> poison, float %i.sz, i64 0
  %i.tb = shufflevector <2 x float> %i.ta, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 poison>
  %i.tc = shufflevector <2 x float> %i.sy, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 poison>
  %i.td = fmul reassoc nsz arcp contract afn <4 x float> %i.tc, %i.af
  %i.te = fptosi <4 x float> %i.td to <4 x i32>
  %i.tf = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.te, <4 x i32> <i32 -1065353216, i32 -1065353216, i32 -1065353216, i32 undef>)
  %i.tg = add nsw <4 x i32> %i.tf, <i32 1065353216, i32 1065353216, i32 1065353216, i32 undef>
  %i.th = bitcast <4 x i32> %i.tg to <4 x float>
  %i.ti = fmul reassoc nsz arcp contract afn <4 x float> %i.tb, %i.th ; 2 uses
  %i.tj = insertelement <4 x float> %i.ti, float %i.sz, i64 3
  %i.tk = shufflevector <4 x float> %i.ti, <4 x float> %i.tj, <4 x i32> <i32 0, i32 1, i32 6, i32 7> ; 2 uses
  %i.tl = fmul reassoc nsz arcp contract afn <4 x float> %i.sm, %i.tk
  %i.tm = fadd reassoc nsz arcp contract afn <4 x float> %.sroa.0335.2, %i.tl
  %i.tn = fadd reassoc nsz arcp contract afn <4 x float> %i.sd, %i.tk
  %gep293.1 = getelementptr i8, ptr %invariant.gep292, i64 %.idx219.1 ; 2 uses
  %i.to = getelementptr inbounds nuw i8, ptr %gep293.1, i64 4
  %i.tp = getelementptr inbounds nuw [4 x i8], ptr @eaw_dn_decompose.filter, i64 %.0195296
  %i.tq = getelementptr inbounds nuw i8, ptr %i.tp, i64 4
  %i.tr = load <4 x float>, ptr %gep293.1, align 4, !tbaa !11 ; 3 uses
  %i.ts = load float, ptr %i.to, align 4, !tbaa !11
  %i.tt = fsub reassoc nsz arcp contract afn float %i.qs, %i.ts ; 2 uses
  %i.tu = extractelement <4 x float> %i.tr, i64 2
  %i.tv = fsub reassoc nsz arcp contract afn float %i.qu, %i.tu ; 2 uses
  %i.tw = fmul reassoc nsz arcp contract afn float %i.tt, %i.tt
  %i.tx = fmul reassoc nsz arcp contract afn float %i.tv, %i.tv
  %i.ty = extractelement <4 x float> %i.tr, i64 0
  %i.tz = fsub reassoc nsz arcp contract afn float %i.qy, %i.ty ; 2 uses
  %i.ua = fadd reassoc nsz arcp contract afn float %i.tx, %i.tw
  %i.ub = fmul reassoc nsz arcp contract afn float %i.tz, %i.tz
  %i.uc = insertelement <2 x float> poison, float %i.ub, i64 0
  %i.ud = insertelement <2 x float> %i.uc, float %i.ua, i64 1
  %i.ue = load float, ptr %i.tq, align 4, !tbaa !11 ; 2 uses
  %i.uf = insertelement <2 x float> poison, float %i.ue, i64 0
  %i.ug = shufflevector <2 x float> %i.uf, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 poison>
  %i.uh = shufflevector <2 x float> %i.ud, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 poison>
  %i.ui = fmul reassoc nsz arcp contract afn <4 x float> %i.uh, %i.ag
  %i.uj = fptosi <4 x float> %i.ui to <4 x i32>
  %i.uk = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.uj, <4 x i32> <i32 -1065353216, i32 -1065353216, i32 -1065353216, i32 undef>)
  %i.ul = add nsw <4 x i32> %i.uk, <i32 1065353216, i32 1065353216, i32 1065353216, i32 undef>
  %i.um = bitcast <4 x i32> %i.ul to <4 x float>
  %i.un = fmul reassoc nsz arcp contract afn <4 x float> %i.ug, %i.um ; 2 uses
  %i.uo = insertelement <4 x float> %i.un, float %i.ue, i64 3
  %i.up = shufflevector <4 x float> %i.un, <4 x float> %i.uo, <4 x i32> <i32 0, i32 1, i32 6, i32 7> ; 2 uses
  %i.uq = fmul reassoc nsz arcp contract afn <4 x float> %i.tr, %i.up
  %i.ur = fadd reassoc nsz arcp contract afn <4 x float> %i.tm, %i.uq
  %i.us = fadd reassoc nsz arcp contract afn <4 x float> %i.tn, %i.up
  %gep293.2 = getelementptr i8, ptr %invariant.gep292, i64 %.idx219.2 ; 2 uses
  %i.ut = getelementptr inbounds nuw i8, ptr %gep293.2, i64 4
  %i.uu = getelementptr inbounds nuw [4 x i8], ptr @eaw_dn_decompose.filter, i64 %.0195296
  %i.uv = getelementptr inbounds nuw i8, ptr %i.uu, i64 8
  %i.uw = load <4 x float>, ptr %gep293.2, align 4, !tbaa !11 ; 3 uses
  %i.ux = load float, ptr %i.ut, align 4, !tbaa !11
  %i.uy = fsub reassoc nsz arcp contract afn float %i.qs, %i.ux ; 2 uses
  %i.uz = extractelement <4 x float> %i.uw, i64 2
  %i.va = fsub reassoc nsz arcp contract afn float %i.qu, %i.uz ; 2 uses
  %i.vb = fmul reassoc nsz arcp contract afn float %i.uy, %i.uy
  %i.vc = fmul reassoc nsz arcp contract afn float %i.va, %i.va
  %i.vd = extractelement <4 x float> %i.uw, i64 0
  %i.ve = fsub reassoc nsz arcp contract afn float %i.qy, %i.vd ; 2 uses
  %i.vf = fadd reassoc nsz arcp contract afn float %i.vc, %i.vb
  %i.vg = fmul reassoc nsz arcp contract afn float %i.ve, %i.ve
  %i.vh = insertelement <2 x float> poison, float %i.vg, i64 0
  %i.vi = insertelement <2 x float> %i.vh, float %i.vf, i64 1
  %i.vj = load float, ptr %i.uv, align 4, !tbaa !11 ; 2 uses
  %i.vk = insertelement <2 x float> poison, float %i.vj, i64 0
  %i.vl = shufflevector <2 x float> %i.vk, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 poison>
  %i.vm = shufflevector <2 x float> %i.vi, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 poison>
  %i.vn = fmul reassoc nsz arcp contract afn <4 x float> %i.vm, %i.ah
  %i.vo = fptosi <4 x float> %i.vn to <4 x i32>
  %i.vp = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.vo, <4 x i32> <i32 -1065353216, i32 -1065353216, i32 -1065353216, i32 undef>)
  %i.vq = add nsw <4 x i32> %i.vp, <i32 1065353216, i32 1065353216, i32 1065353216, i32 undef>
  %i.vr = bitcast <4 x i32> %i.vq to <4 x float>
  %i.vs = fmul reassoc nsz arcp contract afn <4 x float> %i.vl, %i.vr ; 2 uses
  %i.vt = insertelement <4 x float> %i.vs, float %i.vj, i64 3
  %i.vu = shufflevector <4 x float> %i.vs, <4 x float> %i.vt, <4 x i32> <i32 0, i32 1, i32 6, i32 7> ; 2 uses
  %i.vv = fmul reassoc nsz arcp contract afn <4 x float> %i.uw, %i.vu
  %i.vw = fadd reassoc nsz arcp contract afn <4 x float> %i.ur, %i.vv
  %i.vx = fadd reassoc nsz arcp contract afn <4 x float> %i.us, %i.vu
  %gep293.3 = getelementptr i8, ptr %invariant.gep292, i64 %.idx219.3 ; 2 uses
  %i.vy = getelementptr inbounds nuw i8, ptr %gep293.3, i64 4
  %i.vz = getelementptr inbounds nuw [4 x i8], ptr @eaw_dn_decompose.filter, i64 %.0195296
  %i.wa = getelementptr inbounds nuw i8, ptr %i.vz, i64 12
  %i.wb = load <4 x float>, ptr %gep293.3, align 4, !tbaa !11 ; 3 uses
  %i.wc = load float, ptr %i.vy, align 4, !tbaa !11
  %i.wd = fsub reassoc nsz arcp contract afn float %i.qs, %i.wc ; 2 uses
  %i.we = extractelement <4 x float> %i.wb, i64 2
  %i.wf = fsub reassoc nsz arcp contract afn float %i.qu, %i.we ; 2 uses
  %i.wg = fmul reassoc nsz arcp contract afn float %i.wd, %i.wd
  %i.wh = fmul reassoc nsz arcp contract afn float %i.wf, %i.wf
  %i.wi = extractelement <4 x float> %i.wb, i64 0
  %i.wj = fsub reassoc nsz arcp contract afn float %i.qy, %i.wi ; 2 uses
  %i.wk = fadd reassoc nsz arcp contract afn float %i.wh, %i.wg
  %i.wl = fmul reassoc nsz arcp contract afn float %i.wj, %i.wj
  %i.wm = insertelement <2 x float> poison, float %i.wl, i64 0
  %i.wn = insertelement <2 x float> %i.wm, float %i.wk, i64 1
  %i.wo = load float, ptr %i.wa, align 4, !tbaa !11 ; 2 uses
  %i.wp = insertelement <2 x float> poison, float %i.wo, i64 0
  %i.wq = shufflevector <2 x float> %i.wp, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 poison>
  %i.wr = shufflevector <2 x float> %i.wn, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 poison>
  %i.ws = fmul reassoc nsz arcp contract afn <4 x float> %i.wr, %i.ai
  %i.wt = fptosi <4 x float> %i.ws to <4 x i32>
  %i.wu = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.wt, <4 x i32> <i32 -1065353216, i32 -1065353216, i32 -1065353216, i32 undef>)
  %i.wv = add nsw <4 x i32> %i.wu, <i32 1065353216, i32 1065353216, i32 1065353216, i32 undef>
  %i.ww = bitcast <4 x i32> %i.wv to <4 x float>
  %i.wx = fmul reassoc nsz arcp contract afn <4 x float> %i.wq, %i.ww ; 2 uses
  %i.wy = insertelement <4 x float> %i.wx, float %i.wo, i64 3
  %i.wz = shufflevector <4 x float> %i.wx, <4 x float> %i.wy, <4 x i32> <i32 0, i32 1, i32 6, i32 7> ; 2 uses
  %i.xa = fmul reassoc nsz arcp contract afn <4 x float> %i.wb, %i.wz
  %i.xb = fadd reassoc nsz arcp contract afn <4 x float> %i.vw, %i.xa
  %i.xc = fadd reassoc nsz arcp contract afn <4 x float> %i.vx, %i.wz
  %gep293.4 = getelementptr i8, ptr %invariant.gep292, i64 %.idx219.4 ; 2 uses
  %i.xd = getelementptr inbounds nuw i8, ptr %gep293.4, i64 4
  %i.xe = getelementptr inbounds nuw [4 x i8], ptr @eaw_dn_decompose.filter, i64 %.0195296
  %i.xf = getelementptr inbounds nuw i8, ptr %i.xe, i64 16
  %i.xg = load <4 x float>, ptr %gep293.4, align 4, !tbaa !11 ; 3 uses
  %i.xh = load float, ptr %i.xd, align 4, !tbaa !11
  %i.xi = fsub reassoc nsz arcp contract afn float %i.qs, %i.xh ; 2 uses
  %i.xj = extractelement <4 x float> %i.xg, i64 2
  %i.xk = fsub reassoc nsz arcp contract afn float %i.qu, %i.xj ; 2 uses
  %i.xl = fmul reassoc nsz arcp contract afn float %i.xi, %i.xi
  %i.xm = fmul reassoc nsz arcp contract afn float %i.xk, %i.xk
  %i.xn = extractelement <4 x float> %i.xg, i64 0
  %i.xo = fsub reassoc nsz arcp contract afn float %i.qy, %i.xn ; 2 uses
  %i.xp = fadd reassoc nsz arcp contract afn float %i.xm, %i.xl
  %i.xq = fmul reassoc nsz arcp contract afn float %i.xo, %i.xo
  %i.xr = insertelement <2 x float> poison, float %i.xq, i64 0
  %i.xs = insertelement <2 x float> %i.xr, float %i.xp, i64 1
  %i.xt = load float, ptr %i.xf, align 4, !tbaa !11 ; 2 uses
  %i.xu = insertelement <2 x float> poison, float %i.xt, i64 0
  %i.xv = shufflevector <2 x float> %i.xu, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 poison>
  %i.xw = shufflevector <2 x float> %i.xs, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 poison>
  %i.xx = fmul reassoc nsz arcp contract afn <4 x float> %i.xw, %i.ak
  %i.xy = fptosi <4 x float> %i.xx to <4 x i32>
  %i.xz = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.xy, <4 x i32> <i32 -1065353216, i32 -1065353216, i32 -1065353216, i32 undef>)
  %i.ya = add nsw <4 x i32> %i.xz, <i32 1065353216, i32 1065353216, i32 1065353216, i32 undef>
  %i.yb = bitcast <4 x i32> %i.ya to <4 x float>
  %i.yc = fmul reassoc nsz arcp contract afn <4 x float> %i.xv, %i.yb ; 2 uses
  %i.yd = insertelement <4 x float> %i.yc, float %i.xt, i64 3
  %i.ye = shufflevector <4 x float> %i.yc, <4 x float> %i.yd, <4 x i32> <i32 0, i32 1, i32 6, i32 7> ; 2 uses
  %i.yf = fmul reassoc nsz arcp contract afn <4 x float> %i.xg, %i.ye
  %i.yg = fadd reassoc nsz arcp contract afn <4 x float> %i.xb, %i.yf ; 2 uses
  %i.yh = fadd reassoc nsz arcp contract afn <4 x float> %i.xc, %i.ye ; 2 uses
  %i.yi = add nuw nsw i64 %.0195296, 5
  %i.yj = add nuw nsw i64 %.0194297, 1            ; 2 uses
  %exitcond321.not = icmp eq i64 %i.yj, 5
  br i1 %exitcond321.not, label %bb.m, label %bb.n

._crit_edge:                                      ; preds = %bb.m, %.preheader271
  %i.yk = add nuw i64 %.0187301, 1                ; 2 uses
  %exitcond324.not = icmp eq i64 %i.yk, %8
  br i1 %exitcond324.not, label %._crit_edge304, label %bb.b
}

; Function Attrs: nounwind uwtable
define void @eaw_synthesize(ptr nofree noundef captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr noalias nofree noundef readonly captures(none) %2, ptr noalias nofree noundef readonly captures(none) %3, ptr noalias nofree noundef readonly captures(none) %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #1 {
bb.a:
  %i.a = load <4 x float>, ptr %3, align 4, !tbaa !11 ; 6 uses
  %i.b = load <4 x float>, ptr %4, align 4, !tbaa !11 ; 3 uses
  %i.c = sext i32 %5 to i64
  %i.d = sext i32 %6 to i64
  %i.e = mul nsw i64 %i.d, %i.c                   ; 5 uses
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %xtraiter = and i64 %i.e, 1
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.e, -2
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.020.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.ar, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod21 = trunc i64 %i.e to i1
  tail call void @llvm.assume(i1 %lcmp.mod21)
  %i.g = shl i64 %.020.epil.init, 2               ; 2 uses
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.g ; 2 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.g
  %i.j = load <4 x float>, ptr %i.i, align 4, !tbaa !11 ; 2 uses
  %i.k = fsub reassoc nsz arcp contract afn <4 x float> %i.j, %i.a
  %i.l = fadd reassoc nsz arcp contract afn <4 x float> %i.j, %i.a
  %i.m = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.l, <4 x float> zeroinitializer)
  %i.n = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.k, <4 x float> zeroinitializer)
  %i.o = fadd reassoc nsz arcp contract afn <4 x float> %i.n, %i.m
  %i.p = fmul reassoc nsz arcp contract afn <4 x float> %i.o, %i.b
  %i.q = load <4 x float>, ptr %i.h, align 4, !tbaa !11
  %i.r = fadd reassoc nsz arcp contract afn <4 x float> %i.p, %i.q
  store <4 x float> %i.r, ptr %i.h, align 4, !tbaa !11
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.a
  tail call void @llvm.x86.sse.sfence()
  ret void

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.020 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.ar, %.lr.ph ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.s = shl i64 %.020, 2                         ; 2 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.s ; 2 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.s
  %i.v = load <4 x float>, ptr %i.u, align 4, !tbaa !11 ; 2 uses
  %i.w = fsub reassoc nsz arcp contract afn <4 x float> %i.v, %i.a
  %i.x = fadd reassoc nsz arcp contract afn <4 x float> %i.v, %i.a
  %i.y = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.x, <4 x float> zeroinitializer)
  %i.z = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.w, <4 x float> zeroinitializer)
  %i.aa = fadd reassoc nsz arcp contract afn <4 x float> %i.z, %i.y
  %i.ab = fmul reassoc nsz arcp contract afn <4 x float> %i.aa, %i.b
  %i.ac = load <4 x float>, ptr %i.t, align 4, !tbaa !11
  %i.ad = fadd reassoc nsz arcp contract afn <4 x float> %i.ab, %i.ac
  store <4 x float> %i.ad, ptr %i.t, align 4, !tbaa !11
  %i.ae = shl i64 %.020, 2
  %i.af = or disjoint i64 %i.ae, 4                ; 2 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.af ; 2 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.af
  %i.ai = load <4 x float>, ptr %i.ah, align 4, !tbaa !11 ; 2 uses
  %i.aj = fsub reassoc nsz arcp contract afn <4 x float> %i.ai, %i.a
  %i.ak = fadd reassoc nsz arcp contract afn <4 x float> %i.ai, %i.a
  %i.al = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ak, <4 x float> zeroinitializer)
  %i.am = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.aj, <4 x float> zeroinitializer)
  %i.an = fadd reassoc nsz arcp contract afn <4 x float> %i.am, %i.al
  %i.ao = fmul reassoc nsz arcp contract afn <4 x float> %i.an, %i.b
  %i.ap = load <4 x float>, ptr %i.ag, align 4, !tbaa !11
  %i.aq = fadd reassoc nsz arcp contract afn <4 x float> %i.ao, %i.ap
  store <4 x float> %i.aq, ptr %i.ag, align 4, !tbaa !11
  %i.ar = add nuw i64 %.020, 2                    ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @eaw_dn_decompose(ptr noalias nofree noundef writeonly captures(none) %0, ptr noalias nofree noundef readonly captures(none) %1, ptr noalias nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, i32 noundef %4, float noundef %5, i32 noundef %6, i32 noundef %7) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i32 %7, 0
  br i1 %i.a, label %.lr.ph288, label %.preheader

.lr.ph288:                                        ; preds = %bb.a
  %i.b = insertelement <4 x i32> <i32 0, i32 0, i32 poison, i32 poison>, i32 %4, i64 2 ; 2 uses
  %i.c = shufflevector <4 x i32> %i.b, <4 x i32> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 2>
  %i.d = shl <4 x i32> <i32 -2, i32 -1, i32 1, i32 2>, %i.c ; 3 uses
  %i.e = extractelement <4 x i32> %i.d, i64 2     ; 5 uses
  %.not.i = icmp sgt i32 %7, %i.e
  %i.f = add nsw i32 %7, -1                       ; 3 uses
  %i.g = add nuw i32 %i.f, %i.e
  %i.h = sext i32 %6 to i64                       ; 3 uses
  %i.i = extractelement <4 x i32> %i.d, i64 3     ; 5 uses
  %i.j = sext i32 %i.i to i64                     ; 2 uses
  %i.k = sub nsw i32 %7, %i.i
  %i.l = sub nsw i32 %6, %i.i                     ; 3 uses
  %i.m = shl nsw i64 %i.h, 2                      ; 2 uses
  %i.n = fmul reassoc nsz arcp contract afn float %5, 2.000000e-02 ; 4 uses
  %i.o = sext i32 %i.e to i64                     ; 2 uses
  %.idx236 = shl nsw i64 %i.o, 4                  ; 5 uses
  %i.p = add nsw i32 %6, -5
  %i.q = sext i32 %i.p to i64
  %i.r = shl nsw i64 %i.o, 2
  %i.s = mul i64 %i.r, %i.q
  %i.t = add nsw i32 %6, -1
  %i.u = sext i32 %i.l to i64
  %i.v = shufflevector <4 x i32> %i.b, <4 x i32> <i32 poison, i32 poison, i32 0, i32 0>, <4 x i32> <i32 2, i32 2, i32 6, i32 7>
  %i.w = shl <4 x i32> %i.d, %i.v
  %broadcast.splatinsert563 = insertelement <8 x float> poison, float %i.n, i64 0
  %broadcast.splat564 = shufflevector <8 x float> %broadcast.splatinsert563, <8 x float> poison, <8 x i32> zeroinitializer ; 5 uses
  %broadcast.splatinsert561 = insertelement <8 x i64> poison, i64 %i.m, i64 0
  %broadcast.splat562 = shufflevector <8 x i64> %broadcast.splatinsert561, <8 x i64> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert553 = insertelement <8 x i32> poison, i32 %4, i64 0
  %broadcast.splat554 = shufflevector <8 x i32> %broadcast.splatinsert553, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.x = shl <8 x i32> <i32 -2, i32 -1, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5>, %broadcast.splat554
  %broadcast.splatinsert557 = insertelement <8 x i32> poison, i32 %7, i64 0
  %broadcast.splat558 = shufflevector <8 x i32> %broadcast.splatinsert557, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert559 = insertelement <8 x i32> poison, i32 %i.f, i64 0
  %broadcast.splat560 = shufflevector <8 x i32> %broadcast.splatinsert559, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.y = insertelement <4 x float> poison, float %i.n, i64 0
  %i.z = shufflevector <4 x float> %i.y, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert538 = insertelement <8 x float> poison, float %i.n, i64 0
  %broadcast.splat539 = shufflevector <8 x float> %broadcast.splatinsert538, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert = insertelement <8 x i32> poison, i32 %4, i64 0
  %broadcast.splat = shufflevector <8 x i32> %broadcast.splatinsert, <8 x i32> poison, <8 x i32> zeroinitializer
  %i.aa = shl <8 x i32> <i32 -2, i32 -1, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5>, %broadcast.splat
  %broadcast.splatinsert528 = insertelement <8 x i32> poison, i32 %6, i64 0
  %broadcast.splat529 = shufflevector <8 x i32> %broadcast.splatinsert528, <8 x i32> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert530 = insertelement <8 x i32> poison, i32 %i.t, i64 0
  %broadcast.splat531 = shufflevector <8 x i32> %broadcast.splatinsert530, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %bb.b

.preheader:                                       ; preds = %._crit_edge, %bb.a
  %i.ab = phi <4 x float> [ zeroinitializer, %bb.a ], [ %i.sg, %._crit_edge ]
  store <4 x float> %i.ab, ptr %3, align 4, !tbaa !11
  ret void

bb.b:                                             ; preds = %.lr.ph288, %._crit_edge
  %.0196286 = phi i32 [ 0, %.lr.ph288 ], [ %i.sh, %._crit_edge ] ; 6 uses
  %i.ac = phi <4 x float> [ zeroinitializer, %.lr.ph288 ], [ %i.sg, %._crit_edge ] ; 2 uses
  br i1 %.not.i, label %bb.c, label %dwt_interleave_rows.exit

bb.c:                                             ; preds = %bb.b
  %i.ad = sdiv i32 %i.g, %i.e                     ; 4 uses
  %i.ae = srem i32 %7, %i.e                       ; 3 uses
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ag = mul nsw i32 %i.ae, %i.ad                ; 2 uses
  %i.ah = icmp slt i32 %.0196286, %i.ag
  br i1 %i.ah, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ai = sdiv i32 %.0196286, %i.ad
  %i.aj = srem i32 %.0196286, %i.ad
  %i.ak = shl i32 %i.aj, %4
  %i.al = add nsw i32 %i.ak, %i.ai
  br label %dwt_interleave_rows.exit

bb.f:                                             ; preds = %bb.d
  %i.am = sub nsw i32 %.0196286, %i.ag            ; 2 uses
  %i.an = add nsw i32 %i.ad, -1                   ; 2 uses
  %i.ao = sdiv i32 %i.am, %i.an
  %i.ap = add nsw i32 %i.ao, %i.ae
  %i.aq = srem i32 %i.am, %i.an
  %i.ar = shl i32 %i.aq, %4
  %i.as = add nsw i32 %i.ap, %i.ar
  br label %dwt_interleave_rows.exit

dwt_interleave_rows.exit:                         ; preds = %bb.b, %bb.e, %bb.f
  %.1.i = phi i32 [ %.0196286, %bb.b ], [ %i.al, %bb.e ], [ %i.as, %bb.f ] ; 5 uses
  %i.at = sext i32 %.1.i to i64                   ; 2 uses
  %i.au = shl nsw i64 %i.at, 2
  %i.av = mul i64 %i.au, %i.h                     ; 3 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.av ; 2 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.av ; 2 uses
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.av ; 2 uses
  %i.az = icmp uge i32 %.1.i, %i.i
  %.not = icmp ult i32 %.1.i, %i.k
  %or.cond = select i1 %i.az, i1 %.not, i1 false
  %i.ba = select i1 %or.cond, i32 %i.i, i32 %i.l  ; 3 uses
  %i.bb = icmp sgt i32 %i.ba, 0
  br i1 %i.bb, label %.lr.ph.preheader, label %.preheader242
end_hunk_0
