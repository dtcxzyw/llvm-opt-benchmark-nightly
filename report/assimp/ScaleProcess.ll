Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/ScaleProcess?download=true
inline.NumInlined: 69
inline.NumDeleted: 22
begin_hunk_0_@_ZN6Assimp12ScaleProcess7ExecuteEP7aiScene:bb.a
  %i.ac = phi i32 [ %i.x, %.lr.ph161 ], [ %i.aj, %._crit_edge ]
  %indvars.iv188 = phi i64 [ 0, %.lr.ph161 ], [ %indvars.iv.next189, %._crit_edge ] ; 2 uses
  %i.ad = load ptr, ptr %i.y, align 8
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv188
  %i.af = load ptr, ptr %i.ae, align 8            ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 1028 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4
  %.not181 = icmp eq i32 %i.ah, 0
  br i1 %.not181, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 1032
  br label %bb.e

._crit_edge.loopexit:                             ; preds = %bb.e
  %.pre = load i32, ptr %i.w, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.d
  %i.aj = phi i32 [ %.pre, %._crit_edge.loopexit ], [ %i.ac, %bb.d ] ; 2 uses
  %indvars.iv.next189 = add nuw nsw i64 %indvars.iv188, 1 ; 2 uses
  %i.ak = zext i32 %i.aj to i64
  %i.al = icmp samesign ult i64 %indvars.iv.next189, %i.ak
  br i1 %i.al, label %bb.d, label %._crit_edge162.loopexit, !llvm.loop !15

bb.e:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 2 uses
  %i.am = load ptr, ptr %i.ai, align 8
  %i.an = getelementptr inbounds nuw [24 x i8], ptr %i.am, i64 %indvars.iv ; 2 uses
  %i.ao = load float, ptr %i.a, align 8           ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 2 uses
  %i.aq = load <2 x float>, ptr %i.ap, align 4
  %i.ar = insertelement <2 x float> poison, float %i.ao, i64 0
  %i.as = shufflevector <2 x float> %i.ar, <2 x float> poison, <2 x i32> zeroinitializer
  %i.at = fmul <2 x float> %i.as, %i.aq
  store <2 x float> %i.at, ptr %i.ap, align 4
  %i.au = getelementptr inbounds nuw i8, ptr %i.an, i64 16 ; 2 uses
  %i.av = load float, ptr %i.au, align 4
  %i.aw = fmul float %i.ao, %i.av
  store float %i.aw, ptr %i.au, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ax = load i32, ptr %i.ag, align 4
  %i.ay = zext i32 %i.ax to i64
  %i.az = icmp samesign ult i64 %indvars.iv.next, %i.ay
  br i1 %i.az, label %bb.e, label %._crit_edge.loopexit, !llvm.loop !16

._crit_edge179:                                   ; preds = %._crit_edge176, %.preheader156
  %i.ba = load ptr, ptr %i.e, align 8
  call void @_ZN6Assimp12ScaleProcess13traverseNodesEP6aiNodej(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef %i.ba, i32 noundef 0)
  br label %bb.k

bb.f:                                             ; preds = %.lr.ph178, %._crit_edge176
  %indvars.iv206 = phi i64 [ 0, %.lr.ph178 ], [ %indvars.iv.next207, %._crit_edge176 ] ; 2 uses
  %i.bb = load ptr, ptr %i.m, align 8
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %indvars.iv206
  %i.bd = load ptr, ptr %i.bc, align 8            ; 6 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 4 ; 2 uses
  %i.bf = load i32, ptr %i.be, align 4
  %.not183 = icmp eq i32 %i.bf, 0
  br i1 %.not183, label %.preheader155, label %.lr.ph167

.lr.ph167:                                        ; preds = %bb.f
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  br label %bb.g

.preheader155:                                    ; preds = %bb.g, %bb.f
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bd, i64 216 ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 8
  %.not184 = icmp eq i32 %i.bi, 0
  br i1 %.not184, label %.preheader, label %.lr.ph169

.lr.ph169:                                        ; preds = %.preheader155
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bd, i64 224
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph167, %bb.g
  %indvars.iv194 = phi i64 [ 0, %.lr.ph167 ], [ %indvars.iv.next195, %bb.g ] ; 2 uses
  %i.bk = load ptr, ptr %i.bg, align 8
  %i.bl = getelementptr inbounds nuw [12 x i8], ptr %i.bk, i64 %indvars.iv194 ; 3 uses
  %i.bm = load float, ptr %i.a, align 8           ; 2 uses
  %i.bn = load <2 x float>, ptr %i.bl, align 4
  %i.bo = insertelement <2 x float> poison, float %i.bm, i64 0
  %i.bp = shufflevector <2 x float> %i.bo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bq = fmul <2 x float> %i.bp, %i.bn
  store <2 x float> %i.bq, ptr %i.bl, align 4
  %i.br = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 2 uses
  %i.bs = load float, ptr %i.br, align 4
  %i.bt = fmul float %i.bm, %i.bs
  store float %i.bt, ptr %i.br, align 4
  %indvars.iv.next195 = add nuw nsw i64 %indvars.iv194, 1 ; 2 uses
  %i.bu = load i32, ptr %i.be, align 4
  %i.bv = zext i32 %i.bu to i64
  %i.bw = icmp samesign ult i64 %indvars.iv.next195, %i.bv
  br i1 %i.bw, label %bb.g, label %.preheader155, !llvm.loop !17

.preheader:                                       ; preds = %bb.h, %.preheader155
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bd, i64 1264 ; 2 uses
  %i.by = load i32, ptr %i.bx, align 8            ; 2 uses
  %.not185 = icmp eq i32 %i.by, 0
  br i1 %.not185, label %._crit_edge176, label %.lr.ph175

.lr.ph175:                                        ; preds = %.preheader
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bd, i64 1272
  br label %bb.i

