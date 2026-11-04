Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llama-cpp/original/ggml-quants?download=true
inline.NumInlined: 269
inline.NumDeleted: 39
loop-unroll.NumCompletelyUnrolled: 272
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 328
begin_hunk_0_@quantize_row_q2_K_ref:bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 240
  br label %.preheader126

.preheader126:                                    ; preds = %.preheader126.preheader, %.preheader124
  %indvars.iv180 = phi i64 [ 0, %.preheader126.preheader ], [ %indvars.iv.next181, %.preheader124 ] ; 7 uses
  %.0104145 = phi ptr [ %0, %.preheader126.preheader ], [ %i.od, %.preheader124 ] ; 6 uses
  br label %.preheader123

._crit_edge:                                      ; preds = %.preheader124, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret void

.preheader123:                                    ; preds = %.preheader126, %make_qkx2_quants.exit
  %indvars.iv = phi i64 [ 0, %.preheader126 ], [ %indvars.iv.next, %make_qkx2_quants.exit ] ; 4 uses
  %.0112135 = phi float [ 0.000000e+00, %.preheader126 ], [ %.1, %make_qkx2_quants.exit ] ; 2 uses
  %.0113134 = phi float [ 0.000000e+00, %.preheader126 ], [ %.1114, %make_qkx2_quants.exit ] ; 2 uses
  %i.aa = shl nuw nsw i64 %indvars.iv, 4          ; 5 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %.0104145, i64 %i.aa ; 16 uses
  %i.ac = load <4 x float>, ptr %i.ab, align 4, !tbaa !36 ; 3 uses
  %i.ad = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.ac) ; 6 uses
  store <4 x float> %i.ad, ptr %i.c, align 16, !tbaa !36
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %.0104145, i64 %i.aa
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = load <4 x float>, ptr %i.af, align 4, !tbaa !36
  %i.ah = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.ag) ; 5 uses
  store <4 x float> %i.ah, ptr %i.i, align 16, !tbaa !36
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %.0104145, i64 %i.aa
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  %i.ak = load <4 x float>, ptr %i.aj, align 4, !tbaa !36
  %i.al = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.ak) ; 5 uses
  store <4 x float> %i.al, ptr %i.j, align 16, !tbaa !36
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %.0104145, i64 %i.aa
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 48
  %i.ao = load <4 x float>, ptr %i.an, align 4, !tbaa !36
  %i.ap = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.ao) ; 5 uses
  store <4 x float> %i.ap, ptr %i.k, align 16, !tbaa !36
  tail call void @llvm.experimental.noalias.scope.decl(metadata !127)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !128)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !129)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !130)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !131)
  %i.aq = extractelement <4 x float> %i.ad, i64 0 ; 2 uses
  %i.ar = extractelement <4 x float> %i.ac, i64 0 ; 4 uses
  %foldExtExtBinop = fmul <4 x float> %i.ac, %i.ad
  %i.as = extractelement <4 x float> %foldExtExtBinop, i64 0
  %i.at = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  %i.au = load float, ptr %i.at, align 4, !tbaa !36, !alias.scope !127 ; 5 uses
  %i.av = fcmp olt float %i.au, %i.ar
  %.1174.i = select i1 %i.av, float %i.au, float %i.ar ; 2 uses
  %i.aw = fcmp ogt float %i.au, %i.ar
  %.1181.i = select i1 %i.aw, float %i.au, float %i.ar ; 2 uses
  %i.ax = extractelement <4 x float> %i.ad, i64 1 ; 3 uses
  %i.ay = fadd float %i.aq, %i.ax
  %i.az = tail call float @llvm.fmuladd.f32(float %i.ax, float %i.au, float %i.as)
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !36, !alias.scope !127 ; 5 uses
  %i.bc = fcmp olt float %i.bb, %.1174.i
  %.1174.i.1 = select i1 %i.bc, float %i.bb, float %.1174.i ; 2 uses
  %i.bd = fcmp ogt float %i.bb, %.1181.i
  %.1181.i.1 = select i1 %i.bd, float %i.bb, float %.1181.i ; 2 uses
  %i.be = extractelement <4 x float> %i.ad, i64 2 ; 3 uses
  %i.bf = fadd float %i.ay, %i.be
  %i.bg = tail call float @llvm.fmuladd.f32(float %i.be, float %i.bb, float %i.az)
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ab, i64 12
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !36, !alias.scope !127 ; 5 uses
  %i.bj = fcmp olt float %i.bi, %.1174.i.1
  %.1174.i.2 = select i1 %i.bj, float %i.bi, float %.1174.i.1 ; 2 uses
  %i.bk = fcmp ogt float %i.bi, %.1181.i.1
  %.1181.i.2 = select i1 %i.bk, float %i.bi, float %.1181.i.1 ; 2 uses
  %i.bl = extractelement <4 x float> %i.ad, i64 3 ; 3 uses
  %i.bm = fadd float %i.bf, %i.bl
  %i.bn = tail call float @llvm.fmuladd.f32(float %i.bl, float %i.bi, float %i.bg)
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ab, i64 16 ; 2 uses
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !36, !alias.scope !127 ; 5 uses
  %i.bq = fcmp olt float %i.bp, %.1174.i.2
  %.1174.i.3 = select i1 %i.bq, float %i.bp, float %.1174.i.2 ; 2 uses
  %i.br = fcmp ogt float %i.bp, %.1181.i.2
  %.1181.i.3 = select i1 %i.br, float %i.bp, float %.1181.i.2 ; 2 uses
  %i.bs = extractelement <4 x float> %i.ah, i64 0 ; 3 uses
  %i.bt = fadd float %i.bm, %i.bs
  %i.bu = tail call float @llvm.fmuladd.f32(float %i.bs, float %i.bp, float %i.bn)
  %i.bv = getelementptr inbounds nuw i8, ptr %i.ab, i64 20
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !36, !alias.scope !127 ; 5 uses
  %i.bx = fcmp olt float %i.bw, %.1174.i.3
  %.1174.i.4 = select i1 %i.bx, float %i.bw, float %.1174.i.3 ; 2 uses
  %i.by = fcmp ogt float %i.bw, %.1181.i.3
  %.1181.i.4 = select i1 %i.by, float %i.bw, float %.1181.i.3 ; 2 uses
  %i.bz = extractelement <4 x float> %i.ah, i64 1 ; 3 uses
  %i.ca = fadd float %i.bt, %i.bz
  %i.cb = tail call float @llvm.fmuladd.f32(float %i.bz, float %i.bw, float %i.bu)
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.cd = extractelement <4 x float> %i.ah, i64 2 ; 3 uses
  %i.ce = fadd float %i.ca, %i.cd
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ab, i64 28
  %i.cg = load <2 x float>, ptr %i.cc, align 4, !tbaa !36, !alias.scope !127 ; 2 uses
  %i.ch = load float, ptr %i.cf, align 4, !tbaa !36, !alias.scope !127 ; 5 uses
  %i.ci = extractelement <2 x float> %i.cg, i64 0 ; 5 uses
  %i.cj = fcmp olt float %i.ci, %.1174.i.4
  %.1174.i.5 = select i1 %i.cj, float %i.ci, float %.1174.i.4 ; 2 uses
  %i.ck = fcmp ogt float %i.ci, %.1181.i.4
  %.1181.i.5 = select i1 %i.ck, float %i.ci, float %.1181.i.4 ; 2 uses
  %i.cl = tail call float @llvm.fmuladd.f32(float %i.cd, float %i.ci, float %i.cb)
  %i.cm = fcmp olt float %i.ch, %.1174.i.5
  %.1174.i.6 = select i1 %i.cm, float %i.ch, float %.1174.i.5 ; 2 uses
  %i.cn = fcmp ogt float %i.ch, %.1181.i.5
  %.1181.i.6 = select i1 %i.cn, float %i.ch, float %.1181.i.5 ; 2 uses
  %i.co = extractelement <4 x float> %i.ah, i64 3 ; 3 uses
  %i.cp = fadd float %i.ce, %i.co
  %i.cq = tail call float @llvm.fmuladd.f32(float %i.co, float %i.ch, float %i.cl)
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.cs = extractelement <4 x float> %i.al, i64 0 ; 3 uses
  %i.ct = fadd float %i.cp, %i.cs
  %i.cu = extractelement <4 x float> %i.al, i64 1 ; 3 uses
  %i.cv = fadd float %i.ct, %i.cu
  %i.cw = extractelement <4 x float> %i.al, i64 2 ; 3 uses
  %i.cx = fadd float %i.cv, %i.cw
  %i.cy = load <4 x float>, ptr %i.cr, align 4, !tbaa !36, !alias.scope !127 ; 5 uses
  %i.cz = extractelement <4 x float> %i.cy, i64 0 ; 5 uses
  %i.da = fcmp olt float %i.cz, %.1174.i.6
  %.1174.i.7 = select i1 %i.da, float %i.cz, float %.1174.i.6 ; 2 uses
  %i.db = fcmp ogt float %i.cz, %.1181.i.6
  %.1181.i.7 = select i1 %i.db, float %i.cz, float %.1181.i.6 ; 2 uses
  %i.dc = tail call float @llvm.fmuladd.f32(float %i.cs, float %i.cz, float %i.cq)
  %i.dd = extractelement <4 x float> %i.cy, i64 1 ; 5 uses
  %i.de = fcmp olt float %i.dd, %.1174.i.7
  %.1174.i.8 = select i1 %i.de, float %i.dd, float %.1174.i.7 ; 2 uses
  %i.df = fcmp ogt float %i.dd, %.1181.i.7
  %.1181.i.8 = select i1 %i.df, float %i.dd, float %.1181.i.7 ; 2 uses
  %i.dg = tail call float @llvm.fmuladd.f32(float %i.cu, float %i.dd, float %i.dc)
  %i.dh = extractelement <4 x float> %i.cy, i64 2 ; 5 uses
  %i.di = fcmp olt float %i.dh, %.1174.i.8
  %.1174.i.9 = select i1 %i.di, float %i.dh, float %.1174.i.8 ; 2 uses
  %i.dj = fcmp ogt float %i.dh, %.1181.i.8
  %.1181.i.9 = select i1 %i.dj, float %i.dh, float %.1181.i.8 ; 2 uses
  %i.dk = tail call float @llvm.fmuladd.f32(float %i.cw, float %i.dh, float %i.dg)
  %i.dl = extractelement <4 x float> %i.cy, i64 3 ; 5 uses
  %i.dm = fcmp olt float %i.dl, %.1174.i.9
  %.1174.i.10 = select i1 %i.dm, float %i.dl, float %.1174.i.9 ; 2 uses
  %i.dn = fcmp ogt float %i.dl, %.1181.i.9
  %.1181.i.10 = select i1 %i.dn, float %i.dl, float %.1181.i.9 ; 2 uses
  %i.do = extractelement <4 x float> %i.al, i64 3 ; 3 uses
  %i.dp = fadd float %i.cx, %i.do
  %i.dq = tail call float @llvm.fmuladd.f32(float %i.do, float %i.dl, float %i.dk)
  %i.dr = getelementptr inbounds nuw i8, ptr %i.ab, i64 48 ; 2 uses
  %i.ds = load float, ptr %i.dr, align 4, !tbaa !36, !alias.scope !127 ; 5 uses
  %i.dt = fcmp olt float %i.ds, %.1174.i.10
  %.1174.i.11 = select i1 %i.dt, float %i.ds, float %.1174.i.10 ; 2 uses
  %i.du = fcmp ogt float %i.ds, %.1181.i.10
  %.1181.i.11 = select i1 %i.du, float %i.ds, float %.1181.i.10 ; 2 uses
  %i.dv = extractelement <4 x float> %i.ap, i64 0 ; 3 uses
  %i.dw = fadd float %i.dp, %i.dv
  %i.dx = tail call float @llvm.fmuladd.f32(float %i.dv, float %i.ds, float %i.dq)
  %i.dy = getelementptr inbounds nuw i8, ptr %i.ab, i64 52
  %i.dz = load float, ptr %i.dy, align 4, !tbaa !36, !alias.scope !127 ; 5 uses
  %i.ea = fcmp olt float %i.dz, %.1174.i.11
  %.1174.i.12 = select i1 %i.ea, float %i.dz, float %.1174.i.11 ; 2 uses
  %i.eb = fcmp ogt float %i.dz, %.1181.i.11
  %.1181.i.12 = select i1 %i.eb, float %i.dz, float %.1181.i.11 ; 2 uses
  %i.ec = extractelement <4 x float> %i.ap, i64 1 ; 3 uses
  %i.ed = fadd float %i.dw, %i.ec
  %i.ee = tail call float @llvm.fmuladd.f32(float %i.ec, float %i.dz, float %i.dx)
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ab, i64 56
  %i.eg = load float, ptr %i.ef, align 4, !tbaa !36, !alias.scope !127 ; 5 uses
  %i.eh = fcmp olt float %i.eg, %.1174.i.12
  %.1174.i.13 = select i1 %i.eh, float %i.eg, float %.1174.i.12 ; 2 uses
  %i.ei = fcmp ogt float %i.eg, %.1181.i.12
  %.1181.i.13 = select i1 %i.ei, float %i.eg, float %.1181.i.12 ; 2 uses
  %i.ej = extractelement <4 x float> %i.ap, i64 2 ; 3 uses
  %i.ek = fadd float %i.ed, %i.ej
  %i.el = tail call float @llvm.fmuladd.f32(float %i.ej, float %i.eg, float %i.ee)
  %i.em = getelementptr inbounds nuw i8, ptr %i.ab, i64 60
  %i.en = load float, ptr %i.em, align 4, !tbaa !36, !alias.scope !127 ; 5 uses
  %i.eo = fcmp olt float %i.en, %.1174.i.13
  %.1174.i.14 = select i1 %i.eo, float %i.en, float %.1174.i.13 ; 2 uses
  %i.ep = fcmp ogt float %i.en, %.1181.i.13
  %.1181.i.14 = select i1 %i.ep, float %i.en, float %.1181.i.13 ; 3 uses
  %i.eq = extractelement <4 x float> %i.ap, i64 3 ; 3 uses
  %i.er = fadd float %i.ek, %i.eq                 ; 2 uses
  %i.es = tail call float @llvm.fmuladd.f32(float %i.eq, float %i.en, float %i.el) ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.aa ; 3 uses
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv
  %i.ev = fcmp ogt float %.1174.i.14, 0.000000e+00
  %spec.store.select.i = select i1 %i.ev, float 0.000000e+00, float %.1174.i.14 ; 6 uses
  %i.ew = fcmp oeq float %.1181.i.14, %spec.store.select.i
  br i1 %i.ew, label %.preheader.preheader.i, label %bb.c

bb.b:                                             ; preds = %make_qkx2_quants.exit
  %i.ex = fcmp ogt float %.1114, 0.000000e+00
  br i1 %i.ex, label %bb.h, label %.preheader125

.preheader125:                                    ; preds = %bb.b
  %i.ey = getelementptr inbounds nuw [84 x i8], ptr %1, i64 %indvars.iv180
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ey, i8 0, i64 16, i1 false), !tbaa !34
  br label %bb.i

.preheader.preheader.i:                           ; preds = %.preheader123
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.et, i8 0, i64 range(i64 0, 33) 16, i1 false), !tbaa !34, !alias.scope !129
  br label %make_qkx2_quants.exit

bb.c:                                             ; preds = %.preheader123
  %i.ez = fsub float %.1181.i.14, %spec.store.select.i
  %i.fa = fdiv float 3.000000e+00, %i.ez          ; 2 uses
  %i.fb = fdiv float 1.000000e+00, %i.fa          ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %indvars.iv230.i = phi i64 [ 0, %bb.c ], [ %indvars.iv.next231.i, %bb.d ] ; 4 uses
  %.0183209.i = phi float [ 0.000000e+00, %bb.c ], [ %i.ft, %bb.d ]
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv230.i
  %i.fd = load float, ptr %i.fc, align 4, !tbaa !36, !alias.scope !127 ; 2 uses
  %i.fe = fsub float %i.fd, %spec.store.select.i
  %i.ff = fmul float %i.fa, %i.fe
  %i.fg = fadd float %i.ff, f0x4B400000
  %i.fh = bitcast float %i.fg to i32
  %i.fi = and i32 %i.fh, 8388607
  %i.fj = tail call i32 @llvm.umax.i32(i32 %i.fi, i32 4194304)
  %i.fk = tail call i32 @llvm.umin.i32(i32 %i.fj, i32 4194307)
  %i.fl = trunc i32 %i.fk to i8                   ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.et, i64 %indvars.iv230.i
  store i8 %i.fl, ptr %i.fm, align 1, !tbaa !34, !alias.scope !129
  %i.fn = uitofp nneg i8 %i.fl to float
  %i.fo = tail call float @llvm.fmuladd.f32(float %i.fb, float %i.fn, float %spec.store.select.i)
  %i.fp = fsub float %i.fo, %i.fd
  %i.fq = tail call float @llvm.fabs.f32(float %i.fp)
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv230.i
  %i.fs = load float, ptr %i.fr, align 4, !tbaa !36, !alias.scope !128
  %i.ft = tail call float @llvm.fmuladd.f32(float %i.fs, float %i.fq, float %.0183209.i) ; 2 uses
  %indvars.iv.next231.i = add nuw nsw i64 %indvars.iv230.i, 1 ; 2 uses
  %exitcond234.not.i = icmp eq i64 %indvars.iv.next231.i, 16
  br i1 %exitcond234.not.i, label %.preheader203.i, label %bb.d, !llvm.loop !6

.preheader203.i:                                  ; preds = %bb.d, %.loopexit.i
  %.2221.i = phi float [ %.4.i, %.loopexit.i ], [ %spec.store.select.i, %bb.d ] ; 4 uses
  %.0179220.i = phi i32 [ %i.jt, %.loopexit.i ], [ 0, %bb.d ] ; 3 uses
  %.1184219.i = phi float [ %.3186.i, %.loopexit.i ], [ %i.ft, %bb.d ] ; 3 uses
  %.0187218.i = phi float [ %.2189.i, %.loopexit.i ], [ %i.fb, %bb.d ] ; 2 uses
  %i.fu = uitofp nneg i32 %.0179220.i to float
  %i.fv = tail call nnan float @llvm.fmuladd.f32(float %i.fu, float 1.000000e-01, float -5.000000e-01)
  %i.fw = fadd nnan float %i.fv, 3.000000e+00
  %i.fx = fsub float %.1181.i.14, %.2221.i
  %i.fy = fdiv float %i.fw, %i.fx
  br label %bb.f

bb.e:                                             ; preds = %bb.f
  %i.fz = extractelement <2 x float> %i.hb, i64 1 ; 3 uses
  %i.ga = fneg float %i.fz                        ; 2 uses
  %i.gb = fmul float %i.fz, %i.ga
  %i.gc = extractelement <2 x float> %i.hb, i64 0 ; 3 uses
  %i.gd = tail call float @llvm.fmuladd.f32(float %i.er, float %i.gc, float %i.gb) ; 3 uses
  %i.ge = fcmp ogt float %i.gd, 0.000000e+00
  br i1 %i.ge, label %bb.g, label %.loopexit.i

bb.f:                                             ; preds = %bb.f, %.preheader203.i
  %indvars.iv235.i = phi i64 [ 0, %.preheader203.i ], [ %indvars.iv.next236.i, %bb.f ] ; 4 uses
  %.0176213.i = phi float [ 0.000000e+00, %.preheader203.i ], [ %i.hc, %bb.f ]
  %i.gf = phi <2 x float> [ zeroinitializer, %.preheader203.i ], [ %i.hb, %bb.f ]
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv235.i
  %i.gh = load float, ptr %i.gg, align 4, !tbaa !36, !alias.scope !127 ; 2 uses
  %i.gi = fsub float %i.gh, %.2221.i
  %i.gj = fmul float %i.fy, %i.gi
  %i.gk = fadd float %i.gj, f0x4B400000
  %i.gl = bitcast float %i.gk to i32
  %i.gm = and i32 %i.gl, 8388607                  ; 2 uses
  %i.gn = icmp samesign ult i32 %i.gm, 4194304
  %i.go = tail call i32 @llvm.umin.i32(i32 %i.gm, i32 4194307)
  %i.gp = add nsw i32 %i.go, -4194304
  %i.gq = select i1 %i.gn, i32 0, i32 %i.gp       ; 2 uses
  %i.gr = trunc i32 %i.gq to i8
  %i.gs = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv235.i
  store i8 %i.gr, ptr %i.gs, align 1, !tbaa !34, !alias.scope !131
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv235.i
  %i.gu = load float, ptr %i.gt, align 4, !tbaa !36, !alias.scope !128 ; 2 uses
  %i.gv = uitofp nneg i32 %i.gq to float          ; 2 uses
  %i.gw = fmul float %i.gu, %i.gv                 ; 2 uses
  %i.gx = insertelement <2 x float> poison, float %i.gw, i64 0
  %i.gy = insertelement <2 x float> %i.gx, float %i.gu, i64 1
  %i.gz = insertelement <2 x float> poison, float %i.gv, i64 0
  %i.ha = shufflevector <2 x float> %i.gz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hb = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gy, <2 x float> %i.ha, <2 x float> %i.gf) ; 3 uses
  %i.hc = tail call float @llvm.fmuladd.f32(float %i.gw, float %i.gh, float %.0176213.i) ; 4 uses
  %indvars.iv.next236.i = add nuw nsw i64 %indvars.iv235.i, 1 ; 2 uses
  %exitcond239.not.i = icmp eq i64 %indvars.iv.next236.i, 16
  br i1 %exitcond239.not.i, label %bb.e, label %bb.f, !llvm.loop !7

bb.g:                                             ; preds = %bb.e
  %i.hd = fneg float %i.hc
  %i.he = fdiv float %i.hc, %i.gc
  %i.hf = load <16 x i8>, ptr %i.b, align 16, !tbaa !34, !alias.scope !131
  %i.hg = uitofp <16 x i8> %i.hf to <16 x float>  ; 4 uses
  %i.hh = load <4 x float>, ptr %i.ab, align 4, !tbaa !36, !alias.scope !127
  %i.hi = shufflevector <16 x float> %i.hg, <16 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.hj = load <2 x float>, ptr %i.bo, align 4, !tbaa !36, !alias.scope !127
  %i.hk = shufflevector <16 x float> %i.hg, <16 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.hl = shufflevector <2 x float> %i.cg, <2 x float> %i.hj, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.hm = shufflevector <16 x float> %i.hg, <16 x float> poison, <4 x i32> <i32 8, i32 9, i32 10, i32 11>
  %i.hn = fmul float %i.es, %i.ga
  %i.ho = tail call float @llvm.fmuladd.f32(float %i.er, float %i.hc, float %i.hn)
  %i.hp = fdiv float %i.ho, %i.gd
  %i.hq = fmul float %i.fz, %i.hd
  %i.hr = tail call float @llvm.fmuladd.f32(float %i.gc, float %i.es, float %i.hq)
  %i.hs = fdiv float %i.hr, %i.gd                 ; 2 uses
  %i.ht = fcmp ogt float %i.hs, 0.000000e+00      ; 2 uses
  %.0172.i = select i1 %i.ht, float %i.he, float %i.hp ; 2 uses
  %.0171.i = select i1 %i.ht, float 0.000000e+00, float %i.hs ; 2 uses
  %i.hu = insertelement <4 x float> poison, float %.0172.i, i64 0
  %i.hv = shufflevector <4 x float> %i.hu, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.hw = insertelement <4 x float> poison, float %.0171.i, i64 0
  %i.hx = shufflevector <4 x float> %i.hw, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.hy = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hv, <4 x float> %i.hi, <4 x float> %i.hx)
  %i.hz = fsub <4 x float> %i.hy, %i.hh
  %i.ia = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.hz) ; 4 uses
  %i.ib = extractelement <4 x float> %i.ia, i64 0
  %i.ic = tail call float @llvm.fmuladd.f32(float %i.aq, float %i.ib, float 0.000000e+00)
  %i.id = extractelement <4 x float> %i.ia, i64 1
  %i.ie = tail call float @llvm.fmuladd.f32(float %i.ax, float %i.id, float %i.ic)
  %i.if = extractelement <4 x float> %i.ia, i64 2
  %i.ig = tail call float @llvm.fmuladd.f32(float %i.be, float %i.if, float %i.ie)
  %i.ih = extractelement <4 x float> %i.ia, i64 3
  %i.ii = tail call float @llvm.fmuladd.f32(float %i.bl, float %i.ih, float %i.ig)
  %i.ij = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hv, <4 x float> %i.hk, <4 x float> %i.hx)
  %i.ik = fsub <4 x float> %i.ij, %i.hl
  %i.il = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.ik) ; 4 uses
  %i.im = extractelement <4 x float> %i.il, i64 0
  %i.in = tail call float @llvm.fmuladd.f32(float %i.bs, float %i.im, float %i.ii)
  %i.io = extractelement <4 x float> %i.il, i64 1
  %i.ip = tail call float @llvm.fmuladd.f32(float %i.bz, float %i.io, float %i.in)
  %i.iq = extractelement <4 x float> %i.il, i64 2
  %i.ir = tail call float @llvm.fmuladd.f32(float %i.cd, float %i.iq, float %i.ip)
  %i.is = extractelement <4 x float> %i.il, i64 3
  %i.it = tail call float @llvm.fmuladd.f32(float %i.co, float %i.is, float %i.ir)
  %i.iu = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hv, <4 x float> %i.hm, <4 x float> %i.hx)
  %i.iv = fsub <4 x float> %i.iu, %i.cy
  %i.iw = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.iv) ; 4 uses
  %i.ix = extractelement <4 x float> %i.iw, i64 0
  %i.iy = tail call float @llvm.fmuladd.f32(float %i.cs, float %i.ix, float %i.it)
  %i.iz = extractelement <4 x float> %i.iw, i64 1
  %i.ja = tail call float @llvm.fmuladd.f32(float %i.cu, float %i.iz, float %i.iy)
  %i.jb = extractelement <4 x float> %i.iw, i64 2
  %i.jc = tail call float @llvm.fmuladd.f32(float %i.cw, float %i.jb, float %i.ja)
  %i.jd = extractelement <4 x float> %i.iw, i64 3
  %i.je = tail call float @llvm.fmuladd.f32(float %i.do, float %i.jd, float %i.jc)
  %i.jf = shufflevector <16 x float> %i.hg, <16 x float> poison, <4 x i32> <i32 12, i32 13, i32 14, i32 15>
  %i.jg = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hv, <4 x float> %i.jf, <4 x float> %i.hx)
  %i.jh = load <4 x float>, ptr %i.dr, align 4, !tbaa !36, !alias.scope !127
  %i.ji = fsub <4 x float> %i.jg, %i.jh
  %i.jj = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.ji) ; 4 uses
  %i.jk = extractelement <4 x float> %i.jj, i64 0
  %i.jl = tail call float @llvm.fmuladd.f32(float %i.dv, float %i.jk, float %i.je)
  %i.jm = extractelement <4 x float> %i.jj, i64 1
  %i.jn = tail call float @llvm.fmuladd.f32(float %i.ec, float %i.jm, float %i.jl)
  %i.jo = extractelement <4 x float> %i.jj, i64 2
  %i.jp = tail call float @llvm.fmuladd.f32(float %i.ej, float %i.jo, float %i.jn)
  %i.jq = extractelement <4 x float> %i.jj, i64 3
  %i.jr = tail call float @llvm.fmuladd.f32(float %i.eq, float %i.jq, float %i.jp) ; 2 uses
  %i.js = fcmp olt float %i.jr, %.1184219.i
  br i1 %i.js, label %.preheader202.preheader.i, label %.loopexit.i

.preheader202.preheader.i:                        ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.et, ptr noundef nonnull align 16 dereferenceable(16) %i.b, i64 range(i64 0, 33) 16, i1 false), !tbaa !34, !alias.scope !132
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.preheader202.preheader.i, %bb.g, %bb.e
  %.2189.i = phi float [ %.0187218.i, %bb.e ], [ %.0187218.i, %bb.g ], [ %.0172.i, %.preheader202.preheader.i ] ; 2 uses
  %.3186.i = phi float [ %.1184219.i, %bb.e ], [ %.1184219.i, %bb.g ], [ %i.jr, %.preheader202.preheader.i ]
  %.4.i = phi float [ %.2221.i, %bb.e ], [ %.2221.i, %bb.g ], [ %.0171.i, %.preheader202.preheader.i ] ; 2 uses
  %i.jt = add nuw nsw i32 %.0179220.i, 1
  %exitcond248.not.i = icmp eq i32 %.0179220.i, 15
  br i1 %exitcond248.not.i, label %make_qkx2_quants.exit, label %.preheader203.i, !llvm.loop !8

make_qkx2_quants.exit:                            ; preds = %.loopexit.i, %.preheader.preheader.i
  %.4.lcssa.sink.i = phi float [ %spec.store.select.i, %.preheader.preheader.i ], [ %.4.i, %.loopexit.i ]
  %.1.i = phi float [ 0.000000e+00, %.preheader.preheader.i ], [ %.2189.i, %.loopexit.i ] ; 3 uses
  %i.ju = fneg float %.4.lcssa.sink.i             ; 3 uses
  store float %i.ju, ptr %i.eu, align 4, !tbaa !36, !alias.scope !130
  %i.jv = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv
  store float %.1.i, ptr %i.jv, align 4, !tbaa !36
  %i.jw = fcmp ogt float %.1.i, %.0113134
  %.1114 = select i1 %i.jw, float %.1.i, float %.0113134 ; 4 uses
  %i.jx = fcmp olt float %.0112135, %i.ju
  %.1 = select i1 %i.jx, float %i.ju, float %.0112135 ; 4 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 16
  br i1 %exitcond.not, label %bb.b, label %.preheader123, !llvm.loop !124

bb.h:                                             ; preds = %bb.b
  %i.jy = fdiv nnan float 1.500000e+01, %.1114
  %i.jz = getelementptr inbounds nuw [84 x i8], ptr %1, i64 %indvars.iv180
  %i.ka = load <16 x float>, ptr %i.e, align 16, !tbaa !36
  %i.kb = insertelement <16 x float> poison, float %i.jy, i64 0
  %i.kc = shufflevector <16 x float> %i.kb, <16 x float> poison, <16 x i32> zeroinitializer
  %i.kd = fmul <16 x float> %i.kc, %i.ka
  %i.ke = fadd <16 x float> %i.kd, splat (float f0x4B400000)
  %i.kf = bitcast <16 x float> %i.ke to <16 x i32>
  %i.kg = trunc <16 x i32> %i.kf to <16 x i8>
  store <16 x i8> %i.kg, ptr %i.jz, align 1, !tbaa !34
  %i.kh = fdiv float %.1114, 1.500000e+01         ; 2 uses
  %i.ki = fmul nnan float %i.kh, f0x77800000
  %i.kj = fmul nnan float %i.ki, f0x08800000
  %i.kk = bitcast float %i.kh to i32              ; 2 uses
  %i.kl = shl nuw i32 %i.kk, 1
  %i.km = tail call i32 @llvm.umax.i32(i32 %i.kl, i32 1895825408)
  %spec.store.select.i119 = lshr exact i32 %i.km, 1
  %i.kn = and i32 %spec.store.select.i119, 2139095040
  %i.ko = add nuw i32 %i.kn, 125829120
  %i.kp = bitcast i32 %i.ko to float
  %i.kq = fadd float %i.kj, %i.kp
  %i.kr = bitcast float %i.kq to i32              ; 2 uses
  %i.ks = lshr i32 %i.kr, 13
  %i.kt = and i32 %i.ks, 31744
  %i.ku = and i32 %i.kr, 4095
  %i.kv = add nuw nsw i32 %i.kt, %i.ku
  %i.kw = icmp ugt i32 %i.kk, 2139095040
  %i.kx = trunc nuw i32 %i.kv to i16
  %i.ky = select i1 %i.kw, i16 32256, i16 %i.kx
  br label %bb.i

bb.i:                                             ; preds = %.preheader125, %bb.h
  %.sink = phi i16 [ 0, %.preheader125 ], [ %i.ky, %bb.h ] ; 2 uses
  %i.kz = getelementptr inbounds nuw [84 x i8], ptr %1, i64 %indvars.iv180
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 80
  store i16 %.sink, ptr %i.la, align 4, !tbaa !34
  %i.lb = fcmp ogt float %.1, 0.000000e+00
  br i1 %i.lb, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.lc = fdiv nnan float 1.500000e+01, %.1
  %i.ld = getelementptr inbounds nuw [84 x i8], ptr %1, i64 %indvars.iv180 ; 4 uses
  %i.le = load <16 x float>, ptr %i.d, align 16, !tbaa !36
  %i.lf = insertelement <16 x float> poison, float %i.lc, i64 0
  %i.lg = shufflevector <16 x float> %i.lf, <16 x float> poison, <16 x i32> zeroinitializer
  %i.lh = fmul <16 x float> %i.lg, %i.le
  %i.li = fadd <16 x float> %i.lh, splat (float f0x4B400000)
  %i.lj = bitcast <16 x float> %i.li to <16 x i32>
  %i.lk = load <16 x i8>, ptr %i.ld, align 1, !tbaa !34
  %i.ll = trunc <16 x i32> %i.lj to <16 x i8>
  %i.lm = shl <16 x i8> %i.ll, splat (i8 4)
  %i.ln = or <16 x i8> %i.lm, %i.lk
  store <16 x i8> %i.ln, ptr %i.ld, align 1, !tbaa !34
  %i.lo = fdiv float %.1, 1.500000e+01            ; 2 uses
  %i.lp = fmul nnan float %i.lo, f0x77800000
  %i.lq = fmul nnan float %i.lp, f0x08800000
  %i.lr = bitcast float %i.lo to i32              ; 2 uses
  %i.ls = shl nuw i32 %i.lr, 1
  %i.lt = tail call i32 @llvm.umax.i32(i32 %i.ls, i32 1895825408)
  %spec.store.select.i120 = lshr exact i32 %i.lt, 1
  %i.lu = and i32 %spec.store.select.i120, 2139095040
  %i.lv = add nuw i32 %i.lu, 125829120
  %i.lw = bitcast i32 %i.lv to float
  %i.lx = fadd float %i.lq, %i.lw
  %i.ly = bitcast float %i.lx to i32              ; 2 uses
  %i.lz = lshr i32 %i.ly, 13
  %i.ma = and i32 %i.lz, 31744
  %i.mb = and i32 %i.ly, 4095
  %i.mc = add nuw nsw i32 %i.ma, %i.mb
  %i.md = icmp ugt i32 %i.lr, 2139095040
  %i.me = trunc nuw i32 %i.mc to i16
  %i.mf = select i1 %i.md, i16 32256, i16 %i.me
  %i.mg = getelementptr inbounds nuw i8, ptr %i.ld, i64 82
  store i16 %i.mf, ptr %i.mg, align 2, !tbaa !34
  %.phi.trans.insert184 = getelementptr inbounds nuw i8, ptr %i.ld, i64 80
  %.pre = load i16, ptr %.phi.trans.insert184, align 4, !tbaa !34
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.mh = getelementptr inbounds nuw [84 x i8], ptr %1, i64 %indvars.iv180
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 82
  store i16 0, ptr %i.mi, align 2, !tbaa !34
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.mj = phi i16 [ %.sink, %bb.k ], [ %.pre, %bb.j ] ; 2 uses
  %i.mk = getelementptr inbounds nuw [84 x i8], ptr %1, i64 %indvars.iv180 ; 6 uses
  %i.ml = zext i16 %i.mj to i32                   ; 2 uses
  %i.mm = shl i32 %i.ml, 17                       ; 2 uses
  %i.mn = lshr exact i32 %i.mm, 4
  %i.mo = or disjoint i32 %i.mn, 1879048192
  %i.mp = bitcast i32 %i.mo to float
  %i.mq = and i32 %i.ml, 32767
  %i.mr = or disjoint i32 %i.mq, 1056964608
  %i.ms = bitcast i32 %i.mr to float
  %i.mt = icmp ult i32 %i.mm, 134217728
  %i.mu = fadd float %i.ms, -5.000000e-01
  %i.mv = fmul float %i.mp, 1.925930e-34
  %.v.i = select i1 %i.mt, float %i.mu, float %i.mv
  %i.mw = bitcast float %.v.i to i32
  %.signext.i = sext i16 %i.mj to i32
  %i.mx = and i32 %.signext.i, -2147483648
  %i.my = or i32 %i.mx, %i.mw
  %i.mz = bitcast i32 %i.my to float
  %i.na = getelementptr inbounds nuw i8, ptr %i.mk, i64 82
  br label %bb.m

.preheader124:                                    ; preds = %.loopexit
  %i.nb = getelementptr inbounds nuw i8, ptr %i.mk, i64 16
  %wide.load205 = load <16 x i8>, ptr %i.a, align 16, !tbaa !34
  %wide.load206 = load <16 x i8>, ptr %i.l, align 16, !tbaa !34
  %wide.load207 = load <16 x i8>, ptr %i.m, align 16, !tbaa !34
  %wide.load208 = load <16 x i8>, ptr %i.n, align 16, !tbaa !34
  %i.nc = shl <16 x i8> %wide.load207, splat (i8 2)
  %i.nd = shl <16 x i8> %wide.load208, splat (i8 2)
  %i.ne = or <16 x i8> %i.nc, %wide.load205
  %i.nf = or <16 x i8> %i.nd, %wide.load206
  %wide.load209 = load <16 x i8>, ptr %i.o, align 16, !tbaa !34
  %wide.load210 = load <16 x i8>, ptr %i.p, align 16, !tbaa !34
  %i.ng = shl <16 x i8> %wide.load209, splat (i8 4)
  %i.nh = shl <16 x i8> %wide.load210, splat (i8 4)
  %i.ni = or <16 x i8> %i.ne, %i.ng
  %i.nj = or <16 x i8> %i.nf, %i.nh
  %wide.load211 = load <16 x i8>, ptr %i.q, align 16, !tbaa !34
  %wide.load212 = load <16 x i8>, ptr %i.r, align 16, !tbaa !34
  %i.nk = shl <16 x i8> %wide.load211, splat (i8 6)
  %i.nl = shl <16 x i8> %wide.load212, splat (i8 6)
  %i.nm = or <16 x i8> %i.ni, %i.nk
  %i.nn = or <16 x i8> %i.nj, %i.nl
  %i.no = getelementptr inbounds nuw i8, ptr %i.mk, i64 32
  store <16 x i8> %i.nm, ptr %i.nb, align 1, !tbaa !34
  store <16 x i8> %i.nn, ptr %i.no, align 1, !tbaa !34
  %wide.load = load <16 x i8>, ptr %i.s, align 16, !tbaa !34
  %wide.load196 = load <16 x i8>, ptr %i.t, align 16, !tbaa !34
  %wide.load197 = load <16 x i8>, ptr %i.u, align 16, !tbaa !34
  %wide.load198 = load <16 x i8>, ptr %i.v, align 16, !tbaa !34
  %i.np = shl <16 x i8> %wide.load197, splat (i8 2)
  %i.nq = shl <16 x i8> %wide.load198, splat (i8 2)
  %i.nr = or <16 x i8> %i.np, %wide.load
  %i.ns = or <16 x i8> %i.nq, %wide.load196
  %wide.load199 = load <16 x i8>, ptr %i.w, align 16, !tbaa !34
  %wide.load200 = load <16 x i8>, ptr %i.x, align 16, !tbaa !34
  %i.nt = shl <16 x i8> %wide.load199, splat (i8 4)
  %i.nu = shl <16 x i8> %wide.load200, splat (i8 4)
  %i.nv = or <16 x i8> %i.nr, %i.nt
  %i.nw = or <16 x i8> %i.ns, %i.nu
  %wide.load201 = load <16 x i8>, ptr %i.y, align 16, !tbaa !34
  %wide.load202 = load <16 x i8>, ptr %i.z, align 16, !tbaa !34
  %i.nx = shl <16 x i8> %wide.load201, splat (i8 6)
  %i.ny = shl <16 x i8> %wide.load202, splat (i8 6)
  %i.nz = or <16 x i8> %i.nv, %i.nx
  %i.oa = or <16 x i8> %i.nw, %i.ny
  %i.ob = getelementptr inbounds nuw i8, ptr %i.mk, i64 48
  %i.oc = getelementptr inbounds nuw i8, ptr %i.mk, i64 64
  store <16 x i8> %i.nz, ptr %i.ob, align 1, !tbaa !34
  store <16 x i8> %i.oa, ptr %i.oc, align 1, !tbaa !34
  %i.od = getelementptr inbounds nuw i8, ptr %.0104145, i64 1024
  %indvars.iv.next181 = add nuw nsw i64 %indvars.iv180, 1 ; 2 uses
  %exitcond183.not = icmp eq i64 %indvars.iv.next181, %wide.trip.count
  br i1 %exitcond183.not, label %._crit_edge, label %.preheader126, !llvm.loop !125

bb.m:                                             ; preds = %bb.l, %.loopexit
  %indvars.iv169 = phi i64 [ 0, %bb.l ], [ %indvars.iv.next170, %.loopexit ] ; 3 uses
  %i.oe = getelementptr inbounds nuw i8, ptr %i.mk, i64 %indvars.iv169
  %i.of = load i8, ptr %i.oe, align 1, !tbaa !34  ; 2 uses
  %i.og = and i8 %i.of, 15
  %i.oh = uitofp nneg i8 %i.og to float
  %i.oi = fmul float %i.oh, %i.mz                 ; 2 uses
  %i.oj = fcmp une float %i.oi, 0.000000e+00
  br i1 %i.oj, label %.loopexit.loopexit, label %.loopexit

.loopexit.loopexit:                               ; preds = %bb.m
  %i.ok = load i16, ptr %i.na, align 2, !tbaa !34 ; 2 uses
  %i.ol = zext i16 %i.ok to i32                   ; 2 uses
end_hunk_0
begin_hunk_1_@quantize_q2_K:bb.a
  %.1206.i.12.i.us = select i1 %i.hq, float %i.dw, float %.1206.i.11.i.us ; 2 uses
  %i.hr = fadd float %i.hn, %i.fm
  %i.hs = tail call float @llvm.fmuladd.f32(float %i.fm, float %i.dw, float %i.ho)
  %i.ht = fcmp olt float %i.dz, %.1208.i.12.i.us
  %.1208.i.13.i.us = select i1 %i.ht, float %i.dz, float %.1208.i.12.i.us ; 2 uses
  %i.hu = fcmp ogt float %i.dz, %.1206.i.12.i.us
  %.1206.i.13.i.us = select i1 %i.hu, float %i.dz, float %.1206.i.12.i.us ; 2 uses
  %i.hv = fadd float %i.hr, %i.fo
  %i.hw = tail call float @llvm.fmuladd.f32(float %i.fo, float %i.dz, float %i.hs)
  %i.hx = fcmp olt float %i.ec, %.1208.i.13.i.us
  %.1208.i.14.i.us = select i1 %i.hx, float %i.ec, float %.1208.i.13.i.us ; 2 uses
  %i.hy = fcmp ogt float %i.ec, %.1206.i.13.i.us
  %.1206.i.14.i.us = select i1 %i.hy, float %i.ec, float %.1206.i.13.i.us ; 3 uses
  %i.hz = fadd float %i.hv, %i.fq                 ; 2 uses
  %i.ia = tail call float @llvm.fmuladd.f32(float %i.fq, float %i.ec, float %i.hw) ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.aw ; 3 uses
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv154.i.us
  %i.id = fcmp ogt float %.1208.i.14.i.us, 0.000000e+00
  %spec.store.select.i113.i.us = select i1 %i.id, float 0.000000e+00, float %.1208.i.14.i.us ; 6 uses
  %i.ie = fcmp ugt float %.1206.i.14.i.us, %spec.store.select.i113.i.us
  br i1 %i.ie, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.preheader115.i.us
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ib, i8 0, i64 16, i1 false), !alias.scope !162, !noalias !159
  br label %make_qkx3_quants.exit.i.us

bb.e:                                             ; preds = %.preheader115.i.us
  %i.if = fsub float %.1206.i.14.i.us, %spec.store.select.i113.i.us
  %i.ig = fdiv float 3.000000e+00, %i.if          ; 2 uses
  %i.ih = fdiv float 1.000000e+00, %i.ig          ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %bb.e
  %indvars.iv252.i.i.us = phi i64 [ 0, %bb.e ], [ %indvars.iv.next253.i.i.us, %bb.f ] ; 4 uses
  %.0198232.i.i.us = phi float [ 0.000000e+00, %bb.e ], [ %i.iz, %bb.f ]
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %indvars.iv252.i.i.us
  %i.ij = load float, ptr %i.ii, align 4, !tbaa !36, !alias.scope !165 ; 2 uses
  %i.ik = fsub float %i.ij, %spec.store.select.i113.i.us
  %i.il = fmul float %i.ig, %i.ik
  %i.im = fadd float %i.il, f0x4B400000
  %i.in = bitcast float %i.im to i32
  %i.io = and i32 %i.in, 8388607
  %i.ip = tail call i32 @llvm.umax.i32(i32 %i.io, i32 4194304)
  %i.iq = tail call i32 @llvm.umin.i32(i32 %i.ip, i32 4194307)
  %i.ir = trunc i32 %i.iq to i8                   ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.ib, i64 %indvars.iv252.i.i.us
  store i8 %i.ir, ptr %i.is, align 1, !tbaa !34, !alias.scope !162, !noalias !159
  %i.it = uitofp nneg i8 %i.ir to float
  %i.iu = tail call float @llvm.fmuladd.f32(float %i.ih, float %i.it, float %spec.store.select.i113.i.us)
  %i.iv = fsub float %i.iu, %i.ij                 ; 2 uses
  %i.iw = fmul float %i.iv, %i.iv
  %i.ix = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv252.i.i.us
  %i.iy = load float, ptr %i.ix, align 4, !tbaa !36, !alias.scope !161, !noalias !159
  %i.iz = tail call float @llvm.fmuladd.f32(float %i.iy, float %i.iw, float %.0198232.i.i.us) ; 2 uses
  %indvars.iv.next253.i.i.us = add nuw nsw i64 %indvars.iv252.i.i.us, 1 ; 2 uses
  %exitcond256.not.i.i.us = icmp eq i64 %indvars.iv.next253.i.i.us, 16
  br i1 %exitcond256.not.i.i.us, label %.preheader226.i.i.us.preheader, label %bb.f, !llvm.loop !9

.preheader226.i.i.us.preheader:                   ; preds = %bb.f
  %i.ja = insertelement <4 x float> poison, float %i.bc, i64 0
  %i.jb = insertelement <4 x float> %i.ja, float %i.bf, i64 1
  %i.jc = insertelement <4 x float> %i.jb, float %i.bi, i64 2
  %i.jd = insertelement <4 x float> %i.jc, float %i.bl, i64 3
  %i.je = insertelement <4 x float> poison, float %i.bz, i64 0
  %i.jf = insertelement <4 x float> %i.je, float %i.cc, i64 1
  %i.jg = insertelement <4 x float> %i.jf, float %i.cf, i64 2
  %i.jh = insertelement <4 x float> %i.jg, float %i.ci, i64 3
  %i.ji = insertelement <4 x float> poison, float %i.cw, i64 0
  %i.jj = insertelement <4 x float> %i.ji, float %i.cz, i64 1
  %i.jk = insertelement <4 x float> %i.jj, float %i.dc, i64 2
  %i.jl = insertelement <4 x float> %i.jk, float %i.df, i64 3
  %i.jm = insertelement <4 x float> poison, float %i.dt, i64 0
  %i.jn = insertelement <4 x float> %i.jm, float %i.dw, i64 1
  %i.jo = insertelement <4 x float> %i.jn, float %i.dz, i64 2
  %i.jp = insertelement <4 x float> %i.jo, float %i.ec, i64 3
  br label %.preheader226.i.i.us

.preheader226.i.i.us:                             ; preds = %.preheader226.i.i.us.preheader, %.loopexit.i.i.us
  %.0196244.i.i.us = phi i32 [ %i.nl, %.loopexit.i.i.us ], [ 0, %.preheader226.i.i.us.preheader ] ; 2 uses
  %.1243.i.i.us = phi float [ %.3.i.i.us, %.loopexit.i.i.us ], [ %i.iz, %.preheader226.i.i.us.preheader ] ; 3 uses
  %.0199242.i.i.us = phi float [ %.2201.i.i.us, %.loopexit.i.i.us ], [ %i.ih, %.preheader226.i.i.us.preheader ] ; 2 uses
  %.2209241.i.i.us = phi float [ %.4.i.i.us, %.loopexit.i.i.us ], [ %spec.store.select.i113.i.us, %.preheader226.i.i.us.preheader ] ; 4 uses
  %i.jq = uitofp nneg i32 %.0196244.i.i.us to float
  %i.jr = tail call nnan float @llvm.fmuladd.f32(float %i.jq, float 5.000000e-02, float f0xBF666666)
  %i.js = fadd nnan float %i.jr, 3.000000e+00
  %i.jt = fsub float %.1206.i.14.i.us, %.2209241.i.i.us
  %i.ju = fdiv float %i.js, %i.jt
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.preheader226.i.i.us
  %indvars.iv257.i.i.us = phi i64 [ 0, %.preheader226.i.i.us ], [ %indvars.iv.next258.i.i.us, %bb.g ] ; 4 uses
  %.0193236.i.i.us = phi float [ 0.000000e+00, %.preheader226.i.i.us ], [ %i.ks, %bb.g ]
  %i.jv = phi <2 x float> [ zeroinitializer, %.preheader226.i.i.us ], [ %i.kr, %bb.g ]
  %i.jw = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %indvars.iv257.i.i.us
  %i.jx = load float, ptr %i.jw, align 4, !tbaa !36, !alias.scope !165 ; 2 uses
  %i.jy = fsub float %i.jx, %.2209241.i.i.us
  %i.jz = fmul float %i.ju, %i.jy
  %i.ka = fadd float %i.jz, f0x4B400000
  %i.kb = bitcast float %i.ka to i32
  %i.kc = and i32 %i.kb, 8388607                  ; 2 uses
  %i.kd = icmp samesign ult i32 %i.kc, 4194304
  %i.ke = tail call i32 @llvm.umin.i32(i32 %i.kc, i32 4194307)
  %i.kf = add nsw i32 %i.ke, -4194304
  %i.kg = select i1 %i.kd, i32 0, i32 %i.kf       ; 2 uses
  %i.kh = trunc i32 %i.kg to i8
  %i.ki = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv257.i.i.us
  store i8 %i.kh, ptr %i.ki, align 1, !tbaa !34, !alias.scope !164, !noalias !159
  %i.kj = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv257.i.i.us
  %i.kk = load float, ptr %i.kj, align 4, !tbaa !36, !alias.scope !161, !noalias !159 ; 2 uses
  %i.kl = uitofp nneg i32 %i.kg to float          ; 2 uses
  %i.km = fmul float %i.kk, %i.kl                 ; 2 uses
  %i.kn = insertelement <2 x float> poison, float %i.km, i64 0
  %i.ko = insertelement <2 x float> %i.kn, float %i.kk, i64 1
  %i.kp = insertelement <2 x float> poison, float %i.kl, i64 0
  %i.kq = shufflevector <2 x float> %i.kp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kr = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ko, <2 x float> %i.kq, <2 x float> %i.jv) ; 3 uses
  %i.ks = tail call float @llvm.fmuladd.f32(float %i.km, float %i.jx, float %.0193236.i.i.us) ; 4 uses
  %indvars.iv.next258.i.i.us = add nuw nsw i64 %indvars.iv257.i.i.us, 1 ; 2 uses
  %exitcond261.not.i.i.us = icmp eq i64 %indvars.iv.next258.i.i.us, 16
  br i1 %exitcond261.not.i.i.us, label %bb.h, label %bb.g, !llvm.loop !10

bb.h:                                             ; preds = %bb.g
  %i.kt = extractelement <2 x float> %i.kr, i64 1 ; 3 uses
  %i.ku = fneg float %i.kt                        ; 2 uses
  %i.kv = fmul float %i.kt, %i.ku
  %i.kw = extractelement <2 x float> %i.kr, i64 0 ; 3 uses
  %i.kx = tail call float @llvm.fmuladd.f32(float %i.hz, float %i.kw, float %i.kv) ; 3 uses
  %i.ky = fcmp ogt float %i.kx, 0.000000e+00
  br i1 %i.ky, label %bb.i, label %.loopexit.i.i.us

bb.i:                                             ; preds = %bb.h
  %i.kz = fneg float %i.ks
  %i.la = fdiv float %i.ks, %i.kw
  %i.lb = load <16 x i8>, ptr %i.b, align 16, !tbaa !34, !alias.scope !164, !noalias !159
  %i.lc = uitofp <16 x i8> %i.lb to <16 x float>  ; 4 uses
  %i.ld = shufflevector <16 x float> %i.lc, <16 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.le = shufflevector <16 x float> %i.lc, <16 x float> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.lf = shufflevector <16 x float> %i.lc, <16 x float> poison, <4 x i32> <i32 8, i32 9, i32 10, i32 11>
  %i.lg = fmul float %i.ia, %i.ku
  %i.lh = tail call float @llvm.fmuladd.f32(float %i.hz, float %i.ks, float %i.lg)
  %i.li = fdiv float %i.lh, %i.kx
  %i.lj = fmul float %i.kt, %i.kz
  %i.lk = tail call float @llvm.fmuladd.f32(float %i.kw, float %i.ia, float %i.lj)
  %i.ll = fdiv float %i.lk, %i.kx                 ; 2 uses
  %i.lm = fcmp ogt float %i.ll, 0.000000e+00      ; 2 uses
  %.0191.i.i.us = select i1 %i.lm, float %i.la, float %i.li ; 2 uses
  %.0190.i.i.us = select i1 %i.lm, float 0.000000e+00, float %i.ll ; 2 uses
  %i.ln = insertelement <4 x float> poison, float %.0191.i.i.us, i64 0
  %i.lo = shufflevector <4 x float> %i.ln, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.lp = insertelement <4 x float> poison, float %.0190.i.i.us, i64 0
  %i.lq = shufflevector <4 x float> %i.lp, <4 x float> poison, <4 x i32> zeroinitializer ; 4 uses
  %i.lr = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.lo, <4 x float> %i.ld, <4 x float> %i.lq)
  %i.ls = fsub <4 x float> %i.lr, %i.jd           ; 2 uses
  %i.lt = fmul <4 x float> %i.ls, %i.ls           ; 4 uses
  %i.lu = extractelement <4 x float> %i.lt, i64 0
  %i.lv = tail call float @llvm.fmuladd.f32(float %i.em, float %i.lu, float 0.000000e+00)
  %i.lw = extractelement <4 x float> %i.lt, i64 1
  %i.lx = tail call float @llvm.fmuladd.f32(float %i.eo, float %i.lw, float %i.lv)
  %i.ly = extractelement <4 x float> %i.lt, i64 2
  %i.lz = tail call float @llvm.fmuladd.f32(float %i.eq, float %i.ly, float %i.lx)
  %i.ma = extractelement <4 x float> %i.lt, i64 3
  %i.mb = tail call float @llvm.fmuladd.f32(float %i.es, float %i.ma, float %i.lz)
  %i.mc = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.lo, <4 x float> %i.le, <4 x float> %i.lq)
  %i.md = fsub <4 x float> %i.mc, %i.jh           ; 2 uses
  %i.me = fmul <4 x float> %i.md, %i.md           ; 4 uses
  %i.mf = extractelement <4 x float> %i.me, i64 0
  %i.mg = tail call float @llvm.fmuladd.f32(float %i.eu, float %i.mf, float %i.mb)
  %i.mh = extractelement <4 x float> %i.me, i64 1
  %i.mi = tail call float @llvm.fmuladd.f32(float %i.ew, float %i.mh, float %i.mg)
  %i.mj = extractelement <4 x float> %i.me, i64 2
  %i.mk = tail call float @llvm.fmuladd.f32(float %i.ey, float %i.mj, float %i.mi)
  %i.ml = extractelement <4 x float> %i.me, i64 3
  %i.mm = tail call float @llvm.fmuladd.f32(float %i.fa, float %i.ml, float %i.mk)
  %i.mn = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.lo, <4 x float> %i.lf, <4 x float> %i.lq)
  %i.mo = fsub <4 x float> %i.mn, %i.jl           ; 2 uses
  %i.mp = fmul <4 x float> %i.mo, %i.mo           ; 4 uses
  %i.mq = extractelement <4 x float> %i.mp, i64 0
  %i.mr = tail call float @llvm.fmuladd.f32(float %i.fc, float %i.mq, float %i.mm)
  %i.ms = extractelement <4 x float> %i.mp, i64 1
  %i.mt = tail call float @llvm.fmuladd.f32(float %i.fe, float %i.ms, float %i.mr)
  %i.mu = extractelement <4 x float> %i.mp, i64 2
  %i.mv = tail call float @llvm.fmuladd.f32(float %i.fg, float %i.mu, float %i.mt)
  %i.mw = extractelement <4 x float> %i.mp, i64 3
  %i.mx = tail call float @llvm.fmuladd.f32(float %i.fi, float %i.mw, float %i.mv)
  %i.my = shufflevector <16 x float> %i.lc, <16 x float> poison, <4 x i32> <i32 12, i32 13, i32 14, i32 15>
  %i.mz = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.lo, <4 x float> %i.my, <4 x float> %i.lq)
  %i.na = fsub <4 x float> %i.mz, %i.jp           ; 2 uses
  %i.nb = fmul <4 x float> %i.na, %i.na           ; 4 uses
  %i.nc = extractelement <4 x float> %i.nb, i64 0
  %i.nd = tail call float @llvm.fmuladd.f32(float %i.fk, float %i.nc, float %i.mx)
  %i.ne = extractelement <4 x float> %i.nb, i64 1
  %i.nf = tail call float @llvm.fmuladd.f32(float %i.fm, float %i.ne, float %i.nd)
  %i.ng = extractelement <4 x float> %i.nb, i64 2
  %i.nh = tail call float @llvm.fmuladd.f32(float %i.fo, float %i.ng, float %i.nf)
  %i.ni = extractelement <4 x float> %i.nb, i64 3
  %i.nj = tail call float @llvm.fmuladd.f32(float %i.fq, float %i.ni, float %i.nh) ; 2 uses
  %i.nk = fcmp olt float %i.nj, %.1243.i.i.us
  br i1 %i.nk, label %.preheader.preheader.i.i.us, label %.loopexit.i.i.us

.preheader.preheader.i.i.us:                      ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ib, ptr noundef nonnull align 16 dereferenceable(16) %i.b, i64 range(i64 0, 33) 16, i1 false), !tbaa !34, !alias.scope !166, !noalias !159
  br label %.loopexit.i.i.us

.loopexit.i.i.us:                                 ; preds = %.preheader.preheader.i.i.us, %bb.i, %bb.h
  %.4.i.i.us = phi float [ %.2209241.i.i.us, %bb.h ], [ %.2209241.i.i.us, %bb.i ], [ %.0190.i.i.us, %.preheader.preheader.i.i.us ] ; 2 uses
  %.2201.i.i.us = phi float [ %.0199242.i.i.us, %bb.h ], [ %.0199242.i.i.us, %bb.i ], [ %.0191.i.i.us, %.preheader.preheader.i.i.us ] ; 2 uses
  %.3.i.i.us = phi float [ %.1243.i.i.us, %bb.h ], [ %.1243.i.i.us, %bb.i ], [ %i.nj, %.preheader.preheader.i.i.us ]
  %i.nl = add nuw nsw i32 %.0196244.i.i.us, 1     ; 2 uses
  %exitcond270.not.i.i.us = icmp eq i32 %i.nl, 37
  br i1 %exitcond270.not.i.i.us, label %make_qkx3_quants.exit.i.us, label %.preheader226.i.i.us, !llvm.loop !11

make_qkx3_quants.exit.i.us:                       ; preds = %.loopexit.i.i.us, %bb.d
  %.4.lcssa.sink.i.i.us = phi float [ %spec.store.select.i113.i.us, %bb.d ], [ %.4.i.i.us, %.loopexit.i.i.us ]
  %.1212.i.i.us = phi float [ 0.000000e+00, %bb.d ], [ %.2201.i.i.us, %.loopexit.i.i.us ]
  %i.nm = fneg float %.4.lcssa.sink.i.i.us
  store float %i.nm, ptr %i.ic, align 4, !tbaa !36, !alias.scope !163, !noalias !159
  %i.nn = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv154.i.us
  store float %.1212.i.i.us, ptr %i.nn, align 4, !tbaa !36, !noalias !159
  %indvars.iv.next155.i.us = add nuw nsw i64 %indvars.iv154.i.us, 1 ; 2 uses
  %exitcond157.not.i.us = icmp eq i64 %indvars.iv.next155.i.us, 16
  br i1 %exitcond157.not.i.us, label %.preheader117.preheader.i.us, label %.preheader115.i.us, !llvm.loop !152

.preheader117.preheader.i.us:                     ; preds = %make_qkx3_quants.exit.i.us
  %i.no = call fastcc float @make_qp_quants(i32 noundef 16, i32 noundef 15, ptr noundef %i.d, ptr noundef %i.g, ptr noundef %i.e), !noalias !159
  %i.np = call fastcc float @make_qp_quants(i32 noundef 16, i32 noundef 15, ptr noundef %i.c, ptr noundef %i.h, ptr noundef %i.e), !noalias !159
  %i.nq = getelementptr inbounds nuw [84 x i8], ptr %.01927.us, i64 %indvars.iv177.i.us ; 7 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nq, i64 80
  %i.ns = insertelement <2 x float> poison, float %i.no, i64 0
  %i.nt = insertelement <2 x float> %i.ns, float %i.np, i64 1 ; 2 uses
  %i.nu = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.nt)
  %i.nv = fmul <2 x float> %i.nu, splat (float f0x77800000)
  %i.nw = fmul <2 x float> %i.nv, splat (float f0x08800000)
  %i.nx = bitcast <2 x float> %i.nt to <2 x i32>  ; 2 uses
  %i.ny = shl <2 x i32> %i.nx, splat (i32 1)      ; 2 uses
  %i.nz = tail call <2 x i32> @llvm.umax.v2i32(<2 x i32> %i.ny, <2 x i32> splat (i32 1895825408))
  %i.oa = lshr exact <2 x i32> %i.nz, splat (i32 1)
  %i.ob = and <2 x i32> %i.oa, splat (i32 2139095040)
  %i.oc = add nuw <2 x i32> %i.ob, splat (i32 125829120)
  %i.od = bitcast <2 x i32> %i.oc to <2 x float>
  %i.oe = fadd <2 x float> %i.nw, %i.od
  %i.of = bitcast <2 x float> %i.oe to <2 x i32>  ; 2 uses
  %i.og = lshr <2 x i32> %i.of, splat (i32 13)
  %i.oh = and <2 x i32> %i.og, splat (i32 31744)
  %i.oi = and <2 x i32> %i.of, splat (i32 4095)
  %i.oj = add nuw nsw <2 x i32> %i.oh, %i.oi
  %i.ok = lshr <2 x i32> %i.nx, splat (i32 16)
  %i.ol = and <2 x i32> %i.ok, splat (i32 32768)
  %i.om = icmp ugt <2 x i32> %i.ny, splat (i32 -16777216)
  %i.on = select <2 x i1> %i.om, <2 x i32> splat (i32 32256), <2 x i32> %i.oj ; 3 uses
  %i.oo = or <2 x i32> %i.on, %i.ol               ; 2 uses
  %i.op = trunc nuw <2 x i32> %i.oo to <2 x i16>
  store <2 x i16> %i.op, ptr %i.nr, align 4, !tbaa !34, !alias.scope !157
  %i.oq = load <16 x i8>, ptr %i.g, align 16, !tbaa !34, !noalias !159
  %i.or = load <16 x i8>, ptr %i.h, align 16, !tbaa !34, !noalias !159
  %i.os = shl <16 x i8> %i.or, splat (i8 4)
  %i.ot = or <16 x i8> %i.os, %i.oq
  store <16 x i8> %i.ot, ptr %i.nq, align 4, !tbaa !34, !alias.scope !157
  %i.ou = and <2 x i32> %i.on, splat (i32 32767)
  %i.ov = or disjoint <2 x i32> %i.ou, splat (i32 1056964608)
  %i.ow = bitcast <2 x i32> %i.ov to <2 x float>
  %i.ox = fadd <2 x float> %i.ow, splat (float -5.000000e-01)
  %i.oy = shl <2 x i32> %i.on, splat (i32 17)     ; 2 uses
  %i.oz = lshr exact <2 x i32> %i.oy, splat (i32 4)
  %i.pa = or disjoint <2 x i32> %i.oz, splat (i32 1879048192)
  %i.pb = bitcast <2 x i32> %i.pa to <2 x float>
  %i.pc = fmul <2 x float> %i.pb, splat (float 1.925930e-34)
  %i.pd = icmp ult <2 x i32> %i.oy, splat (i32 134217728)
  %i.pe = select <2 x i1> %i.pd, <2 x float> %i.ox, <2 x float> %i.pc
  %i.pf = bitcast <2 x float> %i.pe to <2 x i32>
  %i.pg = shl nuw <2 x i32> %i.oo, splat (i32 16)
  %i.ph = and <2 x i32> %i.pg, splat (i32 -2147483648)
  %i.pi = or <2 x i32> %i.ph, %i.pf               ; 2 uses
  %bc = bitcast <2 x i32> %i.pi to <2 x float>
  %i.pj = extractelement <2 x float> %bc, i64 0
  %bc66 = bitcast <2 x i32> %i.pi to <2 x float>
  %i.pk = extractelement <2 x float> %bc66, i64 1
  br label %.preheader117.i.us

.preheader117.i.us:                               ; preds = %.loopexit.i.us, %.preheader117.preheader.i.us
  %indvars.iv166.i.us = phi i64 [ 0, %.preheader117.preheader.i.us ], [ %indvars.iv.next167.i.us, %.loopexit.i.us ] ; 3 uses
  %i.pl = getelementptr inbounds nuw i8, ptr %i.nq, i64 %indvars.iv166.i.us
  %i.pm = load i8, ptr %i.pl, align 1, !tbaa !34, !alias.scope !157
  %i.pn = zext i8 %i.pm to i32                    ; 2 uses
  %i.po = and i32 %i.pn, 15
  %i.pp = uitofp nneg i32 %i.po to float
  %i.pq = fmul float %i.pj, %i.pp                 ; 2 uses
  %i.pr = fcmp une float %i.pq, 0.000000e+00
  br i1 %i.pr, label %.loopexit.loopexit.i.us, label %.loopexit.i.us

.loopexit.loopexit.i.us:                          ; preds = %.preheader117.i.us
  %i.ps = lshr i32 %i.pn, 4
  %i.pt = uitofp nneg i32 %i.ps to float
  %i.pu = fmul float %i.pk, %i.pt
  %i.pv = shl nuw nsw i64 %indvars.iv166.i.us, 4  ; 2 uses
  %i.pw = getelementptr inbounds nuw [4 x i8], ptr %.098136.i.us, i64 %i.pv
  %i.px = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.pv
  %i.py = load <16 x float>, ptr %i.pw, align 4, !tbaa !36, !alias.scope !156
  %i.pz = insertelement <16 x float> poison, float %i.pu, i64 0
  %i.qa = shufflevector <16 x float> %i.pz, <16 x float> poison, <16 x i32> zeroinitializer
  %i.qb = fadd <16 x float> %i.qa, %i.py
  %i.qc = insertelement <16 x float> poison, float %i.pq, i64 0
  %i.qd = shufflevector <16 x float> %i.qc, <16 x float> poison, <16 x i32> zeroinitializer
  %i.qe = fdiv <16 x float> %i.qb, %i.qd
  %i.qf = fadd <16 x float> %i.qe, splat (float f0x4B400000)
  %i.qg = bitcast <16 x float> %i.qf to <16 x i32>
  %i.qh = and <16 x i32> %i.qg, splat (i32 8388607)
  %i.qi = tail call <16 x i32> @llvm.usub.sat.v16i32(<16 x i32> %i.qh, <16 x i32> splat (i32 4194304))
  %i.qj = tail call <16 x i32> @llvm.umin.v16i32(<16 x i32> %i.qi, <16 x i32> splat (i32 3))
  %i.qk = trunc nuw nsw <16 x i32> %i.qj to <16 x i8>
  store <16 x i8> %i.qk, ptr %i.px, align 16, !tbaa !34, !noalias !159
  br label %.loopexit.i.us

.loopexit.i.us:                                   ; preds = %.loopexit.loopexit.i.us, %.preheader117.i.us
  %indvars.iv.next167.i.us = add nuw nsw i64 %indvars.iv166.i.us, 1 ; 2 uses
  %exitcond169.not.i.us = icmp eq i64 %indvars.iv.next167.i.us, 16
  br i1 %exitcond169.not.i.us, label %.preheader116.i.us, label %.preheader117.i.us, !llvm.loop !153

.preheader116.i.us:                               ; preds = %.loopexit.i.us
  %i.ql = getelementptr inbounds nuw i8, ptr %i.nq, i64 16
  %wide.load57 = load <16 x i8>, ptr %i.a, align 16, !tbaa !34, !noalias !159
  %wide.load58 = load <16 x i8>, ptr %i.q, align 16, !tbaa !34, !noalias !159
  %wide.load59 = load <16 x i8>, ptr %i.r, align 16, !tbaa !34, !noalias !159
  %wide.load60 = load <16 x i8>, ptr %i.s, align 16, !tbaa !34, !noalias !159
  %i.qm = shl <16 x i8> %wide.load59, splat (i8 2)
  %i.qn = shl <16 x i8> %wide.load60, splat (i8 2)
  %i.qo = or <16 x i8> %i.qm, %wide.load57
  %i.qp = or <16 x i8> %i.qn, %wide.load58
  %wide.load61 = load <16 x i8>, ptr %i.t, align 16, !tbaa !34, !noalias !159
  %wide.load62 = load <16 x i8>, ptr %i.u, align 16, !tbaa !34, !noalias !159
  %i.qq = shl <16 x i8> %wide.load61, splat (i8 4)
  %i.qr = shl <16 x i8> %wide.load62, splat (i8 4)
  %i.qs = or <16 x i8> %i.qo, %i.qq
  %i.qt = or <16 x i8> %i.qp, %i.qr
  %wide.load63 = load <16 x i8>, ptr %i.v, align 16, !tbaa !34, !noalias !159
  %wide.load64 = load <16 x i8>, ptr %i.w, align 16, !tbaa !34, !noalias !159
  %i.qu = shl <16 x i8> %wide.load63, splat (i8 6)
  %i.qv = shl <16 x i8> %wide.load64, splat (i8 6)
  %i.qw = or <16 x i8> %i.qs, %i.qu
  %i.qx = or <16 x i8> %i.qt, %i.qv
  %i.qy = getelementptr inbounds nuw i8, ptr %i.nq, i64 32
  store <16 x i8> %i.qw, ptr %i.ql, align 4, !tbaa !34, !alias.scope !157
  store <16 x i8> %i.qx, ptr %i.qy, align 4, !tbaa !34, !alias.scope !157
  %wide.load = load <16 x i8>, ptr %i.x, align 16, !tbaa !34, !noalias !159
  %wide.load48 = load <16 x i8>, ptr %i.y, align 16, !tbaa !34, !noalias !159
  %wide.load49 = load <16 x i8>, ptr %i.z, align 16, !tbaa !34, !noalias !159
  %wide.load50 = load <16 x i8>, ptr %i.aa, align 16, !tbaa !34, !noalias !159
  %i.qz = shl <16 x i8> %wide.load49, splat (i8 2)
  %i.ra = shl <16 x i8> %wide.load50, splat (i8 2)
  %i.rb = or <16 x i8> %i.qz, %wide.load
  %i.rc = or <16 x i8> %i.ra, %wide.load48
  %wide.load51 = load <16 x i8>, ptr %i.ab, align 16, !tbaa !34, !noalias !159
  %wide.load52 = load <16 x i8>, ptr %i.ac, align 16, !tbaa !34, !noalias !159
  %i.rd = shl <16 x i8> %wide.load51, splat (i8 4)
  %i.re = shl <16 x i8> %wide.load52, splat (i8 4)
  %i.rf = or <16 x i8> %i.rb, %i.rd
  %i.rg = or <16 x i8> %i.rc, %i.re
  %wide.load53 = load <16 x i8>, ptr %i.ad, align 16, !tbaa !34, !noalias !159
  %wide.load54 = load <16 x i8>, ptr %i.ae, align 16, !tbaa !34, !noalias !159
  %i.rh = shl <16 x i8> %wide.load53, splat (i8 6)
  %i.ri = shl <16 x i8> %wide.load54, splat (i8 6)
  %i.rj = or <16 x i8> %i.rf, %i.rh
  %i.rk = or <16 x i8> %i.rg, %i.ri
  %i.rl = getelementptr inbounds nuw i8, ptr %i.nq, i64 48
  %i.rm = getelementptr inbounds nuw i8, ptr %i.nq, i64 64
  store <16 x i8> %i.rj, ptr %i.rl, align 4, !tbaa !34, !alias.scope !157
  store <16 x i8> %i.rk, ptr %i.rm, align 4, !tbaa !34, !alias.scope !157
  %i.rn = getelementptr inbounds nuw i8, ptr %.098136.i.us, i64 1024
  %indvars.iv.next178.i.us = add nuw nsw i64 %indvars.iv177.i.us, 1 ; 2 uses
  %exitcond180.not.i.us = icmp eq i64 %indvars.iv.next178.i.us, %wide.trip.count.i
  br i1 %exitcond180.not.i.us, label %quantize_row_q2_K_impl.exit.loopexit.us, label %.lr.ph.i.us, !llvm.loop !154

quantize_row_q2_K_impl.exit.loopexit.us:          ; preds = %.preheader116.i.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #14, !noalias !159
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #14, !noalias !159
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #14, !noalias !159
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #14, !noalias !159
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14, !noalias !159
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14, !noalias !159
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14, !noalias !159
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14, !noalias !159
  %i.ro = getelementptr inbounds [4 x i8], ptr %.02026.us, i64 %3
  %i.rp = getelementptr inbounds nuw i8, ptr %.01927.us, i64 %i.i
  %i.rq = add nuw nsw i64 %.028.us, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.rq, %2
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph.preheader.i.us, !llvm.loop !155

bb.j:                                             ; preds = %bb.a
  %i.rr = mul nsw i64 %3, %2
  tail call void @quantize_row_q2_K_ref(ptr noundef %0, ptr noundef %1, i64 noundef %i.rr)
  br label %.loopexit

.loopexit:                                        ; preds = %quantize_row_q2_K_impl.exit.loopexit.us, %.lr.ph, %.preheader, %bb.j
  %i.rs = mul i64 %i.i, %2
  ret i64 %i.rs
}

declare i64 @ggml_row_size(i32 noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: noreturn
declare void @ggml_abort(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sqrtf(float noundef) local_unnamed_addr #4

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc float @make_qp_quants(i32 noundef range(i32 8, 33) %0, i32 noundef range(i32 4, 64) %1, ptr noalias nofree noundef nonnull readonly captures(none) %2, ptr noalias nofree noundef nonnull captures(none) %3, ptr nofree noundef nonnull readonly captures(none) %4) unnamed_addr #0 {
.new:
  %wide.trip.count = zext nneg i32 %0 to i64      ; 15 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %unroll_iter = and i64 %wide.trip.count, 60
  br label %bb.b

.unr-lcssa:                                       ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.epilog-lcssa, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa
  %lcmp.mod302 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod302)
  br label %bb.a

bb.a:                                             ; preds = %bb.a, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.3, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.a ] ; 2 uses
  %.0157194.epil = phi float [ %.0157..3, %.epil.preheader ], [ %.0157..epil, %bb.a ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.a ]
  %i.a = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.epil
  %i.b = load float, ptr %i.a, align 4, !tbaa !36 ; 2 uses
  %i.c = fcmp ogt float %.0157194.epil, %i.b
  %.0157..epil = select i1 %i.c, float %.0157194.epil, float %i.b ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %bb.a, !llvm.loop !167

.epilog-lcssa:                                    ; preds = %bb.a, %.unr-lcssa
  %.0157..lcssa = phi float [ %.0157..3, %.unr-lcssa ], [ %.0157..epil, %bb.a ] ; 3 uses
  %i.d = fcmp olt float %.0157..lcssa, 1.000000e-15
  br i1 %i.d, label %.preheader.preheader, label %vector.ph

.preheader.preheader:                             ; preds = %.epilog-lcssa
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %3, i8 0, i64 range(i64 0, 33) %wide.trip.count, i1 false), !tbaa !34
  br label %.loopexit

bb.b:                                             ; preds = %bb.b, %.new
  %indvars.iv = phi i64 [ 0, %.new ], [ %indvars.iv.next.3, %bb.b ] ; 5 uses
  %.0157194 = phi float [ 0.000000e+00, %.new ], [ %.0157..3, %bb.b ] ; 2 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %bb.b ]
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.f = load float, ptr %i.e, align 4, !tbaa !36 ; 2 uses
  %i.g = fcmp ogt float %.0157194, %i.f
  %.0157. = select i1 %i.g, float %.0157194, float %i.f ; 2 uses
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.j = load float, ptr %i.i, align 4, !tbaa !36 ; 2 uses
  %i.k = fcmp ogt float %.0157., %i.j
  %.0157..1 = select i1 %i.k, float %.0157., float %i.j ; 2 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load float, ptr %i.m, align 4, !tbaa !36 ; 2 uses
  %i.o = fcmp ogt float %.0157..1, %i.n
  %.0157..2 = select i1 %i.o, float %.0157..1, float %i.n ; 2 uses
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 12
  %i.r = load float, ptr %i.q, align 4, !tbaa !36 ; 2 uses
  %i.s = fcmp ogt float %.0157..2, %i.r
  %.0157..3 = select i1 %i.s, float %.0157..2, float %i.r ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.unr-lcssa, label %bb.b, !llvm.loop !168

vector.ph:                                        ; preds = %.epilog-lcssa
  %i.t = uitofp nneg i32 %1 to float              ; 2 uses
  %i.u = fdiv float %i.t, %.0157..lcssa           ; 4 uses
  %n.vec = and i64 %wide.trip.count, 56           ; 5 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.u, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 8 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 16
  %wide.load = load <4 x float>, ptr %2, align 4, !tbaa !36
  %wide.load270 = load <4 x float>, ptr %i.v, align 4, !tbaa !36
  %i.w = fmul <4 x float> %broadcast.splat, %wide.load
  %i.x = fmul <4 x float> %broadcast.splat, %wide.load270
  %i.y = fadd <4 x float> %i.w, splat (float f0x4B400000)
  %i.z = fadd <4 x float> %i.x, splat (float f0x4B400000)
  %i.aa = bitcast <4 x float> %i.y to <4 x i32>
  %i.ab = bitcast <4 x float> %i.z to <4 x i32>
  %i.ac = trunc <4 x i32> %i.aa to <4 x i8>
  %i.ad = trunc <4 x i32> %i.ab to <4 x i8>
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 4
  store <4 x i8> %i.ac, ptr %3, align 1, !tbaa !34
  store <4 x i8> %i.ad, ptr %i.ae, align 1, !tbaa !34
  %i.af = icmp eq i64 %n.vec, 8
  br i1 %i.af, label %middle.block, label %vector.body.1

vector.body.1:                                    ; preds = %vector.ph
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 48
  %wide.load.1 = load <4 x float>, ptr %i.ag, align 4, !tbaa !36
  %wide.load270.1 = load <4 x float>, ptr %i.ah, align 4, !tbaa !36
  %i.ai = fmul <4 x float> %broadcast.splat, %wide.load.1
  %i.aj = fmul <4 x float> %broadcast.splat, %wide.load270.1
  %i.ak = fadd <4 x float> %i.ai, splat (float f0x4B400000)
  %i.al = fadd <4 x float> %i.aj, splat (float f0x4B400000)
  %i.am = bitcast <4 x float> %i.ak to <4 x i32>
  %i.an = bitcast <4 x float> %i.al to <4 x i32>
  %i.ao = trunc <4 x i32> %i.am to <4 x i8>
  %i.ap = trunc <4 x i32> %i.an to <4 x i8>
  %i.aq = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 12
  store <4 x i8> %i.ao, ptr %i.aq, align 1, !tbaa !34
  store <4 x i8> %i.ap, ptr %i.ar, align 1, !tbaa !34
  %i.as = icmp eq i64 %n.vec, 16
  br i1 %i.as, label %middle.block, label %vector.body.2

vector.body.2:                                    ; preds = %vector.body.1
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 80
  %wide.load.2 = load <4 x float>, ptr %i.at, align 4, !tbaa !36
  %wide.load270.2 = load <4 x float>, ptr %i.au, align 4, !tbaa !36
  %i.av = fmul <4 x float> %broadcast.splat, %wide.load.2
  %i.aw = fmul <4 x float> %broadcast.splat, %wide.load270.2
  %i.ax = fadd <4 x float> %i.av, splat (float f0x4B400000)
  %i.ay = fadd <4 x float> %i.aw, splat (float f0x4B400000)
  %i.az = bitcast <4 x float> %i.ax to <4 x i32>
  %i.ba = bitcast <4 x float> %i.ay to <4 x i32>
  %i.bb = trunc <4 x i32> %i.az to <4 x i8>
  %i.bc = trunc <4 x i32> %i.ba to <4 x i8>
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 20
  store <4 x i8> %i.bb, ptr %i.bd, align 1, !tbaa !34
  store <4 x i8> %i.bc, ptr %i.be, align 1, !tbaa !34
  %i.bf = icmp eq i64 %n.vec, 24
  br i1 %i.bf, label %middle.block, label %vector.body.3

vector.body.3:                                    ; preds = %vector.body.2
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 112
  %wide.load.3 = load <4 x float>, ptr %i.bg, align 4, !tbaa !36
  %wide.load270.3 = load <4 x float>, ptr %i.bh, align 4, !tbaa !36
  %i.bi = fmul <4 x float> %broadcast.splat, %wide.load.3
  %i.bj = fmul <4 x float> %broadcast.splat, %wide.load270.3
  %i.bk = fadd <4 x float> %i.bi, splat (float f0x4B400000)
  %i.bl = fadd <4 x float> %i.bj, splat (float f0x4B400000)
  %i.bm = bitcast <4 x float> %i.bk to <4 x i32>
  %i.bn = bitcast <4 x float> %i.bl to <4 x i32>
  %i.bo = trunc <4 x i32> %i.bm to <4 x i8>
  %i.bp = trunc <4 x i32> %i.bn to <4 x i8>
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 28
  store <4 x i8> %i.bo, ptr %i.bq, align 1, !tbaa !34
  store <4 x i8> %i.bp, ptr %i.br, align 1, !tbaa !34
  br label %middle.block

middle.block:                                     ; preds = %vector.body.3, %vector.body.2, %vector.body.1, %vector.ph
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.preheader192, label %scalar.ph

.preheader192:                                    ; preds = %scalar.ph, %middle.block
  %i.bs = fdiv float -1.000000e+00, %i.u          ; 3 uses
  %xtraiter304 = and i64 %wide.trip.count, 1
  %unroll_iter309 = and i64 %wide.trip.count, 62
  br label %bb.c

scalar.ph:                                        ; preds = %middle.block, %scalar.ph
  %indvars.iv218 = phi i64 [ %indvars.iv.next219, %scalar.ph ], [ %n.vec, %middle.block ] ; 3 uses
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv218
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !36
  %i.bv = fmul float %i.u, %i.bu
  %i.bw = fadd float %i.bv, f0x4B400000
  %i.bx = bitcast float %i.bw to i32
  %i.by = trunc i32 %i.bx to i8
  %i.bz = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv218
  store i8 %i.by, ptr %i.bz, align 1, !tbaa !34
  %indvars.iv.next219 = add nuw nsw i64 %indvars.iv218, 1 ; 2 uses
  %exitcond222.not = icmp eq i64 %indvars.iv.next219, %wide.trip.count
  br i1 %exitcond222.not, label %.preheader192, label %scalar.ph, !llvm.loop !169

bb.c:                                             ; preds = %bb.c, %.preheader192
  %indvars.iv223 = phi i64 [ 0, %.preheader192 ], [ %indvars.iv.next224.1, %bb.c ] ; 5 uses
  %.0179196 = phi float [ 0.000000e+00, %.preheader192 ], [ %i.ct, %bb.c ]
  %niter310 = phi i64 [ 0, %.preheader192 ], [ %niter310.next.1, %bb.c ]
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv223
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !36
  %i.cc = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv223
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !34
  %i.ce = uitofp i8 %i.cd to float
  %i.cf = tail call float @llvm.fmuladd.f32(float %i.bs, float %i.ce, float %i.cb) ; 2 uses
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv223
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !36
  %i.ci = fmul float %i.ch, %i.cf
  %i.cj = tail call float @llvm.fmuladd.f32(float %i.ci, float %i.cf, float %.0179196)
  %indvars.iv.next224 = or disjoint i64 %indvars.iv223, 1 ; 3 uses
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next224
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !36
  %i.cm = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv.next224
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !34
  %i.co = uitofp i8 %i.cn to float
  %i.cp = tail call float @llvm.fmuladd.f32(float %i.bs, float %i.co, float %i.cl) ; 2 uses
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.next224
  %i.cr = load float, ptr %i.cq, align 4, !tbaa !36
  %i.cs = fmul float %i.cr, %i.cp
  %i.ct = tail call float @llvm.fmuladd.f32(float %i.cs, float %i.cp, float %i.cj) ; 3 uses
  %indvars.iv.next224.1 = add nuw nsw i64 %indvars.iv223, 2 ; 4 uses
  %niter310.next.1 = add nuw nsw i64 %niter310, 2 ; 2 uses
  %niter310.ncmp.1 = icmp eq i64 %niter310.next.1, %unroll_iter309
  br i1 %niter310.ncmp.1, label %.preheader191.preheader.unr-lcssa, label %bb.c, !llvm.loop !170

.preheader191.preheader.unr-lcssa:                ; preds = %bb.c
  %lcmp.mod306.not = icmp eq i64 %xtraiter304, 0
  br i1 %lcmp.mod306.not, label %.preheader191.preheader, label %.epil.preheader303

.epil.preheader303:                               ; preds = %.preheader191.preheader.unr-lcssa
  %lcmp.mod308 = trunc i32 %0 to i1
  tail call void @llvm.assume(i1 %lcmp.mod308)
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next224.1
  %i.cv = load float, ptr %i.cu, align 4, !tbaa !36
  %i.cw = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv.next224.1
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !34
  %i.cy = uitofp i8 %i.cx to float
  %i.cz = tail call float @llvm.fmuladd.f32(float %i.bs, float %i.cy, float %i.cv) ; 2 uses
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.next224.1
  %i.db = load float, ptr %i.da, align 4, !tbaa !36
  %i.dc = fmul float %i.db, %i.cz
  %i.dd = tail call float @llvm.fmuladd.f32(float %i.dc, float %i.cz, float %i.ct)
  br label %.preheader191.preheader

.preheader191.preheader:                          ; preds = %.preheader191.preheader.unr-lcssa, %.epil.preheader303
  %.lcssa300 = phi float [ %i.ct, %.preheader191.preheader.unr-lcssa ], [ %i.dd, %.epil.preheader303 ]
  br label %.preheader191

.preheader191:                                    ; preds = %.preheader191.preheader, %bb.g
  %.0173202 = phi i32 [ %i.dy, %bb.g ], [ -4, %.preheader191.preheader ] ; 3 uses
  %.0174201 = phi float [ %.2176, %bb.g ], [ %i.u, %.preheader191.preheader ] ; 2 uses
  %.1180200 = phi float [ %.3182, %bb.g ], [ %.lcssa300, %.preheader191.preheader ] ; 3 uses
  %i.de = icmp eq i32 %.0173202, 0
  br i1 %i.de, label %bb.g, label %bb.d

bb.d:                                             ; preds = %.preheader191
  %i.df = sitofp i32 %.0173202 to float
  %i.dg = tail call float @llvm.fmuladd.f32(float %i.df, float 1.000000e-01, float %i.t)
  %i.dh = fdiv float %i.dg, %.0157..lcssa         ; 3 uses
end_hunk_1
begin_hunk_2_@quantize_q3_K:bb.a
  %.1183.i.i.us = select i1 %i.gg, float %i.gf, float 0.000000e+00 ; 2 uses
  %i.gh = tail call float @llvm.fabs.f32(float %i.ch) ; 2 uses
  %i.gi = fcmp ogt float %i.gh, %.1183.i.i.us     ; 2 uses
  %.1185.i.1.i.us = select i1 %i.gi, float %i.ch, float %.1185.i.i.us
  %.1183.i.1.i.us = select i1 %i.gi, float %i.gh, float %.1183.i.i.us ; 2 uses
  %i.gj = tail call float @llvm.fabs.f32(float %i.ck) ; 2 uses
  %i.gk = fcmp ogt float %i.gj, %.1183.i.1.i.us   ; 2 uses
  %.1185.i.2.i.us = select i1 %i.gk, float %i.ck, float %.1185.i.1.i.us
  %.1183.i.2.i.us = select i1 %i.gk, float %i.gj, float %.1183.i.1.i.us ; 2 uses
  %i.gl = tail call float @llvm.fabs.f32(float %i.cn) ; 2 uses
  %i.gm = fcmp ogt float %i.gl, %.1183.i.2.i.us   ; 2 uses
  %.1185.i.3.i.us = select i1 %i.gm, float %i.cn, float %.1185.i.2.i.us
  %.1183.i.3.i.us = select i1 %i.gm, float %i.gl, float %.1183.i.2.i.us ; 2 uses
  %i.gn = tail call float @llvm.fabs.f32(float %i.cw) ; 2 uses
  %i.go = fcmp ogt float %i.gn, %.1183.i.3.i.us   ; 2 uses
  %.1185.i.4.i.us = select i1 %i.go, float %i.cw, float %.1185.i.3.i.us
  %.1183.i.4.i.us = select i1 %i.go, float %i.gn, float %.1183.i.3.i.us ; 2 uses
  %i.gp = tail call float @llvm.fabs.f32(float %i.cz) ; 2 uses
  %i.gq = fcmp ogt float %i.gp, %.1183.i.4.i.us   ; 2 uses
  %.1185.i.5.i.us = select i1 %i.gq, float %i.cz, float %.1185.i.4.i.us
  %.1183.i.5.i.us = select i1 %i.gq, float %i.gp, float %.1183.i.4.i.us ; 2 uses
  %i.gr = tail call float @llvm.fabs.f32(float %i.dc) ; 2 uses
  %i.gs = fcmp ogt float %i.gr, %.1183.i.5.i.us   ; 2 uses
  %.1185.i.6.i.us = select i1 %i.gs, float %i.dc, float %.1185.i.5.i.us
  %.1183.i.6.i.us = select i1 %i.gs, float %i.gr, float %.1183.i.5.i.us ; 2 uses
  %i.gt = tail call float @llvm.fabs.f32(float %i.df) ; 2 uses
  %i.gu = fcmp ogt float %i.gt, %.1183.i.6.i.us   ; 2 uses
  %.1185.i.7.i.us = select i1 %i.gu, float %i.df, float %.1185.i.6.i.us
  %.1183.i.7.i.us = select i1 %i.gu, float %i.gt, float %.1183.i.6.i.us ; 2 uses
  %i.gv = tail call float @llvm.fabs.f32(float %i.do) ; 2 uses
  %i.gw = fcmp ogt float %i.gv, %.1183.i.7.i.us   ; 2 uses
  %.1185.i.8.i.us = select i1 %i.gw, float %i.do, float %.1185.i.7.i.us
  %.1183.i.8.i.us = select i1 %i.gw, float %i.gv, float %.1183.i.7.i.us ; 2 uses
  %i.gx = tail call float @llvm.fabs.f32(float %i.dr) ; 2 uses
  %i.gy = fcmp ogt float %i.gx, %.1183.i.8.i.us   ; 2 uses
  %.1185.i.9.i.us = select i1 %i.gy, float %i.dr, float %.1185.i.8.i.us
  %.1183.i.9.i.us = select i1 %i.gy, float %i.gx, float %.1183.i.8.i.us ; 2 uses
  %i.gz = tail call float @llvm.fabs.f32(float %i.du) ; 2 uses
  %i.ha = fcmp ogt float %i.gz, %.1183.i.9.i.us   ; 2 uses
  %.1185.i.10.i.us = select i1 %i.ha, float %i.du, float %.1185.i.9.i.us
  %.1183.i.10.i.us = select i1 %i.ha, float %i.gz, float %.1183.i.9.i.us ; 2 uses
  %i.hb = tail call float @llvm.fabs.f32(float %i.dx) ; 2 uses
  %i.hc = fcmp ogt float %i.hb, %.1183.i.10.i.us  ; 2 uses
  %.1185.i.11.i.us = select i1 %i.hc, float %i.dx, float %.1185.i.10.i.us
  %.1183.i.11.i.us = select i1 %i.hc, float %i.hb, float %.1183.i.10.i.us ; 2 uses
  %i.hd = tail call float @llvm.fabs.f32(float %i.eg) ; 2 uses
  %i.he = fcmp ogt float %i.hd, %.1183.i.11.i.us  ; 2 uses
  %.1185.i.12.i.us = select i1 %i.he, float %i.eg, float %.1185.i.11.i.us
  %.1183.i.12.i.us = select i1 %i.he, float %i.hd, float %.1183.i.11.i.us ; 2 uses
  %i.hf = tail call float @llvm.fabs.f32(float %i.ej) ; 2 uses
  %i.hg = fcmp ogt float %i.hf, %.1183.i.12.i.us  ; 2 uses
  %.1185.i.13.i.us = select i1 %i.hg, float %i.ej, float %.1185.i.12.i.us
  %.1183.i.13.i.us = select i1 %i.hg, float %i.hf, float %.1183.i.12.i.us ; 2 uses
  %i.hh = tail call float @llvm.fabs.f32(float %i.em) ; 2 uses
  %i.hi = fcmp ogt float %i.hh, %.1183.i.13.i.us  ; 2 uses
  %.1185.i.14.i.us = select i1 %i.hi, float %i.em, float %.1185.i.13.i.us
  %.1183.i.14.i.us = select i1 %i.hi, float %i.hh, float %.1183.i.13.i.us ; 2 uses
  %i.hj = tail call float @llvm.fabs.f32(float %i.ep) ; 2 uses
  %i.hk = fcmp ogt float %i.hj, %.1183.i.14.i.us  ; 2 uses
  %.1185.i.15.i.us = select i1 %i.hk, float %i.ep, float %.1185.i.14.i.us ; 2 uses
  %.1183.i.15.i.us = select i1 %i.hk, float %i.hj, float %.1183.i.14.i.us
  %i.hl = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bj ; 3 uses
  %i.hm = fcmp olt float %.1183.i.15.i.us, 1.000000e-15
  br i1 %i.hm, label %.preheader.preheader.i.i.us, label %bb.d

bb.d:                                             ; preds = %.preheader153.preheader.i.us
  %i.hn = fdiv float 4.000000e+00, %.1185.i.15.i.us
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %indvars.iv231.i.i.us = phi i64 [ 0, %bb.d ], [ %indvars.iv.next232.i.i.us, %bb.e ] ; 4 uses
  %i.ho = phi <2 x float> [ zeroinitializer, %bb.d ], [ %i.ij, %bb.e ]
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %indvars.iv231.i.i.us
  %i.hq = load float, ptr %i.hp, align 4, !tbaa !36, !alias.scope !215 ; 2 uses
  %i.hr = fmul float %i.hn, %i.hq
  %i.hs = fsub float f0x4B400000, %i.hr
  %i.ht = bitcast float %i.hs to i32
  %i.hu = and i32 %i.ht, 8388607
  %i.hv = tail call i32 @llvm.umax.i32(i32 %i.hu, i32 4194300)
  %i.hw = tail call i32 @llvm.umin.i32(i32 %i.hv, i32 4194307) ; 2 uses
  %..i.i.us = add nsw i32 %i.hw, -4194304
  %i.hx = trunc i32 %i.hw to i8
  %i.hy = add nsw i8 %i.hx, 4
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hl, i64 %indvars.iv231.i.i.us
  store i8 %i.hy, ptr %i.hz, align 1, !tbaa !34, !alias.scope !213, !noalias !211
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv231.i.i.us
  %i.ib = load float, ptr %i.ia, align 4, !tbaa !36, !alias.scope !214, !noalias !211
  %i.ic = sitofp i32 %..i.i.us to float
  %i.id = insertelement <2 x float> poison, float %i.ib, i64 0
  %i.ie = shufflevector <2 x float> %i.id, <2 x float> poison, <2 x i32> zeroinitializer
  %i.if = insertelement <2 x float> poison, float %i.ic, i64 0 ; 2 uses
  %i.ig = insertelement <2 x float> %i.if, float %i.hq, i64 1
  %i.ih = fmul <2 x float> %i.ie, %i.ig
  %i.ii = shufflevector <2 x float> %i.if, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ij = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ih, <2 x float> %i.ii, <2 x float> %i.ho) ; 3 uses
  %indvars.iv.next232.i.i.us = add nuw nsw i64 %indvars.iv231.i.i.us, 1 ; 2 uses
  %exitcond235.not.i.i.us = icmp eq i64 %indvars.iv.next232.i.i.us, 16
  br i1 %exitcond235.not.i.i.us, label %bb.f, label %bb.e, !llvm.loop !12

bb.f:                                             ; preds = %bb.e
  %i.ik = extractelement <2 x float> %i.ij, i64 0 ; 2 uses
  %i.il = fcmp une float %i.ik, 0.000000e+00
  %i.im = extractelement <2 x float> %i.ij, i64 1 ; 2 uses
  %i.in = fdiv float %i.im, %i.ik
  %i.io = select i1 %i.il, float %i.in, float 0.000000e+00 ; 2 uses
  %i.ip = fmul float %i.im, %i.io
  %i.iq = insertelement <16 x float> poison, float %i.ce, i64 0
  %i.ir = insertelement <16 x float> %i.iq, float %i.ch, i64 1
  %i.is = insertelement <16 x float> %i.ir, float %i.ck, i64 2
  %i.it = insertelement <16 x float> %i.is, float %i.cn, i64 3
  %i.iu = insertelement <16 x float> %i.it, float %i.cw, i64 4
  %i.iv = insertelement <16 x float> %i.iu, float %i.cz, i64 5
  %i.iw = insertelement <16 x float> %i.iv, float %i.dc, i64 6
  %i.ix = insertelement <16 x float> %i.iw, float %i.df, i64 7
  %i.iy = insertelement <16 x float> %i.ix, float %i.do, i64 8
  %i.iz = insertelement <16 x float> %i.iy, float %i.dr, i64 9
  %i.ja = insertelement <16 x float> %i.iz, float %i.du, i64 10
  %i.jb = insertelement <16 x float> %i.ja, float %i.dx, i64 11
  %i.jc = insertelement <16 x float> %i.jb, float %i.eg, i64 12
  %i.jd = insertelement <16 x float> %i.jc, float %i.ej, i64 13
  %i.je = insertelement <16 x float> %i.jd, float %i.em, i64 14
  %i.jf = insertelement <16 x float> %i.je, float %i.ep, i64 15
  br label %bb.g

bb.g:                                             ; preds = %bb.j, %bb.f
  %.0169221.i.i.us = phi i32 [ -9, %bb.f ], [ %i.kw, %bb.j ] ; 3 uses
  %.0170220.i.i.us = phi float [ %i.ip, %bb.f ], [ %.1.i.i.us, %bb.j ] ; 4 uses
  %.0171219.i.i.us = phi float [ %i.io, %bb.f ], [ %.1172.i.i.us, %bb.j ] ; 3 uses
  %i.jg = icmp eq i32 %.0169221.i.i.us, 0
  br i1 %i.jg, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.jh = sitofp i32 %.0169221.i.i.us to float
  %i.ji = tail call float @llvm.fmuladd.f32(float %i.jh, float 1.000000e-01, float 4.000000e+00)
  %i.jj = fneg float %i.ji
  %i.jk = fdiv float %i.jj, %.1185.i.15.i.us      ; 2 uses
  br label %.split.i.i.us

.split.i.i.us:                                    ; preds = %.split.i.i.us, %bb.h
  %indvars.iv236.i.i.us = phi i64 [ %indvars.iv.next237.i.i.us, %.split.i.i.us ], [ 0, %bb.h ] ; 3 uses
  %i.jl = phi <2 x float> [ %i.kd, %.split.i.i.us ], [ zeroinitializer, %bb.h ]
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %indvars.iv236.i.i.us
  %i.jn = load float, ptr %i.jm, align 4, !tbaa !36, !alias.scope !215 ; 2 uses
  %i.jo = fmul float %i.jk, %i.jn
  %i.jp = fadd float %i.jo, f0x4B400000
  %i.jq = bitcast float %i.jp to i32
  %i.jr = and i32 %i.jq, 8388607
  %i.js = tail call i32 @llvm.umax.i32(i32 %i.jr, i32 4194300)
  %i.jt = tail call i32 @llvm.umin.i32(i32 %i.js, i32 4194307)
  %.202.i.i.us = add nsw i32 %i.jt, -4194304
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv236.i.i.us
  %i.jv = load float, ptr %i.ju, align 4, !tbaa !36, !alias.scope !214, !noalias !211
  %i.jw = sitofp i32 %.202.i.i.us to float
  %i.jx = insertelement <2 x float> poison, float %i.jv, i64 0
  %i.jy = shufflevector <2 x float> %i.jx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jz = insertelement <2 x float> poison, float %i.jw, i64 0 ; 2 uses
  %i.ka = insertelement <2 x float> %i.jz, float %i.jn, i64 1
  %i.kb = fmul <2 x float> %i.jy, %i.ka
  %i.kc = shufflevector <2 x float> %i.jz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kd = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kb, <2 x float> %i.kc, <2 x float> %i.jl) ; 3 uses
  %indvars.iv.next237.i.i.us = add nuw nsw i64 %indvars.iv236.i.i.us, 1 ; 2 uses
  %exitcond240.not.i.i.us = icmp eq i64 %indvars.iv.next237.i.i.us, 16
  br i1 %exitcond240.not.i.i.us, label %.split216.us.i.i.us, label %.split.i.i.us, !llvm.loop !13

.split216.us.i.i.us:                              ; preds = %.split.i.i.us
  %i.ke = extractelement <2 x float> %i.kd, i64 0 ; 3 uses
  %i.kf = fcmp ogt float %i.ke, 0.000000e+00
  br i1 %i.kf, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.split216.us.i.i.us
  %i.kg = extractelement <2 x float> %i.kd, i64 1 ; 4 uses
  %i.kh = fmul float %i.kg, %i.kg
  %i.ki = fmul float %.0170220.i.i.us, %i.ke
  %i.kj = fcmp ogt float %i.kh, %i.ki
  br i1 %i.kj, label %.preheader204.i.preheader.i.us, label %bb.j

.preheader204.i.preheader.i.us:                   ; preds = %bb.i
  %i.kk = insertelement <16 x float> poison, float %i.jk, i64 0
  %i.kl = shufflevector <16 x float> %i.kk, <16 x float> poison, <16 x i32> zeroinitializer
  %i.km = fmul <16 x float> %i.jf, %i.kl
  %i.kn = fadd <16 x float> %i.km, splat (float f0x4B400000)
  %i.ko = bitcast <16 x float> %i.kn to <16 x i32>
  %i.kp = and <16 x i32> %i.ko, splat (i32 8388607)
  %i.kq = tail call <16 x i32> @llvm.umax.v16i32(<16 x i32> %i.kp, <16 x i32> splat (i32 4194300))
  %i.kr = tail call <16 x i32> @llvm.umin.v16i32(<16 x i32> %i.kq, <16 x i32> splat (i32 4194307))
  %i.ks = trunc <16 x i32> %i.kr to <16 x i8>
  %i.kt = add nsw <16 x i8> %i.ks, splat (i8 4)
  store <16 x i8> %i.kt, ptr %i.hl, align 16, !tbaa !34, !alias.scope !213, !noalias !211
  %i.ku = fdiv float %i.kg, %i.ke                 ; 2 uses
  %i.kv = fmul float %i.kg, %i.ku
  br label %bb.j

bb.j:                                             ; preds = %.preheader204.i.preheader.i.us, %bb.i, %.split216.us.i.i.us, %bb.g
  %.1172.i.i.us = phi float [ %.0171219.i.i.us, %bb.g ], [ %i.ku, %.preheader204.i.preheader.i.us ], [ %.0171219.i.i.us, %bb.i ], [ %.0171219.i.i.us, %.split216.us.i.i.us ] ; 2 uses
  %.1.i.i.us = phi float [ %.0170220.i.i.us, %bb.g ], [ %i.kv, %.preheader204.i.preheader.i.us ], [ %.0170220.i.i.us, %bb.i ], [ %.0170220.i.i.us, %.split216.us.i.i.us ]
  %i.kw = add nsw i32 %.0169221.i.i.us, 1         ; 2 uses
  %exitcond251.not.i.i.us = icmp eq i32 %i.kw, 10
  br i1 %exitcond251.not.i.i.us, label %make_qx_quants.exit.i.us, label %bb.g, !llvm.loop !14

.preheader.preheader.i.i.us:                      ; preds = %.preheader153.preheader.i.us
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.hl, i8 0, i64 range(i64 0, 33) 16, i1 false), !tbaa !34, !alias.scope !213, !noalias !211
  br label %make_qx_quants.exit.i.us

make_qx_quants.exit.i.us:                         ; preds = %bb.j, %.preheader.preheader.i.i.us
  %.2.i.i.us = phi float [ 0.000000e+00, %.preheader.preheader.i.i.us ], [ %.1172.i.i.us, %bb.j ]
  %i.kx = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv189.i.us
  store float %.2.i.i.us, ptr %i.kx, align 4, !tbaa !36, !noalias !211
  %indvars.iv.next190.i.us = add nuw nsw i64 %indvars.iv189.i.us, 1 ; 2 uses
  %exitcond192.not.i.us = icmp eq i64 %indvars.iv.next190.i.us, 16
  br i1 %exitcond192.not.i.us, label %bb.k, label %.preheader153.preheader.i.us, !llvm.loop !198

bb.k:                                             ; preds = %make_qx_quants.exit.i.us
  %i.ky = getelementptr inbounds nuw [110 x i8], ptr %.01935.us, i64 %indvars.iv215.i.us ; 8 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 96 ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(12) %i.kz, i8 0, i64 12, i1 false), !alias.scope !209
  tail call void @llvm.experimental.noalias.scope.decl(metadata !216)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !217)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !218)
  %i.la = load float, ptr %i.b, align 16, !tbaa !36, !alias.scope !216, !noalias !211 ; 3 uses
  %i.lb = tail call float @llvm.fabs.f32(float %i.la)
  %i.lc = fcmp one float %i.la, 0.000000e+00      ; 2 uses
  %.1185.i.us = select i1 %i.lc, float %i.la, float 0.000000e+00
  %.1183.i.us = select i1 %i.lc, float %i.lb, float 0.000000e+00 ; 2 uses
  %i.ld = load float, ptr %i.n, align 4, !tbaa !36, !alias.scope !216, !noalias !211 ; 2 uses
  %i.le = tail call float @llvm.fabs.f32(float %i.ld) ; 2 uses
  %i.lf = fcmp ogt float %i.le, %.1183.i.us       ; 2 uses
  %.1185.i.us.1 = select i1 %i.lf, float %i.ld, float %.1185.i.us
  %.1183.i.us.1 = select i1 %i.lf, float %i.le, float %.1183.i.us ; 2 uses
  %i.lg = load float, ptr %i.o, align 8, !tbaa !36, !alias.scope !216, !noalias !211 ; 2 uses
  %i.lh = tail call float @llvm.fabs.f32(float %i.lg) ; 2 uses
  %i.li = fcmp ogt float %i.lh, %.1183.i.us.1     ; 2 uses
  %.1185.i.us.2 = select i1 %i.li, float %i.lg, float %.1185.i.us.1
  %.1183.i.us.2 = select i1 %i.li, float %i.lh, float %.1183.i.us.1 ; 2 uses
  %i.lj = load float, ptr %i.p, align 4, !tbaa !36, !alias.scope !216, !noalias !211 ; 2 uses
  %i.lk = tail call float @llvm.fabs.f32(float %i.lj) ; 2 uses
  %i.ll = fcmp ogt float %i.lk, %.1183.i.us.2     ; 2 uses
  %.1185.i.us.3 = select i1 %i.ll, float %i.lj, float %.1185.i.us.2
  %.1183.i.us.3 = select i1 %i.ll, float %i.lk, float %.1183.i.us.2 ; 2 uses
  %i.lm = load float, ptr %i.q, align 16, !tbaa !36, !alias.scope !216, !noalias !211 ; 2 uses
  %i.ln = tail call float @llvm.fabs.f32(float %i.lm) ; 2 uses
  %i.lo = fcmp ogt float %i.ln, %.1183.i.us.3     ; 2 uses
  %.1185.i.us.4 = select i1 %i.lo, float %i.lm, float %.1185.i.us.3
  %.1183.i.us.4 = select i1 %i.lo, float %i.ln, float %.1183.i.us.3 ; 2 uses
  %i.lp = load float, ptr %i.r, align 4, !tbaa !36, !alias.scope !216, !noalias !211 ; 2 uses
  %i.lq = tail call float @llvm.fabs.f32(float %i.lp) ; 2 uses
  %i.lr = fcmp ogt float %i.lq, %.1183.i.us.4     ; 2 uses
  %.1185.i.us.5 = select i1 %i.lr, float %i.lp, float %.1185.i.us.4
  %.1183.i.us.5 = select i1 %i.lr, float %i.lq, float %.1183.i.us.4 ; 2 uses
  %i.ls = load float, ptr %i.s, align 8, !tbaa !36, !alias.scope !216, !noalias !211 ; 2 uses
  %i.lt = tail call float @llvm.fabs.f32(float %i.ls) ; 2 uses
  %i.lu = fcmp ogt float %i.lt, %.1183.i.us.5     ; 2 uses
  %.1185.i.us.6 = select i1 %i.lu, float %i.ls, float %.1185.i.us.5
  %.1183.i.us.6 = select i1 %i.lu, float %i.lt, float %.1183.i.us.5 ; 2 uses
  %i.lv = load float, ptr %i.t, align 4, !tbaa !36, !alias.scope !216, !noalias !211 ; 2 uses
  %i.lw = tail call float @llvm.fabs.f32(float %i.lv) ; 2 uses
  %i.lx = fcmp ogt float %i.lw, %.1183.i.us.6     ; 2 uses
  %.1185.i.us.7 = select i1 %i.lx, float %i.lv, float %.1185.i.us.6
  %.1183.i.us.7 = select i1 %i.lx, float %i.lw, float %.1183.i.us.6 ; 2 uses
  %i.ly = load <2 x float>, ptr %i.u, align 16, !tbaa !36, !alias.scope !216, !noalias !211 ; 2 uses
  %i.lz = load float, ptr %i.v, align 4, !tbaa !36, !alias.scope !216, !noalias !211 ; 2 uses
  %i.ma = extractelement <2 x float> %i.ly, i64 0 ; 2 uses
  %i.mb = tail call float @llvm.fabs.f32(float %i.ma) ; 2 uses
  %i.mc = fcmp ogt float %i.mb, %.1183.i.us.7     ; 2 uses
  %.1185.i.us.8 = select i1 %i.mc, float %i.ma, float %.1185.i.us.7
  %.1183.i.us.8 = select i1 %i.mc, float %i.mb, float %.1183.i.us.7 ; 2 uses
  %i.md = tail call float @llvm.fabs.f32(float %i.lz) ; 2 uses
  %i.me = fcmp ogt float %i.md, %.1183.i.us.8     ; 2 uses
  %.1185.i.us.9 = select i1 %i.me, float %i.lz, float %.1185.i.us.8
  %.1183.i.us.9 = select i1 %i.me, float %i.md, float %.1183.i.us.8 ; 2 uses
  %i.mf = load float, ptr %i.w, align 8, !tbaa !36, !alias.scope !216, !noalias !211 ; 2 uses
  %i.mg = tail call float @llvm.fabs.f32(float %i.mf) ; 2 uses
  %i.mh = fcmp ogt float %i.mg, %.1183.i.us.9     ; 2 uses
  %.1185.i.us.10 = select i1 %i.mh, float %i.mf, float %.1185.i.us.9
  %.1183.i.us.10 = select i1 %i.mh, float %i.mg, float %.1183.i.us.9 ; 2 uses
  %i.mi = load float, ptr %i.x, align 4, !tbaa !36, !alias.scope !216, !noalias !211 ; 2 uses
  %i.mj = tail call float @llvm.fabs.f32(float %i.mi) ; 2 uses
  %i.mk = fcmp ogt float %i.mj, %.1183.i.us.10    ; 2 uses
  %.1185.i.us.11 = select i1 %i.mk, float %i.mi, float %.1185.i.us.10
  %.1183.i.us.11 = select i1 %i.mk, float %i.mj, float %.1183.i.us.10 ; 2 uses
  %i.ml = load float, ptr %i.y, align 16, !tbaa !36, !alias.scope !216, !noalias !211 ; 2 uses
  %i.mm = tail call float @llvm.fabs.f32(float %i.ml) ; 2 uses
  %i.mn = fcmp ogt float %i.mm, %.1183.i.us.11    ; 2 uses
  %.1185.i.us.12 = select i1 %i.mn, float %i.ml, float %.1185.i.us.11
  %.1183.i.us.12 = select i1 %i.mn, float %i.mm, float %.1183.i.us.11 ; 2 uses
  %i.mo = load float, ptr %i.z, align 4, !tbaa !36, !alias.scope !216, !noalias !211 ; 2 uses
  %i.mp = tail call float @llvm.fabs.f32(float %i.mo) ; 2 uses
  %i.mq = fcmp ogt float %i.mp, %.1183.i.us.12    ; 2 uses
  %.1185.i.us.13 = select i1 %i.mq, float %i.mo, float %.1185.i.us.12
  %.1183.i.us.13 = select i1 %i.mq, float %i.mp, float %.1183.i.us.12 ; 2 uses
  %i.mr = load float, ptr %i.aa, align 8, !tbaa !36, !alias.scope !216, !noalias !211 ; 2 uses
  %i.ms = tail call float @llvm.fabs.f32(float %i.mr) ; 2 uses
  %i.mt = fcmp ogt float %i.ms, %.1183.i.us.13    ; 2 uses
  %.1185.i.us.14 = select i1 %i.mt, float %i.mr, float %.1185.i.us.13
  %.1183.i.us.14 = select i1 %i.mt, float %i.ms, float %.1183.i.us.13 ; 2 uses
  %i.mu = load float, ptr %i.ab, align 4, !tbaa !36, !alias.scope !216, !noalias !211 ; 2 uses
  %i.mv = tail call float @llvm.fabs.f32(float %i.mu) ; 2 uses
  %i.mw = fcmp ogt float %i.mv, %.1183.i.us.14    ; 2 uses
  %.1185.i.us.15 = select i1 %i.mw, float %i.mu, float %.1185.i.us.14 ; 2 uses
  %.1183.i.us.15 = select i1 %i.mw, float %i.mv, float %.1183.i.us.14
  %i.mx = fcmp olt float %.1183.i.us.15, 1.000000e-15
  br i1 %i.mx, label %.preheader.preheader.i.us, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.my = fdiv float 3.200000e+01, %.1185.i.us.15
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %bb.l
  %indvars.iv231.i.us = phi i64 [ 0, %bb.l ], [ %indvars.iv.next232.i.us, %bb.m ] ; 4 uses
  %i.mz = phi <2 x float> [ zeroinitializer, %bb.l ], [ %i.nu, %bb.m ]
  %i.na = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv231.i.us
  %i.nb = load float, ptr %i.na, align 4, !tbaa !36, !alias.scope !216, !noalias !211 ; 2 uses
  %i.nc = fmul float %i.my, %i.nb
  %i.nd = fsub float f0x4B400000, %i.nc
  %i.ne = bitcast float %i.nd to i32
  %i.nf = and i32 %i.ne, 8388607
  %i.ng = tail call i32 @llvm.umax.i32(i32 %i.nf, i32 4194272)
  %i.nh = tail call i32 @llvm.umin.i32(i32 %i.ng, i32 4194335) ; 2 uses
  %..i.us = add nsw i32 %i.nh, -4194304
  %i.ni = trunc i32 %i.nh to i8
  %i.nj = add nsw i8 %i.ni, 32
  %i.nk = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv231.i.us
  store i8 %i.nj, ptr %i.nk, align 1, !tbaa !34, !alias.scope !217, !noalias !211
  %i.nl = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv231.i.us
  %i.nm = load float, ptr %i.nl, align 4, !tbaa !36, !alias.scope !218, !noalias !211
  %i.nn = sitofp i32 %..i.us to float
  %i.no = insertelement <2 x float> poison, float %i.nm, i64 0
  %i.np = shufflevector <2 x float> %i.no, <2 x float> poison, <2 x i32> zeroinitializer
  %i.nq = insertelement <2 x float> poison, float %i.nn, i64 0 ; 2 uses
  %i.nr = insertelement <2 x float> %i.nq, float %i.nb, i64 1
  %i.ns = fmul <2 x float> %i.np, %i.nr
  %i.nt = shufflevector <2 x float> %i.nq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.nu = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ns, <2 x float> %i.nt, <2 x float> %i.mz) ; 3 uses
  %indvars.iv.next232.i.us = add nuw nsw i64 %indvars.iv231.i.us, 1 ; 2 uses
  %exitcond235.not.i.us = icmp eq i64 %indvars.iv.next232.i.us, 16
  br i1 %exitcond235.not.i.us, label %bb.n, label %bb.m, !llvm.loop !12

bb.n:                                             ; preds = %bb.m
  %i.nv = extractelement <2 x float> %i.nu, i64 0 ; 2 uses
  %i.nw = fcmp une float %i.nv, 0.000000e+00
  %i.nx = extractelement <2 x float> %i.nu, i64 1 ; 2 uses
  %i.ny = fdiv float %i.nx, %i.nv
  %i.nz = select i1 %i.nw, float %i.ny, float 0.000000e+00 ; 2 uses
  %i.oa = fmul float %i.nx, %i.nz
  %i.ob = load <8 x float>, ptr %i.b, align 16
  %i.oc = load <2 x float>, ptr %i.w, align 8
  %i.od = load <4 x float>, ptr %i.y, align 16
  %i.oe = load <16 x i8>, ptr %i.e, align 16
  %i.of = shufflevector <2 x float> %i.ly, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.og = shufflevector <4 x float> %i.of, <4 x float> %i.od, <16 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 0, i32 1, i32 poison, i32 poison, i32 4, i32 5, i32 6, i32 7>
  %i.oh = shufflevector <8 x float> %i.ob, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.oi = shufflevector <16 x float> %i.oh, <16 x float> %i.og, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 24, i32 25, i32 poison, i32 poison, i32 28, i32 29, i32 30, i32 31>
  %i.oj = shufflevector <2 x float> %i.oc, <2 x float> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ok = shufflevector <16 x float> %i.oi, <16 x float> %i.oj, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 16, i32 17, i32 12, i32 13, i32 14, i32 15>
  br label %bb.o

bb.o:                                             ; preds = %bb.r, %bb.n
  %.0169221.i.us = phi i32 [ -9, %bb.n ], [ %i.qd, %bb.r ] ; 3 uses
  %.0170220.i.us = phi float [ %i.oa, %bb.n ], [ %.1.i.us, %bb.r ] ; 4 uses
  %.0171219.i.us = phi float [ %i.nz, %bb.n ], [ %.1172.i.us, %bb.r ] ; 3 uses
  %i.ol = phi <16 x i8> [ %i.oe, %bb.n ], [ %i.qc, %bb.r ] ; 3 uses
  %i.om = icmp eq i32 %.0169221.i.us, 0
  br i1 %i.om, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.on = sitofp i32 %.0169221.i.us to float
  %i.oo = tail call float @llvm.fmuladd.f32(float %i.on, float 1.000000e-01, float 3.200000e+01)
  %i.op = fneg float %i.oo
  %i.oq = fdiv float %i.op, %.1185.i.us.15        ; 2 uses
  br label %.split.i.us

.split.i.us:                                      ; preds = %.split.i.us, %bb.p
  %indvars.iv236.i.us = phi i64 [ %indvars.iv.next237.i.us, %.split.i.us ], [ 0, %bb.p ] ; 3 uses
  %i.or = phi <2 x float> [ %i.pj, %.split.i.us ], [ zeroinitializer, %bb.p ]
  %i.os = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv236.i.us
  %i.ot = load float, ptr %i.os, align 4, !tbaa !36, !alias.scope !216, !noalias !211 ; 2 uses
  %i.ou = fmul float %i.oq, %i.ot
  %i.ov = fadd float %i.ou, f0x4B400000
  %i.ow = bitcast float %i.ov to i32
  %i.ox = and i32 %i.ow, 8388607
  %i.oy = tail call i32 @llvm.umax.i32(i32 %i.ox, i32 4194272)
  %i.oz = tail call i32 @llvm.umin.i32(i32 %i.oy, i32 4194335)
  %.202.i.us = add nsw i32 %i.oz, -4194304
  %i.pa = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv236.i.us
  %i.pb = load float, ptr %i.pa, align 4, !tbaa !36, !alias.scope !218, !noalias !211
  %i.pc = sitofp i32 %.202.i.us to float
  %i.pd = insertelement <2 x float> poison, float %i.pb, i64 0
  %i.pe = shufflevector <2 x float> %i.pd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.pf = insertelement <2 x float> poison, float %i.pc, i64 0 ; 2 uses
  %i.pg = insertelement <2 x float> %i.pf, float %i.ot, i64 1
  %i.ph = fmul <2 x float> %i.pe, %i.pg
  %i.pi = shufflevector <2 x float> %i.pf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.pj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ph, <2 x float> %i.pi, <2 x float> %i.or) ; 3 uses
  %indvars.iv.next237.i.us = add nuw nsw i64 %indvars.iv236.i.us, 1 ; 2 uses
  %exitcond240.not.i.us = icmp eq i64 %indvars.iv.next237.i.us, 16
  br i1 %exitcond240.not.i.us, label %.split216.us.i.us, label %.split.i.us, !llvm.loop !13

.split216.us.i.us:                                ; preds = %.split.i.us
  %i.pk = extractelement <2 x float> %i.pj, i64 0 ; 3 uses
  %i.pl = fcmp ogt float %i.pk, 0.000000e+00
  br i1 %i.pl, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.split216.us.i.us
  %i.pm = extractelement <2 x float> %i.pj, i64 1 ; 4 uses
  %i.pn = fmul float %i.pm, %i.pm
  %i.po = fmul float %.0170220.i.us, %i.pk
  %i.pp = fcmp ogt float %i.pn, %i.po
  br i1 %i.pp, label %.preheader204.i.us.preheader, label %bb.r

.preheader204.i.us.preheader:                     ; preds = %bb.q
  %i.pq = insertelement <16 x float> poison, float %i.oq, i64 0
  %i.pr = shufflevector <16 x float> %i.pq, <16 x float> poison, <16 x i32> zeroinitializer
  %i.ps = fmul <16 x float> %i.pr, %i.ok
  %i.pt = fadd <16 x float> %i.ps, splat (float f0x4B400000)
  %i.pu = bitcast <16 x float> %i.pt to <16 x i32>
  %i.pv = and <16 x i32> %i.pu, splat (i32 8388607)
  %i.pw = tail call <16 x i32> @llvm.umax.v16i32(<16 x i32> %i.pv, <16 x i32> splat (i32 4194272))
  %i.px = tail call <16 x i32> @llvm.umin.v16i32(<16 x i32> %i.pw, <16 x i32> splat (i32 4194335))
  %i.py = trunc <16 x i32> %i.px to <16 x i8>
  %i.pz = add nsw <16 x i8> %i.py, splat (i8 32)
  %i.qa = fdiv float %i.pm, %i.pk                 ; 2 uses
  %i.qb = fmul float %i.pm, %i.qa
  br label %bb.r

bb.r:                                             ; preds = %.preheader204.i.us.preheader, %bb.q, %.split216.us.i.us, %bb.o
  %.1172.i.us = phi float [ %.0171219.i.us, %bb.o ], [ %i.qa, %.preheader204.i.us.preheader ], [ %.0171219.i.us, %bb.q ], [ %.0171219.i.us, %.split216.us.i.us ] ; 2 uses
  %.1.i.us = phi float [ %.0170220.i.us, %bb.o ], [ %i.qb, %.preheader204.i.us.preheader ], [ %.0170220.i.us, %bb.q ], [ %.0170220.i.us, %.split216.us.i.us ]
  %i.qc = phi <16 x i8> [ %i.ol, %bb.o ], [ %i.pz, %.preheader204.i.us.preheader ], [ %i.ol, %bb.q ], [ %i.ol, %.split216.us.i.us ] ; 2 uses
  %i.qd = add nsw i32 %.0169221.i.us, 1           ; 2 uses
  %exitcond251.not.i.us = icmp eq i32 %i.qd, 10
  br i1 %exitcond251.not.i.us, label %make_qx_quants.exit.us.loopexit, label %bb.o, !llvm.loop !14

.preheader.preheader.i.us:                        ; preds = %bb.k
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.e, i8 0, i64 range(i64 0, 33) 16, i1 false), !tbaa !34, !alias.scope !217, !noalias !211
  br label %make_qx_quants.exit.us

make_qx_quants.exit.us.loopexit:                  ; preds = %bb.r
  store <16 x i8> %i.qc, ptr %i.e, align 16
  br label %make_qx_quants.exit.us

make_qx_quants.exit.us:                           ; preds = %make_qx_quants.exit.us.loopexit, %.preheader.preheader.i.us
  %.2.i.us = phi float [ 0.000000e+00, %.preheader.preheader.i.us ], [ %.1172.i.us, %make_qx_quants.exit.us.loopexit ] ; 2 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.v, %make_qx_quants.exit.us
  %indvars.iv193.i.us = phi i64 [ 0, %make_qx_quants.exit.us ], [ %indvars.iv.next194.i.us, %bb.v ] ; 6 uses
  %i.qe = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv193.i.us
  %i.qf = load i8, ptr %i.qe, align 1, !tbaa !34, !noalias !211 ; 3 uses
  %i.qg = icmp samesign ult i64 %indvars.iv193.i.us, 8
  %i.qh = getelementptr i8, ptr %i.kz, i64 %indvars.iv193.i.us ; 2 uses
  br i1 %i.qg, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.qi = shl i8 %i.qf, 4
  %i.qj = getelementptr i8, ptr %i.qh, i64 -8     ; 2 uses
  %i.qk = load i8, ptr %i.qj, align 1, !tbaa !34, !alias.scope !209
  %i.ql = or i8 %i.qk, %i.qi
  store i8 %i.ql, ptr %i.qj, align 1, !tbaa !34, !alias.scope !209
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.qm = and i8 %i.qf, 15
  store i8 %i.qm, ptr %i.qh, align 1, !tbaa !34, !alias.scope !209
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.qn = ashr i8 %i.qf, 4
  %i.qo = zext i8 %i.qn to i32
  %i.qp = trunc nuw nsw i64 %indvars.iv193.i.us to i32
  %i.qq = lshr i32 %i.qp, 1
  %i.qr = and i32 %i.qq, 6
  %i.qs = shl nuw nsw i32 %i.qo, %i.qr
  %i.qt = and i64 %indvars.iv193.i.us, 3
  %i.qu = getelementptr inbounds nuw i8, ptr %i.kz, i64 %i.qt
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qu, i64 8 ; 2 uses
  %i.qw = load i8, ptr %i.qv, align 1, !tbaa !34, !alias.scope !209
  %i.qx = trunc i32 %i.qs to i8
  %i.qy = or i8 %i.qw, %i.qx
  store i8 %i.qy, ptr %i.qv, align 1, !tbaa !34, !alias.scope !209
  %indvars.iv.next194.i.us = add nuw nsw i64 %indvars.iv193.i.us, 1 ; 2 uses
  %exitcond196.not.i.us = icmp eq i64 %indvars.iv.next194.i.us, 16
  br i1 %exitcond196.not.i.us, label %bb.w, label %bb.s, !llvm.loop !203

bb.w:                                             ; preds = %bb.v
  %i.qz = tail call float @llvm.fabs.f32(float %.2.i.us)
  %i.ra = fmul float %i.qz, f0x77800000
  %i.rb = fmul float %i.ra, f0x08800000
  %i.rc = bitcast float %.2.i.us to i32           ; 2 uses
  %i.rd = shl i32 %i.rc, 1                        ; 2 uses
  %i.re = tail call i32 @llvm.umax.i32(i32 %i.rd, i32 1895825408)
  %spec.store.select.i.i.us = lshr exact i32 %i.re, 1
  %i.rf = and i32 %spec.store.select.i.i.us, 2139095040
  %i.rg = add nuw i32 %i.rf, 125829120
  %i.rh = bitcast i32 %i.rg to float
  %i.ri = fadd float %i.rb, %i.rh
  %i.rj = bitcast float %i.ri to i32              ; 2 uses
  %i.rk = lshr i32 %i.rj, 13
  %i.rl = and i32 %i.rk, 31744
  %i.rm = and i32 %i.rj, 4095
  %i.rn = add nuw nsw i32 %i.rl, %i.rm
  %i.ro = lshr i32 %i.rc, 16
  %i.rp = and i32 %i.ro, 32768
  %i.rq = icmp ugt i32 %i.rd, -16777216
  %i.rr = select i1 %i.rq, i32 32256, i32 %i.rn   ; 3 uses
  %i.rs = or i32 %i.rr, %i.rp                     ; 2 uses
  %i.rt = trunc nuw i32 %i.rs to i16
  %i.ru = getelementptr inbounds nuw i8, ptr %i.ky, i64 108
  store i16 %i.rt, ptr %i.ru, align 2, !tbaa !46, !alias.scope !209
  %i.rv = shl i32 %i.rr, 17                       ; 2 uses
  %i.rw = lshr exact i32 %i.rv, 4
  %i.rx = or disjoint i32 %i.rw, 1879048192
  %i.ry = bitcast i32 %i.rx to float
  %i.rz = and i32 %i.rr, 32767
  %i.sa = or disjoint i32 %i.rz, 1056964608
  %i.sb = bitcast i32 %i.sa to float
  %i.sc = icmp ult i32 %i.rv, 134217728
  %i.sd = fadd float %i.sb, -5.000000e-01
  %i.se = fmul float %i.ry, 1.925930e-34
  %.v.i.i.us = select i1 %i.sc, float %i.sd, float %i.se
  %i.sf = bitcast float %.v.i.i.us to i32
  %sext.i.us = shl nuw i32 %i.rs, 16
  %i.sg = and i32 %sext.i.us, -2147483648
  %i.sh = or i32 %i.sg, %i.sf
  %i.si = bitcast i32 %i.sh to float
  br label %bb.x

bb.x:                                             ; preds = %.loopexit.i.us, %bb.w
  %indvars.iv201.i.us = phi i64 [ 0, %bb.w ], [ %indvars.iv.next202.i.us, %.loopexit.i.us ] ; 6 uses
  %i.sj = icmp samesign ult i64 %indvars.iv201.i.us, 8
  %i.sk = getelementptr i8, ptr %i.kz, i64 %indvars.iv201.i.us ; 2 uses
  br i1 %i.sj, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.sl = getelementptr i8, ptr %i.sk, i64 -8
  %i.sm = load i8, ptr %i.sl, align 1, !tbaa !34, !alias.scope !209
  %i.sn = lshr i8 %i.sm, 4
  br label %bb.aa

bb.z:                                             ; preds = %bb.x
  %i.so = load i8, ptr %i.sk, align 1, !tbaa !34, !alias.scope !209
  %i.sp = and i8 %i.so, 15
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.in.i.us = phi i8 [ %i.sp, %bb.z ], [ %i.sn, %bb.y ]
  %i.sq = trunc nuw nsw i64 %indvars.iv201.i.us to i32
  %i.sr = and i64 %indvars.iv201.i.us, 3
  %i.ss = getelementptr inbounds nuw i8, ptr %i.kz, i64 %i.sr
  %i.st = getelementptr inbounds nuw i8, ptr %i.ss, i64 8
  %i.su = load i8, ptr %i.st, align 1, !tbaa !34, !alias.scope !209
  %i.sv = zext i8 %i.su to i32
  %i.sw = lshr i32 %i.sq, 1
  %i.sx = and i32 %i.sw, 6
  %i.sy = lshr i32 %i.sv, %i.sx
  %.tr.i.us = trunc nuw i32 %i.sy to i8
  %i.sz = shl i8 %.tr.i.us, 4
  %i.ta = and i8 %i.sz, 48
  %i.tb = or disjoint i8 %.in.i.us, -32
  %i.tc = add nsw i8 %i.tb, %i.ta
  %i.td = sitofp i8 %i.tc to float
  %i.te = fmul float %i.si, %i.td                 ; 2 uses
  %i.tf = fcmp une float %i.te, 0.000000e+00
  br i1 %i.tf, label %.preheader152.i.us, label %.loopexit.i.us

.preheader152.i.us:                               ; preds = %bb.aa
  %i.tg = shl nuw nsw i64 %indvars.iv201.i.us, 4  ; 2 uses
  %i.th = getelementptr inbounds nuw [4 x i8], ptr %.0136174.i.us, i64 %i.tg
  %i.ti = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.tg
  %i.tj = load <16 x float>, ptr %i.th, align 4, !tbaa !36, !alias.scope !208
  %i.tk = insertelement <16 x float> poison, float %i.te, i64 0
  %i.tl = shufflevector <16 x float> %i.tk, <16 x float> poison, <16 x i32> zeroinitializer
  %i.tm = fdiv <16 x float> %i.tj, %i.tl
  %i.tn = fadd <16 x float> %i.tm, splat (float f0x4B400000)
  %i.to = bitcast <16 x float> %i.tn to <16 x i32>
  %i.tp = and <16 x i32> %i.to, splat (i32 8388607)
  %i.tq = tail call <16 x i32> @llvm.umax.v16i32(<16 x i32> %i.tp, <16 x i32> splat (i32 4194300))
  %i.tr = tail call <16 x i32> @llvm.umin.v16i32(<16 x i32> %i.tq, <16 x i32> splat (i32 4194307))
  %i.ts = trunc <16 x i32> %i.tr to <16 x i8>
  %i.tt = add nsw <16 x i8> %i.ts, splat (i8 4)
  store <16 x i8> %i.tt, ptr %i.ti, align 16, !tbaa !34, !noalias !211
  br label %.loopexit.i.us

.loopexit.i.us:                                   ; preds = %.preheader152.i.us, %bb.aa
  %indvars.iv.next202.i.us = add nuw nsw i64 %indvars.iv201.i.us, 1 ; 2 uses
  %exitcond204.not.i.us = icmp eq i64 %indvars.iv.next202.i.us, 16
  br i1 %exitcond204.not.i.us, label %bb.ab, label %bb.x, !llvm.loop !204

bb.ab:                                            ; preds = %.loopexit.i.us
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(32) %i.ky, i8 0, i64 32, i1 false), !alias.scope !209
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ae, %bb.ab
  %indvars.iv205.i.us = phi i64 [ 0, %bb.ab ], [ %indvars.iv.next206.i.us, %bb.ae ] ; 2 uses
  %.0133169.i.us = phi i8 [ 1, %bb.ab ], [ %spec.select151.i.us, %bb.ae ] ; 2 uses
  %.0134168.i.us = phi i32 [ 0, %bb.ab ], [ %spec.select.i.us, %bb.ae ] ; 2 uses
  %i.tu = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv205.i.us ; 2 uses
  %i.tv = load i8, ptr %i.tu, align 1, !tbaa !34, !noalias !211 ; 2 uses
  %i.tw = icmp sgt i8 %i.tv, 3
  br i1 %i.tw, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.tx = sext i32 %.0134168.i.us to i64
  %i.ty = getelementptr inbounds i8, ptr %i.ky, i64 %i.tx ; 2 uses
  %i.tz = load i8, ptr %i.ty, align 1, !tbaa !34, !alias.scope !209
  %i.ua = or i8 %i.tz, %.0133169.i.us
  store i8 %i.ua, ptr %i.ty, align 1, !tbaa !34, !alias.scope !209
  %i.ub = add nsw i8 %i.tv, -4
  store i8 %i.ub, ptr %i.tu, align 1, !tbaa !34, !noalias !211
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.uc = add nsw i32 %.0134168.i.us, 1           ; 2 uses
  %i.ud = icmp eq i32 %i.uc, 32                   ; 2 uses
  %spec.select.i.us = select i1 %i.ud, i32 0, i32 %i.uc
  %i.ue = zext i1 %i.ud to i8
  %spec.select151.i.us = shl i8 %.0133169.i.us, %i.ue
  %indvars.iv.next206.i.us = add nuw nsw i64 %indvars.iv205.i.us, 1 ; 2 uses
  %exitcond207.not.i.us = icmp eq i64 %indvars.iv.next206.i.us, 256
  br i1 %exitcond207.not.i.us, label %.preheader154.i.us, label %bb.ac, !llvm.loop !205

.preheader154.i.us:                               ; preds = %bb.ae
  %i.uf = getelementptr inbounds nuw i8, ptr %i.ky, i64 32
  %wide.load126 = load <16 x i8>, ptr %i.a, align 16, !tbaa !34, !noalias !211
  %wide.load127 = load <16 x i8>, ptr %i.ac, align 16, !tbaa !34, !noalias !211
  %wide.load128 = load <16 x i8>, ptr %i.ad, align 16, !tbaa !34, !noalias !211
  %wide.load129 = load <16 x i8>, ptr %i.ae, align 16, !tbaa !34, !noalias !211
  %i.ug = shl <16 x i8> %wide.load128, splat (i8 2)
  %i.uh = shl <16 x i8> %wide.load129, splat (i8 2)
  %i.ui = or <16 x i8> %i.ug, %wide.load126
  %i.uj = or <16 x i8> %i.uh, %wide.load127
  %wide.load130 = load <16 x i8>, ptr %i.af, align 16, !tbaa !34, !noalias !211
  %wide.load131 = load <16 x i8>, ptr %i.ag, align 16, !tbaa !34, !noalias !211
  %i.uk = shl <16 x i8> %wide.load130, splat (i8 4)
  %i.ul = shl <16 x i8> %wide.load131, splat (i8 4)
end_hunk_2
begin_hunk_3_@quantize_row_q4_K_ref:bb.a

.preheader139:                                    ; preds = %.preheader139.preheader, %.preheader
  %indvars.iv189 = phi i64 [ 0, %.preheader139.preheader ], [ %indvars.iv.next190, %.preheader ] ; 2 uses
  %.0117159 = phi ptr [ %0, %.preheader139.preheader ], [ %i.ta, %.preheader ] ; 41 uses
  br label %.preheader138

._crit_edge:                                      ; preds = %.preheader, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret void

.preheader138:                                    ; preds = %.preheader139, %make_qkx2_quants.exit
  %indvars.iv = phi i64 [ 0, %.preheader139 ], [ %indvars.iv.next, %make_qkx2_quants.exit ] ; 4 uses
  %i.ae = phi <2 x float> [ zeroinitializer, %.preheader139 ], [ %i.kk, %make_qkx2_quants.exit ] ; 2 uses
  %i.af = shl nuw nsw i64 %indvars.iv, 5          ; 33 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %.0117159, i64 %i.af ; 8 uses
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !36 ; 2 uses
  %i.ai = tail call float @llvm.fmuladd.f32(float %i.ah, float %i.ah, float 0.000000e+00)
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %.0117159, i64 %i.af
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  %i.al = load float, ptr %i.ak, align 4, !tbaa !36 ; 2 uses
  %i.am = tail call float @llvm.fmuladd.f32(float %i.al, float %i.al, float %i.ai)
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %.0117159, i64 %i.af
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !36 ; 2 uses
  %i.aq = tail call float @llvm.fmuladd.f32(float %i.ap, float %i.ap, float %i.am)
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %.0117159, i64 %i.af
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 12
  %i.at = load float, ptr %i.as, align 4, !tbaa !36 ; 2 uses
  %i.au = tail call float @llvm.fmuladd.f32(float %i.at, float %i.at, float %i.aq)
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %.0117159, i64 %i.af
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16 ; 2 uses
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !36 ; 2 uses
  %i.ay = tail call float @llvm.fmuladd.f32(float %i.ax, float %i.ax, float %i.au)
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %.0117159, i64 %i.af
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 20
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !36 ; 2 uses
  %i.bc = tail call float @llvm.fmuladd.f32(float %i.bb, float %i.bb, float %i.ay)
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %.0117159, i64 %i.af
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %i.bf = load float, ptr %i.be, align 4, !tbaa !36 ; 2 uses
  %i.bg = tail call float @llvm.fmuladd.f32(float %i.bf, float %i.bf, float %i.bc)
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %.0117159, i64 %i.af
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 28
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !36 ; 2 uses
  %i.bk = tail call float @llvm.fmuladd.f32(float %i.bj, float %i.bj, float %i.bg)
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %.0117159, i64 %i.af
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 32 ; 2 uses
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !36 ; 2 uses
  %i.bo = tail call float @llvm.fmuladd.f32(float %i.bn, float %i.bn, float %i.bk)
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %.0117159, i64 %i.af
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 36
  %i.br = load float, ptr %i.bq, align 4, !tbaa !36 ; 2 uses
  %i.bs = tail call float @llvm.fmuladd.f32(float %i.br, float %i.br, float %i.bo)
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %.0117159, i64 %i.af
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 40
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !36 ; 2 uses
  %i.bw = tail call float @llvm.fmuladd.f32(float %i.bv, float %i.bv, float %i.bs)
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %.0117159, i64 %i.af
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 44
  %i.bz = load float, ptr %i.by, align 4, !tbaa !36 ; 2 uses
  %i.ca = tail call float @llvm.fmuladd.f32(float %i.bz, float %i.bz, float %i.bw)
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %.0117159, i64 %i.af
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 48 ; 2 uses
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !36 ; 2 uses
  %i.ce = tail call float @llvm.fmuladd.f32(float %i.cd, float %i.cd, float %i.ca)
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %.0117159, i64 %i.af
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 52
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !36 ; 2 uses
  %i.ci = tail call float @llvm.fmuladd.f32(float %i.ch, float %i.ch, float %i.ce)
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %.0117159, i64 %i.af
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 56
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !36 ; 2 uses
  %i.cm = tail call float @llvm.fmuladd.f32(float %i.cl, float %i.cl, float %i.ci)
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %.0117159, i64 %i.af
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 60
  %i.cp = load float, ptr %i.co, align 4, !tbaa !36 ; 2 uses
  %i.cq = tail call float @llvm.fmuladd.f32(float %i.cp, float %i.cp, float %i.cm)
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %.0117159, i64 %i.af
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 64 ; 2 uses
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !36 ; 2 uses
  %i.cu = tail call float @llvm.fmuladd.f32(float %i.ct, float %i.ct, float %i.cq)
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %.0117159, i64 %i.af
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 68
  %i.cx = load float, ptr %i.cw, align 4, !tbaa !36 ; 2 uses
  %i.cy = tail call float @llvm.fmuladd.f32(float %i.cx, float %i.cx, float %i.cu)
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %.0117159, i64 %i.af
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 72
  %i.db = load float, ptr %i.da, align 4, !tbaa !36 ; 2 uses
  %i.dc = tail call float @llvm.fmuladd.f32(float %i.db, float %i.db, float %i.cy)
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %.0117159, i64 %i.af
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 76
  %i.df = load float, ptr %i.de, align 4, !tbaa !36 ; 2 uses
  %i.dg = tail call float @llvm.fmuladd.f32(float %i.df, float %i.df, float %i.dc)
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %.0117159, i64 %i.af
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 80 ; 2 uses
  %i.dj = load float, ptr %i.di, align 4, !tbaa !36 ; 2 uses
  %i.dk = tail call float @llvm.fmuladd.f32(float %i.dj, float %i.dj, float %i.dg)
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %.0117159, i64 %i.af
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 84
  %i.dn = load float, ptr %i.dm, align 4, !tbaa !36 ; 2 uses
  %i.do = tail call float @llvm.fmuladd.f32(float %i.dn, float %i.dn, float %i.dk)
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %.0117159, i64 %i.af
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 88
  %i.dr = load float, ptr %i.dq, align 4, !tbaa !36 ; 2 uses
  %i.ds = tail call float @llvm.fmuladd.f32(float %i.dr, float %i.dr, float %i.do)
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %.0117159, i64 %i.af
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 92
  %i.dv = load float, ptr %i.du, align 4, !tbaa !36 ; 2 uses
  %i.dw = tail call float @llvm.fmuladd.f32(float %i.dv, float %i.dv, float %i.ds)
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %.0117159, i64 %i.af
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 96 ; 2 uses
  %i.dz = load float, ptr %i.dy, align 4, !tbaa !36 ; 2 uses
  %i.ea = tail call float @llvm.fmuladd.f32(float %i.dz, float %i.dz, float %i.dw)
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %.0117159, i64 %i.af
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 100
  %i.ed = load float, ptr %i.ec, align 4, !tbaa !36 ; 2 uses
  %i.ee = tail call float @llvm.fmuladd.f32(float %i.ed, float %i.ed, float %i.ea)
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %.0117159, i64 %i.af
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 104
  %i.eh = load float, ptr %i.eg, align 4, !tbaa !36 ; 2 uses
  %i.ei = tail call float @llvm.fmuladd.f32(float %i.eh, float %i.eh, float %i.ee)
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %.0117159, i64 %i.af
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 108
  %i.el = load float, ptr %i.ek, align 4, !tbaa !36 ; 2 uses
  %i.em = tail call float @llvm.fmuladd.f32(float %i.el, float %i.el, float %i.ei)
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %.0117159, i64 %i.af
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 112 ; 2 uses
  %i.ep = load float, ptr %i.eo, align 4, !tbaa !36 ; 2 uses
  %i.eq = tail call float @llvm.fmuladd.f32(float %i.ep, float %i.ep, float %i.em)
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %.0117159, i64 %i.af
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 116
  %i.et = load float, ptr %i.es, align 4, !tbaa !36 ; 2 uses
  %i.eu = tail call float @llvm.fmuladd.f32(float %i.et, float %i.et, float %i.eq)
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %.0117159, i64 %i.af
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 120
  %i.ex = load float, ptr %i.ew, align 4, !tbaa !36 ; 2 uses
  %i.ey = tail call float @llvm.fmuladd.f32(float %i.ex, float %i.ex, float %i.eu)
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %.0117159, i64 %i.af
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 124
  %i.fb = load float, ptr %i.fa, align 4, !tbaa !36 ; 2 uses
  %i.fc = tail call float @llvm.fmuladd.f32(float %i.fb, float %i.fb, float %i.ey)
  %i.fd = fmul float %i.fc, 3.125000e-02
  %i.fe = tail call float @sqrtf(float noundef %i.fd) #14
  %i.ff = load <4 x float>, ptr %i.ag, align 4, !tbaa !36
  %i.fg = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.ff)
  %i.fh = insertelement <4 x float> poison, float %i.fe, i64 0
  %i.fi = shufflevector <4 x float> %i.fh, <4 x float> poison, <4 x i32> zeroinitializer ; 8 uses
  %i.fj = fadd <4 x float> %i.fi, %i.fg           ; 2 uses
  store <4 x float> %i.fj, ptr %i.c, align 16, !tbaa !36
  %i.fk = load <4 x float>, ptr %i.aw, align 4, !tbaa !36
  %i.fl = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.fk)
  %i.fm = fadd <4 x float> %i.fi, %i.fl
  store <4 x float> %i.fm, ptr %i.i, align 16, !tbaa !36
  %i.fn = load <4 x float>, ptr %i.bm, align 4, !tbaa !36
  %i.fo = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.fn)
  %i.fp = fadd <4 x float> %i.fi, %i.fo
  store <4 x float> %i.fp, ptr %i.j, align 16, !tbaa !36
  %i.fq = load <4 x float>, ptr %i.cc, align 4, !tbaa !36
  %i.fr = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.fq)
  %i.fs = fadd <4 x float> %i.fi, %i.fr
  store <4 x float> %i.fs, ptr %i.k, align 16, !tbaa !36
  %i.ft = load <4 x float>, ptr %i.cs, align 4, !tbaa !36
  %i.fu = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.ft)
  %i.fv = fadd <4 x float> %i.fi, %i.fu
  store <4 x float> %i.fv, ptr %i.l, align 16, !tbaa !36
  %i.fw = load <4 x float>, ptr %i.di, align 4, !tbaa !36
  %i.fx = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.fw)
  %i.fy = fadd <4 x float> %i.fi, %i.fx
  store <4 x float> %i.fy, ptr %i.m, align 16, !tbaa !36
  %i.fz = load <4 x float>, ptr %i.dy, align 4, !tbaa !36
  %i.ga = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.fz)
  %i.gb = fadd <4 x float> %i.fi, %i.ga
  store <4 x float> %i.gb, ptr %i.n, align 16, !tbaa !36
  %i.gc = load <4 x float>, ptr %i.eo, align 4, !tbaa !36
  %i.gd = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.gc)
  %i.ge = fadd <4 x float> %i.fi, %i.gd
  store <4 x float> %i.ge, ptr %i.o, align 16, !tbaa !36
  tail call void @llvm.experimental.noalias.scope.decl(metadata !230)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !231)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !232)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !233)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !234)
  %i.gf = load float, ptr %i.ag, align 4, !tbaa !36, !alias.scope !230 ; 3 uses
  %i.gg = extractelement <4 x float> %i.fj, i64 0 ; 2 uses
  %i.gh = fmul float %i.gf, %i.gg
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %i.gi = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.af ; 3 uses
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv
  %i.gk = fcmp ogt float %.1174.i, 0.000000e+00
  %spec.store.select.i = select i1 %i.gk, float 0.000000e+00, float %.1174.i ; 6 uses
  %i.gl = fcmp oeq float %.1181.i, %spec.store.select.i
  br i1 %i.gl, label %.preheader.preheader.i, label %bb.d

.preheader.preheader.i:                           ; preds = %bb.b
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.gi, i8 0, i64 range(i64 0, 33) 32, i1 false), !tbaa !34, !alias.scope !232
  br label %make_qkx2_quants.exit

bb.c:                                             ; preds = %bb.c, %.preheader138
  %indvars.iv.i = phi i64 [ 1, %.preheader138 ], [ %indvars.iv.next.i, %bb.c ] ; 3 uses
  %.0173208.i = phi float [ %i.gf, %.preheader138 ], [ %.1174.i, %bb.c ] ; 2 uses
  %.0180207.i = phi float [ %i.gf, %.preheader138 ], [ %.1181.i, %bb.c ] ; 2 uses
  %.0191206.i = phi float [ %i.gg, %.preheader138 ], [ %i.gs, %bb.c ]
  %.0193204.i = phi float [ %i.gh, %.preheader138 ], [ %i.gt, %bb.c ]
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %indvars.iv.i
  %i.gn = load float, ptr %i.gm, align 4, !tbaa !36, !alias.scope !230 ; 5 uses
  %i.go = fcmp olt float %i.gn, %.0173208.i
  %.1174.i = select i1 %i.go, float %i.gn, float %.0173208.i ; 3 uses
  %i.gp = fcmp ogt float %i.gn, %.0180207.i
  %.1181.i = select i1 %i.gp, float %i.gn, float %.0180207.i ; 4 uses
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.i
  %i.gr = load float, ptr %i.gq, align 4, !tbaa !36, !alias.scope !231 ; 2 uses
  %i.gs = fadd float %.0191206.i, %i.gr           ; 3 uses
  %i.gt = tail call float @llvm.fmuladd.f32(float %i.gr, float %i.gn, float %.0193204.i) ; 3 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 32
  br i1 %exitcond.not.i, label %bb.b, label %bb.c, !llvm.loop !15

bb.d:                                             ; preds = %bb.b
  %i.gu = fsub float %.1181.i, %spec.store.select.i
  %i.gv = fdiv float 1.500000e+01, %i.gu          ; 2 uses
  %i.gw = fdiv float 1.000000e+00, %i.gv          ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %indvars.iv230.i = phi i64 [ 0, %bb.d ], [ %indvars.iv.next231.i, %bb.e ] ; 4 uses
  %.0183209.i = phi float [ 0.000000e+00, %bb.d ], [ %i.ho, %bb.e ]
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %indvars.iv230.i
  %i.gy = load float, ptr %i.gx, align 4, !tbaa !36, !alias.scope !230 ; 2 uses
  %i.gz = fsub float %i.gy, %spec.store.select.i
  %i.ha = fmul float %i.gv, %i.gz
  %i.hb = fadd float %i.ha, f0x4B400000
  %i.hc = bitcast float %i.hb to i32
  %i.hd = and i32 %i.hc, 8388607
  %i.he = tail call i32 @llvm.umax.i32(i32 %i.hd, i32 4194304)
  %i.hf = tail call i32 @llvm.umin.i32(i32 %i.he, i32 4194319)
  %i.hg = trunc i32 %i.hf to i8                   ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.gi, i64 %indvars.iv230.i
  store i8 %i.hg, ptr %i.hh, align 1, !tbaa !34, !alias.scope !232
  %i.hi = uitofp nneg i8 %i.hg to float
  %i.hj = tail call float @llvm.fmuladd.f32(float %i.gw, float %i.hi, float %spec.store.select.i)
  %i.hk = fsub float %i.hj, %i.gy                 ; 2 uses
  %i.hl = fmul float %i.hk, %i.hk
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv230.i
  %i.hn = load float, ptr %i.hm, align 4, !tbaa !36, !alias.scope !231
  %i.ho = tail call float @llvm.fmuladd.f32(float %i.hn, float %i.hl, float %.0183209.i) ; 2 uses
  %indvars.iv.next231.i = add nuw nsw i64 %indvars.iv230.i, 1 ; 2 uses
  %exitcond234.not.i = icmp eq i64 %indvars.iv.next231.i, 32
  br i1 %exitcond234.not.i, label %.preheader203.i, label %bb.e, !llvm.loop !6

.preheader203.i:                                  ; preds = %bb.e, %.loopexit.i
  %.2221.i = phi float [ %.4.i, %.loopexit.i ], [ %spec.store.select.i, %bb.e ] ; 4 uses
  %.0179220.i = phi i32 [ %i.ke, %.loopexit.i ], [ 0, %bb.e ] ; 3 uses
  %.1184219.i = phi float [ %.3186.i, %.loopexit.i ], [ %i.ho, %bb.e ] ; 3 uses
  %.0187218.i = phi float [ %.2189.i, %.loopexit.i ], [ %i.gw, %bb.e ] ; 2 uses
  %i.hp = uitofp nneg i32 %.0179220.i to float
  %i.hq = tail call nnan float @llvm.fmuladd.f32(float %i.hp, float 1.000000e-01, float -1.000000e+00)
  %i.hr = fadd nnan float %i.hq, 1.500000e+01
  %i.hs = fsub float %.1181.i, %.2221.i
  %i.ht = fdiv float %i.hr, %i.hs
  br label %bb.g

bb.f:                                             ; preds = %bb.g
  %i.hu = extractelement <2 x float> %i.iw, i64 1 ; 3 uses
  %i.hv = fneg float %i.hu                        ; 2 uses
  %i.hw = fmul float %i.hu, %i.hv
  %i.hx = extractelement <2 x float> %i.iw, i64 0 ; 3 uses
  %i.hy = tail call float @llvm.fmuladd.f32(float %i.gs, float %i.hx, float %i.hw) ; 3 uses
  %i.hz = fcmp ogt float %i.hy, 0.000000e+00
  br i1 %i.hz, label %bb.h, label %.loopexit.i

bb.g:                                             ; preds = %bb.g, %.preheader203.i
  %indvars.iv235.i = phi i64 [ 0, %.preheader203.i ], [ %indvars.iv.next236.i, %bb.g ] ; 4 uses
  %.0176213.i = phi float [ 0.000000e+00, %.preheader203.i ], [ %i.ix, %bb.g ]
  %i.ia = phi <2 x float> [ zeroinitializer, %.preheader203.i ], [ %i.iw, %bb.g ]
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %indvars.iv235.i
  %i.ic = load float, ptr %i.ib, align 4, !tbaa !36, !alias.scope !230 ; 2 uses
  %i.id = fsub float %i.ic, %.2221.i
  %i.ie = fmul float %i.ht, %i.id
  %i.if = fadd float %i.ie, f0x4B400000
  %i.ig = bitcast float %i.if to i32
  %i.ih = and i32 %i.ig, 8388607                  ; 2 uses
  %i.ii = icmp samesign ult i32 %i.ih, 4194304
  %i.ij = tail call i32 @llvm.umin.i32(i32 %i.ih, i32 4194319)
  %i.ik = add nsw i32 %i.ij, -4194304
  %i.il = select i1 %i.ii, i32 0, i32 %i.ik       ; 2 uses
  %i.im = trunc i32 %i.il to i8
  %i.in = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv235.i
  store i8 %i.im, ptr %i.in, align 1, !tbaa !34, !alias.scope !234
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv235.i
  %i.ip = load float, ptr %i.io, align 4, !tbaa !36, !alias.scope !231 ; 2 uses
  %i.iq = uitofp nneg i32 %i.il to float          ; 2 uses
  %i.ir = fmul float %i.ip, %i.iq                 ; 2 uses
  %i.is = insertelement <2 x float> poison, float %i.ir, i64 0
  %i.it = insertelement <2 x float> %i.is, float %i.ip, i64 1
  %i.iu = insertelement <2 x float> poison, float %i.iq, i64 0
  %i.iv = shufflevector <2 x float> %i.iu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.iw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.it, <2 x float> %i.iv, <2 x float> %i.ia) ; 3 uses
  %i.ix = tail call float @llvm.fmuladd.f32(float %i.ir, float %i.ic, float %.0176213.i) ; 4 uses
  %indvars.iv.next236.i = add nuw nsw i64 %indvars.iv235.i, 1 ; 2 uses
  %exitcond239.not.i = icmp eq i64 %indvars.iv.next236.i, 32
  br i1 %exitcond239.not.i, label %bb.f, label %bb.g, !llvm.loop !7

bb.h:                                             ; preds = %bb.f
  %i.iy = fmul float %i.gt, %i.hv
  %i.iz = tail call float @llvm.fmuladd.f32(float %i.gs, float %i.ix, float %i.iy)
  %i.ja = fdiv float %i.iz, %i.hy
  %i.jb = fneg float %i.ix
  %i.jc = fmul float %i.hu, %i.jb
  %i.jd = tail call float @llvm.fmuladd.f32(float %i.hx, float %i.gt, float %i.jc)
  %i.je = fdiv float %i.jd, %i.hy                 ; 2 uses
  %i.jf = fcmp ogt float %i.je, 0.000000e+00      ; 2 uses
  %i.jg = fdiv float %i.ix, %i.hx
  %.0172.i = select i1 %i.jf, float %i.jg, float %i.ja ; 3 uses
  %.0171.i = select i1 %i.jf, float 0.000000e+00, float %i.je ; 3 uses
  br label %bb.j

bb.i:                                             ; preds = %bb.j
  %i.jh = fcmp olt float %i.kd, %.1184219.i
  br i1 %i.jh, label %.preheader202.preheader.i, label %.loopexit.i

.preheader202.preheader.i:                        ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.gi, ptr noundef nonnull align 16 dereferenceable(32) %i.b, i64 range(i64 0, 33) 32, i1 false), !tbaa !34, !alias.scope !235
  br label %.loopexit.i

bb.j:                                             ; preds = %bb.j, %bb.h
  %indvars.iv240.i = phi i64 [ 0, %bb.h ], [ %indvars.iv.next241.i.1, %bb.j ] ; 5 uses
  %.0170215.i = phi float [ 0.000000e+00, %bb.h ], [ %i.kd, %bb.j ]
  %i.ji = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv240.i
  %i.jj = load i8, ptr %i.ji, align 2, !tbaa !34, !alias.scope !234
  %i.jk = uitofp i8 %i.jj to float
  %i.jl = tail call float @llvm.fmuladd.f32(float %.0172.i, float %i.jk, float %.0171.i)
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %indvars.iv240.i
  %i.jn = load float, ptr %i.jm, align 4, !tbaa !36, !alias.scope !230
  %i.jo = fsub float %i.jl, %i.jn                 ; 2 uses
  %i.jp = fmul float %i.jo, %i.jo
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv240.i
  %i.jr = load float, ptr %i.jq, align 8, !tbaa !36, !alias.scope !231
  %i.js = tail call float @llvm.fmuladd.f32(float %i.jr, float %i.jp, float %.0170215.i)
  %indvars.iv.next241.i = or disjoint i64 %indvars.iv240.i, 1 ; 3 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv.next241.i
  %i.ju = load i8, ptr %i.jt, align 1, !tbaa !34, !alias.scope !234
  %i.jv = uitofp i8 %i.ju to float
  %i.jw = tail call float @llvm.fmuladd.f32(float %.0172.i, float %i.jv, float %.0171.i)
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %indvars.iv.next241.i
  %i.jy = load float, ptr %i.jx, align 4, !tbaa !36, !alias.scope !230
  %i.jz = fsub float %i.jw, %i.jy                 ; 2 uses
  %i.ka = fmul float %i.jz, %i.jz
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.next241.i
  %i.kc = load float, ptr %i.kb, align 4, !tbaa !36, !alias.scope !231
  %i.kd = tail call float @llvm.fmuladd.f32(float %i.kc, float %i.ka, float %i.js) ; 3 uses
  %indvars.iv.next241.i.1 = add nuw nsw i64 %indvars.iv240.i, 2 ; 2 uses
  %exitcond244.not.i.1 = icmp eq i64 %indvars.iv.next241.i.1, 32
  br i1 %exitcond244.not.i.1, label %bb.i, label %bb.j, !llvm.loop !16

.loopexit.i:                                      ; preds = %.preheader202.preheader.i, %bb.i, %bb.f
  %.2189.i = phi float [ %.0187218.i, %bb.f ], [ %.0187218.i, %bb.i ], [ %.0172.i, %.preheader202.preheader.i ] ; 2 uses
  %.3186.i = phi float [ %.1184219.i, %bb.f ], [ %.1184219.i, %bb.i ], [ %i.kd, %.preheader202.preheader.i ]
  %.4.i = phi float [ %.2221.i, %bb.f ], [ %.2221.i, %bb.i ], [ %.0171.i, %.preheader202.preheader.i ] ; 2 uses
  %i.ke = add nuw nsw i32 %.0179220.i, 1
  %exitcond248.not.i = icmp eq i32 %.0179220.i, 20
  br i1 %exitcond248.not.i, label %make_qkx2_quants.exit, label %.preheader203.i, !llvm.loop !8

make_qkx2_quants.exit:                            ; preds = %.loopexit.i, %.preheader.preheader.i
  %.4.lcssa.sink.i = phi float [ %spec.store.select.i, %.preheader.preheader.i ], [ %.4.i, %.loopexit.i ]
  %.1.i = phi float [ 0.000000e+00, %.preheader.preheader.i ], [ %.2189.i, %.loopexit.i ] ; 2 uses
  %i.kf = fneg float %.4.lcssa.sink.i             ; 2 uses
  store float %i.kf, ptr %i.gj, align 4, !tbaa !36, !alias.scope !233
  %i.kg = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv
  store float %.1.i, ptr %i.kg, align 4, !tbaa !36
  %i.kh = insertelement <2 x float> poison, float %.1.i, i64 0
  %i.ki = insertelement <2 x float> %i.kh, float %i.kf, i64 1 ; 2 uses
  %i.kj = fcmp ogt <2 x float> %i.ki, %i.ae
  %i.kk = select <2 x i1> %i.kj, <2 x float> %i.ki, <2 x float> %i.ae ; 4 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 8
  br i1 %exitcond.not, label %bb.k, label %.preheader138, !llvm.loop !225

bb.k:                                             ; preds = %make_qkx2_quants.exit
  %i.kl = fcmp ogt <2 x float> %i.kk, zeroinitializer
  %i.km = fdiv <2 x float> splat (float 6.300000e+01), %i.kk
  %i.kn = getelementptr inbounds nuw [144 x i8], ptr %1, i64 %indvars.iv189 ; 12 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 4
  %i.kp = getelementptr inbounds nuw i8, ptr %i.kn, i64 12
  %i.kq = getelementptr i8, ptr %i.kn, i64 4
  %i.kr = select <2 x i1> %i.kl, <2 x float> %i.km, <2 x float> zeroinitializer
  %i.ks = shufflevector <2 x float> %i.kr, <2 x float> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.kt = load <8 x float>, ptr %i.d, align 16, !tbaa !36 ; 2 uses
  %i.ku = load <8 x float>, ptr %i.e, align 16, !tbaa !36 ; 2 uses
  %i.kv = shufflevector <8 x float> %i.ku, <8 x float> %i.kt, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.kw = fmul <8 x float> %i.ks, %i.kv
  %i.kx = fadd <8 x float> %i.kw, splat (float f0x4B400000)
  %i.ky = bitcast <8 x float> %i.kx to <8 x i32>
  %i.kz = trunc <8 x i32> %i.ky to <8 x i8>
  %i.la = tail call <8 x i8> @llvm.umin.v8i8(<8 x i8> %i.kz, <8 x i8> splat (i8 63))
  %i.lb = shufflevector <8 x float> %i.ku, <8 x float> %i.kt, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.lc = fmul <8 x float> %i.ks, %i.lb
  %i.ld = fadd <8 x float> %i.lc, splat (float f0x4B400000)
  %i.le = bitcast <8 x float> %i.ld to <8 x i32>
  %i.lf = trunc <8 x i32> %i.le to <8 x i8>
  %i.lg = tail call <8 x i8> @llvm.umin.v8i8(<8 x i8> %i.lf, <8 x i8> splat (i8 63)) ; 3 uses
  %i.lh = shufflevector <8 x i8> %i.lg, <8 x i8> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.li = and <4 x i8> %i.lh, splat (i8 15)
  %i.lj = shufflevector <8 x i8> %i.lg, <8 x i8> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.lk = shl <4 x i8> %i.lj, splat (i8 4)
  %i.ll = or disjoint <4 x i8> %i.lk, %i.li
  store <4 x i8> %i.ll, ptr %i.kp, align 1, !tbaa !34
  %i.lm = shl nuw <8 x i8> %i.lg, splat (i8 2)
  %i.ln = and <8 x i8> %i.lm, splat (i8 -64)
  %i.lo = or disjoint <8 x i8> %i.ln, %i.la
  store <8 x i8> %i.lo, ptr %i.kq, align 1, !tbaa !34
  %i.lp = fdiv <2 x float> %i.kk, splat (float 6.300000e+01) ; 2 uses
  %i.lq = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.lp)
  %i.lr = fmul <2 x float> %i.lq, splat (float f0x77800000)
  %i.ls = fmul <2 x float> %i.lr, splat (float f0x08800000)
  %i.lt = bitcast <2 x float> %i.lp to <2 x i32>  ; 2 uses
  %i.lu = shl <2 x i32> %i.lt, splat (i32 1)      ; 2 uses
  %i.lv = tail call <2 x i32> @llvm.umax.v2i32(<2 x i32> %i.lu, <2 x i32> splat (i32 1895825408))
  %i.lw = lshr exact <2 x i32> %i.lv, splat (i32 1)
  %i.lx = and <2 x i32> %i.lw, splat (i32 2139095040)
  %i.ly = add nuw <2 x i32> %i.lx, splat (i32 125829120)
  %i.lz = bitcast <2 x i32> %i.ly to <2 x float>
  %i.ma = fadd <2 x float> %i.ls, %i.lz
  %i.mb = bitcast <2 x float> %i.ma to <2 x i32>  ; 2 uses
  %i.mc = lshr <2 x i32> %i.mb, splat (i32 13)
  %i.md = and <2 x i32> %i.mc, splat (i32 31744)
  %i.me = and <2 x i32> %i.mb, splat (i32 4095)
  %i.mf = add nuw nsw <2 x i32> %i.md, %i.me
  %i.mg = lshr <2 x i32> %i.lt, splat (i32 16)
  %i.mh = and <2 x i32> %i.mg, splat (i32 32768)
  %i.mi = icmp ugt <2 x i32> %i.lu, splat (i32 -16777216)
  %i.mj = select <2 x i1> %i.mi, <2 x i32> splat (i32 32256), <2 x i32> %i.mf ; 3 uses
  %i.mk = or <2 x i32> %i.mj, %i.mh               ; 2 uses
  %i.ml = trunc nuw <2 x i32> %i.mk to <2 x i16>
  store <2 x i16> %i.ml, ptr %i.kn, align 4, !tbaa !34
  %i.mm = and <2 x i32> %i.mj, splat (i32 32767)
  %i.mn = or disjoint <2 x i32> %i.mm, splat (i32 1056964608)
  %i.mo = bitcast <2 x i32> %i.mn to <2 x float>
  %i.mp = fadd <2 x float> %i.mo, splat (float -5.000000e-01)
  %i.mq = shl <2 x i32> %i.mj, splat (i32 17)     ; 2 uses
  %i.mr = lshr exact <2 x i32> %i.mq, splat (i32 4)
  %i.ms = or disjoint <2 x i32> %i.mr, splat (i32 1879048192)
  %i.mt = bitcast <2 x i32> %i.ms to <2 x float>
  %i.mu = fmul <2 x float> %i.mt, splat (float 1.925930e-34)
  %i.mv = icmp ult <2 x i32> %i.mq, splat (i32 134217728)
  %i.mw = select <2 x i1> %i.mv, <2 x float> %i.mp, <2 x float> %i.mu
  %i.mx = bitcast <2 x float> %i.mw to <2 x i32>
  %i.my = shl nuw <2 x i32> %i.mk, splat (i32 16)
  %i.mz = and <2 x i32> %i.my, splat (i32 -2147483648)
  %i.na = or <2 x i32> %i.mz, %i.mx               ; 2 uses
  %bc = bitcast <2 x i32> %i.na to <2 x float>
  %i.nb = extractelement <2 x float> %bc, i64 0
  %bc211 = bitcast <2 x i32> %i.na to <2 x float>
  %i.nc = extractelement <2 x float> %bc211, i64 1
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.loopexit
  %indvars.iv178 = phi i64 [ 0, %bb.k ], [ %indvars.iv.next179, %.loopexit ] ; 4 uses
  %i.nd = icmp samesign ult i64 %indvars.iv178, 4
  %i.ne = getelementptr inbounds nuw i8, ptr %i.ko, i64 %indvars.iv178 ; 5 uses
  br i1 %i.nd, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.nf = load i8, ptr %i.ne, align 1, !tbaa !34, !alias.scope !236
  %i.ng = and i8 %i.nf, 63
  %i.nh = getelementptr i8, ptr %i.ne, i64 4
  %i.ni = load i8, ptr %i.nh, align 1, !tbaa !34, !alias.scope !236
  %i.nj = and i8 %i.ni, 63
  br label %get_scale_min_k4.exit

bb.n:                                             ; preds = %bb.l
  %i.nk = getelementptr inbounds nuw i8, ptr %i.ne, i64 4
  %i.nl = load i8, ptr %i.nk, align 1, !tbaa !34, !alias.scope !236 ; 2 uses
  %i.nm = and i8 %i.nl, 15
  %i.nn = getelementptr i8, ptr %i.ne, i64 -4
  %i.no = load i8, ptr %i.nn, align 1, !tbaa !34, !alias.scope !236
  %i.np = lshr i8 %i.no, 2
  %i.nq = and i8 %i.np, 48
  %i.nr = or disjoint i8 %i.nq, %i.nm
  %i.ns = lshr i8 %i.nl, 4
  %i.nt = load i8, ptr %i.ne, align 1, !tbaa !34, !alias.scope !236
  %i.nu = lshr i8 %i.nt, 2
  %i.nv = and i8 %i.nu, 48
  %i.nw = or disjoint i8 %i.nv, %i.ns
  br label %get_scale_min_k4.exit

get_scale_min_k4.exit:                            ; preds = %bb.m, %bb.n
  %.sink.i = phi i8 [ %i.ng, %bb.m ], [ %i.nr, %bb.n ]
  %storemerge.i = phi i8 [ %i.nj, %bb.m ], [ %i.nw, %bb.n ]
  %i.nx = uitofp nneg i8 %.sink.i to float
  %i.ny = fmul float %i.nb, %i.nx                 ; 2 uses
  %i.nz = fcmp une float %i.ny, 0.000000e+00
  br i1 %i.nz, label %vector.body, label %.loopexit

vector.body:                                      ; preds = %get_scale_min_k4.exit
  %broadcast.splatinsert209 = insertelement <4 x float> poison, float %i.ny, i64 0
  %broadcast.splat210 = shufflevector <4 x float> %broadcast.splatinsert209, <4 x float> poison, <4 x i32> zeroinitializer ; 8 uses
  %i.oa = uitofp nneg i8 %storemerge.i to float
  %i.ob = fmul float %i.nc, %i.oa
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.ob, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 8 uses
  %i.oc = shl nuw nsw i64 %indvars.iv178, 5       ; 9 uses
  %i.od = getelementptr inbounds nuw [4 x i8], ptr %.0117159, i64 %i.oc
  %wide.load = load <4 x float>, ptr %i.od, align 4, !tbaa !36
  %i.oe = fadd <4 x float> %broadcast.splat, %wide.load
  %i.of = fdiv <4 x float> %i.oe, %broadcast.splat210
  %i.og = fadd <4 x float> %i.of, splat (float f0x4B400000)
  %i.oh = bitcast <4 x float> %i.og to <4 x i32>
  %i.oi = and <4 x i32> %i.oh, splat (i32 8388607)
  %i.oj = tail call <4 x i32> @llvm.usub.sat.v4i32(<4 x i32> %i.oi, <4 x i32> splat (i32 4194304))
  %i.ok = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.oj, <4 x i32> splat (i32 15))
  %i.ol = trunc nuw nsw <4 x i32> %i.ok to <4 x i8>
  %i.om = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.oc
  store <4 x i8> %i.ol, ptr %i.om, align 16, !tbaa !34
  %i.on = or disjoint i64 %i.oc, 4                ; 2 uses
  %i.oo = getelementptr inbounds nuw [4 x i8], ptr %.0117159, i64 %i.on
  %wide.load.1 = load <4 x float>, ptr %i.oo, align 4, !tbaa !36
  %i.op = fadd <4 x float> %broadcast.splat, %wide.load.1
  %i.oq = fdiv <4 x float> %i.op, %broadcast.splat210
  %i.or = fadd <4 x float> %i.oq, splat (float f0x4B400000)
  %i.os = bitcast <4 x float> %i.or to <4 x i32>
  %i.ot = and <4 x i32> %i.os, splat (i32 8388607)
  %i.ou = tail call <4 x i32> @llvm.usub.sat.v4i32(<4 x i32> %i.ot, <4 x i32> splat (i32 4194304))
end_hunk_3
begin_hunk_4_@quantize_q4_K:bb.a
  %i.iq = fadd float %i.io, %i.ip
  %i.ir = extractelement <4 x float> %i.fo, i64 1
  %i.is = fadd float %i.iq, %i.ir
  %i.it = extractelement <4 x float> %i.fo, i64 2
  %i.iu = fadd float %i.is, %i.it
  %i.iv = extractelement <4 x float> %i.fo, i64 3
  %i.iw = fadd float %i.iu, %i.iv
  %i.ix = extractelement <4 x float> %i.gh, i64 0
  %i.iy = fadd float %i.iw, %i.ix
  %i.iz = extractelement <4 x float> %i.gh, i64 1
  %i.ja = fadd float %i.iy, %i.iz
  %i.jb = extractelement <4 x float> %i.gh, i64 2
  %i.jc = fadd float %i.ja, %i.jb
  %i.jd = extractelement <4 x float> %i.gh, i64 3
  %i.je = fadd float %i.jc, %i.jd
  %i.jf = extractelement <4 x float> %i.ha, i64 0
  %i.jg = fadd float %i.je, %i.jf
  %i.jh = extractelement <4 x float> %i.ha, i64 1
  %i.ji = fadd float %i.jg, %i.jh
  %i.jj = extractelement <4 x float> %i.ha, i64 2
  %i.jk = fadd float %i.ji, %i.jj
  %i.jl = extractelement <4 x float> %i.ha, i64 3
  %i.jm = fadd float %i.jk, %i.jl
  %i.jn = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv179.i.us
  store float %i.jm, ptr %i.jn, align 4, !tbaa !36, !noalias !263
  tail call void @llvm.experimental.noalias.scope.decl(metadata !264)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !265)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !266)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !267)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !268)
  %i.jo = load float, ptr %invariant.gep.i.us, align 4, !tbaa !36, !alias.scope !269 ; 3 uses
  %i.jp = fmul float %i.hb, %i.jo
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.preheader140.preheader.i.us
  %indvars.iv.i.i.us = phi i64 [ 1, %.preheader140.preheader.i.us ], [ %indvars.iv.next.i.i.us, %bb.d ] ; 3 uses
  %.0203230.i.i.us = phi float [ %i.jp, %.preheader140.preheader.i.us ], [ %i.jx, %bb.d ]
  %.0204229.i.i.us = phi float [ %i.hb, %.preheader140.preheader.i.us ], [ %i.jw, %bb.d ]
  %.0205228.i.i.us = phi float [ %i.jo, %.preheader140.preheader.i.us ], [ %.1206.i.i.us, %bb.d ] ; 2 uses
  %.0207227.i.i.us = phi float [ %i.jo, %.preheader140.preheader.i.us ], [ %.1208.i.i.us, %bb.d ] ; 2 uses
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i.us, i64 %indvars.iv.i.i.us
  %i.jr = load float, ptr %i.jq, align 4, !tbaa !36, !alias.scope !269 ; 5 uses
  %i.js = fcmp olt float %i.jr, %.0207227.i.i.us
  %.1208.i.i.us = select i1 %i.js, float %i.jr, float %.0207227.i.i.us ; 3 uses
  %i.jt = fcmp ogt float %i.jr, %.0205228.i.i.us
  %.1206.i.i.us = select i1 %i.jt, float %i.jr, float %.0205228.i.i.us ; 4 uses
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.i.i.us
  %i.jv = load float, ptr %i.ju, align 4, !tbaa !36, !alias.scope !265, !noalias !263 ; 2 uses
  %i.jw = fadd float %.0204229.i.i.us, %i.jv      ; 3 uses
  %i.jx = tail call float @llvm.fmuladd.f32(float %i.jv, float %i.jr, float %.0203230.i.i.us) ; 3 uses
  %indvars.iv.next.i.i.us = add nuw nsw i64 %indvars.iv.i.i.us, 1 ; 2 uses
  %exitcond.not.i.i.us = icmp eq i64 %indvars.iv.next.i.i.us, 32
  br i1 %exitcond.not.i.i.us, label %bb.e, label %bb.d, !llvm.loop !17

bb.e:                                             ; preds = %bb.d
  %i.jy = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.be ; 3 uses
  %i.jz = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv179.i.us
  %i.ka = fcmp ogt float %.1208.i.i.us, 0.000000e+00
  %spec.store.select.i.i.us = select i1 %i.ka, float 0.000000e+00, float %.1208.i.i.us ; 6 uses
  %i.kb = fcmp ugt float %.1206.i.i.us, %spec.store.select.i.i.us
  br i1 %i.kb, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.jy, i8 0, i64 32, i1 false), !alias.scope !266, !noalias !263
  br label %make_qkx3_quants.exit.i.us

bb.g:                                             ; preds = %bb.e
  %i.kc = fsub float %.1206.i.i.us, %spec.store.select.i.i.us
  %i.kd = fdiv float 1.500000e+01, %i.kc          ; 2 uses
  %i.ke = fdiv float 1.000000e+00, %i.kd          ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %bb.g
  %indvars.iv252.i.i.us = phi i64 [ 0, %bb.g ], [ %indvars.iv.next253.i.i.us, %bb.h ] ; 4 uses
  %.0198232.i.i.us = phi float [ 0.000000e+00, %bb.g ], [ %i.kw, %bb.h ]
  %i.kf = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i.us, i64 %indvars.iv252.i.i.us
  %i.kg = load float, ptr %i.kf, align 4, !tbaa !36, !alias.scope !269 ; 2 uses
  %i.kh = fsub float %i.kg, %spec.store.select.i.i.us
  %i.ki = fmul float %i.kd, %i.kh
  %i.kj = fadd float %i.ki, f0x4B400000
  %i.kk = bitcast float %i.kj to i32
  %i.kl = and i32 %i.kk, 8388607
  %i.km = tail call i32 @llvm.umax.i32(i32 %i.kl, i32 4194304)
  %i.kn = tail call i32 @llvm.umin.i32(i32 %i.km, i32 4194319)
  %i.ko = trunc i32 %i.kn to i8                   ; 2 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %i.jy, i64 %indvars.iv252.i.i.us
  store i8 %i.ko, ptr %i.kp, align 1, !tbaa !34, !alias.scope !266, !noalias !263
  %i.kq = uitofp nneg i8 %i.ko to float
  %i.kr = tail call float @llvm.fmuladd.f32(float %i.ke, float %i.kq, float %spec.store.select.i.i.us)
  %i.ks = fsub float %i.kr, %i.kg                 ; 2 uses
  %i.kt = fmul float %i.ks, %i.ks
  %i.ku = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv252.i.i.us
  %i.kv = load float, ptr %i.ku, align 4, !tbaa !36, !alias.scope !265, !noalias !263
  %i.kw = tail call float @llvm.fmuladd.f32(float %i.kv, float %i.kt, float %.0198232.i.i.us) ; 2 uses
  %indvars.iv.next253.i.i.us = add nuw nsw i64 %indvars.iv252.i.i.us, 1 ; 2 uses
  %exitcond256.not.i.i.us = icmp eq i64 %indvars.iv.next253.i.i.us, 32
  br i1 %exitcond256.not.i.i.us, label %.preheader226.i.i.us, label %bb.h, !llvm.loop !9

.preheader226.i.i.us:                             ; preds = %bb.h, %.loopexit.i.i.us
  %.0196244.i.i.us = phi i32 [ %i.nm, %.loopexit.i.i.us ], [ 0, %bb.h ] ; 2 uses
  %.1243.i.i.us = phi float [ %.3.i.i.us, %.loopexit.i.i.us ], [ %i.kw, %bb.h ] ; 3 uses
  %.0199242.i.i.us = phi float [ %.2201.i.i.us, %.loopexit.i.i.us ], [ %i.ke, %bb.h ] ; 2 uses
  %.2209241.i.i.us = phi float [ %.4.i.i.us, %.loopexit.i.i.us ], [ %spec.store.select.i.i.us, %bb.h ] ; 4 uses
  %i.kx = uitofp nneg i32 %.0196244.i.i.us to float
  %i.ky = tail call nnan float @llvm.fmuladd.f32(float %i.kx, float 5.000000e-02, float f0xBF666666)
  %i.kz = fadd nnan float %i.ky, 1.500000e+01
  %i.la = fsub float %.1206.i.i.us, %.2209241.i.i.us
  %i.lb = fdiv float %i.kz, %i.la
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.preheader226.i.i.us
  %indvars.iv257.i.i.us = phi i64 [ 0, %.preheader226.i.i.us ], [ %indvars.iv.next258.i.i.us, %bb.i ] ; 4 uses
  %.0193236.i.i.us = phi float [ 0.000000e+00, %.preheader226.i.i.us ], [ %i.lz, %bb.i ]
  %i.lc = phi <2 x float> [ zeroinitializer, %.preheader226.i.i.us ], [ %i.ly, %bb.i ]
  %i.ld = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i.us, i64 %indvars.iv257.i.i.us
  %i.le = load float, ptr %i.ld, align 4, !tbaa !36, !alias.scope !269 ; 2 uses
  %i.lf = fsub float %i.le, %.2209241.i.i.us
  %i.lg = fmul float %i.lb, %i.lf
  %i.lh = fadd float %i.lg, f0x4B400000
  %i.li = bitcast float %i.lh to i32
  %i.lj = and i32 %i.li, 8388607                  ; 2 uses
  %i.lk = icmp samesign ult i32 %i.lj, 4194304
  %i.ll = tail call i32 @llvm.umin.i32(i32 %i.lj, i32 4194319)
  %i.lm = add nsw i32 %i.ll, -4194304
  %i.ln = select i1 %i.lk, i32 0, i32 %i.lm       ; 2 uses
  %i.lo = trunc i32 %i.ln to i8
  %i.lp = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv257.i.i.us
  store i8 %i.lo, ptr %i.lp, align 1, !tbaa !34, !alias.scope !268, !noalias !263
  %i.lq = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv257.i.i.us
  %i.lr = load float, ptr %i.lq, align 4, !tbaa !36, !alias.scope !265, !noalias !263 ; 2 uses
  %i.ls = uitofp nneg i32 %i.ln to float          ; 2 uses
  %i.lt = fmul float %i.lr, %i.ls                 ; 2 uses
  %i.lu = insertelement <2 x float> poison, float %i.lt, i64 0
  %i.lv = insertelement <2 x float> %i.lu, float %i.lr, i64 1
  %i.lw = insertelement <2 x float> poison, float %i.ls, i64 0
  %i.lx = shufflevector <2 x float> %i.lw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ly = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lv, <2 x float> %i.lx, <2 x float> %i.lc) ; 3 uses
  %i.lz = tail call float @llvm.fmuladd.f32(float %i.lt, float %i.le, float %.0193236.i.i.us) ; 4 uses
  %indvars.iv.next258.i.i.us = add nuw nsw i64 %indvars.iv257.i.i.us, 1 ; 2 uses
  %exitcond261.not.i.i.us = icmp eq i64 %indvars.iv.next258.i.i.us, 32
  br i1 %exitcond261.not.i.i.us, label %bb.j, label %bb.i, !llvm.loop !10

bb.j:                                             ; preds = %bb.i
  %i.ma = extractelement <2 x float> %i.ly, i64 1 ; 3 uses
  %i.mb = fneg float %i.ma                        ; 2 uses
  %i.mc = fmul float %i.ma, %i.mb
  %i.md = extractelement <2 x float> %i.ly, i64 0 ; 3 uses
  %i.me = tail call float @llvm.fmuladd.f32(float %i.jw, float %i.md, float %i.mc) ; 3 uses
  %i.mf = fcmp ogt float %i.me, 0.000000e+00
  br i1 %i.mf, label %bb.k, label %.loopexit.i.i.us

bb.k:                                             ; preds = %bb.j
  %i.mg = fmul float %i.jx, %i.mb
  %i.mh = tail call float @llvm.fmuladd.f32(float %i.jw, float %i.lz, float %i.mg)
  %i.mi = fdiv float %i.mh, %i.me
  %i.mj = fneg float %i.lz
  %i.mk = fmul float %i.ma, %i.mj
  %i.ml = tail call float @llvm.fmuladd.f32(float %i.md, float %i.jx, float %i.mk)
  %i.mm = fdiv float %i.ml, %i.me                 ; 2 uses
  %i.mn = fcmp ogt float %i.mm, 0.000000e+00      ; 2 uses
  %i.mo = fdiv float %i.lz, %i.md
  %.0191.i.i.us = select i1 %i.mn, float %i.mo, float %i.mi ; 3 uses
  %.0190.i.i.us = select i1 %i.mn, float 0.000000e+00, float %i.mm ; 3 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %bb.k
  %indvars.iv262.i.i.us = phi i64 [ 0, %bb.k ], [ %indvars.iv.next263.i.i.us.1, %bb.l ] ; 5 uses
  %.0189238.i.i.us = phi float [ 0.000000e+00, %bb.k ], [ %i.nk, %bb.l ]
  %i.mp = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv262.i.i.us
  %i.mq = load i8, ptr %i.mp, align 2, !tbaa !34, !alias.scope !268, !noalias !263
  %i.mr = uitofp i8 %i.mq to float
  %i.ms = tail call float @llvm.fmuladd.f32(float %.0191.i.i.us, float %i.mr, float %.0190.i.i.us)
  %i.mt = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i.us, i64 %indvars.iv262.i.i.us
  %i.mu = load float, ptr %i.mt, align 4, !tbaa !36, !alias.scope !269
  %i.mv = fsub float %i.ms, %i.mu                 ; 2 uses
  %i.mw = fmul float %i.mv, %i.mv
  %i.mx = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv262.i.i.us
  %i.my = load float, ptr %i.mx, align 8, !tbaa !36, !alias.scope !265, !noalias !263
  %i.mz = tail call float @llvm.fmuladd.f32(float %i.my, float %i.mw, float %.0189238.i.i.us)
  %indvars.iv.next263.i.i.us = or disjoint i64 %indvars.iv262.i.i.us, 1 ; 3 uses
  %i.na = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv.next263.i.i.us
  %i.nb = load i8, ptr %i.na, align 1, !tbaa !34, !alias.scope !268, !noalias !263
  %i.nc = uitofp i8 %i.nb to float
  %i.nd = tail call float @llvm.fmuladd.f32(float %.0191.i.i.us, float %i.nc, float %.0190.i.i.us)
  %i.ne = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i.us, i64 %indvars.iv.next263.i.i.us
  %i.nf = load float, ptr %i.ne, align 4, !tbaa !36, !alias.scope !269
  %i.ng = fsub float %i.nd, %i.nf                 ; 2 uses
  %i.nh = fmul float %i.ng, %i.ng
  %i.ni = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv.next263.i.i.us
  %i.nj = load float, ptr %i.ni, align 4, !tbaa !36, !alias.scope !265, !noalias !263
  %i.nk = tail call float @llvm.fmuladd.f32(float %i.nj, float %i.nh, float %i.mz) ; 3 uses
  %indvars.iv.next263.i.i.us.1 = add nuw nsw i64 %indvars.iv262.i.i.us, 2 ; 2 uses
  %exitcond266.not.i.i.us.1 = icmp eq i64 %indvars.iv.next263.i.i.us.1, 32
  br i1 %exitcond266.not.i.i.us.1, label %bb.m, label %bb.l, !llvm.loop !18

bb.m:                                             ; preds = %bb.l
  %i.nl = fcmp olt float %i.nk, %.1243.i.i.us
  br i1 %i.nl, label %.preheader.preheader.i.i.us, label %.loopexit.i.i.us

.preheader.preheader.i.i.us:                      ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.jy, ptr noundef nonnull align 16 dereferenceable(32) %i.b, i64 range(i64 0, 33) 32, i1 false), !tbaa !34, !alias.scope !270, !noalias !263
  br label %.loopexit.i.i.us

.loopexit.i.i.us:                                 ; preds = %.preheader.preheader.i.i.us, %bb.m, %bb.j
  %.4.i.i.us = phi float [ %.2209241.i.i.us, %bb.j ], [ %.2209241.i.i.us, %bb.m ], [ %.0190.i.i.us, %.preheader.preheader.i.i.us ] ; 2 uses
  %.2201.i.i.us = phi float [ %.0199242.i.i.us, %bb.j ], [ %.0199242.i.i.us, %bb.m ], [ %.0191.i.i.us, %.preheader.preheader.i.i.us ] ; 2 uses
  %.3.i.i.us = phi float [ %.1243.i.i.us, %bb.j ], [ %.1243.i.i.us, %bb.m ], [ %i.nk, %.preheader.preheader.i.i.us ]
  %i.nm = add nuw nsw i32 %.0196244.i.i.us, 1     ; 2 uses
  %exitcond270.not.i.i.us = icmp eq i32 %i.nm, 37
  br i1 %exitcond270.not.i.i.us, label %make_qkx3_quants.exit.i.us, label %.preheader226.i.i.us, !llvm.loop !11

make_qkx3_quants.exit.i.us:                       ; preds = %.loopexit.i.i.us, %bb.f
  %.4.lcssa.sink.i.i.us = phi float [ %spec.store.select.i.i.us, %bb.f ], [ %.4.i.i.us, %.loopexit.i.i.us ]
  %.1212.i.i.us = phi float [ 0.000000e+00, %bb.f ], [ %.2201.i.i.us, %.loopexit.i.i.us ]
  %i.nn = fneg float %.4.lcssa.sink.i.i.us
  store float %i.nn, ptr %i.jz, align 4, !tbaa !36, !alias.scope !267, !noalias !263
  %i.no = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv179.i.us
  store float %.1212.i.i.us, ptr %i.no, align 4, !tbaa !36, !noalias !263
  %indvars.iv.next180.i.us = add nuw nsw i64 %indvars.iv179.i.us, 1 ; 2 uses
  %exitcond182.not.i.us = icmp eq i64 %indvars.iv.next180.i.us, 8
  br i1 %exitcond182.not.i.us, label %bb.n, label %.preheader140.preheader.i.us, !llvm.loop !255

bb.n:                                             ; preds = %make_qkx3_quants.exit.i.us
  %i.np = call fastcc float @make_qp_quants(i32 noundef 8, i32 noundef 63, ptr noundef %i.h, ptr noundef %i.c, ptr noundef %i.f), !noalias !263
  %i.nq = call fastcc float @make_qp_quants(i32 noundef 8, i32 noundef 63, ptr noundef %i.g, ptr noundef %i.d, ptr noundef %i.f), !noalias !263
  %i.nr = getelementptr inbounds nuw [144 x i8], ptr %.01930.us, i64 %indvars.iv202.i.us ; 11 uses
  %i.ns = getelementptr i8, ptr %i.nr, i64 4      ; 2 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %i.nr, i64 12
  %i.nu = load <8 x i8>, ptr %i.c, align 8, !tbaa !34, !noalias !263 ; 2 uses
  %i.nv = load <8 x i8>, ptr %i.d, align 8, !tbaa !34, !noalias !263 ; 2 uses
  %i.nw = load <4 x i8>, ptr %i.u, align 4, !tbaa !34, !noalias !263
  %i.nx = load <4 x i8>, ptr %i.t, align 4, !tbaa !34, !noalias !263
  %i.ny = and <4 x i8> %i.nw, splat (i8 15)
  %i.nz = shl <4 x i8> %i.nx, splat (i8 4)
  %i.oa = or disjoint <4 x i8> %i.ny, %i.nz
  store <4 x i8> %i.oa, ptr %i.nt, align 1, !tbaa !34, !alias.scope !262
  %i.ob = shufflevector <8 x i8> %i.nu, <8 x i8> %i.nv, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.oc = shl <8 x i8> %i.ob, splat (i8 2)
  %i.od = and <8 x i8> %i.oc, splat (i8 -64)
  %i.oe = shufflevector <8 x i8> %i.nu, <8 x i8> %i.nv, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.of = or <8 x i8> %i.od, %i.oe
  store <8 x i8> %i.of, ptr %i.ns, align 1, !tbaa !34, !alias.scope !262
  %i.og = insertelement <2 x float> poison, float %i.np, i64 0
  %i.oh = insertelement <2 x float> %i.og, float %i.nq, i64 1 ; 2 uses
  %i.oi = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.oh)
  %i.oj = fmul <2 x float> %i.oi, splat (float f0x77800000)
  %i.ok = fmul <2 x float> %i.oj, splat (float f0x08800000)
  %i.ol = bitcast <2 x float> %i.oh to <2 x i32>  ; 2 uses
  %i.om = shl <2 x i32> %i.ol, splat (i32 1)      ; 2 uses
  %i.on = tail call <2 x i32> @llvm.umax.v2i32(<2 x i32> %i.om, <2 x i32> splat (i32 1895825408))
  %i.oo = lshr exact <2 x i32> %i.on, splat (i32 1)
  %i.op = and <2 x i32> %i.oo, splat (i32 2139095040)
  %i.oq = add nuw <2 x i32> %i.op, splat (i32 125829120)
  %i.or = bitcast <2 x i32> %i.oq to <2 x float>
  %i.os = fadd <2 x float> %i.ok, %i.or
  %i.ot = bitcast <2 x float> %i.os to <2 x i32>  ; 2 uses
  %i.ou = lshr <2 x i32> %i.ot, splat (i32 13)
  %i.ov = and <2 x i32> %i.ou, splat (i32 31744)
  %i.ow = and <2 x i32> %i.ot, splat (i32 4095)
  %i.ox = add nuw nsw <2 x i32> %i.ov, %i.ow
  %i.oy = lshr <2 x i32> %i.ol, splat (i32 16)
  %i.oz = and <2 x i32> %i.oy, splat (i32 32768)
  %i.pa = icmp ugt <2 x i32> %i.om, splat (i32 -16777216)
  %i.pb = select <2 x i1> %i.pa, <2 x i32> splat (i32 32256), <2 x i32> %i.ox ; 3 uses
  %i.pc = or <2 x i32> %i.pb, %i.oz               ; 2 uses
  %i.pd = trunc nuw <2 x i32> %i.pc to <2 x i16>
  store <2 x i16> %i.pd, ptr %i.nr, align 4, !tbaa !34, !alias.scope !262
  %i.pe = and <2 x i32> %i.pb, splat (i32 32767)
  %i.pf = or disjoint <2 x i32> %i.pe, splat (i32 1056964608)
  %i.pg = bitcast <2 x i32> %i.pf to <2 x float>
  %i.ph = fadd <2 x float> %i.pg, splat (float -5.000000e-01)
  %i.pi = shl <2 x i32> %i.pb, splat (i32 17)     ; 2 uses
  %i.pj = lshr exact <2 x i32> %i.pi, splat (i32 4)
  %i.pk = or disjoint <2 x i32> %i.pj, splat (i32 1879048192)
  %i.pl = bitcast <2 x i32> %i.pk to <2 x float>
  %i.pm = fmul <2 x float> %i.pl, splat (float 1.925930e-34)
  %i.pn = icmp ult <2 x i32> %i.pi, splat (i32 134217728)
  %i.po = select <2 x i1> %i.pn, <2 x float> %i.ph, <2 x float> %i.pm
  %i.pp = bitcast <2 x float> %i.po to <2 x i32>
  %i.pq = shl nuw <2 x i32> %i.pc, splat (i32 16)
  %i.pr = and <2 x i32> %i.pq, splat (i32 -2147483648)
  %i.ps = or <2 x i32> %i.pr, %i.pp               ; 2 uses
  %bc = bitcast <2 x i32> %i.ps to <2 x float>
  %i.pt = extractelement <2 x float> %bc, i64 0
  %bc64 = bitcast <2 x i32> %i.ps to <2 x float>
  %i.pu = extractelement <2 x float> %bc64, i64 1
  br label %bb.o

bb.o:                                             ; preds = %.loopexit.i.us, %bb.n
  %indvars.iv191.i.us = phi i64 [ 0, %bb.n ], [ %indvars.iv.next192.i.us, %.loopexit.i.us ] ; 4 uses
  %i.pv = icmp samesign ult i64 %indvars.iv191.i.us, 4
  %i.pw = getelementptr inbounds nuw i8, ptr %i.ns, i64 %indvars.iv191.i.us ; 5 uses
  br i1 %i.pv, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.px = getelementptr inbounds nuw i8, ptr %i.pw, i64 4
  %i.py = load i8, ptr %i.px, align 1, !tbaa !34, !alias.scope !271 ; 2 uses
  %i.pz = and i8 %i.py, 15
  %i.qa = getelementptr i8, ptr %i.pw, i64 -4
  %i.qb = load i8, ptr %i.qa, align 1, !tbaa !34, !alias.scope !271
  %i.qc = lshr i8 %i.qb, 2
  %i.qd = and i8 %i.qc, 48
  %i.qe = or disjoint i8 %i.qd, %i.pz
  %i.qf = lshr i8 %i.py, 4
  %i.qg = load i8, ptr %i.pw, align 1, !tbaa !34, !alias.scope !271
  %i.qh = lshr i8 %i.qg, 2
  %i.qi = and i8 %i.qh, 48
  %i.qj = or disjoint i8 %i.qi, %i.qf
  br label %get_scale_min_k4.exit.i.us

bb.q:                                             ; preds = %bb.o
  %i.qk = load i8, ptr %i.pw, align 1, !tbaa !34, !alias.scope !271
  %i.ql = and i8 %i.qk, 63
  %i.qm = getelementptr i8, ptr %i.pw, i64 4
  %i.qn = load i8, ptr %i.qm, align 1, !tbaa !34, !alias.scope !271
  %i.qo = and i8 %i.qn, 63
  br label %get_scale_min_k4.exit.i.us

get_scale_min_k4.exit.i.us:                       ; preds = %bb.q, %bb.p
  %.sink.i.i.us = phi i8 [ %i.ql, %bb.q ], [ %i.qe, %bb.p ]
  %storemerge.i.i.us = phi i8 [ %i.qo, %bb.q ], [ %i.qj, %bb.p ]
  %i.qp = uitofp nneg i8 %.sink.i.i.us to float
  %i.qq = fmul float %i.pt, %i.qp                 ; 2 uses
  %i.qr = fcmp une float %i.qq, 0.000000e+00
  br i1 %i.qr, label %vector.body, label %.loopexit.i.us

vector.body:                                      ; preds = %get_scale_min_k4.exit.i.us
  %broadcast.splatinsert62 = insertelement <4 x float> poison, float %i.qq, i64 0
  %broadcast.splat63 = shufflevector <4 x float> %broadcast.splatinsert62, <4 x float> poison, <4 x i32> zeroinitializer ; 8 uses
  %i.qs = uitofp nneg i8 %storemerge.i.i.us to float
  %i.qt = fmul float %i.pu, %i.qs
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.qt, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 8 uses
  %i.qu = shl nuw nsw i64 %indvars.iv191.i.us, 5  ; 9 uses
  %i.qv = getelementptr inbounds nuw [4 x i8], ptr %.0120161.i.us, i64 %i.qu
  %wide.load = load <4 x float>, ptr %i.qv, align 4, !tbaa !36, !alias.scope !261
  %i.qw = fadd <4 x float> %broadcast.splat, %wide.load
  %i.qx = fdiv <4 x float> %i.qw, %broadcast.splat63
  %i.qy = fadd <4 x float> %i.qx, splat (float f0x4B400000)
  %i.qz = bitcast <4 x float> %i.qy to <4 x i32>
  %i.ra = and <4 x i32> %i.qz, splat (i32 8388607)
  %i.rb = tail call <4 x i32> @llvm.usub.sat.v4i32(<4 x i32> %i.ra, <4 x i32> splat (i32 4194304))
  %i.rc = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.rb, <4 x i32> splat (i32 15))
  %i.rd = trunc nuw nsw <4 x i32> %i.rc to <4 x i8>
  %i.re = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.qu
  store <4 x i8> %i.rd, ptr %i.re, align 16, !tbaa !34, !noalias !263
  %i.rf = or disjoint i64 %i.qu, 4                ; 2 uses
  %i.rg = getelementptr inbounds nuw [4 x i8], ptr %.0120161.i.us, i64 %i.rf
  %wide.load.1 = load <4 x float>, ptr %i.rg, align 4, !tbaa !36, !alias.scope !261
  %i.rh = fadd <4 x float> %broadcast.splat, %wide.load.1
  %i.ri = fdiv <4 x float> %i.rh, %broadcast.splat63
  %i.rj = fadd <4 x float> %i.ri, splat (float f0x4B400000)
  %i.rk = bitcast <4 x float> %i.rj to <4 x i32>
  %i.rl = and <4 x i32> %i.rk, splat (i32 8388607)
  %i.rm = tail call <4 x i32> @llvm.usub.sat.v4i32(<4 x i32> %i.rl, <4 x i32> splat (i32 4194304))
  %i.rn = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.rm, <4 x i32> splat (i32 15))
  %i.ro = trunc nuw nsw <4 x i32> %i.rn to <4 x i8>
  %i.rp = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.rf
  store <4 x i8> %i.ro, ptr %i.rp, align 4, !tbaa !34, !noalias !263
  %i.rq = or disjoint i64 %i.qu, 8                ; 2 uses
  %i.rr = getelementptr inbounds nuw [4 x i8], ptr %.0120161.i.us, i64 %i.rq
  %wide.load.2 = load <4 x float>, ptr %i.rr, align 4, !tbaa !36, !alias.scope !261
  %i.rs = fadd <4 x float> %broadcast.splat, %wide.load.2
  %i.rt = fdiv <4 x float> %i.rs, %broadcast.splat63
  %i.ru = fadd <4 x float> %i.rt, splat (float f0x4B400000)
  %i.rv = bitcast <4 x float> %i.ru to <4 x i32>
  %i.rw = and <4 x i32> %i.rv, splat (i32 8388607)
  %i.rx = tail call <4 x i32> @llvm.usub.sat.v4i32(<4 x i32> %i.rw, <4 x i32> splat (i32 4194304))
  %i.ry = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.rx, <4 x i32> splat (i32 15))
  %i.rz = trunc nuw nsw <4 x i32> %i.ry to <4 x i8>
  %i.sa = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.rq
  store <4 x i8> %i.rz, ptr %i.sa, align 8, !tbaa !34, !noalias !263
  %i.sb = or disjoint i64 %i.qu, 12               ; 2 uses
  %i.sc = getelementptr inbounds nuw [4 x i8], ptr %.0120161.i.us, i64 %i.sb
  %wide.load.3 = load <4 x float>, ptr %i.sc, align 4, !tbaa !36, !alias.scope !261
  %i.sd = fadd <4 x float> %broadcast.splat, %wide.load.3
  %i.se = fdiv <4 x float> %i.sd, %broadcast.splat63
  %i.sf = fadd <4 x float> %i.se, splat (float f0x4B400000)
  %i.sg = bitcast <4 x float> %i.sf to <4 x i32>
  %i.sh = and <4 x i32> %i.sg, splat (i32 8388607)
  %i.si = tail call <4 x i32> @llvm.usub.sat.v4i32(<4 x i32> %i.sh, <4 x i32> splat (i32 4194304))
  %i.sj = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.si, <4 x i32> splat (i32 15))
  %i.sk = trunc nuw nsw <4 x i32> %i.sj to <4 x i8>
  %i.sl = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.sb
  store <4 x i8> %i.sk, ptr %i.sl, align 4, !tbaa !34, !noalias !263
  %i.sm = or disjoint i64 %i.qu, 16               ; 2 uses
  %i.sn = getelementptr inbounds nuw [4 x i8], ptr %.0120161.i.us, i64 %i.sm
  %wide.load.4 = load <4 x float>, ptr %i.sn, align 4, !tbaa !36, !alias.scope !261
  %i.so = fadd <4 x float> %broadcast.splat, %wide.load.4
  %i.sp = fdiv <4 x float> %i.so, %broadcast.splat63
  %i.sq = fadd <4 x float> %i.sp, splat (float f0x4B400000)
  %i.sr = bitcast <4 x float> %i.sq to <4 x i32>
  %i.ss = and <4 x i32> %i.sr, splat (i32 8388607)
  %i.st = tail call <4 x i32> @llvm.usub.sat.v4i32(<4 x i32> %i.ss, <4 x i32> splat (i32 4194304))
  %i.su = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.st, <4 x i32> splat (i32 15))
  %i.sv = trunc nuw nsw <4 x i32> %i.su to <4 x i8>
  %i.sw = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.sm
  store <4 x i8> %i.sv, ptr %i.sw, align 16, !tbaa !34, !noalias !263
  %i.sx = or disjoint i64 %i.qu, 20               ; 2 uses
  %i.sy = getelementptr inbounds nuw [4 x i8], ptr %.0120161.i.us, i64 %i.sx
  %wide.load.5 = load <4 x float>, ptr %i.sy, align 4, !tbaa !36, !alias.scope !261
end_hunk_4
begin_hunk_5_@quantize_row_q5_K_ref:bb.a

.preheader165:                                    ; preds = %.preheader165.preheader, %bb.ad
  %indvars.iv216 = phi i64 [ 0, %.preheader165.preheader ], [ %indvars.iv.next217, %bb.ad ] ; 2 uses
  %.0138187 = phi ptr [ %0, %.preheader165.preheader ], [ %i.td, %bb.ad ] ; 41 uses
  br label %.preheader164

._crit_edge:                                      ; preds = %bb.ad, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret void

.preheader164:                                    ; preds = %.preheader165, %make_qkx2_quants.exit
  %indvars.iv = phi i64 [ 0, %.preheader165 ], [ %indvars.iv.next, %make_qkx2_quants.exit ] ; 4 uses
  %i.o = phi <2 x float> [ zeroinitializer, %.preheader165 ], [ %i.ju, %make_qkx2_quants.exit ] ; 2 uses
  %i.p = shl nuw nsw i64 %indvars.iv, 5           ; 33 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %.0138187, i64 %i.p ; 8 uses
  %i.r = load float, ptr %i.q, align 4, !tbaa !36 ; 2 uses
  %i.s = tail call float @llvm.fmuladd.f32(float %i.r, float %i.r, float 0.000000e+00)
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %.0138187, i64 %i.p
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.v = load float, ptr %i.u, align 4, !tbaa !36 ; 2 uses
  %i.w = tail call float @llvm.fmuladd.f32(float %i.v, float %i.v, float %i.s)
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %.0138187, i64 %i.p
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load float, ptr %i.y, align 4, !tbaa !36 ; 2 uses
  %i.aa = tail call float @llvm.fmuladd.f32(float %i.z, float %i.z, float %i.w)
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %.0138187, i64 %i.p
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 12
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !36 ; 2 uses
  %i.ae = tail call float @llvm.fmuladd.f32(float %i.ad, float %i.ad, float %i.aa)
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %.0138187, i64 %i.p
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16 ; 2 uses
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !36 ; 2 uses
  %i.ai = tail call float @llvm.fmuladd.f32(float %i.ah, float %i.ah, float %i.ae)
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %.0138187, i64 %i.p
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 20
  %i.al = load float, ptr %i.ak, align 4, !tbaa !36 ; 2 uses
  %i.am = tail call float @llvm.fmuladd.f32(float %i.al, float %i.al, float %i.ai)
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %.0138187, i64 %i.p
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !36 ; 2 uses
  %i.aq = tail call float @llvm.fmuladd.f32(float %i.ap, float %i.ap, float %i.am)
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %.0138187, i64 %i.p
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 28
  %i.at = load float, ptr %i.as, align 4, !tbaa !36 ; 2 uses
  %i.au = tail call float @llvm.fmuladd.f32(float %i.at, float %i.at, float %i.aq)
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %.0138187, i64 %i.p
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 32 ; 2 uses
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !36 ; 2 uses
  %i.ay = tail call float @llvm.fmuladd.f32(float %i.ax, float %i.ax, float %i.au)
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %.0138187, i64 %i.p
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 36
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !36 ; 2 uses
  %i.bc = tail call float @llvm.fmuladd.f32(float %i.bb, float %i.bb, float %i.ay)
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %.0138187, i64 %i.p
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 40
  %i.bf = load float, ptr %i.be, align 4, !tbaa !36 ; 2 uses
  %i.bg = tail call float @llvm.fmuladd.f32(float %i.bf, float %i.bf, float %i.bc)
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %.0138187, i64 %i.p
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 44
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !36 ; 2 uses
  %i.bk = tail call float @llvm.fmuladd.f32(float %i.bj, float %i.bj, float %i.bg)
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %.0138187, i64 %i.p
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 48 ; 2 uses
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !36 ; 2 uses
  %i.bo = tail call float @llvm.fmuladd.f32(float %i.bn, float %i.bn, float %i.bk)
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %.0138187, i64 %i.p
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 52
  %i.br = load float, ptr %i.bq, align 4, !tbaa !36 ; 2 uses
  %i.bs = tail call float @llvm.fmuladd.f32(float %i.br, float %i.br, float %i.bo)
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %.0138187, i64 %i.p
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 56
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !36 ; 2 uses
  %i.bw = tail call float @llvm.fmuladd.f32(float %i.bv, float %i.bv, float %i.bs)
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %.0138187, i64 %i.p
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 60
  %i.bz = load float, ptr %i.by, align 4, !tbaa !36 ; 2 uses
  %i.ca = tail call float @llvm.fmuladd.f32(float %i.bz, float %i.bz, float %i.bw)
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %.0138187, i64 %i.p
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 64 ; 2 uses
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !36 ; 2 uses
  %i.ce = tail call float @llvm.fmuladd.f32(float %i.cd, float %i.cd, float %i.ca)
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %.0138187, i64 %i.p
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 68
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !36 ; 2 uses
  %i.ci = tail call float @llvm.fmuladd.f32(float %i.ch, float %i.ch, float %i.ce)
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %.0138187, i64 %i.p
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 72
  %i.cl = load float, ptr %i.ck, align 4, !tbaa !36 ; 2 uses
  %i.cm = tail call float @llvm.fmuladd.f32(float %i.cl, float %i.cl, float %i.ci)
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %.0138187, i64 %i.p
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 76
  %i.cp = load float, ptr %i.co, align 4, !tbaa !36 ; 2 uses
  %i.cq = tail call float @llvm.fmuladd.f32(float %i.cp, float %i.cp, float %i.cm)
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %.0138187, i64 %i.p
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 80 ; 2 uses
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !36 ; 2 uses
  %i.cu = tail call float @llvm.fmuladd.f32(float %i.ct, float %i.ct, float %i.cq)
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %.0138187, i64 %i.p
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 84
  %i.cx = load float, ptr %i.cw, align 4, !tbaa !36 ; 2 uses
  %i.cy = tail call float @llvm.fmuladd.f32(float %i.cx, float %i.cx, float %i.cu)
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %.0138187, i64 %i.p
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 88
  %i.db = load float, ptr %i.da, align 4, !tbaa !36 ; 2 uses
  %i.dc = tail call float @llvm.fmuladd.f32(float %i.db, float %i.db, float %i.cy)
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %.0138187, i64 %i.p
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 92
  %i.df = load float, ptr %i.de, align 4, !tbaa !36 ; 2 uses
  %i.dg = tail call float @llvm.fmuladd.f32(float %i.df, float %i.df, float %i.dc)
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %.0138187, i64 %i.p
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 96 ; 2 uses
  %i.dj = load float, ptr %i.di, align 4, !tbaa !36 ; 2 uses
  %i.dk = tail call float @llvm.fmuladd.f32(float %i.dj, float %i.dj, float %i.dg)
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %.0138187, i64 %i.p
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 100
  %i.dn = load float, ptr %i.dm, align 4, !tbaa !36 ; 2 uses
  %i.do = tail call float @llvm.fmuladd.f32(float %i.dn, float %i.dn, float %i.dk)
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %.0138187, i64 %i.p
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 104
  %i.dr = load float, ptr %i.dq, align 4, !tbaa !36 ; 2 uses
  %i.ds = tail call float @llvm.fmuladd.f32(float %i.dr, float %i.dr, float %i.do)
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %.0138187, i64 %i.p
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 108
  %i.dv = load float, ptr %i.du, align 4, !tbaa !36 ; 2 uses
  %i.dw = tail call float @llvm.fmuladd.f32(float %i.dv, float %i.dv, float %i.ds)
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %.0138187, i64 %i.p
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 112 ; 2 uses
  %i.dz = load float, ptr %i.dy, align 4, !tbaa !36 ; 2 uses
  %i.ea = tail call float @llvm.fmuladd.f32(float %i.dz, float %i.dz, float %i.dw)
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %.0138187, i64 %i.p
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 116
  %i.ed = load float, ptr %i.ec, align 4, !tbaa !36 ; 2 uses
  %i.ee = tail call float @llvm.fmuladd.f32(float %i.ed, float %i.ed, float %i.ea)
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %.0138187, i64 %i.p
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 120
  %i.eh = load float, ptr %i.eg, align 4, !tbaa !36 ; 2 uses
  %i.ei = tail call float @llvm.fmuladd.f32(float %i.eh, float %i.eh, float %i.ee)
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %.0138187, i64 %i.p
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 124
  %i.el = load float, ptr %i.ek, align 4, !tbaa !36 ; 2 uses
  %i.em = tail call float @llvm.fmuladd.f32(float %i.el, float %i.el, float %i.ei)
  %i.en = fmul float %i.em, 3.125000e-02
  %i.eo = tail call float @sqrtf(float noundef %i.en) #14
  %i.ep = load <4 x float>, ptr %i.q, align 4, !tbaa !36
  %i.eq = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.ep)
  %i.er = insertelement <4 x float> poison, float %i.eo, i64 0
  %i.es = shufflevector <4 x float> %i.er, <4 x float> poison, <4 x i32> zeroinitializer ; 8 uses
  %i.et = fadd <4 x float> %i.es, %i.eq           ; 2 uses
  store <4 x float> %i.et, ptr %i.d, align 16, !tbaa !36
  %i.eu = load <4 x float>, ptr %i.ag, align 4, !tbaa !36
  %i.ev = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.eu)
  %i.ew = fadd <4 x float> %i.es, %i.ev
  store <4 x float> %i.ew, ptr %i.h, align 16, !tbaa !36
  %i.ex = load <4 x float>, ptr %i.aw, align 4, !tbaa !36
  %i.ey = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.ex)
  %i.ez = fadd <4 x float> %i.es, %i.ey
  store <4 x float> %i.ez, ptr %i.i, align 16, !tbaa !36
  %i.fa = load <4 x float>, ptr %i.bm, align 4, !tbaa !36
  %i.fb = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.fa)
  %i.fc = fadd <4 x float> %i.es, %i.fb
  store <4 x float> %i.fc, ptr %i.j, align 16, !tbaa !36
  %i.fd = load <4 x float>, ptr %i.cc, align 4, !tbaa !36
  %i.fe = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.fd)
  %i.ff = fadd <4 x float> %i.es, %i.fe
  store <4 x float> %i.ff, ptr %i.k, align 16, !tbaa !36
  %i.fg = load <4 x float>, ptr %i.cs, align 4, !tbaa !36
  %i.fh = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.fg)
  %i.fi = fadd <4 x float> %i.es, %i.fh
  store <4 x float> %i.fi, ptr %i.l, align 16, !tbaa !36
  %i.fj = load <4 x float>, ptr %i.di, align 4, !tbaa !36
  %i.fk = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.fj)
  %i.fl = fadd <4 x float> %i.es, %i.fk
  store <4 x float> %i.fl, ptr %i.m, align 16, !tbaa !36
  %i.fm = load <4 x float>, ptr %i.dy, align 4, !tbaa !36
  %i.fn = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.fm)
  %i.fo = fadd <4 x float> %i.es, %i.fn
  store <4 x float> %i.fo, ptr %i.n, align 16, !tbaa !36
  tail call void @llvm.experimental.noalias.scope.decl(metadata !284)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !285)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !286)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !287)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !288)
  %i.fp = load float, ptr %i.q, align 4, !tbaa !36, !alias.scope !284 ; 3 uses
  %i.fq = extractelement <4 x float> %i.et, i64 0 ; 2 uses
  %i.fr = fmul float %i.fp, %i.fq
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %i.fs = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.p ; 3 uses
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv
  %i.fu = fcmp ogt float %.1174.i, 0.000000e+00
  %spec.store.select.i = select i1 %i.fu, float 0.000000e+00, float %.1174.i ; 6 uses
  %i.fv = fcmp oeq float %.1181.i, %spec.store.select.i
  br i1 %i.fv, label %.preheader.preheader.i, label %bb.d

.preheader.preheader.i:                           ; preds = %bb.b
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.fs, i8 0, i64 range(i64 0, 33) 32, i1 false), !tbaa !34, !alias.scope !286
  br label %make_qkx2_quants.exit

bb.c:                                             ; preds = %bb.c, %.preheader164
  %indvars.iv.i = phi i64 [ 1, %.preheader164 ], [ %indvars.iv.next.i, %bb.c ] ; 3 uses
  %.0173208.i = phi float [ %i.fp, %.preheader164 ], [ %.1174.i, %bb.c ] ; 2 uses
  %.0180207.i = phi float [ %i.fp, %.preheader164 ], [ %.1181.i, %bb.c ] ; 2 uses
  %.0191206.i = phi float [ %i.fq, %.preheader164 ], [ %i.gc, %bb.c ]
  %.0193204.i = phi float [ %i.fr, %.preheader164 ], [ %i.gd, %bb.c ]
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.i
  %i.fx = load float, ptr %i.fw, align 4, !tbaa !36, !alias.scope !284 ; 5 uses
  %i.fy = fcmp olt float %i.fx, %.0173208.i
  %.1174.i = select i1 %i.fy, float %i.fx, float %.0173208.i ; 3 uses
  %i.fz = fcmp ogt float %i.fx, %.0180207.i
  %.1181.i = select i1 %i.fz, float %i.fx, float %.0180207.i ; 4 uses
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.i
  %i.gb = load float, ptr %i.ga, align 4, !tbaa !36, !alias.scope !285 ; 2 uses
  %i.gc = fadd float %.0191206.i, %i.gb           ; 3 uses
  %i.gd = tail call float @llvm.fmuladd.f32(float %i.gb, float %i.fx, float %.0193204.i) ; 3 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 32
  br i1 %exitcond.not.i, label %bb.b, label %bb.c, !llvm.loop !15

bb.d:                                             ; preds = %bb.b
  %i.ge = fsub float %.1181.i, %spec.store.select.i
  %i.gf = fdiv float 3.100000e+01, %i.ge          ; 2 uses
  %i.gg = fdiv float 1.000000e+00, %i.gf          ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %indvars.iv230.i = phi i64 [ 0, %bb.d ], [ %indvars.iv.next231.i, %bb.e ] ; 4 uses
  %.0183209.i = phi float [ 0.000000e+00, %bb.d ], [ %i.gy, %bb.e ]
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv230.i
  %i.gi = load float, ptr %i.gh, align 4, !tbaa !36, !alias.scope !284 ; 2 uses
  %i.gj = fsub float %i.gi, %spec.store.select.i
  %i.gk = fmul float %i.gf, %i.gj
  %i.gl = fadd float %i.gk, f0x4B400000
  %i.gm = bitcast float %i.gl to i32
  %i.gn = and i32 %i.gm, 8388607
  %i.go = tail call i32 @llvm.umax.i32(i32 %i.gn, i32 4194304)
  %i.gp = tail call i32 @llvm.umin.i32(i32 %i.go, i32 4194335)
  %i.gq = trunc i32 %i.gp to i8                   ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.fs, i64 %indvars.iv230.i
  store i8 %i.gq, ptr %i.gr, align 1, !tbaa !34, !alias.scope !286
  %i.gs = uitofp nneg i8 %i.gq to float
  %i.gt = tail call float @llvm.fmuladd.f32(float %i.gg, float %i.gs, float %spec.store.select.i)
  %i.gu = fsub float %i.gt, %i.gi                 ; 2 uses
  %i.gv = fmul float %i.gu, %i.gu
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv230.i
  %i.gx = load float, ptr %i.gw, align 4, !tbaa !36, !alias.scope !285
  %i.gy = tail call float @llvm.fmuladd.f32(float %i.gx, float %i.gv, float %.0183209.i) ; 2 uses
  %indvars.iv.next231.i = add nuw nsw i64 %indvars.iv230.i, 1 ; 2 uses
  %exitcond234.not.i = icmp eq i64 %indvars.iv.next231.i, 32
  br i1 %exitcond234.not.i, label %.preheader203.i, label %bb.e, !llvm.loop !6

.preheader203.i:                                  ; preds = %bb.e, %.loopexit.i
  %.2221.i = phi float [ %.4.i, %.loopexit.i ], [ %spec.store.select.i, %bb.e ] ; 4 uses
  %.0179220.i = phi i32 [ %i.jo, %.loopexit.i ], [ 0, %bb.e ] ; 3 uses
  %.1184219.i = phi float [ %.3186.i, %.loopexit.i ], [ %i.gy, %bb.e ] ; 3 uses
  %.0187218.i = phi float [ %.2189.i, %.loopexit.i ], [ %i.gg, %bb.e ] ; 2 uses
  %i.gz = uitofp nneg i32 %.0179220.i to float
  %i.ha = tail call nnan float @llvm.fmuladd.f32(float %i.gz, float 1.000000e-01, float -5.000000e-01)
  %i.hb = fadd nnan float %i.ha, 3.100000e+01
  %i.hc = fsub float %.1181.i, %.2221.i
  %i.hd = fdiv float %i.hb, %i.hc
  br label %bb.g

bb.f:                                             ; preds = %bb.g
  %i.he = extractelement <2 x float> %i.ig, i64 1 ; 3 uses
  %i.hf = fneg float %i.he                        ; 2 uses
  %i.hg = fmul float %i.he, %i.hf
  %i.hh = extractelement <2 x float> %i.ig, i64 0 ; 3 uses
  %i.hi = tail call float @llvm.fmuladd.f32(float %i.gc, float %i.hh, float %i.hg) ; 3 uses
  %i.hj = fcmp ogt float %i.hi, 0.000000e+00
  br i1 %i.hj, label %bb.h, label %.loopexit.i

bb.g:                                             ; preds = %bb.g, %.preheader203.i
  %indvars.iv235.i = phi i64 [ 0, %.preheader203.i ], [ %indvars.iv.next236.i, %bb.g ] ; 4 uses
  %.0176213.i = phi float [ 0.000000e+00, %.preheader203.i ], [ %i.ih, %bb.g ]
  %i.hk = phi <2 x float> [ zeroinitializer, %.preheader203.i ], [ %i.ig, %bb.g ]
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv235.i
  %i.hm = load float, ptr %i.hl, align 4, !tbaa !36, !alias.scope !284 ; 2 uses
  %i.hn = fsub float %i.hm, %.2221.i
  %i.ho = fmul float %i.hd, %i.hn
  %i.hp = fadd float %i.ho, f0x4B400000
  %i.hq = bitcast float %i.hp to i32
  %i.hr = and i32 %i.hq, 8388607                  ; 2 uses
  %i.hs = icmp samesign ult i32 %i.hr, 4194304
  %i.ht = tail call i32 @llvm.umin.i32(i32 %i.hr, i32 4194335)
  %i.hu = add nsw i32 %i.ht, -4194304
  %i.hv = select i1 %i.hs, i32 0, i32 %i.hu       ; 2 uses
  %i.hw = trunc i32 %i.hv to i8
  %i.hx = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv235.i
  store i8 %i.hw, ptr %i.hx, align 1, !tbaa !34, !alias.scope !288
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv235.i
  %i.hz = load float, ptr %i.hy, align 4, !tbaa !36, !alias.scope !285 ; 2 uses
  %i.ia = uitofp nneg i32 %i.hv to float          ; 2 uses
  %i.ib = fmul float %i.hz, %i.ia                 ; 2 uses
  %i.ic = insertelement <2 x float> poison, float %i.ib, i64 0
  %i.id = insertelement <2 x float> %i.ic, float %i.hz, i64 1
  %i.ie = insertelement <2 x float> poison, float %i.ia, i64 0
  %i.if = shufflevector <2 x float> %i.ie, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ig = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.id, <2 x float> %i.if, <2 x float> %i.hk) ; 3 uses
  %i.ih = tail call float @llvm.fmuladd.f32(float %i.ib, float %i.hm, float %.0176213.i) ; 4 uses
  %indvars.iv.next236.i = add nuw nsw i64 %indvars.iv235.i, 1 ; 2 uses
  %exitcond239.not.i = icmp eq i64 %indvars.iv.next236.i, 32
  br i1 %exitcond239.not.i, label %bb.f, label %bb.g, !llvm.loop !7

bb.h:                                             ; preds = %bb.f
  %i.ii = fmul float %i.gd, %i.hf
  %i.ij = tail call float @llvm.fmuladd.f32(float %i.gc, float %i.ih, float %i.ii)
  %i.ik = fdiv float %i.ij, %i.hi
  %i.il = fneg float %i.ih
  %i.im = fmul float %i.he, %i.il
  %i.in = tail call float @llvm.fmuladd.f32(float %i.hh, float %i.gd, float %i.im)
  %i.io = fdiv float %i.in, %i.hi                 ; 2 uses
  %i.ip = fcmp ogt float %i.io, 0.000000e+00      ; 2 uses
  %i.iq = fdiv float %i.ih, %i.hh
  %.0172.i = select i1 %i.ip, float %i.iq, float %i.ik ; 3 uses
  %.0171.i = select i1 %i.ip, float 0.000000e+00, float %i.io ; 3 uses
  br label %bb.j

bb.i:                                             ; preds = %bb.j
  %i.ir = fcmp olt float %i.jn, %.1184219.i
  br i1 %i.ir, label %.preheader202.preheader.i, label %.loopexit.i

.preheader202.preheader.i:                        ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.fs, ptr noundef nonnull align 16 dereferenceable(32) %i.e, i64 range(i64 0, 33) 32, i1 false), !tbaa !34, !alias.scope !289
  br label %.loopexit.i

bb.j:                                             ; preds = %bb.j, %bb.h
  %indvars.iv240.i = phi i64 [ 0, %bb.h ], [ %indvars.iv.next241.i.1, %bb.j ] ; 5 uses
  %.0170215.i = phi float [ 0.000000e+00, %bb.h ], [ %i.jn, %bb.j ]
  %i.is = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv240.i
  %i.it = load i8, ptr %i.is, align 2, !tbaa !34, !alias.scope !288
  %i.iu = uitofp i8 %i.it to float
  %i.iv = tail call float @llvm.fmuladd.f32(float %.0172.i, float %i.iu, float %.0171.i)
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv240.i
  %i.ix = load float, ptr %i.iw, align 4, !tbaa !36, !alias.scope !284
  %i.iy = fsub float %i.iv, %i.ix                 ; 2 uses
  %i.iz = fmul float %i.iy, %i.iy
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv240.i
  %i.jb = load float, ptr %i.ja, align 8, !tbaa !36, !alias.scope !285
  %i.jc = tail call float @llvm.fmuladd.f32(float %i.jb, float %i.iz, float %.0170215.i)
  %indvars.iv.next241.i = or disjoint i64 %indvars.iv240.i, 1 ; 3 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv.next241.i
  %i.je = load i8, ptr %i.jd, align 1, !tbaa !34, !alias.scope !288
  %i.jf = uitofp i8 %i.je to float
  %i.jg = tail call float @llvm.fmuladd.f32(float %.0172.i, float %i.jf, float %.0171.i)
  %i.jh = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.next241.i
  %i.ji = load float, ptr %i.jh, align 4, !tbaa !36, !alias.scope !284
  %i.jj = fsub float %i.jg, %i.ji                 ; 2 uses
  %i.jk = fmul float %i.jj, %i.jj
  %i.jl = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.next241.i
  %i.jm = load float, ptr %i.jl, align 4, !tbaa !36, !alias.scope !285
  %i.jn = tail call float @llvm.fmuladd.f32(float %i.jm, float %i.jk, float %i.jc) ; 3 uses
  %indvars.iv.next241.i.1 = add nuw nsw i64 %indvars.iv240.i, 2 ; 2 uses
  %exitcond244.not.i.1 = icmp eq i64 %indvars.iv.next241.i.1, 32
  br i1 %exitcond244.not.i.1, label %bb.i, label %bb.j, !llvm.loop !16

.loopexit.i:                                      ; preds = %.preheader202.preheader.i, %bb.i, %bb.f
  %.2189.i = phi float [ %.0187218.i, %bb.f ], [ %.0187218.i, %bb.i ], [ %.0172.i, %.preheader202.preheader.i ] ; 2 uses
  %.3186.i = phi float [ %.1184219.i, %bb.f ], [ %.1184219.i, %bb.i ], [ %i.jn, %.preheader202.preheader.i ]
  %.4.i = phi float [ %.2221.i, %bb.f ], [ %.2221.i, %bb.i ], [ %.0171.i, %.preheader202.preheader.i ] ; 2 uses
  %i.jo = add nuw nsw i32 %.0179220.i, 1
  %exitcond248.not.i = icmp eq i32 %.0179220.i, 15
  br i1 %exitcond248.not.i, label %make_qkx2_quants.exit, label %.preheader203.i, !llvm.loop !8

make_qkx2_quants.exit:                            ; preds = %.loopexit.i, %.preheader.preheader.i
  %.4.lcssa.sink.i = phi float [ %spec.store.select.i, %.preheader.preheader.i ], [ %.4.i, %.loopexit.i ]
  %.1.i = phi float [ 0.000000e+00, %.preheader.preheader.i ], [ %.2189.i, %.loopexit.i ] ; 2 uses
  %i.jp = fneg float %.4.lcssa.sink.i             ; 2 uses
  store float %i.jp, ptr %i.ft, align 4, !tbaa !36, !alias.scope !287
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  store float %.1.i, ptr %i.jq, align 4, !tbaa !36
  %i.jr = insertelement <2 x float> poison, float %.1.i, i64 0
  %i.js = insertelement <2 x float> %i.jr, float %i.jp, i64 1 ; 2 uses
  %i.jt = fcmp ogt <2 x float> %i.js, %i.o
  %i.ju = select <2 x i1> %i.jt, <2 x float> %i.js, <2 x float> %i.o ; 4 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 8
  br i1 %exitcond.not, label %bb.k, label %.preheader164, !llvm.loop !278

bb.k:                                             ; preds = %make_qkx2_quants.exit
  %i.jv = fcmp ogt <2 x float> %i.ju, zeroinitializer
  %i.jw = fdiv <2 x float> splat (float 6.300000e+01), %i.ju
  %i.jx = getelementptr inbounds nuw [176 x i8], ptr %1, i64 %indvars.iv216 ; 9 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 4
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jx, i64 12
  %i.ka = getelementptr i8, ptr %i.jx, i64 4
  %i.kb = select <2 x i1> %i.jv, <2 x float> %i.jw, <2 x float> zeroinitializer
  %i.kc = shufflevector <2 x float> %i.kb, <2 x float> poison, <8 x i32> <i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.kd = load <8 x float>, ptr %i.b, align 16, !tbaa !36 ; 2 uses
  %i.ke = load <8 x float>, ptr %i.c, align 16, !tbaa !36 ; 2 uses
  %i.kf = shufflevector <8 x float> %i.ke, <8 x float> %i.kd, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.kg = fmul <8 x float> %i.kc, %i.kf
  %i.kh = fadd <8 x float> %i.kg, splat (float f0x4B400000)
  %i.ki = bitcast <8 x float> %i.kh to <8 x i32>
  %i.kj = trunc <8 x i32> %i.ki to <8 x i8>
  %i.kk = tail call <8 x i8> @llvm.umin.v8i8(<8 x i8> %i.kj, <8 x i8> splat (i8 63))
  %i.kl = shufflevector <8 x float> %i.ke, <8 x float> %i.kd, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.km = fmul <8 x float> %i.kc, %i.kl
  %i.kn = fadd <8 x float> %i.km, splat (float f0x4B400000)
  %i.ko = bitcast <8 x float> %i.kn to <8 x i32>
  %i.kp = trunc <8 x i32> %i.ko to <8 x i8>
  %i.kq = tail call <8 x i8> @llvm.umin.v8i8(<8 x i8> %i.kp, <8 x i8> splat (i8 63)) ; 3 uses
  %i.kr = shufflevector <8 x i8> %i.kq, <8 x i8> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ks = and <4 x i8> %i.kr, splat (i8 15)
  %i.kt = shufflevector <8 x i8> %i.kq, <8 x i8> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.ku = shl <4 x i8> %i.kt, splat (i8 4)
  %i.kv = or disjoint <4 x i8> %i.ku, %i.ks
  store <4 x i8> %i.kv, ptr %i.jz, align 1, !tbaa !34
  %i.kw = shl nuw <8 x i8> %i.kq, splat (i8 2)
  %i.kx = and <8 x i8> %i.kw, splat (i8 -64)
  %i.ky = or disjoint <8 x i8> %i.kx, %i.kk
  store <8 x i8> %i.ky, ptr %i.ka, align 1, !tbaa !34
  %i.kz = fdiv <2 x float> %i.ju, splat (float 6.300000e+01) ; 2 uses
  %i.la = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.kz)
  %i.lb = fmul <2 x float> %i.la, splat (float f0x77800000)
  %i.lc = fmul <2 x float> %i.lb, splat (float f0x08800000)
  %i.ld = bitcast <2 x float> %i.kz to <2 x i32>  ; 2 uses
  %i.le = shl <2 x i32> %i.ld, splat (i32 1)      ; 2 uses
  %i.lf = tail call <2 x i32> @llvm.umax.v2i32(<2 x i32> %i.le, <2 x i32> splat (i32 1895825408))
  %i.lg = lshr exact <2 x i32> %i.lf, splat (i32 1)
  %i.lh = and <2 x i32> %i.lg, splat (i32 2139095040)
  %i.li = add nuw <2 x i32> %i.lh, splat (i32 125829120)
  %i.lj = bitcast <2 x i32> %i.li to <2 x float>
  %i.lk = fadd <2 x float> %i.lc, %i.lj
  %i.ll = bitcast <2 x float> %i.lk to <2 x i32>  ; 2 uses
  %i.lm = lshr <2 x i32> %i.ll, splat (i32 13)
  %i.ln = and <2 x i32> %i.lm, splat (i32 31744)
  %i.lo = and <2 x i32> %i.ll, splat (i32 4095)
  %i.lp = add nuw nsw <2 x i32> %i.ln, %i.lo
  %i.lq = lshr <2 x i32> %i.ld, splat (i32 16)
  %i.lr = and <2 x i32> %i.lq, splat (i32 32768)
  %i.ls = icmp ugt <2 x i32> %i.le, splat (i32 -16777216)
  %i.lt = select <2 x i1> %i.ls, <2 x i32> splat (i32 32256), <2 x i32> %i.lp ; 3 uses
  %i.lu = or <2 x i32> %i.lt, %i.lr               ; 2 uses
  %i.lv = trunc nuw <2 x i32> %i.lu to <2 x i16>
  store <2 x i16> %i.lv, ptr %i.jx, align 4, !tbaa !34
  %i.lw = and <2 x i32> %i.lt, splat (i32 32767)
  %i.lx = or disjoint <2 x i32> %i.lw, splat (i32 1056964608)
  %i.ly = bitcast <2 x i32> %i.lx to <2 x float>
  %i.lz = fadd <2 x float> %i.ly, splat (float -5.000000e-01)
  %i.ma = shl <2 x i32> %i.lt, splat (i32 17)     ; 2 uses
  %i.mb = lshr exact <2 x i32> %i.ma, splat (i32 4)
  %i.mc = or disjoint <2 x i32> %i.mb, splat (i32 1879048192)
  %i.md = bitcast <2 x i32> %i.mc to <2 x float>
  %i.me = fmul <2 x float> %i.md, splat (float 1.925930e-34)
  %i.mf = icmp ult <2 x i32> %i.ma, splat (i32 134217728)
  %i.mg = select <2 x i1> %i.mf, <2 x float> %i.lz, <2 x float> %i.me
  %i.mh = bitcast <2 x float> %i.mg to <2 x i32>
  %i.mi = shl nuw <2 x i32> %i.lu, splat (i32 16)
  %i.mj = and <2 x i32> %i.mi, splat (i32 -2147483648)
  %i.mk = or <2 x i32> %i.mj, %i.mh               ; 2 uses
  %bc = bitcast <2 x i32> %i.mk to <2 x float>
  %i.ml = extractelement <2 x float> %bc, i64 0
  %bc254 = bitcast <2 x i32> %i.mk to <2 x float>
  %i.mm = extractelement <2 x float> %bc254, i64 1
  br label %bb.l

.preheader:                                       ; preds = %.loopexit
  %i.mn = getelementptr inbounds nuw i8, ptr %i.jx, i64 16 ; 9 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %i.jx, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.mn, i8 0, i64 32, i1 false)
  br label %bb.ae

bb.l:                                             ; preds = %bb.k, %.loopexit
  %indvars.iv206 = phi i64 [ 0, %bb.k ], [ %indvars.iv.next207, %.loopexit ] ; 4 uses
  %i.mp = icmp samesign ult i64 %indvars.iv206, 4
  %i.mq = getelementptr inbounds nuw i8, ptr %i.jy, i64 %indvars.iv206 ; 5 uses
  br i1 %i.mp, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.mr = load i8, ptr %i.mq, align 1, !tbaa !34, !alias.scope !290
  %i.ms = and i8 %i.mr, 63
  %i.mt = getelementptr i8, ptr %i.mq, i64 4
  %i.mu = load i8, ptr %i.mt, align 1, !tbaa !34, !alias.scope !290
  %i.mv = and i8 %i.mu, 63
  br label %get_scale_min_k4.exit

bb.n:                                             ; preds = %bb.l
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mq, i64 4
  %i.mx = load i8, ptr %i.mw, align 1, !tbaa !34, !alias.scope !290 ; 2 uses
  %i.my = and i8 %i.mx, 15
  %i.mz = getelementptr i8, ptr %i.mq, i64 -4
  %i.na = load i8, ptr %i.mz, align 1, !tbaa !34, !alias.scope !290
  %i.nb = lshr i8 %i.na, 2
  %i.nc = and i8 %i.nb, 48
  %i.nd = or disjoint i8 %i.nc, %i.my
  %i.ne = lshr i8 %i.mx, 4
  %i.nf = load i8, ptr %i.mq, align 1, !tbaa !34, !alias.scope !290
  %i.ng = lshr i8 %i.nf, 2
  %i.nh = and i8 %i.ng, 48
  %i.ni = or disjoint i8 %i.nh, %i.ne
  br label %get_scale_min_k4.exit

get_scale_min_k4.exit:                            ; preds = %bb.m, %bb.n
  %.sink.i = phi i8 [ %i.ms, %bb.m ], [ %i.nd, %bb.n ]
  %storemerge.i = phi i8 [ %i.mv, %bb.m ], [ %i.ni, %bb.n ]
  %i.nj = uitofp nneg i8 %.sink.i to float
  %i.nk = fmul float %i.ml, %i.nj                 ; 2 uses
  %i.nl = fcmp une float %i.nk, 0.000000e+00
  br i1 %i.nl, label %vector.body, label %.loopexit

vector.body:                                      ; preds = %get_scale_min_k4.exit
  %broadcast.splatinsert252 = insertelement <4 x float> poison, float %i.nk, i64 0
  %broadcast.splat253 = shufflevector <4 x float> %broadcast.splatinsert252, <4 x float> poison, <4 x i32> zeroinitializer ; 8 uses
  %i.nm = uitofp nneg i8 %storemerge.i to float
  %i.nn = fmul float %i.mm, %i.nm
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.nn, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 8 uses
  %i.no = shl nuw nsw i64 %indvars.iv206, 5       ; 9 uses
  %i.np = getelementptr inbounds nuw [4 x i8], ptr %.0138187, i64 %i.no
  %wide.load = load <4 x float>, ptr %i.np, align 4, !tbaa !36
  %i.nq = fadd <4 x float> %broadcast.splat, %wide.load
  %i.nr = fdiv <4 x float> %i.nq, %broadcast.splat253
  %i.ns = fadd <4 x float> %i.nr, splat (float f0x4B400000)
  %i.nt = bitcast <4 x float> %i.ns to <4 x i32>
  %i.nu = and <4 x i32> %i.nt, splat (i32 8388607)
  %i.nv = tail call <4 x i32> @llvm.usub.sat.v4i32(<4 x i32> %i.nu, <4 x i32> splat (i32 4194304))
  %i.nw = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.nv, <4 x i32> splat (i32 31))
  %i.nx = trunc nuw nsw <4 x i32> %i.nw to <4 x i8>
  %i.ny = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.no
  store <4 x i8> %i.nx, ptr %i.ny, align 16, !tbaa !34
  %i.nz = or disjoint i64 %i.no, 4                ; 2 uses
  %i.oa = getelementptr inbounds nuw [4 x i8], ptr %.0138187, i64 %i.nz
  %wide.load.1 = load <4 x float>, ptr %i.oa, align 4, !tbaa !36
end_hunk_5
begin_hunk_6_@quantize_q5_K:bb.a
  %i.hz = fadd float %i.hx, %i.hy
  %i.ia = extractelement <4 x float> %i.ex, i64 1
  %i.ib = fadd float %i.hz, %i.ia
  %i.ic = extractelement <4 x float> %i.ex, i64 2
  %i.id = fadd float %i.ib, %i.ic
  %i.ie = extractelement <4 x float> %i.ex, i64 3
  %i.if = fadd float %i.id, %i.ie
  %i.ig = extractelement <4 x float> %i.fq, i64 0
  %i.ih = fadd float %i.if, %i.ig
  %i.ii = extractelement <4 x float> %i.fq, i64 1
  %i.ij = fadd float %i.ih, %i.ii
  %i.ik = extractelement <4 x float> %i.fq, i64 2
  %i.il = fadd float %i.ij, %i.ik
  %i.im = extractelement <4 x float> %i.fq, i64 3
  %i.in = fadd float %i.il, %i.im
  %i.io = extractelement <4 x float> %i.gj, i64 0
  %i.ip = fadd float %i.in, %i.io
  %i.iq = extractelement <4 x float> %i.gj, i64 1
  %i.ir = fadd float %i.ip, %i.iq
  %i.is = extractelement <4 x float> %i.gj, i64 2
  %i.it = fadd float %i.ir, %i.is
  %i.iu = extractelement <4 x float> %i.gj, i64 3
  %i.iv = fadd float %i.it, %i.iu
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv209.i.us
  store float %i.iv, ptr %i.iw, align 4, !tbaa !36, !noalias !336
  tail call void @llvm.experimental.noalias.scope.decl(metadata !337)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !338)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !339)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !340)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !341)
  %i.ix = load float, ptr %invariant.gep.i.us, align 4, !tbaa !36, !alias.scope !342 ; 3 uses
  %i.iy = fmul float %i.gk, %i.ix
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.preheader168.preheader.i.us
  %indvars.iv.i.i.us = phi i64 [ 1, %.preheader168.preheader.i.us ], [ %indvars.iv.next.i.i.us, %bb.d ] ; 3 uses
  %.0203230.i.i.us = phi float [ %i.iy, %.preheader168.preheader.i.us ], [ %i.jg, %bb.d ]
  %.0204229.i.i.us = phi float [ %i.gk, %.preheader168.preheader.i.us ], [ %i.jf, %bb.d ]
  %.0205228.i.i.us = phi float [ %i.ix, %.preheader168.preheader.i.us ], [ %.1206.i.i.us, %bb.d ] ; 2 uses
  %.0207227.i.i.us = phi float [ %i.ix, %.preheader168.preheader.i.us ], [ %.1208.i.i.us, %bb.d ] ; 2 uses
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i.us, i64 %indvars.iv.i.i.us
  %i.ja = load float, ptr %i.iz, align 4, !tbaa !36, !alias.scope !342 ; 5 uses
  %i.jb = fcmp olt float %i.ja, %.0207227.i.i.us
  %.1208.i.i.us = select i1 %i.jb, float %i.ja, float %.0207227.i.i.us ; 3 uses
  %i.jc = fcmp ogt float %i.ja, %.0205228.i.i.us
  %.1206.i.i.us = select i1 %i.jc, float %i.ja, float %.0205228.i.i.us ; 4 uses
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.i.i.us
  %i.je = load float, ptr %i.jd, align 4, !tbaa !36, !alias.scope !338, !noalias !336 ; 2 uses
  %i.jf = fadd float %.0204229.i.i.us, %i.je      ; 3 uses
  %i.jg = tail call float @llvm.fmuladd.f32(float %i.je, float %i.ja, float %.0203230.i.i.us) ; 3 uses
  %indvars.iv.next.i.i.us = add nuw nsw i64 %indvars.iv.i.i.us, 1 ; 2 uses
  %exitcond.not.i.i.us = icmp eq i64 %indvars.iv.next.i.i.us, 32
  br i1 %exitcond.not.i.i.us, label %bb.e, label %bb.d, !llvm.loop !17

bb.e:                                             ; preds = %bb.d
  %i.jh = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.an ; 3 uses
  %i.ji = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv209.i.us
  %i.jj = fcmp ogt float %.1208.i.i.us, 0.000000e+00
  %spec.store.select.i.i.us = select i1 %i.jj, float 0.000000e+00, float %.1208.i.i.us ; 6 uses
  %i.jk = fcmp ugt float %.1206.i.i.us, %spec.store.select.i.i.us
  br i1 %i.jk, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.jh, i8 0, i64 32, i1 false), !alias.scope !339, !noalias !336
  br label %make_qkx3_quants.exit.i.us

bb.g:                                             ; preds = %bb.e
  %i.jl = fsub float %.1206.i.i.us, %spec.store.select.i.i.us
  %i.jm = fdiv float 3.100000e+01, %i.jl          ; 2 uses
  %i.jn = fdiv float 1.000000e+00, %i.jm          ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %bb.g
  %indvars.iv252.i.i.us = phi i64 [ 0, %bb.g ], [ %indvars.iv.next253.i.i.us, %bb.h ] ; 4 uses
  %.0198232.i.i.us = phi float [ 0.000000e+00, %bb.g ], [ %i.kf, %bb.h ]
  %i.jo = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i.us, i64 %indvars.iv252.i.i.us
  %i.jp = load float, ptr %i.jo, align 4, !tbaa !36, !alias.scope !342 ; 2 uses
  %i.jq = fsub float %i.jp, %spec.store.select.i.i.us
  %i.jr = fmul float %i.jm, %i.jq
  %i.js = fadd float %i.jr, f0x4B400000
  %i.jt = bitcast float %i.js to i32
  %i.ju = and i32 %i.jt, 8388607
  %i.jv = tail call i32 @llvm.umax.i32(i32 %i.ju, i32 4194304)
  %i.jw = tail call i32 @llvm.umin.i32(i32 %i.jv, i32 4194335)
  %i.jx = trunc i32 %i.jw to i8                   ; 2 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jh, i64 %indvars.iv252.i.i.us
  store i8 %i.jx, ptr %i.jy, align 1, !tbaa !34, !alias.scope !339, !noalias !336
  %i.jz = uitofp nneg i8 %i.jx to float
  %i.ka = tail call float @llvm.fmuladd.f32(float %i.jn, float %i.jz, float %spec.store.select.i.i.us)
  %i.kb = fsub float %i.ka, %i.jp                 ; 2 uses
  %i.kc = fmul float %i.kb, %i.kb
  %i.kd = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv252.i.i.us
  %i.ke = load float, ptr %i.kd, align 4, !tbaa !36, !alias.scope !338, !noalias !336
  %i.kf = tail call float @llvm.fmuladd.f32(float %i.ke, float %i.kc, float %.0198232.i.i.us) ; 2 uses
  %indvars.iv.next253.i.i.us = add nuw nsw i64 %indvars.iv252.i.i.us, 1 ; 2 uses
  %exitcond256.not.i.i.us = icmp eq i64 %indvars.iv.next253.i.i.us, 32
  br i1 %exitcond256.not.i.i.us, label %.preheader226.i.i.us, label %bb.h, !llvm.loop !9

.preheader226.i.i.us:                             ; preds = %bb.h, %.loopexit.i.i.us
  %.0196244.i.i.us = phi i32 [ %i.mv, %.loopexit.i.i.us ], [ 0, %bb.h ] ; 2 uses
  %.1243.i.i.us = phi float [ %.3.i.i.us, %.loopexit.i.i.us ], [ %i.kf, %bb.h ] ; 3 uses
  %.0199242.i.i.us = phi float [ %.2201.i.i.us, %.loopexit.i.i.us ], [ %i.jn, %bb.h ] ; 2 uses
  %.2209241.i.i.us = phi float [ %.4.i.i.us, %.loopexit.i.i.us ], [ %spec.store.select.i.i.us, %bb.h ] ; 4 uses
  %i.kg = uitofp nneg i32 %.0196244.i.i.us to float
  %i.kh = tail call nnan float @llvm.fmuladd.f32(float %i.kg, float 5.000000e-02, float f0xBF666666)
  %i.ki = fadd nnan float %i.kh, 3.100000e+01
  %i.kj = fsub float %.1206.i.i.us, %.2209241.i.i.us
  %i.kk = fdiv float %i.ki, %i.kj
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.preheader226.i.i.us
  %indvars.iv257.i.i.us = phi i64 [ 0, %.preheader226.i.i.us ], [ %indvars.iv.next258.i.i.us, %bb.i ] ; 4 uses
  %.0193236.i.i.us = phi float [ 0.000000e+00, %.preheader226.i.i.us ], [ %i.li, %bb.i ]
  %i.kl = phi <2 x float> [ zeroinitializer, %.preheader226.i.i.us ], [ %i.lh, %bb.i ]
  %i.km = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i.us, i64 %indvars.iv257.i.i.us
  %i.kn = load float, ptr %i.km, align 4, !tbaa !36, !alias.scope !342 ; 2 uses
  %i.ko = fsub float %i.kn, %.2209241.i.i.us
  %i.kp = fmul float %i.kk, %i.ko
  %i.kq = fadd float %i.kp, f0x4B400000
  %i.kr = bitcast float %i.kq to i32
  %i.ks = and i32 %i.kr, 8388607                  ; 2 uses
  %i.kt = icmp samesign ult i32 %i.ks, 4194304
  %i.ku = tail call i32 @llvm.umin.i32(i32 %i.ks, i32 4194335)
  %i.kv = add nsw i32 %i.ku, -4194304
  %i.kw = select i1 %i.kt, i32 0, i32 %i.kv       ; 2 uses
  %i.kx = trunc i32 %i.kw to i8
  %i.ky = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv257.i.i.us
  store i8 %i.kx, ptr %i.ky, align 1, !tbaa !34, !alias.scope !341, !noalias !336
  %i.kz = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv257.i.i.us
  %i.la = load float, ptr %i.kz, align 4, !tbaa !36, !alias.scope !338, !noalias !336 ; 2 uses
  %i.lb = uitofp nneg i32 %i.kw to float          ; 2 uses
  %i.lc = fmul float %i.la, %i.lb                 ; 2 uses
  %i.ld = insertelement <2 x float> poison, float %i.lc, i64 0
  %i.le = insertelement <2 x float> %i.ld, float %i.la, i64 1
  %i.lf = insertelement <2 x float> poison, float %i.lb, i64 0
  %i.lg = shufflevector <2 x float> %i.lf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lh = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.le, <2 x float> %i.lg, <2 x float> %i.kl) ; 3 uses
  %i.li = tail call float @llvm.fmuladd.f32(float %i.lc, float %i.kn, float %.0193236.i.i.us) ; 4 uses
  %indvars.iv.next258.i.i.us = add nuw nsw i64 %indvars.iv257.i.i.us, 1 ; 2 uses
  %exitcond261.not.i.i.us = icmp eq i64 %indvars.iv.next258.i.i.us, 32
  br i1 %exitcond261.not.i.i.us, label %bb.j, label %bb.i, !llvm.loop !10

bb.j:                                             ; preds = %bb.i
  %i.lj = extractelement <2 x float> %i.lh, i64 1 ; 3 uses
  %i.lk = fneg float %i.lj                        ; 2 uses
  %i.ll = fmul float %i.lj, %i.lk
  %i.lm = extractelement <2 x float> %i.lh, i64 0 ; 3 uses
  %i.ln = tail call float @llvm.fmuladd.f32(float %i.jf, float %i.lm, float %i.ll) ; 3 uses
  %i.lo = fcmp ogt float %i.ln, 0.000000e+00
  br i1 %i.lo, label %bb.k, label %.loopexit.i.i.us

bb.k:                                             ; preds = %bb.j
  %i.lp = fmul float %i.jg, %i.lk
  %i.lq = tail call float @llvm.fmuladd.f32(float %i.jf, float %i.li, float %i.lp)
  %i.lr = fdiv float %i.lq, %i.ln
  %i.ls = fneg float %i.li
  %i.lt = fmul float %i.lj, %i.ls
  %i.lu = tail call float @llvm.fmuladd.f32(float %i.lm, float %i.jg, float %i.lt)
  %i.lv = fdiv float %i.lu, %i.ln                 ; 2 uses
  %i.lw = fcmp ogt float %i.lv, 0.000000e+00      ; 2 uses
  %i.lx = fdiv float %i.li, %i.lm
  %.0191.i.i.us = select i1 %i.lw, float %i.lx, float %i.lr ; 3 uses
  %.0190.i.i.us = select i1 %i.lw, float 0.000000e+00, float %i.lv ; 3 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %bb.k
  %indvars.iv262.i.i.us = phi i64 [ 0, %bb.k ], [ %indvars.iv.next263.i.i.us.1, %bb.l ] ; 5 uses
  %.0189238.i.i.us = phi float [ 0.000000e+00, %bb.k ], [ %i.mt, %bb.l ]
  %i.ly = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv262.i.i.us
  %i.lz = load i8, ptr %i.ly, align 2, !tbaa !34, !alias.scope !341, !noalias !336
  %i.ma = uitofp i8 %i.lz to float
  %i.mb = tail call float @llvm.fmuladd.f32(float %.0191.i.i.us, float %i.ma, float %.0190.i.i.us)
  %i.mc = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i.us, i64 %indvars.iv262.i.i.us
  %i.md = load float, ptr %i.mc, align 4, !tbaa !36, !alias.scope !342
  %i.me = fsub float %i.mb, %i.md                 ; 2 uses
  %i.mf = fmul float %i.me, %i.me
  %i.mg = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv262.i.i.us
  %i.mh = load float, ptr %i.mg, align 8, !tbaa !36, !alias.scope !338, !noalias !336
  %i.mi = tail call float @llvm.fmuladd.f32(float %i.mh, float %i.mf, float %.0189238.i.i.us)
  %indvars.iv.next263.i.i.us = or disjoint i64 %indvars.iv262.i.i.us, 1 ; 3 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv.next263.i.i.us
  %i.mk = load i8, ptr %i.mj, align 1, !tbaa !34, !alias.scope !341, !noalias !336
  %i.ml = uitofp i8 %i.mk to float
  %i.mm = tail call float @llvm.fmuladd.f32(float %.0191.i.i.us, float %i.ml, float %.0190.i.i.us)
  %i.mn = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i.us, i64 %indvars.iv.next263.i.i.us
  %i.mo = load float, ptr %i.mn, align 4, !tbaa !36, !alias.scope !342
  %i.mp = fsub float %i.mm, %i.mo                 ; 2 uses
  %i.mq = fmul float %i.mp, %i.mp
  %i.mr = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv.next263.i.i.us
  %i.ms = load float, ptr %i.mr, align 4, !tbaa !36, !alias.scope !338, !noalias !336
  %i.mt = tail call float @llvm.fmuladd.f32(float %i.ms, float %i.mq, float %i.mi) ; 3 uses
  %indvars.iv.next263.i.i.us.1 = add nuw nsw i64 %indvars.iv262.i.i.us, 2 ; 2 uses
  %exitcond266.not.i.i.us.1 = icmp eq i64 %indvars.iv.next263.i.i.us.1, 32
  br i1 %exitcond266.not.i.i.us.1, label %bb.m, label %bb.l, !llvm.loop !18

bb.m:                                             ; preds = %bb.l
  %i.mu = fcmp olt float %i.mt, %.1243.i.i.us
  br i1 %i.mu, label %.preheader.preheader.i.i.us, label %.loopexit.i.i.us

.preheader.preheader.i.i.us:                      ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.jh, ptr noundef nonnull align 16 dereferenceable(32) %i.b, i64 range(i64 0, 33) 32, i1 false), !tbaa !34, !alias.scope !343, !noalias !336
  br label %.loopexit.i.i.us

.loopexit.i.i.us:                                 ; preds = %.preheader.preheader.i.i.us, %bb.m, %bb.j
  %.4.i.i.us = phi float [ %.2209241.i.i.us, %bb.j ], [ %.2209241.i.i.us, %bb.m ], [ %.0190.i.i.us, %.preheader.preheader.i.i.us ] ; 2 uses
  %.2201.i.i.us = phi float [ %.0199242.i.i.us, %bb.j ], [ %.0199242.i.i.us, %bb.m ], [ %.0191.i.i.us, %.preheader.preheader.i.i.us ] ; 2 uses
  %.3.i.i.us = phi float [ %.1243.i.i.us, %bb.j ], [ %.1243.i.i.us, %bb.m ], [ %i.mt, %.preheader.preheader.i.i.us ]
  %i.mv = add nuw nsw i32 %.0196244.i.i.us, 1     ; 2 uses
  %exitcond270.not.i.i.us = icmp eq i32 %i.mv, 37
  br i1 %exitcond270.not.i.i.us, label %make_qkx3_quants.exit.i.us, label %.preheader226.i.i.us, !llvm.loop !11

make_qkx3_quants.exit.i.us:                       ; preds = %.loopexit.i.i.us, %bb.f
  %.4.lcssa.sink.i.i.us = phi float [ %spec.store.select.i.i.us, %bb.f ], [ %.4.i.i.us, %.loopexit.i.i.us ]
  %.1212.i.i.us = phi float [ 0.000000e+00, %bb.f ], [ %.2201.i.i.us, %.loopexit.i.i.us ]
  %i.mw = fneg float %.4.lcssa.sink.i.i.us
  store float %i.mw, ptr %i.ji, align 4, !tbaa !36, !alias.scope !340, !noalias !336
  %i.mx = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv209.i.us
  store float %.1212.i.i.us, ptr %i.mx, align 4, !tbaa !36, !noalias !336
  %indvars.iv.next210.i.us = add nuw nsw i64 %indvars.iv209.i.us, 1 ; 2 uses
  %exitcond212.not.i.us = icmp eq i64 %indvars.iv.next210.i.us, 8
  br i1 %exitcond212.not.i.us, label %bb.n, label %.preheader168.preheader.i.us, !llvm.loop !327

bb.n:                                             ; preds = %make_qkx3_quants.exit.i.us
  %i.my = call fastcc float @make_qp_quants(i32 noundef 8, i32 noundef 63, ptr noundef %i.f, ptr noundef %i.c, ptr noundef %i.g), !noalias !336
  %i.mz = call fastcc float @make_qp_quants(i32 noundef 8, i32 noundef 63, ptr noundef %i.e, ptr noundef %i.d, ptr noundef %i.g), !noalias !336
  %i.na = getelementptr inbounds nuw [176 x i8], ptr %.01930.us, i64 %indvars.iv231.i.us ; 8 uses
  %i.nb = getelementptr i8, ptr %i.na, i64 4      ; 2 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %i.na, i64 12
  %i.nd = load <8 x i8>, ptr %i.d, align 8, !tbaa !34, !noalias !336 ; 2 uses
  %i.ne = load <8 x i8>, ptr %i.c, align 8, !tbaa !34, !noalias !336 ; 2 uses
  %i.nf = shufflevector <8 x i8> %i.ne, <8 x i8> %i.nd, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %i.ng = tail call <8 x i8> @llvm.umin.v8i8(<8 x i8> %i.nf, <8 x i8> splat (i8 63))
  %i.nh = shufflevector <8 x i8> %i.ne, <8 x i8> %i.nd, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 12, i32 13, i32 14, i32 15>
  %i.ni = tail call <8 x i8> @llvm.umin.v8i8(<8 x i8> %i.nh, <8 x i8> splat (i8 63)) ; 3 uses
  %i.nj = shufflevector <8 x i8> %i.ni, <8 x i8> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.nk = and <4 x i8> %i.nj, splat (i8 15)
  %i.nl = shufflevector <8 x i8> %i.ni, <8 x i8> poison, <4 x i32> <i32 4, i32 5, i32 6, i32 7>
  %i.nm = shl <4 x i8> %i.nl, splat (i8 4)
  %i.nn = or disjoint <4 x i8> %i.nk, %i.nm
  store <4 x i8> %i.nn, ptr %i.nc, align 1, !tbaa !34, !alias.scope !335
  %i.no = shl nuw <8 x i8> %i.ni, splat (i8 2)
  %i.np = and <8 x i8> %i.no, splat (i8 -64)
  %i.nq = or disjoint <8 x i8> %i.np, %i.ng
  store <8 x i8> %i.nq, ptr %i.nb, align 1, !tbaa !34, !alias.scope !335
  %i.nr = insertelement <2 x float> poison, float %i.my, i64 0
  %i.ns = insertelement <2 x float> %i.nr, float %i.mz, i64 1 ; 2 uses
  %i.nt = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.ns)
  %i.nu = fmul <2 x float> %i.nt, splat (float f0x77800000)
  %i.nv = fmul <2 x float> %i.nu, splat (float f0x08800000)
  %i.nw = bitcast <2 x float> %i.ns to <2 x i32>  ; 2 uses
  %i.nx = shl <2 x i32> %i.nw, splat (i32 1)      ; 2 uses
  %i.ny = tail call <2 x i32> @llvm.umax.v2i32(<2 x i32> %i.nx, <2 x i32> splat (i32 1895825408))
  %i.nz = lshr exact <2 x i32> %i.ny, splat (i32 1)
  %i.oa = and <2 x i32> %i.nz, splat (i32 2139095040)
  %i.ob = add nuw <2 x i32> %i.oa, splat (i32 125829120)
  %i.oc = bitcast <2 x i32> %i.ob to <2 x float>
  %i.od = fadd <2 x float> %i.nv, %i.oc
  %i.oe = bitcast <2 x float> %i.od to <2 x i32>  ; 2 uses
  %i.of = lshr <2 x i32> %i.oe, splat (i32 13)
  %i.og = and <2 x i32> %i.of, splat (i32 31744)
  %i.oh = and <2 x i32> %i.oe, splat (i32 4095)
  %i.oi = add nuw nsw <2 x i32> %i.og, %i.oh
  %i.oj = lshr <2 x i32> %i.nw, splat (i32 16)
  %i.ok = and <2 x i32> %i.oj, splat (i32 32768)
  %i.ol = icmp ugt <2 x i32> %i.nx, splat (i32 -16777216)
  %i.om = select <2 x i1> %i.ol, <2 x i32> splat (i32 32256), <2 x i32> %i.oi ; 3 uses
  %i.on = or <2 x i32> %i.om, %i.ok               ; 2 uses
  %i.oo = trunc nuw <2 x i32> %i.on to <2 x i16>
  store <2 x i16> %i.oo, ptr %i.na, align 4, !tbaa !34, !alias.scope !335
  %i.op = and <2 x i32> %i.om, splat (i32 32767)
  %i.oq = or disjoint <2 x i32> %i.op, splat (i32 1056964608)
  %i.or = bitcast <2 x i32> %i.oq to <2 x float>
  %i.os = fadd <2 x float> %i.or, splat (float -5.000000e-01)
  %i.ot = shl <2 x i32> %i.om, splat (i32 17)     ; 2 uses
  %i.ou = lshr exact <2 x i32> %i.ot, splat (i32 4)
  %i.ov = or disjoint <2 x i32> %i.ou, splat (i32 1879048192)
  %i.ow = bitcast <2 x i32> %i.ov to <2 x float>
  %i.ox = fmul <2 x float> %i.ow, splat (float 1.925930e-34)
  %i.oy = icmp ult <2 x i32> %i.ot, splat (i32 134217728)
  %i.oz = select <2 x i1> %i.oy, <2 x float> %i.os, <2 x float> %i.ox
  %i.pa = bitcast <2 x float> %i.oz to <2 x i32>
  %i.pb = shl nuw <2 x i32> %i.on, splat (i32 16)
  %i.pc = and <2 x i32> %i.pb, splat (i32 -2147483648)
  %i.pd = or <2 x i32> %i.pc, %i.pa               ; 2 uses
  %bc = bitcast <2 x i32> %i.pd to <2 x float>
  %i.pe = extractelement <2 x float> %bc, i64 0
  %bc79 = bitcast <2 x i32> %i.pd to <2 x float>
  %i.pf = extractelement <2 x float> %bc79, i64 1
  br label %bb.o

bb.o:                                             ; preds = %.loopexit.i.us, %bb.n
  %indvars.iv221.i.us = phi i64 [ 0, %bb.n ], [ %indvars.iv.next222.i.us, %.loopexit.i.us ] ; 4 uses
  %i.pg = icmp samesign ult i64 %indvars.iv221.i.us, 4
  %i.ph = getelementptr inbounds nuw i8, ptr %i.nb, i64 %indvars.iv221.i.us ; 5 uses
  br i1 %i.pg, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.pi = getelementptr inbounds nuw i8, ptr %i.ph, i64 4
  %i.pj = load i8, ptr %i.pi, align 1, !tbaa !34, !alias.scope !344 ; 2 uses
  %i.pk = and i8 %i.pj, 15
  %i.pl = getelementptr i8, ptr %i.ph, i64 -4
  %i.pm = load i8, ptr %i.pl, align 1, !tbaa !34, !alias.scope !344
  %i.pn = lshr i8 %i.pm, 2
  %i.po = and i8 %i.pn, 48
  %i.pp = or disjoint i8 %i.po, %i.pk
  %i.pq = lshr i8 %i.pj, 4
  %i.pr = load i8, ptr %i.ph, align 1, !tbaa !34, !alias.scope !344
  %i.ps = lshr i8 %i.pr, 2
  %i.pt = and i8 %i.ps, 48
  %i.pu = or disjoint i8 %i.pt, %i.pq
  br label %get_scale_min_k4.exit.i.us

bb.q:                                             ; preds = %bb.o
  %i.pv = load i8, ptr %i.ph, align 1, !tbaa !34, !alias.scope !344
  %i.pw = and i8 %i.pv, 63
  %i.px = getelementptr i8, ptr %i.ph, i64 4
  %i.py = load i8, ptr %i.px, align 1, !tbaa !34, !alias.scope !344
  %i.pz = and i8 %i.py, 63
  br label %get_scale_min_k4.exit.i.us

get_scale_min_k4.exit.i.us:                       ; preds = %bb.q, %bb.p
  %.sink.i.i.us = phi i8 [ %i.pw, %bb.q ], [ %i.pp, %bb.p ]
  %storemerge.i.i.us = phi i8 [ %i.pz, %bb.q ], [ %i.pu, %bb.p ]
  %i.qa = uitofp nneg i8 %.sink.i.i.us to float
  %i.qb = fmul float %i.pe, %i.qa                 ; 2 uses
  %i.qc = fcmp une float %i.qb, 0.000000e+00
  br i1 %i.qc, label %vector.body, label %.loopexit.i.us

vector.body:                                      ; preds = %get_scale_min_k4.exit.i.us
  %broadcast.splatinsert77 = insertelement <4 x float> poison, float %i.qb, i64 0
  %broadcast.splat78 = shufflevector <4 x float> %broadcast.splatinsert77, <4 x float> poison, <4 x i32> zeroinitializer ; 8 uses
  %i.qd = uitofp nneg i8 %storemerge.i.i.us to float
  %i.qe = fmul float %i.pf, %i.qd
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.qe, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 8 uses
  %i.qf = shl nuw nsw i64 %indvars.iv221.i.us, 5  ; 9 uses
  %i.qg = getelementptr inbounds nuw [4 x i8], ptr %.0145191.i.us, i64 %i.qf
  %wide.load = load <4 x float>, ptr %i.qg, align 4, !tbaa !36, !alias.scope !334
  %i.qh = fadd <4 x float> %broadcast.splat, %wide.load
  %i.qi = fdiv <4 x float> %i.qh, %broadcast.splat78
  %i.qj = fadd <4 x float> %i.qi, splat (float f0x4B400000)
  %i.qk = bitcast <4 x float> %i.qj to <4 x i32>
  %i.ql = and <4 x i32> %i.qk, splat (i32 8388607)
  %i.qm = tail call <4 x i32> @llvm.usub.sat.v4i32(<4 x i32> %i.ql, <4 x i32> splat (i32 4194304))
  %i.qn = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.qm, <4 x i32> splat (i32 31))
  %i.qo = trunc nuw nsw <4 x i32> %i.qn to <4 x i8>
  %i.qp = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.qf
  store <4 x i8> %i.qo, ptr %i.qp, align 16, !tbaa !34, !noalias !336
  %i.qq = or disjoint i64 %i.qf, 4                ; 2 uses
  %i.qr = getelementptr inbounds nuw [4 x i8], ptr %.0145191.i.us, i64 %i.qq
  %wide.load.1 = load <4 x float>, ptr %i.qr, align 4, !tbaa !36, !alias.scope !334
  %i.qs = fadd <4 x float> %broadcast.splat, %wide.load.1
  %i.qt = fdiv <4 x float> %i.qs, %broadcast.splat78
  %i.qu = fadd <4 x float> %i.qt, splat (float f0x4B400000)
  %i.qv = bitcast <4 x float> %i.qu to <4 x i32>
  %i.qw = and <4 x i32> %i.qv, splat (i32 8388607)
  %i.qx = tail call <4 x i32> @llvm.usub.sat.v4i32(<4 x i32> %i.qw, <4 x i32> splat (i32 4194304))
  %i.qy = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.qx, <4 x i32> splat (i32 31))
  %i.qz = trunc nuw nsw <4 x i32> %i.qy to <4 x i8>
  %i.ra = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.qq
  store <4 x i8> %i.qz, ptr %i.ra, align 4, !tbaa !34, !noalias !336
  %i.rb = or disjoint i64 %i.qf, 8                ; 2 uses
  %i.rc = getelementptr inbounds nuw [4 x i8], ptr %.0145191.i.us, i64 %i.rb
  %wide.load.2 = load <4 x float>, ptr %i.rc, align 4, !tbaa !36, !alias.scope !334
  %i.rd = fadd <4 x float> %broadcast.splat, %wide.load.2
  %i.re = fdiv <4 x float> %i.rd, %broadcast.splat78
  %i.rf = fadd <4 x float> %i.re, splat (float f0x4B400000)
  %i.rg = bitcast <4 x float> %i.rf to <4 x i32>
  %i.rh = and <4 x i32> %i.rg, splat (i32 8388607)
  %i.ri = tail call <4 x i32> @llvm.usub.sat.v4i32(<4 x i32> %i.rh, <4 x i32> splat (i32 4194304))
  %i.rj = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.ri, <4 x i32> splat (i32 31))
  %i.rk = trunc nuw nsw <4 x i32> %i.rj to <4 x i8>
  %i.rl = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.rb
  store <4 x i8> %i.rk, ptr %i.rl, align 8, !tbaa !34, !noalias !336
  %i.rm = or disjoint i64 %i.qf, 12               ; 2 uses
  %i.rn = getelementptr inbounds nuw [4 x i8], ptr %.0145191.i.us, i64 %i.rm
  %wide.load.3 = load <4 x float>, ptr %i.rn, align 4, !tbaa !36, !alias.scope !334
  %i.ro = fadd <4 x float> %broadcast.splat, %wide.load.3
  %i.rp = fdiv <4 x float> %i.ro, %broadcast.splat78
  %i.rq = fadd <4 x float> %i.rp, splat (float f0x4B400000)
  %i.rr = bitcast <4 x float> %i.rq to <4 x i32>
  %i.rs = and <4 x i32> %i.rr, splat (i32 8388607)
  %i.rt = tail call <4 x i32> @llvm.usub.sat.v4i32(<4 x i32> %i.rs, <4 x i32> splat (i32 4194304))
  %i.ru = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.rt, <4 x i32> splat (i32 31))
  %i.rv = trunc nuw nsw <4 x i32> %i.ru to <4 x i8>
  %i.rw = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.rm
  store <4 x i8> %i.rv, ptr %i.rw, align 4, !tbaa !34, !noalias !336
  %i.rx = or disjoint i64 %i.qf, 16               ; 2 uses
  %i.ry = getelementptr inbounds nuw [4 x i8], ptr %.0145191.i.us, i64 %i.rx
  %wide.load.4 = load <4 x float>, ptr %i.ry, align 4, !tbaa !36, !alias.scope !334
  %i.rz = fadd <4 x float> %broadcast.splat, %wide.load.4
  %i.sa = fdiv <4 x float> %i.rz, %broadcast.splat78
  %i.sb = fadd <4 x float> %i.sa, splat (float f0x4B400000)
  %i.sc = bitcast <4 x float> %i.sb to <4 x i32>
  %i.sd = and <4 x i32> %i.sc, splat (i32 8388607)
  %i.se = tail call <4 x i32> @llvm.usub.sat.v4i32(<4 x i32> %i.sd, <4 x i32> splat (i32 4194304))
  %i.sf = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.se, <4 x i32> splat (i32 31))
  %i.sg = trunc nuw nsw <4 x i32> %i.sf to <4 x i8>
  %i.sh = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.rx
  store <4 x i8> %i.sg, ptr %i.sh, align 16, !tbaa !34, !noalias !336
  %i.si = or disjoint i64 %i.qf, 20               ; 2 uses
end_hunk_6
begin_hunk_7_@quantize_q5_K:bb.a
  %i.wg = add i8 %i.we, -16
  %i.wh = getelementptr inbounds nuw i8, ptr %i.tp, i64 %indvars.iv225.3.i.us ; 2 uses
  %i.wi = load i8, ptr %i.wh, align 1, !tbaa !34, !alias.scope !335
  %i.wj = or i8 %i.wi, -128
  store i8 %i.wj, ptr %i.wh, align 1, !tbaa !34, !alias.scope !335
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.0.3.i.us = phi i8 [ %i.wg, %bb.aj ], [ %i.we, %bb.ai ]
  %i.wk = shl i8 %.0.3.i.us, 4
  %i.wl = or i8 %i.wk, %.0139.3.i.us
  %i.wm = getelementptr inbounds nuw i8, ptr %i.vu, i64 %indvars.iv225.3.i.us
  store i8 %i.wl, ptr %i.wm, align 1, !tbaa !34, !alias.scope !335
  %indvars.iv.next226.3.i.us = add nuw nsw i64 %indvars.iv225.3.i.us, 1 ; 2 uses
  %exitcond228.3.not.i.us = icmp eq i64 %indvars.iv.next226.3.i.us, 32
  br i1 %exitcond228.3.not.i.us, label %bb.al, label %bb.ag, !llvm.loop !331

bb.al:                                            ; preds = %bb.ak
  %i.wn = getelementptr inbounds nuw i8, ptr %.0145191.i.us, i64 1024
  %indvars.iv.next232.i.us = add nuw nsw i64 %indvars.iv231.i.us, 1 ; 2 uses
  %exitcond234.not.i.us = icmp eq i64 %indvars.iv.next232.i.us, %i.k
  br i1 %exitcond234.not.i.us, label %quantize_row_q5_K_impl.exit.loopexit.us, label %.preheader169.i.us, !llvm.loop !332

quantize_row_q5_K_impl.exit.loopexit.us:          ; preds = %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #14, !noalias !336
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #14, !noalias !336
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #14, !noalias !336
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #14, !noalias !336
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14, !noalias !336
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14, !noalias !336
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14, !noalias !336
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14, !noalias !336
  %i.wo = getelementptr inbounds nuw [4 x i8], ptr %.02029.us, i64 %3
  %i.wp = getelementptr inbounds nuw i8, ptr %.01930.us, i64 %i.i
  %i.wq = add nuw nsw i64 %.031.us, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.wq, %2
  br i1 %exitcond.not, label %.loopexit, label %.preheader169.preheader.i.us, !llvm.loop !333

bb.am:                                            ; preds = %bb.a
  %i.wr = mul nsw i64 %3, %2
  tail call void @quantize_row_q5_K_ref(ptr noundef %0, ptr noundef %1, i64 noundef %i.wr)
  br label %.loopexit

.loopexit:                                        ; preds = %quantize_row_q5_K_impl.exit.loopexit.us, %.lr.ph, %.preheader, %bb.am
  %i.ws = mul i64 %i.i, %2
  ret i64 %i.ws
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @quantize_row_q6_K_ref(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree noundef captures(none) %1, i64 noundef %2) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 20 uses
  %i.b = alloca [16 x float], align 16            ; 4 uses
  %i.c = sdiv i64 %2, 256
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  %i.d = icmp sgt i64 %2, 255
  br i1 %i.d, label %.preheader111.preheader, label %._crit_edge

.preheader111.preheader:                          ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 240
  br label %.preheader111

.preheader111:                                    ; preds = %.preheader111.preheader, %.loopexit109
  %indvars.iv150 = phi i64 [ 0, %.preheader111.preheader ], [ %indvars.iv.next151, %.loopexit109 ] ; 3 uses
  %.0126 = phi ptr [ %0, %.preheader111.preheader ], [ %.1, %.loopexit109 ] ; 3 uses
  br label %bb.c

._crit_edge:                                      ; preds = %.loopexit109, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret void

bb.b:                                             ; preds = %make_qx_quants.exit
  %i.t = fcmp olt float %.1104, 1.000000e-15
  br i1 %i.t, label %bb.k, label %.preheader110

bb.c:                                             ; preds = %.preheader111, %make_qx_quants.exit
  %indvars.iv = phi i64 [ 0, %.preheader111 ], [ %indvars.iv.next, %make_qx_quants.exit ] ; 3 uses
  %.097117 = phi float [ 0.000000e+00, %.preheader111 ], [ %.198, %make_qx_quants.exit ]
  %.0103115 = phi float [ 0.000000e+00, %.preheader111 ], [ %.1104, %make_qx_quants.exit ] ; 2 uses
  %i.u = shl nuw nsw i64 %indvars.iv, 4           ; 2 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %.0126, i64 %i.u ; 19 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !351)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !352)
  %i.w = load float, ptr %i.v, align 4, !tbaa !36, !alias.scope !351 ; 3 uses
  %i.x = tail call float @llvm.fabs.f32(float %i.w)
  %i.y = fcmp one float %i.w, 0.000000e+00        ; 2 uses
  %.1185.i = select i1 %i.y, float %i.w, float 0.000000e+00
  %.1183.i = select i1 %i.y, float %i.x, float 0.000000e+00 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.aa = load float, ptr %i.z, align 4, !tbaa !36, !alias.scope !351 ; 2 uses
  %i.ab = tail call float @llvm.fabs.f32(float %i.aa) ; 2 uses
  %i.ac = fcmp ogt float %i.ab, %.1183.i          ; 2 uses
  %.1185.i.1 = select i1 %i.ac, float %i.aa, float %.1185.i
  %.1183.i.1 = select i1 %i.ac, float %i.ab, float %.1183.i ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !36, !alias.scope !351 ; 2 uses
  %i.af = tail call float @llvm.fabs.f32(float %i.ae) ; 2 uses
  %i.ag = fcmp ogt float %i.af, %.1183.i.1        ; 2 uses
  %.1185.i.2 = select i1 %i.ag, float %i.ae, float %.1185.i.1
  %.1183.i.2 = select i1 %i.ag, float %i.af, float %.1183.i.1 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.v, i64 12
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !36, !alias.scope !351 ; 2 uses
  %i.aj = tail call float @llvm.fabs.f32(float %i.ai) ; 2 uses
  %i.ak = fcmp ogt float %i.aj, %.1183.i.2        ; 2 uses
  %.1185.i.3 = select i1 %i.ak, float %i.ai, float %.1185.i.2
  %.1183.i.3 = select i1 %i.ak, float %i.aj, float %.1183.i.2 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.am = load float, ptr %i.al, align 4, !tbaa !36, !alias.scope !351 ; 2 uses
  %i.an = tail call float @llvm.fabs.f32(float %i.am) ; 2 uses
  %i.ao = fcmp ogt float %i.an, %.1183.i.3        ; 2 uses
  %.1185.i.4 = select i1 %i.ao, float %i.am, float %.1185.i.3
  %.1183.i.4 = select i1 %i.ao, float %i.an, float %.1183.i.3 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.v, i64 20
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !36, !alias.scope !351 ; 2 uses
  %i.ar = tail call float @llvm.fabs.f32(float %i.aq) ; 2 uses
  %i.as = fcmp ogt float %i.ar, %.1183.i.4        ; 2 uses
  %.1185.i.5 = select i1 %i.as, float %i.aq, float %.1185.i.4
  %.1183.i.5 = select i1 %i.as, float %i.ar, float %.1183.i.4 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.au = load float, ptr %i.at, align 4, !tbaa !36, !alias.scope !351 ; 2 uses
  %i.av = tail call float @llvm.fabs.f32(float %i.au) ; 2 uses
  %i.aw = fcmp ogt float %i.av, %.1183.i.5        ; 2 uses
  %.1185.i.6 = select i1 %i.aw, float %i.au, float %.1185.i.5
  %.1183.i.6 = select i1 %i.aw, float %i.av, float %.1183.i.5 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.v, i64 28
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !36, !alias.scope !351 ; 2 uses
  %i.az = tail call float @llvm.fabs.f32(float %i.ay) ; 2 uses
  %i.ba = fcmp ogt float %i.az, %.1183.i.6        ; 2 uses
  %.1185.i.7 = select i1 %i.ba, float %i.ay, float %.1185.i.6
  %.1183.i.7 = select i1 %i.ba, float %i.az, float %.1183.i.6 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.bc = getelementptr inbounds nuw i8, ptr %i.v, i64 36
  %i.bd = load <2 x float>, ptr %i.bb, align 4, !tbaa !36, !alias.scope !351 ; 2 uses
  %i.be = load float, ptr %i.bc, align 4, !tbaa !36, !alias.scope !351 ; 2 uses
  %i.bf = extractelement <2 x float> %i.bd, i64 0 ; 2 uses
  %i.bg = tail call float @llvm.fabs.f32(float %i.bf) ; 2 uses
  %i.bh = fcmp ogt float %i.bg, %.1183.i.7        ; 2 uses
  %.1185.i.8 = select i1 %i.bh, float %i.bf, float %.1185.i.7
  %.1183.i.8 = select i1 %i.bh, float %i.bg, float %.1183.i.7 ; 2 uses
  %i.bi = tail call float @llvm.fabs.f32(float %i.be) ; 2 uses
  %i.bj = fcmp ogt float %i.bi, %.1183.i.8        ; 2 uses
  %.1185.i.9 = select i1 %i.bj, float %i.be, float %.1185.i.8
  %.1183.i.9 = select i1 %i.bj, float %i.bi, float %.1183.i.8 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.v, i64 40 ; 2 uses
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !36, !alias.scope !351 ; 2 uses
  %i.bm = tail call float @llvm.fabs.f32(float %i.bl) ; 2 uses
  %i.bn = fcmp ogt float %i.bm, %.1183.i.9        ; 2 uses
  %.1185.i.10 = select i1 %i.bn, float %i.bl, float %.1185.i.9
  %.1183.i.10 = select i1 %i.bn, float %i.bm, float %.1183.i.9 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.v, i64 44
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !36, !alias.scope !351 ; 2 uses
  %i.bq = tail call float @llvm.fabs.f32(float %i.bp) ; 2 uses
  %i.br = fcmp ogt float %i.bq, %.1183.i.10       ; 2 uses
  %.1185.i.11 = select i1 %i.br, float %i.bp, float %.1185.i.10
  %.1183.i.11 = select i1 %i.br, float %i.bq, float %.1183.i.10 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.v, i64 48 ; 2 uses
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !36, !alias.scope !351 ; 2 uses
  %i.bu = tail call float @llvm.fabs.f32(float %i.bt) ; 2 uses
  %i.bv = fcmp ogt float %i.bu, %.1183.i.11       ; 2 uses
  %.1185.i.12 = select i1 %i.bv, float %i.bt, float %.1185.i.11
  %.1183.i.12 = select i1 %i.bv, float %i.bu, float %.1183.i.11 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.v, i64 52
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !36, !alias.scope !351 ; 2 uses
  %i.by = tail call float @llvm.fabs.f32(float %i.bx) ; 2 uses
  %i.bz = fcmp ogt float %i.by, %.1183.i.12       ; 2 uses
  %.1185.i.13 = select i1 %i.bz, float %i.bx, float %.1185.i.12
  %.1183.i.13 = select i1 %i.bz, float %i.by, float %.1183.i.12 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.v, i64 56
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !36, !alias.scope !351 ; 2 uses
  %i.cc = tail call float @llvm.fabs.f32(float %i.cb) ; 2 uses
  %i.cd = fcmp ogt float %i.cc, %.1183.i.13       ; 2 uses
  %.1185.i.14 = select i1 %i.cd, float %i.cb, float %.1185.i.13
  %.1183.i.14 = select i1 %i.cd, float %i.cc, float %.1183.i.13 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.v, i64 60
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !36, !alias.scope !351 ; 2 uses
  %i.cg = tail call float @llvm.fabs.f32(float %i.cf) ; 2 uses
  %i.ch = fcmp ogt float %i.cg, %.1183.i.14       ; 2 uses
  %.1185.i.15 = select i1 %i.ch, float %i.cf, float %.1185.i.14 ; 2 uses
  %.1183.i.15 = select i1 %i.ch, float %i.cg, float %.1183.i.14
  %i.ci = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.u ; 3 uses
  %i.cj = fcmp olt float %.1183.i.15, 1.000000e-15
  br i1 %i.cj, label %.preheader.preheader.i, label %bb.d

.preheader.preheader.i:                           ; preds = %bb.c
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.ci, i8 0, i64 range(i64 0, 33) 16, i1 false), !tbaa !34, !alias.scope !352
  br label %make_qx_quants.exit

bb.d:                                             ; preds = %bb.c
  %i.ck = fdiv float 3.200000e+01, %.1185.i.15
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %indvars.iv231.i = phi i64 [ 0, %bb.d ], [ %indvars.iv.next232.i, %bb.e ] ; 3 uses
  %i.cl = phi <2 x float> [ zeroinitializer, %bb.d ], [ %i.df, %bb.e ]
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv231.i
  %i.cn = load float, ptr %i.cm, align 4, !tbaa !36, !alias.scope !351 ; 4 uses
  %i.co = fmul float %i.ck, %i.cn
  %i.cp = fsub float f0x4B400000, %i.co
  %i.cq = bitcast float %i.cp to i32
  %i.cr = and i32 %i.cq, 8388607
  %i.cs = tail call i32 @llvm.umax.i32(i32 %i.cr, i32 4194272)
  %i.ct = tail call i32 @llvm.umin.i32(i32 %i.cs, i32 4194335) ; 2 uses
  %..i = add nsw i32 %i.ct, -4194304
  %i.cu = trunc i32 %i.ct to i8
  %i.cv = add nsw i8 %i.cu, 32
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ci, i64 %indvars.iv231.i
  store i8 %i.cv, ptr %i.cw, align 1, !tbaa !34, !alias.scope !352
  %i.cx = fmul float %i.cn, %i.cn
  %i.cy = sitofp i32 %..i to float
  %i.cz = insertelement <2 x float> poison, float %i.cx, i64 0
  %i.da = shufflevector <2 x float> %i.cz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.db = insertelement <2 x float> poison, float %i.cy, i64 0 ; 2 uses
  %i.dc = insertelement <2 x float> %i.db, float %i.cn, i64 1
  %i.dd = fmul <2 x float> %i.da, %i.dc
  %i.de = shufflevector <2 x float> %i.db, <2 x float> poison, <2 x i32> zeroinitializer
  %i.df = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dd, <2 x float> %i.de, <2 x float> %i.cl) ; 3 uses
  %indvars.iv.next232.i = add nuw nsw i64 %indvars.iv231.i, 1 ; 2 uses
  %exitcond235.not.i = icmp eq i64 %indvars.iv.next232.i, 16
  br i1 %exitcond235.not.i, label %bb.f, label %bb.e, !llvm.loop !12

bb.f:                                             ; preds = %bb.e
  %i.dg = extractelement <2 x float> %i.df, i64 0 ; 2 uses
  %i.dh = fcmp une float %i.dg, 0.000000e+00
  %i.di = extractelement <2 x float> %i.df, i64 1 ; 2 uses
  %i.dj = fdiv float %i.di, %i.dg
  %i.dk = select i1 %i.dh, float %i.dj, float 0.000000e+00 ; 2 uses
  %i.dl = fmul float %i.di, %i.dk
  %i.dm = shufflevector <2 x float> %i.bd, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  br label %bb.g

bb.g:                                             ; preds = %bb.j, %bb.f
  %.0169221.i = phi i32 [ -9, %bb.f ], [ %i.fk, %bb.j ] ; 3 uses
  %.0170220.i = phi float [ %i.dl, %bb.f ], [ %.1.i, %bb.j ] ; 4 uses
  %.0171219.i = phi float [ %i.dk, %bb.f ], [ %.1172.i, %bb.j ] ; 3 uses
  %i.dn = icmp eq i32 %.0169221.i, 0
  br i1 %i.dn, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.do = sitofp i32 %.0169221.i to float
  %i.dp = tail call float @llvm.fmuladd.f32(float %i.do, float 1.000000e-01, float 3.200000e+01)
  %i.dq = fneg float %i.dp
  %i.dr = fdiv float %i.dq, %.1185.i.15           ; 2 uses
  br label %.split.us.i

.split.us.i:                                      ; preds = %.split.us.i, %bb.h
  %indvars.iv241.i = phi i64 [ %indvars.iv.next242.i, %.split.us.i ], [ 0, %bb.h ] ; 2 uses
  %i.ds = phi <2 x float> [ %i.ej, %.split.us.i ], [ zeroinitializer, %bb.h ]
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv241.i
  %i.du = load float, ptr %i.dt, align 4, !tbaa !36, !alias.scope !351 ; 4 uses
  %i.dv = fmul float %i.dr, %i.du
  %i.dw = fadd float %i.dv, f0x4B400000
  %i.dx = bitcast float %i.dw to i32
  %i.dy = and i32 %i.dx, 8388607
  %i.dz = tail call i32 @llvm.umax.i32(i32 %i.dy, i32 4194272)
  %i.ea = tail call i32 @llvm.umin.i32(i32 %i.dz, i32 4194335)
  %.202.us.i = add nsw i32 %i.ea, -4194304
  %i.eb = fmul float %i.du, %i.du
  %i.ec = sitofp i32 %.202.us.i to float
  %i.ed = insertelement <2 x float> poison, float %i.eb, i64 0
  %i.ee = shufflevector <2 x float> %i.ed, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ef = insertelement <2 x float> poison, float %i.ec, i64 0 ; 2 uses
  %i.eg = insertelement <2 x float> %i.ef, float %i.du, i64 1
  %i.eh = fmul <2 x float> %i.ee, %i.eg
  %i.ei = shufflevector <2 x float> %i.ef, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ej = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.eh, <2 x float> %i.ei, <2 x float> %i.ds) ; 3 uses
  %indvars.iv.next242.i = add nuw nsw i64 %indvars.iv241.i, 1 ; 2 uses
  %exitcond245.not.i = icmp eq i64 %indvars.iv.next242.i, 16
  br i1 %exitcond245.not.i, label %.split216.us.i, label %.split.us.i, !llvm.loop !13

.split216.us.i:                                   ; preds = %.split.us.i
  %i.ek = extractelement <2 x float> %i.ej, i64 0 ; 3 uses
  %i.el = fcmp ogt float %i.ek, 0.000000e+00
  br i1 %i.el, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.split216.us.i
  %i.em = extractelement <2 x float> %i.ej, i64 1 ; 4 uses
  %i.en = fmul float %i.em, %i.em
  %i.eo = fmul float %.0170220.i, %i.ek
  %i.ep = fcmp ogt float %i.en, %i.eo
  br i1 %i.ep, label %.preheader204.i.preheader, label %bb.j

.preheader204.i.preheader:                        ; preds = %bb.i
  %i.eq = load <8 x float>, ptr %i.v, align 4, !tbaa !36, !alias.scope !351
  %i.er = load <2 x float>, ptr %i.bk, align 4, !tbaa !36, !alias.scope !351
  %i.es = load <4 x float>, ptr %i.bs, align 4, !tbaa !36, !alias.scope !351
  %i.et = insertelement <16 x float> poison, float %i.dr, i64 0
  %i.eu = shufflevector <16 x float> %i.et, <16 x float> poison, <16 x i32> zeroinitializer
  %i.ev = shufflevector <4 x float> %i.dm, <4 x float> %i.es, <16 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 0, i32 1, i32 poison, i32 poison, i32 4, i32 5, i32 6, i32 7>
  %i.ew = shufflevector <8 x float> %i.eq, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ex = shufflevector <16 x float> %i.ew, <16 x float> %i.ev, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 24, i32 25, i32 poison, i32 poison, i32 28, i32 29, i32 30, i32 31>
  %i.ey = shufflevector <2 x float> %i.er, <2 x float> poison, <16 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ez = shufflevector <16 x float> %i.ex, <16 x float> %i.ey, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 16, i32 17, i32 12, i32 13, i32 14, i32 15>
  %i.fa = fmul <16 x float> %i.eu, %i.ez
  %i.fb = fadd <16 x float> %i.fa, splat (float f0x4B400000)
  %i.fc = bitcast <16 x float> %i.fb to <16 x i32>
  %i.fd = and <16 x i32> %i.fc, splat (i32 8388607)
  %i.fe = tail call <16 x i32> @llvm.umax.v16i32(<16 x i32> %i.fd, <16 x i32> splat (i32 4194272))
  %i.ff = tail call <16 x i32> @llvm.umin.v16i32(<16 x i32> %i.fe, <16 x i32> splat (i32 4194335))
  %i.fg = trunc <16 x i32> %i.ff to <16 x i8>
  %i.fh = add nsw <16 x i8> %i.fg, splat (i8 32)
  store <16 x i8> %i.fh, ptr %i.ci, align 16, !tbaa !34, !alias.scope !352
  %i.fi = fdiv float %i.em, %i.ek                 ; 2 uses
  %i.fj = fmul float %i.em, %i.fi
  br label %bb.j

bb.j:                                             ; preds = %.preheader204.i.preheader, %bb.i, %.split216.us.i, %bb.g
  %.1172.i = phi float [ %.0171219.i, %bb.g ], [ %i.fi, %.preheader204.i.preheader ], [ %.0171219.i, %bb.i ], [ %.0171219.i, %.split216.us.i ] ; 2 uses
  %.1.i = phi float [ %.0170220.i, %bb.g ], [ %i.fj, %.preheader204.i.preheader ], [ %.0170220.i, %bb.i ], [ %.0170220.i, %.split216.us.i ]
  %i.fk = add nsw i32 %.0169221.i, 1              ; 2 uses
  %exitcond251.not.i = icmp eq i32 %i.fk, 10
  br i1 %exitcond251.not.i, label %make_qx_quants.exit, label %bb.g, !llvm.loop !14

make_qx_quants.exit:                              ; preds = %bb.j, %.preheader.preheader.i
  %.2.i = phi float [ 0.000000e+00, %.preheader.preheader.i ], [ %.1172.i, %bb.j ] ; 3 uses
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv
  store float %.2.i, ptr %i.fl, align 4, !tbaa !36
  %i.fm = tail call float @llvm.fabs.f32(float %.2.i) ; 2 uses
  %i.fn = fcmp ogt float %i.fm, %.0103115         ; 2 uses
  %.1104 = select i1 %i.fn, float %i.fm, float %.0103115 ; 2 uses
  %.198 = select i1 %i.fn, float %.2.i, float %.097117 ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 16
  br i1 %exitcond.not, label %bb.b, label %bb.c, !llvm.loop !348

bb.k:                                             ; preds = %bb.b
  %i.fo = getelementptr inbounds nuw [210 x i8], ptr %1, i64 %indvars.iv150
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(210) %i.fo, i8 0, i64 210, i1 false)
  br label %.loopexit109

.preheader110:                                    ; preds = %bb.b
  %i.fp = fdiv float -1.280000e+02, %.198         ; 2 uses
  %i.fq = fdiv float 1.000000e+00, %i.fp          ; 2 uses
  %i.fr = tail call float @llvm.fabs.f32(float %i.fq)
  %i.fs = fmul float %i.fr, f0x77800000
  %i.ft = fmul float %i.fs, f0x08800000
  %i.fu = bitcast float %i.fq to i32              ; 2 uses
  %i.fv = shl i32 %i.fu, 1                        ; 2 uses
  %i.fw = tail call i32 @llvm.umax.i32(i32 %i.fv, i32 1895825408)
  %spec.store.select.i = lshr exact i32 %i.fw, 1
  %i.fx = and i32 %spec.store.select.i, 2139095040
  %i.fy = add nuw i32 %i.fx, 125829120
  %i.fz = bitcast i32 %i.fy to float
  %i.ga = fadd float %i.ft, %i.fz
  %i.gb = bitcast float %i.ga to i32              ; 2 uses
  %i.gc = lshr i32 %i.gb, 13
  %i.gd = and i32 %i.gc, 31744
  %i.ge = and i32 %i.gb, 4095
  %i.gf = add nuw nsw i32 %i.gd, %i.ge
  %i.gg = lshr i32 %i.fu, 16
  %i.gh = and i32 %i.gg, 32768
  %i.gi = icmp ugt i32 %i.fv, -16777216
  %i.gj = select i1 %i.gi, i32 32256, i32 %i.gf
  %i.gk = or i32 %i.gj, %i.gh
  %i.gl = trunc nuw i32 %i.gk to i16
  %i.gm = getelementptr inbounds nuw [210 x i8], ptr %1, i64 %indvars.iv150 ; 14 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 208 ; 2 uses
  store i16 %i.gl, ptr %i.gn, align 2, !tbaa !50
  %i.go = getelementptr inbounds nuw i8, ptr %i.gm, i64 192 ; 2 uses
  %i.gp = load <16 x float>, ptr %i.b, align 16, !tbaa !36
  %i.gq = insertelement <16 x float> poison, float %i.fp, i64 0
  %i.gr = shufflevector <16 x float> %i.gq, <16 x float> poison, <16 x i32> zeroinitializer
  %i.gs = fmul <16 x float> %i.gr, %i.gp
  %i.gt = fadd <16 x float> %i.gs, splat (float f0x4B400000)
  %i.gu = bitcast <16 x float> %i.gt to <16 x i32> ; 2 uses
  %i.gv = and <16 x i32> %i.gu, splat (i32 8388480)
  %i.gw = icmp samesign ugt <16 x i32> %i.gv, splat (i32 4194431)
  %i.gx = trunc <16 x i32> %i.gu to <16 x i8>
  %i.gy = select <16 x i1> %i.gw, <16 x i8> splat (i8 127), <16 x i8> %i.gx
  store <16 x i8> %i.gy, ptr %i.go, align 2, !tbaa !34
  %i.gz = load i16, ptr %i.gn, align 2, !tbaa !50 ; 2 uses
  %i.ha = zext i16 %i.gz to i32                   ; 2 uses
  %i.hb = shl i32 %i.ha, 17                       ; 2 uses
  %i.hc = lshr exact i32 %i.hb, 4
  %i.hd = or disjoint i32 %i.hc, 1879048192
  %i.he = bitcast i32 %i.hd to float
  %i.hf = and i32 %i.ha, 32767
  %i.hg = or disjoint i32 %i.hf, 1056964608
  %i.hh = bitcast i32 %i.hg to float
  %i.hi = icmp ult i32 %i.hb, 134217728
  %i.hj = fadd float %i.hh, -5.000000e-01
  %i.hk = fmul float %i.he, 1.925930e-34
  %.v.i = select i1 %i.hi, float %i.hj, float %i.hk
  %i.hl = bitcast float %.v.i to i32
  %.signext.i = sext i16 %i.gz to i32
  %i.hm = and i32 %.signext.i, -2147483648
end_hunk_7
begin_hunk_8_@quantize_q6_K:bb.a
  %.1183.i.i.us = select i1 %i.ab, float %i.aa, float 0.000000e+00 ; 2 uses
  %i.ac = extractelement <16 x float> %i.y, i64 1 ; 2 uses
  %i.ad = tail call float @llvm.fabs.f32(float %i.ac) ; 2 uses
  %i.ae = fcmp ogt float %i.ad, %.1183.i.i.us     ; 2 uses
  %.1185.i.1.i.us = select i1 %i.ae, float %i.ac, float %.1185.i.i.us
  %.1183.i.1.i.us = select i1 %i.ae, float %i.ad, float %.1183.i.i.us ; 2 uses
  %i.af = extractelement <16 x float> %i.y, i64 2 ; 2 uses
  %i.ag = tail call float @llvm.fabs.f32(float %i.af) ; 2 uses
  %i.ah = fcmp ogt float %i.ag, %.1183.i.1.i.us   ; 2 uses
  %.1185.i.2.i.us = select i1 %i.ah, float %i.af, float %.1185.i.1.i.us
  %.1183.i.2.i.us = select i1 %i.ah, float %i.ag, float %.1183.i.1.i.us ; 2 uses
  %i.ai = extractelement <16 x float> %i.y, i64 3 ; 2 uses
  %i.aj = tail call float @llvm.fabs.f32(float %i.ai) ; 2 uses
  %i.ak = fcmp ogt float %i.aj, %.1183.i.2.i.us   ; 2 uses
  %.1185.i.3.i.us = select i1 %i.ak, float %i.ai, float %.1185.i.2.i.us
  %.1183.i.3.i.us = select i1 %i.ak, float %i.aj, float %.1183.i.2.i.us ; 2 uses
  %i.al = extractelement <16 x float> %i.y, i64 4 ; 2 uses
  %i.am = tail call float @llvm.fabs.f32(float %i.al) ; 2 uses
  %i.an = fcmp ogt float %i.am, %.1183.i.3.i.us   ; 2 uses
  %.1185.i.4.i.us = select i1 %i.an, float %i.al, float %.1185.i.3.i.us
  %.1183.i.4.i.us = select i1 %i.an, float %i.am, float %.1183.i.3.i.us ; 2 uses
  %i.ao = extractelement <16 x float> %i.y, i64 5 ; 2 uses
  %i.ap = tail call float @llvm.fabs.f32(float %i.ao) ; 2 uses
  %i.aq = fcmp ogt float %i.ap, %.1183.i.4.i.us   ; 2 uses
  %.1185.i.5.i.us = select i1 %i.aq, float %i.ao, float %.1185.i.4.i.us
  %.1183.i.5.i.us = select i1 %i.aq, float %i.ap, float %.1183.i.4.i.us ; 2 uses
  %i.ar = extractelement <16 x float> %i.y, i64 6 ; 2 uses
  %i.as = tail call float @llvm.fabs.f32(float %i.ar) ; 2 uses
  %i.at = fcmp ogt float %i.as, %.1183.i.5.i.us   ; 2 uses
  %.1185.i.6.i.us = select i1 %i.at, float %i.ar, float %.1185.i.5.i.us
  %.1183.i.6.i.us = select i1 %i.at, float %i.as, float %.1183.i.5.i.us ; 2 uses
  %i.au = extractelement <16 x float> %i.y, i64 7 ; 2 uses
  %i.av = tail call float @llvm.fabs.f32(float %i.au) ; 2 uses
  %i.aw = fcmp ogt float %i.av, %.1183.i.6.i.us   ; 2 uses
  %.1185.i.7.i.us = select i1 %i.aw, float %i.au, float %.1185.i.6.i.us
  %.1183.i.7.i.us = select i1 %i.aw, float %i.av, float %.1183.i.6.i.us ; 2 uses
  %i.ax = extractelement <16 x float> %i.y, i64 8 ; 2 uses
  %i.ay = tail call float @llvm.fabs.f32(float %i.ax) ; 2 uses
  %i.az = fcmp ogt float %i.ay, %.1183.i.7.i.us   ; 2 uses
  %.1185.i.8.i.us = select i1 %i.az, float %i.ax, float %.1185.i.7.i.us
  %.1183.i.8.i.us = select i1 %i.az, float %i.ay, float %.1183.i.7.i.us ; 2 uses
  %i.ba = extractelement <16 x float> %i.y, i64 9 ; 2 uses
  %i.bb = tail call float @llvm.fabs.f32(float %i.ba) ; 2 uses
  %i.bc = fcmp ogt float %i.bb, %.1183.i.8.i.us   ; 2 uses
  %.1185.i.9.i.us = select i1 %i.bc, float %i.ba, float %.1185.i.8.i.us
  %.1183.i.9.i.us = select i1 %i.bc, float %i.bb, float %.1183.i.8.i.us ; 2 uses
  %i.bd = extractelement <16 x float> %i.y, i64 10 ; 2 uses
  %i.be = tail call float @llvm.fabs.f32(float %i.bd) ; 2 uses
  %i.bf = fcmp ogt float %i.be, %.1183.i.9.i.us   ; 2 uses
  %.1185.i.10.i.us = select i1 %i.bf, float %i.bd, float %.1185.i.9.i.us
  %.1183.i.10.i.us = select i1 %i.bf, float %i.be, float %.1183.i.9.i.us ; 2 uses
  %i.bg = extractelement <16 x float> %i.y, i64 11 ; 2 uses
  %i.bh = tail call float @llvm.fabs.f32(float %i.bg) ; 2 uses
  %i.bi = fcmp ogt float %i.bh, %.1183.i.10.i.us  ; 2 uses
  %.1185.i.11.i.us = select i1 %i.bi, float %i.bg, float %.1185.i.10.i.us
  %.1183.i.11.i.us = select i1 %i.bi, float %i.bh, float %.1183.i.10.i.us ; 2 uses
  %i.bj = extractelement <16 x float> %i.y, i64 12 ; 2 uses
  %i.bk = tail call float @llvm.fabs.f32(float %i.bj) ; 2 uses
  %i.bl = fcmp ogt float %i.bk, %.1183.i.11.i.us  ; 2 uses
  %.1185.i.12.i.us = select i1 %i.bl, float %i.bj, float %.1185.i.11.i.us
  %.1183.i.12.i.us = select i1 %i.bl, float %i.bk, float %.1183.i.11.i.us ; 2 uses
  %i.bm = extractelement <16 x float> %i.y, i64 13 ; 2 uses
  %i.bn = tail call float @llvm.fabs.f32(float %i.bm) ; 2 uses
  %i.bo = fcmp ogt float %i.bn, %.1183.i.12.i.us  ; 2 uses
  %.1185.i.13.i.us = select i1 %i.bo, float %i.bm, float %.1185.i.12.i.us
  %.1183.i.13.i.us = select i1 %i.bo, float %i.bn, float %.1183.i.12.i.us ; 2 uses
  %i.bp = extractelement <16 x float> %i.y, i64 14 ; 2 uses
  %i.bq = tail call float @llvm.fabs.f32(float %i.bp) ; 2 uses
  %i.br = fcmp ogt float %i.bq, %.1183.i.13.i.us  ; 2 uses
  %.1185.i.14.i.us = select i1 %i.br, float %i.bp, float %.1185.i.13.i.us
  %.1183.i.14.i.us = select i1 %i.br, float %i.bq, float %.1183.i.13.i.us ; 2 uses
  %i.bs = extractelement <16 x float> %i.y, i64 15 ; 2 uses
  %i.bt = tail call float @llvm.fabs.f32(float %i.bs) ; 2 uses
  %i.bu = fcmp ogt float %i.bt, %.1183.i.14.i.us  ; 2 uses
  %.1185.i.15.i.us = select i1 %i.bu, float %i.bs, float %.1185.i.14.i.us ; 2 uses
  %.1183.i.15.i.us = select i1 %i.bu, float %i.bt, float %.1183.i.14.i.us
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.w ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.w ; 3 uses
  %i.bx = fcmp olt float %.1183.i.15.i.us, 1.000000e-15
  br i1 %i.bx, label %.preheader.preheader.i.i.us, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.by = fdiv float 3.200000e+01, %.1185.i.15.i.us
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %indvars.iv231.i.i.us = phi i64 [ 0, %bb.c ], [ %indvars.iv.next232.i.i.us, %bb.d ] ; 4 uses
  %i.bz = phi <2 x float> [ zeroinitializer, %bb.c ], [ %i.cu, %bb.d ]
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv231.i.i.us
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !36, !alias.scope !373 ; 2 uses
  %i.cc = fmul float %i.by, %i.cb
  %i.cd = fsub float f0x4B400000, %i.cc
  %i.ce = bitcast float %i.cd to i32
  %i.cf = and i32 %i.ce, 8388607
  %i.cg = tail call i32 @llvm.umax.i32(i32 %i.cf, i32 4194272)
  %i.ch = tail call i32 @llvm.umin.i32(i32 %i.cg, i32 4194335) ; 2 uses
  %..i.i.us = add nsw i32 %i.ch, -4194304
  %i.ci = trunc i32 %i.ch to i8
  %i.cj = add nsw i8 %i.ci, 32
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bw, i64 %indvars.iv231.i.i.us
  store i8 %i.cj, ptr %i.ck, align 1, !tbaa !34, !alias.scope !371, !noalias !369
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %indvars.iv231.i.i.us
  %i.cm = load float, ptr %i.cl, align 4, !tbaa !36, !alias.scope !372, !noalias !369
  %i.cn = sitofp i32 %..i.i.us to float
  %i.co = insertelement <2 x float> poison, float %i.cm, i64 0
  %i.cp = shufflevector <2 x float> %i.co, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cq = insertelement <2 x float> poison, float %i.cn, i64 0 ; 2 uses
  %i.cr = insertelement <2 x float> %i.cq, float %i.cb, i64 1
  %i.cs = fmul <2 x float> %i.cp, %i.cr
  %i.ct = shufflevector <2 x float> %i.cq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cu = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cs, <2 x float> %i.ct, <2 x float> %i.bz) ; 3 uses
  %indvars.iv.next232.i.i.us = add nuw nsw i64 %indvars.iv231.i.i.us, 1 ; 2 uses
  %exitcond235.not.i.i.us = icmp eq i64 %indvars.iv.next232.i.i.us, 16
  br i1 %exitcond235.not.i.i.us, label %bb.e, label %bb.d, !llvm.loop !12

bb.e:                                             ; preds = %bb.d
  %i.cv = extractelement <2 x float> %i.cu, i64 0 ; 2 uses
  %i.cw = fcmp une float %i.cv, 0.000000e+00
  %i.cx = extractelement <2 x float> %i.cu, i64 1 ; 2 uses
  %i.cy = fdiv float %i.cx, %i.cv
  %i.cz = select i1 %i.cw, float %i.cy, float 0.000000e+00 ; 2 uses
  %i.da = fmul float %i.cx, %i.cz
  br label %bb.f

bb.f:                                             ; preds = %bb.i, %bb.e
  %.0169221.i.i.us = phi i32 [ -9, %bb.e ], [ %i.er, %bb.i ] ; 3 uses
  %.0170220.i.i.us = phi float [ %i.da, %bb.e ], [ %.1.i.i.us, %bb.i ] ; 4 uses
  %.0171219.i.i.us = phi float [ %i.cz, %bb.e ], [ %.1172.i.i.us, %bb.i ] ; 3 uses
  %i.db = icmp eq i32 %.0169221.i.i.us, 0
  br i1 %i.db, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.dc = sitofp i32 %.0169221.i.i.us to float
  %i.dd = tail call float @llvm.fmuladd.f32(float %i.dc, float 1.000000e-01, float 3.200000e+01)
  %i.de = fneg float %i.dd
  %i.df = fdiv float %i.de, %.1185.i.15.i.us      ; 2 uses
  br label %.split.i.i.us

.split.i.i.us:                                    ; preds = %.split.i.i.us, %bb.g
  %indvars.iv236.i.i.us = phi i64 [ %indvars.iv.next237.i.i.us, %.split.i.i.us ], [ 0, %bb.g ] ; 3 uses
  %i.dg = phi <2 x float> [ %i.dy, %.split.i.i.us ], [ zeroinitializer, %bb.g ]
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv236.i.i.us
  %i.di = load float, ptr %i.dh, align 4, !tbaa !36, !alias.scope !373 ; 2 uses
  %i.dj = fmul float %i.df, %i.di
  %i.dk = fadd float %i.dj, f0x4B400000
  %i.dl = bitcast float %i.dk to i32
  %i.dm = and i32 %i.dl, 8388607
  %i.dn = tail call i32 @llvm.umax.i32(i32 %i.dm, i32 4194272)
  %i.do = tail call i32 @llvm.umin.i32(i32 %i.dn, i32 4194335)
  %.202.i.i.us = add nsw i32 %i.do, -4194304
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %indvars.iv236.i.i.us
  %i.dq = load float, ptr %i.dp, align 4, !tbaa !36, !alias.scope !372, !noalias !369
  %i.dr = sitofp i32 %.202.i.i.us to float
  %i.ds = insertelement <2 x float> poison, float %i.dq, i64 0
  %i.dt = shufflevector <2 x float> %i.ds, <2 x float> poison, <2 x i32> zeroinitializer
  %i.du = insertelement <2 x float> poison, float %i.dr, i64 0 ; 2 uses
  %i.dv = insertelement <2 x float> %i.du, float %i.di, i64 1
  %i.dw = fmul <2 x float> %i.dt, %i.dv
  %i.dx = shufflevector <2 x float> %i.du, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dy = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dw, <2 x float> %i.dx, <2 x float> %i.dg) ; 3 uses
  %indvars.iv.next237.i.i.us = add nuw nsw i64 %indvars.iv236.i.i.us, 1 ; 2 uses
  %exitcond240.not.i.i.us = icmp eq i64 %indvars.iv.next237.i.i.us, 16
  br i1 %exitcond240.not.i.i.us, label %.split216.us.i.i.us, label %.split.i.i.us, !llvm.loop !13

.split216.us.i.i.us:                              ; preds = %.split.i.i.us
  %i.dz = extractelement <2 x float> %i.dy, i64 0 ; 3 uses
  %i.ea = fcmp ogt float %i.dz, 0.000000e+00
  br i1 %i.ea, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.split216.us.i.i.us
  %i.eb = extractelement <2 x float> %i.dy, i64 1 ; 4 uses
  %i.ec = fmul float %i.eb, %i.eb
  %i.ed = fmul float %.0170220.i.i.us, %i.dz
  %i.ee = fcmp ogt float %i.ec, %i.ed
  br i1 %i.ee, label %.preheader204.i.preheader.i.us, label %bb.i

.preheader204.i.preheader.i.us:                   ; preds = %bb.h
  %i.ef = insertelement <16 x float> poison, float %i.df, i64 0
  %i.eg = shufflevector <16 x float> %i.ef, <16 x float> poison, <16 x i32> zeroinitializer
  %i.eh = fmul <16 x float> %i.y, %i.eg
  %i.ei = fadd <16 x float> %i.eh, splat (float f0x4B400000)
  %i.ej = bitcast <16 x float> %i.ei to <16 x i32>
  %i.ek = and <16 x i32> %i.ej, splat (i32 8388607)
  %i.el = tail call <16 x i32> @llvm.umax.v16i32(<16 x i32> %i.ek, <16 x i32> splat (i32 4194272))
  %i.em = tail call <16 x i32> @llvm.umin.v16i32(<16 x i32> %i.el, <16 x i32> splat (i32 4194335))
  %i.en = trunc <16 x i32> %i.em to <16 x i8>
  %i.eo = add nsw <16 x i8> %i.en, splat (i8 32)
  store <16 x i8> %i.eo, ptr %i.bw, align 16, !tbaa !34, !alias.scope !371, !noalias !369
  %i.ep = fdiv float %i.eb, %i.dz                 ; 2 uses
  %i.eq = fmul float %i.eb, %i.ep
  br label %bb.i

bb.i:                                             ; preds = %.preheader204.i.preheader.i.us, %bb.h, %.split216.us.i.i.us, %bb.f
  %.1172.i.i.us = phi float [ %.0171219.i.i.us, %bb.f ], [ %i.ep, %.preheader204.i.preheader.i.us ], [ %.0171219.i.i.us, %bb.h ], [ %.0171219.i.i.us, %.split216.us.i.i.us ] ; 2 uses
  %.1.i.i.us = phi float [ %.0170220.i.i.us, %bb.f ], [ %i.eq, %.preheader204.i.preheader.i.us ], [ %.0170220.i.i.us, %bb.h ], [ %.0170220.i.i.us, %.split216.us.i.i.us ]
  %i.er = add nsw i32 %.0169221.i.i.us, 1         ; 2 uses
  %exitcond251.not.i.i.us = icmp eq i32 %i.er, 10
  br i1 %exitcond251.not.i.i.us, label %make_qx_quants.exit.i.us, label %bb.f, !llvm.loop !14

.preheader.preheader.i.i.us:                      ; preds = %bb.b
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.bw, i8 0, i64 range(i64 0, 33) 16, i1 false), !tbaa !34, !alias.scope !371, !noalias !369
  br label %make_qx_quants.exit.i.us

make_qx_quants.exit.i.us:                         ; preds = %bb.i, %.preheader.preheader.i.i.us
  %.2.i.i.us = phi float [ 0.000000e+00, %.preheader.preheader.i.i.us ], [ %.1172.i.i.us, %bb.i ] ; 3 uses
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.i.us
  store float %.2.i.i.us, ptr %i.es, align 4, !tbaa !36, !noalias !369
  %i.et = tail call float @llvm.fabs.f32(float %.2.i.i.us) ; 2 uses
  %i.eu = fcmp ogt float %i.et, %.0110126.i.us    ; 2 uses
  %.1111.i.us = select i1 %i.eu, float %i.et, float %.0110126.i.us ; 2 uses
  %.1106.i.us = select i1 %i.eu, float %.2.i.i.us, float %.0105127.i.us ; 2 uses
  %indvars.iv.next.i.us = add nuw nsw i64 %indvars.iv.i.us, 1 ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %indvars.iv.next.i.us, 16
  br i1 %exitcond.not.i.us, label %bb.j, label %bb.b, !llvm.loop !363

bb.j:                                             ; preds = %make_qx_quants.exit.i.us
  %i.ev = fcmp olt float %.1111.i.us, 1.000000e-15
  br i1 %i.ev, label %bb.l, label %.preheader120.i.us

.preheader120.i.us:                               ; preds = %bb.j
  %i.ew = fdiv float -1.280000e+02, %.1106.i.us   ; 2 uses
  %i.ex = fdiv float 1.000000e+00, %i.ew          ; 2 uses
  %i.ey = tail call float @llvm.fabs.f32(float %i.ex)
  %i.ez = fmul float %i.ey, f0x77800000
  %i.fa = fmul float %i.ez, f0x08800000
  %i.fb = bitcast float %i.ex to i32              ; 2 uses
  %i.fc = shl i32 %i.fb, 1                        ; 2 uses
  %i.fd = tail call i32 @llvm.umax.i32(i32 %i.fc, i32 1895825408)
  %spec.store.select.i.i.us = lshr exact i32 %i.fd, 1
  %i.fe = and i32 %spec.store.select.i.i.us, 2139095040
  %i.ff = add nuw i32 %i.fe, 125829120
  %i.fg = bitcast i32 %i.ff to float
  %i.fh = fadd float %i.fa, %i.fg
  %i.fi = bitcast float %i.fh to i32              ; 2 uses
  %i.fj = lshr i32 %i.fi, 13
  %i.fk = and i32 %i.fj, 31744
  %i.fl = and i32 %i.fi, 4095
  %i.fm = add nuw nsw i32 %i.fk, %i.fl
  %i.fn = lshr i32 %i.fb, 16
  %i.fo = and i32 %i.fn, 32768
  %i.fp = icmp ugt i32 %i.fc, -16777216
  %i.fq = select i1 %i.fp, i32 32256, i32 %i.fm   ; 3 uses
  %i.fr = or i32 %i.fq, %i.fo                     ; 2 uses
  %i.fs = trunc nuw i32 %i.fr to i16
  %i.ft = getelementptr inbounds nuw [210 x i8], ptr %.01926.us, i64 %indvars.iv160.i.us ; 14 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 208
  store i16 %i.fs, ptr %i.fu, align 2, !tbaa !50, !alias.scope !368
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ft, i64 192 ; 2 uses
  %i.fw = load <16 x float>, ptr %i.b, align 16, !tbaa !36, !noalias !369
  %i.fx = insertelement <16 x float> poison, float %i.ew, i64 0
  %i.fy = shufflevector <16 x float> %i.fx, <16 x float> poison, <16 x i32> zeroinitializer
  %i.fz = fmul <16 x float> %i.fy, %i.fw
  %i.ga = fadd <16 x float> %i.fz, splat (float f0x4B400000)
  %i.gb = bitcast <16 x float> %i.ga to <16 x i32> ; 2 uses
  %i.gc = and <16 x i32> %i.gb, splat (i32 8388480)
  %i.gd = icmp samesign ugt <16 x i32> %i.gc, splat (i32 4194431)
  %i.ge = trunc <16 x i32> %i.gb to <16 x i8>
  %i.gf = select <16 x i1> %i.gd, <16 x i8> splat (i8 127), <16 x i8> %i.ge
  store <16 x i8> %i.gf, ptr %i.fv, align 2, !tbaa !34, !alias.scope !368
  %i.gg = shl i32 %i.fq, 17                       ; 2 uses
  %i.gh = lshr exact i32 %i.gg, 4
  %i.gi = or disjoint i32 %i.gh, 1879048192
  %i.gj = bitcast i32 %i.gi to float
  %i.gk = and i32 %i.fq, 32767
  %i.gl = or disjoint i32 %i.gk, 1056964608
  %i.gm = bitcast i32 %i.gl to float
  %i.gn = icmp ult i32 %i.gg, 134217728
  %i.go = fadd float %i.gm, -5.000000e-01
  %i.gp = fmul float %i.gj, 1.925930e-34
  %.v.i.i.us = select i1 %i.gn, float %i.go, float %i.gp
  %i.gq = bitcast float %.v.i.i.us to i32
  %sext.us = shl nuw i32 %i.fr, 16
  %i.gr = and i32 %sext.us, -2147483648
  %i.gs = or i32 %i.gr, %i.gq
  %i.gt = bitcast i32 %i.gs to float
  br label %bb.k

bb.k:                                             ; preds = %.loopexit.i.us, %.preheader120.i.us
  %indvars.iv149.i.us = phi i64 [ 0, %.preheader120.i.us ], [ %indvars.iv.next150.i.us, %.loopexit.i.us ] ; 3 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.fv, i64 %indvars.iv149.i.us
  %i.gv = load i8, ptr %i.gu, align 1, !tbaa !34, !alias.scope !368
  %i.gw = sitofp i8 %i.gv to float
  %i.gx = fmul float %i.gt, %i.gw                 ; 2 uses
  %i.gy = fcmp une float %i.gx, 0.000000e+00
  br i1 %i.gy, label %.preheader118.i.us, label %.loopexit.i.us

.preheader118.i.us:                               ; preds = %bb.k
  %i.gz = shl nuw nsw i64 %indvars.iv149.i.us, 4  ; 2 uses
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %.0136.i.us, i64 %i.gz
  %i.hb = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.gz
  %i.hc = load <16 x float>, ptr %i.ha, align 4, !tbaa !36, !alias.scope !367
  %i.hd = insertelement <16 x float> poison, float %i.gx, i64 0
  %i.he = shufflevector <16 x float> %i.hd, <16 x float> poison, <16 x i32> zeroinitializer
  %i.hf = fdiv <16 x float> %i.hc, %i.he
  %i.hg = fadd <16 x float> %i.hf, splat (float f0x4B400000)
  %i.hh = bitcast <16 x float> %i.hg to <16 x i32>
  %i.hi = and <16 x i32> %i.hh, splat (i32 8388607)
  %i.hj = tail call <16 x i32> @llvm.umax.v16i32(<16 x i32> %i.hi, <16 x i32> splat (i32 4194272))
  %i.hk = tail call <16 x i32> @llvm.umin.v16i32(<16 x i32> %i.hj, <16 x i32> splat (i32 4194335))
  %i.hl = trunc <16 x i32> %i.hk to <16 x i8>
  %i.hm = add nsw <16 x i8> %i.hl, splat (i8 32)
  store <16 x i8> %i.hm, ptr %i.hb, align 16, !tbaa !34, !noalias !369
  br label %.loopexit.i.us

.loopexit.i.us:                                   ; preds = %.preheader118.i.us, %bb.k
  %indvars.iv.next150.i.us = add nuw nsw i64 %indvars.iv149.i.us, 1 ; 2 uses
  %exitcond152.not.i.us = icmp eq i64 %indvars.iv.next150.i.us, 16
  br i1 %exitcond152.not.i.us, label %vector.body48, label %bb.k, !llvm.loop !364

vector.body48:                                    ; preds = %.loopexit.i.us
  %i.hn = getelementptr inbounds nuw i8, ptr %i.ft, i64 128
  %wide.load50 = load <16 x i8>, ptr %i.a, align 16, !tbaa !34, !noalias !369 ; 2 uses
  %i.ho = and <16 x i8> %wide.load50, splat (i8 15)
  %wide.load51 = load <16 x i8>, ptr %i.g, align 16, !tbaa !34, !noalias !369 ; 2 uses
  %i.hp = and <16 x i8> %wide.load51, splat (i8 15)
  %wide.load52 = load <16 x i8>, ptr %i.h, align 16, !tbaa !34, !noalias !369 ; 2 uses
  %wide.load53 = load <16 x i8>, ptr %i.i, align 16, !tbaa !34, !noalias !369 ; 2 uses
  %i.hq = shl <16 x i8> %wide.load52, splat (i8 4)
  %i.hr = or disjoint <16 x i8> %i.hq, %i.ho
  store <16 x i8> %i.hr, ptr %i.ft, align 2, !tbaa !34, !alias.scope !368
  %i.hs = shl <16 x i8> %wide.load53, splat (i8 4)
  %i.ht = or disjoint <16 x i8> %i.hs, %i.hp
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ft, i64 32
  store <16 x i8> %i.ht, ptr %i.hu, align 2, !tbaa !34, !alias.scope !368
  %i.hv = ashr <16 x i8> %wide.load50, splat (i8 4)
  %i.hw = ashr <16 x i8> %wide.load51, splat (i8 2)
  %i.hx = and <16 x i8> %i.hw, splat (i8 -4)
  %i.hy = or <16 x i8> %i.hx, %i.hv
  %i.hz = and <16 x i8> %wide.load52, splat (i8 -16)
  %i.ia = or <16 x i8> %i.hy, %i.hz
  %i.ib = shl <16 x i8> %wide.load53, splat (i8 2)
  %i.ic = and <16 x i8> %i.ib, splat (i8 -64)
  %i.id = or <16 x i8> %i.ia, %i.ic
  store <16 x i8> %i.id, ptr %i.hn, align 2, !tbaa !34, !alias.scope !368
  %wide.load50.1 = load <16 x i8>, ptr %i.j, align 16, !tbaa !34, !noalias !369 ; 2 uses
  %i.ie = and <16 x i8> %wide.load50.1, splat (i8 15)
  %wide.load51.1 = load <16 x i8>, ptr %i.k, align 16, !tbaa !34, !noalias !369 ; 2 uses
  %i.if = and <16 x i8> %wide.load51.1, splat (i8 15)
  %wide.load52.1 = load <16 x i8>, ptr %i.l, align 16, !tbaa !34, !noalias !369 ; 2 uses
  %wide.load53.1 = load <16 x i8>, ptr %i.m, align 16, !tbaa !34, !noalias !369 ; 2 uses
  %i.ig = shl <16 x i8> %wide.load52.1, splat (i8 4)
  %i.ih = or disjoint <16 x i8> %i.ig, %i.ie
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ft, i64 16
  store <16 x i8> %i.ih, ptr %i.ii, align 2, !tbaa !34, !alias.scope !368
  %i.ij = shl <16 x i8> %wide.load53.1, splat (i8 4)
  %i.ik = or disjoint <16 x i8> %i.ij, %i.if
  %i.il = getelementptr inbounds nuw i8, ptr %i.ft, i64 48
  store <16 x i8> %i.ik, ptr %i.il, align 2, !tbaa !34, !alias.scope !368
  %i.im = ashr <16 x i8> %wide.load50.1, splat (i8 4)
  %i.in = ashr <16 x i8> %wide.load51.1, splat (i8 2)
  %i.io = and <16 x i8> %i.in, splat (i8 -4)
  %i.ip = or <16 x i8> %i.io, %i.im
  %i.iq = and <16 x i8> %wide.load52.1, splat (i8 -16)
  %i.ir = or <16 x i8> %i.ip, %i.iq
  %i.is = shl <16 x i8> %wide.load53.1, splat (i8 2)
  %i.it = and <16 x i8> %i.is, splat (i8 -64)
  %i.iu = or <16 x i8> %i.ir, %i.it
  %i.iv = getelementptr inbounds nuw i8, ptr %i.ft, i64 144
  store <16 x i8> %i.iu, ptr %i.iv, align 2, !tbaa !34, !alias.scope !368
  %i.iw = getelementptr inbounds nuw i8, ptr %i.ft, i64 160
  %i.ix = getelementptr inbounds nuw i8, ptr %i.ft, i64 64
  %wide.load = load <16 x i8>, ptr %i.n, align 16, !tbaa !34, !noalias !369 ; 2 uses
  %i.iy = and <16 x i8> %wide.load, splat (i8 15)
  %wide.load44 = load <16 x i8>, ptr %i.o, align 16, !tbaa !34, !noalias !369 ; 2 uses
  %i.iz = and <16 x i8> %wide.load44, splat (i8 15)
  %wide.load45 = load <16 x i8>, ptr %i.p, align 16, !tbaa !34, !noalias !369 ; 2 uses
  %wide.load46 = load <16 x i8>, ptr %i.q, align 16, !tbaa !34, !noalias !369 ; 2 uses
  %i.ja = shl <16 x i8> %wide.load45, splat (i8 4)
  %i.jb = or disjoint <16 x i8> %i.ja, %i.iy
  store <16 x i8> %i.jb, ptr %i.ix, align 2, !tbaa !34, !alias.scope !368
  %i.jc = shl <16 x i8> %wide.load46, splat (i8 4)
  %i.jd = or disjoint <16 x i8> %i.jc, %i.iz
  %i.je = getelementptr inbounds nuw i8, ptr %i.ft, i64 96
  store <16 x i8> %i.jd, ptr %i.je, align 2, !tbaa !34, !alias.scope !368
  %i.jf = ashr <16 x i8> %wide.load, splat (i8 4)
  %i.jg = ashr <16 x i8> %wide.load44, splat (i8 2)
  %i.jh = and <16 x i8> %i.jg, splat (i8 -4)
  %i.ji = or <16 x i8> %i.jh, %i.jf
  %i.jj = and <16 x i8> %wide.load45, splat (i8 -16)
  %i.jk = or <16 x i8> %i.ji, %i.jj
  %i.jl = shl <16 x i8> %wide.load46, splat (i8 2)
  %i.jm = and <16 x i8> %i.jl, splat (i8 -64)
  %i.jn = or <16 x i8> %i.jk, %i.jm
  store <16 x i8> %i.jn, ptr %i.iw, align 2, !tbaa !34, !alias.scope !368
  %wide.load.1 = load <16 x i8>, ptr %i.r, align 16, !tbaa !34, !noalias !369 ; 2 uses
  %i.jo = and <16 x i8> %wide.load.1, splat (i8 15)
  %wide.load44.1 = load <16 x i8>, ptr %i.s, align 16, !tbaa !34, !noalias !369 ; 2 uses
  %i.jp = and <16 x i8> %wide.load44.1, splat (i8 15)
  %wide.load45.1 = load <16 x i8>, ptr %i.t, align 16, !tbaa !34, !noalias !369 ; 2 uses
  %wide.load46.1 = load <16 x i8>, ptr %i.u, align 16, !tbaa !34, !noalias !369 ; 2 uses
  %i.jq = shl <16 x i8> %wide.load45.1, splat (i8 4)
  %i.jr = or disjoint <16 x i8> %i.jq, %i.jo
  %i.js = getelementptr inbounds nuw i8, ptr %i.ft, i64 80
  store <16 x i8> %i.jr, ptr %i.js, align 2, !tbaa !34, !alias.scope !368
  %i.jt = shl <16 x i8> %wide.load46.1, splat (i8 4)
  %i.ju = or disjoint <16 x i8> %i.jt, %i.jp
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ft, i64 112
  store <16 x i8> %i.ju, ptr %i.jv, align 2, !tbaa !34, !alias.scope !368
  %i.jw = ashr <16 x i8> %wide.load.1, splat (i8 4)
  %i.jx = ashr <16 x i8> %wide.load44.1, splat (i8 2)
  %i.jy = and <16 x i8> %i.jx, splat (i8 -4)
end_hunk_8
begin_hunk_9_@quantize_q4_0:bb.a
  %i.iv = tail call i32 @llvm.umax.i32(i32 %i.iu, i32 4194296)
  %i.iw = tail call i32 @llvm.umin.i32(i32 %i.iv, i32 4194311) ; 2 uses
  %..i.us.us = add nsw i32 %i.iw, -4194304
  %i.ix = trunc i32 %i.iw to i8
  %i.iy = add nsw i8 %i.ix, 8
  %i.iz = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv231.i.us.us
  store i8 %i.iy, ptr %i.iz, align 1, !tbaa !34, !alias.scope !411, !noalias !408
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv231.i.us.us
  %i.jb = load float, ptr %i.ja, align 4, !tbaa !36, !alias.scope !412, !noalias !408
  %i.jc = sitofp i32 %..i.us.us to float
  %i.jd = insertelement <2 x float> poison, float %i.jb, i64 0
  %i.je = shufflevector <2 x float> %i.jd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jf = insertelement <2 x float> poison, float %i.jc, i64 0 ; 2 uses
  %i.jg = insertelement <2 x float> %i.jf, float %i.iq, i64 1
  %i.jh = fmul <2 x float> %i.je, %i.jg
  %i.ji = shufflevector <2 x float> %i.jf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jh, <2 x float> %i.ji, <2 x float> %i.io) ; 3 uses
  %indvars.iv.next232.i.us.us = add nuw nsw i64 %indvars.iv231.i.us.us, 1 ; 2 uses
  %exitcond235.not.i.us.us = icmp eq i64 %indvars.iv.next232.i.us.us, 32
  br i1 %exitcond235.not.i.us.us, label %bb.h, label %bb.g, !llvm.loop !12

bb.h:                                             ; preds = %bb.g
  %i.jk = extractelement <2 x float> %i.jj, i64 0 ; 2 uses
  %i.jl = fcmp une float %i.jk, 0.000000e+00
  %i.jm = extractelement <2 x float> %i.jj, i64 1 ; 2 uses
  %i.jn = fdiv float %i.jm, %i.jk
  %i.jo = select i1 %i.jl, float %i.jn, float 0.000000e+00 ; 2 uses
  %i.jp = fmul float %i.jm, %i.jo
  %i.jq = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.jr = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  %i.js = getelementptr inbounds nuw i8, ptr %i.bb, i64 48
  %i.jt = getelementptr inbounds nuw i8, ptr %i.bb, i64 64
  %i.ju = getelementptr inbounds nuw i8, ptr %i.bb, i64 80
  %i.jv = getelementptr inbounds nuw i8, ptr %i.bb, i64 96
  %i.jw = getelementptr inbounds nuw i8, ptr %i.bb, i64 112
  %.promoted = load <4 x i8>, ptr %i.b, align 1
  %.promoted94 = load <4 x i8>, ptr %i.aa, align 1
  %.promoted96 = load <4 x i8>, ptr %i.ab, align 1
  %.promoted98 = load <4 x i8>, ptr %i.ac, align 1
  %.promoted100 = load <4 x i8>, ptr %i.ad, align 1
  %.promoted102 = load <4 x i8>, ptr %i.ae, align 1
  %.promoted104 = load <4 x i8>, ptr %i.af, align 1
  %.promoted106 = load <4 x i8>, ptr %i.ag, align 1
  br label %bb.i

bb.i:                                             ; preds = %bb.l, %bb.h
  %i.jx = phi <4 x i8> [ %.promoted106, %bb.h ], [ %i.nx, %bb.l ] ; 3 uses
  %i.jy = phi <4 x i8> [ %.promoted104, %bb.h ], [ %i.ny, %bb.l ] ; 3 uses
  %i.jz = phi <4 x i8> [ %.promoted102, %bb.h ], [ %i.nz, %bb.l ] ; 3 uses
  %i.ka = phi <4 x i8> [ %.promoted100, %bb.h ], [ %i.oa, %bb.l ] ; 3 uses
  %i.kb = phi <4 x i8> [ %.promoted98, %bb.h ], [ %i.ob, %bb.l ] ; 3 uses
  %i.kc = phi <4 x i8> [ %.promoted96, %bb.h ], [ %i.oc, %bb.l ] ; 3 uses
  %i.kd = phi <4 x i8> [ %.promoted94, %bb.h ], [ %i.od, %bb.l ] ; 3 uses
  %i.ke = phi <4 x i8> [ %.promoted, %bb.h ], [ %i.oe, %bb.l ] ; 3 uses
  %.0169221.i.us.us = phi i32 [ -9, %bb.h ], [ %i.of, %bb.l ] ; 3 uses
  %.0170220.i.us.us = phi float [ %i.jp, %bb.h ], [ %.1.i.us.us, %bb.l ] ; 4 uses
  %.0171219.i.us.us = phi float [ %i.jo, %bb.h ], [ %.1172.i.us.us, %bb.l ] ; 3 uses
  %i.kf = icmp eq i32 %.0169221.i.us.us, 0
  br i1 %i.kf, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.kg = sitofp i32 %.0169221.i.us.us to float
  %i.kh = tail call float @llvm.fmuladd.f32(float %i.kg, float 1.000000e-01, float 8.000000e+00)
  %i.ki = fneg float %i.kh
  %i.kj = fdiv float %i.ki, %.1185.i.us.us.1      ; 2 uses
  br label %.split.i.us.us

.split.i.us.us:                                   ; preds = %.split.i.us.us, %bb.j
  %indvars.iv236.i.us.us = phi i64 [ %indvars.iv.next237.i.us.us, %.split.i.us.us ], [ 0, %bb.j ] ; 3 uses
  %i.kk = phi <2 x float> [ %i.lc, %.split.i.us.us ], [ zeroinitializer, %bb.j ]
  %i.kl = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %indvars.iv236.i.us.us
  %i.km = load float, ptr %i.kl, align 4, !tbaa !36, !alias.scope !410, !noalias !408 ; 2 uses
  %i.kn = fmul float %i.kj, %i.km
  %i.ko = fadd float %i.kn, f0x4B400000
  %i.kp = bitcast float %i.ko to i32
  %i.kq = and i32 %i.kp, 8388607
  %i.kr = tail call i32 @llvm.umax.i32(i32 %i.kq, i32 4194296)
  %i.ks = tail call i32 @llvm.umin.i32(i32 %i.kr, i32 4194311)
  %.202.i.us.us = add nsw i32 %i.ks, -4194304
  %i.kt = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv236.i.us.us
  %i.ku = load float, ptr %i.kt, align 4, !tbaa !36, !alias.scope !412, !noalias !408
  %i.kv = sitofp i32 %.202.i.us.us to float
  %i.kw = insertelement <2 x float> poison, float %i.ku, i64 0
  %i.kx = shufflevector <2 x float> %i.kw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ky = insertelement <2 x float> poison, float %i.kv, i64 0 ; 2 uses
  %i.kz = insertelement <2 x float> %i.ky, float %i.km, i64 1
  %i.la = fmul <2 x float> %i.kx, %i.kz
  %i.lb = shufflevector <2 x float> %i.ky, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.la, <2 x float> %i.lb, <2 x float> %i.kk) ; 3 uses
  %indvars.iv.next237.i.us.us = add nuw nsw i64 %indvars.iv236.i.us.us, 1 ; 2 uses
  %exitcond240.not.i.us.us = icmp eq i64 %indvars.iv.next237.i.us.us, 32
  br i1 %exitcond240.not.i.us.us, label %.split216.us.i.us.us, label %.split.i.us.us, !llvm.loop !13

.split216.us.i.us.us:                             ; preds = %.split.i.us.us
  %i.ld = extractelement <2 x float> %i.lc, i64 0 ; 3 uses
  %i.le = fcmp ogt float %i.ld, 0.000000e+00
  br i1 %i.le, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.split216.us.i.us.us
  %i.lf = extractelement <2 x float> %i.lc, i64 1 ; 4 uses
  %i.lg = fmul float %i.lf, %i.lf
  %i.lh = fmul float %.0170220.i.us.us, %i.ld
  %i.li = fcmp ogt float %i.lg, %i.lh
  br i1 %i.li, label %vector.body, label %bb.l

vector.body:                                      ; preds = %bb.k
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.kj, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 8 uses
  %wide.load = load <4 x float>, ptr %i.bb, align 4, !tbaa !36, !alias.scope !410, !noalias !408
  %wide.load84 = load <4 x float>, ptr %i.jq, align 4, !tbaa !36, !alias.scope !410, !noalias !408
  %i.lj = fmul <4 x float> %broadcast.splat, %wide.load
  %i.lk = fmul <4 x float> %broadcast.splat, %wide.load84
  %i.ll = fadd <4 x float> %i.lj, splat (float f0x4B400000)
  %i.lm = fadd <4 x float> %i.lk, splat (float f0x4B400000)
  %i.ln = bitcast <4 x float> %i.ll to <4 x i32>
  %i.lo = bitcast <4 x float> %i.lm to <4 x i32>
  %i.lp = and <4 x i32> %i.ln, splat (i32 8388607)
  %i.lq = and <4 x i32> %i.lo, splat (i32 8388607)
  %i.lr = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %i.lp, <4 x i32> splat (i32 4194296))
  %i.ls = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %i.lq, <4 x i32> splat (i32 4194296))
  %i.lt = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.lr, <4 x i32> splat (i32 4194311))
  %i.lu = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.ls, <4 x i32> splat (i32 4194311))
  %i.lv = trunc <4 x i32> %i.lt to <4 x i8>
  %i.lw = trunc <4 x i32> %i.lu to <4 x i8>
  %i.lx = add nsw <4 x i8> %i.lv, splat (i8 8)
  %i.ly = add nsw <4 x i8> %i.lw, splat (i8 8)
  %wide.load.1 = load <4 x float>, ptr %i.jr, align 4, !tbaa !36, !alias.scope !410, !noalias !408
  %wide.load84.1 = load <4 x float>, ptr %i.js, align 4, !tbaa !36, !alias.scope !410, !noalias !408
  %i.lz = fmul <4 x float> %broadcast.splat, %wide.load.1
  %i.ma = fmul <4 x float> %broadcast.splat, %wide.load84.1
  %i.mb = fadd <4 x float> %i.lz, splat (float f0x4B400000)
  %i.mc = fadd <4 x float> %i.ma, splat (float f0x4B400000)
  %i.md = bitcast <4 x float> %i.mb to <4 x i32>
  %i.me = bitcast <4 x float> %i.mc to <4 x i32>
  %i.mf = and <4 x i32> %i.md, splat (i32 8388607)
  %i.mg = and <4 x i32> %i.me, splat (i32 8388607)
  %i.mh = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %i.mf, <4 x i32> splat (i32 4194296))
  %i.mi = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %i.mg, <4 x i32> splat (i32 4194296))
  %i.mj = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.mh, <4 x i32> splat (i32 4194311))
  %i.mk = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.mi, <4 x i32> splat (i32 4194311))
  %i.ml = trunc <4 x i32> %i.mj to <4 x i8>
  %i.mm = trunc <4 x i32> %i.mk to <4 x i8>
  %i.mn = add nsw <4 x i8> %i.ml, splat (i8 8)
  %i.mo = add nsw <4 x i8> %i.mm, splat (i8 8)
  %wide.load.2 = load <4 x float>, ptr %i.jt, align 4, !tbaa !36, !alias.scope !410, !noalias !408
  %wide.load84.2 = load <4 x float>, ptr %i.ju, align 4, !tbaa !36, !alias.scope !410, !noalias !408
  %i.mp = fmul <4 x float> %broadcast.splat, %wide.load.2
  %i.mq = fmul <4 x float> %broadcast.splat, %wide.load84.2
  %i.mr = fadd <4 x float> %i.mp, splat (float f0x4B400000)
  %i.ms = fadd <4 x float> %i.mq, splat (float f0x4B400000)
  %i.mt = bitcast <4 x float> %i.mr to <4 x i32>
  %i.mu = bitcast <4 x float> %i.ms to <4 x i32>
  %i.mv = and <4 x i32> %i.mt, splat (i32 8388607)
  %i.mw = and <4 x i32> %i.mu, splat (i32 8388607)
  %i.mx = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %i.mv, <4 x i32> splat (i32 4194296))
  %i.my = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %i.mw, <4 x i32> splat (i32 4194296))
  %i.mz = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.mx, <4 x i32> splat (i32 4194311))
  %i.na = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.my, <4 x i32> splat (i32 4194311))
  %i.nb = trunc <4 x i32> %i.mz to <4 x i8>
  %i.nc = trunc <4 x i32> %i.na to <4 x i8>
  %i.nd = add nsw <4 x i8> %i.nb, splat (i8 8)
  %i.ne = add nsw <4 x i8> %i.nc, splat (i8 8)
  %wide.load.3 = load <4 x float>, ptr %i.jv, align 4, !tbaa !36, !alias.scope !410, !noalias !408
  %wide.load84.3 = load <4 x float>, ptr %i.jw, align 4, !tbaa !36, !alias.scope !410, !noalias !408
  %i.nf = fmul <4 x float> %broadcast.splat, %wide.load.3
  %i.ng = fmul <4 x float> %broadcast.splat, %wide.load84.3
  %i.nh = fadd <4 x float> %i.nf, splat (float f0x4B400000)
  %i.ni = fadd <4 x float> %i.ng, splat (float f0x4B400000)
  %i.nj = bitcast <4 x float> %i.nh to <4 x i32>
  %i.nk = bitcast <4 x float> %i.ni to <4 x i32>
  %i.nl = and <4 x i32> %i.nj, splat (i32 8388607)
  %i.nm = and <4 x i32> %i.nk, splat (i32 8388607)
  %i.nn = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %i.nl, <4 x i32> splat (i32 4194296))
  %i.no = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %i.nm, <4 x i32> splat (i32 4194296))
  %i.np = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.nn, <4 x i32> splat (i32 4194311))
  %i.nq = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.no, <4 x i32> splat (i32 4194311))
  %i.nr = trunc <4 x i32> %i.np to <4 x i8>
  %i.ns = trunc <4 x i32> %i.nq to <4 x i8>
  %i.nt = add nsw <4 x i8> %i.nr, splat (i8 8)
  %i.nu = add nsw <4 x i8> %i.ns, splat (i8 8)
  %i.nv = fdiv float %i.lf, %i.ld                 ; 2 uses
  %i.nw = fmul float %i.lf, %i.nv
  br label %bb.l

bb.l:                                             ; preds = %vector.body, %bb.k, %.split216.us.i.us.us, %bb.i
  %i.nx = phi <4 x i8> [ %i.jx, %bb.i ], [ %i.nu, %vector.body ], [ %i.jx, %bb.k ], [ %i.jx, %.split216.us.i.us.us ] ; 2 uses
  %i.ny = phi <4 x i8> [ %i.jy, %bb.i ], [ %i.nt, %vector.body ], [ %i.jy, %bb.k ], [ %i.jy, %.split216.us.i.us.us ] ; 2 uses
  %i.nz = phi <4 x i8> [ %i.jz, %bb.i ], [ %i.ne, %vector.body ], [ %i.jz, %bb.k ], [ %i.jz, %.split216.us.i.us.us ] ; 2 uses
  %i.oa = phi <4 x i8> [ %i.ka, %bb.i ], [ %i.nd, %vector.body ], [ %i.ka, %bb.k ], [ %i.ka, %.split216.us.i.us.us ] ; 2 uses
  %i.ob = phi <4 x i8> [ %i.kb, %bb.i ], [ %i.mo, %vector.body ], [ %i.kb, %bb.k ], [ %i.kb, %.split216.us.i.us.us ] ; 2 uses
  %i.oc = phi <4 x i8> [ %i.kc, %bb.i ], [ %i.mn, %vector.body ], [ %i.kc, %bb.k ], [ %i.kc, %.split216.us.i.us.us ] ; 2 uses
  %i.od = phi <4 x i8> [ %i.kd, %bb.i ], [ %i.ly, %vector.body ], [ %i.kd, %bb.k ], [ %i.kd, %.split216.us.i.us.us ] ; 2 uses
  %i.oe = phi <4 x i8> [ %i.ke, %bb.i ], [ %i.lx, %vector.body ], [ %i.ke, %bb.k ], [ %i.ke, %.split216.us.i.us.us ] ; 2 uses
  %.1172.i.us.us = phi float [ %.0171219.i.us.us, %bb.i ], [ %i.nv, %vector.body ], [ %.0171219.i.us.us, %bb.k ], [ %.0171219.i.us.us, %.split216.us.i.us.us ] ; 2 uses
  %.1.i.us.us = phi float [ %.0170220.i.us.us, %bb.i ], [ %i.nw, %vector.body ], [ %.0170220.i.us.us, %bb.k ], [ %.0170220.i.us.us, %.split216.us.i.us.us ]
  %i.of = add nsw i32 %.0169221.i.us.us, 1        ; 2 uses
  %exitcond251.not.i.us.us = icmp eq i32 %i.of, 10
  br i1 %exitcond251.not.i.us.us, label %make_qx_quants.exit.us.us.loopexit, label %bb.i, !llvm.loop !14

.preheader.preheader.i.us.us:                     ; preds = %bb.e
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.b, i8 0, i64 range(i64 0, 33) 32, i1 false), !tbaa !34, !alias.scope !411, !noalias !408
  br label %make_qx_quants.exit.us.us

make_qx_quants.exit.us.us.loopexit:               ; preds = %bb.l
  store <4 x i8> %i.oe, ptr %i.b, align 1
  store <4 x i8> %i.od, ptr %i.aa, align 1
  store <4 x i8> %i.oc, ptr %i.ab, align 1
  store <4 x i8> %i.ob, ptr %i.ac, align 1
  store <4 x i8> %i.oa, ptr %i.ad, align 1
  store <4 x i8> %i.nz, ptr %i.ae, align 1
  store <4 x i8> %i.ny, ptr %i.af, align 1
  store <4 x i8> %i.nx, ptr %i.ag, align 1
  %.pre67 = load i8, ptr %i.s, align 4, !tbaa !34, !noalias !409
  %.pre68 = load i8, ptr %i.t, align 4, !tbaa !34, !noalias !409
  %i.og = load <8 x i8>, ptr %i.b, align 16, !tbaa !34, !noalias !409
  %i.oh = load <8 x i8>, ptr %i.p, align 16, !tbaa !34, !noalias !409
  %i.oi = shl <8 x i8> %i.oh, splat (i8 4)
  %i.oj = or <8 x i8> %i.oi, %i.og
  %i.ok = load <4 x i8>, ptr %i.q, align 8, !tbaa !34, !noalias !409
  %i.ol = load <4 x i8>, ptr %i.r, align 8, !tbaa !34, !noalias !409
  %i.om = shl <4 x i8> %i.ol, splat (i8 4)
  %i.on = or <4 x i8> %i.om, %i.ok
  %i.oo = shl i8 %.pre68, 4
  %i.op = or i8 %i.oo, %.pre67
  br label %make_qx_quants.exit.us.us

make_qx_quants.exit.us.us:                        ; preds = %make_qx_quants.exit.us.us.loopexit, %.preheader.preheader.i.us.us
  %.2.i.us.us = phi float [ 0.000000e+00, %.preheader.preheader.i.us.us ], [ %.1172.i.us.us, %make_qx_quants.exit.us.us.loopexit ] ; 2 uses
  %i.oq = phi i8 [ 0, %.preheader.preheader.i.us.us ], [ %i.op, %make_qx_quants.exit.us.us.loopexit ]
  %i.or = phi <8 x i8> [ zeroinitializer, %.preheader.preheader.i.us.us ], [ %i.oj, %make_qx_quants.exit.us.us.loopexit ]
  %i.os = phi <4 x i8> [ zeroinitializer, %.preheader.preheader.i.us.us ], [ %i.on, %make_qx_quants.exit.us.us.loopexit ]
  %i.ot = tail call float @llvm.fabs.f32(float %.2.i.us.us)
  %i.ou = fmul float %i.ot, f0x77800000
  %i.ov = fmul float %i.ou, f0x08800000
  %i.ow = bitcast float %.2.i.us.us to i32        ; 2 uses
  %i.ox = shl i32 %i.ow, 1                        ; 2 uses
  %i.oy = tail call i32 @llvm.umax.i32(i32 %i.ox, i32 1895825408)
  %spec.store.select.i.i.us.us = lshr exact i32 %i.oy, 1
  %i.oz = and i32 %spec.store.select.i.i.us.us, 2139095040
  %i.pa = add nuw i32 %i.oz, 125829120
  %i.pb = bitcast i32 %i.pa to float
  %i.pc = fadd float %i.ov, %i.pb
  %i.pd = bitcast float %i.pc to i32              ; 2 uses
  %i.pe = lshr i32 %i.pd, 13
  %i.pf = and i32 %i.pe, 31744
  %i.pg = and i32 %i.pd, 4095
  %i.ph = add nuw nsw i32 %i.pf, %i.pg
  %i.pi = lshr i32 %i.ow, 16
  %i.pj = and i32 %i.pi, 32768
  %i.pk = icmp ugt i32 %i.ox, -16777216
  %i.pl = select i1 %i.pk, i32 32256, i32 %i.ph
  %i.pm = or i32 %i.pl, %i.pj
  %i.pn = trunc nuw i32 %i.pm to i16
  %i.po = getelementptr inbounds nuw [18 x i8], ptr %.02235.us.us, i64 %indvars.iv67.i.us.us ; 7 uses
  store i16 %i.pn, ptr %i.po, align 2, !tbaa !33, !alias.scope !408
  %i.pp = getelementptr inbounds nuw i8, ptr %i.po, i64 2
  store <8 x i8> %i.or, ptr %i.pp, align 2, !tbaa !34, !alias.scope !408
  %i.pq = getelementptr inbounds nuw i8, ptr %i.po, i64 10
  store <4 x i8> %i.os, ptr %i.pq, align 2, !tbaa !34, !alias.scope !408
  %i.pr = getelementptr inbounds nuw i8, ptr %i.po, i64 14
  store i8 %i.oq, ptr %i.pr, align 2, !tbaa !34, !alias.scope !408
  %i.ps = load i8, ptr %i.u, align 1, !tbaa !34, !noalias !409
  %i.pt = load i8, ptr %i.v, align 1, !tbaa !34, !noalias !409
  %i.pu = shl i8 %i.pt, 4
  %i.pv = or i8 %i.pu, %i.ps
  %i.pw = getelementptr inbounds nuw i8, ptr %i.po, i64 15
  store i8 %i.pv, ptr %i.pw, align 1, !tbaa !34, !alias.scope !408
  %i.px = load i8, ptr %i.w, align 2, !tbaa !34, !noalias !409
  %i.py = load i8, ptr %i.x, align 2, !tbaa !34, !noalias !409
  %i.pz = shl i8 %i.py, 4
  %i.qa = or i8 %i.pz, %i.px
  %i.qb = getelementptr inbounds nuw i8, ptr %i.po, i64 16
  store i8 %i.qa, ptr %i.qb, align 2, !tbaa !34, !alias.scope !408
  %i.qc = load i8, ptr %i.y, align 1, !tbaa !34, !noalias !409
  %i.qd = load i8, ptr %i.z, align 1, !tbaa !34, !noalias !409
  %i.qe = shl i8 %i.qd, 4
  %i.qf = or i8 %i.qe, %i.qc
  %i.qg = getelementptr inbounds nuw i8, ptr %i.po, i64 17
  store i8 %i.qf, ptr %i.qg, align 1, !tbaa !34, !alias.scope !408
  %indvars.iv.next68.i.us.us = add nuw nsw i64 %indvars.iv67.i.us.us, 1 ; 2 uses
  %exitcond70.not.i.us.us = icmp eq i64 %indvars.iv.next68.i.us.us, %i.h
  br i1 %exitcond70.not.i.us.us, label %quantize_row_q4_0_impl.exit.loopexit.us.us, label %.lr.ph56.i.us.us, !llvm.loop !405

quantize_row_q4_0_impl.exit.loopexit.us.us:       ; preds = %make_qx_quants.exit.us.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14, !noalias !409
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14, !noalias !409
  %i.qh = getelementptr inbounds nuw [4 x i8], ptr %.02434.us.us, i64 %3
  %i.qi = getelementptr inbounds nuw i8, ptr %.02235.us.us, i64 %i.e
  %i.qj = add nuw nsw i64 %.036.us.us, 1          ; 2 uses
  %exitcond43.not = icmp eq i64 %i.qj, %2
  br i1 %exitcond43.not, label %.loopexit, label %.lr.ph.i.preheader.us.us, !llvm.loop !406

.loopexit:                                        ; preds = %quantize_row_q4_0_impl.exit.loopexit.us.us, %.lr.ph, %bb.c, %bb.b
  %.pn = phi i64 [ %i.d, %bb.b ], [ %i.e, %.lr.ph ], [ %i.e, %bb.c ], [ %i.e, %quantize_row_q4_0_impl.exit.loopexit.us.us ]
  %.023 = mul i64 %.pn, %2
  ret i64 %.023
}

; Function Attrs: nounwind uwtable
define i64 @quantize_q4_1(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree noundef writeonly captures(none) %1, i64 noundef %2, i64 noundef %3, ptr nofree noundef readonly captures(address_is_null) %4) local_unnamed_addr #6 {
bb.a:
  %i.a = alloca [32 x float], align 16            ; 15 uses
  %i.b = alloca [32 x i8], align 16               ; 17 uses
  %i.c = alloca [32 x i8], align 16               ; 6 uses
  %.not = icmp eq ptr %4, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = mul nsw i64 %3, %2
  tail call void @quantize_row_q4_1_ref(ptr noundef %0, ptr noundef %1, i64 noundef %i.d)
  %i.e = tail call i64 @ggml_row_size(i32 noundef 3, i64 noundef %3) #14
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.f = tail call i64 @ggml_row_size(i32 noundef 3, i64 noundef %3) #14 ; 4 uses
  %i.g = icmp sgt i64 %2, 0
  br i1 %i.g, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.c
  %i.h = uitofp nneg i64 %3 to float
  %i.i = lshr i64 %3, 5
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 9
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 25
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 13
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 29
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 14
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 30
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 15
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 31
  %or.cond = icmp sgt i64 %3, 31
  br i1 %or.cond, label %.lr.ph.i.preheader.us.us.preheader, label %.loopexit

.lr.ph.i.preheader.us.us.preheader:               ; preds = %.lr.ph
  %xtraiter = and i64 %3, 3                       ; 3 uses
  %unroll_iter = and i64 %3, 9223372036854775804
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod97 = icmp ne i64 %xtraiter, 0
  br label %.lr.ph.i.preheader.us.us

.lr.ph.i.preheader.us.us:                         ; preds = %.lr.ph.i.preheader.us.us.preheader, %quantize_row_q4_1_impl.exit.loopexit.us.us
  %.039.us.us = phi i64 [ %i.oo, %quantize_row_q4_1_impl.exit.loopexit.us.us ], [ 0, %.lr.ph.i.preheader.us.us.preheader ]
  %.02238.us.us = phi ptr [ %i.on, %quantize_row_q4_1_impl.exit.loopexit.us.us ], [ %1, %.lr.ph.i.preheader.us.us.preheader ] ; 2 uses
  %.02437.us.us = phi ptr [ %i.om, %quantize_row_q4_1_impl.exit.loopexit.us.us ], [ %0, %.lr.ph.i.preheader.us.us.preheader ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !425)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !426)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14, !noalias !427
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14, !noalias !427
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14, !noalias !427
  br label %.lr.ph.i.us.us

.lr.ph.i.us.us:                                   ; preds = %.lr.ph.i.us.us, %.lr.ph.i.preheader.us.us
  %indvars.iv.i.us.us = phi i64 [ 0, %.lr.ph.i.preheader.us.us ], [ %indvars.iv.next.i.us.us.3, %.lr.ph.i.us.us ] ; 5 uses
  %.04753.i.us.us = phi float [ 0.000000e+00, %.lr.ph.i.preheader.us.us ], [ %i.ap, %.lr.ph.i.us.us ]
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.us.us ], [ %niter.next.3, %.lr.ph.i.us.us ]
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %.02437.us.us, i64 %indvars.iv.i.us.us
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !36, !alias.scope !425 ; 2 uses
  %i.ad = tail call float @llvm.fmuladd.f32(float %i.ac, float %i.ac, float %.04753.i.us.us)
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %.02437.us.us, i64 %indvars.iv.i.us.us
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.ag = load float, ptr %i.af, align 4, !tbaa !36, !alias.scope !425 ; 2 uses
  %i.ah = tail call float @llvm.fmuladd.f32(float %i.ag, float %i.ag, float %i.ad)
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %.02437.us.us, i64 %indvars.iv.i.us.us
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !36, !alias.scope !425 ; 2 uses
  %i.al = tail call float @llvm.fmuladd.f32(float %i.ak, float %i.ak, float %i.ah)
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %.02437.us.us, i64 %indvars.iv.i.us.us
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 12
  %i.ao = load float, ptr %i.an, align 4, !tbaa !36, !alias.scope !425 ; 2 uses
  %i.ap = tail call float @llvm.fmuladd.f32(float %i.ao, float %i.ao, float %i.al) ; 3 uses
  %indvars.iv.next.i.us.us.3 = add nuw nsw i64 %indvars.iv.i.us.us, 4 ; 2 uses
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.i.us.us.unr-lcssa, label %.lr.ph.i.us.us, !llvm.loop !416

._crit_edge.i.us.us.unr-lcssa:                    ; preds = %.lr.ph.i.us.us
  br i1 %lcmp.mod.not, label %._crit_edge.i.us.us, label %.lr.ph.i.us.us.epil.preheader

.lr.ph.i.us.us.epil.preheader:                    ; preds = %._crit_edge.i.us.us.unr-lcssa
  tail call void @llvm.assume(i1 %lcmp.mod97)
  br label %.lr.ph.i.us.us.epil

.lr.ph.i.us.us.epil:                              ; preds = %.lr.ph.i.us.us.epil, %.lr.ph.i.us.us.epil.preheader
  %indvars.iv.i.us.us.epil = phi i64 [ %indvars.iv.next.i.us.us.epil, %.lr.ph.i.us.us.epil ], [ %indvars.iv.next.i.us.us.3, %.lr.ph.i.us.us.epil.preheader ] ; 2 uses
  %.04753.i.us.us.epil = phi float [ %i.as, %.lr.ph.i.us.us.epil ], [ %i.ap, %.lr.ph.i.us.us.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.us.us.epil ], [ 0, %.lr.ph.i.us.us.epil.preheader ]
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %.02437.us.us, i64 %indvars.iv.i.us.us.epil
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !36, !alias.scope !425 ; 2 uses
  %i.as = tail call float @llvm.fmuladd.f32(float %i.ar, float %i.ar, float %.04753.i.us.us.epil) ; 2 uses
  %indvars.iv.next.i.us.us.epil = add nuw nsw i64 %indvars.iv.i.us.us.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
end_hunk_9
begin_hunk_10_@quantize_q4_1:bb.a
  %i.hm = tail call float @sqrtf(float noundef %i.hl) #14, !noalias !427
  %i.hn = getelementptr inbounds nuw i8, ptr %i.av, i64 124
  %i.ho = load float, ptr %i.hn, align 4, !tbaa !36, !alias.scope !425 ; 2 uses
  %i.hp = tail call float @llvm.fmuladd.f32(float %i.ho, float %i.ho, float %i.at)
  %i.hq = tail call float @sqrtf(float noundef %i.hp) #14, !noalias !427
  %i.hr = load <4 x float>, ptr %i.ha, align 4, !tbaa !36, !noalias !427
  %i.hs = insertelement <4 x float> poison, float %i.he, i64 0
  %i.ht = insertelement <4 x float> %i.hs, float %i.hi, i64 1
  %i.hu = insertelement <4 x float> %i.ht, float %i.hm, i64 2
  %i.hv = insertelement <4 x float> %i.hu, float %i.hq, i64 3
  %i.hw = fmul <4 x float> %i.hr, %i.hv
  store <4 x float> %i.hw, ptr %i.p, align 16, !tbaa !36, !noalias !427
  tail call void @llvm.experimental.noalias.scope.decl(metadata !428)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !429)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !430)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !431)
  %i.hx = extractelement <4 x float> %i.br, i64 0 ; 2 uses
  %i.hy = fmul float %i.ax, %i.hx
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph59.i.us.us
  %indvars.iv.i27.us.us = phi i64 [ 1, %.lr.ph59.i.us.us ], [ %indvars.iv.next.i28.us.us, %bb.d ] ; 3 uses
  %.0203230.i.us.us = phi float [ %i.hy, %.lr.ph59.i.us.us ], [ %i.ig, %bb.d ]
  %.0204229.i.us.us = phi float [ %i.hx, %.lr.ph59.i.us.us ], [ %i.if, %bb.d ]
  %.0205228.i.us.us = phi float [ %i.ax, %.lr.ph59.i.us.us ], [ %.1206.i.us.us, %bb.d ] ; 2 uses
  %.0207227.i.us.us = phi float [ %i.ax, %.lr.ph59.i.us.us ], [ %.1208.i.us.us, %bb.d ] ; 2 uses
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %indvars.iv.i27.us.us
  %i.ia = load float, ptr %i.hz, align 4, !tbaa !36, !alias.scope !428, !noalias !426 ; 5 uses
  %i.ib = fcmp olt float %i.ia, %.0207227.i.us.us
  %.1208.i.us.us = select i1 %i.ib, float %i.ia, float %.0207227.i.us.us ; 3 uses
  %i.ic = fcmp ogt float %i.ia, %.0205228.i.us.us
  %.1206.i.us.us = select i1 %i.ic, float %i.ia, float %.0205228.i.us.us ; 4 uses
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i27.us.us
  %i.ie = load float, ptr %i.id, align 4, !tbaa !36, !alias.scope !429, !noalias !426 ; 2 uses
  %i.if = fadd float %.0204229.i.us.us, %i.ie     ; 3 uses
  %i.ig = tail call float @llvm.fmuladd.f32(float %i.ie, float %i.ia, float %.0203230.i.us.us) ; 3 uses
  %indvars.iv.next.i28.us.us = add nuw nsw i64 %indvars.iv.i27.us.us, 1 ; 2 uses
  %exitcond.not.i29.us.us = icmp eq i64 %indvars.iv.next.i28.us.us, 32
  br i1 %exitcond.not.i29.us.us, label %bb.e, label %bb.d, !llvm.loop !17

bb.e:                                             ; preds = %bb.d
  %i.ih = fcmp ogt float %.1208.i.us.us, 0.000000e+00
  %spec.store.select.i.us.us = select i1 %i.ih, float 0.000000e+00, float %.1208.i.us.us ; 6 uses
  %i.ii = fcmp ugt float %.1206.i.us.us, %spec.store.select.i.us.us
  br i1 %i.ii, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.b, i8 0, i64 32, i1 false), !alias.scope !430, !noalias !426
  %i.ij = insertelement <2 x float> <float 0.000000e+00, float poison>, float %spec.store.select.i.us.us, i64 1
  br label %make_qkx3_quants.exit.us.us

bb.g:                                             ; preds = %bb.e
  %i.ik = fsub float %.1206.i.us.us, %spec.store.select.i.us.us
  %i.il = fdiv float 1.500000e+01, %i.ik          ; 2 uses
  %i.im = fdiv float 1.000000e+00, %i.il          ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %bb.g
  %indvars.iv252.i.us.us = phi i64 [ 0, %bb.g ], [ %indvars.iv.next253.i.us.us, %bb.h ] ; 4 uses
  %.0198232.i.us.us = phi float [ 0.000000e+00, %bb.g ], [ %i.je, %bb.h ]
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %indvars.iv252.i.us.us
  %i.io = load float, ptr %i.in, align 4, !tbaa !36, !alias.scope !428, !noalias !426 ; 2 uses
  %i.ip = fsub float %i.io, %spec.store.select.i.us.us
  %i.iq = fmul float %i.il, %i.ip
  %i.ir = fadd float %i.iq, f0x4B400000
  %i.is = bitcast float %i.ir to i32
  %i.it = and i32 %i.is, 8388607
  %i.iu = tail call i32 @llvm.umax.i32(i32 %i.it, i32 4194304)
  %i.iv = tail call i32 @llvm.umin.i32(i32 %i.iu, i32 4194319)
  %i.iw = trunc i32 %i.iv to i8                   ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv252.i.us.us
  store i8 %i.iw, ptr %i.ix, align 1, !tbaa !34, !alias.scope !430, !noalias !426
  %i.iy = uitofp nneg i8 %i.iw to float
  %i.iz = tail call float @llvm.fmuladd.f32(float %i.im, float %i.iy, float %spec.store.select.i.us.us)
  %i.ja = fsub float %i.iz, %i.io                 ; 2 uses
  %i.jb = fmul float %i.ja, %i.ja
  %i.jc = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv252.i.us.us
  %i.jd = load float, ptr %i.jc, align 4, !tbaa !36, !alias.scope !429, !noalias !426
  %i.je = tail call float @llvm.fmuladd.f32(float %i.jd, float %i.jb, float %.0198232.i.us.us) ; 2 uses
  %indvars.iv.next253.i.us.us = add nuw nsw i64 %indvars.iv252.i.us.us, 1 ; 2 uses
  %exitcond256.not.i.us.us = icmp eq i64 %indvars.iv.next253.i.us.us, 32
  br i1 %exitcond256.not.i.us.us, label %.preheader226.i.us.us.preheader, label %bb.h, !llvm.loop !9

.preheader226.i.us.us.preheader:                  ; preds = %bb.h
  %i.jf = insertelement <2 x float> poison, float %i.ig, i64 0
  %i.jg = insertelement <2 x float> poison, float %i.if, i64 0
  %i.jh = insertelement <2 x float> %i.jg, float %i.ig, i64 1
  br label %.preheader226.i.us.us

.preheader226.i.us.us:                            ; preds = %.preheader226.i.us.us.preheader, %.loopexit.i.us.us
  %.0196244.i.us.us = phi i32 [ %i.mj, %.loopexit.i.us.us ], [ 0, %.preheader226.i.us.us.preheader ] ; 2 uses
  %.1243.i.us.us = phi float [ %.3.i.us.us, %.loopexit.i.us.us ], [ %i.je, %.preheader226.i.us.us.preheader ] ; 3 uses
  %.0199242.i.us.us = phi float [ %.2201.i.us.us, %.loopexit.i.us.us ], [ %i.im, %.preheader226.i.us.us.preheader ] ; 3 uses
  %.2209241.i.us.us = phi float [ %.4.i.us.us, %.loopexit.i.us.us ], [ %spec.store.select.i.us.us, %.preheader226.i.us.us.preheader ] ; 5 uses
  %i.ji = uitofp nneg i32 %.0196244.i.us.us to float
  %i.jj = tail call nnan float @llvm.fmuladd.f32(float %i.ji, float 5.000000e-02, float f0xBF666666)
  %i.jk = fadd nnan float %i.jj, 1.500000e+01
  %i.jl = fsub float %.1206.i.us.us, %.2209241.i.us.us
  %i.jm = fdiv float %i.jk, %i.jl
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.preheader226.i.us.us
  %indvars.iv257.i.us.us = phi i64 [ 0, %.preheader226.i.us.us ], [ %indvars.iv.next258.i.us.us, %bb.i ] ; 4 uses
  %.0195234.i.us.us = phi float [ 0.000000e+00, %.preheader226.i.us.us ], [ %i.ke, %bb.i ]
  %i.jn = phi <2 x float> [ zeroinitializer, %.preheader226.i.us.us ], [ %i.kk, %bb.i ]
  %i.jo = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %indvars.iv257.i.us.us
  %i.jp = load float, ptr %i.jo, align 4, !tbaa !36, !alias.scope !428, !noalias !426 ; 2 uses
  %i.jq = fsub float %i.jp, %.2209241.i.us.us
  %i.jr = fmul float %i.jm, %i.jq
  %i.js = fadd float %i.jr, f0x4B400000
  %i.jt = bitcast float %i.js to i32
  %i.ju = and i32 %i.jt, 8388607                  ; 2 uses
  %i.jv = icmp samesign ult i32 %i.ju, 4194304
  %i.jw = tail call i32 @llvm.umin.i32(i32 %i.ju, i32 4194319)
  %i.jx = add nsw i32 %i.jw, -4194304
  %i.jy = select i1 %i.jv, i32 0, i32 %i.jx       ; 2 uses
  %i.jz = trunc i32 %i.jy to i8
  %i.ka = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv257.i.us.us
  store i8 %i.jz, ptr %i.ka, align 1, !tbaa !34, !alias.scope !431, !noalias !426
  %i.kb = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv257.i.us.us
  %i.kc = load float, ptr %i.kb, align 4, !tbaa !36, !alias.scope !429, !noalias !426 ; 2 uses
  %i.kd = uitofp nneg i32 %i.jy to float          ; 3 uses
  %i.ke = tail call float @llvm.fmuladd.f32(float %i.kc, float %i.kd, float %.0195234.i.us.us) ; 4 uses
  %i.kf = fmul float %i.kc, %i.kd
  %i.kg = insertelement <2 x float> poison, float %i.kf, i64 0
  %i.kh = shufflevector <2 x float> %i.kg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ki = insertelement <2 x float> poison, float %i.jp, i64 0
  %i.kj = insertelement <2 x float> %i.ki, float %i.kd, i64 1
  %i.kk = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kh, <2 x float> %i.kj, <2 x float> %i.jn) ; 5 uses
  %indvars.iv.next258.i.us.us = add nuw nsw i64 %indvars.iv257.i.us.us, 1 ; 2 uses
  %exitcond261.not.i.us.us = icmp eq i64 %indvars.iv.next258.i.us.us, 32
  br i1 %exitcond261.not.i.us.us, label %bb.j, label %bb.i, !llvm.loop !10

bb.j:                                             ; preds = %bb.i
  %i.kl = fneg float %i.ke                        ; 2 uses
  %i.km = fmul float %i.ke, %i.kl
  %i.kn = extractelement <2 x float> %i.kk, i64 1 ; 2 uses
  %i.ko = tail call float @llvm.fmuladd.f32(float %i.if, float %i.kn, float %i.km) ; 2 uses
  %i.kp = fcmp ogt float %i.ko, 0.000000e+00
  %i.kq = insertelement <2 x float> poison, float %.0199242.i.us.us, i64 0
  %i.kr = insertelement <2 x float> %i.kq, float %.2209241.i.us.us, i64 1 ; 2 uses
  br i1 %i.kp, label %bb.k, label %.loopexit.i.us.us

bb.k:                                             ; preds = %bb.j
  %i.ks = extractelement <2 x float> %i.kk, i64 0
  %i.kt = insertelement <2 x float> %i.jf, float %i.ke, i64 1
  %i.ku = insertelement <2 x float> poison, float %i.kl, i64 0
  %i.kv = fneg <2 x float> %i.kk
  %i.kw = shufflevector <2 x float> %i.ku, <2 x float> %i.kv, <2 x i32> <i32 0, i32 2>
  %i.kx = fmul <2 x float> %i.kt, %i.kw
  %i.ky = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jh, <2 x float> %i.kk, <2 x float> %i.kx)
  %i.kz = insertelement <2 x float> poison, float %i.ko, i64 0
  %i.la = shufflevector <2 x float> %i.kz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lb = fdiv <2 x float> %i.ky, %i.la           ; 2 uses
  %i.lc = extractelement <2 x float> %i.lb, i64 1
  %i.ld = fcmp ogt float %i.lc, 0.000000e+00
  %i.le = fdiv float %i.ks, %i.kn
  %i.lf = insertelement <2 x i1> poison, i1 %i.ld, i64 0
  %i.lg = shufflevector <2 x i1> %i.lf, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.lh = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.le, i64 0
  %i.li = select <2 x i1> %i.lg, <2 x float> %i.lh, <2 x float> %i.lb ; 3 uses
  %i.lj = extractelement <2 x float> %i.li, i64 1 ; 3 uses
  %i.lk = extractelement <2 x float> %i.li, i64 0 ; 3 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %bb.k
  %indvars.iv262.i.us.us = phi i64 [ 0, %bb.k ], [ %indvars.iv.next263.i.us.us.1, %bb.l ] ; 5 uses
  %.0189238.i.us.us = phi float [ 0.000000e+00, %bb.k ], [ %i.mg, %bb.l ]
  %i.ll = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv262.i.us.us
  %i.lm = load i8, ptr %i.ll, align 2, !tbaa !34, !alias.scope !431, !noalias !426
  %i.ln = uitofp i8 %i.lm to float
  %i.lo = tail call float @llvm.fmuladd.f32(float %i.lk, float %i.ln, float %i.lj)
  %i.lp = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %indvars.iv262.i.us.us
  %i.lq = load float, ptr %i.lp, align 4, !tbaa !36, !alias.scope !428, !noalias !426
  %i.lr = fsub float %i.lo, %i.lq                 ; 2 uses
  %i.ls = fmul float %i.lr, %i.lr
  %i.lt = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv262.i.us.us
  %i.lu = load float, ptr %i.lt, align 8, !tbaa !36, !alias.scope !429, !noalias !426
  %i.lv = tail call float @llvm.fmuladd.f32(float %i.lu, float %i.ls, float %.0189238.i.us.us)
  %indvars.iv.next263.i.us.us = or disjoint i64 %indvars.iv262.i.us.us, 1 ; 3 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv.next263.i.us.us
  %i.lx = load i8, ptr %i.lw, align 1, !tbaa !34, !alias.scope !431, !noalias !426
  %i.ly = uitofp i8 %i.lx to float
  %i.lz = tail call float @llvm.fmuladd.f32(float %i.lk, float %i.ly, float %i.lj)
  %i.ma = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %indvars.iv.next263.i.us.us
  %i.mb = load float, ptr %i.ma, align 4, !tbaa !36, !alias.scope !428, !noalias !426
  %i.mc = fsub float %i.lz, %i.mb                 ; 2 uses
  %i.md = fmul float %i.mc, %i.mc
  %i.me = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next263.i.us.us
  %i.mf = load float, ptr %i.me, align 4, !tbaa !36, !alias.scope !429, !noalias !426
  %i.mg = tail call float @llvm.fmuladd.f32(float %i.mf, float %i.md, float %i.lv) ; 3 uses
  %indvars.iv.next263.i.us.us.1 = add nuw nsw i64 %indvars.iv262.i.us.us, 2 ; 2 uses
  %exitcond266.not.i.us.us.1 = icmp eq i64 %indvars.iv.next263.i.us.us.1, 32
  br i1 %exitcond266.not.i.us.us.1, label %bb.m, label %bb.l, !llvm.loop !18

bb.m:                                             ; preds = %bb.l
  %i.mh = fcmp olt float %i.mg, %.1243.i.us.us
  br i1 %i.mh, label %.preheader.preheader.i.us.us, label %.loopexit.i.us.us

.preheader.preheader.i.us.us:                     ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.b, ptr noundef nonnull align 16 dereferenceable(32) %i.c, i64 range(i64 0, 33) 32, i1 false), !tbaa !34, !alias.scope !432, !noalias !426
  br label %.loopexit.i.us.us

.loopexit.i.us.us:                                ; preds = %.preheader.preheader.i.us.us, %bb.m, %bb.j
  %.4.i.us.us = phi float [ %.2209241.i.us.us, %bb.j ], [ %.2209241.i.us.us, %bb.m ], [ %i.lj, %.preheader.preheader.i.us.us ]
  %.2201.i.us.us = phi float [ %.0199242.i.us.us, %bb.j ], [ %.0199242.i.us.us, %bb.m ], [ %i.lk, %.preheader.preheader.i.us.us ]
  %.3.i.us.us = phi float [ %.1243.i.us.us, %bb.j ], [ %.1243.i.us.us, %bb.m ], [ %i.mg, %.preheader.preheader.i.us.us ]
  %i.mi = phi <2 x float> [ %i.kr, %bb.j ], [ %i.kr, %bb.m ], [ %i.li, %.preheader.preheader.i.us.us ]
  %i.mj = add nuw nsw i32 %.0196244.i.us.us, 1    ; 2 uses
  %exitcond270.not.i.us.us = icmp eq i32 %i.mj, 37
  br i1 %exitcond270.not.i.us.us, label %make_qkx3_quants.exit.us.us.loopexit, label %.preheader226.i.us.us, !llvm.loop !11

make_qkx3_quants.exit.us.us.loopexit:             ; preds = %.loopexit.i.us.us
  %.pre65 = load i8, ptr %i.r, align 8, !tbaa !34, !noalias !427
  %.pre66 = load i8, ptr %i.s, align 8, !tbaa !34, !noalias !427
  %i.mk = load <8 x i8>, ptr %i.b, align 16, !tbaa !34, !noalias !427
  %i.ml = load <8 x i8>, ptr %i.q, align 16, !tbaa !34, !noalias !427
  %i.mm = shl <8 x i8> %i.ml, splat (i8 4)
  %i.mn = or <8 x i8> %i.mm, %i.mk
  %i.mo = shl i8 %.pre66, 4
  %i.mp = or i8 %i.mo, %.pre65
  br label %make_qkx3_quants.exit.us.us

make_qkx3_quants.exit.us.us:                      ; preds = %make_qkx3_quants.exit.us.us.loopexit, %bb.f
  %i.mq = phi i8 [ 0, %bb.f ], [ %i.mp, %make_qkx3_quants.exit.us.us.loopexit ]
  %i.mr = phi <8 x i8> [ zeroinitializer, %bb.f ], [ %i.mn, %make_qkx3_quants.exit.us.us.loopexit ]
  %i.ms = phi <2 x float> [ %i.ij, %bb.f ], [ %i.mi, %make_qkx3_quants.exit.us.us.loopexit ] ; 2 uses
  %i.mt = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.ms)
  %i.mu = bitcast <2 x float> %i.ms to <2 x i32>  ; 2 uses
  %i.mv = getelementptr inbounds nuw [20 x i8], ptr %.02238.us.us, i64 %indvars.iv70.i.us.us ; 7 uses
  %i.mw = fmul <2 x float> %i.mt, splat (float f0x77800000)
  %i.mx = fmul <2 x float> %i.mw, splat (float f0x08800000)
  %i.my = shl <2 x i32> %i.mu, splat (i32 1)      ; 2 uses
  %i.mz = tail call <2 x i32> @llvm.umax.v2i32(<2 x i32> %i.my, <2 x i32> splat (i32 1895825408))
  %i.na = lshr exact <2 x i32> %i.mz, splat (i32 1)
  %i.nb = and <2 x i32> %i.na, splat (i32 2139095040)
  %i.nc = add nuw <2 x i32> %i.nb, splat (i32 125829120)
  %i.nd = bitcast <2 x i32> %i.nc to <2 x float>
  %i.ne = fadd <2 x float> %i.mx, %i.nd
  %i.nf = bitcast <2 x float> %i.ne to <2 x i32>  ; 2 uses
  %i.ng = lshr <2 x i32> %i.nf, splat (i32 13)
  %i.nh = and <2 x i32> %i.ng, splat (i32 31744)
  %i.ni = and <2 x i32> %i.nf, splat (i32 4095)
  %i.nj = add nuw nsw <2 x i32> %i.nh, %i.ni
  %i.nk = lshr <2 x i32> %i.mu, splat (i32 16)
  %i.nl = and <2 x i32> %i.nk, splat (i32 32768)
  %i.nm = icmp ugt <2 x i32> %i.my, splat (i32 -16777216)
  %i.nn = select <2 x i1> %i.nm, <2 x i32> splat (i32 32256), <2 x i32> %i.nj
  %i.no = or <2 x i32> %i.nn, %i.nl
  %i.np = trunc nuw <2 x i32> %i.no to <2 x i16>
  store <2 x i16> %i.np, ptr %i.mv, align 4, !tbaa !34, !alias.scope !426
  %i.nq = getelementptr inbounds nuw i8, ptr %i.mv, i64 4
  store <8 x i8> %i.mr, ptr %i.nq, align 4, !tbaa !34, !alias.scope !426
  %i.nr = getelementptr inbounds nuw i8, ptr %i.mv, i64 12
  store i8 %i.mq, ptr %i.nr, align 4, !tbaa !34, !alias.scope !426
  %i.ns = getelementptr inbounds nuw i8, ptr %i.mv, i64 13
  %i.nt = load <4 x i8>, ptr %i.t, align 1, !tbaa !34, !noalias !427
  %i.nu = load <4 x i8>, ptr %i.u, align 1, !tbaa !34, !noalias !427
  %i.nv = shl <4 x i8> %i.nu, splat (i8 4)
  %i.nw = or <4 x i8> %i.nv, %i.nt
  store <4 x i8> %i.nw, ptr %i.ns, align 1, !tbaa !34, !alias.scope !426
  %i.nx = load i8, ptr %i.v, align 1, !tbaa !34, !noalias !427
  %i.ny = load i8, ptr %i.w, align 1, !tbaa !34, !noalias !427
  %i.nz = shl i8 %i.ny, 4
  %i.oa = or i8 %i.nz, %i.nx
  %i.ob = getelementptr inbounds nuw i8, ptr %i.mv, i64 17
  store i8 %i.oa, ptr %i.ob, align 1, !tbaa !34, !alias.scope !426
  %i.oc = load i8, ptr %i.x, align 2, !tbaa !34, !noalias !427
  %i.od = load i8, ptr %i.y, align 2, !tbaa !34, !noalias !427
  %i.oe = shl i8 %i.od, 4
  %i.of = or i8 %i.oe, %i.oc
  %i.og = getelementptr inbounds nuw i8, ptr %i.mv, i64 18
  store i8 %i.of, ptr %i.og, align 2, !tbaa !34, !alias.scope !426
  %i.oh = load i8, ptr %i.z, align 1, !tbaa !34, !noalias !427
  %i.oi = load i8, ptr %i.aa, align 1, !tbaa !34, !noalias !427
  %i.oj = shl i8 %i.oi, 4
  %i.ok = or i8 %i.oj, %i.oh
  %i.ol = getelementptr inbounds nuw i8, ptr %i.mv, i64 19
  store i8 %i.ok, ptr %i.ol, align 1, !tbaa !34, !alias.scope !426
  %indvars.iv.next71.i.us.us = add nuw nsw i64 %indvars.iv70.i.us.us, 1 ; 2 uses
  %exitcond73.not.i.us.us = icmp eq i64 %indvars.iv.next71.i.us.us, %i.i
  br i1 %exitcond73.not.i.us.us, label %quantize_row_q4_1_impl.exit.loopexit.us.us, label %.lr.ph59.i.us.us, !llvm.loop !423

quantize_row_q4_1_impl.exit.loopexit.us.us:       ; preds = %make_qkx3_quants.exit.us.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14, !noalias !427
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14, !noalias !427
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14, !noalias !427
  %i.om = getelementptr inbounds nuw [4 x i8], ptr %.02437.us.us, i64 %3
  %i.on = getelementptr inbounds nuw i8, ptr %.02238.us.us, i64 %i.f
  %i.oo = add nuw nsw i64 %.039.us.us, 1          ; 2 uses
  %exitcond49.not = icmp eq i64 %i.oo, %2
  br i1 %exitcond49.not, label %.loopexit, label %.lr.ph.i.preheader.us.us, !llvm.loop !424

.loopexit:                                        ; preds = %quantize_row_q4_1_impl.exit.loopexit.us.us, %.lr.ph, %bb.c, %bb.b
  %.pn = phi i64 [ %i.e, %bb.b ], [ %i.f, %.lr.ph ], [ %i.f, %bb.c ], [ %i.f, %quantize_row_q4_1_impl.exit.loopexit.us.us ]
  %.023 = mul i64 %.pn, %2
  ret i64 %.023
}

; Function Attrs: nounwind uwtable
define i64 @quantize_q5_0(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree noundef writeonly captures(none) %1, i64 noundef %2, i64 noundef %3, ptr nofree noundef readonly captures(address_is_null) %4) local_unnamed_addr #6 {
bb.a:
  %i.a = alloca [32 x float], align 16            ; 12 uses
  %i.b = alloca [32 x i8], align 16               ; 21 uses
  %.not = icmp eq ptr %4, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = mul nsw i64 %3, %2
  tail call void @quantize_row_q5_0_ref(ptr noundef %0, ptr noundef %1, i64 noundef %i.c)
  %i.d = tail call i64 @ggml_row_size(i32 noundef 6, i64 noundef %3) #14
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.e = tail call i64 @ggml_row_size(i32 noundef 6, i64 noundef %3) #14 ; 4 uses
  %i.f = icmp sgt i64 %2, 0
  br i1 %i.f, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.c
  %i.g = uitofp nneg i64 %3 to float
  %i.h = lshr i64 %3, 5
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %or.cond = icmp sgt i64 %3, 31
  br i1 %or.cond, label %.lr.ph.i.preheader.us.us.preheader, label %.loopexit

.lr.ph.i.preheader.us.us.preheader:               ; preds = %.lr.ph
  %xtraiter = and i64 %3, 3                       ; 3 uses
  %unroll_iter = and i64 %3, 9223372036854775804
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod76 = icmp ne i64 %xtraiter, 0
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 20 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 28 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  br label %.lr.ph.i.preheader.us.us

.lr.ph.i.preheader.us.us:                         ; preds = %.lr.ph.i.preheader.us.us.preheader, %quantize_row_q5_0_impl.exit.loopexit.us.us
  %.034.us.us = phi i64 [ %i.re, %quantize_row_q5_0_impl.exit.loopexit.us.us ], [ 0, %.lr.ph.i.preheader.us.us.preheader ]
  %.02233.us.us = phi ptr [ %i.rd, %quantize_row_q5_0_impl.exit.loopexit.us.us ], [ %1, %.lr.ph.i.preheader.us.us.preheader ] ; 2 uses
  %.02432.us.us = phi ptr [ %i.rc, %quantize_row_q5_0_impl.exit.loopexit.us.us ], [ %0, %.lr.ph.i.preheader.us.us.preheader ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !444)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !445)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14, !noalias !446
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14, !noalias !446
  br label %.lr.ph.i.us.us

.lr.ph.i.us.us:                                   ; preds = %.lr.ph.i.us.us, %.lr.ph.i.preheader.us.us
  %indvars.iv.i.us.us = phi i64 [ 0, %.lr.ph.i.preheader.us.us ], [ %indvars.iv.next.i.us.us.3, %.lr.ph.i.us.us ] ; 5 uses
  %.065.i.us.us = phi float [ 0.000000e+00, %.lr.ph.i.preheader.us.us ], [ %i.ar, %.lr.ph.i.us.us ]
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.us.us ], [ %niter.next.3, %.lr.ph.i.us.us ]
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %.02432.us.us, i64 %indvars.iv.i.us.us
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !36, !alias.scope !444 ; 2 uses
  %i.af = tail call float @llvm.fmuladd.f32(float %i.ae, float %i.ae, float %.065.i.us.us)
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %.02432.us.us, i64 %indvars.iv.i.us.us
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !36, !alias.scope !444 ; 2 uses
  %i.aj = tail call float @llvm.fmuladd.f32(float %i.ai, float %i.ai, float %i.af)
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %.02432.us.us, i64 %indvars.iv.i.us.us
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load float, ptr %i.al, align 4, !tbaa !36, !alias.scope !444 ; 2 uses
  %i.an = tail call float @llvm.fmuladd.f32(float %i.am, float %i.am, float %i.aj)
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %.02432.us.us, i64 %indvars.iv.i.us.us
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 12
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !36, !alias.scope !444 ; 2 uses
  %i.ar = tail call float @llvm.fmuladd.f32(float %i.aq, float %i.aq, float %i.an) ; 3 uses
  %indvars.iv.next.i.us.us.3 = add nuw nsw i64 %indvars.iv.i.us.us, 4 ; 2 uses
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.i.us.us.unr-lcssa, label %.lr.ph.i.us.us, !llvm.loop !436

._crit_edge.i.us.us.unr-lcssa:                    ; preds = %.lr.ph.i.us.us
  br i1 %lcmp.mod.not, label %._crit_edge.i.us.us, label %.lr.ph.i.us.us.epil.preheader

.lr.ph.i.us.us.epil.preheader:                    ; preds = %._crit_edge.i.us.us.unr-lcssa
  tail call void @llvm.assume(i1 %lcmp.mod76)
  br label %.lr.ph.i.us.us.epil

.lr.ph.i.us.us.epil:                              ; preds = %.lr.ph.i.us.us.epil, %.lr.ph.i.us.us.epil.preheader
  %indvars.iv.i.us.us.epil = phi i64 [ %indvars.iv.next.i.us.us.epil, %.lr.ph.i.us.us.epil ], [ %indvars.iv.next.i.us.us.3, %.lr.ph.i.us.us.epil.preheader ] ; 2 uses
  %.065.i.us.us.epil = phi float [ %i.au, %.lr.ph.i.us.us.epil ], [ %i.ar, %.lr.ph.i.us.us.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.us.us.epil ], [ 0, %.lr.ph.i.us.us.epil.preheader ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %.02432.us.us, i64 %indvars.iv.i.us.us.epil
  %i.at = load float, ptr %i.as, align 4, !tbaa !36, !alias.scope !444 ; 2 uses
  %i.au = tail call float @llvm.fmuladd.f32(float %i.at, float %i.at, float %.065.i.us.us.epil) ; 2 uses
  %indvars.iv.next.i.us.us.epil = add nuw nsw i64 %indvars.iv.i.us.us.epil, 1
end_hunk_10
begin_hunk_11_@quantize_q5_0:bb.a
  %i.ir = tail call i32 @llvm.umax.i32(i32 %i.iq, i32 4194288)
  %i.is = tail call i32 @llvm.umin.i32(i32 %i.ir, i32 4194319) ; 2 uses
  %..i.i.us.us = add nsw i32 %i.is, -4194304
  %i.it = trunc i32 %i.is to i8
  %i.iu = add nsw i8 %i.it, 16
  %i.iv = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv231.i.i.us.us
  store i8 %i.iu, ptr %i.iv, align 1, !tbaa !34, !alias.scope !448, !noalias !446
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv231.i.i.us.us
  %i.ix = load float, ptr %i.iw, align 4, !tbaa !36, !alias.scope !449, !noalias !446
  %i.iy = sitofp i32 %..i.i.us.us to float
  %i.iz = insertelement <2 x float> poison, float %i.ix, i64 0
  %i.ja = shufflevector <2 x float> %i.iz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jb = insertelement <2 x float> poison, float %i.iy, i64 0 ; 2 uses
  %i.jc = insertelement <2 x float> %i.jb, float %i.im, i64 1
  %i.jd = fmul <2 x float> %i.ja, %i.jc
  %i.je = shufflevector <2 x float> %i.jb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jf = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jd, <2 x float> %i.je, <2 x float> %i.ik) ; 3 uses
  %indvars.iv.next232.i.i.us.us = add nuw nsw i64 %indvars.iv231.i.i.us.us, 1 ; 2 uses
  %exitcond235.not.i.i.us.us = icmp eq i64 %indvars.iv.next232.i.i.us.us, 32
  br i1 %exitcond235.not.i.i.us.us, label %bb.h, label %bb.g, !llvm.loop !12

bb.h:                                             ; preds = %bb.g
  %i.jg = extractelement <2 x float> %i.jf, i64 0 ; 2 uses
  %i.jh = fcmp une float %i.jg, 0.000000e+00
  %i.ji = extractelement <2 x float> %i.jf, i64 1 ; 2 uses
  %i.jj = fdiv float %i.ji, %i.jg
  %i.jk = select i1 %i.jh, float %i.jj, float 0.000000e+00 ; 2 uses
  %i.jl = fmul float %i.ji, %i.jk
  %i.jm = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.jn = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  %i.jo = getelementptr inbounds nuw i8, ptr %i.ax, i64 48
  %i.jp = getelementptr inbounds nuw i8, ptr %i.ax, i64 64
  %i.jq = getelementptr inbounds nuw i8, ptr %i.ax, i64 80
  %i.jr = getelementptr inbounds nuw i8, ptr %i.ax, i64 96
  %i.js = getelementptr inbounds nuw i8, ptr %i.ax, i64 112
  %.promoted = load <4 x i8>, ptr %i.b, align 1
  %.promoted82 = load <4 x i8>, ptr %i.q, align 1
  %.promoted84 = load <4 x i8>, ptr %i.r, align 1
  %.promoted86 = load <4 x i8>, ptr %i.s, align 1
  %.promoted88 = load <4 x i8>, ptr %i.t, align 1
  %.promoted90 = load <4 x i8>, ptr %i.u, align 1
  %.promoted92 = load <4 x i8>, ptr %i.v, align 1
  %.promoted94 = load <4 x i8>, ptr %i.w, align 1
  br label %bb.i

bb.i:                                             ; preds = %bb.l, %bb.h
  %i.jt = phi <4 x i8> [ %.promoted94, %bb.h ], [ %i.nt, %bb.l ] ; 3 uses
  %i.ju = phi <4 x i8> [ %.promoted92, %bb.h ], [ %i.nu, %bb.l ] ; 3 uses
  %i.jv = phi <4 x i8> [ %.promoted90, %bb.h ], [ %i.nv, %bb.l ] ; 3 uses
  %i.jw = phi <4 x i8> [ %.promoted88, %bb.h ], [ %i.nw, %bb.l ] ; 3 uses
  %i.jx = phi <4 x i8> [ %.promoted86, %bb.h ], [ %i.nx, %bb.l ] ; 3 uses
  %i.jy = phi <4 x i8> [ %.promoted84, %bb.h ], [ %i.ny, %bb.l ] ; 3 uses
  %i.jz = phi <4 x i8> [ %.promoted82, %bb.h ], [ %i.nz, %bb.l ] ; 3 uses
  %i.ka = phi <4 x i8> [ %.promoted, %bb.h ], [ %i.oa, %bb.l ] ; 3 uses
  %.0169221.i.i.us.us = phi i32 [ -9, %bb.h ], [ %i.ob, %bb.l ] ; 3 uses
  %.0170220.i.i.us.us = phi float [ %i.jl, %bb.h ], [ %.1.i.i.us.us, %bb.l ] ; 4 uses
  %.0171219.i.i.us.us = phi float [ %i.jk, %bb.h ], [ %.1172.i.i.us.us, %bb.l ] ; 3 uses
  %i.kb = icmp eq i32 %.0169221.i.i.us.us, 0
  br i1 %i.kb, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.kc = sitofp i32 %.0169221.i.i.us.us to float
  %i.kd = tail call float @llvm.fmuladd.f32(float %i.kc, float 1.000000e-01, float 1.600000e+01)
  %i.ke = fneg float %i.kd
  %i.kf = fdiv float %i.ke, %.1185.i.i.us.us.1    ; 2 uses
  br label %.split.i.i.us.us

.split.i.i.us.us:                                 ; preds = %.split.i.i.us.us, %bb.j
  %indvars.iv236.i.i.us.us = phi i64 [ %indvars.iv.next237.i.i.us.us, %.split.i.i.us.us ], [ 0, %bb.j ] ; 3 uses
  %i.kg = phi <2 x float> [ %i.ky, %.split.i.i.us.us ], [ zeroinitializer, %bb.j ]
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %indvars.iv236.i.i.us.us
  %i.ki = load float, ptr %i.kh, align 4, !tbaa !36, !alias.scope !450 ; 2 uses
  %i.kj = fmul float %i.kf, %i.ki
  %i.kk = fadd float %i.kj, f0x4B400000
  %i.kl = bitcast float %i.kk to i32
  %i.km = and i32 %i.kl, 8388607
  %i.kn = tail call i32 @llvm.umax.i32(i32 %i.km, i32 4194288)
  %i.ko = tail call i32 @llvm.umin.i32(i32 %i.kn, i32 4194319)
  %.202.i.i.us.us = add nsw i32 %i.ko, -4194304
  %i.kp = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv236.i.i.us.us
  %i.kq = load float, ptr %i.kp, align 4, !tbaa !36, !alias.scope !449, !noalias !446
  %i.kr = sitofp i32 %.202.i.i.us.us to float
  %i.ks = insertelement <2 x float> poison, float %i.kq, i64 0
  %i.kt = shufflevector <2 x float> %i.ks, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ku = insertelement <2 x float> poison, float %i.kr, i64 0 ; 2 uses
  %i.kv = insertelement <2 x float> %i.ku, float %i.ki, i64 1
  %i.kw = fmul <2 x float> %i.kt, %i.kv
  %i.kx = shufflevector <2 x float> %i.ku, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ky = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kw, <2 x float> %i.kx, <2 x float> %i.kg) ; 3 uses
  %indvars.iv.next237.i.i.us.us = add nuw nsw i64 %indvars.iv236.i.i.us.us, 1 ; 2 uses
  %exitcond240.not.i.i.us.us = icmp eq i64 %indvars.iv.next237.i.i.us.us, 32
  br i1 %exitcond240.not.i.i.us.us, label %.split216.us.i.i.us.us, label %.split.i.i.us.us, !llvm.loop !13

.split216.us.i.i.us.us:                           ; preds = %.split.i.i.us.us
  %i.kz = extractelement <2 x float> %i.ky, i64 0 ; 3 uses
  %i.la = fcmp ogt float %i.kz, 0.000000e+00
  br i1 %i.la, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.split216.us.i.i.us.us
  %i.lb = extractelement <2 x float> %i.ky, i64 1 ; 4 uses
  %i.lc = fmul float %i.lb, %i.lb
  %i.ld = fmul float %.0170220.i.i.us.us, %i.kz
  %i.le = fcmp ogt float %i.lc, %i.ld
  br i1 %i.le, label %vector.body65, label %bb.l

vector.body65:                                    ; preds = %bb.k
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.kf, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 8 uses
  %wide.load67 = load <4 x float>, ptr %i.ax, align 4, !tbaa !36, !alias.scope !450
  %wide.load68 = load <4 x float>, ptr %i.jm, align 4, !tbaa !36, !alias.scope !450
  %i.lf = fmul <4 x float> %broadcast.splat, %wide.load67
  %i.lg = fmul <4 x float> %broadcast.splat, %wide.load68
  %i.lh = fadd <4 x float> %i.lf, splat (float f0x4B400000)
  %i.li = fadd <4 x float> %i.lg, splat (float f0x4B400000)
  %i.lj = bitcast <4 x float> %i.lh to <4 x i32>
  %i.lk = bitcast <4 x float> %i.li to <4 x i32>
  %i.ll = and <4 x i32> %i.lj, splat (i32 8388607)
  %i.lm = and <4 x i32> %i.lk, splat (i32 8388607)
  %i.ln = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %i.ll, <4 x i32> splat (i32 4194288))
  %i.lo = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %i.lm, <4 x i32> splat (i32 4194288))
  %i.lp = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.ln, <4 x i32> splat (i32 4194319))
  %i.lq = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.lo, <4 x i32> splat (i32 4194319))
  %i.lr = trunc <4 x i32> %i.lp to <4 x i8>
  %i.ls = trunc <4 x i32> %i.lq to <4 x i8>
  %i.lt = add nsw <4 x i8> %i.lr, splat (i8 16)
  %i.lu = add nsw <4 x i8> %i.ls, splat (i8 16)
  %wide.load67.1 = load <4 x float>, ptr %i.jn, align 4, !tbaa !36, !alias.scope !450
  %wide.load68.1 = load <4 x float>, ptr %i.jo, align 4, !tbaa !36, !alias.scope !450
  %i.lv = fmul <4 x float> %broadcast.splat, %wide.load67.1
  %i.lw = fmul <4 x float> %broadcast.splat, %wide.load68.1
  %i.lx = fadd <4 x float> %i.lv, splat (float f0x4B400000)
  %i.ly = fadd <4 x float> %i.lw, splat (float f0x4B400000)
  %i.lz = bitcast <4 x float> %i.lx to <4 x i32>
  %i.ma = bitcast <4 x float> %i.ly to <4 x i32>
  %i.mb = and <4 x i32> %i.lz, splat (i32 8388607)
  %i.mc = and <4 x i32> %i.ma, splat (i32 8388607)
  %i.md = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %i.mb, <4 x i32> splat (i32 4194288))
  %i.me = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %i.mc, <4 x i32> splat (i32 4194288))
  %i.mf = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.md, <4 x i32> splat (i32 4194319))
  %i.mg = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.me, <4 x i32> splat (i32 4194319))
  %i.mh = trunc <4 x i32> %i.mf to <4 x i8>
  %i.mi = trunc <4 x i32> %i.mg to <4 x i8>
  %i.mj = add nsw <4 x i8> %i.mh, splat (i8 16)
  %i.mk = add nsw <4 x i8> %i.mi, splat (i8 16)
  %wide.load67.2 = load <4 x float>, ptr %i.jp, align 4, !tbaa !36, !alias.scope !450
  %wide.load68.2 = load <4 x float>, ptr %i.jq, align 4, !tbaa !36, !alias.scope !450
  %i.ml = fmul <4 x float> %broadcast.splat, %wide.load67.2
  %i.mm = fmul <4 x float> %broadcast.splat, %wide.load68.2
  %i.mn = fadd <4 x float> %i.ml, splat (float f0x4B400000)
  %i.mo = fadd <4 x float> %i.mm, splat (float f0x4B400000)
  %i.mp = bitcast <4 x float> %i.mn to <4 x i32>
  %i.mq = bitcast <4 x float> %i.mo to <4 x i32>
  %i.mr = and <4 x i32> %i.mp, splat (i32 8388607)
  %i.ms = and <4 x i32> %i.mq, splat (i32 8388607)
  %i.mt = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %i.mr, <4 x i32> splat (i32 4194288))
  %i.mu = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %i.ms, <4 x i32> splat (i32 4194288))
  %i.mv = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.mt, <4 x i32> splat (i32 4194319))
  %i.mw = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.mu, <4 x i32> splat (i32 4194319))
  %i.mx = trunc <4 x i32> %i.mv to <4 x i8>
  %i.my = trunc <4 x i32> %i.mw to <4 x i8>
  %i.mz = add nsw <4 x i8> %i.mx, splat (i8 16)
  %i.na = add nsw <4 x i8> %i.my, splat (i8 16)
  %wide.load67.3 = load <4 x float>, ptr %i.jr, align 4, !tbaa !36, !alias.scope !450
  %wide.load68.3 = load <4 x float>, ptr %i.js, align 4, !tbaa !36, !alias.scope !450
  %i.nb = fmul <4 x float> %broadcast.splat, %wide.load67.3
  %i.nc = fmul <4 x float> %broadcast.splat, %wide.load68.3
  %i.nd = fadd <4 x float> %i.nb, splat (float f0x4B400000)
  %i.ne = fadd <4 x float> %i.nc, splat (float f0x4B400000)
  %i.nf = bitcast <4 x float> %i.nd to <4 x i32>
  %i.ng = bitcast <4 x float> %i.ne to <4 x i32>
  %i.nh = and <4 x i32> %i.nf, splat (i32 8388607)
  %i.ni = and <4 x i32> %i.ng, splat (i32 8388607)
  %i.nj = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %i.nh, <4 x i32> splat (i32 4194288))
  %i.nk = tail call <4 x i32> @llvm.umax.v4i32(<4 x i32> %i.ni, <4 x i32> splat (i32 4194288))
  %i.nl = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.nj, <4 x i32> splat (i32 4194319))
  %i.nm = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.nk, <4 x i32> splat (i32 4194319))
  %i.nn = trunc <4 x i32> %i.nl to <4 x i8>
  %i.no = trunc <4 x i32> %i.nm to <4 x i8>
  %i.np = add nsw <4 x i8> %i.nn, splat (i8 16)
  %i.nq = add nsw <4 x i8> %i.no, splat (i8 16)
  %i.nr = fdiv float %i.lb, %i.kz                 ; 2 uses
  %i.ns = fmul float %i.lb, %i.nr
  br label %bb.l

bb.l:                                             ; preds = %vector.body65, %bb.k, %.split216.us.i.i.us.us, %bb.i
  %i.nt = phi <4 x i8> [ %i.jt, %bb.i ], [ %i.nq, %vector.body65 ], [ %i.jt, %bb.k ], [ %i.jt, %.split216.us.i.i.us.us ] ; 2 uses
  %i.nu = phi <4 x i8> [ %i.ju, %bb.i ], [ %i.np, %vector.body65 ], [ %i.ju, %bb.k ], [ %i.ju, %.split216.us.i.i.us.us ] ; 2 uses
  %i.nv = phi <4 x i8> [ %i.jv, %bb.i ], [ %i.na, %vector.body65 ], [ %i.jv, %bb.k ], [ %i.jv, %.split216.us.i.i.us.us ] ; 2 uses
  %i.nw = phi <4 x i8> [ %i.jw, %bb.i ], [ %i.mz, %vector.body65 ], [ %i.jw, %bb.k ], [ %i.jw, %.split216.us.i.i.us.us ] ; 2 uses
  %i.nx = phi <4 x i8> [ %i.jx, %bb.i ], [ %i.mk, %vector.body65 ], [ %i.jx, %bb.k ], [ %i.jx, %.split216.us.i.i.us.us ] ; 2 uses
  %i.ny = phi <4 x i8> [ %i.jy, %bb.i ], [ %i.mj, %vector.body65 ], [ %i.jy, %bb.k ], [ %i.jy, %.split216.us.i.i.us.us ] ; 2 uses
  %i.nz = phi <4 x i8> [ %i.jz, %bb.i ], [ %i.lu, %vector.body65 ], [ %i.jz, %bb.k ], [ %i.jz, %.split216.us.i.i.us.us ] ; 2 uses
  %i.oa = phi <4 x i8> [ %i.ka, %bb.i ], [ %i.lt, %vector.body65 ], [ %i.ka, %bb.k ], [ %i.ka, %.split216.us.i.i.us.us ] ; 2 uses
  %.1172.i.i.us.us = phi float [ %.0171219.i.i.us.us, %bb.i ], [ %i.nr, %vector.body65 ], [ %.0171219.i.i.us.us, %bb.k ], [ %.0171219.i.i.us.us, %.split216.us.i.i.us.us ] ; 2 uses
  %.1.i.i.us.us = phi float [ %.0170220.i.i.us.us, %bb.i ], [ %i.ns, %vector.body65 ], [ %.0170220.i.i.us.us, %bb.k ], [ %.0170220.i.i.us.us, %.split216.us.i.i.us.us ]
  %i.ob = add nsw i32 %.0169221.i.i.us.us, 1      ; 2 uses
  %exitcond251.not.i.i.us.us = icmp eq i32 %i.ob, 10
  br i1 %exitcond251.not.i.i.us.us, label %make_qx_quants.exit.i.us.us.loopexit, label %bb.i, !llvm.loop !14

.preheader.preheader.i.i.us.us:                   ; preds = %bb.e
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.b, i8 0, i64 range(i64 0, 33) 32, i1 false), !tbaa !34, !alias.scope !448, !noalias !446
  br label %make_qx_quants.exit.i.us.us

make_qx_quants.exit.i.us.us.loopexit:             ; preds = %bb.l
  store <4 x i8> %i.oa, ptr %i.b, align 1
  store <4 x i8> %i.nz, ptr %i.q, align 1
  store <4 x i8> %i.ny, ptr %i.r, align 1
  store <4 x i8> %i.nx, ptr %i.s, align 1
  store <4 x i8> %i.nw, ptr %i.t, align 1
  store <4 x i8> %i.nv, ptr %i.u, align 1
  store <4 x i8> %i.nu, ptr %i.v, align 1
  store <4 x i8> %i.nt, ptr %i.w, align 1
  br label %make_qx_quants.exit.i.us.us

make_qx_quants.exit.i.us.us:                      ; preds = %make_qx_quants.exit.i.us.us.loopexit, %.preheader.preheader.i.i.us.us
  %.2.i.i.us.us = phi float [ 0.000000e+00, %.preheader.preheader.i.i.us.us ], [ %.1172.i.i.us.us, %make_qx_quants.exit.i.us.us.loopexit ] ; 2 uses
  %i.oc = tail call float @llvm.fabs.f32(float %.2.i.i.us.us)
  %i.od = fmul float %i.oc, f0x77800000
  %i.oe = fmul float %i.od, f0x08800000
  %i.of = bitcast float %.2.i.i.us.us to i32      ; 2 uses
  %i.og = shl i32 %i.of, 1                        ; 2 uses
  %i.oh = tail call i32 @llvm.umax.i32(i32 %i.og, i32 1895825408)
  %spec.store.select.i.i.us.us = lshr exact i32 %i.oh, 1
  %i.oi = and i32 %spec.store.select.i.i.us.us, 2139095040
  %i.oj = add nuw i32 %i.oi, 125829120
  %i.ok = bitcast i32 %i.oj to float
  %i.ol = fadd float %i.oe, %i.ok
  %i.om = bitcast float %i.ol to i32              ; 2 uses
  %i.on = lshr i32 %i.om, 13
  %i.oo = and i32 %i.on, 31744
  %i.op = and i32 %i.om, 4095
  %i.oq = add nuw nsw i32 %i.oo, %i.op
  %i.or = lshr i32 %i.of, 16
  %i.os = and i32 %i.or, 32768
  %i.ot = icmp ugt i32 %i.og, -16777216
  %i.ou = select i1 %i.ot, i32 32256, i32 %i.oq
  %i.ov = or i32 %i.ou, %i.os
  %i.ow = trunc nuw i32 %i.ov to i16
  %i.ox = getelementptr inbounds nuw [22 x i8], ptr %.02233.us.us, i64 %indvars.iv87.i.us.us ; 6 uses
  store i16 %i.ow, ptr %i.ox, align 2, !tbaa !39, !alias.scope !445
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ox, i64 6
  %wide.load = load <4 x i8>, ptr %i.b, align 16, !tbaa !34, !noalias !446 ; 2 uses
  %wide.load61 = load <4 x i8>, ptr %i.p, align 4, !tbaa !34, !noalias !446 ; 2 uses
  %wide.load62 = load <4 x i8>, ptr %i.x, align 16, !tbaa !34, !noalias !446 ; 2 uses
  %wide.load63 = load <4 x i8>, ptr %i.y, align 4, !tbaa !34, !noalias !446 ; 2 uses
  %i.oz = and <4 x i8> %wide.load, splat (i8 15)
  %i.pa = and <4 x i8> %wide.load61, splat (i8 15)
  %i.pb = shl <4 x i8> %wide.load62, splat (i8 4)
  %i.pc = shl <4 x i8> %wide.load63, splat (i8 4)
  %i.pd = or disjoint <4 x i8> %i.pb, %i.oz
  %i.pe = or disjoint <4 x i8> %i.pc, %i.pa
  %i.pf = getelementptr inbounds nuw i8, ptr %i.ox, i64 10
  store <4 x i8> %i.pd, ptr %i.oy, align 2, !tbaa !34, !alias.scope !445
  store <4 x i8> %i.pe, ptr %i.pf, align 2, !tbaa !34, !alias.scope !445
  %i.pg = lshr <4 x i8> %wide.load, splat (i8 4)
  %i.ph = lshr <4 x i8> %wide.load61, splat (i8 4)
  %i.pi = and <4 x i8> %i.pg, splat (i8 1)
  %i.pj = and <4 x i8> %i.ph, splat (i8 1)
  %i.pk = zext nneg <4 x i8> %i.pi to <4 x i32>
  %i.pl = zext nneg <4 x i8> %i.pj to <4 x i32>
  %i.pm = shl nuw nsw <4 x i32> %i.pk, <i32 0, i32 1, i32 2, i32 3>
  %i.pn = shl nuw nsw <4 x i32> %i.pl, <i32 4, i32 5, i32 6, i32 7>
  %i.po = lshr <4 x i8> %wide.load62, splat (i8 4)
  %i.pp = lshr <4 x i8> %wide.load63, splat (i8 4)
  %i.pq = and <4 x i8> %i.po, splat (i8 1)
  %i.pr = and <4 x i8> %i.pp, splat (i8 1)
  %i.ps = zext nneg <4 x i8> %i.pq to <4 x i32>
  %i.pt = zext nneg <4 x i8> %i.pr to <4 x i32>
  %i.pu = shl nuw nsw <4 x i32> %i.ps, <i32 16, i32 17, i32 18, i32 19>
  %i.pv = shl nuw nsw <4 x i32> %i.pt, <i32 20, i32 21, i32 22, i32 23>
  %i.pw = or disjoint <4 x i32> %i.pu, %i.pm
  %i.px = or disjoint <4 x i32> %i.pv, %i.pn
  %wide.load.1 = load <4 x i8>, ptr %i.z, align 8, !tbaa !34, !noalias !446 ; 2 uses
  %wide.load61.1 = load <4 x i8>, ptr %i.aa, align 4, !tbaa !34, !noalias !446 ; 2 uses
  %wide.load62.1 = load <4 x i8>, ptr %i.ab, align 8, !tbaa !34, !noalias !446 ; 2 uses
  %wide.load63.1 = load <4 x i8>, ptr %i.ac, align 4, !tbaa !34, !noalias !446 ; 2 uses
  %i.py = and <4 x i8> %wide.load.1, splat (i8 15)
  %i.pz = and <4 x i8> %wide.load61.1, splat (i8 15)
  %i.qa = shl <4 x i8> %wide.load62.1, splat (i8 4)
  %i.qb = shl <4 x i8> %wide.load63.1, splat (i8 4)
  %i.qc = or disjoint <4 x i8> %i.qa, %i.py
  %i.qd = or disjoint <4 x i8> %i.qb, %i.pz
  %i.qe = getelementptr inbounds nuw i8, ptr %i.ox, i64 14
  %i.qf = getelementptr inbounds nuw i8, ptr %i.ox, i64 18
  store <4 x i8> %i.qc, ptr %i.qe, align 2, !tbaa !34, !alias.scope !445
  store <4 x i8> %i.qd, ptr %i.qf, align 2, !tbaa !34, !alias.scope !445
  %i.qg = lshr <4 x i8> %wide.load.1, splat (i8 4)
  %i.qh = lshr <4 x i8> %wide.load61.1, splat (i8 4)
  %i.qi = and <4 x i8> %i.qg, splat (i8 1)
  %i.qj = and <4 x i8> %i.qh, splat (i8 1)
  %i.qk = zext nneg <4 x i8> %i.qi to <4 x i32>
  %i.ql = zext nneg <4 x i8> %i.qj to <4 x i32>
  %i.qm = shl nuw nsw <4 x i32> %i.qk, <i32 8, i32 9, i32 10, i32 11>
  %i.qn = shl nuw nsw <4 x i32> %i.ql, <i32 12, i32 13, i32 14, i32 15>
  %i.qo = lshr <4 x i8> %wide.load62.1, splat (i8 4)
  %i.qp = lshr <4 x i8> %wide.load63.1, splat (i8 4)
  %i.qq = and <4 x i8> %i.qo, splat (i8 1)
  %i.qr = and <4 x i8> %i.qp, splat (i8 1)
  %i.qs = zext nneg <4 x i8> %i.qq to <4 x i32>
  %i.qt = zext nneg <4 x i8> %i.qr to <4 x i32>
  %i.qu = shl nuw nsw <4 x i32> %i.qs, <i32 24, i32 25, i32 26, i32 27>
  %i.qv = shl nuw <4 x i32> %i.qt, <i32 28, i32 29, i32 30, i32 31>
  %i.qw = or disjoint <4 x i32> %i.qu, %i.qm
  %i.qx = or disjoint <4 x i32> %i.qv, %i.qn
  %i.qy = or disjoint <4 x i32> %i.qw, %i.pw
  %i.qz = or disjoint <4 x i32> %i.qx, %i.px
  %bin.rdx = or disjoint <4 x i32> %i.qz, %i.qy
  %i.ra = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %bin.rdx)
  %i.rb = getelementptr inbounds nuw i8, ptr %i.ox, i64 2
  store i32 %i.ra, ptr %i.rb, align 2, !alias.scope !445
  %indvars.iv.next88.i.us.us = add nuw nsw i64 %indvars.iv87.i.us.us, 1 ; 2 uses
  %exitcond90.not.i.us.us = icmp eq i64 %indvars.iv.next88.i.us.us, %i.h
  br i1 %exitcond90.not.i.us.us, label %quantize_row_q5_0_impl.exit.loopexit.us.us, label %.lr.ph71.i.us.us, !llvm.loop !442

quantize_row_q5_0_impl.exit.loopexit.us.us:       ; preds = %make_qx_quants.exit.i.us.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14, !noalias !446
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14, !noalias !446
  %i.rc = getelementptr inbounds nuw [4 x i8], ptr %.02432.us.us, i64 %3
  %i.rd = getelementptr inbounds nuw i8, ptr %.02233.us.us, i64 %i.e
  %i.re = add nuw nsw i64 %.034.us.us, 1          ; 2 uses
  %exitcond42.not = icmp eq i64 %i.re, %2
  br i1 %exitcond42.not, label %.loopexit, label %.lr.ph.i.preheader.us.us, !llvm.loop !443

.loopexit:                                        ; preds = %quantize_row_q5_0_impl.exit.loopexit.us.us, %.lr.ph, %bb.c, %bb.b
  %.pn = phi i64 [ %i.d, %bb.b ], [ %i.e, %.lr.ph ], [ %i.e, %bb.c ], [ %i.e, %quantize_row_q5_0_impl.exit.loopexit.us.us ]
  %.023 = mul i64 %.pn, %2
  ret i64 %.023
}

; Function Attrs: nounwind uwtable
define i64 @quantize_q5_1(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree noundef writeonly captures(none) %1, i64 noundef %2, i64 noundef %3, ptr nofree noundef readonly captures(address_is_null) %4) local_unnamed_addr #6 {
bb.a:
  %i.a = alloca [32 x float], align 16            ; 15 uses
  %i.b = alloca [32 x i8], align 16               ; 13 uses
  %i.c = alloca [32 x i8], align 16               ; 6 uses
  %.not = icmp eq ptr %4, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = mul nsw i64 %3, %2
  tail call void @quantize_row_q5_1_ref(ptr noundef %0, ptr noundef %1, i64 noundef %i.d)
  %i.e = tail call i64 @ggml_row_size(i32 noundef 7, i64 noundef %3) #14
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.f = tail call i64 @ggml_row_size(i32 noundef 7, i64 noundef %3) #14 ; 4 uses
  %i.g = icmp sgt i64 %2, 0
  br i1 %i.g, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.c
  %i.h = uitofp nneg i64 %3 to float
  %i.i = lshr i64 %3, 5
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %or.cond = icmp sgt i64 %3, 31
  br i1 %or.cond, label %.lr.ph.i.preheader.us.us.preheader, label %.loopexit

.lr.ph.i.preheader.us.us.preheader:               ; preds = %.lr.ph
  %xtraiter = and i64 %3, 3                       ; 3 uses
  %unroll_iter = and i64 %3, 9223372036854775804
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod87 = icmp ne i64 %xtraiter, 0
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  br label %.lr.ph.i.preheader.us.us

.lr.ph.i.preheader.us.us:                         ; preds = %.lr.ph.i.preheader.us.us.preheader, %quantize_row_q5_1_impl.exit.loopexit.us.us
  %.037.us.us = phi i64 [ %i.pk, %quantize_row_q5_1_impl.exit.loopexit.us.us ], [ 0, %.lr.ph.i.preheader.us.us.preheader ]
  %.02236.us.us = phi ptr [ %i.pj, %quantize_row_q5_1_impl.exit.loopexit.us.us ], [ %1, %.lr.ph.i.preheader.us.us.preheader ] ; 2 uses
  %.02435.us.us = phi ptr [ %i.pi, %quantize_row_q5_1_impl.exit.loopexit.us.us ], [ %0, %.lr.ph.i.preheader.us.us.preheader ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !463)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !464)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14, !noalias !465
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14, !noalias !465
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14, !noalias !465
  br label %.lr.ph.i.us.us

.lr.ph.i.us.us:                                   ; preds = %.lr.ph.i.us.us, %.lr.ph.i.preheader.us.us
  %indvars.iv.i.us.us = phi i64 [ 0, %.lr.ph.i.preheader.us.us ], [ %indvars.iv.next.i.us.us.3, %.lr.ph.i.us.us ] ; 5 uses
  %.072.i.us.us = phi float [ 0.000000e+00, %.lr.ph.i.preheader.us.us ], [ %i.al, %.lr.ph.i.us.us ]
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.us.us ], [ %niter.next.3, %.lr.ph.i.us.us ]
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %.02435.us.us, i64 %indvars.iv.i.us.us
  %i.y = load float, ptr %i.x, align 4, !tbaa !36, !alias.scope !463 ; 2 uses
  %i.z = tail call float @llvm.fmuladd.f32(float %i.y, float %i.y, float %.072.i.us.us)
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %.02435.us.us, i64 %indvars.iv.i.us.us
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !36, !alias.scope !463 ; 2 uses
  %i.ad = tail call float @llvm.fmuladd.f32(float %i.ac, float %i.ac, float %i.z)
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %.02435.us.us, i64 %indvars.iv.i.us.us
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load float, ptr %i.af, align 4, !tbaa !36, !alias.scope !463 ; 2 uses
end_hunk_11
begin_hunk_12_@quantize_q5_1:bb.a
  %i.hi = tail call float @sqrtf(float noundef %i.hh) #14, !noalias !465
  %i.hj = getelementptr inbounds nuw i8, ptr %i.ar, i64 124
  %i.hk = load float, ptr %i.hj, align 4, !tbaa !36, !alias.scope !463 ; 2 uses
  %i.hl = tail call float @llvm.fmuladd.f32(float %i.hk, float %i.hk, float %i.ap)
  %i.hm = tail call float @sqrtf(float noundef %i.hl) #14, !noalias !465
  %i.hn = load <4 x float>, ptr %i.gw, align 4, !tbaa !36, !noalias !465
  %i.ho = insertelement <4 x float> poison, float %i.ha, i64 0
  %i.hp = insertelement <4 x float> %i.ho, float %i.he, i64 1
  %i.hq = insertelement <4 x float> %i.hp, float %i.hi, i64 2
  %i.hr = insertelement <4 x float> %i.hq, float %i.hm, i64 3
  %i.hs = fmul <4 x float> %i.hn, %i.hr
  store <4 x float> %i.hs, ptr %i.p, align 16, !tbaa !36, !noalias !465
  tail call void @llvm.experimental.noalias.scope.decl(metadata !466)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !467)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !468)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !469)
  %i.ht = extractelement <4 x float> %i.bn, i64 0 ; 2 uses
  %i.hu = fmul float %i.at, %i.ht
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph78.i.us.us
  %indvars.iv.i.i.us.us = phi i64 [ 1, %.lr.ph78.i.us.us ], [ %indvars.iv.next.i.i.us.us, %bb.d ] ; 3 uses
  %.0203230.i.i.us.us = phi float [ %i.hu, %.lr.ph78.i.us.us ], [ %i.ic, %bb.d ]
  %.0204229.i.i.us.us = phi float [ %i.ht, %.lr.ph78.i.us.us ], [ %i.ib, %bb.d ]
  %.0205228.i.i.us.us = phi float [ %i.at, %.lr.ph78.i.us.us ], [ %.1206.i.i.us.us, %bb.d ] ; 2 uses
  %.0207227.i.i.us.us = phi float [ %i.at, %.lr.ph78.i.us.us ], [ %.1208.i.i.us.us, %bb.d ] ; 2 uses
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %indvars.iv.i.i.us.us
  %i.hw = load float, ptr %i.hv, align 4, !tbaa !36, !alias.scope !470 ; 5 uses
  %i.hx = fcmp olt float %i.hw, %.0207227.i.i.us.us
  %.1208.i.i.us.us = select i1 %i.hx, float %i.hw, float %.0207227.i.i.us.us ; 3 uses
  %i.hy = fcmp ogt float %i.hw, %.0205228.i.i.us.us
  %.1206.i.i.us.us = select i1 %i.hy, float %i.hw, float %.0205228.i.i.us.us ; 4 uses
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i.i.us.us
  %i.ia = load float, ptr %i.hz, align 4, !tbaa !36, !alias.scope !467, !noalias !465 ; 2 uses
  %i.ib = fadd float %.0204229.i.i.us.us, %i.ia   ; 3 uses
  %i.ic = tail call float @llvm.fmuladd.f32(float %i.ia, float %i.hw, float %.0203230.i.i.us.us) ; 3 uses
  %indvars.iv.next.i.i.us.us = add nuw nsw i64 %indvars.iv.i.i.us.us, 1 ; 2 uses
  %exitcond.not.i.i.us.us = icmp eq i64 %indvars.iv.next.i.i.us.us, 32
  br i1 %exitcond.not.i.i.us.us, label %bb.e, label %bb.d, !llvm.loop !17

bb.e:                                             ; preds = %bb.d
  %i.id = fcmp ogt float %.1208.i.i.us.us, 0.000000e+00
  %spec.store.select.i.i.us.us = select i1 %i.id, float 0.000000e+00, float %.1208.i.i.us.us ; 6 uses
  %i.ie = fcmp ugt float %.1206.i.i.us.us, %spec.store.select.i.i.us.us
  br i1 %i.ie, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.b, i8 0, i64 32, i1 false), !alias.scope !468, !noalias !465
  %i.if = insertelement <2 x float> <float 0.000000e+00, float poison>, float %spec.store.select.i.i.us.us, i64 1
  br label %make_qkx3_quants.exit.i.us.us

bb.g:                                             ; preds = %bb.e
  %i.ig = fsub float %.1206.i.i.us.us, %spec.store.select.i.i.us.us
  %i.ih = fdiv float 3.100000e+01, %i.ig          ; 2 uses
  %i.ii = fdiv float 1.000000e+00, %i.ih          ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %bb.g
  %indvars.iv252.i.i.us.us = phi i64 [ 0, %bb.g ], [ %indvars.iv.next253.i.i.us.us, %bb.h ] ; 4 uses
  %.0198232.i.i.us.us = phi float [ 0.000000e+00, %bb.g ], [ %i.ja, %bb.h ]
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %indvars.iv252.i.i.us.us
  %i.ik = load float, ptr %i.ij, align 4, !tbaa !36, !alias.scope !470 ; 2 uses
  %i.il = fsub float %i.ik, %spec.store.select.i.i.us.us
  %i.im = fmul float %i.ih, %i.il
  %i.in = fadd float %i.im, f0x4B400000
  %i.io = bitcast float %i.in to i32
  %i.ip = and i32 %i.io, 8388607
  %i.iq = tail call i32 @llvm.umax.i32(i32 %i.ip, i32 4194304)
  %i.ir = tail call i32 @llvm.umin.i32(i32 %i.iq, i32 4194335)
  %i.is = trunc i32 %i.ir to i8                   ; 2 uses
  %i.it = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv252.i.i.us.us
  store i8 %i.is, ptr %i.it, align 1, !tbaa !34, !alias.scope !468, !noalias !465
  %i.iu = uitofp nneg i8 %i.is to float
  %i.iv = tail call float @llvm.fmuladd.f32(float %i.ii, float %i.iu, float %spec.store.select.i.i.us.us)
  %i.iw = fsub float %i.iv, %i.ik                 ; 2 uses
  %i.ix = fmul float %i.iw, %i.iw
  %i.iy = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv252.i.i.us.us
  %i.iz = load float, ptr %i.iy, align 4, !tbaa !36, !alias.scope !467, !noalias !465
  %i.ja = tail call float @llvm.fmuladd.f32(float %i.iz, float %i.ix, float %.0198232.i.i.us.us) ; 2 uses
  %indvars.iv.next253.i.i.us.us = add nuw nsw i64 %indvars.iv252.i.i.us.us, 1 ; 2 uses
  %exitcond256.not.i.i.us.us = icmp eq i64 %indvars.iv.next253.i.i.us.us, 32
  br i1 %exitcond256.not.i.i.us.us, label %.preheader226.i.i.us.us.preheader, label %bb.h, !llvm.loop !9

.preheader226.i.i.us.us.preheader:                ; preds = %bb.h
  %i.jb = insertelement <2 x float> poison, float %i.ic, i64 0
  %i.jc = insertelement <2 x float> poison, float %i.ib, i64 0
  %i.jd = insertelement <2 x float> %i.jc, float %i.ic, i64 1
  br label %.preheader226.i.i.us.us

.preheader226.i.i.us.us:                          ; preds = %.preheader226.i.i.us.us.preheader, %.loopexit.i.i.us.us
  %.0196244.i.i.us.us = phi i32 [ %i.mf, %.loopexit.i.i.us.us ], [ 0, %.preheader226.i.i.us.us.preheader ] ; 2 uses
  %.1243.i.i.us.us = phi float [ %.3.i.i.us.us, %.loopexit.i.i.us.us ], [ %i.ja, %.preheader226.i.i.us.us.preheader ] ; 3 uses
  %.0199242.i.i.us.us = phi float [ %.2201.i.i.us.us, %.loopexit.i.i.us.us ], [ %i.ii, %.preheader226.i.i.us.us.preheader ] ; 3 uses
  %.2209241.i.i.us.us = phi float [ %.4.i.i.us.us, %.loopexit.i.i.us.us ], [ %spec.store.select.i.i.us.us, %.preheader226.i.i.us.us.preheader ] ; 5 uses
  %i.je = uitofp nneg i32 %.0196244.i.i.us.us to float
  %i.jf = tail call nnan float @llvm.fmuladd.f32(float %i.je, float 5.000000e-02, float f0xBF666666)
  %i.jg = fadd nnan float %i.jf, 3.100000e+01
  %i.jh = fsub float %.1206.i.i.us.us, %.2209241.i.i.us.us
  %i.ji = fdiv float %i.jg, %i.jh
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.preheader226.i.i.us.us
  %indvars.iv257.i.i.us.us = phi i64 [ 0, %.preheader226.i.i.us.us ], [ %indvars.iv.next258.i.i.us.us, %bb.i ] ; 4 uses
  %.0195234.i.i.us.us = phi float [ 0.000000e+00, %.preheader226.i.i.us.us ], [ %i.ka, %bb.i ]
  %i.jj = phi <2 x float> [ zeroinitializer, %.preheader226.i.i.us.us ], [ %i.kg, %bb.i ]
  %i.jk = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %indvars.iv257.i.i.us.us
  %i.jl = load float, ptr %i.jk, align 4, !tbaa !36, !alias.scope !470 ; 2 uses
  %i.jm = fsub float %i.jl, %.2209241.i.i.us.us
  %i.jn = fmul float %i.ji, %i.jm
  %i.jo = fadd float %i.jn, f0x4B400000
  %i.jp = bitcast float %i.jo to i32
  %i.jq = and i32 %i.jp, 8388607                  ; 2 uses
  %i.jr = icmp samesign ult i32 %i.jq, 4194304
  %i.js = tail call i32 @llvm.umin.i32(i32 %i.jq, i32 4194335)
  %i.jt = add nsw i32 %i.js, -4194304
  %i.ju = select i1 %i.jr, i32 0, i32 %i.jt       ; 2 uses
  %i.jv = trunc i32 %i.ju to i8
  %i.jw = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv257.i.i.us.us
  store i8 %i.jv, ptr %i.jw, align 1, !tbaa !34, !alias.scope !469, !noalias !465
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv257.i.i.us.us
  %i.jy = load float, ptr %i.jx, align 4, !tbaa !36, !alias.scope !467, !noalias !465 ; 2 uses
  %i.jz = uitofp nneg i32 %i.ju to float          ; 3 uses
  %i.ka = tail call float @llvm.fmuladd.f32(float %i.jy, float %i.jz, float %.0195234.i.i.us.us) ; 4 uses
  %i.kb = fmul float %i.jy, %i.jz
  %i.kc = insertelement <2 x float> poison, float %i.kb, i64 0
  %i.kd = shufflevector <2 x float> %i.kc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ke = insertelement <2 x float> poison, float %i.jl, i64 0
  %i.kf = insertelement <2 x float> %i.ke, float %i.jz, i64 1
  %i.kg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kd, <2 x float> %i.kf, <2 x float> %i.jj) ; 5 uses
  %indvars.iv.next258.i.i.us.us = add nuw nsw i64 %indvars.iv257.i.i.us.us, 1 ; 2 uses
  %exitcond261.not.i.i.us.us = icmp eq i64 %indvars.iv.next258.i.i.us.us, 32
  br i1 %exitcond261.not.i.i.us.us, label %bb.j, label %bb.i, !llvm.loop !10

bb.j:                                             ; preds = %bb.i
  %i.kh = fneg float %i.ka                        ; 2 uses
  %i.ki = fmul float %i.ka, %i.kh
  %i.kj = extractelement <2 x float> %i.kg, i64 1 ; 2 uses
  %i.kk = tail call float @llvm.fmuladd.f32(float %i.ib, float %i.kj, float %i.ki) ; 2 uses
  %i.kl = fcmp ogt float %i.kk, 0.000000e+00
  %i.km = insertelement <2 x float> poison, float %.0199242.i.i.us.us, i64 0
  %i.kn = insertelement <2 x float> %i.km, float %.2209241.i.i.us.us, i64 1 ; 2 uses
  br i1 %i.kl, label %bb.k, label %.loopexit.i.i.us.us

bb.k:                                             ; preds = %bb.j
  %i.ko = extractelement <2 x float> %i.kg, i64 0
  %i.kp = insertelement <2 x float> %i.jb, float %i.ka, i64 1
  %i.kq = insertelement <2 x float> poison, float %i.kh, i64 0
  %i.kr = fneg <2 x float> %i.kg
  %i.ks = shufflevector <2 x float> %i.kq, <2 x float> %i.kr, <2 x i32> <i32 0, i32 2>
  %i.kt = fmul <2 x float> %i.kp, %i.ks
  %i.ku = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jd, <2 x float> %i.kg, <2 x float> %i.kt)
  %i.kv = insertelement <2 x float> poison, float %i.kk, i64 0
  %i.kw = shufflevector <2 x float> %i.kv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kx = fdiv <2 x float> %i.ku, %i.kw           ; 2 uses
  %i.ky = extractelement <2 x float> %i.kx, i64 1
  %i.kz = fcmp ogt float %i.ky, 0.000000e+00
  %i.la = fdiv float %i.ko, %i.kj
  %i.lb = insertelement <2 x i1> poison, i1 %i.kz, i64 0
  %i.lc = shufflevector <2 x i1> %i.lb, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.ld = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.la, i64 0
  %i.le = select <2 x i1> %i.lc, <2 x float> %i.ld, <2 x float> %i.kx ; 3 uses
  %i.lf = extractelement <2 x float> %i.le, i64 1 ; 3 uses
  %i.lg = extractelement <2 x float> %i.le, i64 0 ; 3 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %bb.k
  %indvars.iv262.i.i.us.us = phi i64 [ 0, %bb.k ], [ %indvars.iv.next263.i.i.us.us.1, %bb.l ] ; 5 uses
  %.0189238.i.i.us.us = phi float [ 0.000000e+00, %bb.k ], [ %i.mc, %bb.l ]
  %i.lh = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv262.i.i.us.us
  %i.li = load i8, ptr %i.lh, align 2, !tbaa !34, !alias.scope !469, !noalias !465
  %i.lj = uitofp i8 %i.li to float
  %i.lk = tail call float @llvm.fmuladd.f32(float %i.lg, float %i.lj, float %i.lf)
  %i.ll = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %indvars.iv262.i.i.us.us
  %i.lm = load float, ptr %i.ll, align 4, !tbaa !36, !alias.scope !470
  %i.ln = fsub float %i.lk, %i.lm                 ; 2 uses
  %i.lo = fmul float %i.ln, %i.ln
  %i.lp = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv262.i.i.us.us
  %i.lq = load float, ptr %i.lp, align 8, !tbaa !36, !alias.scope !467, !noalias !465
  %i.lr = tail call float @llvm.fmuladd.f32(float %i.lq, float %i.lo, float %.0189238.i.i.us.us)
  %indvars.iv.next263.i.i.us.us = or disjoint i64 %indvars.iv262.i.i.us.us, 1 ; 3 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv.next263.i.i.us.us
  %i.lt = load i8, ptr %i.ls, align 1, !tbaa !34, !alias.scope !469, !noalias !465
  %i.lu = uitofp i8 %i.lt to float
  %i.lv = tail call float @llvm.fmuladd.f32(float %i.lg, float %i.lu, float %i.lf)
  %i.lw = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %indvars.iv.next263.i.i.us.us
  %i.lx = load float, ptr %i.lw, align 4, !tbaa !36, !alias.scope !470
  %i.ly = fsub float %i.lv, %i.lx                 ; 2 uses
  %i.lz = fmul float %i.ly, %i.ly
  %i.ma = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next263.i.i.us.us
  %i.mb = load float, ptr %i.ma, align 4, !tbaa !36, !alias.scope !467, !noalias !465
  %i.mc = tail call float @llvm.fmuladd.f32(float %i.mb, float %i.lz, float %i.lr) ; 3 uses
  %indvars.iv.next263.i.i.us.us.1 = add nuw nsw i64 %indvars.iv262.i.i.us.us, 2 ; 2 uses
  %exitcond266.not.i.i.us.us.1 = icmp eq i64 %indvars.iv.next263.i.i.us.us.1, 32
  br i1 %exitcond266.not.i.i.us.us.1, label %bb.m, label %bb.l, !llvm.loop !18

bb.m:                                             ; preds = %bb.l
  %i.md = fcmp olt float %i.mc, %.1243.i.i.us.us
  br i1 %i.md, label %.preheader.preheader.i.i.us.us, label %.loopexit.i.i.us.us

.preheader.preheader.i.i.us.us:                   ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.b, ptr noundef nonnull align 16 dereferenceable(32) %i.c, i64 range(i64 0, 33) 32, i1 false), !tbaa !34, !alias.scope !471, !noalias !465
  br label %.loopexit.i.i.us.us

.loopexit.i.i.us.us:                              ; preds = %.preheader.preheader.i.i.us.us, %bb.m, %bb.j
  %.4.i.i.us.us = phi float [ %.2209241.i.i.us.us, %bb.j ], [ %.2209241.i.i.us.us, %bb.m ], [ %i.lf, %.preheader.preheader.i.i.us.us ]
  %.2201.i.i.us.us = phi float [ %.0199242.i.i.us.us, %bb.j ], [ %.0199242.i.i.us.us, %bb.m ], [ %i.lg, %.preheader.preheader.i.i.us.us ]
  %.3.i.i.us.us = phi float [ %.1243.i.i.us.us, %bb.j ], [ %.1243.i.i.us.us, %bb.m ], [ %i.mc, %.preheader.preheader.i.i.us.us ]
  %i.me = phi <2 x float> [ %i.kn, %bb.j ], [ %i.kn, %bb.m ], [ %i.le, %.preheader.preheader.i.i.us.us ]
  %i.mf = add nuw nsw i32 %.0196244.i.i.us.us, 1  ; 2 uses
  %exitcond270.not.i.i.us.us = icmp eq i32 %i.mf, 37
  br i1 %exitcond270.not.i.i.us.us, label %make_qkx3_quants.exit.i.us.us, label %.preheader226.i.i.us.us, !llvm.loop !11

make_qkx3_quants.exit.i.us.us:                    ; preds = %.loopexit.i.i.us.us, %bb.f
  %i.mg = phi <2 x float> [ %i.if, %bb.f ], [ %i.me, %.loopexit.i.i.us.us ] ; 2 uses
  %i.mh = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.mg)
  %i.mi = bitcast <2 x float> %i.mg to <2 x i32>  ; 2 uses
  %i.mj = getelementptr inbounds nuw [24 x i8], ptr %.02236.us.us, i64 %indvars.iv97.i.us.us ; 6 uses
  %i.mk = fmul <2 x float> %i.mh, splat (float f0x77800000)
  %i.ml = fmul <2 x float> %i.mk, splat (float f0x08800000)
  %i.mm = shl <2 x i32> %i.mi, splat (i32 1)      ; 2 uses
  %i.mn = tail call <2 x i32> @llvm.umax.v2i32(<2 x i32> %i.mm, <2 x i32> splat (i32 1895825408))
  %i.mo = lshr exact <2 x i32> %i.mn, splat (i32 1)
  %i.mp = and <2 x i32> %i.mo, splat (i32 2139095040)
  %i.mq = add nuw <2 x i32> %i.mp, splat (i32 125829120)
  %i.mr = bitcast <2 x i32> %i.mq to <2 x float>
  %i.ms = fadd <2 x float> %i.ml, %i.mr
  %i.mt = bitcast <2 x float> %i.ms to <2 x i32>  ; 2 uses
  %i.mu = lshr <2 x i32> %i.mt, splat (i32 13)
  %i.mv = and <2 x i32> %i.mu, splat (i32 31744)
  %i.mw = and <2 x i32> %i.mt, splat (i32 4095)
  %i.mx = add nuw nsw <2 x i32> %i.mv, %i.mw
  %i.my = lshr <2 x i32> %i.mi, splat (i32 16)
  %i.mz = and <2 x i32> %i.my, splat (i32 32768)
  %i.na = icmp ugt <2 x i32> %i.mm, splat (i32 -16777216)
  %i.nb = select <2 x i1> %i.na, <2 x i32> splat (i32 32256), <2 x i32> %i.mx
  %i.nc = or <2 x i32> %i.nb, %i.mz
  %i.nd = trunc nuw <2 x i32> %i.nc to <2 x i16>
  store <2 x i16> %i.nd, ptr %i.mj, align 4, !tbaa !34, !alias.scope !464
  %i.ne = getelementptr inbounds nuw i8, ptr %i.mj, i64 8
  %wide.load = load <4 x i8>, ptr %i.b, align 16, !tbaa !34, !noalias !465 ; 2 uses
  %wide.load74 = load <4 x i8>, ptr %i.q, align 4, !tbaa !34, !noalias !465 ; 2 uses
  %wide.load75 = load <4 x i8>, ptr %i.r, align 16, !tbaa !34, !noalias !465 ; 2 uses
  %wide.load76 = load <4 x i8>, ptr %i.s, align 4, !tbaa !34, !noalias !465 ; 2 uses
  %i.nf = and <4 x i8> %wide.load, splat (i8 15)
  %i.ng = and <4 x i8> %wide.load74, splat (i8 15)
  %i.nh = shl <4 x i8> %wide.load75, splat (i8 4)
  %i.ni = shl <4 x i8> %wide.load76, splat (i8 4)
  %i.nj = or disjoint <4 x i8> %i.nh, %i.nf
  %i.nk = or disjoint <4 x i8> %i.ni, %i.ng
  %i.nl = getelementptr inbounds nuw i8, ptr %i.mj, i64 12
  store <4 x i8> %i.nj, ptr %i.ne, align 4, !tbaa !34, !alias.scope !464
  store <4 x i8> %i.nk, ptr %i.nl, align 4, !tbaa !34, !alias.scope !464
  %i.nm = lshr <4 x i8> %wide.load, splat (i8 4)
  %i.nn = lshr <4 x i8> %wide.load74, splat (i8 4)
  %i.no = and <4 x i8> %i.nm, splat (i8 1)
  %i.np = and <4 x i8> %i.nn, splat (i8 1)
  %i.nq = zext nneg <4 x i8> %i.no to <4 x i32>
  %i.nr = zext nneg <4 x i8> %i.np to <4 x i32>
  %i.ns = shl nuw nsw <4 x i32> %i.nq, <i32 0, i32 1, i32 2, i32 3>
  %i.nt = shl nuw nsw <4 x i32> %i.nr, <i32 4, i32 5, i32 6, i32 7>
  %i.nu = lshr <4 x i8> %wide.load75, splat (i8 4)
  %i.nv = lshr <4 x i8> %wide.load76, splat (i8 4)
  %i.nw = and <4 x i8> %i.nu, splat (i8 1)
  %i.nx = and <4 x i8> %i.nv, splat (i8 1)
  %i.ny = zext nneg <4 x i8> %i.nw to <4 x i32>
  %i.nz = zext nneg <4 x i8> %i.nx to <4 x i32>
  %i.oa = shl nuw nsw <4 x i32> %i.ny, <i32 16, i32 17, i32 18, i32 19>
  %i.ob = shl nuw nsw <4 x i32> %i.nz, <i32 20, i32 21, i32 22, i32 23>
  %i.oc = or disjoint <4 x i32> %i.oa, %i.ns
  %i.od = or disjoint <4 x i32> %i.ob, %i.nt
  %wide.load.1 = load <4 x i8>, ptr %i.t, align 8, !tbaa !34, !noalias !465 ; 2 uses
  %wide.load74.1 = load <4 x i8>, ptr %i.u, align 4, !tbaa !34, !noalias !465 ; 2 uses
  %wide.load75.1 = load <4 x i8>, ptr %i.v, align 8, !tbaa !34, !noalias !465 ; 2 uses
  %wide.load76.1 = load <4 x i8>, ptr %i.w, align 4, !tbaa !34, !noalias !465 ; 2 uses
  %i.oe = and <4 x i8> %wide.load.1, splat (i8 15)
  %i.of = and <4 x i8> %wide.load74.1, splat (i8 15)
  %i.og = shl <4 x i8> %wide.load75.1, splat (i8 4)
  %i.oh = shl <4 x i8> %wide.load76.1, splat (i8 4)
  %i.oi = or disjoint <4 x i8> %i.og, %i.oe
  %i.oj = or disjoint <4 x i8> %i.oh, %i.of
  %i.ok = getelementptr inbounds nuw i8, ptr %i.mj, i64 16
  %i.ol = getelementptr inbounds nuw i8, ptr %i.mj, i64 20
  store <4 x i8> %i.oi, ptr %i.ok, align 4, !tbaa !34, !alias.scope !464
  store <4 x i8> %i.oj, ptr %i.ol, align 4, !tbaa !34, !alias.scope !464
  %i.om = lshr <4 x i8> %wide.load.1, splat (i8 4)
  %i.on = lshr <4 x i8> %wide.load74.1, splat (i8 4)
  %i.oo = and <4 x i8> %i.om, splat (i8 1)
  %i.op = and <4 x i8> %i.on, splat (i8 1)
  %i.oq = zext nneg <4 x i8> %i.oo to <4 x i32>
  %i.or = zext nneg <4 x i8> %i.op to <4 x i32>
  %i.os = shl nuw nsw <4 x i32> %i.oq, <i32 8, i32 9, i32 10, i32 11>
  %i.ot = shl nuw nsw <4 x i32> %i.or, <i32 12, i32 13, i32 14, i32 15>
  %i.ou = lshr <4 x i8> %wide.load75.1, splat (i8 4)
  %i.ov = lshr <4 x i8> %wide.load76.1, splat (i8 4)
  %i.ow = and <4 x i8> %i.ou, splat (i8 1)
  %i.ox = and <4 x i8> %i.ov, splat (i8 1)
  %i.oy = zext nneg <4 x i8> %i.ow to <4 x i32>
  %i.oz = zext nneg <4 x i8> %i.ox to <4 x i32>
  %i.pa = shl nuw nsw <4 x i32> %i.oy, <i32 24, i32 25, i32 26, i32 27>
  %i.pb = shl nuw <4 x i32> %i.oz, <i32 28, i32 29, i32 30, i32 31>
  %i.pc = or disjoint <4 x i32> %i.pa, %i.os
  %i.pd = or disjoint <4 x i32> %i.pb, %i.ot
  %i.pe = or disjoint <4 x i32> %i.pc, %i.oc
  %i.pf = or disjoint <4 x i32> %i.pd, %i.od
  %bin.rdx = or disjoint <4 x i32> %i.pf, %i.pe
  %i.pg = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %bin.rdx)
  %i.ph = getelementptr inbounds nuw i8, ptr %i.mj, i64 4
  store i32 %i.pg, ptr %i.ph, align 4, !alias.scope !464
  %indvars.iv.next98.i.us.us = add nuw nsw i64 %indvars.iv97.i.us.us, 1 ; 2 uses
  %exitcond100.not.i.us.us = icmp eq i64 %indvars.iv.next98.i.us.us, %i.i
  br i1 %exitcond100.not.i.us.us, label %quantize_row_q5_1_impl.exit.loopexit.us.us, label %.lr.ph78.i.us.us, !llvm.loop !461

quantize_row_q5_1_impl.exit.loopexit.us.us:       ; preds = %make_qkx3_quants.exit.i.us.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14, !noalias !465
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14, !noalias !465
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14, !noalias !465
  %i.pi = getelementptr inbounds nuw [4 x i8], ptr %.02435.us.us, i64 %3
  %i.pj = getelementptr inbounds nuw i8, ptr %.02236.us.us, i64 %i.f
  %i.pk = add nuw nsw i64 %.037.us.us, 1          ; 2 uses
  %exitcond48.not = icmp eq i64 %i.pk, %2
  br i1 %exitcond48.not, label %.loopexit, label %.lr.ph.i.preheader.us.us, !llvm.loop !462

.loopexit:                                        ; preds = %quantize_row_q5_1_impl.exit.loopexit.us.us, %.lr.ph, %bb.c, %bb.b
  %.pn = phi i64 [ %i.e, %bb.b ], [ %i.f, %.lr.ph ], [ %i.f, %bb.c ], [ %i.f, %quantize_row_q5_1_impl.exit.loopexit.us.us ]
  %.023 = mul i64 %.pn, %2
  ret i64 %.023
}

; Function Attrs: nounwind uwtable
define i64 @quantize_q8_0(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree noundef writeonly captures(none) %1, i64 noundef %2, i64 noundef %3, ptr nofree noundef readnone captures(none) %4) local_unnamed_addr #6 {
bb.a:
  %i.a = tail call i64 @ggml_row_size(i32 noundef 8, i64 noundef %3) #14
  %i.b = mul nsw i64 %3, %2
  tail call void @quantize_row_q8_0_ref(ptr noundef %0, ptr noundef %1, i64 noundef %i.b)
  %i.c = mul i64 %i.a, %2
  ret i64 %i.c
}

; Function Attrs: nounwind uwtable
define i64 @quantize_mxfp4(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree noundef writeonly captures(none) %1, i64 noundef %2, i64 noundef %3, ptr nofree noundef readnone captures(none) %4) local_unnamed_addr #6 {
bb.a:
  %i.a = mul nsw i64 %3, %2
  tail call void @quantize_row_mxfp4_ref(ptr noundef %0, ptr noundef %1, i64 noundef %i.a)
  %i.b = tail call i64 @ggml_row_size(i32 noundef 39, i64 noundef %3) #14
  %i.c = mul i64 %i.b, %2
  ret i64 %i.c
}

; Function Attrs: nounwind uwtable
define i64 @quantize_nvfp4(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree noundef writeonly captures(none) %1, i64 noundef %2, i64 noundef %3, ptr nofree noundef readnone captures(none) %4) local_unnamed_addr #6 {
bb.a:
  %i.a = mul nsw i64 %3, %2
  tail call void @quantize_row_nvfp4_ref(ptr noundef %0, ptr noundef %1, i64 noundef %i.a)
  %i.b = tail call i64 @ggml_row_size(i32 noundef 40, i64 noundef %3) #14
  %i.c = mul i64 %i.b, %2
  ret i64 %i.c
}

; Function Attrs: nounwind uwtable
define void @quantize_row_tq1_0_ref(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree noundef writeonly captures(none) %1, i64 noundef %2) local_unnamed_addr #6 {
bb.a:
  %i.a = sdiv i64 %2, 256
  %i.b = icmp sgt i64 %2, 255
  br i1 %i.b, label %.preheader97, label %._crit_edge

.preheader97:                                     ; preds = %bb.a, %.preheader95
  %.0113 = phi ptr [ %i.hz, %.preheader95 ], [ %0, %bb.a ] ; 21 uses
  %.082112 = phi i64 [ %i.ia, %.preheader95 ], [ 0, %bb.a ] ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %.preheader95, %bb.a
  ret void

.preheader94:                                     ; preds = %bb.b
  %i.c = fcmp une float %i.ai, 0.000000e+00
  %i.d = fdiv float 1.000000e+00, %i.ai
  %i.e = select i1 %i.c, float %i.d, float 0.000000e+00 ; 26 uses
  %i.f = fmul float %i.ai, f0x77800000
  %i.g = fmul float %i.f, f0x08800000
  %i.h = bitcast float %i.ai to i32               ; 2 uses
  %i.i = shl nuw i32 %i.h, 1
  %i.j = tail call i32 @llvm.umax.i32(i32 %i.i, i32 1895825408)
  %spec.store.select.i = lshr exact i32 %i.j, 1
  %i.k = and i32 %spec.store.select.i, 2139095040
  %i.l = add nuw i32 %i.k, 125829120
  %i.m = bitcast i32 %i.l to float
  %i.n = fadd float %i.g, %i.m
  %i.o = bitcast float %i.n to i32                ; 2 uses
  %i.p = lshr i32 %i.o, 13
  %i.q = and i32 %i.p, 31744
  %i.r = and i32 %i.o, 4095
  %i.s = add nuw nsw i32 %i.q, %i.r
  %i.t = icmp samesign ugt i32 %i.h, 2139095040
  %i.u = trunc nuw i32 %i.s to i16
  %i.v = select i1 %i.t, i16 32256, i16 %i.u
  %i.w = getelementptr inbounds nuw [54 x i8], ptr %1, i64 %.082112 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 52
  store i16 %i.v, ptr %i.x, align 2, !tbaa !52
  br label %.preheader91

bb.b:                                             ; preds = %bb.b, %.preheader97
end_hunk_12