bb.h:                                             ; preds = %.lr.ph169, %bb.h
  %indvars.iv197 = phi i64 [ 0, %.lr.ph169 ], [ %indvars.iv.next198, %bb.h ] ; 2 uses
  %i.ca = load ptr, ptr %i.bj, align 8
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %indvars.iv197
  %i.cc = load ptr, ptr %i.cb, align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  store <2 x float> zeroinitializer, ptr %2, align 8
  store float 0.000000e+00, ptr %i.o, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  store <2 x float> zeroinitializer, ptr %3, align 8
  store float 0.000000e+00, ptr %i.q, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %4, align 16
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 1056 ; 2 uses
  call void @_ZNK12aiMatrix4x4tIfE9DecomposeER10aiVector3tIfER13aiQuaterniontIfES3_(ptr noundef nonnull align 4 dereferenceable(64) %i.cd, ptr noundef nonnull align 4 dereferenceable(12) %3, ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(12) %2)
  %i.ce = load float, ptr %i.a, align 8           ; 2 uses
  %i.cf = load float, ptr %2, align 8
  %i.cg = load float, ptr %4, align 16, !noalias !25 ; 3 uses
  %i.ch = fneg float %i.cg                        ; 3 uses
  %i.ci = load <3 x float>, ptr %i.r, align 4, !noalias !25 ; 6 uses
  %i.cj = shufflevector <3 x float> %i.ci, <3 x float> poison, <4 x i32> <i32 1, i32 0, i32 2, i32 0> ; 3 uses
  %i.ck = load float, ptr %i.r, align 4, !noalias !25 ; 7 uses
  %i.cl = shufflevector <3 x float> %i.ci, <3 x float> poison, <4 x i32> <i32 2, i32 2, i32 1, i32 2> ; 2 uses
  %i.cm = insertelement <4 x float> %i.cl, float %i.ch, i64 1
  %i.cn = insertelement <4 x float> %i.cm, float %i.cg, i64 2
  %i.co = shufflevector <4 x float> %i.cn, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 2>
  %i.cp = fmul <4 x float> %i.cl, %i.co           ; 2 uses
  %i.cq = shufflevector <3 x float> %i.ci, <3 x float> poison, <4 x i32> <i32 1, i32 1, i32 0, i32 1>
  %i.cr = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cj, <4 x float> %i.cq, <4 x float> %i.cp) ; 3 uses
  %i.cs = extractelement <4 x float> %i.cr, i64 3
  %i.ct = extractelement <4 x float> %i.cp, i64 0
  %i.cu = call float @llvm.fmuladd.f32(float %i.ck, float %i.ck, float %i.ct)
  %i.cv = fmul float %i.ck, %i.ch
  %i.cw = extractelement <3 x float> %i.ci, i64 1 ; 2 uses
  %i.cx = extractelement <3 x float> %i.ci, i64 2
  %i.cy = call float @llvm.fmuladd.f32(float %i.cw, float %i.cx, float %i.cv)
  %i.cz = fmul float %i.cw, %i.ch
  %i.da = fmul float %i.ck, %i.cg
  %foldExtExtBinop = fmul <4 x float> %i.cj, %i.cj
  %i.db = extractelement <4 x float> %foldExtExtBinop, i64 0
  %i.dc = call float @llvm.fmuladd.f32(float %i.ck, float %i.ck, float %i.db)
  %i.dd = shufflevector <3 x float> %i.ci, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 poison> ; 2 uses
  %i.de = shufflevector <4 x float> %i.dd, <4 x float> %i.cr, <4 x i32> <i32 poison, i32 2, i32 poison, i32 4>
  %i.df = insertelement <4 x float> %i.de, float %i.ck, i64 0
  %i.dg = insertelement <4 x float> %i.df, float %i.dc, i64 2
  %i.dh = shufflevector <4 x float> %i.dd, <4 x float> <float poison, float poison, float -2.000000e+00, float -2.000000e+00>, <4 x i32> <i32 2, i32 1, i32 6, i32 7>
  %i.di = insertelement <4 x float> <float poison, float poison, float 1.000000e+00, float 1.000000e+00>, float %i.cz, i64 0
  %i.dj = insertelement <4 x float> %i.di, float %i.da, i64 1
  %i.dk = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dg, <4 x float> %i.dh, <4 x float> %i.dj) ; 3 uses
  %i.dl = insertelement <4 x float> %i.cr, float 1.000000e+00, i64 3
  %i.dm = shufflevector <4 x float> %i.dl, <4 x float> %i.dk, <4 x i32> <i32 7, i32 1, i32 2, i32 3>
  %i.dn = fmul <4 x float> %i.dm, <float 1.000000e+00, float 2.000000e+00, float 2.000000e+00, float -0.000000e+00> ; 3 uses
  %i.do = fmul float %i.cs, 2.000000e+00          ; 2 uses
  %i.dp = fmul <4 x float> %i.dk, <float 2.000000e+00, float 2.000000e+00, float 1.000000e+00, float 1.000000e+00> ; 6 uses
  %i.dq = shufflevector <4 x float> %i.dp, <4 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.dr = insertelement <2 x float> %i.dq, float %i.ce, i64 0
  %i.ds = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.cf, i64 0
  %i.dt = fmul <2 x float> %i.dr, %i.ds           ; 2 uses
  %i.du = shufflevector <2 x float> %i.dt, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.dv = extractelement <2 x float> %i.dt, i64 0
  %i.dw = fadd float %i.dv, 0.000000e+00
  %i.dx = load <2 x float>, ptr %i.n, align 4
  %i.dy = insertelement <2 x float> poison, float %i.ce, i64 0
  %i.dz = shufflevector <2 x float> %i.dy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ea = fmul <2 x float> %i.dz, %i.dx           ; 3 uses
  %i.eb = fadd <2 x float> %i.ea, zeroinitializer ; 2 uses
  %i.ec = fmul float %i.do, 0.000000e+00
  %i.ed = insertelement <4 x float> poison, float %i.ec, i64 0
  %i.ee = shufflevector <4 x float> %i.dp, <4 x float> %i.dn, <4 x i32> <i32 3, i32 5, i32 6, i32 poison>
  %i.ef = insertelement <4 x float> %i.ee, float -0.000000e+00, i64 3
  %i.eg = insertelement <4 x float> poison, float %i.dw, i64 0
  %i.eh = shufflevector <4 x float> %i.eg, <4 x float> poison, <4 x i32> zeroinitializer
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cc, i64 1072
  %i.ei = load <2 x float>, ptr %3, align 8
  %i.ej = call float @llvm.fmuladd.f32(float %i.cu, float -2.000000e+00, float 1.000000e+00) ; 2 uses
  %i.ek = insertelement <3 x float> <float poison, float 1.000000e+00, float poison>, float %i.cy, i64 0
  %i.el = insertelement <3 x float> %i.ek, float %i.ej, i64 2
  %i.em = fmul <3 x float> %i.el, <float 2.000000e+00, float -0.000000e+00, float 1.000000e+00> ; 2 uses
  %i.en = shufflevector <3 x float> %i.em, <3 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.eo = insertelement <2 x float> %i.en, float %i.ej, i64 0
  %i.ep = fmul <2 x float> %i.eo, zeroinitializer
  %i.eq = shufflevector <2 x float> %i.ep, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.er = shufflevector <4 x float> %i.ed, <4 x float> %i.eq, <4 x i32> <i32 0, i32 4, i32 5, i32 poison> ; 2 uses
  %i.es = insertelement <4 x float> %i.er, float %i.do, i64 3
  %i.et = fadd <4 x float> %i.dn, %i.es
  %i.eu = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dp, <4 x float> zeroinitializer, <4 x float> %i.et)
  %i.ev = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.du, <4 x float> zeroinitializer, <4 x float> %i.eu) ; 5 uses
  %i.ew = shufflevector <4 x float> %i.dn, <4 x float> %i.ev, <3 x i32> <i32 2, i32 7, i32 1>
  %i.ex = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.ew, <3 x float> <float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>, <3 x float> %i.em)
  %i.ey = shufflevector <4 x float> %i.dp, <4 x float> poison, <3 x i32> <i32 2, i32 poison, i32 1>
  %i.ez = insertelement <3 x float> %i.ey, float -0.000000e+00, i64 1
  %i.fa = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.ez, <3 x float> zeroinitializer, <3 x float> %i.ex)
  %i.fb = shufflevector <2 x float> %i.ea, <2 x float> poison, <3 x i32> zeroinitializer
  %i.fc = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.fb, <3 x float> zeroinitializer, <3 x float> %i.fa) ; 3 uses
  %i.fd = shufflevector <2 x float> %i.ei, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 3 uses
  %5 = shufflevector <4 x float> %i.fd, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float poison>, <4 x i32> <i32 4, i32 5, i32 6, i32 0>
  %i.fe = shufflevector <4 x float> %i.dp, <4 x float> %i.ev, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %6 = shufflevector <4 x float> %i.fd, <4 x float> <float 0.000000e+00, float poison, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 4, i32 1, i32 6, i32 7>
  %i.ff = shufflevector <3 x float> %i.fc, <3 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.fg = fmul <4 x float> %6, %i.ff
  %i.fh = shufflevector <4 x float> %i.fd, <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 0, i32 5, i32 6, i32 7> ; 3 uses
  %i.fi = shufflevector <3 x float> %i.fc, <3 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.fj = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fh, <4 x float> %i.fi, <4 x float> %i.fg)
  %i.fk = shufflevector <3 x float> %i.fc, <3 x float> poison, <4 x i32> zeroinitializer
  %i.fl = shufflevector <2 x float> %i.eb, <2 x float> poison, <4 x i32> zeroinitializer
  %i.fm = shufflevector <4 x float> %i.ev, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %.sroa.27.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cc, i64 1088
  %i.fn = load <2 x float>, ptr %i.p, align 4     ; 3 uses
  %.sroa.5.0.copyload = load float, ptr %i.q, align 8
  %i.fo = shufflevector <2 x float> %i.fn, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %7 = shufflevector <4 x float> %i.fo, <4 x float> <float 0.000000e+00, float 0.000000e+00, float poison, float 0.000000e+00>, <4 x i32> <i32 4, i32 5, i32 1, i32 7> ; 3 uses
  %i.fp = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %7, <4 x float> %i.fk, <4 x float> %i.fj)
  %i.fq = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fl, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %i.fp)
  %i.fr = shufflevector <4 x float> %i.dp, <4 x float> %i.dk, <3 x i32> <i32 0, i32 1, i32 6>
  %i.fs = shufflevector <2 x float> %i.ea, <2 x float> poison, <3 x i32> <i32 1, i32 1, i32 1>
  %i.ft = shufflevector <4 x float> %i.ev, <4 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.fu = insertelement <2 x float> %i.fn, float 0.000000e+00, i64 1
  %i.fv = fmul <2 x float> %i.ft, %i.fu           ; 2 uses
  %i.fw = shufflevector <2 x float> %i.fv, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.fx = shufflevector <4 x float> %i.er, <4 x float> %i.fw, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.fy = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ef, <4 x float> zeroinitializer, <4 x float> %i.fx) ; 2 uses
  %i.fz = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %5, <4 x float> %i.fe, <4 x float> %i.fy) ; 2 uses
  %i.ga = shufflevector <4 x float> %i.fz, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %i.gb = shufflevector <4 x float> %i.fy, <4 x float> poison, <3 x i32> <i32 0, i32 1, i32 2>
  %i.gc = fadd <3 x float> %i.fr, %i.gb
  %i.gd = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.fs, <3 x float> zeroinitializer, <3 x float> %i.gc) ; 3 uses
  %i.ge = shufflevector <4 x float> %i.ev, <4 x float> poison, <2 x i32> zeroinitializer
  %i.gf = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ge, <2 x float> zeroinitializer, <2 x float> %i.fv)
  %i.gg = shufflevector <2 x float> %i.gf, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.gh = shufflevector <4 x float> %i.ga, <4 x float> %i.gg, <4 x i32> <i32 0, i32 4, i32 5, i32 5>
  %i.gi = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %7, <4 x float> %i.fm, <4 x float> %i.gh)
  %i.gj = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.eh, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %i.gi)
  %8 = shufflevector <4 x float> %i.fo, <4 x float> <float 0.000000e+00, float poison, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 4, i32 0, i32 6, i32 7>
  %i.gk = shufflevector <3 x float> %i.gd, <3 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.gl = fmul <4 x float> %8, %i.gk
  %i.gm = shufflevector <3 x float> %i.gd, <3 x float> poison, <4 x i32> zeroinitializer
  %i.gn = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fh, <4 x float> %i.gm, <4 x float> %i.gl)
  %i.go = shufflevector <3 x float> %i.gd, <3 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.gp = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %7, <4 x float> %i.go, <4 x float> %i.gn)
  %i.gq = shufflevector <2 x float> %i.eb, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.gr = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gq, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %i.gp)
  store <4 x float> %i.gj, ptr %i.cd, align 8
  store <4 x float> %i.fq, ptr %.sroa.15.0..sroa_idx, align 8
  store <4 x float> %i.gr, ptr %.sroa.27.0..sroa_idx, align 8
  %.sroa.39.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cc, i64 1104
  %i.gs = shufflevector <4 x float> %i.fz, <4 x float> poison, <3 x i32> <i32 0, i32 1, i32 2>
  %i.gt = fadd <3 x float> %i.gs, zeroinitializer ; 3 uses
  %i.gu = shufflevector <2 x float> %i.fn, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 poison, i32 poison>
  %9 = shufflevector <4 x float> %i.gu, <4 x float> <float 0.000000e+00, float poison, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 4, i32 1, i32 6, i32 7>
  %i.gv = shufflevector <3 x float> %i.gt, <3 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.gw = fmul <4 x float> %9, %i.gv
  %i.gx = shufflevector <3 x float> %i.gt, <3 x float> poison, <4 x i32> zeroinitializer
  %i.gy = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fh, <4 x float> %i.gx, <4 x float> %i.gw)
  %i.gz = insertelement <4 x float> <float 0.000000e+00, float 0.000000e+00, float poison, float 0.000000e+00>, float %.sroa.5.0.copyload, i64 2
  %i.ha = shufflevector <3 x float> %i.gt, <3 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.hb = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gz, <4 x float> %i.ha, <4 x float> %i.gy)
  %i.hc = fadd <4 x float> %i.hb, <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>
  store <4 x float> %i.hc, ptr %.sroa.39.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  %indvars.iv.next198 = add nuw nsw i64 %indvars.iv197, 1 ; 2 uses
  %i.hd = load i32, ptr %i.bh, align 8
  %i.he = zext i32 %i.hd to i64
  %i.hf = icmp samesign ult i64 %indvars.iv.next198, %i.he
  br i1 %i.hf, label %bb.h, label %.preheader, !llvm.loop !20

._crit_edge176:                                   ; preds = %._crit_edge173, %.preheader
  %indvars.iv.next207 = add nuw nsw i64 %indvars.iv206, 1 ; 2 uses
  %i.hg = load i32, ptr %i.k, align 8
  %i.hh = zext i32 %i.hg to i64
  %i.hi = icmp samesign ult i64 %indvars.iv.next207, %i.hh
  br i1 %i.hi, label %bb.f, label %._crit_edge179, !llvm.loop !21

bb.i:                                             ; preds = %.lr.ph175, %._crit_edge173
  %i.hj = phi i32 [ %i.by, %.lr.ph175 ], [ %i.hq, %._crit_edge173 ]
  %indvars.iv203 = phi i64 [ 0, %.lr.ph175 ], [ %indvars.iv.next204, %._crit_edge173 ] ; 2 uses
  %i.hk = load ptr, ptr %i.bz, align 8
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %i.hk, i64 %indvars.iv203
  %i.hm = load ptr, ptr %i.hl, align 8            ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 1192 ; 2 uses
  %i.ho = load i32, ptr %i.hn, align 8
  %.not186 = icmp eq i32 %i.ho, 0
  br i1 %.not186, label %._crit_edge173, label %.lr.ph172

.lr.ph172:                                        ; preds = %bb.i
  %i.hp = getelementptr inbounds nuw i8, ptr %i.hm, i64 1032
  br label %bb.j

._crit_edge173.loopexit:                          ; preds = %bb.j
  %.pre210 = load i32, ptr %i.bx, align 8
  br label %._crit_edge173

._crit_edge173:                                   ; preds = %._crit_edge173.loopexit, %bb.i
  %i.hq = phi i32 [ %.pre210, %._crit_edge173.loopexit ], [ %i.hj, %bb.i ] ; 2 uses
  %indvars.iv.next204 = add nuw nsw i64 %indvars.iv203, 1 ; 2 uses
  %i.hr = zext i32 %i.hq to i64
  %i.hs = icmp samesign ult i64 %indvars.iv.next204, %i.hr
  br i1 %i.hs, label %bb.i, label %._crit_edge176, !llvm.loop !22

bb.j:                                             ; preds = %.lr.ph172, %bb.j
  %indvars.iv200 = phi i64 [ 0, %.lr.ph172 ], [ %indvars.iv.next201, %bb.j ] ; 2 uses
  %i.ht = load ptr, ptr %i.hp, align 8
  %i.hu = getelementptr inbounds nuw [12 x i8], ptr %i.ht, i64 %indvars.iv200 ; 3 uses
  %i.hv = load float, ptr %i.a, align 8           ; 2 uses
  %i.hw = load <2 x float>, ptr %i.hu, align 4
  %i.hx = insertelement <2 x float> poison, float %i.hv, i64 0
  %i.hy = shufflevector <2 x float> %i.hx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hz = fmul <2 x float> %i.hy, %i.hw
  store <2 x float> %i.hz, ptr %i.hu, align 4
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hu, i64 8 ; 2 uses
  %i.ib = load float, ptr %i.ia, align 4
  %i.ic = fmul float %i.hv, %i.ib
  store float %i.ic, ptr %i.ia, align 4
  %indvars.iv.next201 = add nuw nsw i64 %indvars.iv200, 1 ; 2 uses
  %i.id = load i32, ptr %i.hn, align 8
  %i.ie = zext i32 %i.id to i64
  %i.if = icmp samesign ult i64 %indvars.iv.next201, %i.ie
  br i1 %i.if, label %bb.j, label %._crit_edge173.loopexit, !llvm.loop !23

bb.k:                                             ; preds = %bb.b, %bb.a, %._crit_edge179
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZNK12aiMatrix4x4tIfE9DecomposeER10aiVector3tIfER13aiQuaterniontIfES3_(ptr noundef nonnull align 4 dereferenceable(64) %0, ptr noundef nonnull align 4 dereferenceable(12) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(12) %3) local_unnamed_addr #9 comdat align 2 !guid !26 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.b = load float, ptr %i.a, align 4
  store float %i.b, ptr %3, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.e = load float, ptr %i.d, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 4
  store float %i.e, ptr %i.f, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.i = load float, ptr %i.h, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  store float %i.i, ptr %i.j, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = load <2 x float>, ptr %i.n, align 4      ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.q = load float, ptr %i.p, align 4            ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.s = load float, ptr %i.r, align 4            ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.u = load float, ptr %0, align 4              ; 3 uses
  %i.v = load float, ptr %i.c, align 4            ; 2 uses
  %i.w = load float, ptr %i.g, align 4            ; 3 uses
  %i.x = load float, ptr %i.k, align 4            ; 4 uses
  %i.y = load float, ptr %i.l, align 4            ; 4 uses
  %i.z = load float, ptr %i.m, align 4            ; 4 uses
  %i.aa = insertelement <2 x float> poison, float %i.q, i64 0
  %i.ab = insertelement <2 x float> %i.aa, float %i.v, i64 1 ; 2 uses
  %i.ac = fmul <2 x float> %i.ab, %i.ab
  %i.ad = insertelement <2 x float> %i.o, float %i.u, i64 1 ; 2 uses
  %i.ae = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ad, <2 x float> %i.ad, <2 x float> %i.ac)
  %i.af = insertelement <2 x float> poison, float %i.s, i64 0
  %i.ag = insertelement <2 x float> %i.af, float %i.w, i64 1 ; 2 uses
  %i.ah = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ag, <2 x float> %i.ag, <2 x float> %i.ae)
  %i.ai = tail call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.ah) ; 4 uses
  %i.aj = extractelement <2 x float> %i.ai, i64 1
  store float %i.aj, ptr %1, align 4
  %i.ak = fmul float %i.y, %i.y
  %i.al = tail call float @llvm.fmuladd.f32(float %i.x, float %i.x, float %i.ak)
  %i.am = tail call noundef float @llvm.fmuladd.f32(float %i.z, float %i.z, float %i.al)
  %sqrt.i31 = tail call noundef float @llvm.sqrt.f32(float %i.am) ; 3 uses
  store float %sqrt.i31, ptr %i.t, align 4
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ao = extractelement <2 x float> %i.ai, i64 0
  store float %i.ao, ptr %i.an, align 4
  %i.ap = load float, ptr %0, align 4             ; 3 uses
  %i.aq = load float, ptr %i.l, align 4           ; 3 uses
  %i.ar = fmul float %i.ap, %i.aq                 ; 2 uses
  %i.as = load float, ptr %i.r, align 4           ; 4 uses
  %i.at = fmul float %i.ar, %i.as
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.av = load float, ptr %i.au, align 4          ; 6 uses
  %i.aw = load float, ptr %i.h, align 4           ; 5 uses
  %i.ax = fmul float %i.ar, %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.az = load float, ptr %i.ay, align 4          ; 6 uses
  %i.ba = fneg float %i.az
  %i.bb = fmul float %i.ax, %i.ba
  %i.bc = tail call float @llvm.fmuladd.f32(float %i.at, float %i.av, float %i.bb)
  %i.bd = load float, ptr %i.p, align 4           ; 3 uses
  %i.be = fmul float %i.ap, %i.bd                 ; 2 uses
  %i.bf = fmul float %i.aw, %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.bh = load float, ptr %i.bg, align 4          ; 6 uses
  %i.bi = tail call float @llvm.fmuladd.f32(float %i.bf, float %i.bh, float %i.bc)
  %i.bj = load float, ptr %i.m, align 4           ; 4 uses
  %i.bk = fneg float %i.bj                        ; 3 uses
  %i.bl = fmul float %i.be, %i.bk
  %i.bm = tail call float @llvm.fmuladd.f32(float %i.bl, float %i.av, float %i.bi)
  %i.bn = load float, ptr %i.d, align 4           ; 3 uses
  %i.bo = fmul float %i.ap, %i.bn                 ; 2 uses
  %i.bp = fmul float %i.bj, %i.bo
  %i.bq = tail call float @llvm.fmuladd.f32(float %i.bp, float %i.az, float %i.bm)
  %i.br = fneg float %i.as                        ; 3 uses
  %i.bs = fmul float %i.bo, %i.br
  %i.bt = tail call float @llvm.fmuladd.f32(float %i.bs, float %i.bh, float %i.bq)
  %i.bu = load float, ptr %i.k, align 4           ; 3 uses
  %i.bv = fmul float %i.bd, %i.bu                 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bx = load float, ptr %i.bw, align 4          ; 6 uses
  %i.by = fneg float %i.aw                        ; 2 uses
  %i.bz = fmul float %i.bv, %i.by
  %i.ca = tail call float @llvm.fmuladd.f32(float %i.bz, float %i.bx, float %i.bt)
  %i.cb = load float, ptr %i.g, align 4           ; 4 uses
  %i.cc = fmul float %i.bv, %i.cb
  %i.cd = tail call float @llvm.fmuladd.f32(float %i.cc, float %i.av, float %i.ca)
  %i.ce = fmul float %i.bn, %i.bu                 ; 2 uses
  %i.cf = fneg float %i.cb                        ; 3 uses
  %i.cg = fmul float %i.ce, %i.cf
  %i.ch = tail call float @llvm.fmuladd.f32(float %i.cg, float %i.az, float %i.cd)
  %i.ci = fmul float %i.as, %i.ce
  %i.cj = tail call float @llvm.fmuladd.f32(float %i.ci, float %i.bx, float %i.ch)
  %i.ck = load float, ptr %i.c, align 4           ; 3 uses
  %i.cl = fmul float %i.bu, %i.ck                 ; 2 uses
  %i.cm = fmul float %i.cl, %i.br
  %i.cn = tail call float @llvm.fmuladd.f32(float %i.cm, float %i.av, float %i.cj)
  %i.co = fmul float %i.aw, %i.cl
  %i.cp = tail call float @llvm.fmuladd.f32(float %i.co, float %i.az, float %i.cn)
  %i.cq = load float, ptr %i.n, align 4           ; 3 uses
  %i.cr = fmul float %i.bn, %i.cq                 ; 2 uses
  %i.cs = fmul float %i.cb, %i.cr
  %i.ct = tail call float @llvm.fmuladd.f32(float %i.cs, float %i.bh, float %i.cp)
  %i.cu = fmul float %i.cr, %i.bk
  %i.cv = tail call float @llvm.fmuladd.f32(float %i.cu, float %i.bx, float %i.ct)
  %i.cw = fmul float %i.ck, %i.cq                 ; 2 uses
  %i.cx = fmul float %i.bj, %i.cw
  %i.cy = tail call float @llvm.fmuladd.f32(float %i.cx, float %i.av, float %i.cv)
  %i.cz = fmul float %i.cw, %i.by
  %i.da = tail call float @llvm.fmuladd.f32(float %i.cz, float %i.bh, float %i.cy)
  %i.db = fmul float %i.aq, %i.cq                 ; 2 uses
  %i.dc = fmul float %i.aw, %i.db
  %i.dd = tail call float @llvm.fmuladd.f32(float %i.dc, float %i.bx, float %i.da)
  %i.de = fmul float %i.db, %i.cf
  %i.df = tail call float @llvm.fmuladd.f32(float %i.de, float %i.av, float %i.dd)
  %i.dg = load float, ptr %i.a, align 4           ; 3 uses
  %i.dh = fmul float %i.ck, %i.dg                 ; 2 uses
  %i.di = fmul float %i.dh, %i.bk
  %i.dj = tail call float @llvm.fmuladd.f32(float %i.di, float %i.az, float %i.df)
  %i.dk = fmul float %i.as, %i.dh
end_hunk_0
begin_hunk_1_@_ZNK12aiMatrix4x4tIfE9DecomposeER10aiVector3tIfER13aiQuaterniontIfES3_:bb.a
  %i.fd = shufflevector <4 x float> %i.fc, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1> ; 2 uses
  %i.fe = fsub float %.sroa.27.0, %.sroa.37.0
  %i.ff = insertelement <2 x float> poison, float %.sroa.1260.0, i64 0
  %i.fg = insertelement <2 x float> %i.ff, float %.sroa.17.0, i64 1
  %i.fh = fsub <2 x float> %i.ev, %i.fg
  %i.fi = shufflevector <4 x float> %i.fc, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.fj = insertelement <4 x float> %i.fi, float %i.fe, i64 1
  %i.fk = shufflevector <2 x float> %i.fh, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.fl = shufflevector <4 x float> %i.fj, <4 x float> %i.fk, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 2 uses
  %i.fm = fmul <4 x float> %i.fl, %i.fd
  %i.fn = fdiv <4 x float> %i.fl, %i.fd
  %i.fo = shufflevector <4 x float> %i.fm, <4 x float> %i.fn, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  br label %_ZN13aiQuaterniontIfEC2ERK12aiMatrix3x3tIfE.exit

bb.e:                                             ; preds = %bb.c
  %i.fp = fcmp ogt float %.sroa.055.0, %.sroa.22.0
  %i.fq = fcmp ogt float %.sroa.055.0, %.sroa.42.0
  %or.cond.i = and i1 %i.fp, %i.fq
  br i1 %or.cond.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.fr = fadd float %.sroa.055.0, 1.000000e+00
  %i.fs = fsub float %i.fr, %.sroa.22.0
  %i.ft = fsub float %i.fs, %.sroa.42.0
  %i.fu = tail call noundef float @sqrtf(float noundef %i.ft) #13
  %i.fv = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %i.fu, i64 0
  %i.fw = fmul <4 x float> %i.fv, <float 2.000000e+00, float 2.500000e-01, float poison, float poison> ; 2 uses
  %i.fx = shufflevector <4 x float> %i.fw, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 0> ; 2 uses
  %i.fy = insertelement <2 x float> poison, float %.sroa.1260.0, i64 0
  %i.fz = insertelement <2 x float> %i.fy, float %.sroa.17.0, i64 1
  %i.ga = fadd <2 x float> %i.ev, %i.fz
  %i.gb = fsub float %.sroa.27.0, %.sroa.37.0
  %i.gc = insertelement <4 x float> poison, float %i.gb, i64 0
  %i.gd = shufflevector <4 x float> %i.gc, <4 x float> %i.fw, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.ge = shufflevector <2 x float> %i.ga, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.gf = shufflevector <4 x float> %i.gd, <4 x float> %i.ge, <4 x i32> <i32 0, i32 1, i32 5, i32 4> ; 2 uses
  %i.gg = fdiv <4 x float> %i.gf, %i.fx
  %i.gh = fmul <4 x float> %i.gf, %i.fx
  %i.gi = shufflevector <4 x float> %i.gg, <4 x float> %i.gh, <4 x i32> <i32 0, i32 5, i32 2, i32 3>
  br label %_ZN13aiQuaterniontIfEC2ERK12aiMatrix3x3tIfE.exit

bb.g:                                             ; preds = %bb.e
  %i.gj = fcmp ogt float %.sroa.22.0, %.sroa.42.0
  br i1 %i.gj, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.gk = fadd float %.sroa.22.0, 1.000000e+00
  %i.gl = fsub float %i.gk, %.sroa.055.0
  %i.gm = fsub float %i.gl, %.sroa.42.0
  %i.gn = tail call noundef float @sqrtf(float noundef %i.gm) #13
  %i.go = fmul float %i.gn, 2.000000e+00
  %i.gp = extractelement <2 x float> %i.ev, i64 1
  %i.gq = fadd float %i.gp, %.sroa.17.0
  %i.gr = fadd float %.sroa.27.0, %.sroa.37.0
  %i.gs = extractelement <2 x float> %i.ev, i64 0
  %i.gt = fsub float %i.gs, %.sroa.1260.0
  %i.gu = insertelement <4 x float> <float poison, float poison, float 2.500000e-01, float poison>, float %i.gt, i64 0
  %i.gv = insertelement <4 x float> %i.gu, float %i.gq, i64 1
  %i.gw = insertelement <4 x float> %i.gv, float %i.gr, i64 3 ; 2 uses
  %i.gx = insertelement <4 x float> poison, float %i.go, i64 0
  %i.gy = shufflevector <4 x float> %i.gx, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.gz = fdiv <4 x float> %i.gw, %i.gy
  %i.ha = fmul <4 x float> %i.gw, %i.gy
  %i.hb = shufflevector <4 x float> %i.gz, <4 x float> %i.ha, <4 x i32> <i32 0, i32 1, i32 6, i32 3>
  br label %_ZN13aiQuaterniontIfEC2ERK12aiMatrix3x3tIfE.exit

bb.i:                                             ; preds = %bb.g
  %i.hc = fadd float %.sroa.42.0, 1.000000e+00
  %i.hd = fsub float %i.hc, %.sroa.055.0
  %i.he = fsub float %i.hd, %.sroa.22.0
  %i.hf = tail call noundef float @sqrtf(float noundef %i.he) #13
  %i.hg = fmul float %i.hf, 2.000000e+00
  %i.hh = extractelement <2 x float> %i.ev, i64 0
  %i.hi = fadd float %.sroa.1260.0, %i.hh
  %i.hj = fadd float %.sroa.27.0, %.sroa.37.0
  %i.hk = extractelement <2 x float> %i.ev, i64 1
  %i.hl = fsub float %i.hk, %.sroa.17.0
  %i.hm = insertelement <4 x float> <float poison, float poison, float poison, float 2.500000e-01>, float %i.hl, i64 0
  %i.hn = insertelement <4 x float> %i.hm, float %i.hi, i64 1
  %i.ho = insertelement <4 x float> %i.hn, float %i.hj, i64 2 ; 2 uses
  %i.hp = insertelement <4 x float> poison, float %i.hg, i64 0
  %i.hq = shufflevector <4 x float> %i.hp, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.hr = fdiv <4 x float> %i.ho, %i.hq
  %i.hs = fmul <4 x float> %i.ho, %i.hq
  %i.ht = shufflevector <4 x float> %i.hr, <4 x float> %i.hs, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  br label %_ZN13aiQuaterniontIfEC2ERK12aiMatrix3x3tIfE.exit

_ZN13aiQuaterniontIfEC2ERK12aiMatrix3x3tIfE.exit: ; preds = %bb.d, %bb.f, %bb.h, %bb.i
  %i.hu = phi <4 x float> [ %i.fo, %bb.d ], [ %i.gi, %bb.f ], [ %i.hb, %bb.h ], [ %i.ht, %bb.i ]
  store <4 x float> %i.hu, ptr %2, align 4
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6Assimp12ScaleProcess13traverseNodesEP6aiNodej(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(28) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #5 align 2 !guid !28 {
bb.a:
  tail call void @_ZN6Assimp12ScaleProcess12applyScalingEP6aiNode(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef %1)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 1104 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 1112
  %i.d = add i32 %2, 1
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.07 = phi i64 [ 0, %.lr.ph ], [ %i.h, %bb.b ]  ; 2 uses
  %i.e = load ptr, ptr %i.c, align 8
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %.07
  %i.g = load ptr, ptr %i.f, align 8
  tail call void @_ZN6Assimp12ScaleProcess13traverseNodesEP6aiNodej(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef %i.g, i32 noundef %i.d)
  %i.h = add nuw nsw i64 %.07, 1                  ; 2 uses
  %i.i = load i32, ptr %i.a, align 8
  %i.j = zext i32 %i.i to i64
  %i.k = icmp samesign ult i64 %i.h, %i.j
  br i1 %i.k, label %bb.b, label %._crit_edge, !llvm.loop !27
}

; Function Attrs: mustprogress uwtable
define void @_ZN6Assimp12ScaleProcess12applyScalingEP6aiNode(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(28) %0, ptr noundef %1) local_unnamed_addr #8 align 2 !guid !31 {
bb.a:
  %2 = alloca %class.aiVector3t, align 8          ; 7 uses
  %3 = alloca %class.aiVector3t, align 8          ; 7 uses
  %4 = alloca %class.aiQuaterniont, align 16      ; 6 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 4
  store <2 x float> zeroinitializer, ptr %2, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store float 0.000000e+00, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 4
  store <2 x float> zeroinitializer, ptr %3, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store float 0.000000e+00, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %4, align 16
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 1028 ; 2 uses
  call void @_ZNK12aiMatrix4x4tIfE9DecomposeER10aiVector3tIfER13aiQuaterniontIfES3_(ptr noundef nonnull align 4 dereferenceable(64) %i.f, ptr noundef nonnull align 4 dereferenceable(12) %3, ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(12) %2)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load float, ptr %i.g, align 8            ; 3 uses
  %i.i = load float, ptr %2, align 8
  %i.j = load float, ptr %i.a, align 4
  %i.k = fmul float %i.h, %i.j                    ; 2 uses
  %i.l = load float, ptr %i.b, align 8
  %i.m = fmul float %i.h, %i.l                    ; 4 uses
  %i.n = load <3 x float>, ptr %i.e, align 4, !noalias !32 ; 5 uses
  %i.o = shufflevector <3 x float> %i.n, <3 x float> poison, <4 x i32> <i32 1, i32 0, i32 2, i32 0> ; 3 uses
  %i.p = shufflevector <3 x float> %i.n, <3 x float> poison, <4 x i32> <i32 2, i32 2, i32 1, i32 2> ; 2 uses
  %i.q = shufflevector <3 x float> %i.n, <3 x float> poison, <4 x i32> <i32 1, i32 1, i32 0, i32 1>
  %i.r = load <2 x float>, ptr %4, align 16, !noalias !32 ; 3 uses
  %i.s = load float, ptr %i.e, align 4, !noalias !32 ; 2 uses
  %i.t = extractelement <2 x float> %i.r, i64 0
  %i.u = fneg float %i.t                          ; 2 uses
  %i.v = insertelement <4 x float> %i.p, float %i.u, i64 1
  %i.w = shufflevector <2 x float> %i.r, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 1> ; 4 uses
  %i.x = shufflevector <4 x float> %i.v, <4 x float> %i.w, <4 x i32> <i32 0, i32 1, i32 4, i32 4>
  %i.y = fmul <4 x float> %i.p, %i.x              ; 2 uses
  %i.z = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.o, <4 x float> %i.q, <4 x float> %i.y) ; 3 uses
  %i.aa = extractelement <4 x float> %i.z, i64 3
  %i.ab = shufflevector <3 x float> %i.n, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1> ; 2 uses
  %i.ac = shufflevector <4 x float> %i.y, <4 x float> %i.ab, <4 x i32> <i32 0, i32 poison, i32 5, i32 poison>
  %i.ad = shufflevector <4 x float> %i.ac, <4 x float> %i.w, <4 x i32> <i32 0, i32 5, i32 2, i32 5>
  %i.ae = insertelement <4 x float> <float 1.000000e+00, float poison, float poison, float poison>, float %i.u, i64 1
  %i.af = shufflevector <4 x float> %i.ae, <4 x float> %i.w, <4 x i32> <i32 0, i32 1, i32 1, i32 4>
  %i.ag = fmul <4 x float> %i.ad, %i.af
  %i.ah = shufflevector <3 x float> %i.n, <3 x float> poison, <2 x i32> <i32 poison, i32 2>
  %i.ai = shufflevector <2 x float> %i.r, <2 x float> %i.ah, <4 x i32> <i32 1, i32 3, i32 1, i32 3>
  %i.aj = shufflevector <4 x float> %i.ab, <4 x float> %i.w, <4 x i32> <i32 5, i32 1, i32 2, i32 3>
  %i.ak = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ai, <4 x float> %i.aj, <4 x float> %i.ag) ; 3 uses
  %i.al = extractelement <4 x float> %i.ak, i64 0
  %i.am = call float @llvm.fmuladd.f32(float %i.al, float -2.000000e+00, float 1.000000e+00) ; 2 uses
  %i.an = extractelement <4 x float> %i.ak, i64 1
  %i.ao = fmul float %i.an, 2.000000e+00          ; 2 uses
  %foldExtExtBinop = fmul <4 x float> %i.o, %i.o
  %i.ap = extractelement <4 x float> %foldExtExtBinop, i64 0
  %i.aq = insertelement <4 x float> %i.z, float 1.000000e+00, i64 3
  %i.ar = fmul float %i.aa, 2.000000e+00          ; 2 uses
  %i.as = call float @llvm.fmuladd.f32(float %i.s, float %i.s, float %i.ap)
  %i.at = shufflevector <4 x float> %i.ak, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.au = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.i, i64 0
  %i.av = insertelement <2 x float> poison, float %i.am, i64 0
  %i.aw = insertelement <2 x float> %i.av, float %i.ao, i64 1
  %i.ax = fmul <2 x float> %i.aw, zeroinitializer
  %i.ay = fmul float %i.ar, 0.000000e+00
  %i.az = insertelement <4 x float> poison, float %i.ay, i64 0
  %i.ba = shufflevector <2 x float> %i.ax, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bb = shufflevector <4 x float> %i.az, <4 x float> %i.ba, <4 x i32> <i32 0, i32 4, i32 5, i32 poison> ; 2 uses
  %i.bc = insertelement <4 x float> %i.bb, float %i.ar, i64 3
  %i.bd = load <2 x float>, ptr %3, align 8       ; 2 uses
  %i.be = shufflevector <2 x float> %i.bd, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 4 uses
  %5 = shufflevector <4 x float> %i.be, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float poison>, <4 x i32> <i32 4, i32 5, i32 6, i32 0>
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1044
  %i.bf = shufflevector <4 x float> %i.z, <4 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.bg = insertelement <2 x float> %i.bf, float %i.as, i64 0
  %i.bh = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bg, <2 x float> splat (float -2.000000e+00), <2 x float> splat (float 1.000000e+00)) ; 2 uses
  %i.bi = shufflevector <2 x float> %i.bh, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 5 uses
  %i.bj = shufflevector <4 x float> %i.aq, <4 x float> %i.bi, <4 x i32> <i32 5, i32 1, i32 2, i32 3>
  %i.bk = fmul <4 x float> %i.bj, <float 1.000000e+00, float 2.000000e+00, float 2.000000e+00, float -0.000000e+00> ; 3 uses
  %i.bl = fadd <4 x float> %i.bk, %i.bc
  %i.bm = insertelement <4 x float> %i.bk, float -0.000000e+00, i64 3
  %i.bn = shufflevector <4 x float> %i.bm, <4 x float> %i.bi, <4 x i32> <i32 5, i32 1, i32 2, i32 3>
  %i.bo = shufflevector <4 x float> %i.at, <4 x float> %i.bi, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.bp = fmul <4 x float> %i.bo, <float 2.000000e+00, float 2.000000e+00, float 1.000000e+00, float 1.000000e+00> ; 6 uses
  %i.bq = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bp, <4 x float> zeroinitializer, <4 x float> %i.bl)
  %i.br = shufflevector <4 x float> %i.bp, <4 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.bs = insertelement <2 x float> %i.br, float %i.h, i64 0
  %i.bt = fmul <2 x float> %i.bs, %i.au           ; 2 uses
  %i.bu = shufflevector <2 x float> %i.bt, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.bv = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bu, <4 x float> zeroinitializer, <4 x float> %i.bq) ; 5 uses
  %i.bw = shufflevector <4 x float> %i.bk, <4 x float> %i.bv, <3 x i32> <i32 2, i32 7, i32 1>
  %i.bx = insertelement <3 x float> <float poison, float -0.000000e+00, float poison>, float %i.ao, i64 0
  %i.by = insertelement <3 x float> %i.bx, float %i.am, i64 2
  %i.bz = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.bw, <3 x float> <float 0.000000e+00, float 1.000000e+00, float 0.000000e+00>, <3 x float> %i.by)
  %i.ca = shufflevector <4 x float> %i.bp, <4 x float> poison, <3 x i32> <i32 poison, i32 poison, i32 1>
  %i.cb = insertelement <3 x float> %i.ca, float -0.000000e+00, i64 1
  %i.cc = shufflevector <2 x float> %i.bh, <2 x float> poison, <3 x i32> <i32 0, i32 poison, i32 poison>
  %i.cd = shufflevector <3 x float> %i.cc, <3 x float> %i.cb, <3 x i32> <i32 0, i32 4, i32 5>
  %i.ce = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.cd, <3 x float> zeroinitializer, <3 x float> %i.bz)
  %i.cf = insertelement <3 x float> poison, float %i.k, i64 0
  %i.cg = shufflevector <3 x float> %i.cf, <3 x float> poison, <3 x i32> zeroinitializer
  %i.ch = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.cg, <3 x float> zeroinitializer, <3 x float> %i.ce) ; 3 uses
  %i.ci = shufflevector <4 x float> %i.bp, <4 x float> %i.bv, <4 x i32> <i32 0, i32 1, i32 poison, i32 4>
  %i.cj = shufflevector <4 x float> %i.ci, <4 x float> %i.bi, <4 x i32> <i32 0, i32 1, i32 4, i32 3>
  %i.ck = load <2 x float>, ptr %i.c, align 4     ; 3 uses
  %i.cl = load float, ptr %i.d, align 8
  %i.cm = shufflevector <2 x float> %i.ck, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 3 uses
  %6 = shufflevector <4 x float> %i.cm, <4 x float> <float 0.000000e+00, float poison, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 4, i32 0, i32 6, i32 7>
  %i.cn = shufflevector <3 x float> %i.ch, <3 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.co = fmul <4 x float> %6, %i.cn
  %i.cp = shufflevector <4 x float> %i.be, <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.cq = shufflevector <3 x float> %i.ch, <3 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.cr = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cp, <4 x float> %i.cq, <4 x float> %i.co)
  %7 = shufflevector <4 x float> %i.cm, <4 x float> <float 0.000000e+00, float 0.000000e+00, float poison, float 0.000000e+00>, <4 x i32> <i32 4, i32 5, i32 1, i32 7> ; 2 uses
  %i.cs = shufflevector <3 x float> %i.ch, <3 x float> poison, <4 x i32> zeroinitializer
  %i.ct = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %7, <4 x float> %i.cs, <4 x float> %i.cr)
  %8 = shufflevector <4 x float> %i.cm, <4 x float> <float poison, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 1, i32 5, i32 6, i32 7>
  %i.cu = extractelement <2 x float> %i.ck, i64 0
  %i.cv = shufflevector <4 x float> %i.bv, <4 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.cw = insertelement <2 x float> %i.ck, float 0.000000e+00, i64 1
  %i.cx = fmul <2 x float> %i.cv, %i.cw           ; 2 uses
  %i.cy = shufflevector <2 x float> %i.cx, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.cz = shufflevector <4 x float> %i.bb, <4 x float> %i.cy, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.da = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bn, <4 x float> zeroinitializer, <4 x float> %i.cz) ; 4 uses
  %i.db = shufflevector <2 x float> %i.bt, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.dc = shufflevector <4 x float> %i.db, <4 x float> %i.bp, <4 x i32> <i32 poison, i32 poison, i32 0, i32 4>
  %i.dd = insertelement <4 x float> %i.dc, float %i.k, i64 0
  %i.de = insertelement <4 x float> %i.dd, float %i.m, i64 1
  %i.df = shufflevector <4 x float> %i.da, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float poison>, <4 x i32> <i32 4, i32 5, i32 6, i32 0>
  %i.dg = fadd <4 x float> %i.de, %i.df           ; 4 uses
  %i.dh = shufflevector <4 x float> %i.dg, <4 x float> poison, <4 x i32> zeroinitializer
  %i.di = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dh, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %i.ct)
  %i.dj = extractelement <4 x float> %i.dg, i64 3
  %i.dk = call float @llvm.fmuladd.f32(float %i.m, float 0.000000e+00, float %i.dj) ; 2 uses
  %foldExtExtBinop100 = fadd <4 x float> %i.bp, %i.da
  %i.dl = extractelement <4 x float> %foldExtExtBinop100, i64 1
  %i.dm = call float @llvm.fmuladd.f32(float %i.m, float 0.000000e+00, float %i.dl) ; 2 uses
  %i.dn = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %5, <4 x float> %i.cj, <4 x float> %i.da) ; 4 uses
  %i.do = shufflevector <4 x float> %i.bv, <4 x float> poison, <2 x i32> zeroinitializer
  %i.dp = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.do, <2 x float> zeroinitializer, <2 x float> %i.cx)
  %i.dq = shufflevector <4 x float> %i.bv, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.dr = shufflevector <4 x float> %i.dn, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %i.ds = shufflevector <2 x float> %i.dp, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.dt = shufflevector <4 x float> %i.dr, <4 x float> %i.ds, <4 x i32> <i32 0, i32 4, i32 5, i32 5>
  %i.du = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %7, <4 x float> %i.dq, <4 x float> %i.dt)
  %i.dv = shufflevector <4 x float> %i.dn, <4 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.dw = shufflevector <2 x float> %i.dv, <2 x float> <float -0.000000e+00, float poison>, <4 x i32> <i32 2, i32 1, i32 1, i32 1>
  %i.dx = fadd <4 x float> %i.dw, zeroinitializer
  %i.dy = shufflevector <4 x float> %i.dn, <4 x float> <float -0.000000e+00, float poison, float poison, float poison>, <4 x i32> <i32 4, i32 1, i32 1, i32 1>
  %i.dz = fadd <4 x float> %i.dy, <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>
  %i.ea = shufflevector <4 x float> %i.bi, <4 x float> %i.dn, <2 x i32> <i32 0, i32 6>
  %i.eb = shufflevector <4 x float> %i.da, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.ec = insertelement <2 x float> %i.eb, float 0.000000e+00, i64 1
  %i.ed = fadd <2 x float> %i.ea, %i.ec           ; 2 uses
  %i.ee = shufflevector <4 x float> %i.dg, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.ef = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ee, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %i.du)
  %i.eg = shufflevector <2 x float> %i.ed, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  store <4 x float> %i.ef, ptr %i.f, align 4
  store <4 x float> %i.di, ptr %.sroa.15.0..sroa_idx, align 4
  %.sroa.27.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1060
  %i.eh = insertelement <2 x float> <float poison, float -0.000000e+00>, float %i.m, i64 0
  %i.ei = insertelement <2 x float> %i.ed, float 0.000000e+00, i64 1
  %i.ej = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.eh, <2 x float> zeroinitializer, <2 x float> %i.ei)
  %i.ek = shufflevector <2 x float> %i.ej, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1> ; 2 uses
  %i.el = fmul float %i.dm, 0.000000e+00          ; 2 uses
  %i.em = fmul float %i.cu, %i.dm
  %i.en = insertelement <2 x float> %i.bd, float 0.000000e+00, i64 1
  %i.eo = insertelement <2 x float> poison, float %i.dk, i64 0
  %i.ep = shufflevector <2 x float> %i.eo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eq = insertelement <2 x float> poison, float %i.el, i64 0
  %i.er = insertelement <2 x float> %i.eq, float %i.em, i64 1
  %i.es = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.en, <2 x float> %i.ep, <2 x float> %i.er)
  %i.et = call float @llvm.fmuladd.f32(float %i.dk, float 0.000000e+00, float %i.el) ; 2 uses
  %i.eu = insertelement <4 x float> <float poison, float 0.000000e+00, float poison, float 0.000000e+00>, float %i.et, i64 0
  %i.ev = shufflevector <4 x float> %i.eu, <4 x float> %i.be, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.ew = fmul <4 x float> %i.ev, %i.dz
  %i.ex = shufflevector <4 x float> %i.ek, <4 x float> <float poison, float poison, float 0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 0, i32 poison, i32 6, i32 7>
  %i.ey = shufflevector <4 x float> %i.ex, <4 x float> %i.be, <4 x i32> <i32 0, i32 4, i32 2, i32 3>
  %i.ez = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ey, <4 x float> %i.dx, <4 x float> %i.ew) ; 2 uses
  %i.fa = insertelement <4 x float> <float 0.000000e+00, float 0.000000e+00, float poison, float -0.000000e+00>, float %i.cl, i64 2
  %i.fb = insertelement <4 x float> poison, float %i.et, i64 0
  %i.fc = shufflevector <4 x float> %i.fb, <4 x float> %i.ez, <4 x i32> <i32 poison, i32 poison, i32 0, i32 4>
  %i.fd = shufflevector <2 x float> %i.es, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.fe = shufflevector <4 x float> %i.fd, <4 x float> %i.fc, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ff = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fa, <4 x float> %i.ek, <4 x float> %i.fe)
  %i.fg = shufflevector <4 x float> %i.dg, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.fh = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fg, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, <4 x float> %i.ff)
  %i.fi = shufflevector <4 x float> %i.ez, <4 x float> poison, <4 x i32> <i32 3, i32 1, i32 2, i32 3>
  %i.fj = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %8, <4 x float> %i.eg, <4 x float> %i.fi)
  store <4 x float> %i.fh, ptr %.sroa.27.0..sroa_idx, align 4
  %.sroa.39.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 1076
  %i.fk = fadd <4 x float> %i.fj, <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>
  %i.fl = shufflevector <4 x float> %i.fk, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 3>
  store <4 x float> %i.fl, ptr %.sroa.39.0..sroa_idx, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN6Assimp11BaseProcessD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #0 comdat align 2 !guid !33 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN6Assimp12ScaleProcessD0Ev(ptr noundef nonnull align 8 dereferenceable(28) %0) unnamed_addr #0 comdat align 2 !guid !34 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #14
  ret void
}

declare noundef zeroext i1 @_ZNK6Assimp11BaseProcess20RequireVerboseFormatEv(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #6

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sqrtf(float noundef) local_unnamed_addr #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <3 x float> @llvm.fmuladd.v3f32(<3 x float>, <3 x float>, <3 x float>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.sqrt.v2f32(<2 x float>) #12

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { inlinehint mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nounwind }
attributes #14 = { builtin nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{i64 7525797768835474390}
!4 = !{i64 9110650872560088136}
!5 = !{i64 -5829313441362597046}
!6 = !{i64 4253856931218558206}
!7 = !{i64 8826875685114789610}
!8 = !{!"llvm.loop.mustprogress"}
!9 = !{i64 -878728122549470225}
!10 = !{i64 -1615916301924592043}
!11 = !{i64 8135085310436606321}
!12 = !{i64 4066673287680661713}
!13 = !{i64 -7486712201800253950}
!14 = distinct !{!14, !8}
!15 = distinct !{!15, !8}
!16 = distinct !{!16, !8}
!17 = distinct !{!17, !8}
!18 = distinct !{!18, i1 true, !"_ZNK13aiQuaterniontIfE9GetMatrixEv"}
!19 = distinct !{!19, !18, !"_ZNK13aiQuaterniontIfE9GetMatrixEv: argument 0"}
!20 = distinct !{!20, !8}
!21 = distinct !{!21, !8}
!22 = distinct !{!22, !8}
!23 = distinct !{!23, !8}
!24 = !{i64 -2503234441923816825}
!25 = !{!19}
!26 = !{i64 -3925793101135446697}
!27 = distinct !{!27, !8}
!28 = !{i64 7456150467310695531}
!29 = distinct !{!29, i1 true, !"_ZNK13aiQuaterniontIfE9GetMatrixEv"}
!30 = distinct !{!30, !29, !"_ZNK13aiQuaterniontIfE9GetMatrixEv: argument 0"}
!31 = !{i64 -6854074374042989139}
!32 = !{!30}
!33 = !{i64 -5435750618120175605}
!34 = !{i64 4089147305908046546}
end_hunk_1
